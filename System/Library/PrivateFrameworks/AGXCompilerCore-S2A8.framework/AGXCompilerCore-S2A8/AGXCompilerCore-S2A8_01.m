void sub_23C4AA240(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!qword_27E1F74F0)
  {
    goto LABEL_13;
  }

  if (!dword_27E1F74F8)
  {
    goto LABEL_10;
  }

  v10 = qword_27E1F74F0 + *(*qword_27E1F74F0 - 24);
  if ((*(v10 + 32) & 5) != 0)
  {
    goto LABEL_10;
  }

  (*(**(v10 + 40) + 32))(&v17);
  if (v18 < dword_27E1F74F8)
  {
    goto LABEL_10;
  }

  sub_23C4AA520(qword_27E1F74F0, "<< Rest of the status file truncated>>\n", 39);
  v11 = qword_27E1F74F0;
  if (qword_27E1F74F0 && qword_27E1F74F0 != MEMORY[0x277D82670])
  {
    (*(*qword_27E1F74F0 + 8))(qword_27E1F74F0);
    qword_27E1F74F0 = 0;
    sub_23C4AA7CC();
    if (byte_27E1F678F < 0)
    {
      *qword_27E1F6778 = 0;
      qword_27E1F6780 = 0;
    }

    else
    {
      LOBYTE(qword_27E1F6778) = 0;
      byte_27E1F678F = 0;
    }

LABEL_10:
    v11 = qword_27E1F74F0;
  }

  if (v11)
  {
    __s = 0;
    vasprintf(&__s, a2, &a9);
    v12 = qword_27E1F74F0;
    v13 = strlen(__s);
    sub_23C4AA520(qword_27E1F74F0, __s, v13);
    std::ios_base::getloc((v12 + *(*v12 - 24)));
    v14 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v17);
    std::ostream::put();
    std::ostream::flush();
    std::ostream::flush();
    free(__s);
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_23C4AA478(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_23C4AA520(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EED4F80](v19, a1);
  if (v19[0] == 1)
  {
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
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
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
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C496CE8();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      v21 = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v21 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (v21 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x23EED4F90](v19);
  return a1;
}

void sub_23C4AA7CC()
{
  if ((atomic_load_explicit(&qword_27E1F6790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F6790))
  {
    qword_27E1F6778 = 0;
    qword_27E1F6780 = 0;
    unk_27E1F6788 = 0;
    __cxa_atexit(MEMORY[0x277D82640], &qword_27E1F6778, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F6790);
  }
}

uint64_t *sub_23C4AA84C(const void **a1)
{
  v1 = qword_27E1F6700;
  if (!qword_27E1F6700)
  {
LABEL_26:
    operator new();
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  while (1)
  {
    while (1)
    {
      v5 = v1;
      v8 = *(v1 + 32);
      v6 = v1 + 32;
      v7 = v8;
      v9 = *(v6 + 23);
      if (v9 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = *(v6 + 8);
      }

      if (v9 >= 0)
      {
        v11 = v6;
      }

      else
      {
        v11 = v7;
      }

      if (v10 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v10;
      }

      v13 = memcmp(v4, v11, v12);
      v14 = v3 < v10;
      if (v13)
      {
        v14 = v13 < 0;
      }

      if (!v14)
      {
        break;
      }

      v1 = *v5;
      if (!*v5)
      {
        goto LABEL_26;
      }
    }

    v15 = memcmp(v11, v4, v12);
    v16 = v10 < v3;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (!v16)
    {
      return v5;
    }

    v1 = v5[1];
    if (!v1)
    {
      goto LABEL_26;
    }
  }
}

std::string *sub_23C4AA9EC(std::string *this)
{
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v3 = this->__r_.__value_.__r.__words[0];
  if (v2 >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v6 = MEMORY[0x277D85DE0];
  if (size)
  {
    v7 = (v4 + size);
    do
    {
      v8 = v4->__r_.__value_.__s.__data_[0];
      if ((v8 & 0x80000000) != 0)
      {
        if (!__maskrune(v8, 0x4000uLL))
        {
          goto LABEL_15;
        }
      }

      else if ((*(v6 + 4 * v8 + 60) & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      v4 = (v4 + 1);
      --size;
    }

    while (size);
    v4 = v7;
LABEL_15:
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((v2 & 0x80u) == 0)
  {
    v9 = this;
  }

  else
  {
    v9 = v3;
  }

  std::string::erase(this, 0, v4 - v9);
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this + v10;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_;
  }

  if (v11 >= 0)
  {
    v14 = this;
  }

  else
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  while (v13 != v14)
  {
    v16 = *--v13;
    v15 = v16;
    if ((v16 & 0x80000000) != 0)
    {
      if (!__maskrune(v15, 0x4000uLL))
      {
LABEL_30:
        v14 = (v13 + 1);
        break;
      }
    }

    else if ((*(v6 + 4 * v15 + 60) & 0x4000) == 0)
    {
      goto LABEL_30;
    }
  }

  v17 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v18 = v17;
  v19 = this + v17;
  if (v18 >= 0)
  {
    v20 = this;
  }

  else
  {
    v19 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
    v20 = this->__r_.__value_.__r.__words[0];
  }

  return std::string::erase(this, v14 - v20, v19 - v14);
}

void MTLCompilerDelete_0(uint64_t a1)
{
  v2 = qword_27E1F6770;
  if (qword_27E1F6770)
  {
    (*(qword_27E1F6770 + 8))();
    dlclose(*v2);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    MEMORY[0x23EED50C0](v2, 0x80C40D6874129);
  }

  qword_27E1F6770 = 0;
  if (qword_27E1F74F0)
  {
    v3 = qword_27E1F74F0 == MEMORY[0x277D82670];
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_9:
    if (a1)
    {
      goto LABEL_10;
    }

    return;
  }

  (*(*qword_27E1F74F0 + 8))();
  qword_27E1F74F0 = 0;
  sub_23C4AA7CC();
  if ((byte_27E1F678F & 0x80000000) == 0)
  {
    LOBYTE(qword_27E1F6778) = 0;
    byte_27E1F678F = 0;
    goto LABEL_9;
  }

  *qword_27E1F6778 = 0;
  qword_27E1F6780 = 0;
  if (a1)
  {
LABEL_10:
    v4 = *(a1 + 64);
    if (v4)
    {
      for (i = 304; i != 328; i += 8)
      {
        v6 = *(v4 + i);
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        *(v4 + i) = 0;
      }

      v7 = *(v4 + 328);
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      *(v4 + 328) = 0;
      v8 = *(v4 + 336);
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      *(v4 + 336) = 0;
      v9 = *(v4 + 344);
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      *(v4 + 344) = 0;
      v10 = *(v4 + 408);
      if (v10)
      {
        MEMORY[0x23EED50A0](v10, 0x1000C8052888210);
      }

      if (*(v4 + 407) < 0)
      {
        operator delete(*(v4 + 384));
      }

      if (*(v4 + 383) < 0)
      {
        operator delete(*(v4 + 360));
      }

      if (*(v4 + 303) < 0)
      {
        operator delete(*(v4 + 280));
      }

      v11 = *(v4 + 128);
      if (v11 != (v4 + 152))
      {
        free(v11);
      }

      if (*(v4 + 120) == 1)
      {
        MEMORY[0x23EED44C0](v4 + 104);
        *(v4 + 120) = 0;
      }

      if (*(v4 + 96) == 1)
      {
        MEMORY[0x23EED44C0](v4 + 80);
        *(v4 + 96) = 0;
      }

      if (*(v4 + 72) == 1)
      {
        MEMORY[0x23EED44C0](v4 + 56);
        *(v4 + 72) = 0;
      }

      llvm::AGX::AGXCompiler::~AGXCompiler((v4 + 48));
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
      }

      MEMORY[0x23EED50C0](v4, 0x10F2C40B38FBF86);
    }

    JUMPOUT(0x23EED50C0);
  }
}

uint64_t sub_23C4AAE3C(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, llvm::Module *a5, _DWORD *a6, void *a7, void *a8, unsigned int a9)
{
  v10 = a5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v219 = *MEMORY[0x277D85DE8];
  v19 = a2;
  do
  {
    v20 = (a2 + ((*v19 >> 6) & 0x3FFFFFC));
    v21 = *v19;
    switch(*v19)
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
        *a6 = v21;
        ++v18;
        v17 = 2;
        break;
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x3Fu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
        *a6 = v21;
        ++v18;
        v17 = 1;
        break;
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x3Bu:
        v16 = (v19 + 1);
        goto LABEL_6;
      case 0x2Eu:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
      case 0x3Au:
      case 0x44u:
        goto LABEL_6;
      case 0x30u:
        v15 = v19 + 1;
        goto LABEL_6;
      case 0x31u:
        v14 = v19 + 1;
        goto LABEL_6;
      case 0x38u:
        v12 = v19 + 1;
        goto LABEL_6;
      case 0x39u:
        v11 = v19 + 1;
        goto LABEL_6;
      case 0x3Du:
        v13 = v19 + 1;
LABEL_6:
        ++v18;
        break;
      default:
        break;
    }

    v19 = v20;
  }

  while (v21 != 68);
  v181 = v12;
  v182 = v11;
  v186 = v13;
  v22 = 0;
  if ((v18 - 2) >= 8)
  {
    v23 = 0;
  }

  else
  {
    v23 = v17;
  }

  if (a5)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 == 1;
  }

  v25 = !v24;
  v26 = a1[8];
  if (!v24)
  {
    v22 = (***(v26 + 32))(*(v26 + 32));
  }

  *(v26 + 353) = v22;
  if (!os_variant_has_internal_diagnostics())
  {
    v31 = 0;
    goto LABEL_36;
  }

  llvm::EnableStatistics(1);
  v27 = xpc_dictionary_create(0, 0, 0);
  llvm::ResetStatistics(v27);
  if (v25)
  {
    v28 = 3;
  }

  else
  {
    v28 = 1;
  }

  xpc_dictionary_set_uint64(v27, "instruction_selector", v28);
  xpc_dictionary_set_uint64(v27, "api", a9);
  v29 = *a6 - 1;
  if (v29 < 6)
  {
    v30 = qword_23C532AD0[v29];
LABEL_34:
    xpc_dictionary_set_uint64(v27, "shader_kind", v30);
    goto LABEL_35;
  }

  if (v23 == 1)
  {
    v30 = 1;
    goto LABEL_34;
  }

LABEL_35:
  analytics_send_event();
  v31 = xpc_copy(v27);
  xpc_release(v27);
  llvm::enableTimePasses(v32);
LABEL_36:
  llvm::NamedRegionTimer::NamedRegionTimer();
  v33 = v23 - 1;
  if (v33 > 1)
  {
    v36 = 0;
  }

  else
  {
    MEMORY[0x23EED3D40](v196);
    if (!v10)
    {
      if (a4)
      {
        if (!qword_27E1F6770)
        {
          operator new();
        }

        v10 = (*(qword_27E1F6770 + 16))(v196, a3);
      }

      else
      {
        v10 = 0;
      }
    }

    v191 = v15;
    v37 = a1[8];
    if (!*(v37 + 328))
    {
      sub_23C4AE0F4();
    }

    v36 = 0;
    switch(*a6)
    {
      case 1:
        operator new();
      case 2:
        v212[0].__locale_ = v16;
        v212[1].__locale_ = 0;
        v213[0] = v16;
        operator new();
      case 3:
        v39 = sub_23C5207F0(v37, v10, v16, v181, v182);
        if (!v39)
        {
          goto LABEL_274;
        }

        v43 = (v39 + *(*v39 - 24));
        goto LABEL_85;
      case 4:
        v212[0].__locale_ = v16;
        v212[1].__locale_ = v16;
        v213[0] = 0;
        v38 = (*(**(v37 + 32) + 64))(*(v37 + 32), v37, v10, v212, v191, 2, 0);
        goto LABEL_84;
      case 5:
        *__p = v16;
        *&__p[8] = v16;
        *&__p[16] = 0;
        v212[0].__locale_ = "air.kernel";
        LOWORD(v214) = 259;
        NamedMetadata = llvm::Module::getNamedMetadata(v10, v212);
        v41 = *(v37 + 32);
        v42 = *v41;
        if (NamedMetadata)
        {
          v38 = (*(v42 + 56))(v41, v37, v10, __p, v191, v14);
        }

        else
        {
          v38 = (*(v42 + 64))(v41, v37, v10, __p, v191, 3, v14);
        }

        goto LABEL_84;
      case 6:
        v38 = (*(**(v37 + 32) + 48))(*(v37 + 32), v37, v10, v16);
        goto LABEL_84;
      case 7:
        operator new();
      case 8:
        operator new();
      case 9:
        operator new();
      case 0xA:
        operator new();
      case 0xB:
        operator new();
      case 0xE:
        operator new();
      case 0xF:
        sub_23C52388C(v37, v196);
      case 0x10:
        sub_23C5239D0(v37, v196);
      case 0x11:
        v38 = (*(**(v37 + 32) + 104))(*(v37 + 32), v37, v196);
        goto LABEL_84;
      case 0x12:
        v38 = (*(**(v37 + 32) + 96))(*(v37 + 32), v37, v196);
        goto LABEL_84;
      case 0x13:
        operator new();
      case 0x14:
        v38 = (*(**(v37 + 32) + 40))(*(v37 + 32), v37, v196);
        goto LABEL_84;
      case 0x15:
      case 0x16:
        v38 = (*(**(v37 + 32) + 32))(*(v37 + 32), a1[8], v196, 3, 1, 0, v34, v35, "Driver Framework", 16, 1, v181);
        goto LABEL_84;
      case 0x17:
        v38 = (*(**(v37 + 32) + 32))(*(v37 + 32), a1[8], v196, 8, 0, 0, v34, v35, "Driver Framework", 16, 1, v181);
        goto LABEL_84;
      case 0x18:
        v38 = (*(**(v37 + 32) + 32))(*(v37 + 32), v37, v196, 0, 0, 1, v34, v35, "Driver Framework", 16, 1, v181);
        goto LABEL_84;
      case 0x19:
      case 0x1A:
      case 0x1B:
      case 0x1C:
        sub_23C508918();
      case 0x1D:
      case 0x1E:
      case 0x1F:
        operator new();
      case 0x21:
        sub_23C5220DC(v37, v196, v186);
      case 0x22:
        sub_23C522E9C(v37, v196, v186);
      case 0x23:
        sub_23C5233CC(v37, v196);
      case 0x24:
        sub_23C5226F4(v37, v196, v186);
      case 0x25:
        sub_23C5237A0(v37, v196);
      case 0x26:
        sub_23C523644(v37, v196);
      case 0x27:
        operator new();
      case 0x3F:
        sub_23C523B14(v37, v196);
      case 0x40:
        v38 = (*(**(v37 + 32) + 80))(*(v37 + 32), v37, v196);
        goto LABEL_84;
      case 0x41:
        sub_23C523C48(v37, v196);
      case 0x42:
        v38 = (*(**(v37 + 32) + 88))(*(v37 + 32), v37, v196);
LABEL_84:
        v43 = v38;
        if (v38)
        {
LABEL_85:
          v36 = (*(*v43 + 40))(v43);
          if (v36)
          {
            a1[7] = *(v43 + 49);
            v44 = *(v43 + 46);
            v45 = *(v43 + 47);
            *(v43 + 870) = 1;
            sub_23C4B0AD0((v43 + 200), v45 - v44, 4uLL);
            sub_23C4B0AD0((v43 + 200), v45 - v44, 4uLL);
            v46 = v45 - v44;
            if (v45 == v44)
            {
              v47 = &unk_23C532B00;
            }

            else
            {
              v47 = v44;
            }

            if (v45 != v44)
            {
              v48 = v46 >> 2;
              v49 = v47 - 4;
              do
              {
                v50 = v48 - 1;
                v51 = *&v49[4 * v48];
                sub_23C4B08D8((v43 + 200), 4uLL);
                sub_23C4B0A6C((v43 + 200), v43[208] - v43[212] + v43[210] - v51 + 4);
                v48 = v50;
              }

              while (v50);
            }

            *(v43 + 870) = 0;
            v52 = sub_23C4B0A6C((v43 + 200), v46 >> 2);
            LODWORD(v212[0].__locale_) = 0;
            v53 = *(v43 + 58);
            v54 = v43[128];
            v55 = (*(**(v43 + 43) + 360))();
            *(v43 + 870) = 1;
            v56 = v43[210];
            v57 = v43[208] - v43[212];
            sub_23C4B0A04(v43 + 100, 4, v55);
            sub_23C4B0A04(v43 + 100, 6, v212[0].__locale_);
            v58 = sub_23C4B03D4((v43 + 200), v57 + v56);
            *(v43 + 870) = 1;
            v59 = v43[208];
            v60 = v43[212];
            v61 = v43[210];
            if (v52)
            {
              sub_23C4B08D8((v43 + 200), 4uLL);
              sub_23C4B0A04(v43 + 100, 8, v43[208] - v43[212] + v43[210] - v52 + 4);
            }

            if (v58)
            {
              sub_23C4B08D8((v43 + 200), 4uLL);
              sub_23C4B0A04(v43 + 100, 6, v43[208] - v43[212] + v43[210] - v58 + 4);
            }

            sub_23C4B0328(v43 + 100, 4, *(v43 + 45));
            v62 = sub_23C4B03D4((v43 + 200), v59 - v60 + v61);
            sub_23C4B1AD8((v43 + 200), v62);
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v206 = 0u;
            v207 = 0u;
            v63 = *(v43 + 64);
            v64 = *(v43 + 59);
            *__p = *(v43 + 58);
            *&__p[8] = v63;
            v65 = *(v43 + 65);
            *&__p[16] = v64;
            v203 = v65;
            v66 = *(v43 + 66);
            v204 = *(v43 + 60);
            v205 = v66;
            v67 = *(v43 + 68);
            v68 = *(v43 + 63);
            *&v210 = *(v43 + 62);
            *(&v210 + 1) = v67;
            v69 = *(v43 + 69);
            *&v209 = v68;
            *(&v209 + 1) = v69;
            v70 = *(v43 + 94);
            *(&v207 + 1) = (v43[184] - v70 + v43[186]);
            if (DWORD2(v207))
            {
              *&v207 = v70;
            }

            v71 = *(v43 + 118);
            *(&v208 + 1) = (v43[232] - v71 + v43[234]);
            if (DWORD2(v208))
            {
              *&v208 = v71;
            }

            v72 = *(v43 + 106);
            *(&v206 + 1) = (v43[208] - v72 + v43[210]);
            if (DWORD2(v206))
            {
              *&v206 = v72;
            }

            v73 = *(v43 + 50);
            if (*(v73 + 303) < 0)
            {
              sub_23C49F988(__dst, *(v73 + 280), *(v73 + 288));
            }

            else
            {
              v74 = v73 + 280;
              *__dst = *v74;
              v201 = *(v74 + 16);
            }

            v76 = HIBYTE(v201);
            v77 = __dst;
            if (v201 < 0)
            {
              v77 = __dst[0];
              v76 = __dst[1];
            }

            *&v211 = v77;
            *(&v211 + 1) = v76;
            v78 = (*(*v43 + 24))(v43);
            if (sub_23C4B00BC(v78))
            {
              if (MGGetBoolAnswer())
              {
                v79 = sub_23C4A2690("AGC_DUMP_FAKE_MACHO");
                if (v79)
                {
                  if (*v79 != 48 && atoi(v79))
                  {
                    v192 = v36;
                    v80 = (*(*v43 + 24))(v43);
                    v81 = snprintf(__str, 0x80uLL, "Fake-MachO for %s shader %u", v80, v43[174]);
                    sub_23C4AA240(v81, "------ Start %s -------\n", v82, v83, v84, v85, v86, v87, __str);
                    v95 = qword_27E1F74F0;
                    if ((atomic_load_explicit(&qword_27E1F68A8, memory_order_acquire) & 1) == 0)
                    {
                      v88 = __cxa_guard_acquire(&qword_27E1F68A8);
                      if (v88)
                      {
                        sub_23C49F8D0(byte_27E1F67D0, "binary");
                        sub_23C49F8D0(&byte_27E1F67D0[24], "backend_metadata");
                        sub_23C49F8D0(&byte_27E1F67D0[48], "target_backend_metadata");
                        sub_23C49F8D0(&byte_27E1F67D0[72], "statistics_metadata");
                        sub_23C49F8D0(&byte_27E1F67D0[96], "translator_metadata");
                        sub_23C49F8D0(&byte_27E1F67D0[120], "target_translator_metadata");
                        sub_23C49F8D0(&byte_27E1F67D0[144], "backend_telemetry_data");
                        sub_23C49F8D0(&byte_27E1F67D0[168], "backend_counter_data");
                        sub_23C49F8D0(&byte_27E1F67D0[192], "remarks");
                        __cxa_atexit(sub_23C4B1B48, byte_27E1F67D0, &dword_23C496000);
                        __cxa_guard_release(&qword_27E1F68A8);
                      }
                    }

                    v96 = 0;
                    v189 = v95 + 1;
                    v183 = *(MEMORY[0x277D82818] + 72);
                    v184 = *(MEMORY[0x277D82818] + 64);
                    v185 = *MEMORY[0x277D82818];
                    v180 = v33;
                    v187 = v95;
                    do
                    {
                      v97 = &__p[16 * v96];
                      v98 = v97[1];
                      if (v98)
                      {
                        v99 = sub_23C4AA520(v95, ".segment ", 9);
                        v100 = &byte_27E1F67D0[24 * v96];
                        v101 = v100[23];
                        v102 = v101 >= 0 ? &byte_27E1F67D0[24 * v96] : *v100;
                        v103 = v101 >= 0 ? v100[23] : *(v100 + 1);
                        v104 = sub_23C4AA520(v99, v102, v103);
                        v105 = sub_23C4AA520(v104, ", size ", 7);
                        *(v189 + *(*v95 - 24)) = *(v189 + *(*v95 - 24)) & 0xFFFFFFB5 | 2;
                        v106 = MEMORY[0x23EED4FB0](v105, v98);
                        std::ios_base::getloc((v106 + *(*v106 - 24)));
                        v107 = std::locale::use_facet(v212, MEMORY[0x277D82680]);
                        (v107->__vftable[2].~facet_0)(v107, 10);
                        std::locale::~locale(v212);
                        std::ostream::put();
                        std::ostream::flush();
                        *&v198 = v95;
                        v108 = *v97;
                        v88 = sub_23C4AE1DC(&v198);
                        if (v88)
                        {
                          sub_23C4B0E40(v212);
                          v109 = v198;
                          sub_23C4AA520(v198, "{", 1);
                          std::ios_base::getloc((v109 + *(*v109 - 24)));
                          v110 = std::locale::use_facet(v199, MEMORY[0x277D82680]);
                          (v110->__vftable[2].~facet_0)(v110, 10);
                          std::locale::~locale(v199);
                          std::ostream::put();
                          std::ostream::flush();
                          for (i = 0; i != v98; ++i)
                          {
                            if ((i & 0x1F) == 0)
                            {
                              sub_23C4AA520(v109, "\t", 1);
                            }

                            sub_23C4AA520(v109, &unk_23C53F34D, 0);
                            v112 = *v109;
                            v113 = *v109;
                            *(v109 + *(*v109 - 24) + 24) = 2;
                            v114 = (v109 + *(v113 - 24));
                            if (v114[1].__fmtflags_ == -1)
                            {
                              std::ios_base::getloc(v114);
                              v115 = std::locale::use_facet(v199, MEMORY[0x277D82680]);
                              (v115->__vftable[2].~facet_0)(v115, 32);
                              std::locale::~locale(v199);
                              v112 = *v109;
                            }

                            v114[1].__fmtflags_ = 48;
                            *(v109 + *(v112 - 24) + 8) = *(v109 + *(v112 - 24) + 8) & 0xFFFFFFB5 | 8;
                            v116 = MEMORY[0x23EED4FA0](v109, *(v108 + i));
                            sub_23C4AA520(v116, " ", 1);
                            if ((i & 0x1F) == 0x1F)
                            {
                              std::ios_base::getloc((v109 + *(*v109 - 24)));
                              v117 = std::locale::use_facet(v199, MEMORY[0x277D82680]);
                              (v117->__vftable[2].~facet_0)(v117, 10);
                              std::locale::~locale(v199);
                              std::ostream::put();
                              std::ostream::flush();
                            }
                          }

                          std::ios_base::getloc((v109 + *(*v109 - 24)));
                          v118 = MEMORY[0x277D82680];
                          v119 = std::locale::use_facet(v199, MEMORY[0x277D82680]);
                          (v119->__vftable[2].~facet_0)(v119, 10);
                          std::locale::~locale(v199);
                          std::ostream::put();
                          std::ostream::flush();
                          sub_23C4AA520(v109, "}", 1);
                          std::ios_base::getloc((v109 + *(*v109 - 24)));
                          v120 = std::locale::use_facet(v199, v118);
                          (v120->__vftable[2].~facet_0)(v120, 10);
                          std::locale::~locale(v199);
                          std::ostream::put();
                          std::ostream::flush();
                          std::ostream::flush();
                          v212[0].__locale_ = v185;
                          *(&v212[0].__locale_ + *(v185 - 3)) = v184;
                          v213[0] = v183;
                          v213[1] = (MEMORY[0x277D82878] + 16);
                          if (v216 < 0)
                          {
                            operator delete(v215);
                          }

                          v213[1] = (MEMORY[0x277D82868] + 16);
                          std::locale::~locale(&v214);
                          std::iostream::~basic_iostream();
                          v88 = MEMORY[0x23EED5050](&v217);
                          v33 = v180;
                          v95 = v187;
                        }
                      }

                      ++v96;
                    }

                    while (v96 != 9);
                    sub_23C4AA240(v88, "------ End %s -------\n", v89, v90, v91, v92, v93, v94, __str);
                    v36 = v192;
                  }
                }
              }
            }

            v121 = 40;
            for (j = 8; j != 152; j += 16)
            {
              v121 += (*&__p[j] + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            a1[1] = v121;
            v123 = malloc_type_calloc(1uLL, v121, 0x848854F2uLL);
            v124 = 0;
            *a1 = v123;
            v125 = (v123 + 10);
            do
            {
              v126 = *&__p[v124 + 8];
              *v123 = v126;
              if (v126)
              {
                memcpy(v125, *&__p[v124], v126);
              }

              v125 += (v126 + 7) & 0xFFFFFFFFFFFFFFF8;
              v124 += 16;
              ++v123;
            }

            while (v124 != 144);
            if (SHIBYTE(v201) < 0)
            {
              operator delete(__dst[0]);
            }

            goto LABEL_149;
          }

          v75 = (v43 + 102);
          if (*(v43 + 431) < 0)
          {
            if (!*(v43 + 52))
            {
LABEL_149:
              (*(*v43 + 16))(v43);
              goto LABEL_150;
            }

            v75 = *v75;
          }

          else if (!*(v43 + 431))
          {
            goto LABEL_149;
          }

          a1[2] = strdup(v75);
          goto LABEL_149;
        }

LABEL_274:
        v36 = 0;
LABEL_150:
        llvm::LLVMContext::~LLVMContext(v196);
        break;
      default:
        goto LABEL_150;
    }
  }

  if (v197)
  {
    llvm::Timer::stopTimer(v197);
  }

  if (v33 > 1)
  {
    v36 = 0;
  }

  else
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    if (has_internal_diagnostics)
    {
      llvm::GetStatistics(v212, has_internal_diagnostics);
      locale = v212[0].__locale_;
      v129 = v212[1].__locale_;
      while (locale != v129)
      {
        if (!*locale)
        {
          goto LABEL_181;
        }

        sub_23C4A7590(__p, *locale, *(locale + 1));
        if ((__p[23] & 0x80000000) != 0)
        {
          if (*&__p[8] == 19)
          {
            v134 = **__p != 0x49747361466D754ELL || *(*__p + 8) != 0x756C6961466C6573 || *(*__p + 11) != 0x736572756C696146;
            operator delete(*__p);
            if (!v134)
            {
LABEL_179:
              xpc_dictionary_set_uint64(v31, "stat_numfastiselfailures", *(locale + 4));
            }
          }

          else
          {
            operator delete(*__p);
          }
        }

        else if (__p[23] == 19)
        {
          v130 = *__p == 0x49747361466D754ELL && *&__p[8] == 0x756C6961466C6573;
          if (v130 && *&__p[11] == 0x736572756C696146)
          {
            goto LABEL_179;
          }
        }

LABEL_181:
        if (!*locale)
        {
          goto LABEL_206;
        }

        sub_23C4A7590(__p, *locale, *(locale + 1));
        if ((__p[23] & 0x80000000) != 0)
        {
          if (*&__p[8] == 18)
          {
            v139 = **__p != 0x49747361466D754ELL || *(*__p + 8) != 0x65636375536C6573 || *(*__p + 16) != 29555;
            operator delete(*__p);
            if (!v139)
            {
LABEL_204:
              xpc_dictionary_set_uint64(v31, "stat_numfastiselsuccesses", *(locale + 4));
            }
          }

          else
          {
            operator delete(*__p);
          }
        }

        else if (__p[23] == 18)
        {
          v135 = *__p == 0x49747361466D754ELL && *&__p[8] == 0x65636375536C6573;
          if (v135 && *&__p[16] == 29555)
          {
            goto LABEL_204;
          }
        }

LABEL_206:
        if (*locale)
        {
          sub_23C4A7590(__p, *locale, *(locale + 1));
          if ((__p[23] & 0x80000000) != 0)
          {
            if (*&__p[8] != 17)
            {
              operator delete(*__p);
              goto LABEL_231;
            }

            v144 = **__p != 0x74636E75466D754ELL || *(*__p + 8) != 0x65736552736E6F69 || *(*__p + 16) != 116;
            operator delete(*__p);
            if (v144)
            {
              goto LABEL_231;
            }
          }

          else
          {
            if (__p[23] != 17)
            {
              goto LABEL_231;
            }

            v140 = *__p == 0x74636E75466D754ELL && *&__p[8] == 0x65736552736E6F69;
            if (!v140 || __p[16] != 116)
            {
              goto LABEL_231;
            }
          }

          xpc_dictionary_set_uint64(v31, "stat_numfunctionsreset", *(locale + 4));
        }

LABEL_231:
        locale = (locale + 24);
      }

      NamedTimer = llvm::getNamedTimer();
      if (NamedTimer)
      {
        v146 = NamedTimer;
        xpc_dictionary_set_uint64(v31, "time_total", ((*(NamedTimer + 8) + *(NamedTimer + 16)) * 1000000.0));
        llvm::Timer::clear(v146);
      }

      v147 = llvm::getNamedTimer();
      if (v147)
      {
        v148 = v147;
        xpc_dictionary_set_uint64(v31, "time_dagsel_dagcombining1", ((*(v147 + 8) + *(v147 + 16)) * 1000000.0));
        llvm::Timer::clear(v148);
      }

      v149 = llvm::getNamedTimer();
      if (v149)
      {
        v150 = v149;
        xpc_dictionary_set_uint64(v31, "time_dagisel_typelegalization", ((*(v149 + 8) + *(v149 + 16)) * 1000000.0));
        llvm::Timer::clear(v150);
      }

      v151 = llvm::getNamedTimer();
      v36 = v36;
      if (v151)
      {
        v152 = v151;
        xpc_dictionary_set_uint64(v31, "time_dagisel_dagcombiningafterlegalizetypes", ((*(v151 + 8) + *(v151 + 16)) * 1000000.0));
        llvm::Timer::clear(v152);
      }

      v153 = llvm::getNamedTimer();
      if (v153)
      {
        v154 = v153;
        xpc_dictionary_set_uint64(v31, "time_dagisel_vectorlegalization", ((*(v153 + 8) + *(v153 + 16)) * 1000000.0));
        llvm::Timer::clear(v154);
      }

      v155 = llvm::getNamedTimer();
      if (v155)
      {
        v156 = v155;
        xpc_dictionary_set_uint64(v31, "time_dagisel_typelegalization2", ((*(v155 + 8) + *(v155 + 16)) * 1000000.0));
        llvm::Timer::clear(v156);
      }

      v157 = llvm::getNamedTimer();
      if (v157)
      {
        v158 = v157;
        xpc_dictionary_set_uint64(v31, "time_dagisel_dagcombiningafterlegalizevectors", ((*(v157 + 8) + *(v157 + 16)) * 1000000.0));
        llvm::Timer::clear(v158);
      }

      v159 = llvm::getNamedTimer();
      if (v159)
      {
        v160 = v159;
        xpc_dictionary_set_uint64(v31, "time_dagisel_legalization", ((*(v159 + 8) + *(v159 + 16)) * 1000000.0));
        llvm::Timer::clear(v160);
      }

      v161 = llvm::getNamedTimer();
      if (v161)
      {
        v162 = v161;
        xpc_dictionary_set_uint64(v31, "time_dagisel_dagcombining2", ((*(v161 + 8) + *(v161 + 16)) * 1000000.0));
        llvm::Timer::clear(v162);
      }

      v163 = llvm::getNamedTimer();
      if (v163)
      {
        v164 = v163;
        xpc_dictionary_set_uint64(v31, "time_dagisel_instructionselection", ((*(v163 + 8) + *(v163 + 16)) * 1000000.0));
        llvm::Timer::clear(v164);
      }

      v165 = llvm::getNamedTimer();
      if (v165)
      {
        v166 = v165;
        xpc_dictionary_set_uint64(v31, "time_dagisel_instructionscheduling", ((*(v165 + 8) + *(v165 + 16)) * 1000000.0));
        llvm::Timer::clear(v166);
      }

      v167 = llvm::getNamedTimer();
      if (v167)
      {
        v168 = v167;
        xpc_dictionary_set_uint64(v31, "time_dagisel_instructioncreation", ((*(v167 + 8) + *(v167 + 16)) * 1000000.0));
        llvm::Timer::clear(v168);
      }

      if (xpc_dictionary_get_uint64(v31, "instruction_selector") == 2)
      {
        v169 = llvm::getNamedTimer();
        if (v169)
        {
          v170 = v169;
          xpc_dictionary_set_uint64(v31, "time_gisel_irtranslator", ((*(v169 + 8) + *(v169 + 16)) * 1000000.0));
          llvm::Timer::clear(v170);
        }

        v171 = llvm::getNamedTimer();
        if (v171)
        {
          v172 = v171;
          xpc_dictionary_set_uint64(v31, "time_gisel_legalizer", ((*(v171 + 8) + *(v171 + 16)) * 1000000.0));
          llvm::Timer::clear(v172);
        }

        v173 = llvm::getNamedTimer();
        if (v173)
        {
          v174 = v173;
          xpc_dictionary_set_uint64(v31, "time_gisel_regbankallocator", ((*(v173 + 8) + *(v173 + 16)) * 1000000.0));
          llvm::Timer::clear(v174);
        }

        v175 = llvm::getNamedTimer();
        if (v175)
        {
          v176 = v175;
          xpc_dictionary_set_uint64(v31, "time_gisel_instructionselector", ((*(v175 + 8) + *(v175 + 16)) * 1000000.0));
          llvm::Timer::clear(v176);
        }
      }

      v177 = MEMORY[0x23EED5420](v31);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *__p = 136315138;
        *&__p[4] = v177;
        _os_log_impl(&dword_23C496000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Compilation stats+times: %s\n", __p, 0xCu);
      }

      free(v177);
      analytics_send_event();
      if (v212[0].__locale_)
      {
        v212[1] = v212[0];
        operator delete(v212[0].__locale_);
      }
    }

    if (v31)
    {
      xpc_release(v31);
    }

    *a7 = *a1;
    *a8 = a1[1];
  }

  v178 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t GLCompilerLogBuildRequest(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, int a6, uint64_t a7)
{
  v11 = a6;
  result = sub_23C4D59E0(a2, a3, a7, "state", &v11);
  if (result)
  {
    return sub_23C4D59E0(a4, a5, a7, "bitcode", 0);
  }

  return result;
}

void GLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t MTLCompilerCreate(unsigned int *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1 + 3;
  sub_23C4A7590(&__dst, a1 + 3, v5);
  sub_23C4A7590(&__p, v7 + v5, v6);
  v8 = (v5 + v6 + 12);
  memset(&v11, 0, sizeof(v11));
  if (a2 > v8)
  {
    std::string::append(&v11, a1 + v8, a2 - v8);
  }

  v9 = sub_23C4A7640(&v11, v4, 2u);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(__dst);
  }

  return v9;
}

uint64_t MTLCompilerBuildRequestWithOptions(void *a1, _DWORD *a2, uint64_t a3, char a4, llvm::Module *a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10, void *a11, char **a12)
{
  *a9 = 0;
  *a11 = 0;
  v18 = mach_absolute_time();
  v33 = 0;
  v25 = sub_23C4AAE3C(a1, a2, 0, 0, a5, &v33, a6, a7, 1u);
  if ((a4 & 2) != 0)
  {
    *a11 = 32;
    v26 = mach_absolute_time();
    v27 = sub_23C4D9834(v26 - v18);
    v28 = v27 - a1[7];
    a1[5] = v27;
    a1[6] = v28;
    *a10 = a1 + 4;
  }

  if (v25)
  {
    result = 0;
    *a12 = 0;
  }

  else
  {
    v32 = a1[2];
    v31 = (a1 + 2);
    v30 = v32;
    if (!v32)
    {
      v30 = sub_23C4ADA88(v31, v33);
    }

    *a12 = v30;
    sub_23C4AA240(v30, "** Compilation failed with error: %s **", v19, v20, v21, v22, v23, v24, v30);
    return 1;
  }

  return result;
}

char *sub_23C4ADA88(char **a1, int a2)
{
  sub_23C49F8D0(&v7, "Internal error during ");
  if ((a2 - 3) <= 3)
  {
    std::string::append(&v7, off_278BBF0C8[a2 - 3]);
  }

  std::string::append(&v7, "function compilation");
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    v5 = v7.__r_.__value_.__r.__words[0];
    v4 = strdup(v7.__r_.__value_.__l.__data_);
    *a1 = v4;
    operator delete(v5);
  }

  else
  {
    v4 = strdup(&v7);
    *a1 = v4;
  }

  return v4;
}

uint64_t MTLCompilerBuildRequestWithSerializedBitcode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, char **a13)
{
  *a11 = 0;
  *a9 = 0;
  *a7 = 0;
  *a12 = 0;
  *a10 = 0;
  *a8 = 0;
  *a13 = sub_23C4ADA88(&v14, 0);
  return 1;
}

uint64_t MTLCompilerBuildRequest(void *a1, _DWORD *a2, uint64_t a3, llvm::Module *a4, void *a5, void *a6, char **a7)
{
  v19 = 0;
  if (sub_23C4AAE3C(a1, a2, 0, 0, a4, &v19, a5, a6, 1u))
  {
    result = 0;
    *a7 = 0;
  }

  else
  {
    v18 = a1[2];
    v17 = (a1 + 2);
    v16 = v18;
    if (!v18)
    {
      v16 = sub_23C4ADA88(v17, v19);
    }

    *a7 = v16;
    sub_23C4AA240(v16, "** Compilation failed with error: %s **", v9, v10, v11, v12, v13, v14, v16);
    return 1;
  }

  return result;
}

void MTLCompilerReleaseReply(uint64_t a1)
{
  free(*a1);
  free(*(a1 + 16));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t AIRNTEmitPipelineImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char **a15)
{
  if (a15)
  {
    *a15 = strdup("[AGX] Plugin interface not implemented: AIRNTEmitPipelineImage");
  }

  return 0;
}

uint64_t sub_23C4ADCAC(void *a1, _DWORD *a2)
{
  *a2 = *(a1[43] + 840);
  result = (*(*a1 + 64))(a1);
  if (result)
  {
    *a2 = result;
    return result != *(a1[43] + 840);
  }

  return result;
}

uint64_t sub_23C4ADD34(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23C496CE8();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

BOOL sub_23C4ADDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_23C4AE1DC(&qword_27E1F74F0))
  {
    operator new();
  }

  (*(*a2 + 16))(a2, a3);
  result = sub_23C4AE1DC(&qword_27E1F74F0);
  if (result)
  {
    operator new();
  }

  return result;
}

BOOL sub_23C4AE1DC(char **a1)
{
  v6[17] = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    if (dword_27E1F74F8)
    {
      v2 = &(*a1)[*(**a1 - 24)];
      if ((v2[32] & 5) == 0)
      {
        (*(**(v2 + 5) + 32))(v6);
        if (v6[16] >= dword_27E1F74F8)
        {
          sub_23C4AA520(*a1, "<< Rest of the status file truncated>>\n", 39);
          v3 = *a1;
          if (*a1)
          {
            if (v3 != MEMORY[0x277D82670])
            {
              (*(*v3 + 8))(v3);
              *a1 = 0;
              if ((atomic_load_explicit(&qword_27E1F67C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F67C8))
              {
                qword_27E1F67B0 = 0;
                qword_27E1F67B8 = 0;
                unk_27E1F67C0 = 0;
                __cxa_atexit(MEMORY[0x277D82640], &qword_27E1F67B0, &dword_23C496000);
                __cxa_guard_release(&qword_27E1F67C8);
              }

              if (byte_27E1F67C7 < 0)
              {
                *qword_27E1F67B0 = 0;
                qword_27E1F67B8 = 0;
              }

              else
              {
                LOBYTE(qword_27E1F67B0) = 0;
                byte_27E1F67C7 = 0;
              }
            }
          }
        }
      }
    }
  }

  result = *a1 != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4AE3A4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v3 = 4;
  }

  else
  {
    v3 = 8;
  }

  if ((**(a1 + 56) & v3) != 0)
  {
    v32 = v1;
    v33 = v2;
    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    v22 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 1;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    v21 = MEMORY[0x277D821F8] + 16;
    v29 = v30;
    sub_23C4AE584(&v21);
    if (llvm::verifyModule())
    {
      v5 = *MEMORY[0x277D85DF8];
      if (*(a1 + 48))
      {
        v6 = "before";
      }

      else
      {
        v6 = "after";
      }

      sub_23C4AE5DC(__p, a1 + 32);
      if (v20 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v8 = v29;
      if (*(v29 + 23) < 0)
      {
        v8 = *v29;
      }

      fprintf(v5, "AGC: %s:%d:%s: *** Module verification failed %s pass '%s' : %s\n", "agc_llvm_object.cpp", 235, "runOnModule", v6, v7, v8);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a1 + 48))
      {
        v9 = "before";
      }

      else
      {
        v9 = "after";
      }

      v10 = sub_23C4AE5DC(__p, a1 + 32);
      if (*(v29 + 23) < 0)
      {
        v17 = *v29;
      }

      sub_23C4AA240(v10, "Module verification failed %s pass '%s' : %s", v11, v12, v13, v14, v15, v16, v9);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    llvm::raw_ostream::~raw_ostream(&v21);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }
  }

  return 0;
}

uint64_t sub_23C4AE584(llvm::raw_ostream *this)
{
  if (*(this + 4) != *(this + 2))
  {
    llvm::raw_ostream::flush_nonempty(this);
  }

  return MEMORY[0x2821F1EA8](this, 0, 0, 0);
}

void *sub_23C4AE5DC(void *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a2 + 8);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_23C496CE8();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(__dst + 23) = v4;
    if (v4)
    {
      __dst = memmove(__dst, v3, v4);
    }

    *(v2 + v4) = 0;
  }

  else
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
  }

  return __dst;
}

void sub_23C4AE6B8()
{
  MEMORY[0x23EED3B80]();

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4AE6F4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if ((**(a1 + 56) & v1) != 0)
  {
    memset(&__str, 0, sizeof(__str));
    v52 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 1;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    v51 = MEMORY[0x277D821F8] + 16;
    p_str = &__str;
    sub_23C4AE584(&v51);
    llvm::Module::print();
    if (v55 != v53)
    {
      llvm::raw_ostream::flush_nonempty(&v51);
    }

    v3 = *(a1 + 56);
    v4 = (v3 + 8);
    v5 = *(v3 + 31);
    v6 = v5;
    v7 = *(v3 + 16);
    if ((v5 & 0x80u) == 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v8 == size)
    {
      if (v6 >= 0)
      {
        v10 = v4;
      }

      else
      {
        v10 = v4->__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &__str;
      }

      else
      {
        v11 = __str.__r_.__value_.__r.__words[0];
      }

      v12 = memcmp(v10, v11, v8) != 0;
    }

    else
    {
      v12 = 1;
    }

    std::string::operator=(v4, &__str);
    memset(&v50, 0, sizeof(v50));
    MEMORY[0x23EED4E90](&v50, "------ ");
    if (*(a1 + 48))
    {
      v13 = "Before ";
    }

    else
    {
      v13 = "After ";
    }

    std::string::append(&v50, v13);
    std::string::append(&v50, *(a1 + 32), *(a1 + 40));
    if (v12)
    {
      v14 = std::string::append(&v50, " ------");
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v50;
      }

      else
      {
        LOBYTE(v21) = v50.__r_.__value_.__s.__data_[0];
      }

      sub_23C4AA240(v14, "%s", v15, v16, v17, v18, v19, v20, v21);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__str;
      }

      else
      {
        LOBYTE(v29) = __str.__r_.__value_.__s.__data_[0];
      }

      sub_23C4AA240(v22, "%s", v23, v24, v25, v26, v27, v28, v29);
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v50.__r_.__value_.__l.__size_;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_23C496CE8();
      }

      if (v37 >= 0x17)
      {
        operator new();
      }

      v49 = v37;
      if (v37)
      {
        v30 = memset(&__b, 45, v37);
      }

      *(&__b + v37) = 0;
      p_b = &__b;
      if (v49 < 0)
      {
        LOBYTE(p_b) = __b;
      }

      sub_23C4AA240(v30, "%s", v31, v32, v33, v34, v35, v36, p_b);
      if (v49 < 0)
      {
        operator delete(__b);
      }
    }

    else
    {
      std::string::append(&v50, " (No change)");
      v38 = std::string::append(&v50, " ------");
      if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v50;
      }

      else
      {
        LOBYTE(v45) = v50.__r_.__value_.__s.__data_[0];
      }

      sub_23C4AA240(v38, "%s", v39, v40, v41, v42, v43, v44, v45);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    llvm::raw_ostream::~raw_ostream(&v51);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_23C4AEA28()
{
  MEMORY[0x23EED3B80]();

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4AEA64(uint64_t result)
{
  if (!*(result + 336))
  {
    sub_23C4AE0F4();
  }

  return result;
}

uint64_t sub_23C4AEAD4(uint64_t result)
{
  if (!*(result + 344))
  {
    sub_23C4AE0F4();
  }

  return result;
}

uint64_t sub_23C4AEB44(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (*(a1 + 383) >= 0)
      {
        v5 = *(a1 + 383);
      }

      else
      {
        v5 = *(a1 + 368);
      }

      sub_23C4ADD34(__p, v5 + 15);
      if (v18 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if (v5)
      {
        if (*(a1 + 383) >= 0)
        {
          v7 = (a1 + 360);
        }

        else
        {
          v7 = *(a1 + 360);
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, "/ei_rt.metallib");
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }
    }

    else
    {
      v11 = *(*(a1 + 32) + 32);
      if (*(a1 + 383) >= 0)
      {
        v12 = *(a1 + 383);
      }

      else
      {
        v12 = *(a1 + 368);
      }

      v13 = strlen(*(*(a1 + 32) + 32));
      v14 = __p;
      sub_23C4ADD34(__p, v12 + v13);
      if (v18 < 0)
      {
        v14 = __p[0];
      }

      if (v12)
      {
        if (*(a1 + 383) >= 0)
        {
          v15 = (a1 + 360);
        }

        else
        {
          v15 = *(a1 + 360);
        }

        memmove(v14, v15, v12);
      }

      if (v13)
      {
        memmove(v14 + v12, v11, v13);
      }

      *(v14 + v12 + v13) = 0;
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }
    }

    v16 = sub_23C4AED10(v8, a2);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    return v16;
  }

  else
  {
    v9 = (a1 + 384);
    if (*(a1 + 407) < 0)
    {
      v9 = *v9;
    }

    return sub_23C4AED10(v9, a2);
  }
}

uint64_t sub_23C4AED10(uint64_t a1, uint64_t a2)
{
  CompilerHelper = createCompilerHelper();
  v5 = (**CompilerHelper)(CompilerHelper, a1);
  if (v5)
  {
    v6 = v5;
    v7 = (*(*v5 + 24))(v5, a2);
    (*(*v6 + 8))(v6);
  }

  else
  {
    v7 = 0;
  }

  deleteCompilerHelper();
  return v7;
}

uint64_t sub_23C4AEDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = a2 + 24;
    for (i = *(a2 + 32); i != v8; i = *(i + 8))
    {
      if (i)
      {
        v10 = (i - 56);
      }

      else
      {
        v10 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v10))
      {
        if ((*(v10 + 34) & 0x80) != 0)
        {
          sub_23C4AF1B0(v10, 3);
        }
      }
    }

    v11 = *(*(a1 + 400) + 32);
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = strlen(*(v11 + 8));
    }

    else
    {
      v13 = 0;
    }

    sub_23C4AF090(a2, v12, v13);
    v15 = *(*(a1 + 400) + 32);
    if (*(v15 + 16))
    {
      v16 = strlen(*(v15 + 16));
    }

    llvm::Module::setDataLayout();
    v17 = *(a1 + 320);
    v33 = a2;
    v35 = 0;
    v18 = llvm::Linker::linkModules();
    sub_23C4AF0E8(v34);
    sub_23C4AF168(&v33);
    if ((v18 & 1) == 0)
    {
      v20 = *(a1 + 320);
      v21 = *(v20 + 32);
      v22 = v20 + 24;
      if (a3)
      {
        if (v21 != v20 + 24)
        {
          do
          {
            v23 = *(v21 + 8);
            if (v21)
            {
              v24 = v21 - 56;
            }

            else
            {
              v24 = 0;
            }

            if (v24 != a4 && !*(v21 - 48))
            {
              llvm::Function::eraseFromParent((v21 - 56));
            }

            v21 = v23;
          }

          while (v23 != v22);
        }
      }

      else
      {
        if (v21 == v20 + 24)
        {
          v28 = 0;
        }

        else
        {
          v25 = 1;
          do
          {
            v26 = *(v21 + 8);
            if (v21)
            {
              v27 = v21 - 56;
            }

            else
            {
              v27 = 0;
            }

            if (v27 != a4)
            {
              if (*(v21 - 48))
              {
                if ((*(v21 - 23) & 0x20) == 0 && (llvm::GlobalValue::isDeclaration((v21 - 56)) & 1) == 0)
                {
                  *(v21 - 24) = *(v21 - 24) & 0xFFFFBFC0 | 0x4007;
                  llvm::Function::addFnAttr();
                  ++v25;
                }
              }

              else
              {
                llvm::Function::eraseFromParent((v21 - 56));
              }
            }

            v21 = v26;
          }

          while (v26 != v22);
          v20 = *(a1 + 320);
          v28 = v25 > 1;
        }

        v29 = *(v20 + 16);
        v30 = v20 + 8;
        if (v29 != v20 + 8)
        {
          do
          {
            v31 = *(v29 + 8);
            if (v29)
            {
              v32 = (v29 - 56);
            }

            else
            {
              v32 = 0;
            }

            if ((llvm::GlobalValue::isDeclaration(v32) & 1) == 0)
            {
              if (*(v29 - 48))
              {
                *(v29 - 24) = *(v29 - 24) & 0xFFFFBFC0 | 0x4007;
              }

              else
              {
                llvm::GlobalVariable::eraseFromParent((v29 - 56));
              }
            }

            v29 = v31;
          }

          while (v31 != v30);
        }

        if (v28)
        {
          llvm::legacy::PassManager::run(*(*(a1 + 400) + 320), *(a1 + 320));
        }
      }
    }

    result = v18 ^ 1u;
  }

  else
  {
    result = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23C4AF090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  sub_23C4AE5DC(&__dst, v7);
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  result = *&__dst;
  *(a1 + 216) = __dst;
  *(a1 + 232) = v6;
  return result;
}

uint64_t sub_23C4AF0E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *sub_23C4AF168(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x23EED4710]();
    MEMORY[0x23EED50C0](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

uint64_t sub_23C4AF1B0(uint64_t result, char a2)
{
  v2 = *(result + 32);
  *(result + 32) = v2 & 0xFFFFFFF0 | a2 & 0xF;
  if ((v2 & 0x30) != 0)
  {
    v3 = result;
    result = llvm::GlobalValue::hasExternalWeakLinkage(result);
    if ((result & 1) == 0)
    {
      *(v3 + 32) |= 0x4000u;
    }
  }

  return result;
}

uint64_t sub_23C4AF200(uint64_t a1, const UInt8 *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2[23];
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  v4 = CFStringCreateWithBytes(0, a2, v3, 0x8000100u, 1u);
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AGXCompilerCore-S2A8");
  v6 = CFBundleCopyResourceURL(BundleWithIdentifier, v4, @"ds", 0);
  v7 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
  CFStringGetCString(v7, buffer, 1024, 0x600u);
  CFRelease(v4);
  CFRelease(v6);
  CFRelease(v7);
  v41[6] = 0;
  v8 = MEMORY[0x277D82858] + 24;
  v9 = MEMORY[0x277D82858] + 64;
  v41[0] = MEMORY[0x277D82858] + 64;
  v10 = MEMORY[0x277D82808];
  v11 = *(MEMORY[0x277D82808] + 16);
  v39[0] = *(MEMORY[0x277D82808] + 8);
  *(v39 + *(v39[0] - 24)) = v11;
  v39[1] = 0;
  v12 = (v39 + *(v39[0] - 24));
  std::ios_base::init(v12, v40);
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v39[0] = v8;
  v41[0] = v9;
  MEMORY[0x23EED4F20](v40);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((v39 + *(v39[0] - 24)), *&v40[*(v39[0] - 24) + 16] | 4);
  }

  v13 = v39 + *(v39[0] - 24);
  if ((v13[32] & 5) != 0)
  {
    v14 = MEMORY[0x277D82670];
    v15 = sub_23C4AA520(MEMORY[0x277D82670], "readBitcode", 11);
    sub_23C4AA520(v15, "(): unable to open file: ", 25);
    v16 = strlen(buffer);
    sub_23C4AA520(v14, buffer, v16);
    std::ios_base::getloc((v14 + *(*v14 - 24)));
    v17 = std::locale::use_facet(v28, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(v28);
    std::ostream::put();
    std::ostream::flush();
    v18 = 0;
    goto LABEL_27;
  }

  v19 = *(v13 + 5);
  if (v19)
  {
    v20 = v19[3];
    v21 = v19[4];
    if (v20 != v21)
    {
      goto LABEL_12;
    }

    if ((*(*v19 + 72))(v19) != -1)
    {
      v20 = v19[3];
      v21 = v19[4];
LABEL_12:
      if (v20 == v21)
      {
        (*(*v19 + 72))(v19);
      }

      else
      {
        v22 = *v20;
      }

      operator new();
    }
  }

  MEMORY[0] = 186106078;
  MEMORY[0x14] = -557825214;
  v31 = 0;
  *v29 = 0u;
  v30 = 0u;
  *&v28[0].__locale_ = 0u;
  *v32 = 0u;
  *__p = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37[0] = &v38;
  v37[1] = 0x400000000;
  strlen(buffer);
  v23 = llvm::parseIR();
  v18 = v27;
  v27 = 0;
  if (!v18)
  {
    v24 = llvm::errs(v23);
    llvm::SMDiagnostic::print(v28, "readBitcode", v24);
  }

  sub_23C4AF168(&v27);
  sub_23C4AF874(v37);
  v10 = MEMORY[0x277D82808];
  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v32[0]);
  }

  if (SBYTE7(v30) < 0)
  {
    operator delete(v29[0]);
  }

  operator delete(0);
LABEL_27:
  v39[0] = *v10;
  *(v39 + *(v39[0] - 24)) = v10[3];
  MEMORY[0x23EED4F30](v40);
  std::istream::~istream();
  MEMORY[0x23EED5050](v41);
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_23C4AF874(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t sub_23C4AF8FC(uint64_t a1, unsigned int *a2, uint64_t a3, char a4, int a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2[174];
  v9 = a4 & 1 | (*(a1 + 353) << 8);
  v10 = (*(*a2 + 24))(a2);
  sub_23C49F8D0(&__p, v10);
  llvm::AGX::CompileRequest::CompileRequest();
  if (v30 < 0)
  {
    operator delete(__p);
  }

  (*(*a2 + 56))(a2, v31);
  if (sub_23C4AE1DC(&qword_27E1F74F0))
  {
    v11 = (*(*a2 + 24))(a2);
    if (sub_23C4B00BC(v11))
    {
      llvm::AGX::CompileRequest::setLoggingStream();
    }
  }

  if (a5 == 1)
  {
    v12 = a1 + 80;
    v13 = (a2 + 102);
    v14 = a1;
    v15 = a1 + 80;
    v16 = 1;
    goto LABEL_10;
  }

  if (a5 == 2)
  {
    v12 = a1 + 104;
    v13 = (a2 + 102);
    v14 = a1;
    v15 = a1 + 104;
    v16 = 2;
LABEL_10:
    v17 = 1;
    goto LABEL_12;
  }

  v12 = a1 + 56;
  v13 = (a2 + 102);
  v14 = a1;
  v15 = a1 + 56;
  v16 = 3;
  v17 = 0;
LABEL_12:
  sub_23C4B0B80(v14, v15, v16, v17, v13);
  if (*(v12 + 16) == 1)
  {
    v21 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 1;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v20 = MEMORY[0x277D821F8] + 16;
    v28 = a1 + 280;
    sub_23C4AE584(&v20);
    operator new();
  }

  llvm::AGX::CompileRequest::~CompileRequest(v31);
  v18 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_23C4B00BC(const char *a1)
{
  result = sub_23C4AE1DC(&qword_27E1F74F0);
  if (result)
  {
    if (!strcmp(a1, "compute") || !strcmp(a1, "vertex") || !strcmp(a1, "Vertex") || !strcmp(a1, "fragment") || !strcmp(a1, "compute-program") || !strcmp(a1, "tile") || !strcmp(a1, "post-tessellation-vertex-sw") || !strcmp(a1, "post-tessellation-vertex-hw"))
    {
      return 1;
    }

    else
    {
      result = MGGetBoolAnswer();
      if (result)
      {

        return sub_23C4B114C();
      }
    }
  }

  return result;
}

void *sub_23C4B01BC(void *result, _BYTE *__src, _BYTE *a3)
{
  v3 = result;
  v4 = a3 - __src;
  v5 = result[1];
  if (result[2] < (v5 + a3 - __src))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (__src != a3)
  {
    result = memcpy((*result + v5), __src, v4);
    v5 = v3[1];
  }

  v3[1] = v5 + v4;
  return result;
}

uint64_t sub_23C4B023C(uint64_t a1, void *a2, size_t a3)
{
  sub_23C4B0AD0(a1, a3 + 1, 4uLL);
  sub_23C4B090C(a1, 1uLL);
  sub_23C4B0B08(a1, a2, a3);
  sub_23C4B0A6C(a1, a3);
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t *sub_23C4B02B4(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    sub_23C4B08D8(result, 4uLL);
    v6 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10) - v3 + 4;

    return sub_23C4B0A04(v5, a2, v6);
  }

  return result;
}

uint64_t *sub_23C4B0328(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (a3 || *(result + 80) == 1)
  {
    sub_23C4B08D8(result, 8uLL);
    v6 = v5[6];
    if ((v6 - v5[7]) <= 7)
    {
      sub_23C4B05B4(v5, 8uLL);
      v6 = v5[6];
    }

    *(v6 - 8) = a3;
    v7 = v6 - 8;
    v5[6] = v7;
    v8 = *(v5 + 8) - v7 + *(v5 + 10);

    return sub_23C4B0980(v5, a2, v8);
  }

  return result;
}

uint64_t sub_23C4B03D4(uint64_t a1, __int16 a2)
{
  sub_23C4B08D8(a1, 4uLL);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  if ((v4 - v5) <= 3)
  {
    sub_23C4B05B4(a1, 4uLL);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
  }

  *(v4 - 4) = 0;
  v6 = v4 - 4;
  *(a1 + 48) = v6;
  v7 = *(a1 + 32) - v6 + *(a1 + 40);
  if ((*(a1 + 68) + 2) <= 4u)
  {
    v8 = 4;
  }

  else
  {
    v8 = (*(a1 + 68) + 2);
  }

  *(a1 + 68) = v8;
  if (v6 - v5 < v8)
  {
    sub_23C4B05B4(a1, v8);
    v6 = *(a1 + 48);
  }

  *(a1 + 48) = v6 - v8;
  bzero((v6 - v8), v8);
  v9 = v7 - a2;
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11[1] = v9;
  *v11 = *(a1 + 68);
  v12 = *(a1 + 64);
  v13 = (v10 - 8 * v12);
  if (v12)
  {
    v14 = v10 - 8 * v12;
    do
    {
      v15 = (v7 - *v14);
      *(v11 + *(v14 + 4)) = v7 - *v14;
      v14 += 8;
    }

    while (v14 < v10);
  }

  *(a1 + 56) = v13;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  LODWORD(v18) = v17 - v11 + v16;
  if (*(a1 + 81) == 1 && v16 < v13)
  {
    v20 = *v11;
    v21 = v16 + v17;
    v22 = *(a1 + 40);
    while (1)
    {
      v18 = *v22;
      if (v20 == *(v21 - v18) && !memcmp((v21 - v18), v11, v20))
      {
        break;
      }

      if (++v22 >= v13)
      {
        LODWORD(v18) = v17 - v11 + v16;
        goto LABEL_21;
      }
    }

    v11 = (v11 + (v17 - v11 + v16 - v7));
    *(a1 + 48) = v11;
  }

LABEL_21:
  if (v18 == v17 + v16 - v11)
  {
    if ((v11 - v13) <= 3)
    {
      sub_23C4B05B4(a1, 4uLL);
      v13 = *(a1 + 56);
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
    }

    *v13 = v18;
    *(a1 + 56) = v13 + 4;
  }

  *(v16 + v17 - v7) = v18 - v7;
  *(a1 + 70) = 0;
  return v7;
}

uint64_t sub_23C4B05B4(uint64_t *a1, unint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = v3 - a1[6] + v4;
  v6 = a1[7] - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = a1[2];
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (a1[3] + v3 + v7 - 1) & -a1[3];
  a1[4] = v8;
  v9 = *a1;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_284F28AA0;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_284F28AA0;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + a1[4] - v5;
  a1[5] = result;
  a1[6] = v11;
  a1[7] = result + v6;
  return result;
}

char *sub_23C4B07B0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*a1 + 16))(a1, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*a1 + 24))(a1, a2, a3);
  return v12;
}

void sub_23C4B0884(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x23EED50A0);
  }
}

uint64_t *sub_23C4B08D8(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    *(a1 + 72) = a2;
  }

  return sub_23C4B090C(a1, (a2 - 1) & -(*(a1 + 32) - *(a1 + 48) + *(a1 + 40)));
}

uint64_t *sub_23C4B090C(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[6];
  if (v4 - result[7] >= a2)
  {
    result[6] = v4 - a2;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = sub_23C4B05B4(result, a2);
    v3[6] -= a2;
  }

  v5 = 0;
  do
  {
    *(v3[6] + v5++) = 0;
  }

  while (a2 != v5);
  return result;
}

uint64_t *sub_23C4B0980(uint64_t *result, uint64_t a2, unsigned int a3)
{
  v5 = result;
  v6 = result[7];
  if ((result[6] - v6) <= 7)
  {
    result = sub_23C4B05B4(result, 8uLL);
    v6 = v5[7];
  }

  *v6 = a3 | (a2 << 32);
  v5[7] += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return result;
}

uint64_t *sub_23C4B0A04(uint64_t *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = sub_23C4B0A6C(result, a3);

    return sub_23C4B0980(v4, a2, v5);
  }

  return result;
}

uint64_t sub_23C4B0A6C(uint64_t a1, int a2)
{
  sub_23C4B08D8(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    sub_23C4B05B4(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t *sub_23C4B0AD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 72) < a3)
  {
    *(a1 + 72) = a3;
  }

  return sub_23C4B090C(a1, (a3 - 1) & (-a2 - (*(a1 + 32) - *(a1 + 48) + *(a1 + 40))));
}

uint64_t *sub_23C4B0B08(uint64_t *result, void *__src, size_t __n)
{
  if (__n)
  {
    v5 = result;
    v6 = result[6];
    if (v6 - result[7] < __n)
    {
      sub_23C4B05B4(result, __n);
      v6 = v5[6];
    }

    v5[6] = v6 - __n;

    return memcpy((v6 - __n), __src, __n);
  }

  return result;
}

uint64_t sub_23C4B0B80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    v7 = result;
    llvm::AGX::AGXCompiler::createCompilePlan();
    v25 = 1;
    if (llvm::AGX::AGXCompilePlan::isValid(v26))
    {
      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      if (*(a2 + 16) == 1)
      {
        MEMORY[0x23EED44C0](a2);
        *(a2 + 16) = 0;
      }

      llvm::AGX::AGXCompilePlan::AGXCompilePlan();
      *(a2 + 16) = 1;
      MEMORY[0x23EED44C0](v17);
    }

    else
    {
      llvm::AGX::AGXCompiler::getLastDiagnostics(&v23, (v7 + 48));
      sub_23C4B0E40(v17);
      sub_23C4AA520(&v18, "Create Plan failed:\n", 20);
      v8 = v23;
      v9 = v24;
      while (v8 != v9)
      {
        v10 = *v8++;
        v11 = llvm::AGX::operator<<();
        sub_23C4AA520(v11, "\n", 1);
      }

      std::stringbuf::str();
      if ((v16 & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v13 = v16;
      }

      else
      {
        v13 = __p[1];
      }

      std::string::append(a5, v12, v13);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v17[0] = *MEMORY[0x277D82818];
      v14 = *(MEMORY[0x277D82818] + 72);
      *(v17 + *(v17[0] - 3)) = *(MEMORY[0x277D82818] + 64);
      v18 = v14;
      v19 = MEMORY[0x277D82878] + 16;
      if (v21 < 0)
      {
        operator delete(v20[7].__locale_);
      }

      v19 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v20);
      std::iostream::~basic_iostream();
      MEMORY[0x23EED5050](&v22);
      v17[0] = &v23;
      sub_23C4AA478(v17);
    }

    return MEMORY[0x23EED44C0](v26);
  }

  return result;
}

uint64_t sub_23C4B0E40(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 24;
  v3 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v4 = a1 + 16;
  v5 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v10 = v6[5];
  v11 = v6[4];
  *(a1 + 16) = v11;
  *(v4 + *(v11 - 24)) = v10;
  v12 = v6[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v6[6];
  *a1 = v2;
  *(a1 + 128) = v3;
  v13 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v5;
  *(a1 + 24) = v13;
  MEMORY[0x23EED5010](a1 + 32);
  *(a1 + 88) = 0;
  v14 = a1 + 88;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 112) = a1 + 88;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v15 = *(a1 + 111);
  if (v15 < 0)
  {
    v15 = *(a1 + 96);
  }

  *(a1 + 64) = v14;
  *(a1 + 72) = v14;
  *(a1 + 80) = v14 + v15;
  return a1;
}

const char *sub_23C4B114C()
{
  result = sub_23C4A2690("AGC_STATUS_LOG_DRIVER_SHADERS");
  if (result)
  {
    if (*result == 48)
    {
      return 0;
    }

    else
    {
      return (atoi(result) != 0);
    }
  }

  return result;
}

uint64_t sub_23C4B1190(uint64_t a1, uint64_t a2, llvm::Type *a3)
{
  v6 = (*(**(a2 + 32) + 8))(*(a2 + 32), a3);
  sub_23C504C2C(a1, a3);
  *(a1 + 344) = v6;
  *a1 = &unk_284F129B8;
  *(a1 + 352) = mach_absolute_time();
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = a2;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  v7 = *(a1 + 336);
  v8 = *(*(a1 + 344) + 800);
  *(a1 + 584) = llvm::IntegerType::get();
  *(a1 + 592) = a1 + 608;
  *(a1 + 600) = 0x800000000;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 720) = xmmword_23C532550;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = 1;
  *(a1 + 784) = 256;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = xmmword_23C532550;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 872) = 1;
  *(a1 + 880) = 256;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0;
  *(a1 + 912) = xmmword_23C532550;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 968) = 1;
  *(a1 + 976) = 256;
  *(a1 + 984) = 0;
  *(a1 + 328) = a1 + 592;
  return a1;
}

uint64_t sub_23C4B130C(uint64_t a1)
{
  *a1 = &unk_284F129B8;
  v2 = *(a1 + 400);
  *(v2 + 136) = 0;
  if (*(v2 + 303) < 0)
  {
    **(v2 + 280) = 0;
    *(v2 + 288) = 0;
  }

  else
  {
    *(v2 + 280) = 0;
    *(v2 + 303) = 0;
  }

  MEMORY[0x23EED4E90](v2 + 8, &unk_23C53F34D);
  v3 = *(a1 + 344);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  if (*(a1 + 320))
  {
    v4 = MEMORY[0x23EED4710]();
    MEMORY[0x23EED50C0](v4, 0x10B2C407FF26C1CLL);
  }

  sub_23C4B1460((a1 + 896));
  sub_23C4B1460((a1 + 800));
  sub_23C4B1460((a1 + 704));
  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  v5 = *(a1 + 592);
  if (v5 != (a1 + 608))
  {
    free(v5);
  }

  v6 = *(a1 + 432);
  if (v6)
  {
    *(a1 + 440) = v6;
    operator delete(v6);
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  v7 = *(a1 + 368);
  if (v7)
  {
    *(a1 + 376) = v7;
    operator delete(v7);
  }

  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 136));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 128));
  v8 = *(a1 + 8);
  if (v8 != (a1 + 24))
  {
    free(v8);
  }

  return a1;
}

void *sub_23C4B1460(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    sub_23C4B1570(*(v2 + 8));
    MEMORY[0x23EED50C0](v2, 0x1060C40C2B13FB5);
  }

  v3 = a1[5];
  if (v3)
  {
    if (*a1)
    {
      v4 = a1[4];
      (*(**a1 + 24))(*a1);
    }

    else
    {
      MEMORY[0x23EED50A0](v3, 0x1000C8077774924);
    }
  }

  a1[5] = 0;
  if (*(a1 + 8) == 1 && *a1)
  {
    (*(**a1 + 8))(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void sub_23C4B1570(void *a1)
{
  if (a1)
  {
    sub_23C4B1570(*a1);
    sub_23C4B1570(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_23C4B15BC(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = 0;
    v16 = a2 + 1;
    v6 = *(a1 + 432);
    v7 = *(a1 + 440);
    do
    {
      if (v7 == v6)
      {
        v7 = v6;
      }

      else
      {
        v8 = 0;
        v10 = 1;
        do
        {
          v9 = &v16[v5];
          v11 = v9 + *v9 + *(v9 + *v9 - *(v9 + *v9) + 4);
          sub_23C49F8D0(&v17, &v11[*v11 + 4]);
          if (!std::string::compare(&v17, *(*(a1 + 432) + 16 * v8)))
          {
            v12 = *(a1 + 432) + 16 * v8;
            sub_23C4B1830(1uLL);
          }

          if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v17.__r_.__value_.__l.__data_);
          }

          v8 = v10;
          v6 = *(a1 + 432);
          v7 = *(a1 + 440);
          ++v10;
        }

        while (v8 < (v7 - v6) >> 4);
        v4 = *a2;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  *a3 = sub_23C4B17AC(a1 + 704, &unk_27E1F7578, 0);
  return 0;
}

uint64_t sub_23C4B17AC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  sub_23C4B0AD0(a1, 4 * a3, 4uLL);
  sub_23C4B0AD0(a1, v6, 4uLL);
  sub_23C4B0B08(a1, a2, v6);
  *(a1 + 70) = 0;

  return sub_23C4B0A6C(a1, v3);
}

void sub_23C4B1830(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_23C496CE8();
}

uint64_t sub_23C4B1878(uint64_t a1)
{
  v2 = (*(*a1 + 24))(a1);
  v3 = strlen(v2);
  v4 = sub_23C4B023C(a1 + 704, v2, v3);
  if ((*(*a1 + 48))(a1))
  {
    v5 = sub_23C4B1A58(a1 + 704, *(*(a1 + 400) + 128), *(*(a1 + 400) + 136));
  }

  else
  {
    v5 = 0;
  }

  v18 = 0;
  v6 = *(a1 + 560);
  if (v6)
  {
    v7 = (v6 - *v6);
    if (*v7 >= 5u && (v8 = v7[2]) != 0)
    {
      v9 = (v6 + v8 + *(v6 + v8));
    }

    else
    {
      v9 = 0;
    }

    v10 = (v9 - *v9);
    if (*v10 >= 0x39u && (v11 = v10[28]) != 0)
    {
      v12 = (v9 + v11 + *(v9 + v11));
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_23C4B15BC(a1, v12, &v18);
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 774) = 1;
  v14 = *(a1 + 736);
  v15 = *(a1 + 752);
  v16 = *(a1 + 744);
  sub_23C4B02B4((a1 + 704), 8, v4);
  if ((*(*a1 + 48))(a1))
  {
    sub_23C4B02B4((a1 + 704), 4, v5);
  }

  if (v13)
  {
    sub_23C4B02B4((a1 + 704), 14, v18);
  }

  sub_23C4B0A04((a1 + 704), 16, *(a1 + 456));
  return a1 + 704;
}

uint64_t sub_23C4B1A58(uint64_t a1, void *a2, size_t a3)
{
  *(a1 + 70) = 1;
  sub_23C4B0AD0(a1, a3, 4uLL);
  sub_23C4B0AD0(a1, a3, 1uLL);
  sub_23C4B0B08(a1, a2, a3);
  *(a1 + 70) = 0;

  return sub_23C4B0A6C(a1, a3);
}

uint64_t sub_23C4B1AD8(uint64_t a1, int a2)
{
  *(a1 + 56) = *(a1 + 40);
  sub_23C4B0AD0(a1, 4, *(a1 + 72));
  sub_23C4B08D8(a1, 4uLL);
  result = sub_23C4B0A6C(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - a2 + 4);
  *(a1 + 71) = 1;
  return result;
}

uint64_t sub_23C4B1B48(uint64_t a1)
{
  for (i = 0; i != -216; i -= 24)
  {
    if (*(a1 + i + 215) < 0)
    {
      operator delete(*(a1 + i + 192));
    }
  }

  return a1;
}

BOOL sub_23C4B1B90(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == -17958193)
  {
    v3 = a2;
    v5 = a2[4];
    if (v5)
    {
      v46 = 0;
      v6 = 0;
      v41 = a2 + 1;
      v7 = a2 + 8;
      v42 = a2[4];
      do
      {
        if (*v7 == 2)
        {
          v44 = v6;
          v14 = v7[3];
          if (v14)
          {
            v15 = &v41[v7[4]];
            v16 = (a2 + v7[2]);
            do
            {
              if ((~*(v16 + 4) & 0xE) == 0 && *(v16 + 5) == v46)
              {
                v17 = *(v16 + 1);
                v18 = &v15[*v16];
                v20 = *(a1 + 440);
                v19 = *(a1 + 448);
                v45 = v17;
                if (v20 >= v19)
                {
                  v22 = v7;
                  v23 = v15;
                  v24 = *(a1 + 432);
                  v25 = v20 - v24;
                  v26 = (v20 - v24) >> 4;
                  v27 = v26 + 1;
                  if ((v26 + 1) >> 60)
                  {
                    sub_23C496CE8();
                  }

                  v28 = v19 - v24;
                  if (v28 >> 3 > v27)
                  {
                    v27 = v28 >> 3;
                  }

                  if (v28 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v29 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v29 = v27;
                  }

                  if (v29)
                  {
                    if (!(v29 >> 60))
                    {
                      operator new();
                    }

                    sub_23C496CE8();
                  }

                  v30 = 16 * v26;
                  *v30 = v18;
                  *(v30 + 8) = v17;
                  v21 = 16 * v26 + 16;
                  memcpy(0, v24, v25);
                  *(a1 + 432) = 0;
                  *(a1 + 440) = v21;
                  *(a1 + 448) = 0;
                  if (v24)
                  {
                    operator delete(v24);
                  }

                  v15 = v23;
                  v7 = v22;
                }

                else
                {
                  *v20 = v18;
                  *(v20 + 8) = v17;
                  v21 = v20 + 16;
                }

                *(a1 + 440) = v21;
                v47 = v18;
                v48 = strlen(v18);
                if (v48 == 8 && *v18 == 0x6E69616D2E636761)
                {
                  *(a1 + 456) = v45;
                }

                v31 = (*(*a1 + 24))(a1);
                if (sub_23C4B00BC(v31))
                {
                  if (llvm::StringRef::find() == -1)
                  {
                    v32 = (*(*a1 + 32))(a1);
                    if (v32 <= 3)
                    {
                      sub_23C4AA240(v32, "Non-Inlined function %s", v33, v34, v35, v36, v37, v38, v18);
                    }
                  }
                }
              }

              v16 += 4;
              --v14;
            }

            while (v14);
          }

          v3 = a2;
          v5 = v42;
          v6 = v44;
        }

        else if (*v7 == 25)
        {
          v8 = v7[16];
          if (v8)
          {
            v9 = 0;
            v10 = v7 + 18;
            v11 = 1;
            while (1)
            {
              if (!strncmp(v10 + 16, "__TEXT", 0x10uLL))
              {
                *(a1 + 464) = v3 + v10[12];
                *(a1 + 512) = *(v10 + 5);
                ++v9;
                v46 = v11;
              }

              else
              {
                if (!strncmp(v10 + 16, "__GPU_METADATA", 0x10uLL))
                {
                  v12 = (v3 + v10[12]);
                  *(a1 + 472) = v12;
                  *(a1 + 520) = *(v10 + 5);
                  *(a1 + 560) = v12 + *v12;
                }

                else if (!strncmp(v10 + 16, "__GPU_METADATA_2", 0x10uLL))
                {
                  *(a1 + 480) = v3 + v10[12];
                  *(a1 + 528) = *(v10 + 5);
                }

                else if (!strncmp(v10 + 16, "__GPU_VIDMALIST", 0x10uLL))
                {
                  v13 = (v3 + v10[12]);
                  *(a1 + 488) = v13;
                  *(a1 + 536) = *(v10 + 5);
                  *(a1 + 568) = v13 + *v13;
                }

                else
                {
                  if (strncmp(v10 + 16, "__GPU_STATS", 0x10uLL))
                  {
                    goto LABEL_22;
                  }

                  if (!strncmp(v10, "__counters", 0x10uLL))
                  {
                    *(a1 + 496) = v3 + v10[12];
                    *(a1 + 544) = *(v10 + 5);
                    ++v9;
                  }

                  if (strncmp(v10, "__telemetry", 0x10uLL))
                  {
                    goto LABEL_22;
                  }

                  *(a1 + 504) = v3 + v10[12];
                  *(a1 + 552) = *(v10 + 5);
                }

                ++v9;
              }

LABEL_22:
              if (v11 < v8)
              {
                v10 += 20;
                ++v11;
                if (v9 < 6)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        v7 = (v7 + v7[1]);
        ++v6;
      }

      while (v6 != v5);
    }

    v39 = (*(*a1 + 24))(a1);
    if (sub_23C4B00BC(v39))
    {
      (*(**(a1 + 344) + 352))(*(a1 + 344), *(a1 + 464), *(a1 + 512), a1);
    }

    LODWORD(v47) = 0;
    (*(*a1 + 88))(a1, &v47);
    v2 = -17958193;
  }

  return v2 == -17958193;
}

void sub_23C4B20A8(uint64_t a1, const char *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 24))(a1);
  if (sub_23C4B00BC(v4))
  {
    v5 = (*(*a1 + 24))(a1);
    snprintf(__str, 0x80uLL, "%s shader %u (%s)", v5, *(a1 + 696), a2);
    __p[0] = 0;
    __p[1] = 0;
    v58 = 0;
    v49 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 1;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v48 = MEMORY[0x277D821F8] + 16;
    v56 = __p;
    sub_23C4AE584(&v48);
    v6 = *(a1 + 320);
    v7 = llvm::Module::print();
    v14 = *(a1 + 320);
    v15 = v14 + 24;
    v16 = *(v14 + 32);
    if (v16 == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      do
      {
        if (v16)
        {
          v18 = v16 - 56;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18 + 72;
        for (i = *(v18 + 80); i != v19; i = *(i + 8))
        {
          if (i)
          {
            v21 = i - 24;
          }

          else
          {
            v21 = 0;
          }

          v22 = v21 + 40;
          v23 = *(v21 + 48);
          if (v23 == v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = 0;
            do
            {
              ++v24;
              v23 = *(v23 + 8);
            }

            while (v23 != v22);
          }

          v17 += v24;
        }

        v16 = *(v16 + 8);
      }

      while (v16 != v15);
    }

    sub_23C4AA240(v7, "------ Start LLVM IR %s -------\n", v8, v9, v10, v11, v12, v13, __str);
    if (v58 >= 0)
    {
      v32 = __p;
    }

    else
    {
      LOBYTE(v32) = __p[0];
    }

    sub_23C4AA240(v25, "%s\n", v26, v27, v28, v29, v30, v31, v32);
    sub_23C4AA240(v33, "; %u instructions", v34, v35, v36, v37, v38, v39, v17);
    sub_23C4AA240(v40, "------ End LLVM IR %s -------\n", v41, v42, v43, v44, v45, v46, __str);
    llvm::raw_ostream::~raw_ostream(&v48);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void sub_23C4B22E0(uint64_t a1, uint64_t a2)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 320);
  if ((*(a2 + 18) & 0x3FF0) == 0x6A0)
  {
    llvm::Module::getOrInsertNamedMetadata();
    v17 = v19;
    v18 = 0x800000000;
    v4 = llvm::ValueAsMetadata::get();
    sub_23C49B500(&v17, v4);
    v5 = *(a1 + 592);
    v6 = *(a1 + 600);
    v7 = v18;
    if (v6 + v18 > HIDWORD(v18))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v6)
    {
      v8 = v17 + 8 * v18;
      v9 = 8 * v6;
      do
      {
        v10 = *v5++;
        *v8++ = v10;
        v9 -= 8;
      }

      while (v9);
    }

    LODWORD(v18) = v7 + v6;
    v11 = *(a1 + 336);
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
    if (v17 != v19)
    {
      free(v17);
    }
  }

  else
  {
    llvm::Module::getOrInsertNamedMetadata();
    v12 = *(a1 + 600);
    if (v12)
    {
      v13 = *(a1 + 592);
      v14 = 8 * v12;
      do
      {
        v15 = *v13++;
        llvm::NamedMDNode::addOperand();
        v14 -= 8;
      }

      while (v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4B245C(uint64_t a1, llvm::Type **a2, llvm::Type *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = *a2;
  if (*a2 == a3)
  {
    return v8;
  }

  if (a5)
  {
    if (v9 == *(a1 + 280) || v9 == *(a1 + 288))
    {
      v15 = *(a1 + 272);
      v13 = llvm::UndefValue::get();
      v16 = 0;
      if (v9 == *(a1 + 280))
      {
        v17 = 8;
      }

      else
      {
        v17 = 16;
      }

      do
      {
        v18 = *(a1 + 344);
        v48 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (a1 + 8));
        v50 = *(a1 + 104);
        v47 = 257;
        v19 = *(a1 + 192);
        v20 = llvm::ConstantInt::get();
        v21 = sub_23C5057E8(a1 + 8, v8, v20, v46);
        v22 = (*(*v18 + 88))(v18, &v48, v21, v17, a4, 32);
        if (v49)
        {
          llvm::MetadataTracking::untrack();
        }

        v47 = 257;
        v23 = *(a1 + 192);
        v24 = llvm::ConstantInt::get();
        v13 = sub_23C505AA8(a1 + 8, v13, v22, v24, v46);
        ++v16;
      }

      while (v16 != 4);
    }

    else if (v9 == *(a1 + 264))
    {
      v41 = *(a1 + 272);
      v47 = 257;
      v13 = sub_23C4B284C(a1 + 8, a2, v41, v46);
    }

    else
    {
      v13 = a2;
    }

    if (*(a1 + 280) == a3)
    {
      v32 = 8;
    }

    else
    {
      if (*(a1 + 288) != a3)
      {
        v25 = *(a1 + 264);
        if (v25 != a3)
        {
          return v13;
        }

        v47 = 257;
        return sub_23C49FEB4(a1 + 8, v13, v25, v46);
      }

      v32 = 16;
    }

    v8 = llvm::UndefValue::get();
    for (i = 0; i != 4; ++i)
    {
      v34 = *(a1 + 344);
      v43 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (a1 + 8));
      v45 = *(a1 + 104);
      v47 = 257;
      v35 = *(a1 + 192);
      v36 = llvm::ConstantInt::get();
      v37 = sub_23C5057E8(a1 + 8, v13, v36, v46);
      v38 = (*(*v34 + 80))(v34, &v43, v37, v32, a4, 1);
      if (v44)
      {
        llvm::MetadataTracking::untrack();
      }

      v47 = 257;
      v39 = *(a1 + 192);
      v40 = llvm::ConstantInt::get();
      v8 = sub_23C505AA8(a1 + 8, v8, v38, v40, v46);
    }

    return v8;
  }

  if ((*(v9 + 2) & 0xFE) == 0x12)
  {
    v14 = *(**(v9 + 2) + 8);
  }

  else
  {
    v14 = *(v9 + 2);
  }

  if (v14 == 13)
  {
    ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a2);
    v27 = llvm::Type::getScalarSizeInBits(a3);
    if (ScalarSizeInBits <= v27)
    {
      v47 = 257;
      v29 = a1 + 8;
      if (a4)
      {
        v30 = 40;
      }

      else
      {
        v30 = 39;
      }

      v28 = v8;
    }

    else
    {
      v28 = sub_23C5066D8(a1, v8, v27, a4);
      v47 = 257;
      v29 = a1 + 8;
      v30 = 38;
    }

    return sub_23C49ACF8(v29, v30, v28, a3, v46);
  }

  sub_23C4AA240(a1, "Warning (Undefined behavior): integer drawbuffer format, but shader is writing floating point", a3, a4, a5, a6, a7, a8, v43);

  return llvm::UndefValue::get();
}

uint64_t sub_23C4B284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 46, a2, a3, a4);
}

uint64_t sub_23C4B28B0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (a4 == 2)
  {
    v11 = *(a1 + 192);
    v22 = 257;
    v12 = sub_23C49ACF8(a1 + 8, 49, a2, v11, v21);
    v13 = *(a1 + 344);
    v15 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
    v17 = *(a1 + 104);
    v4 = (*(*v13 + 104))(v13, &v15, 6, *(a1 + 184), v12, 0, 0);
    if (v16)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  else if (a4 == 1)
  {
    v7 = *(a1 + 288);
    v22 = 257;
    v8 = sub_23C49ACF8(a1 + 8, 38, a2, v7, v21);
    v9 = *(a1 + 344);
    v18 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v19, (a1 + 8));
    v20 = *(a1 + 104);
    v10 = (*(*v9 + 96))(v9, &v18, 6, *(a1 + 184), v8, 0, 0);
    if (v19)
    {
      llvm::MetadataTracking::untrack();
    }

    v22 = 257;
    return sub_23C49ACF8(a1 + 8, 49, v10, a3, v21);
  }

  return v4;
}

uint64_t sub_23C4B2A60(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a1[40];
  llvm::Module::getOrInsertNamedMetadata();
  v3 = a1[42];
  llvm::MDString::get();
  v4 = a1[24];
  llvm::ConstantInt::get();
  llvm::ValueAsMetadata::get();
  v5 = a1[42];
  llvm::MDTuple::getImpl();
  result = llvm::NamedMDNode::addOperand();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4B2B20(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  result = (*(*a1 + 88))(a1, &v8);
  if (result)
  {
    v3 = a1[40];
    llvm::Module::getOrInsertNamedMetadata();
    v4 = a1[42];
    v9 = llvm::MDString::get();
    v5 = a1[24];
    llvm::ConstantInt::get();
    v10 = llvm::ValueAsMetadata::get();
    v6 = a1[42];
    llvm::MDTuple::getImpl();
    result = llvm::NamedMDNode::addOperand();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4B2C10(uint64_t a1, uint64_t a2)
{
  *(a2 + 70) = 1;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v6 = *(a2 + 32);
  sub_23C4B2DFC(a2, 4, (0x404040503020004uLL >> (8 * (*a1 & 7u))) & 7);
  sub_23C4B2DFC(a2, 6, (0x404040503020004uLL >> (*a1 & 0x38)) & 7);
  sub_23C4B2DFC(a2, 8, (0x404040503020004uLL >> ((*a1 >> 3) & 0x38)) & 7);
  v7 = (*a1 >> 9) & 3;
  if (v7 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7 == 1;
  }

  sub_23C4B2DFC(a2, 10, v8);
  v9 = (*a1 >> 11) & 3;
  if (v9 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9 == 1;
  }

  sub_23C4B2DFC(a2, 12, v10);
  v11 = (*a1 >> 13) & 3;
  if (v11 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11 == 1;
  }

  sub_23C4B2DFC(a2, 14, v12);
  v13 = ((*a1 >> 16) & 0xFLL) - 1;
  if (v13 > 7)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = dword_23C532B04[v13];
  }

  v15 = v6 - v5;
  sub_23C4B2DFC(a2, 18, v14);
  _H0 = *(a1 + 3);
  __asm { FCVT            S0, H0 }

  sub_23C4B2E64(a2, 22, _S0);
  _H0 = *(a1 + 5);
  __asm { FCVT            S0, H0 }

  sub_23C4B2E64(a2, 24, _S0);
  v24 = *(a1 + 7) & 3;
  if (v24 == 2)
  {
    v25 = 2;
  }

  else
  {
    v25 = v24 == 1;
  }

  sub_23C4B2DFC(a2, 26, v25);
  sub_23C4B2DFC(a2, 16, (*a1 & 0x8000) == 0);
  sub_23C4B2DFC(a2, 20, ((*a1 >> 20) & 0xF) + 1);

  return sub_23C4B03D4(a2, v15 + v4);
}

uint64_t *sub_23C4B2DFC(uint64_t *result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 || *(result + 80) == 1)
  {
    v5 = sub_23C4B2F14(result, a3);

    return sub_23C4B0980(v4, a2, v5);
  }

  return result;
}

uint64_t *sub_23C4B2E64(uint64_t *result, uint64_t a2, float a3)
{
  v5 = result;
  if (a3 != 0.0 || *(result + 80) == 1)
  {
    sub_23C4B08D8(result, 4uLL);
    v6 = v5[6];
    if ((v6 - v5[7]) <= 3)
    {
      sub_23C4B05B4(v5, 4uLL);
      v6 = v5[6];
    }

    *(v6 - 4) = a3;
    v7 = v6 - 4;
    v5[6] = v7;
    v8 = *(v5 + 8) - v7 + *(v5 + 10);

    return sub_23C4B0980(v5, a2, v8);
  }

  return result;
}

uint64_t sub_23C4B2F14(uint64_t a1, char a2)
{
  sub_23C4B08D8(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    sub_23C4B05B4(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

void sub_23C4B2F7C(void *a1)
{
  *a1 = &unk_284F128D8;
  sub_23C4A25DC(a1 + 6, 0);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C4B2FE4(void *a1)
{
  *a1 = &unk_284F128D8;
  sub_23C4A25DC(a1 + 6, 0);
  return a1;
}

void sub_23C4B39C8(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v7 = (*(*a4 + 24))(a4);
  v8 = snprintf(__str, 0x80uLL, "%s shader %u (driver disassembler)", v7, a4[174]);
  sub_23C4AA240(v8, "------ Start USC %s -------\n", v9, v10, v11, v12, v13, v14, __str);
  memset(&__p, 0, sizeof(__p));
  if (a3 >= 2)
  {
    v22 = 0;
    v23 = 0;
    v24 = 1;
    v25 = 1;
    do
    {
      if (v25)
      {
        sub_23C49F8D0(&v44, "\t[Inst ");
        std::to_string(&v47, v23);
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v47;
        }

        else
        {
          v26 = v47.__r_.__value_.__r.__words[0];
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v47.__r_.__value_.__l.__size_;
        }

        v28 = std::string::append(&v44, v26, size);
        v29 = v28->__r_.__value_.__r.__words[2];
        *&v48.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        sub_23C49F8D0(v42, ", offset ");
        if ((v43 & 0x80u) == 0)
        {
          v30 = v42;
        }

        else
        {
          v30 = v42[0];
        }

        if ((v43 & 0x80u) == 0)
        {
          v31 = v43;
        }

        else
        {
          v31 = v42[1];
        }

        v32 = std::string::append(&v48, v30, v31);
        v33 = v32->__r_.__value_.__r.__words[0];
        v49[0] = v32->__r_.__value_.__l.__size_;
        *(v49 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
        v34 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v33;
        __p.__r_.__value_.__l.__size_ = v49[0];
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v49 + 7);
        *(&__p.__r_.__value_.__s + 23) = v34;
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v47.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        sprintf(&v47, " 0x%04x", v24 - 1);
        sub_23C49F8D0(&v44, "]");
        v35 = std::string::insert(&v44, 0, &v47);
        v36 = v35->__r_.__value_.__r.__words[2];
        *&v48.__r_.__value_.__l.__data_ = *&v35->__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v48;
        }

        else
        {
          v37 = v48.__r_.__value_.__r.__words[0];
        }

        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = v48.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v37, v38);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v48.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        ++v23;
      }

      sprintf(&v48, " 0x%04x", *(a2 + 2 * v22));
      v15 = std::string::append(&__p, &v48);
      if ((*(a2 + 2 * v22) & 0x100) != 0)
      {
        v25 = 0;
      }

      else
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
        }

        sub_23C4AA240(v15, "%s", v16, v17, v18, v19, v20, v21, p_p);
        v15 = MEMORY[0x23EED4E90](&__p, &unk_23C53F34D);
        v25 = 1;
      }

      v22 = v24;
    }

    while (a3 >> 1 > v24++);
  }

  sub_23C4AA240(v15, "\n------- End USC %s --------\n", v16, v17, v18, v19, v20, v21, __str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4B3D20(uint64_t result)
{
  if (*(result + 2064) == 1)
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();

    return llvm::Function::addFnAttr();
  }

  return result;
}

uint64_t sub_23C4B3E24()
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t sub_23C4B3EB0()
{
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t sub_23C4B3F1C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  sub_23C497620(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 1568);
  if (v8)
  {
    v9 = strlen(*(a1 + 1568));
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_23C49B938(a1, v8, v9, *(a1 + 144), *(a1 + 184), *(a1 + 184));
  v11 = *(a4 + 4 * a3);
  v12 = *(a1 + 184);
  v22[0] = llvm::ConstantInt::get();
  v13 = *(a4 + 72);
  v14 = *(a1 + 184);
  v22[1] = llvm::ConstantInt::get();
  v18 = 257;
  sub_23C497A7C(a1 + 8, *(v10 + 24), v10, v22, 2, v17);
  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

llvm::Value *sub_23C4B4064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  sub_23C497620(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 192);
  v7 = *(a1 + 1536);
  llvm::FixedVectorType::get();
  v8 = *(a1 + 1720);
  if (v8)
  {
    v9 = strlen(*(a1 + 1720));
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 144);
  v11 = llvm::PointerType::get();
  v12 = sub_23C49B938(a1, v8, v9, v10, v11, *(a1 + 192));
  v21[0] = a3;
  v13 = *(a1 + 192);
  v21[1] = llvm::ConstantInt::get();
  v17 = 257;
  result = sub_23C497A7C(a1 + 8, *(v12 + 24), v12, v21, 2, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C4B41BC(uint64_t a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  sub_23C497620(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 1392);
  if (v4)
  {
    v5 = strlen(*(a1 + 1392));
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23C49B938(a1, v4, v5, *(a1 + 192), *(a1 + 184), *(a1 + 184));
  v7 = *(a1 + 184);
  v16[0] = llvm::ConstantInt::get();
  v8 = *(a1 + 184);
  v16[1] = llvm::ConstantInt::get();
  v12 = 257;
  result = sub_23C497A7C(a1 + 8, *(v6 + 24), v6, v16, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C4B42F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  sub_23C497620(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = *(a1 + 1408);
  if (v7)
  {
    v8 = strlen(*(a1 + 1408));
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23C49B858(a1, v7, v8, *(a1 + 144), *(a1 + 184), *(a1 + 192), *(a1 + 184));
  v10 = *(a1 + 184);
  v19[0] = llvm::ConstantInt::get();
  v19[1] = a4;
  v11 = *(a1 + 184);
  v19[2] = llvm::ConstantInt::get();
  v15 = 257;
  result = sub_23C497A7C(a1 + 8, *(v9 + 24), v9, v19, 3, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C4B4434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = *a2;
  v30 = *(a2 + 16);
  if (v30)
  {
    llvm::MetadataTracking::track();
  }

  v31 = *(a2 + 24);
  sub_23C497620(a1, &v29);
  if (v30)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *(a1 + 1200);
  if (v9)
  {
    v10 = strlen(*(a1 + 1200));
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23C49B938(a1, v9, v10, *(a1 + 160), *(a1 + 280), *(a1 + 192));
  v12 = *(a1 + 280);
  v13 = llvm::UndefValue::get();
  v14 = *(a1 + 176);
  v28 = 257;
  v15 = sub_23C49B1E4(a1 + 8, a3, v14, 0, v27);
  v33 = 257;
  v16 = *(a1 + 192);
  v17 = llvm::ConstantInt::get();
  v32[0] = sub_23C505AA8(a1 + 8, v13, v15, v17, v32);
  v18 = *(a1 + 192);
  v32[1] = llvm::ConstantInt::get();
  v28 = 257;
  v19 = sub_23C497A7C(a1 + 8, *(v11 + 24), v11, v32, 2, v27);
  v26 = sub_23C505300(a1, v19, a5);
  v20 = 2048;
  if (*(a1 + 160) == a5)
  {
    v20 = 2040;
  }

  v21 = *(a1 + v20);
  if (v21)
  {
    v22 = strlen(*(a1 + v20));
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_23C49EB10(a1, v21, v22, a5, a5);
  v28 = 257;
  result = sub_23C497A7C(a1 + 8, *(v23 + 24), v23, &v26, 1, v27);
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4B4630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30 = a3;
  v27 = *a2;
  v28 = *(a2 + 16);
  if (v28)
  {
    llvm::MetadataTracking::track();
  }

  v29 = *(a2 + 24);
  sub_23C497620(a1, &v27);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *a3;
  v10 = 2032;
  if (v9 == *(a1 + 160))
  {
    v10 = 2024;
  }

  v11 = *(a1 + v10);
  if (v11)
  {
    v12 = strlen(*(a1 + v10));
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_23C49EB10(a1, v11, v12, v9, v9);
  v26 = 257;
  v14 = sub_23C497A7C(a1 + 8, *(v13 + 24), v13, &v30, 1, v25);
  if (*(a5 + 8) >= 7u)
  {
    v16 = *(a1 + 2016);
    if (v16)
    {
      v17 = strlen(*(a1 + 2016));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_23C49B938(a1, v16, v17, *(a1 + 184), *(a1 + 160), *(a1 + 184));
    v31[0] = sub_23C504E2C(a1, v14, 1);
    v19 = *(a1 + 184);
    v31[1] = llvm::ConstantInt::get();
    v26 = 257;
    v20 = sub_23C497A7C(a1 + 8, *(v18 + 24), v18, v31, 2, v25);
    v21 = *(a1 + 176);
    v24[16] = 257;
    v22 = sub_23C49B1E4(a1 + 8, v20, v21, 0, v24);
    v26 = 257;
    result = sub_23C49B1E4(a1 + 8, v22, a5, 0, v25);
  }

  else if (*(a1 + 160) == a5)
  {
    v26 = 257;
    result = sub_23C4B284C(a1 + 8, v14, a5, v25);
  }

  else
  {
    v26 = 257;
    result = sub_23C49FEB4(a1 + 8, v14, a5, v25);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4B4870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  sub_23C497620(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 2016);
  if (v6)
  {
    v7 = strlen(*(a1 + 2016));
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_23C49B938(a1, v6, v7, *(a1 + 184), *(a1 + 160), *(a1 + 184));
  v20[0] = a3;
  v9 = *(a1 + 184);
  v20[1] = llvm::ConstantInt::get();
  v16 = 257;
  v10 = sub_23C497A7C(a1 + 8, *(v8 + 24), v8, v20, 2, v15);
  v11 = *(a1 + 152);
  v16 = 257;
  v12 = sub_23C49ACF8(a1 + 8, 49, v10, v11, v15);
  result = sub_23C504E2C(a1, v12, 1);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4B49BC(uint64_t *a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v41 = *a2;
  v42 = *(a2 + 16);
  if (v42)
  {
    llvm::MetadataTracking::track();
  }

  v43 = *(a2 + 24);
  sub_23C497620(a1, &v41);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = sub_23C504E2C(a1, a3, 1);
  v44 = v10;
  if (a4 == 16)
  {
    v11 = a5 == 0;
    v12 = 2008;
    v13 = 2000;
  }

  else
  {
    if (a4 != 8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v11 = a5 == 0;
    v12 = 1992;
    v13 = 1984;
  }

  if (!v11)
  {
    v12 = v13;
  }

  v14 = *(a1 + v12);
  if (v14)
  {
    v15 = strlen(*(a1 + v12));
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  v16 = sub_23C49EB10(a1, v14, v15, a1[23], a1[20]);
  v17 = v16;
  v18 = 23;
  if (a4 == 8)
  {
    v18 = 22;
  }

  v19 = a1[v18];
  v20 = *v10;
  if ((*(*v10 + 8) & 0xFE) == 0x12 && (v21 = *(v20 + 32), v21 != 1))
  {
    v26 = a1[23];
    v27 = *(v20 + 32);
    llvm::FixedVectorType::get();
    v28 = llvm::UndefValue::get();
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v40 = 257;
        v30 = a1[24];
        v31 = llvm::ConstantInt::get();
        v36 = sub_23C5057E8((a1 + 1), v10, v31, v39);
        v38 = 257;
        v32 = sub_23C497A7C((a1 + 1), *(v17 + 24), v17, &v36, 1, v37);
        v40 = 257;
        v33 = a1[24];
        v34 = llvm::ConstantInt::get();
        v28 = sub_23C505AA8((a1 + 1), v28, v32, v34, v39);
      }
    }

    v25 = llvm::FixedVectorType::get();
    v40 = 257;
    v23 = (a1 + 1);
    v24 = v39;
    v22 = v28;
  }

  else
  {
    v40 = 257;
    v22 = sub_23C497A7C((a1 + 1), *(v16 + 24), v16, &v44, 1, v39);
    v38 = 257;
    v23 = (a1 + 1);
    v24 = v37;
    v25 = v19;
  }

  return sub_23C49B1E4(v23, v22, v25, 0, v24);
}

uint64_t sub_23C4B4C24(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  sub_23C497620(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = sub_23C504E2C(a1, a3, 1);
  if (a4 > 1)
  {
    v12 = *(a1 + 1992);
    if (v12)
    {
      v13 = strlen(*(a1 + 1992));
    }

    else
    {
      v13 = 0;
    }

    v14 = sub_23C49EB10(a1, v12, v13, *(a1 + 184), *(a1 + 160));
    v22 = 257;
    v15 = sub_23C497A7C(a1 + 8, *(v14 + 24), v14, &v26, 1, v21);
    v16 = *(a1 + 2056);
    if (v16)
    {
      v17 = strlen(*(a1 + 2056));
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_23C49B938(a1, v16, v17, *(a1 + 192), *(a1 + 184), *(a1 + 184));
    v19 = *(a1 + 184);
    v27[0] = llvm::ConstantInt::get();
    v27[1] = v15;
    v22 = 257;
    result = sub_23C497A7C(a1 + 8, *(v18 + 24), v18, v27, 2, v21);
  }

  else
  {
    v8 = *(a1 + 160);
    llvm::ConstantFP::get();
    v22 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v9 = *(a1 + 192);
    llvm::ConstantInt::get();
    v10 = *(a1 + 192);
    llvm::ConstantInt::get();
    v22 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *sub_23C4B4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  sub_23C497620(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  if ((a5 - 2) <= 6)
  {
    v8 = dword_23C532DB0[a5 - 2];
  }

  v17 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v9 = *(a1 + 184);
  llvm::ConstantInt::get();
  v10 = *(a1 + 184);
  llvm::ConstantInt::get();
  v17 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v11 = *(a1 + 1376);
  if (v11)
  {
    v12 = strlen(*(a1 + 1376));
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_23C49EB10(a1, v11, v12, *(a1 + 144), *(a1 + 184));
  v17 = 257;
  return sub_23C497A7C(a1 + 8, *(v13 + 24), v13, &Select, 1, v16);
}

void sub_23C4B4FC0(void *a1)
{
  sub_23C4B4FF8(a1);

  JUMPOUT(0x23EED50C0);
}

void *sub_23C4B4FF8(void *a1)
{
  *a1 = &unk_284F12E98;
  v2 = a1[99];
  a1[99] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MEMORY[0x23EED3B70](a1 + 44);
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter((a1 + 17));
  llvm::IRBuilderFolder::~IRBuilderFolder((a1 + 16));
  v3 = a1[1];
  if (v3 != a1 + 3)
  {
    free(v3);
  }

  return a1;
}

uint64_t sub_23C4B50B4(uint64_t a1)
{
  v130 = *MEMORY[0x277D85DE8];
  if (!sub_23C4B1B90(a1 + *(*a1 - 24), *(*(a1 + *(*a1 - 24) + 400) + 128)))
  {
    v8 = 0;
    goto LABEL_124;
  }

  v2 = sub_23C503B2C(a1);
  v3 = sub_23C511A84(a1);
  v4 = *(a1 + *(*a1 - 24) + 560);
  v5 = (v4 - *v4);
  v6 = *v5;
  if (v6 >= 9)
  {
    if (v5[4])
    {
      v7 = (v4 + v5[4] + *(v4 + v5[4]));
    }

    else
    {
      v7 = 0;
    }

LABEL_9:
    v9 = v5[2];
    if (v5[2])
    {
      v9 = (v9 + v4 + *(v9 + v4));
    }

    goto LABEL_11;
  }

  v7 = 0;
  v9 = 0;
  if (v6 >= 5)
  {
    goto LABEL_9;
  }

LABEL_11:
  v10 = (v9 - *v9);
  v11 = *v10;
  v105 = v2;
  v106 = v3;
  if (v11 < 0x25)
  {
    goto LABEL_21;
  }

  if (v10[18] && *(v9 + v10[18]))
  {
    goto LABEL_17;
  }

  if (v11 < 0x27)
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  if (!v10[19] || !*(v9 + v10[19]))
  {
    if (v11 >= 0x29)
    {
      v13 = v10[20];
      if (v13)
      {
        v12 = *(v9 + v13) != 0;
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

LABEL_17:
  v12 = 1;
LABEL_22:
  v104 = v12;
  (*(*a1 + 368))(a1, v7);
  if (*(a1 + 3880))
  {
    sub_23C4B1830(*(a1 + 3880));
  }

  v14 = *v7;
  v15 = *(v7 - v14 + 8);
  if (*(v7 - v14 + 8))
  {
    v14 = *(v7 + v15);
    v16 = v7 + v15 + v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = v14;
  }

  v17 = *(v7 + v15 + v14);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 4 * v17;
    while (1)
    {
      v22 = *&v16[v18 + 4];
      v23 = &v16[v18 + v22];
      v24 = *(v23 + 1);
      v25 = v22 - v24;
      v26 = &v16[v18 + v22 - v24];
      v27 = *(v26 + 2);
      if (v27 < 5)
      {
        v32 = v20;
      }

      else
      {
        v28 = -v24;
        v29 = *(v26 + 4);
        if (!v29 || v16[v18 + 4 + v22 + v29] != 1 || (v27 < 7 || (v30 = *&v16[v18 + 10 + v25]) == 0 ? (v31 = 0) : (v31 = *&v16[v18 + 4 + v22 + v30]), *(4 * v31) != -1))
        {
          v32 = v20;
LABEL_39:
          if (*&v16[v22 + 8 + v18 + v28] && v16[v18 + 4 + v22 + *&v16[v22 + 8 + v18 + v28]] == 5)
          {
            v19 += 2;
          }

          goto LABEL_42;
        }

        v32 = (v20 + 1);
        *(4 * v31) = v20;
        v33 = *(v23 + 1);
        if (*&v16[v18 + 4 + v22 - v33] >= 5u)
        {
          v28 = -v33;
          goto LABEL_39;
        }
      }

LABEL_42:
      v18 += 4;
      v20 = v32;
      if (v21 == v18)
      {
        goto LABEL_47;
      }
    }
  }

  v19 = 0;
LABEL_47:
  v34 = *a1;
  v35 = *(*(a1 + *(*a1 - 24) + 344) + 1686);
  v121 = 0;
  v122 = 0u;
  v123 = v125;
  v124 = 0x800000000;
  v125[64] = 0x1FFFFFFFFLL;
  v126 = v35;
  v128 = 0;
  memset(v127, 0, 74);
  v129 = 1;
  if ((*(*(a1 + 3816) + 60) & 4) != 0)
  {
    v127[73] = 1;
  }

  v102 = v19;
  v36 = *(a1 + 3880);
  if (v36)
  {
    v37 = 0;
    for (i = 0; i < v36; ++i)
    {
      v39 = *(a1 + 3872) + v37;
      v40 = *(4 * *(v39 + 16));
      if (v40 != -1)
      {
        *(v39 + 16) = v40;
        sub_23C52B5AC(&v121, v39);
        v36 = *(a1 + 3880);
      }

      v37 += 64;
    }

    v34 = *a1;
  }

  sub_23C52B97C(&v121, *(a1 + *(v34 - 24) + 344));
  v41 = *a1;
  sub_23C52BC50(&v121, *(*(a1 + *(*a1 - 24) + 344) + 1634), 0);
  sub_23C52BCD4(&v121, a1 + *(v41 - 24) + 704);
  v42 = *a1;
  v43 = *(*a1 - 24);
  v103 = v124;
  if (v124)
  {
    sub_23C52BEB8(v123, &v123[8 * v124], 126 - 2 * __clz(v124), 1);
    __p[0] = 0;
    LOBYTE(__p[1]) = 0;
    v108 = xmmword_23C532550;
    v109 = 0u;
    v110 = 0u;
    v111 = 0;
    v112 = 1;
    v113 = 256;
    v114 = 0;
    if (v124)
    {
      v101 = v43;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = SHIBYTE(v123[v44 + 5]);
        if (v47 >= 0)
        {
          v48 = &v123[v44 + 3];
        }

        else
        {
          v48 = v123[v44 + 3];
        }

        if (v47 >= 0)
        {
          v49 = HIBYTE(v123[v44 + 5]);
        }

        else
        {
          v49 = v123[v44 + 4];
        }

        v50 = sub_23C4B023C(__p, v48, v49);
        v51 = v46;
        v52 = v46 >> 2;
        if (((v46 >> 2) + 1) >> 62)
        {
          sub_23C496CE8();
        }

        if (v46 >> 2 != -1)
        {
          if (!(((v46 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_23C496CE8();
        }

        *(4 * v52) = v50;
        v46 = 4 * v52 + 4;
        memcpy(0, 0, v51);
        ++v45;
        v44 += 8;
      }

      while (v45 < v124);
      if (v124)
      {
        BYTE6(v111) = 1;
        sub_23C4B0AD0(__p, v46, 4uLL);
        sub_23C4B0AD0(__p, v46, 4uLL);
        if (4 * v52 == -4)
        {
          v53 = &unk_23C534F22;
        }

        else
        {
          v53 = 0;
        }

        if (4 * v52 != -4)
        {
          v54 = v46 >> 2;
          v55 = v53 - 4;
          do
          {
            v56 = v54 - 1;
            v57 = *&v55[4 * v54];
            sub_23C4B08D8(__p, 4uLL);
            sub_23C4B0A6C(__p, v109 - v110 + DWORD2(v109) - v57 + 4);
            v54 = v56;
          }

          while (v56);
        }

        BYTE6(v111) = 0;
        v58 = sub_23C4B0A6C(__p, (4 * v52 + 4) >> 2);
        BYTE6(v111) = 1;
        v59 = WORD4(v109);
        v60 = v109 - v110;
        if (v58)
        {
          v61 = v58;
          sub_23C4B08D8(__p, 4uLL);
          sub_23C4B0A04(__p, 4, v109 - v110 + DWORD2(v109) - v61 + 4);
        }

        v62 = sub_23C4B03D4(__p, v60 + v59);
        sub_23C4B1AD8(__p, v62);
      }

      v43 = v101;
    }

    v65 = a1 + v43;
    v66 = sub_23C4B1A58(v65 + 704, v110, (v109 - v110 + DWORD2(v109)));
    sub_23C4B1460(__p);
    __p[0] = 0;
    LOBYTE(__p[1]) = 0;
    v108 = xmmword_23C532550;
    v109 = 0u;
    v110 = 0u;
    v111 = 0;
    v112 = 1;
    v113 = 256;
    v114 = 0;
    if (v124)
    {
      v67 = *(v123 + 1);
      sub_23C4B1830(1uLL);
    }

    v68 = sub_23C4B1A58(v65 + 704, 0, 0);
    sub_23C4B1460(__p);
    v42 = *a1;
    v63 = v66;
    v64 = v68;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v69 = sub_23C4B17AC(a1 + *(v42 - 24) + 704, &unk_27E1F7578, 0);
  if (v122 == v121)
  {
    v70 = &unk_27E1F74FC;
  }

  else
  {
    v70 = v121;
  }

  v71 = sub_23C4B5EC0(a1 + *(*a1 - 24) + 704, v70, (v122 - v121) >> 2);
  v72 = a1 + *(*a1 - 24);
  *(v72 + 774) = 1;
  v73 = *(v72 + 744);
  v74 = *(v72 + 736) - *(v72 + 752);
  if (v103)
  {
    sub_23C4B02B4((v72 + 704), 4, v63);
    sub_23C4B02B4((v72 + 704), 6, v64);
    sub_23C4B2DFC((v72 + 704), 22, *(a1 + 37));
  }

  sub_23C4B02B4((v72 + 704), 8, v69);
  sub_23C4B02B4((v72 + 704), 10, v71);
  sub_23C4B2DFC((v72 + 704), 12, v127[72]);
  sub_23C4B2DFC((v72 + 704), 14, *(a1 + 3853));
  sub_23C4B2DFC((v72 + 704), 16, *(a1 + 3852));
  sub_23C4B2DFC((v72 + 704), 20, v104 & *(a1 + 2384));
  sub_23C4B2DFC((v72 + 704), 18, v104);
  v75 = sub_23C4B03D4(v72 + 704, v74 + v73);
  v76 = a1 + *(*a1 - 24);
  *(v76 + 774) = 1;
  v77 = *(v76 + 744);
  v78 = *(v76 + 736) - *(v76 + 752);
  sub_23C4B5F88((v76 + 704), v105);
  sub_23C4B5FF0((v76 + 704), v106);
  if (v75)
  {
    sub_23C4B08D8(v76 + 704, 4uLL);
    sub_23C4B0A04((v76 + 704), 14, *(v76 + 736) - *(v76 + 752) + *(v76 + 744) - v75 + 4);
  }

  v79 = a1 + *(*a1 - 24);
  v80 = sub_23C4B03D4(v76 + 704, v78 + v77);
  sub_23C4B1AD8(v79 + 704, v80);
  v81 = (a1 + *(*a1 - 24));
  v82 = (v81[23].__r_.__value_.__l.__size_ + *(v81[23].__r_.__value_.__l.__size_ - *v81[23].__r_.__value_.__l.__size_ + 4));
  v83 = (v82 + *v82 + *(v82 + *v82 - *(v82 + *v82) + 8));
  if (*(v83 + *v83) > 0x20)
  {
    v8 = 0;
  }

  else
  {
    v84 = *(*(v81[16].__r_.__value_.__r.__words[2] + 32) + 44);
    if (v128 + v102 <= v84)
    {
      v8 = 1;
    }

    else
    {
      std::to_string(&v116, v128 + v102);
      v85 = std::string::insert(&v116, 0, "Number of varying components(");
      v86 = v85->__r_.__value_.__r.__words[2];
      *&v117.__r_.__value_.__l.__data_ = *&v85->__r_.__value_.__l.__data_;
      v117.__r_.__value_.__r.__words[2] = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      v87 = std::string::append(&v117, ") ");
      v88 = v87->__r_.__value_.__r.__words[2];
      *&v118.__r_.__value_.__l.__data_ = *&v87->__r_.__value_.__l.__data_;
      v118.__r_.__value_.__r.__words[2] = v88;
      v87->__r_.__value_.__l.__size_ = 0;
      v87->__r_.__value_.__r.__words[2] = 0;
      v87->__r_.__value_.__r.__words[0] = 0;
      v89 = std::string::append(&v118, "exceeds the limit (");
      v90 = v89->__r_.__value_.__r.__words[2];
      *&v119.__r_.__value_.__l.__data_ = *&v89->__r_.__value_.__l.__data_;
      v119.__r_.__value_.__r.__words[2] = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v115, v84);
      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v115;
      }

      else
      {
        v91 = v115.__r_.__value_.__r.__words[0];
      }

      if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v115.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v115.__r_.__value_.__l.__size_;
      }

      v93 = std::string::append(&v119, v91, size);
      v94 = v93->__r_.__value_.__r.__words[2];
      *&v120.__r_.__value_.__l.__data_ = *&v93->__r_.__value_.__l.__data_;
      v120.__r_.__value_.__r.__words[2] = v94;
      v93->__r_.__value_.__l.__size_ = 0;
      v93->__r_.__value_.__r.__words[2] = 0;
      v93->__r_.__value_.__r.__words[0] = 0;
      v95 = std::string::append(&v120, ")");
      v96 = v95->__r_.__value_.__r.__words[2];
      *__p = *&v95->__r_.__value_.__l.__data_;
      *&v108 = v96;
      v95->__r_.__value_.__l.__size_ = 0;
      v95->__r_.__value_.__r.__words[2] = 0;
      v95->__r_.__value_.__r.__words[0] = 0;
      if ((SBYTE7(v108) & 0x80u) == 0)
      {
        v97 = __p;
      }

      else
      {
        v97 = __p[0];
      }

      if ((SBYTE7(v108) & 0x80u) == 0)
      {
        v98 = BYTE7(v108);
      }

      else
      {
        v98 = __p[1];
      }

      std::string::append(v81 + 17, v97, v98);
      if (SBYTE7(v108) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v120.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v119.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v117.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      v8 = 0;
    }
  }

  __p[0] = v127;
  sub_23C4B6058(__p);
  sub_23C4B60E4(&v123);
  if (v121)
  {
    *&v122 = v121;
    operator delete(v121);
  }

LABEL_124:
  v99 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_23C4B5EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  sub_23C4B0AD0(a1, 4 * a3, 4uLL);
  sub_23C4B0AD0(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      v10 = *(v7 + 4 * v8);
      sub_23C4B08D8(a1, 4uLL);
      sub_23C4B0A6C(a1, *(a1 + 32) - *(a1 + 48) + *(a1 + 40) - v10 + 4);
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return sub_23C4B0A6C(a1, a3);
}

uint64_t *sub_23C4B5F88(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return sub_23C4B0A04(v3, 4, v4);
  }

  return result;
}

uint64_t *sub_23C4B5FF0(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    sub_23C4B08D8(result, 4uLL);
    v4 = *(v3 + 8) - *(v3 + 12) + *(v3 + 10) - v2 + 4;

    return sub_23C4B0A04(v3, 8, v4);
  }

  return result;
}

void sub_23C4B6058(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 5;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_23C4B60E4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 64 * v3 - 40;
    v5 = -64 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 64;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void sub_23C4B6174(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 3816);
  sub_23C49F8D0(v41, "AGCFragmentContextStateAGP");
  sub_23C49F8D0(&v45, "AGCFragmentContextState");
  sub_23C49F8D0(&v44, "fragmentState");
  sub_23C49F8D0(&v87, "AGCFragmentState");
  sub_23C49F8D0(&v66, "GL and Metal state:");
  sub_23C49F8D0(v64, "alphaToCoverage");
  sub_23C4B7004(&v67, v64, *v4 & 1);
  sub_23C49F8D0(v62, "alphaToOne");
  sub_23C4B7004(&v68, v62, (*v4 >> 1) & 1);
  sub_23C49F8D0(v60, "sampleCoverage");
  sub_23C4B7004(&v69, v60, (*v4 >> 2) & 1);
  sub_23C49F8D0(&v70, "GL specific state:");
  sub_23C49F8D0(v58, "depthStencilWriteDisabled");
  sub_23C4B7004(&v71, v58, (*v4 >> 4) & 1);
  sub_23C49F8D0(v56, "logicOp");
  sub_23C4B7004(&v72, v56, (*v4 >> 5) & 1);
  sub_23C49F8D0(v54, "logicOpState");
  sub_23C4B705C(&v73, v54, off_278BBF0E8[(*v4 >> 6) & 0x1F]);
  sub_23C49F8D0(&v53, "alphaTest");
  sub_23C4B7004(&v74, &v53.__r_.__value_.__l.__data_, (*v4 >> 11) & 1);
  sub_23C49F8D0(v51, "alphaTestFunc");
  sub_23C4B705C(&v75, v51, off_278BBF170[*v4 >> 12]);
  sub_23C49F8D0(&v50, "smoothPoints");
  sub_23C4B7004(&v76, &v50.__r_.__value_.__l.__data_, HIWORD(*v4) & 1);
  sub_23C49F8D0(&v49, "pointSpriteEnabled");
  sub_23C4B7004(&v77, &v49.__r_.__value_.__l.__data_, (*v4 >> 17) & 1);
  sub_23C49F8D0(&v48, "outputPointSize");
  sub_23C4B7004(&v78, &v48.__r_.__value_.__l.__data_, (*v4 >> 18) & 1);
  sub_23C49F8D0(&v47, "shaderDebugEnable");
  sub_23C4B7004(&v79, &v47.__r_.__value_.__l.__data_, (*v4 >> 19) & 1);
  sub_23C49F8D0(&__p, "unused");
  sub_23C4B7004(&v80, &__p.__r_.__value_.__l.__data_, *v4 >> 20);
  sub_23C4B70B4(&v43, &v87, &v66, 15);
  v5 = 45;
  do
  {
    if (v66.__r_.__value_.__s.__data_[v5 * 8 - 1] < 0)
    {
      operator delete(v64[v5]);
    }

    v5 -= 3;
  }

  while (v5 * 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  sub_23C4B733C(&v87, &v44.__r_.__value_.__l.__data_, &v43);
  sub_23C49F8D0(v54, "colorMaskState");
  sub_23C49F8D0(v64, "AGCColorMaskState");
  sub_23C49F8D0(v62, "redEnableBits");
  sub_23C4B7424(&v66, v62, *(v4 + 8));
  sub_23C49F8D0(v60, "greenEnableBits");
  sub_23C4B7424(&v67, v60, *(v4 + 9));
  sub_23C49F8D0(v58, "blueEnableBits");
  sub_23C4B7424(&v68, v58, *(v4 + 10));
  sub_23C49F8D0(v56, "alphaEnableBits");
  sub_23C4B7424(&v69, v56, *(v4 + 11));
  sub_23C4B70B4(&v53, v64, &v66, 4);
  for (i = 0; i != -12; i -= 3)
  {
    if (SHIBYTE(v69.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v69.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  sub_23C4B733C(&v88, v54, &v53);
  sub_23C4B70B4(&v66, &v45, &v87, 2);
  for (j = 0; j != -6; j -= 3)
  {
    if (SHIBYTE(v88.__r_.__value_.__r.__words[j + 2]) < 0)
    {
      operator delete(*(&v87 + j * 8 + 24));
    }
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  sub_23C49F8D0(&v87, "mutableBuffers");
  sub_23C4B7424(&v67, &v87.__r_.__value_.__l.__data_, *(v4 + 2));
  sub_23C49F8D0(v64, "genCompilerStatistics");
  sub_23C4B7004(&v68, v64, v4[15] & 1);
  sub_23C49F8D0(v62, "genTelemetryStatistics");
  sub_23C4B7004(&v69, v62, (v4[15] >> 1) & 1);
  sub_23C49F8D0(v60, "fragmentOnly");
  sub_23C4B7004(&v70, v60, (v4[15] >> 2) & 1);
  sub_23C49F8D0(v58, "openglMode");
  sub_23C4B7004(&v71, v58, (v4[15] >> 3) & 1);
  sub_23C49F8D0(v56, "customBorderColor");
  sub_23C4B7004(&v72, v56, (v4[15] >> 4) & 1);
  sub_23C49F8D0(v54, "disableTextureRWBoundsCheck");
  sub_23C4B7004(&v73, v54, (v4[15] >> 5) & 1);
  sub_23C49F8D0(&v53, "debugInstrumentationEnabled");
  sub_23C4B7004(&v74, &v53.__r_.__value_.__l.__data_, (v4[15] >> 6) & 1);
  sub_23C49F8D0(v51, "unused");
  sub_23C4B7004(&v75, v51, v4[15] >> 7);
  sub_23C4B7610(&v50, v4 + 6);
  v8 = std::string::insert(&v50, 0, "blendState[0]: ");
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v76.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v76.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v49, v4 + 7);
  v10 = std::string::insert(&v49, 0, "blendState[1]: ");
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v77.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v77.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v48, v4 + 8);
  v12 = std::string::insert(&v48, 0, "blendState[2]: ");
  v13 = v12->__r_.__value_.__r.__words[2];
  *&v78.__r_.__value_.__l.__data_ = *&v12->__r_.__value_.__l.__data_;
  v78.__r_.__value_.__r.__words[2] = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v47, v4 + 9);
  v14 = std::string::insert(&v47, 0, "blendState[3]: ");
  v15 = v14->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&__p, v4 + 10);
  v16 = std::string::insert(&__p, 0, "blendState[4]: ");
  v17 = v16->__r_.__value_.__r.__words[2];
  *&v80.__r_.__value_.__l.__data_ = *&v16->__r_.__value_.__l.__data_;
  v80.__r_.__value_.__r.__words[2] = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v45, v4 + 11);
  v18 = std::string::insert(&v45, 0, "blendState[5]: ");
  v19 = v18->__r_.__value_.__r.__words[2];
  v81 = *&v18->__r_.__value_.__l.__data_;
  v82 = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v44, v4 + 12);
  v20 = std::string::insert(&v44, 0, "blendState[6]: ");
  v21 = v20->__r_.__value_.__r.__words[2];
  v83 = *&v20->__r_.__value_.__l.__data_;
  v84 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B7610(&v43, v4 + 13);
  v22 = std::string::insert(&v43, 0, "blendState[7]: ");
  v23 = v22->__r_.__value_.__r.__words[2];
  v85 = *&v22->__r_.__value_.__l.__data_;
  v86 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  sub_23C4B70B4(&v30, v41, &v66, 18);
  v24 = 54;
  do
  {
    if (v66.__r_.__value_.__s.__data_[v24 * 8 - 1] < 0)
    {
      operator delete(v64[v24]);
    }

    v24 -= 3;
  }

  while (v24 * 8);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  v25 = *(a1 + 2960);
  sub_23C49F8D0(v64, "AGCDrawBufferState");
  sub_23C49F8D0(v62, "enabledBits");
  sub_23C4B7424(&v87, v62, *(v25 + 32));
  sub_23C49F8D0(v60, "sampleCount");
  sub_23C4B7004(&v88, v60, (*(v25 + 32) >> 8) & 0xF);
  sub_23C49F8D0(v58, "colorSampleCount");
  sub_23C4B7004(&v89, v58, *(v25 + 32) >> 12);
  sub_23C49F8D0(v56, "outputPartitionSize");
  sub_23C4B7004(&v90, v56, *(v25 + 34));
  sub_23C49F8D0(v54, "LIBSpilling");
  sub_23C4B7004(&v91, v54, HIBYTE(*(v25 + 32)) & 1);
  sub_23C49F8D0(&v53, "unused");
  sub_23C4B7004(&v92, &v53.__r_.__value_.__l.__data_, *(v25 + 32) >> 25);
  sub_23C49F8D0(v51, "encoded : ");
  sub_23C49F8D0(&v50, "encoded[0]");
  sub_23C4B787C(&v49, v25);
  sub_23C4B733C(&v66, &v50.__r_.__value_.__l.__data_, &v49);
  sub_23C49F8D0(&v48, "encoded[1]");
  sub_23C4B787C(&v47, (v25 + 4));
  sub_23C4B733C(&v67, &v48.__r_.__value_.__l.__data_, &v47);
  sub_23C49F8D0(&__p, "encoded[2]");
  sub_23C4B787C(&v45, (v25 + 8));
  sub_23C4B733C(&v68, &__p.__r_.__value_.__l.__data_, &v45);
  sub_23C49F8D0(&v44, "encoded[3]");
  sub_23C4B787C(&v43, (v25 + 12));
  sub_23C4B733C(&v69, &v44.__r_.__value_.__l.__data_, &v43);
  sub_23C49F8D0(v41, "encoded[4]");
  sub_23C4B787C(&v40, (v25 + 16));
  sub_23C4B733C(&v70, v41, &v40);
  sub_23C49F8D0(v38, "encoded[5]");
  sub_23C4B787C(&v37, (v25 + 20));
  sub_23C4B733C(&v71, v38, &v37);
  sub_23C49F8D0(v35, "encoded[6]");
  sub_23C4B787C(&v34, (v25 + 24));
  sub_23C4B733C(&v72, v35, &v34);
  sub_23C49F8D0(v32, "encoded[7]");
  sub_23C4B787C(&v31, (v25 + 28));
  sub_23C4B733C(&v73, v32, &v31);
  sub_23C4B70B4(&v93, v51, &v66, 8);
  sub_23C4B70B4(&v29, v64, &v87, 7);
  for (k = 0; k != -21; k -= 3)
  {
    if (SHIBYTE(v93.__r_.__value_.__r.__words[k + 2]) < 0)
    {
      operator delete(*(&v93.__r_.__value_.__l.__data_ + k * 8));
    }
  }

  for (m = 0; m != -24; m -= 3)
  {
    if (SHIBYTE(v73.__r_.__value_.__r.__words[m + 2]) < 0)
    {
      operator delete(*(&v73.__r_.__value_.__l.__data_ + m * 8));
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v52 < 0)
  {
    operator delete(v51[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  if (v63 < 0)
  {
    operator delete(v62[0]);
  }

  if (v65 < 0)
  {
    operator delete(v64[0]);
  }

  sub_23C4B7AC8(a2, &v30.__r_.__value_.__l.__data_, &v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void sub_23C4B7004(std::string *a1, const void **a2, unsigned int __val)
{
  std::to_string(&v5, __val);
  sub_23C4B733C(a1, a2, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B705C(std::string *a1, const void **a2, char *__s)
{
  sub_23C49F8D0(__p, __s);
  sub_23C4B733C(a1, a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23C4B70B4(std::string *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_23C49F988(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v27 = *(a2 + 16);
  }

  sub_23C4B7B84(&v28.__r_.__value_.__l.__data_, __dst, 0);
  sub_23C49F8D0(v21, "{");
  sub_23C4B7B84(&__p, v21, 0);
  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v25 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v8 = v24;
  }

  v9 = std::string::append(&v28, p_p, v8);
  v10 = v9->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = *&v9->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }

  if (a4)
  {
    for (i = 24 * a4; i; i -= 24)
    {
      if (*(a3 + 23) < 0)
      {
        sub_23C49F988(&v28, *a3, *(a3 + 8));
      }

      else
      {
        v28 = *a3;
      }

      v12 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_23C49F988(&v20, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
      }

      else
      {
        v20 = v28;
      }

      sub_23C4B7B84(&__p, &v20, 1);
      if ((v25 & 0x80u) == 0)
      {
        v13 = &__p;
      }

      else
      {
        v13 = __p;
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = v25;
      }

      else
      {
        v14 = v24;
      }

      std::string::append(&v29, v13, v14);
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
        if (v12 < 0)
        {
LABEL_39:
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }

      else if (v12 < 0)
      {
        goto LABEL_39;
      }

      a3 += 24;
    }
  }

  sub_23C49F8D0(v18, "}");
  sub_23C4B7B84(&v28.__r_.__value_.__l.__data_, v18, 0);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v29;
  }

  else
  {
    v15 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v29.__r_.__value_.__l.__size_;
  }

  v17 = std::string::insert(&v28, 0, v15, size);
  *a1 = *v17;
  v17->__r_.__value_.__r.__words[0] = 0;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B733C(std::string *a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = &v13;
  sub_23C4ADD34(&v13, v6 + 3);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v13.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  *(&v7->__r_.__value_.__l.__data_ + v6) = 2112032;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = std::string::append(&v13, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_23C4B7424(std::string *a1, const void **a2, uint64_t a3)
{
  sub_23C4B0E40(v11);
  v6 = sub_23C4AA520(&v12, "0x", 2);
  *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x23EED4FC0](v6, a3);
  std::stringbuf::str();
  sub_23C4B733C(a1, a2, &__p);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  v11[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v7;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x23EED5050](&v16);
}

void sub_23C4B7610(std::string *a1, unsigned int *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v21, "AGCBlendState");
  sub_23C49F8D0(v19, "enabled");
  if (*a2)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  sub_23C4B705C(&v23, v19, v4);
  sub_23C49F8D0(v17, "src");
  sub_23C4B705C(&v24, v17, off_278BBF1B8[(*a2 >> 1) & 0x1F]);
  sub_23C49F8D0(v15, "dst");
  sub_23C4B705C(&v25, v15, off_278BBF1B8[(*a2 >> 6) & 0x1F]);
  sub_23C49F8D0(v13, "srcA");
  sub_23C4B705C(&v26, v13, off_278BBF1B8[*a2 >> 11]);
  sub_23C49F8D0(v11, "dstA");
  sub_23C4B705C(&v27, v11, off_278BBF1B8[*(a2 + 1) & 0x1F]);
  sub_23C49F8D0(v9, "equation");
  sub_23C4B705C(&v28, v9, off_278BBF258[(*a2 >> 21) & 7]);
  sub_23C49F8D0(__p, "equationA");
  sub_23C4B705C(&v29, __p, off_278BBF258[*(a2 + 3) & 7]);
  sub_23C4B70B4(a1, v21, &v23, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v29.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v29.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_23C4B787C(std::string *a1, _DWORD *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  sub_23C49F8D0(v20, "AGCDrawBuffer");
  sub_23C49F8D0(v18, "pbeSourceFormat");
  sub_23C4B705C(&v22, v18, off_278BBF290[*a2 & 0x1F]);
  sub_23C49F8D0(v16, "numWrittenComponents");
  sub_23C4B7004(&v23, v16, *a2 >> 5);
  sub_23C49F8D0(v14, "gammaCorrection");
  sub_23C4B7004(&v24, v14, (*a2 >> 8) & 1);
  sub_23C49F8D0(v12, "colorSpaceConversion");
  sub_23C4B705C(&v25, v12, off_278BBF348[(*a2 >> 9) & 7]);
  sub_23C49F8D0(v10, "preEmitSwizzle");
  sub_23C4B705C(&v26, v10, off_278BBF370[(*a2 >> 12) & 7]);
  sub_23C49F8D0(v8, "outputPartitionOffset");
  sub_23C4B7004(&v27, v8, (*a2 >> 15));
  sub_23C49F8D0(__p, "unused");
  sub_23C4B7004(&v28, __p, *a2 >> 23);
  sub_23C4B70B4(a1, v20, &v22, 7);
  for (i = 0; i != -21; i -= 3)
  {
    if (SHIBYTE(v28.__r_.__value_.__r.__words[i + 2]) < 0)
    {
      operator delete(*(&v28.__r_.__value_.__l.__data_ + i * 8));
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23C4B7AC8(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = sub_23C4ADD34(a1, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_23C4B7B84(void **a1, std::string::value_type *a2, int a3)
{
  sub_23C49F8D0(&v14, &unk_23C53F34D);
  if (a3)
  {
    std::string::append(&v14, "  ");
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_23C49F988(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v14;
  }

  v6 = a2[23];
  if (v6 < 0)
  {
    v7 = a2;
    a2 = *a2;
    v6 = *(v7 + 1);
  }

  for (; v6; --v6)
  {
    v8 = *a2;
    std::string::push_back(&__p, *a2);
    if (v8 == 10)
    {
      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14.__r_.__value_.__r.__words[0];
      }

      if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v14.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v9, size);
    }

    ++a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  sub_23C4ADD34(a1, v11 + 1);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v11)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(a1, p_p, v11);
  }

  *(a1 + v11) = 10;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_23C4B7CF8(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F13140;
  v1[551] = &unk_284F13368;
  v1[304] = &unk_284F132F0;
  sub_23C4B60E4((v1 + 484));
  sub_23C4B7DD0(v1, off_284F133D0);
  sub_23C4B130C((v1 + 551));

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4B7DD0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 24)) = a2[7];
  a1[304] = a2[8];
  v5 = a1[475];
  if (v5 != -8192 && v5 != -4096 && v5 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 473));
  }

  v7 = a1[472];
  if (v7 != -8192 && v7 != -4096 && v7)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 470));
  }

  v8 = a1[469];
  if (v8 != -8192 && v8 != -4096 && v8)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 467));
  }

  v9 = a1[466];
  if (v9 != -8192 && v9 != -4096 && v9)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 464));
  }

  v10 = a1[463];
  if (v10 != -8192 && v10 != -4096 && v10)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 461));
  }

  v11 = a1[460];
  if (v11 != -8192 && v11 != -4096 && v11)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 458));
  }

  v12 = a1[456];
  if (v12 != -8192 && v12 != -4096 && v12)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 454));
  }

  v13 = a1[453];
  if (v13 != -8192 && v13 != -4096 && v13)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 451));
  }

  v14 = a1[450];
  if (v14 != -8192 && v14 != -4096 && v14)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 448));
  }

  v15 = a1[447];
  if (v15 != -8192 && v15 != -4096 && v15)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 445));
  }

  v16 = a1[444];
  if (v16 != -8192 && v16 != -4096 && v16)
  {
    llvm::ValueHandleBase::RemoveFromUseList((a1 + 442));
  }

  for (i = 0; i != -32; i -= 4)
  {
    v18 = a1[i + 440];
    if (v18 != -8192 && v18 != -4096 && v18 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[i + 438]);
    }
  }

  for (j = 0; j != -32; j -= 4)
  {
    v21 = a1[j + 408];
    if (v21 != -8192 && v21 != -4096 && v21 != 0)
    {
      llvm::ValueHandleBase::RemoveFromUseList(&a1[j + 406]);
    }
  }

  return sub_23C4FF150(a1, a2 + 2);
}

uint64_t sub_23C4B81B0(void *a1)
{
  v1 = (a1 + *(*a1 - 32));
  *v1 = &unk_284F13140;
  v1[551] = &unk_284F13368;
  v1[304] = &unk_284F132F0;
  sub_23C4B60E4((v1 + 484));
  sub_23C4B7DD0(v1, off_284F133D0);

  return sub_23C4B130C((v1 + 551));
}

void sub_23C4B8270(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F13140;
  v2 = (a1 + 247);
  a1[247] = &unk_284F13368;
  *a1 = &unk_284F132F0;
  sub_23C4B60E4((a1 + 180));
  sub_23C4B7DD0(v1, off_284F133D0);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t sub_23C4B832C(void *a1)
{
  v1 = a1 - 304;
  *(a1 - 304) = &unk_284F13140;
  v2 = (a1 + 247);
  a1[247] = &unk_284F13368;
  *a1 = &unk_284F132F0;
  sub_23C4B60E4((a1 + 180));
  sub_23C4B7DD0(v1, off_284F133D0);

  return sub_23C4B130C(v2);
}

uint64_t sub_23C4B83E4(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + *(*a1 - 24) + 320);
  v3 = v2 + 24;
  v4 = *(v2 + 32);
  if (v4 == v2 + 24)
  {
    v6 = 0;
    v30 = 0;
    v29 = 0;
    goto LABEL_62;
  }

  v43 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = v4 - 56;
    if (!v4)
    {
      v7 = 0;
    }

    v8 = v7 + 72;
    v9 = *(v7 + 80);
    if (v9 == v7 + 72)
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v10 = v9 - 24;
        if (!v9)
        {
          v10 = 0;
        }

        v11 = *(v10 + 48);
        if (v11 != v10 + 40)
        {
          break;
        }

        v9 = *(v9 + 8);
      }

      while (v9 != v8);
    }

    while (v9 != v8)
    {
      if (v11)
      {
        v12 = v11 - 24;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v12 + 16);
      if (v11 && v13 == 61)
      {
        v14 = **(v11 - 56);
        v15 = *(v14 + 8);
        if ((v15 & 0xFE) == 0x12)
        {
          v15 = *(**(v14 + 16) + 8);
        }

        v16 = v15 >> 8;
        if (v16 == 1)
        {
          v5 = 1;
        }

        else if (v16 == 3)
        {
          v6 = 1;
        }
      }

      else if (v11)
      {
        if (v13 == 84)
        {
          v17 = *(v12 - 32);
          if (v17)
          {
            if (!*(v17 + 16) && *(v17 + 24) == *(v12 + 72))
            {
              Name = llvm::Value::getName(v17);
              v45 = v18;
              v19 = sub_23C4B88A0(v12);
              v20 = v12 - 32 * (*(v12 + 20) & 0x7FFFFFF);
              v21 = ((v19 - v20) & 0x1FFFFFFFE0) == 0 || *(**v20 + 8) != 15;
              if (v45 >= 0xA)
              {
                v23 = *Name == 0x6D6F74612E726961 && *(Name + 8) == 25449;
                if (v23 && llvm::StringRef::find() == -1 && !v21)
                {
                  v24 = **(v12 - 32 * (*(v12 + 20) & 0x7FFFFFF));
                  v25 = *(v24 + 8);
                  if ((v25 & 0xFE) == 0x12)
                  {
                    v25 = *(**(v24 + 16) + 8);
                  }

                  v26 = v25 >> 8;
                  if (v26 == 1)
                  {
                    LOBYTE(v43) = 1;
                    v5 = 1;
                  }

                  else if (v26 == 3)
                  {
                    LOBYTE(v43) = 1;
                    v6 = 1;
                  }
                }
              }

              sub_23C4B8970();
              Key = llvm::StringMapImpl::FindKey();
              if (Key != -1 && Key != dword_27E1F7458)
              {
                BYTE4(v43) |= *(*(qword_27E1F7450 + 8 * Key) + 8) == 3;
              }
            }
          }
        }
      }

      v11 = *(v11 + 8);
      v22 = v9 - 24;
      if (!v9)
      {
        v22 = 0;
      }

      while (v11 == v22 + 40)
      {
        v9 = *(v9 + 8);
        if (v9 == v8)
        {
          break;
        }

        v22 = v9 - 24;
        if (!v9)
        {
          v22 = 0;
        }

        v11 = *(v22 + 48);
      }
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v3);
  if (v5)
  {
    v1 = a1;
    v28 = (a1 + *(*a1 - 24));
    v29 = v43;
    v30 = BYTE4(v43);
    if ((*(v28[14].__r_.__value_.__l.__size_ + 1664) & 1) == 0 && (*(a1 + 37) & 1) == 0)
    {
      v31 = "buffer writes not supported in fragment shaders";
LABEL_89:
      std::string::append(v28 + 17, v31);
      return 0;
    }

    goto LABEL_63;
  }

  v1 = a1;
  v29 = v43;
  v30 = BYTE4(v43);
  if ((v6 & 1) == 0)
  {
LABEL_62:
    if ((v30 & 1) == 0)
    {
      goto LABEL_82;
    }
  }

LABEL_63:
  if (v6)
  {
    v28 = (v1 + *(*v1 - 24));
    if ((*(v28[14].__r_.__value_.__l.__size_ + 1666) & 1) == 0)
    {
      v31 = "threadgroup memory not supported in fragment shaders";
      goto LABEL_89;
    }
  }

  if (v30)
  {
    v28 = (v1 + *(*v1 - 24));
    if ((*(v28[14].__r_.__value_.__l.__size_ + 1665) & 1) == 0)
    {
      v31 = "Texture writes not supported in fragment shaders";
      goto LABEL_89;
    }
  }

  if ((v29 & 1) != 0 && *(v1 + 2952) <= 0)
  {
    *(v1 + 2952) = 1;
  }

  *(v1 + 4400) = 2;
  Operand = llvm::NamedMDNode::getOperand(*(v1 + 48));
  v33 = *(Operand + 8);
  if (Operand - 8 * v33 + 24 != Operand)
  {
    v34 = Operand;
    v35 = 24 - 8 * v33;
    while (1)
    {
      v36 = *(v34 + v35);
      if (!*v36)
      {
        String = llvm::MDString::getString(v36);
        if (v38 == 20)
        {
          v39 = *String == 0x72665F796C726165 && *(String + 8) == 0x745F746E656D6761;
          if (v39 && *(String + 16) == 1937011557)
          {
            break;
          }
        }
      }

      v35 += 8;
      if (!v35)
      {
        goto LABEL_82;
      }
    }

    *(v1 + 4400) = 1;
  }

LABEL_82:
  if (*(v1 + 4400) == 2)
  {
    if ((*(v1 + 3843) & 1) == 0)
    {
      *(v1 + 3843) = 1;
      *(v1 + 3848) = 1;
    }

    *(v1 + 3844) = 0;
  }

  return 1;
}

uint64_t sub_23C4B88A0(llvm::CallBase *this)
{
  v2 = *(this + 16);
  if (v2 == 84)
  {
    NumSubclassExtraOperandsDynamic = 0;
  }

  else if (v2 == 39)
  {
    NumSubclassExtraOperandsDynamic = llvm::CallBase::getNumSubclassExtraOperandsDynamic(this);
  }

  else
  {
    NumSubclassExtraOperandsDynamic = 2;
  }

  if ((*(this + 5) & 0x80000000) == 0)
  {
    Descriptor = 0;
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  Descriptor = llvm::User::getDescriptor(this);
  if ((*(this + 5) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v11 = llvm::User::getDescriptor(this);
  v5 = v11 + v12;
LABEL_10:
  if (((v5 - Descriptor) & 0xFFFFFFFF0) != 0)
  {
    v6 = *(llvm::User::getDescriptor(this) + 8);
    v7 = llvm::User::getDescriptor(this);
    v9 = (*(v7 + v8 - 4) - v6);
  }

  else
  {
    v9 = 0;
  }

  return this + -32 * v9 + -32 * NumSubclassExtraOperandsDynamic - 32;
}

void sub_23C4B8970()
{
  if ((atomic_load_explicit(&qword_27E1F7470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7470))
  {
    qword_27E1F7450 = 0;
    *&dword_27E1F7458 = 0;
    qword_27E1F7460 = 0x3000000000;
    __cxa_atexit(sub_23C4B89F4, &qword_27E1F7450, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7470);
  }
}

uint64_t sub_23C4B89F4(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 49));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4B8A70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  v13 = 0;
  sub_23C4B8B1C(a2, a3, &v13, &v12, &v11);
  v7 = sub_23C504F18(a1 + *(*a1 - 24), a2, &v14);
  v8 = v13;
  *(a4 + 8) = v12;
  *(a4 + 12) = v7;
  *a4 = 2;
  *(a4 + 4) = v8;
  v9 = v8 != 0;
  *(a4 + 16) = v9;
  result = sub_23C50B2E8(a1, 8, v9, 2);
  *(a4 + 24) = result;
  return result;
}

uint64_t sub_23C4B8B1C(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t *a5)
{
  sub_23C4B8D20();
  sub_23C4B8DA4();
  result = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 16));
  *a5 = result;
  a5[1] = v11;
  if ((*(a1 + 8) & 0xFE) == 0x12)
  {
    v12 = *(**(a1 + 16) + 8);
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = v12 > 6;
  if (v12 <= 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  *a4 = v14;
  *a3 = v13;
  v15 = *(a2 + 8);
  if (v15 < 4)
  {
    goto LABEL_38;
  }

  v16 = 2;
  for (i = 3; i < v15; ++i)
  {
    String = llvm::MDString::getString(*(a2 - 8 * v15 + 8 * i));
    v20 = v19;
    Key = llvm::StringMapImpl::FindKey();
    if (Key != -1 && Key != dword_27E1F7530)
    {
      result = sub_23C4B8E28(String, v20);
      *a3 = *(*result + 8);
      goto LABEL_30;
    }

    result = llvm::StringMapImpl::FindKey();
    if (result != -1 && result != dword_27E1F7558)
    {
      result = sub_23C4B8F30(String, v20);
      *a4 = *(*result + 8);
      goto LABEL_30;
    }

    if (v20 == 12)
    {
      if (*String == 0x5F6772612E726961 && *(String + 2) == 1701667182)
      {
LABEL_37:
        i = v16 + 2;
      }
    }

    else if (v20 == 17)
    {
      v24 = *String == 0x5F6772612E726961 && String[1] == 0x6D616E5F65707974;
      if (v24 && *(String + 16) == 101)
      {
        goto LABEL_37;
      }
    }

LABEL_30:
    v16 = i;
    v15 = *(a2 + 8);
  }

  v13 = *a3;
LABEL_38:
  if (v13 == 1 && *a4 != 3)
  {
    *a4 = 3;
  }

  return result;
}

void sub_23C4B8D20()
{
  if ((atomic_load_explicit(&qword_27E1F7548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7548))
  {
    qword_27E1F7528 = 0;
    *&dword_27E1F7530 = 0;
    qword_27E1F7538 = 0x1000000000;
    __cxa_atexit(sub_23C4B90B4, &qword_27E1F7528, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7548);
  }
}

void sub_23C4B8DA4()
{
  if ((atomic_load_explicit(&qword_27E1F7570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F7570))
  {
    qword_27E1F7550 = 0;
    *&dword_27E1F7558 = 0;
    qword_27E1F7560 = 0x1000000000;
    __cxa_atexit(sub_23C4B9038, &qword_27E1F7550, &dword_23C496000);

    __cxa_guard_release(&qword_27E1F7570);
  }
}

uint64_t *sub_23C4B8E28(const void *a1, size_t a2)
{
  i = (qword_27E1F7528 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7538) = qword_27E1F7538 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_27E1F7534;
    ;
  }

  return i;
}

uint64_t *sub_23C4B8F30(const void *a1, size_t a2)
{
  i = (qword_27E1F7550 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F7560) = qword_27E1F7560 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *i = v9;
  ++dword_27E1F755C;
    ;
  }

  return i;
}

uint64_t sub_23C4B9038(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4B90B4(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4B9130@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_23C504F18(a1 + *(*a1 - 24), a2, &v7);
  *a3 = 0x100000001;
  *(a3 + 8) = 3;
  *(a3 + 12) = v5;
  *(a3 + 16) = 0;
  result = sub_23C50B2E8(a1, 7, 0, 1);
  *(a3 + 24) = result;
  return result;
}

void sub_23C4B91A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v7 = sub_23C504F18(a1 + *(*a1 - 24), a2, v10);
  v8 = *(a1 + 3880);
  v10[0] = 1;
  v10[1] = v7;
  v11 = 0x300000001;
  v12 = v8;
  v15 = 0;
  v16 = v7 == 1;
  v17 = 0;
  if (v7 == 1)
  {
    v9 = 5;
  }

  else
  {
    v9 = 2;
  }

  v18 = v9;
  sub_23C4AE5DC(&__p, v19);
  sub_23C4B92A4(a1 + 3872, v10);
  *a5 = 0x100000001;
  *(a5 + 8) = 3;
  *(a5 + 12) = v7;
  *(a5 + 16) = v8;
  *(a5 + 24) = sub_23C50B2E8(a1, 1, v8, 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }
}

__n128 sub_23C4B92A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C4B932C(a1, a2);
  v4 = v3;
  v5 = *a1 + (*(a1 + 8) << 6);
  v6 = *v3;
  *(v5 + 16) = *(v3 + 16);
  *v5 = v6;
  if (*(v3 + 47) < 0)
  {
    sub_23C49F988((v5 + 24), *(v3 + 24), *(v3 + 32));
  }

  else
  {
    v7 = *(v3 + 24);
    *(v5 + 40) = *(v3 + 40);
    *(v5 + 24) = v7;
  }

  result = v4[3];
  *(v5 + 48) = result;
  ++*(a1 + 8);
  return result;
}

unint64_t sub_23C4B932C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    if (*a1 > a2 || *a1 + (v2 << 6) <= a2)
    {
      sub_23C4B9398();
    }

    v5 = a2 - *a1;
    sub_23C4B9398();
  }

  return a2;
}

void sub_23C4B9484(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = 0;
  v23[0] = 0;
  v23[1] = 0;
  sub_23C4B8B1C(a2, a3, &v24 + 1, &v24, v23);
  if ((*(a2 + 8) & 0xFE) == 0x12)
  {
    v7 = *(a2 + 32);
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_23C504F18(a1 + *(*a1 - 24), a2, v16);
  v9 = v8;
  v10 = *(a1 + 3880);
  v12 = v24;
  v11 = HIDWORD(v24);
  v16[0] = v7;
  v16[1] = v8;
  v16[2] = HIDWORD(v24);
  v16[3] = v24;
  v16[4] = v10;
  v19 = 0;
  v20 = v8 == 1;
  v21 = 0;
  if (HIDWORD(v24) == 2)
  {
    v14 = v8 == 1;
    v13 = 3;
    v15 = 6;
LABEL_12:
    if (v14)
    {
      v13 = v15;
    }

    goto LABEL_14;
  }

  if (HIDWORD(v24) == 1)
  {
    v14 = v8 == 1;
    v13 = 2;
    v15 = 5;
    goto LABEL_12;
  }

  if (HIDWORD(v24))
  {
    goto LABEL_15;
  }

  if (v8 == 1)
  {
    v13 = 4;
  }

  else
  {
    v13 = 1;
  }

LABEL_14:
  v22 = v13;
LABEL_15:
  sub_23C4AE5DC(&__p, v23);
  sub_23C4B92A4(a1 + 3872, v16);
  *a4 = v7;
  *(a4 + 4) = v11;
  *(a4 + 8) = v12;
  *(a4 + 12) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = sub_23C50B2E8(a1, 1, v10, v7);
  if (v18 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_23C4B9640(uint64_t a1)
{
  sub_23C510044(a1);
  if (*(a1 + 4400) == 1)
  {
    v2 = a1 + *(*a1 - 24);
    v3 = *(v2 + 344);
    if ((v3[1667] & 1) == 0)
    {
      v8 = *(v2 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (v2 + 8));
      v10 = *(v2 + 104);
      v4 = *(a1 + 3832);
      v5 = *(a1 + *(*a1 - 24) + 192);
      v6 = llvm::ConstantInt::get();
      (*(*v3 + 424))(v3, &v8, v6);
      if (v9)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    *(a1 + 3532) = 1;
  }

  return 1;
}

void sub_23C4B974C(uint64_t *a1)
{
  *a1 = &unk_284F13140;
  v2 = (a1 + 551);
  a1[551] = &unk_284F13368;
  a1[304] = &unk_284F132F0;
  sub_23C4B60E4((a1 + 484));
  sub_23C4B7DD0(a1, off_284F133D0);
  sub_23C4B130C(v2);

  JUMPOUT(0x23EED50C0);
}

uint64_t *sub_23C4B9810(uint64_t *a1)
{
  *a1 = &unk_284F13140;
  v2 = (a1 + 551);
  a1[551] = &unk_284F13368;
  a1[304] = &unk_284F132F0;
  sub_23C4B60E4((a1 + 484));
  sub_23C4B7DD0(a1, off_284F133D0);
  sub_23C4B130C(v2);
  return a1;
}

llvm::Value *sub_23C4B9914(uint64_t a1)
{
  v2 = *(a1 + 344);
  if (*(v2 + 888))
  {
    v3 = strlen(*(v2 + 888));
  }

  v4 = *(a1 + 144);
  v5 = sub_23C4A0414(a1);
  v8 = 257;
  return sub_23C497A7C(a1 + 8, **(*v5 + 16), v5, 0, 0, v7);
}

uint64_t sub_23C4B9A70(uint64_t a1, uint64_t *a2)
{
  v4 = **a2;
  v5 = *(v4 + 8);
  v6 = v5 & 0xFE;
  if (*(*(a1 + 344) + 1649))
  {
    goto LABEL_6;
  }

  v7 = *(v4 + 8);
  if (v6 == 18)
  {
    v7 = *(**(v4 + 16) + 8);
  }

  if ((v7 & 0xFFFFFF00) != 0x100)
  {
LABEL_6:
    if (v6 == 18)
    {
      v5 = *(**(v4 + 16) + 8);
    }

    v8 = v5 & 0xFFFFFF00;
    v9 = *(a1 + 704);
    if (v8 == 256)
    {
      if (v9)
      {
        *(v9 + 9) = 1;
      }
    }

    else if (v9)
    {
      *(v9 + 8) = 1;
    }
  }

  else
  {
    *(a1 + 720) = 0;
  }

  if ((atomic_load_explicit(&qword_27E1F69F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E1F69F0))
  {
    qword_27E1F69D0 = 0;
    *&dword_27E1F69D8 = 0;
    qword_27E1F69E0 = 0x1000000000;
    __cxa_atexit(sub_23C4BAAB8, &qword_27E1F69D0, &dword_23C496000);
    __cxa_guard_release(&qword_27E1F69F0);
  }

  if (!dword_27E1F69DC)
  {
    v10 = 0;
    v11 = 1;
    memset(&v149, 0, sizeof(v149));
    v12 = ".s";
    v132 = *".xchg.i32";
    qmemcpy(v131, ".load.i3.store.i.cmpxchg.weak.i3", sizeof(v131));
    do
    {
      v133 = v11;
      sub_23C49F8D0(&__str, off_278BBF500[v10]);
      v13 = 0;
      do
      {
        v134 = v13;
        v14 = &(&off_278BBF490)[2 * v13];
        v15 = 1;
        do
        {
          std::string::operator=(&v149, &__str);
          std::string::append(&v149, *v14);
          v16 = v15 & 1;
          if (v15)
          {
            v17 = ".u";
          }

          else
          {
            v17 = v12;
          }

          if (v15)
          {
            v18 = 12;
          }

          else
          {
            v18 = 8;
          }

          std::string::append(&v149, v17);
          std::string::append(&v149, ".i32");
          v19 = v12;
          v20 = *(v14 + v18);
          if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v149;
          }

          else
          {
            v21 = v149.__r_.__value_.__r.__words[0];
          }

          if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v149.__r_.__value_.__l.__size_;
          }

          v15 = 0;
          v23 = *sub_23C4BA9B4(v21, size);
          *(v23 + 8) = 0;
          *(v23 + 12) = v20;
          v12 = v19;
        }

        while (v16);
        v13 = v134 + 1;
      }

      while (v134 != 6);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v147, v24 + 9);
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v147;
      }

      else
      {
        v25 = v147.__r_.__value_.__r.__words[0];
      }

      if (v24)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v25, p_str, v24);
      }

      v27 = v25 + v24;
      *v27 = v132;
      *(v27 + 4) = 50;
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      v149 = v147;
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v149;
      }

      else
      {
        v28 = v149.__r_.__value_.__r.__words[0];
      }

      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v149.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v28, v29) + 8) = 0;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v147, v30 + 17);
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v147;
      }

      else
      {
        v31 = v147.__r_.__value_.__r.__words[0];
      }

      if (v30)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &__str;
        }

        else
        {
          v32 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v31, v32, v30);
      }

      v33 = v31 + v30;
      *v33 = v131[1];
      *(v33 + 8) = 50;
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      v149 = v147;
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v149;
      }

      else
      {
        v34 = v149.__r_.__value_.__r.__words[0];
      }

      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = v149.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v34, v35) + 8) = 0xD00000001;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v147, v36 + 10);
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v147;
      }

      else
      {
        v37 = v147.__r_.__value_.__r.__words[0];
      }

      if (v36)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &__str;
        }

        else
        {
          v38 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v37, v38, v36);
      }

      *(v37->__r_.__value_.__r.__words + v36) = *(&v131[0] + 1);
      strcpy(&v37->__r_.__value_.__s.__data_[v36 + 8], "32");
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      v149 = v147;
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v149;
      }

      else
      {
        v39 = v149.__r_.__value_.__r.__words[0];
      }

      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v149.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v39, v40) + 8) = 0xD00000003;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = __str.__r_.__value_.__l.__size_;
      }

      sub_23C4ADD34(&v147, v41 + 9);
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v147;
      }

      else
      {
        v42 = v147.__r_.__value_.__r.__words[0];
      }

      if (v41)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &__str;
        }

        else
        {
          v43 = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v42, v43, v41);
      }

      v44 = v42 + v41;
      *v44 = *&v131[0];
      *(v44 + 4) = 50;
      if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v149.__r_.__value_.__l.__data_);
      }

      v149 = v147;
      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v149;
      }

      else
      {
        v45 = v149.__r_.__value_.__r.__words[0];
      }

      if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = SHIBYTE(v149.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v149.__r_.__value_.__l.__size_;
      }

      *(*sub_23C4BA9B4(v45, v46) + 8) = 0xD00000002;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v11 = 0;
      v10 = 1;
    }

    while ((v133 & 1) != 0);
    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v149.__r_.__value_.__l.__data_);
    }
  }

  Key = llvm::StringMapImpl::FindKey();
  v48 = 0;
  v49 = Key;
  if (Key == -1)
  {
    v49 = dword_27E1F69D8;
  }

  v50 = *(qword_27E1F69D0 + 8 * v49);
  v51 = *(v50 + 8);
  if (v51 <= 1)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        v53 = *a2;
        v52 = a2[1];
        v150 = 257;
        sub_23C497C88((a1 + 8), **(*v52 + 16), v52, 0, &v149);
        v54 = a2[3];
        v55 = (v54 + 24);
        if (*(v54 + 32) >= 0x41u)
        {
          v55 = *v55;
        }

        v56 = *v55 + 2;
        v57 = a2[4];
        v58 = (v57 + 24);
        if (*(v57 + 32) >= 0x41u)
        {
          v58 = *v58;
        }

        v59 = a2[2];
        v60 = *v58;
        v61 = v60 - 2;
        v62 = v60 + 2;
        if (v61 >= 4)
        {
          v63 = 2;
        }

        else
        {
          v63 = v62;
        }

        v64 = a2[5];
        v65 = (v64 + 24);
        v66 = *(v64 + 32);
        v130 = a2;
        v134 = v52;
        v133 = v63;
        if (v66 >= 0x41)
        {
          v65 = *v65;
        }

        v67 = (*v65 - 1);
        v68 = *(a1 + 344);
        v141 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v142, (a1 + 8));
        v143 = *(a1 + 104);
        (*(*v68 + 64))(v68, &v141, v53, v64);
        if (v142)
        {
          llvm::MetadataTracking::untrack();
        }

        Module = llvm::BasicBlock::getModule(*(a1 + 56));
        DataLayout = llvm::Module::getDataLayout(Module);
        v149.__r_.__value_.__r.__words[0] = (sub_23C49BBFC(DataLayout, *v59) + 7) >> 3;
        LODWORD(v149.__r_.__value_.__r.__words[1]) = v71 == 1;
        llvm::TypeSize::operator unsigned long long();
        v72 = llvm::User::operator new(0x40);
        llvm::AtomicCmpXchgInst::AtomicCmpXchgInst();
        v150 = 257;
        (*(**(a1 + 88) + 16))(*(a1 + 88), v72, &v149, *(a1 + 56), *(a1 + 64));
        v73 = *(a1 + 16);
        if (v73)
        {
          v74 = *(a1 + 8);
          v75 = &v74[4 * v73];
          do
          {
            v76 = *v74;
            v77 = *(v74 + 1);
            llvm::Instruction::setMetadata();
            v74 += 4;
          }

          while (v74 != v75);
        }

        v78 = v130[6];
        if (v78 && *(v78 + 16) == 16)
        {
          v79 = *(v78 + 32);
          if (v79 > 0x40)
          {
            v80 = llvm::APInt::countLeadingZerosSlowCase((v78 + 24)) == v79;
          }

          else
          {
            v80 = *(v78 + 24) == 0;
          }

          v126 = v80;
          *(v72 + 18) = *(v72 + 18) & 0xFFFE | v126 ^ 1;
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 0;
        v150 = 257;
        v48 = sub_23C49B32C(a1 + 8, v72, &__str, 1, &v149);
        sub_23C4BA8C0((a1 + 8), v48, v134, 0);
      }

      return v48;
    }

    v95 = *a2;
    v96 = a2[2];
    v97 = a2[3];
    v98 = (v96 + 24);
    if (*(v96 + 32) >= 0x41u)
    {
      v98 = *v98;
    }

    v99 = a2[1];
    v100 = *v98 - 2;
    v101 = (v97 + 24);
    if (*(v97 + 32) >= 0x41u)
    {
      v101 = *v101;
    }

    v102 = (*v101 - 1);
    v103 = *(a1 + 344);
    v144 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v145, (a1 + 8));
    v146 = *(a1 + 104);
    v104 = (*(*v103 + 64))(v103, &v144, v95, v97);
    if (v145)
    {
      llvm::MetadataTracking::untrack();
    }

    v105 = sub_23C4BA720((a1 + 8), *(v50 + 12), v104, v99);
    v48 = v105;
    v106 = a2[4];
LABEL_174:
    sub_23C4BA850(v105, v106);
    return v48;
  }

  if (v51 != 2)
  {
    if (v51 != 3)
    {
      return v48;
    }

    v81 = *a2;
    v82 = a2[2];
    v83 = a2[3];
    v84 = (v82 + 24);
    if (*(v82 + 32) >= 0x41u)
    {
      v84 = *v84;
    }

    v85 = *v84 - 2;
    v86 = (v83 + 24);
    if (*(v83 + 32) >= 0x41u)
    {
      v86 = *v86;
    }

    v87 = a2[1];
    v88 = (*v86 - 1);
    v89 = *(*v81 + 8);
    if ((v89 & 0xFE) == 0x12)
    {
      v89 = *(**(*v81 + 16) + 8);
    }

    if ((v89 & 0xFFFFFF00) == 0x300)
    {
      v90 = sub_23C4BA8C0((a1 + 8), a2[1], *a2, 0);
      v91 = a2[4];
      if (v91 && *(v91 + 16) == 16)
      {
        v92 = v90;
        v93 = *(v91 + 32);
        if (v93 > 0x40)
        {
          v94 = llvm::APInt::countLeadingZerosSlowCase((v91 + 24)) == v93;
        }

        else
        {
          v94 = *(v91 + 24) == 0;
        }

        v128 = v94;
        v48 = 0;
        *(v92 + 18) = *(v92 + 18) & 0xFFFE | v128 ^ 1;
        return v48;
      }
    }

    else
    {
      v119 = *(a1 + 344);
      v135 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v136, (a1 + 8));
      v137 = *(a1 + 104);
      v120 = (*(*v119 + 64))(v119, &v135, v81, v83);
      if (v136)
      {
        llvm::MetadataTracking::untrack();
      }

      v121 = sub_23C4BA720((a1 + 8), 0, v120, v87);
      sub_23C4BA850(v121, a2[4]);
    }

    return 0;
  }

  v107 = a2[1];
  v108 = a2[2];
  v109 = *a2;
  v110 = (v107 + 24);
  if (*(v107 + 32) >= 0x41u)
  {
    v110 = *v110;
  }

  v111 = *v110 - 2;
  v112 = (v108 + 24);
  if (*(v108 + 32) >= 0x41u)
  {
    v112 = *v112;
  }

  v113 = (*v112 - 1);
  v114 = *v109;
  v115 = *(*v109 + 8);
  if ((v115 & 0xFE) == 0x12)
  {
    v115 = *(**(v114 + 16) + 8);
  }

  if ((v115 & 0xFFFFFF00) != 0x300)
  {
    v122 = *(a1 + 344);
    v138 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v139, (a1 + 8));
    v140 = *(a1 + 104);
    v123 = (*(*v122 + 64))(v122, &v138, v109, v108);
    if (v139)
    {
      llvm::MetadataTracking::untrack();
    }

    v124 = *(a1 + 192);
    v125 = llvm::ConstantInt::get();
    v105 = sub_23C4BA720((a1 + 8), 1, v123, v125);
    v48 = v105;
    v106 = a2[3];
    goto LABEL_174;
  }

  v150 = 257;
  v48 = sub_23C497C88((a1 + 8), **(v114 + 16), v109, 0, &v149);
  v116 = a2[3];
  if (v116 && *(v116 + 16) == 16)
  {
    v117 = *(v116 + 32);
    if (v117 > 0x40)
    {
      v118 = llvm::APInt::countLeadingZerosSlowCase((v116 + 24)) == v117;
    }

    else
    {
      v118 = *(v116 + 24) == 0;
    }

    v129 = v118;
    *(v48 + 18) = *(v48 + 18) & 0xFFFE | v129 ^ 1;
  }

  return v48;
}

uint64_t sub_23C4BA720(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Module = llvm::BasicBlock::getModule(a1[6]);
  DataLayout = llvm::Module::getDataLayout(Module);
  v16 = (sub_23C49BBFC(DataLayout, *a4) + 7) >> 3;
  v17 = v8 == 1;
  llvm::TypeSize::operator unsigned long long();
  v9 = llvm::User::operator new(0x40);
  llvm::AtomicRMWInst::AtomicRMWInst();
  v18 = 257;
  (*(*a1[10] + 16))(a1[10], v9, &v16, a1[6], a1[7]);
  v10 = *(a1 + 2);
  if (v10)
  {
    v11 = *a1;
    v12 = &v11[4 * v10];
    do
    {
      v13 = *v11;
      v14 = *(v11 + 1);
      llvm::Instruction::setMetadata();
      v11 += 4;
    }

    while (v11 != v12);
  }

  return v9;
}

uint64_t sub_23C4BA850(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == 16)
  {
    v3 = *(a2 + 32);
    if (v3 > 0x40)
    {
      v4 = llvm::APInt::countLeadingZerosSlowCase((a2 + 24)) == v3;
    }

    else
    {
      v4 = *(a2 + 24) == 0;
    }

    v5 = v4;
    *(a1 + 18) = *(a1 + 18) & 0xFFFE | v5 ^ 1;
  }

  return a1;
}

uint64_t sub_23C4BA8C0(unsigned int **a1, llvm::Type **a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0x100) == 0)
  {
    Module = llvm::BasicBlock::getModule(a1[6]);
    DataLayout = llvm::Module::getDataLayout(Module);
    llvm::DataLayout::getABITypeAlign(DataLayout, *a2);
  }

  v8 = llvm::User::operator new(0x40);
  llvm::StoreInst::StoreInst();
  v16 = 257;
  (*(*a1[10] + 16))(a1[10], v8, v15, a1[6], a1[7]);
  v9 = *(a1 + 2);
  if (v9)
  {
    v10 = *a1;
    v11 = &v10[4 * v9];
    do
    {
      v12 = *v10;
      v13 = *(v10 + 1);
      llvm::Instruction::setMetadata();
      v10 += 4;
    }

    while (v10 != v11);
  }

  return v8;
}

uint64_t *sub_23C4BA9B4(const void *a1, size_t a2)
{
  i = (qword_27E1F69D0 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_27E1F69E0) = qword_27E1F69E0 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x23EED4160](a2 + 17, 8);
  v9 = v8;
  v10 = v8 + 16;
  if (a2)
  {
    memcpy((v8 + 16), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  *i = v9;
  ++dword_27E1F69DC;
    ;
  }

  return i;
}

uint64_t sub_23C4BAAB8(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_23C4BAB34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 > 4)
  {
    v11 = bswap64(*(a3 + a4 - 5) | (*(a3 + a4 - 1) << 32));
    v12 = v11 >= 0x7634663136000000;
    v13 = v11 > 0x7634663136000000;
    v14 = !v12;
    v15 = v13 - v14;
    v5 = (a1 + 8);
    v16 = *(a1 + 280);
    v43 = 257;
    v7 = sub_23C49ACF8(a1 + 8, 49, a2, v16, v42);
    v10 = 272;
    if (v15)
    {
      v9 = 160;
    }

    else
    {
      v10 = 264;
      v9 = 152;
    }

    if (v15)
    {
      v8 = 32;
    }

    else
    {
      v8 = 16;
    }
  }

  else
  {
    v5 = (a1 + 8);
    v6 = *(a1 + 280);
    v43 = 257;
    v7 = sub_23C49ACF8(a1 + 8, 49, a2, v6, v42);
    v8 = 32;
    v9 = 160;
    v10 = 272;
  }

  v17 = *(a1 + v10);
  v18 = llvm::UndefValue::get();
  v19 = *(a1 + 344);
  v39 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v40, v5);
  v41 = *(a1 + 104);
  v43 = 257;
  v20 = *(a1 + 192);
  v21 = llvm::ConstantInt::get();
  v22 = sub_23C5057E8(a1 + 8, v7, v21, v42);
  v23 = (*(*v19 + 88))(v19, &v39, v22, 8, 0, v8);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  v43 = 257;
  v24 = *(a1 + 192);
  v25 = llvm::ConstantInt::get();
  v26 = sub_23C505AA8(a1 + 8, v18, v23, v25, v42);
  for (i = 0; i != 3; ++i)
  {
    v43 = 257;
    v28 = *(a1 + 192);
    v29 = llvm::ConstantInt::get();
    v30 = sub_23C5057E8(a1 + 8, v7, v29, v42);
    v31 = *(a1 + 344);
    v36 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v37, v5);
    v38 = *(a1 + 104);
    v32 = (*(*v31 + 144))(v31, &v36, v30, 0, *(a1 + v9));
    if (v37)
    {
      llvm::MetadataTracking::untrack();
    }

    v43 = 257;
    v33 = *(a1 + 192);
    v34 = llvm::ConstantInt::get();
    result = sub_23C505AA8(a1 + 8, v26, v32, v34, v42);
    v26 = result;
  }

  return result;
}

uint64_t sub_23C4BADFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 280);
  v5 = llvm::UndefValue::get();
  v31 = 257;
  v6 = *(a1 + 192);
  v7 = llvm::ConstantInt::get();
  v8 = sub_23C5057E8(a1 + 8, a2, v7, v30);
  v9 = *(a1 + 344);
  v27 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v28, (a1 + 8));
  v29 = *(a1 + 104);
  v10 = (*(*v9 + 80))(v9, &v27, v8, 8, 0, 1);
  v31 = 257;
  v11 = *(a1 + 192);
  v12 = llvm::ConstantInt::get();
  v13 = sub_23C505AA8(a1 + 8, v5, v10, v12, v30);
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

  for (i = 0; i != 3; ++i)
  {
    v31 = 257;
    v15 = *(a1 + 192);
    v16 = llvm::ConstantInt::get();
    v17 = sub_23C5057E8(a1 + 8, a2, v16, v30);
    v18 = *(a1 + 344);
    v24 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v25, (a1 + 8));
    v26 = *(a1 + 104);
    v19 = (*(*v18 + 136))(v18, &v24, v17, 0, *(a1 + 176));
    if (v25)
    {
      llvm::MetadataTracking::untrack();
    }

    v31 = 257;
    v20 = *(a1 + 192);
    v21 = llvm::ConstantInt::get();
    v13 = sub_23C505AA8(a1 + 8, v13, v19, v21, v30);
  }

  v22 = *(a1 + 192);
  v31 = 257;
  return sub_23C49ACF8(a1 + 8, 49, v13, v22, v30);
}

uint64_t sub_23C4BB01C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a3[1];
  if (v5 == 16)
  {
    v10 = *(a1 + 232);
    v21 = 257;
    v11 = sub_23C49ACF8(a1 + 8, 49, a2, v10, v20);
    v12 = *(a1 + 344);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v9 = (*(*v12 + 88))(v12, &v14, v11, 16, a3[3], 32);
    if (v15)
    {
LABEL_4:
      llvm::MetadataTracking::untrack();
    }
  }

  else
  {
    if (v5 != 8)
    {
      return 0;
    }

    v6 = *(a1 + 280);
    v21 = 257;
    v7 = sub_23C49ACF8(a1 + 8, 49, a2, v6, v20);
    v8 = *(a1 + 344);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v9 = (*(*v8 + 88))(v8, &v17, v7, 8, a3[3], 32);
    if (v18)
    {
      goto LABEL_4;
    }
  }

  if (*a3 == 16)
  {
    return sub_23C505300(a1, v9, *(a1 + 152));
  }

  return v9;
}

uint64_t sub_23C4BB1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 1);
  if (v6 == 16)
  {
    v11 = *(a1 + 344);
    v14 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v15, (a1 + 8));
    v16 = *(a1 + 104);
    v8 = (*(*v11 + 80))(v11, &v14, a2, 16, *(a3 + 3), 1);
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v6 == 8)
  {
    v7 = *(a1 + 344);
    v17 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v18, (a1 + 8));
    v19 = *(a1 + 104);
    v8 = (*(*v7 + 80))(v7, &v17, a2, 8, *(a3 + 3), 1);
    if (!v18)
    {
LABEL_5:
      v9 = *(a1 + 192);
      v13 = 257;
      return sub_23C49ACF8(a1 + 8, 49, v8, v9, v12);
    }

LABEL_4:
    llvm::MetadataTracking::untrack();
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_23C4BB320(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2 != a1[19])
  {
    v5 = a1[20];
  }

  llvm::ConstantFP::get();
  sub_23C4BB410(a1, a2);
  v11 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v6 = a1[24];
  v11 = 257;
  v7 = sub_23C4BB4D4((a1 + 1), a2, v6, v10);
  v9[16] = 257;
  sub_23C49EF30((a1 + 1), v7, v4, v9);
  v11 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *sub_23C4BB410(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.fabs");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return sub_23C49ACF8(a1, 42, a2, a3, a4);
}

uint64_t sub_23C4BB538(uint64_t *a1, uint64_t *a2)
{
  v16 = a2;
  v4 = a1[43];
  v5 = *(v4 + 1160);
  if (v5)
  {
    v6 = strlen(*(v4 + 1160));
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_23C49EB10(a1, v5, v6, a1[24], a1[20]);
  sub_23C4BB410(a1, a2);
  v8 = a1[20];
  llvm::ConstantFP::get();
  llvm::IRBuilderBase::CreateFCmpHelper();
  v15 = 257;
  v9 = sub_23C497A7C((a1 + 1), **(*v7 + 16), v7, &v16, 1, v14);
  v10 = a1[20];
  v13 = 257;
  sub_23C49EF30((a1 + 1), v9, v10, v12);
  v15 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

uint64_t sub_23C4BB654(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_23C4BB410(a1, a3);
  v6 = *(a1 + 160);
  llvm::ConstantFP::get();
  v25 = 257;
  FCmpHelper = llvm::IRBuilderBase::CreateFCmpHelper();
  v8 = *(a1 + 192);
  v25 = 257;
  v9 = sub_23C4BB4D4(a1 + 8, a3, v8, v24);
  v10 = *(a1 + 192);
  v11 = llvm::ConstantInt::get();
  v25 = 257;
  v12 = sub_23C49A8E0(a1 + 8, v9, v11, v24);
  v13 = *(a1 + 192);
  v14 = llvm::ConstantInt::get();
  v23 = 257;
  v15 = sub_23C497D84((a1 + 8), 32, v12, v14, &v22);
  v25 = 257;
  v16 = sub_23C49A8E0(a1 + 8, v15, FCmpHelper, v24);
  v17 = *(a1 + 160);
  llvm::ConstantFP::get();
  v25 = 257;
  v18 = llvm::IRBuilderBase::CreateFCmpHelper();
  v25 = 257;
  sub_23C49A8E0(a1 + 8, v18, v16, v24);
  v19 = sub_23C4BB410(a1, a2);
  v20 = sub_23C4BB80C(a1, v19, a3);
  v25 = 257;
  sub_23C4BB8E4(a1 + 8, v20, v24);
  v23 = 257;
  return llvm::IRBuilderBase::CreateSelect();
}

llvm::Value *sub_23C4BB80C(uint64_t a1, void *a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 152);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f16";
LABEL_6:
    v7 = sub_23C49B938(a1, v8, 17, v6, v6, v6);
    goto LABEL_7;
  }

  v6 = *(a1 + 160);
  if (*a2 == v6)
  {
    v8 = "llvm.agx.powr.f32";
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v12[0] = a2;
  v12[1] = a3;
  v11[16] = 257;
  result = sub_23C497A7C(a1 + 8, *(v7 + 24), v7, v12, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23C4BB8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || *(a2 + 16) > 0x14u)
  {
    v5 = llvm::UnaryOperator::Create();
    v7 = *(a1 + 96);
    sub_23C497F98(a1, v5);
LABEL_9:
    sub_23C49B15C(a1, v5, a3);
    return v5;
  }

  v5 = (*(**(a1 + 72) + 200))(*(a1 + 72));
  if (v5)
  {
    v6 = *(v5 + 16) >= 0x1Cu;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  return v5;
}

uint64_t sub_23C4BB9A8(uint64_t a1, uint64_t a2)
{
  v7 = 257;
  v3 = sub_23C4BB8E4(a1 + 8, a2, v6);
  v4 = sub_23C4BBA04(a1, v3);
  v7 = 257;
  return sub_23C4BB8E4(a1 + 8, v4, v6);
}

llvm::Value *sub_23C4BBA04(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.floor");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BBAC8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = llvm::ConstantFP::get();
  v6 = llvm::ConstantFP::get();
  v17 = 257;
  v7 = sub_23C49EA2C(a1 + 8, a2, a2, v16);
  v15 = 257;
  v8 = sub_23C4A0EC4(a1 + 8, v5, v7, v14);
  v9 = sub_23C4BBBDC(a1, v8);
  v17 = 257;
  v10 = sub_23C4A0BD4(a1 + 8, v5, v9, v16);
  v17 = 257;
  v11 = sub_23C4BBCA0(a1 + 8, a2, v10, v16);
  v12 = (*(*a1 + 24))(a1, v11);
  v15 = 257;
  return sub_23C49EA2C(a1 + 8, v6, v12, v14);
}

llvm::Value *sub_23C4BBBDC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 344);
  v8 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (a1 + 8));
  v5 = *(a1 + 104);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = sub_23C4A2368(v4, &v11, a2, "llvm.sqrt");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

uint64_t sub_23C4BBCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPBinOp();
  }

  v7 = sub_23C49EBEC(a1, 21, a2, a3, a4);
  if (!v7)
  {
    v7 = llvm::BinaryOperator::Create();
    v8 = *(a1 + 96);
    sub_23C497F98(a1, v7);
    sub_23C49B15C(a1, v7, a4);
  }

  return v7;
}

uint64_t sub_23C4BBD84(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  llvm::ConstantFP::get();
  v5 = llvm::ConstantFP::get();
  v6 = llvm::ConstantFP::get();
  v19 = 257;
  v7 = sub_23C49EA2C(a1 + 8, a2, a2, v18);
  v17 = 257;
  v8 = sub_23C4A0EC4(a1 + 8, v5, v7, v16);
  v9 = sub_23C4BBBDC(a1, v8);
  v19 = 257;
  v10 = sub_23C4A0BD4(a1 + 8, v5, a2, v18);
  v19 = 257;
  v11 = sub_23C4BBCA0(a1 + 8, v5, v9, v18);
  v19 = 257;
  sub_23C49EA2C(a1 + 8, v11, v10, v18);
  v19 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v19 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = 257;
  v13 = sub_23C4BBCA0(a1 + 8, v5, Select, v18);
  v14 = (*(*a1 + 24))(a1, v13);
  v17 = 257;
  return sub_23C49EA2C(a1 + 8, v6, v14, v16);
}

void sub_23C4BBF30(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v6 = 1120;
  if (*a2 == a1[20])
  {
    v6 = 1112;
  }

  v5 = a1[43];
  v7 = *(v5 + v6);
  if (v7)
  {
    v8 = strlen(*(v5 + v6));
  }

  else
  {
    v8 = 0;
  }

  sub_23C49EB10(a1, v7, v8, v4, v4);
  llvm::ConstantFP::get();
  llvm::ConstantFP::get();
  sub_23C4BB410(a1, a2);
  v10 = a1[7];
  v9 = a1[8];
  llvm::BasicBlock::splitBasicBlock();
  v11 = a1[42];
  v12 = *(v10 + 56);
  operator new();
}

uint64_t sub_23C4BC31C(unsigned int **a1)
{
  v2 = llvm::User::operator new(0x40);
  llvm::BranchInst::BranchInst();
  v5 = 257;
  return sub_23C49B15C(a1, v2, v4);
}

uint64_t sub_23C4BC384(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = llvm::User::operator new(0x40);
  MEMORY[0x23EED3B30](v8, a3, a4, a2, 0);
  v11 = 257;
  return sub_23C49B15C(a1, v8, v10);
}

unsigned int *sub_23C4BC404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = llvm::User::operator new(0x40);
  *(llvm::Instruction::Instruction() + 60) = a3;
  llvm::Value::setName();
  v8 = v7[15];
  llvm::User::allocHungoffUses(v7);
  if (sub_23C497EEC(v7))
  {
    v9 = *(a1 + 96);
    sub_23C497F98(a1, v7);
  }

  (*(**(a1 + 80) + 16))(*(a1 + 80), v7, a4, *(a1 + 48), *(a1 + 56));
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = *a1;
    v12 = &v11[4 * v10];
    do
    {
      v13 = *v11;
      v14 = *(v11 + 1);
      llvm::Instruction::setMetadata();
      v11 += 4;
    }

    while (v11 != v12);
  }

  return v7;
}

_DWORD *sub_23C4BC510(_DWORD *this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  v6 = this[5];
  if ((v6 & 0x7FFFFFF) == this[15])
  {
    this = llvm::PHINode::growOperands(this);
    v6 = v5[5];
  }

  v7 = (v6 + 1) & 0x7FFFFFF;
  v5[5] = v6 & 0xF8000000 | (v6 + 1) & 0x7FFFFFF;
  if ((v6 & 0x40000000) != 0)
  {
    v8 = *(v5 - 1);
  }

  else
  {
    v8 = &v5[-8 * v7];
  }

  v9 = &v8[8 * (v7 - 1)];
  if (*v9)
  {
    v10 = *(v9 + 1);
    **(v9 + 2) = v10;
    if (v10)
    {
      *(v10 + 16) = *(v9 + 2);
    }
  }

  *v9 = a2;
  if (a2)
  {
    v13 = *(a2 + 8);
    v12 = (a2 + 8);
    v11 = v13;
    *(v9 + 1) = v13;
    if (v13)
    {
      *(v11 + 16) = v9 + 2;
    }

    *(v9 + 2) = v12;
    *v12 = v9;
  }

  v14 = v5[5];
  v15 = v14 & 0x7FFFFFF;
  if ((v14 & 0x40000000) != 0)
  {
    v16 = *(v5 - 1);
  }

  else
  {
    v16 = &v5[-8 * v15];
  }

  *&v16[8 * v5[15] + 2 * (v15 - 1)] = a3;
  return this;
}