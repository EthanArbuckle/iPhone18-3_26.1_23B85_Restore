uint64_t (*pbkdf2(uint64_t (*result)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, char *a8, unsigned int a9, char *a10))(uint64_t, uint64_t, char *, uint64_t, char *)
{
  v16 = result;
  v17 = a9 / a2;
  v24 = a9 % a2;
  v18 = &a10[a2];
  if (a2 <= a9)
  {
    v25 = a2;
    v19 = 1;
    do
    {
      v26 = a8;
      v23 = a8;
      v20 = a2;
      v21 = v18;
      v22 = v17;
      result = F(v16, a2, a3, a4, __src, __n, a7, v19, v23, v18);
      v17 = v22;
      v18 = v21;
      a2 = v20;
      a8 = &v26[v25];
      ++v19;
    }

    while (v19 <= v17);
  }

  else
  {
    v19 = 1;
  }

  if (v24)
  {
    F(v16, a2, a3, a4, __src, __n, a7, v19, a10, v18);

    return memcpy(a8, a10, v24);
  }

  return result;
}

void *F(uint64_t (*a1)(uint64_t, uint64_t, char *, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unsigned int a7, int a8, void *a9, char *a10)
{
  v11 = __n;
  v16 = a2;
  v17 = a10;
  v18 = &a10[a2];
  memcpy(v18, __src, __n);
  v18[v11] = HIBYTE(a8);
  v18[v11 + 1] = BYTE2(a8);
  v18[v11 + 2] = BYTE1(a8);
  v18[v11 + 3] = a8;
  a1(a3, a4, v18, (v11 + 4), a10);
  v19 = v16;
  result = memcpy(a9, a10, v16);
  if (a7 >= 2)
  {
    v21 = 2;
    do
    {
      v22 = v18;
      result = a1(a3, a4, v17, a2, v18);
      if (a2)
      {
        v23 = v19;
        v24 = a9;
        v25 = v18;
        do
        {
          v26 = *v25++;
          *v24++ ^= v26;
          --v23;
        }

        while (v23);
      }

      ++v21;
      v18 = v17;
      v17 = v22;
    }

    while (v21 <= a7);
  }

  return result;
}

void SecKeyExchangeNodeCreateAsInitiator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 && a5 && a7)
  {
    if (a8)
    {
      operator new();
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1;
  __cxa_throw(exception, MEMORY[0x277D827C0], 0);
}

void sub_23D4D8AD8(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8A6CLL);
}

void SecKeyExchangeNodeCreateAsResponder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a5 && a6 && a7)
  {
    if (a8)
    {
      operator new();
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = 1;
  __cxa_throw(exception, MEMORY[0x277D827C0], 0);
}

void sub_23D4D8C6C(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8C00);
}

uint64_t SecKeyExchangeNodeRelease(SKE_Node *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  SKE_Node::~SKE_Node(a1);
  MEMORY[0x23EEE2E70](a1, 0x10F0C40FBEEA095);
  return 0;
}

void sub_23D4D8D4C(void *a1)
{
  MEMORY[0x23EEE2E70](v1, v2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8D18);
}

uint64_t SecKeyExchangeUpdate(SKE_Node *this, const __CFData *a2, const __CFData **a3, _DWORD *a4)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!this)
  {
    v10 = __cxa_allocate_exception(4uLL);
    *v10 = 1;
    __cxa_throw(v10, MEMORY[0x277D827C0], 0);
  }

  v7 = SKE_Node::update(this, a2);
  result = 0;
  *a3 = v7;
  *a4 = *(this + 23);
  return result;
}

void sub_23D4D8E18(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = *(v2 + 92);
  exception = __cxa_allocate_exception(4uLL);
  *exception = 0;
  __cxa_throw(exception, MEMORY[0x277D827C0], 0);
}

void sub_23D4D8E44(void *a1)
{
  __cxa_end_catch();
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8DC0);
}

uint64_t SecKeyExchangeCopyPeerName(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v7 = __cxa_allocate_exception(4uLL);
    *v7 = 1;
    __cxa_throw(v7, MEMORY[0x277D827C0], 0);
  }

  v3 = *(a1 + 32);
  *a2 = v3;
  if (!v3)
  {
    v4 = *(a1 + 24);
    *a3 = v4;
    CFRetain(v4);
  }

  return 0;
}

void sub_23D4D8EF4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8EA4);
}

uint64_t SecKeyExchangeCopyPeerCert(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v7 = __cxa_allocate_exception(4uLL);
    *v7 = 1;
    __cxa_throw(v7, MEMORY[0x277D827C0], 0);
  }

  v3 = *(a1 + 48);
  *a2 = v3;
  if (!v3)
  {
    v4 = *(a1 + 40);
    *a3 = v4;
    CFRetain(v4);
  }

  return 0;
}

void sub_23D4D8F8C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8F3CLL);
}

uint64_t SecKeyExchangeGetPeerCertStatus(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v6 = __cxa_allocate_exception(4uLL);
    *v6 = 1;
    __cxa_throw(v6, MEMORY[0x277D827C0], 0);
  }

  v3 = *(a1 + 56);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  *a3 = *(a1 + 52);
  return v3;
}

void sub_23D4D9028(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D8FD4);
}

uint64_t SecKeyExchangeNegotiationStatus(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v5 = __cxa_allocate_exception(4uLL);
    *v5 = 1;
    __cxa_throw(v5, MEMORY[0x277D827C0], 0);
  }

  result = 0;
  *a2 = *(a1 + 92);
  return result;
}

void sub_23D4D90B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D9060);
}

uint64_t SecKeyExchangeGetPeerSecTrust(uint64_t a1, _DWORD *a2, void *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v6 = __cxa_allocate_exception(4uLL);
    *v6 = 1;
    __cxa_throw(v6, MEMORY[0x277D827C0], 0);
  }

  v3 = *(a1 + 80);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  *a3 = *(a1 + 72);
  return v3;
}

void sub_23D4D914C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D90F8);
}

uint64_t SecKeyExchangeCopySharedSecret(SKE_Node *a1, unsigned int a2, CFDataRef *a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v7 = __cxa_allocate_exception(4uLL);
    *v7 = 1;
    __cxa_throw(v7, MEMORY[0x277D827C0], 0);
  }

  v4 = SKE_Node::sharedSecret(a1, a2);
  result = 0;
  *a3 = v4;
  return result;
}

void sub_23D4D91E0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D918CLL);
}

uint64_t SecKeyExchangeAbortSession(SKE_Node *a1, unsigned int a2, uint64_t *a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v7 = __cxa_allocate_exception(4uLL);
    *v7 = 1;
    __cxa_throw(v7, MEMORY[0x277D827C0], 0);
  }

  v4 = SKE_Node::abortSession(a1, a2);
  result = 0;
  *a3 = v4;
  return result;
}

void sub_23D4D9274(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D9220);
}

uint64_t SecKeyExchangeGetPeerAbortReason(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!a2 || !a3)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = 1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (!a1)
  {
    v6 = __cxa_allocate_exception(4uLL);
    *v6 = 1;
    __cxa_throw(v6, MEMORY[0x277D827C0], 0);
  }

  v3 = *(a1 + 64);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  *a3 = *(a1 + 60);
  return v3;
}

void sub_23D4D9310(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23D4D92BCLL);
}

uint64_t SKE_Node::getResponderIdentity(SKE_Node *this, const cssm_data *a2, const cssm_data *a3)
{
  v4 = *(this + 1);
  if (a2)
  {
    if (v4)
    {
      certificateRef = 0;
      v6 = SecIdentityCopyCertificate(v4, &certificateRef);
      if (v6)
      {
        SKE_Node::abortEmbeddedOS(this, v6, 5, 4);
      }

      v7 = SecCertificateCopySerialNumber(certificateRef);
      v8 = v7;
      v18.Length = 0;
      v18.Data = 0;
      if (v7)
      {
        v18.Data = CFDataGetBytePtr(v7);
        v18.Length = CFDataGetLength(v8);
      }

      if (skeCompareItemData(&v18, a3))
      {
        v9 = SecCertificateCopyIssuerSummary();
        v18.Length = 0;
        v18.Data = 0;
        if (v9)
        {
          Length = CFStringGetLength(v9);
          CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          operator new[]();
        }

        SKE_Node::abortEmbeddedOS(this, -50, 5, 4);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(certificateRef);
    }

    v14 = *(this + 24);
    v15 = *(this + 1);
    if ((v14 & 1) != 0 && (v14 & 2) == 0 && v15 || v15)
    {
      v16 = this;
      v17 = 2;
    }

    else
    {
      v16 = this;
      v17 = 3;
    }

    return SKE_Node::setRespType(v16, v17);
  }

  else
  {
    if (v4)
    {
      v11 = this;
      v12 = 4;
    }

    else
    {
      v11 = this;
      v12 = 5;
    }

    return SKE_Node::setRespType(v11, v12);
  }
}

void sub_23D4D95D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  __cxa_begin_catch(a1);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  __cxa_rethrow();
}

void SKE_Node::evaluatePeerCert(SKE_Node *this, const cssm_data *a2, CFTypeRef cf)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    Length = a2->Length;
    Data = a2->Data;
    v6 = SecCertificateCreateWithBytes();
    if (!v6)
    {
      SKE_Node::abortEmbeddedOS(this, -26275, 5, 4);
    }
  }

  else
  {
    v6 = cf;
    CFRetain(cf);
  }

  memcpy(__dst, &unk_23D4DD908, sizeof(__dst));
  memcpy(v24, &unk_23D4DDDC7, sizeof(v24));
  memcpy(v23, &unk_23D4DE1BE, sizeof(v23));
  v7 = SecCertificateCreateWithBytes();
  v8 = SecCertificateCreateWithBytes();
  v9 = SecCertificateCreateWithBytes();
  v10 = SecPolicyCreateiPhoneDeviceCertificate();
  values[0] = v6;
  values[1] = v9;
  values[2] = v8;
  v11 = *MEMORY[0x277CBECE8];
  v12 = CFArrayCreate(*MEMORY[0x277CBECE8], values, 3, 0);
  v21 = v7;
  v13 = CFArrayCreate(v11, &v21, 1, 0);
  trust = 0xAAAAAAAAAAAAAAAALL;
  v14 = SecTrustCreateWithCertificates(v12, v10, &trust);
  if (v14)
  {
    TrustResult = v14;
    goto LABEL_23;
  }

  result = -1431655766;
  TrustResult = SecTrustGetTrustResult(trust, &result);
  if (!TrustResult)
  {
    *(this + 13) = 3;
    if (result <= kSecTrustResultProceed)
    {
      if (result)
      {
        if (result != kSecTrustResultProceed)
        {
          goto LABEL_23;
        }

LABEL_15:
        *(this + 13) = 0;
        v16 = *(this + 5);
        if (v16)
        {
          CFRelease(v16);
        }

        *(this + 5) = v6;
        *(this + 12) = 0;
        *(this + 14) = 0;
        v17 = *(this + 9);
        if (v17)
        {
          CFRelease(v17);
        }

        TrustResult = 0;
        *(this + 9) = trust;
        *(this + 20) = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (result == kSecTrustResultConfirm)
      {
        TrustResult = 0;
        goto LABEL_22;
      }

      if (result != kSecTrustResultDeny)
      {
        if (result != kSecTrustResultUnspecified)
        {
          goto LABEL_23;
        }

        goto LABEL_15;
      }
    }

    TrustResult = 0;
LABEL_22:
    *(this + 13) = 2;
  }

LABEL_23:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (TrustResult)
  {
    SKE_Node::abortEmbeddedOS(this, TrustResult, 5, 4);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t SKE_Node::digestMessage(uint64_t this, CFDataRef theData)
{
  if (theData)
  {
    v3 = this;
    if (!*(this + 104))
    {
      CC_SHA1_Init((this + 108));
      *(v3 + 104) = -1;
    }

    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);

    return CC_SHA1_Update((v3 + 108), BytePtr, Length);
  }

  return this;
}

uint64_t SKE_Node::calculateMasterSecret(uint64_t this)
{
  if (!*(this + 320))
  {
    v1 = this;
    if (SKE_Node::mediaKeyViaDh(this))
    {

      SKE_Node::abortEmbeddedOS(v1, 1, 5, 4);
    }

    if (*(v1 + 216) && *(v1 + 248))
    {
      memset(v4, 170, sizeof(v4));
      v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      *&v3.tv_usec = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&v4[1], 0);
      v2 = skePbkdf2(v1 + 208, (v1 + 240), 1u, 0x50u, 0, *(v1 + 344), (v1 + 312));
      gettimeofday(v4, 0);
      this = timeval_subtract(&v3, v4, &v4[1]);
      if (!v2)
      {
        return this;
      }
    }

    else
    {
      v2 = -2070;
    }

    SKE_Node::abortEmbeddedOS(v1, v2, 5, 4);
  }

  return this;
}

uint64_t skePbkdf2(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, CFDataRef *a5, SecAsn1Coder *a6, SecAsn1Item *a7)
{
  memset(bytes, 170, sizeof(bytes));
  v13 = a4;
  std::vector<unsigned char>::vector[abi:ne200100](bytes, a4);
  v14 = *a1 + 4;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (v14 <= 0x14)
  {
    v14 = 20;
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  std::vector<unsigned char>::vector[abi:ne200100](&__p, v14 + 40);
  pbkdf2(hmacsha1, 20, a2[1], *a2, *(a1 + 8), *a1, a3, bytes[0], v13, __p);
  src.Length = v13;
  src.Data = bytes[0];
  if (a5)
  {
    v15 = CFDataCreate(0, bytes[0], v13);
    v16 = 0;
    *a5 = v15;
  }

  else
  {
    v16 = 4294965226;
    if (a6 && a7)
    {
      a7->Length = 0;
      a7->Data = 0;
      SecAsn1AllocCopyItem(a6, &src, a7);
      v16 = 0;
    }
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (bytes[0])
  {
    bytes[1] = bytes[0];
    operator delete(bytes[0]);
  }

  return v16;
}

void sub_23D4D9B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SKE_Node::calculateMAC(SKE_Node *this, int a2, int a3, SecAsn1Item *item, char a5)
{
  v7 = *(this + 156);
  *&v15.data[1] = *(this + 140);
  *&v15.data[5] = v7;
  v8 = *(this + 188);
  *&v15.data[9] = *(this + 172);
  *&v15.data[13] = v8;
  v9 = *(this + 124);
  *&v15.h0 = *(this + 108);
  *&v15.h4 = v9;
  if ((a5 & 1) == 0)
  {
    if (a2)
    {
      v10 = 208;
    }

    else
    {
      v10 = 240;
    }

    if (a2)
    {
      v11 = (this + 208);
    }

    else
    {
      v11 = (this + 240);
    }

    if (a2)
    {
      v12 = 240;
    }

    else
    {
      v12 = 208;
    }

    if (a2)
    {
      v13 = (this + 240);
    }

    else
    {
      v13 = (this + 208);
    }

    SKE_Node::calculateMasterSecret(this);
    CC_SHA1_Update(&v15, *(this + 40), *(this + 78));
    CC_SHA1_Update(&v15, v13[1], *(this + v12));
    CC_SHA1_Update(&v15, v11[1], *(this + v10));
  }

  SecAsn1AllocItem(*(this + 43), item, 0x14uLL);
  return CC_SHA1_Final(item->Data, &v15);
}

uint64_t SKE_Node::verifyMAC(SKE_Node *a1, int a2, int a3, uint64_t a4, char a5)
{
  v7.Length = 0;
  v7.Data = 0;
  SKE_Node::calculateMAC(a1, a2, a3, &v7, a5);
  if (*a4 != v7.Length)
  {
    return 0xFFFFFFFFLL;
  }

  if (!memcmp(*(a4 + 8), v7.Data, *a4))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t skeEncryptWithSecCert(void *a1, size_t *a2, SecAsn1Coder *a3, SecAsn1Item *a4)
{
  values = a1;
  BasicX509 = SecPolicyCreateBasicX509();
  v8 = *MEMORY[0x277CBECE8];
  v9 = CFArrayCreate(*MEMORY[0x277CBECE8], &values, 1, 0);
  trust = 0xAAAAAAAAAAAAAAAALL;
  v10 = SecTrustCreateWithCertificates(v9, BasicX509, &trust);
  if (v10)
  {
    TrustResult = v10;
  }

  else
  {
    result = -1431655766;
    TrustResult = SecTrustGetTrustResult(trust, &result);
    if (!TrustResult)
    {
      v12 = MEMORY[0x23EEE2DC0](trust);
      if (v12)
      {
        v13 = v12;
        v24 = a3;
        v25 = a4;
        BlockSize = SecKeyGetBlockSize(v12);
        v15 = BlockSize - 11;
        v16 = *a2;
        theData = CFDataCreateMutable(v8, 0);
        v17 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
        if (BlockSize - 11 <= v16)
        {
          v18 = 0;
          while (1)
          {
            cipherTextLen = BlockSize;
            bzero(v17, BlockSize);
            v19 = SecKeyEncrypt(v13, 1u, (a2[1] + v18), v15, v17, &cipherTextLen);
            if (v19)
            {
              break;
            }

            CFDataAppendBytes(theData, v17, cipherTextLen);
            v18 += v15;
            v16 -= v15;
            if (v15 > v16)
            {
              goto LABEL_11;
            }
          }

          TrustResult = v19;
        }

        else
        {
          v18 = 0;
LABEL_11:
          if (v16)
          {
            cipherTextLen = BlockSize;
            bzero(v17, BlockSize);
            TrustResult = SecKeyEncrypt(v13, 1u, (a2[1] + v18), v16, v17, &cipherTextLen);
            if (!TrustResult)
            {
              CFDataAppendBytes(theData, v17, cipherTextLen);
            }
          }

          else
          {
            TrustResult = 0;
          }
        }

        if (v17)
        {
          free(v17);
        }

        if (!TrustResult)
        {
          Length = CFDataGetLength(theData);
          SecAsn1AllocItem(v24, v25, Length);
          Data = v25->Data;
          MutableBytePtr = CFDataGetMutableBytePtr(theData);
          memcpy(Data, MutableBytePtr, v25->Length);
        }

        CFRelease(theData);
        CFRelease(v13);
      }

      else
      {
        TrustResult = 0;
      }

      CFRelease(trust);
    }
  }

  CFRelease(v9);
  CFRelease(BasicX509);
  return TrustResult;
}

uint64_t skeDecryptWithIdentity(__SecIdentity *a1, size_t *a2, SecAsn1Coder *a3, SecAsn1Item *a4)
{
  privateKeyRef = 0;
  v7 = SecIdentityCopyPrivateKey(a1, &privateKeyRef);
  if (v7)
  {
    return v7;
  }

  BlockSize = SecKeyGetBlockSize(privateKeyRef);
  v9 = *a2;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  v11 = malloc_type_malloc(BlockSize, 0x100004077774924uLL);
  if (BlockSize <= v9)
  {
    v12 = 0;
    while (1)
    {
      length = BlockSize;
      bzero(v11, BlockSize);
      v13 = SecKeyDecrypt(privateKeyRef, 1u, (a2[1] + v12), BlockSize, v11, &length);
      if (v13)
      {
        break;
      }

      CFDataAppendBytes(Mutable, v11, length);
      v12 += BlockSize;
      v9 -= BlockSize;
      if (BlockSize > v9)
      {
        goto LABEL_7;
      }
    }

    v7 = v13;
    if (!v11)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_7:
  if (v9)
  {
    length = BlockSize;
    bzero(v11, BlockSize);
    v7 = SecKeyDecrypt(privateKeyRef, 1u, (a2[1] + v12), v9, v11, &length);
    if (!v7)
    {
      CFDataAppendBytes(Mutable, v11, length);
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v11)
  {
LABEL_13:
    free(v11);
  }

LABEL_14:
  if (!v7)
  {
    v14 = CFDataGetLength(Mutable);
    SecAsn1AllocItem(a3, a4, v14);
    Data = a4->Data;
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    memcpy(Data, MutableBytePtr, a4->Length);
  }

  CFRelease(Mutable);
  if (privateKeyRef)
  {
    CFRelease(privateKeyRef);
  }

  return v7;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23D4DA170(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278BD42D0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

BOOL timeval_subtract(timeval *a1, timeval *a2, timeval *a3)
{
  tv_usec = a2->tv_usec;
  v4 = a3->tv_usec;
  tv_sec = a3->tv_sec;
  if (v4 > tv_usec)
  {
    v6 = (v4 - tv_usec) / 1000000 + 1;
    v4 -= 1000000 * v6;
    a3->tv_usec = v4;
    tv_sec += v6;
    a3->tv_sec = tv_sec;
    tv_usec = a2->tv_usec;
  }

  v7 = tv_usec - v4;
  if (v7 > 1000000)
  {
    v8 = v7 / 0xF4240uLL;
    v9 = v4 + 1000000 * v8;
    a3->tv_usec = v9;
    tv_sec -= v8;
    a3->tv_sec = tv_sec;
    v7 = a2->tv_usec - v9;
  }

  a1->tv_sec = a2->tv_sec - tv_sec;
  a1->tv_usec = v7;
  return a2->tv_sec < a3->tv_sec;
}

uint64_t SKE_Node::SKE_Node(uint64_t a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  *(a1 + 16) = 1;
  *(a1 + 352) = 0;
  SKE_Node::initMemberVars(a1);
  if (a2)
  {
    *(a1 + 8) = a2;
    CFRetain(a2);
  }

  *(a1 + 96) = a3;
  if (a4)
  {
    *(a1 + 304) = a4;
    CFRetain(a4);
  }

  *a1 = a5;
  CFRetain(a5);
  *(a1 + 24) = a6;
  *(a1 + 32) = 1;
  CFRetain(a6);
  if (a7)
  {
    SKE_Node::evaluatePeerCert(a1, 0, a7);
  }

  if (*(a1 + 8))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  *(a1 + 84) = v14;
  if ((*(a1 + 16) & 1) == 0)
  {
    *(a1 + 48) = 2 * (*(a1 + 40) == 0);
  }

  return a1;
}

uint64_t SKE_Node::initMemberVars(SKE_Node *this)
{
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 8) = 1;
  *(this + 5) = 0;
  *(this + 3) = xmmword_23D4DE530;
  *(this + 16) = 1;
  *(this + 9) = 0;
  *(this + 5) = xmmword_23D4DE540;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  return SecAsn1CoderCreate(this + 43);
}

uint64_t SKE_Node::setInitType(uint64_t result, int a2)
{
  *(result + 84) = a2;
  if ((*(result + 16) & 1) == 0)
  {
    *(result + 48) = 2 * (*(result + 40) == 0);
  }

  return result;
}

void SKE_Node::SKE_Node(SKE_Node *this, __SecIdentity *a2, int a3, const void *a4, const __CFString *a5)
{
  *(this + 16) = 0;
  *(this + 352) = 0;
  SKE_Node::initMemberVars(this);
  if (a2)
  {
    *(this + 1) = a2;
    CFRetain(a2);
  }

  *(this + 24) = a3;
  *(this + 41) = a4;
  if (a4)
  {
    CFRetain(a4);
    v10 = CFGetTypeID(a4);
    if (v10 != CFArrayGetTypeID())
    {
      *(this + 38) = a4;
      ValueAtIndex = a4;
      goto LABEL_8;
    }

    if (CFArrayGetCount(a4) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a4, 0);
      *(this + 38) = ValueAtIndex;
LABEL_8:
      CFRetain(ValueAtIndex);
    }
  }

  *this = a5;
  CFRetain(a5);
  *(this + 25) = 1;
}

void SKE_Node::~SKE_Node(SKE_Node *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    SecAsn1CoderRelease(v2);
    *(this + 43) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    CFRelease(v6);
  }
}

const __CFData *SKE_Node::update(SKE_Node *this, CFDataRef theData)
{
  *(this + 42) = theData;
  if (theData)
  {
    v13 = 0u;
    v14 = 0u;
    dest = 0u;
    src.Data = CFDataGetBytePtr(theData);
    src.Length = CFDataGetLength(theData);
    if (SecAsn1DecodeData(*(this + 43), &src, &SKE_MessageTemplate, &dest))
    {
      goto LABEL_26;
    }

    v10 = -1431655766;
    if ((skeDataToInt(&dest, &v10) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v10 != 1)
    {
      goto LABEL_26;
    }

    v9 = -1431655766;
    if ((skeDataToInt(&v13, &v9) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_26;
        }

        inited = SKE_Node::processRespHello(this, &v14);
      }

      else
      {
        inited = SKE_Node::processInitHello(this, &v14);
      }
    }

    else
    {
      switch(v9)
      {
        case 2u:
          inited = SKE_Node::processInitDone(this, &v14);
          break;
        case 3u:
          inited = SKE_Node::processRespDone(this, &v14);
          break;
        case 4u:
          SKE_Node::processAbort(this, &v14);
          return 0;
        default:
LABEL_26:
          *(this + 23) = 5;
          *(this + 25) = 4;
          exception = __cxa_allocate_exception(4uLL);
          *exception = -26275;
          __cxa_throw(exception, MEMORY[0x277D827C0], 0);
      }
    }

    v4 = inited;
    if (*(this + 23) == 1)
    {
      v6 = *(this + 42);
      if (v6)
      {
        SKE_Node::digestMessage(this, v6);
        *(this + 42) = 0;
      }

      if (v4)
      {
LABEL_24:
        SKE_Node::digestMessage(this, v4);
      }
    }
  }

  else
  {
    v4 = SKE_Node::encodeInitHello(this);
    if (v4 && *(this + 23) == 1)
    {
      goto LABEL_24;
    }
  }

  return v4;
}

void SKE_Node::abortEmbeddedOS(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 92) = a3;
  *(a1 + 100) = a4;
  exception = __cxa_allocate_exception(4uLL);
  *exception = a2;
  __cxa_throw(exception, MEMORY[0x277D827C0], 0);
}

CFDataRef SKE_Node::sharedSecret(SKE_Node *this, unsigned int a2)
{
  if (!*(this + 40))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    goto LABEL_6;
  }

  v10 = 0;
  v9 = *(this + 13);
  memset(v8, 170, sizeof(v8));
  gettimeofday(&v8[1], 0);
  v4 = skePbkdf2(&v9, this + 39, 1u, a2, &v10, 0, 0);
  gettimeofday(v8, 0);
  timeval_subtract(&v7, v8, &v8[1]);
  if (v4)
  {
    *(this + 23) = 5;
    *(this + 25) = 4;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v4;
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  return v10;
}

uint64_t SKE_Node::setRespType(uint64_t result, int a2)
{
  *(result + 88) = a2;
  if (*(result + 16) == 1)
  {
    *(result + 48) = 2 * (*(result + 40) == 0);
  }

  return result;
}

CFDataRef SKE_Node::encodeProtocolMsg(uint64_t a1, __int128 *a2, unsigned int a3)
{
  v7.Length = 0;
  v7.Data = 0;
  src = 0u;
  v9 = 0u;
  v10 = 0u;
  skeIntToData(1u, &src, *(a1 + 344));
  skeIntToData(a3, &v9, *(a1 + 344));
  v10 = *a2;
  if (SecAsn1EncodeItem(*(a1 + 344), &src, &SKE_MessageTemplate, &v7))
  {
    SKE_Node::abortEmbeddedOS(a1, -2070, 5, 4);
  }

  return CFDataCreate(0, v7.Data, v7.Length);
}

CFDataRef SKE_Node::encodeInitHello(SKE_Node *this)
{
  if (*(this + 16) != 1 || *(this + 25))
  {
    SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0;
  v19 = 0u;
  skeCFStringToCFData(*this, &v18, *(this + 43));
  skeCFStringToCFData(*(this + 3), &v19, *(this + 43));
  memset(v17, 170, sizeof(v17));
  memset(v16, 170, sizeof(v16));
  v2 = *(this + 1);
  if (v2)
  {
    certificateRef = 0xAAAAAAAAAAAAAAAALL;
    v3 = SecIdentityCopyCertificate(v2, &certificateRef);
    if (v3)
    {
      SKE_Node::abortEmbeddedOS(this, v3, 5, 4);
    }

    src.Length = 0;
    src.Data = 0;
    v4 = SecCertificateCopyData(certificateRef);
    if (!v4)
    {
      SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
    }

    v5 = v4;
    src.Data = CFDataGetBytePtr(v4);
    src.Length = CFDataGetLength(v5);
    SecAsn1AllocCopyItem(*(this + 43), &src, &v17[1]);
    *&v20 = &v17[1];
    CFRelease(v5);
    CFRelease(certificateRef);
  }

  v6 = *(this + 5);
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = SecCertificateCopySerialNumber(v6);
  v8 = v7;
  src.Length = 0;
  src.Data = 0;
  if (v7)
  {
    src.Data = CFDataGetBytePtr(v7);
    src.Length = CFDataGetLength(v8);
  }

  SecAsn1AllocCopyItem(*(this + 43), &src, &v16[1]);
  *&v21 = &v16[1];
  v9 = *(this + 5);
  v10 = SecCertificateCopyIssuerSummary();
  src.Length = 0;
  src.Data = 0;
  if (v10)
  {
    Length = CFStringGetLength(v10);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  SecAsn1AllocCopyItem(*(this + 43), &src, v17);
  *(&v20 + 1) = v17;
  if (v8)
  {
    CFRelease(v8);
  }

  v12 = *(this + 27);
  if (!v12)
  {
    SecAsn1AllocItem(*(this + 43), this + 13, 0x20uLL);
    v12 = *(this + 27);
  }

  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, v12))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  if (skeEncryptWithSecCert(*(this + 5), this + 26, *(this + 43), v16))
  {
    SKE_Node::abortEmbeddedOS(this, -50, 5, 4);
  }

  *(&v21 + 1) = v16;
  if (!*(this + 5))
  {
LABEL_31:
    if (!*(this + 1))
    {
      SKE_Node::abortEmbeddedOS(this, 1, 5, 4);
    }
  }

  src.Length = 0;
  src.Data = 0;
  if (SecAsn1EncodeItem(*(this + 43), &v18, &SKE_InitHelloTemplate, &src))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  *(this + 25) = 1;
  *(this + 23) = 1;
  return SKE_Node::encodeProtocolMsg(this, &src, 0);
}

CFDataRef SKE_Node::processInitHello(SKE_Node *this, cssm_data *src)
{
  if ((*(this + 16) & 1) != 0 || *(this + 25) != 1)
  {
    SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
  }

  srca = 0;
  *v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  if (SecAsn1DecodeData(*(this + 43), src, &SKE_InitHelloTemplate, v6))
  {
    SKE_Node::abortEmbeddedOS(this, -26275, 5, 4);
  }

  CFStringFromSKEData = createCFStringFromSKEData(v6);
  *(this + 3) = CFStringFromSKEData;
  if (CFStringFromSKEData)
  {
    *(this + 8) = 0;
  }

  if (v7[0])
  {
    SKE_Node::evaluatePeerCert(this, v7[0], 0);
    SKE_Node::setInitType(this, 2);
  }

  else
  {
    SKE_Node::setInitType(this, 1);
    *(this + 14) = 0;
    *(this + 6) = 0x100000002;
  }

  SKE_Node::getResponderIdentity(this, v7[1], v8);
  if (*(&v8 + 1))
  {
    if (*(this + 22) == 1)
    {
      v4 = skeDecryptWithIdentity(*(this + 1), *(&v8 + 1), *(this + 43), this + 13);
      if (v4)
      {
        SKE_Node::abortEmbeddedOS(this, v4, 5, 4);
      }
    }
  }

  if (srca)
  {
    if (v7[0])
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (!*(this + 1))
    {
      SecAsn1AllocCopyItem(*(this + 43), srca, this + 18);
    }
  }

  return SKE_Node::encodeRespHello(this);
}

CFDataRef SKE_Node::encodeRespHello(SKE_Node *this)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  v18 = 0u;
  skeCFStringToCFData(*this, &v17, *(this + 43));
  v16.Length = 0;
  v16.Data = 0;
  dest.Length = 0;
  dest.Data = 0;
  item.Length = 0;
  item.Data = 0;
  v2 = (this + 240);
  SecAsn1AllocItem(*(this + 43), this + 15, 0x20uLL);
  if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, *(this + 31)))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = &v18 + 1;
    v5 = skeEncryptWithSecCert(v3, this + 30, *(this + 43), &v16);
    if (v5)
    {
      SKE_Node::abortEmbeddedOS(this, v5, 5, 4);
    }

    v2 = &v16;
  }

  else
  {
    if (!*(this + 1))
    {
      SKE_Node::abortEmbeddedOS(this, 1, 5, 4);
    }

    v4 = &v18;
  }

  *v4 = v2;
  v6 = *(this + 22);
  if (v6 == 4 || v6 == 2)
  {
    memset(src, 170, sizeof(src));
    v7 = SecIdentityCopyCertificate(*(this + 1), &src[16]);
    if (v7)
    {
      SKE_Node::abortEmbeddedOS(this, v7, 5, 4);
    }

    v8 = SecCertificateCopyData(*&src[16]);
    if (!v8)
    {
      SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
    }

    v9 = v8;
    *&src[8] = CFDataGetBytePtr(v8);
    *src = CFDataGetLength(v9);
    SecAsn1AllocCopyItem(*(this + 43), src, &dest);
    *(&v19 + 1) = &dest;
    CFRelease(v9);
    CFRelease(*&src[16]);
    v6 = *(this + 22);
  }

  if (v6 == 1)
  {
    SKE_Node::digestMessage(this, *(this + 42));
    *(this + 42) = 0;
    SKE_Node::calculateMAC(this, 1, 0, &item, 0);
    *&v20 = &item;
  }

  *src = 0;
  *&src[8] = 0;
  if (SecAsn1EncodeItem(*(this + 43), &v17, &SKE_RespHelloTemplate, src))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  if (*(this + 21) == 1 && *(this + 22) == 5)
  {
    SKE_Node::calculateMasterSecret(this);
    v10 = 0;
    v11 = 3;
  }

  else
  {
    v11 = 2;
    v10 = 1;
  }

  *(this + 23) = v10;
  *(this + 25) = v11;
  return SKE_Node::encodeProtocolMsg(this, src, 1u);
}

CFDataRef SKE_Node::processRespHello(SKE_Node *this, cssm_data *src)
{
  if (*(this + 16) != 1 || *(this + 25) != 1)
  {
    SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
  }

  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  *srca = 0u;
  if (SecAsn1DecodeData(*(this + 43), src, &SKE_RespHelloTemplate, &v11))
  {
    SKE_Node::abortEmbeddedOS(this, -26275, 5, 4);
  }

  v3 = *(this + 3);
  if (v3)
  {
    CFRelease(v3);
  }

  CFStringFromSKEData = createCFStringFromSKEData(&v11);
  *(this + 3) = CFStringFromSKEData;
  if (CFStringFromSKEData)
  {
    *(this + 8) = 0;
  }

  if (srca[0])
  {
    if (__PAIR128__(v13[0], srca[1]) != 0)
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (*(this + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    *(this + 15) = *srca[0];
    goto LABEL_16;
  }

  if (srca[1])
  {
    if (v13[0])
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (!*(this + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (*(this + 352))
    {
      SecAsn1AllocCopyItem(*(this + 43), srca[1], this + 14);
      goto LABEL_16;
    }

    if (skeDecryptWithIdentity(*(this + 1), &srca[1]->Length, *(this + 43), this + 15))
    {
      v7 = this;
      v8 = 5;
      goto LABEL_55;
    }
  }

  else
  {
    if (!v13[0])
    {
      v7 = this;
      v8 = 4;
LABEL_55:
      SKE_Node::abortEmbeddedOS(v7, -50, v8, 4);
    }

    if (v14)
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (*(this + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    *(this + 18) = *v13[0];
  }

LABEL_16:
  if (v13[1])
  {
    if (*(this + 5))
    {
      v5 = 2;
    }

    else
    {
      v5 = 4;
    }

    SKE_Node::setRespType(this, v5);
    SKE_Node::evaluatePeerCert(this, v13[1], 0);
  }

  v6 = *(this + 22);
  if (v6 != 2 && v6 != 4)
  {
    if (*(this + 5))
    {
      if (v14)
      {
        SKE_Node::setRespType(this, 1);
        goto LABEL_44;
      }

      SKE_Node::setRespType(this, 3);
      CFRelease(*(this + 5));
      *(this + 5) = 0;
    }

    else
    {
      SKE_Node::setRespType(this, 5);
    }

    *(this + 6) = 0x100000002;
    *(this + 14) = 0;
  }

LABEL_44:
  if (v14)
  {
    if (*(this + 22) != 1)
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    v9 = SKE_Node::verifyMAC(this, 1, 0, v14, 0);
    if (v9)
    {
      SKE_Node::abortEmbeddedOS(this, v9, 5, 4);
    }
  }

  if (*(this + 21) != 1 || *(this + 22) != 5)
  {
    return SKE_Node::encodeInitDone(this);
  }

  SKE_Node::calculateMasterSecret(this);
  result = 0;
  *(this + 23) = 0;
  *(this + 25) = 3;
  return result;
}

CFDataRef SKE_Node::encodeInitDone(SKE_Node *this)
{
  src = 0u;
  v13 = 0u;
  v11.Length = 0;
  v11.Data = 0;
  item.Length = 0;
  item.Data = 0;
  v2 = *(this + 22);
  if (v2 != 1)
  {
    if (v2 == 3)
    {
      if (*(this + 21) == 1)
      {
        goto LABEL_16;
      }
    }

    else if (v2 == 5 && *(this + 21) == 1)
    {
      SKE_Node::abortEmbeddedOS(this, -2070, 4, 4);
    }

    v3 = *(this + 27);
    if (!v3)
    {
      SecAsn1AllocItem(*(this + 43), this + 13, 0x20uLL);
      v3 = *(this + 27);
    }

    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, v3))
    {
      SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
    }

    v4 = *(this + 5);
    if (v4)
    {
      if (skeEncryptWithSecCert(v4, this + 26, *(this + 43), &v11))
      {
        SKE_Node::abortEmbeddedOS(this, -50, 5, 4);
      }

      *&src = &v11;
    }

    else
    {
      *(&src + 1) = this + 208;
    }
  }

LABEL_16:
  if (*(this + 21) == 1 && *(this + 22) == 3)
  {
    SKE_Node::abortEmbeddedOS(this, 1, 5, 4);
  }

  SKE_Node::digestMessage(this, *(this + 42));
  *(this + 42) = 0;
  SKE_Node::calculateMAC(this, 0, 0, &item, *(this + 352));
  *(&v13 + 1) = &item;
  v9.Length = 0;
  v9.Data = 0;
  if (SecAsn1EncodeItem(*(this + 43), &src, &SKE_InitDoneTemplate, &v9))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  v5 = *(this + 22);
  if (v5 == 1 || (v5 == 5 || v5 == 3) && *(this + 21) == 1)
  {
    SKE_Node::calculateMasterSecret(this);
    v6 = 0;
    v7 = 3;
  }

  else
  {
    v7 = 2;
    v6 = 1;
  }

  *(this + 23) = v6;
  *(this + 25) = v7;
  return SKE_Node::encodeProtocolMsg(this, &v9, 2u);
}

CFDataRef SKE_Node::processInitDone(SKE_Node *this, cssm_data *src)
{
  if ((*(this + 16) & 1) != 0 || *(this + 25) != 2)
  {
    SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
  }

  v8 = 0u;
  v9 = 0u;
  if (SecAsn1DecodeData(*(this + 43), src, &SKE_InitDoneTemplate, &v8))
  {
    SKE_Node::abortEmbeddedOS(this, -26275, 5, 4);
  }

  if (v8)
  {
    if (*(&v8 + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (!*(this + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    v3 = *(this + 22);
    if (v3 != 2 && v3 != 4)
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (skeDecryptWithIdentity(*(this + 1), v8, *(this + 43), this + 13))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 5, 4);
    }
  }

  else
  {
    v4 = *(this + 22);
    if (*(&v8 + 1))
    {
      if (v4 != 5 && v4 != 3 || *(this + 21) == 1)
      {
        SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
      }

      if (*(this + 21) != 2)
      {
        SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
      }

      *(this + 13) = **(&v8 + 1);
    }

    else if (v4 != 1)
    {
      if (v4 == 3)
      {
        if (*(this + 21) == 1)
        {
          goto LABEL_31;
        }
      }

      else if (v4 == 5 && *(this + 21) == 1)
      {
        SKE_Node::abortEmbeddedOS(this, -2070, 4, 4);
      }

      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }
  }

LABEL_31:
  if (*(this + 21) == 1 && *(this + 22) == 3)
  {
    if (!v9)
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    *(this + 18) = *v9;
    if (*(&v9 + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }
  }

  else
  {
    if (v9)
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    if (!*(&v9 + 1))
    {
      SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
    }

    v5 = SKE_Node::verifyMAC(this, 0, 0, *(&v9 + 1), *(this + 352));
    if (v5)
    {
      SKE_Node::abortEmbeddedOS(this, v5, 5, 4);
    }
  }

  v6 = *(this + 22);
  if (v6 != 1 && (v6 != 5 && v6 != 3 || *(this + 21) != 1))
  {
    return SKE_Node::encodeRespDone(this);
  }

  SKE_Node::calculateMasterSecret(this);
  result = 0;
  *(this + 23) = 0;
  *(this + 25) = 3;
  return result;
}

CFDataRef SKE_Node::encodeRespDone(CFDataRef *this)
{
  src.Length = 0;
  src.Data = 0;
  SKE_Node::digestMessage(this, this[42]);
  this[42] = 0;
  SKE_Node::calculateMAC(this, 1, 1, &src, 0);
  v3.Length = 0;
  v3.Data = 0;
  if (SecAsn1EncodeItem(this[43], &src, &SKE_RespDoneTemplate, &v3))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  SKE_Node::calculateMasterSecret(this);
  *(this + 23) = 0;
  *(this + 25) = 3;
  return SKE_Node::encodeProtocolMsg(this, &v3, 3u);
}

uint64_t SKE_Node::processRespDone(SKE_Node *this, cssm_data *src)
{
  if (*(this + 16) != 1 || *(this + 25) != 2)
  {
    SKE_Node::abortEmbeddedOS(this, -50, 4, 4);
  }

  v6[0] = 0;
  v6[1] = 0;
  if (SecAsn1DecodeData(*(this + 43), src, &SKE_RespDoneTemplate, v6))
  {
    SKE_Node::abortEmbeddedOS(this, -26275, 5, 4);
  }

  if (*(this + 352) == 1)
  {
    v3 = skeDecryptWithIdentity(*(this + 1), this + 28, *(this + 43), this + 15);
    if (v3)
    {
      SKE_Node::abortEmbeddedOS(this, v3, 5, 4);
    }
  }

  v4 = SKE_Node::verifyMAC(this, 1, 1, v6, 0);
  if (v4)
  {
    SKE_Node::abortEmbeddedOS(this, v4, 5, 4);
  }

  SKE_Node::calculateMasterSecret(this);
  *(this + 23) = 0;
  *(this + 25) = 3;
  return 0;
}

CFDataRef SKE_Node::encodeAbort(SecAsn1CoderRef *this, unsigned int a2)
{
  src.Length = 0;
  src.Data = 0;
  skeIntToData(a2, &src, this[43]);
  v4.Length = 0;
  v4.Data = 0;
  if (SecAsn1EncodeItem(this[43], &src, &SKE_AbortTemplate, &v4))
  {
    SKE_Node::abortEmbeddedOS(this, -2070, 5, 4);
  }

  *(this + 23) = 3;
  *(this + 25) = 4;
  return SKE_Node::encodeProtocolMsg(this, &v4, 4u);
}

uint64_t SKE_Node::processAbort(SecAsn1CoderRef *this, cssm_data *a2)
{
  dest.Length = 0;
  dest.Data = 0;
  if (SecAsn1DecodeData(this[43], a2, &SKE_AbortTemplate, &dest))
  {
    SKE_Node::abortEmbeddedOS(this, -26275, 5, 4);
  }

  v6 = -1431655766;
  result = skeDataToInt(&dest, &v6);
  if (result)
  {
    *(this + 15) = v6;
    *(this + 16) = 0;
    v4 = 5;
    v5 = 2;
  }

  else
  {
    v4 = 4;
    v5 = 5;
  }

  *(this + 23) = v5;
  *(this + 25) = v4;
  return result;
}

uint64_t SKEState_Create(void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v10 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E004098E5A42CuLL);
    if (v10)
    {
      v11 = v10;
      *v10 = dispatch_queue_create("com.apple.SimpleKeyExchange.SKEState", 0);
      v11[1] = dispatch_group_create();
      v11[2] = _Block_copy(a4);
      v11[8] = a5;
      if (a3)
      {
        v11[12] = CFRetain(a3);
      }

      v17.__sig = 0xAAAAAAAAAAAAAAAALL;
      *v17.__opaque = 0xAAAAAAAAAAAAAAAALL;
      pthread_mutexattr_init(&v17);
      pthread_mutexattr_settype(&v17, 2);
      pthread_mutex_init((v11 + 15), &v17);
      pthread_mutexattr_destroy(&v17);
      *a1 = v11;
      if (a2)
      {
        CFRetain(a2);
      }

      v13 = *v11;
      v12 = v11[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __SKEState_Create_block_invoke;
      block[3] = &__block_descriptor_tmp;
      block[4] = a2;
      block[5] = v11;
      dispatch_group_async(v12, v13, block);
      result = 0;
    }

    else
    {
      result = 2;
    }
  }

  else
  {
    result = 10;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void SKEState_SKEComplete(uint64_t a1, int a2)
{
  if (!a2)
  {
    if (*(a1 + 16))
    {
      a2 = 11;
    }

    else
    {
      a2 = 0;
    }
  }

  *(a1 + 112) = a2;
  *(a1 + 88) = 1;
  SKEState_CheckBlobCallbacks(a1);

  SKEState_CallSecretKeyCallbacks(a1);
}

void SKEState_CheckPeerCert(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v10 = -1431655766;
    v9 = -1431655766;
    cf = 0;
    if (!SecKeyExchangeGetPeerCertStatus(*(a1 + 104), &v9, &v10) && v9 != 1)
    {
      if (v9 != 2 && v10 != 1 && (SecKeyExchangeCopyPeerCert(*(a1 + 104), &v9, &cf) || (v9 & 0xFFFFFFFD) != 0) || (v7 = 0, (*(*(a1 + 16) + 16))(), _Block_release(*(a1 + 16)), *(a1 + 16) = 0, v7))
      {
LABEL_9:
        if (cf)
        {
          CFRelease(cf);
        }

        return;
      }

      *(a1 + 88) = 1;
      *(a1 + 112) = 5;
      v6 = 0xAAAAAAAAAAAAAAAALL;
      if (SecKeyExchangeAbortSession(*(a1 + 104), 1u, &v6))
      {
        v2 = cf;
        v3 = 8;
        if (!cf)
        {
LABEL_14:
          *(a1 + 112) = v3;
          *(a1 + 88) = 1;
          SKEState_CheckBlobCallbacks(a1);
          SKEState_CallSecretKeyCallbacks(a1);
          return;
        }
      }

      else
      {
        v4 = 0;
        v5 = a1 + 24;
        do
        {
          if (!*(v5 + v4))
          {
            *(v5 + v4) = v6;
            goto LABEL_9;
          }

          v4 += 8;
        }

        while (v4 != 32);
        if (cf)
        {
          CFRelease(cf);
        }

        v2 = v6;
        v3 = 1;
        if (!v6)
        {
          goto LABEL_14;
        }
      }

      CFRelease(v2);
      goto LABEL_14;
    }
  }
}

void SKEState_CheckBlobCallbacks(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 24;
  v4 = (a1 + 72);
  do
  {
    if (!*(v3 + 8 * v2))
    {
      break;
    }

    v5 = *v4;
    if (*v4)
    {
      v6 = v4;
      do
      {
        v7 = SKEState_CopyBlob_immediate(a1, v2, *v5);
        v8 = *v6;
        if (v7)
        {
          v6 = (v8 + 2);
        }

        else
        {
          *v6 = v8[2];
          _Block_release(*v8);
          free(v8);
        }

        v5 = *v6;
      }

      while (*v6);
    }

    ++v2;
  }

  while (v2 != 4);
}

void SKEState_CheckSecretKeyCallbacks(uint64_t a1)
{
  if (*(a1 + 88))
  {

    SKEState_CallSecretKeyCallbacks(a1);
  }

  else
  {
    v4 = -1431655766;
    SecKeyExchangeNegotiationStatus(*(a1 + 104), &v4);
    if ((v4 - 2) >= 2)
    {
      if (v4)
      {
        return;
      }

      if (!*(a1 + 56))
      {
        v3 = 0;
        if (!SecKeyExchangeCopySharedSecret(*(a1 + 104), *(a1 + 64), &v3))
        {
          *(a1 + 56) = v3;
          SKEState_SKEComplete(a1, 0);
        }
      }

      if (*(a1 + 16))
      {
        v2 = 11;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 5;
    }

    *(a1 + 112) = v2;
    *(a1 + 88) = 1;
    SKEState_CheckBlobCallbacks(a1);
    SKEState_CallSecretKeyCallbacks(a1);
  }
}

uint64_t SKEState_SetBlob(uint64_t a1, int a2, const __CFData *a3)
{
  pthread_mutex_lock((a1 + 120));
  v6 = *(a1 + 112);
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 92);
  if (v7 > a2)
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  *(a1 + 92) = v7 + 1;
  cf = 0xAAAAAAAAAAAAAAAALL;
  v12 = -1;
  if (!SecKeyExchangeUpdate(*(a1 + 104), a3, &cf, &v12))
  {
    SKEState_CheckPeerCert(a1);
    if (*(a1 + 88))
    {
      CFRelease(cf);
      cf = 0;
    }

    else if (cf)
    {
      v10 = 0;
      v11 = a1 + 24;
      while (*(v11 + v10))
      {
        v10 += 8;
        if (v10 == 32)
        {
          CFRelease(cf);
          v8 = 1;
          goto LABEL_5;
        }
      }

      *(v11 + v10) = cf;
    }

    SKEState_CheckBlobCallbacks(a1);
    SKEState_CheckSecretKeyCallbacks(a1);
    goto LABEL_9;
  }

  v8 = 3;
LABEL_5:
  *(a1 + 112) = v8;
  *(a1 + 88) = 1;
  SKEState_CheckBlobCallbacks(a1);
  SKEState_CallSecretKeyCallbacks(a1);
  v6 = *(a1 + 112);
LABEL_10:
  pthread_mutex_unlock((a1 + 120));
  return v6;
}

uint64_t SKEState_CopyBlob(NSObject **a1, int a2, void *aBlock)
{
  v5 = _Block_copy(aBlock);
  v6 = *a1;
  v7 = a1[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __SKEState_CopyBlob_block_invoke;
  block[3] = &unk_278BD4300;
  v10 = a2;
  block[4] = v5;
  block[5] = a1;
  dispatch_group_async(v7, v6, block);
  return 0;
}

uint64_t SKEState_CopyBlob_immediate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 120));
  v6 = *(a1 + 8 * a2 + 24);
  if (v6)
  {
    Copy = CFDataCreateCopy(*MEMORY[0x277CBECE8], v6);
    (*(a3 + 16))(a3, a2, Copy, *(a1 + 88), *(a1 + 112));
  }

  else
  {
    if (!*(a1 + 88))
    {
      v8 = 1;
      goto LABEL_6;
    }

    (*(a3 + 16))(a3, a2, 0, 1, *(a1 + 112));
  }

  v8 = 0;
LABEL_6:
  pthread_mutex_unlock((a1 + 120));
  return v8;
}

uint64_t SKEState_CopyBlobSync(NSObject **a1, uint64_t a2, void *a3, _DWORD *a4, dispatch_time_t a5)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2000000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = dispatch_semaphore_create(0);
  dispatch_retain(v15[3]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = __SKEState_CopyBlobSync_block_invoke;
  aBlock[3] = &unk_278BD4328;
  v13 = a2;
  aBlock[4] = &v26;
  aBlock[5] = &v22;
  aBlock[6] = &v18;
  aBlock[7] = &v14;
  if (SKEState_CopyBlob_immediate(a1, a2, aBlock))
  {
    SKEState_CopyBlob(a1, a2, aBlock);
    *(v19 + 6) = 0;
    if (dispatch_semaphore_wait(v15[3], a5))
    {
      *(v19 + 6) = 13;
    }
  }

  dispatch_release(v15[3]);
  *a3 = v27[3];
  *a4 = *(v23 + 6);
  v10 = *(v19 + 6);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v10;
}

void sub_23D4DCAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t SKEState_CopySecretKey(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 112);
  if (!v2)
  {
    v4 = _Block_copy(aBlock);
    v5 = *a1;
    v6 = *(a1 + 8);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __SKEState_CopySecretKey_block_invoke;
    v8[3] = &unk_278BD4378;
    v8[4] = v4;
    v8[5] = a1;
    dispatch_group_async(v6, v5, v8);
  }

  return v2;
}

uint64_t SKEState_CopySecretKeySync(uint64_t a1, void *a2, dispatch_time_t a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = -1431655766;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = dispatch_semaphore_create(0);
  dispatch_retain(v11[3]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = __SKEState_CopySecretKeySync_block_invoke;
  aBlock[3] = &unk_278BD43A0;
  aBlock[4] = &v18;
  aBlock[5] = &v14;
  aBlock[6] = &v10;
  v6 = SKEState_CopySecretKey(a1, aBlock);
  *(v15 + 6) = v6;
  if (!v6 && dispatch_semaphore_wait(v11[3], a3))
  {
    *(v15 + 6) = 13;
  }

  dispatch_release(v11[3]);
  *a2 = v19[3];
  v7 = *(v15 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void sub_23D4DCF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void SKEState_CallSecretKeyCallbacks(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *MEMORY[0x277CBECE8];
    do
    {
      v4 = *(v2 + 8);
      v5 = *(a1 + 56);
      if (v5)
      {
        Copy = CFDataCreateCopy(v3, v5);
      }

      else
      {
        Copy = 0;
      }

      v7 = *(a1 + 112);
      v8 = *v2;
      global_queue = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZL31SKEState_CallSecretKeyCallbacksP14SKEStateOpaque_block_invoke;
      block[3] = &unk_278BD43C8;
      block[4] = v8;
      block[5] = Copy;
      v11 = v7;
      dispatch_async(global_queue, block);
      _Block_release(*v2);
      free(v2);
      v2 = v4;
    }

    while (v4);
  }

  *(a1 + 80) = 0;
}

uint64_t skeDataToInt(const cssm_data *a1, unsigned int *a2)
{
  Length = a1->Length;
  if (!a1->Length || (Data = a1->Data) == 0)
  {
    v5 = 0;
LABEL_8:
    *a2 = v5;
    return 1;
  }

  if (Length <= 4)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 = Data[v4++] | (v5 << 8);
    }

    while (v4 < Length);
    goto LABEL_8;
  }

  return 0;
}

uint64_t skeIntToData(unsigned int a1, cssm_data *a2, SecAsn1CoderRef coder)
{
  v4 = a1;
  v5 = 2;
  v6 = 3;
  if (HIBYTE(a1))
  {
    v6 = 4;
  }

  if (a1 >= 0x10000)
  {
    v5 = v6;
  }

  if (a1 >= 0x100)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1;
  }

  result = SecAsn1AllocItem(coder, a2, v7);
  v9 = 0;
  v10 = &a2->Data[v7 - 1];
  do
  {
    *v10-- = v4;
    v4 >>= 8;
    ++v9;
  }

  while (v9 < v7);
  return result;
}

CFStringRef createCFStringFromSKEData(cssm_data *a1)
{
  Data = a1->Data;
  if (!Data || !a1->Length)
  {
    return 0;
  }

  v2 = CFDataCreate(0, Data, a1->Length);
  v3 = CFStringCreateFromExternalRepresentation(0, v2, 0x8000100u);
  CFRelease(v2);
  return v3;
}

void skeCFStringToCFData(CFStringRef theString, cssm_data *a2, SecAsn1Coder *a3)
{
  ExternalRepresentation = CFStringCreateExternalRepresentation(0, theString, 0x8000100u, 0);
  if (!ExternalRepresentation)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  v6 = ExternalRepresentation;
  Length = CFDataGetLength(ExternalRepresentation);
  SecAsn1AllocItem(a3, a2, Length);
  Data = a2->Data;
  BytePtr = CFDataGetBytePtr(v6);
  memmove(Data, BytePtr, Length);

  CFRelease(v6);
}

BOOL skeCompareItemData(_BOOL8 result, const cssm_data *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = v2[1];
      if (v3)
      {
        Data = a2->Data;
        return Data && *v2 == a2->Length && memcmp(v3, Data, *v2) == 0;
      }
    }
  }

  return result;
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

void operator new()
{
    ;
  }
}