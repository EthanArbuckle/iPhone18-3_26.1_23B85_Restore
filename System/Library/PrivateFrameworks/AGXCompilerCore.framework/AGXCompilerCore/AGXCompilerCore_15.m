llvm::StringMapImpl *llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::StringMap(llvm::StringMapImpl *this, uint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0x1800000000;
  if (*(a2 + 3))
  {
    v4 = *(a2 + 2);
    llvm::StringMapImpl::init(this);
    v5 = *this;
    v6 = *(this + 2);
    v7 = *a2;
    *(this + 12) = *(a2 + 12);
    if (v6)
    {
      v8 = 0;
      v18 = v5 + 8 * v6 + 8;
      v9 = v7 + 8 * v6 + 8;
      do
      {
        v10 = *(*a2 + 8 * v8);
        if (v10)
        {
          v11 = v10 == -8;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          *(*this + 8 * v8) = v10;
        }

        else
        {
          v12 = *v10;
          v13 = MEMORY[0x20F330650](*v10 + 25, 8);
          v14 = v13;
          v15 = v13 + 24;
          if (v12)
          {
            memcpy((v13 + 24), (v10 + 24), v12);
          }

          *(v15 + v12) = 0;
          *v14 = v12;
          v16 = *(v10 + 8);
          *(v14 + 16) = *(v10 + 16);
          *(v14 + 8) = v16;
          *(*this + 8 * v8) = v14;
          *(v18 + 4 * v8) = *(v9 + 4 * v8);
        }

        ++v8;
      }

      while (v6 != v8);
    }
  }

  return this;
}

uint64_t *std::unordered_map<unsigned short,std::vector<anonymous namespace::ScsDriverPayloadSegmentInfo>>::operator[](void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return (v7 + 3);
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(unint64_t a1, int a2)
{
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 1);
        v4 = 0x4000;
        return (v4 + SectionEnd);
      }

      if (a2 != 3)
      {
LABEL_26:
        SectionEnd = 0;
        v5 = a2 == 1;
        goto LABEL_27;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 9);
      v6 = (a1 >> 13) & 0x7F800;
      v7 = ((BYTE2(a1) & 0xFEu) + 2) >> 1;
    }

    else
    {
      if (a2 == 4)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 2);
        v4 = 98304;
        return (v4 + SectionEnd);
      }

      if (a2 != 5)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 8);
        v5 = 3 * BYTE2(a1);
LABEL_27:
        v4 = v5 << 14;
        return (v4 + SectionEnd);
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 3);
      v7 = 8 * a1;
      v6 = (a1 >> 19) & 0x1FE0;
    }

    v4 = v7 * v6;
    return (v4 + SectionEnd);
  }

  if (a2 > 9)
  {
    switch(a2)
    {
      case 10:
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 5);
        v8 = (a1 >> 19) & 0x1FE0;
        v9 = HIWORD(a1);
        break;
      case 11:
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 10);
        v8 = (a1 >> 19) & 0x1FE0;
        LODWORD(v9) = WORD2(a1);
        break;
      case 12:
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 11);
        v4 = 0;
        return (v4 + SectionEnd);
      default:
        goto LABEL_26;
    }

    v4 = v8 * v9;
    return (v4 + SectionEnd);
  }

  if (a2 == 7)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 4);
    v4 = 49152;
  }

  else if (a2 == 8)
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 7);
    v4 = 61440;
  }

  else
  {
    SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen4::ScsLayoutGen4>::getSectionEnd(a1, 6);
    v4 = 589824;
  }

  return (v4 + SectionEnd);
}

std::string *AGCLLVMUserObject::ScsLayoutDumper::ScsLayoutPrinter::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20]();
  v14 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x1000uLL, v10, &a9);
  result = std::string::append(*v9, __str);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<anonymous namespace::ScsSectionInfo>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = 12 * v8 + 12;
    v13 = (v12 - (v3 - v7));
    memcpy(v13, v7, v3 - v7);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
  }

  *(a1 + 8) = v6;
}

uint64_t RaytracingConstantsGen3::payloadHasSegment(int a1, unsigned int a2, char a3, char a4)
{
  if (a1 > 23)
  {
    if (a1 == 24)
    {
      v5 = 0x94u >> a2;
      if (a2 >= 8)
      {
        LOBYTE(v5) = 0;
      }

      return v5 & 1;
    }

    if (a1 != 25)
    {
      return RaytracingConstantsGen1::payloadHasSegment(a1, a2, a3, a4);
    }
  }

  else
  {
    if (a1 == 3)
    {
      LOBYTE(v5) = 1;
      return v5 & 1;
    }

    if (a1 != 23)
    {
      return RaytracingConstantsGen1::payloadHasSegment(a1, a2, a3, a4);
    }
  }

  LOBYTE(v5) = 0;
  return v5 & 1;
}

void std::vector<anonymous namespace::ScsDriverPayloadSegmentInfo>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
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

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t RaytracingConstantsGen3::payloadSegmentSize(int a1, unsigned int a2)
{
  if (a1 > 20)
  {
    if (a1 == 21)
    {
      return 0;
    }

    if (a1 != 24)
    {
      if (a1 != 25)
      {
        return RaytracingConstantsGen2::payloadSegmentSize(a1, a2);
      }

      return 0;
    }

    return 8;
  }

  else
  {
    if (a1 == 3)
    {
      return 16;
    }

    if (a1 != 6)
    {
      if (a1 != 19)
      {
        return RaytracingConstantsGen2::payloadSegmentSize(a1, a2);
      }

      return 0;
    }

    return 4;
  }
}

uint64_t RaytracingConstantsGen2::payloadSegmentSize(int a1, unsigned int a2)
{
  result = 64;
  if (a1 > 15)
  {
    if (a1 == 16 || a1 == 21)
    {
      return 0;
    }

    if (a1 != 23)
    {
      return RaytracingConstantsGen1::payloadSegmentSize(a1, a2);
    }
  }

  else if (a1)
  {
    if (a1 != 2)
    {
      if (a1 == 12)
      {
        return 2;
      }

      return RaytracingConstantsGen1::payloadSegmentSize(a1, a2);
    }

    return 32;
  }

  return result;
}

uint64_t RaytracingConstantsGen1::payloadSegmentSize(int a1, unsigned int a2)
{
  switch(a1)
  {
    case 1:
      result = 512;
      break;
    case 2:
      result = 16;
      break;
    case 3:
    case 4:
    case 5:
    case 24:
    case 26:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
    case 11:
    case 12:
    case 13:
    case 16:
      result = 8;
      break;
    case 9:
    case 10:
    case 14:
    case 25:
      result = 4;
      break;
    case 15:
      result = 20 * a2;
      break;
    case 17:
    case 18:
      result = 12;
      break;
    case 19:
    case 21:
      result = 6;
      break;
    case 20:
    case 22:
      result = 100;
      break;
    case 23:
      result = 64;
      break;
    default:
      result = 32;
      break;
  }

  return result;
}

uint64_t RaytracingConstantsGen1::payloadHasSegment(int a1, unsigned int a2, char a3, char a4)
{
  if (a1 <= 18)
  {
    v4 = a4 ^ 1;
    if (a1 != 18)
    {
      v4 = 1;
    }

    if (a1 == 17)
    {
      v4 = a4;
    }

    v5 = 0xDEu >> a2;
    if (a2 >= 8)
    {
      LOBYTE(v5) = 0;
    }

    if (a1 != 16)
    {
      LOBYTE(v5) = 1;
    }

    if ((a1 - 14) >= 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = a2 - 5 < 3;
    }

    if (a1 <= 16)
    {
      v4 = v6;
    }

    LOBYTE(v7) = (a1 - 3) >= 3;
    if (a1 > 13)
    {
      LOBYTE(v7) = v4;
    }

    return v7 & 1;
  }

  if (a1 <= 21)
  {
    if (a1 == 20)
    {
      goto LABEL_31;
    }

    v7 = 0xDEu >> a2;
    if (a2 >= 8)
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    if (a1 <= 24)
    {
      if (a1 != 22)
      {
        LOBYTE(v7) = a1 != 24;
        return v7 & 1;
      }

LABEL_31:
      LOBYTE(v7) = a2 - 3 < 2;
      return v7 & 1;
    }

    if ((a2 - 8) < 0xFDu)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    LOBYTE(v7) = a1 != 26;
    if (a1 == 25)
    {
      LOBYTE(v7) = v9;
    }
  }

  return v7 & 1;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(unint64_t a1, int a2)
{
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 2);
        v4 = (a1 >> 14) & 0x3FC00;
        return v4 + SectionEnd;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 6);
      v6 = 8 * a1;
      v5 = (a1 >> 19) & 0x1FE0;
    }

    else
    {
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 1);
        v4 = 0x2000;
        return v4 + SectionEnd;
      }

      if (a2 != 3)
      {
        goto LABEL_23;
      }

      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 7);
      v5 = (a1 >> 13) & 0x7F800;
      v6 = ((BYTE2(a1) & 0xFEu) + 2) >> 1;
    }

    v4 = v6 * v5;
    return v4 + SectionEnd;
  }

  if (a2 <= 9)
  {
    if (a2 == 6)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 3);
      v4 = ((a1 >> 15) & 0x1FE00) * BYTE2(a1);
      return v4 + SectionEnd;
    }

    if (a2 == 7)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 4);
      v4 = (a1 >> 15) & 0x1FE00;
      return v4 + SectionEnd;
    }

    goto LABEL_23;
  }

  switch(a2)
  {
    case 10:
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 5);
      v7 = (a1 >> 19) & 0x1FE0;
      v8 = HIWORD(a1);
LABEL_22:
      v4 = v7 * v8;
      return v4 + SectionEnd;
    case 11:
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 10);
      v7 = (a1 >> 19) & 0x1FE0;
      LODWORD(v8) = WORD2(a1);
      goto LABEL_22;
    case 12:
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen3::ScsLayoutGen3>::getSectionEnd(a1, 11);
      v4 = 0;
      return v4 + SectionEnd;
  }

LABEL_23:
  SectionEnd = 0;
  if (a2 == 1)
  {
    v4 = 24576;
  }

  else
  {
    v4 = 0;
  }

  return v4 + SectionEnd;
}

uint64_t RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(unint64_t a1, int a2)
{
  SectionEnd = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 2);
        v4 = 0x40000;
      }

      else
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 3);
        v4 = 0x20000;
      }
    }

    else if (a2 == 1)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 7);
      v4 = 24576;
    }

    else
    {
      v4 = 0;
      if (a2 == 2)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 1);
        v4 = 0x2000;
      }
    }
  }

  else
  {
    if (a2 > 9)
    {
      if (a2 == 10)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 5);
        v6 = (a1 >> 19) & 0x1FE0;
        v7 = HIWORD(a1);
      }

      else
      {
        if (a2 != 11)
        {
          v4 = 0;
          if (a2 == 12)
          {
            SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 11);
            v4 = 0;
          }

          return (v4 + SectionEnd);
        }

        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 6);
        v6 = (a1 >> 19) & 0x1FE0;
        LODWORD(v7) = WORD2(a1);
      }

      v4 = v6 * v7;
      return (v4 + SectionEnd);
    }

    if (a2 == 5)
    {
      SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 4);
      v4 = 8 * a1 * ((a1 >> 19) & 0x1FE0);
    }

    else
    {
      v4 = 0;
      if (a2 == 6)
      {
        SectionEnd = RaytracingConstantsCommon::ScsLayoutBase<RaytracingConstantsGen2::ScsLayoutGen2>::getSectionEnd(a1, 10);
        v5 = BYTE2(a1);
        if (BYTE2(a1) > 1u)
        {
          v5 = BYTE2(a1) + 1;
        }

        v4 = (WORD1(a1) & 0xFF00) * v5;
      }
    }
  }

  return (v4 + SectionEnd);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,AGCLLVMUserObject::ScsLayoutDumper& AGCLLVMUserObject::ScsLayoutDumper::dump<RaytracingConstantsGen1>(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::{lambda(anonymous namespace::ScsSectionInfo const&,anonymous namespace::ScsSectionInfo const&)#1} &,anonymous namespace::ScsSectionInfo*,false>(uint64_t result, _DWORD *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 3);
  v9 = (a2 - 6);
  v10 = (a2 - 9);
  v11 = v7;
  while (1)
  {
    v7 = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v11) >> 2);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 2) >= *(v11 + 4))
        {
          return result;
        }

LABEL_112:
        v213 = *(v11 + 8);
        v187 = *v11;
        v93 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v93;
        v94 = v187;
        v95 = v213;
LABEL_113:
        *(a2 - 1) = v95;
        *v8 = v94;
        return result;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v96 = *(v11 + 16);
      v97 = *(v11 + 28);
      if (v96 >= *(v11 + 4))
      {
        if (v97 < v96)
        {
          v153 = *(v11 + 20);
          v154 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v154;
          *(v11 + 32) = v153;
          if (*(v11 + 16) < *(v11 + 4))
          {
            v216 = *(v11 + 8);
            v190 = *v11;
            *v11 = *(v11 + 12);
            *(v11 + 8) = *(v11 + 20);
            *(v11 + 12) = v190;
            *(v11 + 20) = v216;
          }
        }
      }

      else
      {
        if (v97 < v96)
        {
          v214 = *(v11 + 8);
          v188 = *v11;
          *v11 = *(v11 + 24);
          *(v11 + 8) = *(v11 + 32);
          *(v11 + 24) = v188;
          v98 = v214;
          goto LABEL_191;
        }

        v218 = *(v11 + 8);
        v192 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v192;
        *(v11 + 20) = v218;
        if (v97 < *(v11 + 16))
        {
          v98 = *(v11 + 20);
          v163 = *(v11 + 12);
          *(v11 + 12) = *(v11 + 24);
          *(v11 + 20) = *(v11 + 32);
          *(v11 + 24) = v163;
LABEL_191:
          *(v11 + 32) = v98;
        }
      }

      if (*(a2 - 2) >= *(v11 + 28))
      {
        return result;
      }

      v164 = *(v11 + 24);
      v165 = *(v11 + 32);
      v166 = *(a2 - 1);
      *(v11 + 24) = *v8;
      *(v11 + 32) = v166;
      *(a2 - 1) = v165;
      *v8 = v164;
      if (*(v11 + 28) >= *(v11 + 16))
      {
        return result;
      }

      v167 = *(v11 + 20);
      v168 = *(v11 + 12);
      *(v11 + 12) = *(v11 + 24);
      *(v11 + 20) = *(v11 + 32);
      *(v11 + 24) = v168;
      *(v11 + 32) = v167;
LABEL_195:
      if (*(v11 + 16) < *(v11 + 4))
      {
        v219 = *(v11 + 8);
        v193 = *v11;
        *v11 = *(v11 + 12);
        *(v11 + 8) = *(v11 + 20);
        *(v11 + 12) = v193;
        *(v11 + 20) = v219;
      }

      return result;
    }

    if (v13 == 5)
    {
    }

LABEL_10:
    if (v12 <= 287)
    {
      v99 = (v11 + 12);
      v101 = v11 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v11;
          do
          {
            v104 = v99;
            v105 = v103[4];
            if (v105 < v103[1])
            {
              v106 = *v104;
              v107 = v103[5];
              v108 = v102;
              while (1)
              {
                v109 = v11 + v108;
                *(v109 + 12) = *(v11 + v108);
                *(v109 + 20) = *(v11 + v108 + 8);
                if (!v108)
                {
                  break;
                }

                v108 -= 12;
                if (v105 >= *(v109 - 8))
                {
                  v110 = (v11 + v108 + 12);
                  goto LABEL_132;
                }
              }

              v110 = v11;
LABEL_132:
              *v110 = v106;
              v110[1] = v105;
              v110[2] = v107;
            }

            v99 = v104 + 3;
            v102 += 12;
            v103 = v104;
          }

          while (v104 + 3 != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v155 = v99;
          v156 = *(v7 + 16);
          if (v156 < *(v7 + 4))
          {
            v157 = *v99;
            v158 = *(v7 + 20);
            v159 = v155;
            do
            {
              v160 = v159;
              v161 = *(v159 - 3);
              v159 -= 3;
              *v160 = v161;
              v160[2] = *(v160 - 1);
            }

            while (v156 < *(v160 - 5));
            *v159 = v157;
            v159[1] = v156;
            v159[2] = v158;
          }

          v99 = v155 + 3;
          v7 = v155;
        }

        while (v155 + 3 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v111 = (v13 - 2) >> 1;
        v112 = v111;
        do
        {
          v113 = v112;
          if (v111 >= v112)
          {
            v114 = (2 * v112) | 1;
            v115 = (v11 + 12 * v114);
            if (2 * v113 + 2 < v13)
            {
              v116 = v115[1];
              v117 = v115[4];
              v118 = v116 >= v117;
              v119 = v116 >= v117 ? 0 : 12;
              v115 = (v115 + v119);
              if (!v118)
              {
                v114 = 2 * v113 + 2;
              }
            }

            v120 = (v11 + 12 * v113);
            v121 = v120[1];
            if (v115[1] >= v121)
            {
              v122 = *v120;
              v123 = v120[2];
              do
              {
                v124 = v120;
                v120 = v115;
                v125 = *v115;
                v124[2] = v120[2];
                *v124 = v125;
                if (v111 < v114)
                {
                  break;
                }

                v126 = (2 * v114) | 1;
                v115 = (v11 + 12 * v126);
                v127 = 2 * v114 + 2;
                if (v127 < v13)
                {
                  v128 = v115[1];
                  v129 = v115[4];
                  v130 = v128 >= v129;
                  v131 = v128 >= v129 ? 0 : 12;
                  v115 = (v115 + v131);
                  if (!v130)
                  {
                    v126 = v127;
                  }
                }

                v114 = v126;
              }

              while (v115[1] >= v121);
              *v120 = v122;
              v120[1] = v121;
              v120[2] = v123;
            }
          }

          v112 = v113 - 1;
        }

        while (v113);
        v132 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2);
        do
        {
          v133 = 0;
          v215 = *(v11 + 8);
          v189 = *v11;
          v134 = v11;
          do
          {
            v135 = (v134 + 12 * v133);
            v136 = v135 + 3;
            result = 2 * v133;
            v137 = (2 * v133) | 1;
            v133 = 2 * v133 + 2;
            if (v133 >= v132)
            {
              v133 = v137;
            }

            else
            {
              result = v135[4];
              v138 = v135[7];
              v139 = v135 + 6;
              if (result >= v138)
              {
                v133 = v137;
              }

              else
              {
                v136 = v139;
              }
            }

            v140 = *v136;
            *(v134 + 8) = v136[2];
            *v134 = v140;
            v134 = v136;
          }

          while (v133 <= ((v132 - 2) >> 1));
          a2 -= 3;
          if (v136 == a2)
          {
            v136[2] = v215;
            *v136 = v189;
          }

          else
          {
            v141 = *a2;
            v136[2] = a2[2];
            *v136 = v141;
            a2[2] = v215;
            *a2 = v189;
            v142 = v136 - v11 + 12;
            if (v142 >= 13)
            {
              v143 = (-2 - 0x5555555555555555 * (v142 >> 2)) >> 1;
              v144 = v11 + 12 * v143;
              v145 = v136[1];
              if (*(v144 + 4) < v145)
              {
                v146 = *v136;
                v147 = v136[2];
                do
                {
                  result = v136;
                  v136 = v144;
                  v148 = *v144;
                  *(result + 8) = v136[2];
                  *result = v148;
                  if (!v143)
                  {
                    break;
                  }

                  v143 = (v143 - 1) >> 1;
                  v144 = v11 + 12 * v143;
                  result = *(v144 + 4);
                }

                while (result < v145);
                *v136 = v146;
                v136[1] = v145;
                v136[2] = v147;
              }
            }
          }
        }

        while (v132-- > 2);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = v11 + 12 * (v13 >> 1);
    v16 = *(a2 - 2);
    if (v12 >= 0x601)
    {
      v17 = *(v15 + 4);
      if (v17 >= *(v11 + 4))
      {
        if (v16 < v17)
        {
          v196 = *(v15 + 8);
          v171 = *v15;
          v21 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v21;
          *(a2 - 1) = v196;
          *v8 = v171;
          if (*(v15 + 4) < *(v11 + 4))
          {
            v197 = *(v11 + 8);
            v172 = *v11;
            v22 = *v15;
            *(v11 + 8) = *(v15 + 8);
            *v11 = v22;
            *(v15 + 8) = v197;
            *v15 = v172;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v194 = *(v11 + 8);
          v169 = *v11;
          v18 = *v8;
          *(v11 + 8) = *(a2 - 1);
          *v11 = v18;
          goto LABEL_27;
        }

        v200 = *(v11 + 8);
        v175 = *v11;
        v25 = *v15;
        *(v11 + 8) = *(v15 + 8);
        *v11 = v25;
        *(v15 + 8) = v200;
        *v15 = v175;
        if (*(a2 - 2) < *(v15 + 4))
        {
          v194 = *(v15 + 8);
          v169 = *v15;
          v26 = *v8;
          *(v15 + 8) = *(a2 - 1);
          *v15 = v26;
LABEL_27:
          *(a2 - 1) = v194;
          *v8 = v169;
        }
      }

      v27 = v11 + 12 * v14;
      v28 = v27 - 12;
      v29 = *(v27 - 8);
      v30 = *(a2 - 5);
      if (v29 >= *(v11 + 16))
      {
        if (v30 < v29)
        {
          v201 = *(v28 + 8);
          v176 = *v28;
          v34 = *v9;
          *(v28 + 8) = *(a2 - 4);
          *v28 = v34;
          *(a2 - 4) = v201;
          *v9 = v176;
          if (*(v28 + 4) < *(v11 + 16))
          {
            v35 = *(v11 + 12);
            v36 = *(v11 + 20);
            v37 = *(v28 + 8);
            *(v11 + 12) = *v28;
            *(v11 + 20) = v37;
            *(v28 + 8) = v36;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *(v11 + 12);
          v32 = *(v11 + 20);
          v33 = *(a2 - 4);
          *(v11 + 12) = *v9;
          *(v11 + 20) = v33;
          goto LABEL_39;
        }

        v40 = *(v11 + 12);
        v41 = *(v11 + 20);
        v42 = *(v28 + 8);
        *(v11 + 12) = *v28;
        *(v11 + 20) = v42;
        *(v28 + 8) = v41;
        *v28 = v40;
        if (*(a2 - 5) < *(v28 + 4))
        {
          v203 = *(v28 + 8);
          v178 = *v28;
          v43 = *v9;
          *(v28 + 8) = *(a2 - 4);
          *v28 = v43;
          v31 = v178;
          v32 = v203;
LABEL_39:
          *(a2 - 4) = v32;
          *v9 = v31;
        }
      }

      v44 = v11 + 12 * v14;
      v45 = *(v44 + 16);
      v46 = *(a2 - 8);
      if (v45 >= *(v11 + 28))
      {
        if (v46 < v45)
        {
          v204 = *(v44 + 20);
          v179 = *(v44 + 12);
          v50 = *v10;
          *(v44 + 20) = *(a2 - 7);
          *(v44 + 12) = v50;
          *(a2 - 7) = v204;
          *v10 = v179;
          if (*(v44 + 16) < *(v11 + 28))
          {
            v51 = *(v11 + 24);
            v52 = *(v11 + 32);
            v53 = *(v44 + 20);
            *(v11 + 24) = *(v44 + 12);
            *(v11 + 32) = v53;
            *(v44 + 20) = v52;
            *(v44 + 12) = v51;
          }
        }
      }

      else
      {
        if (v46 < v45)
        {
          v47 = *(v11 + 24);
          v48 = *(v11 + 32);
          v49 = *(a2 - 7);
          *(v11 + 24) = *v10;
          *(v11 + 32) = v49;
          goto LABEL_48;
        }

        v54 = *(v11 + 24);
        v55 = *(v11 + 32);
        v56 = *(v44 + 20);
        *(v11 + 24) = *(v44 + 12);
        *(v11 + 32) = v56;
        *(v44 + 20) = v55;
        *(v44 + 12) = v54;
        if (*(a2 - 8) < *(v44 + 16))
        {
          v205 = *(v44 + 20);
          v180 = *(v44 + 12);
          v57 = *v10;
          *(v44 + 20) = *(a2 - 7);
          *(v44 + 12) = v57;
          v47 = v180;
          v48 = v205;
LABEL_48:
          *(a2 - 7) = v48;
          *v10 = v47;
        }
      }

      v58 = *(v15 + 4);
      v59 = *(v44 + 16);
      if (v58 >= *(v28 + 4))
      {
        if (v59 < v58)
        {
          v207 = *(v15 + 8);
          v182 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
          *(v44 + 20) = v207;
          *(v44 + 12) = v182;
          if (*(v15 + 4) < *(v28 + 4))
          {
            v208 = *(v28 + 8);
            v183 = *v28;
            *v28 = *v15;
            *(v28 + 8) = *(v15 + 8);
            *(v15 + 8) = v208;
            *v15 = v183;
          }
        }
      }

      else
      {
        if (v59 < v58)
        {
          v206 = *(v28 + 8);
          v181 = *v28;
          *v28 = *(v44 + 12);
          *(v28 + 8) = *(v44 + 20);
          goto LABEL_57;
        }

        v209 = *(v28 + 8);
        v184 = *v28;
        *v28 = *v15;
        *(v28 + 8) = *(v15 + 8);
        *(v15 + 8) = v209;
        *v15 = v184;
        if (*(v44 + 16) < *(v15 + 4))
        {
          v206 = *(v15 + 8);
          v181 = *v15;
          *v15 = *(v44 + 12);
          *(v15 + 8) = *(v44 + 20);
LABEL_57:
          *(v44 + 20) = v206;
          *(v44 + 12) = v181;
        }
      }

      v210 = *(v11 + 8);
      v185 = *v11;
      v60 = *v15;
      *(v11 + 8) = *(v15 + 8);
      *v11 = v60;
      *(v15 + 8) = v210;
      *v15 = v185;
      goto LABEL_59;
    }

    v19 = *(v11 + 4);
    if (v19 >= *(v15 + 4))
    {
      if (v16 < v19)
      {
        v198 = *(v11 + 8);
        v173 = *v11;
        v23 = *v8;
        *(v11 + 8) = *(a2 - 1);
        *v11 = v23;
        *(a2 - 1) = v198;
        *v8 = v173;
        if (*(v11 + 4) < *(v15 + 4))
        {
          v199 = *(v15 + 8);
          v174 = *v15;
          v24 = *v11;
          *(v15 + 8) = *(v11 + 8);
          *v15 = v24;
          *(v11 + 8) = v199;
          *v11 = v174;
        }
      }

      goto LABEL_59;
    }

    if (v16 < v19)
    {
      v195 = *(v15 + 8);
      v170 = *v15;
      v20 = *v8;
      *(v15 + 8) = *(a2 - 1);
      *v15 = v20;
LABEL_36:
      *(a2 - 1) = v195;
      *v8 = v170;
      goto LABEL_59;
    }

    v202 = *(v15 + 8);
    v177 = *v15;
    v38 = *v11;
    *(v15 + 8) = *(v11 + 8);
    *v15 = v38;
    *(v11 + 8) = v202;
    *v11 = v177;
    if (*(a2 - 2) < *(v11 + 4))
    {
      v195 = *(v11 + 8);
      v170 = *v11;
      v39 = *v8;
      *(v11 + 8) = *(a2 - 1);
      *v11 = v39;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v61 = *(v11 + 4);
LABEL_62:
      v62 = *v11;
      v63 = *(v11 + 8);
      v64 = v11;
      do
      {
        v65 = v64;
        v64 += 12;
      }

      while (*(v65 + 16) < v61);
      v66 = a2;
      if (v65 == v11)
      {
        v69 = a2;
        while (v64 < v69)
        {
          v67 = v69 - 3;
          v70 = *(v69 - 2);
          v69 -= 3;
          if (v70 < v61)
          {
            goto LABEL_72;
          }
        }

        v67 = v69;
      }

      else
      {
        do
        {
          v67 = v66 - 3;
          v68 = *(v66 - 2);
          v66 -= 3;
        }

        while (v68 >= v61);
      }

LABEL_72:
      v11 = v64;
      if (v64 < v67)
      {
        v71 = v67;
        do
        {
          v72 = *v11;
          v211 = *(v11 + 8);
          v73 = *(v71 + 8);
          *v11 = *v71;
          *(v11 + 8) = v73;
          *(v71 + 8) = v211;
          *v71 = v72;
          do
          {
            v74 = *(v11 + 16);
            v11 += 12;
          }

          while (v74 < v61);
          do
          {
            v75 = *(v71 - 8);
            v71 -= 12;
          }

          while (v75 >= v61);
        }

        while (v11 < v71);
      }

      if (v11 - 12 != v7)
      {
        v76 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v76;
      }

      *(v11 - 12) = v62;
      *(v11 - 8) = v61;
      *(v11 - 4) = v63;
      if (v64 < v67)
      {
        goto LABEL_83;
      }

      if (result)
      {
        a2 = (v11 - 12);
        if (!v77)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v77)
      {
LABEL_83:
        a4 = 0;
      }
    }

    else
    {
      v61 = *(v11 + 4);
      if (*(v11 - 8) < v61)
      {
        goto LABEL_62;
      }

      if (v61 >= *(a2 - 2))
      {
        v80 = v11 + 12;
        do
        {
          v11 = v80;
          if (v80 >= a2)
          {
            break;
          }

          v81 = *(v80 + 4);
          v80 += 12;
        }

        while (v61 >= v81);
      }

      else
      {
        v78 = v11;
        do
        {
          v11 = v78 + 12;
          v79 = *(v78 + 16);
          v78 += 12;
        }

        while (v61 >= v79);
      }

      v82 = a2;
      if (v11 < a2)
      {
        v83 = a2;
        do
        {
          v82 = v83 - 3;
          v84 = *(v83 - 2);
          v83 -= 3;
        }

        while (v61 < v84);
      }

      v85 = *v7;
      v86 = *(v7 + 8);
      while (v11 < v82)
      {
        v212 = *(v11 + 8);
        v186 = *v11;
        v87 = *v82;
        *(v11 + 8) = v82[2];
        *v11 = v87;
        v82[2] = v212;
        *v82 = v186;
        do
        {
          v88 = *(v11 + 16);
          v11 += 12;
        }

        while (v61 >= v88);
        do
        {
          v89 = *(v82 - 2);
          v82 -= 3;
        }

        while (v61 < v89);
      }

      if (v11 - 12 != v7)
      {
        v90 = *(v11 - 12);
        *(v7 + 8) = *(v11 - 4);
        *v7 = v90;
      }

      a4 = 0;
      *(v11 - 12) = v85;
      *(v11 - 8) = v61;
      *(v11 - 4) = v86;
    }
  }

  v91 = *(v11 + 16);
  v92 = *(a2 - 2);
  if (v91 >= *(v11 + 4))
  {
    if (v92 >= v91)
    {
      return result;
    }

    v150 = *(v11 + 12);
    v151 = *(v11 + 20);
    v152 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v152;
    *(a2 - 1) = v151;
    *v8 = v150;
    goto LABEL_195;
  }

  if (v92 < v91)
  {
    goto LABEL_112;
  }

  v217 = *(v11 + 8);
  v191 = *v11;
  *v11 = *(v11 + 12);
  *(v11 + 8) = *(v11 + 20);
  *(v11 + 12) = v191;
  *(v11 + 20) = v217;
  if (*(a2 - 2) < *(v11 + 16))
  {
    v94 = *(v11 + 12);
    v95 = *(v11 + 20);
    v162 = *(a2 - 1);
    *(v11 + 12) = *v8;
    *(v11 + 20) = v162;
    goto LABEL_113;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::ScsLayoutDumper& AGCLLVMUserObject::ScsLayoutDumper::dump<RaytracingConstantsGen1>(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::{lambda(anonymous namespace::ScsSectionInfo const&,anonymous namespace::ScsSectionInfo const&)#1} &,anonymous namespace::ScsSectionInfo*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a2 + 1);
  v6 = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      if (*(a2 + 1) < *(result + 1))
      {
        v13 = *(result + 2);
        v14 = *result;
        v15 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v15;
        *a2 = v14;
        *(a2 + 2) = v13;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
LABEL_9:
      *a3 = v8;
      *(a3 + 2) = v7;
      goto LABEL_10;
    }

    v16 = *(result + 2);
    v17 = *result;
    v18 = *(a2 + 2);
    *result = *a2;
    *(result + 2) = v18;
    *a2 = v17;
    *(a2 + 2) = v16;
    if (*(a3 + 1) < HIDWORD(v17))
    {
      v7 = *(a2 + 2);
      v8 = *a2;
      v19 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v19;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    v20 = *(a3 + 2);
    v21 = *a3;
    v22 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 2) = v22;
    *a4 = v21;
    *(a4 + 2) = v20;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v23 = *(a2 + 2);
      v24 = *a2;
      v25 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v25;
      *a3 = v24;
      *(a3 + 2) = v23;
      if (*(a2 + 1) < *(result + 1))
      {
        v26 = *(result + 2);
        v27 = *result;
        v28 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v28;
        *a2 = v27;
        *(a2 + 2) = v26;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v29 = *(a4 + 2);
    v30 = *a4;
    v31 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v31;
    *a5 = v30;
    *(a5 + 2) = v29;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v32 = *(a3 + 2);
      v33 = *a3;
      v34 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 2) = v34;
      *a4 = v33;
      *(a4 + 2) = v32;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v35 = *(a2 + 2);
        v36 = *a2;
        v37 = *(a3 + 2);
        *a2 = *a3;
        *(a2 + 2) = v37;
        *a3 = v36;
        *(a3 + 2) = v35;
        if (*(a2 + 1) < *(result + 1))
        {
          v38 = *(result + 2);
          v39 = *result;
          v40 = *(a2 + 2);
          *result = *a2;
          *(result + 2) = v40;
          *a2 = v39;
          *(a2 + 2) = v38;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,AGCLLVMUserObject::ScsLayoutDumper& AGCLLVMUserObject::ScsLayoutDumper::dump<RaytracingConstantsGen1>(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>)::{lambda(anonymous namespace::ScsSectionInfo const&,anonymous namespace::ScsSectionInfo const&)#1} &,anonymous namespace::ScsSectionInfo*>(uint64_t a1, _DWORD *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = (a2 - 3);
      v7 = *(a1 + 16);
      v8 = *(a2 - 2);
      if (v7 < *(a1 + 4))
      {
        if (v8 >= v7)
        {
          v34 = *(a1 + 8);
          v35 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v35;
          *(a1 + 20) = v34;
          if (*(a2 - 2) >= *(a1 + 16))
          {
            return 1;
          }

          v9 = *(a1 + 20);
          v10 = *(a1 + 12);
          v36 = *(a2 - 1);
          *(a1 + 12) = *v6;
          *(a1 + 20) = v36;
        }

        else
        {
          v9 = *(a1 + 8);
          v10 = *a1;
          v11 = *(a2 - 1);
          *a1 = *v6;
          *(a1 + 8) = v11;
        }

        *v6 = v10;
        *(a2 - 1) = v9;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *(a1 + 20);
      v24 = *(a1 + 12);
      v25 = *(a2 - 1);
      *(a1 + 12) = *v6;
      *(a1 + 20) = v25;
      *v6 = v24;
      *(a2 - 1) = v23;
LABEL_50:
      if (*(a1 + 16) < *(a1 + 4))
      {
        v56 = *(a1 + 8);
        v57 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v57;
        *(a1 + 20) = v56;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      return 1;
    }

    v18 = *(a1 + 16);
    v19 = *(a1 + 4);
    v20 = *(a1 + 28);
    if (v18 >= v19)
    {
      if (v20 < v18)
      {
        v30 = *(a1 + 20);
        v31 = *(a1 + 12);
        *(a1 + 12) = *(a1 + 24);
        *(a1 + 20) = *(a1 + 32);
        *(a1 + 24) = v31;
        *(a1 + 32) = v30;
        if (*(a1 + 16) < v19)
        {
          v32 = *(a1 + 8);
          v33 = *a1;
          *a1 = *(a1 + 12);
          *(a1 + 8) = *(a1 + 20);
          *(a1 + 12) = v33;
          *(a1 + 20) = v32;
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      v48 = *(a1 + 8);
      v49 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v49;
      *(a1 + 20) = v48;
      if (v20 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v21 = *(a1 + 20);
      v22 = *(a1 + 12);
      *(a1 + 12) = *(a1 + 24);
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v21 = *(a1 + 8);
      v22 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 8) = *(a1 + 32);
    }

    *(a1 + 24) = v22;
    *(a1 + 32) = v21;
LABEL_47:
    if (*(a2 - 2) >= *(a1 + 28))
    {
      return 1;
    }

    v50 = a2 - 3;
    v51 = *(a1 + 32);
    v52 = *(a1 + 24);
    v53 = *(a2 - 1);
    *(a1 + 24) = *(a2 - 3);
    *(a1 + 32) = v53;
    *v50 = v52;
    v50[2] = v51;
    if (*(a1 + 28) >= *(a1 + 16))
    {
      return 1;
    }

    v54 = *(a1 + 20);
    v55 = *(a1 + 12);
    *(a1 + 12) = *(a1 + 24);
    *(a1 + 20) = *(a1 + 32);
    *(a1 + 24) = v55;
    *(a1 + 32) = v54;
    goto LABEL_50;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *(a1 + 4))
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      v5 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 8) = v5;
      *(a2 - 3) = v4;
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 24);
  v13 = *(a1 + 16);
  v14 = *(a1 + 4);
  v15 = *(a1 + 28);
  if (v13 >= v14)
  {
    if (v15 < v13)
    {
      v26 = *(a1 + 20);
      v27 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
      *v12 = v27;
      *(a1 + 32) = v26;
      if (*(a1 + 16) < v14)
      {
        v28 = *(a1 + 8);
        v29 = *a1;
        *a1 = *(a1 + 12);
        *(a1 + 8) = *(a1 + 20);
        *(a1 + 12) = v29;
        *(a1 + 20) = v28;
      }
    }
  }

  else
  {
    if (v15 >= v13)
    {
      v37 = *(a1 + 8);
      v38 = *a1;
      *a1 = *(a1 + 12);
      *(a1 + 8) = *(a1 + 20);
      *(a1 + 12) = v38;
      *(a1 + 20) = v37;
      if (v15 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *(a1 + 20);
      v17 = *(a1 + 12);
      *(a1 + 12) = *v12;
      *(a1 + 20) = *(a1 + 32);
    }

    else
    {
      v16 = *(a1 + 8);
      v17 = *a1;
      *a1 = *v12;
      *(a1 + 8) = *(a1 + 32);
    }

    *v12 = v17;
    *(a1 + 32) = v16;
  }

LABEL_33:
  v39 = (a1 + 36);
  if ((a1 + 36) == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = v39[1];
    if (v42 < v12[1])
    {
      v43 = *v39;
      v44 = v39[2];
      v45 = v40;
      while (1)
      {
        v46 = a1 + v45;
        *(v46 + 36) = *(a1 + v45 + 24);
        *(v46 + 44) = *(a1 + v45 + 32);
        if (v45 == -24)
        {
          break;
        }

        v45 -= 12;
        if (v42 >= *(v46 + 16))
        {
          v47 = (a1 + v45 + 36);
          goto LABEL_41;
        }
      }

      v47 = a1;
LABEL_41:
      *v47 = v43;
      v47[1] = v42;
      v47[2] = v44;
      if (++v41 == 8)
      {
        return v39 + 3 == a2;
      }
    }

    v12 = v39;
    v40 += 12;
    v39 += 3;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t AGCLLVMUserObject::collectResourceCopyValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, unsigned int a7)
{
  v13 = *(a4 + 8);
  if (v13)
  {
    v14 = 8 * v13;
    v15 = *a4;
    while (*v15 != a3)
    {
      ++v15;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v15 = *a4;
  }

  if (v15 != (*a4 + 8 * v13))
  {
    return 0;
  }

LABEL_9:
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(a4, a3);
  v17 = *(a3 + 8);
  if (!v17)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_44;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(v17 + 24);
    v21 = v20[16];
    if (v20 && v21 == 61)
    {
      v22 = *(v20 - 8);
      if (*(*v22 + 8) != 15 && (a5 & 1) == 0 && v22[16] != 75)
      {
        LOBYTE(v21) = 61;
        goto LABEL_32;
      }

      if (((a5 | a7) & 1) == 0)
      {
        *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](a1 + 3440, *(v17 + 24)) = a2;
      }

      v18 = 1;
      v19 = a5 ^ 1;
    }

    else
    {
      if (!v20 || v21 != 60)
      {
        goto LABEL_32;
      }

      if (*(*v20 + 8) != 15 && a5 == 0)
      {
        LOBYTE(v21) = 60;
LABEL_32:
        v24 = (((v21 - 75) >> 1) | ((v21 - 75) << 7));
        v25 = v24 > 5;
        v26 = (1 << v24) & 0x33;
        if (v25 || v26 == 0)
        {
          *a6 |= a5 ^ 1;
        }

        else
        {
          v28 = AGCLLVMUserObject::collectResourceCopyValues(a1, a2, v20, a4, a5, a6, a7);
          v18 = v28;
          v19 = HIBYTE(v28);
        }

        goto LABEL_37;
      }

      if ((AGCLLVMUserObject::collectResourceCopyValues(a1, a2, *(v17 + 24), a4, a5, a6, 1) & 1) == 0)
      {
        LOBYTE(v21) = v20[16];
        goto LABEL_32;
      }

      if (((a5 | a7) & 1) == 0)
      {
        *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](a1 + 3440, v20) = a2;
      }

      v18 = 1;
    }

LABEL_37:
    v17 = *(v17 + 8);
  }

  while (v17);
  if ((v18 & 1) != 0 && *(a3 + 16) == 62)
  {
    *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](a1 + 3440, a3) = a2;
  }

LABEL_44:
  --*(a4 + 8);
  return v18 | (v19 << 8);
}

void *llvm::ValueMap<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825A7350;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>,llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,AGCArgumentBuffer::Resource const*>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,AGCArgumentBuffer::Resource const*,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v10;
    v4[5] = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 5;
}

uint64_t AGCLLVMUserObject::countNestingLevelsToInnerType(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a1 != a2)
  {
    result = 0;
    v4 = *(a1 + 8);
    do
    {
      if ((v4 & 0xFE) != 0x10)
      {
        break;
      }

      a1 = **(a1 + 16);
      v4 = *(a1 + 8);
      v5 = (v4 & 0xFE) == 0x10 ? a1 : 0;
      result = (result + 1);
    }

    while (v5 && v5 != a2);
  }

  return result;
}

void *AGCLLVMUserObject::replacePointerLoadsFromBitcast(void *result, llvm::Instruction *this)
{
  v3 = result;
  v4 = **(*this + 16);
  if (*(v4 + 8) == 15 || (result = llvm::Type::isIntegerTy(**(*this + 16)), result))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      return llvm::Instruction::eraseFromParent(this);
    }

    Cast = 0;
    v7 = *(this - 4);
    v8 = v3 + 214;
    do
    {
      v9 = *(v5 + 24);
      v5 = *(v5 + 8);
      if (v9 && *(v9 + 16) == 60)
      {
        if (!Cast)
        {
          v10 = *(*v3 - 24);
          v16 = 257;
          Load = AGCLLVMBuilder::CreateLoad((v3 + v10 + 1704), v7, v15);
          v12 = *(*v3 - 24);
          if (*(v4 + 8) == 15)
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 49;
          }

          else
          {
            v16 = 257;
            v13 = v8 + v12;
            v14 = 47;
          }

          Cast = llvm::IRBuilderBase::CreateCast(v13, v14, Load, v4, v15);
        }

        llvm::Value::replaceAllUsesWith();
        result = llvm::Instruction::eraseFromParent(v9);
      }
    }

    while (v5);
    if (!*(this + 1))
    {
      return llvm::Instruction::eraseFromParent(this);
    }
  }

  return result;
}

void *std::deque<llvm::GetElementPtrInst *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = v11 - *result;
      if (v5 - v6 < v12)
      {
        operator new();
      }

      v13 = v12 >> 2;
      if (v11 == *result)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::MDNode const**>>(v14);
    }

    result[4] = v9 - 512;
    v15 = *v6;
    result[1] = v6 + 8;
    result = std::__split_buffer<llvm::MDNode const**>::emplace_back<llvm::MDNode const**&>(result, &v15);
    v6 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v6[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<std::move_iterator<llvm::Value **>,void>(uint64_t result, char *a2, char *a3)
{
  v3 = a2;
  v4 = *(result + 8);
  if (v4 + ((a3 - a2) >> 3) > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a3 != a2)
  {
    v5 = (*result + 8 * v4);
    do
    {
      v6 = *v3;
      v3 += 8;
      *v5++ = v6;
    }

    while (v3 != a3);
  }

  *(result + 8) = v4 + ((a3 - a2) >> 3);
  return result;
}

void AGCLLVMUserObject::lowerGlobalBindingVariable(AGCLLVMUserObject *this, llvm::GlobalVariable *a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  AGCLLVMObject::replaceConstantChainWithInstrs(a2, a2);
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = this + 1712;
    while (1)
    {
      v6 = *(v4 + 24);
      v4 = *(v4 + 8);
      v7 = *(v6 + 16);
      if (v6)
      {
        v8 = v7 >= 0x1C;
      }

      else
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_30;
      }

      if (v7 != 83)
      {
        break;
      }

      v9 = *(v6 + 20);
      v10 = v9 & 0x7FFFFFF;
      if ((v9 & 0x7FFFFFF) != 0)
      {
        v11 = 0;
        v12 = v6 - 32 * v10;
        while (1)
        {
          v13 = v6 - 32 * v10;
          if ((v9 & 0x40000000) != 0)
          {
            v13 = *(v6 - 8);
          }

          if (*(v13 + 32 * v11) == a2)
          {
            break;
          }

          if (++v11 == v10)
          {
            goto LABEL_29;
          }
        }

        v16 = *this;
        if ((v9 & 0x40000000) != 0)
        {
          v12 = *(v6 - 8);
        }

        v17 = *(v12 + 32 * *(v6 + 60) + 8 * v11);
        v18 = *(v17 + 40);
        if (v18 == v17 + 40)
        {
          v15 = 0;
        }

        else
        {
          v19 = (v18 - 24);
          if (v18)
          {
            v20 = v18 - 24;
          }

          else
          {
            v20 = 0;
          }

          if (*(v20 + 16) - 29 >= 0xB)
          {
            v15 = 0;
          }

          else
          {
            v15 = v19;
          }
        }

        v14 = &v5[*(*this - 24)];
        goto LABEL_28;
      }

LABEL_29:
      GlobalBindingTablePtr = AGCLLVMUserObject::getGlobalBindingTablePtr(this);
      v22 = this + *(*this - 24);
      v23 = *(v22 + 271);
      v24 = *(v22 + 267);
      v31[0] = *a2;
      v25 = (*(*v23 + 1416))(v23);
      v26 = *(*this - 24);
      v33[0] = GlobalBindingTablePtr;
      v33[1] = a2;
      v32 = 257;
      v27 = llvm::IRBuilderBase::CreateCall(&v5[v26], *(v25 + 24), v25, v33, 2, v31);
      v28 = *(*this - 24);
      v29 = *a2;
      v32 = 257;
      llvm::IRBuilderBase::CreateCast(&v5[v28], 49, v27, v29, v31);
      llvm::User::replaceUsesOfWith();
LABEL_30:
      if (!v4)
      {
        goto LABEL_31;
      }
    }

    v14 = &v5[*(*this - 24)];
    v15 = v6;
LABEL_28:
    llvm::IRBuilderBase::SetInsertPoint(v14, v15);
    goto LABEL_29;
  }

LABEL_31:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserObject::getGlobalBindingTablePtr(AGCLLVMUserObject *this)
{
  v2 = this + *(*this - 24);
  v31 = *(v2 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (v2 + 1712));
  v33 = *(v2 + 452);
  v3 = *(v31 + 56);
  v30 = v3;
  v4 = *(this + 932);
  if (v4)
  {
    v5 = *(this + 464);
    LODWORD(v6) = ((v3 >> 4) ^ (v3 >> 9)) & (v4 - 1);
    v7 = (v5 + 16 * v6);
    v8 = *v7;
    if (v3 == *v7)
    {
LABEL_3:
      if (v7 != (v5 + 16 * v4))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v25 = 1;
      while (v8 != -4096)
      {
        v26 = v6 + v25++;
        v6 = v26 & (v4 - 1);
        v8 = *(v5 + 16 * v6);
        if (v3 == v8)
        {
          v7 = (v5 + 16 * v6);
          goto LABEL_3;
        }
      }
    }
  }

  v9 = this + *(*this - 24);
  v10 = *(v3 + 80);
  if (v10)
  {
    v11 = (v10 - 24);
  }

  else
  {
    v11 = 0;
  }

  FirstNonPHIOrDbgOrAlloca = llvm::BasicBlock::getFirstNonPHIOrDbgOrAlloca(v11);
  llvm::IRBuilderBase::SetInsertPoint((v9 + 1712), v11, FirstNonPHIOrDbgOrAlloca);
  v13 = this + *(*this - 24);
  v14 = *(this + 360);
  if (!v14)
  {
    v15 = *(v13 + 236);
    llvm::PointerType::get();
    llvm::FunctionType::get();
    v16 = *(this + *(*this - 24) + 2136);
    llvm::Module::getOrInsertFunction();
    v18 = v17;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::Function::addRetAttr();
    *(v18 + 32) = *(v18 + 32) & 0xFFFFBFC0 | 0x4007;
    v19 = this + *(*this - 24);
    v34 = *(v19 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (v19 + 1712));
    v36 = *(v19 + 452);
    v20 = *(this + *(*this - 24) + 2160);
    *&v37 = "entry";
    v38 = 259;
    operator new();
  }

  v38 = 257;
  v21 = llvm::IRBuilderBase::CreateCall((v13 + 1712), *(v14 + 24), v14, 0, 0, &v37);
  llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>,llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::FindAndConstruct(this + 3712, &v30)[1] = v21;
  v22 = this + *(*this - 24);
  v27 = v31;
  v28 = v32;
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v29 = v33;
  AGCLLVMBuilder::InsertPoint::restoreIP(&v27, (v22 + 1712));
  if (v28)
  {
    llvm::MetadataTracking::untrack();
  }

LABEL_13:
  v23 = llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>,llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::FindAndConstruct(this + 3712, &v30)[1];
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  return v23;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>,llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::FindAndConstruct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
  result = v8;
  if (v4)
  {
    return result;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::grow(a1, v7);
    v8 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), *a2, &v8);
    result = v8;
  }

  ++*(a1 + 8);
  if (*result != -4096)
  {
    --*(a1 + 12);
  }

  *result = *a2;
  result[1] = 0;
  return result;
}

uint64_t llvm::DenseMap<llvm::Function *,llvm::Value *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::Value *>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    v18 = (16 * v3);
    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          v22[1] = v20[1];
          ++*(a1 + 8);
        }

        v20 += 2;
        v19 -= 16;
      }

      while (v19);
    }

    return llvm::deallocate_buffer(v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
      v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
      v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
      v28 = vdupq_n_s64(v26);
      v29 = (result + 16);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_20E70C4F0)));
        if (v30.i8[0])
        {
          *(v29 - 2) = -4096;
        }

        if (v30.i8[4])
        {
          *v29 = -4096;
        }

        v24 += 2;
        v29 += 4;
      }

      while (v27 != v24);
    }
  }

  return result;
}

uint64_t AGCLLVMUserObject::allocateBindlessHeapIndexForRange(void *a1, unsigned int *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a2[1] - *a2 + 1;
  v7 = a1 + *(*a1 - 24);
  v8 = *(v7 + 239);
  if (v6 >= 2)
  {
    llvm::ArrayType::get(*(v7 + 239), (a2[1] - *a2 + 1));
  }

  v9 = llvm::User::operator new(0x58);
  v10 = *(a1 + *(*a1 - 24) + 2136);
  v33[0] = "agc.global_";
  v33[2] = a3;
  v34 = 1027;
  __src = v33;
  v41 = ".";
  v43 = 770;
  v11 = *a2;
  p_src = &__src;
  v37[0] = v11;
  v38 = 2050;
  llvm::GlobalVariable::GlobalVariable();
  llvm::GlobalObject::setSection();
  llvm::GlobalObject::setAlignment();
  if (v6 <= 1)
  {
    __src = llvm::ValueAsMetadata::get();
    v26 = *(a3 + 24);
    v27 = *(a1 + *(*a1 - 24) + 1904);
    llvm::ConstantInt::get();
    v40 = llvm::ValueAsMetadata::get();
    v28 = *a2;
    v29 = *(a1 + *(*a1 - 24) + 1904);
    llvm::ConstantInt::get();
    v41 = llvm::ValueAsMetadata::get();
    p_src = v37;
    v36 = 0x500000000;
    llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&p_src, &__src, v42);
    v30 = a1 + *(*a1 - 24);
    v31 = *(v30 + 270);
    Impl = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v30 + 4896), Impl);
    v23 = p_src;
    if (p_src == v37)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  p_src = v37;
  v36 = 0x2000000000;
  v12 = llvm::ValueAsMetadata::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&p_src, v12);
  v13 = *(a3 + 24);
  v14 = *(a1 + *(*a1 - 24) + 1904);
  llvm::ConstantInt::get();
  v15 = llvm::ValueAsMetadata::get();
  for (i = 0; i < a2[1] - *a2 + 1; ++i)
  {
    __src = v15;
    v40 = 0;
    v17 = *(a1 + *(*a1 - 24) + 1904);
    llvm::ConstantInt::get();
    v40 = llvm::ValueAsMetadata::get();
    v18 = *(a1 + *(*a1 - 24) + 2160);
    v19 = llvm::MDTuple::getImpl();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&p_src, v19);
  }

  v20 = a1 + *(*a1 - 24);
  v21 = *(v20 + 270);
  v22 = llvm::MDTuple::getImpl();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back((v20 + 4896), v22);
  v23 = p_src;
  if (p_src != v37)
  {
LABEL_8:
    free(v23);
  }

LABEL_9:
  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::Type **AGCLLVMUserObject::buildNonConstantSamplerArgumentPointer(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = &a1[8 * a3];
  v6 = v5[237];
  if (v6)
  {
    v8 = v5[241];
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 1896);
    v93 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(v9 + 1712, 47, a2, v10, v91);
    v12 = *a1;
    v13 = (a1 + *(*a1 - 24));
    if (!a3 && *(Cast + 16) >= 0x15u)
    {
      v14 = v13[234];
      v15 = llvm::PointerType::get();
      v16 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + *(*a1 - 24) + 1704, "llvm.agx.samplerState", 21, v15, v15, *(a1 + *(*a1 - 24) + 1912));
      v17 = a1 + *(*a1 - 24);
      v93 = 257;
      v90[0] = llvm::IRBuilderBase::CreateCast(v17 + 1712, 49, v6, v15, v91);
      v18 = a1 + *(*a1 - 24);
      v19 = *(v18 + 1912);
      v89 = 257;
      v90[1] = llvm::IRBuilderBase::CreateCast(v18 + 1712, 39, Cast, v19, &__p);
      v85 = 257;
      AllocaInEntryBlock = llvm::IRBuilderBase::CreateCall(v17 + 1712, *(v16 + 24), v16, v90, 2, &__src);
      v21 = a1 + *(*a1 - 24);
      v22 = *(*(v21 + 2168) + 1792);
      v23 = llvm::PointerType::get();
      v93 = 257;
LABEL_5:
      Load = llvm::IRBuilderBase::CreateCast(v21 + 1712, 49, AllocaInEntryBlock, v23, v91);
LABEL_25:
      AllocaInEntryBlock = Load;
      goto LABEL_26;
    }

    if (a3 == 2 && (*(v13[271] + 1869) & 1) == 0)
    {
      if ((*(a1 + 15) & 1) != 0 || (v28 = AGCLLVMUserObject::needsDylibResources(a1), v12 = *a1, v28))
      {
        v29 = *(a1 + *(v12 - 24) + 2168);
        (*(*v29 + 488))(v29);
        v30 = a1 + *(*a1 - 24);
        v31 = *(v30 + 1896);
        v32 = llvm::ConstantInt::get();
        v33 = AGCLLVMBuilder::buildICmpSel((v30 + 1704), Cast, v32, 36);
        v34 = v33;
        v35 = (a1 + *(*a1 - 24));
        v36 = v35[239];
        v37 = a1[366];
        if (!v37)
        {
          v80 = v33;
          std::string::basic_string[abi:nn200100]<0>(&__p, "agc.global_sampler_unique_id_table");
          v38 = llvm::User::operator new(0x58);
          v39 = a1 + *(*a1 - 24);
          v40 = *(v39 + 2136);
          v41 = *(v39 + 1904);
          v93 = 260;
          v91[0] = &__p;
          llvm::GlobalVariable::GlobalVariable();
          llvm::GlobalObject::setSection();
          llvm::GlobalObject::setAlignment();
          __src = llvm::ValueAsMetadata::get();
          v42 = *(a1 + *(*a1 - 24) + 1904);
          llvm::ConstantInt::get();
          v82 = llvm::ValueAsMetadata::get();
          v43 = *(a1 + *(*a1 - 24) + 1904);
          llvm::ConstantInt::get();
          v83 = llvm::ValueAsMetadata::get();
          v91[0] = v92;
          v91[1] = 0x300000000;
          llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v91, &__src, v84);
          v44 = a1 + *(*a1 - 24);
          v45 = *(v44 + 2160);
          Impl = llvm::MDTuple::getImpl();
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v44 + 4896, Impl);
          llvm::ValueHandleBase::operator=((a1 + 364), v38);
          if (v91[0] != v92)
          {
            free(v91[0]);
          }

          if (v88 < 0)
          {
            operator delete(__p);
          }

          v37 = a1[366];
          v34 = v80;
        }

        GlobalBindingTablePtr = AGCLLVMUserObject::getGlobalBindingTablePtr(a1);
        v48 = a1 + *(*a1 - 24);
        v49 = *(v48 + 2168);
        v50 = *(v48 + 2136);
        v91[0] = *v37;
        v51 = (*(*v49 + 1416))(v49, v50, v91);
        v52 = a1 + *(*a1 - 24);
        __p = GlobalBindingTablePtr;
        v87 = v37;
        v93 = 257;
        v53 = llvm::IRBuilderBase::CreateCall(v52 + 1712, *(v51 + 24), v51, &__p, 2, v91);
        v54 = a1 + *(*a1 - 24);
        v55 = *(v54 + 1912);
        v56 = llvm::PointerType::get();
        v93 = 257;
        v57 = llvm::IRBuilderBase::CreateCast(v54 + 1712, 49, v53, v56, v91);
        v93 = 257;
        GEP = llvm::IRBuilderBase::CreateGEP((v35 + 214), v36, v57, v34, v91);
        v89 = 257;
        AGCLLVMBuilder::CreateLoad((v35 + 213), GEP, &__p);
      }

      else
      {
        v61 = *a1;
        v62 = *(*(v6 + 24) + 32);
        v63 = a1 + *(v12 - 24);
        v64 = *(v63 + 1896);
        v65 = llvm::ConstantInt::get();
        v66 = AGCLLVMBuilder::buildICmpSel((v63 + 1704), Cast, v65, 36);
        v67 = a1 + *(*a1 - 24);
        v68 = *(v67 + 1912);
        v69 = *(v67 + 1904);
        __src = llvm::ConstantInt::get();
        v82 = v66;
        v93 = 257;
        llvm::Type::isOpaquePointerTy(*v6);
        v70 = llvm::IRBuilderBase::CreateGEP(v67 + 1712, v8, v6, &__src, 2, v91);
        v89 = 257;
        llvm::Type::isOpaquePointerTy(*v70);
        llvm::IRBuilderBase::CreateAlignedLoad((v67 + 1712), v68, v70, 0, &__p);
      }

      v71 = a1 + *(*a1 - 24);
      v72 = *(v71 + 1912);
      v93 = 257;
      llvm::IRBuilderBase::CreateCast(v71 + 1712, 47, a2, v72, v91);
      v73 = a1 + *(*a1 - 24);
      v74 = *(v73 + 1896);
      v75 = llvm::ConstantInt::get();
      v93 = 257;
      llvm::IRBuilderBase::CreateICmp((v73 + 1712), 36, Cast, v75, v91);
      v89 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      AllocaInEntryBlock = AGCLLVMBuilder::createAllocaInEntryBlock((a1 + *(*a1 - 24) + 1704), *(a1 + *(*a1 - 24) + 1912));
      llvm::IRBuilderBase::CreateAlignedStore((a1 + *(*a1 - 24) + 1712), Select, AllocaInEntryBlock, 0);
      goto LABEL_24;
    }

    v59 = v13[238];
    __p = llvm::ConstantInt::get();
    v87 = Cast;
    v93 = 257;
    llvm::Type::isOpaquePointerTy(*v6);
    AllocaInEntryBlock = llvm::IRBuilderBase::CreateGEP((v13 + 214), v8, v6, &__p, 2, v91);
    if (!a3)
    {
      v21 = a1 + *(*a1 - 24);
      v60 = *(*(v21 + 2168) + 1792);
      v23 = llvm::PointerType::get();
      v93 = 257;
      goto LABEL_5;
    }
  }

  else
  {
    v25 = v5 + 235;
    v26 = v25[4];
    v27 = *(v25 + 14);
    llvm::PointerType::get();
    AllocaInEntryBlock = llvm::UndefValue::get();
  }

  if (a3 == 2)
  {
LABEL_24:
    v77 = a1 + *(*a1 - 24);
    v93 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v77 + 1704), AllocaInEntryBlock, v91);
    goto LABEL_25;
  }

LABEL_26:
  v78 = *MEMORY[0x277D85DE8];
  return AllocaInEntryBlock;
}

llvm::Type **AGCLLVMUserObject::buildConstantSamplerArgumentPointer(void *a1, uint64_t a2, unsigned int a3)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v5 = &a1[8 * a3];
  v6 = v5[269];
  if (v6)
  {
    v7 = v5[273];
    v8 = a1 + *(*a1 - 24);
    v9 = *(v8 + 237);
    v34 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v8 + 1712), 47, a2, v9, v33);
    v11 = a1 + *(*a1 - 24);
    if (!a3 && *(Cast + 16) >= 0x15u)
    {
      v12 = *(v11 + 234);
      v13 = llvm::PointerType::get();
      v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1 + *(*a1 - 24) + 1704, "llvm.agx.samplerState", 21, v13, v13, *(a1 + *(*a1 - 24) + 1912));
      v15 = a1 + *(*a1 - 24);
      v34 = 257;
      v37[0] = llvm::IRBuilderBase::CreateCast((v15 + 1712), 49, v6, v13, v33);
      v16 = a1 + *(*a1 - 24);
      v17 = *(v16 + 239);
      v36 = 257;
      v37[1] = llvm::IRBuilderBase::CreateCast((v16 + 1712), 39, Cast, v17, v35);
      v32[16] = 257;
      GEP = llvm::IRBuilderBase::CreateCall((v15 + 1712), *(v14 + 24), v14, v37, 2, v32);
      v19 = a1 + *(*a1 - 24);
      v20 = *(*(v19 + 271) + 1792);
      v21 = llvm::PointerType::get();
      v34 = 257;
LABEL_10:
      AlignedLoad = llvm::IRBuilderBase::CreateCast((v19 + 1712), 49, GEP, v21, v33);
      goto LABEL_11;
    }

    v25 = *(v11 + 238);
    v35[0] = llvm::ConstantInt::get();
    v35[1] = Cast;
    v34 = 257;
    llvm::Type::isOpaquePointerTy(*v6);
    GEP = llvm::IRBuilderBase::CreateGEP((v11 + 1712), v7, v6, v35, 2, v33);
    if (!a3)
    {
      v19 = a1 + *(*a1 - 24);
      v29 = *(*(v19 + 271) + 1792);
      v21 = llvm::PointerType::get();
      v34 = 257;
      goto LABEL_10;
    }
  }

  else
  {
    v22 = v5 + 267;
    v23 = v22[4];
    v24 = *(v22 + 14);
    llvm::PointerType::get();
    GEP = llvm::UndefValue::get();
  }

  if (a3 == 2)
  {
    v26 = (a1 + *(*a1 - 24));
    v27 = a1[255];
    v34 = 257;
    llvm::Type::isOpaquePointerTy(*GEP);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v26 + 214, v27, GEP, 0, v33);
LABEL_11:
    GEP = AlignedLoad;
  }

  v30 = *MEMORY[0x277D85DE8];
  return GEP;
}

uint64_t AGCLLVMUserObject::buildEmulatedIsF16Format(void *a1, __int128 *a2, AGCLLVMUserObject *a3)
{
  v6 = a1 + *(*a1 - 24);
  v20 = *a2;
  v21 = *(a2 + 2);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v20, (v6 + 1712));
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (a1 + *(*a1 - 24));
  v8 = AGCLLVMUserObject::buildImageArgumentPointer(a1, a3, 4u);
  Load = AGCLLVMBuilder::CreateLoad(v7 + 213, v8, "packedFormat");
  v10 = a1 + *(*a1 - 24);
  v11 = *(v10 + 238);
  v12 = llvm::ConstantInt::get();
  v19 = 257;
  v13 = llvm::IRBuilderBase::CreateAnd((v10 + 1712), Load, v12, v18);
  v14 = *(a1 + *(*a1 - 24) + 1904);
  v15 = llvm::ConstantInt::get();
  v17[16] = 257;
  return llvm::IRBuilderBase::CreateICmp(v10 + 214, 33, v13, v15, v17);
}

uint64_t AGCLLVMBuilder::CreateLoad(unsigned int **this, llvm::Type **a2, const char *a3)
{
  v6 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v6)
  {
    llvm::Type::isOpaquePointerTy(*a2);
  }

  v7 = 1;
  v11 = 1;
  if (*a3)
  {
    v9 = a3;
    v7 = 3;
  }

  v10 = v7;
  return llvm::IRBuilderBase::CreateAlignedLoad(this + 1, v6, a2, 0, &v9);
}

uint64_t AGCLLVMUserObject::createGetDispatchPrivateBufferPtrFunction(unsigned int)::$_1::operator()(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 4000);
  v4 = *a1 + *(**a1 - 24);
  v5 = *(v4 + 2168);
  v20 = *(v4 + 1760);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v21, (v4 + 1712));
  v22 = *(v4 + 1808);
  v6 = (*(*v5 + 984))(v5, &v20, v3);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = v2 + *(*v2 - 24);
  v8 = *(a1 + 16);
  v19 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v7 + 1712), 48, v6, v8, v18);
  v10 = v2 + *(*v2 - 24);
  v11 = *(v10 + 239);
  v12 = *(a1 + 8);
  v13 = *(v10 + 238);
  v23[0] = llvm::ConstantInt::get();
  v19 = 257;
  llvm::Type::isOpaquePointerTy(*Cast);
  v14 = llvm::IRBuilderBase::CreateInBoundsGEP((v10 + 1712), v11, Cast, v23, 1, v18);
  v17[16] = 257;
  llvm::Type::isOpaquePointerTy(*v14);
  result = llvm::IRBuilderBase::CreateAlignedLoad(v10 + 214, v11, v14, 0, v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMUserObject::createGetDispatchPrivateBufferPtrFunction(unsigned int)::$_0::operator()(uint64_t a1)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a1 + *(**a1 - 24);
  v4 = (*(*v3 + 80))(v3);
  v5 = (v2 + *(*v2 - 24));
  if (v4 == 8)
  {
    v6 = v5[236];
    v7 = llvm::PointerType::get();
    v8 = (v2 + *(*v2 - 24));
    DylibBuiltinPerCommandStateVar = AGCLLVMObject::getDylibBuiltinPerCommandStateVar(v8);
    v52 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v8 + 213), DylibBuiltinPerCommandStateVar, v51);
    v11 = *(a1 + 16);
    v50 = 257;
    PointerCast = llvm::IRBuilderBase::CreatePointerCast(v8 + 214, Load, v11, v49);
    v13 = v2 + *(*v2 - 24);
    v14 = *(v13 + 271);
    v46 = *(v13 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v47, (v13 + 1712));
    v48 = *(v13 + 452);
    v15 = (*(*v14 + 968))(v14, &v46);
    if (v47)
    {
      llvm::MetadataTracking::untrack();
    }

    v16 = v2 + *(*v2 - 24);
    v17 = (*(**(v16 + 271) + 696))(*(v16 + 271));
    (*(*v17 + 1904))(v17, 6);
    v18 = *(v16 + 238);
    v19 = llvm::ConstantInt::get();
    v52 = 257;
    llvm::IRBuilderBase::CreateICmp(v16 + 214, 32, v15, v19, v51);
    v20 = v2 + *(*v2 - 24);
    v21 = *(v20 + 236);
    v52 = 257;
    v22 = llvm::IRBuilderBase::CreatePointerCast(v20 + 214, PointerCast, v7, v51);
    v23 = *(v2 + *(*v2 - 24) + 1904);
    v24 = llvm::ConstantInt::get();
    v50 = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v20 + 1712), v21, v22, v24, v49);
    v26 = (v2 + *(*v2 - 24));
    v27 = *(a1 + 16);
    v52 = 257;
    llvm::IRBuilderBase::CreatePointerCast(v26 + 214, GEP, v27, v51);
    v28 = v2 + *(*v2 - 24);
    v52 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v30 = v2 + *(*v2 - 24);
    v31 = *(v30 + 239);
    v32 = *(a1 + 12);
    v33 = *(v30 + 238);
    v53[0] = llvm::ConstantInt::get();
    v52 = 257;
    llvm::Type::isOpaquePointerTy(*Select);
    v34 = llvm::IRBuilderBase::CreateInBoundsGEP((v30 + 1712), v31, Select, v53, 1, v51);
    v50 = 257;
    llvm::Type::isOpaquePointerTy(*v34);
    result = llvm::IRBuilderBase::CreateAlignedLoad(v30 + 214, v31, v34, 0, v49);
  }

  else
  {
    v36 = *(a1 + 8);
    v37 = v2 + 24 * v36;
    v38 = *(v37 + 376);
    if (!v38)
    {
      v39 = (v37 + 2992);
      if ((*(*v5 + 80))(v5) == 7 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 22 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 8 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 3 || (*(*(v2 + *(*v2 - 24)) + 80))(v2 + *(*v2 - 24)) == 4)
      {
        v40 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
        v41 = (*(*v40 + 776))(v40);
      }

      else
      {
        v45 = *(*(v2 + *(*v2 - 24) + 2168) + 920);
        v41 = (*(*v45 + 392))(v45);
      }

      v42 = *(v2 + *(*v2 - 24) + 1912);
      v51[0] = "agc.private_dispatch_buffer";
      v52 = 259;
      GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(v2, v42, v51, v41 + v36, 0, 5, 0);
      llvm::ValueHandleBase::operator=(v39, GlobalBufferBinding);
      v38 = *(v39 + 2);
    }

    v52 = 257;
    result = AGCLLVMBuilder::CreateLoad((v5 + 213), v38, v51);
  }

  v44 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMUserObject::createSamplerArrays(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v4 = 0x27C8D7000uLL;
    {
      v4 = 0x27C8D7000;
      if (v24)
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
        v4 = 0x27C8D7000;
      }
    }

    if (*(v4 + 2944) == 1 && (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", a2)) != 0 && *Value != 48 && atoi(Value) && *(*(a1 + *(*a1 - 24) + 2168) + 1869) != 1 || *(*(a1 + *(*a1 - 24) + 2168) + 1900) || (*(a1 + 15) & 1) != 0)
    {
      v6 = *(a1 + 1912);
      v7 = *(a1 + 1936);
      v8 = llvm::PointerType::get();
      NullValue = llvm::Constant::getNullValue(v8, v9);
      llvm::ValueHandleBase::operator=((a1 + 1880), NullValue);
    }

    else
    {
      v17 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 1880);
      if (*(a1 + 3856) == 1)
      {
        AGCLLVMObject::setDylibLinkage(v17, v18);
      }
    }

    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 1944);
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 2008);
    v11 = (a1 + 656);
    llvm::SmallVectorImpl<unsigned int>::resizeImpl<false>(v11, *(a2 + 8));
    if (*(a2 + 8))
    {
      v12 = 0;
      v13 = *a2;
      v14 = *v11;
      do
      {
        v15 = *v13;
        v13 += 6;
        *(v14 + 4 * v12++) = v15;
      }

      while (v12 < *(a2 + 8));
    }
  }

  else
  {
    v16 = *(a1 + *(*a1 - 24) + 2168);
    if ((*(v16 + 1869) & 1) == 0 && !*(v16 + 1900))
    {
      v19 = *(a1 + 1912);
      v20 = *(a1 + 1936);
      v21 = llvm::PointerType::get();
      v23 = llvm::Constant::getNullValue(v21, v22);
      llvm::ValueHandleBase::operator=((a1 + 1880), v23);
      *(a1 + 1928) = *(a1 + 1912);

      AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Sampler::AllocationInfo>(a1, a2, a1 + 2008);
    }
  }
}

void AGCLLVMUserObject::createTextureArrays(void *a1, uint64_t a2)
{
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x400000000;
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = 32 * v4;
    do
    {
      if ((*(v5 + 8) & 2) != 0)
      {
        v7 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(&v13, v5);
        v8 = v13 + 32 * v14;
        v9 = v7[1];
        *v8 = *v7;
        v8[1] = v9;
        LODWORD(v14) = v14 + 1;
      }

      v5 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  v10 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 155));
  AGCLLVMUserObject::setupTextureArrayRasterOrderGroup(a1, a2, v10);
  v11 = AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, &v13, (a1 + 163));
  AGCLLVMUserObject::setupTextureArrayRasterOrderGroup(a1, &v13, v11);
  if (*(*(a1 + *(*a1 - 24) + 2168) + 1869))
  {
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 171));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 179));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 195));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 203));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 187));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 211));
    AGCLLVMUserObject::createIndirectResourceArray<AGCLLVMUserObject::Texture::AllocationInfo>(a1, a2, (a1 + 227));
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMUserObject::setupTextureArrayRasterOrderGroup(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 4;
    do
    {
      if (*(*a2 + v8) != -1)
      {
        v9 = v6 + *(*v6 - 24);
        if ((v9[2284] & 1) == 0)
        {
          v11 = std::__throw_bad_optional_access[abi:nn200100]();
          return AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(v11);
        }

        v10 = *(v9 + 570);
        result = (*(**(v9 + 271) + 176))(*(v9 + 271), a3);
      }

      ++v7;
      v8 += 32;
    }

    while (v3 != v7);
  }

  return result;
}

void *AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(void *result, int a2)
{
  if (a2 != -1)
  {
    v3 = result + *(*result - 24);
    if (v3[2284])
    {
      v4 = *(v3 + 570);
      v5 = *(**(v3 + 271) + 176);

      return v5();
    }

    else
    {
      v6 = std::__throw_bad_optional_access[abi:nn200100]();
      return llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](v6, v7);
    }
  }

  return result;
}

uint64_t llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t a1, llvm::Value *a2)
{
  llvm::CallbackVH::CallbackVH(&v7, a2);
  v7 = &unk_2825BDF98;
  v10 = a1;
  v11 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(*a1, *(a1 + 16), v9, &v11);
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, &v7, v11);
    llvm::ValueHandleBase::operator=((v4 + 8), v8);
    *(v4 + 32) = v10;
    *(v4 + 40) = 0;
  }

  if (v9 != -8192 && v9 != -4096 && v9 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList(v8);
  }

  return v4 + 40;
}

uint64_t std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(uint64_t result, unint64_t a2)
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
      v4 = v2[6];
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

BOOL AGCLLVMUserObject::replaceTensorInput<llvm::Argument>(AGCLLVMUserObject *a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  v21 = a3;
  v20 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v6 = parseMDBuffer(a4, 1, &v21, &v20 + 1, &v20, &v19, &v17, &v16, &v15, &v18, &v14);
  v7 = HIDWORD(v20) < 2 && v6;
  v8 = (a1 + *(*a1 - 24));
  if (v7)
  {
    v9 = *(*(a1 + 21) + 80);
    if (v9)
    {
      v10 = v9 - 24;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v10 + 40);
    if (v11)
    {
      v12 = (v11 - 24);
    }

    else
    {
      v12 = 0;
    }

    llvm::IRBuilderBase::SetInsertPoint(&v8[71].__r_.__value_.__r.__words[1], v12);
    AGCLLVMUserObject::setupBufferArgumentData(a1, *a2, v21, 0xFFFFFFFF, 0, v16, 0xFFFFFFFFLL);
    llvm::Value::replaceAllUsesWith();
  }

  else
  {
    std::string::append(v8 + 69, " Failed to parse the Tensor Metadata ");
  }

  return v7;
}

uint64_t AGCLLVMUserObject::getBindlessConstantSampler(int8x8_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v65 = a2;
  *(&v65 + 1) = a3;
  v6 = a1[119];
  v7 = a1[118];
  if (v7 != v6)
  {
    while (*v7 != a2 || v7[1] != a3)
    {
      v7 += 2;
      if (v7 == v6)
      {
        v7 = a1[119];
        break;
      }
    }
  }

  if (v6 == v7)
  {
    std::vector<AIRConstSampler>::push_back[abi:nn200100](&a1[118], &v65);
  }

  if (a1[487].i8[0] == 1)
  {
    v8 = vcnt_s8(a1[488]);
    v9 = a1 + *(*a1 - 24);
    v10 = *(v9 + 238);
    v11 = llvm::ConstantInt::get();
    LOWORD(v62[0].__locale_) = 257;
    return llvm::IRBuilderBase::CreateCast((v9 + 1712), 48, v11, a4, v59);
  }

  else
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v59);
    *(&v62[1].__locale_ + *(v60 - 24)) = 16;
    std::operator<<[abi:nn200100]<std::char_traits<char>>(&v60, 48);
    v53[0] = &v65;
    v54 = 0;
    LOWORD(v56[0].__locale_) = 270;
    llvm::Twine::str(&__p, v53);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v60, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v53);
    *(&v56[1].__locale_ + *(v54 - 24)) = 16;
    std::operator<<[abi:nn200100]<std::char_traits<char>>(&v54, 48);
    __p.__r_.__value_.__r.__words[0] = &v65 + 8;
    __p.__r_.__value_.__r.__words[2] = 0;
    v50 = 270;
    llvm::Twine::str(v51, &__p);
    if (v52 >= 0)
    {
      v15 = v51;
    }

    else
    {
      v15 = v51[0];
    }

    if (v52 >= 0)
    {
      v16 = HIBYTE(v52);
    }

    else
    {
      v16 = v51[1];
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v54, v15, v16);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    std::stringbuf::str();
    v17 = std::string::insert(&v47, 0, "agc.const_sampler_heap_index_");
    v18 = v17->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v48, "_");
    v20 = v19->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = *&v19->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::stringbuf::str();
    if ((v46 & 0x80u) == 0)
    {
      v21 = v45;
    }

    else
    {
      v21 = v45[0];
    }

    if ((v46 & 0x80u) == 0)
    {
      v22 = v46;
    }

    else
    {
      v22 = v45[1];
    }

    v23 = std::string::append(&__p, v21, v22);
    v24 = v23->__r_.__value_.__r.__words[2];
    *v51 = *&v23->__r_.__value_.__l.__data_;
    v52 = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    v25 = *(&a1[267] + *(*a1 - 24));
    GlobalVariable = llvm::Module::getGlobalVariable();
    if (!GlobalVariable)
    {
      GlobalVariable = llvm::User::operator new(0x58);
      v27 = a1 + *(*a1 - 24);
      v28 = *(v27 + 267);
      v29 = *(v27 + 238);
      v50 = 260;
      __p.__r_.__value_.__r.__words[0] = v51;
      v30 = llvm::GlobalVariable::GlobalVariable();
      *(v30 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      llvm::DataLayout::getPrefTypeAlignment(&a1[28], *(&a1[238] + *(*a1 - 24)));
      llvm::GlobalObject::setAlignment();
      v31 = a1 + *(*a1 - 24);
      v32 = *(v31 + 268);
      v33 = AGCLLVMBuilder::buildGlobalMetadata((v31 + 1704), GlobalVariable);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v32, v33);
    }

    if (llvm::Type::isOpaquePointerTy(*GlobalVariable))
    {
      v34 = llvm::PointerType::get(*(&a1[270] + *(*a1 - 24)), (*(a4 + 8) >> 8));
    }

    else
    {
      v35 = *(GlobalVariable + 3);
      v36 = *(a4 + 8);
      v34 = llvm::PointerType::get();
    }

    v37 = a1 + *(*a1 - 24);
    v50 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v37 + 1712), 50, GlobalVariable, v34, &__p);
    v39 = a1 + *(*a1 - 24);
    v50 = 257;
    v12 = llvm::IRBuilderBase::CreateCast((v39 + 1712), 49, Cast, a4, &__p);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    v53[0] = *MEMORY[0x277D82818];
    v40 = v53[0];
    v41 = *(MEMORY[0x277D82818] + 72);
    v42 = *(MEMORY[0x277D82818] + 64);
    *(v53 + *(v53[0] - 24)) = v42;
    v43 = v41;
    v54 = v41;
    v55 = MEMORY[0x277D82878] + 16;
    if (v57 < 0)
    {
      operator delete(v56[7].__locale_);
    }

    v55 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v56);
    std::iostream::~basic_iostream();
    MEMORY[0x20F331D40](&v58);
    v59[0] = v40;
    *(v59 + *(v40 - 24)) = v42;
    v60 = v43;
    v61 = MEMORY[0x277D82878] + 16;
    if (v63 < 0)
    {
      operator delete(v62[7].__locale_);
    }

    v61 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v62);
    std::iostream::~basic_iostream();
    MEMORY[0x20F331D40](&v64);
  }

  return v12;
}

uint64_t AGCLLVMUserObject::getOrCreateConstantSamplerGlobal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  *&v28 = a2;
  *(&v28 + 1) = a3;
  v29[0] = "agc.const_sampler_state_struct_ptr_";
  v30 = &v28;
  v31 = 3587;
  llvm::Twine::str(&__p, v29);
  v4 = *(a1 + *(*a1 - 24) + 2136);
  GlobalVariable = llvm::Module::getGlobalVariable();
  if (!GlobalVariable)
  {
    v8 = (*(a1 + 952) - *(a1 + 944)) >> 4;
    std::vector<AIRConstSampler>::push_back[abi:nn200100](a1 + 944, &v28);
    v9 = (*(*a1 + 424))(a1);
    v10 = 1792;
    if (v9)
    {
      v10 = 1800;
    }

    v11 = *(*(a1 + *(*a1 - 24) + 2168) + v10);
    v12 = *(a1 + 15);
    v13 = llvm::User::operator new(0x58);
    v14 = *(a1 + *(*a1 - 24) + 2136);
    v15 = "agc.const_sampler_state_words_";
    if (v12)
    {
      v15 = "_agx_const_ss.";
    }

    v29[0] = v15;
    v30 = &v28;
    v31 = 3587;
    v16 = llvm::GlobalVariable::GlobalVariable();
    *(v16 + 80) |= 1u;
    llvm::GlobalObject::setSection();
    v17 = __clz(*(*(a1 + *(*a1 - 24) + 2168) + 1812)) ^ 0x13F;
    llvm::GlobalObject::setAlignment();
    v18 = a1 + *(*a1 - 24);
    v19 = *(v18 + 2144);
    v20 = AGCLLVMBuilder::buildGlobalMetadata((v18 + 1704), v13);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v19, v20);
    v21 = llvm::PointerType::get();
    v22 = *v21;
    v29[0] = v21;
    llvm::StructType::get();
    v29[0] = v13;
    llvm::ConstantStruct::get();
    GlobalVariable = llvm::User::operator new(0x58);
    v23 = *(a1 + *(*a1 - 24) + 2136);
    v31 = 260;
    v29[0] = &__p;
    v24 = llvm::GlobalVariable::GlobalVariable();
    *(v24 + 80) |= 1u;
    llvm::GlobalVariable::setInitializer();
    v29[0] = 4;
    v29[1] = 0;
    v30 = GlobalVariable;
    v25 = GlobalVariable;
    if (GlobalVariable != -8192)
    {
      v25 = GlobalVariable;
      if (GlobalVariable != -4096)
      {
        v25 = GlobalVariable;
        if (GlobalVariable)
        {
          llvm::ValueHandleBase::AddToUseList(v29);
          v25 = v30;
        }
      }
    }

    std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>(a1 + 816, v25);
    if (v30 != -8192 && v30 != -4096 && v30)
    {
      llvm::ValueHandleBase::RemoveFromUseList(v29);
    }
  }

  if (v27 < 0)
  {
    operator delete(__p);
  }

  v6 = *MEMORY[0x277D85DE8];
  return GlobalVariable;
}

void AGCLLVMUserObject::handleGLIndirectSamplerFunction(AGCLLVMUserObject *this, llvm::Function *a2, unsigned int a3, unsigned int a4)
{
  v157[16] = *MEMORY[0x277D85DE8];
  v155 = v157;
  v156 = 0x1000000000;
  v4 = *(a2 + 1);
  if (!v4)
  {
    goto LABEL_238;
  }

  do
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v155, *(v4 + 24));
    v4 = *(v4 + 8);
  }

  while (v4);
  v7 = v155;
  if (!v156)
  {
    goto LABEL_236;
  }

  v8 = &v155[8 * v156];
  v137 = a3;
  v139 = 4 * a3;
  v140 = this + 1712;
  v9 = a4;
  v135 = v8;
  do
  {
    v10 = *v7;
    v11 = *v7 - 32 * (*(*v7 + 20) & 0x7FFFFFF);
    if (v9)
    {
      v12 = *(v11 + 32 * a4);
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v11 + v139 * 8);
    if (*(v13 + 16) != 83)
    {
      goto LABEL_60;
    }

    v14 = v10[5];
    v15 = *(v14 + 1);
    if (v15)
    {
      v16 = *(v14 + 1);
      while (1)
      {
        v17 = *(v16 + 24);
        v18 = *(v17 + 16);
        v19 = v17 && v18 >= 0x1C;
        if (v19 && v18 - 29 <= 0xA)
        {
          break;
        }

        v16 = *(v16 + 8);
        if (!v16)
        {
LABEL_50:
          while (1)
          {
            v35 = *(v15 + 24);
            v36 = *(v35 + 16);
            v37 = v35 && v36 >= 0x1C;
            if (v37 && v36 - 40 > 0xFFFFFFF4)
            {
              break;
            }

            v15 = *(v15 + 8);
            if (!v15)
            {
              goto LABEL_58;
            }
          }

          v40 = *(v13 + 20);
          if ((v40 & 0x7FFFFFF) != 1)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_20E4E1000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "All predecessors of the indirect sampler call have an unconditional branch, may need more code changes to handle this", buf, 2u);
            }

            abort();
          }

          if ((v40 & 0x40000000) != 0)
          {
            v41 = *(v13 - 8);
          }

          else
          {
            v41 = (v13 - 32);
          }

          v42 = *v41;
          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v13);
          if (v12)
          {
            if (*(v12 + 16) == 83)
            {
              v10 = v12;
            }

            else
            {
              v10 = 0;
            }

            v43 = *(v10 + 5);
            if ((v43 & 0x40000000) != 0)
            {
              v44 = *(v10 - 1);
            }

            else
            {
              v44 = &v10[-4 * (v43 & 0x7FFFFFF)];
            }

            v47 = *v44;
            goto LABEL_59;
          }

          goto LABEL_60;
        }
      }

      v21 = 0;
LABEL_21:
      v22 = *(v17 + 40);
      v23 = *(v22 + 40);
      v24 = v23 - 24;
      if (v23)
      {
        v25 = v23 - 24;
      }

      else
      {
        v25 = 0;
      }

      v26 = *(v25 + 16) - 40;
      if (v26 < 0xFFFFFFF5)
      {
        v24 = 0;
      }

      v27 = *(v24 + 16) == 30 && v26 >= 0xFFFFFFF5;
      if (!v27 || (*(v23 - 4) & 0x7FFFFFF) != 1)
      {
        v21 = v22;
      }

      while (1)
      {
        v16 = *(v16 + 8);
        if (!v16)
        {
          break;
        }

        v17 = *(v16 + 24);
        v28 = *(v17 + 16);
        if (v17)
        {
          v29 = v28 >= 0x1C;
        }

        else
        {
          v29 = 0;
        }

        if (v29 && v28 - 29 < 0xB)
        {
          goto LABEL_21;
        }
      }

      if (!v21)
      {
        goto LABEL_50;
      }

      v32 = (v21 + 40);
      v31 = *(v21 + 40);
      if (v31 == (v21 + 40))
      {
        v33 = 0;
      }

      else
      {
        v33 = v31 - 3;
        if (v31)
        {
          v34 = v31 - 3;
        }

        else
        {
          v34 = 0;
        }

        if (*(v34 + 16) - 29 >= 0xB)
        {
          v33 = 0;
        }
      }

      v45 = *(v33 + 5);
      if ((v45 & 0x7FFFFFF) != 0)
      {
        v46 = (v45 & 0x40000000) != 0 ? *(v33 - 1) : &v33[-4 * (v45 & 0x7FFFFFF)];
        v48 = *v46;
        if (*(*v46 + 16) == 60)
        {
          v49 = *(v48 - 4);
          v50 = *(*v49 + 8);
          if ((v50 & 0xFE) == 0x12)
          {
            v50 = *(**(*v49 + 16) + 8);
          }

          if (v50 <= 0xFF && v49[16] == 59)
          {
            while (1)
            {
              v51 = (v31 - 3);
              if (!v31)
              {
                v51 = 0;
              }

              if (v51 == v48)
              {
                break;
              }

              v31 = *v31;
            }

            while (v31 != v32)
            {
              if (v31 && *(v31 - 8) == 61)
              {
                v52 = *(v31 - 7);
                if (v52 == v49)
                {
                  v54 = *(v31 - 11);
                  llvm::Value::replaceAllUsesWith();
                  llvm::Instruction::eraseFromParent(v48);
                  llvm::ConstantFoldTerminator();
                  v15 = *(v14 + 1);
                  break;
                }

                v53 = *(*v52 + 8);
                if ((v53 & 0xFE) == 0x12)
                {
                  v53 = *(**(*v52 + 16) + 8);
                }

                if (v53 <= 0xFF && v52[16] != 59)
                {
                  break;
                }
              }

              v31 = *v31;
            }
          }
        }
      }

      if (v15)
      {
        while (1)
        {
          v55 = *(v15 + 24);
          v56 = *(v55 + 16);
          v57 = v55 && v56 >= 0x1C;
          if (v57 && v56 - 29 <= 0xA)
          {
            break;
          }

          v15 = *(v15 + 8);
          if (!v15)
          {
            goto LABEL_135;
          }
        }

        do
        {
          v59 = v15;
          do
          {
            v15 = *(v15 + 8);
            if (!v15)
            {
              break;
            }

            v60 = *(v15 + 24);
            v61 = *(v60 + 16);
            v62 = v60 && v61 >= 0x1C;
          }

          while (!v62 || v61 - 29 >= 0xB);
          v64 = *(*(v59 + 24) + 40);
          v65 = *(v64 + 1);
          if (v65)
          {
            while (1)
            {
              v66 = *(v65 + 24);
              v67 = *(v66 + 16);
              v68 = v66 && v67 >= 0x1C;
              if (v68 && v67 - 40 > 0xFFFFFFF4)
              {
                break;
              }

              v65 = *(v65 + 8);
              if (!v65)
              {
                goto LABEL_128;
              }
            }
          }

          else
          {
LABEL_128:
            v70 = *(*(v64 + 7) + 80);
            if (v70)
            {
              v71 = (v70 - 24);
            }

            else
            {
              v71 = 0;
            }

            if (v64 != v71)
            {
              llvm::BasicBlock::removePredecessor(v14, v64);
              if (!*(v64 + 1))
              {
                llvm::BasicBlock::eraseFromParent(v64);
              }
            }
          }
        }

        while (v15);
      }

LABEL_135:
      v72 = &v10[-4 * (*(v10 + 5) & 0x7FFFFFF)];
      v73 = v72[v139];
      if (v9)
      {
        if (*(v73 + 16) != 83 || v73 == 0)
        {
          goto LABEL_60;
        }

        v75 = v72[4 * a4];
        if (v75)
        {
          if (*(v75 + 16) == 83)
          {
            v76 = v72[4 * a4];
          }

          else
          {
            v76 = 0;
          }

LABEL_150:
          v78 = 0;
          v149 = 0u;
          v150 = 0u;
          *__p = 0u;
          v143 = v147;
          v144 = v147;
          v145 = 4;
          v79 = v10;
          v146 = 0;
          while (1)
          {
            v80 = llvm::CallBase::arg_end(v10);
            v81 = *(v10 + 5) & 0x7FFFFFF;
            if (v78 >= ((v80 - &v10[4 * -v81]) >> 5))
            {
              break;
            }

            v82 = v79[-4 * v81];
            if (*(v82 + 16) <= 0x1Bu)
            {
              v83 = 0;
            }

            else
            {
              v83 = v82;
            }

            v141[0] = v83;
            if (v83)
            {
              v84 = v83 == v73;
            }

            else
            {
              v84 = 1;
            }

            if (!v84 && v83 != v75 && v83[5] == v14)
            {
              llvm::SmallPtrSetImpl<void *>::insert(buf, &v143, v83);
              if (v153[0] == 1)
              {
                std::deque<llvm::GetElementPtrInst *>::push_back(__p, v141);
              }
            }

            ++v78;
            v79 += 4;
          }

          v86 = *(&v150 + 1);
          if (*(&v150 + 1))
          {
            v87 = v150;
            do
            {
              v88 = *(*(__p[1] + ((v87 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v87 & 0x1FF));
              v89 = *(v88 + 20) & 0x7FFFFFF;
              if (v89)
              {
                v90 = 0;
                v91 = 32 * v89;
                do
                {
                  v92 = *(v88 + 20);
                  if ((v92 & 0x40000000) != 0)
                  {
                    v93 = *(v88 - 8);
                  }

                  else
                  {
                    v93 = v88 - 32 * (v92 & 0x7FFFFFF);
                  }

                  v94 = *(v93 + v90);
                  if (*(v94 + 16) <= 0x1Bu)
                  {
                    v95 = 0;
                  }

                  else
                  {
                    v95 = v94;
                  }

                  v141[0] = v95;
                  if (v95)
                  {
                    if (v95[5] == v14)
                    {
                      llvm::SmallPtrSetImpl<void *>::insert(buf, &v143, v95);
                      if (v153[0] == 1)
                      {
                        std::deque<llvm::GetElementPtrInst *>::push_back(__p, v141);
                      }
                    }
                  }

                  v90 += 32;
                }

                while (v91 != v90);
                v86 = *(&v150 + 1);
                v87 = v150;
              }

              --v86;
              v96 = v87 + 1;
              *&v150 = v87 + 1;
              *(&v150 + 1) = v86;
              if (v87 + 1 >= 0x400)
              {
                v97 = __p[1] + 8;
                operator delete(*__p[1]);
                v96 = v87 - 511;
                __p[1] = v97;
                *&v150 = v87 - 511;
              }

              v87 = v96;
            }

            while (v86);
          }

          v98 = *v32;
          if (*v32 != v32)
          {
            if (v98)
            {
              v99 = v98 - 3;
            }

            else
            {
              v99 = 0;
            }

            *(v99 + 16);
          }

          v100 = *(v14 + 6);
          if (v100 != (v14 + 40))
          {
            do
            {
              if (HIDWORD(v145) == v146)
              {
                break;
              }

              v101 = v100[1];
              if (v100)
              {
                v102 = v100 - 3;
              }

              else
              {
                v102 = 0;
              }

              if (llvm::SmallPtrSetImplBase::erase_imp(&v143, v102))
              {
                llvm::Instruction::moveBefore();
              }

              v100 = v101;
            }

            while (v101 != (v14 + 40));
          }

          v103 = *(*this - 24);
          FirstNonPHI = llvm::BasicBlock::getFirstNonPHI(v10[5]);
          llvm::IRBuilderBase::SetInsertPoint(&v140[v103], FirstNonPHI);
          v105 = *(*this - 24);
          v106 = *v10;
          v107 = *(v73 + 20);
          v154 = 257;
          PHI = llvm::IRBuilderBase::CreatePHI(&v140[v105], v106, v107 & 0x7FFFFFF, buf);
          v109 = 0;
          *buf = v153;
          v152 = 0x1000000000;
          for (i = v10; ; i += 4)
          {
            v111 = llvm::CallBase::arg_end(v10);
            v112 = *(v10 + 5) & 0x7FFFFFF;
            if (v109 >= ((v111 - &v10[4 * -v112]) >> 5))
            {
              break;
            }

            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(buf, i[-4 * v112]);
            ++v109;
          }

          v113 = *(v73 + 20);
          if ((v113 & 0x40000000) != 0)
          {
            v115 = *(v73 - 8);
            v116 = *(v73 + 60);
            v117 = (v115 + 32 * v116);
            v114 = v113 & 0x7FFFFFF;
          }

          else
          {
            v114 = v113 & 0x7FFFFFF;
            v115 = v73 - 32 * v114;
            v116 = *(v73 + 60);
            v117 = (v115 + 32 * v116);
          }

          v118 = v115 + 32 * v116 + 8 * v114;
          while (v117 != v118)
          {
            v119 = *v117;
            v120 = *(*v117 + 5);
            if (v120 == (*v117 + 40))
            {
              v123 = 0;
            }

            else
            {
              v121 = (v120 - 24);
              if (v120)
              {
                v122 = v120 - 24;
              }

              else
              {
                v122 = 0;
              }

              if (*(v122 + 16) - 29 >= 0xB)
              {
                v123 = 0;
              }

              else
              {
                v123 = v121;
              }
            }

            llvm::IRBuilderBase::SetInsertPoint(&v140[*(*this - 24)], v123);
            IncomingValueForBlock = llvm::PHINode::getIncomingValueForBlock(v73, v119);
            v125 = IncomingValueForBlock;
            if (v76)
            {
              v126 = llvm::PHINode::getIncomingValueForBlock(v76, v119);
              *(*buf + 8 * v137) = v125;
              if (v126)
              {
                *(*buf + 8 * a4) = v126;
              }
            }

            else
            {
              *(*buf + 8 * v137) = IncomingValueForBlock;
            }

            v127 = *(*this - 24);
            v142 = 257;
            v128 = llvm::IRBuilderBase::CreateCall(&v140[v127], *(a2 + 3), a2, *buf, v152, v141);
            llvm::PHINode::addIncoming(PHI, v128, v119);
            ++v117;
          }

          llvm::Value::replaceAllUsesWith();
          llvm::Instruction::eraseFromParent(v10);
          if (!*(v73 + 8))
          {
            llvm::Instruction::eraseFromParent(v73);
          }

          if (v76 && !*(v76 + 1))
          {
            llvm::Instruction::eraseFromParent(v76);
          }

          if (*buf != v153)
          {
            free(*buf);
          }

          if (v144 != v143)
          {
            free(v144);
          }

          v129 = __p[1];
          v130 = v149;
          v131 = v149 - __p[1];
          if (v149 - __p[1] >= 0x11)
          {
            do
            {
              v132 = *v129++;
              operator delete(v132);
              v131 -= 8;
            }

            while (v131 > 0x10);
          }

          while (v129 != v130)
          {
            v133 = *v129++;
            operator delete(v133);
          }

          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v9 = a4;
          v8 = v135;
          goto LABEL_60;
        }
      }

      else
      {
        if (*(v73 + 16) != 83 || v73 == 0)
        {
          goto LABEL_60;
        }

        v75 = 0;
      }

      v76 = 0;
      goto LABEL_150;
    }

LABEL_58:
    v39 = *v10;
    llvm::UndefValue::get();
LABEL_59:
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v10);
LABEL_60:
    v7 += 8;
  }

  while (v7 != v8);
  v7 = v155;
LABEL_236:
  if (v7 != v157)
  {
    free(v7);
  }

LABEL_238:
  v134 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::PHINode::getIncomingValueForBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = v2 & 0x7FFFFFF;
  if ((v2 & 0x7FFFFFF) != 0)
  {
    v4 = 0;
    while (1)
    {
      v5 = a1 - 32 * v3;
      if ((v2 & 0x40000000) != 0)
      {
        v5 = *(a1 - 8);
      }

      if (*(v5 + 32 * *(a1 + 60) + 8 * v4) == a2)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = -1;
        break;
      }
    }

    v4 = v4;
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v6 = *(a1 - 8);
    return *(v6 + 32 * v4);
  }

  v4 = 0xFFFFFFFFLL;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v6 = a1 - 32 * v3;
  return *(v6 + 32 * v4);
}

void AGCLLVMUserObject::setupIndirectSamplersGL(AGCLLVMUserObject *this)
{
  AGCLLVMUserObject::getDimensionFunctionMap(this);
  v2 = *(this + *(*this - 24) + 2136);
  v3 = *(v2 + 32);
  v4 = v2 + 24;
  while (v3 != v4)
  {
    v5 = (v3 - 56);
    v6 = v3 == 0;
    v3 = *(v3 + 8);
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    AGCLLVMUserObject::getSampleFunctionInfo(v13, this, v7);
    if (v13[56] == 1)
    {
      v8 = v13[30];
      v9 = v13[31];
      v10 = this;
      v11 = v5;
    }

    else
    {
      llvm::Value::getName(v5);
      Key = llvm::StringMapImpl::FindKey();
      if (Key == -1 || Key == dword_28117E5D8)
      {
        continue;
      }

      v10 = this;
      v11 = v5;
      v8 = 0;
      v9 = 0;
    }

    AGCLLVMUserObject::handleGLIndirectSamplerFunction(v10, v11, v8, v9);
  }
}

unint64_t AGCLLVMUserObject::getInternalConstSampler(uint64_t a1, int a2)
{
  result = 0x807BFF0000002049;
  if (a2 > 1)
  {
    if (a2 == 4)
    {
      result = 0x807BFF0000002000;
      return result & 0xFFFFFFFFFFFF9FFFLL | 0x2000;
    }

    if (a2 == 3)
    {
LABEL_10:
      if (a2 <= 1)
      {
        result &= 0xFFFFFFFFFFFF9FFFLL;
        return result;
      }

      return result & 0xFFFFFFFFFFFF9FFFLL | 0x2000;
    }

    if (a2 != 2)
    {
      return result;
    }

LABEL_9:
    result = ((8 * *(a1 + 14)) | (*(a1 + 14) << 6) | *(a1 + 14)) - 0x7F8400FFFFFFE000;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t AGCLLVMUserObject::buildEmulatePCF(AGCLLVMUserObject *a1, uint64_t a2, __int16 *a3)
{
  v4 = a2;
  v93 = *MEMORY[0x277D85DE8];
  if (*a2 == 5)
  {
    v6 = *(a2 + 8);
    *(a2 + 8) = 0;
    v7 = a1 + *(*a1 - 24);
    v8 = *(v7 + 271);
    v75 = *(v7 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v76, (v7 + 1712));
    v77 = *(v7 + 452);
    (*(*v8 + 288))(v8, &v75, v4);
    if (v76)
    {
      llvm::MetadataTracking::untrack();
    }

    if ((*a3 & 0xF) != 0)
    {
      v9 = *(v4 + 200);
      if ((*a3 & 0x10) != 0)
      {
        v10 = a1 + *(*a1 - 24);
        v11 = *(v10 + 271);
        v90 = *(v10 + 110);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v91, (v10 + 1712));
        v92 = *(v10 + 452);
        v9 = (*(*v11 + 40))(v11, &v90, v9, 0);
        if (v91)
        {
          llvm::MetadataTracking::untrack();
        }
      }

      AGCLLVMBuilder::splat((a1 + *(*a1 - 24) + 1704), 4, v9);
      v12 = a1 + *(*a1 - 24);
      v13 = *(v12 + 234);
      v14 = llvm::ConstantFP::get();
      AGCLLVMBuilder::splat((v12 + 1704), 4, v14);
      v15 = a1 + *(*a1 - 24);
      v16 = *(v15 + 234);
      v17 = llvm::ConstantFP::get();
      AGCLLVMBuilder::splat((v15 + 1704), 4, v17);
      v18 = (*a3 & 0xF) - 2;
      if (v18 <= 6)
      {
        v19 = dword_20E70D480[v18];
      }

      v23 = a1 + *(*a1 - 24);
      v87 = 257;
      llvm::IRBuilderBase::CreateFCmpHelper();
      v24 = a1 + *(*a1 - 24);
      v87 = 257;
      llvm::IRBuilderBase::CreateSelect();
    }

    *(v4 + 8) = v6;
    v25 = **(a1 + *(*a1 - 24) + 1704);
    goto LABEL_42;
  }

  v20 = *(a2 + 8);
  if ((*a3 & 0xF) == 0 || (*a3 & 0x1C0) == 0)
  {
    *(a2 + 208) = 1;
    if ((*a3 & 0xF) != 0)
    {
      *(a2 + 8) = 0;
    }
  }

  else
  {
    if ((*a3 & 0x40) != 0)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    *(a2 + 208) = v22;
  }

  v26 = *(a2 + 200);
  v27 = a1 + *(*a1 - 24);
  v28 = *(v27 + 271);
  v83 = *(v27 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v84, (v27 + 1712));
  v85 = *(v27 + 452);
  v29 = (*(*v28 + 288))(v28, &v83, v4);
  if (v84)
  {
    llvm::MetadataTracking::untrack();
  }

  v30 = *a3;
  if ((*a3 & 0xF) != 0)
  {
    v31 = (*a3 & 0xF) - 2;
    if (v31 > 6)
    {
      if ((v30 & 0x10) == 0)
      {
LABEL_33:
        if ((*a3 & 0x1C0) != 0)
        {
          *(&v90 + 1) = 0;
          v89 = 0;
          v38 = *(a1 + *(*a1 - 24) + 1856);
          Select = llvm::ConstantFP::get();
          v40 = a1 + *(*a1 - 24);
          LODWORD(v75) = 0;
          v87 = 257;
          Value = llvm::IRBuilderBase::CreateExtractValue((v40 + 1712), v29, &v75, 1, v86);
          *&v90 = AGCLLVMBuilder::bitCastElements((v40 + 1704), Value, *(a1 + *(*a1 - 24) + 1872));
          v42 = a1 + *(*a1 - 24);
          v79 = 1;
          v87 = 257;
          v43 = llvm::IRBuilderBase::CreateExtractValue((v42 + 1712), v29, &v79, 1, v86);
          v44 = AGCLLVMBuilder::bitCastElements((v42 + 1704), v43, *(a1 + *(*a1 - 24) + 1872));
          v45 = *(a1 + *(*a1 - 24) + 2000);
          v78 = 257;
          FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v42 + 1712), v44, v45, &v75);
          v73 = v4;
          v72 = v20;
          if ((*a3 & 0x40) != 0)
          {
            v50 = a1 + *(*a1 - 24);
            LODWORD(v75) = 2;
            v87 = 257;
            v51 = llvm::IRBuilderBase::CreateExtractValue((v50 + 1712), v29, &v75, 1, v86);
            *(&v90 + 1) = AGCLLVMBuilder::bitCastElements((v50 + 1704), v51, *(a1 + *(*a1 - 24) + 1872));
            v52 = a1 + *(*a1 - 24);
            v79 = 3;
            v87 = 257;
            v53 = llvm::IRBuilderBase::CreateExtractValue((v52 + 1712), v29, &v79, 1, v86);
            v54 = AGCLLVMBuilder::bitCastElements((v52 + 1704), v53, *(a1 + *(*a1 - 24) + 1872));
            v55 = *(a1 + *(*a1 - 24) + 2000);
            v78 = 257;
            v89 = llvm::IRBuilderBase::CreateFPTrunc((v52 + 1712), v54, v55, &v75);
            v46 = 8;
          }

          else
          {
            v46 = 4;
          }

          v56 = 0;
          v74 = a1 + 1704;
          do
          {
            v57 = &v74[*(*a1 - 24)];
            v58 = *(&v90 + (v56 >> 2));
            v87 = 257;
            v59 = *(v57 + 25);
            v60 = llvm::ConstantInt::get();
            llvm::IRBuilderBase::CreateExtractElement((v57 + 8), v58, v60, v86);
            v61 = &v74[*(*a1 - 24)];
            v62 = *(&FPTrunc + (v56 >> 2));
            v87 = 257;
            v63 = *(v61 + 25);
            v64 = llvm::ConstantInt::get();
            Element = llvm::IRBuilderBase::CreateExtractElement((v61 + 8), v62, v64, v86);
            v66 = *(*a1 - 24);
            v87 = 257;
            llvm::IRBuilderBase::CreateFCmpHelper();
            v67 = *(*a1 - 24);
            v87 = 257;
            llvm::IRBuilderBase::CreateFAdd(a1 + v67 + 1712, Select, Element, v86);
            v68 = *(*a1 - 24);
            v87 = 257;
            Select = llvm::IRBuilderBase::CreateSelect();
            ++v56;
          }

          while (v46 != v56);
          v69 = a1 + *(*a1 - 24);
          v70 = *(v69 + 234);
          v87 = 257;
          llvm::IRBuilderBase::CreateFPExt((v69 + 1712), Select, v70, v86);
          v4 = v73;
          v20 = v72;
        }

        else
        {
          v47 = a1 + *(*a1 - 24);
          AGCLLVMUserObject::buildExtractXComponent(a1, v29);
          v87 = 257;
          llvm::IRBuilderBase::CreateFCmpHelper();
          v48 = *(a1 + *(*a1 - 24) + 1872);
          llvm::ConstantFP::get();
          v49 = *(a1 + *(*a1 - 24) + 1872);
          llvm::ConstantFP::get();
          v87 = 257;
          llvm::IRBuilderBase::CreateSelect();
        }

        *(v4 + 8) = v20;
        v25 = **(a1 + *(*a1 - 24) + 1704);
LABEL_42:
        result = v25();
        goto LABEL_43;
      }
    }

    else
    {
      v32 = dword_20E70D480[v31];
      if ((v30 & 0x10) == 0)
      {
        goto LABEL_33;
      }
    }

    v36 = a1 + *(*a1 - 24);
    v37 = *(v36 + 271);
    v80 = *(v36 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v81, (v36 + 1712));
    v82 = *(v36 + 452);
    (*(*v37 + 40))(v37, &v80, v26, 0);
    if (v81)
    {
      llvm::MetadataTracking::untrack();
    }

    goto LABEL_33;
  }

  v33 = a1 + *(*a1 - 24);
  XComponent = AGCLLVMUserObject::buildExtractXComponent(a1, v29);
  result = (**(v33 + 213))((v33 + 1704), XComponent, *(v4 + 8));
LABEL_43:
  v71 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMBuilder::CreateGEP(AGCLLVMBuilder *this, llvm::Type **a2, llvm::Value *a3, const llvm::Twine *a4)
{
  v8 = AGCLLVMBuilder::tryDeducePointeeType(a2, a2);
  if (v8)
  {
    v9 = v8;
    llvm::Type::isOpaquePointerTy(*a2);
    v10 = (this + 8);
    v11 = v9;
  }

  else
  {
    v10 = (this + 8);
    v11 = 0;
  }

  return llvm::IRBuilderBase::CreateGEP(v10, v11, a2, a3, a4);
}

llvm::Value *AGCLLVMUserObject::buildExtractXComponent(AGCLLVMUserObject *this, llvm::Value *a2)
{
  v2 = a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v3 = this + *(*this - 24);
    v8 = 257;
    v4 = *(v3 + 238);
    v5 = llvm::ConstantInt::get();
    return llvm::IRBuilderBase::CreateExtractElement((v3 + 1712), v2, v5, v7);
  }

  return v2;
}

void AGCLLVMUserObject::allocateBindlessTextures(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v106 = *MEMORY[0x277D85DE8];
  v83 = (a2[1] - *a2) >> 3;
  v102 = 0u;
  v100 = &unk_2825A73B8;
  v101 = &v102;
  v103[0] = &v104;
  v103[1] = 0x800000000;
  v105 = 0;
  llvm::IntEqClasses::grow(v103);
  v7 = a2[1];
  if (v7 != *a2)
  {
    if (!(((v7 - *a2) >> 3) >> 58))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v97 = a1;
  v98 = &v100;
  v99 = &v83;
  v88 = &unk_2825A79A8;
  v89 = &v100;
  v90[0] = &v83;
  v90[1] = &v88;
  v95[0] = &unk_2825A79F0;
  v95[1] = &v88;
  v96 = v95;
  for (i = *(a3 + 24); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v96, i[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v95);
  v93[0] = &unk_2825A7A38;
  v93[1] = &v97;
  v94 = v93;
  for (j = *(a4 + 24); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v94, j[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v93);
  v91[0] = &unk_2825A7AC8;
  v91[1] = &v97;
  v92 = v91;
  for (k = *(a5 + 24); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v92, k[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v91);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v88);
  llvm::IntEqClasses::compress(v103);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (((AGCEnv::isEnabled(void)::is_internal & 1) == 0 || (v12 = AGCEnv::getValue("AGC_FORCE_BINDLESS", v11)) == 0 || *v12 == 48 || !atoi(v12)) && !*(*(a1 + *(*a1 - 24) + 2168) + 1900))
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_MAX_TEXTURE_REGISTERS", v11))
    {
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1)
      {
        Value = AGCEnv::getValue("AGC_MAX_TEXTURE_REGISTERS", v13);
        if (Value)
        {
          if (*Value != 48)
          {
            atoi(Value);
          }
        }
      }
    }
  }

  v15 = *(v103[0] + 4 * v83);
  if (v105)
  {
    operator new();
  }

  v16 = v101;
  if (v101 != &v102)
  {
    v17 = v103[0];
    do
    {
      v18 = *(v16 + 7);
      v19 = *(v16 + 8);
      v20 = *(v16 + 9);
      v21 = 12 * *(v17 + 4 * v20);
      *v21 = v20;
      *(v21 + 4) = 1;
      *(v21 + 8) += v19 - v18 + 1;
      v22 = *(v16 + 1);
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
          v23 = *(v16 + 2);
          v24 = *v23 == v16;
          v16 = v23;
        }

        while (!v24);
      }

      v16 = v23;
    }

    while (v23 != &v102);
  }

  llvm::IntEqClasses::uncompress(v103);
  llvm::IntEqClasses::compress(v103);
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v26 = a1;
  if (AGCEnv::isEnabled(void)::is_internal)
  {
    v27 = AGCEnv::getValue("AGC_DEBUG_LLVM_IR", v25);
    if (v27 && *v27 != 48 && atoi(v27))
    {
      if (AGCTargetPrinter::isValidToPrintMessage(*(a1 + *(*a1 - 24) + 1696)))
      {
        AGCTargetPrinter::printMessage(*(a1 + *(*a1 - 24) + 1696), "----- Texture allocations ------\n");
      }

      v79 = 1;
    }

    else
    {
      v79 = 0;
    }
  }

  else
  {
    v79 = 0;
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v88 = v90;
  v89 = 0x800000000;
  v82[0] = 0;
  v82[1] = 0;
  v81 = v82;
  v31 = a1 + 212;
  v32 = a1 + 126;
  v33 = 1;
  do
  {
    v34 = v30;
    v35 = v101;
    if (v101 != &v102)
    {
      v78 = v30;
      do
      {
        v36 = *(v35 + 7);
        v37 = v82[0];
        if (!v82[0])
        {
          goto LABEL_56;
        }

        v38 = v82;
        do
        {
          v39 = *(v37 + 32);
          v40 = v39 >= v36;
          v41 = v39 < v36;
          if (v40)
          {
            v38 = v37;
          }

          v37 = *(v37 + 8 * v41);
        }

        while (v37);
        if (v38 == v82 || v36 < *(v38 + 7))
        {
LABEL_56:
          if (*(v103[0] + 4 * *(v35 + 9)) == *(v103[0] + 4 * v83))
          {
            v97 = v35 + 28;
            *(std::__tree<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::__map_value_compare<AGCArgumentBuffer::Resource::Bounds,std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::less<AGCArgumentBuffer::Resource::Bounds>,true>,std::allocator<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>>>::__emplace_unique_key_args<AGCArgumentBuffer::Resource::Bounds,std::piecewise_construct_t const&,std::tuple<AGCArgumentBuffer::Resource::Bounds const&>,std::tuple<>>(&v81, v36, *(v35 + 8)) + 36) = 1;
            if ((v79 & v33) != 0 && AGCTargetPrinter::isValidToPrintMessage(*(v31 + *(*v26 - 24))))
            {
              v42 = *(v35 + 7);
              v74 = *(v35 + 8);
              AGCTargetPrinter::printMessage(*(v31 + *(*v26 - 24)), "[%08x - %08x] bindless");
            }
          }

          else if (((v36 & 0x80000000) != 0) != (v33 & 1))
          {
            v97 = v35 + 28;
            *(std::__tree<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::__map_value_compare<AGCArgumentBuffer::Resource::Bounds,std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::less<AGCArgumentBuffer::Resource::Bounds>,true>,std::allocator<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>>>::__emplace_unique_key_args<AGCArgumentBuffer::Resource::Bounds,std::piecewise_construct_t const&,std::tuple<AGCArgumentBuffer::Resource::Bounds const&>,std::tuple<>>(&v81, v36, *(v35 + 8)) + 36) = 1;
            v43 = *v32;
            if (!*v32)
            {
              goto LABEL_68;
            }

            v44 = *(v35 + 7);
            v45 = a1 + 126;
            do
            {
              v46 = *(v43 + 36) + *(v43 + 32);
              v47 = v46 > v44;
              v48 = v46 <= v44;
              if (v47)
              {
                v45 = v43;
              }

              v43 = *(v43 + 8 * v48);
            }

            while (v43);
            if (v45 == v32 || v44 < *(v45 + 8))
            {
LABEL_68:
              v45 = a1 + 126;
            }

            if (v89)
            {
              v49 = 0;
              v50 = 32 * v89;
              v51 = v88 + 8;
              do
              {
                v52 = *v51;
                v51 += 32;
                v49 += (v52 >> 1) & 1;
                v50 -= 32;
              }

              while (v50);
              v53 = v49 << 16;
            }

            else
            {
              v53 = 0;
            }

            *(v35 + 9) = v53 | v89;
            for (m = *(v35 + 7); m <= *(v35 + 8); ++m)
            {
              AGCLLVMUserObject::Texture::getAllocationInfo(&v97, (v45 + 4), m);
              v55 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(&v88, &v97);
              v56 = v88 + 32 * v89;
              v57 = v55[1];
              *v56 = *v55;
              v56[1] = v57;
              LODWORD(v89) = v89 + 1;
            }

            v26 = a1;
            if ((v79 & 1) != 0 && AGCTargetPrinter::isValidToPrintMessage(*(v31 + *(*a1 - 24))))
            {
              v73 = *(v35 + 7);
              v75 = *(v35 + 8);
              AGCTargetPrinter::printMessage(*(v31 + *(*a1 - 24)), "[%08x - %08x] TS%d - TS%d");
            }
          }
        }

        v58 = *(v35 + 1);
        if (v58)
        {
          do
          {
            v59 = v58;
            v58 = *v58;
          }

          while (v58);
        }

        else
        {
          do
          {
            v59 = *(v35 + 2);
            v24 = *v59 == v35;
            v35 = v59;
          }

          while (!v24);
        }

        v35 = v59;
      }

      while (v59 != &v102);
      v28 = v89;
      v34 = v78;
    }

    if (v33)
    {
      v29 = v28;
    }

    v30 = 1;
    v33 = 0;
  }

  while ((v34 & 1) == 0);
  AGCLLVMUserObject::createTextureArrays(v26, &v88);
  if (v29 != v89)
  {
    if (v29 >= v89)
    {
      if (v29 > HIDWORD(v89))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v89 != v29)
      {
        v60 = v88 + 32 * v89;
        v61 = 32 * v29 - 32 * v89;
        do
        {
          *v60 = 0uLL;
          v60[1] = 0uLL;
          v60 += 2;
          v61 -= 32;
        }

        while (v61);
      }
    }

    LODWORD(v89) = v29;
  }

  v97 = &v99;
  v98 = 0x800000000;
  __src[0] = v87;
  __src[1] = v87;
  __src[2] = 4;
  LODWORD(v86) = 0;
  v62 = *a2;
  if (a2[1] != *a2)
  {
    v63 = 0;
    v64 = 0;
    do
    {
      if (*(v103[0] + 4 * v63) == *(v103[0] + 4 * v83))
      {
        llvm::SmallPtrSetImpl<void *>::insert(&v84, (a1 + 131), *(v62 + 8 * v63));
      }

      else
      {
        v65 = (v63 << 6);
        v66 = *((v63 << 6) + 8);
        if (v66 == *v65)
        {
          v67 = 20;
        }

        else
        {
          v67 = 16;
        }

        v68 = *(v65 + v67);
        if (v68)
        {
          v69 = 8 * v68;
          v70 = v66;
          while (*v70 >= 0xFFFFFFFFFFFFFFFELL)
          {
            ++v70;
            v69 -= 8;
            if (!v69)
            {
              goto LABEL_109;
            }
          }
        }

        else
        {
          v70 = v66;
        }

        v71 = &v66[v68];
LABEL_113:
        if (v70 != v71)
        {
          v72 = *v70++;
          llvm::SmallPtrSetImpl<void *>::insert(&v84, __src, v72);
          while (v70 != v71)
          {
            if (*v70 < 0xFFFFFFFFFFFFFFFELL)
            {
              goto LABEL_113;
            }

            ++v70;
          }
        }
      }

LABEL_109:
      v62 = *a2;
      v63 = ++v64;
    }

    while (v64 < ((a2[1] - *a2) >> 3));
  }

  operator new();
}

BOOL AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::contains(const char **this, llvm::Function *a2)
{
  Name = llvm::Value::getName(a2);
  v5 = *this;
  if (!v5)
  {
    return 1;
  }

  v6 = Name;
  v7 = v4;
  v8 = strlen(v5);
  if (v7 < v8)
  {
    return 0;
  }

  return !v8 || memcmp(v6, v5, v8) == 0;
}

uint64_t *std::__tree<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::__map_value_compare<AGCArgumentBuffer::Resource::Bounds,std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>,std::less<AGCArgumentBuffer::Resource::Bounds>,true>,std::allocator<std::__value_type<AGCArgumentBuffer::Resource::Bounds,BOOL>>>::__emplace_unique_key_args<AGCArgumentBuffer::Resource::Bounds,std::piecewise_construct_t const&,std::tuple<AGCArgumentBuffer::Resource::Bounds const&>,std::tuple<>>(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      if (*(v3 + 7) <= a3)
      {
        break;
      }

      v3 = *v3;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (*(v3 + 8) >= a2)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_14::operator()(uint64_t a1, uint64_t a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v16 = v18;
  v17 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v16, &v14, v15);
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(a1 + 4448));
  AGCLLVMUserObject::getDimensionFunctionMap(SampleFunctionMap);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v4);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v5);
  for (i = v17; v17; i = v17)
  {
    v7 = *(v16 + i - 1);
    LODWORD(v17) = i - 1;
    llvm::SmallPtrSetImpl<void *>::insert(&v14, (a1 + 1144), v7);
    if (v15[8] == 1)
    {
      if (v7 && *(v7 + 16) == 84)
      {
        v8 = *(v7 - 32);
        if (v8 && !*(v8 + 16) && *(v8 + 24) == *(v7 + 72))
        {
          llvm::Value::getName(v8);
        }

        else
        {
          Key = llvm::StringMapImpl::FindKey();
          if (Key != -1 && Key != SampleFunctionMap[2])
          {
            continue;
          }

          v10 = llvm::StringMapImpl::FindKey();
          if (v10 != -1 && v10 != dword_28117E5D8)
          {
            continue;
          }

          v11 = llvm::StringMapImpl::FindKey();
          if (v11 != -1 && v11 != dword_28117E5B8)
          {
            continue;
          }

          v12 = llvm::StringMapImpl::FindKey();
          if (v12 != -1 && v12 != dword_28117E598)
          {
            continue;
          }
        }
      }

      llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v16, *(v7 + 8));
    }
  }

  if (v16 != v18)
  {
    free(v16);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  if (a2)
  {
    v4 = a2;
    do
    {
      ++v3;
      v4 = *(v4 + 8);
    }

    while (v4);
  }

  v5 = *(result + 8);
  if (v3 + v5 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v6 = (*result + 8 * v5);
    do
    {
      *v6++ = *(v2 + 24);
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  *(result + 8) = v5 + v3;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v6[0] = &unk_2825A7E88;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((*(*v3 - 3) + v3 + 1712), v7);
  v8 = *(*v3 - 3) + v3;
  v12 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  if (llvm::SmallPtrSetImplBase::erase_imp(v3 + 131, v2))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v11, (v3 + 131), Load);
  }

  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_12>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7E88;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_13>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7E40;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v7[0] = &unk_2825A7DF8;
  v7[1] = v4;
  v7[3] = v7;
  v8[0] = &unk_2825A7D20;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v8;
  iterateResourceUsers(v2, v8);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v8);
  result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((*(*v5 - 3) + v5 + 1712), *a2);
  v6 = *(*v5 - 3) + v5;
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 238);
  v9 = llvm::ConstantInt::get();
  v22 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v21);
  v11 = *(*(*v5 - 3) + v5 + 1904);
  v12 = llvm::ConstantInt::get();
  v23 = v25;
  v24 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(&v23, 1uLL, v12);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, Add);
  v13 = *(*v5 - 3) + v5;
  v14 = v5[229];
  v22 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v13 + 1704), v14, v23, v24, v21);
  v16 = *(*v5 - 3) + v5;
  v17 = *v3;
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 49, GEP, v17, v21);
  if (llvm::SmallPtrSetImplBase::erase_imp(v5 + 131, v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v21, (v5 + 131), Cast);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v19 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_10>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7DF8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_11>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7DB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v7[0] = &unk_2825A7D68;
  v7[1] = v4;
  v7[3] = v7;
  v8[0] = &unk_2825A7D20;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v8;
  iterateResourceUsers(v2, v8);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v8);
  result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 1904);
  v9 = llvm::ConstantInt::get();
  v20 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v19);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v11 + 1712, 48, Add, v12, v19);
  v14 = AGCLLVMUserObject::buildImageHeapIndex(v5, Cast);
  v15 = v5 + *(*v5 - 24);
  v16 = *v3;
  v20 = 257;
  v17 = llvm::IRBuilderBase::CreateCast(v15 + 1712, 48, v14, v16, v19);
  if (llvm::SmallPtrSetImplBase::erase_imp((v5 + 1048), v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v19, (v5 + 1048), v17);
  }

  return v17;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_8>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7D68;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_9>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7CD8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A7C90;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7C90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_7>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7C48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A7C00;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7C00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_6>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7BB8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v16, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = (v3 - 4 * (*(v3 + 5) & 0x7FFFFFF))[8];
    v14 = (v13 + 24);
    if (*(v13 + 32) >= 0x41u)
    {
      v14 = *v14;
    }

    std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(*(*(a1 + 16) + 24), v3, (*(v8 + 36) + ((*v14 - *(v8 + 28)) << 16)) & 0xFFFF0000 | (*v14 - *(v8 + 28) + *(v8 + 36)));
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

__n128 std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::SmallPtrSet<llvm::CallInst *,4u>>(llvm::SmallPtrSet<llvm::CallInst *,4u> &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7B28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 16);
  if (*a2 && (v7 = *(v4 - 32)) != 0 && !*(v7 + 16) && *(v7 + 24) == *(v4 + 72) && (v8 = llvm::Value::stripPointerCasts(v7), !*(v8 + 16)) && AGCLLVMUserObject::TextureSamplerPlaceholderFunctions::contains(*(a1 + 8), v8))
  {
    v9 = *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF) + 96);
    v10 = *(v9 + 32);
    if (v10)
    {
      v11 = v10 == *(v9 + 40) + 40;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = (v10 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint((v6 + *(*v6 - 24) + 1712), v12);
    v13 = v6 + *(*v6 - 24);
    v41 = 257;
    Load = AGCLLVMBuilder::CreateLoad((v13 + 1704), v9, v40);
    v15 = *(v6 + *(*v6 - 24) + 1912);
    v39 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v13 + 1712), 47, Load, v15, v38);
    v17 = v6 + *(*v6 - 24);
    v18 = *(v17 + 238);
    v19 = llvm::ConstantInt::get();
    AddOffset = AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(v6, v19, *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)), v20);
    v22 = *(v6 + *(*v6 - 24) + 1912);
    v41 = 257;
    v23 = llvm::IRBuilderBase::CreateCast((v17 + 1712), 39, AddOffset, v22, v40);
    v24 = v6 + *(*v6 - 24);
    v25 = *(v24 + 239);
    v26 = llvm::ConstantInt::get();
    v41 = 257;
    Shl = llvm::IRBuilderBase::CreateShl((v24 + 1712), Cast, v26, v40);
    v39 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v24 + 1712), Shl, v23, v38);
    v29 = v6 + *(*v6 - 24);
    v30 = *v4;
    v41 = 257;
    v31 = llvm::IRBuilderBase::CreateCast((v29 + 1712), 48, Add, v30, v40);
    AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_14::operator()(**(a1 + 24), v31);
  }

  else
  {
    llvm::IRBuilderBase::SetInsertPoint((v6 + *(*v6 - 24) + 1712), v4);
    v32 = *(v6 + *(*v6 - 24) + 1904);
    v33 = llvm::ConstantInt::get();
    AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(v6, v33, *(v4 - 32 * (*(v4 + 20) & 0x7FFFFFF)), v34);
    v35 = (v6 + *(*v6 - 24));
    v36 = *v4;
    v41 = 257;
    v31 = llvm::CastInst::Create();
    v39 = 257;
    llvm::IRBuilderBase::Insert<llvm::CastInst>(v35 + 214, v31, v38);
    if (**(a1 + 32) == 1)
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(*(a1 + 40), v31);
    }
  }

  return v31;
}

uint64_t AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(AGCLLVMUserObject::ResourceArrayIndex16x2 *this, AGCLLVMUserObject *a2, llvm::Value *a3, llvm::Value *a4)
{
  v7 = this + *(*this - 24);
  v8 = *(v7 + 238);
  v9 = llvm::ConstantInt::get();
  v30 = 257;
  v10 = llvm::IRBuilderBase::CreateAnd((v7 + 1712), a2, v9, v29);
  v11 = this + *(*this - 24);
  v12 = *(v11 + 238);
  v13 = llvm::ConstantInt::get();
  v30 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((v11 + 1712), a2, v13, v29);
  v15 = this + *(*this - 24);
  v30 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v15 + 1712), v10, a3, v29);
  v17 = this + *(*this - 24);
  v30 = 257;
  v18 = llvm::IRBuilderBase::CreateAdd((v17 + 1712), LShr, a3, v29);
  v19 = this + *(*this - 24);
  v20 = *(v19 + 238);
  v21 = llvm::ConstantInt::get();
  v30 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((v19 + 1712), Add, v21, v29);
  v23 = this + *(*this - 24);
  v24 = *(v23 + 238);
  v25 = llvm::ConstantInt::get();
  v30 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((v23 + 1712), v18, v25, v29);
  v27 = this + *(*this - 24);
  v30 = 257;
  return llvm::IRBuilderBase::CreateOr((v27 + 1712), Shl, v22, v29);
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_5>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7B70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_4,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_4>,void ()(llvm::Function *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = *(v3 + 2);
  operator new();
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v29[8] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 8);
  v22 = v26;
  v23 = v26;
  v24 = 8;
  v25 = 0;
  v5 = *(v3 + 8);
  v27 = v29;
  v28 = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v27, v5);
  SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(v4 + 4448));
  AGCLLVMUserObject::getDimensionFunctionMap(SampleFunctionMap);
  AGCLLVMUserObject::getTextureFenceFunctionSet(v7);
  AGCLLVMUserObject::getIsNullTextureFunctionSet(v8);
  for (i = v28; v28; i = v28)
  {
    v10 = *(v27 + i - 1);
    LODWORD(v28) = i - 1;
    llvm::SmallPtrSetImpl<void *>::insert(v20, &v22, v10);
    if (v21 == 1)
    {
      llvm::SmallVectorImpl<llvm::Value *>::append<llvm::Value::user_iterator_impl<llvm::User>,void>(&v27, *(v10 + 8));
      v11 = *(v10 + 16);
      if (v10 && v11 == 84)
      {
        v12 = *(v10 - 32);
        if (!v12 || *(v12 + 16) || *(v12 + 24) != *(v10 + 72) || ((llvm::Value::getName(v12), Key = llvm::StringMapImpl::FindKey(), Key == -1) || Key == SampleFunctionMap[2]) && ((v14 = llvm::StringMapImpl::FindKey(), v14 == -1) || v14 == dword_28117E5D8) && ((v15 = llvm::StringMapImpl::FindKey(), v15 == -1) || v15 == dword_28117E5B8) && ((v16 = llvm::StringMapImpl::FindKey(), v16 == -1) || v16 == dword_28117E598))
        {
LABEL_20:
          v17 = *(a1 + 16);
          AGCArgumentBuffer::Resource::Bounds::Bounds(v20, *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF) + 32));
          IntervalMap<unsigned int>::insert(v17, v20[0], **(a1 + 24));
          break;
        }
      }

      else if (v11 == 61)
      {
        goto LABEL_20;
      }
    }
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v23 != v22)
  {
    free(v23);
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_1>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7A80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_4,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_4>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7AC8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_3,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_3>,void ()(llvm::Function *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *v3;
  v5 = *(v3 + 2);
  operator new();
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_3,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_3>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7A38;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::__value_func[abi:nn200100](v5, *(a1 + 8));
  iterateResourceUsers(v2, v5);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_2>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A79F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v5, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  IntervalMap<unsigned int>::insert(v3, v5, **(a1 + 16));
  return 1;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allocateBindlessTextures(std::vector<llvm::Value *> const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A79A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject *this, const AGCLLVMUserObject::TextureSamplerPlaceholderFunctions *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 1;
  v6[0] = &unk_2825A7ED0;
  v6[1] = &v5;
  v6[2] = this;
  v7 = v6;
  if (a2)
  {
    v2 = a2;
    do
    {
      std::function<void ()(llvm::Function *)>::operator()(v7, *(v2 + 5));
      v2 = *v2;
    }

    while (v2);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v6);
  result = v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v7[0] = &unk_2825A7F18;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v25[32] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(v22, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  if (v22[1] == v22[0])
  {
    SampleFunctionMap = AGCLLVMUserObject::getSampleFunctionMap(*(v3 + 4448));
    AGCLLVMUserObject::getUniqueIDFunctionSet(SampleFunctionMap);
    AGCLLVMUserObject::getTextureFenceFunctionSet(v5);
    AGCLLVMUserObject::getIsNullTextureFunctionSet(v6);
    AGCLLVMUserObject::getDimensionFunctionMap(v7);
    v23 = v25;
    v24 = 0x2000000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, v2);
    v8 = v24;
    if (v24)
    {
      while (1)
      {
        v9 = *(v23 + --v8);
        LODWORD(v24) = v8;
        v10 = *(v9 + 8);
        if (v10)
        {
          break;
        }

LABEL_27:
        if (!v8)
        {
          goto LABEL_28;
        }
      }

      while (1)
      {
        v11 = *(v10 + 24);
        v12 = *(v11 + 16);
        if (v12 <= 0x1B)
        {
          break;
        }

        if (v12 != 84)
        {
          if (v12 != 77)
          {
            goto LABEL_30;
          }

LABEL_10:
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, v11);
          goto LABEL_11;
        }

        v13 = *(v11 - 32);
        if (!v13 || *(v13 + 16) || *(v13 + 24) != *(v11 + 72))
        {
          goto LABEL_30;
        }

        llvm::Value::getName(v13);
        Key = llvm::StringMapImpl::FindKey();
        if (Key == -1 || Key == SampleFunctionMap[2])
        {
          v15 = llvm::StringMapImpl::FindKey();
          if (v15 == -1 || v15 == dword_28117E5F8)
          {
            v16 = llvm::StringMapImpl::FindKey();
            if (v16 == -1 || v16 == dword_28117E5B8)
            {
              v17 = llvm::StringMapImpl::FindKey();
              if (v17 == -1 || v17 == dword_28117E598)
              {
                v18 = llvm::StringMapImpl::FindKey();
                v19 = 0;
                if (v18 == -1 || v18 == dword_28117E5D8)
                {
                  goto LABEL_31;
                }
              }
            }
          }
        }

LABEL_11:
        v10 = *(v10 + 8);
        if (!v10)
        {
          v8 = v24;
          goto LABEL_27;
        }
      }

      if (v12 != 5 || *(v11 + 18) != 49)
      {
LABEL_30:
        v19 = 0;
        goto LABEL_31;
      }

      goto LABEL_10;
    }

LABEL_28:
    v19 = 1;
LABEL_31:
    if (v23 != v25)
    {
      free(v23);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A7F18;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0,std::allocator<AGCLLVMUserObject::allTextureUsesAreDirect(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&)::$_0>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A7ED0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t llvm::DenseMap<llvm::Type *,std::pair<BOOL,BOOL>,llvm::DenseMapInfo<llvm::Type *,void>,llvm::detail::DenseMapPair<llvm::Type *,std::pair<BOOL,BOOL>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x20F330650](16 * v8, 8);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = (result + 16);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_20E70C4F0)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    v18 = (16 * v3);
    if (v3)
    {
      v19 = 16 * v3;
      v20 = v4;
      do
      {
        v21 = *v20;
        if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v31 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>,llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>,llvm::DenseMapInfo<llvm::AnalysisKey *,void>,llvm::detail::DenseMapPair<llvm::AnalysisKey *,std::unique_ptr<llvm::detail::AnalysisPassConcept<llvm::Module,llvm::PreservedAnalyses,llvm::AnalysisManager<llvm::Module>::Invalidator>>>>::LookupBucketFor<llvm::AnalysisKey *>(*a1, *(a1 + 16), v21, &v31);
          v22 = v31;
          *v31 = *v20;
          *(v22 + 4) = *(v20 + 4);
          ++*(a1 + 8);
        }

        v20 = (v20 + 16);
        v19 -= 16;
      }

      while (v19);
    }

    return llvm::deallocate_buffer(v4, v18);
  }

  else
  {
    *(a1 + 8) = 0;
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = 0;
      v25 = v23 + 0xFFFFFFFFFFFFFFFLL;
      v26 = v25 & 0xFFFFFFFFFFFFFFFLL;
      v27 = (v25 & 0xFFFFFFFFFFFFFFFLL) - (v25 & 1) + 2;
      v28 = vdupq_n_s64(v26);
      v29 = (result + 16);
      do
      {
        v30 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(vdupq_n_s64(v24), xmmword_20E70C4F0)));
        if (v30.i8[0])
        {
          *(v29 - 2) = -4096;
        }

        if (v30.i8[4])
        {
          *v29 = -4096;
        }

        v24 += 2;
        v29 += 4;
      }

      while (v27 != v24);
    }
  }

  return result;
}

uint64_t std::function<BOOL ()(llvm::Value *,llvm::SmallPtrSetImpl<llvm::Value *> &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(v3);
}

void *std::set<AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Sampler>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Sampler,std::__tree_node<AGCLLVMUserObject::Sampler,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Sampler>(AGCLLVMUserObject *a1, const char *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v33 = 1;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  v4 = (AGCEnv::isEnabled(void)::is_internal != 1 || (Value = AGCEnv::getValue("AGX_FORCE_CS_SAMPLERS", a2)) == 0 || *Value == 48 || !atoi(Value)) && *(*(a1 + *(*a1 - 24) + 2168) + 1900) == 0;
  v32 = v4;
  v31[0] = 0;
  v31[1] = 0;
  v29[1] = &v30;
  v30 = v31;
  v29[0] = &v34;
  v43[0] = &unk_2825A81A0;
  v43[1] = v29;
  v44 = v43;
  for (i = *(a1 + 396); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v44, i[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v43);
  v41[0] = &unk_2825A8230;
  v41[1] = v29;
  v42 = v41;
  for (j = *(a1 + 420); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v42, j[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v41);
  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v7 = v30;
  if (v30 != v31)
  {
    do
    {
      v20 = *(v7 + 28);
      LODWORD(v21) = *(v7 + 9);
      BindlessHeapIndexForRange = AGCLLVMUserObject::allocateBindlessHeapIndexForRange(a1, &v20 + 1, a1 + 4384);
      v35[0] = &v20;
      std::__tree<std::__value_type<unsigned int,llvm::GlobalVariable *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::GlobalVariable *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v27, v20)[5] = BindlessHeapIndexForRange;
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v31);
  }

  v26 = 0;
  v20 = &v34;
  v21 = &v27;
  v22 = &v30;
  v23 = a1;
  v24 = &v32;
  v25 = &v26;
  v39[0] = &unk_2825A8278;
  v39[1] = &v33;
  v39[2] = &v20;
  v40 = v39;
  for (k = *(a1 + 396); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v40, k[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v39);
  v26 = 1;
  v37[0] = &unk_2825A8308;
  v37[1] = &v33;
  v37[2] = &v20;
  v38 = v37;
  for (m = *(a1 + 420); m; m = *m)
  {
    std::function<void ()(llvm::Function *)>::operator()(v38, m[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v37);
  if (v32)
  {
    v35[0] = v36;
    v35[1] = 0x100000000;
    AGCLLVMUserObject::createSamplerArrays(a1, v35);
    if (v35[0] != v36)
    {
      free(v35[0]);
    }
  }

  else
  {
    v14 = v27;
    if (v27 != v28)
    {
      do
      {
        AGCLLVMUserObject::lowerGlobalBindingVariable(a1, v14[5]);
        v15 = v14[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v14[2];
            v11 = *v16 == v14;
            v14 = v16;
          }

          while (!v11);
        }

        v14 = v16;
      }

      while (v16 != v28);
    }
  }

  v17 = v33;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v28[0]);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v31[0]);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

void AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Sampler>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[12] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = &unk_2825A73D0;
  v11[1] = v12;
  v17[1] = 0x400000000;
  v15[0] = &unk_2825A83E0;
  v15[1] = v11;
  v16 = v15;
  v17[0] = v18;
  for (i = *(a2 + 24); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v16, i[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v15);
  v13[0] = &unk_2825A8470;
  v13[1] = v11;
  v14 = v13;
  for (j = *(a3 + 24); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v14, j[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v13);
  addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex32,AGCLLVMUserObject::Sampler,AGCLLVMUserObject::ResourceComparator>(v11, v17, a4);
  AGCLLVMUserObject::createSamplerArrays(a1, v17);
  v10 = a1;
  v9 = 1;
  operator new();
}

void *std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>::insert[abi:nn200100]<std::__tree_const_iterator<AGCLLVMUserObject::Texture,std::__tree_node<AGCLLVMUserObject::Texture,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 8);
      if (*(v5 + 8) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 32);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

uint64_t AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v233 = *MEMORY[0x277D85DE8];
  v226 = 0x400000000;
  v208[0] = 0;
  v208[1] = 0;
  v206 = &unk_2825A73D0;
  v207 = v208;
  v223[0] = &unk_2825A8B78;
  v223[1] = &v206;
  v224 = v223;
  v225 = v227;
  for (i = *(a2 + 24); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v224, i[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v223);
  v221[0] = &unk_2825A8C08;
  v221[1] = &v206;
  v222 = v221;
  v189 = a3;
  for (j = *(a3 + 24); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v222, j[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v221);
  memset(v204, 0, sizeof(v204));
  v205 = 1065353216;
  v9 = v207;
  if (v207 != v208)
  {
    v10 = (a4 + 8);
    v190 = (a4 + 8);
    v11 = a1 + 271;
    v197 = a1 + 267;
    v191 = a1 + 238;
    v192 = a1 + 271;
    do
    {
      v12 = *v10;
      if (!*v10)
      {
        goto LABEL_78;
      }

      v13 = *(v9 + 9);
      v14 = v10;
      do
      {
        v15 = *(v12 + 36) + *(v12 + 32);
        v16 = v15 > v13;
        v17 = v15 <= v13;
        if (v16)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * v17);
      }

      while (v12);
      if (v14 == v10 || (v19 = *(v14 + 8), v18 = (v14 + 4), v13 < v19) || (v20 = *(v9 + 7), *(v9 + 8) != v20))
      {
LABEL_78:
        v177 = 0;
        goto LABEL_79;
      }

      AGCLLVMUserObject::Texture::getAllocationInfo(&v200, v18, v20);
      v21 = *(a1 + *(*a1 - 24) + 1888);
      v22 = llvm::PointerType::get();
      v23 = *(v191 + *(*a1 - 24));
      v24 = *v22;
      *&v228 = v22;
      *(&v228 + 1) = v23;
      *&v229 = v23;
      llvm::StructType::get();
      if ((*(v203 + 9) & 1) == 0)
      {
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v228 = 0u;
        v25 = *(*(v11 + *(*a1 - 24)) + 1784);
        *&v228 = llvm::PointerType::get();
        v26 = *(*(v11 + *(*a1 - 24)) + 1784);
        *(&v228 + 1) = llvm::PointerType::get();
        v27 = *(v191 + *(*a1 - 24));
        llvm::FixedVectorType::get();
        v28 = *(*(v11 + *(*a1 - 24)) + 972);
        *&v229 = llvm::PointerType::get();
        v29 = *(*(v11 + *(*a1 - 24)) + 972);
        *(&v229 + 1) = llvm::PointerType::get();
        v30 = a1 + *(*a1 - 24);
        v31 = *(v30 + 238);
        v32 = *(*(v30 + 271) + 972);
        *&v230 = llvm::PointerType::get();
        v33 = a1 + *(*a1 - 24);
        v34 = *(v33 + 238);
        v35 = *(*(v33 + 271) + 972);
        *(&v230 + 1) = llvm::PointerType::get();
        v36 = a1 + *(*a1 - 24);
        v37 = *(v36 + 238);
        v38 = *(*(v36 + 271) + 972);
        *&v231 = llvm::PointerType::get();
        v39 = a1 + *(*a1 - 24);
        v40 = *(v39 + 238);
        v41 = *(*(v39 + 271) + 972);
        *(&v231 + 1) = llvm::PointerType::get();
        v42 = a1 + *(*a1 - 24);
        v43 = *(v42 + 238);
        v44 = *(*(v42 + 271) + 972);
        *&v232 = llvm::PointerType::get();
        v45 = a1 + *(*a1 - 24);
        v46 = *(v45 + 239);
        v47 = *(*(v45 + 271) + 972);
        *(&v232 + 1) = llvm::PointerType::get();
        llvm::StructType::setBody();
      }

      v48 = v200;
      v198 = (v200 >> 20) & 0x7FF;
      v199 = v200 & 0xFFFFFLL;
      v49 = v202;
      if (v202)
      {
        v55 = llvm::User::operator new(0x58);
        v56 = *(*a1 - 24);
        if ((v48 & 0x80000000) != 0)
        {
          v209[0] = v198;
          v210 = ".";
          v211 = 776;
          v57 = 2;
          v58 = 8;
          v59 = &v212;
          v212 = v209;
          v214 = v199;
        }

        else
        {
          LODWORD(v212) = v199;
          v57 = 8;
          v58 = 1;
          v59 = v212;
        }

        v67 = a1 + v56;
        v68 = *(v67 + 267);
        v69 = *(*(v67 + 271) + 1784);
        v215 = v57;
        v216 = v58;
        *&v228 = "agc.read_image_words";
        *&v229 = v59;
        *(&v229 + 1) = v213;
        LOBYTE(v230) = 3;
        BYTE1(v230) = v57;
        llvm::GlobalVariable::GlobalVariable();
        *(v55 + 80) |= 1u;
        llvm::GlobalObject::setSection();
        v70 = __clz(*(*(v11 + *(*a1 - 24)) + 1808)) ^ 0x13F;
        llvm::GlobalObject::setAlignment();
        v71 = a1 + *(*a1 - 24);
        v72 = *(v71 + 268);
        v73 = AGCLLVMBuilder::buildGlobalMetadata((v71 + 1704), v55);
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v72, v73);
        v196 = v55;
        AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(a1, v201);
        if ((v49 & 2) != 0)
        {
LABEL_19:
          v50 = llvm::User::operator new(0x58);
          v51 = *(*a1 - 24);
          if ((v48 & 0x80000000) != 0)
          {
            v209[0] = v198;
            v210 = ".";
            v211 = 776;
            v212 = v209;
            v214 = v199;
            v52 = 2;
            v53 = 8;
            v54 = &v212;
          }

          else
          {
            LODWORD(v212) = v199;
            v52 = 8;
            v53 = 1;
            v54 = v212;
          }

          v60 = a1 + v51;
          v61 = *(v60 + 267);
          v62 = *(*(v60 + 271) + 1784);
          v215 = v52;
          v216 = v53;
          *&v228 = "agc.write_image_words";
          *&v229 = v54;
          *(&v229 + 1) = v213;
          LOBYTE(v230) = 3;
          BYTE1(v230) = v52;
          llvm::GlobalVariable::GlobalVariable();
          *(v50 + 80) |= 1u;
          llvm::GlobalObject::setSection();
          v63 = __clz(*(*(v11 + *(*a1 - 24)) + 1808)) ^ 0x13F;
          llvm::GlobalObject::setAlignment();
          v64 = a1 + *(*a1 - 24);
          v65 = *(v64 + 268);
          v66 = AGCLLVMBuilder::buildGlobalMetadata((v64 + 1704), v50);
          llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v65, v66);
          v195 = v50;
          AGCLLVMUserObject::setupTextureGlobalRasterOrderGroup(a1, v201);
          goto LABEL_28;
        }
      }

      else
      {
        v196 = 0;
        if ((v202 & 2) != 0)
        {
          goto LABEL_19;
        }
      }

      v195 = 0;
LABEL_28:
      v74 = llvm::User::operator new(0x58);
      v75 = a1 + *(*a1 - 24);
      v76 = *(v75 + 267);
      v77 = *(v75 + 238);
      llvm::FixedVectorType::get();
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v78 = 2;
        v79 = 8;
        v80 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v78 = 8;
        v79 = 1;
        v80 = v212;
      }

      v215 = v78;
      v216 = v79;
      *&v228 = "agc.image_dim";
      *&v229 = v80;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v78;
      v180 = *(*(v11 + *(*a1 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v74 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v81 = a1 + *(*a1 - 24);
      v82 = *(v81 + 268);
      v83 = AGCLLVMBuilder::buildGlobalMetadata((v81 + 1704), v74);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v83);
      v84 = llvm::User::operator new(0x58);
      v85 = *a1;
      v86 = *(v197 + *(*a1 - 24));
      v194 = v74;
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v87 = 2;
        v88 = 8;
        v89 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v87 = 8;
        v88 = 1;
        v89 = v212;
      }

      v215 = v87;
      v216 = v88;
      *&v228 = "agc.image_array_info";
      *&v229 = v89;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v87;
      v181 = *(*(v11 + *(v85 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v84 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v90 = a1 + *(*a1 - 24);
      v91 = *(v90 + 268);
      v92 = AGCLLVMBuilder::buildGlobalMetadata((v90 + 1704), v84);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v91, v92);
      v93 = llvm::User::operator new(0x58);
      v94 = *a1;
      v95 = a1 + *(*a1 - 24);
      v96 = *(v95 + 267);
      v97 = *(v95 + 238);
      v193 = v84;
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v98 = 2;
        v99 = 8;
        v100 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v98 = 8;
        v99 = 1;
        v100 = v212;
      }

      v215 = v98;
      v216 = v99;
      *&v228 = "agc.image_pack_format";
      *&v229 = v100;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v98;
      v182 = *(*(v11 + *(v94 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v93 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v101 = a1 + *(*a1 - 24);
      v102 = *(v101 + 268);
      v103 = AGCLLVMBuilder::buildGlobalMetadata((v101 + 1704), v93);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v102, v103);
      v104 = llvm::User::operator new(0x58);
      v105 = *a1;
      v106 = a1 + *(*a1 - 24);
      v107 = *(v106 + 267);
      v108 = *(v106 + 238);
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v109 = 2;
        v110 = 8;
        v111 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v109 = 8;
        v110 = 1;
        v111 = v212;
      }

      v215 = v109;
      v216 = v110;
      *&v228 = "agc.image_mipmap_count";
      *&v229 = v111;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v109;
      v183 = *(*(v11 + *(v105 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v104 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v112 = a1 + *(*a1 - 24);
      v113 = *(v112 + 268);
      v114 = AGCLLVMBuilder::buildGlobalMetadata((v112 + 1704), v104);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v113, v114);
      v115 = llvm::User::operator new(0x58);
      v116 = *a1;
      v117 = a1 + *(*a1 - 24);
      v118 = *(v117 + 267);
      v119 = *(v117 + 238);
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v120 = 2;
        v121 = 8;
        v122 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v120 = 8;
        v121 = 1;
        v122 = v212;
      }

      v215 = v120;
      v216 = v121;
      *&v228 = "agc.image_sample_count";
      *&v229 = v122;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v120;
      v184 = *(*(v11 + *(v116 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v115 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v123 = a1 + *(*a1 - 24);
      v124 = *(v123 + 268);
      v125 = AGCLLVMBuilder::buildGlobalMetadata((v123 + 1704), v115);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v124, v125);
      v126 = llvm::User::operator new(0x58);
      v127 = *a1;
      v128 = a1 + *(*a1 - 24);
      v129 = *(v128 + 267);
      v130 = *(v128 + 238);
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v131 = 2;
        v132 = 8;
        v133 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v131 = 8;
        v132 = 1;
        v133 = v212;
      }

      v215 = v131;
      v216 = v132;
      *&v228 = "agc.image_base_level";
      *&v229 = v133;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v131;
      v185 = *(*(v11 + *(v127 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v126 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v134 = a1 + *(*a1 - 24);
      v135 = *(v134 + 268);
      v136 = AGCLLVMBuilder::buildGlobalMetadata((v134 + 1704), v126);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v135, v136);
      v137 = llvm::User::operator new(0x58);
      v138 = *a1;
      v139 = a1 + *(*a1 - 24);
      v140 = *(v139 + 267);
      v141 = *(v139 + 238);
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v142 = 2;
        v143 = 8;
        v144 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v142 = 8;
        v143 = 1;
        v144 = v212;
      }

      v215 = v142;
      v216 = v143;
      *&v228 = "agc.image_heap_index";
      *&v229 = v144;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v142;
      v186 = *(*(v11 + *(v138 - 24)) + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v137 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v145 = a1 + *(*a1 - 24);
      v146 = *(v145 + 268);
      v147 = AGCLLVMBuilder::buildGlobalMetadata((v145 + 1704), v137);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v146, v147);
      v148 = llvm::User::operator new(0x58);
      v149 = (a1 + *(*a1 - 24));
      v150 = v149[267];
      v151 = v149[239];
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v152 = 2;
        v153 = 8;
        v154 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v152 = 8;
        v153 = 1;
        v154 = v212;
      }

      v215 = v152;
      v216 = v153;
      *&v228 = "agc.image_unique_id";
      *&v229 = v154;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v152;
      v187 = *(v149[271] + 972) | 0x100000000;
      llvm::GlobalVariable::GlobalVariable();
      *(v148 + 80) |= 1u;
      llvm::GlobalObject::setSection();
      v155 = a1 + *(*a1 - 24);
      v156 = *(v155 + 268);
      v157 = AGCLLVMBuilder::buildGlobalMetadata((v155 + 1704), v148);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v156, v157);
      NullValue = v196;
      if (!v196)
      {
        v159 = *(*(v192 + *(*a1 - 24)) + 1784);
        v160 = llvm::PointerType::get();
        NullValue = llvm::Constant::getNullValue(v160, v161);
      }

      *&v228 = NullValue;
      v162 = v195;
      if (!v195)
      {
        v163 = *(*(v192 + *(*a1 - 24)) + 1784);
        v164 = llvm::PointerType::get();
        v162 = llvm::Constant::getNullValue(v164, v165);
      }

      *(&v228 + 1) = v162;
      *&v229 = v194;
      *(&v229 + 1) = v193;
      *&v230 = v93;
      *(&v230 + 1) = v104;
      *&v231 = v115;
      *(&v231 + 1) = v126;
      *&v232 = v137;
      *(&v232 + 1) = v148;
      llvm::ConstantStruct::get();
      v166 = llvm::User::operator new(0x58);
      v167 = *(v197 + *(*a1 - 24));
      if ((v48 & 0x80000000) != 0)
      {
        v209[0] = v198;
        v210 = ".";
        v211 = 776;
        v212 = v209;
        v214 = v199;
        v168 = 2;
        v169 = 8;
        v170 = &v212;
      }

      else
      {
        LODWORD(v212) = v199;
        v168 = 8;
        v169 = 1;
        v170 = v212;
      }

      v11 = a1 + 271;
      v215 = v168;
      v216 = v169;
      *&v228 = "agc.image_state_struct_ptr";
      *&v229 = v170;
      *(&v229 + 1) = v213;
      LOBYTE(v230) = 3;
      BYTE1(v230) = v168;
      llvm::GlobalVariable::GlobalVariable();
      *(v166 + 80) |= 1u;
      llvm::GlobalVariable::setInitializer();
      v228 = 4uLL;
      v171 = v166;
      *&v229 = v166;
      if (v166 != -8192)
      {
        v171 = v166;
        if (v166 != -4096)
        {
          v171 = v166;
          if (v166)
          {
            llvm::ValueHandleBase::AddToUseList(&v228);
            v171 = v229;
          }
        }
      }

      std::__tree<llvm::WeakVH>::__emplace_unique_key_args<llvm::WeakVH,llvm::WeakVH>((a1 + 102), v171);
      if (v229 != -8192 && v229 != -4096 && v229)
      {
        llvm::ValueHandleBase::RemoveFromUseList(&v228);
      }

      *&v228 = v9 + 28;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v204, *(v9 + 7))[3] = v166;
      v172 = v9[1];
      if (v172)
      {
        do
        {
          v173 = v172;
          v172 = *v172;
        }

        while (v172);
      }

      else
      {
        do
        {
          v173 = v9[2];
          v174 = *v173 == v9;
          v9 = v173;
        }

        while (!v174);
      }

      v9 = v173;
      v10 = v190;
    }

    while (v173 != v208);
  }

  *&v228 = v204;
  LOBYTE(v212) = 1;
  v219[0] = &unk_2825A8C98;
  v219[1] = &v212;
  v219[2] = &v228;
  v220 = v219;
  for (k = *(a2 + 24); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v220, k[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v219);
  v217[0] = &unk_2825A8D28;
  v217[1] = &v212;
  v217[2] = &v228;
  v218 = v217;
  for (m = *(v189 + 24); m; m = *m)
  {
    std::function<void ()(llvm::Function *)>::operator()(v218, m[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v217);
  v177 = v212;
LABEL_79:
  std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v204);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v208[0]);
  if (v225 != v227)
  {
    free(v225);
  }

  v178 = *MEMORY[0x277D85DE8];
  return v177 & 1;
}

void AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(AGCLLVMUserObject *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v25 = 1;
  v24[0] = 0;
  v24[1] = 0;
  v22[1] = &v23;
  v23 = v24;
  v22[0] = &v26;
  v34[0] = &unk_2825A8D70;
  v34[1] = v22;
  v35 = v34;
  for (i = *(a1 + 390); i; i = *i)
  {
    std::function<void ()(llvm::Function *)>::operator()(v35, i[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v34);
  v32[0] = &unk_2825A8E00;
  v32[1] = v22;
  v33 = v32;
  for (j = *(a1 + 414); j; j = *j)
  {
    std::function<void ()(llvm::Function *)>::operator()(v33, j[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v32);
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  v4 = v23;
  if (v23 != v24)
  {
    do
    {
      v15 = *(v4 + 28);
      LODWORD(v16) = *(v4 + 9);
      BindlessHeapIndexForRange = AGCLLVMUserObject::allocateBindlessHeapIndexForRange(a1, &v15 + 1, a1 + 4352);
      v27 = &v15;
      std::__tree<std::__value_type<unsigned int,llvm::GlobalVariable *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::GlobalVariable *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v20, v15)[5] = BindlessHeapIndexForRange;
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v24);
  }

  LOBYTE(v27) = 0;
  v15 = &v26;
  v16 = &v20;
  v17 = &v23;
  v18 = a1;
  v19 = &v27;
  v30[0] = &unk_2825A8E48;
  v30[1] = &v25;
  v30[2] = &v15;
  v31 = v30;
  for (k = *(a1 + 390); k; k = *k)
  {
    std::function<void ()(llvm::Function *)>::operator()(v31, k[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v30);
  LOBYTE(v27) = 1;
  v28[0] = &unk_2825A8ED8;
  v28[1] = &v25;
  v28[2] = &v15;
  v29 = v28;
  for (m = *(a1 + 414); m; m = *m)
  {
    std::function<void ()(llvm::Function *)>::operator()(v29, m[5]);
  }

  std::__function::__value_func<void ()(llvm::Function *)>::~__value_func[abi:nn200100](v28);
  v11 = v20;
  if (v20 != v21)
  {
    do
    {
      AGCLLVMUserObject::lowerGlobalBindingVariable(a1, v11[5]);
      v12 = v11[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v11[2];
          v8 = *v13 == v11;
          v11 = v13;
        }

        while (!v8);
      }

      v11 = v13;
    }

    while (v13 != v21);
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v21[0]);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v24[0]);
  v14 = *MEMORY[0x277D85DE8];
}

unint64_t addAllocationInfoForRanges<AGCLLVMUserObject::ResourceArrayIndex16x2,AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    v6 = (a3 + 8);
    do
    {
      v7 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }

      v8 = *(v3 + 9);
      v9 = v6;
      do
      {
        v10 = *(v7 + 36) + *(v7 + 32);
        v11 = v10 > v8;
        v12 = v10 <= v8;
        if (v11)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * v12);
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
LABEL_10:
        v9 = v6;
      }

      v13 = *(a2 + 8);
      if (v13)
      {
        v14 = 0;
        v15 = 32 * v13;
        v16 = (*a2 + 8);
        do
        {
          v17 = *v16;
          v16 += 32;
          v14 += (v17 >> 1) & 1;
          v15 -= 32;
        }

        while (v15);
        v18 = v14 << 16;
      }

      else
      {
        v18 = 0;
      }

      *(v3 + 9) = v18 | v13;
      for (i = *(v3 + 7); i <= *(v3 + 8); ++i)
      {
        AGCLLVMUserObject::Texture::getAllocationInfo(v25, (v9 + 4), i);
        result = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(a2, v25);
        v20 = (*a2 + 32 * *(a2 + 8));
        v21 = *(result + 16);
        *v20 = *result;
        v20[1] = v21;
        ++*(a2 + 8);
      }

      v22 = v3[1];
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
          v23 = v3[2];
          v24 = *v23 == v3;
          v3 = v23;
        }

        while (!v24);
      }

      v3 = v23;
    }

    while (v23 != v4);
  }

  return result;
}

void *std::vector<llvm::Value *>::vector[abi:nn200100]<llvm::SmallPtrSetIterator<llvm::Value *>,0>(void *result, void *a2, void *a3, void *a4)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2 != a4)
  {
    v5 = 0;
    v6 = a2;
    while (1)
    {
      do
      {
        ++v6;
      }

      while (v6 != a3 && *v6 >= 0xFFFFFFFFFFFFFFFELL);
      ++v5;
      if (v6 == a4)
      {
        std::vector<llvm::Type *>::__vallocate[abi:nn200100](result, v5);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = **(a1 + 8);
  v6[0] = &unk_2825A9598;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((*(*v3 - 3) + v3 + 1712), v7);
  v8 = *(*v3 - 3) + v3;
  v12 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  if (llvm::SmallPtrSetImplBase::erase_imp(v3 + 131, v2))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v11, (v3 + 131), Load);
  }

  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_30>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9598;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_31>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9550;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v7[0] = &unk_2825A9508;
  v7[1] = v4;
  v7[3] = v7;
  v8[0] = &unk_2825A9118;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v8;
  iterateResourceUsers(v2, v8);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v8);
  result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v16, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v7 = *(v4 + 16);
  v6 = v4 + 16;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v16;
    v11 = v9 < v16;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 == v6 || *(v8 + 28) > v16)
  {
LABEL_9:
    v8 = v6;
  }

  v12 = *(a1 + 8) + 16;
  if (v12 != v8)
  {
    v13 = (v3 - 4 * (*(v3 + 5) & 0x7FFFFFF))[8];
    v14 = (v13 + 24);
    if (*(v13 + 32) >= 0x41u)
    {
      v14 = *v14;
    }

    std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(*(*(a1 + 16) + 24), v3, (*(v8 + 36) + ((*v14 - *(v8 + 28)) << 16)) & 0xFFFF0000 | (*v14 - *(v8 + 28) + *(v8 + 36)));
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v3);
  }

  return v12 != v8;
}

__n128 std::__function::__func<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL replaceArrayResources<AGCLLVMUserObject::ResourceArrayIndex16x2,llvm::Function *>(llvm::Function * &,IntervalMap<unsigned int> const&,std::function<llvm::Value * ()(ResourceIntrinsic,unsigned int)>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A9118;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((*(*v5 - 3) + v5 + 1712), *a2);
  v6 = *(*v5 - 3) + v5;
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 238);
  v9 = llvm::ConstantInt::get();
  v22 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v21);
  v11 = *(*(*v5 - 3) + v5 + 1904);
  v12 = llvm::ConstantInt::get();
  v23 = v25;
  v24 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(&v23, 1uLL, v12);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v23, Add);
  v13 = *(*v5 - 3) + v5;
  v14 = v5[229];
  v22 = 257;
  GEP = AGCLLVMBuilder::CreateGEP((v13 + 1704), v14, v23, v24, v21);
  v16 = *(*v5 - 3) + v5;
  v17 = *v3;
  v22 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v16 + 1712), 49, GEP, v17, v21);
  if (llvm::SmallPtrSetImplBase::erase_imp(v5 + 131, v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v21, (v5 + 131), Cast);
  }

  if (v23 != v25)
  {
    free(v23);
  }

  v19 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_28>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9508;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_29>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A94C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = **(a1 + 16);
  v7[0] = &unk_2825A9478;
  v7[1] = v4;
  v7[3] = v7;
  v8[0] = &unk_2825A9118;
  v8[1] = v3;
  v8[2] = v7;
  v8[3] = v8;
  iterateResourceUsers(v2, v8);
  std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v8);
  result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = v5 + *(*v5 - 24);
  v7 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
  v8 = *(v6 + 1904);
  v9 = llvm::ConstantInt::get();
  v20 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, v9, v19);
  v11 = v5 + *(*v5 - 24);
  v12 = *v3;
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v11 + 1712, 48, Add, v12, v19);
  v14 = AGCLLVMUserObject::buildImageHeapIndex(v5, Cast);
  v15 = v5 + *(*v5 - 24);
  v16 = *v3;
  v20 = 257;
  v17 = llvm::IRBuilderBase::CreateCast(v15 + 1712, 48, v14, v16, v19);
  if (llvm::SmallPtrSetImplBase::erase_imp((v5 + 1048), v3))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v19, (v5 + 1048), v17);
  }

  return v17;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_26>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9478;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_27>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A9430;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A93E8;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A93E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_25>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A93A0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A9358;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9358;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_24>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9310;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    v9 = &unk_2825A92C8;
    v10 = *v6;
    v11 = &v9;
    v12[0] = &unk_2825A7D20;
    v12[1] = v5;
    v12[2] = &v9;
    v12[3] = v12;
    v7 = iterateResourceUsers(v4, v12);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v12);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](&v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((*(*v6 - 3) + v6 + 1712), *a2);
  v7 = *(*v6 - 3) + v6;
  v8 = *(v4 - 4 * (*(v4 + 5) & 0x7FFFFFF));
  v9 = *(v7 + 238);
  v10 = llvm::ConstantInt::get();
  v25 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v7 + 1712), v8, v10, v24);
  Mul = Add;
  v13 = *v6;
  if (!*(*(*(*v6 - 3) + v6 + 2168) + 1900))
  {
    v14 = AGCLLVMObject::useTextureIDLegacyMode(Add);
    v13 = *v6;
    if (v14)
    {
      v15 = *v6;
      v16 = *(v13 - 3) + v6;
      v17 = **(a1 + 16);
      v18 = *(v16 + 238);
      v19 = llvm::ConstantInt::get();
      v25 = 257;
      Mul = llvm::IRBuilderBase::CreateMul((v16 + 1712), Mul, v19, v24);
      v13 = *v6;
    }
  }

  v20 = *(v13 - 3) + v6;
  v21 = *v4;
  v25 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v20 + 1712), 48, Mul, v21, v24);
  if (llvm::SmallPtrSetImplBase::erase_imp(v6 + 131, v4))
  {
    llvm::SmallPtrSetImpl<void *>::insert(v24, (v6 + 131), Cast);
  }

  return Cast;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_22>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A92C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_23>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A9280;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A9238;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9238;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_21>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A91F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A9160;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A9118;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::operator()(uint64_t a1, llvm::Instruction **a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  llvm::IRBuilderBase::SetInsertPoint((v5 + *(*v5 - 24) + 1712), *a2);
  v6 = *(v5 + *(*v5 - 24) + 1904);
  v7 = llvm::ConstantInt::get();
  AddOffset = AGCLLVMUserObject::ResourceArrayIndex16x2::createAddOffset(v5, v7, *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF)), v8);
  v10 = v5 + *(*v5 - 24);
  v11 = *(v10 + 239);
  v20[0] = "extended_offset";
  v21 = 259;
  Cast = llvm::IRBuilderBase::CreateCast((v10 + 1712), 39, AddOffset, v11, v20);
  v13 = v5 + *(*v5 - 24);
  v14 = *(v13 + 239);
  v15 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((v13 + 1712), Cast, v15, v20);
  v17 = v5 + *(*v5 - 24);
  v18 = *v3;
  v21 = 257;
  return llvm::IRBuilderBase::CreateCast((v17 + 1712), 48, Add, v18, v20);
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic,unsigned int)#1}>,llvm::Value * ()(ResourceIntrinsic,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9160;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A91A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = *(v3 + 16);
    v6 = **(v3 + 24);
    v9[0] = &unk_2825A9160;
    v9[1] = v6;
    v9[3] = v9;
    v10[0] = &unk_2825A9118;
    v10[1] = v5;
    v10[2] = v9;
    v10[3] = v10;
    v7 = iterateResourceUsers(v4, v10);
    std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v10);
    **(v3 + 8) = v7;
    result = std::__function::__value_func<llvm::Value * ()(ResourceIntrinsic,unsigned int)>::~__value_func[abi:nn200100](v9);
  }

  else
  {
    *v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A90D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A9088;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9088;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A9040;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8FF8;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8FF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateResourceRegisterArray<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8FB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[12];
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = v5 == *(v4 + 40) + 40;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5 - 24);
  }

  llvm::IRBuilderBase::SetInsertPoint((v3 + *(*v3 - 24) + 1712), v7);
  v8 = v3 + *(*v3 - 24);
  v12 = 257;
  Load = AGCLLVMBuilder::CreateLoad((v8 + 1704), v4, v11);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(v2);
  llvm::SmallPtrSetImpl<void *>::insert(v11, (v3 + 131), Load);
  return 1;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_19>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8F68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20,std::allocator<AGCLLVMUserObject::allocateTexturesAndSamplers(void)::$_20>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8F20;
  a2[1] = v2;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,llvm::GlobalVariable *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,llvm::GlobalVariable *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = *a2;
    v4 = *(result + 16);
    v6 = *v4;
    v7 = v4[1];
    v8 = *(v4 + 4);
    operator new();
  }

  *v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a1 + 32);
  v5 = *a2 - 32 * (*(*a2 + 5) & 0x7FFFFFF);
  if ((**(a1 + 8) & 1) == 0)
  {
    v6 = *(v5 + 96);
    v7 = (v6 + 24);
    if (*(v6 + 32) >= 0x41u)
    {
      v7 = *v7;
    }

    if (!*v7)
    {
      goto LABEL_24;
    }
  }

  v8 = *(a1 + 16);
  v9 = *(v5 + 64);
  v10 = (v9 + 24);
  v11 = *(v9 + 32);
  v12 = v10;
  if (v11 >= 0x41)
  {
    v12 = *v10;
  }

  v15 = *(v8 + 8);
  v13 = v8 + 8;
  v14 = v15;
  if (v15)
  {
    v16 = *v12;
    v17 = v13;
    do
    {
      v18 = *(v14 + 32);
      v19 = v18 >= v16;
      v20 = v18 < v16;
      if (v19)
      {
        v17 = v14;
      }

      v14 = *(v14 + 8 * v20);
    }

    while (v14);
    if (v17 != v13 && *(v17 + 32) <= v16)
    {
      v22 = *(a1 + 24);
      if (v11 >= 0x41)
      {
        v10 = *v10;
      }

      LODWORD(v43[0]) = *v10;
      v41[0] = v43;
      v23 = std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v22, v43[0]);
      v24 = *(v23 + 9) - *(v23 + 8) + 1;
      llvm::IRBuilderBase::SetInsertPoint((v4 + *(*v4 - 24) + 1712), v3);
      GEP = *(v17 + 40);
      if (v24 >= 2)
      {
        v26 = *(v3 - 4 * (*(v3 + 5) & 0x7FFFFFF));
        v27 = v4 + *(*v4 - 24);
        v28 = *(v27 + 238);
        v43[0] = llvm::ConstantInt::get();
        v43[1] = v26;
        v42 = 257;
        GEP = AGCLLVMBuilder::CreateGEP((v27 + 1704), GEP, v43, 2, v41);
      }

      v29 = v4 + *(*v4 - 24);
      if (**(a1 + 40))
      {
        v30 = *v3;
        v42 = 257;
        llvm::IRBuilderBase::CreateCast((v29 + 1712), 49, GEP, v30, v41);
      }

      else
      {
        v31 = *(v29 + 238);
        v32 = llvm::PointerType::get();
        v33 = v4 + *(*v4 - 24);
        v34 = *(v33 + 238);
        v42 = 257;
        Cast = llvm::IRBuilderBase::CreateCast((v33 + 1712), 49, GEP, v32, v41);
        v44 = 257;
        llvm::Type::isOpaquePointerTy(*Cast);
        AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v33 + 214, v34, Cast, 0, v43);
        v37 = v4 + *(*v4 - 24);
        v38 = *v3;
        v42 = 257;
        v39 = llvm::IRBuilderBase::CreateCast((v37 + 1712), 48, AlignedLoad, v38, v41);
        llvm::SmallPtrSetImpl<void *>::insert(v41, (v4 + 131), v39);
      }

      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v3);
LABEL_24:
      result = 1;
      goto LABEL_25;
    }
  }

  result = 0;
LABEL_25:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
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
      v4 = *(v2 + 28);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#2}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8E90;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8ED8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = *a2;
    v4 = *(result + 16);
    v6 = *v4;
    v7 = v4[1];
    v8 = *(v4 + 4);
    operator new();
  }

  *v2 = 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8E48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6 = &unk_2825A8DB8;
  v7 = *v3;
  v8 = &v6;
  iterateResourceUsers(v2, &v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF);
  if (**(a1 + 8))
  {
    goto LABEL_5;
  }

  v5 = *(v4 + 96);
  v6 = (v5 + 24);
  if (*(v5 + 32) >= 0x41u)
  {
    v6 = *v6;
  }

  if (*v6)
  {
LABEL_5:
    v7 = *(a1 + 16);
    v8 = *(v4 + 64);
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v12 = *(v7 + 8);
    v10 = (v7 + 8);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *v9;
    v14 = v10;
    do
    {
      v15 = v11[7];
      v16 = v15 >= v13;
      v17 = v15 < v13;
      if (v16)
      {
        v14 = v11;
      }

      v11 = *&v11[2 * v17];
    }

    while (v11);
    if (v14 != v10 && v14[7] <= v13)
    {
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v23 = v14[8];
      v24 = v14[9];
      if (v26 < v23)
      {
        v23 = v26;
      }

      if (v24 <= HIDWORD(v26))
      {
        v24 = HIDWORD(v26);
      }

      v14[8] = v23;
      v14[9] = v24;
    }

    else
    {
LABEL_15:
      AGCArgumentBuffer::Resource::Bounds::Bounds(&v26, *(v4 + 32));
      v18 = v26;
      v19 = *(a1 + 16);
      v20 = *(v3 - 32 * (*(v3 + 20) & 0x7FFFFFF) + 64);
      v21 = (v20 + 24);
      if (*(v20 + 32) >= 0x41u)
      {
        v21 = *v21;
      }

      v25 = *v21;
      v26 = &v25;
      std::__tree<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,AGCArgumentBuffer::Resource::Bounds>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v19, v25)[4] = v18;
    }
  }

  return 1;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8DB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8E00;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6 = &unk_2825A8DB8;
  v7 = *v3;
  v8 = &v6;
  iterateResourceUsers(v2, &v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateGBTIndirectedTextureAndSamplers<AGCLLVMUserObject::Texture>(std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>> &,BOOL)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8D70;
  a2[1] = v2;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2)
{
  v2 = a1[1];
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

  return v6;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_2825A8CE0;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, llvm::Instruction **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v9, (*a2 - 4 * (*(*a2 + 5) & 0x7FFFFFF))[4]);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::find<unsigned int>(v3, v9);
  v5 = v4;
  if (v4)
  {
    v6 = v4[3];
    v7 = *v2;
    llvm::ConstantExpr::getPointerCast();
    llvm::Value::replaceAllUsesWith();
    llvm::Instruction::eraseFromParent(v2);
  }

  return v5 != 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8CE0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#4}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8D28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::operator()(uint64_t result, llvm::Constant **a2)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = *(result + 8);
  if (*v2 == 1)
  {
    v3 = result;
    v4 = *a2;
    v5 = **(v3 + 16);
    v7[0] = &unk_2825A8CE0;
    v7[1] = v5;
    v7[3] = v7;
    **(v3 + 8) = iterateResourceUsers(v4, v7);
    result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v7);
  }

  else
  {
    *v2 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#3}>,void ()(llvm::Function *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825A8C98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8C50;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8C50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#2}>,void ()(llvm::Function *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8C08;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}>,void ()(llvm::Function *)>::operator()(uint64_t a1, llvm::Constant **a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = *(a1 + 8);
  v6[0] = &unk_2825A8BC0;
  v6[1] = v3;
  v6[3] = v6;
  iterateResourceUsers(v2, v6);
  result = std::__function::__value_func<BOOL ()(ResourceIntrinsic)>::~__value_func[abi:nn200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  AGCArgumentBuffer::Resource::Bounds::Bounds(&v7, *(*a2 - 32 * (*(*a2 + 20) & 0x7FFFFFF) + 32));
  v4 = *(v2 - 32 * (*(v2 + 20) & 0x7FFFFFF) + 64);
  v5 = (v4 + 24);
  if (*(v4 + 32) >= 0x41u)
  {
    v5 = *v5;
  }

  IntervalMap<unsigned int>::insert(v3, v7, *v5);
  return 1;
}

uint64_t std::__function::__func<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1},std::allocator<BOOL AGCLLVMUserObject::allocateDirectRegisters<AGCLLVMUserObject::Texture>(AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,AGCLLVMUserObject::TextureSamplerPlaceholderFunctions const&,std::set<AGCLLVMUserObject::Texture,AGCLLVMUserObject::ResourceComparator,std::allocator<AGCLLVMUserObject::Texture>>)::{lambda(llvm::Function *)#1}::operator() const(llvm::Function *)::{lambda(ResourceIntrinsic)#1}>,BOOL ()(ResourceIntrinsic)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825A8BC0;
  a2[1] = v2;
  return result;
}