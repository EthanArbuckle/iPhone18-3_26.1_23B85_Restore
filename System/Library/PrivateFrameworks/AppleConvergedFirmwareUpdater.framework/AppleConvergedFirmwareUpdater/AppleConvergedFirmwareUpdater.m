void ACFURTKitNVRMGenerator::create(void *a1@<X0>, int a2@<W1>, ACFURTKitNVRMGenerator **a3@<X8>)
{
  v6 = operator new(0x10uLL);
  *v6 = 0;
  v6[2] = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  v7 = ACFURTKitNVRMGenerator::init(v6, a1, a2);
  if ((v7 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize nv object\n", v9, v10, v11, v12, v13, "ACFURTKitNVRMGenerator");

    std::unique_ptr<ACFURTKitNVRMGenerator>::reset[abi:ne200100](a3, 0);
  }
}

void ACFURTKitNVRMGenerator::ACFURTKitNVRMGenerator(ACFURTKitNVRMGenerator *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

uint64_t ACFURTKitNVRMGenerator::init(uint64_t a1, void *a2, int a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = operator new(0x30uLL);
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    std::default_delete<ACFURTKitNVRMGenerator::RTKitNVRMObj>::operator()[abi:ne200100](a1, v7);
    if (!*a1)
    {
      v33 = "%s::%s: failed: NVRM allocation failure\n";
LABEL_32:
      ACFURTKitNVRMGenerator::init(v33);
      result = 0;
      goto LABEL_29;
    }
  }

  if (a2[2] > 0x13uLL)
  {
    v33 = "%s::%s: failed: too many nv items\n";
    goto LABEL_32;
  }

  *(a1 + 8) = a3;
  *(a1 + 12) = a3 != 0;
  v10 = *a2;
  v8 = a2 + 1;
  v9 = v10;
  if (v10 != v8)
  {
    do
    {
      __dst = 0uLL;
      theData = 0;
      v11 = v9 + 4;
      theData = ACFURTKitNVRMGenerator::createDataFromType(v6, v9[7]);
      if (theData)
      {
        v12 = *(v9 + 55);
        if ((v12 & 0x80000000) != 0)
        {
          v11 = v9[4];
          if (v9[5] >= 8uLL)
          {
            v13 = 8;
          }

          else
          {
            v13 = v9[5];
          }
        }

        else if (v12 >= 8)
        {
          v13 = 8;
        }

        else
        {
          v13 = v12;
        }

        v27 = memcpy(&__dst, v11, v13);
        HIDWORD(__dst) = ACFURTKitNVRMGenerator::getVariableTypeFlag(v27, v9[7]);
        DWORD2(__dst) = CFDataGetLength(theData);
        std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::push_back[abi:ne200100](*a1 + 24, &__dst);
      }

      else
      {
        LogInstance = ACFULogging::getLogInstance(0);
        if (*(v9 + 55) < 0)
        {
          v20 = *v11;
        }

        ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to encode NVRM variable '%s'\n", v15, v16, v17, v18, v19, "ACFURTKitNVRMGenerator");
        v22 = ACFULogging::getLogInstance(v21);
        std::string::basic_string[abi:ne200100]<0>(&v34, "ACFURTKitNVRMGenerator");
        v23 = std::string::append(&v34, "::");
        v24 = *&v23->__r_.__value_.__l.__data_;
        v35.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v35.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v35, "init");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v37 = v25->__r_.__value_.__r.__words[2];
        *__p = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v22, __p, 2, "NVRAM variable data:", v9[7]);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }
      }

      v28 = v9[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v9[2];
          v30 = *v29 == v9;
          v9 = v29;
        }

        while (!v30);
      }

      v9 = v29;
    }

    while (v29 != v8);
  }

  result = 1;
LABEL_29:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2402B0FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::unique_ptr<ACFURTKitNVRMGenerator>::reset[abi:ne200100](ACFURTKitNVRMGenerator **a1, ACFURTKitNVRMGenerator *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFURTKitNVRMGenerator::~ACFURTKitNVRMGenerator(v3);

    operator delete(v4);
  }
}

void ACFURTKitNVRMGenerator::create(ACFURTKitNVRMGenerator *this@<X0>, ACFURTKitNVRMGenerator **a2@<X8>)
{
  v5 = operator new(0x10uLL);
  *v5 = 0;
  v5[2] = 0;
  *(v5 + 12) = 0;
  *a2 = v5;
  v6 = ACFURTKitNVRMGenerator::init(v5, this);
  if ((v6 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize nv object\n", v8, v9, v10, v11, v12, "ACFURTKitNVRMGenerator");

    std::unique_ptr<ACFURTKitNVRMGenerator>::reset[abi:ne200100](a2, 0);
  }
}

uint64_t ACFURTKitNVRMGenerator::init(ACFURTKitNVRMGenerator *this, const __CFData *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = operator new(0x30uLL);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v5 = *this;
  *this = v4;
  if (v5)
  {
    std::default_delete<ACFURTKitNVRMGenerator::RTKitNVRMObj>::operator()[abi:ne200100](this, v5);
    if (!*this)
    {
      ACFURTKitNVRMGenerator::init(v4);
LABEL_15:
      result = 0;
      goto LABEL_13;
    }
  }

  if (!a2)
  {
    ACFURTKitNVRMGenerator::init(v4);
    goto LABEL_15;
  }

  Length = CFDataGetLength(a2);
  *(this + 2) = Length;
  if (!Length)
  {
    ACFURTKitNVRMGenerator::init(Length);
    goto LABEL_15;
  }

  *(this + 12) = 0;
  BytePtr = CFDataGetBytePtr(a2);
  v8 = *(this + 2);
  v9 = BytePtr[2];
  if (v8 < v9)
  {
    ACFURTKitNVRMGenerator::init(BytePtr);
    goto LABEL_15;
  }

  if (BytePtr[3] != v8)
  {
    ACFURTKitNVRMGenerator::init(BytePtr);
    goto LABEL_15;
  }

  if (BytePtr[5] >= 2)
  {
    ACFURTKitNVRMGenerator::init(BytePtr);
    goto LABEL_15;
  }

  v10 = (BytePtr + v9);
  v11 = BytePtr + 6;
  if (BytePtr + 6 < (BytePtr + v9))
  {
    v12 = *MEMORY[0x277CBECE8];
    while (1)
    {
      v15 = 0uLL;
      v16 = 0;
      v15 = *v11;
      v16 = CFDataCreate(v12, v11 + 16, v11[2]);
      if (!v16)
      {
        break;
      }

      std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::push_back[abi:ne200100](*this + 24, &v15);
      v11 = (v11 + v11[2] + 16);
      if (v11 >= v10)
      {
        goto LABEL_12;
      }
    }

    ACFURTKitNVRMGenerator::init(&v15);
    goto LABEL_15;
  }

LABEL_12:
  result = 1;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFData *ACFURTKitNVRMGenerator::copy(const UInt8 **this)
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFDataAppendBytes(Mutable, *this, 24);
    v4 = *this;
    if (*(*this + 4) == *(*this + 3))
    {
      v6 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      do
      {
        Length = CFDataGetLength(v3);
        v4 = *this;
        v8 = *(*this + 3);
        v9 = v8 + 24 * v5;
        if (*(v9 + 16))
        {
          v10 = Length;
          CFDataAppendBytes(v3, v9, 16);
          BytePtr = CFDataGetBytePtr(*(*(*this + 3) + 24 * v5 + 16));
          v12 = CFDataGetLength(*(*(*this + 3) + 24 * v5 + 16));
          CFDataAppendBytes(v3, BytePtr, v12);
          v13 = CFDataGetBytePtr(v3);
          v14 = CFDataGetLength(v3);
          if (v14 != v10)
          {
            v15 = ~v6;
            v16 = &v13[v10];
            v17 = v10 - v14;
            do
            {
              v18 = *v16++;
              v15 = crc32_table[v15 ^ v18] ^ (v15 >> 8);
            }

            while (!__CFADD__(v17++, 1));
            v6 = ~v15;
          }

          LogInstance = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: checksum: 0x%x\n", v21, v22, v23, v24, v25, "ACFURTKitNVRMGenerator");
          v4 = *this;
          v8 = *(*this + 3);
        }

        ++v5;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 4) - v8) >> 3) > v5);
    }

    *v4 = 1316386387;
    *(v4 + 1) = v6;
    v26 = CFDataGetLength(v3);
    v27 = *this;
    *(*this + 2) = v26;
    v28 = *(this + 2);
    if (*(this + 12) == 1 && v28 < v26)
    {
      ACFURTKitNVRMGenerator::copy((this + 1), this);
    }

    else
    {
      if (v28 <= v26)
      {
        v29 = v26;
      }

      else
      {
        v29 = *(this + 2);
      }

      *(v27 + 3) = v29;
      *(v27 + 2) = 0x100000001;
      v45.location = 0;
      v45.length = 24;
      CFDataReplaceBytes(v3, v45, v27, 24);
      v30 = *(*this + 3);
      v31 = CFDataGetLength(v3);
      CFDataIncreaseLength(v3, v30 - v31);
      v33 = ACFULogging::getLogInstance(v32);
      std::string::basic_string[abi:ne200100]<0>(&v41, "ACFURTKitNVRMGenerator");
      v34 = std::string::append(&v41, "::");
      v35 = *&v34->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v42, "copy");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v44 = v36->__r_.__value_.__r.__words[2];
      *__p = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = CFDataGetBytePtr(v3);
      v39 = CFDataGetLength(v3);
      ACFULogging::handleMessageBinary(v33, __p, 4, v38, v39, 0);
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    ACFURTKitNVRMGenerator::copy(0);
  }

  return v3;
}

void sub_2402B158C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void ACFURTKitNVRMGenerator::crc32(ACFURTKitNVRMGenerator *this, unsigned int *a2, const unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = ~*a2;
  *a2 = v5;
  if (a4)
  {
    do
    {
      v6 = *a3++;
      v5 = crc32_table[v5 ^ v6] ^ (v5 >> 8);
      *a2 = v5;
      --a4;
    }

    while (a4);
    v4 = ~v5;
  }

  *a2 = v4;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void ACFURTKitNVRMGenerator::copyDirectData(const UInt8 **this@<X0>, ACFUDataContainer::DirectDataRef **a2@<X8>)
{
  *a2 = 0;
  v3 = ACFURTKitNVRMGenerator::copy(this);
  v4 = v3;
  if (v3)
  {
    Length = CFDataGetLength(v3);
    v6 = malloc(Length);
    if (v6)
    {
      v7 = v6;
      v8 = CFDataGetLength(v4);
      v9 = operator new(0x18uLL);
      ACFUDataContainer::DirectDataRef::DirectDataRef(v9, v7, v8);
      std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a2, v9);
    }

    else
    {
      LogInstance = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to allocate direct data\n", v11, v12, v13, v14, v15, "ACFURTKitNVRMGenerator");
    }

    CFRelease(v4);
  }
}

void sub_2402B1784(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](v1, 0);
  _Unwind_Resume(a1);
}

uint64_t ACFURTKitNVRMGenerator::add(ACFURTKitNVRMGenerator *a1, char *a2, const __CFNumber *cf, char a4)
{
  v5 = a2;
  v6 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  if (v7 == v8)
  {
LABEL_9:
    DataFromType = ACFURTKitNVRMGenerator::createDataFromType(a1, cf);
    if (DataFromType)
    {
      v15 = DataFromType;
      *&v31 = 0;
      v16 = v5[23];
      if ((v16 & 0x80000000) != 0)
      {
        v24 = v5;
        v5 = *v5;
        v23 = *(v24 + 1);
        if (v23 >= 8)
        {
          v17 = 8;
        }

        else
        {
          v17 = v23;
        }
      }

      else if (v16 >= 8)
      {
        v17 = 8;
      }

      else
      {
        v17 = v16;
      }

      v25 = memcpy(&v31, v5, v17);
      HIDWORD(v31) = ACFURTKitNVRMGenerator::getVariableTypeFlag(v25, cf);
      DWORD2(v31) = CFDataGetLength(v15);
      v32 = v15;
      AMSupportSafeRetain();
      std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::push_back[abi:ne200100](*v6 + 24, &v31);
      goto LABEL_30;
    }

LABEL_33:
    ACFURTKitNVRMGenerator::add(DataFromType);
    v28 = 0;
    goto LABEL_32;
  }

  v10 = 0;
  v11 = a2[23];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
  }

  while (1)
  {
    v13 = v5;
    if (v11 < 0)
    {
      v13 = *v5;
    }

    a1 = strncmp((v8 + v10), v13, 8uLL);
    if (!a1)
    {
      break;
    }

    v10 += 24;
    if (!--v12)
    {
      goto LABEL_9;
    }
  }

  DataFromType = ACFURTKitNVRMGenerator::createDataFromType(a1, cf);
  if (!DataFromType)
  {
    goto LABEL_33;
  }

  v15 = DataFromType;
  if ((a4 & 1) == 0)
  {
    ACFURTKitNVRMGenerator::add(DataFromType);
    v28 = 0;
    goto LABEL_31;
  }

  v18 = *(*(*v6 + 24) + v10 + 16);
  if (v18)
  {
    CFRelease(v18);
    *(*(*v6 + 24) + v10 + 16) = 0;
  }

  *(*(*v6 + 24) + v10 + 12) = ACFURTKitNVRMGenerator::getVariableTypeFlag(v18, cf);
  Length = CFDataGetLength(v15);
  v20 = (*(*v6 + 24) + v10);
  v20[2] = Length;
  v21 = v5[23];
  if ((v21 & 0x80000000) != 0)
  {
    v27 = v5;
    v5 = *v5;
    v26 = *(v27 + 1);
    if (v26 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v26;
    }
  }

  else if (v21 >= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v21;
  }

  memcpy(v20, v5, v22);
  *(*(*v6 + 24) + v10 + 16) = v15;
  AMSupportSafeRetain();
LABEL_30:
  v28 = 1;
LABEL_31:
  CFRelease(v15);
LABEL_32:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

CFDataRef ACFURTKitNVRMGenerator::createDataFromType(ACFURTKitNVRMGenerator *this, const __CFNumber *cf)
{
  v2 = cf;
  v3 = CFGetTypeID(cf);
  if (v3 == CFDataGetTypeID())
  {
    AMSupportSafeRetain();
    return v2;
  }

  if (v3 != CFStringGetTypeID())
  {
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v2, kCFNumberSInt32Type, &valuePtr))
      {
        v6 = *MEMORY[0x277CBECE8];
        p_valuePtr = &valuePtr;
        return CFDataCreate(v6, p_valuePtr, 4);
      }
    }

    else
    {
      TypeID = CFBooleanGetTypeID();
      if (v3 == TypeID)
      {
        *bytes = CFBooleanGetValue(v2) != 0;
        v6 = *MEMORY[0x277CBECE8];
        p_valuePtr = bytes;
        return CFDataCreate(v6, p_valuePtr, 4);
      }

      LogInstance = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: data type is not recognized\n", v10, v11, v12, v13, v14, "ACFURTKitNVRMGenerator");
    }

    return 0;
  }

  v4 = *MEMORY[0x277CBECE8];

  return CFStringCreateExternalRepresentation(v4, v2, 0x600u, 0);
}

uint64_t ACFURTKitNVRMGenerator::getVariableTypeFlag(ACFURTKitNVRMGenerator *this, CFTypeRef cf)
{
  v2 = CFGetTypeID(cf);
  if (v2 == CFDataGetTypeID())
  {
    return 0x40000;
  }

  if (v2 == CFStringGetTypeID())
  {
    return 0x20000;
  }

  if (v2 == CFBooleanGetTypeID())
  {
    return 0x10000;
  }

  TypeID = CFNumberGetTypeID();
  if (v2 == TypeID)
  {
    return 0x10000;
  }

  LogInstance = ACFULogging::getLogInstance(TypeID);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to determine variable type\n", v6, v7, v8, v9, v10, "ACFURTKitNVRMGenerator");
  return 0;
}

void std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = (v5 + 24);
  }

  *(a1 + 8) = v7;
}

void ACFURTKitNVRMGenerator::remove(ACFULogging *a1, const char *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v6 = v5 - v4;
  if (v5 == v4)
  {
LABEL_10:
    LogInstance = ACFULogging::getLogInstance(a1);
    if (a2[23] < 0)
    {
      v17 = *a2;
    }

    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: key '%s' not found\n", v12, v13, v14, v15, v16, "ACFURTKitNVRMGenerator");
  }

  else
  {
    v7 = a2[23];
    if (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    }

    v9 = v6 - 24;
    while (1)
    {
      v10 = a2;
      if (v7 < 0)
      {
        v10 = *a2;
      }

      a1 = strncmp(v4, v10, 8uLL);
      if (!a1)
      {
        break;
      }

      v4 += 24;
      v9 -= 24;
      if (!--v8)
      {
        goto LABEL_10;
      }
    }

    if (v4 + 24 != v5)
    {
      a1 = memmove(v4, v4 + 24, v9);
    }

    *(v3 + 32) = &v4[v9];
    v18 = ACFULogging::getLogInstance(a1);
    if (a2[23] < 0)
    {
      v24 = *a2;
    }

    ACFULogging::handleMessage(v18, 0, "%s::%s: key '%s' removed\n", v19, v20, v21, v22, v23, "ACFURTKitNVRMGenerator");
  }
}

BOOL ACFURTKitNVRMGenerator::contains(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    v5 = (v2 - v3) >> 3;
    v6 = 0xAAAAAAAAAAAAAAABLL * v5;
    v7 = *(a2 + 23);
    if (0xAAAAAAAAAAAAAAABLL * v5 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * v5;
    }

    v9 = 1;
    v10 = 1;
    do
    {
      v11 = a2;
      if (v7 < 0)
      {
        v11 = *a2;
      }

      if (!strncmp(v3, v11, 8uLL))
      {
        break;
      }

      v10 = v6 > v9;
      v3 += 24;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return v10;
}

CFDataRef ACFURTKitNVRMGenerator::copyVariable(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = *(a2 + 23);
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  }

  while (1)
  {
    v7 = a2;
    if (v5 < 0)
    {
      v7 = *a2;
    }

    if (!strncmp(v3, v7, 8uLL))
    {
      break;
    }

    v3 += 24;
    if (!--v6)
    {
      return 0;
    }
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = *(v3 + 16);

  return CFDataCreateCopy(v9, v10);
}

void ACFURTKitNVRMGenerator::~ACFURTKitNVRMGenerator(ACFURTKitNVRMGenerator *this)
{
  v2 = *this;
  v3 = *(*this + 24);
  if (*(*this + 32) != v3)
  {
    v4 = 0;
    v5 = 16;
    do
    {
      v6 = *(v3 + v5);
      if (v6)
      {
        CFRelease(v6);
        v2 = *this;
        v3 = *(*this + 24);
        *(v3 + v5) = 0;
      }

      ++v4;
      v5 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v2[4] - v3) >> 3) > v4);
  }

  *this = 0;
  std::default_delete<ACFURTKitNVRMGenerator::RTKitNVRMObj>::operator()[abi:ne200100](this, v2);
}

void ACFURTKitNVRMGenerator::log(ACFURTKitNVRMGenerator *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*this + 24);
  if (*(*this + 32) != v2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = (v2 + v4);
      if (v6[2])
      {
        v16 = *v6;
        LogInstance = ACFULogging::getLogInstance(this);
        ACFUCommon::hexStringFromCFData(*(*(*this + 24) + v4 + 16), 0, 0, 1);
        ACFULogging::handleMessage(LogInstance, 0, "%s::%s: %s: 0x%s\n", v8, v9, v10, v11, v12, "ACFURTKitNVRMGenerator");
        if (v15 < 0)
        {
          operator delete(__p);
        }

        v1 = *this;
      }

      ++v5;
      v2 = *(v1 + 24);
      v4 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 32) - v2) >> 3) > v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2402B2160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278C9FDA0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](ACFUDataContainer::DirectDataRef **a1, ACFUDataContainer::DirectDataRef *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDataContainer::DirectDataRef::~DirectDataRef(v3);

    operator delete(v4);
  }
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(24 * a2);
}

void std::default_delete<ACFURTKitNVRMGenerator::RTKitNVRMObj>::operator()[abi:ne200100](int a1, void *__p)
{
  if (__p)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void ACFUDiagnostics::create(const __CFString *this@<X0>, const __CFString *a2@<X1>, ACFUDiagnostics **a3@<X8>)
{
  v3 = a2;
  v6 = operator new(0x28uLL);
  *v6 = 0u;
  v6[1] = 0u;
  *(v6 + 32) = 1;
  *a3 = v6;
  v7 = ACFUDiagnostics::init(v6, this, v3);
  if (!v7)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to initialize diagnostics object\n", v9, v10, v11, v12, v13, "ACFUDiagnostics");

    std::unique_ptr<ACFUDiagnostics>::reset[abi:ne200100](a3, 0);
  }
}

void ACFUDiagnostics::ACFUDiagnostics(ACFUDiagnostics *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 32) = 1;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 32) = 1;
}

BOOL ACFUDiagnostics::init(ACFUDiagnostics *this, const __CFString *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *(this + 32) = a3;
  if (!a2)
  {
    v9 = 1;
    goto LABEL_11;
  }

  if (a3)
  {
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v15 = std::chrono::system_clock::to_time_t(&__t);
    v5 = __t.__d_.__rep_ / 1000 % 1000;
    v6 = localtime(&v15);
    strftime(v17, 0x3CuLL, "%Y-%m-%d-%H-%M-%S", v6);
    v7 = *MEMORY[0x277CBECE8];
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/Diagnostics-%s-%u/", a2, v17, v5);
  }

  else
  {
    v7 = *MEMORY[0x277CBECE8];
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/", a2);
  }

  *(this + 3) = v8;
  if (!v8)
  {
    ACFUDiagnostics::init(0);
LABEL_14:
    v9 = 0;
    goto LABEL_11;
  }

  v10 = CFURLCreateWithString(v7, v8, 0);
  if (!v10)
  {
    ACFUDiagnostics::init(0);
    goto LABEL_14;
  }

  v11 = v10;
  v12 = MEMORY[0x245CBE680]();
  v9 = v12 == 0;
  if (v12)
  {
    ACFUDiagnostics::init(v12);
  }

  CFRelease(v11);
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

void std::unique_ptr<ACFUDiagnostics>::reset[abi:ne200100](ACFUDiagnostics **a1, ACFUDiagnostics *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDiagnostics::~ACFUDiagnostics(v3);

    operator delete(v4);
  }
}

void ACFUDiagnostics::perform(ACFUDiagnostics *this)
{
  v1 = *this;
  if (*this != *(this + 1))
  {
    v2 = this;
    do
    {
      v3 = *(v1 + 16);
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          goto LABEL_13;
        }

        if (v3 != 3)
        {
LABEL_11:
          LogInstance = ACFULogging::getLogInstance(this);
          v27 = *(v1 + 16);
          ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: unrecognized action %hhu\n", v8, v9, v10, v11, v12, "ACFUDiagnostics");
          goto LABEL_15;
        }

        v5 = ACFUDiagnostics::saveLogFile(v2, *v1, *(v1 + 8));
        v6 = v5;
        v4 = ACFUDiagnostics::dumpToIOBuffer(v5, *v1, *(v1 + 8));
        if (v6)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (!*(v1 + 16))
        {
          this = ACFUDiagnostics::saveLogFile(v2, *v1, *(v1 + 8));
          if (this)
          {
            goto LABEL_16;
          }

LABEL_13:
          v4 = ACFUDiagnostics::dumpToIOBuffer(this, *v1, *(v1 + 8));
          goto LABEL_14;
        }

        if (v3 != 1)
        {
          goto LABEL_11;
        }

        v4 = ACFUDiagnostics::saveLogFile(v2, *v1, *(v1 + 8));
      }

LABEL_14:
      if (v4)
      {
LABEL_16:
        ACFUCommon::stringFromCFString(*v1, &__p);
        v16 = ACFULogging::getLogInstance(v15);
        ACFULogging::handleMessage(v16, 3u, "%s::%s: item %s logged successfully\n", v22, v23, v24, v25, v26, "ACFUDiagnostics");
        goto LABEL_17;
      }

LABEL_15:
      ACFUCommon::stringFromCFString(*v1, &__p);
      v14 = ACFULogging::getLogInstance(v13);
      ACFULogging::handleMessage(v14, 2u, "%s::%s: item %s failed to log\n", v17, v18, v19, v20, v21, "ACFUDiagnostics");
LABEL_17:
      if (v29 < 0)
      {
        operator delete(__p);
      }

      v1 += 24;
    }

    while (v1 != *(v2 + 1));
  }
}

void sub_2402B27B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUDiagnostics::saveLogFile(ACFUDiagnostics *this, const __CFString *a2, const __CFString *a3)
{
  v3 = *(this + 3);
  if (!v3)
  {
    ACFUDiagnostics::saveLogFile(0);
    return 0;
  }

  if (!a2 || (v4 = a3) == 0)
  {
    ACFUDiagnostics::saveLogFile(v3);
    return 0;
  }

  URLByAppendingStrings = ACFUCommon::createURLByAppendingStrings(v3, a2, a3);
  if (!URLByAppendingStrings)
  {
    ACFUDiagnostics::saveLogFile(0);
    return 0;
  }

  v6 = URLByAppendingStrings;
  TypeID = CFDataGetTypeID();
  if (TypeID == CFGetTypeID(v4))
  {
    AMSupportSafeRetain();
    if (CFDataGetLength(v4) < 1)
    {
      ACFUDiagnostics::saveLogFile(v6);
      v16 = 0;
      goto LABEL_25;
    }

    v8 = *MEMORY[0x277CBECE8];
    goto LABEL_21;
  }

  length[0] = 0;
  length[1] = 0;
  v29 = 0;
  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@\n", v4);
  v11 = v10;
  if (!v10 || (v10 = CFStringGetLength(v10), v10 <= 0))
  {
    LogInstance = ACFULogging::getLogInstance(v10);
    v25 = "%s::%s: failed to format object into string\n";
    goto LABEL_35;
  }

  ACFUCommon::stringFromCFString(v11, &v26);
  *length = v26;
  v29 = v27;
  CFRelease(v11);
  v13 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) != 0)
  {
    v14 = length[0];
    if (length[0])
    {
      v13 = length[1];
      if (length[1])
      {
        goto LABEL_15;
      }
    }

LABEL_32:
    LogInstance = ACFULogging::getLogInstance(v12);
    v25 = "%s::%s: failed to get formatted C string\n";
    goto LABEL_35;
  }

  if (!HIBYTE(v29))
  {
    goto LABEL_32;
  }

  v14 = length;
LABEL_15:
  v4 = CFDataCreate(v9, v14, v13);
  if (v4)
  {
    v15 = 1;
    goto LABEL_17;
  }

  LogInstance = ACFULogging::getLogInstance(0);
  v25 = "%s::%s: failed to allocate data object to write\n";
LABEL_35:
  ACFULogging::handleMessage(LogInstance, 2u, v25, v20, v21, v22, v23, v24, "ACFUDiagnostics");
  v4 = 0;
  v15 = 0;
LABEL_17:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(length[0]);
    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  v16 = 1;
  v17 = AMSupportWriteDataToFileURL();
  if (!v17)
  {
    goto LABEL_24;
  }

  ACFUDiagnostics::saveLogFile(v17);
LABEL_23:
  v16 = 0;
LABEL_24:
  CFRelease(v6);
  if (v4)
  {
LABEL_25:
    CFRelease(v4);
  }

  return v16;
}

void sub_2402B29D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUDiagnostics::dumpToIOBuffer(ACFUDiagnostics *this, const __CFString *a2, const void *a3)
{
  if (!a2 || !a3)
  {
    ACFUDiagnostics::dumpToIOBuffer(this);
    return 0;
  }

  TypeID = CFDataGetTypeID();
  v6 = CFGetTypeID(a3);
  if (TypeID == v6)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    std::string::basic_string[abi:ne200100]<0>(&v31, "ACFUDiagnostics");
    v8 = std::string::append(&v31, "::");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v32, "dumpToIOBuffer");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v34 = v10->__r_.__value_.__r.__words[2];
    v33 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    BytePtr = CFDataGetBytePtr(a3);
    Length = CFDataGetLength(a3);
    ACFULogging::handleMessageBinary(LogInstance, &v33, 3, BytePtr, Length, 0);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  ACFUCommon::stringFromCFString(a2, &v33);
  v15 = SHIBYTE(v34);
  if ((SHIBYTE(v34) & 0x8000000000000000) != 0)
  {
    if (!v33)
    {
      goto LABEL_32;
    }

    v15 = *(&v33 + 1);
  }

  if (v15)
  {
    v16 = ACFULogging::getLogInstance(v14);
    std::string::basic_string[abi:ne200100]<0>(&v30, "ACFUDiagnostics");
    v17 = std::string::append(&v30, "::");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v31, "dumpToIOBuffer");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v34 >= 0)
    {
      v21 = &v33;
    }

    else
    {
      v21 = v33;
    }

    ACFULogging::handleMessageCFType(v16, &v32, 3, v21, a3);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v22 = 1;
    goto LABEL_24;
  }

LABEL_32:
  v24 = ACFULogging::getLogInstance(v14);
  ACFULogging::handleMessage(v24, 2u, "%s::%s: failed to get formatted C string\n", v25, v26, v27, v28, v29, "ACFUDiagnostics");
  v22 = 0;
LABEL_24:
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
    return (v22 & 1) != 0;
  }

  operator delete(v33);
  return (v22 & 1) != 0;
}

void sub_2402B2C58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUDiagnostics::addItem(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a3;
  v9 = a2;
  v7 = a4;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 16))
  {
    result = std::vector<ACFUDiagnostics::DiagItem>::__emplace_back_slow_path<__CFString const*&,void const*&,ACFUDiagnostics::DiagAction &>(a1, &v9, &v8, &v7);
  }

  else
  {
    std::vector<ACFUDiagnostics::DiagItem>::__construct_one_at_end[abi:ne200100]<__CFString const*&,void const*&,ACFUDiagnostics::DiagAction &>(a1, &v9, &v8, &v7);
    result = v5 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ACFUDiagnostics::copyItem(ACFUDiagnostics *this, CFStringRef theString1)
{
  v2 = *this;
  if (*this == *(this + 1))
  {
    return 0;
  }

  while (CFStringCompare(theString1, *v2, 0))
  {
    v2 += 24;
    if (v2 == *(this + 1))
    {
      return 0;
    }
  }

  v6 = *(v2 + 8);
  AMSupportSafeRetain();
  return *(v2 + 8);
}

void ACFUDiagnostics::createFileDataContainer(ACFULogging *a1@<X0>, uint64_t *a2@<X1>, ACFUDataContainer **a3@<X8>)
{
  *a3 = 0;
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_20:
    LogInstance = ACFULogging::getLogInstance(a1);
    v22 = "%s::%s: file name is empty\n";
LABEL_23:
    ACFULogging::handleMessage(LogInstance, 2u, v22, v17, v18, v19, v20, v21, "ACFUDiagnostics");
    return;
  }

  if (!a2[1])
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = *(a1 + 3);
  if (!v5)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    v22 = "%s::%s: debug log path does not exist\n";
    goto LABEL_23;
  }

  if ((v4 & 0x80000000) != 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/%s", v5, a2);
  v7 = v6;
  if (!v6)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v22 = "%s::%s: failed to allocate string\n";
    goto LABEL_23;
  }

  ACFUDataContainer::create(v6, 1, &v30);
  v8 = v30;
  *&v30 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a3, v8);
  v9 = v30;
  *&v30 = 0;
  if (v9)
  {
    ACFUDataContainer::~ACFUDataContainer(v9);
    operator delete(v10);
  }

  if (*a3)
  {
    v11 = ACFULogging::getLogInstance(v9);
    std::string::basic_string[abi:ne200100]<0>(&v28, "ACFUDiagnostics");
    v12 = std::string::append(&v28, "::");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v29, "createFileDataContainer");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v31 = v14->__r_.__value_.__r.__words[2];
    v30 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v11, &v30, 4, "data container created. File path:", v7);
  }

  else
  {
    v23 = ACFULogging::getLogInstance(v9);
    std::string::basic_string[abi:ne200100]<0>(&v28, "ACFUDiagnostics");
    v24 = std::string::append(&v28, "::");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v29, "createFileDataContainer");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v31 = v26->__r_.__value_.__r.__words[2];
    v30 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v23, &v30, 2, "failed to create data container. File path:", v7);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  CFRelease(v7);
}

void sub_2402B3028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v24 - 41) < 0)
  {
    operator delete(*(v24 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](v23, 0);
  _Unwind_Resume(a1);
}

void ACFUDiagnostics::~ACFUDiagnostics(ACFUDiagnostics *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = this;
  std::vector<ACFUDiagnostics::DiagItem>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t ACFUDiagnostics::DiagItem::DiagItem(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  AMSupportSafeRetain();
  v5 = *(a1 + 8);
  AMSupportSafeRetain();
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  AMSupportSafeRetain();
  v5 = *(a1 + 8);
  AMSupportSafeRetain();
  return a1;
}

__n128 ACFUDiagnostics::DiagItem::DiagItem(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 16) = a2[1].n128_u8[0];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 16) = a2[1].n128_u8[0];
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void ACFUDiagnostics::DiagItem::~DiagItem(ACFUDiagnostics::DiagItem *this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
    *(this + 1) = 0;
  }
}

uint64_t std::vector<ACFUDiagnostics::DiagItem>::__construct_one_at_end[abi:ne200100]<__CFString const*&,void const*&,ACFUDiagnostics::DiagAction &>(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v5 = *(a1 + 8);
  v6 = *a3;
  v7 = *a4;
  *v5 = *a2;
  *(v5 + 8) = v6;
  *(v5 + 16) = v7;
  AMSupportSafeRetain();
  v8 = *(v5 + 8);
  result = AMSupportSafeRetain();
  *(a1 + 8) = v5 + 24;
  return result;
}

uint64_t std::vector<ACFUDiagnostics::DiagItem>::__emplace_back_slow_path<__CFString const*&,void const*&,ACFUDiagnostics::DiagAction &>(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v5;
  }

  v25 = a1;
  if (v10)
  {
    v11 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(a1, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = (v11 + 24 * v4);
  v22 = v11;
  v23 = v12;
  *&v24 = v12;
  *(&v24 + 1) = v11 + 24 * v10;
  v13 = *a3;
  v14 = *a4;
  *v12 = *a2;
  *(v12 + 1) = v13;
  *(v12 + 16) = v14;
  AMSupportSafeRetain();
  v15 = *(v12 + 1);
  AMSupportSafeRetain();
  *&v24 = v24 + 24;
  v16 = *(a1 + 8);
  v17 = v23 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUDiagnostics::DiagItem>,ACFUDiagnostics::DiagItem*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = *(a1 + 16);
  v21 = v24;
  *(a1 + 8) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<ACFUDiagnostics::DiagItem>::~__split_buffer(&v22);
  return v21;
}

void sub_2402B33A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ACFUDiagnostics::DiagItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ACFUDiagnostics::DiagItem>,ACFUDiagnostics::DiagItem*>(uint64_t a1, ACFUDiagnostics::DiagItem *a2, ACFUDiagnostics::DiagItem *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 2;
      *(a4 + 16) = *(v6 + 16);
      *a4 = *v6;
      a4 += 24;
      *v6 = 0;
      *(v6 + 1) = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      ACFUDiagnostics::DiagItem::~DiagItem(v5);
      v5 = (v7 + 24);
    }
  }
}

uint64_t std::__split_buffer<ACFUDiagnostics::DiagItem>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    ACFUDiagnostics::DiagItem::~DiagItem((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](ACFUDataContainer **a1, ACFUDataContainer *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    ACFUDataContainer::~ACFUDataContainer(v3);

    operator delete(v4);
  }
}

void std::vector<ACFUDiagnostics::DiagItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        ACFUDiagnostics::DiagItem::~DiagItem((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t RestoreStep::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v5 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 8);
    *a1 = v5;
    *(a1 + 8) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(a1 + 16) = *(a2 + 8);
    *(a1 + 18) = *(a2 + 18);
  }

  return a1;
}

uint64_t ACFURestore::executeCommand(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  *(a1 + 73) = 0;
  *(a1 + 76) = 2;
  if (*(a1 + 40))
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 32);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (v10);
      }

      *(a1 + 80) = *(a1 + 24);
      *(a1 + 88) = v9;
      *(a1 + 96) = 1;
    }

    v11 = 0;
    while (1)
    {
      v12 = *(a1 + 80);
      v13 = *(v12 + 48);
      v109.__r_.__value_.__r.__words[0] = *(v12 + 40);
      v109.__r_.__value_.__l.__size_ = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      LOWORD(v109.__r_.__value_.__r.__words[2]) = *(v12 + 56);
      v109.__r_.__value_.__s.__data_[18] = *(v12 + 58);
      RestoreStep::operator=(a1 + 48, &v109);
      if (v109.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109.__r_.__value_.__l.__size_);
      }

      ACFURestore::logACFUConfig(a1);
      ACFURestore::getStepName(*(*(a1 + 80) + 32), &v109);
      LogInstance = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Currently performing: %s\n", v16, v17, v18, v19, v20, "ACFURestore");
      if (!*(a1 + 66))
      {
        break;
      }

      if (a2 == 1)
      {
        if (*(a1 + 9) == 1 && *(a1 + 10) != 1)
        {
          v44 = ACFULogging::getLogInstance(v21);
          ACFULogging::handleMessage(v44, 2u, "%s::%s: command not supported in preflight mode\n", v45, v46, v47, v48, v49, "ACFURestore");
          v11 = *(a1 + 65);
          *(a1 + 73) = v11 + 1;
        }

        else
        {
          if (a3)
          {
            v30 = *(a1 + 120);
            if (v30)
            {
              CFRelease(v30);
              *(a1 + 120) = 0;
            }

            *(a1 + 120) = a3;
            AMSupportSafeRetain();
          }

          v22 = (*(*a1 + 32))(a1);
          if (v22)
          {
            v31 = ACFULogging::getLogInstance(v22);
            ACFULogging::handleMessage(v31, 0, "%s::%s: Operation finished successfully! Moving to next step if one exists for this updater! \n", v32, v33, v34, v35, v36, "ACFURestore");
            *(a1 + 76) = 0;
            *(a1 + 73) = 0;
            ++*(a1 + 72);
            v11 = *(a1 + 65);
            goto LABEL_19;
          }

          v11 = *(a1 + 65);
        }
      }

      else if (a2)
      {
        v37 = ACFULogging::getLogInstance(v21);
        ACFULogging::handleMessage(v37, 0, "%s::%s: invalid command %d specified\n", v38, v39, v40, v41, v42, "ACFURestore");
        v43 = *(a1 + 104);
        std::string::basic_string[abi:ne200100]<0>(__p, "invalid command specified");
        v22 = ACFUError::addError(v43, __p, 0xFA5uLL, 0);
        if (v106 < 0)
        {
          operator delete(__p[0]);
        }

        *(a1 + 76) = 0;
        *(a1 + 8) = 1;
      }

      else
      {
        v22 = (*(*a1 + 24))(&v107, a1);
        if (v108 == 1)
        {
          *a4 = v107;
          *(a1 + 73) = 0;
          v11 = *(a1 + 64);
LABEL_19:
          v29 = 1;
          goto LABEL_38;
        }

        v11 = *(a1 + 64);
      }

      v50 = ACFULogging::getLogInstance(v22);
      v101 = *(a1 + 73) + 1;
      ACFULogging::handleMessage(v50, 0, "%s::%s: We ran into some issues on try %d of %d!\n", v51, v52, v53, v54, v55, "ACFURestore");
      v56 = ++*(a1 + 73);
      if (v56 > v11)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      *(a1 + 76) = v57;
      v22 = ACFURestore::collectDebugInfo(a1);
      v29 = 0;
LABEL_38:
      v59 = *(a1 + 80);
      v58 = *(a1 + 88);
      v60 = *(a1 + 76);
      if (v58 == v59 && !v60)
      {
        v10 = *(a1 + 72) == *(a1 + 66);
        *(a1 + 8) = v10;
        if (v10)
        {
          v61 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v61, 0, "%s::%s: We are finished with all the update steps! ^_^\n", v62, v63, v64, v65, v66, "ACFURestore");
          goto LABEL_62;
        }

        goto LABEL_41;
      }

      switch(v60)
      {
        case 2:
          v82 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v82, 0, "%s::%s: Current command %s!\n", v83, v84, v85, v86, v87, "ACFURestore");
          if ((v29 & 1) == 0)
          {
            ACFUError::logError(*(a1 + 104));
          }

          break;
        case 1:
          v76 = ACFULogging::getLogInstance(v22);
          ACFULogging::handleMessage(v76, 0, "%s::%s: We have exhausted all our allowed attempts! Please file a radar!\n", v77, v78, v79, v80, v81, "ACFURestore");
LABEL_56:
          *(a1 + 8) = 1;
          break;
        case 0:
          if (*(a1 + 72) == *(a1 + 66))
          {
            while (1)
            {
              v67 = v59[1];
              v68 = v59;
              if (v67)
              {
                do
                {
                  v59 = v67;
                  v67 = *v67;
                }

                while (v67);
              }

              else
              {
                do
                {
                  v59 = v68[2];
                  v10 = *v59 == v68;
                  v68 = v59;
                }

                while (!v10);
              }

              *(a1 + 80) = v59;
              v69 = *(v59 + 58);
              if (v59 == v58)
              {
                break;
              }

              if (*(v59 + 58))
              {
                goto LABEL_61;
              }
            }

            if (*(v59 + 58))
            {
LABEL_61:
              v88 = ACFULogging::getLogInstance(v22);
              ACFULogging::handleMessage(v88, 0, "%s::%s: Current step is complete. Moving onto the next restore step\n", v89, v90, v91, v92, v93, "ACFURestore");
              *(a1 + 72) = 0;
              break;
            }

            v94 = ACFULogging::getLogInstance(v22);
            ACFULogging::handleMessage(v94, 0, "%s::%s: We have completed all enabled restore steps!\n", v95, v96, v97, v98, v99, "ACFURestore");
            goto LABEL_56;
          }

LABEL_41:
          v70 = ACFULogging::getLogInstance(v22);
          v102 = *(a1 + 72);
          v103 = *(a1 + 66);
          ACFULogging::handleMessage(v70, 0, "%s::%s: [%s] Performing iteration %d of %d\n", v71, v72, v73, v74, v75, "ACFURestore");
          break;
      }

LABEL_62:
      if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v109.__r_.__value_.__l.__data_);
      }

      if (((*(a1 + 76) == 2) & ~v29) == 0)
      {
        return v29;
      }
    }

    v23 = ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage(v23, 0, "%s::%s: This step is not enabled... setting to DONE and moving along.. \n", v24, v25, v26, v27, v28, "ACFURestore");
    *(a1 + 76) = 0;
    goto LABEL_19;
  }

  ACFURestore::executeCommand(a1);
  return 0;
}

void sub_2402B3ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestore::getCurrentStepHandle@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 80);
  v3 = *(v2 + 48);
  *a2 = *(v2 + 40);
  *(a2 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 16) = *(v2 + 56);
  *(a2 + 18) = *(v2 + 58);
  return this;
}

void ACFURestore::logACFUConfig(ACFURestore *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ---- Restore State ----\n", v3, v4, v5, v6, v7, "ACFURestore");
  v9 = ACFULogging::getLogInstance(v8);
  *(this + 9);
  ACFULogging::handleMessage(v9, 0, "%s::%s: Preflight: %s\n", v10, v11, v12, v13, v14, "ACFURestore");
  v16 = ACFULogging::getLogInstance(v15);
  *(this + 10);
  ACFULogging::handleMessage(v16, 0, "%s::%s: Booted Update: %s\n", v17, v18, v19, v20, v21, "ACFURestore");
  v23 = ACFULogging::getLogInstance(v22);
  *(this + 11);
  ACFULogging::handleMessage(v23, 0, "%s::%s: Post Sealing: %s\n", v24, v25, v26, v27, v28, "ACFURestore");
  v30 = ACFULogging::getLogInstance(v29);
  *(this + 12);
  ACFULogging::handleMessage(v30, 0, "%s::%s: Internal Build: %s\n", v31, v32, v33, v34, v35, "ACFURestore");
  v37 = ACFULogging::getLogInstance(v36);
  ACFURestore::isPreflighted(this);
  ACFULogging::handleMessage(v37, 0, "%s::%s: Cached Ticket: %s\n", v38, v39, v40, v41, v42, "ACFURestore");
  v44 = ACFULogging::getLogInstance(v43);
  ACFULogging::handleMessage(v44, 0, "%s::%s: ---- Restore State ----\n", v45, v46, v47, v48, v49, "ACFURestore");
}

void ACFURestore::getStepName(int a1@<W1>, std::string *a2@<X8>)
{
  {
    std::string::basic_string[abi:ne200100]<0>(ACFURestore::getStepName(ACFURestore::UpdateSteps)::UpdateStepString, "Update");
    std::string::basic_string[abi:ne200100]<0>(qword_27E3CA870, "Certify");
    std::string::basic_string[abi:ne200100]<0>(qword_27E3CA888, "Generic");
    std::string::basic_string[abi:ne200100]<0>(qword_27E3CA8A0, "Provision");
    __cxa_atexit(__cxx_global_array_dtor, 0, &dword_2402B0000);
  }

  v4 = &ACFURestore::getStepName(ACFURestore::UpdateSteps)::UpdateStepString[3 * a1];
  if (v4[23] < 0)
  {
    v5 = *v4;
    v6 = *(v4 + 1);

    std::string::__init_copy_ctor_external(a2, v5, v6);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v4;
    a2->__r_.__value_.__r.__words[2] = *(v4 + 2);
  }
}

uint64_t ACFURestore::isPreflightPersonalization(ACFURestore *this)
{
  if (*(this + 9) == 1)
  {
    v1 = *(this + 10);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t ACFURestore::collectDebugInfo(ACFURestore *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    ACFURestore::collectDebugInfo(0);
    return 0;
  }

  v3 = *(this + 20);
  v6 = *(this + 19);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (*(*v2 + 40))(v2, &v6, 1);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v4)
  {
    return 0;
  }

  ACFUDiagnostics::perform(*(this + 23));
  return 1;
}

void sub_2402B3EC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

const char *ACFURestore::cmdAsString(uint64_t a1, int a2)
{
  v2 = "Invalid Command";
  if (a2 == 1)
  {
    v2 = "Perform Command";
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return "Query Command";
  }
}

CFComparisonResult ACFURestore::restoreCommand(CFStringRef theString2, const __CFString *a2)
{
  result = CFStringCompare(@"queryInfo", theString2, 0);
  if (result)
  {
    if (CFStringCompare(@"performNextStage", theString2, 0))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

const __CFDictionary *ACFURestore::isPreflighted(ACFURestore *this)
{
  if (!*(this + 2))
  {
    return 0;
  }

  result = CFDictionaryGetValue(*(this + 16), @"PreflightTickets");
  if (result)
  {
    v3 = result;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      return (CFDictionaryContainsKey(v3, *(this + 2)) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFDataRef ACFURestore::copyFDRTrustObjectDigest(ACFURestore *this)
{
  v51 = *MEMORY[0x277D85DE8];
  Value = *(this + 17);
  if (!Value || (Value = CFDictionaryContainsKey(Value, @"FDRBootedOSTrustObjectFile"), !Value) && (Value = CFDictionaryContainsKey(*(this + 17), @"FDRTrustObjectFile"), !Value) && (Value = CFDictionaryGetValue(*(this + 17), @"FDRUseEngineering"), Value != *MEMORY[0x277CBED28]))
  {
    LogInstance = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: FDR trust object override not required\n", v37, v38, v39, v40, v41, "ACFURestore");
    v35 = 0;
    goto LABEL_24;
  }

  v48 = 0;
  v49 = 0;
  v3 = ACFULogging::getLogInstance(Value);
  ACFULogging::handleMessage(v3, 0, "%s::%s: overriding FDR trust object hash from restore options\n", v4, v5, v6, v7, v8, "ACFURestore");
  PeronalizedContentPath = ACFUDataAccess::createPeronalizedContentPath(1);
  v10 = ACFULogging::getLogInstance(PeronalizedContentPath);
  v16 = v10;
  if (PeronalizedContentPath)
  {
    std::string::basic_string[abi:ne200100]<0>(&v44, "ACFURestore");
    v17 = std::string::append(&v44, "::");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v45, "copyFDRTrustObjectDigest");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v47 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v16, __p, 0, "AP Ticket Path: ", PeronalizedContentPath);
    if (SHIBYTE(v47) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    FileDatafromFilePath = ACFUCommon::createFileDatafromFilePath(PeronalizedContentPath, v21);
    v23 = FileDatafromFilePath;
    if (FileDatafromFilePath)
    {
      goto LABEL_15;
    }
  }

  else
  {
    ACFULogging::handleMessage(v10, 0, "%s::%s: failed to get AP ticket path\n", v11, v12, v13, v14, v15, "ACFURestore");
  }

  v24 = ACFULogging::getLogInstance(FileDatafromFilePath);
  ACFULogging::handleMessage(v24, 0, "%s::%s: looking for AP ticket in updater options dictionary\n", v25, v26, v27, v28, v29, "ACFURestore");
  v23 = CFDictionaryGetValue(*(this + 16), @"APTicket");
  v30 = AMSupportSafeRetain();
  if (!v23)
  {
    ACFURestore::copyFDRTrustObjectDigest(v30);
    v23 = 0;
    goto LABEL_29;
  }

LABEL_15:
  BytePtr = CFDataGetBytePtr(v23);
  Length = CFDataGetLength(v23);
  inited = Img4DecodeInitManifest(BytePtr, Length, v50);
  if (inited)
  {
    ACFURestore::copyFDRTrustObjectDigest(inited);
  }

  else
  {
    Img4DecodeGetObjectPropertyData(v50, 1718903152, 1145525076, &v49, &v48);
    if (v34)
    {
      ACFURestore::copyFDRTrustObjectDigest(v34);
    }

    else
    {
      v35 = CFDataCreate(*MEMORY[0x277CBECE8], v49, v48);
      if (v35)
      {
        if (!PeronalizedContentPath)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      ACFURestore::copyFDRTrustObjectDigest(0);
    }
  }

LABEL_29:
  v35 = 0;
  if (PeronalizedContentPath)
  {
LABEL_19:
    CFRelease(PeronalizedContentPath);
  }

LABEL_20:
  if (v23)
  {
    CFRelease(v23);
  }

LABEL_24:
  v42 = *MEMORY[0x277D85DE8];
  return v35;
}

void sub_2402B42E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestore::getErrorHandle@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 112);
  *a2 = *(this + 104);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void ACFURestore::~ACFURestore(ACFURestore *this)
{
  *this = &unk_28522E980;
  v2 = *(this + 15);
  if (v2)
  {
    CFRelease(v2);
    *(this + 15) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
    *(this + 16) = 0;
  }

  v4 = *(this + 17);
  if (v4)
  {
    CFRelease(v4);
    *(this + 17) = 0;
  }

  v5 = *(this + 44);
  if (v5)
  {
    CFRelease(v5);
    *(this + 44) = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {
    CFRelease(v6);
    *(this + 2) = 0;
  }

  std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](this + 312);
  std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](this + 280);
  v7 = *(this + 24);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 22);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 20);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(this + 24, *(this + 4));
}

void ACFURestore::ACFURestore(ACFURestore *this)
{
  *this = &unk_28522E980;
  *(this + 4) = 0;
  *(this + 3) = this + 32;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 63) = 0;
  *(this + 36) = 0;
  *(this + 19) = 2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 1;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 264) = 0;
  *(this + 34) = 0;
  *(this + 35) = &unk_28522E9D0;
  *(this + 38) = this + 280;
  *(this + 39) = &unk_28522EA60;
  *(this + 42) = this + 312;
  *(this + 86) = 0;
  *(this + 44) = 0;
}

uint64_t ACFURestore::init(ACFURestore *this, const __CFDictionary *a2, const void *a3)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: ACFU Version: %s\n", v7, v8, v9, v10, v11, "ACFURestore");
  v44 = @"ACFURestore";
  std::allocate_shared[abi:ne200100]<ACFUError,std::allocator<ACFUError>,__CFString const*,0>(&v44, v45);
  v12 = *v45;
  v45[0] = 0;
  v45[1] = 0;
  v13 = *(this + 14);
  *(this + 104) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (v45[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45[1]);
    }
  }

  *(this + 15) = a2;
  AMSupportSafeRetain();
  *(this + 16) = CFDictionaryGetValue(a2, @"Options");
  AMSupportSafeRetain();
  *(this + 17) = CFDictionaryGetValue(a2, @"RestoreOptions");
  AMSupportSafeRetain();
  *(this + 8) = 0;
  if (CFDictionaryContainsKey(*(this + 16), @"RestoreSystemPartition"))
  {
    Value = CFDictionaryGetValue(*(this + 16), @"RestoreSystemPartition");
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(Value))
    {
      return 4002;
    }

    *(this + 44) = Value;
    AMSupportSafeRetain();
  }

  else
  {
    *(this + 44) = &stru_28522FD70;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"PreflightContext"))
  {
    v16 = CFDictionaryGetValue(*(this + 16), @"PreflightContext");
    v19 = v16 && (v17 = v16, v18 = CFGetTypeID(v16), v18 == CFStringGetTypeID()) && CFStringCompare(v17, @"BootedOS", 0) == kCFCompareEqualTo;
    *(this + 9) = v19;
  }

  else
  {
    *(this + 9) = 0;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"BootedUpdate"))
  {
    v20 = CFDictionaryGetValue(*(this + 16), @"BootedUpdate");
    v23 = v20 && (v21 = v20, v22 = CFGetTypeID(v20), v22 == CFBooleanGetTypeID()) && CFBooleanGetValue(v21) == 1;
    *(this + 10) = v23;
  }

  else
  {
    *(this + 10) = 0;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"PostFDRSealing"))
  {
    v24 = CFDictionaryGetValue(*(this + 16), @"PostFDRSealing");
    v27 = v24 && (v25 = v24, v26 = CFGetTypeID(v24), v26 == CFBooleanGetTypeID()) && CFBooleanGetValue(v25) == 1;
    *(this + 11) = v27;
  }

  else
  {
    *(this + 11) = 0;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"RestoreInternal"))
  {
    v28 = CFDictionaryGetValue(*(this + 16), @"RestoreInternal");
    v31 = v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFBooleanGetTypeID()) && CFBooleanGetValue(v29) == 1;
    *(this + 12) = v31;
  }

  else
  {
    *(this + 12) = 0;
  }

  *(this + 18) = CFDictionaryGetValue(*(this + 16), @"ACFUCertUrl");
  if (CFDictionaryContainsKey(*(this + 16), @"ACFUCertUrl"))
  {
    v32 = CFDictionaryGetValue(*(this + 16), @"ACFUCertUrl");
    if (v32)
    {
      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 == CFStringGetTypeID())
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    *(this + 18) = v35;
  }

  if (CFDictionaryContainsKey(*(this + 16), @"DebugLogPath"))
  {
    v36 = CFDictionaryGetValue(*(this + 16), @"DebugLogPath");
    v37 = CFGetTypeID(v36);
    v38 = CFStringGetTypeID();
    if (v37 != v38)
    {
      ACFURestore::init(v38);
      return 4002;
    }
  }

  else
  {
    v36 = 0;
  }

  ACFUDiagnostics::create(v36, 1, v45);
  std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(this + 23, v45);
  v40 = v45[0];
  v45[0] = 0;
  if (v40)
  {
    ACFUDiagnostics::~ACFUDiagnostics(v40);
    operator delete(v41);
  }

  if (!*(this + 23))
  {
    ACFURestore::init(v40);
    return 4008;
  }

  if (!a3)
  {
    ACFURestore::init(v40);
    return 1;
  }

  v42 = CFStringGetTypeID();
  v43 = CFGetTypeID(a3);
  if (v42 != v43)
  {
    ACFURestore::init(v43);
    return 1;
  }

  *(this + 2) = a3;
  AMSupportSafeRetain();
  return 0;
}

void sub_2402B4930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ACFUDiagnostics *a13)
{
  if (a13)
  {
    ACFUDiagnostics::~ACFUDiagnostics(a13);
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<ACFUDiagnostics>::operator=[abi:ne200100]<ACFUDiagnostics,std::default_delete<ACFUDiagnostics>,0>(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_28522EB30;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
  }

  else
  {
    v5 = 0;
  }

  *a2 = 0;
  v6 = a1[1];
  *a1 = v4;
  a1[1] = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void ACFURestore::queryCmd(ACFURestore *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 9) != 1)
  {
    v13 = *(this + 6);
    if (!v13)
    {
      LogInstance = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: FATAL: no operation for queryCmd\n", v30, v31, v32, v33, v34, "ACFURestore");
      v35 = *(this + 13);
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL: no operation for queryCmd");
      ACFUError::addError(v35, __p, 0x3EDuLL, 0);
      if (v59 < 0)
      {
        v12 = __p[0];
        goto LABEL_39;
      }

LABEL_34:
      v4 = 0;
      goto LABEL_35;
    }

    v14 = ACFURestore::isPreflighted(this);
    v15 = (**v13)(&v55, v13, 0, v14 ^ 1);
    v17 = v55;
    v16 = v56;
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = v56;
      v18 = v57;
      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      if (!v18)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_12:
        v19 = (**v17)(v17);
        v4 = v19;
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v4)
        {
          v20 = 1;
          if (!v16)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        v44 = ACFULogging::getLogInstance(v19);
        ACFULogging::handleMessage(v44, 2u, "%s::%s: failed to create dictionary\n", v45, v46, v47, v48, v49, "ACFURestore");
        v50 = *(this + 13);
        std::string::basic_string[abi:ne200100]<0>(v51, "failed to create dictionary");
        ACFUError::addError(v50, v51, 0xFA0uLL, 0);
        if ((v52 & 0x80000000) == 0)
        {
LABEL_45:
          v20 = 0;
          v4 = 0;
          if (!v16)
          {
LABEL_17:
            if ((v20 & 1) == 0)
            {
              if (!v4)
              {
LABEL_35:
                v28 = 0;
                goto LABEL_36;
              }

              CFRelease(v4);
              goto LABEL_34;
            }

            goto LABEL_18;
          }

LABEL_16:
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          goto LABEL_17;
        }

        v43 = v51;
LABEL_44:
        operator delete(*v43);
        goto LABEL_45;
      }
    }

    else
    {
      v18 = v57;
      if (!v57)
      {
        goto LABEL_12;
      }
    }

    v36 = ACFULogging::getLogInstance(v15);
    ACFULogging::handleMessage(v36, 2u, "%s::%s: failed to perform query step (ret: %d)\n", v37, v38, v39, v40, v41, "ACFURestore");
    v42 = *(this + 13);
    std::string::basic_string[abi:ne200100]<0>(v53, "failed to perform query step");
    ACFUError::addError(v42, v53, v18, 0);
    if ((v54 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    v43 = v53;
    goto LABEL_44;
  }

  v4 = (*(*this + 16))(this);
  if (!v4)
  {
    v5 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v5, 2u, "%s::%s: Failed to collect preflight info\n", v6, v7, v8, v9, v10, "ACFURestore");
    v11 = *(this + 13);
    std::string::basic_string[abi:ne200100]<0>(v60, "Failed to collect preflight info");
    ACFUError::addError(v11, v60, 0x3F4uLL, 0);
    if (v61 < 0)
    {
      v12 = v60[0];
LABEL_39:
      operator delete(v12);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

LABEL_18:
  v21 = ACFURestore::copyFDRTrustObjectDigest(this);
  if (v21)
  {
    CFDictionarySetValue(v4, @"ACFU,FDRTrustObjectHash", v21);
  }

  v22 = *(this + 17);
  if (v22)
  {
    v23 = CFGetTypeID(v22);
    if (v23 == CFDictionaryGetTypeID())
    {
      if ((Value = CFDictionaryGetValue(*(this + 17), @"FDRAllowUnsealedData"), v25 = CFDictionaryGetValue(*(this + 17), @"FDRSkipSealing"), Value) && (v26 = CFGetTypeID(Value), v26 == CFBooleanGetTypeID()) && CFBooleanGetValue(Value) || v25 && (v27 = CFGetTypeID(v25), v27 == CFBooleanGetTypeID()) && CFBooleanGetValue(v25))
      {
        CFDictionarySetValue(v4, @"ACFU,FDRAllowUnsealed", *MEMORY[0x277CBED28]);
      }
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v28 = 1;
LABEL_36:
  *a2 = v4;
  *(a2 + 8) = v28;
}

void sub_2402B4DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFURestore::performCmd(ACFURestore *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: FATAL: no operation for performCmd\n", v33, v34, v35, v36, v37, "ACFURestore");
    v38 = *(this + 13);
    std::string::basic_string[abi:ne200100]<0>(v70, "FATAL: no operation for performCmd");
    ACFUError::addError(v38, v70, 0x3EDuLL, 0);
    if (v71 < 0)
    {
      v18 = v70[0];
      goto LABEL_18;
    }

    return 0;
  }

  v3 = *(*(this + 10) + 32);
  if (v3 == 2)
  {
    v19 = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(v19, 0, "%s::%s: running generic updater step\n", v20, v21, v22, v23, v24, "ACFURestore");
    return 1;
  }

  if (v3 == 1)
  {
    *(this + 25) = *(this + 44);
    v6 = *(this + 18);
    *(this + 26) = v6;
    if (!*(this + 28))
    {
      v39 = ACFULogging::getLogInstance(v2);
      ACFULogging::handleMessage(v39, 2u, "%s::%s: Incomplete parameter set for certification (ret: %d)\n", v40, v41, v42, v43, v44, "ACFURestore");
      v45 = *(this + 13);
      std::string::basic_string[abi:ne200100]<0>(v65, "Incomplete parameter set for certification");
      ACFUError::addError(v45, v65, 0x3EDuLL, 0);
      if ((v66 & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = v65[0];
      goto LABEL_18;
    }

    if (!v6)
    {
      v53 = ACFULogging::getLogInstance(v2);
      ACFULogging::handleMessage(v53, 2u, "%s::%s: No certification URL found for certification step (ret: %d)\n", v54, v55, v56, v57, v58, "ACFURestore");
      v59 = *(this + 13);
      std::string::basic_string[abi:ne200100]<0>(v63, "No certification URL found for certification step");
      ACFUError::addError(v59, v63, 0x3F1uLL, 0);
      if ((v64 & 0x80000000) == 0)
      {
        return 0;
      }

      v18 = v63[0];
      goto LABEL_18;
    }

    v7 = *(this + 17);
    v8 = *(this + 15);
    v9 = (*(*v2 + 32))(v2);
    if (!v9)
    {
      return 1;
    }

    v10 = v9;
    v11 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v11, 2u, "%s::%s: Failed to perform certification step (ret: %d)\n", v12, v13, v14, v15, v16, "ACFURestore");
    v17 = *(this + 13);
    std::string::basic_string[abi:ne200100]<0>(v61, "Failed to perform certification step");
    ACFUError::addError(v17, v61, v10, 0);
    if (v62 < 0)
    {
      v18 = v61[0];
LABEL_18:
      operator delete(v18);
      return 0;
    }

    return 0;
  }

  if (v3)
  {
    v25 = ACFULogging::getLogInstance(v2);
    v60 = *(*(this + 10) + 32);
    ACFULogging::handleMessage(v25, 0, "%s::%s: running custom updater step with id: %d\n", v26, v27, v28, v29, v30, "ACFURestore");
    return 1;
  }

  memset(v69, 0, 24);
  v4 = (*(*v2 + 8))(v2, *(this + 15), this + 280);
  v5 = v4;
  if (v4)
  {
    v46 = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(v46, 2u, "%s::%s: failed to perform update firmware (ret: %d)\n", v47, v48, v49, v50, v51, "ACFURestore");
    v52 = *(this + 13);
    std::string::basic_string[abi:ne200100]<0>(__p, "failed to perform update firmware");
    ACFUError::addError(v52, __p, v5, 0);
    if (v68 < 0)
    {
      operator delete(__p[0]);
    }

    v72 = v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
    return 0;
  }

  v72 = v69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
  return 1;
}

void sub_2402B51B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::__function::__value_func<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

void *_ZNKSt3__110__function6__funcIN7ACFUROM29UpdateFirmwareActionCallbacks7preBootMUlNS_10shared_ptrI13ACFUTransportEENS4_I12ACFUFirmwareEEE_ENS_9allocatorIS9_EEF13ACFUErrorCodeS6_S8_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522E9D0;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIN7ACFUROM29UpdateFirmwareActionCallbacks7preBootMUlNS_10shared_ptrI13ACFUTransportEENS4_I12ACFUFirmwareEEE_ENS_9allocatorIS9_EEF13ACFUErrorCodeS6_S8_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN7ACFUROM29UpdateFirmwareActionCallbacks7preBootMUlNSt3__110shared_ptrI13ACFUTransportEENS2_I12ACFUFirmwareEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__128__invoke_void_return_wrapperI13ACFUErrorCodeLb0EE6__callB8ne200100IJRN7ACFUROM29UpdateFirmwareActionCallbacks7preBootMUlNS_10shared_ptrI13ACFUTransportEENS6_I12ACFUFirmwareEEE_ES8_SA_EEES1_DpOT_(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return 0;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *_ZNKSt3__110__function6__funcIN7ACFUROM29UpdateFirmwareActionCallbacks7preSaveMUlNS_10shared_ptrI13ACFUTransportEENS4_I12ACFUFirmwareEEE_ENS_9allocatorIS9_EEF13ACFUErrorCodeS6_S8_EE7__cloneEv()
{
  result = operator new(0x10uLL);
  *result = &unk_28522EA60;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIN7ACFUROM29UpdateFirmwareActionCallbacks7preSaveMUlNS_10shared_ptrI13ACFUTransportEENS4_I12ACFUFirmwareEEE_ENS_9allocatorIS9_EEF13ACFUErrorCodeS6_S8_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIN7ACFUROM29UpdateFirmwareActionCallbacks7preSaveMUlNSt3__110shared_ptrI13ACFUTransportEENS2_I12ACFUFirmwareEEE_E))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void *std::allocate_shared[abi:ne200100]<ACFUError,std::allocator<ACFUError>,__CFString const*,0>@<X0>(const __CFString **a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  result = std::__shared_ptr_emplace<ACFUError>::__shared_ptr_emplace[abi:ne200100]<__CFString const*,std::allocator<ACFUError>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<ACFUError>::__shared_ptr_emplace[abi:ne200100]<__CFString const*,std::allocator<ACFUError>,0>(void *a1, const __CFString **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28522EAE0;
  ACFUError::ACFUError((a1 + 3), *a2);
  return a1;
}

void std::__shared_ptr_emplace<ACFUError>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28522EAE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ACFUDiagnostics  *>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    ACFUDiagnostics::~ACFUDiagnostics(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ACFUDiagnostics  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void __cxx_global_array_dtor()
{
  v0 = &byte_27E3CA8B7;
  v1 = -96;
  v2 = &byte_27E3CA8B7;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void ACFUROM::handleFDR(uint64_t a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v114 = 0;
  v115 = 0;
  v116 = 0;
  if (a2[1] == *a2)
  {
    LogInstance = ACFULogging::getLogInstance(a1);
    v102 = 0;
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: missing data classes in request\n", v81, v82, v83, v84, v85, "ACFUROM");
    v10 = 5001;
    goto LABEL_66;
  }

  v8 = (***(a1 + 8))(&v111);
  v9 = v111;
  v102 = v112;
  if (v112)
  {
    atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v112;
    v10 = v113;
    if (v112)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v112);
    }

    if (!v10)
    {
      atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_8;
    }

LABEL_81:
    v86 = ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage(v86, 2u, "%s::%s: failed to get board params (%d)\n", v87, v88, v89, v90, v91, "ACFUROM");
    goto LABEL_66;
  }

  v10 = v113;
  if (v113)
  {
    goto LABEL_81;
  }

LABEL_8:
  v11 = ACFUCommon::Parameter::dataLength((v9 + 1));
  v12 = v102;
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
    if (v11 == 2)
    {
      atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_12;
    }

LABEL_82:
    v92 = ACFULogging::getLogInstance(v12);
    v98 = "%s::%s: unexpected size for ChipID\n";
LABEL_84:
    ACFULogging::handleMessage(v92, 2u, v98, v93, v94, v95, v96, v97, "ACFUROM");
    v10 = 3011;
    goto LABEL_66;
  }

  if (v11 != 2)
  {
    goto LABEL_82;
  }

LABEL_12:
  v13 = ACFUCommon::Parameter::dataLength((v9 + 5));
  v14 = v102;
  if (!v102)
  {
    if (v13 == 8)
    {
      goto LABEL_16;
    }

    goto LABEL_83;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  if (v13 != 8)
  {
LABEL_83:
    v92 = ACFULogging::getLogInstance(v14);
    v98 = "%s::%s: unexpected size for ECID\n";
    goto LABEL_84;
  }

  atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_16:
  v105 = *ACFUCommon::Parameter::dataBytePtr((v9 + 1));
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
    atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *ACFUCommon::Parameter::dataBytePtr((v9 + 5));
  v16 = v102;
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }

  v17 = *a2;
  v18 = a2[1];
  if (*a2 == v18)
  {
LABEL_65:
    v10 = 0;
    goto LABEL_66;
  }

  alloc = *MEMORY[0x277CBECE8];
  while (1)
  {
    if ((*(v17 + 47) & 0x8000000000000000) != 0)
    {
      if (v17[4])
      {
LABEL_24:
        v19 = ACFULogging::getLogInstance(v16);
        if (*(v17 + 23) < 0)
        {
          v25 = *v17;
        }

        v26 = v17 + 3;
        if (*(v17 + 47) < 0)
        {
          v26 = *v26;
        }

        v100 = v26;
        ACFULogging::handleMessage(v19, 0, "%s::%s: Looking for '%s' with parent '%s'\n", v20, v21, v22, v23, v24, "ACFUROM");
        goto LABEL_33;
      }
    }

    else if (*(v17 + 47))
    {
      goto LABEL_24;
    }

    v27 = ACFULogging::getLogInstance(v16);
    if (*(v17 + 23) < 0)
    {
      v33 = *v17;
    }

    ACFULogging::handleMessage(v27, 0, "%s::%s: Looking for '%s'\n", v28, v29, v30, v31, v32, "ACFUROM");
LABEL_33:
    ACFUFDR::getDataLocalCopy(a3, v17, &v111);
    v35 = v111;
    if (v112)
    {
      break;
    }

    if (v111)
    {
      v36 = *(v17 + 47);
      if (v36 < 0)
      {
        v36 = v17[4];
      }

      v37 = 24;
      if ((*(a3 + 16) & 1) == 0)
      {
        v37 = 0;
      }

      if (v36)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v39 = ACFULogging::getLogInstance(v34);
      v45 = v17 + v38;
      v46 = v17 + v38;
      if (*(v17 + v38 + 23) < 0)
      {
        v46 = *v45;
      }

      v99 = v46;
      ACFULogging::handleMessage(v39, 0, "%s::%s: Handling %s\n", v40, v41, v42, v43, v44, "ACFUROM");
      v47 = v17 + v38;
      if (*(v45 + 23) < 0)
      {
        v47 = *v45;
      }

      v48 = "raw";
      if (*(a3 + 16))
      {
        v48 = "combined";
      }

      v49 = CFStringCreateWithFormat(alloc, 0, @"%s-%s.bin", v47, v48, v99, v100);
      if (v49)
      {
        ACFUDiagnostics::addItem(*(a1 + 40), v49, v35, 1);
        CFRelease(v49);
      }

      else
      {
        v57 = ACFULogging::getLogInstance(0);
        ACFULogging::handleMessage(v57, 0, "%s::%s: could not add cal file into diagnostics\n", v58, v59, v60, v61, v62, "ACFUROM");
      }

      v63 = *(a1 + 16);
      v109 = *(a1 + 8);
      v110 = v63;
      if (v63)
      {
        atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v64 = *(a1 + 32);
      v107 = *(a1 + 24);
      v108 = v64;
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = std::function<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::operator()(a4, &v109, &v107, v45, v35);
      if (v108)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      }

      v65 = v110;
      if (v110)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v110);
      }

      if (v10)
      {
        v72 = ACFULogging::getLogInstance(v65);
        ACFULogging::handleMessage(v72, 2u, "%s::%s: failed to handle FDR file\n", v73, v74, v75, v76, v77, "ACFUROM");
        CFRelease(v35);
        goto LABEL_66;
      }

      std::vector<std::string>::push_back[abi:ne200100](&v114, v17);
      CFRelease(v35);
    }

    else
    {
      v50 = ACFULogging::getLogInstance(v34);
      if (*(v17 + 23) < 0)
      {
        v56 = *v17;
      }

      ACFULogging::handleMessage(v50, 0, "%s::%s: %s doesn't exist. Skipping...\n", v51, v52, v53, v54, v55, "ACFUROM");
    }

    v17 += 6;
    if (v17 == v18)
    {
      goto LABEL_65;
    }
  }

  v66 = ACFULogging::getLogInstance(v34);
  if (*(v17 + 47) < 0)
  {
    if (v17[4])
    {
      v78 = v17[3];
      goto LABEL_77;
    }
  }

  else if (*(v17 + 47))
  {
    goto LABEL_77;
  }

  if (*(v17 + 23) < 0)
  {
    v79 = *v17;
  }

LABEL_77:
  ACFULogging::handleMessage(v66, 2u, "%s::%s: failed to validate %s\n", v67, v68, v69, v70, v71, "ACFUROM");
  if (v35)
  {
    CFRelease(v35);
  }

  v10 = 5002;
LABEL_66:
  memset(&v106, 0, sizeof(v106));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v106, v114, v115, 0xAAAAAAAAAAAAAAABLL * ((v115 - v114) >> 3));
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a5, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v106.__r_.__value_.__l.__size_ - v106.__r_.__value_.__r.__words[0]) >> 3));
  *(a5 + 24) = v10;
  v111 = &v106;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v111);
  if (v102)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v102);
  }

  v111 = &v114;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v111);
}

void sub_2402B5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  a26 = (v26 - 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t std::function<ACFUErrorCode ()(std::shared_ptr<ACFUTransport>,std::shared_ptr<ACFUFirmware>,std::string const&,__CFData const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5, a2, a3, a4, &v7);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

ACFULogging *ACFUROM::bootFirmware(ACFUFirmware **this)
{
  hasValidFirmware = ACFUFirmware::hasValidFirmware(this[3]);
  if (hasValidFirmware)
  {
    v3 = this[1];
    v4 = this[4];
    v7 = this[3];
    v8 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 16))(v3, &v7);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v5)
    {
      ACFUROM::bootFirmware(v5);
    }
  }

  else
  {
    ACFUROM::bootFirmware(hasValidFirmware);
    return 1000;
  }

  return v5;
}

void sub_2402B607C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ACFUROM::~ACFUROM(ACFUROM *this)
{
  *this = &unk_28522EB90;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void ACFUROM::ACFUROM(ACFUROM *this)
{
  *this = &unk_28522EB90;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18.__end_cap_.__value_ = a1;
  if (v6)
  {
    v7 = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  begin = v7 + v2;
  v18.__first_ = v7;
  v18.__begin_ = begin;
  value = &v7[v6];
  v18.__end_ = begin;
  v18.__end_cap_.__value_ = value;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v18.__begin_;
    end = v18.__end_;
    value = v18.__end_cap_.__value_;
  }

  else
  {
    v10 = *a2;
    begin->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v10;
    end = v7 + v2;
  }

  v12 = end + 1;
  v13 = *(a1 + 8) - *a1;
  v14 = begin - v13;
  memcpy(begin - v13, *a1, v13);
  v15 = *a1;
  *a1 = v14;
  *(a1 + 8) = v12;
  v16 = *(a1 + 16);
  *(a1 + 16) = value;
  v18.__end_ = v15;
  v18.__end_cap_.__value_ = v16;
  v18.__first_ = v15;
  v18.__begin_ = v15;
  std::__split_buffer<std::string>::~__split_buffer(&v18);
  return v12;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_2402B641C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

char *std::vector<std::string>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<ACFURTKitNVRMGenerator::RTKitNVRMVariable>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[24 * v4];
  return result;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void ACFUFDR::getDataLocalCopy(uint64_t a1@<X0>, const char *a2@<X1>, ACFULogging **a3@<X8>)
{
  ACFUError::ACFUError(v117, @"ACFUFDR");
  v116 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v110);
  *(&v111 + *(v111 - 24) + 8) |= 0x4000u;
  LOBYTE(__p[0]) = 48;
  v5 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v111, __p);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 24) = 8;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFFB5 | 8;
  v7 = MEMORY[0x245CBEC10]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "-", 1);
  v107.__r_.__value_.__s.__data_[0] = 48;
  v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, &v107);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 24) = 16;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x245CBEC20]();
  v11 = *MEMORY[0x277CBECE8];
  if (a2[23] >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v12, 0x8000100u);
  v14 = *(a2 + 47);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 4);
  }

  if (v14)
  {
    if (v15 >= 0)
    {
      v16 = a2 + 24;
    }

    else
    {
      v16 = *(a2 + 3);
    }

    v17 = CFStringCreateWithCString(v11, v16, 0x8000100u);
  }

  else
  {
    v17 = 0;
  }

  std::stringbuf::str();
  if (v109 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  v19 = CFStringCreateWithCString(v11, v18, 0x8000100u);
  v20 = v19;
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v13 || !v20)
  {
    goto LABEL_84;
  }

  if (!v17)
  {
    v21 = *(a2 + 47);
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a2 + 4);
    }

    if (v21)
    {
LABEL_84:
      LogInstance = ACFULogging::getLogInstance(v19);
      v82 = "%s::%s: failed to allocate dataIntance, dataClass, or parentDataClass\n";
LABEL_86:
      ACFULogging::handleMessage(LogInstance, 2u, v82, v77, v78, v79, v80, v81, "ACFUFDR");
      v52 = 0;
      v34 = 0;
      v23 = 0;
      v51 = -1;
      goto LABEL_61;
    }
  }

  Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = Mutable;
  if (!Mutable)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v82 = "%s::%s: failed to allocate options dictionary\n";
    goto LABEL_86;
  }

  v24 = MEMORY[0x277CBED28];
  if (*a1 == 1)
  {
    CFDictionaryAddValue(Mutable, @"CopyAllowRawData", *MEMORY[0x277CBED28]);
  }

  v25 = *(a1 + 8);
  if (v25)
  {
    CFDictionaryAddValue(v23, @"APTicket", v25);
  }

  v26 = *v24;
  if (*(a1 + 16) == 1)
  {
    CFDictionaryAddValue(v23, @"GetCombined", v26);
  }

  CFDictionaryAddValue(v23, @"CopyAllowUnsealed", v26);
  v28 = ACFULogging::getLogInstance(v27);
  std::string::basic_string[abi:ne200100]<0>(&v106, "ACFUFDR");
  v29 = std::string::append(&v106, "::");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v107, "getDataLocalCopy");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v109 = v31->__r_.__value_.__r.__words[2];
  *__p = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v28, __p, 3, "FDR Validation Options", v23);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (v17 && (*(a1 + 16) & 1) == 0)
  {
    v33 = AMFDRSealingMapCopyLocalDict();
  }

  else
  {
    v33 = AMFDRSealingMapCopyLocalData();
  }

  v34 = v33;
  v35 = v116;
  if (*(a1 + 1) != 1 || !v33 || !v116)
  {
LABEL_51:
    if (v34)
    {
      goto LABEL_52;
    }

    goto LABEL_77;
  }

  v36 = ACFULogging::getLogInstance(v33);
  AMFDRGetTrustError();
  ACFULogging::handleMessage(v36, 3u, "%s::%s: skipping trust error since FDR validation is disabled (Trust Error: 0x%016llx)\n", v37, v38, v39, v40, v41, "ACFUFDR");
  v43 = ACFULogging::getLogInstance(v42);
  std::string::basic_string[abi:ne200100]<0>(&v106, "ACFUFDR");
  v44 = std::string::append(&v106, "::");
  v45 = *&v44->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  v46 = std::string::append(&v107, "getDataLocalCopy");
  v47 = *&v46->__r_.__value_.__l.__data_;
  v109 = v46->__r_.__value_.__r.__words[2];
  *__p = v47;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v43, __p, 3, "fdr error: ", v116);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v33 = v116;
  if (v116)
  {
    CFRelease(v116);
    v35 = 0;
    v116 = 0;
    goto LABEL_51;
  }

  v35 = 0;
  if (v34)
  {
LABEL_52:
    if (!v35)
    {
      if (v17 && (*(a1 + 16) & 1) == 0)
      {
        v53 = CFGetTypeID(v34);
        TypeID = CFDictionaryGetTypeID();
        if (v53 == TypeID)
        {
          Value = CFDictionaryGetValue(v34, v13);
          v52 = Value;
          if (Value)
          {
            CFRetain(Value);
            v56 = CFGetTypeID(v52);
            v50 = CFDataGetTypeID();
            if (v56 == v50)
            {
LABEL_60:
              v51 = 0;
              goto LABEL_61;
            }

            v99 = ACFULogging::getLogInstance(v50);
            ACFULogging::handleMessage(v99, 2u, "%s::%s: Wrong type, expected data\n", v100, v101, v102, v103, v104, "ACFUFDR");
            CFRelease(v52);
          }

          else
          {
            v90 = ACFULogging::getLogInstance(0);
            if (a2[23] < 0)
            {
              v96 = *a2;
            }

            v97 = a2[47];
            v98 = *(a2 + 3);
            ACFULogging::handleMessage(v90, 2u, "%s::%s: data class %s not present in parent data class %s\n", v91, v92, v93, v94, v95, "ACFUFDR");
          }

LABEL_94:
          v52 = 0;
          goto LABEL_60;
        }

        v83 = ACFULogging::getLogInstance(TypeID);
        v89 = "%s::%s: Wrong type, expected dict\n";
      }

      else
      {
        v48 = CFGetTypeID(v34);
        v49 = CFDataGetTypeID();
        if (v48 == v49)
        {
          v50 = CFRetain(v34);
          v51 = 0;
          v52 = v34;
          goto LABEL_61;
        }

        v83 = ACFULogging::getLogInstance(v49);
        v89 = "%s::%s: Wrong type, expected data\n";
      }

      ACFULogging::handleMessage(v83, 2u, v89, v84, v85, v86, v87, v88, "ACFUFDR");
      goto LABEL_94;
    }
  }

LABEL_77:
  v64 = ACFULogging::getLogInstance(v33);
  ACFULogging::handleMessage(v64, 2u, "%s::%s: failed to get data from local FDR data store\n", v65, v66, v67, v68, v69, "ACFUFDR");
  v71 = ACFULogging::getLogInstance(v70);
  std::string::basic_string[abi:ne200100]<0>(&v106, "ACFUFDR");
  v72 = std::string::append(&v106, "::");
  v73 = *&v72->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  v74 = std::string::append(&v107, "getDataLocalCopy");
  v75 = *&v74->__r_.__value_.__l.__data_;
  v109 = v74->__r_.__value_.__r.__words[2];
  *__p = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v71, __p, 2, "fdr error: ", v116);
  if (SHIBYTE(v109) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v50 = AMFDRGetTrustError();
  v51 = v50;
  v52 = 0;
LABEL_61:
  v57 = ACFULogging::getLogInstance(v50);
  ACFULogging::handleMessage(v57, 3u, "%s::%s: FDR Trust Result: 0x%016llx\n", v58, v59, v60, v61, v62, "ACFUFDR");
  if (v13)
  {
    CFRelease(v13);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v116)
  {
    CFRelease(v116);
    v116 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  *a3 = v52;
  a3[1] = v51;
  v110[0] = *MEMORY[0x277D82818];
  v63 = *(MEMORY[0x277D82818] + 72);
  *(v110 + *(v110[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v111 = v63;
  v112 = MEMORY[0x277D82878] + 16;
  if (v114 < 0)
  {
    operator delete(v113[7].__locale_);
  }

  v112 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v113);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBED50](&v115);
  ACFUError::~ACFUError(v117);
}

void sub_2402B6F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33);
  ACFUError::~ACFUError((v33 - 104));
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_2402B728C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x245CBED50](v1);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x245CBED50](a1 + 128);
  return a1;
}

void ACFUFDR::getDictLocalCopy(uint64_t a1@<X0>, const char *a2@<X1>, ACFULogging **a3@<X8>)
{
  ACFUError::ACFUError(v89, @"ACFUFDR");
  v88 = 0;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v82);
  *(&v83 + *(v83 - 24) + 8) |= 0x4000u;
  LOBYTE(__p[0]) = 48;
  v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v83, __p);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 24) = 8;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFFB5 | 8;
  v8 = MEMORY[0x245CBEC10]();
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "-", 1);
  v79.__r_.__value_.__s.__data_[0] = 48;
  v10 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, &v79);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 24) = 16;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x245CBEC20]();
  v12 = *MEMORY[0x277CBECE8];
  v13 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a2, 0x8000100u);
  std::stringbuf::str();
  if (v81 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v15 = CFStringCreateWithCString(v12, v14, 0x8000100u);
  v16 = v15;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v13 || !v16)
  {
    LogInstance = ACFULogging::getLogInstance(v15);
    v71 = "%s::%s: failed to allocate dataIntance, dataClass\n";
LABEL_59:
    ACFULogging::handleMessage(LogInstance, 2u, v71, v66, v67, v68, v69, v70, "ACFUFDR");
    v29 = 0;
    v18 = 0;
    v45 = -1;
    goto LABEL_37;
  }

  Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v18 = Mutable;
  if (!Mutable)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v71 = "%s::%s: failed to allocate options dictionary\n";
    goto LABEL_59;
  }

  v19 = MEMORY[0x277CBED28];
  if (*a1 == 1)
  {
    CFDictionaryAddValue(Mutable, @"CopyAllowRawData", *MEMORY[0x277CBED28]);
  }

  v20 = *(a1 + 8);
  if (v20)
  {
    CFDictionaryAddValue(v18, @"APTicket", v20);
  }

  v21 = *v19;
  if (*(a1 + 16) == 1)
  {
    CFDictionaryAddValue(v18, @"GetCombined", v21);
  }

  CFDictionaryAddValue(v18, @"CopyAllowUnsealed", v21);
  v23 = ACFULogging::getLogInstance(v22);
  std::string::basic_string[abi:ne200100]<0>(&v78, "ACFUFDR");
  v24 = std::string::append(&v78, "::");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v79, "getDictLocalCopy");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v81 = v26->__r_.__value_.__r.__words[2];
  *__p = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v23, __p, 3, "FDR Validation Options", v18);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v28 = AMFDRSealingMapCopyLocalDict();
  v29 = v28;
  v30 = v88;
  if (*(a1 + 1) != 1 || !v28 || !v88)
  {
LABEL_32:
    if (!v29)
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v31 = ACFULogging::getLogInstance(v28);
  AMFDRGetTrustError();
  ACFULogging::handleMessage(v31, 3u, "%s::%s: skipping trust error since FDR validation is disabled (Trust Error: 0x%016llx)\n", v32, v33, v34, v35, v36, "ACFUFDR");
  v38 = ACFULogging::getLogInstance(v37);
  std::string::basic_string[abi:ne200100]<0>(&v78, "ACFUFDR");
  v39 = std::string::append(&v78, "::");
  v40 = *&v39->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v79, "getDictLocalCopy");
  v42 = *&v41->__r_.__value_.__l.__data_;
  v81 = v41->__r_.__value_.__r.__words[2];
  *__p = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v38, __p, 3, "fdr error: ", v88);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v28 = v88;
  if (v88)
  {
    CFRelease(v88);
    v30 = 0;
    v88 = 0;
    goto LABEL_32;
  }

  v30 = 0;
  if (!v29)
  {
    goto LABEL_49;
  }

LABEL_33:
  if (!v30)
  {
    v43 = CFGetTypeID(v29);
    TypeID = CFDictionaryGetTypeID();
    if (v43 != TypeID)
    {
      v72 = ACFULogging::getLogInstance(TypeID);
      ACFULogging::handleMessage(v72, 2u, "%s::%s: wrong type, expected dict\n", v73, v74, v75, v76, v77, "ACFUFDR");
      CFRelease(v29);
      v29 = 0;
    }

    v45 = 0;
    goto LABEL_37;
  }

LABEL_49:
  v53 = ACFULogging::getLogInstance(v28);
  ACFULogging::handleMessage(v53, 2u, "%s::%s: failed to get dict from local FDR data store\n", v54, v55, v56, v57, v58, "ACFUFDR");
  v60 = ACFULogging::getLogInstance(v59);
  std::string::basic_string[abi:ne200100]<0>(&v78, "ACFUFDR");
  v61 = std::string::append(&v78, "::");
  v62 = *&v61->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v62;
  v61->__r_.__value_.__l.__size_ = 0;
  v61->__r_.__value_.__r.__words[2] = 0;
  v61->__r_.__value_.__r.__words[0] = 0;
  v63 = std::string::append(&v79, "getDictLocalCopy");
  v64 = *&v63->__r_.__value_.__l.__data_;
  v81 = v63->__r_.__value_.__r.__words[2];
  *__p = v64;
  v63->__r_.__value_.__l.__size_ = 0;
  v63->__r_.__value_.__r.__words[2] = 0;
  v63->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v60, __p, 2, "fdr error: ", v88);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  TypeID = AMFDRGetTrustError();
  v45 = TypeID;
  if (v29)
  {
    CFRelease(v29);
    v29 = 0;
  }

LABEL_37:
  v46 = ACFULogging::getLogInstance(TypeID);
  ACFULogging::handleMessage(v46, 3u, "%s::%s: FDR Trust Result: 0x%016llx\n", v47, v48, v49, v50, v51, "ACFUFDR");
  if (v13)
  {
    CFRelease(v13);
  }

  if (v88)
  {
    CFRelease(v88);
    v88 = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  *a3 = v29;
  a3[1] = v45;
  v82[0] = *MEMORY[0x277D82818];
  v52 = *(MEMORY[0x277D82818] + 72);
  *(v82 + *(v82[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v83 = v52;
  v84 = MEMORY[0x277D82878] + 16;
  if (v86 < 0)
  {
    operator delete(v85[7].__locale_);
  }

  v84 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v85);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBED50](&v87);
  ACFUError::~ACFUError(v89);
}

void sub_2402B7C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a31);
  ACFUError::~ACFUError((v31 - 104));
  _Unwind_Resume(a1);
}

uint64_t ACFUFDR::certifyChip(uint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  valuePtr[0] = a2;
  v132 = a3;
  v131 = a4;
  bytes = 0;
  v130 = 0;
  v5 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v124);
  v123 = 0;
  v6 = *(a1 + 32);
  v7 = v6 == 2 && *(a1 + 40) == 0;
  v8 = MEMORY[0x277D82818];
  if (v7)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: client sik pubkey must be set for FDR 2.0 certification\n", v101, v102, v103, v104, v105, "ACFUFDR");
    theDict = 0;
    v40 = 0;
    v39 = 0;
    goto LABEL_59;
  }

  v9 = CCRandomGenerateBytes(&bytes, 8uLL);
  v10 = *MEMORY[0x277CBECE8];
  v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &bytes);
  value = CFNumberCreate(v10, kCFNumberSInt16Type, valuePtr);
  v12 = CFNumberCreate(v10, kCFNumberSInt64Type, &v132);
  v13 = CFNumberCreate(v10, kCFNumberSInt16Type, &v131);
  cf = v13;
  if (value)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v13 == 0 || v9 != 0 || v11 == 0)
  {
    v64 = ACFULogging::getLogInstance(v13);
    ACFULogging::handleMessage(v64, 2u, "%s::%s: failed to setup http header parameters (rngStatus: %d)\n", v65, v66, v67, v68, v69, "ACFUFDR");
    v39 = 0;
    v40 = 0;
    theDict = 0;
    if (!v11)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  theDict = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!theDict)
  {
    v70 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v70, 2u, "%s::%s: failed to allocate extra options dictionary\n", v71, v72, v73, v74, v75, "ACFUFDR");
    v39 = 0;
    v40 = 0;
    theDict = 0;
    goto LABEL_52;
  }

  Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v19 = Mutable;
  if (!Mutable)
  {
    v76 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v76, 2u, "%s::%s: failed to allocate http header dictionary\n", v77, v78, v79, v80, v81, "ACFUFDR");
    v39 = 0;
    v40 = 0;
    goto LABEL_52;
  }

  CFDictionarySetValue(Mutable, @"x-fdr-request-uuid", v11);
  CFDictionarySetValue(v19, @"x-fdr-metadata-ECID", v12);
  CFDictionarySetValue(v19, @"x-fdr-metadata-ChipID", value);
  CFDictionarySetValue(v19, @"x-fdr-metadata-BoardID", cf);
  CFDictionarySetValue(v19, @"x-fdr-attestation", *MEMORY[0x277CBED28]);
  if (v6 == 2)
  {
    v21 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v117);
    v22 = ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage(v22, 0, "%s::%s: configuring for FDR 2.0 certification\n", v23, v24, v25, v26, v27, "ACFUFDR");
    *(&v118 + *(v118 - 24) + 8) |= 0x4000u;
    __p.__r_.__value_.__s.__data_[0] = 48;
    v28 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v118, &__p);
    v29 = *v28;
    *(v28 + *(*v28 - 24) + 24) = 8;
    *(v28 + *(v29 - 24) + 8) = *(v28 + *(v29 - 24) + 8) & 0xFFFFFFB5 | 8;
    v30 = MEMORY[0x245CBEC10]();
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "-", 1);
    v115.__r_.__value_.__s.__data_[0] = 48;
    v32 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, &v115);
    v33 = *v32;
    *(v32 + *(*v32 - 24) + 24) = 16;
    *(v32 + *(v33 - 24) + 8) = *(v32 + *(v33 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x245CBEC20]();
    std::stringbuf::str();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v35 = CFStringCreateWithCString(v10, p_p, 0x8000100u);
    v36 = v35;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v36)
    {
      CFDictionarySetValue(v19, @"x-fdr-client-id", v36);
      CFDictionarySetValue(theDict, @"CertifySikPub", *(a1 + 40));
      CFRelease(v36);
    }

    else
    {
      v106 = ACFULogging::getLogInstance(v35);
      ACFULogging::handleMessage(v106, 2u, "%s::%s: failed to create client ID\n", v107, v108, v109, v110, v111, "ACFUFDR");
    }

    v117[0] = *v8;
    v37 = *(v8 + 72);
    *(v117 + *(v117[0] - 3)) = *(v8 + 64);
    v118 = v37;
    v119 = MEMORY[0x277D82878] + 16;
    if (v121 < 0)
    {
      operator delete(v120[7].__locale_);
    }

    v119 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v120);
    std::iostream::~basic_iostream();
    v38 = MEMORY[0x245CBED50](&v122);
    if (!v36)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v41 = ACFULogging::getLogInstance(v20);
    ACFULogging::handleMessage(v41, 0, "%s::%s: configuring for FDR 1.0 certification\n", v42, v43, v44, v45, v46, "ACFUFDR");
    CFDictionarySetValue(v19, @"x-fdr-certification-type", @"component");
  }

  v47 = ACFULogging::getLogInstance(v38);
  std::string::basic_string[abi:ne200100]<0>(&v115, "ACFUFDR");
  v48 = std::string::append(&v115, "::");
  v49 = *&v48->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&__p, "certifyChip");
  v51 = *&v50->__r_.__value_.__l.__data_;
  v118 = v50->__r_.__value_.__r.__words[2];
  *v117 = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  ACFULogging::handleMessageCFType(v47, v117, 0, "FDR Certification URL:", *(a1 + 8));
  if (SHIBYTE(v118) < 0)
  {
    operator delete(v117[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v40 = CFURLCreateWithString(v10, *(a1 + 8), 0);
  if (v40)
  {
    CFDictionarySetValue(theDict, @"CertifyHeaders", v19);
    v52 = *(a1 + 56);
    if (v52)
    {
      CFDictionarySetValue(theDict, @"CertifyManifestSigCert", v52);
    }

    v53 = *(a1 + 48);
    v54 = *(a1 + 16);
    v55 = *(a1 + 24);
    v56 = AMFDRChipCertifyForRestore();
    if (v56)
    {
      if (v123)
      {
        v57 = ACFULogging::getLogInstance(v56);
        std::string::basic_string[abi:ne200100]<0>(&v115, "ACFUFDR");
        v58 = std::string::append(&v115, "::");
        v59 = *&v58->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v59;
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v60 = std::string::append(&__p, "certifyChip");
        v61 = *&v60->__r_.__value_.__l.__data_;
        v118 = v60->__r_.__value_.__r.__words[2];
        *v117 = v61;
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        ACFULogging::handleMessageCFType(v57, v117, 0, "Signed Certificate: ", v123);
        if (SHIBYTE(v118) < 0)
        {
          operator delete(v117[0]);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v115.__r_.__value_.__l.__data_);
        }
      }

      v39 = 1;
    }

    else
    {
      v88 = ACFULogging::getLogInstance(v56);
      ACFULogging::handleMessage(v88, 2u, "%s::%s: failed to perform certification\n", v89, v90, v91, v92, v93, "ACFUFDR");
      v95 = ACFULogging::getLogInstance(v94);
      std::string::basic_string[abi:ne200100]<0>(&v115, "ACFUFDR");
      v96 = std::string::append(&v115, "::");
      v97 = *&v96->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;
      v98 = std::string::append(&__p, "certifyChip");
      v99 = *&v98->__r_.__value_.__l.__data_;
      v118 = v98->__r_.__value_.__r.__words[2];
      *v117 = v99;
      v98->__r_.__value_.__l.__size_ = 0;
      v98->__r_.__value_.__r.__words[2] = 0;
      v98->__r_.__value_.__r.__words[0] = 0;
      ACFULogging::handleMessageCFType(v95, v117, 2, "Certification Error: ", v130);
      if (SHIBYTE(v118) < 0)
      {
        operator delete(v117[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v115.__r_.__value_.__l.__data_);
      }

      v39 = 0;
    }

    goto LABEL_51;
  }

  v82 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v82, 2u, "%s::%s: failed to allocate certification URL\n", v83, v84, v85, v86, v87, "ACFUFDR");
LABEL_31:
  v39 = 0;
  v40 = 0;
LABEL_51:
  CFRelease(v19);
LABEL_52:
  CFRelease(v11);
LABEL_53:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_59:
  if (v130)
  {
    CFRelease(v130);
    v130 = 0;
  }

  if (v123)
  {
    CFRelease(v123);
    v123 = 0;
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  v124[0] = *v8;
  v62 = *(v8 + 72);
  *(v124 + *(v124[0] - 24)) = *(v8 + 64);
  v124[2] = v62;
  v125 = MEMORY[0x277D82878] + 16;
  if (v127 < 0)
  {
    operator delete(v126[7].__locale_);
  }

  v125 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v126);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBED50](&v128);
  return v39;
}

void sub_2402B881C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a69);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CBED00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2402B8970(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245CBEBE0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245CBEBF0](v13);
  return a1;
}

void sub_2402B8BE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245CBEBF0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2402B8BC0);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        v14 = (v12 | 7) == 0x17 ? 25 : (v12 | 7) + 1;
        v13 = operator new(v14);
        __b[1] = v12;
        v20 = v14 | 0x8000000000000000;
        __b[0] = v13;
      }

      else
      {
        HIBYTE(v20) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      v15 = v20 >= 0 ? __b : __b[0];
      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__b[0]);
      }

      if (v16 != v12)
      {
        return 0;
      }
    }

    v17 = a4 - a3;
    if (v17 < 1 || (*(*v6 + 96))(v6, a3, v17) == v17)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2402B8E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUTransport::~ACFUTransport(ACFUTransport *this)
{
  *this = &unk_28522EBE8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ACFUTransport::ACFUTransport(ACFUTransport *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28522EBE8;
}

void ACFUDataContainer::ACFUDataContainer(ACFUDataContainer *this)
{
  *this = 0;
  *(this + 2) = -1;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

{
  *this = 0;
  *(this + 2) = -1;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

uint64_t ACFUDataContainer::DirectDataRef::DirectDataRef(uint64_t this, void *a2, uint64_t a3, char a4)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 17) = 1;
  return this;
}

{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 17) = 1;
  return this;
}

uint64_t ACFUDataContainer::DirectDataRef::DirectDataRef(uint64_t this, void *a2, uint64_t a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  return this;
}

void ACFUDataContainer::DirectDataRef::~DirectDataRef(ACFUDataContainer::DirectDataRef *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if (*(this + 17) == 1)
      {
        if (*(this + 16))
        {
          if (v2 % sysconf(29))
          {
            v4 = sysconf(29);
            v5 = sysconf(29);
            LogInstance = ACFULogging::getLogInstance(v5);
            v3 += v2 % v5;
            v20 = *(this + 1);
            ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: unmaping new length for page alignment (alignedLength: %zu. originalLength: %zu)\n", v7, v8, v9, v10, v11, "ACFUDataContainer");
            v2 = v2 / v4 * v4;
          }

          v12 = munmap(v2, v3);
          if (v12 == -1)
          {
            v13 = ACFULogging::getLogInstance(v12);
            v14 = __error();
            strerror(*v14);
            ACFULogging::handleMessage(v13, 2u, "%s::%s: failed to unmap file: (%s)\n", v15, v16, v17, v18, v19, "ACFUDataContainer");
          }
        }

        else
        {
          free(*this);
        }
      }
    }
  }
}

void ACFUDataContainer::create(ACFUDataContainer *this@<X0>, ACFUDataContainer **a2@<X8>)
{
  v5 = operator new(0x20uLL);
  *v5 = 0;
  v5[2] = -1;
  *(v5 + 2) = 0;
  *(v5 + 12) = 0;
  *a2 = v5;
  if ((ACFUDataContainer::init(v5, this) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a2, 0);
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init data container object\n", v8, v9, v10, v11, v12, "ACFUDataContainer");
  }
}

{
  v5 = operator new(0x20uLL);
  *v5 = 0;
  v5[2] = -1;
  *(v5 + 2) = 0;
  *(v5 + 12) = 0;
  *a2 = v5;
  if ((ACFUDataContainer::init(v5, this) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a2, 0);
    LogInstance = ACFULogging::getLogInstance(v6);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init data container object\n", v8, v9, v10, v11, v12, "ACFUDataContainer");
  }
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, const __CFData *a2)
{
  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      MutableCopy = CFDataCreateMutableCopy(*MEMORY[0x277CBECE8], 0, a2);
      *this = MutableCopy;
      if (MutableCopy)
      {
        return 1;
      }

      v7 = "%s::%s: failed to allocate space for file object\n";
    }

    else
    {
      v7 = "%s::%s: data is of an unsupported type\n";
    }
  }

  else
  {
    v7 = "%s::%s: bad parameter!\n";
  }

  ACFUDataContainer::init(v7);
  return 0;
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, __CFData *a2)
{
  if (a2)
  {
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      v5 = AMSupportSafeRetain();
      *this = v5;
      if (v5)
      {
        return 1;
      }

      v7 = "%s::%s: failed to allocate space for file object\n";
    }

    else
    {
      v7 = "%s::%s: data is of an unsupported type\n";
    }
  }

  else
  {
    v7 = "%s::%s: bad parameter!\n";
  }

  ACFUDataContainer::init(v7);
  return 0;
}

void ACFUDataContainer::create(__CFString *this@<X0>, const __CFString *a2@<X1>, ACFUDataContainer **a3@<X8>)
{
  v3 = a2;
  v6 = operator new(0x20uLL);
  *v6 = 0;
  v6[2] = -1;
  *(v6 + 2) = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  if ((ACFUDataContainer::init(v6, this, v3) & 1) == 0)
  {
    std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](a3, 0);
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init data container object\n", v9, v10, v11, v12, v13, "ACFUDataContainer");
  }
}

uint64_t ACFUDataContainer::init(ACFUDataContainer *this, __CFString *a2, char a3)
{
  ACFUCommon::stringFromCFString(a2, &v43);
  v46 = v44;
  *v45 = v43;
  if ((SHIBYTE(v44) & 0x80000000) == 0)
  {
    if (HIBYTE(v44))
    {
      v7 = v45;
      goto LABEL_6;
    }

LABEL_40:
    LogInstance = ACFULogging::getLogInstance(v6);
    v41 = "%s::%s: failed to acquire file path string\n";
LABEL_44:
    ACFULogging::handleMessage(LogInstance, 2u, v41, v36, v37, v38, v39, v40, "ACFUDataContainer");
    goto LABEL_21;
  }

  if (!v45[1])
  {
    goto LABEL_40;
  }

  v7 = v45[0];
LABEL_6:
  if (access(v7, 0))
  {
    *(this + 25) = 1;
    if (v46 >= 0)
    {
      v8 = v45;
    }

    else
    {
      v8 = v45[0];
    }

    v9 = open(v8, 514, 438);
  }

  else
  {
    if (v46 >= 0)
    {
      v10 = v45;
    }

    else
    {
      v10 = v45[0];
    }

    if (access(v10, 6))
    {
      if (v46 >= 0)
      {
        v11 = v45;
      }

      else
      {
        v11 = v45[0];
      }

      v12 = access(v11, 4);
      if (v12)
      {
        v13 = ACFULogging::getLogInstance(v12);
        v14 = __error();
        strerror(*v14);
        v20 = "%s::%s: no read or write permissions to file: (%s)\n";
LABEL_20:
        ACFULogging::handleMessage(v13, 2u, v20, v15, v16, v17, v18, v19, "ACFUDataContainer");
LABEL_21:
        v21 = 0;
        goto LABEL_37;
      }

      v23 = ACFULogging::getLogInstance(v12);
      ACFULogging::handleMessage(v23, 2u, "%s::%s: no write permissions to file... attempting to open file as read-only\n", v24, v25, v26, v27, v28, "ACFUDataContainer");
      if (v46 >= 0)
      {
        v29 = v45;
      }

      else
      {
        v29 = v45[0];
      }

      v9 = open(v29, 0);
    }

    else
    {
      *(this + 25) = 1;
      if (v46 >= 0)
      {
        v22 = v45;
      }

      else
      {
        v22 = v45[0];
      }

      v9 = open(v22, 2);
    }
  }

  *(this + 2) = v9;
  if ((v9 & 0x80000000) != 0)
  {
    v13 = ACFULogging::getLogInstance(v9);
    v42 = __error();
    strerror(*v42);
    v20 = "%s::%s: failed to open file error: (%s)\n";
    goto LABEL_20;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], a2);
  *(this + 2) = Copy;
  if (!Copy)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v41 = "%s::%s: failed to create copy of file path\n";
    goto LABEL_44;
  }

  if ((a3 & 1) == 0)
  {
    MutableFileDatafromFilePath = ACFUCommon::createMutableFileDatafromFilePath(a2, v31);
    *this = MutableFileDatafromFilePath;
    if (MutableFileDatafromFilePath)
    {
      v32 = 0;
      goto LABEL_36;
    }

    LogInstance = ACFULogging::getLogInstance(0);
    v41 = "%s::%s: failed to acquire firmware data from file path\n";
    goto LABEL_44;
  }

  v32 = 1;
LABEL_36:
  *(this + 24) = v32;
  v21 = 1;
LABEL_37:
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  return v21;
}

void sub_2402B95F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFData *ACFUDataContainer::copyData(ACFUDataContainer *this)
{
  if (*(this + 24) != 1)
  {
    v5 = *this;
    if (*this)
    {
      AMSupportSafeRetain();
      return *this;
    }

    else
    {
      ACFUDataContainer::copyData(0);
      return 0;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v2 = *(this + 2);
  if (!v2)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v15 = "%s::%s: file path has not been initialized\n";
LABEL_20:
    ACFULogging::handleMessage(LogInstance, 2u, v15, v10, v11, v12, v13, v14, "ACFUDataContainer");
    goto LABEL_22;
  }

  ACFUCommon::stringFromCFString(v2, &v23);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v26 = v24;
  *__p = v23;
  if (SHIBYTE(v24) < 0)
  {
    if (__p[1])
    {
      v4 = __p[0];
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (!HIBYTE(v24))
  {
LABEL_19:
    LogInstance = ACFULogging::getLogInstance(v3);
    v15 = "%s::%s: failed to acquire file path c string\n";
    goto LABEL_20;
  }

  v4 = __p;
LABEL_12:
  v7 = stat(v4, &v27);
  if (v7 != -1)
  {
    v6 = ACFUDataContainer::copyData(this, 0, v27.st_size);
    goto LABEL_14;
  }

  v16 = ACFULogging::getLogInstance(v7);
  v17 = __error();
  strerror(*v17);
  ACFULogging::handleMessage(v16, 2u, "%s::%s: failed to obtain file stats: (%s)\n", v18, v19, v20, v21, v22, "ACFUDataContainer");
LABEL_22:
  v6 = 0;
LABEL_14:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_2402B9780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CFData *ACFUDataContainer::copyData(ACFUDataContainer *this, unsigned int a2, unint64_t a3)
{
  if (!a3)
  {
    ACFUDataContainer::copyData(this);
    return 0;
  }

  v3 = a3;
  Length = ACFUDataContainer::getLength(this);
  if (!Length)
  {
    ACFUDataContainer::copyData(0);
    return 0;
  }

  if (Length <= a2)
  {
    ACFUDataContainer::copyData(Length);
    return 0;
  }

  v7 = a2;
  v8 = Length - a2;
  if (v8 < v3)
  {
    LogInstance = ACFULogging::getLogInstance(Length);
    ACFULogging::handleMessage(LogInstance, 4u, "%s::%s: reducing requested length %zu -> %zu\n", v10, v11, v12, v13, v14, "ACFUDataContainer");
    v3 = v8;
  }

  if (*(this + 24) != 1)
  {
    if (*this)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
      if (Mutable)
      {
        BytePtr = CFDataGetBytePtr(*this);
        CFDataAppendBytes(Mutable, &BytePtr[v7], v3);
      }

      else
      {
        ACFUDataContainer::copyData(0);
      }

      return Mutable;
    }

    ACFUDataContainer::copyData(Length);
    return 0;
  }

  if ((*(this + 2) & 0x80000000) != 0)
  {
    ACFUDataContainer::copyData(Length);
    return 0;
  }

  v15 = (a2 / sysconf(29));
  v16 = sysconf(29);
  v17 = (v15 * v16);
  v18 = a2 - v17;
  v19 = ACFULogging::getLogInstance(v16);
  ACFULogging::handleMessage(v19, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v20, v21, v22, v23, v24, "ACFUDataContainer");
  v25 = mmap(0, v3 + v18, 1, 2, *(this + 2), v17);
  if (v25 == -1)
  {
    ACFUDataContainer::copyData(0xFFFFFFFFFFFFFFFFLL);
    return 0;
  }

  v26 = v25;
  v27 = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  Mutable = v27;
  if (v27)
  {
    CFDataAppendBytes(v27, &v26[v18], v3);
    v29 = munmap(v26, v3 + v18);
    if (v29 == -1)
    {
      v30 = ACFULogging::getLogInstance(v29);
      v31 = __error();
      strerror(*v31);
      ACFULogging::handleMessage(v30, 4u, "%s::%s: failed to un-map file: (%s)\n", v32, v33, v34, v35, v36, "ACFUDataContainer");
    }
  }

  else
  {
    ACFUDataContainer::copyData(0);
  }

  return Mutable;
}

CFIndex ACFUDataContainer::getLength(const __CFString **this)
{
  if (*(this + 24) == 1)
  {
    ACFUCommon::stringFromCFString(this[2], __p);
    if (v14 >= 0)
    {
      v1 = __p;
    }

    else
    {
      v1 = __p[0];
    }

    v2 = stat(v1, &v15);
    if (v2 == -1)
    {
      LogInstance = ACFULogging::getLogInstance(v2);
      v7 = __error();
      strerror(*v7);
      ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to determine file size for path '%s' (%s)\n", v8, v9, v10, v11, v12, "ACFUDataContainer");
      st_size = 0;
    }

    else
    {
      st_size = v15.st_size;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return st_size;
  }

  else
  {
    v4 = *this;

    return CFDataGetLength(v4);
  }
}

void sub_2402B9AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUDataContainer::copyDirectData(ACFUDataContainer *this@<X0>, size_t __size@<X2>, unsigned int a3@<W1>, ACFUDataContainer::DirectDataRef **a4@<X8>)
{
  *a4 = 0;
  if (!__size)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v32 = "%s::%s: invalid offset value\n";
    v33 = 2;
    goto LABEL_11;
  }

  if (*(this + 24) == 1)
  {
    if ((*(this + 2) & 0x80000000) != 0)
    {
      v34 = ACFULogging::getLogInstance(this);
      ACFULogging::handleMessage(v34, 2u, "%s::%s: invalid file descriptor\n", v35, v36, v37, v38, v39, "ACFUDataContainer");
      return;
    }

    v8 = sysconf(29);
    v9 = sysconf(29);
    v10 = ACFULogging::getLogInstance(v9);
    v11 = (v9 * (a3 / v8));
    v12 = a3 - v11;
    ACFULogging::handleMessage(v10, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v13, v14, v15, v16, v17, "ACFUDataContainer");
    v18 = mmap(0, v12 + __size, 1, 1, *(this + 2), v11);
    if (v18 == -1)
    {
      v47 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
      v48 = __error();
      strerror(*v48);
      ACFULogging::handleMessage(v47, 2u, "%s::%s: failed to map file: (%s)\n", v49, v50, v51, v52, v53, "ACFUDataContainer");
      return;
    }

    v19 = operator new(0x18uLL);
    *v19 = &v18[v12];
    v20 = 1;
    goto LABEL_9;
  }

  v21 = *this;
  if (!*this)
  {
    v40 = ACFULogging::getLogInstance(this);
    v46 = "%s::%s: object does not hold any data\n";
LABEL_17:
    ACFULogging::handleMessage(v40, 2u, v46, v41, v42, v43, v44, v45, "ACFUDataContainer");
    return;
  }

  v22 = malloc(__size);
  if (!v22)
  {
    v40 = ACFULogging::getLogInstance(0);
    v46 = "%s::%s: unable to allocate data\n";
    goto LABEL_17;
  }

  v23 = v22;
  BytePtr = CFDataGetBytePtr(v21);
  memcpy(v23, &BytePtr[a3], __size);
  v19 = operator new(0x18uLL);
  v20 = 0;
  *v19 = v23;
LABEL_9:
  v19[1] = __size;
  *(v19 + 16) = v20;
  *(v19 + 17) = 1;
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a4, v19);
  if (**a4)
  {
    return;
  }

  LogInstance = ACFULogging::getLogInstance(v25);
  v32 = "%s::%s: failed to create file data\n";
  v33 = 4;
LABEL_11:
  ACFULogging::handleMessage(LogInstance, v33, v32, v27, v28, v29, v30, v31, "ACFUDataContainer");
}

uint64_t ACFUDataContainer::setData(const __CFString **this, __CFData *a2)
{
  if (*(this + 24) == 1)
  {
    ACFUDataContainer::setData(this);
    return 0;
  }

  v3 = *this;
  if (v3)
  {
    CFRelease(v3);
    *this = 0;
  }

  v4 = AMSupportSafeRetain();
  *this = v4;
  if (!v4)
  {
    ACFUDataContainer::setData(0);
    return 0;
  }

  if (*(this + 25) != 1)
  {
    return 1;
  }

  v5 = this[2];
  if (!v5)
  {
    ACFUDataContainer::setData(v4);
    return 0;
  }

  v6 = CFURLCreateWithString(*MEMORY[0x277CBECE8], v5, 0);
  if (!v6)
  {
    ACFUDataContainer::setData(0);
    return 0;
  }

  v7 = v6;
  v8 = *this;
  v9 = 1;
  v10 = AMSupportWriteDataToFileURL();
  CFRelease(v7);
  if (v10)
  {
    ACFUDataContainer::setData(v10);
    return 0;
  }

  return v9;
}

uint64_t ACFUDataContainer::writeData(ACFUDataContainer *this, const __CFData *a2, unsigned int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(__p, "");
  if ((*(this + 25) & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v49 = "%s::%s: file does not have write permissions\n";
LABEL_35:
    ACFULogging::handleMessage(LogInstance, 2u, v49, v44, v45, v46, v47, v48, "ACFUDataContainer");
LABEL_40:
    v41 = 0;
    goto LABEL_26;
  }

  if (!a2)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v49 = "%s::%s: invalid file data\n";
    goto LABEL_35;
  }

  if (!*(this + 2))
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v49 = "%s::%s: file path has not been initialized\n";
    goto LABEL_35;
  }

  if ((*(this + 2) & 0x80000000) != 0)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v49 = "%s::%s: invalid file descriptor\n";
    goto LABEL_35;
  }

  Length = CFDataGetLength(a2);
  if (!Length)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v49 = "%s::%s: invalid length\n";
    goto LABEL_35;
  }

  ACFUCommon::stringFromCFString(*(this + 2), &v66);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p[0]);
  }

  v69 = v67;
  *__p = v66;
  if ((SHIBYTE(v67) & 0x80000000) == 0)
  {
    if (HIBYTE(v67))
    {
      v9 = __p;
      goto LABEL_13;
    }

    goto LABEL_34;
  }

  if (!__p[1])
  {
LABEL_34:
    LogInstance = ACFULogging::getLogInstance(v8);
    v49 = "%s::%s: failed to acquire file path c string\n";
    goto LABEL_35;
  }

  v9 = __p[0];
LABEL_13:
  v10 = stat(v9, &v70);
  if (v10 == -1)
  {
    v50 = ACFULogging::getLogInstance(v10);
    v51 = __error();
    strerror(*v51);
    v57 = "%s::%s: failed to obtain file stats: (%s)\n";
LABEL_39:
    ACFULogging::handleMessage(v50, 2u, v57, v52, v53, v54, v55, v56, "ACFUDataContainer");
    goto LABEL_40;
  }

  v11 = Length + a3;
  if (v11 > v70.st_size)
  {
    v12 = ftruncate(*(this + 2), Length + a3);
    if (v12)
    {
      v50 = ACFULogging::getLogInstance(v12);
      v59 = __error();
      strerror(*v59);
      v57 = "%s::%s: failed to increase file length: (%s)\n";
      goto LABEL_39;
    }
  }

  v13 = sysconf(29);
  v14 = sysconf(29);
  v15 = ACFULogging::getLogInstance(v14);
  v16 = a3;
  v17 = (v14 * (a3 / v13));
  v18 = a3 - v17;
  v19 = Length + v18;
  ACFULogging::handleMessage(v15, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v20, v21, v22, v23, v24, "ACFUDataContainer");
  v25 = mmap(0, Length + v18, 3, 1, *(this + 2), v17);
  if (v25 == -1)
  {
    v50 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
    v58 = __error();
    strerror(*v58);
    v57 = "%s::%s: failed to map file: (%s)\n";
    goto LABEL_39;
  }

  v26 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], &v25[v18], Length, *MEMORY[0x277CBED00]);
  BytePtr = CFDataGetBytePtr(a2);
  v28 = CFDataGetLength(a2);
  v71.location = 0;
  v71.length = Length;
  CFDataReplaceBytes(v26, v71, BytePtr, v28);
  v29 = munmap(v25, v19);
  if (v29 == -1)
  {
    v30 = ACFULogging::getLogInstance(v29);
    v31 = __error();
    strerror(*v31);
    ACFULogging::handleMessage(v30, 4u, "%s::%s: failed to un-map file: (%s)\n", v32, v33, v34, v35, v36, "ACFUDataContainer");
  }

  if (*(this + 24))
  {
LABEL_24:
    v41 = 1;
    if (!v26)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (*this)
  {
    if (CFDataGetLength(*this) < v11)
    {
      v37 = *this;
      v38 = CFDataGetLength(*this);
      CFDataIncreaseLength(v37, v11 - v38);
    }

    v39 = *this;
    v40 = CFDataGetBytePtr(a2);
    v72.location = v16;
    v72.length = Length;
    CFDataReplaceBytes(v39, v72, v40, Length);
    goto LABEL_24;
  }

  v60 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v60, 2u, "%s::%s: object does not hold any data\n", v61, v62, v63, v64, v65, "ACFUDataContainer");
  v41 = 0;
  if (v26)
  {
LABEL_25:
    CFRelease(v26);
  }

LABEL_26:
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p[0]);
  }

  return v41;
}

void sub_2402BA228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUDataContainer::writeData(uint64_t a1, const void ***a2, unsigned int a3)
{
  v6 = std::string::basic_string[abi:ne200100]<0>(__p, "");
  if ((*(a1 + 25) & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v45 = "%s::%s: file does not have write permissions\n";
LABEL_39:
    ACFULogging::handleMessage(LogInstance, 2u, v45, v40, v41, v42, v43, v44, "ACFUDataContainer");
    goto LABEL_40;
  }

  if (!*a2)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v45 = "%s::%s: invalid file data\n";
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v45 = "%s::%s: file path has not been initialized\n";
    goto LABEL_39;
  }

  if ((*(a1 + 8) & 0x80000000) != 0)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    v45 = "%s::%s: invalid file descriptor\n";
    goto LABEL_39;
  }

  v8 = (*a2)[1];
  if (!v8)
  {
    LogInstance = ACFULogging::getLogInstance(v7);
    v45 = "%s::%s: invalid length\n";
    goto LABEL_39;
  }

  ACFUCommon::stringFromCFString(v7, &v56);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  v59 = v57;
  *__p = v56;
  if ((SHIBYTE(v57) & 0x80000000) == 0)
  {
    if (HIBYTE(v57))
    {
      v10 = __p;
      goto LABEL_13;
    }

    goto LABEL_33;
  }

  if (!__p[1])
  {
LABEL_33:
    LogInstance = ACFULogging::getLogInstance(v9);
    v45 = "%s::%s: failed to acquire file path c string\n";
    goto LABEL_39;
  }

  v10 = __p[0];
LABEL_13:
  v11 = stat(v10, &v60);
  if (v11 == -1)
  {
    v46 = ACFULogging::getLogInstance(v11);
    v47 = __error();
    strerror(*v47);
    v53 = "%s::%s: failed to obtain file stats: (%s)\n";
  }

  else
  {
    v12 = v8 + a3;
    if (v12 > v60.st_size && (v13 = ftruncate(*(a1 + 8), v8 + a3), v13))
    {
      v46 = ACFULogging::getLogInstance(v13);
      v55 = __error();
      strerror(*v55);
      v53 = "%s::%s: failed to increase file length: (%s)\n";
    }

    else
    {
      v14 = sysconf(29);
      v15 = sysconf(29);
      v16 = ACFULogging::getLogInstance(v15);
      v17 = a3;
      v18 = (v15 * (a3 / v14));
      v19 = a3 - v18;
      ACFULogging::handleMessage(v16, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v20, v21, v22, v23, v24, "ACFUDataContainer");
      v25 = mmap(0, v8 + v19, 3, 1, *(a1 + 8), v18);
      v26 = v25;
      if (v25 != -1)
      {
        memcpy(&v25[v19], **a2, v8);
        v27 = munmap(v26, v8 + v19);
        if (v27 == -1)
        {
          v28 = ACFULogging::getLogInstance(v27);
          v29 = __error();
          strerror(*v29);
          ACFULogging::handleMessage(v28, 4u, "%s::%s: failed to un-map file: (%s)\n", v30, v31, v32, v33, v34, "ACFUDataContainer");
        }

        if (*(a1 + 24))
        {
          goto LABEL_24;
        }

        if (*a1)
        {
          if (CFDataGetLength(*a1) < v12)
          {
            v35 = *a1;
            Length = CFDataGetLength(*a1);
            CFDataIncreaseLength(v35, v12 - Length);
          }

          v61.location = v17;
          v61.length = v8;
          CFDataReplaceBytes(*a1, v61, **a2, v8);
LABEL_24:
          v37 = 1;
          goto LABEL_25;
        }

        LogInstance = ACFULogging::getLogInstance(0);
        v45 = "%s::%s: object does not hold any data\n";
        goto LABEL_39;
      }

      v46 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
      v54 = __error();
      strerror(*v54);
      v53 = "%s::%s: failed to map file: (%s)\n";
    }
  }

  ACFULogging::handleMessage(v46, 2u, v53, v48, v49, v50, v51, v52, "ACFUDataContainer");
LABEL_40:
  v37 = 0;
LABEL_25:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  return v37;
}

void sub_2402BA5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUDataContainer::writeData(ACFUDataContainer *this, const unsigned __int8 *a2, unsigned int a3, size_t a4)
{
  v8 = std::string::basic_string[abi:ne200100]<0>(__p, "");
  if (!a2 || !a4)
  {
    LogInstance = ACFULogging::getLogInstance(v8);
    v46 = "%s::%s: invalid data, length value\n";
LABEL_36:
    ACFULogging::handleMessage(LogInstance, 2u, v46, v41, v42, v43, v44, v45, "ACFUDataContainer");
    goto LABEL_37;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v46 = "%s::%s: file path has not been initialized\n";
    goto LABEL_36;
  }

  if ((*(this + 2) & 0x80000000) != 0)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    v46 = "%s::%s: invalid file descriptor\n";
    goto LABEL_36;
  }

  ACFUCommon::stringFromCFString(v9, &v57);
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  v60 = v58;
  *__p = v57;
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
    if (HIBYTE(v58))
    {
      v11 = __p;
      goto LABEL_12;
    }

    goto LABEL_30;
  }

  if (!__p[1])
  {
LABEL_30:
    LogInstance = ACFULogging::getLogInstance(v10);
    v46 = "%s::%s: failed to acquire file path c string\n";
    goto LABEL_36;
  }

  v11 = __p[0];
LABEL_12:
  v12 = stat(v11, &v61);
  if (v12 == -1)
  {
    v47 = ACFULogging::getLogInstance(v12);
    v48 = __error();
    strerror(*v48);
    v54 = "%s::%s: failed to obtain file stats: (%s)\n";
  }

  else
  {
    v13 = a4 + a3;
    if (v13 > v61.st_size && (v14 = ftruncate(*(this + 2), a4 + a3), v14))
    {
      v47 = ACFULogging::getLogInstance(v14);
      v56 = __error();
      strerror(*v56);
      v54 = "%s::%s: failed to increase file length: (%s)\n";
    }

    else
    {
      v15 = sysconf(29);
      v16 = sysconf(29);
      v17 = ACFULogging::getLogInstance(v16);
      v18 = a3;
      v19 = (v16 * (a3 / v15));
      v20 = a3 - v19;
      ACFULogging::handleMessage(v17, 4u, "%s::%s: paging in new length for page alignment (Requested: %zu. Aligned: %zu)\n", v21, v22, v23, v24, v25, "ACFUDataContainer");
      v26 = mmap(0, v20 + a4, 3, 1, *(this + 2), v19);
      v27 = v26;
      if (v26 != -1)
      {
        memcpy(&v26[v20], a2, a4);
        v28 = munmap(v27, v20 + a4);
        if (v28 == -1)
        {
          v29 = ACFULogging::getLogInstance(v28);
          v30 = __error();
          strerror(*v30);
          ACFULogging::handleMessage(v29, 4u, "%s::%s: failed to un-map file: (%s)\n", v31, v32, v33, v34, v35, "ACFUDataContainer");
        }

        if (*(this + 24))
        {
          goto LABEL_23;
        }

        if (*this)
        {
          if (CFDataGetLength(*this) < v13)
          {
            v36 = *this;
            Length = CFDataGetLength(*this);
            CFDataIncreaseLength(v36, v13 - Length);
          }

          v62.location = v18;
          v62.length = a4;
          CFDataReplaceBytes(*this, v62, a2, a4);
LABEL_23:
          v38 = 1;
          goto LABEL_24;
        }

        LogInstance = ACFULogging::getLogInstance(0);
        v46 = "%s::%s: object does not hold any data\n";
        goto LABEL_36;
      }

      v47 = ACFULogging::getLogInstance(0xFFFFFFFFFFFFFFFFLL);
      v55 = __error();
      strerror(*v55);
      v54 = "%s::%s: failed to map file: (%s)\n";
    }
  }

  ACFULogging::handleMessage(v47, 2u, v54, v49, v50, v51, v52, v53, "ACFUDataContainer");
LABEL_37:
  v38 = 0;
LABEL_24:
  if (SHIBYTE(v60) < 0)
  {
    operator delete(__p[0]);
  }

  return v38;
}

void sub_2402BA8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUDataContainer::getData(ACFUDataContainer *this)
{
  if (*(this + 24) != 1)
  {
    return *this;
  }

  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: cannot aquire reference for a memory optimized data container. Please use copyData() instead\n", v2, v3, v4, v5, v6, "ACFUDataContainer");
  return 0;
}

void ACFUDataContainer::~ACFUDataContainer(ACFUDataContainer *this)
{
  v2 = *(this + 2);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  if (*this)
  {
    CFRelease(*this);
    *this = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
    *(this + 2) = 0;
  }
}

uint64_t ACFUCommon::Parameter::Parameter(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  return this;
}

off_t ACFUCommon::getFileSize(ACFUCommon *this, const __CFURL *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  v3 = CFURLGetFileSystemRepresentation(this, 1u, buffer, 1024);
  if (!v3)
  {
    ACFUCommon::getFileSize(v3);
    st_size = 0;
    v5 = -1;
    goto LABEL_5;
  }

  v4 = open(buffer, 0);
  v5 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    ACFUCommon::getFileSize(v4);
    st_size = 0;
    goto LABEL_5;
  }

  v6 = fstat(v4, &v10);
  if (v6)
  {
    ACFUCommon::getFileSize(v6);
    st_size = 0;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  st_size = v10.st_size;
  if (v5)
  {
LABEL_5:
    close(v5);
  }

LABEL_6:
  v8 = *MEMORY[0x277D85DE8];
  return st_size;
}

void ACFUCommon::Parameter::dataAsString(CFDataRef *this@<X0>, int a2@<W1>, ACFULogging *a3@<X8>)
{
  v5 = *this;
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(*this);
    v9 = 3 * Length + 1;
    v10 = operator new[](v9, MEMORY[0x277D826F0]);
    v11 = v10;
    if (BytePtr)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = "BORKED";
    }

    else
    {
      if (3 * Length == -1)
      {
        ACFUCommon::Parameter::dataAsString(a3);
LABEL_27:

        operator delete[](v11);
        return;
      }

      v14 = Length;
      if (v9 <= 2 * Length)
      {
        v14 = (v9 - 1) >> 1;
      }

      v15 = v14 - 1;
      if (a2)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      if ((a2 & 1) != 0 || (v17 = v10, (v16 & 0x80000000) == 0))
      {
        v18 = 1;
        if (!a2)
        {
          v18 = -1;
        }

        v19 = v18 + v16;
        v20 = &BytePtr[v16];
        v21 = v10;
        do
        {
          v22 = *v20;
          v23 = a0123456789abcd[v22 & 0xF];
          *v21 = a0123456789abcd[v22 >> 4];
          v17 = v21 + 2;
          v21[1] = v23;
          v24 = v19 >= 0;
          if (a2)
          {
            v24 = v15 >= v19;
          }

          v19 += v18;
          v20 += v18;
          v21 += 2;
        }

        while (v24);
      }

      *v17 = 0;
      v13 = v10;
    }

    std::string::basic_string[abi:ne200100]<0>(a3, v13);
    if (!v11)
    {
      return;
    }

    goto LABEL_27;
  }

  std::string::basic_string[abi:ne200100]<0>(a3, "");
}

CFIndex ACFUCommon::Parameter::dataLength(ACFUCommon::Parameter *this)
{
  if (*(this + 8) == 1 && (v1 = *this) != 0)
  {
    return CFDataGetLength(v1);
  }

  else
  {
    return 0;
  }
}

const UInt8 *ACFUCommon::Parameter::dataBytePtr(ACFUCommon::Parameter *this)
{
  if (*(this + 8) == 1 && (v1 = *this) != 0)
  {
    return CFDataGetBytePtr(v1);
  }

  else
  {
    return 0;
  }
}

void ACFUCommon::Parameter::~Parameter(const void **this)
{
  v2 = *this;
  if (v2)
  {
    CFRelease(v2);
    *this = 0;
  }
}

uint64_t ACFUCommon::PersonalizeParams::PersonalizeParams(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28522EC58;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v3 = (a1 + 184);
  v3[2] = 0;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = (v4 - *a2) >> 3;
  *(a1 + 176) = 0;
  std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(v3, v5, v4, v6);
  return a1;
}

void sub_2402BADD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const void **a9, const void **a10)
{
  ACFUCommon::Parameter::~Parameter(v11);
  ACFUCommon::Parameter::~Parameter(v10);
  ACFUCommon::Parameter::~Parameter(v18);
  ACFUCommon::Parameter::~Parameter(v17);
  ACFUCommon::Parameter::~Parameter(v16);
  ACFUCommon::Parameter::~Parameter(v15);
  ACFUCommon::Parameter::~Parameter(v14);
  ACFUCommon::Parameter::~Parameter(v13);
  ACFUCommon::Parameter::~Parameter(v12);
  ACFUCommon::Parameter::~Parameter(a9);
  ACFUCommon::Parameter::~Parameter(a10);
  _Unwind_Resume(a1);
}

__CFDictionary *ACFUCommon::PersonalizeParams::copyParametersDictionary(ACFUCommon::PersonalizeParams *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    for (i = *(this + 23); i != *(this + 24); ++i)
    {
      location = CFStringFind(*i, @",ChipID", 0).location;
      if (location != -1)
      {
        if (*(this + 16) == 1)
        {
          v5 = *i;
          v6 = *(this + 1);
LABEL_46:
          CFDictionaryAddValue(Mutable, v5, v6);
          continue;
        }

        LogInstance = ACFULogging::getLogInstance(location);
        ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: Missing ChipID\n", v8, v9, v10, v11, v12, "ACFUCommon");
      }

      v13 = CFStringFind(*i, @",BoardID", 0).location;
      if (v13 != -1)
      {
        if (*(this + 32) == 1)
        {
          v5 = *i;
          v6 = *(this + 3);
          goto LABEL_46;
        }

        v14 = ACFULogging::getLogInstance(v13);
        ACFULogging::handleMessage(v14, 2u, "%s::%s: Missing BoardID\n", v15, v16, v17, v18, v19, "ACFUCommon");
      }

      v20 = CFStringFind(*i, @",SecurityDomain", 0).location;
      if (v20 != -1)
      {
        if (*(this + 144) == 1)
        {
          v5 = *i;
          v6 = *(this + 17);
          goto LABEL_46;
        }

        v21 = ACFULogging::getLogInstance(v20);
        ACFULogging::handleMessage(v21, 2u, "%s::%s: Missing SecurityDomain\n", v22, v23, v24, v25, v26, "ACFUCommon");
      }

      v27 = CFStringFind(*i, @",ECID", 0).location;
      if (v27 != -1)
      {
        if (*(this + 48) == 1)
        {
          v5 = *i;
          v6 = *(this + 5);
          goto LABEL_46;
        }

        v28 = ACFULogging::getLogInstance(v27);
        ACFULogging::handleMessage(v28, 2u, "%s::%s: Missing ECID\n", v29, v30, v31, v32, v33, "ACFUCommon");
      }

      v34 = CFStringFind(*i, @",ProductionMode", 0).location;
      if (v34 != -1)
      {
        if (*(this + 96) == 1)
        {
          v5 = *i;
          v6 = *(this + 11);
          goto LABEL_46;
        }

        v35 = ACFULogging::getLogInstance(v34);
        ACFULogging::handleMessage(v35, 2u, "%s::%s: Missing ProductionMode\n", v36, v37, v38, v39, v40, "ACFUCommon");
      }

      v41 = CFStringFind(*i, @",SecurityMode", 0).location;
      if (v41 != -1)
      {
        if (*(this + 112) == 1)
        {
          v5 = *i;
          v6 = *(this + 13);
          goto LABEL_46;
        }

        v42 = ACFULogging::getLogInstance(v41);
        ACFULogging::handleMessage(v42, 2u, "%s::%s: Missing SecurityMode\n", v43, v44, v45, v46, v47, "ACFUCommon");
      }

      v48 = CFStringFind(*i, @",UID_MODE", 0).location;
      if (v48 != -1)
      {
        if (*(this + 128) == 1)
        {
          v5 = *i;
          v6 = *(this + 15);
          goto LABEL_46;
        }

        v49 = ACFULogging::getLogInstance(v48);
        ACFULogging::handleMessage(v49, 2u, "%s::%s: Missing UID_MODE\n", v50, v51, v52, v53, v54, "ACFUCommon");
      }

      v55 = CFStringFind(*i, @",Nonce", 0).location;
      if (v55 != -1)
      {
        if (*(this + 64) == 1)
        {
          v5 = *i;
          v6 = *(this + 7);
          goto LABEL_46;
        }

        v56 = ACFULogging::getLogInstance(v55);
        ACFULogging::handleMessage(v56, 2u, "%s::%s: Missing NonceHash\n", v57, v58, v59, v60, v61, "ACFUCommon");
      }

      v62 = CFStringFind(*i, @",RestoreBootNonce", 0).location;
      if (v62 != -1)
      {
        if (*(this + 80) == 1)
        {
          v5 = *i;
          v6 = *(this + 9);
          goto LABEL_46;
        }

        v63 = ACFULogging::getLogInstance(v62);
        ACFULogging::handleMessage(v63, 2u, "%s::%s: Missing BootNonce\n", v64, v65, v66, v67, v68, "ACFUCommon");
      }

      v69 = CFStringFind(*i, @",ChipRev", 0).location;
      if (v69 != -1)
      {
        if (*(this + 176) == 1)
        {
          v5 = *i;
          v6 = *(this + 21);
          goto LABEL_46;
        }

        v70 = ACFULogging::getLogInstance(v69);
        ACFULogging::handleMessage(v70, 2u, "%s::%s: Missing ChipRev\n", v71, v72, v73, v74, v75, "ACFUCommon");
      }

      v76 = CFStringFind(*i, @",MinEpoch", 0).location;
      if (v76 != -1)
      {
        if (*(this + 160) != 1)
        {
          v77 = ACFULogging::getLogInstance(v76);
          ACFULogging::handleMessage(v77, 2u, "%s::%s: Missing MinEpoch\n", v78, v79, v80, v81, v82, "ACFUCommon");
          continue;
        }

        v5 = *i;
        v6 = *(this + 19);
        goto LABEL_46;
      }
    }
  }

  else
  {
    ACFUCommon::PersonalizeParams::copyParametersDictionary(0);
  }

  return Mutable;
}

uint64_t ACFUCommon::PersonalizeParams::hasAllRequiredParameters(ACFUCommon::PersonalizeParams *this)
{
  if (*(this + 16) == 1 && *(this + 32) == 1 && *(this + 48) == 1 && *(this + 80) == 1 && *(this + 64) == 1 && *(this + 96) == 1 && *(this + 112) == 1)
  {
    v1 = *(this + 144);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void ACFUCommon::PersonalizeParams::logParameters(CFDataRef *this)
{
  if (*(this + 16) == 1)
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 1, 0, __p);
    ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ChipID: 0x%s\n", v3, v4, v5, v6, v7, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 32) == 1)
  {
    v8 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 3, 0, __p);
    ACFULogging::handleMessage(v8, 0, "%s::%s: BoardID: 0x%s\n", v9, v10, v11, v12, v13, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 48) == 1)
  {
    v14 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 5, 0, __p);
    ACFULogging::handleMessage(v14, 0, "%s::%s: ECID: 0x%s\n", v15, v16, v17, v18, v19, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 80) == 1)
  {
    v20 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 9, 0, __p);
    ACFULogging::handleMessage(v20, 0, "%s::%s: Boot Nonce: 0x%s\n", v21, v22, v23, v24, v25, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 64) == 1)
  {
    v26 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 7, 1, __p);
    ACFULogging::handleMessage(v26, 0, "%s::%s: Boot Nonce Hash: 0x%s\n", v27, v28, v29, v30, v31, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 96) == 1)
  {
    v32 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 11, 0, __p);
    ACFULogging::handleMessage(v32, 0, "%s::%s: Production Mode: 0x%s\n", v33, v34, v35, v36, v37, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 112) == 1)
  {
    v38 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 13, 0, __p);
    ACFULogging::handleMessage(v38, 0, "%s::%s: Security Mode: 0x%s\n", v39, v40, v41, v42, v43, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 128) == 1)
  {
    v44 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 15, 0, __p);
    ACFULogging::handleMessage(v44, 0, "%s::%s: UID Mode: 0x%s\n", v45, v46, v47, v48, v49, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 144) == 1)
  {
    v50 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 17, 0, __p);
    ACFULogging::handleMessage(v50, 0, "%s::%s: Security Domain: 0x%s\n", v51, v52, v53, v54, v55, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 160) == 1)
  {
    v56 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 19, 0, __p);
    ACFULogging::handleMessage(v56, 0, "%s::%s: Minimum Epoch: 0x%s\n", v57, v58, v59, v60, v61, "ACFUCommon");
    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(this + 176) == 1)
  {
    v62 = ACFULogging::getLogInstance(this);
    ACFUCommon::Parameter::dataAsString(this + 21, 0, __p);
    ACFUCommon::PersonalizeParams::getPrettyChipRevision(this, &v74);
    ACFULogging::handleMessage(v62, 0, "%s::%s: Chip Revision: 0x%s (%s)\n", v63, v64, v65, v66, v67, "ACFUCommon");
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (v76 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v68 = ACFULogging::getLogInstance(this);
  ACFUCommon::PersonalizeParams::getFusingConfig(this, __p);
  ACFULogging::handleMessage(v68, 0, "%s::%s: Fusing Config: %s\n", v69, v70, v71, v72, v73, "ACFUCommon");
  if (v76 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2402BB7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::PersonalizeParams::getPrettyChipRevision(ACFUCommon::PersonalizeParams *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "Unknown");
  v11 = 0;
  DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned short>(this + 168, &v11);
  if (DataAs)
  {
    std::string::operator=(a2, (v11 >> 4) + 65);
    std::string::push_back(a2, v11 & 0xF | 0x30);
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(DataAs);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to retrieve chip revision value\n", v6, v7, v8, v9, v10, "ACFUCommon");
  }
}

void sub_2402BB8F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::PersonalizeParams::getFusingConfig(ACFUCommon::PersonalizeParams *this@<X0>, void *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(a2, "Unknown");
  v16 = 0;
  v15 = 0;
  if (*(this + 96) != 1 || *(this + 112) != 1 || *(this + 144) != 1)
  {
    return;
  }

  DataAs = ACFUCommon::Parameter::GetDataAsType<unsigned char>(this + 88, &v16 + 1);
  if ((DataAs & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(DataAs);
    v14 = "%s::%s: failed to retrieve production mode value\n";
LABEL_14:
    ACFULogging::handleMessage(LogInstance, 2u, v14, v9, v10, v11, v12, v13, "ACFUCommon");
    return;
  }

  v5 = ACFUCommon::Parameter::GetDataAsType<unsigned char>(this + 104, &v16);
  if ((v5 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    v14 = "%s::%s: failed to retrieve security mode value\n";
    goto LABEL_14;
  }

  v6 = ACFUCommon::Parameter::GetDataAsType<unsigned char>(this + 136, &v15);
  if ((v6 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v6);
    v14 = "%s::%s: failed to retrieve security domain value\n";
    goto LABEL_14;
  }

  v7 = (2 * v16) | (4 * HIBYTE(v16)) | v15;
  if (v7 <= 7 && ((0x8Bu >> v7) & 1) != 0)
  {
    MEMORY[0x245CBEB90](a2, off_278C9FDB0[v7]);
  }
}

void sub_2402BBA38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ACFUCommon::PersonalizeParams::~PersonalizeParams(ACFUCommon::PersonalizeParams *this)
{
  *this = &unk_28522EC58;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  ACFUCommon::Parameter::~Parameter(this + 21);
  ACFUCommon::Parameter::~Parameter(this + 19);
  ACFUCommon::Parameter::~Parameter(this + 17);
  ACFUCommon::Parameter::~Parameter(this + 15);
  ACFUCommon::Parameter::~Parameter(this + 13);
  ACFUCommon::Parameter::~Parameter(this + 11);
  ACFUCommon::Parameter::~Parameter(this + 9);
  ACFUCommon::Parameter::~Parameter(this + 7);
  ACFUCommon::Parameter::~Parameter(this + 5);
  ACFUCommon::Parameter::~Parameter(this + 3);
  ACFUCommon::Parameter::~Parameter(this + 1);
}

{
  ACFUCommon::PersonalizeParams::~PersonalizeParams(this);

  operator delete(v1);
}

uint64_t ACFUCommon::createURLByAppendingStrings(ACFUCommon *this, const __CFString *a2, const __CFString *a3)
{
  if (!this || !a2)
  {
    ACFUCommon::createURLByAppendingStrings(this);
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    ACFUCommon::createURLByAppendingStrings(0);
    return 0;
  }

  v7 = Mutable;
  CFArrayAppendValue(Mutable, this);
  CFArrayAppendValue(v7, a2);
  v8 = CFStringCreateByCombiningStrings(v5, v7, &stru_28522FD70);
  if (v8)
  {
    v9 = v8;
    URLFromString = AMSupportCreateURLFromString();
    if (!URLFromString)
    {
      ACFUCommon::createURLByAppendingStrings(0);
    }

    CFRelease(v9);
  }

  else
  {
    ACFUCommon::createURLByAppendingStrings(0);
    URLFromString = 0;
  }

  CFRelease(v7);
  return URLFromString;
}

uint64_t ACFUCommon::createFileDatafromFilePath(ACFUCommon *this, const __CFString *a2)
{
  if (!this)
  {
    ACFUCommon::createFileDatafromFilePath(0);
    return 0;
  }

  v2 = *MEMORY[0x277CBECE8];
  URLFromString = AMSupportCreateURLFromString();
  if (!URLFromString)
  {
    ACFUCommon::createFileDatafromFilePath(0);
    return 0;
  }

  v4 = URLFromString;
  DataFromFileURL = AMSupportCreateDataFromFileURL();
  if (DataFromFileURL)
  {
    ACFUCommon::createFileDatafromFilePath(DataFromFileURL);
  }

  CFRelease(v4);
  return 0;
}

__CFData *ACFUCommon::createMutableFileDatafromFilePath(ACFUCommon *this, const __CFString *a2)
{
  v2 = MEMORY[0x28223BE20](this, a2);
  v25 = *MEMORY[0x277D85DE8];
  bzero(__ptr, 0x1000uLL);
  if (!v2)
  {
    ACFUCommon::createMutableFileDatafromFilePath(v3);
LABEL_22:
    Mutable = 0;
    goto LABEL_16;
  }

  v4 = *MEMORY[0x277CBECE8];
  URLFromString = AMSupportCreateURLFromString();
  if (!URLFromString)
  {
    ACFUCommon::createMutableFileDatafromFilePath(0);
    goto LABEL_22;
  }

  v7 = URLFromString;
  FileSize = ACFUCommon::getFileSize(URLFromString, v6);
  if (FileSize)
  {
    v9 = FileSize;
    bzero(v24, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(v7, 1u, v24, 1024))
    {
      v10 = fopen(v24, "r");
      if (v10)
      {
        v11 = v10;
        Mutable = CFDataCreateMutable(v4, 0);
        if (Mutable)
        {
          while (1)
          {
            v13 = v9 >= 0x1000 ? 4096 : v9;
            v14 = fread(__ptr, 1uLL, v13, v11);
            if (v13 != v14)
            {
              break;
            }

            if (feof(v11) || ferror(v11) < 0)
            {
              ACFUCommon::createMutableFileDatafromFilePath(v11);
              goto LABEL_19;
            }

            CFDataAppendBytes(Mutable, __ptr, v13);
            v9 -= v13;
            if (!v9)
            {
              goto LABEL_14;
            }
          }

          LogInstance = ACFULogging::getLogInstance(v14);
          ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: read less bytes than required (read: %zu, required: %zu)\n", v18, v19, v20, v21, v22, "ACFUCommon");
LABEL_19:
          CFRelease(Mutable);
          Mutable = 0;
        }

        else
        {
          ACFUCommon::createMutableFileDatafromFilePath(0);
        }

LABEL_14:
        fclose(v11);
        goto LABEL_15;
      }
    }

    else
    {
      ACFUCommon::createMutableFileDatafromFilePath(v24);
    }

    ACFUCommon::createMutableFileDatafromFilePath(v10);
  }

  else
  {
    ACFUCommon::createMutableFileDatafromFilePath(0);
  }

  Mutable = 0;
LABEL_15:
  CFRelease(v7);
LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return Mutable;
}

void ACFUCommon::parseDebugArgs(ACFUCommon *this@<X0>, const __CFDictionary *a2@<X1>, _DWORD *a3@<X8>)
{
  v71 = *MEMORY[0x277D85DE8];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *buffer = 0u;
  v40 = 0u;
  if (!this)
  {
    ACFUCommon::parseDebugArgs(0);
LABEL_29:
    v23 = 0;
    v24 = 4006;
    goto LABEL_30;
  }

  if (!a2)
  {
    ACFUCommon::parseDebugArgs(this);
    v23 = 0;
    v24 = 4005;
    goto LABEL_30;
  }

  v6 = this;
  Value = CFDictionaryGetValue(this, @"Options");
  LogInstance = ACFULogging::getLogInstance(Value);
  if (Value)
  {
    v14 = "%s::%s: Found updater options in dictionary\n";
  }

  else
  {
    v14 = "%s::%s: Assuming updater options dictionary is being passed\n";
  }

  if (Value)
  {
    v6 = Value;
  }

  ACFULogging::handleMessage(LogInstance, 3u, v14, v9, v10, v11, v12, v13, "ACFUCommon");
  TypeID = CFDictionaryGetTypeID();
  v16 = CFGetTypeID(v6);
  if (TypeID != v16)
  {
    ACFUCommon::parseDebugArgs(v16);
LABEL_32:
    v23 = 0;
    v24 = 4002;
    goto LABEL_30;
  }

  v17 = CFDictionaryGetValue(v6, @"ACFUDebugArgs");
  if (!v17)
  {
    ACFUCommon::parseDebugArgs(0);
    goto LABEL_29;
  }

  v18 = v17;
  v19 = CFStringGetTypeID();
  v20 = CFGetTypeID(v18);
  if (v19 != v20)
  {
    ACFUCommon::parseDebugArgs(v20);
    goto LABEL_32;
  }

  CString = CFStringGetCString(v18, buffer, 512, 0x8000100u);
  if (CString)
  {
    __stringp = buffer;
    v22 = strsep(&__stringp, " ");
    if (v22)
    {
      v23 = 0;
      v24 = 4006;
      while (1)
      {
        v25 = strlen(a2);
        v26 = strncmp(v22, a2, v25);
        if (!v26)
        {
          v27 = v22[v25] == 61;
          v28 = ACFULogging::getLogInstance(v26);
          if (!v27)
          {
            ACFULogging::handleMessage(v28, 2u, "%s::%s: Invalid token: %s\n", v29, v30, v31, v32, v33, "ACFUCommon");
            goto LABEL_24;
          }

          ACFULogging::handleMessage(v28, 3u, "%s::%s: Token: %s\n", v29, v30, v31, v32, v33, "ACFUCommon");
          v34 = strchr(v22, 61);
          if (!v34)
          {
            ACFUCommon::parseDebugArgs(a2);
            goto LABEL_24;
          }

          std::string::basic_string[abi:ne200100]<0>(&__str, v34 + 1);
          v35 = std::stoul(&__str, 0, 0);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v24 = 0;
          v23 = v35;
        }

        v22 = strsep(&__stringp, " ");
        if (!v22)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_29;
  }

  ACFUCommon::parseDebugArgs(CString);
  v23 = 0;
LABEL_24:
  v24 = 4007;
LABEL_30:
  *a3 = v23;
  a3[1] = v24;
  v36 = *MEMORY[0x277D85DE8];
}

void ACFUCommon::stringFromCFString(const __CFString *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(this, SystemEncoding);
    if (CStringPtr)
    {
      v7 = CStringPtr;
      v8 = 0;
    }

    else
    {
      Length = CFStringGetLength(this);
      v10 = malloc(Length + 1);
      v8 = v10;
      v7 = "";
      if (v10)
      {
        bzero(v10, Length + 1);
        v11 = CFStringGetSystemEncoding();
        if (CFStringGetCString(this, v8, Length + 1, v11))
        {
          v7 = v8;
        }
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, v7);
  *a2 = v12;
  a2[2] = v13;
  if (v8)
  {
    free(v8);
  }
}

uint64_t ACFUCommon::hexStringFromCFData(ACFUCommon *this, const __CFData *a2, int a3, int a4)
{
  v5 = a2;
  TypeID = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v31);
  if (!this || (v8 = CFGetTypeID(this), TypeID = CFDataGetTypeID(), v8 != TypeID))
  {
    LogInstance = ACFULogging::getLogInstance(TypeID);
    v29 = "%s::%s: bad data\n";
LABEL_31:
    ACFULogging::handleMessage(LogInstance, 2u, v29, v24, v25, v26, v27, v28, "ACFUCommon");
    goto LABEL_25;
  }

  Length = CFDataGetLength(this);
  v10 = Length;
  if (Length < 0)
  {
    LogInstance = ACFULogging::getLogInstance(Length);
    v29 = "%s::%s: failed to get length\n";
    goto LABEL_31;
  }

  if (!Length)
  {
    goto LABEL_25;
  }

  BytePtr = CFDataGetBytePtr(this);
  if (!BytePtr)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v29 = "%s::%s: failed to get byte ptr\n";
    goto LABEL_31;
  }

  v12 = v10 - 1;
  if (v5)
  {
    if (v12 < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (a4)
  {
    v14 = std::uppercase[abi:ne200100];
  }

  else
  {
    v14 = std::nouppercase[abi:ne200100];
  }

  if (v5)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  do
  {
    v14(&v32 + *(v32 - 24));
    v16 = v32;
    v17 = &v32 + *(v32 - 24);
    if (*(v17 + 36) == -1)
    {
      std::ios_base::getloc((&v32 + *(v32 - 24)));
      v18 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
      (v18->__vftable[2].~facet_0)(v18, 32);
      std::locale::~locale(&v37);
      v16 = v32;
    }

    *(v17 + 36) = 48;
    *(&v34[1].__locale_ + *(v16 - 24)) = 2;
    *(&v34[-1].__locale_ + *(v16 - 24)) = *(&v34[-1].__locale_ + *(v16 - 24)) & 0xFFFFFFB5 | 8;
    MEMORY[0x245CBEC00](&v32, BytePtr[v13]);
    if (a3)
    {
      v19 = v13 < 1;
      if (!v5)
      {
        v19 = v10 - 1 <= v13;
      }

      if (!v19)
      {
        LOBYTE(v37.__locale_) = 32;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, &v37, 1);
      }
    }

    v13 += v15;
    v20 = v13 >= 0;
    if (!v5)
    {
      v20 = v10 > v13;
    }
  }

  while (v20);
LABEL_25:
  std::stringbuf::str();
  v31[0] = *MEMORY[0x277D82818];
  v21 = *(MEMORY[0x277D82818] + 72);
  *(v31 + *(v31[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v32 = v21;
  v33 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v34);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CBED50](&v36);
}

void sub_2402BC700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a14, MEMORY[0x277D82818]);
  MEMORY[0x245CBED50](&a30);
  _Unwind_Resume(a1);
}

void ACFUCommon::cfTypeDescription(ACFUCommon *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = CFCopyTypeIDDescription(this);
  v7 = v6;
  if (!v6)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to copy type description for type ID %lu\n", v16, v17, v18, v19, v20, "ACFUCommon");
    return;
  }

  if (!a2)
  {
    CFRetain(v6);
    v8 = v7;
    goto LABEL_6;
  }

  v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@ (%lu)", v6, this);
  if (v8)
  {
LABEL_6:
    ACFUCommon::stringFromCFString(v8, &v21);
    *a3 = v21;
    a3[2] = v22;
    CFRelease(v8);
    goto LABEL_7;
  }

  v9 = ACFULogging::getLogInstance(0);
  ACFULogging::handleMessage(v9, 2u, "%s::%s: failed to create full description for type ID %lu\n", v10, v11, v12, v13, v14, "ACFUCommon");
LABEL_7:
  CFRelease(v7);
}

void sub_2402BC874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUCommon::doesPathExist(ACFUCommon *this, const __CFURL *a2)
{
  v21 = 0;
  v3 = MEMORY[0x245CBE660](this, &v21);
  if (v3)
  {
    LogInstance = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to determine if url exists (%u)\n", v5, v6, v7, v8, v9, "ACFUCommon");
    v11 = ACFULogging::getLogInstance(v10);
    std::string::basic_string[abi:ne200100]<0>(&v17, "ACFUCommon");
    v12 = std::string::append(&v17, "::");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v18, "doesPathExist");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(v11, &v19, 0, "Path URL: ", this);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return v21 == 1;
}

void sub_2402BC9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL ACFUCommon::isPathWritable(const __CFString *this, const __CFString *a2)
{
  ACFUCommon::stringFromCFString(this, v4);
  if (v5 < 0)
  {
    if (v4[1])
    {
      v2 = access(v4[0], 2) == 0;
    }

    else
    {
      v2 = 0;
    }

    operator delete(v4[0]);
  }

  else
  {
    return v5 && access(v4, 2) == 0;
  }

  return v2;
}

uint64_t ACFUCommon::removeFileWithURL(ACFUCommon *this, const __CFURL *a2)
{
  if (this && (v2 = this, v3 = CFURLGetTypeID(), this = CFGetTypeID(v2), v3 == this))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    std::string::basic_string[abi:ne200100]<0>(&v23, "ACFUCommon");
    v5 = std::string::append(&v23, "::");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v24, "removeFileWithURL");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType(LogInstance, &v25, 0, "Removing file at URL: ", v2);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v9 = AMSupportRemoveFile();
    if (!v9)
    {
      return 1;
    }

    v10 = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(v10, 2u, "%s::%s: failed to remove file (%u)\n", v11, v12, v13, v14, v15, "ACFUCommon");
  }

  else
  {
    v16 = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(v16, 2u, "%s::%s: failed due to unexpected data type\n", v17, v18, v19, v20, v21, "ACFUCommon");
  }

  return 0;
}

void sub_2402BCBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ACFUCommon::createSymlink(__CFString *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  v63[2] = *MEMORY[0x277D85DE8];
  memset(&v62, 0, sizeof(v62));
  memset(&v61, 0, sizeof(v61));
  memset(&v60, 0, sizeof(v60));
  v58 = 0;
  v59 = 0uLL;
  memset(&v57, 0, sizeof(v57));
  if (this && a2 && a3)
  {
    ACFUCommon::stringFromCFString(this, &v56);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    v62 = v56;
    ACFUCommon::stringFromCFString(a2, &v56);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v61 = v56;
    ACFUCommon::stringFromCFString(a3, &v56);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    v60 = v56;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v62.__r_.__value_.__l.__size_;
    }

    v7 = &v56;
    std::string::basic_string[abi:ne200100](&v56, size + 1);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v56.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v62;
      }

      else
      {
        v8 = v62.__r_.__value_.__r.__words[0];
      }

      memmove(v7, v8, size);
    }

    *(&v7->__r_.__value_.__l.__data_ + size) = 47;
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v60;
    }

    else
    {
      v9 = v60.__r_.__value_.__r.__words[0];
    }

    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10 = v60.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v56, v9, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v63[0] = v11->__r_.__value_.__l.__size_;
    *(v63 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    v58 = v12;
    *&v59 = v63[0];
    *(&v59 + 7) = *(v63 + 7);
    HIBYTE(v59) = v13;
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    LogInstance = ACFULogging::getLogInstance(v11);
    ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: creating symlink from %s -> %s\n", v15, v16, v17, v18, v19, "ACFUCommon");
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v62;
    }

    else
    {
      v20 = v62.__r_.__value_.__r.__words[0];
    }

    if (mkdir(v20, 0x1FFu))
    {
      v21 = __error();
      if (*v21 != 17)
      {
        v29 = ACFULogging::getLogInstance(v21);
        v52 = *__error();
        v30 = "%s::%s: failed to create directory: %d\n";
        goto LABEL_80;
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v62;
      }

      else
      {
        v22 = v62.__r_.__value_.__r.__words[0];
      }

      v23 = stat(v22, &v57);
      if (v23)
      {
        v29 = ACFULogging::getLogInstance(v23);
        v53 = *__error();
        v30 = "%s::%s: failed to get stats for path: %d\n";
        goto LABEL_80;
      }

      if ((v57.st_mode & 0x4000) == 0)
      {
        v29 = ACFULogging::getLogInstance(v23);
        v30 = "%s::%s: path exists but is not a directory: 0x%x\n";
LABEL_80:
        ACFULogging::handleMessage(v29, 2u, v30, v24, v25, v26, v27, v28, "ACFUCommon");
        goto LABEL_81;
      }
    }

    else
    {
      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v62;
      }

      else
      {
        v31 = v62.__r_.__value_.__r.__words[0];
      }

      v32 = chmod(v31, 0x1FFu);
      if (v32)
      {
        v29 = ACFULogging::getLogInstance(v32);
        v54 = *__error();
        v30 = "%s::%s: failed to change directory permissions: %d\n";
        goto LABEL_80;
      }
    }

    if (v59 >= 0)
    {
      v33 = &v58;
    }

    else
    {
      v33 = v58;
    }

    v34 = lstat(v33, &v57);
    if (v34)
    {
      v35 = __error();
      if (*v35 != 2)
      {
        v29 = ACFULogging::getLogInstance(v35);
        v36 = *__error();
        v30 = "%s::%s: failed to get stats for symlink name: %d\n";
        goto LABEL_80;
      }
    }

    else
    {
      if ((v57.st_mode & 0xA000) == 0)
      {
        v29 = ACFULogging::getLogInstance(v34);
        v30 = "%s::%s: symlink name exists but is not a symlink: 0x%x\n";
        goto LABEL_80;
      }

      if (v59 >= 0)
      {
        v37 = &v58;
      }

      else
      {
        v37 = v58;
      }

      v38 = unlink(v37);
      if (v38)
      {
        v29 = ACFULogging::getLogInstance(v38);
        v55 = *__error();
        v30 = "%s::%s: failed to remove existing symlink: %d\n";
        goto LABEL_80;
      }
    }

    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v61;
    }

    else
    {
      v39 = v61.__r_.__value_.__r.__words[0];
    }

    if (v59 >= 0)
    {
      v40 = &v58;
    }

    else
    {
      v40 = v58;
    }

    v41 = symlink(v39, v40);
    if (!v41)
    {
      v42 = 1;
      goto LABEL_64;
    }

    v29 = ACFULogging::getLogInstance(v41);
    v51 = *__error();
    v30 = "%s::%s: failed to create symlink: %d\n";
    goto LABEL_80;
  }

  v45 = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(v45, 2u, "%s::%s: bad input parameters\n", v46, v47, v48, v49, v50, "ACFUCommon");
LABEL_81:
  v42 = 0;
LABEL_64:
  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

void sub_2402BD104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 177) < 0)
  {
    operator delete(*(v19 - 200));
  }

  if (*(v19 - 153) < 0)
  {
    operator delete(*(v19 - 176));
  }

  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *std::vector<__CFString const*>::__init_with_size[abi:ne200100]<__CFString const**,__CFString const**>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<__CFString const*>::__vallocate[abi:ne200100](result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_2402BD328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<__CFString const*>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<ACFURTKitNVRMGenerator::RTKitNVRMVariable>::__throw_length_error[abi:ne200100]();
  }

  result = std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *std::__allocate_at_least[abi:ne200100]<std::allocator<__CFString const*>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new(8 * a2);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

void ACFUTimer::create(id a1@<X1>, unsigned int a2@<W0>, void *a3@<X8>)
{
  v5 = a1;
  v6 = operator new(0x20uLL);
  v6[2] = 0;
  v6[3] = 0;
  *v6 = &unk_28522ECF8;
  v6[1] = 0;
  *(v6 + 12) = 0;
  *a3 = v6;
  if ((ACFUTimer::init(v6, a2, v5) & 1) == 0)
  {
    *a3 = 0;
    v7 = (*(*v6 + 8))(v6);
    LogInstance = ACFULogging::getLogInstance(v7);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: failed to init timer object\n", v9, v10, v11, v12, v13, "ACFUTimer");
  }
}

void sub_2402BD524(_Unwind_Exception *a1)
{
  *v2 = 0;

  _Unwind_Resume(a1);
}

uint64_t ACFUTimer::init(uint64_t a1, unsigned int a2, id a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2)
  {
    LogInstance = ACFULogging::getLogInstance(v5);
    v25 = "%s::%s: invalid timeout value\n";
LABEL_11:
    ACFULogging::handleMessage(LogInstance, 2u, v25, v20, v21, v22, v23, v24, "ACFUTimer");
    v17 = 0;
    goto LABEL_6;
  }

  if (!v5)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    v25 = "%s::%s: invalid timeout callback\n";
    goto LABEL_11;
  }

  v7 = dispatch_queue_create("com.apple.acfu.timer", 0);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  v10 = *(a1 + 16);
  if (!v10)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    v25 = "%s::%s: failed to create dispatch queue\n";
    goto LABEL_11;
  }

  v11 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v10);
  v12 = *(a1 + 8);
  *(a1 + 8) = v11;

  v14 = *(a1 + 8);
  if (!v14)
  {
    LogInstance = ACFULogging::getLogInstance(v13);
    v25 = "%s::%s: failed to create dispatch timer object\n";
    goto LABEL_11;
  }

  v15 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0x1312D00uLL);
  v16 = *(a1 + 8);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3254779904;
  handler[2] = ___ZN9ACFUTimer4initEjU13block_pointerFvvE_block_invoke;
  handler[3] = &__block_descriptor_48_ea8_32bs_e5_v8__0l;
  v28 = a1;
  v27 = v6;
  dispatch_source_set_event_handler(v16, handler);

  v17 = 1;
LABEL_6:

  return v17;
}

uint64_t ___ZN9ACFUTimer4initEjU13block_pointerFvvE_block_invoke(ACFULogging *a1)
{
  v2 = *(a1 + 5);
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: timer fired\n", v4, v5, v6, v7, v8, "ACFUTimer");
  *(v2 + 24) = 258;
  dispatch_source_cancel(*(v2 + 8));
  v9 = *(*(a1 + 4) + 16);

  return v9();
}

uint64_t ACFUTimer::startOnQueue(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[2]);
  if (this[1])
  {
    v3 = *(this + 24);
    LogInstance = ACFULogging::getLogInstance(v2);
    if (!v3)
    {
      ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: starting timer\n", v5, v6, v7, v8, v9, "ACFUTimer");
      dispatch_resume(this[1]);
      result = 1;
      *(this + 12) = 1;
      return result;
    }

    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: timer is already running\n", v5, v6, v7, v8, v9, "ACFUTimer");
  }

  else
  {
    ACFUTimer::startOnQueue(v2);
  }

  return 0;
}

uint64_t ACFUTimer::start(ACFUTimer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(this + 2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3254779904;
  v4[2] = ___ZN9ACFUTimer5startEv_block_invoke;
  v4[3] = &__block_descriptor_48_ea8_32r_e5_v8__0l;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZN9ACFUTimer5startEv_block_invoke(uint64_t a1)
{
  result = ACFUTimer::startOnQueue(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void ACFUTimer::stopOnQueue(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[2]);
  if (*(this + 24) == 1)
  {
    LogInstance = ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage(LogInstance, 3u, "%s::%s: stopping timer\n", v4, v5, v6, v7, v8, "ACFUTimer");
    dispatch_source_cancel(this[1]);
  }

  *(this + 24) = 0;
}

void ACFUTimer::stop(ACFUTimer *this)
{
  v1 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN9ACFUTimer4stopEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v1, block);
}

uint64_t ACFUTimer::hasFired(ACFUTimer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(this + 2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3254779904;
  v4[2] = ___ZN9ACFUTimer8hasFiredEv_block_invoke;
  v4[3] = &__block_descriptor_48_ea8_32r_e5_v8__0l;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ACFUTimer::~ACFUTimer(ACFUTimer *this)
{
  *this = &unk_28522ECF8;
  v2 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN9ACFUTimer4stopEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

{
  ACFUTimer::~ACFUTimer(this);

  operator delete(v1);
}

void ACFUFile::ACFUFile(ACFUFile *this)
{
  *this = &unk_28522ED28;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 32) = 1;
}

void ACFUFile::fileVersionLog(ACFUFile *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  v1 = (*(*this + 96))(this);
  if (v1)
  {
    v2 = v1;
    BytePtr = CFDataGetBytePtr(v1);
    Length = CFDataGetLength(v2);
    if (Length > 0x7F)
    {
      ACFUFile::fileVersionLog(Length);
    }

    else
    {
      if (Length)
      {
        v5 = v14;
        do
        {
          v6 = *BytePtr++;
          *v5++ = v6;
          Length = (Length - 1);
        }

        while (Length);
      }

      HIBYTE(v15) = 0;
      LogInstance = ACFULogging::getLogInstance(Length);
      ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Firmware Version: %s\n", v8, v9, v10, v11, v12, "ACFUFile");
    }

    CFRelease(v2);
  }

  else
  {
    ACFUFile::fileVersionLog(0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t ACFUFile::saveToPath(ACFUFile *this, const __CFURL *a2)
{
  if (!a2)
  {
    ACFUFile::saveToPath(this);
    return 0;
  }

  if (!*(this + 3))
  {
    ACFUFile::saveToPath(this);
    return 0;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    ACFUFile::saveToPath(0);
    return 0;
  }

  isOptimized = ACFUDataContainer::isOptimized(v3);
  if (isOptimized)
  {
    ACFUFile::saveToPath(isOptimized);
    return 0;
  }

  v6 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x277CBECE8], a2, *(this + 3), 0);
  if (!v6)
  {
    ACFUFile::saveToPath(0);
    return 0;
  }

  v8 = v6;
  if (!ACFUCommon::doesPathExist(v6, v7))
  {
    v9 = MEMORY[0x245CBE680](v8);
    if (v9)
    {
      ACFUFile::saveToPath(v9);
      goto LABEL_26;
    }
  }

  if (!ACFUDataContainer::getData(*(this + 1)))
  {
    ACFUFile::saveToPath(0);
LABEL_26:
    v22 = 0;
    goto LABEL_14;
  }

  v10 = AMSupportWriteDataToFileURL();
  if (v10)
  {
    ACFUFile::saveToPath(v10);
    goto LABEL_26;
  }

  Length = ACFUDataContainer::getLength(*(this + 1));
  FileSize = ACFUCommon::getFileSize(v8, v12);
  LogInstance = ACFULogging::getLogInstance(FileSize);
  v15 = CFURLGetString(v8);
  ACFUCommon::stringFromCFString(v15, &__p);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: Wrote %zu of %zu bytes to %s\n", v16, v17, v18, v19, v20, "ACFUFile");
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (Length != FileSize)
  {
    ACFUFile::saveToPath(v21);
    goto LABEL_26;
  }

  v22 = 1;
LABEL_14:
  CFRelease(v8);
  return v22;
}

void sub_2402BDEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ACFUFile::~ACFUFile(ACFUFile *this)
{
  *this = &unk_28522ED28;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, 0);
}

uint64_t ACFUFile::init(ACFUDataContainer **this, const __CFData *a2)
{
  if (!this[3])
  {
    ACFUFile::init(this);
    return 0;
  }

  if (!a2)
  {
    ACFUFile::init(this);
    return 0;
  }

  TypeID = CFDataGetTypeID();
  v5 = CFGetTypeID(a2);
  if (TypeID != v5)
  {
    ACFUFile::init(v5);
    return 0;
  }

  ACFUDataContainer::create(a2, &v10);
  v6 = v10;
  v10 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, v6);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    ACFUDataContainer::~ACFUDataContainer(v7);
    operator delete(v8);
  }

  if (!this[1])
  {
    ACFUFile::init(v7);
    return 0;
  }

  return 1;
}

uint64_t ACFUFile::init(ACFUDataContainer **this, __CFData *a2)
{
  if (!this[3])
  {
    ACFUFile::init(this);
    return 0;
  }

  if (!a2)
  {
    ACFUFile::init(this);
    return 0;
  }

  TypeID = CFDataGetTypeID();
  v5 = CFGetTypeID(a2);
  if (TypeID != v5)
  {
    ACFUFile::init(v5);
    return 0;
  }

  ACFUDataContainer::create(a2, &v10);
  v6 = v10;
  v10 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, v6);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    ACFUDataContainer::~ACFUDataContainer(v7);
    operator delete(v8);
  }

  if (!this[1])
  {
    ACFUFile::init(v7);
    return 0;
  }

  return 1;
}

BOOL ACFUFile::init(ACFUDataContainer **this, const __CFString *a2, const __CFString *a3)
{
  if (!a2)
  {
    ACFUFile::init(this);
    return 0;
  }

  v4 = this[3];
  if (!v4)
  {
    ACFUFile::init(this);
    return 0;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@/%@", a2, v4);
  if (!v6)
  {
    ACFUFile::init(0);
    return 0;
  }

  v7 = v6;
  ACFUDataContainer::create(v6, a3, &v14);
  v8 = v14;
  v14 = 0;
  std::unique_ptr<ACFUDataContainer>::reset[abi:ne200100](this + 1, v8);
  v9 = v14;
  v14 = 0;
  if (v9)
  {
    ACFUDataContainer::~ACFUDataContainer(v9);
    operator delete(v10);
  }

  v11 = this[1];
  v12 = v11 != 0;
  if (!v11)
  {
    ACFUFile::init(v9);
  }

  CFRelease(v7);
  return v12;
}

void ACFUTrace::ACFUTrace(ACFUTrace *this)
{
  *(this + 5) = 0;
  *this = 0;
}

{
  *(this + 5) = 0;
  *this = 0;
}

uint64_t *ACFUTrace::getTrace(ACFUTrace *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    ACFUTrace::getTrace();
  }

  return &qword_2814622B0;
}

uint64_t ACFUTrace::init(uint64_t this, int a2, int a3, int a4, char a5)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 8) = a4;
  *(this + 12) = a5;
  return this;
}

void ACFUFirmware::ACFUFirmware(ACFUFirmware *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_28522EDB0;
  *(this + 1) = this + 16;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
}

uint64_t ACFUFirmware::copyFWContainer(ACFUFirmware *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(*v2 + 40);

    return v3();
  }

  else
  {
    ACFUFirmware::copyFWContainer(v2);
    return 0;
  }
}

__CFData *ACFUFirmware::copyFWContainerFromOffset(ACFUFirmware *this, unsigned int a2, unint64_t a3)
{
  v4 = *(this + 4);
  if (v4)
  {

    return ACFUFile::copyFirmwareContainerFromOffset(v4, a2, a3);
  }

  else
  {
    ACFUFirmware::copyFWContainerFromOffset(v4);
    return 0;
  }
}

ACFUFile *ACFUFirmware::isFWContainerMutable(ACFUFirmware *this)
{
  result = *(this + 4);
  if (result)
  {
    return ACFUFile::isFirmwareContainerMutable(result);
  }

  return result;
}

uint64_t ACFUFirmware::copyFWDataByTag(ACFUFirmware *this, const __CFString *a2)
{
  v12 = a2;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = this + 16;
    v4 = *(this + 2);
    if (v4)
    {
      v5 = this + 8;
      v6 = v3;
      do
      {
        v7 = *(v4 + 4);
        v8 = v7 >= a2;
        v9 = v7 < a2;
        if (v8)
        {
          v6 = v4;
        }

        v4 = *&v4[8 * v9];
      }

      while (v4);
      if (v6 != v3 && *(v6 + 4) <= a2)
      {
        v11 = std::map<__CFString const*,std::string>::at(v5, &v12);
        return (**v2)(v2, v11);
      }
    }
  }

  else
  {
    ACFUFirmware::copyFWDataByTag(this);
  }

  return 0;
}

void *std::map<__CFString const*,std::string>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ACFUFirmware::copyFWDataByFileName(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = **v2;

    return v3();
  }

  else
  {
    ACFUFirmware::copyFWDataByFileName(v2);
    return 0;
  }
}

void ACFUFirmware::copyFWDataRefByFileName(uint64_t a1@<X0>, ACFUDataContainer::DirectDataRef **a2@<X8>)
{
  *a2 = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(*v3 + 8))(&v13);
    v4 = v13;
    v13 = 0;
    std::unique_ptr<ACFUDataContainer::DirectDataRef>::reset[abi:ne200100](a2, v4);
    v5 = v13;
    v13 = 0;
    if (v5)
    {
      ACFUDataContainer::DirectDataRef::~DirectDataRef(v5);
      operator delete(v6);
    }
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: file not open\n", v8, v9, v10, v11, v12, "ACFUFirmware");
  }
}

const void *ACFUFirmware::getMeasureDataWithTag(CFDictionaryRef *this, const __CFString *a2)
{
  if (a2)
  {
    return CFDictionaryGetValue(this[5], a2);
  }

  else
  {
    return 0;
  }
}

uint64_t ACFUFirmware::saveFirmware(ACFUFirmware *this, const __CFURL *a2)
{
  if (*(this + 4))
  {
    v3 = *(this + 8);
    if (v3)
    {
      if (!ACFUCommon::doesPathExist(v3, a2) && (v4 = MEMORY[0x245CBE680](*(this + 8)), v4))
      {
        ACFUFirmware::saveFirmware(v4);
        return 1003;
      }

      else
      {
        v5 = ACFUFile::saveToPath(*(this + 4), *(this + 8));
        if (v5)
        {
          return 0;
        }

        else
        {
          ACFUFirmware::saveFirmware(v5);
          return 1004;
        }
      }
    }

    else
    {
      ACFUFirmware::saveFirmware(0);
      return 1014;
    }
  }

  else
  {
    ACFUFirmware::saveFirmware(this);
    return 1000;
  }
}

uint64_t ACFUFirmware::openFirmwareInRestoreOptions(const void **this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, this[9]);
  if (!Value)
  {
    v6 = 1001;
    v8 = "%s::%s: Manifest is not available\n";
LABEL_9:
    LogInstance = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(LogInstance, 2u, v8, v10, v11, v12, v13, v14, "ACFUFirmware");
    return v6;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  Value = CFDataGetTypeID();
  if (v5 != Value)
  {
    v6 = 4002;
    v8 = "%s::%s: Manifest is not present in expected data type\n";
    goto LABEL_9;
  }

  (*(*this + 9))(this, v4);
  Value = (*(*this + 8))(this);
  if ((Value & 1) == 0)
  {
    v6 = 1013;
    v8 = "%s::%s: Failed to measure firmware\n";
    goto LABEL_9;
  }

  return 0;
}

void ACFUFirmware::~ACFUFirmware(ACFUFirmware *this)
{
  *this = &unk_28522EDB0;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
    *(this + 6) = 0;
  }

  v3 = *(this + 8);
  if (v3)
  {
    CFRelease(v3);
    *(this + 8) = 0;
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
    *(this + 9) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
    *(this + 5) = 0;
  }

  v6 = *(this + 4);
  *(this + 4) = 0;
  if (v6)
  {
    (*(*v6 + 56))(v6);
  }

  std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::destroy(this + 8, *(this + 2));
}

uint64_t ACFUFirmware::getFileSizeByFileName(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: This function has not been implemented\n", v2, v3, v4, v5, v6, "ACFUFirmware");
  return 0;
}

CFDataRef ACFUFirmware::hashData(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v33 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_9:
    LogInstance = ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage(LogInstance, 2u, "%s::%s: no firmware file provided\n", v7, v8, v9, v10, v11, "ACFUFirmware");
LABEL_29:
    result = 0;
    goto LABEL_30;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!a3)
  {
    ACFUFirmware::hashData(a1);
    goto LABEL_29;
  }

  v5 = *(a1 + 56);
  switch(v5)
  {
    case 2:
      CC_SHA512_Init(&v30);
      break;
    case 1:
      CC_SHA384_Init(&v30);
      break;
    case 0:
      CC_SHA256_Init(&c);
      break;
  }

  v12 = 0;
  do
  {
    if (v3 >= 0x100000)
    {
      v13 = 0x100000;
    }

    else
    {
      v13 = v3;
    }

    v14 = (*(**(a1 + 32) + 8))(md);
    v15 = *md;
    if (!*md)
    {
      v23 = ACFULogging::getLogInstance(v14);
      ACFULogging::handleMessage(v23, 2u, "%s::%s: failed to obtain file data\n", v24, v25, v26, v27, v28, "ACFUFirmware");
      goto LABEL_29;
    }

    v16 = *(a1 + 56);
    if (v16)
    {
      if (v16 == 1)
      {
        DataPtr = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
        CC_SHA384_Update(&v30, DataPtr, v13);
      }

      else if (v16 == 2)
      {
        v17 = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
        CC_SHA512_Update(&v30, v17, v13);
      }
    }

    else
    {
      v19 = ACFUDataContainer::DirectDataRef::getDataPtr(*md);
      CC_SHA256_Update(&c, v19, v13);
    }

    v12 += v13;
    v3 -= v13;
    ACFUDataContainer::DirectDataRef::~DirectDataRef(v15);
    operator delete(v20);
  }

  while (v3);
  v21 = *(a1 + 56);
  if (v21 == 2)
  {
    CC_SHA512_Final(md, &v30);
    result = CFDataCreate(*MEMORY[0x277CBECE8], md, 64);
  }

  else if (v21 == 1)
  {
    CC_SHA384_Final(md, &v30);
    result = CFDataCreate(*MEMORY[0x277CBECE8], md, 48);
  }

  else
  {
    if (v21)
    {
      goto LABEL_29;
    }

    CC_SHA256_Final(md, &c);
    result = CFDataCreate(*MEMORY[0x277CBECE8], md, 32);
  }

LABEL_30:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}