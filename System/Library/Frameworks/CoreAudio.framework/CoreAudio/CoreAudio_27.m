unint64_t ADS::Device::getRequestedSubObjects(uint64_t *a1, uint64_t *a2, unsigned int a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = a1;
  v7 = 0;
  v8 = a3;
  do
  {
    __p = 0;
    v14 = 0;
    v15 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *v6, v6[1], (v6[1] - *v6) >> 2);
    v9 = __p;
    if (v7 < v8)
    {
      v10 = 0;
      v11 = (v14 - __p) >> 2;
      while (v11 > v10)
      {
        *(a4 + 4 * v7) = v9[v10++];
        if (v8 == ++v7)
        {
          v7 = v8;
          goto LABEL_10;
        }
      }

      v7 = v7;
    }

    if (v9)
    {
LABEL_10:
      operator delete(v9);
    }

    v6 += 3;
  }

  while (v6 != a2);
  return v7;
}

void std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL OS::CF::operator==(CFStringRef theString1, const __CFString *a2)
{
  result = 0;
  if (theString1)
  {
    if (a2)
    {
      return CFStringCompare(theString1, a2, 0) == kCFCompareEqualTo;
    }
  }

  return result;
}

void *std::copy_n[abi:ne200100]<std::__tree_const_iterator<ADS::AudioValueRangeWrapper,std::__tree_node<ADS::AudioValueRangeWrapper,void *> *,long>,unsigned int,ADS::AudioValueRangeWrapper*,0>(void *result, int a2, _OWORD *a3)
{
  if (a2)
  {
    *a3 = *(result + 2);
    v3 = a2 - 1;
    if (a2 != 1)
    {
      do
      {
        v4 = result[1];
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = result[2];
            v6 = *v5 == result;
            result = v5;
          }

          while (!v6);
        }

        a3[1] = *(v5 + 2);
        ++a3;
        result = v5;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void mcp_applesauce::CF::Dictionary_Builder::add_value<__CFString const*,applesauce::CF::DictionaryRef>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    CFDictionaryAddValue(a1, a2, a3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<unsigned int>>,std::vector<unsigned int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t ADS::Device::GetPropertyDataSize(ADS::Device *this, ADS::ObjectManager *a2, uint64_t a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*(this + 2) != a2)
  {
    v15 = ADS::ObjectManager::CopyObjectByObjectID(a2);
    v16 = v15;
    if (!v15)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = 136315394;
        v39 = "ADS_Device.cpp";
        v40 = 1024;
        v41 = 2160;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::GetPropertyData: unknown device", &v38, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560947818;
    }

    v9 = (*(*v15 + 48))(v15, a2, a3, a4, a5, a6);
    ADS::ObjectManager::ReleaseObject(v16, v17);
    goto LABEL_86;
  }

  mSelector = a4->mSelector;
  v9 = 8;
  if (a4->mSelector <= 1751738722)
  {
    if (mSelector > 1685087595)
    {
      if (mSelector <= 1702248803)
      {
        if (mSelector > 1685287011)
        {
          if (mSelector == 1685287012)
          {
            goto LABEL_85;
          }

          if (mSelector == 1685484385)
          {
            v9 = 64;
            goto LABEL_86;
          }

          v10 = 1685484386;
          goto LABEL_84;
        }

        if (mSelector == 1685087596)
        {
          goto LABEL_85;
        }

        if (mSelector == 1685278529)
        {
          goto LABEL_86;
        }

        v18 = 1685278578;
      }

      else
      {
        if (mSelector <= 1719105133)
        {
          if (mSelector == 1702248804 || mSelector == 1702392685)
          {
            goto LABEL_85;
          }

          v10 = 1718841206;
          goto LABEL_84;
        }

        if (mSelector > 1735354733)
        {
          if (mSelector == 1735354734)
          {
            goto LABEL_85;
          }

          v10 = 1751737454;
          goto LABEL_84;
        }

        if (mSelector == 1719105134)
        {
          goto LABEL_86;
        }

        v18 = 1719301235;
      }
    }

    else if (mSelector <= 1668575851)
    {
      if (mSelector > 1634429293)
      {
        if (mSelector == 1634429294)
        {
          v20 = *(this + 96);
          goto LABEL_115;
        }

        if (mSelector != 1634690672)
        {
          v10 = 1668049764;
          goto LABEL_84;
        }

        goto LABEL_86;
      }

      if (mSelector == 1633970543)
      {
        goto LABEL_86;
      }

      if (mSelector == 1634038341)
      {
        goto LABEL_85;
      }

      v18 = 1634038357;
    }

    else
    {
      if (mSelector <= 1684107363)
      {
        if (mSelector != 1668575852)
        {
          if (mSelector != 1668639076)
          {
            if (mSelector != 1668641652)
            {
              goto LABEL_104;
            }

            v9 = 12 * ADS::PropertyManager::Size((this + 24)) + 180;
          }

LABEL_86:
          v21 = *MEMORY[0x1E69E9840];
          return v9;
        }

        mScope = a4->mScope;
        switch(mScope)
        {
          case 0x6F757470u:
            v36 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_3>(*(this + 59), *(this + 60));
            break;
          case 0x696E7074u:
            v36 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_2>(*(this + 59), *(this + 60));
            break;
          case 0x676C6F62u:
            v30 = *(this + 120);
            v31 = *(this + 118);
            goto LABEL_111;
          default:
            goto LABEL_107;
        }

        v9 = (4 * v36);
        goto LABEL_86;
      }

      if (mSelector > 1684434035)
      {
        if (mSelector == 1684434036)
        {
          goto LABEL_85;
        }

        v10 = 1684893796;
        goto LABEL_84;
      }

      if (mSelector == 1684107364)
      {
        goto LABEL_85;
      }

      v18 = 1684236338;
    }

LABEL_74:
    if (mSelector != v18)
    {
      goto LABEL_104;
    }

    goto LABEL_86;
  }

  if (mSelector <= 1853059618)
  {
    if (mSelector <= 1769302371)
    {
      if (mSelector > 1752525154)
      {
        if (mSelector == 1752525155 || mSelector == 1768515184)
        {
          goto LABEL_86;
        }

        v18 = 1768777573;
      }

      else
      {
        if (mSelector == 1751738723 || mSelector == 1751740259)
        {
          goto LABEL_86;
        }

        v18 = 1752197475;
      }
    }

    else
    {
      if (mSelector <= 1819107690)
      {
        if (mSelector == 1769302372)
        {
          goto LABEL_85;
        }

        if (mSelector != 1818454126)
        {
          v10 = 1818850926;
          goto LABEL_84;
        }

        goto LABEL_86;
      }

      if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          goto LABEL_85;
        }

        v18 = 1836411236;
      }

      else
      {
        if (mSelector == 1819107691)
        {
          goto LABEL_86;
        }

        v18 = 1819173229;
      }
    }

    goto LABEL_74;
  }

  if (mSelector <= 1936618860)
  {
    if (mSelector > 1919512166)
    {
      if (mSelector <= 1935892847)
      {
        if (mSelector != 1919512167)
        {
          v10 = 1935763060;
          goto LABEL_84;
        }

LABEL_85:
        v9 = 4;
        goto LABEL_86;
      }

      if (mSelector == 1935892848)
      {
        goto LABEL_85;
      }

      v10 = 1936092276;
LABEL_84:
      if (mSelector == v10)
      {
        goto LABEL_85;
      }

      goto LABEL_104;
    }

    if (mSelector == 1853059619)
    {
      v9 = (16 * *(this + 104));
      goto LABEL_86;
    }

    if (mSelector != 1853059700)
    {
      if (mSelector == 1870098020)
      {
        v19 = a4->mScope;
        switch(v19)
        {
          case 0x6F757470u:
            v33 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_1>(*(this + 59), *(this + 60));
            v34 = *(this + 114);
            v35 = *(this + 112);
            break;
          case 0x696E7074u:
            v33 = std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_0>(*(this + 59), *(this + 60));
            v34 = *(this + 108);
            v35 = *(this + 106);
            break;
          case 0x676C6F62u:
            v20 = ((*(this + 114) - *(this + 112)) >> 2) + ((*(this + 108) - *(this + 106)) >> 2) + ((*(this + 120) - *(this + 118)) >> 2);
LABEL_115:
            v9 = 4 * v20;
            goto LABEL_86;
          default:
            goto LABEL_107;
        }

        v20 = v33 + ((v34 - v35) >> 2);
        goto LABEL_115;
      }

LABEL_104:
      v32 = *MEMORY[0x1E69E9840];

      return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
    }

    goto LABEL_86;
  }

  if (mSelector > 1937009954)
  {
    if (mSelector > 1969841183)
    {
      if (mSelector != 1969841184)
      {
        v10 = 1986294896;
        goto LABEL_84;
      }

      goto LABEL_86;
    }

    if (mSelector != 1937009955)
    {
      v10 = 1953653102;
      goto LABEL_84;
    }

    v23 = a4->mScope;
    switch(v23)
    {
      case 0x6F757470u:
        v30 = *(this + 114);
        v31 = *(this + 112);
        break;
      case 0x696E7074u:
        v30 = *(this + 108);
        v31 = *(this + 106);
        break;
      case 0x676C6F62u:
        v20 = ((*(this + 114) - *(this + 112)) >> 2) + ((*(this + 108) - *(this + 106)) >> 2);
        goto LABEL_115;
      default:
LABEL_107:
        v9 = 0;
        goto LABEL_86;
    }

LABEL_111:
    v9 = (v30 - v31) & 0xFFFFFFFC;
    goto LABEL_86;
  }

  if (mSelector == 1936618861)
  {
    goto LABEL_86;
  }

  if (mSelector != 1936879204)
  {
    v18 = 1937008739;
    goto LABEL_74;
  }

  v24 = atomic_load(this + 214);
  if (v24 < 0)
  {
    v9 = 12;
    goto LABEL_86;
  }

  v25 = 568;
  if (a4->mScope == 1768845428)
  {
    v25 = 564;
  }

  v26 = atomic_load((this + v25));
  v27 = caulk::numeric::exceptional_mul<unsigned int>(v26 - 1);
  v28 = *MEMORY[0x1E69E9840];

  return caulk::numeric::exceptional_add<unsigned int>(v27);
}

void sub_1DE3F36D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_0>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1768845428)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_1>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1869968496)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_2>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1768845428)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t std::count_if[abi:ne200100]<std::__wrap_iter<unsigned int const*>,ADS::Device::Device_GetPropertyDataSize(unsigned int,int,AudioObjectPropertyAddress const&,unsigned int,void const*)::$_3>(unsigned int *a1, unsigned int *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = a1;
  v2 = 0;
  do
  {
    v5 = ADS::ObjectManager::CopyObjectByObjectID(*v4);
    v6 = *(v5 + 29);
    ADS::ObjectManager::ReleaseObject(v5, v7);
    if (v6 == 1869968496)
    {
      ++v2;
    }

    ++v4;
  }

  while (v4 != a2);
  return v2;
}

uint64_t ADS::Device::IsPropertySettable(ADS::Device *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (*(this + 2) != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v5 = 0;
  mSelector = a4->mSelector;
  if (a4->mSelector > 1751738722)
  {
    if (mSelector <= 1853059618)
    {
      if (mSelector <= 1769302371)
      {
        if (mSelector > 1752525154)
        {
          if (mSelector != 1752525155 && mSelector != 1768515184)
          {
            v7 = 1768777573;
            goto LABEL_75;
          }
        }

        else if (mSelector != 1751738723 && mSelector != 1751740259)
        {
          v8 = 1752197475;
          goto LABEL_67;
        }
      }

      else
      {
        if (mSelector > 1819107690)
        {
          if (mSelector > 1819569762)
          {
            if (mSelector == 1819569763)
            {
              return v5 & 1;
            }

            v7 = 1836411236;
            goto LABEL_75;
          }

          if (mSelector == 1819107691)
          {
            return v5 & 1;
          }

          v8 = 1819173229;
          goto LABEL_67;
        }

        if (mSelector != 1769302372)
        {
          if (mSelector == 1818454126)
          {
            return v5 & 1;
          }

          v7 = 1818850926;
          goto LABEL_75;
        }
      }

LABEL_68:
      v5 = 1;
      return v5 & 1;
    }

    if (mSelector > 1936618860)
    {
      if (mSelector > 1937009954)
      {
        if (mSelector > 1969841183)
        {
          if (mSelector == 1969841184)
          {
            return v5 & 1;
          }

          v7 = 1986294896;
        }

        else
        {
          if (mSelector == 1937009955)
          {
            return v5 & 1;
          }

          v7 = 1953653102;
        }

        goto LABEL_75;
      }

      if (mSelector == 1936618861 || mSelector == 1936879204)
      {
        return v5 & 1;
      }

      v8 = 1937008739;
      goto LABEL_67;
    }

    if (mSelector <= 1935763059)
    {
      if (mSelector == 1853059619)
      {
        return v5 & 1;
      }

      if (mSelector != 1853059700)
      {
        v7 = 1919512167;
        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (mSelector == 1935763060)
    {
      return v5 & 1;
    }

    if (mSelector != 1935892848)
    {
      v7 = 1936092276;
      goto LABEL_75;
    }

LABEL_53:
    v5 = *(this + 3) != 1633905771;
    return v5 & 1;
  }

  if (mSelector > 1685087595)
  {
    if (mSelector > 1702392684)
    {
      if (mSelector > 1719301234)
      {
        if (mSelector == 1719301235 || mSelector == 1735354734)
        {
          return v5 & 1;
        }

        v7 = 1751737454;
      }

      else
      {
        if (mSelector == 1702392685)
        {
          v5 = *(this + 717);
          return v5 & 1;
        }

        if (mSelector == 1718841206)
        {
          return v5 & 1;
        }

        v7 = 1719105134;
      }

      goto LABEL_75;
    }

    if (mSelector > 1685287011)
    {
      if ((mSelector - 1685484385) >= 2)
      {
        if (mSelector != 1685287012)
        {
          if (mSelector != 1702248804)
          {
            goto LABEL_77;
          }

          v5 = *(this + 718);
        }

        return v5 & 1;
      }

      goto LABEL_68;
    }

    if (mSelector != 1685087596)
    {
      if (mSelector == 1685278529)
      {
        return v5 & 1;
      }

      v7 = 1685278578;
      goto LABEL_75;
    }

    goto LABEL_53;
  }

  if (mSelector <= 1668575851)
  {
    if (mSelector <= 1634429293)
    {
      if (mSelector != 1633970543)
      {
        if (mSelector == 1634038341)
        {
          return v5 & 1;
        }

        v7 = 1634038357;
        goto LABEL_75;
      }

      goto LABEL_68;
    }

    if (mSelector == 1634429294)
    {
      return v5 & 1;
    }

    if (mSelector != 1634690672)
    {
      v7 = 1668049764;
      goto LABEL_75;
    }

    goto LABEL_53;
  }

  if (mSelector <= 1684107363)
  {
    if (mSelector == 1668575852 || mSelector == 1668639076)
    {
      return v5 & 1;
    }

    v8 = 1668641652;
LABEL_67:
    if (mSelector != v8)
    {
      goto LABEL_77;
    }

    goto LABEL_68;
  }

  if (mSelector <= 1684434035)
  {
    if (mSelector != 1684107364)
    {
      v7 = 1684236338;
      goto LABEL_75;
    }

    return v5 & 1;
  }

  if (mSelector == 1684434036)
  {
    return v5 & 1;
  }

  v7 = 1684893796;
LABEL_75:
  if (mSelector == v7)
  {
    return v5 & 1;
  }

LABEL_77:

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

uint64_t ADS::Device::HasProperty(ADS::Device *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (*(this + 2) != a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  mSelector = a4->mSelector;
  v6 = 1;
  if (a4->mSelector > 1751740258)
  {
    if (mSelector > 1853059699)
    {
      if (mSelector <= 1936618860)
      {
        if (mSelector <= 1935892847)
        {
          if (mSelector == 1853059700 || mSelector == 1919512167)
          {
            return v6 & 1;
          }

          if (mSelector != 1935763060)
          {
            goto LABEL_91;
          }

LABEL_71:
          mScope = a4->mScope;
          if (mScope == 1869968496 || mScope == 1768845428)
          {
            goto LABEL_90;
          }

          goto LABEL_73;
        }

        if (mSelector != 1935892848)
        {
          if (mSelector != 1936092276)
          {
            if (mSelector != 1936290671)
            {
              goto LABEL_91;
            }

            v6 = *(this + 716);
          }

          return v6 & 1;
        }

        goto LABEL_90;
      }

      if (mSelector <= 1937009954)
      {
        if (mSelector == 1936618861)
        {
          return v6 & 1;
        }

        if (mSelector != 1936879204)
        {
          v10 = 1937008739;
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      if (mSelector <= 1969841183)
      {
        if (mSelector != 1937009955)
        {
          v10 = 1953653102;
          goto LABEL_85;
        }

        goto LABEL_90;
      }

      if (mSelector == 1969841184)
      {
        return v6 & 1;
      }

      v11 = 1986294896;
    }

    else
    {
      if (mSelector > 1818454125)
      {
        if (mSelector <= 1819173228)
        {
          if (mSelector == 1818454126 || mSelector == 1818850926)
          {
            return v6 & 1;
          }

          v10 = 1819107691;
          goto LABEL_85;
        }

        if (mSelector > 1836411235)
        {
          if (mSelector == 1836411236)
          {
            return v6 & 1;
          }

          v10 = 1853059619;
          goto LABEL_85;
        }

        if (mSelector == 1819173229)
        {
          return v6 & 1;
        }

        if (mSelector != 1819569763)
        {
          goto LABEL_91;
        }

        v8 = a4->mScope;
        v9 = v8 == 1768845428 || v8 == 1869968496;
LABEL_100:
        v6 = v9;
        return v6 & 1;
      }

      if (mSelector <= 1768515183)
      {
        if (mSelector == 1751740259 || mSelector == 1752197475)
        {
          return v6 & 1;
        }

        v10 = 1752525155;
        goto LABEL_85;
      }

      if (mSelector == 1768515184 || mSelector == 1768777573)
      {
        return v6 & 1;
      }

      v11 = 1769302372;
    }

    if (mSelector != v11)
    {
      goto LABEL_91;
    }

    v13 = atomic_load(this + 214);
    if ((v13 & 0x100) == 0)
    {
      goto LABEL_91;
    }

    v9 = a4->mScope == 1735159650 && a4->mElement == 0;
    goto LABEL_100;
  }

  if (mSelector > 1685278528)
  {
    if (mSelector > 1718841205)
    {
      if (mSelector > 1735354733)
      {
        if (mSelector == 1735354734 || mSelector == 1751737454)
        {
          return v6 & 1;
        }

        v10 = 1751738723;
      }

      else
      {
        if (mSelector == 1718841206 || mSelector == 1719105134)
        {
          return v6 & 1;
        }

        v10 = 1719301235;
      }

      goto LABEL_85;
    }

    if (mSelector > 1685484384)
    {
      if ((mSelector - 1685484385) >= 2)
      {
        if (mSelector == 1702248804)
        {
          v6 = *(this + 718);
          return v6 & 1;
        }

        if (mSelector != 1702392685)
        {
          goto LABEL_91;
        }

        v6 = *(this + 717);
      }

      return v6 & 1;
    }

    if (mSelector == 1685278529)
    {
      return v6 & 1;
    }

    if (mSelector != 1685278578)
    {
      v7 = 1685287012;
      goto LABEL_89;
    }

    v15 = atomic_load(this + 214);
    if ((v15 & 0x400) == 0)
    {
      v16 = atomic_load(this + 214);
      if ((v16 & 0x800) == 0)
      {
LABEL_73:
        v6 = 0;
        return v6 & 1;
      }
    }

    v17 = a4->mScope;
    v18 = 1768845428;
    goto LABEL_99;
  }

  if (mSelector <= 1668639075)
  {
    if (mSelector <= 1634429293)
    {
      if (mSelector == 1633970543 || mSelector == 1634038341)
      {
        return v6 & 1;
      }

      v10 = 1634038357;
    }

    else
    {
      if (mSelector <= 1668049763)
      {
        if (mSelector != 1634429294)
        {
          v7 = 1634690672;
          goto LABEL_89;
        }

        return v6 & 1;
      }

      if (mSelector == 1668049764)
      {
        return v6 & 1;
      }

      v10 = 1668575852;
    }

LABEL_85:
    if (mSelector != v10)
    {
      goto LABEL_91;
    }

    return v6 & 1;
  }

  if (mSelector > 1684236337)
  {
    if (mSelector <= 1684893795)
    {
      if (mSelector != 1684236338)
      {
        v10 = 1684434036;
        goto LABEL_85;
      }

      goto LABEL_71;
    }

    if (mSelector != 1684893796)
    {
      v7 = 1685087596;
      goto LABEL_89;
    }

LABEL_90:
    v6 = *(this + 3) != 1633905771;
    return v6 & 1;
  }

  if (mSelector == 1668639076)
  {
    v17 = *(this + 3);
    v18 = 1633905771;
LABEL_99:
    v9 = v17 == v18;
    goto LABEL_100;
  }

  if (mSelector == 1668641652)
  {
    return v6 & 1;
  }

  v7 = 1684107364;
LABEL_89:
  if (mSelector == v7)
  {
    goto LABEL_90;
  }

LABEL_91:

  return ADS::BaseObject::HasProperty(this, a2, a3, a4);
}

void ADS::Device::~Device(ADS::Device *this)
{
  ADS::Device::~Device(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596C9A8;
  v2 = *(this + 118);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 104);
  if (v3)
  {
    CFRelease(v3);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 816));
  OS::CF::UntypedObject::~UntypedObject((this + 800));
  OS::CF::UntypedObject::~UntypedObject((this + 784));
  CAExtAudioFile::~CAExtAudioFile((this + 688));
  v4 = *(this + 85);
  if (v4)
  {
    CFRelease(v4);
  }

  OS::CF::UntypedObject::~UntypedObject((this + 600));
  v5 = *(this + 72);
  if (v5)
  {
    *(this + 73) = v5;
    operator delete(v5);
  }

  v6 = *(this + 59);
  if (v6)
  {
    *(this + 60) = v6;
    operator delete(v6);
  }

  v7 = *(this + 56);
  if (v7)
  {
    *(this + 57) = v7;
    operator delete(v7);
  }

  v8 = *(this + 53);
  if (v8)
  {
    *(this + 54) = v8;
    operator delete(v8);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 51));
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(this + 360);
  CADeprecated::CAMutex::~CAMutex((this + 272));
  CADeprecated::CAMutex::~CAMutex((this + 184));
  OS::CF::UntypedObject::~UntypedObject((this + 168));
  OS::CF::UntypedObject::~UntypedObject((this + 152));
  OS::CF::UntypedObject::~UntypedObject((this + 136));
  OS::CF::UntypedObject::~UntypedObject((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

void CAExtAudioFile::~CAExtAudioFile(CAExtAudioFile *this)
{
  *this = &unk_1F596CAB8;
  CAExtAudioFile::Close(this);
}

{
  CAExtAudioFile::~CAExtAudioFile(this);

  JUMPOUT(0x1E12C1730);
}

void CAExtAudioFile::CheckProperty(CAExtAudioFile *this, int a2, const char *a3, int a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v7[0] = HIBYTE(a4);
    v7[1] = BYTE2(a4);
    v7[2] = BYTE1(a4);
    v7[3] = a4;
    v7[4] = 0;
    snprintf(__str, 0x80uLL, "%s ('%s') failed", a3, v7);
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void CAXException::CAXException(CAXException *this, const char *__s, int a3)
{
  *this = &unk_1F5971690;
  *(this + 66) = a3;
  if (__s)
  {
    if (strlen(__s) < 0x100)
    {
      strlcpy(this + 8, __s, 0x100uLL);
    }

    else
    {
      v5 = *__s;
      v6 = *(__s + 1);
      v7 = *(__s + 2);
      *(this + 56) = *(__s + 3);
      *(this + 40) = v7;
      *(this + 24) = v6;
      *(this + 8) = v5;
      v8 = *(__s + 4);
      v9 = *(__s + 5);
      v10 = *(__s + 6);
      *(this + 120) = *(__s + 7);
      *(this + 104) = v10;
      *(this + 88) = v9;
      *(this + 72) = v8;
      v11 = *(__s + 8);
      v12 = *(__s + 9);
      v13 = *(__s + 10);
      *(this + 184) = *(__s + 11);
      *(this + 168) = v13;
      *(this + 152) = v12;
      *(this + 136) = v11;
      v14 = *(__s + 12);
      v15 = *(__s + 13);
      v16 = *(__s + 14);
      *(this + 247) = *(__s + 239);
      *(this + 232) = v16;
      *(this + 216) = v15;
      *(this + 200) = v14;
      *(this + 263) = 0;
    }
  }

  else
  {
    *(this + 8) = 0;
  }
}

void CAExtAudioFile::Check(CAExtAudioFile *this, int a2, const char *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    snprintf(__str, 0x80uLL, "%s failed", a3);
    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, __str, a2);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void ADS::Device::Deactivate(ADS::Device *this)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = (this + 184);
  v2 = *(this + 23);
  v23 = this + 184;
  v4 = (*(v2 + 16))(this + 184);
  v24 = v4;
  v21 = v3 + 11;
  v5 = (*(v3[11] + 16))(v3 + 11);
  v22 = v5;
  *(this + 112) = 0;
  memset(v25, 0, sizeof(v25));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v25, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
  v17 = v4;
  memset(v26, 0, sizeof(v26));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v26, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
  v27 = 0;
  v28[0] = 0;
  v28[1] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v27, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
  for (i = 0; i != 9; i += 3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v18, v25[i], v25[i + 1], (v25[i + 1] - v25[i]) >> 2);
    v7 = v18;
    v8 = v19;
    for (j = v18; j != v8; ++j)
    {
      v10 = ADS::ObjectManager::CopyObjectByObjectID(*j);
      v12 = v10;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        ADS::ObjectManager::ReleaseObject(v12, v13);
      }

      ADS::ObjectManager::ReleaseObject(v12, v11);
    }

    if (v7)
    {
      operator delete(v7);
    }
  }

  for (k = 0; k != -9; k -= 3)
  {
    v15 = v28[k - 1];
    if (v15)
    {
      v28[k] = v15;
      operator delete(v15);
    }
  }

  *(this + 54) = *(this + 53);
  *(this + 57) = *(this + 56);
  *(this + 60) = *(this + 59);
  if (v5)
  {
    (*(v3[11] + 24))(v3 + 11);
  }

  if (v17)
  {
    (*(*v3 + 24))(v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1DE3F4A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ADS::Device::Activate(ADS::Device *this)
{
  v17[2] = *MEMORY[0x1E69E9840];
  memset(v14, 0, sizeof(v14));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v14, *(this + 53), *(this + 54), (*(this + 54) - *(this + 53)) >> 2);
  memset(v15, 0, sizeof(v15));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v15, *(this + 56), *(this + 57), (*(this + 57) - *(this + 56)) >> 2);
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v16, *(this + 59), *(this + 60), (*(this + 60) - *(this + 59)) >> 2);
  for (i = 0; i != 9; i += 3)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v11, v14[i], v14[i + 1], (v14[i + 1] - v14[i]) >> 2);
    v3 = v11;
    v4 = v12;
    for (j = v11; j != v4; ++j)
    {
      v6 = ADS::ObjectManager::CopyObjectByObjectID(*j);
      (**v6)(v6);
      ADS::ObjectManager::ReleaseObject(v6, v7);
    }

    if (v3)
    {
      operator delete(v3);
    }
  }

  for (k = 0; k != -9; k -= 3)
  {
    v9 = v17[k - 1];
    if (v9)
    {
      v17[k] = v9;
      operator delete(v9);
    }
  }

  *(this + 112) = 1;
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t ADS::Device::Device(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a1;
  v372 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = a2;
  *(a1 + 12) = 0x616F626A61646576;
  *(a1 + 20) = a3;
  *(a1 + 24) = 850045863;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *a1 = &unk_1F596C9A8;
  OS::CF::String::String((a1 + 120), "Unnamed Device");
  OS::CF::String::String((v5 + 136), "Apple Inc.");
  v6 = *MEMORY[0x1E695E478];
  v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E478], 0, @"TestDevice_%u", a2);
  *(v5 + 152) = &unk_1F5991188;
  *(v5 + 160) = v7;
  *(v5 + 168) = &unk_1F5991188;
  *(v5 + 176) = @"SimulatorDeviceModelUID";
  CADeprecated::CAMutex::CAMutex((v5 + 184), "Device State");
  CADeprecated::CAMutex::CAMutex((v5 + 272), "IO Mutex");
  *__p = a2;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 1065353216;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>((v5 + 360), a2);
  *(v5 + 408) = 0;
  *(v5 + 416) = 0;
  v202 = (v5 + 408);
  *(v5 + 400) = v5 + 408;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 0u;
  *(v5 + 485) = 0u;
  *(v5 + 504) = 0u;
  *(v5 + 520) = 0u;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 257;
  *(v5 + 554) = 0;
  v203 = (v5 + 556);
  *(v5 + 556) = xmmword_1DE758060;
  *(v5 + 576) = 0;
  *(v5 + 592) = 0;
  *(v5 + 584) = 0;
  OS::CF::String::String((v5 + 600), "/tmp");
  *(v5 + 616) = 0;
  *(v5 + 624) = 10;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 664) = 0u;
  v8 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
  *(v5 + 680) = v8;
  v205 = v5;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *(v5 + 688) = &unk_1F596CAB8;
  *(v5 + 696) = 0;
  *(v5 + 704) = 0xF424000000000;
  *(v5 + 712) = 0;
  *(v5 + 715) = 0;
  *(v5 + 720) = 0u;
  *(v5 + 736) = 1986622068;
  *(v5 + 744) = 0;
  *(v5 + 792) = 0;
  *(v5 + 752) = 0u;
  *(v5 + 768) = 0u;
  *(v5 + 784) = &unk_1F5991188;
  *(v5 + 808) = 0;
  *(v5 + 800) = &unk_1F5991188;
  *(v5 + 824) = CFDataCreate(0, DUMMY_IMAGE, 4);
  *(v5 + 816) = &unk_1F596CAF8;
  *(v5 + 832) = 0u;
  *(v5 + 848) = 0;
  *(v5 + 852) = 1065353216;
  *(v5 + 864) = 0;
  *(v5 + 896) = 0;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0;
  *(v5 + 920) = 0;
  *(v5 + 928) = 0;
  *(v5 + 932) = 0;
  *(v5 + 888) = 0;
  *(v5 + 872) = 0u;
  *(v5 + 936) = 1;
  *(v5 + 944) = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v327, *(a4 + 8), @"uuid");
  if (v328)
  {
    OS::CF::String::operator=(v5 + 152, v328);
  }

  else
  {
    *&buf[8] = CFUUIDCreate(v6);
    *buf = &unk_1F596CB48;
    *(&v349 + 1) = CFUUIDCreateString(0, *&buf[8]);
    *&v349 = &unk_1F5991188;
    OS::CF::String::AsStdString(__p, &v349);
    if (__p[23] >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = *__p;
    }

    v10 = CFStringCreateWithFormat(v6, 0, @"TestDevice_%s", v9);
    OS::CF::UntypedObject::operator=(v5 + 152, v10);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    OS::CF::UntypedObject::~UntypedObject(&v349);
    OS::CF::UntypedObject::~UntypedObject(buf);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v325, *(a4 + 8), @"model");
  if (v326)
  {
    OS::CF::String::operator=(v5 + 168, v326);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v323, *(a4 + 8), @"name");
  if (v324)
  {
    OS::CF::String::operator=(v5 + 120, v324);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v321, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v319, "name");
    if (v320 < 0)
    {
      operator delete(v319);
    }

    if (v322 < 0)
    {
      operator delete(v321);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v317, *(a4 + 8), @"serial number");
  if (v318)
  {
    OS::CF::String::operator=(v5 + 800, v318);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v315, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v313, "serial number");
    if (v314 < 0)
    {
      operator delete(v313);
    }

    if (v316 < 0)
    {
      operator delete(v315);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v311, *(a4 + 8), @"manufacturer");
  if (v312)
  {
    OS::CF::String::operator=(v5 + 136, v312);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v309, *(a4 + 8), @"firmware version");
  if (v310)
  {
    OS::CF::String::operator=(v5 + 784, v310);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v307, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v305, "firmware version");
    if (v306 < 0)
    {
      operator delete(v305);
    }

    if (v308 < 0)
    {
      operator delete(v307);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v303, *(a4 + 8), @"clock latency");
  if (v304)
  {
    *(v5 + 728) = OS::CF::Number::GetValue<unsigned int>(v304, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v301, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v299, "clock latency");
    if (v300 < 0)
    {
      operator delete(v299);
    }

    if (v302 < 0)
    {
      operator delete(v301);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v297, *(a4 + 8), @"latency");
  if (v298)
  {
    *(v5 + 732) = OS::CF::Number::GetValue<unsigned int>(v298, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v295, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v293, "latency");
    if (v294 < 0)
    {
      operator delete(v293);
    }

    if (v296 < 0)
    {
      operator delete(v295);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v291, *(a4 + 8), @"hidden");
  if (v292)
  {
    *(v5 + 554) = OS::CF::Boolean::AsBool(v292);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v289, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v287, "hidden");
    if (v288 < 0)
    {
      operator delete(v287);
    }

    if (v290 < 0)
    {
      operator delete(v289);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v285, *(a4 + 8), @"ring buffer frame size");
  if (v286)
  {
    v11 = OS::CF::Number::GetValue<unsigned int>(v286, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v283, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v281, "ring buffer frame size");
    if (v282 < 0)
    {
      operator delete(v281);
    }

    if (v284 < 0)
    {
      operator delete(v283);
    }

    v11 = 0x4000;
  }

  *(v5 + 740) = v11;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v279, *(a4 + 8), @"transport type");
  if (v280)
  {
    *(v5 + 736) = OS::CF::Number::GetValue<unsigned int>(v280, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v277, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v275, "transport type");
    if (v276 < 0)
    {
      operator delete(v275);
    }

    if (v278 < 0)
    {
      operator delete(v277);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v273, *(a4 + 8), @"clock domain");
  if (v274)
  {
    *(v5 + 496) = OS::CF::Number::GetValue<unsigned int>(v274, 0);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v271, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v269, "clock domain");
    if (v270 < 0)
    {
      operator delete(v269);
    }

    if (v272 < 0)
    {
      operator delete(v271);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v267, *(a4 + 8), @"related devices");
  v12 = v268;
  if (v268)
  {
    for (i = 0; i < OS::CF::ArrayBase<__CFArray const*>::GetSize(v12); ++i)
    {
      OS::CF::ArrayBase<__CFArray const*>::operator[](buf, v267, i);
      OS::CF::UntypedObject::As<OS::CF::Number>(__p, buf);
      OS::CF::UntypedObject::~UntypedObject(buf);
      if (*&__p[8])
      {
        *buf = OS::CF::Number::GetValue<unsigned int>(*&__p[8], 0);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int>((v5 + 360), *buf);
      }

      OS::CF::UntypedObject::~UntypedObject(__p);
      v12 = v268;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v265, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v263, "related devices");
    if (v264 < 0)
    {
      operator delete(v263);
    }

    if (v266 < 0)
    {
      operator delete(v265);
    }
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v261, *(a4 + 8), @"custom");
  if (v262)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E9C10];
    while (1)
    {
      if (v14 >= OS::CF::ArrayBase<__CFArray const*>::GetSize(v262))
      {
        goto LABEL_303;
      }

      OS::CF::ArrayBase<__CFArray const*>::operator[](__p, v261, v14);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v339, __p);
      OS::CF::UntypedObject::~UntypedObject(__p);
      if (*type)
      {
        break;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 226;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: Invalid custom property. Skipping and continuing.", __p, 0x12u);
      }

LABEL_302:
      OS::CF::UntypedObject::~UntypedObject(&v339);
      ++v14;
    }

    OS::CF::UntypedObject::UntypedObject(&v259, *type);
    v259 = &unk_1F5991008;
    applesauce::CF::DictionaryRef::from_get(&cf, theDict);
    v16 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v258[0] = v16;
    GetFourCharacterCodeFromKey(&v332, v16, "selector");
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v255[0] = v17;
    GetFourCharacterCodeFromKey(&v256, v17, "scope");
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    *v331 = v18;
    GetFourCharacterCodeFromKey(&v341, v18, "element");
    if (v18)
    {
      CFRelease(v18);
    }

    v19 = v341;
    if (!v332 || !v256 || !v341)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_293:
        if (v19)
        {
          CFRelease(v19);
        }

        if (v256)
        {
          CFRelease(v256);
        }

        if (v332)
        {
          CFRelease(v332);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        OS::CF::UntypedObject::~UntypedObject(&v259);
        goto LABEL_302;
      }

      *__p = 136315394;
      *&__p[4] = "ADS_Device.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 531;
      _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Invalid address for custom property. Skipping this property.", __p, 0x12u);
LABEL_292:
      v19 = v341;
      goto LABEL_293;
    }

    LODWORD(v337) = applesauce::CF::convert_to<unsigned int,0>(v332);
    if (!v256)
    {
      v188 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v188, "Could not construct");
      __cxa_throw(v188, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    HIDWORD(v337) = applesauce::CF::convert_to<unsigned int,0>(v256);
    if (!v341)
    {
      v187 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v187, "Could not construct");
      __cxa_throw(v187, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    LODWORD(v338) = applesauce::CF::convert_to<unsigned int,0>(v341);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v349, theDict, @"type");
    if (!*(&v349 + 1))
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 539;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Cannot create custom property of unknown type. Skipping this property.", __p, 0x12u);
      }

      goto LABEL_291;
    }

    OS::CF::String::AsStdString(__p, &v349);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v342, theDict, @"settable");
    if (v342.__r_.__value_.__l.__size_)
    {
      v20 = OS::CF::Boolean::AsBool(v342.__r_.__value_.__l.__size_);
    }

    else
    {
      v20 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 548;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Missing value for 'settable.' Using default.", buf, 0x12u);
        v20 = 0;
      }
    }

    v330 = v20;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v334, theDict, @"requires set request");
    if (v334.__r_.__value_.__l.__size_)
    {
      v21 = OS::CF::Boolean::AsBool(v334.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = 0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 560;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::addCustomProperty: Missing value for 'requires set request.' Using default.", buf, 0x12u);
        v21 = 0;
      }
    }

    v329 = v21;
    if ((__p[23] & 0x80) == 0)
    {
      if (__p[23] > 5u)
      {
        if (__p[23] <= 9u)
        {
          if (__p[23] != 6)
          {
            goto LABEL_119;
          }

          if (*__p != 1769108595 || *&__p[4] != 26478)
          {
            goto LABEL_187;
          }

LABEL_201:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v347, theDict, @"data");
          if (*v348)
          {
            operator new();
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_288;
          }

          if (!v332)
          {
            v199 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v199, "Could not construct");
            __cxa_throw(v199, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v41 = applesauce::CF::convert_to<unsigned int,0>(v332);
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 600;
          *&buf[18] = 1024;
          *&buf[20] = v41;
          v38 = v15;
          v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for string type must be a string. Skipping property %u.";
          goto LABEL_287;
        }

LABEL_234:
        if (__p[23] != 10)
        {
          goto LABEL_235;
        }

        if (*__p != 0x616E6F6974636964 || *&__p[8] != 31090)
        {
LABEL_269:
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v54 = applesauce::CF::NumberRef::operator->(&v332);
            v55 = applesauce::CF::convert_to<unsigned int,0>(*v54);
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 686;
            *&buf[18] = 1024;
            *&buf[20] = v55;
            _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Unsupported custom property type. Skipping property %u.", buf, 0x18u);
          }

          goto LABEL_289;
        }

LABEL_249:
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v347, theDict, @"data");
        if (*v348)
        {
          operator new();
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_288;
        }

        if (!v332)
        {
          v198 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v198, "Could not construct");
          __cxa_throw(v198, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v48 = applesauce::CF::convert_to<unsigned int,0>(v332);
        *buf = 136315650;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 625;
        *&buf[18] = 1024;
        *&buf[20] = v48;
        v38 = v15;
        v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for dictionary type must be a dictionary. Skipping property %u.";
        goto LABEL_287;
      }

      if (__p[23] != 3)
      {
        if (__p[23] != 4)
        {
          if (__p[23] != 5)
          {
            goto LABEL_269;
          }

          if (*__p != 1634692198 || __p[4] != 116)
          {
            goto LABEL_194;
          }

          goto LABEL_148;
        }

        goto LABEL_267;
      }

      if (*__p != 28265 || __p[2] != 116)
      {
        goto LABEL_269;
      }

LABEL_181:
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v347, theDict, @"data");
      if (*v348)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(buf, theDict, @"supported values");
        OS::CF::Number::GetValue<unsigned int>(*v348, 0);
        operator new();
      }

      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_288;
      }

      if (!v332)
      {
        v196 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v196, "Could not construct");
        __cxa_throw(v196, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v37 = applesauce::CF::convert_to<unsigned int,0>(v332);
      *buf = 136315650;
      *&buf[4] = "ADS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 573;
      *&buf[18] = 1024;
      *&buf[20] = v37;
      v38 = v15;
      v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for int type must be a number. Skipping property %u.";
      goto LABEL_287;
    }

    v22 = *&__p[8];
    if (*&__p[8] == 3)
    {
      if (**__p == 28265 && *(*__p + 2) == 116)
      {
        goto LABEL_181;
      }
    }

    else
    {
      if (*&__p[8] == 5)
      {
        v23 = **__p == 1634692198 && *(*__p + 4) == 116;
        if (v23)
        {
LABEL_148:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v347, theDict, @"data");
          if (*v348)
          {
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(buf, theDict, @"supported values");
            OS::CF::Number::GetValue<float>(*v348);
            operator new();
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_288;
          }

          if (!v332)
          {
            v197 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v197, "Could not construct");
            __cxa_throw(v197, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v40 = applesauce::CF::convert_to<unsigned int,0>(v332);
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 587;
          *&buf[18] = 1024;
          *&buf[20] = v40;
          v38 = v15;
          v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for float type must be a number. Skipping property %u.";
          goto LABEL_287;
        }

        if ((__p[23] & 0x80) == 0)
        {
          goto LABEL_191;
        }

        v22 = *&__p[8];
      }

      if (v22 == 6)
      {
        if (**__p == 1769108595 && *(*__p + 4) == 26478)
        {
          goto LABEL_201;
        }

        if ((__p[23] & 0x80) == 0)
        {
          if (__p[23] > 6u)
          {
            if (__p[23] == 7)
            {
              goto LABEL_204;
            }

            goto LABEL_234;
          }

          if (__p[23] != 4)
          {
            if (__p[23] == 5)
            {
              goto LABEL_194;
            }

            if (__p[23] != 6)
            {
              goto LABEL_269;
            }

LABEL_187:
            if (*__p != 1651340654 || *&__p[4] != 29285)
            {
              goto LABEL_191;
            }

LABEL_231:
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v347, theDict, @"data");
            if (*v348)
            {
              operator new();
            }

            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_288;
            }

            if (!v332)
            {
              v201 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v201, "Could not construct");
              __cxa_throw(v201, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v51 = applesauce::CF::convert_to<unsigned int,0>(v332);
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 613;
            *&buf[18] = 1024;
            *&buf[20] = v51;
            v38 = v15;
            v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for number type must be a number. Skipping property %u.";
            goto LABEL_287;
          }

          goto LABEL_267;
        }

        v27 = *&__p[8];
        if (*&__p[8] != 6)
        {
          goto LABEL_155;
        }

        if (**__p == 1651340654 && *(*__p + 4) == 29285)
        {
          goto LABEL_231;
        }
      }
    }

    v27 = *&__p[8];
LABEL_155:
    if (v27 != 10)
    {
      goto LABEL_162;
    }

    if (**__p == 0x616E6F6974636964 && *(*__p + 8) == 31090)
    {
      goto LABEL_249;
    }

    if ((__p[23] & 0x80) != 0)
    {
      v27 = *&__p[8];
LABEL_162:
      if (v27 != 5)
      {
        goto LABEL_168;
      }

      if (**__p == 1634890337 && *(*__p + 4) == 121)
      {
LABEL_199:
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v347, theDict, @"data");
        if (*v348)
        {
          operator new();
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_288;
        }

        if (!v332)
        {
          v200 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v200, "Could not construct");
          __cxa_throw(v200, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v42 = applesauce::CF::convert_to<unsigned int,0>(v332);
        *buf = 136315650;
        *&buf[4] = "ADS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 637;
        *&buf[18] = 1024;
        *&buf[20] = v42;
        v38 = v15;
        v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for array type must be an array. Skipping property %u.";
        goto LABEL_287;
      }

      if ((__p[23] & 0x80) != 0)
      {
LABEL_168:
        v30 = *&__p[8];
        if (*&__p[8] == 15)
        {
          if (**__p == 0x6C61766F69647561 && *(*__p + 7) == 0x65676E617265756CLL)
          {
            goto LABEL_241;
          }

          if ((__p[23] & 0x80) == 0)
          {
            if (__p[23] != 4)
            {
LABEL_119:
              if (__p[23] != 7)
              {
                goto LABEL_269;
              }

LABEL_204:
              if (*__p != 1819242338 || *&__p[3] != 1851876716)
              {
                goto LABEL_269;
              }

              goto LABEL_209;
            }

            goto LABEL_267;
          }

          v30 = *&__p[8];
        }

        if (v30 != 7)
        {
          goto LABEL_275;
        }

        if (**__p == 1819242338 && *(*__p + 3) == 1851876716)
        {
LABEL_209:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v347, theDict, @"data");
          if (*v348)
          {
            operator new();
          }

          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_288;
          }

          v43 = applesauce::CF::NumberRef::operator->(&v332);
          v44 = applesauce::CF::convert_to<unsigned int,0>(*v43);
          *buf = 136315650;
          *&buf[4] = "ADS_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 665;
          *&buf[18] = 1024;
          *&buf[20] = v44;
          v38 = v15;
          v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for BOOLean type must be a BOOLean. Skipping property %u.";
          goto LABEL_287;
        }

        if ((__p[23] & 0x80) != 0)
        {
LABEL_275:
          if (*&__p[8] != 4)
          {
            goto LABEL_269;
          }

          v53 = *__p;
LABEL_268:
          if (*v53 != 1635017060)
          {
            goto LABEL_269;
          }

          *v348 = 0;
          v347 = &unk_1F596CAF8;
          if (theDict)
          {
            *buf = 0;
            if (CFDictionaryGetValueIfPresent(theDict, @"data", buf))
            {
              v56 = *buf ? CFGetTypeID(*buf) : 0;
              if (v56 == CFDataGetTypeID())
              {
                v57 = *buf;
                if (*buf)
                {
                  CFRetain(*buf);
                  v58 = v57;
                }

                else
                {
                  v58 = 0;
                }

                OS::CF::UntypedObject::operator=(&v347, v58);
              }
            }

            if (*v348)
            {
              v345 = *v348;
              std::allocate_shared[abi:ne200100]<ADS::CFProperty,std::allocator<ADS::CFProperty>,AudioObjectPropertyAddress &,BOOL &,BOOL &,__CFData const*,0>();
            }
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v59 = applesauce::CF::NumberRef::operator->(&v332);
            v60 = applesauce::CF::convert_to<unsigned int,0>(*v59);
            *buf = 136315650;
            *&buf[4] = "ADS_Device.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 677;
            *&buf[18] = 1024;
            *&buf[20] = v60;
            v38 = v15;
            v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for binary data type must be valid. Skipping property %u.";
            goto LABEL_287;
          }

          goto LABEL_288;
        }
      }

      if (__p[23] != 4)
      {
        goto LABEL_269;
      }

LABEL_267:
      v53 = __p;
      goto LABEL_268;
    }

LABEL_191:
    if (__p[23] <= 6u)
    {
      if (__p[23] != 4)
      {
        if (__p[23] != 5)
        {
          goto LABEL_269;
        }

LABEL_194:
        if (*__p != 1634890337 || __p[4] != 121)
        {
          goto LABEL_269;
        }

        goto LABEL_199;
      }

      goto LABEL_267;
    }

    if (__p[23] == 7)
    {
      goto LABEL_204;
    }

LABEL_235:
    if (__p[23] != 15)
    {
      goto LABEL_269;
    }

    if (*__p != 0x6C61766F69647561 || *&__p[7] != 0x65676E617265756CLL)
    {
      goto LABEL_269;
    }

LABEL_241:
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v347, theDict, @"data");
    if (*v348)
    {
      OS::CF::UntypedObject::UntypedObject(&v345, *v348);
      v345 = &unk_1F59910D0;
      ADS::Device::getRangeOptFromArray(buf, &v345);
      OS::CF::UntypedObject::~UntypedObject(&v345);
      if (buf[16] == 1)
      {
        operator new();
      }

      goto LABEL_288;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v49 = applesauce::CF::NumberRef::operator->(&v332);
      v50 = applesauce::CF::convert_to<unsigned int,0>(*v49);
      *buf = 136315650;
      *&buf[4] = "ADS_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 649;
      *&buf[18] = 1024;
      *&buf[20] = v50;
      v38 = v15;
      v39 = "%25s:%-5d  ADS::Device::addCustomProperty: 'data' for array type must be an array. Skipping property %u.";
LABEL_287:
      _os_log_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, 0x18u);
    }

LABEL_288:
    OS::CF::UntypedObject::~UntypedObject(&v347);
LABEL_289:
    OS::CF::UntypedObject::~UntypedObject(&v334);
    OS::CF::UntypedObject::~UntypedObject(&v342);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

LABEL_291:
    OS::CF::UntypedObject::~UntypedObject(&v349);
    goto LABEL_292;
  }

LABEL_303:
  v204 = (v5 + 400);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v258, *(a4 + 8), @"type");
  if (!v258[1])
  {
    goto LABEL_322;
  }

  OS::CF::String::AsStdString(__p, v258);
  if ((__p[23] & 0x80000000) != 0)
  {
    if (*&__p[8] != 5)
    {
      operator delete(*__p);
      goto LABEL_322;
    }

    v63 = **__p != 1668246627 || *(*__p + 4) != 107;
    operator delete(*__p);
    if (!v63)
    {
      goto LABEL_320;
    }

LABEL_322:
    if (*(v5 + 12) == 1633905771)
    {
      goto LABEL_323;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v256, *(a4 + 8), @"streams");
    v70 = *v257;
    if (*v257)
    {
      v71 = 0;
      v72 = MEMORY[0x1E69E9C10];
      while (1)
      {
        if (v71 >= OS::CF::ArrayBase<__CFArray const*>::GetSize(v70))
        {
          goto LABEL_397;
        }

        OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v255, &v256, v71);
        OS::CF::UntypedObject::UntypedObject(&v253, v255[1]);
        v253 = &unk_1F5991008;
        if (*(v5 + 12) == 1633905771)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 827;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddStream: Clock devices cannot have streams.", __p, 0x12u);
          }

          v186 = __cxa_allocate_exception(0x10uLL);
          *v186 = off_1F5991DD8;
          v186[2] = 1970171760;
        }

        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v345, v254, @"is input");
        if (v346)
        {
          break;
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 833;
          _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - 'is input' missing or invalid.", __p, 0x12u);
        }

LABEL_389:
        OS::CF::UntypedObject::~UntypedObject(&v345);
        OS::CF::UntypedObject::~UntypedObject(&v253);
        OS::CF::UntypedObject::~UntypedObject(v255);
        ++v71;
        v70 = *v257;
      }

      OS::CF::Boolean::AsBool(v346);
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(&v343, v254, @"basic description");
      if (*v344)
      {
        OS::CF::UntypedObject::UntypedObject(&v339, *v344);
        v339 = &unk_1F5991008;
        ADS::Device::ASBDfromDictionary(&v349, &v339);
        OS::CF::UntypedObject::~UntypedObject(&v339);
        *__p = v349;
        *&__p[16] = v350;
        *v356 = v351;
        if (ADS::Device::isASBDValid(__p, v73))
        {
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v337, v254, @"supported formats");
          v74 = v338;
          if (v338)
          {
            v75 = 0;
            *&v342.__r_.__value_.__r.__words[1] = 0uLL;
            v342.__r_.__value_.__r.__words[0] = &v342.__r_.__value_.__l.__size_;
            while (v75 < OS::CF::ArrayBase<__CFArray const*>::GetSize(v74))
            {
              memset(v356, 0, sizeof(v356));
              memset(__p, 0, sizeof(__p));
              OS::CF::ArrayBase<__CFArray const*>::operator[](&v332, &v337, v75);
              OS::CF::UntypedObject::As<OS::CF::Dictionary>(&cf, &v332);
              OS::CF::UntypedObject::UntypedObject(buf, v336);
              *buf = &unk_1F5991008;
              ADS::Device::ASBDfromDictionary(__p, buf);
              OS::CF::UntypedObject::~UntypedObject(buf);
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v334, v336, @"min sample rate");
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v347, v336, @"max sample rate");
              if (!v334.__r_.__value_.__l.__size_ || ((v76 = OS::CF::Number::GetValue<float>(v334.__r_.__value_.__l.__size_), *&v76 > 0.0) ? (v77 = *v348 == 0) : (v77 = 1), v77 || (v78 = OS::CF::Number::GetValue<float>(*v348), *&v78 <= 0.0)))
              {
                *&v356[16] = *__p;
                *&v356[8] = *__p;
              }

              else
              {
                v79 = OS::CF::Number::GetValue<float>(v334.__r_.__value_.__l.__size_);
                *&v356[8] = *&v79;
                v80 = OS::CF::Number::GetValue<float>(*v348);
                *&v356[16] = *&v80;
              }

              *__p = 0;
              OS::CF::UntypedObject::~UntypedObject(&v347);
              OS::CF::UntypedObject::~UntypedObject(&v334);
              OS::CF::UntypedObject::~UntypedObject(&cf);
              OS::CF::UntypedObject::~UntypedObject(&v332);
              *buf = *__p;
              *&buf[16] = *&__p[16];
              v353 = *v356;
              if (ADS::Device::isASBDValid(buf, v81))
              {
                *buf = *__p;
                *&buf[16] = *&__p[16];
                v353 = *v356;
                v354 = *&v356[8];
                if (!*std::__tree<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::__find_equal<CAStreamRangedDescription>(&v342, &v334, buf))
                {
                  operator new();
                }
              }

              else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
              {
                CA::StreamDescription::AsString(&v334, &v349, v82, v83);
                v84 = &v334;
                if ((v334.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v84 = v334.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "ADS_Device.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 872;
                *&buf[18] = 2080;
                *&buf[20] = v84;
                _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: Skipping supported format %s for this stream", buf, 0x1Cu);
                if (SHIBYTE(v334.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v334.__r_.__value_.__l.__data_);
                }
              }

              ++v75;
              v74 = v338;
            }

            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v334, v254, @"terminal type");
            if (v334.__r_.__value_.__l.__size_)
            {
              OS::CF::Number::GetValue<unsigned int>(v334.__r_.__value_.__l.__size_, 0);
            }

            else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 882;
              _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: 'terminal type' missing or invalid. Using default value.", __p, 0x12u);
            }

            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v347, v254, @"is reference");
            if (*v348)
            {
              *(v5 + 928) = OS::CF::Boolean::AsBool(*v348);
            }

            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v332, v254, @"latency");
            v87 = v333;
            if (v333)
            {
              v87 = OS::CF::Number::GetValue<unsigned int>(v333, 0);
            }

            LODWORD(v341) = ADS::ObjectManager::GetNextObjectID(v87);
            operator new();
          }

          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 857;
            _os_log_impl(&dword_1DE1F9000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - 'supported formats' missing or invalid.", __p, 0x12u);
          }

          OS::CF::UntypedObject::~UntypedObject(&v337);
          goto LABEL_388;
        }

        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 849;
          v85 = v72;
          v86 = "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - bad ASBD.";
          goto LABEL_377;
        }
      }

      else if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 842;
        v85 = v72;
        v86 = "%25s:%-5d  ADS::Device::createAndAddStream: Stream could not be created - 'basic description' missing or invalid.";
LABEL_377:
        _os_log_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_DEFAULT, v86, __p, 0x12u);
      }

LABEL_388:
      OS::CF::UntypedObject::~UntypedObject(&v343);
      goto LABEL_389;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315394;
      *&__p[4] = "ADS_Device.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 251;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: No streams to instantiate", __p, 0x12u);
    }

LABEL_397:
    if (*(v5 + 12) == 1633905771)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 1239;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::updateSupportedSampleRates: clock devices do not have streams to populate the list of supported sample rates.", __p, 0x12u);
      }

      v190 = __cxa_allocate_exception(0x10uLL);
      *v190 = off_1F5991DD8;
      v190[2] = 1970171760;
    }

    *&buf[16] = 0;
    *&buf[8] = 0;
    *buf = &buf[8];
    memset(__p, 0, 24);
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *(v5 + 424), *(v5 + 432), (*(v5 + 432) - *(v5 + 424)) >> 2);
    *v356 = 0uLL;
    *&__p[24] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p[24], *(v5 + 448), *(v5 + 456), (*(v5 + 456) - *(v5 + 448)) >> 2);
    for (j = 0; j != 48; j += 24)
    {
      v349 = 0uLL;
      *&v350 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v349, *&__p[j], *&__p[j + 8], (*&__p[j + 8] - *&__p[j]) >> 2);
      v89 = v349;
      for (k = v349; k != *(&v89 + 1); ++k)
      {
        v91 = ADS::ObjectManager::CopyObjectByObjectID(*k);
        *&v342.__r_.__value_.__r.__words[1] = 0uLL;
        v342.__r_.__value_.__r.__words[0] = &v342.__r_.__value_.__l.__size_;
        v92 = *(v91 + 21);
        if (v92 != (v91 + 176))
        {
          do
          {
            *&v334.__r_.__value_.__l.__data_ = *(v92 + 9);
            std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(&v342, *&v334.__r_.__value_.__l.__data_, *&v334.__r_.__value_.__l.__size_);
            v93 = v92[1];
            if (v93)
            {
              do
              {
                v94 = v93;
                v93 = *v93;
              }

              while (v93);
            }

            else
            {
              do
              {
                v94 = v92[2];
                v23 = *v94 == v92;
                v92 = v94;
              }

              while (!v23);
            }

            v92 = v94;
          }

          while (v94 != (v91 + 176));
          v95 = v342.__r_.__value_.__r.__words[0];
          if (v342.__r_.__value_.__l.__data_ != &v342.__r_.__value_.__r.__words[1])
          {
            do
            {
              *&v334.__r_.__value_.__l.__data_ = *(v95 + 32);
              std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(buf, *&v334.__r_.__value_.__l.__data_, *&v334.__r_.__value_.__l.__size_);
              v96 = *(v95 + 8);
              if (v96)
              {
                do
                {
                  v97 = v96;
                  v96 = v96->__r_.__value_.__r.__words[0];
                }

                while (v96);
              }

              else
              {
                do
                {
                  v97 = *(v95 + 16);
                  v23 = v97->__r_.__value_.__r.__words[0] == v95;
                  v95 = v97;
                }

                while (!v23);
              }

              v95 = v97;
            }

            while (v97 != &v342.__r_.__value_.__r.__words[1]);
          }
        }

        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v342.__r_.__value_.__l.__size_);
        ADS::ObjectManager::ReleaseObject(v91, v98);
      }

      v5 = v205;
      if (v89)
      {
        operator delete(v89);
      }
    }

    for (m = 0; m != -48; m -= 24)
    {
      v100 = *&__p[m + 24];
      if (v100)
      {
        *&__p[m + 32] = v100;
        operator delete(v100);
      }
    }

    if (v204 == buf)
    {
LABEL_448:
      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*&buf[8]);
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, *(a4 + 8), @"preferred channel stereo L");
      if (*&buf[8])
      {
        *v203 = OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v251, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v249, "preferred channel stereo L");
        if (v250 < 0)
        {
          operator delete(v249);
        }

        if (v252 < 0)
        {
          operator delete(v251);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v349, *(a4 + 8), @"preferred channel stereo R");
      if (*(&v349 + 1))
      {
        *(v205 + 560) = OS::CF::Number::GetValue<unsigned int>(*(&v349 + 1), 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v247, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v245, "preferred channel stereo R");
        if (v246 < 0)
        {
          operator delete(v245);
        }

        if (v248 < 0)
        {
          operator delete(v247);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v342, *(a4 + 8), @"safety offset");
      if (v342.__r_.__value_.__l.__size_)
      {
        *(v205 + 744) = OS::CF::Number::GetValue<unsigned int>(v342.__r_.__value_.__l.__size_, 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v243, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v241, "safety offset");
        if (v242 < 0)
        {
          operator delete(v241);
        }

        if (v244 < 0)
        {
          operator delete(v243);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v334, *(a4 + 8), @"can be content default");
      if (v334.__r_.__value_.__l.__size_)
      {
        *(v205 + 552) = OS::CF::Boolean::AsBool(v334.__r_.__value_.__l.__size_);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v239, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v237, "can be content default");
        if (v238 < 0)
        {
          operator delete(v237);
        }

        if (v240 < 0)
        {
          operator delete(v239);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v347, *(a4 + 8), @"can be system default");
      if (*v348)
      {
        *(v205 + 553) = OS::CF::Boolean::AsBool(*v348);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v235, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v233, "can be system default");
        if (v234 < 0)
        {
          operator delete(v233);
        }

        if (v236 < 0)
        {
          operator delete(v235);
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v345, *(a4 + 8), @"supports catchup mode");
      if (v346)
      {
        v111 = OS::CF::Boolean::AsBool(v346);
        *(v205 + 704) = v111;
        if (!v111)
        {
          goto LABEL_493;
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v231, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v229, "supports catchup mode");
        if (v230 < 0)
        {
          operator delete(v229);
        }

        if (v232 < 0)
        {
          operator delete(v231);
        }

        if (!*(v205 + 704))
        {
LABEL_493:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v343, *(a4 + 8), @"supports Isolated IO");
          if (*v344)
          {
            *(v205 + 716) = OS::CF::Boolean::AsBool(*v344);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v339, *(a4 + 8), @"supports external secure mute");
          if (*type)
          {
            *(v205 + 717) = OS::CF::Boolean::AsBool(*type);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(&v337, *(a4 + 8), @"supports external voice activity detection");
          if (v338)
          {
            *(v205 + 718) = OS::CF::Boolean::AsBool(v338);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&cf, *(a4 + 8), @"audio out directory");
          if (!v336)
          {
            std::string::basic_string[abi:ne200100]<0>(&v223, "ADS::Device::Device");
            std::string::basic_string[abi:ne200100]<0>(&v221, "audio out directory");
            if (v222 < 0)
            {
              operator delete(v221);
            }

            if (v224 < 0)
            {
              operator delete(v223);
            }

            goto LABEL_513;
          }

          OS::CF::String::AsStdString(__p, &cf);
          if (__p[23] >= 0)
          {
            v112 = __p;
          }

          else
          {
            v112 = *__p;
          }

          v113 = access(v112, 2);
          v114 = v113;
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (v114)
            {
LABEL_505:
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 359;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Provided filepath for audio out is not writeable. Reverting to default.", __p, 0x12u);
              }

              goto LABEL_513;
            }
          }

          else if (v113)
          {
            goto LABEL_505;
          }

          OS::CF::String::operator=(v205 + 600, v336);
LABEL_513:
          OS::CF::UntypedObject::~UntypedObject(&cf);
          OS::CF::UntypedObject::~UntypedObject(&v337);
          OS::CF::UntypedObject::~UntypedObject(&v339);
          OS::CF::UntypedObject::~UntypedObject(&v343);
          OS::CF::UntypedObject::~UntypedObject(&v345);
          OS::CF::UntypedObject::~UntypedObject(&v347);
          OS::CF::UntypedObject::~UntypedObject(&v334);
          OS::CF::UntypedObject::~UntypedObject(&v342);
          OS::CF::UntypedObject::~UntypedObject(&v349);
          OS::CF::UntypedObject::~UntypedObject(buf);
          OS::CF::UntypedObject::~UntypedObject(&v256);
          goto LABEL_514;
        }
      }

      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(__p, *(a4 + 8), @"frames to save");
      if (*&__p[8])
      {
        *(v205 + 708) = OS::CF::Number::GetValue<unsigned int>(*&__p[8], 0);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v227, "ADS::Device::Device");
        std::string::basic_string[abi:ne200100]<0>(&v225, "frames to save");
        if (v226 < 0)
        {
          operator delete(v225);
        }

        if (v228 < 0)
        {
          operator delete(v227);
        }
      }

      OS::CF::UntypedObject::~UntypedObject(__p);
      goto LABEL_493;
    }

    v101 = *buf;
    if (*(v205 + 416))
    {
      v102 = *v204;
      *v204 = v202;
      *(*v202 + 16) = 0;
      *v202 = 0;
      v202[1] = 0;
      if (v102[1])
      {
        v103 = v102[1];
      }

      else
      {
        v103 = v102;
      }

      if (v103)
      {
        v104 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v103);
        if (v101 != &buf[8])
        {
          v105 = v101;
          do
          {
            v106 = v103;
            v103 = v104;
            *(v106 + 2) = *(v105 + 2);
            leaf_high = std::__tree<ADS::AudioValueRangeWrapper>::__find_leaf_high(v204, __p, *(v106 + 4), *(v106 + 5));
            std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(v204, *__p, leaf_high, v106);
            if (v104)
            {
              v104 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v104);
            }

            else
            {
              v104 = 0;
            }

            v108 = *(v105 + 1);
            if (v108)
            {
              do
              {
                v101 = v108;
                v108 = *v108;
              }

              while (v108);
            }

            else
            {
              do
              {
                v101 = *(v105 + 2);
                v23 = *v101 == v105;
                v105 = v101;
              }

              while (!v23);
            }

            if (!v103)
            {
              break;
            }

            v105 = v101;
          }

          while (v101 != &buf[8]);
        }

        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v103);
        if (!v104)
        {
          goto LABEL_446;
        }

        for (n = v104[2]; n; n = n[2])
        {
          v104 = n;
        }

        v110 = v104;
      }

      else
      {
        v110 = 0;
      }

      std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v110);
    }

LABEL_446:
    if (v101 != &buf[8])
    {
      operator new();
    }

    goto LABEL_448;
  }

  if (__p[23] != 5)
  {
    goto LABEL_322;
  }

  if (*__p != 1668246627 || __p[4] != 107)
  {
    goto LABEL_322;
  }

LABEL_320:
  *(v5 + 12) = 1633905771;
LABEL_323:
  *(v5 + 552) = 0;
  *v203 = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(__p, *(a4 + 8), @"supported sample rates");
  v64 = *&__p[8];
  if (*&__p[8])
  {
    for (ii = 0; ii < OS::CF::ArrayBase<__CFArray const*>::GetSize(v64); ++ii)
    {
      OS::CF::ArrayBase<__CFArray const*>::operator[](&v349, __p, ii);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(buf, &v349);
      OS::CF::UntypedObject::~UntypedObject(&v349);
      if (*&buf[8])
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v349, *&buf[8], @"min sample rate");
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v342, *&buf[8], @"max sample rate");
        if (*(&v349 + 1) && v342.__r_.__value_.__l.__size_)
        {
          v66 = OS::CF::Number::GetValue<float>(*(&v349 + 1));
          v67 = *&v66;
          v68 = OS::CF::Number::GetValue<float>(v342.__r_.__value_.__l.__size_);
          *&v334.__r_.__value_.__l.__data_ = v67;
          *&v334.__r_.__value_.__l.__size_ = *&v68;
          std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(v204, v67, *&v68);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v219, "ADS::Device::Device");
          std::string::basic_string[abi:ne200100]<0>(&v217, "supported sample rate range (clock device)");
          if (v218 < 0)
          {
            operator delete(v217);
          }

          if (v220 < 0)
          {
            operator delete(v219);
          }
        }

        OS::CF::UntypedObject::~UntypedObject(&v342);
      }

      else
      {
        OS::CF::ArrayBase<__CFArray const*>::operator[](&v342, __p, ii);
        OS::CF::UntypedObject::As<OS::CF::Number>(&v349, &v342);
        OS::CF::UntypedObject::~UntypedObject(&v342);
        if (*(&v349 + 1))
        {
          v69 = OS::CF::Number::GetValue<float>(*(&v349 + 1));
          *&v342.__r_.__value_.__l.__data_ = *&v69;
          *&v342.__r_.__value_.__l.__size_ = *&v69;
          std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(v204, *&v69, *&v69);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v215, "ADS::Device::Device");
          std::string::basic_string[abi:ne200100]<0>(&v213, "supported sample rate (clock device)");
          if (v214 < 0)
          {
            operator delete(v213);
          }

          if (v216 < 0)
          {
            operator delete(v215);
          }
        }
      }

      OS::CF::UntypedObject::~UntypedObject(&v349);
      OS::CF::UntypedObject::~UntypedObject(buf);
      v64 = *&__p[8];
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v211, "ADS::Device::Device");
    std::string::basic_string[abi:ne200100]<0>(&v209, "supported sample rates (clock device)");
    if (v210 < 0)
    {
      operator delete(v209);
    }

    if (v212 < 0)
    {
      operator delete(v211);
    }
  }

  OS::CF::UntypedObject::~UntypedObject(__p);
LABEL_514:
  if (*(v5 + 416))
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, *(a4 + 8), @"sample rate");
    if (*&buf[8])
    {
      v115 = OS::CF::Number::GetValue<float>(*&buf[8]);
      v116 = *&v115;
    }

    else
    {
      v116 = 0.0;
    }

    if (!ADS::Device::isSupportedSampleRate(v5, v116))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 426;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: No valid, supported sample rate provided. Using default.", __p, 0x12u);
      }

      if (!ADS::Device::isSupportedSampleRate(v5, 44100.0))
      {
        v117 = (*v204)[4];
      }
    }

    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "ADS_Device.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 451;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: Device does not support any sample rates.", __p, 0x12u);
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v332, *(a4 + 8), @"controls");
  if (v333)
  {
    v118 = 0;
    v119 = MEMORY[0x1E69E9C10];
    while (1)
    {
      if (v118 >= OS::CF::ArrayBase<__CFArray const*>::GetSize(v333))
      {
        goto LABEL_771;
      }

      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&v256, &v332, v118);
      if (*v257)
      {
        break;
      }

      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 463;
        _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::Device: Invalid control. Skipping and continuing.", __p, 0x12u);
      }

LABEL_746:
      OS::CF::UntypedObject::~UntypedObject(&v256);
      ++v118;
    }

    OS::CF::UntypedObject::UntypedObject(&v207, *v257);
    v207 = &unk_1F5991008;
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v347, v208, @"type");
    if (!*v348)
    {
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 930;
        _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: Control must have a 'type.' Skipping this control.", __p, 0x12u);
      }

      goto LABEL_745;
    }

    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v345, v208, @"subtype");
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v343, v208, @"subtype");
    OS::CF::String::AsStdString(&v342, &v347);
    applesauce::CF::DictionaryRef::from_get(&v341, v208);
    GetFourCharacterCodeFromKey(v255, v341, "scope");
    if (v341)
    {
      CFRelease(v341);
    }

    if (v255[0])
    {
      v120 = applesauce::CF::convert_to<unsigned int,0>(v255[0]);
      v121 = v120;
    }

    else
    {
      v120 = os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT);
      v121 = 1735159650;
      if (v120)
      {
        *__p = 136315394;
        *&__p[4] = "ADS_Device.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 941;
        _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'scope' provided. Using default.", __p, 0x12u);
      }
    }

    v331[0] = ADS::ObjectManager::GetNextObjectID(v120);
    if ((*(&v342.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v342.__r_.__value_.__l.__size_ <= 6)
      {
        if (v342.__r_.__value_.__l.__size_ != 5)
        {
          if (v342.__r_.__value_.__l.__size_ == 6 && *v342.__r_.__value_.__l.__data_ == 1684630643 && *(v342.__r_.__value_.__r.__words[0] + 4) == 29285)
          {
LABEL_578:
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v208, @"value");
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v349, v208, @"min");
            OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v334, v208, @"max");
            if (*(&v349 + 1))
            {
              v126 = OS::CF::Number::GetValue<unsigned int>(*(&v349 + 1), 0);
            }

            else
            {
              v126 = 0;
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 961;
                _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'min' given for slider control. Using default.", __p, 0x12u);
                v126 = 0;
              }
            }

            if (v334.__r_.__value_.__l.__size_)
            {
              v149 = OS::CF::Number::GetValue<unsigned int>(v334.__r_.__value_.__l.__size_, 0);
            }

            else
            {
              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 971;
                _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'max' given for slider control. Using default.", __p, 0x12u);
              }

              v149 = 10;
            }

            if (v126 > v149 && os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 981;
              _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: 'min' is greater than 'max.' Swapping these values.", __p, 0x12u);
            }

            if (*&buf[8])
            {
              OS::CF::Number::GetValue<unsigned int>(*&buf[8], 0);
            }

            else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 989;
              _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for slider control. Using default.", __p, 0x12u);
            }

            if (!v346)
            {
              v150 = *(v205 + 8);
              if (*v344)
              {
                OS::CF::Number::GetValue<unsigned int>(*v344, 0);
                operator new();
              }

              operator new();
            }

            OS::CF::String::AsStdString(__p, &v345);
            if ((__p[23] & 0x80000000) != 0)
            {
              v158 = *&__p[8];
              operator delete(*__p);
              if (v158 != 4)
              {
                goto LABEL_781;
              }
            }

            else if (__p[23] != 4)
            {
LABEL_781:
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 999;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom slider control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
              }

              v191 = __cxa_allocate_exception(0x10uLL);
              *v191 = off_1F5991DD8;
              v191[2] = 2003332927;
            }

            v159 = *(v205 + 8);
            OS::CF::String::AsStdString(__p, &v345);
            if (__p[23] >= 0)
            {
              v160 = __p;
            }

            else
            {
              v160 = *__p;
            }

            v161 = *v160;
            operator new();
          }

          goto LABEL_618;
        }

        if (*v342.__r_.__value_.__l.__data_ == 1702258028 && *(v342.__r_.__value_.__r.__words[0] + 4) == 108)
        {
LABEL_621:
          *buf = 0;
          *&buf[16] = 0uLL;
          *&buf[8] = &buf[16];
          LOBYTE(v353) = 1;
          HIDWORD(v353) = 5;
          *&v354 = 0x3F80000040000000;
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v339, v208, @"dB range");
          if (*type)
          {
            OS::CF::UntypedObject::UntypedObject(&v337, *type);
            v337 = &unk_1F59910D0;
            ADS::Device::getRangeOptFromArray(__p, &v337);
            OS::CF::UntypedObject::~UntypedObject(&v337);
            if (__p[16] == 1)
            {
              v141 = *__p;
              v142 = *&__p[8];
              CAVolumeCurve::AddRange(buf, 0, 5000, v141, v142);
            }
          }

          else
          {
            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1023;
              _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: 'dB range' for array type must be an array. Using default dB range.", __p, 0x12u);
            }

            CAVolumeCurve::AddRange(buf, 0, 5000, 0.0, 120.0);
          }

          if (*&buf[24])
          {
            v148 = *(*&buf[8] + 28);
          }

          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&cf, v208, @"value");
          if (v336)
          {
            OS::CF::Number::GetValue<int>(v336, 0);
          }

          else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 1031;
            _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for level control. Using default.", __p, 0x12u);
          }

          if (!v346)
          {
            v154 = *(v205 + 8);
            if (*v344)
            {
              OS::CF::Number::GetValue<unsigned int>(*v344, 0);
              operator new();
            }

            operator new();
          }

          OS::CF::String::AsStdString(&v334, &v345);
          std::string::basic_string[abi:ne200100]<0>(__p, "volume");
          *&__p[24] = 1986817381;
          std::string::basic_string[abi:ne200100]<0>(v356, "LFE volume");
          v357 = 1937072758;
          std::unordered_map<std::string,unsigned int>::unordered_map(&v349, __p, 2);
          for (jj = 0; jj != -64; jj -= 32)
          {
            if (v356[jj + 23] < 0)
            {
              operator delete(*&__p[jj + 32]);
            }
          }

          v152 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(&v349, &v334);
          if (v152)
          {
            v153 = *(v152 + 10);
          }

          else
          {
            v153 = 0;
          }

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&v349);
          if (SHIBYTE(v334.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v334.__r_.__value_.__l.__data_);
            if (v153)
            {
LABEL_706:
              v162 = *(v205 + 8);
              operator new();
            }
          }

          else if (v153)
          {
            goto LABEL_706;
          }

          OS::CF::String::AsStdString(__p, &v345);
          if ((__p[23] & 0x80000000) != 0)
          {
            v166 = *&__p[8];
            operator delete(*__p);
            if (v166 != 4)
            {
              goto LABEL_784;
            }
          }

          else if (__p[23] != 4)
          {
LABEL_784:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1046;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom level control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
            }

            v192 = __cxa_allocate_exception(0x10uLL);
            *v192 = off_1F5991DD8;
            v192[2] = 2003332927;
          }

          v167 = *(v205 + 8);
          OS::CF::String::AsStdString(&v349, &v345);
          v168 = &v349;
          if (SBYTE7(v350) < 0)
          {
            v168 = v349;
          }

          v169 = *v168;
          operator new();
        }

        v130 = v342.__r_.__value_.__r.__words[0];
        goto LABEL_614;
      }

      if (v342.__r_.__value_.__l.__size_ == 7)
      {
        if (*v342.__r_.__value_.__l.__data_ == 1819242338 && *(v342.__r_.__value_.__r.__words[0] + 3) == 1851876716)
        {
LABEL_597:
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v334, v208, @"value");
          if (v334.__r_.__value_.__l.__size_)
          {
            OS::CF::Number::GetValue<unsigned int>(v334.__r_.__value_.__l.__size_, 0);
          }

          else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 136315394;
            *&__p[4] = "ADS_Device.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 1069;
            _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for BOOLean control. Using default.", __p, 0x12u);
          }

          if (!v346)
          {
            v147 = *(v205 + 8);
            if (*v344)
            {
              OS::CF::Number::GetValue<unsigned int>(*v344, 0);
              operator new();
            }

            operator new();
          }

          OS::CF::String::AsStdString(&v349, &v345);
          std::string::basic_string[abi:ne200100]<0>(__p, "mute");
          *&__p[24] = 1836414053;
          std::string::basic_string[abi:ne200100]<0>(v356, "solo");
          v357 = 1936682095;
          std::string::basic_string[abi:ne200100]<0>(v358, "jack");
          v359 = 1784767339;
          std::string::basic_string[abi:ne200100]<0>(v360, "LFE mute");
          v361 = 1937072749;
          std::string::basic_string[abi:ne200100]<0>(v362, "phantom");
          v363 = 1885888878;
          std::string::basic_string[abi:ne200100]<0>(v364, "phase invert");
          v365 = 1885893481;
          std::string::basic_string[abi:ne200100]<0>(v366, "clip light");
          v367 = 1668049264;
          std::string::basic_string[abi:ne200100]<0>(v368, "talkback");
          v369 = 1952541794;
          std::string::basic_string[abi:ne200100]<0>(v370, "listenback");
          v371 = 1819504226;
          std::unordered_map<std::string,unsigned int>::unordered_map(buf, __p, 9);
          v144 = 288;
          do
          {
            if (__p[v144 + 7] < 0)
            {
              operator delete(*(&v353 + v144));
            }

            v144 -= 32;
          }

          while (v144);
          v145 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(buf, &v349);
          if (v145)
          {
            v146 = *(v145 + 10);
          }

          else
          {
            v146 = 0;
          }

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(buf);
          if (SBYTE7(v350) < 0)
          {
            operator delete(v349);
            if (v146)
            {
LABEL_714:
              v163 = *(v205 + 8);
              operator new();
            }
          }

          else if (v146)
          {
            goto LABEL_714;
          }

          OS::CF::String::AsStdString(__p, &v345);
          if ((__p[23] & 0x80000000) != 0)
          {
            v170 = *&__p[8];
            operator delete(*__p);
            if (v170 != 4)
            {
              goto LABEL_787;
            }
          }

          else if (__p[23] != 4)
          {
LABEL_787:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1080;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom BOOLean control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
            }

            v193 = __cxa_allocate_exception(0x10uLL);
            *v193 = off_1F5991DD8;
            v193[2] = 2003332927;
          }

          v171 = *(v205 + 8);
          OS::CF::String::AsStdString(__p, &v345);
          if (__p[23] >= 0)
          {
            v172 = __p;
          }

          else
          {
            v172 = *__p;
          }

          v173 = *v172;
          operator new();
        }

        goto LABEL_618;
      }

      if (v342.__r_.__value_.__l.__size_ == 8)
      {
        v128 = *v342.__r_.__value_.__l.__data_;
LABEL_600:
        if (v128 != 0x726F7463656C6573)
        {
          goto LABEL_618;
        }

        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v334, v208, @"items");
        if (v334.__r_.__value_.__l.__size_)
        {
          if (!v346)
          {
            v155 = *(v205 + 8);
            if (*v344)
            {
              OS::CF::Number::GetValue<unsigned int>(*v344, 0);
              operator new();
            }

            operator new();
          }

          OS::CF::String::AsStdString(&v349, &v345);
          std::string::basic_string[abi:ne200100]<0>(__p, "data source");
          *&__p[24] = 1685287523;
          std::string::basic_string[abi:ne200100]<0>(v356, "data destination");
          v357 = 1684370292;
          std::string::basic_string[abi:ne200100]<0>(v358, "clock source");
          v359 = 1668047723;
          std::string::basic_string[abi:ne200100]<0>(v360, "line level");
          v361 = 1852601964;
          std::string::basic_string[abi:ne200100]<0>(v362, "hpf");
          v363 = 1751740518;
          std::unordered_map<std::string,unsigned int>::unordered_map(buf, __p, 5);
          for (kk = 0; kk != -160; kk -= 32)
          {
            if (v362[kk + 23] < 0)
            {
              operator delete(*&v362[kk]);
            }
          }

          v133 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(buf, &v349);
          if (v133)
          {
            v134 = *(v133 + 10);
          }

          else
          {
            v134 = 0;
          }

          std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(buf);
          if (SBYTE7(v350) < 0)
          {
            operator delete(v349);
            if (v134)
            {
LABEL_733:
              v164 = *(v205 + 8);
              operator new();
            }
          }

          else if (v134)
          {
            goto LABEL_733;
          }

          OS::CF::String::AsStdString(__p, &v345);
          if ((__p[23] & 0x80000000) != 0)
          {
            v178 = *&__p[8];
            operator delete(*__p);
            if (v178 != 4)
            {
              goto LABEL_793;
            }
          }

          else if (__p[23] != 4)
          {
LABEL_793:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1110;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom selector control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
            }

            v195 = __cxa_allocate_exception(0x10uLL);
            *v195 = off_1F5991DD8;
            v195[2] = 2003332927;
          }

          v179 = *(v205 + 8);
          OS::CF::String::AsStdString(__p, &v345);
          if (__p[23] >= 0)
          {
            v180 = __p;
          }

          else
          {
            v180 = *__p;
          }

          v181 = *v180;
          operator new();
        }

        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 1098;
          _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'items' list given for selector control. Skipping this control.", __p, 0x12u);
        }

        v143 = &v334;
LABEL_632:
        OS::CF::UntypedObject::~UntypedObject(v143);
        goto LABEL_740;
      }

      if (v342.__r_.__value_.__l.__size_ != 10)
      {
        goto LABEL_618;
      }

      if (*v342.__r_.__value_.__l.__data_ == 0x70206F6572657473 && *(v342.__r_.__value_.__r.__words[0] + 8) == 28257)
      {
        goto LABEL_624;
      }

      if ((*(&v342.__r_.__value_.__s + 23) & 0x80) != 0 || HIBYTE(v342.__r_.__value_.__r.__words[2]) != 5)
      {
        goto LABEL_618;
      }
    }

    else
    {
      if (HIBYTE(v342.__r_.__value_.__r.__words[2]) > 6u)
      {
        if (HIBYTE(v342.__r_.__value_.__r.__words[2]) != 7)
        {
          if (HIBYTE(v342.__r_.__value_.__r.__words[2]) != 8)
          {
            if (HIBYTE(v342.__r_.__value_.__r.__words[2]) != 10)
            {
              goto LABEL_618;
            }

            if (v342.__r_.__value_.__r.__words[0] != 0x70206F6572657473 || LOWORD(v342.__r_.__value_.__r.__words[1]) != 28257)
            {
              goto LABEL_618;
            }

LABEL_624:
            if (v121 == 1768845428 || v121 == 1869968496)
            {
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(buf, v208, @"value");
              if (*&buf[8])
              {
                OS::CF::Number::GetValue<float>(*&buf[8]);
              }

              else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 1140;
                _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'value' given for stereo pan control. Using default.", __p, 0x12u);
              }

              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v349, v208, @"channel A");
              OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v334, v208, @"channel B");
              v156 = 568;
              if (v121 == 1768845428)
              {
                v156 = 564;
              }

              v157 = atomic_load((v205 + v156));
              if (v157 > 2)
              {
                if (*(&v349 + 1) && OS::CF::Number::GetValue<int>(*(&v349 + 1), 0) < v157)
                {
                  OS::CF::Number::GetValue<unsigned int>(*(&v349 + 1), 0);
                }

                else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                {
                  *__p = 136315394;
                  *&__p[4] = "ADS_Device.cpp";
                  *&__p[12] = 1024;
                  *&__p[14] = 1161;
                  _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'channel A' given for stereo pan control. Using default.", __p, 0x12u);
                }

                if (v334.__r_.__value_.__l.__size_ && OS::CF::Number::GetValue<int>(v334.__r_.__value_.__l.__size_, 0) < v157)
                {
                  OS::CF::Number::GetValue<unsigned int>(v334.__r_.__value_.__l.__size_, 0);
                }

                else if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                {
                  *__p = 136315394;
                  *&__p[4] = "ADS_Device.cpp";
                  *&__p[12] = 1024;
                  *&__p[14] = 1172;
                  _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: No valid 'channel A' given for stereo pan control. Using default.", __p, 0x12u);
                }

                if (!v346)
                {
                  v165 = *(v205 + 8);
                  if (*v344)
                  {
                    OS::CF::Number::GetValue<unsigned int>(*v344, 0);
                    operator new();
                  }

                  operator new();
                }

                OS::CF::String::AsStdString(__p, &v345);
                if ((__p[23] & 0x80000000) != 0)
                {
                  v174 = *&__p[8];
                  operator delete(*__p);
                  if (v174 != 4)
                  {
                    goto LABEL_790;
                  }
                }

                else if (__p[23] != 4)
                {
LABEL_790:
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    *__p = 136315394;
                    *&__p[4] = "ADS_Device.cpp";
                    *&__p[12] = 1024;
                    *&__p[14] = 1178;
                    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Device::createAndAddControl: Custom stereo pan control subtypes must be specified with 4-char code or UInt32", __p, 0x12u);
                  }

                  v194 = __cxa_allocate_exception(0x10uLL);
                  *v194 = off_1F5991DD8;
                  v194[2] = 2003332927;
                }

                v175 = *(v205 + 8);
                OS::CF::String::AsStdString(__p, &v345);
                if (__p[23] >= 0)
                {
                  v176 = __p;
                }

                else
                {
                  v176 = *__p;
                }

                v177 = *v176;
                operator new();
              }

              if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
              {
                *__p = 136315394;
                *&__p[4] = "ADS_Device.cpp";
                *&__p[12] = 1024;
                *&__p[14] = 1150;
                _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::createAndAddControl: Cannot create a stereo pan control for a stream with fewer than two channels. Skipping this control.", __p, 0x12u);
              }

              OS::CF::UntypedObject::~UntypedObject(&v334);
              OS::CF::UntypedObject::~UntypedObject(&v349);
              OS::CF::UntypedObject::~UntypedObject(buf);
              goto LABEL_740;
            }

            if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
            {
              *__p = 136315394;
              *&__p[4] = "ADS_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 1128;
              v139 = v119;
              v140 = "%25s:%-5d  ADS::Device::createAndAddControl: Invalid scope for stereo pan control. Skipping this control.";
              goto LABEL_620;
            }

LABEL_740:
            if (v255[0])
            {
              CFRelease(v255[0]);
            }

            if (SHIBYTE(v342.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v342.__r_.__value_.__l.__data_);
            }

            OS::CF::UntypedObject::~UntypedObject(&v343);
            OS::CF::UntypedObject::~UntypedObject(&v345);
LABEL_745:
            OS::CF::UntypedObject::~UntypedObject(&v347);
            OS::CF::UntypedObject::~UntypedObject(&v207);
            goto LABEL_746;
          }

          v128 = v342.__r_.__value_.__r.__words[0];
          goto LABEL_600;
        }

        if (LODWORD(v342.__r_.__value_.__l.__data_) == 1819242338 && *(v342.__r_.__value_.__r.__words + 3) == 1851876716)
        {
          goto LABEL_597;
        }

LABEL_618:
        if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 136315394;
          *&__p[4] = "ADS_Device.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 1197;
          v139 = v119;
          v140 = "%25s:%-5d  Not a recognized type of control.";
LABEL_620:
          _os_log_impl(&dword_1DE1F9000, v139, OS_LOG_TYPE_DEFAULT, v140, __p, 0x12u);
          goto LABEL_740;
        }

        goto LABEL_740;
      }

      if (HIBYTE(v342.__r_.__value_.__r.__words[2]) != 5)
      {
        if (HIBYTE(v342.__r_.__value_.__r.__words[2]) == 6 && LODWORD(v342.__r_.__value_.__l.__data_) == 1684630643 && WORD2(v342.__r_.__value_.__r.__words[0]) == 29285)
        {
          goto LABEL_578;
        }

        goto LABEL_618;
      }

      if (LODWORD(v342.__r_.__value_.__l.__data_) == 1702258028 && v342.__r_.__value_.__s.__data_[4] == 108)
      {
        goto LABEL_621;
      }
    }

    v130 = &v342;
LABEL_614:
    data = v130->__r_.__value_.__l.__data_;
    v137 = v130->__r_.__value_.__s.__data_[4];
    if (data == 1668246626 && v137 == 107)
    {
      OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(__p, v208, @"descriptor");
      v143 = __p;
      goto LABEL_632;
    }

    goto LABEL_618;
  }

LABEL_771:
  mach_timebase_info(__p);
  LODWORD(v182) = *&__p[4];
  LODWORD(v183) = *__p;
  *(v205 + 544) = v182 / v183 * 1000000000.0 / *(v205 + 720);
  OS::CF::UntypedObject::~UntypedObject(&v332);
  OS::CF::UntypedObject::~UntypedObject(v258);
  OS::CF::UntypedObject::~UntypedObject(v261);
  OS::CF::UntypedObject::~UntypedObject(v267);
  OS::CF::UntypedObject::~UntypedObject(v273);
  OS::CF::UntypedObject::~UntypedObject(v279);
  OS::CF::UntypedObject::~UntypedObject(v285);
  OS::CF::UntypedObject::~UntypedObject(&v291);
  OS::CF::UntypedObject::~UntypedObject(v297);
  OS::CF::UntypedObject::~UntypedObject(v303);
  OS::CF::UntypedObject::~UntypedObject(v309);
  OS::CF::UntypedObject::~UntypedObject(v311);
  OS::CF::UntypedObject::~UntypedObject(v317);
  OS::CF::UntypedObject::~UntypedObject(v323);
  OS::CF::UntypedObject::~UntypedObject(v325);
  OS::CF::UntypedObject::~UntypedObject(v327);
  v184 = *MEMORY[0x1E69E9840];
  return v205;
}

void sub_1DE3FA348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, OS::CF::UntypedObject *a17, CAExtAudioFile *a18, const void **a19, OS::CF::UntypedObject *a20, uint64_t a21, OS::CF::UntypedObject *a22, OS::CF::UntypedObject *a23, void **a24, uint64_t a25, uint64_t a26, OS::CF::UntypedObject *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x6E8]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x660]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x6B0]);
  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  OS::CF::UntypedObject::~UntypedObject(&STACK[0x6F8]);
  applesauce::CF::NumberRef::~NumberRef(&STACK[0x6A8]);
  applesauce::CF::NumberRef::~NumberRef(&STACK[0x350]);
  applesauce::CF::NumberRef::~NumberRef(&STACK[0x650]);
  applesauce::CF::DictionaryRef::~DictionaryRef(&STACK[0x678]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x370]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x698]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x380]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x3C0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x400]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x440]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x480]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x4C0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x500]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x540]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x580]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x590]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x5D0]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x610]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x620]);
  OS::CF::UntypedObject::~UntypedObject(&STACK[0x630]);
  applesauce::CF::DictionaryRef::~DictionaryRef((a40 + 944));
  applesauce::CF::StringRef::~StringRef((a40 + 832));
  OS::CF::UntypedObject::~UntypedObject(a17);
  OS::CF::UntypedObject::~UntypedObject(a27);
  OS::CF::UntypedObject::~UntypedObject(a20);
  CAExtAudioFile::~CAExtAudioFile(a18);
  applesauce::CF::StringRef::~StringRef(a19);
  OS::CF::UntypedObject::~UntypedObject((a40 + 600));
  v41 = *(a40 + 576);
  if (v41)
  {
    *(a40 + 584) = v41;
    operator delete(v41);
  }

  v42 = *(a40 + 472);
  if (v42)
  {
    *(a40 + 480) = v42;
    operator delete(v42);
  }

  v43 = *(a40 + 448);
  if (v43)
  {
    *(a40 + 456) = v43;
    operator delete(v43);
  }

  v44 = *a16;
  if (*a16)
  {
    *(a40 + 432) = v44;
    operator delete(v44);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*a24);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a21);
  CADeprecated::CAMutex::~CAMutex((a40 + 272));
  CADeprecated::CAMutex::~CAMutex((a40 + 184));
  OS::CF::UntypedObject::~UntypedObject(a22);
  OS::CF::UntypedObject::~UntypedObject(a23);
  OS::CF::UntypedObject::~UntypedObject((a40 + 136));
  OS::CF::UntypedObject::~UntypedObject((a40 + 120));
  ADS::BaseObject::~BaseObject(a40);
  _Unwind_Resume(a1);
}

OS::CF::String *OS::CF::String::String(OS::CF::String *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  *this = &unk_1F5991188;
  *(this + 1) = v5;
  return this;
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F5991138;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFNumberGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return OS::CF::UntypedObject::operator=(v6, v7);
      }
    }
  }

  return result;
}

void OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(void *a1, CFDictionaryRef theDict, void *key)
{
  *a1 = &unk_1F5988FA8;
  a1[1] = 0;
  if (theDict)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(theDict, key, &value))
    {
      if (value)
      {
        v4 = CFGetTypeID(value);
      }

      else
      {
        v4 = 0;
      }

      TypeID = CFBooleanGetTypeID();
      v6 = value;
      if (v4 == TypeID)
      {
        if (value)
        {
          CFRetain(value);
          v7 = a1;
          v8 = v6;
        }

        else
        {
          v7 = a1;
          v8 = 0;
        }

        OS::CF::UntypedObject::operator=(v7, v8);
      }

      else
      {
        if (value)
        {
          v6 = CFGetTypeID(value);
        }

        if (v6 == CFNumberGetTypeID())
        {
          v9 = value;
          if (value)
          {
            CFRetain(value);
          }

          v14[0] = &unk_1F5991138;
          v14[1] = v9;
          v10 = OS::CF::Number::GetValue<int>(v9, 0) != 0;
          OS::CF::Boolean::Boolean(v12, v10);
          v11 = a1[1];
          a1[1] = v13;
          v13 = v11;
          OS::CF::UntypedObject::~UntypedObject(v12);
          OS::CF::UntypedObject::~UntypedObject(v14);
        }
      }
    }
  }
}

const __CFBoolean *OS::CF::Boolean::AsBool(const __CFBoolean *this)
{
  if (this)
  {
    return (CFBooleanGetValue(this) != 0);
  }

  return this;
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F59910D0;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value ? CFGetTypeID(value) : 0;
      result = CFArrayGetTypeID();
      if (v4 == result)
      {
        v5 = value;
        if (value)
        {
          CFRetain(value);
          v6 = v3;
          v7 = v5;
        }

        else
        {
          v6 = v3;
          v7 = 0;
        }

        return OS::CF::UntypedObject::operator=(v6, v7);
      }
    }
  }

  return result;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F5991008;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        v8 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
        result = CFDictionaryGetTypeID();
        if (v8 == result)
        {
          if (v7)
          {
            CFRetain(v7);
            v9 = v4;
            v10 = v7;
          }

          else
          {
            v9 = v4;
            v10 = 0;
          }

          return OS::CF::UntypedObject::operator=(v9, v10);
        }
      }
    }
  }

  return result;
}

double OS::CF::Number::GetValue<float>(const __CFNumber *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
  LODWORD(result) = valuePtr;
  return result;
}

uint64_t std::__tree<ADS::AudioValueRangeWrapper>::__emplace_unique_key_args<ADS::AudioValueRangeWrapper,ADS::AudioValueRangeWrapper>(uint64_t result, double a2, double a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 4);
      if (v5 <= a2)
      {
        break;
      }

LABEL_5:
      v3 = *v3;
      if (!*v4)
      {
        goto LABEL_15;
      }
    }

    if (v5 != a2)
    {
      if (v5 >= a2)
      {
        return result;
      }

      goto LABEL_14;
    }

    v6 = *(v3 + 5);
    if (v6 > a3)
    {
      goto LABEL_5;
    }

    if (v5 >= a2 && v6 >= a3)
    {
      return result;
    }

LABEL_14:
    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_15;
    }
  }
}

void GetFourCharacterCodeFromKey(CFNumberRef *a1, const __CFDictionary *a2, const char *a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = strlen(a3);
  if (a3)
  {
    v7 = CFStringCreateWithBytes(0, a3, v6, 0x8000100u, 0);
    cf[0] = v7;
    if (!v7)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
      __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    v7 = 0;
    cf[0] = 0;
  }

  Value = CFDictionaryGetValue(a2, v7);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (Value)
  {
    CFRetain(Value);
    v20 = Value;
    v21 = 1;
    v10 = CFGetTypeID(Value);
    if (v10 == CFNumberGetTypeID())
    {
      applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(a1, &v20);
    }

    else
    {
      v11 = CFGetTypeID(Value);
      if (v11 == CFStringGetTypeID())
      {
        applesauce::CF::TypeRef::operator applesauce::CF::StringRef(&v19, &v20);
        if (!v19)
        {
          v15 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v15, "Could not construct");
          __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(cf, v19);
        if (v18 >= 0)
        {
          v12 = cf;
        }

        else
        {
          v12 = cf[0];
        }

        valuePtr = bswap32(*v12);
        v13 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        *a1 = v13;
        if (!v13)
        {
          v16 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v16, "Could not construct");
          __cxa_throw(v16, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        if (v18 < 0)
        {
          operator delete(cf[0]);
        }

        if (v19)
        {
          CFRelease(v19);
        }
      }

      else
      {
        *a1 = 0;
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    *a1 = 0;
  }
}

void ADS::Device::getRangeOptFromArray(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(&v12, a2, 0);
  OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(&v10, a2, 1);
  if (v13)
  {
    v4 = v11 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "ADS_Device.cpp";
      v16 = 1024;
      v17 = 493;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ADS::Device::getRangeFromArray: Requires numerical data for value types at indices 0 and 1", buf, 0x12u);
    }

    v8 = 0;
    *a1 = 0;
  }

  else
  {
    v5 = OS::CF::Number::GetValue<float>(v13);
    v6 = *&v5;
    v7 = OS::CF::Number::GetValue<float>(v11);
    *a1 = v6;
    *(a1 + 8) = *&v7;
    v8 = 1;
  }

  *(a1 + 16) = v8;
  OS::CF::UntypedObject::~UntypedObject(&v10);
  OS::CF::UntypedObject::~UntypedObject(&v12);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t OS::CF::Number::GetValue<int>(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = a2;
  if (a1)
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return a2;
}

uint64_t std::unordered_map<std::string,unsigned int>::unordered_map(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = &a2[4 * a3];
    do
    {
      v6 = std::__string_hash<char>::operator()[abi:ne200100](v4);
      v7 = v6;
      v8 = *(a1 + 8);
      if (!*&v8)
      {
        goto LABEL_19;
      }

      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.u32[0];
      if (v9.u32[0] > 1uLL)
      {
        v11 = v6;
        if (v6 >= *&v8)
        {
          v11 = v6 % *&v8;
        }
      }

      else
      {
        v11 = (*&v8 - 1) & v6;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v7)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v14 >= *&v8)
          {
            v14 %= *&v8;
          }
        }

        else
        {
          v14 &= *&v8 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_19;
        }

LABEL_18:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_19;
        }
      }

      if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13 + 2, v4))
      {
        goto LABEL_18;
      }

      v4 += 4;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1DE3FC030(_Unwind_Exception *a1)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](1, v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Number>(void *a1, uint64_t a2, CFIndex a3)
{
  *a1 = &unk_1F5991138;
  a1[1] = 0;
  result = *(a2 + 8);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result > a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
      v8 = ValueAtIndex;
      v9 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
      result = CFNumberGetTypeID();
      if (v9 == result)
      {
        if (v8)
        {
          CFRetain(v8);
          v10 = a1;
          v11 = v8;
        }

        else
        {
          v10 = a1;
          v11 = 0;
        }

        return OS::CF::UntypedObject::operator=(v10, v11);
      }
    }
  }

  return result;
}

void OS::CF::Number::~Number(OS::CF::Number *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

void OS::CF::Array::~Array(OS::CF::Array *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::optional<applesauce::CF::TypeRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void *std::__tree<ADS::AudioValueRangeWrapper>::__find_leaf_high(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v4 = v5;
        v7 = *(v5 + 4);
        if (v7 <= a3 && (v7 != a3 || *(v5 + 5) <= a4))
        {
          break;
        }

        v5 = *v5;
        v8 = v4;
        if (!*v4)
        {
          goto LABEL_10;
        }
      }

      v5 = v5[1];
    }

    while (v5);
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

LABEL_10:
  *a2 = v4;
  return v8;
}

void ADS::Device::ASBDfromDictionary(uint64_t a1, uint64_t a2)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v19, *(a2 + 8), @"sample rate");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v17, *(a2 + 8), @"format id");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v15, *(a2 + 8), @"format flags");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v13, *(a2 + 8), @"bytes per frame");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v11, *(a2 + 8), @"frames per packet");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v9, *(a2 + 8), @"channels per frame");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v7, *(a2 + 8), @"bits per channel");
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v5, *(a2 + 8), @"bytes per packet");
  if (v20 && v18 && v16 && v14 && v12 && v10 && v8 && v6)
  {
    v4 = OS::CF::Number::GetValue<float>(v20);
    *a1 = *&v4;
    *(a1 + 8) = OS::CF::Number::GetValue<unsigned int>(v18, 0);
    *(a1 + 12) = OS::CF::Number::GetValue<unsigned int>(v16, 0);
    *(a1 + 24) = OS::CF::Number::GetValue<unsigned int>(v14, 0);
    *(a1 + 20) = OS::CF::Number::GetValue<unsigned int>(v12, 0);
    *(a1 + 28) = OS::CF::Number::GetValue<unsigned int>(v10, 0);
    *(a1 + 32) = OS::CF::Number::GetValue<unsigned int>(v8, 0);
    *(a1 + 16) = OS::CF::Number::GetValue<unsigned int>(v6, 0);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  OS::CF::UntypedObject::~UntypedObject(&v5);
  OS::CF::UntypedObject::~UntypedObject(v7);
  OS::CF::UntypedObject::~UntypedObject(v9);
  OS::CF::UntypedObject::~UntypedObject(v11);
  OS::CF::UntypedObject::~UntypedObject(v13);
  OS::CF::UntypedObject::~UntypedObject(v15);
  OS::CF::UntypedObject::~UntypedObject(v17);
  OS::CF::UntypedObject::~UntypedObject(v19);
}

BOOL ADS::Device::isASBDValid(ADS::Device *this, AudioStreamBasicDescription *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(this + 6);
  if (*(this + 5) * v3 != *(this + 4) && *(this + 2) == 1819304813)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_32;
    }

    v5 = *(this + 1);
    v17 = *this;
    v18 = v5;
    v19 = *(this + 4);
    CA::StreamDescription::AsString(__p, &v17, *&v17, *&v5);
    if (v21 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v23 = "ADS_Device.cpp";
    v24 = 1024;
    v25 = 799;
    v26 = 2080;
    v27 = v6;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  ASBD is not valid because (asbd.mBytesPerFrame * asbd.mFramesPerPacket == asbd.mBytesPerPacket) and asbd.mFormatID == kAudioFormatLinearPCM returned false. ASBD: %s";
    goto LABEL_21;
  }

  if (*this < 0.0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_32;
    }

    v9 = *(this + 1);
    v17 = *this;
    v18 = v9;
    v19 = *(this + 4);
    CA::StreamDescription::AsString(__p, &v17, *&v17, *&v9);
    if (v21 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    *buf = 136315650;
    v23 = "ADS_Device.cpp";
    v24 = 1024;
    v25 = 805;
    v26 = 2080;
    v27 = v10;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  ASBD is not valid because sample rate was less than 0. ASBD: %s";
    goto LABEL_21;
  }

  v11 = *(this + 8);
  if ((*(this + 12) & 1) == 0 && v11 >= 0x19)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_32;
    }

    v12 = *(this + 1);
    v17 = *this;
    v18 = v12;
    v19 = *(this + 4);
    CA::StreamDescription::AsString(__p, &v17, *&v17, *&v12);
    if (v21 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    *buf = 136315650;
    v23 = "ADS_Device.cpp";
    v24 = 1024;
    v25 = 811;
    v26 = 2080;
    v27 = v13;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  ASBD is not valid because !(asbd.mFormatFlags & kAudioFormatFlagIsFloat) && (asbd.mBitsPerChannel > 24). ASBD: %s";
    goto LABEL_21;
  }

  if (v3 >= (*(this + 7) * v11) >> 3 || *(this + 2) != 1819304813)
  {
    result = 1;
    goto LABEL_32;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v14 = *(this + 1);
    v17 = *this;
    v18 = v14;
    v19 = *(this + 4);
    CA::StreamDescription::AsString(__p, &v17, *&v17, *&v14);
    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136315650;
    v23 = "ADS_Device.cpp";
    v24 = 1024;
    v25 = 817;
    v26 = 2080;
    v27 = v15;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d  ASBD is not valid because not (asbd.mBitsPerChannel * asbd.mChannelsPerFrame / 8 == asbd.mBytesPerFrame) and asbd.mFormatID == kAudioFormatLinearPCM. ASBD: %s";
LABEL_21:
    _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Cu);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    result = 0;
  }

LABEL_32:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::set<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::set[abi:ne200100](void *a1, void *a2, const AudioStreamRangedDescription *a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = a1[1];
      v8 = v4;
      if (*a1 == v4)
      {
        goto LABEL_8;
      }

      v9 = a1[1];
      v10 = v4;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = v9[1];
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = v10[2];
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      if (CAStreamRangedDescription::Sorter((v8 + 4), (v6 + 4), a3))
      {
LABEL_8:
        if (!v7)
        {
          v16 = v4;
LABEL_14:
          operator new();
        }

        v16 = v8;
        v12 = v8 + 1;
      }

      else
      {
        v12 = std::__tree<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::__find_equal<CAStreamRangedDescription>(a1, &v16, (v6 + 4));
      }

      if (!*v12)
      {
        goto LABEL_14;
      }

      v13 = v6[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v6[2];
          v11 = *v14 == v6;
          v6 = v14;
        }

        while (!v11);
      }

      v6 = v14;
    }

    while (v14 != v5);
  }

  return a1;
}

void *std::__tree<CAStreamRangedDescription,CAStreamRangedDescription_ReverseSort,std::allocator<CAStreamRangedDescription>>::__find_equal<CAStreamRangedDescription>(uint64_t a1, void *a2, CAStreamRangedDescription *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!CAStreamRangedDescription::Sorter(this, (v4 + 32), this))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!CAStreamRangedDescription::Sorter((v7 + 4), this, this))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void *applesauce::CF::NumberRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1DE3FCAD8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

ADS::CFProperty *ADS::CFProperty::CFProperty(ADS::CFProperty *this, AudioObjectPropertyAddress a2, char a3, char a4, CFTypeRef cf)
{
  mSelector = a2.mSelector;
  *(this + 8) = a3;
  *(this + 9) = a4;
  *(this + 1) = a2;
  *this = &unk_1F596CE98;
  v7 = CFRetain(cf);
  *(this + 5) = v7;
  *(this + 6) = CFGetTypeID(v7);
  *(this + 7) = 0;
  *(this + 4) = 0u;
  *(this + 6) = mSelector;
  *(this + 28) = 1886155636;
  return this;
}

BOOL ADS::CFProperty::IsSupportedValue(ADS::CFProperty *this, const void **a2)
{
  v4 = *(this + 6);
  if (v4 == CFDataGetTypeID())
  {
    return 1;
  }

  v6 = *a2;
  if (CFGetTypeID(v6) != *(this + 6))
  {
    return 0;
  }

  v8 = *(this + 7);
  v7 = *(this + 8);
  if (v7 == v8)
  {
    return 1;
  }

  while (*v8 != v6)
  {
    if (++v8 == v7)
    {
      v8 = *(this + 8);
      return v8 != v7;
    }
  }

  return v8 != v7;
}

void ADS::CFProperty::~CFProperty(CFTypeRef *this)
{
  ADS::CFProperty::~CFProperty(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F596CE98;
  CFRelease(this[5]);
  v2 = this[7];
  if (v2)
  {
    this[8] = v2;
    operator delete(v2);
  }
}

void sub_1DE3FCF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v4, v5);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<void const*>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<void const*>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::CFProperty::AbortConfigChange(ADS::CFProperty *this, void *a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void ADS::CFProperty::PerformConfigChange(ADS::CFProperty *this, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2[7];
  (*(*a2 + 8))(a2);
  if (((*(*this + 96))(this, &v6) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ADS_Property.h";
      v9 = 1024;
      v10 = 156;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  v3 = *(this + 5);
  *(this + 5) = v6;
  CFRelease(v3);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t ADS::CFProperty::SetPropertyData(uint64_t a1, const UInt8 *a2, int a3, char a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "ADS_Property.h";
      v18 = 1024;
      v19 = 189;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::SetPropertyData: this property cannot be set.", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v15 = 1970171760;
LABEL_20:
    exception[2] = v15;
  }

  if (a3 != 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "ADS_Property.h";
      v18 = 1024;
      v19 = 191;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::SetPropertyData: wrong size for the data for this property.", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v15 = 561211770;
    goto LABEL_20;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "ADS_Property.h";
      v18 = 1024;
      v19 = 192;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  CFProperty::SetPropertyData: proposed property value is not supported.", &v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v15 = 1852797029;
    goto LABEL_20;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    TypeID = CFDataGetTypeID();
    v10 = *MEMORY[0x1E695E478];
    if (v8 == TypeID)
    {
      DeepCopy = CFDataCreate(v10, a2, 8);
    }

    else
    {
      DeepCopy = CFPropertyListCreateDeepCopy(v10, *a2, 0);
    }

    *(a1 + 40) = DeepCopy;
    CFRelease(v7);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6 ^ 1u;
}

uint64_t ADS::CFProperty::GetPropertyData(ADS::CFProperty *this, UInt8 *a2)
{
  v4 = *(this + 6);
  TypeID = CFDataGetTypeID();
  v6 = *(this + 5);
  if (v4 == TypeID)
  {
    v10.length = CFDataGetLength(v6);
    v10.location = 0;
    CFDataGetBytes(*(this + 5), v10, a2);
  }

  else
  {
    *a2 = PropertyListDeepImmutableCopy(v6);
  }

  v7 = **this;

  return v7(this);
}

CFIndex ADS::CFProperty::GetPropertyDataSize(ADS::CFProperty *this)
{
  v2 = *(this + 6);
  if (v2 == CFDataGetTypeID())
  {
    return CFDataGetLength(*(this + 5));
  }

  else
  {
    return 8;
  }
}

void std::__shared_ptr_emplace<ADS::CFProperty>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CE48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void OS::CF::Data::~Data(OS::CF::Data *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t ADS::TypedProperty<AudioValueRange>::IsSupportedValue(uint64_t a1, double *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 56);
  if (v3 == v4)
  {
    return 1;
  }

  v5 = *a2;
  v6 = a2[1];
  while (1)
  {
    v7 = v4[1];
    if (v7 >= v5)
    {
      v8 = *v4;
      if (*v4 >= v5 || v7 > v6)
      {
        v10 = v8 >= v5 || v7 <= v6;
        v11 = v10 && v8 == v5;
        if (v11 && v7 == v6)
        {
          break;
        }
      }
    }

    v4 += 2;
    if (v4 == v3)
    {
      v4 = *(a1 + 64);
      return v4 != v3;
    }
  }

  return v4 != v3;
}

void ADS::TypedProperty<AudioValueRange>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CFB0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *ADS::TypedProperty<AudioValueRange>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CFB0;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE3FD96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v4, v5);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<AudioValueRange>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<AudioValueRange>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::TypedProperty<AudioValueRange>::AbortConfigChange(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

double ADS::TypedProperty<AudioValueRange>::PerformConfigChange(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 56);
  (*(*a2 + 8))(a2);
  if (((*(*a1 + 96))(a1, &v6) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ADS_Property.h";
      v9 = 1024;
      v10 = 274;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  result = *&v6;
  *(a1 + 40) = v6;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ADS::TypedProperty<AudioValueRange>::SetPropertyData(uint64_t a1, _OWORD *a2, int a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: this property cannot be set.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1970171760;
LABEL_17:
    exception[2] = v10;
  }

  if (a3 != 16)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: wrong size for the data for this property.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 561211770;
    goto LABEL_17;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 298;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: proposed property value is not supported.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1852797029;
    goto LABEL_17;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    *(a1 + 40) = *a2;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1u;
}

void std::__shared_ptr_emplace<ADS::TypedProperty<AudioValueRange>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CF60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ADS::TypedProperty<float>::IsSupportedValue(uint64_t a1, float *a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2 == v3)
  {
    return 1;
  }

  while (*v3 != *a2)
  {
    if (++v3 == v2)
    {
      v3 = *(a1 + 48);
      return v3 != v2;
    }
  }

  return v3 != v2;
}

void ADS::TypedProperty<float>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CD80;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *ADS::TypedProperty<float>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CD80;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE3FE250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v4, v5);
  _Unwind_Resume(a1);
}

void ADS::ChangeInfoData<float>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));

  JUMPOUT(0x1E12C1730);
}

void *ADS::ChangeInfoData<float>::~ChangeInfoData(void *a1)
{
  *a1 = &unk_1F596D6F8;
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100]((a1 + 3));
  return a1;
}

uint64_t ADS::TypedProperty<float>::AbortConfigChange(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

float ADS::TypedProperty<float>::PerformConfigChange(float *a1, float *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2[14];
  (*(*a2 + 8))(a2);
  if (((*(*a1 + 96))(a1, &v6) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ADS_Property.h";
      v9 = 1024;
      v10 = 274;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  result = v6;
  a1[9] = v6;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ADS::TypedProperty<float>::SetPropertyData(uint64_t a1, _DWORD *a2, int a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: this property cannot be set.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1970171760;
LABEL_17:
    exception[2] = v10;
  }

  if (a3 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: wrong size for the data for this property.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 561211770;
    goto LABEL_17;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 298;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: proposed property value is not supported.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1852797029;
    goto LABEL_17;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    *(a1 + 36) = *a2;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1u;
}

void std::__shared_ptr_emplace<ADS::TypedProperty<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CD30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ADS::TypedProperty<unsigned int>::IsSupportedValue(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2 == v3)
  {
    return 1;
  }

  while (*v3 != *a2)
  {
    if (++v3 == v2)
    {
      v3 = *(a1 + 48);
      return v3 != v2;
    }
  }

  return v3 != v2;
}

void ADS::TypedProperty<unsigned int>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CC58;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *ADS::TypedProperty<unsigned int>::~TypedProperty(void *a1)
{
  *a1 = &unk_1F596CC58;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE3FEB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<int ()(void)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1E12C1730](v4, v5);
  _Unwind_Resume(a1);
}

uint64_t ADS::TypedProperty<unsigned int>::AbortConfigChange(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t ADS::TypedProperty<unsigned int>::PerformConfigChange(_DWORD *a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a2[14];
  (*(*a2 + 8))(a2);
  result = (*(*a1 + 96))(a1, &v6);
  if ((result & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ADS_Property.h";
      v9 = 1024;
      v10 = 274;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::PerformConfigChange: proposed property value is not supported.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  a1[9] = v6;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ADS::TypedProperty<unsigned int>::SetPropertyData(uint64_t a1, _DWORD *a2, int a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a4 & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 295;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: this property cannot be set.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1970171760;
LABEL_17:
    exception[2] = v10;
  }

  if (a3 != 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 297;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: wrong size for the data for this property.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 561211770;
    goto LABEL_17;
  }

  if (((*(*a1 + 96))(a1, a2) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ADS_Property.h";
      v13 = 1024;
      v14 = 298;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  TypedProperty::SetPropertyData: proposed property value is not supported.", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1852797029;
    goto LABEL_17;
  }

  v6 = *(a1 + 9);
  if ((v6 & 1) == 0)
  {
    *(a1 + 36) = *a2;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1u;
}

void std::__shared_ptr_emplace<ADS::TypedProperty<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F596CC08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

OS::CF::Boolean *OS::CF::Boolean::Boolean(OS::CF::Boolean *this, int a2)
{
  v3 = MEMORY[0x1E695E4C8];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4B8];
  }

  v4 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
  }

  *this = &unk_1F5988FA8;
  *(this + 1) = v4;
  return this;
}

void OS::CF::Boolean::~Boolean(OS::CF::Boolean *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

void OS::CF::UUID::~UUID(OS::CF::UUID *this)
{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t ADS::Device::getCurrentZTS(ADS::Device *this, double *a2, unint64_t *a3, unint64_t *a4)
{
  v8 = this + 272;
  result = (*(*(this + 34) + 16))(this + 272);
  *a2 = *(this + 94);
  *a3 = *(this + 95);
  *a4 = *(this + 96);
  if (result)
  {
    return (*(*v8 + 24))(v8);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<ADS::Device::testOutputSafetyViolation(AudioTimeStamp const&)::$_0,std::tuple<char const*,int,double>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Output Safety Offset Violation check failed, theSafetyViolation %f", &v11, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<ADS::Device::testOutputSafetyViolation(AudioTimeStamp const&)::$_0,std::tuple<char const*,int,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void CAX4CCString::CAX4CCString(CAX4CCString *this)
{
  *(this + 1) = -1;
  if (!__maskrune(-1, 0x40000uLL))
  {
    goto LABEL_14;
  }

  v2 = *(this + 2);
  v3 = MEMORY[0x1E69E9830];
  if ((v2 & 0x80000000) != 0)
  {
    if (!__maskrune(v2, 0x40000uLL))
    {
      goto LABEL_14;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000) == 0)
  {
    goto LABEL_14;
  }

  v4 = *(this + 3);
  if ((v4 & 0x80000000) != 0)
  {
    if (!__maskrune(v4, 0x40000uLL))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v3 + 4 * v4 + 60) & 0x40000) == 0)
  {
    goto LABEL_14;
  }

  v5 = *(this + 4);
  if ((v5 & 0x80000000) != 0)
  {
    if (__maskrune(v5, 0x40000uLL))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v3 + 4 * v5 + 60) & 0x40000) != 0)
  {
LABEL_12:
    *(this + 5) = 39;
    *this = 39;
    return;
  }

LABEL_14:
  snprintf(this, 0x10uLL, "%d", -1);
}

uint64_t caulk::concurrent::details::rt_message_call<ADS::Device::testInputSafetyViolation(AudioTimeStamp const&,unsigned int)::$_0,std::tuple<char const*,int,double>>::perform(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 136315650;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Input Safety Offset Violation check failed, theSafetyViolation %f", &v11, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<ADS::Device::testInputSafetyViolation(AudioTimeStamp const&,unsigned int)::$_0,std::tuple<char const*,int,double>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE3FF7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE3FFF04(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4006D0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE401154(_Unwind_Exception *exception_object, HALS_Object *a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  v7 = a2;
  HALS_ObjectMap::ReleaseObject(v5, a2);
  HALS_ObjectMap::ReleaseObject(v4, v8);
  v9 = __cxa_begin_catch(exception_object);
  if (v7 == 2)
  {
    v10 = v9[2];
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    bzero(v3, *v2);
  }

  *v2 = 0;
LABEL_9:
  __cxa_end_catch();
  JUMPOUT(0x1DE400E50);
}

void sub_1DE401B3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE401ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE40222C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE402598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE4028E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

OSStatus AudioHardwareUnload(void)
{
  if (AllowHALClientsInThisProcess())
  {
    return 0;
  }

  else
  {
    return 560033144;
  }
}

OSStatus AudioHardwareCreateAggregateDevice(CFDictionaryRef inDescription, AudioObjectID *outDeviceID)
{
  v15 = *MEMORY[0x1E69E9840];
  if (AllowHALClientsInThisProcess())
  {
    HALS_System::StartServer(&v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (inDescription)
    {
      if (outDeviceID)
      {
        HALS_MetaManager::CreateDevice(HALS_MetaManager::sInstance, inDescription, 0);
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 1852797029;
      }

      *buf = 136315394;
      v12 = "HALS_Framework-ios-imp.cpp";
      v13 = 1024;
      v14 = 1638;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  AudioHardwareCreateAggregateDevice: nowhere to put the return value";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      *buf = 136315394;
      v12 = "HALS_Framework-ios-imp.cpp";
      v13 = 1024;
      v14 = 1637;
      v6 = MEMORY[0x1E69E9C10];
      v7 = "%25s:%-5d  AudioHardwareCreateAggregateDevice: can't create an Agggregate Device with a NULL description";
    }

    _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    goto LABEL_13;
  }

  v4 = *MEMORY[0x1E69E9840];
  return 560033144;
}

void sub_1DE402B5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = v4[2];
      if (v2)
      {
        *v2 = 0;
      }
    }

    else if (v2)
    {
      *v2 = 0;
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE402A20);
  }

  _Unwind_Resume(a1);
}

OSStatus AudioHardwareDestroyAggregateDevice(AudioObjectID inDeviceID)
{
  if (!AllowHALClientsInThisProcess())
  {
    return 560033144;
  }

  HALS_System::StartServer(&v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  HALS_MetaManager::DestroyDevice(HALS_MetaManager::sInstance, inDeviceID);
  return 0;
}

void sub_1DE402C18(void *a1, int a2)
{
  v3 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v4 = v3[2];
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE402C04);
}

void sub_1DE402FB0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE402FC8(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE402FB8);
  }

  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE402D4CLL);
  }

  *v2 = 0;
  goto LABEL_7;
}

void sub_1DE4033AC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE4033C4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE4033B4);
  }

  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE403148);
  }

  *v2 = 0;
  goto LABEL_7;
}

void sub_1DE403684(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40369C(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE40352CLL);
  }

  JUMPOUT(0x1DE40368CLL);
}

void sub_1DE403940(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE403958(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE4037E8);
  }

  JUMPOUT(0x1DE403948);
}

void sub_1DE403C24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE403ACCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1DE403FA8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE403FC0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE403FB0);
  }

  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE403D9CLL);
  }

  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  goto LABEL_7;
}

void sub_1DE4043A4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE4043BC(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE4043ACLL);
  }

  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE404140);
  }

  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  goto LABEL_7;
}

void sub_1DE404744(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE40475C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE40474CLL);
  }

  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (!v2)
  {
LABEL_7:
    __cxa_end_catch();
    JUMPOUT(0x1DE404538);
  }

  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  goto LABEL_7;
}

uint64_t *HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(HALS_Device_HostedDSP *this, HALS_Device_HostedDSP *a2, HALS_Client *a3, uint64_t a4)
{
  v5 = a3;
  v72[19] = *MEMORY[0x1E69E9840];
  theDict = 0;
  v51 = a2 + 40;
  v55 = 0;
  OffloadsAvailableForDevice = 0;
  v48 = 0;
  v49 = 0;
  v52 = *(*a2 + 16);
  if (a4)
  {
    v8 = *(a4 + 16);
  }

  else
  {
    v8 = 0;
  }

  v53 = v8;
  OffloadsAvailableForDevice = HALS_Device_HostedDSP::GetOffloadsAvailableForDevice(a2, a3, &v48);
  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (!HALS_Device::GetNumberStreamsExcludingReferenceStreams(*a2, 1))
  {
    v55 = 2;
LABEL_14:
    *this = 0;
    goto LABEL_111;
  }

  if (theDict && CFDictionaryGetCount(theDict) && !DSP_Host_OffloadDictionary::has_all_id(&v48))
  {
    HALS_Device::InformOffloadsAvailableOnDevice(*a2, 0);
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  DSP_Host_OffloadDictionary::make_empty(&v45);
  if ((*(**a2 + 96))(*a2, *(*a2 + 16), "rOsdtpni", 0))
  {
    *v63 = 0;
    *&v63[8] = 0;
    HALS_System::GetInstance(buf, 0, v63);
    v9 = *(*buf + 1800);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = HALS_DSPDeveloperPreferences::sInitValues;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v10 = HALS_DSPDeveloperPreferences::sInitValues;
    }

    v11 = *&buf[8];
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v10 >= 1)
    {
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *v14;
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      else
      {
        v15 = *v14;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*a2 + 16);
        *buf = 136315650;
        *&buf[4] = "HALS_Device_HostedDSP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 374;
        *&buf[18] = 1024;
        *&buf[20] = v16;
        _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] This device supports DSP Offloads (HasProperty returns TRUE) (Device ID: %d)", buf, 0x18u);
      }
    }

    LODWORD(value) = 8;
    cf = 0;
    (*(**a2 + 120))(*a2, *(*a2 + 16), "rOsdtpni", 8, &value, &cf, 0, 0, 0);
    if (cf)
    {
      DSP_Host_OffloadDictionary::deep_copy_from(&v45, cf);
      CFRelease(cf);
    }

    *v63 = 0;
    *&v63[8] = 0;
    HALS_System::GetInstance(buf, 0, v63);
    v17 = *(*buf + 1800);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = HALS_DSPDeveloperPreferences::sInitValues;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v18 = HALS_DSPDeveloperPreferences::sInitValues;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v18 >= 1)
    {
      DSP_Host_OffloadDictionary::get_offload_id_list(&v58, &v45);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
      v19 = v58;
      v20 = v59;
      if (v58 == v59)
      {
        goto LABEL_43;
      }

      do
      {
        shared_weak_owners_high = SHIBYTE(v19->__shared_weak_owners_);
        if (shared_weak_owners_high >= 0)
        {
          v22 = v19;
        }

        else
        {
          v22 = v19->__vftable;
        }

        if (shared_weak_owners_high >= 0)
        {
          shared_owners = HIBYTE(v19->__shared_weak_owners_);
        }

        else
        {
          shared_owners = v19->__shared_owners_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], v22, shared_owners);
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], " ", 1);
        ++v19;
      }

      while (v19 != v20);
      if (v58 == v59)
      {
LABEL_43:
        v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf[16], "<nil>", 5);
      }

      v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v25 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v24);
      }

      v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      else
      {
        v28 = *v27;
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str[abi:ne200100](&__p, &v69);
        v29 = v57 >= 0 ? &__p : __p;
        v30 = *(*a2 + 16);
        *v63 = 136315906;
        *&v63[4] = "HALS_Device_HostedDSP.cpp";
        *&v63[12] = 1024;
        *&v63[14] = 402;
        v64 = 2080;
        v65 = v29;
        v66 = 1024;
        v67 = v30;
        _os_log_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads] The device offload request is %s (Device ID: %d)", v63, 0x22u);
        if (v57 < 0)
        {
          operator delete(__p);
        }
      }

      *buf = *MEMORY[0x1E69E54D8];
      v31 = *(MEMORY[0x1E69E54D8] + 72);
      *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
      *&buf[16] = v31;
      v69 = MEMORY[0x1E69E5548] + 16;
      if (v71 < 0)
      {
        operator delete(v70[7].__locale_);
      }

      v69 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v70);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](v72);
      *buf = &v58;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    if (v47)
    {
      CFDictionaryGetCount(v47);
    }
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  DSP_Host_OffloadDictionary::make_empty(&v58);
  if ((*(**a2 + 96))(*a2, *(*a2 + 16), "bOsdtpni", a4))
  {
    *v63 = 8;
    *buf = 0;
    (*(**a2 + 120))(*a2, *(*a2 + 16), "bOsdtpni", 8, v63, buf, 0, 0, a4);
    if (*buf)
    {
      DSP_Host_OffloadDictionary::deep_copy_from(&v58, *buf);
      CFRelease(*buf);
    }

    if (v60)
    {
      CFDictionaryGetCount(v60);
    }
  }

  *v63 = 0;
  *&v63[8] = 0;
  HALS_System::GetInstance(buf, 0, v63);
  v32 = *(*buf + 1800);
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  else
  {
    v33 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if ((v33 & 0x80000000) == 0)
  {
    if (!v47)
    {
LABEL_95:
      v42 = 3;
      goto LABEL_96;
    }

    if (CFDictionaryGetCount(v47))
    {
      if (theDict)
      {
        if (CFDictionaryGetCount(theDict))
        {
          has_all_id = DSP_Host_OffloadDictionary::has_all_id(&v48);
          if (!has_all_id)
          {
            v35 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v35 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(has_all_id);
            }

            v37 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
              v38 = *v37;
              std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            }

            else
            {
              v38 = *v37;
            }

            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v52;
              v40 = v53;
              DSP_Host_OffloadDictionary::get_debug_string(v63, &v58);
              v41 = SBYTE3(v65) >= 0 ? v63 : *v63;
              *buf = 136316162;
              *&buf[4] = "HALS_Device_HostedDSP.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 167;
              *&buf[18] = 1024;
              *&buf[20] = v40;
              LOWORD(v69) = 1024;
              *(&v69 + 2) = v39;
              HIWORD(v69) = 2080;
              v70[0].__locale_ = v41;
              _os_log_impl(&dword_1DE1F9000, v38, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][offloads][bypass] (Client ID: %d) (Device ID: %d) Net Offloads - client bypassed %s", buf, 0x28u);
              if (SBYTE3(v65) < 0)
              {
                operator delete(*v63);
              }
            }
          }
        }
      }
    }
  }

  if (!v47 || !CFDictionaryGetCount(v47))
  {
    goto LABEL_95;
  }

  if (v47 && CFDictionaryGetCount(v47) && !OffloadsAvailableForDevice)
  {
    v42 = 1;
  }

  else
  {
    if (!v60 || !CFDictionaryGetCount(v60))
    {
      goto LABEL_97;
    }

    v42 = 4;
  }

LABEL_96:
  v55 = v42;
LABEL_97:
  *this = 0;
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (v47 && CFDictionaryGetCount(v47) && !DSP_Host_OffloadDictionary::has_all_id(&v45))
    {
      DSP_Host_OffloadDictionary::deep_copy(buf);
    }

    operator new();
  }

  if (v60)
  {
    CFRelease(v60);
  }

  if (v59)
  {
    std::__shared_weak_count::__release_weak(v59);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_111:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  result = HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(BOOL,HALS_Client *)const::LogExplanation::~LogExplanation(&v51);
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4056C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, int a26, const void *a27, void **p_p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  __cxa_free_exception(v39);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&p_p);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a19);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a27);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_p);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v38, 0);
  DSP_Host_OffloadDictionary::~DSP_Host_OffloadDictionary(&a22);
  DSP_Host_OffloadDictionary::~DSP_Host_OffloadDictionary(&a10);
  DSP_Host_OffloadDictionary::~DSP_Host_OffloadDictionary(&a13);
  HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(BOOL,HALS_Client *)const::LogExplanation::~LogExplanation(&a16);
  _Unwind_Resume(a1);
}

BOOL HALS_Device_HostedDSP::GetOffloadsAvailableForDevice(HALS_Device_HostedDSP *this, int a2, const __CFDictionary **a3)
{
  v53 = *MEMORY[0x1E69E9840];
  DSP_Host_OffloadDictionary::make_empty(a3);
  v40 = 0;
  v41 = 0;
  v39 = &unk_1F59859B0;
  std::string::basic_string[abi:ne200100]<0>(&buf, "device model uid");
  DSP_Dictionariable::DictionariableKvp::DictionariableKvp(v42, &buf);
  v42[0] = &unk_1F5985C78;
  v43.__r_.__value_.__s.__data_[0] = 0;
  v44 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (*(this + 32) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (this + 8));
  }

  else
  {
    buf.__r_.__value_.__s.__data_[0] = 0;
    v52 = 0;
    Mutable = *"diumbolg";
    v47 = 0;
    if ((*(**this + 96))(*this, *(*this + 16), &Mutable, 0))
    {
      cf = 0;
      LODWORD(v49) = 8;
      (*(**this + 120))(*this, *(*this + 16), &Mutable, 8, &v49, &cf, 0, 0, 0);
      v6 = cf;
      if (cf)
      {
        CFRetain(cf);
        v50 = v6;
        v7 = CFGetTypeID(v6);
        if (v7 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        if (!v50)
        {
          v30 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v30, "Could not construct");
          __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_to<std::string,0>(&v45, v50);
        buf = v45;
        memset(&v45, 0, sizeof(v45));
        v52 = 1;
        if (v50)
        {
          CFRelease(v50);
        }

        CFRelease(cf);
        size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((this + 8), &buf);
        }
      }
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, (this + 8));
    if (v52 == 1 && SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(&v43, &__p);
  if (v38 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v33 = 0;
  v34 = 0;
  HALS_System::GetInstance(&cf, 0, &v33);
  v10 = cf;
  if (!*(cf + 236))
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "HALS_System.cpp";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = 5457;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp] Hosted DSP has not yet been initialized.", &buf, 0x12u);
    }
  }

  v15 = v10[236];
  if (v15 && a2)
  {
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      __p.__r_.__value_.__s.__data_[8] = 0;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
      v39[3](&v39, &Mutable);
      mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v50, Mutable);
      buf.__r_.__value_.__s.__data_[0] = 0;
      buf.__r_.__value_.__s.__data_[8] = 0;
      if (v50)
      {
        Data = CFPropertyListCreateData(0, v50, kCFPropertyListBinaryFormat_v1_0, 0, 0);
        v19 = Data;
        if (Data)
        {
          v45.__r_.__value_.__r.__words[0] = Data;
          v20 = CFGetTypeID(Data);
          if (v20 != CFDataGetTypeID())
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v31, "Could not construct");
            __cxa_throw(v31, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          buf.__r_.__value_.__s.__data_[8] = 1;
          buf.__r_.__value_.__r.__words[0] = v19;
        }
      }

      std::__optional_storage_base<applesauce::CF::DataRef,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<applesauce::CF::DataRef,false>>(&__p, &buf);
      if (buf.__r_.__value_.__s.__data_[8] == 1 && buf.__r_.__value_.__r.__words[0])
      {
        CFRelease(buf.__r_.__value_.__l.__data_);
      }

      if (v50)
      {
        CFRelease(v50);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (__p.__r_.__value_.__s.__data_[8] == 1)
      {
        LOBYTE(Mutable) = 0;
        LOBYTE(v47) = 0;
        v21 = __p.__r_.__value_.__r.__words[0];
        if (__p.__r_.__value_.__r.__words[0])
        {
          CFRetain(__p.__r_.__value_.__l.__data_);
        }

        Mutable = v21;
        LOBYTE(v47) = 1;
        if (DSP_Host_PropertySet::getHostedDSPPropertyDataType(v17, "aOsdtpni") != 7)
        {
          goto LABEL_62;
        }

        buf.__r_.__value_.__s.__data_[0] = 0;
        buf.__r_.__value_.__s.__data_[8] = 0;
        if (v21)
        {
          CFRetain(v21);
        }

        buf.__r_.__value_.__r.__words[0] = v21;
        buf.__r_.__value_.__s.__data_[8] = 1;
        (*(*&v17->mSelector + 40))(&v48, v17, "aOsdtpni", &buf);
        if (buf.__r_.__value_.__s.__data_[8] == 1 && buf.__r_.__value_.__r.__words[0])
        {
          CFRelease(buf.__r_.__value_.__l.__data_);
        }

        if (v48)
        {
          v45.__r_.__value_.__s.__data_[0] = 0;
          v45.__r_.__value_.__s.__data_[8] = 0;
          v22 = CFPropertyListCreateWithData(0, v48, 0, 0, 0);
          mcp_applesauce::CF::PropertyListRef::PropertyListRef(&v50, v22);
          v23 = v50;
          v49 = v50;
          v50 = 0;
          if (v49)
          {
            v24 = CFGetTypeID(v23);
            if (v24 != CFDictionaryGetTypeID())
            {
              v32 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v32, "Could not construct");
              __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v45.__r_.__value_.__s.__data_[8] = 1;
            v45.__r_.__value_.__r.__words[0] = v23;
            if (v50)
            {
              CFRelease(v50);
            }
          }

          else
          {
            v45.__r_.__value_.__s.__data_[8] = 1;
            v45.__r_.__value_.__r.__words[0] = 0;
          }

          if (v48)
          {
            CFRelease(v48);
          }
        }

        else
        {
LABEL_62:
          v45.__r_.__value_.__s.__data_[0] = 0;
          v45.__r_.__value_.__s.__data_[8] = 0;
        }

        if (v21)
        {
          CFRelease(v21);
        }

        if (v45.__r_.__value_.__s.__data_[8] == 1 && v45.__r_.__value_.__r.__words[0])
        {
          _ZNSt3__115allocate_sharedB8ne200100I26DSP_Host_OffloadDictionaryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }

        if ((v45.__r_.__value_.__s.__data_[8] & 1) != 0 && v45.__r_.__value_.__r.__words[0])
        {
          CFRelease(v45.__r_.__value_.__l.__data_);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  DSP_Host_OffloadDictionary::make_empty(a3);
  v25 = a3[2];
  v26 = v25 && CFDictionaryGetCount(v25) && !DSP_Host_OffloadDictionary::has_all_id(a3);
  v39 = &unk_1F59859B0;
  v42[0] = &unk_1F5985C78;
  if (v44 == 1 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v42);
  v39 = &unk_1F5985E98;
  if (v41 == 1 && v40)
  {
    CFRelease(v40);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void sub_1DE406164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36)
{
  __cxa_free_exception(v36);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v38 - 144));
  mcp_applesauce::CF::PropertyListRef::~PropertyListRef((v38 - 136));
  std::optional<applesauce::CF::DictionaryRef>::~optional(&a33);
  applesauce::CF::DataRef::~DataRef((v38 - 152));
  std::optional<applesauce::CF::DataRef>::~optional(&a36);
  std::optional<applesauce::CF::DataRef>::~optional(&a14);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  DSP_Host_Types::DeviceDSPOffloadInfo::~DeviceDSPOffloadInfo(&a22);
  _Unwind_Resume(a1);
}

uint64_t *HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(BOOL,HALS_Client *)const::LogExplanation::~LogExplanation(uint64_t *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 5);
  if ((v2 - 2) < 3)
  {
    if (*(a1 + 16) != 1)
    {
      goto LABEL_31;
    }

    if (*(*a1 + 4) == 1 && v2 == **a1)
    {
      goto LABEL_31;
    }

    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v12 = HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(BOOL,HALS_Client *)const::kExplanationStrings[*(a1 + 5)];
    v14 = *(a1 + 2);
    v13 = *(a1 + 3);
    v23 = 136316162;
    v24 = "HALS_Device_HostedDSP.cpp";
    v25 = 1024;
    v26 = 113;
    v27 = 1024;
    v28 = v13;
    v29 = 1024;
    v30 = v14;
    v31 = 2080;
    v32 = v12;
    v15 = "%32s:%-5d [hal_dsp][offloads] (Client ID: %u) (Device ID: %u) Offloads are available, but this device will not offload -> %s";
    goto LABEL_27;
  }

  if (v2 != 1 || (a1[2] & 1) != 0)
  {
    goto LABEL_31;
  }

  if (*(*a1 + 4) == 1 && **a1 == 1)
  {
    goto LABEL_31;
  }

  v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v9 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v11;
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    v7 = *v11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HALS_Device_HostedDSP::RationalizeDSPOffloadsForClient(BOOL,HALS_Client *)const::kExplanationStrings[*(a1 + 5)];
    v18 = *(a1 + 2);
    v17 = *(a1 + 3);
    v23 = 136316162;
    v24 = "HALS_Device_HostedDSP.cpp";
    v25 = 1024;
    v26 = 122;
    v27 = 1024;
    v28 = v17;
    v29 = 1024;
    v30 = v18;
    v31 = 2080;
    v32 = v16;
    v15 = "%32s:%-5d [hal_dsp][offloads] (Client ID: %u) (Device ID: %u) This device will not offload -> %s";
LABEL_27:
    _os_log_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEFAULT, v15, &v23, 0x28u);
  }

LABEL_28:
  v19 = *a1;
  v20 = *(a1 + 5);
  if ((*(*a1 + 4) & 1) == 0)
  {
    *(v19 + 4) = 1;
  }

  *v19 = v20;
LABEL_31:
  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE406684(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void DSP_Host_Types::DeviceDSPOffloadInfo::~DeviceDSPOffloadInfo(DSP_Host_Types::DeviceDSPOffloadInfo *this)
{
  *this = &unk_1F59859B0;
  v2 = (this + 24);
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  *this = &unk_1F5985E98;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

{
  *this = &unk_1F59859B0;
  v2 = (this + 24);
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  *this = &unk_1F5985E98;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59859B0;
  v2 = (this + 24);
  *(this + 3) = &unk_1F5985C78;
  if (*(this + 64) == 1 && *(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  DSP_Dictionariable::DictionariableKvp::~DictionariableKvp(v2);
  *this = &unk_1F5985E98;
  if (*(this + 16) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDSPOffloadInfo>::add_to(uint64_t a1, __CFArray **a2)
{
  cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, &cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v4, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(*a2, v4);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_1DE4067FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(va);
  _Unwind_Resume(a1);
}

void DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDSPOffloadInfo>::description(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  cf[0] = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  (*(*a1 + 24))(a1, cf);
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v9, cf[0]);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v4 = CFCopyDescription(v9);
  v5 = v4;
  if (v4)
  {
    Length = CFStringGetLength(v4);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v10 = 0;
    std::vector<char>::vector[abi:ne200100](cf, MaximumSizeForEncoding + 1);
    LODWORD(MaximumSizeForEncoding) = CFStringGetCString(v5, cf[0], MaximumSizeForEncoding + 1, 0x8000100u);
    CFRelease(v5);
    if (MaximumSizeForEncoding)
    {
      v8 = cf[0];
    }

    else
    {
      v8 = "<error>";
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v8);
    if (cf[0])
    {
      cf[1] = cf[0];
      operator delete(cf[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "<empty>");
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t DSP_Host_Types::DSP_Host_DictionaryData<DSP_Host_Types::DeviceDSPOffloadInfo>::~DSP_Host_DictionaryData(uint64_t a1)
{
  *a1 = &unk_1F5985E98;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void HALS_Device_HostedDSP::CopyDSPSettingsForClient(HALS_Device_HostedDSP *this, std::mutex *a2, HALS_Client *a3, uint64_t a4)
{
  *this = 0;
  if (a3)
  {
    std::mutex::lock(a2 + 11);
    v6 = HALS_Device_HostedDSP_ClientInfo::find(a2[10].__m_.__opaque, a4, 1);
    if (v6)
    {
      if (v6[5])
      {
        DSP_Host_OffloadDictionary::deep_copy(&v7);
      }
    }

    std::mutex::unlock(a2 + 11);
  }
}

void sub_1DE406A8C(_Unwind_Exception *a1)
{
  std::mutex::unlock(v2 + 11);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

void HALS_Device_HostedDSP::DiscoverDSPPropertySetsForClient(HALS_Device **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a4 + 24))
  {
    if (a2)
    {
      (*(*a2 + 208))(&v23, a2);
    }

    else
    {
      LODWORD(v21) = HALS_Device::GetInternalIOContextID(*a1);
      v24 = 0;
      v25 = 0;
      v23 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&v23, &v21, &v21 + 4, 1uLL);
    }

    v8 = v23;
    v9 = v24;
    if (v23 != v24)
    {
      while (1)
      {
        v10 = HALS_ObjectMap::CopyObjectByObjectID(*v8);
        v12 = v10;
        if (v10)
        {
          break;
        }

LABEL_23:
        v17 = 0;
LABEL_24:
        HALS_ObjectMap::ReleaseObject(v12, v11);
        if ((v17 == 3 || !v17) && ++v8 != v9)
        {
          continue;
        }

        v8 = v23;
        goto LABEL_28;
      }

      v13 = *(*a1 + 4);
      (*(**(v10 + 104) + 776))(&v21);
      v14 = v21;
      if (v21)
      {
        if (!a5)
        {
LABEL_11:
          v19 = v14;
          v20 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = *(a4 + 24);
          if (!v15)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v16 = (*(*v15 + 48))(v15, &v19);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = 2;
          }

LABEL_20:
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if ((v16 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if ((*(*v21 + 24))(v21))
        {
          v14 = v21;
          goto LABEL_11;
        }
      }

      LOBYTE(v16) = 0;
      v17 = 3;
      goto LABEL_20;
    }

LABEL_28:
    if (v8)
    {
      v24 = v8;
      operator delete(v8);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_Device_HostedDSP::HasProperty(HALS_Device_HostedDSP *this, uint64_t *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = *a2;
  v20 = *(a2 + 2);
  v5 = *a2;
  if (*a2 == 1684498541 || v5 == 1684500589)
  {
    if (*(a2 + 1) == 1768845428)
    {
      v7 = (*(**this + 472))(*this);
      v8 = HIDWORD(v7);
      v9 = v7 != 0;
      only_vocal_isolation_all_apps = AMCP::Feature_Flags::va_read_only_vocal_isolation_all_apps(v7);
      v11 = only_vocal_isolation_all_apps;
      if ((AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(only_vocal_isolation_all_apps) & 1) != 0 || (v11 & 1) != 0 || (v12 = v8 & v9, (v8 & v9) != 0))
      {
        v17 = *a2;
        v18 = *(a2 + 2);
        operator new();
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
  }

  else
  {
    if (v5 == 1983997011)
    {
      if (*(a2 + 1) == 1768845428)
      {
        v13 = 257;
      }

      else
      {
        v13 = 256;
      }

      v21 = v13;
    }

    v12 = v21;
    v14 = HIBYTE(v21);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12 | (v14 << 8);
}

void sub_1DE407020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_Device_HostedDSP::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK21HALS_Device_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  **(a1 + 24) = (*(*v3 + 24))(v3, a1 + 8) | 0x100;
  v5 = *(a1 + 24);
  if (v5[1] == 1)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v19[0] = 0;
  v19[1] = 0;
  HALS_System::GetInstance(buf, 0, v19);
  v7 = *(*buf + 1800);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = HALS_DSPDeveloperPreferences::sInitValues;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v8 = HALS_DSPDeveloperPreferences::sInitValues;
  }

  v9 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v8 >= 1)
  {
    v10 = *(a1 + 32);
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = "kAudioDevicePropertyDSPGraphParameter";
      *buf = 136315906;
      *&buf[4] = "HALS_Device_HostedDSP.cpp";
      if (v10 == 1684498541)
      {
        v15 = "kAudioDevicePropertyHasDSPGraphParameter";
      }

      *&buf[12] = 1024;
      *&buf[14] = 497;
      v21 = 2080;
      v22 = v15;
      if (v6)
      {
        v16 = "HAS";
      }

      else
      {
        v16 = "DOES NOT HAVE";
      }

      v23 = 2080;
      v24 = v16;
      _os_log_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_DEFAULT, "%32s:%-5d [hal_dsp][graph] Hosted DSP %s %s", buf, 0x26u);
    }
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE407308(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_Device_HostedDSP::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596D320;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 44) = 0;
  return result;
}

uint64_t HALS_Device_HostedDSP::IsPropertySettable(HALS_Device_HostedDSP *this, uint64_t *a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a2 == 1684500589)
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE4074F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::IsPropertySettable(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::IsPropertySettable(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK21HALS_Device_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::IsPropertySettable(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::IsPropertySettable(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  DSP_Host_PropertySet::getHostedDSPPropertyInfo(&v7, v3, (a1 + 8));
  if (v7 && *(v7 + 113) == 1)
  {
    v5 = *(v7 + 112);
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  **(a1 + 24) = v5 & 1;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 0;
}

void sub_1DE4075DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_Device_HostedDSP::IsPropertySettable(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::IsPropertySettable(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596D3B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t HALS_Device_HostedDSP::GetPropertyDataSize(HALS_Device_HostedDSP *this, int *a2, const AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v6 = *a2;
  if (*a2 == 1684498541 || v6 == 1684500589)
  {
    v11 = *a2;
    v12 = a2[2];
    operator new();
  }

  if (v6 == 1983997011)
  {
    result = 4;
  }

  else
  {
    result = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE4077C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::GetPropertyDataSize(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::GetPropertyDataSize(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK21HALS_Device_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::GetPropertyDataSize(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::GetPropertyDataSize(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = DSP_Host_PropertySet::getHostedDSPPropertyDataType(v3, (a1 + 8)) - 3;
  if (v5 > 4)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = qword_1DE790460[v5];
  }

  **(a1 + 24) = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 0;
}

void sub_1DE407888(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_Device_HostedDSP::GetPropertyDataSize(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::GetPropertyDataSize(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596D430;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

AMCP::Log::AMCP_Scope_Registry *HALS_Device_HostedDSP::GetPropertyData(AMCP::Log::AMCP_Scope_Registry *this, int *a2, const AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v47 = *MEMORY[0x1E69E9840];
  v35 = a5;
  v9 = *a2;
  if (*a2 == 1684498541 || v9 == 1684500589)
  {
    v22 = 0;
    v20 = *a2;
    v21 = a2[2];
    v36 = 0;
    operator new();
  }

  if (v9 == 1983997011)
  {
    if (a5)
    {
      if (a3 == 4)
      {
        v24 = 0;
        v25 = 0;
        v28 = *a2;
        v29 = a2[2];
        v37 = 0;
        operator new();
      }

      v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v16 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = *v18;
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      else
      {
        v19 = *v18;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        buf = 136315650;
        v39 = "HALS_Device_HostedDSP.cpp";
        v40 = 1024;
        v41 = 586;
        v42 = 2080;
        v43 = "inDataSize != sizeof(UInt32)";
        _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::GetPropertyData: inDataSize is not UInt32 for kAudioDevicePropertyVoiceActivityDetectionState", &buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
      __cxa_allocate_exception(0x40uLL);
      v26 = off_1F5991DD8;
      v27 = 1852797029;
      v29 = 1852797029;
      v32 = 0;
      v33 = 0;
      v34 = -1;
      v28 = &unk_1F598E5D8;
      v30 = &unk_1F598E600;
      v31 = 0;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(&buf, &v28);
      v44 = "void HALS_Device_HostedDSP::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
      v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP.cpp";
      v46 = 586;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
    }

    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      buf = 136315650;
      v39 = "HALS_Device_HostedDSP.cpp";
      v40 = 1024;
      v41 = 585;
      v42 = 2080;
      v43 = "outData == nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_Device::GetPropertyData: outData is nullptr for kAudioDevicePropertyVoiceActivityDetectionState", &buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    v26 = off_1F5991DD8;
    v27 = 1852797029;
    v29 = 1852797029;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v28 = &unk_1F598E5D8;
    v30 = &unk_1F598E600;
    v31 = 0;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(&buf, &v28);
    v44 = "void HALS_Device_HostedDSP::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_Device_HostedDSP.cpp";
    v46 = 585;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v23);
  }

  v11 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE4082C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, std::exception a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    std::__function::__value_func<BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::~__value_func[abi:ne200100](v34 - 192);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE407B3CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &unk_1F5992140;
  *a1 = &unk_1F598E598;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = &unk_1F59921B8;
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F598E4E0;
  *(a1 + 16) = &unk_1F598E518;
  *(a1 + 56) = &unk_1F598E550;
  v10 = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    (*(*v6 + 40))(&v9);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v10, v9);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v9);
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt((a1 + 24), v7);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v10);
  return a1;
}

{
  *(a1 + 56) = &unk_1F5992140;
  *a1 = &unk_1F598E598;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F59921B8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F598E4E0;
  *(a1 + 16) = &unk_1F598E518;
  *(a1 + 56) = &unk_1F598E550;
  return a1;
}

void sub_1DE4085A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  *v13 = v11;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v12);
  std::exception::~exception(v10);
  _Unwind_Resume(a1);
}

void sub_1DE40874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::exception::~exception(a1);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception(a1);

  JUMPOUT(0x1E12C1730);
}

void boost::exception_detail::error_info_injector<CAException>::~error_info_injector(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::exception::~exception(a1);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_1,std::allocator<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_1>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK21HALS_Device_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_1,std::allocator<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_1>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v19 = 0;
  v5 = *(a1 + 24);
  if (v5 && (v6 = *(a1 + 32), v6))
  {
    AMCP::CF::create_data(&cf, v5, v6);
    v7 = cf;
    v19 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  else
  {
    v7 = 0;
  }

  cf = v7;
  v17 = 1;
  (*(*v4 + 40))(&theData, v4, a1 + 8, &cf);
  if (v17 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (theData)
  {
    v8 = *(a1 + 20);
    if (CFDataGetLength(theData) <= v8)
    {
      if (!theData)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v9 = **(a1 + 40);
      BytePtr = CFDataGetBytePtr(theData);
      if (!theData)
      {
        v14 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v14, "Could not construct");
        __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      Length = CFDataGetLength(theData);
      memcpy(v9, BytePtr, Length);
      if (!theData)
      {
        v15 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v15, "Could not construct");
        __cxa_throw(v15, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      **(a1 + 48) = CFDataGetLength(theData);
      **(a1 + 56) = 1;
    }

    if (theData)
    {
      CFRelease(theData);
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return 0;
}

void sub_1DE408BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  applesauce::CF::DataRef::~DataRef(va);
  applesauce::CF::DataRef::~DataRef(va1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_1,std::allocator<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_1>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596D530;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK21HALS_Device_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  if (DSP_Host_PropertySet::getHostedDSPPropertyDataType(v5, (a1 + 16)) != 5)
  {
    goto LABEL_16;
  }

  LOBYTE(cf) = 0;
  v16 = 0;
  (*(*&v5->mSelector + 40))(&theData, v5, a1 + 16, &cf);
  if (v16 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (!theData)
  {
    goto LABEL_16;
  }

  if (CFDataGetLength(theData) != 4)
  {
    goto LABEL_11;
  }

  if (!theData)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (CFDataGetBytePtr(theData))
  {
    if (!theData)
    {
      v14 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v14, "Could not construct");
      __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    v6 = 0;
    v7 = *CFDataGetBytePtr(theData);
    v2 = v7 >> 8;
  }

  else
  {
LABEL_11:
    LOBYTE(v7) = 0;
    v6 = 1;
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if ((v6 & 1) == 0)
  {
    v8 = 0x100000000;
  }

  else
  {
LABEL_16:
    v8 = 0;
    LOBYTE(v7) = 0;
  }

  v9 = v8 | v7 | (v2 << 8);
  if (v9 <= 0x100000000)
  {
    LODWORD(v9) = 0;
  }

  v10 = *(a1 + 8);
  *v10 = v9;
  *(v10 + 4) = 1;
  v11 = **(a1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v11 == 0;
}

void sub_1DE408F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  applesauce::CF::DataRef::~DataRef(va1);
  std::optional<applesauce::CF::DataRef>::~optional(va);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::GetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,unsigned int &,void *,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596D4B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(void *a1)
{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 2) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 3);
  std::exception::~exception(v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 2) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 3);

  std::exception::~exception(v1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(exception, a1);
}

void sub_1DE4093D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  *v13 = v11;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v12);
  std::exception::~exception(v10);
  MEMORY[0x1E12C1730]();
  _Unwind_Resume(a1);
}

void non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(void *a1)
{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::exception_detail::error_info_injector<CAException>::~error_info_injector(void *a1)
{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN21HALS_Device_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_ClientE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<HALS_Device_HostedDSP::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  AMCP::CF::create_data(&v30, *(a1 + 24), *(a1 + 32));
  v5 = *(a1 + 40);
  if (v5 && (v6 = *(a1 + 48), v6))
  {
    AMCP::CF::create_data(cf, v5, v6);
    v7 = (*(*v4 + 32))(v4, a1 + 8, &v30, cf);
    v8 = *cf;
    if (*cf)
    {
      CFRelease(*cf);
    }
  }

  else
  {
    v8 = (*(*v4 + 32))(v4, a1 + 8, &v30, 0);
    v7 = v8;
  }

  if (v7)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 16);
      v15.i32[0] = bswap32(*(a1 + 12));
      v17 = vzip1_s8(v15, v15);
      v18.i64[0] = 0x1F0000001FLL;
      v18.i64[1] = 0x1F0000001FLL;
      v19.i64[0] = 0x1F0000001FLL;
      v19.i64[1] = 0x1F0000001FLL;
      v20.i64[0] = 0x5F0000005FLL;
      v20.i64[1] = 0x5F0000005FLL;
      v21 = vbsl_s8(vmovn_s32(vcgtq_u32(v20, vsraq_n_s32(v19, vshlq_n_s32(vmovl_u16(v17), 0x18uLL), 0x18uLL))), v17, 0x2E002E002E002ELL);
      v29 = 4;
      v22 = vuzp1_s8(v21, v21);
      LODWORD(v28) = v22.i32[0];
      BYTE4(v28) = 0;
      v22.i32[0] = bswap32(v7);
      v23 = vzip1_s8(v22, v22);
      v27 = 4;
      v24 = vbsl_s8(vmovn_s32(vcgtq_u32(v20, vsraq_n_s32(v18, vshlq_n_s32(vmovl_u16(v23), 0x18uLL), 0x18uLL))), v23, 0x2E002E002E002ELL);
      LODWORD(__p) = vuzp1_s8(v24, v24).u32[0];
      BYTE4(__p) = 0;
      *cf = 136316162;
      *&cf[4] = "HALS_Device_HostedDSP.cpp";
      v32 = 1024;
      v33 = 679;
      v34 = 2080;
      v35 = &v28;
      v36 = 1024;
      v37 = v16;
      v38 = 2080;
      p_p = &__p;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d [hal_dsp][graph] kAudioDevicePropertyDSPGraphParameter from setHostedDSPProperty scope:%s el:%u err:%s", cf, 0x2Cu);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1DE40999C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_Device_HostedDSP::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0,std::allocator<HALS_Device_HostedDSP::SetPropertyData(unsigned int,AudioObjectPropertyAddress const&,unsigned int,void const*,unsigned int,void const*,HALS_Client *)::$_0>,BOOL ()(std::shared_ptr<DSP_Host_PropertySet>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596D5B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 52) = 0;
  return result;
}

uint64_t ADS::Stream::AbortConfigChange(ADS::Stream *this, unint64_t a2, ADS::BaseObject *a3)
{
  if (*a3 == 1936092532 || *a3 == 1885762592)
  {
    return (*(*a3 + 8))(a3);
  }

  else
  {
    return ADS::BaseObject::AbortConfigChange(this, a2, a3);
  }
}

uint64_t ADS::Stream::PerformConfigChange(ADS::Stream *this, unint64_t a2, char *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 3);
  if (v5 == 1936092532 || v5 == 1885762592)
  {
    v7 = *(a3 + 72);
    v16 = *(a3 + 56);
    v17 = v7;
    v18 = *(a3 + 11);
    if (!ADS::Stream::IsSupportedFormat(this, &v16))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v20 = "ADS_Stream.cpp";
        v21 = 1024;
        v22 = 434;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream::PerformConfigChange: unsupported sample format", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 560226676;
    }

    v9 = *(this + 25);
    v8 = this + 200;
    v10 = (*(v9 + 16))(v8);
    v11 = v17;
    *(v8 - 5) = v16;
    *(v8 - 4) = v11;
    *(v8 - 6) = v18;
    result = (*(*a3 + 8))(a3);
    if (v10)
    {
      result = (*(*v8 + 24))(v8);
    }

    v13 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v14 = *MEMORY[0x1E69E9840];

    return ADS::BaseObject::PerformConfigChange(this, a2, a3);
  }

  return result;
}

void sub_1DE409D34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL ADS::Stream::IsSupportedFormat(ADS::Stream *this, const CA::StreamDescription *a2)
{
  v2 = *(this + 21);
  v3 = this + 176;
  v4 = *(a2 + 1);
  v11[0] = *a2;
  v11[1] = v4;
  v12 = *(a2 + 4);
  v13 = 3;
  if (v2 != this + 176)
  {
    v5 = *v11;
    while (!CA::StreamDescription::IsEquivalent(v11, (v2 + 32), 3u) || *(v2 + 9) > v5 || *(v2 + 10) < v5)
    {
      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
      if (v8 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

void ADS::Stream::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int a7, int *a8, _DWORD *a9, uint64_t a10)
{
  v49 = *MEMORY[0x1E69E9840];
  v12 = *a4;
  if (*a4 == 1885762592 || v12 == 1936092532)
  {
    if (a7 != 40)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "ADS_Stream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 311;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_SetPropertyData: wrong size for the data for kAudioStreamPropertyPhysicalFormat", &buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v14 = *(a8 + 1);
    v42[0] = *a8;
    v42[1] = v14;
    v43 = *(a8 + 4);
    v15 = a1 + 200;
    v16 = (*(*(a1 + 200) + 16))(a1 + 200);
    v17 = *(a1 + 136);
    *&buf.mSampleRate = *(a1 + 120);
    *&buf.mBytesPerPacket = v17;
    *&buf.mBitsPerChannel = *(a1 + 152);
    if (v16)
    {
      (*(*v15 + 24))(a1 + 200);
    }

    if (!CA::StreamDescription::IsEquivalent(v42, &buf, 3u))
    {
      if (ADS::Stream::IsSupportedFormat(a1, v42))
      {
        v18 = *(a1 + 20);
        operator new();
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v45 = 136315394;
        v46 = "ADS_Stream.cpp";
        v47 = 1024;
        v48 = 325;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  Stream::SetPropertyData: unsupported format for kAudioStreamPropertyPhysicalFormat/kAudioStreamPropertyVirtualFormat", v45, 0x12u);
      }

      v41 = __cxa_allocate_exception(0x10uLL);
      *v41 = off_1F5991DD8;
      v41[2] = 560226676;
    }

    goto LABEL_34;
  }

  if (v12 == 1935762292)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "ADS_Stream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 288;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::Stream_SetPropertyData: wrong size for the data for kAudioDevicePropertyNominalSampleRate", &buf, 0x12u);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = off_1F5991DD8;
      v40[2] = 561211770;
    }

    v19 = *a8;
    v21 = a1 + 200;
    v20 = *(a1 + 200);
    *&buf.mSampleRate = a1 + 200;
    v22 = (*(v20 + 16))(a1 + 200);
    LOBYTE(buf.mFormatID) = v22;
    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = (*a1 + 8);
    }

    v24 = v22;
    (*v23)(a1);
    *a9 = 1;
    v25 = a4[1];
    v27 = *(a10 + 8);
    v26 = *(a10 + 16);
    if (v27 >= v26)
    {
      v30 = *a10;
      v31 = v27 - *a10;
      v32 = 0xAAAAAAAAAAAAAAABLL * (v31 >> 2) + 1;
      if (v32 > 0x1555555555555555)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v33 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v30) >> 2);
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0xAAAAAAAAAAAAAAALL)
      {
        v34 = 0x1555555555555555;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v34);
      }

      v35 = (4 * (v31 >> 2));
      *v35 = 1935762292;
      v35[1] = v25;
      v35[2] = 0;
      v28 = v35 + 3;
      v36 = v35 - v31;
      memcpy(v35 - v31, v30, v31);
      v37 = *a10;
      *a10 = v36;
      *(a10 + 8) = v28;
      *(a10 + 16) = 0;
      if (v37)
      {
        operator delete(v37);
      }
    }

    else
    {
      *v27 = 1935762292;
      v27[1] = v25;
      v27[2] = 0;
      v28 = v27 + 3;
    }

    *(a10 + 8) = v28;
    if (v24)
    {
      (*(*v21 + 24))(v21);
    }

LABEL_34:
    v38 = *MEMORY[0x1E69E9840];
    return;
  }

  v29 = *MEMORY[0x1E69E9840];

  ADS::BaseObject::SetPropertyData(a1, a2);
}