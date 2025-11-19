uint64_t _SSLGetRsaBlinding(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 314);
  return result;
}

OSStatus SSLCopyPeerTrust(SSLContextRef context, SecTrustRef *trust)
{
  SecTrust = -50;
  if (context && trust)
  {
    v6 = (context + 168);
    v5 = *(context + 21);
    if (v5)
    {
      SecTrust = 0;
    }

    else
    {
      SecTrust = sslCreateSecTrust(context, context + 21);
      v5 = *(context + 21);
    }

    *trust = v5;
    if (*v6)
    {
      CFRetain(*v6);
    }
  }

  return SecTrust;
}

uint64_t SSLGetPeerSecTrust(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v5 = *(a1 + 168);
    if (v5)
    {
      result = 0;
    }

    else
    {
      result = sslCreateSecTrust(a1, (a1 + 168));
      v5 = *(a1 + 168);
    }

    *a2 = v5;
  }

  return result;
}

uint64_t SSLInternalMasterSecret(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return MEMORY[0x1EEE64970](*(a1 + 56));
  }

  else
  {
    return 4294967246;
  }
}

uint64_t SSLInternalServerRandom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return MEMORY[0x1EEE64980](*(a1 + 56));
  }

  else
  {
    return 4294967246;
  }
}

uint64_t SSLInternalClientRandom(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    return MEMORY[0x1EEE64968](*(a1 + 56));
  }

  else
  {
    return 4294967246;
  }
}

uint64_t SSLGetCipherSizes(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = 4294967246;
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v9 = *(a1 + 56);
      tls_handshake_get_negotiated_cipherspec();
      *a2 = sslCipherSuiteGetMacSize();
      *a3 = sslCipherSuiteGetSymmetricCipherKeySize();
      SymmetricCipherBlockIvSize = sslCipherSuiteGetSymmetricCipherBlockIvSize();
      result = 0;
      *a4 = SymmetricCipherBlockIvSize;
    }
  }

  return result;
}

uint64_t SSLGetResumableSessionInfo(uint64_t a1, _BYTE *a2, void *a3, unint64_t *a4)
{
  result = 4294967246;
  if (a1 && a2 && a3 && a4)
  {
    if (*a4 < 0x20)
    {
      return 4294967246;
    }

    v9 = *(a1 + 56);
    if (tls_handshake_get_session_match())
    {
      *a2 = 1;
      v10 = 0xAAAAAAAAAAAAAAAALL;
      if (*a4 < 0xAAAAAAAAAAAAAAAALL)
      {
        return 4294967246;
      }

      memmove(a3, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
    }

    else
    {
      v10 = 0;
      *a2 = 0;
    }

    result = 0;
    *a4 = v10;
  }

  return result;
}

uint64_t SSLSetSessionCacheTimeout(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 316) = a2;
  return result;
}

uint64_t SSLInternalSetMasterSecretFunction(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  a1[42] = a2;
  a1[43] = a3;
  return MEMORY[0x1EEE64988](a1[7], tls_handshake_master_secret_function, a1);
}

uint64_t SSLInternalSetSessionTicket(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  v1 = *(a1 + 80);
  v2 = v1 > 6;
  v3 = (1 << v1) & 0x59;
  if (v2 || v3 == 0)
  {
    return 4294966387;
  }

  else
  {
    return MEMORY[0x1EEE64990](*(a1 + 56));
  }
}

uint64_t SSLGetNegotiatedCurve(uint64_t a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 56);
      negotiated_curve = tls_handshake_get_negotiated_curve();
      result = 0;
      *a2 = negotiated_curve;
    }
  }

  return result;
}

uint64_t SSLGetNumberOfECDSACurves(uint64_t a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 248);
    }
  }

  return result;
}

uint64_t SSLGetECDSACurves(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = 4294967246;
  if (a1 && a2 && a3)
  {
    v4 = *(a1 + 248);
    if (*a3 >= v4)
    {
      if (v4)
      {
        v5 = 0;
        v6 = *(a1 + 240);
        do
        {
          *(a2 + 4 * v5) = *(v6 + 2 * v5);
          ++v5;
          v7 = *(a1 + 248);
        }

        while (v5 < v7);
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v3 = 0;
      *a3 = v7;
    }

    else
    {
      return 4294967246;
    }
  }

  return v3;
}

uint64_t SSLSetECDSACurves(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 4294967246;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 80);
    v8 = v7 > 6;
    v9 = (1 << v7) & 0x59;
    if (v8 || v9 == 0)
    {
      return 4294966387;
    }

    else
    {
      v11 = malloc_type_malloc(2 * a3, 0x7BE92BBDuLL);
      *(a1 + 240) = v11;
      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = *(a2 + 4 * v12);
          if (v13 > 65534)
          {
            LOWORD(v13) = -1;
          }

          v11[v12++] = v13;
        }

        while (a3 != v12);
        *(a1 + 248) = a3;
        v14 = *(a1 + 56);
        tls_handshake_set_curves();
        return 0;
      }

      else
      {
        *(a1 + 248) = 0;
        return 4294967188;
      }
    }
  }

  return result;
}

uint64_t SSLGetNumberOfClientAuthTypes(uint64_t a1, _DWORD *a2)
{
  if (!a1 || !*(a1 + 256))
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 400);
  return result;
}

uint64_t SSLGetClientAuthTypes(uint64_t a1, void *__dst, _DWORD *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (!*(a1 + 256))
  {
    return 4294967246;
  }

  memmove(__dst, *(a1 + 408), 4 * *(a1 + 400));
  result = 0;
  *a3 = *(a1 + 400);
  return result;
}

uint64_t SSLGetNumberOfSignatureAlgorithms(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  v1 = *(a1 + 56);
  tls_handshake_get_peer_signature_algorithms();
  return 0;
}

uint64_t SSLGetSignatureAlgorithms(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  v5 = *(a1 + 56);
  peer_signature_algorithms = tls_handshake_get_peer_signature_algorithms();
  memmove(a2, peer_signature_algorithms, 0x555555550uLL);
  result = 0;
  *a3 = -1431655766;
  return result;
}

uint64_t SSLSetPSKSharedSecret(void *a1, const void *a2, size_t size)
{
  if (!a1)
  {
    return 4294967246;
  }

  v6 = a1[61];
  if (v6)
  {
    free(v6);
    a1[60] = 0;
    a1[61] = 0;
  }

  v7 = malloc_type_malloc(size, 0x7BE92BBDuLL);
  if (v7)
  {
    v8 = v7;
    memmove(v7, a2, size);
    a1[60] = size;
    a1[61] = v8;
    v9 = a1[7];
    tls_handshake_set_psk_secret();
    return 0;
  }

  else
  {
    a1[61] = 0;
    return 4294967188;
  }
}

uint64_t SSLSetPSKIdentity(void *a1, const void *a2, size_t size)
{
  result = 4294967246;
  if (a1 && a2 && size)
  {
    v7 = a1[63];
    if (v7)
    {
      free(v7);
      a1[62] = 0;
      a1[63] = 0;
    }

    v8 = malloc_type_malloc(size, 0x7BE92BBDuLL);
    if (v8)
    {
      v9 = v8;
      memmove(v8, a2, size);
      a1[62] = size;
      a1[63] = v9;
      v10 = a1[7];
      tls_handshake_set_psk_identity();
      return 0;
    }

    else
    {
      a1[63] = 0;
      return 4294967188;
    }
  }

  return result;
}

uint64_t SSLGetPSKIdentity(uint64_t a1, void *a2, void *a3)
{
  result = 4294967246;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      v6 = a1 + 496;
      v5 = *(a1 + 496);
      *a2 = *(v6 + 8);
      *a3 = v5;
    }
  }

  return result;
}

uint64_t tls_handshake_delete_all_sessions_callback(uint64_t a1)
{
  if (*(a1 + 64))
  {
    tls_cache_empty();
  }

  return 0;
}

uint64_t tls_handshake_delete_session_data_callback(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return tls_cache_delete_session_data();
  }

  else
  {
    return 4294957492;
  }
}

uint64_t tls_handshake_load_session_data_callback(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v12[0] = a2;
  v12[1] = a3;
  v6 = a1[29];
  if (v6)
  {
    free(v6);
  }

  a1[28] = 0;
  a1[29] = 0;
  if (!a1[8])
  {
    return 4294957492;
  }

  v10 = 0;
  v11 = 0;
  session_data = _buildConfigurationSpecificSessionCacheKey(a1, v12, &v10);
  if (!session_data)
  {
    v8 = a1[8];
    session_data = tls_cache_load_session_data();
    *a4 = *(a1 + 14);
    free(v11);
  }

  return session_data;
}

uint64_t _buildConfigurationSpecificSessionCacheKey(uint64_t a1, uint64_t a2, size_t *a3)
{
  if (!*(a1 + 376))
  {
    v9 = malloc_type_malloc(0xAuLL, 0x682C6729uLL);
    if (v9)
    {
      v8 = v9;
      *v9 = *(a1 + 353);
      v9[1] = *(a1 + 354);
      v9[2] = *(a1 + 355);
      v9[3] = *(a1 + 356);
      v9[4] = *(a1 + 357);
      v9[5] = *(a1 + 358);
      v9[6] = *(a1 + 359);
      v9[7] = *(a1 + 360);
      v9[8] = *(a1 + 361);
      v9[9] = *(a1 + 362);
      v6 = 10;
      *(a1 + 368) = 10;
      v10 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
      *(a1 + 376) = v10;
      v11 = v8[4];
      *v10 = *v8;
      v10[4] = v11;
      goto LABEL_6;
    }

    return 4294967188;
  }

  v6 = *(a1 + 368);
  v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v7)
  {
    return 4294967188;
  }

  v8 = v7;
  memcpy(v7, *(a1 + 376), v6);
LABEL_6:
  v12 = *a2 + v6;
  *a3 = v12;
  v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
  a3[1] = v13;
  if (v13)
  {
    memcpy(v13, v8, v6);
    memcpy((a3[1] + v6), *(a2 + 8), *a2);
    v14 = 0;
  }

  else
  {
    v14 = 4294967188;
  }

  free(v8);
  return v14;
}

uint64_t tls_handshake_save_session_data_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v12 = a4;
  v13 = a5;
  if (!*(a1 + 64))
  {
    return 4294957492;
  }

  v10 = 0;
  v11 = 0;
  v6 = _buildConfigurationSpecificSessionCacheKey(a1, v14, &v10);
  if (!v6)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 316);
    v6 = tls_cache_save_session_data();
    free(v11);
  }

  return v6;
}

uint64_t tls_handshake_set_retransmit_timer_callback(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = CFAbsoluteTimeGetCurrent() + (1 << (a2 - 1)) * *(a1 + 424);
  }

  else
  {
    v3 = 0.0;
  }

  *(a1 + 416) = v3;
  return 0;
}

void log_SecureTransport_early_fail(uint64_t a1)
{
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"com.apple.SecureTransport.early_fail.%ld", a1);
  if (v1)
  {
    v2 = v1;
    SecCoreAnalyticsSendValue(v1, 1);

    CFRelease(v2);
  }
}

OSStatus SSLReHandshake(SSLContextRef context)
{
  if (!context)
  {
    return -50;
  }

  v1 = *(context + 20) - 1;
  if (v1 < 6 && ((0x2Du >> v1) & 1) != 0)
  {
    return dword_188960624[v1];
  }

  if (*(context + 27) == 1)
  {
    return SSLHandshakeStart(context);
  }

  return MEMORY[0x1EEE649A8](*(context + 7));
}

uint64_t SSLHandshakeStart(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  md = v2;
  v17 = v2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x8000000000;
  *v15.count = v2;
  *&v15.hash[2] = v2;
  *&v15.hash[6] = v2;
  *&v15.wbuf[2] = v2;
  *&v15.wbuf[6] = v2;
  *&v15.wbuf[10] = v2;
  *&v15.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  CC_SHA256_Init(&v15);
  CC_SHA256_Update((v13 + 3), (a1 + 312), 1u);
  CC_SHA256_Update((v13 + 3), (a1 + 184), 1u);
  v3 = *(a1 + 176);
  if (v3)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __get_extended_peer_id_block_invoke;
    context[3] = &unk_1E70DD810;
    context[4] = &v12;
    v19.length = CFArrayGetCount(v3);
    v19.location = 0;
    CFArrayApplyFunction(v3, v19, apply_block_1_8368, context);
  }

  CC_SHA256_Final(&md, (v13 + 3));
  v10 = malloc_type_malloc(*(a1 + 208) + 32, 0x7BE92BBDuLL);
  memcpy(v10, *(a1 + 216), *(a1 + 208));
  v4 = &v10[*(a1 + 208)];
  v5 = v17;
  *v4 = md;
  *(v4 + 1) = v5;
  _Block_object_dispose(&v12, 8);
  v6 = *(a1 + 56);
  v7 = tls_handshake_negotiate();
  free(v10);
  if (!v7)
  {
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

OSStatus SSLSetError(SSLContextRef context, OSStatus status)
{
  *(context + 20) = 6;
  *(context + 21) = status;
  return 0;
}

OSStatus SSLGetBufferedReadSize(SSLContextRef context, size_t *bufferSize)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 37);
  if (v2)
  {
    v2 = *(context + 36) - *(context + 38);
  }

  result = 0;
  *bufferSize = v2;
  return result;
}

BOOL SSLIsSessionNegotiatedWithUnsafeDH(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 56);
    return tls_handshake_get_session_warning() == -49;
  }

  return result;
}

uint64_t SSLCiphersuiteGroupToCiphersuiteList(int a1, void *a2)
{
  if ((a1 - 1) >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  if (!a2)
  {
    return 0;
  }

  if (v2 > 4u)
  {
    v4 = 0;
    result = 0;
  }

  else
  {
    v3 = v2;
    v4 = qword_18895ED40[v2];
    result = *(&off_1E70D6910 + v3);
  }

  *a2 = v4;
  return result;
}

BOOL SSLCiphersuiteGroupContainsCiphersuite(int a1, int a2)
{
  result = 0;
  if ((a1 - 1) >= 4)
  {
    LOWORD(a1) = 0;
  }

  if (a1 <= 4u)
  {
    v4 = qword_18895ED40[a1];
    v5 = *(&off_1E70D6910 + a1);
    v6 = v4 - 1;
    do
    {
      v7 = *v5++;
      result = v7 == a2;
    }

    while (v7 != a2 && v6-- != 0);
  }

  return result;
}

uint64_t SSLProtocolGetVersionCodepoint(int a1)
{
  v1 = &ssl_protocol_version_map;
  v2 = 8;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 + 2);
}

uint64_t SSLProtocolFromVersionCodepoint(int a1)
{
  v1 = &ssl_protocol_version_map;
  v2 = 8;
  while (v1[2] != a1)
  {
    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t SSLCiphersuiteMinimumTLSVersion(int a1)
{
  v1 = &tls_ciphersuite_definitions;
  v2 = 37;
  while (*v1 != a1)
  {
    v1 += 35;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[1];
LABEL_6:
  v4 = &ssl_protocol_version_map;
  v5 = 8;
  while (v4[2] != v3)
  {
    v4 += 4;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

uint64_t SSLCiphersuiteMaximumTLSVersion(int a1)
{
  v1 = &tls_ciphersuite_definitions;
  v2 = 37;
  while (*v1 != a1)
  {
    v1 += 35;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[2];
LABEL_6:
  v4 = &ssl_protocol_version_map;
  v5 = 8;
  while (v4[2] != v3)
  {
    v4 += 4;
    if (!--v5)
    {
      return 0;
    }
  }

  return *v4;
}

OSStatus SSLGetNumberSupportedCiphers(SSLContextRef context, size_t *numCiphers)
{
  result = -50;
  if (context)
  {
    if (numCiphers)
    {
      result = 0;
      *numCiphers = 67;
    }
  }

  return result;
}

OSStatus SSLGetSupportedCiphers(SSLContextRef context, SSLCipherSuite *ciphers, size_t *numCiphers)
{
  result = -50;
  if (context && ciphers && numCiphers)
  {
    if (*numCiphers >= 0x43)
    {
      for (i = 0; i != 67; ++i)
      {
        ciphers[i] = STKnownCipherSuites[i];
      }

      result = 0;
      *numCiphers = 67;
    }

    else
    {
      return -9817;
    }
  }

  return result;
}

OSStatus SSLSetEnabledCiphers(SSLContextRef context, const SSLCipherSuite *ciphers, size_t numCiphers)
{
  result = -50;
  if (context && ciphers && numCiphers)
  {
    v7 = *(context + 20);
    v8 = v7 > 6;
    v9 = (0x10000010100uLL >> (8 * v7));
    if (!v8 && v9 == 0)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = 0;
        while (STKnownCipherSuites[v13] != ciphers[v11])
        {
          if (++v13 == 67)
          {
            goto LABEL_15;
          }
        }

        ++v12;
LABEL_15:
        ++v11;
      }

      while (v11 != numCiphers);
      if (v12)
      {
        v14 = malloc_type_malloc(2 * v12, 0x7BE92BBDuLL);
        if (v14)
        {
          v15 = v14;
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = 0;
            v19 = ciphers[v16];
            while (STKnownCipherSuites[v18] != v19)
            {
              if (++v18 == 67)
              {
                goto LABEL_24;
              }
            }

            *(v14 + v17++) = v19;
LABEL_24:
            ++v16;
          }

          while (v16 != numCiphers);
          v20 = *(context + 7);
          v21 = tls_handshake_set_ciphersuites();
          free(v15);
          return v21;
        }

        else
        {
          return -108;
        }
      }

      else
      {
        return -50;
      }
    }

    else
    {
      return -909;
    }
  }

  return result;
}

OSStatus SSLGetNumberEnabledCiphers(SSLContextRef context, size_t *numCiphers)
{
  result = -50;
  if (context && numCiphers)
  {
    v5 = *(context + 7);
    result = tls_handshake_get_ciphersuites();
    if (!result)
    {
      *numCiphers = 2863311530;
    }
  }

  return result;
}

OSStatus SSLGetEnabledCiphers(SSLContextRef context, SSLCipherSuite *ciphers, size_t *numCiphers)
{
  result = -50;
  if (context)
  {
    v5 = ciphers;
    if (ciphers)
    {
      if (numCiphers)
      {
        v7 = *(context + 7);
        result = tls_handshake_get_ciphersuites();
        if (!result)
        {
          if (*numCiphers >= 0xAAAAAAAA)
          {
            v8 = 0xAAAAAAAAAAAAAAAALL;
            v9 = 2863311530;
            do
            {
              v10 = *v8++;
              *v5++ = v10;
              --v9;
            }

            while (v9);
            result = 0;
            *numCiphers = 2863311530;
          }

          else
          {
            return -9817;
          }
        }
      }
    }
  }

  return result;
}

OSStatus SSLSetSessionTicketsEnabled(SSLContextRef context, Boolean enabled)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 7);
  return tls_handshake_set_session_ticket_enabled();
}

uint64_t SOSCCSetSOSDisabledError(CFTypeRef *a1)
{
  if (a1)
  {
    if (staticSOSDisabledError_onceToken != -1)
    {
      dispatch_once(&staticSOSDisabledError_onceToken, &__block_literal_global_277);
    }

    *a1 = CFRetain(staticSOSDisabledError_sosIsDisabledError);
  }

  return 1;
}

uint64_t SOSCCThisDeviceIsInCircle(CFTypeRef *a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    result = SOSGetCachedCircleStatus(a1);
    if (result == -99)
    {

      return SOSCCThisDeviceIsInCircleNonCached(a1);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t SOSCCIsSOSTrustAndSyncingEnabled()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = secLogObjForScope("sos-compatibility-mode");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEBUG, "enter SOSCCIsSOSTrustAndSyncingEnabled", buf, 2u);
  }

  if (OctagonIsSOSFeatureEnabled() && SOSCompatibilityModeEnabled())
  {
    v1 = secLogObjForScope("sos-compatibility-mode");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v1, OS_LOG_TYPE_DEFAULT, "SOS Compatibility Mode feature flag enabled, checking platform availability and sos compat mode", buf, 2u);
    }

    cf = 0;
    IsSOSFeatureEnabled = SOSCCFetchCompatibilityMode(&cf);
    v3 = secLogObjForScope("sos-compatibility-mode");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"disabled";
      if (IsSOSFeatureEnabled)
      {
        v4 = @"enabled";
      }

      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "sos trust and syncing is %@", buf, 0xCu);
    }

    if (cf)
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = cf;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "sos-compatibility-mode: fetching compatibility mode error: %@", buf, 0xCu);
      }

      v6 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v6);
      }
    }
  }

  else
  {
    IsSOSFeatureEnabled = OctagonIsSOSFeatureEnabled();
  }

  v7 = *MEMORY[0x1E69E9840];
  return IsSOSFeatureEnabled;
}

uint64_t SOSCCThisDeviceIsInCircleNonCached(CFTypeRef *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCThisDeviceIsInCircleNonCached", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SOSCCThisDeviceIsInCircleNonCached_block_invoke;
    v19[3] = &__block_descriptor_40_e5_i8__0l;
    v19[4] = a1;
    v9 = __SOSCCThisDeviceIsInCircleNonCached_block_invoke(v19);
    v15 = SecLogAPICreate(0, "SOSCCThisDeviceIsInCircleNonCached", @"SOSCCStatus=%d", v10, v11, v12, v13, v14, v9);
    v16 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v9 = 0xFFFFFFFFLL;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __SOSCCThisDeviceIsInCircleNonCached_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (gSecurityd)
  {
    v2 = *(gSecurityd + 240);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *MEMORY[0x1E69E9840];

      return v2(v3);
    }
  }

  message = securityd_create_message(0x31u, *(a1 + 32));
  v7 = message;
  if (message)
  {
    v8 = securityd_message_with_reply_sync(message, *(a1 + 32));
    v9 = v8;
    if (v8)
    {
      if (!xpc_dictionary_entry_is_type(v8))
      {
        int64 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      int64 = xpc_dictionary_get_int64(v9, "status");
      if ((int64 & 0x80000000) != 0)
      {
LABEL_14:
        if (securityd_message_no_error(v9, *(a1 + 32)))
        {
          v11 = MEMORY[0x18CFDC040](v9);
          SecCFCreateErrorWithFormat(0, sSecXPCErrorDomain, 0, *(a1 + 32), v12, @"Remote error occurred/no info: %s", v13, v14, v11);
          free(v11);
        }
      }
    }

    else
    {
      int64 = 0xFFFFFFFFLL;
    }

    goto LABEL_17;
  }

  int64 = 0xFFFFFFFFLL;
LABEL_17:
  v15 = secLogObjForScope("circleOps");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v18 = int64;
    _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "Retrieved non-cached circle value %d", buf, 8u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return int64;
}

BOOL xpc_dictionary_entry_is_type(void *a1)
{
  v1 = xpc_dictionary_get_value(a1, "status");
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x18CFDC200](v1) == MEMORY[0x1E69E9EB0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SOSCCFetchCompatibilityMode(CFTypeRef *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("sos-compatibility-mode");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "enter SOSCCFetchCompatibilityMode", buf, 2u);
  }

  if (gSecurityd && (v3 = *(gSecurityd + 664)) != 0)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = simple_BOOL_error_request(0x5Bu, a1);
  }

  v10 = v4;
  v11 = SecLogAPICreate(0, "SOSCCFetchCompatibilityMode", @"return=%d", v5, v6, v7, v8, v9, v4);
  v12 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v11;
    _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __SOSCCFetchCompatibilityMode_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 664)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x5Bu, *(a1 + 32));
  }
}

uint64_t simple_BOOL_error_request(unsigned int a1, CFTypeRef *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __simple_BOOL_error_request_block_invoke;
  v4[3] = &unk_1E70DEAC0;
  v4[4] = &v5;
  securityd_send_sync_and_do(a1, a2, 0, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t SOSCCRequestToJoinCircle(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCRequestToJoinCircle", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 248)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x32u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCRequestToJoinCircle", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCRequestToJoinCircle_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 248)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x32u, *(a1 + 32));
  }
}

uint64_t SOSCCRequestToJoinCircleAfterRestore(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCRequestToJoinCircleAfterRestore", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 256)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x33u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCRequestToJoinCircleAfterRestore", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCRequestToJoinCircleAfterRestore_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 256)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x33u, *(a1 + 32));
  }
}

uint64_t SOSCCAccountHasPublicKey(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCAccountHasPublicKey", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 608)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x55u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCAccountHasPublicKey", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCAccountHasPublicKey_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 608)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x55u, *(a1 + 32));
  }
}

uint64_t SOSCCWaitForInitialSync(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCWaitForInitialSync", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 552)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x4Fu, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCWaitForInitialSync", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCWaitForInitialSync_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 552)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x4Fu, *(a1 + 32));
  }
}

uint64_t SOSCCAccountSetToNew(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "SOSCCAccountSetToNew called", buf, 2u);
    }

    v8 = SecLogAPICreate(0, "SOSCCAccountSetToNew", 0, v3, v4, v5, v6, v7, 0);
    v9 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (gSecurityd && (v10 = *(gSecurityd + 264)) != 0)
    {
      v11 = v10(a1);
    }

    else
    {
      v11 = simple_BOOL_error_request(0x4Cu, a1);
    }

    v17 = v11;
    v18 = SecLogAPICreate(0, "SOSCCAccountSetToNew", @"return=%d", v12, v13, v14, v15, v16, v11);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCAccountSetToNew_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 264)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x4Cu, *(a1 + 32));
  }
}

uint64_t SOSCCResetToOffering(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "SOSCCResetToOffering called", buf, 2u);
    }

    v8 = SecLogAPICreate(0, "SOSCCResetToOffering", 0, v3, v4, v5, v6, v7, 0);
    v9 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (gSecurityd && (v10 = *(gSecurityd + 272)) != 0)
    {
      v11 = v10(a1);
    }

    else
    {
      v11 = simple_BOOL_error_request(0x34u, a1);
    }

    v17 = v11;
    v18 = SecLogAPICreate(0, "SOSCCResetToOffering", @"return=%d", v12, v13, v14, v15, v16, v11);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCResetToOffering_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 272)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x34u, *(a1 + 32));
  }
}

uint64_t SOSCCResetToEmpty(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "SOSCCResetToEmpty called", buf, 2u);
    }

    v8 = SecLogAPICreate(0, "SOSCCResetToEmpty", 0, v3, v4, v5, v6, v7, 0);
    v9 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (gSecurityd && (v10 = *(gSecurityd + 280)) != 0)
    {
      v11 = v10(a1);
    }

    else
    {
      v11 = simple_BOOL_error_request(0x35u, a1);
    }

    v17 = v11;
    v18 = SecLogAPICreate(0, "SOSCCResetToEmpty", @"return=%d", v12, v13, v14, v15, v16, v11);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCResetToEmpty_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 280)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x35u, *(a1 + 32));
  }
}

uint64_t SOSCCRemovePeersFromCircle(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCRemovePeersFromCircle", 0, v4, v5, v6, v7, v8, 0);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCRemovePeersFromCircle_block_invoke;
    v21[3] = &__block_descriptor_48_e5_B8__0l;
    v21[4] = a1;
    v21[5] = a2;
    v11 = __SOSCCRemovePeersFromCircle_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCRemovePeersFromCircle", @"return=%d", v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SOSCCRemovePeersFromCircle_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 336)) != 0)
  {
    return v1(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    return info_array_to_BOOL_error_request(0x39u, *(a1 + 32), *(a1 + 40));
  }
}

uint64_t info_array_to_BOOL_error_request(unsigned int a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __info_array_to_BOOL_error_request_block_invoke;
  v6[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
  v6[4] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __info_array_to_BOOL_error_request_block_invoke_2;
  v5[3] = &unk_1E70DEAC0;
  v5[4] = &v7;
  securityd_send_sync_and_do(a1, a3, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t SOSCCRemoveThisDeviceFromCircle(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCRemoveThisDeviceFromCircle", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 328)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x38u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCRemoveThisDeviceFromCircle", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCRemoveThisDeviceFromCircle_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 328)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x38u, *(a1 + 32));
  }
}

uint64_t SOSCCLoggedIntoAccount(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCLoggedIntoAccount", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 344)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x3Au, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCLoggedIntoAccount", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCLoggedIntoAccount_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 344)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x3Au, *(a1 + 32));
  }
}

uint64_t SOSCCLoggedOutOfAccount(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCLoggedOutOfAccount", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 352)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x3Bu, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCLoggedOutOfAccount", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCLoggedOutOfAccount_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 352)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x3Bu, *(a1 + 32));
  }
}

uint64_t SOSCCBailFromCircle_BestEffort(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCBailFromCircle_BestEffort", 0, v4, v5, v6, v7, v8, 0);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCBailFromCircle_BestEffort_block_invoke;
    v21[3] = &__block_descriptor_48_e5_B8__0l;
    v21[4] = a1;
    v21[5] = a2;
    v11 = __SOSCCBailFromCircle_BestEffort_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCBailFromCircle_BestEffort", @"return=%d", v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SOSCCCopyPeerPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyPeerPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 456)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x43u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyPeerPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyPeerPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 456)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x43u, *(a1 + 32));
  }
}

uint64_t array_of_info_error_request(unsigned int a1, CFTypeRef *a2)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __array_of_info_error_request_block_invoke;
  v11[3] = &unk_1E70DEAC0;
  v11[4] = &v12;
  securityd_send_sync_and_do(a1, a2, 0, v11);
  v3 = v13[3];
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    TypeID = CFArrayGetTypeID();
    v6 = v13;
    if (v4 == TypeID)
    {
      goto LABEL_7;
    }

    v7 = v13[3];
  }

  else
  {
    v7 = 0;
  }

  SOSErrorCreate(1040, a2, 0, @"Expected array, got: %@", v7);
  v6 = v13;
  v8 = v13[3];
  if (v8)
  {
    v13[3] = 0;
    CFRelease(v8);
    v6 = v13;
  }

LABEL_7:
  v9 = v6[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_1888B1C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __array_of_info_error_request_block_invoke(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  v6 = xpc_dictionary_get_value(xdict, "status");
  v13 = v6;
  if (xdict && v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = CreateArrayOfPeerInfoWithXPCObject(v6, a3, v7, v8, v9, v10, v11, v12);
  }

  v14 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v14;
}

uint64_t SOSCCCopyConcurringPeerPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyConcurringPeerPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 464)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x44u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyConcurringPeerPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyConcurringPeerPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 464)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x44u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyGenerationPeerInfo(CFTypeRef *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyGenerationPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SOSCCCopyGenerationPeerInfo_block_invoke;
    v19[3] = &__block_descriptor_40_e17_____CFArray__8__0l;
    v19[4] = a1;
    v9 = __SOSCCCopyGenerationPeerInfo_block_invoke(v19);
    v15 = SecLogAPICreate(0, "SOSCCCopyGenerationPeerInfo", @"return=%@", v10, v11, v12, v13, v14, v9);
    v16 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __SOSCCCopyGenerationPeerInfo_block_invoke(uint64_t a1)
{
  if (!gSecurityd || (v1 = *(gSecurityd + 400)) == 0)
  {
    v4 = *(a1 + 32);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __simple_array_error_request_block_invoke;
    v13[3] = &unk_1E70DEAC0;
    v13[4] = &v14;
    v5 = securityd_send_sync_and_do(0x45u, v4, 0, v13);
    v6 = v15;
    if (v5)
    {
      v7 = v15[3];
      if (!v7)
      {
        v10 = 0;
LABEL_11:
        SOSErrorCreate(1040, v4, 0, @"Expected array, got: %@", v10);
        v6 = v15;
        v11 = v15[3];
        if (v11)
        {
          v15[3] = 0;
          CFRelease(v11);
          v6 = v15;
        }

        goto LABEL_13;
      }

      v8 = CFGetTypeID(v7);
      TypeID = CFArrayGetTypeID();
      v6 = v15;
      if (v8 != TypeID)
      {
        v10 = v15[3];
        goto LABEL_11;
      }
    }

LABEL_13:
    v12 = v6[3];
    _Block_object_dispose(&v14, 8);
    return v12;
  }

  v2 = *(a1 + 32);

  return v1(v2);
}

void sub_1888B226C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __simple_array_error_request_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "status");
  *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
  v4 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v4;
}

uint64_t SOSCCCopyApplicantPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyApplicantPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 408)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x3Fu, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyApplicantPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyApplicantPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 408)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x3Fu, *(a1 + 32));
  }
}

uint64_t SOSCCValidateUserPublic(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCValidateUserPublic", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 392)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x41u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCValidateUserPublic", 0, v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCValidateUserPublic_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 392)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x41u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyValidPeerPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyValidPeerPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 416)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x40u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyValidPeerPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyValidPeerPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 416)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x40u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyNotValidPeerPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyNotValidPeerPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 424)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x42u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyNotValidPeerPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyNotValidPeerPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 424)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x42u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyRetirementPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyRetirementPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 432)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x48u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyRetirementPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyRetirementPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 432)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x48u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyViewUnawarePeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyViewUnawarePeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 440)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = array_of_info_error_request(0x49u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyViewUnawarePeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyViewUnawarePeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 440)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return array_of_info_error_request(0x49u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyMyPeerInfo(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyMyPeerInfo", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 544)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = peer_info_error_request(0x4Bu, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCopyMyPeerInfo", @"return=%@", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCopyMyPeerInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 544)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return peer_info_error_request(0x4Bu, *(a1 + 32));
  }
}

uint64_t peer_info_error_request(unsigned int a1, CFTypeRef *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __peer_info_error_request_block_invoke;
  v10[3] = &unk_1E70DEAC0;
  v10[4] = &v11;
  securityd_send_sync_and_do(a1, a2, 0, v10);
  v3 = v12[3];
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    TypeID = CFDataGetTypeID();
    v6 = v12[3];
    if (v4 == TypeID)
    {
      v7 = SOSPeerInfoCreateFromData(TypeID, a2, v6);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  SOSErrorCreate(1040, a2, 0, @"Expected CFData, got: %@", v6);
  v7 = 0;
LABEL_6:
  v8 = v12[3];
  if (v8)
  {
    v12[3] = 0;
    CFRelease(v8);
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1888B32FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __peer_info_error_request_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "status");
  v5 = v4;
  if (xdict && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
  }

  v6 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v6;
}

void SOSCCForEachEngineStateAsStringFromArray(const __CFArray *a1, void *a2)
{
  v3 = a2;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSCCForEachEngineStateAsStringFromArray_block_invoke;
    context[3] = &unk_1E70DD8F8;
    v5 = v3;
    v6.length = CFArrayGetCount(a1);
    v6.location = 0;
    CFArrayApplyFunction(a1, v6, apply_block_1_8617, context);
  }
}

void __SOSCCForEachEngineStateAsStringFromArray_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      Value = CFDictionaryGetValue(cf, kSOSCCEngineStatePeerIDKey);
      if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()))
      {
        CFStringAppendFormat(Mutable, 0, @"remote %@ ", v8);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"local ");
      }

      v10 = CFDictionaryGetValue(cf, kSOSCCEngineStateSyncSetKey);
      if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFSetGetTypeID()))
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __SOSCCForEachEngineStateAsStringFromArray_block_invoke_2;
        v31[3] = &__block_descriptor_40_e21_v16__0____CFString__8l;
        v31[4] = Mutable;
        CFStringSetPerformWithDescription(v11, v31);
      }

      else
      {
        CFStringAppendFormat(Mutable, 0, @"<Missing view set!>");
      }

      v13 = CFDictionaryGetValue(cf, kSOSCCEngineStateManifestCountKey);
      CFStringAppendFormat(Mutable, 0, @" [%@]", v13);
      v14 = CFDictionaryGetValue(cf, kSOSCCEngineStateManifestHashKey);
      if (v14)
      {
        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 == CFDataGetTypeID())
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v28 = __SOSCCForEachEngineStateAsStringFromArray_block_invoke_3;
          v29 = &__block_descriptor_40_e21_v16__0____CFString__8l;
          v30 = Mutable;
          v17 = v27;
          Length = CFDataGetLength(v15);
          v19 = CFStringCreateMutable(v5, 2 * Length);
          BytePtr = CFDataGetBytePtr(v15);
          v21 = CFDataGetLength(v15);
          if (v21 >= 1)
          {
            v22 = v21;
            do
            {
              v23 = *BytePtr++;
              CFStringAppendFormat(v19, 0, @"%02X", v23);
              --v22;
            }

            while (v22);
          }

          v28(v17, v19);
          CFRelease(v19);
        }
      }

      v24 = CFDictionaryGetValue(cf, kSOSCCEngineStateCoderKey);
      if (v24)
      {
        v25 = v24;
        v26 = CFGetTypeID(v24);
        if (v26 == CFStringGetTypeID())
        {
          CFStringAppendFormat(Mutable, 0, @" %@", v25);
        }
      }

      (*(*(a1 + 32) + 16))();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

uint64_t SOSCCForEachEngineStateAsString(CFTypeRef *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SOSCCIsSOSTrustAndSyncingEnabled() & 1) != 0 && (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCCopyEngineState", 0, v4, v5, v6, v7, v8, 0);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCCopyEngineState_block_invoke;
    v21[3] = &__block_descriptor_40_e17_____CFArray__8__0l;
    v21[4] = a1;
    v11 = __SOSCCCopyEngineState_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCCopyEngineState", @"return=%@", v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (v11)
    {
      SOSCCForEachEngineStateAsStringFromArray(v11, v3);
      CFRelease(v11);
      v11 = 1;
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SOSCCCopyEngineState_block_invoke(uint64_t a1)
{
  if (!gSecurityd || (v1 = *(gSecurityd + 448)) == 0)
  {
    v4 = *(a1 + 32);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __der_array_error_request_block_invoke;
    v13[3] = &unk_1E70DEAC0;
    v13[4] = &v14;
    v5 = securityd_send_sync_and_do(0x4Au, v4, 0, v13);
    v6 = v15;
    if (v5)
    {
      v7 = v15[3];
      if (!v7)
      {
        v10 = 0;
LABEL_11:
        SOSErrorCreate(1040, v4, 0, @"Expected array, got: %@", v10);
        v6 = v15;
        v11 = v15[3];
        if (v11)
        {
          v15[3] = 0;
          CFRelease(v11);
          v6 = v15;
        }

        goto LABEL_13;
      }

      v8 = CFGetTypeID(v7);
      TypeID = CFArrayGetTypeID();
      v6 = v15;
      if (v8 != TypeID)
      {
        v10 = v15[3];
        goto LABEL_11;
      }
    }

LABEL_13:
    v12 = v6[3];
    _Block_object_dispose(&v14, 8);
    return v12;
  }

  v2 = *(a1 + 32);

  return v1(v2);
}

void sub_1888B3AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __der_array_error_request_block_invoke(uint64_t a1, xpc_object_t xdict, CFTypeRef *a3)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "status", &length);
  der_decode_plist(*MEMORY[0x1E695E480], *(*(a1 + 32) + 8) + 24, a3, data, data + length, v6, v7, v8);
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t SOSCCAcceptApplicants(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCAcceptApplicants", 0, v4, v5, v6, v7, v8, 0);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCAcceptApplicants_block_invoke;
    v21[3] = &__block_descriptor_48_e5_B8__0l;
    v21[4] = a1;
    v21[5] = a2;
    v11 = __SOSCCAcceptApplicants_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCAcceptApplicants", @"return=%d", v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SOSCCAcceptApplicants_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 368)) != 0)
  {
    return v1(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    return info_array_to_BOOL_error_request(0x3Du, *(a1 + 32), *(a1 + 40));
  }
}

uint64_t SOSCCRejectApplicants(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCRejectApplicants", @"applicants=%@", v4, v5, v6, v7, v8, a1);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCRejectApplicants_block_invoke;
    v21[3] = &__block_descriptor_48_e5_B8__0l;
    v21[4] = a1;
    v21[5] = a2;
    v11 = __SOSCCRejectApplicants_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCRejectApplicants", @"return=%d", v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SOSCCRejectApplicants_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 376)) != 0)
  {
    return v1(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    return info_array_to_BOOL_error_request(0x3Eu, *(a1 + 32), *(a1 + 40));
  }
}

uint64_t SOSCCCopyMyPeerWithNewDeviceRecoverySecret(const __CFData *a1, CFTypeRef *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    SOSCCSetSOSDisabledError(a2);
    v14 = 0;
    goto LABEL_23;
  }

  v4 = secLogObjForScope("devRecovery");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Enter SOSCCCopyMyPeerWithNewDeviceRecoverySecret()", &buf, 2u);
  }

  v5 = SOSCopyDeviceBackupPublicKey(a1, a2);
  v6 = secLogObjForScope("devRecovery");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "SOSCopyDeviceBackupPublicKey (%@)", &buf, 0xCu);
  }

  if (v5)
  {
    if (SOSCCIsSOSTrustAndSyncingEnabled())
    {
      v12 = SecLogAPICreate(0, "SOSSetNewPublicBackupKey", 0, v7, v8, v9, v10, v11, 0);
      v13 = secLogObjForScope("api_trace");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_debug_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v28 = __SOSSetNewPublicBackupKey_block_invoke;
      v29 = &__block_descriptor_48_e27_____OpaqueSOSPeerInfo__8__0l;
      v30 = v5;
      v31 = a2;
      v14 = __SOSSetNewPublicBackupKey_block_invoke(&buf);
      v20 = SecLogAPICreate(0, "SOSSetNewPublicBackupKey", @"return=%@", v15, v16, v17, v18, v19, v14);
      v21 = secLogObjForScope("api_trace");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *v25 = 138412290;
        v26 = v20;
        _os_log_debug_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEBUG, "%@", v25, 0xCu);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_19;
    }

    SOSCCSetSOSDisabledError(a2);
  }

  v14 = 0;
LABEL_19:
  v22 = secLogObjForScope("devRecovery");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "SOSSetNewPublicBackupKey (%@)", &buf, 0xCu);
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __SOSSetNewPublicBackupKey_block_invoke(uint64_t a1)
{
  if (gSecurityd)
  {
    v1 = *(gSecurityd + 384);
    if (v1)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 32);

      return v1(v3, v2);
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __data_to_peer_info_error_request_block_invoke;
  v14[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
  v14[4] = v5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __data_to_peer_info_error_request_block_invoke_2;
  v13[3] = &unk_1E70DEAC0;
  v13[4] = &v15;
  securityd_send_sync_and_do(0x4Du, v6, v14, v13);
  v7 = v16[3];
  if (!v7)
  {
    v10 = 0;
    goto LABEL_10;
  }

  v8 = CFGetTypeID(v7);
  TypeID = CFDataGetTypeID();
  v10 = v16[3];
  if (v8 != TypeID)
  {
LABEL_10:
    SOSErrorCreate(1040, v6, 0, @"Expected CFData, got: %@", v10);
    v11 = 0;
    goto LABEL_11;
  }

  v11 = SOSPeerInfoCreateFromData(TypeID, v6, v10);
LABEL_11:
  v12 = v16[3];
  if (v12)
  {
    v16[3] = 0;
    CFRelease(v12);
  }

  _Block_object_dispose(&v15, 8);
  return v11;
}

BOOL __data_to_peer_info_error_request_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (v5)
  {
    xpc_dictionary_set_value(v3, "newPublicBackupKey", v5);
  }

  return v5 != 0;
}

BOOL __data_to_peer_info_error_request_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "status");
  v5 = v4;
  if (xdict && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
  }

  v6 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v6;
}

uint64_t SOSCCRegisterSingleRecoverySecret(uint64_t a1, char a2, CFTypeRef *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v11 = SecLogAPICreate(0, "SOSCCRegisterSingleRecoverySecret", 0, v6, v7, v8, v9, v10, 0);
    v12 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v11;
      _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __SOSCCRegisterSingleRecoverySecret_block_invoke;
    v23[3] = &__block_descriptor_49_e5_B8__0l;
    v24 = a2;
    v23[4] = a1;
    v23[5] = a3;
    v13 = __SOSCCRegisterSingleRecoverySecret_block_invoke(v23);
    v19 = SecLogAPICreate(0, "SOSCCRegisterSingleRecoverySecret", @"return=%d", v14, v15, v16, v17, v18, v13);
    v20 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_debug_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a3);
    v13 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __SOSCCRegisterSingleRecoverySecret_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 304)) != 0)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);

    return v3(v6, v4, v5);
  }

  else
  {
    v13 = v1;
    v14 = v2;
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __keybag_and_BOOL_to_BOOL_error_request_block_invoke;
    v11[3] = &__block_descriptor_41_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v11[4] = v10;
    v12 = v8;
    return securityd_send_sync_and_do(0x4Eu, v9, v11, &__block_literal_global_309);
  }
}

uint64_t SOSCCRegisterRecoveryPublicKey(uint64_t a1, CFTypeRef *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCRegisterRecoveryPublicKey", 0, v4, v5, v6, v7, v8, 0);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCRegisterRecoveryPublicKey_block_invoke;
    v21[3] = &__block_descriptor_48_e5_B8__0l;
    v21[4] = a1;
    v21[5] = a2;
    v11 = __SOSCCRegisterRecoveryPublicKey_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCRegisterRecoveryPublicKey", @"return=%d", v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SOSCCRegisterRecoveryPublicKey_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 312)) != 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    return v3(v5, v4);
  }

  else
  {
    v9[5] = v1;
    v9[6] = v2;
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __recovery_and_BOOL_to_BOOL_error_request_block_invoke;
    v9[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v9[4] = v8;
    return securityd_send_sync_and_do(0x57u, v7, v9, &__block_literal_global_311);
  }
}

uint64_t SOSCCCopyRecoveryPublicKey(CFTypeRef *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCopyRecoveryPublicKey", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __SOSCCCopyRecoveryPublicKey_block_invoke;
    v19[3] = &__block_descriptor_40_e16_____CFData__8__0l;
    v19[4] = a1;
    v9 = __SOSCCCopyRecoveryPublicKey_block_invoke(v19);
    v15 = SecLogAPICreate(0, "SOSCCCopyRecoveryPublicKey", @"return=%@", v10, v11, v12, v13, v14, v9);
    v16 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v9 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t __SOSCCCopyRecoveryPublicKey_block_invoke(uint64_t a1)
{
  if (!gSecurityd || (v1 = *(gSecurityd + 320)) == 0)
  {
    v4 = *(a1 + 32);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __data_to_error_request_block_invoke;
    v9[3] = &unk_1E70DEAC0;
    v9[4] = &v10;
    securityd_send_sync_and_do(0x58u, v4, 0, v9);
    v5 = v11[3];
    if (v5)
    {
      v6 = CFGetTypeID(v5);
      TypeID = CFDataGetTypeID();
      v8 = v11[3];
      if (v6 == TypeID)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
    }

    SOSErrorCreate(1040, v4, 0, @"Expected CFData, got: %@", v8);
    v8 = 0;
LABEL_11:
    _Block_object_dispose(&v10, 8);
    return v8;
  }

  v2 = *(a1 + 32);

  return v1(v2);
}

void sub_1888B4ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __data_to_error_request_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "status");
  v5 = v4;
  if (xdict && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
  }

  v6 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v6;
}

uint64_t SOSCCRegisterUserCredentials(__CFString *a1, uint64_t a2, CFTypeRef *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v6 = secLogObjForScope("circleOps");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a1;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "SOSCCRegisterUserCredentials - calling SOSCCSetUserCredentials for %@\n", &v9, 0xCu);
    }

    result = SOSCCSetUserCredentials(a1, a2, a3);
  }

  else
  {
    SOSCCSetSOSDisabledError(a3);
    result = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCSetUserCredentials(__CFString *a1, uint64_t a2, CFTypeRef *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v6 = secLogObjForScope("circleOps");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = a1;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "SOSCCSetUserCredentials for %@\n", buf, 0xCu);
    }

    v12 = SecLogAPICreate(0, "SOSCCSetUserCredentials", @"user_label=%@", v7, v8, v9, v10, v11, a1);
    v13 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_debug_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __SOSCCSetUserCredentials_block_invoke;
    v24[3] = &__block_descriptor_56_e5_B8__0l;
    v24[4] = a1;
    v24[5] = a2;
    v24[6] = a3;
    v14 = __SOSCCSetUserCredentials_block_invoke(v24);
    v20 = SecLogAPICreate(0, "SOSCCSetUserCredentials", @"return=%d", v15, v16, v17, v18, v19, v14);
    v21 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v20;
      _os_log_debug_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a3);
    v14 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __SOSCCSetUserCredentials_block_invoke(void *a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 208)) != 0)
  {
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[4];

    return v3(v6, v4, v5);
  }

  else
  {
    v17 = v1;
    v18 = v2;
    v8 = a1[6];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __label_and_password_to_BOOL_error_request_block_invoke;
    v11[3] = &__block_descriptor_48_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v12 = *(a1 + 2);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __label_and_password_to_BOOL_error_request_block_invoke_3;
    v10[3] = &unk_1E70DEAC0;
    v10[4] = &v13;
    securityd_send_sync_and_do(0x2Du, v8, v11, v10);
    v9 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
    return v9;
  }
}

uint64_t SOSCCSetUserCredentialsAndDSID(__CFString *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v8 = secLogObjForScope("circleOps");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = a1;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SOSCCSetUserCredentialsAndDSID for %@\n", buf, 0xCu);
    }

    v14 = SecLogAPICreate(0, "SOSCCSetUserCredentialsAndDSID", @"user_label=%@", v9, v10, v11, v12, v13, a1);
    v15 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_debug_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __SOSCCSetUserCredentialsAndDSID_block_invoke;
    v26[3] = &__block_descriptor_64_e5_B8__0l;
    v26[4] = a1;
    v26[5] = a2;
    v26[6] = a3;
    v26[7] = a4;
    v16 = __SOSCCSetUserCredentialsAndDSID_block_invoke(v26);
    v22 = SecLogAPICreate(0, "SOSCCSetUserCredentialsAndDSID", @"return=%d", v17, v18, v19, v20, v21, v16);
    v23 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v22;
      _os_log_debug_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a4);
    v16 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCSetUserCredentialsAndDSID_block_invoke(uint64_t a1)
{
  if (gSecurityd)
  {
    v1 = *(gSecurityd + 216);
    if (v1)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
      v4 = *(a1 + 56);
      v5 = *(a1 + 32);

      return v1(v5, v2, v3, v4);
    }
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    SOSErrorCreate(1045, *(a1 + 56), 0, @"user_label is nil");
    return 0;
  }

  v8 = *(a1 + 40);
  if (!v8)
  {
    SOSErrorCreate(1045, *(a1 + 56), 0, @"user_password is nil");
    return 0;
  }

  v9 = *(a1 + 56);
  if (*(a1 + 48))
  {
    v10 = *(a1 + 48);
  }

  else
  {
    v10 = &stru_1EFA8C6C8;
  }

  return label_and_password_and_dsid_to_BOOL_error_request(0x2Eu, v7, v8, v10, v9);
}

uint64_t label_and_password_and_dsid_to_BOOL_error_request(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __label_and_password_and_dsid_to_BOOL_error_request_block_invoke;
  v8[3] = &__block_descriptor_56_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
  v8[4] = a2;
  v8[5] = a4;
  v8[6] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __label_and_password_and_dsid_to_BOOL_error_request_block_invoke_4;
  v7[3] = &unk_1E70DEAC0;
  v7[4] = &v9;
  securityd_send_sync_and_do(a1, a5, v8, v7);
  v5 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t SOSCCTryUserCredentialsAndDSID(uint64_t a1, uint64_t a2, __CFString *a3, CFTypeRef *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    SOSCCSetSOSDisabledError(a4);
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  v8 = secLogObjForScope("sosops");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = a1;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SOSCCTryUserCredentialsAndDSID!! %@\n", &v12, 0xCu);
  }

  if (!a1)
  {
    SOSErrorCreate(1045, a4, 0, @"user_label is nil");
    goto LABEL_11;
  }

  if (!a2)
  {
    SOSErrorCreate(1045, a4, 0, @"user_password is nil");
    goto LABEL_11;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = &stru_1EFA8C6C8;
  }

  result = SOSCCTryUserCredentialsAndDSID_internal(a1, a2, v9, a4);
LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCTryUserCredentialsAndDSID_internal(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __SOSCCTryUserCredentialsAndDSID_internal_block_invoke;
    v18[3] = &__block_descriptor_64_e5_B8__0l;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = a3;
    v18[7] = a4;
    v8 = __SOSCCTryUserCredentialsAndDSID_internal_block_invoke(v18);
    v14 = SecLogAPICreate(0, "SOSCCTryUserCredentialsAndDSID_internal", @"return=%d", v9, v10, v11, v12, v13, v8);
    v15 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v14;
      _os_log_debug_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a4);
    v8 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t SOSCCTryUserCredentials(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {

    return SOSCCTryUserCredentialsAndDSID_internal(a1, a2, 0, a3);
  }

  else
  {
    SOSCCSetSOSDisabledError(a3);
    return 0;
  }
}

uint64_t SOSCCCanAuthenticate(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCCanAuthenticate", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 224)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x2Fu, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCCanAuthenticate", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCCanAuthenticate_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 224)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x2Fu, *(a1 + 32));
  }
}

uint64_t SOSCCPurgeUserCredentials(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCPurgeUserCredentials", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 232)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_BOOL_error_request(0x30u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCPurgeUserCredentials", @"return=%d", v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCPurgeUserCredentials_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 232)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x30u, *(a1 + 32));
  }
}

uint64_t SOSCCGetLastDepartureReason(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCGetLastDepartureReason", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 472)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_int_error_request(0x46u, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCGetLastDepartureReason", 0, v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCGetLastDepartureReason_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 472)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_int_error_request(0x46u, *(a1 + 32));
  }
}

uint64_t simple_int_error_request(unsigned int a1, CFTypeRef *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __simple_int_error_request_block_invoke;
  v4[3] = &unk_1E70DEAC0;
  v4[4] = &v5;
  securityd_send_sync_and_do(a1, a2, 0, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL __simple_int_error_request_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "status");
  if (int64 == int64)
  {
    *(*(*(a1 + 32) + 8) + 24) = int64;
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t SOSCCSetLastDepartureReason(int a1, CFTypeRef *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v9 = SecLogAPICreate(0, "SOSCCSetLastDepartureReason", 0, v4, v5, v6, v7, v8, 0);
    v10 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __SOSCCSetLastDepartureReason_block_invoke;
    v21[3] = &__block_descriptor_44_e5_B8__0l;
    v22 = a1;
    v21[4] = a2;
    v11 = __SOSCCSetLastDepartureReason_block_invoke(v21);
    v17 = SecLogAPICreate(0, "SOSCCSetLastDepartureReason", 0, v12, v13, v14, v15, v16, v11);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v11 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __SOSCCSetLastDepartureReason_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 480)) != 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return v3(v5, v4);
  }

  else
  {
    v10 = v1;
    v11 = v2;
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SOSCCSetLastDepartureReason_block_invoke_2;
    v8[3] = &__block_descriptor_36_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v9 = *(a1 + 40);
    return securityd_send_sync_and_do(0x47u, v7, v8, &__block_literal_global_8693);
  }
}

uint64_t SOSCCProcessEnsurePeerRegistration(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = secLogObjForScope("updates");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "enter SOSCCProcessEnsurePeerRegistration", buf, 2u);
    }

    v8 = SecLogAPICreate(0, "SOSCCProcessEnsurePeerRegistration", 0, v3, v4, v5, v6, v7, 0);
    v9 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (gSecurityd && (v10 = *(gSecurityd + 504)) != 0)
    {
      v11 = v10(a1);
    }

    else
    {
      v11 = simple_BOOL_error_request(0x22u, a1);
    }

    v17 = v11;
    v18 = SecLogAPICreate(0, "SOSCCProcessEnsurePeerRegistration", @"return=%d", v12, v13, v14, v15, v16, v11);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCProcessEnsurePeerRegistration_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 504)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x22u, *(a1 + 32));
  }
}

uint64_t SOSCCProcessSyncWithPeers(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v11 = SecLogAPICreate(0, "SOSCCProcessSyncWithPeers", 0, v6, v7, v8, v9, v10, 0);
    v12 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v11;
      _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __SOSCCProcessSyncWithPeers_block_invoke;
    v23[3] = &__block_descriptor_56_e15_____CFSet__8__0l;
    v23[4] = a1;
    v23[5] = a2;
    v23[6] = a3;
    v13 = __SOSCCProcessSyncWithPeers_block_invoke(v23);
    v19 = SecLogAPICreate(0, "SOSCCProcessSyncWithPeers", 0, v14, v15, v16, v17, v18, v13);
    v20 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v19;
      _os_log_debug_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a3);
    v13 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __SOSCCProcessSyncWithPeers_block_invoke(void *a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 488)) != 0)
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = a1[4];

    return v1(v4, v2, v3);
  }

  else
  {
    v6 = a1[6];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __cfset_cfset_to_cfset_error_request_block_invoke;
    v12[3] = &__block_descriptor_48_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v13 = *(a1 + 2);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __cfset_cfset_to_cfset_error_request_block_invoke_2;
    v11[3] = &unk_1E70DEAC0;
    v11[4] = &v14;
    v7 = securityd_send_sync_and_do(0x6Au, v6, v12, v11);
    v8 = v15;
    if ((v7 & 1) == 0)
    {
      v9 = v15[3];
      if (v9)
      {
        v15[3] = 0;
        CFRelease(v9);
        v8 = v15;
      }
    }

    v10 = v8[3];
    _Block_object_dispose(&v14, 8);
    return v10;
  }
}

size_t __cfset_cfset_to_cfset_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  if (SecXPCDictionarySetPListWithRepair(v5, "cfset", *(a1 + 32), a3, v6, v7, v8, v9))
  {
    v14 = SecXPCDictionarySetPListWithRepair(v5, "cfset2", *(a1 + 40), a3, v10, v11, v12, v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL __cfset_cfset_to_cfset_error_request_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = SecXPCDictionaryCopyPListAndPossiblyMutateMessage(1, a2, "status", a3);
  v6 = v5;
  if (v5 && (v7 = CFGetTypeID(v5), v7 == CFSetGetTypeID()))
  {
    CFRetain(v6);
    v8 = v6;
  }

  else
  {
    if (a3)
    {
      SecError(-50, a3, @"object %@ is not a set", v6);
    }

    if (!v6)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v9 = CFGetTypeID(v6);
    v10 = CFCopyTypeIDDescription(v9);
    SecError(-50, a3, @"object for key %s not set but %@", "status", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v8 = 0;
  }

  CFRelease(v6);
LABEL_12:
  *(*(*(a1 + 32) + 8) + 24) = v8;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t SOSCCProcessSyncWithAllPeers(CFTypeRef *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v7 = SecLogAPICreate(0, "SOSCCProcessSyncWithAllPeers", 0, v2, v3, v4, v5, v6, 0);
    v8 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (gSecurityd && (v9 = *(gSecurityd + 496)) != 0)
    {
      v10 = v9(a1);
    }

    else
    {
      v10 = simple_int_error_request(0x1Cu, a1);
    }

    v16 = v10;
    v17 = SecLogAPICreate(0, "SOSCCProcessSyncWithAllPeers", 0, v11, v12, v13, v14, v15, v10);
    v18 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v17;
      _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v16 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __SOSCCProcessSyncWithAllPeers_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 496)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_int_error_request(0x1Cu, *(a1 + 32));
  }
}

__CFString *SOSCCGetStatusDescription(int a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unknown Status";
  }

  else
  {
    return off_1E70DDC60[a1 + 1];
  }
}

__CFString *SOSCCGetViewResultDescription(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown View Status";
  }

  else
  {
    return off_1E70DDC88[a1];
  }
}

uint64_t SOSCCView(const void *a1, int a2, CFTypeRef *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    SOSCCSetSOSDisabledError(a3);
LABEL_10:
    v15 = 0;
    goto LABEL_21;
  }

  v7 = SOSVisibleKeychainNotAllowed(v6);
  if (a1 && a2 == 1 && v7)
  {
    V0SubviewSet = SOSViewsGetV0SubviewSet();
    if (CFSetContainsValue(V0SubviewSet, a1))
    {
      v14 = secLogObjForScope("views");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "Cannot enable visible keychain views due to profile restrictions", buf, 2u);
      }

      goto LABEL_10;
    }
  }

  else if (a2 == 3 && SOSGetCachedCircleBitmask() < 0)
  {
    v27 = SOSCachedViewBitmask();
    if (!v27 || (SetFromBitmask = SOSViewCreateSetFromBitmask(v27)) == 0)
    {
      v15 = 2;
      goto LABEL_21;
    }

    v23 = SetFromBitmask;
    if (CFSetContainsValue(SetFromBitmask, a1))
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    goto LABEL_20;
  }

  v16 = SecLogAPICreate(0, "SOSCCView", 0, v8, v9, v10, v11, v12, 0);
  v17 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v16;
    _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __SOSCCView_block_invoke;
  v29[3] = &__block_descriptor_52_e5_i8__0l;
  v30 = a2;
  v29[4] = a1;
  v29[5] = a3;
  v15 = __SOSCCView_block_invoke(v29);
  v23 = SecLogAPICreate(0, "SOSCCView", @"SOSViewResultCode=%d", v18, v19, v20, v21, v22, v15);
  v24 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v23;
    _os_log_debug_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v23)
  {
LABEL_20:
    CFRelease(v23);
  }

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __SOSCCView_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 288)) != 0)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);

    return v3(v6, v4, v5);
  }

  else
  {
    v19 = v1;
    v20 = v2;
    v8 = *(a1 + 48);
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __name_action_to_code_request_block_invoke;
    v14[3] = &__block_descriptor_48_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v14[4] = v10;
    v14[5] = v8;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __name_action_to_code_request_block_invoke_3;
    v12[3] = &unk_1E70DDC20;
    v12[4] = &v15;
    v13 = 0;
    securityd_send_sync_and_do(0x36u, v9, v14, v12);
    v11 = *(v16 + 6);
    _Block_object_dispose(&v15, 8);
    return v11;
  }
}

uint64_t __name_action_to_code_request_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __name_action_to_code_request_block_invoke_2;
  v7[3] = &unk_1E70DDBF8;
  v8 = v3;
  v5 = v3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __CFStringPerformWithCString_block_invoke;
  v9[3] = &unk_1E70E4418;
  v9[4] = v7;
  CFStringPerformWithCStringAndLength(v4, v9);
  xpc_dictionary_set_int64(v5, "viewactioncode", *(a1 + 40));

  return 1;
}

BOOL __name_action_to_code_request_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && xpc_dictionary_entry_is_type(v3))
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_int64(v4, "status");
  }

  v5 = *(*(*(a1 + 32) + 8) + 24) != *(a1 + 40);

  return v5;
}

uint64_t SOSCCViewSet(const __CFSet *a1, uint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!SOSCCIsSOSTrustAndSyncingEnabled())
  {
LABEL_9:
    v12 = 0;
    goto LABEL_19;
  }

  v5 = SOSVisibleKeychainNotAllowed(v4);
  if (a1 && v5 && CFSetGetCount(a1) && SOSViewSetIntersectsV0(a1))
  {
    v11 = secLogObjForScope("views");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Cannot enable visible keychain views due to profile restrictions", buf, 2u);
    }

    goto LABEL_9;
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  v13 = SecLogAPICreate(0, "SOSCCViewSet", 0, v6, v7, v8, v9, v10, 0);
  v14 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *v29 = 138412290;
    v30 = v13;
    _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "%@", v29, 0xCu);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __SOSCCViewSet_block_invoke;
  v24[3] = &unk_1E70DDA40;
  v24[6] = a2;
  v24[7] = 0;
  v24[4] = buf;
  v24[5] = a1;
  v12 = __SOSCCViewSet_block_invoke(v24);
  v20 = SecLogAPICreate(0, "SOSCCViewSet", @"return=%d", v15, v16, v17, v18, v19, v12);
  v21 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *v29 = 138412290;
    v30 = v20;
    _os_log_debug_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEBUG, "%@", v29, 0xCu);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  _Block_object_dispose(buf, 8);
LABEL_19:
  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1888B7AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSCCViewSet_block_invoke(void *a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 296)) != 0)
  {
    v4 = a1[6];
    v5 = a1[5];

    return v3(v5, v4);
  }

  else
  {
    v11 = v1;
    v12 = v2;
    v7 = a1[7];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SOSCCViewSet_block_invoke_2;
    v9[3] = &__block_descriptor_48_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v10 = *(a1 + 5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SOSCCViewSet_block_invoke_3;
    v8[3] = &unk_1E70DEAC0;
    v8[4] = a1[4];
    return securityd_send_sync_and_do(0x37u, v7, v9, v8);
  }
}

BOOL __SOSCCViewSet_block_invoke_2(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v5 = a2;
  v12 = CreateXPCObjectWithCFSetRef(*(a1 + 32), a3, v6, v7, v8, v9, v10, v11);
  v19 = CreateXPCObjectWithCFSetRef(*(a1 + 40), a3, v13, v14, v15, v16, v17, v18);
  if (v12)
  {
    xpc_dictionary_set_value(v5, "enabledViews", v12);
  }

  if (v19)
  {
    xpc_dictionary_set_value(v5, "disabledViews", v19);
  }

  return (v12 | v19) != 0;
}

uint64_t SOSCCIsIcloudKeychainSyncing()
{
  v2[4] = *MEMORY[0x1E69E9840];
  result = SOSCCIsSOSTrustAndSyncingEnabled();
  if (result)
  {
    v2[0] = @"WiFi";
    v2[1] = @"Passwords";
    v2[2] = @"CreditCards";
    v2[3] = @"OtherSyncable";
    result = sosIsViewSetSyncing(4, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sosIsViewSetSyncing(uint64_t a1, const void **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a2)
  {
    v11 = 0;
    goto LABEL_32;
  }

  v2 = a2;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"|");
  v5 = 0;
  do
  {
    CFStringAppend(Mutable, v2[v5]);
    CFStringAppend(Mutable, @"|");
    ++v5;
  }

  while (a1 != v5);
  v6 = SOSCCThisDeviceIsInCircle(&cf);
  v7 = v6 == 0;
  if (v6)
  {
    v8 = v6;
    v9 = secLogObjForScope("viewCheck");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if ((v8 + 1) > 4)
      {
        v10 = @"Unknown Status";
      }

      else
      {
        v10 = off_1E70DDCB0[v8 + 1];
      }

      *buf = 138412802;
      v31 = Mutable;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = cf;
      v19 = "Checking view / circle status for %@:  SOSCCStatus: (%@)  Error: (%@)";
      v20 = v9;
      v21 = 32;
      goto LABEL_25;
    }
  }

  else
  {
    if (SOSGetCachedCircleBitmask() < 0)
    {
      v25 = SOSCachedViewBitmask();
      if (v25)
      {
        SetFromBitmask = SOSViewCreateSetFromBitmask(v25);
        if (SetFromBitmask)
        {
          v27 = SetFromBitmask;
          LOBYTE(v11) = 1;
          do
          {
            v28 = *v2++;
            v11 = (CFSetContainsValue(v27, v28) != 0) & v11;
            --a1;
          }

          while (a1);
          v22 = v27;
          goto LABEL_29;
        }
      }
    }

    v12 = 0;
    v13 = 1;
    do
    {
      while (1)
      {
        v14 = SOSCCView(v2[v12], 3, &cf);
        if (v14 == 1)
        {
          break;
        }

        v15 = v14;
        v16 = secLogObjForScope("viewCheck");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = @"Unknown View Status";
          if (v15 <= 4)
          {
            v17 = off_1E70DDCD8[v15];
          }

          v18 = v2[v12];
          *buf = 138413058;
          v31 = v18;
          v32 = 2112;
          v33 = @"InCircle";
          v34 = 2112;
          v35 = v17;
          v36 = 2112;
          v37 = cf;
          _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Checking view / circle status for %@:  SOSCCStatus: (%@) SOSViewResultCode(%@) Error: (%@)", buf, 0x2Au);
        }

        v13 = 0;
        v11 = 0;
        if (++v12 == a1)
        {
          goto LABEL_27;
        }
      }

      ++v12;
    }

    while (a1 != v12);
    if ((v13 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_27;
    }

    v9 = secLogObjForScope("viewCheck");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = Mutable;
      v19 = "Checking view / circle status for %@:  ENABLED";
      v20 = v9;
      v21 = 12;
LABEL_25:
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }
  }

  v11 = v7;
LABEL_27:
  v22 = cf;
  if (!cf)
  {
    goto LABEL_30;
  }

  cf = 0;
LABEL_29:
  CFRelease(v22);
LABEL_30:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_32:
  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SOSCCIsSafariSyncing()
{
  v2[2] = *MEMORY[0x1E69E9840];
  result = SOSCCIsSOSTrustAndSyncingEnabled();
  if (result)
  {
    v2[0] = @"Passwords";
    v2[1] = @"CreditCards";
    result = sosIsViewSetSyncing(2, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCIsAppleTVSyncing()
{
  v2[1] = *MEMORY[0x1E69E9840];
  result = SOSCCIsSOSTrustAndSyncingEnabled();
  if (result)
  {
    v2[0] = @"AppleTV";
    result = sosIsViewSetSyncing(1, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCIsHomeKitSyncing()
{
  v2[1] = *MEMORY[0x1E69E9840];
  result = SOSCCIsSOSTrustAndSyncingEnabled();
  if (result)
  {
    v2[0] = @"HomeKit";
    result = sosIsViewSetSyncing(1, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCIsWiFiSyncing()
{
  v2[1] = *MEMORY[0x1E69E9840];
  result = SOSCCIsSOSTrustAndSyncingEnabled();
  if (result)
  {
    v2[0] = @"WiFi";
    result = sosIsViewSetSyncing(1, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCIsContinuityUnlockSyncing()
{
  v2[1] = *MEMORY[0x1E69E9840];
  result = SOSCCIsSOSTrustAndSyncingEnabled();
  if (result)
  {
    v2[0] = @"ContinuityUnlock";
    result = sosIsViewSetSyncing(1, v2);
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSCCCopyApplication(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = secLogObjForScope("hsa2PB");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "enter SOSCCCopyApplication applicant", buf, 2u);
    }

    v8 = SecLogAPICreate(0, "SOSCCCopyApplication", 0, v3, v4, v5, v6, v7, 0);
    v9 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (gSecurityd && (v10 = *(gSecurityd + 568)) != 0)
    {
      v11 = v10(a1);
    }

    else
    {
      v11 = peer_info_error_request(0x51u, a1);
    }

    v17 = v11;
    v18 = SecLogAPICreate(0, "SOSCCCopyApplication", @"return=%@", v12, v13, v14, v15, v16, v11);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCCopyApplication_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 568)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return peer_info_error_request(0x51u, *(a1 + 32));
  }
}

uint64_t SOSCCCleanupKVSKeys(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v2 = secLogObjForScope("cleanup-keys");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "enter SOSCCCleanupKVSKeys", buf, 2u);
    }

    v8 = SecLogAPICreate(0, "SOSCCCleanupKVSKeys", 0, v3, v4, v5, v6, v7, 0);
    v9 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (gSecurityd && (v10 = *(gSecurityd + 600)) != 0)
    {
      v11 = v10(a1);
    }

    else
    {
      v11 = simple_BOOL_error_request(0x54u, a1);
    }

    v17 = v11;
    v18 = SecLogAPICreate(0, "SOSCCCleanupKVSKeys", @"return=%d", v12, v13, v14, v15, v16, v11);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v17 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCCleanupKVSKeys_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 600)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x54u, *(a1 + 32));
  }
}

uint64_t SOSCCCopyCircleJoiningBlob(uint64_t a1, CFTypeRef *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v4 = secLogObjForScope("hsa2PB");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "enter SOSCCCopyCircleJoiningBlob approver", buf, 2u);
    }

    v10 = SecLogAPICreate(0, "SOSCCCopyCircleJoiningBlob", 0, v5, v6, v7, v8, v9, 0);
    v11 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __SOSCCCopyCircleJoiningBlob_block_invoke;
    v29[3] = &__block_descriptor_48_e16_____CFData__8__0l;
    v29[4] = a1;
    v29[5] = a2;
    v19 = __SOSCCCopyCircleJoiningBlob_block_invoke(v29, v12, v13, v14, v15, v16, v17, v18);
    v25 = SecLogAPICreate(0, "SOSCCCopyCircleJoiningBlob", @"return=%@", v20, v21, v22, v23, v24, v19);
    v26 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = v25;
      _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v25)
    {
      CFRelease(v25);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v19 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __SOSCCCopyCircleJoiningBlob_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = *MEMORY[0x1E69E9840];
  if (gSecurityd && (v9 = *(gSecurityd + 576)) != 0)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *MEMORY[0x1E69E9840];

    return v9(v10, v11);
  }

  else
  {
    v14 = SOSPeerInfoCopyEncodedData(*(a1 + 32), a2, *(a1 + 40), a4, a5, a6, a7, a8);
    v15 = *(a1 + 40);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v21 = SecLogAPICreate(0, "cfdata_error_request_returns_cfdata", 0, v16, v17, v18, v19, v20, 0);
    v22 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v21;
      _os_log_debug_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v31 = __cfdata_error_request_returns_cfdata_block_invoke;
    v32 = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v33 = v14;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __cfdata_error_request_returns_cfdata_block_invoke_2;
    v25[3] = &unk_1E70DEAC0;
    v25[4] = &v26;
    securityd_send_sync_and_do(0x52u, v15, &buf, v25);
    v23 = v27[3];
    _Block_object_dispose(&v26, 8);
    if (v14)
    {
      CFRelease(v14);
    }

    v24 = *MEMORY[0x1E69E9840];
    return v23;
  }
}

void sub_1888B8BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __cfdata_error_request_returns_cfdata_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  if (v5)
  {
    xpc_dictionary_set_value(v3, "data", v5);
  }

  return v5 != 0;
}

BOOL __cfdata_error_request_returns_cfdata_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  v6 = xpc_dictionary_get_value(xdict, "status");
  v7 = v6;
  if (xdict && v6)
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject();
    v9 = v8;
    if (v8)
    {
      v10 = CFGetTypeID(v8);
      if (v10 == CFDataGetTypeID())
      {
        CFRetain(v9);
        *(*(*(a1 + 32) + 8) + 24) = v9;
LABEL_9:
        CFRelease(v9);
        goto LABEL_10;
      }
    }

    if (a3)
    {
      SecError(-50, a3, @"object %@ is not a data", v9);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    if (v9)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v11 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v11;
}

uint64_t SOSCCCopyInitialSyncData(int a1, CFTypeRef *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v4 = secLogObjForScope("circleJoin");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "enter SOSCCCopyInitialSyncData approver", buf, 2u);
    }

    v10 = SecLogAPICreate(0, "SOSCCCopyInitialSyncData", 0, v5, v6, v7, v8, v9, 0);
    v11 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SOSCCCopyInitialSyncData_block_invoke;
    v22[3] = &__block_descriptor_44_e16_____CFData__8__0l;
    v23 = a1;
    v22[4] = a2;
    v12 = __SOSCCCopyInitialSyncData_block_invoke(v22);
    v18 = SecLogAPICreate(0, "SOSCCCopyInitialSyncData", @"return=%@", v13, v14, v15, v16, v17, v12);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v12 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __SOSCCCopyInitialSyncData_block_invoke(uint64_t a1)
{
  if (!gSecurityd || (v1 = *(gSecurityd + 584)) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __flags_to_data_error_request_block_invoke;
    v12[3] = &__block_descriptor_36_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v13 = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __flags_to_data_error_request_block_invoke_2;
    v11[3] = &unk_1E70DEAC0;
    v11[4] = &v14;
    securityd_send_sync_and_do(0x59u, v6, v12, v11);
    v7 = v15[3];
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      TypeID = CFDataGetTypeID();
      v10 = v15[3];
      if (v8 == TypeID)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = 0;
    }

    SOSErrorCreate(1040, v6, 0, @"Expected CFData, got: %@", v10);
    v10 = 0;
LABEL_11:
    _Block_object_dispose(&v14, 8);
    return v10;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return v1(v3, v2);
}

BOOL __flags_to_data_error_request_block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_value(xdict, "status");
  v5 = v4;
  if (xdict && v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
  }

  v6 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v6;
}

uint64_t SOSCCJoinWithCircleJoiningBlob(uint64_t a1, int a2, CFTypeRef *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v6 = secLogObjForScope("hsa2PB");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "enter SOSCCJoinWithCircleJoiningBlob applicant", buf, 2u);
    }

    v12 = SecLogAPICreate(0, "SOSCCJoinWithCircleJoiningBlob", 0, v7, v8, v9, v10, v11, 0);
    v13 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v12;
      _os_log_debug_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __SOSCCJoinWithCircleJoiningBlob_block_invoke;
    v31[3] = &__block_descriptor_52_e5_B8__0l;
    v32 = a2;
    v31[4] = a1;
    v31[5] = a3;
    v21 = __SOSCCJoinWithCircleJoiningBlob_block_invoke(v31, v14, v15, v16, v17, v18, v19, v20);
    v27 = SecLogAPICreate(0, "SOSCCJoinWithCircleJoiningBlob", @"return=%d", v22, v23, v24, v25, v26, v21);
    v28 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v34 = v27;
      _os_log_debug_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v27)
    {
      CFRelease(v27);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a3);
    v21 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t __SOSCCJoinWithCircleJoiningBlob_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x1E69E9840];
  if (gSecurityd && (a4 = *(gSecurityd + 592)) != 0)
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x1E69E9840];
    v11 = *(a1 + 32);

    return a4(v11, v8, v9);
  }

  else
  {
    v13 = *(a1 + 48);
    v15 = *(a1 + 32);
    v14 = *(a1 + 40);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v16 = SecLogAPICreate(0, "cfdata_and_int_error_request_returns_BOOL", 0, a4, a5, a6, a7, a8, 0);
    v17 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v16;
      _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v26 = __cfdata_and_int_error_request_returns_BOOL_block_invoke;
    v27 = &__block_descriptor_44_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v28 = v15;
    v29 = v13;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __cfdata_and_int_error_request_returns_BOOL_block_invoke_2;
    v20[3] = &unk_1E70DEAC0;
    v20[4] = &v21;
    securityd_send_sync_and_do(0x53u, v14, &buf, v20);
    v18 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
    v19 = *MEMORY[0x1E69E9840];
    return v18;
  }
}

void sub_1888B9604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SOSCCPeersHaveViewsEnabled(uint64_t a1, CFTypeRef *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v4 = secLogObjForScope("view-enabled");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "enter SOSCCPeersHaveViewsEnabled", buf, 2u);
    }

    v10 = SecLogAPICreate(0, "SOSCCPeersHaveViewsEnabled", 0, v5, v6, v7, v8, v9, 0);
    v11 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __SOSCCPeersHaveViewsEnabled_block_invoke;
    v22[3] = &__block_descriptor_48_e19_____CFBoolean__8__0l;
    v22[4] = a1;
    v22[5] = a2;
    v12 = __SOSCCPeersHaveViewsEnabled_block_invoke(v22);
    v18 = SecLogAPICreate(0, "SOSCCPeersHaveViewsEnabled", @"return=%@", v13, v14, v15, v16, v17, v12);
    v19 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v24 = v18;
      _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v12 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __SOSCCPeersHaveViewsEnabled_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 624)) != 0)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);

    return v3(v5, v4);
  }

  else
  {
    v17 = v1;
    v18 = v2;
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __cfarray_to_cfBOOLean_error_request_block_invoke;
    v12[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v12[4] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __cfarray_to_cfBOOLean_error_request_block_invoke_2;
    v11[3] = &unk_1E70DEAC0;
    v11[4] = &v13;
    v9 = 0;
    if (securityd_send_sync_and_do(0x69u, v7, v12, v11))
    {
      if (*(v14 + 24))
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v9 = *v10;
    }

    _Block_object_dispose(&v13, 8);
    return v9;
  }
}

uint64_t SOSCCMessageFromPeerIsPending(uint64_t a1, CFTypeRef *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v4 = secLogObjForScope("pending-check");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "enter SOSCCMessageFromPeerIsPending", buf, 2u);
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SOSCCMessageFromPeerIsPending_block_invoke;
    v15[3] = &__block_descriptor_48_e5_B8__0l;
    v15[4] = a1;
    v15[5] = a2;
    v5 = __SOSCCMessageFromPeerIsPending_block_invoke(v15);
    v11 = SecLogAPICreate(0, "SOSCCMessageFromPeerIsPending", @"return=%d", v6, v7, v8, v9, v10, v5);
    v12 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __SOSCCMessageFromPeerIsPending_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 640)) != 0)
  {
    return v1(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    return peer_info_to_BOOL_error_request(0x6Bu, *(a1 + 32), *(a1 + 40));
  }
}

uint64_t peer_info_to_BOOL_error_request(unsigned int a1, uint64_t a2, CFTypeRef *a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __peer_info_to_BOOL_error_request_block_invoke;
  v6[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
  v6[4] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __peer_info_to_BOOL_error_request_block_invoke_2;
  v5[3] = &unk_1E70DEAC0;
  v5[4] = &v7;
  securityd_send_sync_and_do(a1, a3, v6, v5);
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t SOSCCSendToPeerIsPending(uint64_t a1, CFTypeRef *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __SOSCCSendToPeerIsPending_block_invoke;
    v14[3] = &__block_descriptor_48_e5_B8__0l;
    v14[4] = a1;
    v14[5] = a2;
    v4 = __SOSCCSendToPeerIsPending_block_invoke(v14);
    v10 = SecLogAPICreate(0, "SOSCCSendToPeerIsPending", @"return=%d", v5, v6, v7, v8, v9, v4);
    v11 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a2);
    v4 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t __SOSCCSendToPeerIsPending_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 648)) != 0)
  {
    return v1(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    return peer_info_to_BOOL_error_request(0x6Cu, *(a1 + 32), *(a1 + 40));
  }
}

uint64_t SOSCCSetCompatibilityMode(char a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("sos-compatibility-mode");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "enter SOSCCSetCompatibilityMode", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __SOSCCSetCompatibilityMode_block_invoke;
  v22[3] = &__block_descriptor_41_e5_B8__0l;
  v23 = a1;
  v22[4] = a2;
  v12 = __SOSCCSetCompatibilityMode_block_invoke(v22, v5, v6, v7, v8, v9, v10, v11);
  v18 = SecLogAPICreate(0, "SOSCCSetCompatibilityMode", @"return=%d", v13, v14, v15, v16, v17, v12);
  v19 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v25 = v18;
    _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __SOSCCSetCompatibilityMode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  if (gSecurityd && (v8 = *(gSecurityd + 656)) != 0)
  {
    v9 = *(a1 + 32);
    v10 = *MEMORY[0x1E69E9840];
    v11 = *(a1 + 40);

    return v8(v11, v9);
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = SecLogAPICreate(0, "BOOL_and_error_request_returns_BOOL", 0, a4, a5, a6, a7, a8, 0);
    v16 = secLogObjForScope("api_trace");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v15;
      _os_log_debug_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __BOOL_and_error_request_returns_BOOL_block_invoke;
    v19[3] = &__block_descriptor_33_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v20 = v13;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v26 = __BOOL_and_error_request_returns_BOOL_block_invoke_2;
    v27 = &unk_1E70DEAC0;
    v28 = &v21;
    securityd_send_sync_and_do(0x5Au, v14, v19, &buf);
    v17 = *(v22 + 24);
    _Block_object_dispose(&v21, 8);
    v18 = *MEMORY[0x1E69E9840];
    return v17;
  }
}

void sub_1888BA358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SOSCCFetchCompatibilityModeCachedValue(CFTypeRef *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("sos-compatibility-mode-cached");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "enter SOSCCFetchCompatibilityModeCachedValue", buf, 2u);
  }

  if (gSecurityd && (v3 = *(gSecurityd + 672)) != 0)
  {
    v4 = v3(a1);
  }

  else
  {
    v4 = simple_BOOL_error_request(0x5Cu, a1);
  }

  v10 = v4;
  v11 = SecLogAPICreate(0, "SOSCCFetchCompatibilityModeCachedValue", @"return=%d", v5, v6, v7, v8, v9, v4);
  v12 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v11;
    _os_log_debug_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __SOSCCFetchCompatibilityModeCachedValue_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 672)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x5Cu, *(a1 + 32));
  }
}

uint64_t SOSCCIsSOSTrustAndSyncingEnabledCachedValue()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = secLogObjForScope("sos-compatibility-mode-cached");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEBUG, "enter SOSCCIsSOSTrustAndSyncingEnabledCachedValue", buf, 2u);
  }

  if (OctagonIsSOSFeatureEnabled() && SOSCompatibilityModeEnabled())
  {
    v1 = secLogObjForScope("sos-compatibility-mode-cached");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v1, OS_LOG_TYPE_DEFAULT, "SOS Compatibility Mode feature flag enabled, checking platform availability and sos compat mode", buf, 2u);
    }

    cf = 0;
    IsSOSFeatureEnabled = SOSCCFetchCompatibilityModeCachedValue(&cf);
    v3 = secLogObjForScope("sos-compatibility-mode-cached");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"disabled";
      if (IsSOSFeatureEnabled)
      {
        v4 = @"enabled";
      }

      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "sos trust and syncing is %@", buf, 0xCu);
    }

    if (cf)
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v11 = cf;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "sos-compatibility-mode-cached: fetching compatibility mode error: %@", buf, 0xCu);
      }

      v6 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v6);
      }
    }
  }

  else
  {
    IsSOSFeatureEnabled = OctagonIsSOSFeatureEnabled();
  }

  v7 = *MEMORY[0x1E69E9840];
  return IsSOSFeatureEnabled;
}

uint64_t SOSCCPushResetCircle(CFTypeRef *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("push-reset-circle-to-kvs");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "enter SOSCCPushResetCircle", buf, 2u);
  }

  v8 = SecLogAPICreate(0, "SOSCCPushResetCircle", 0, v3, v4, v5, v6, v7, 0);
  v9 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (gSecurityd && (v10 = *(gSecurityd + 680)) != 0)
  {
    v11 = v10(a1);
  }

  else
  {
    v11 = simple_BOOL_error_request(0x5Du, a1);
  }

  v17 = v11;
  v18 = SecLogAPICreate(0, "SOSCCPushResetCircle", @"return=%d", v12, v13, v14, v15, v16, v11);
  v19 = secLogObjForScope("api_trace");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = v18;
    _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t __SOSCCPushResetCircle_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v1 = *(gSecurityd + 680)) != 0)
  {
    return v1(*(a1 + 32));
  }

  else
  {
    return simple_BOOL_error_request(0x5Du, *(a1 + 32));
  }
}

void SOSCCAccountGetPublicKey(void *a1)
{
  v1 = a1;
  if ((SOSCCIsSOSTrustAndSyncingEnabled() & 1) == 0)
  {
    v3 = sosDisabledNSError();
    (*(v1 + 2))(v1, 0, 0, v3);
    goto LABEL_15;
  }

  cf = 0;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    if (gSecurityd && (v2 = *(gSecurityd + 688)) != 0)
    {
      v3 = v2();
      if (!v3)
      {
LABEL_6:
        v4 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      if (SOSCCGetStatusObject_onceToken != -1)
      {
        dispatch_once(&SOSCCGetStatusObject_onceToken, &__block_literal_global_321);
      }

      v6 = [SOSCCGetStatusObject_control connection];
      v3 = [v6 remoteObjectProxy];

      if (!v3)
      {
        goto LABEL_6;
      }
    }

    [v3 userPublicKey:v1];
LABEL_15:

    goto LABEL_16;
  }

  SOSCCSetSOSDisabledError(&cf);
  v4 = cf;
LABEL_9:
  (*(v1 + 2))(v1, 0, 0, v4);
  v5 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v5);
  }

LABEL_16:
}

id sosDisabledNSError()
{
  if (staticSOSDisabledError_onceToken != -1)
  {
    dispatch_once(&staticSOSDisabledError_onceToken, &__block_literal_global_277);
  }

  v1 = staticSOSDisabledError_sosIsDisabledError;

  return v1;
}

uint64_t __SOSCCGetStatusObject_block_invoke()
{
  SOSCCGetStatusObject_control = objc_alloc_init(SecSOSStatus);

  return MEMORY[0x1EEE66BB8]();
}

void SOSCCAccountGetKeyCircleGeneration(void *a1)
{
  v1 = a1;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __SOSCCAccountGetKeyCircleGeneration_block_invoke;
    v3[3] = &unk_1E70DDB40;
    v4 = v1;
    SOSCCAccountGetPublicKey(v3);
  }

  else
  {
    v2 = sosDisabledNSError();
    (*(v1 + 2))(v1, 0, v2);
  }
}

void __SOSCCAccountGetKeyCircleGeneration_block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  if (v12)
  {
    v6 = MEMORY[0x1E695DF88];
    v7 = a4;
    v8 = [v6 dataWithLength:32];
    ccsha256_di();
    [v12 length];
    v9 = v12;
    [v12 bytes];
    [v8 mutableBytes];
    ccdigest();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v8 = a4;
    v11(v10, 0, v8);
  }
}

id SOSCCCircleHash(void *a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v14 = 0;
    v2 = SOSCCGetSynchronousStatusObject(&v14);
    v3 = v2;
    if (v2)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__8803;
      v12 = __Block_byref_object_dispose__8804;
      v13 = 0;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __SOSCCCircleHash_block_invoke;
      v7[3] = &unk_1E70DDB68;
      v7[4] = &v8;
      [v2 circleHash:v7];
      v4 = v9[5];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      if (a1)
      {
        *a1 = v14;
      }

      v5 = v14;
      if (v14)
      {
        v14 = 0;
        CFRelease(v5);
      }

      v4 = 0;
    }
  }

  else if (a1)
  {
    sosDisabledNSError();
    *a1 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1888BAF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SOSCCGetSynchronousStatusObject(CFTypeRef *a1)
{
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    if (gSecurityd && (v2 = *(gSecurityd + 688)) != 0)
    {
      v3 = v2();
    }

    else
    {
      if (SOSCCGetSynchronousStatusObject_onceToken != -1)
      {
        dispatch_once(&SOSCCGetSynchronousStatusObject_onceToken, &__block_literal_global_324);
      }

      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__8803;
      v12 = __Block_byref_object_dispose__8804;
      v13 = 0;
      v4 = [SOSCCGetSynchronousStatusObject_control connection];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __SOSCCGetSynchronousStatusObject_block_invoke_2;
      v7[3] = &unk_1E70E0B18;
      v7[4] = &v8;
      v3 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v7];

      if (a1)
      {
        v5 = v9[5];
        if (v5)
        {
          *a1 = v5;
        }
      }

      _Block_object_dispose(&v8, 8);
    }
  }

  else
  {
    SOSCCSetSOSDisabledError(a1);
    v3 = 0;
  }

  return v3;
}

void sub_1888BB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8803(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SOSCCGetSynchronousStatusObject_block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = secLogObjForScope("ghostbust");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "An error occurred on the xpc connection to setup the background session: %@", &v7, 0xCu);
  }

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __SOSCCGetSynchronousStatusObject_block_invoke()
{
  SOSCCGetSynchronousStatusObject_control = objc_alloc_init(SecSOSStatus);

  return MEMORY[0x1EEE66BB8]();
}

void SOSCCGhostBust(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v10 = 0;
    v4 = SOSCCGetSynchronousStatusObject(&v10);
    if (v4)
    {
      v5 = secLogObjForScope("ghostbust");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "API Called", buf, 2u);
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __SOSCCGhostBust_block_invoke;
      v7[3] = &unk_1E70DECE8;
      v8 = v3;
      [v4 ghostBust:a1 complete:v7];
    }

    else
    {
      (*(v3 + 2))(v3, 0, v10);
      v6 = v10;
      if (v10)
      {
        v10 = 0;
        CFRelease(v6);
      }
    }
  }

  else
  {
    v4 = sosDisabledNSError();
    (*(v3 + 2))(v3, 0, v4);
  }
}

void __SOSCCGhostBust_block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("ghostbust");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "API returned: %d", v8, 8u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

void SOSCCGhostBustTriggerTimed(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v10 = 0;
    v4 = SOSCCGetSynchronousStatusObject(&v10);
    if (v4)
    {
      v5 = secLogObjForScope("ghostbust");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "API Trigger Timed Called", buf, 2u);
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __SOSCCGhostBustTriggerTimed_block_invoke;
      v7[3] = &unk_1E70DECE8;
      v8 = v3;
      [v4 ghostBustTriggerTimed:a1 complete:v7];
    }

    else
    {
      (*(v3 + 2))(v3, 0, v10);
      v6 = v10;
      if (v10)
      {
        v10 = 0;
        CFRelease(v6);
      }
    }
  }

  else
  {
    v4 = sosDisabledNSError();
    (*(v3 + 2))(v3, 0, v4);
  }
}

void __SOSCCGhostBustTriggerTimed_block_invoke(uint64_t a1, int a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = secLogObjForScope("ghostbust");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "API Trigger Timed returned: %d", v8, 8u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x1E69E9840];
}

void SOSCCGhostBustInfo(void *a1)
{
  v1 = a1;
  if (SOSCCIsSOSTrustAndSyncingEnabled())
  {
    v8 = 0;
    v2 = SOSCCGetSynchronousStatusObject(&v8);
    if (v2)
    {
      v3 = secLogObjForScope("ghostbust");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "API Info Called", buf, 2u);
      }

      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __SOSCCGhostBustInfo_block_invoke;
      v5[3] = &unk_1E70DDB90;
      v6 = v1;
      [v2 ghostBustInfo:v5];
    }

    else
    {
      (*(v1 + 2))(v1, 0, v8);
      v4 = v8;
      if (v8)
      {
        v8 = 0;
        CFRelease(v4);
      }
    }
  }

  else
  {
    v2 = sosDisabledNSError();
    (*(v1 + 2))(v1, 0, v2);
  }
}

void __SOSCCGhostBustInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = secLogObjForScope("ghostbust");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "API Info returned", v8, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

CFStringRef copyErrorMessageFromBundle(uint64_t a1, const __CFString *a2)
{
  Bundle = SecFrameworkGetBundle();
  if (!Bundle)
  {
    return 0;
  }

  v5 = Bundle;
  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFBundleCopyLocalizedString(v5, v7, v7, a2);
  if (CFStringCompare(v8, v7, 0) == kCFCompareEqualTo && v8)
  {
    CFRelease(v8);
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

SecAccessControlRef SecAccessControlCreateWithFlags(CFAllocatorRef allocator, CFTypeRef protection, SecAccessControlCreateFlags flags, CFErrorRef *error)
{
  v8 = SecAccessControlCreate(allocator, error);
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  if (!SecAccessControlSetProtection(v8, protection, error))
  {
LABEL_14:
    Mutable = v9;
    v9 = 0;
LABEL_15:
    CFRelease(Mutable);
    return v9;
  }

  if (flags)
  {
    if ((~flags & 0xC000) == 0)
    {
      SecError(-50, error, @"only one logical operation can be set");
      goto LABEL_14;
    }

    if ((flags & 8) != 0 && (flags & 0xA) != 8)
    {
      SecError(-50, error, @"only one bio constraint can be set");
      goto LABEL_14;
    }

    if ((flags & 1) != 0 && (flags & 0xFFFFFFFF3FFFFFFELL) != 0)
    {
      SecError(-50, error, @"kSecAccessControlUserPresence can be combined only with kSecAccessControlApplicationPassword and kSecAccessControlPrivateKeyUsage");
      goto LABEL_14;
    }

    Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
    if (flags)
    {
      MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(allocator, v12, v13, v14, v15, v16, v17, v18, @"cpo", @"DeviceOwnerAuthentication");
      if (!MutableForCFTypesWith)
      {
        goto LABEL_74;
      }

      v20 = MutableForCFTypesWith;
      CFArrayAppendValue(Mutable, MutableForCFTypesWith);
      CFRelease(v20);
    }

    if ((flags & 0x10) != 0)
    {
      v21 = CFDictionaryCreateMutableForCFTypesWith(allocator, v12, v13, v14, v15, v16, v17, v18, @"cup", *MEMORY[0x1E695E4D0]);
      if (!v21)
      {
        goto LABEL_74;
      }

      v22 = v21;
      CFArrayAppendValue(Mutable, v21);
      CFRelease(v22);
    }

    if ((flags & 2) != 0)
    {
      if (_getEmptyData_onceToken != -1)
      {
        dispatch_once(&_getEmptyData_onceToken, &__block_literal_global_8886);
      }

      BiometryAny = SecAccessConstraintCreateBiometryAny(allocator, _getEmptyData_emptyData, v13, v14, v15, v16, v17, v18);
      if (!BiometryAny)
      {
        goto LABEL_74;
      }

      v24 = BiometryAny;
      CFArrayAppendValue(Mutable, BiometryAny);
      CFRelease(v24);
    }

    if ((flags & 8) != 0)
    {
      if (_getEmptyData_onceToken != -1)
      {
        dispatch_once(&_getEmptyData_onceToken, &__block_literal_global_8886);
      }

      BiometryCurrentSet = SecAccessConstraintCreateBiometryCurrentSet(allocator, _getEmptyData_emptyData, _getEmptyData_emptyData, v14, v15, v16, v17, v18);
      if (!BiometryCurrentSet)
      {
        goto LABEL_74;
      }

      v26 = BiometryCurrentSet;
      CFArrayAppendValue(Mutable, BiometryCurrentSet);
      CFRelease(v26);
    }

    if ((flags & 0x20) != 0)
    {
      v27 = CFDictionaryCreateMutableForCFTypesWith(allocator, v12, v13, v14, v15, v16, v17, v18, @"cwtch", *MEMORY[0x1E695E4D0]);
      if (!v27)
      {
        goto LABEL_74;
      }

      v28 = v27;
      CFArrayAppendValue(Mutable, v27);
      CFRelease(v28);
    }

    if ((flags & 0x80000000) != 0)
    {
      SecAccessControlSetRequirePassword(v9, 1);
    }

    Count = CFArrayGetCount(Mutable);
    if (Count >= 2)
    {
      if ((flags & 0x4000) != 0)
      {
        v30 = 1;
      }

      else
      {
        v30 = Count;
      }

      ValueOfKofN = SecAccessConstraintCreateValueOfKofN(allocator, v30, Mutable, error);
      if (!ValueOfKofN)
      {
        goto LABEL_75;
      }

      if ((flags & 0x40000000) != 0)
      {
        if (!SecAccessControlAddConstraintForOperation(v9, @"osgn", ValueOfKofN, error) || !SecAccessControlAddConstraintForOperation(v9, @"ock", ValueOfKofN, error) || !SecAccessControlAddConstraintForOperation(v9, @"okd", ValueOfKofN, error) || (v32 = *MEMORY[0x1E695E4D0], !SecAccessControlAddConstraintForOperation(v9, @"oa", *MEMORY[0x1E695E4D0], error)))
        {
LABEL_75:
          CFRelease(v9);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v9 = 0;
          Mutable = ValueOfKofN;
          if (ValueOfKofN)
          {
            goto LABEL_15;
          }

          return v9;
        }
      }

      else
      {
        if (!SecAccessControlAddConstraintForOperation(v9, @"od", ValueOfKofN, error))
        {
          goto LABEL_75;
        }

        v32 = *MEMORY[0x1E695E4D0];
        if (!SecAccessControlAddConstraintForOperation(v9, @"oe", *MEMORY[0x1E695E4D0], error))
        {
          goto LABEL_75;
        }
      }

      if (!SecAccessControlAddConstraintForOperation(v9, @"odel", v32, error))
      {
        goto LABEL_75;
      }

      CFRelease(ValueOfKofN);
LABEL_72:
      if (!Mutable)
      {
        return v9;
      }

      goto LABEL_15;
    }

    if (Count == 1)
    {
      if ((flags & 0x40000000) != 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, 0);
        if (!SecAccessControlAddConstraintForOperation(v9, @"osgn", ValueAtIndex, error))
        {
          goto LABEL_74;
        }

        v37 = CFArrayGetValueAtIndex(Mutable, 0);
        if (!SecAccessControlAddConstraintForOperation(v9, @"ock", v37, error))
        {
          goto LABEL_74;
        }

        v38 = CFArrayGetValueAtIndex(Mutable, 0);
        if (!SecAccessControlAddConstraintForOperation(v9, @"okd", v38, error))
        {
          goto LABEL_74;
        }

        v34 = *MEMORY[0x1E695E4D0];
        if (!SecAccessControlAddConstraintForOperation(v9, @"oa", *MEMORY[0x1E695E4D0], error))
        {
          goto LABEL_74;
        }
      }

      else
      {
        v33 = CFArrayGetValueAtIndex(Mutable, 0);
        if (!SecAccessControlAddConstraintForOperation(v9, @"od", v33, error))
        {
          goto LABEL_74;
        }

        v34 = *MEMORY[0x1E695E4D0];
        if (!SecAccessControlAddConstraintForOperation(v9, @"oe", *MEMORY[0x1E695E4D0], error))
        {
          goto LABEL_74;
        }
      }

      v39 = v9;
      v40 = v34;
    }

    else
    {
      v35 = *MEMORY[0x1E695E4D0];
      if ((flags & 0x40000000) == 0)
      {
        if (SecAccessControlAddConstraintForOperation(v9, @"dacl", *MEMORY[0x1E695E4D0], error))
        {
          goto LABEL_72;
        }

        goto LABEL_74;
      }

      if (!SecAccessControlAddConstraintForOperation(v9, @"osgn", *MEMORY[0x1E695E4D0], error) || !SecAccessControlAddConstraintForOperation(v9, @"ock", v35, error) || !SecAccessControlAddConstraintForOperation(v9, @"okd", v35, error) || !SecAccessControlAddConstraintForOperation(v9, @"oa", v35, error))
      {
        goto LABEL_74;
      }

      v39 = v9;
      v40 = v35;
    }

    if (SecAccessControlAddConstraintForOperation(v39, @"odel", v40, error))
    {
      goto LABEL_72;
    }

LABEL_74:
    ValueOfKofN = 0;
    goto LABEL_75;
  }

  if (!SecAccessControlAddConstraintForOperation(v9, @"dacl", *MEMORY[0x1E695E4D0], error))
  {
    goto LABEL_14;
  }

  return v9;
}

__CFDictionary *SecAccessConstraintCreateBiometryAny(const __CFAllocator *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, @"pbioc", a2);
  v17 = CFDictionaryCreateMutableForCFTypesWith(a1, v10, v11, v12, v13, v14, v15, v16, @"cbio", MutableForCFTypesWith);
  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  return v17;
}

__CFDictionary *SecAccessConstraintCreateBiometryCurrentSet(const __CFAllocator *a1, uint64_t a2, const void *a3, int a4, int a5, int a6, int a7, int a8)
{
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, a2, a3, a4, a5, a6, a7, a8, @"pbioc", a2);
  CFDictionarySetValue(MutableForCFTypesWith, @"pbioh", a3);
  v18 = CFDictionaryCreateMutableForCFTypesWith(a1, v11, v12, v13, v14, v15, v16, v17, @"cbio", MutableForCFTypesWith);
  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  return v18;
}

void SecAccessControlSetRequirePassword(CFDictionaryRef *a1, int a2)
{
  MutableConstraints = SecAccessControlGetMutableConstraints(a1);
  v4 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;

  CFDictionarySetValue(MutableConstraints, @"prp", v5);
}

__CFDictionary *SecAccessConstraintCreateValueOfKofN(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, __CFString **a4)
{
  valuePtr[4] = *MEMORY[0x1E69E9840];
  valuePtr[0] = a2;
  v7 = CFNumberCreate(a1, kCFNumberCFIndexType, valuePtr);
  MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, v8, v9, v10, v11, v12, v13, v14, @"pkofn", v7);
  CFRelease(v7);
  valuePtr[0] = @"cbio";
  valuePtr[1] = @"cpo";
  valuePtr[2] = @"cup";
  valuePtr[3] = @"cwtch";
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v17 = Count;
    v18 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v18);
      if (!ValueAtIndex)
      {
        break;
      }

      v20 = ValueAtIndex;
      v21 = CFGetTypeID(ValueAtIndex);
      if (v21 != CFDictionaryGetTypeID())
      {
        break;
      }

      v22 = 0;
      while (1)
      {
        v23 = valuePtr[v22];
        Value = CFDictionaryGetValue(v20, v23);
        if (Value)
        {
          break;
        }

        if (++v22 == 4)
        {
          goto LABEL_11;
        }
      }

      CFDictionarySetValue(MutableForCFTypesWith, v23, Value);
      if (++v18 == v17)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    SecError(-50, a4, @"SecAccessControl: invalid constraint for k-of-n");
    if (MutableForCFTypesWith)
    {
      CFRelease(MutableForCFTypesWith);
      MutableForCFTypesWith = 0;
    }
  }

LABEL_13:
  v25 = *MEMORY[0x1E69E9840];
  return MutableForCFTypesWith;
}

BOOL SecAccessControlAddConstraintForOperation(CFDictionaryRef *a1, const void *a2, CFTypeRef cf, __CFString **a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == CFDictionaryGetTypeID()) || CFEqual(cf, *MEMORY[0x1E695E4D0]) || CFEqual(cf, *MEMORY[0x1E695E4C0]))
  {
    MutableConstraints = SecAccessControlGetMutableConstraints(a1);
    CFDictionarySetValue(MutableConstraints, a2, cf);
    return 1;
  }

  else
  {

    return SecError(-50, a4, @"invalid constraint");
  }
}

const void *SecAccessControlGetMutableConstraints(CFDictionaryRef *a1)
{
  result = CFDictionaryGetValue(a1[2], @"acl");
  if (!result)
  {
    v3 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(a1[2], @"acl", Mutable);
    CFRelease(Mutable);
    v5 = a1[2];

    return CFDictionaryGetValue(v5, @"acl");
  }

  return result;
}

CFMutableDataRef ___getEmptyData_block_invoke()
{
  result = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  _getEmptyData_emptyData = result;
  return result;
}

__CFDictionary *SecAccessConstraintCreateKofN(const __CFAllocator *a1, uint64_t a2, const __CFArray *a3, __CFString **a4)
{
  result = SecAccessConstraintCreateValueOfKofN(a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, v6, v7, v8, v9, v10, v11, v12, @"ckon", result);
    CFRelease(v13);
    return MutableForCFTypesWith;
  }

  return result;
}

__CFData *SecAccessControlCopyConstraintData(uint64_t a1, const void *a2)
{
  Constraint = SecAccessControlGetConstraint(a1, a2);
  v9 = der_sizeof_plist(Constraint, 0, v3, v4, v5, v6, v7, v8);
  Mutable = CFDataCreateMutable(0, v9);
  CFDataSetLength(Mutable, v9);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (!der_encode_plist_repair(Constraint, 0, 0, MutableBytePtr, &MutableBytePtr[v9], v12, v13, v14) && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void SecAccessControlSetConstraints(CFMutableDictionaryRef *a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, a2);
  CFDictionarySetValue(a1[2], @"acl", MutableCopy);
  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

const __CFDictionary *SecAccessControlGetRequirePassword(uint64_t a1)
{
  result = CFDictionaryGetValue(*(a1 + 16), @"acl");
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"prp");
    v3 = *MEMORY[0x1E695E4D0];
    if (Value)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return (Value == v3);
    }

    else
    {
      return (CFEqual(Value, v3) != 0);
    }
  }

  return result;
}

void SecAccessControlSetBound(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v2, @"bound", *v3);
}

uint64_t SecAccessControlIsBound(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(a1 + 16), @"bound");
  if (Value && *MEMORY[0x1E695E4D0] && CFEqual(Value, *MEMORY[0x1E695E4D0]))
  {
    v3 = 1;
  }

  else if (SecAccessControlGetRequirePassword(a1))
  {
    v3 = 0;
  }

  else
  {
    v4 = CFDictionaryGetValue(*(a1 + 16), @"acl");
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v4 allValues];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = *MEMORY[0x1E695E4D0];
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (!CFEqual(*(*(&v13 + 1) + 8 * i), v9))
          {
            v3 = 0;
            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v3 = 1;
LABEL_17:
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

void SecItemFetchCurrentItemOutOfBand(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = _os_activity_create(&dword_1887D2000, "fetchCurrentItemOutOfBand", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  v8 = objc_autoreleasePoolPush();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __SecItemFetchCurrentItemOutOfBand_block_invoke;
  v14[3] = &unk_1E70DECC0;
  v9 = v6;
  v15 = v9;
  v10 = SecuritydXPCProxyObject(0, v14);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SecItemFetchCurrentItemOutOfBand_block_invoke_2;
  v12[3] = &unk_1E70DDD30;
  v11 = v9;
  v13 = v11;
  [v10 secItemFetchCurrentItemOutOfBand:v5 forceFetch:a2 complete:v12];

  objc_autoreleasePoolPop(v8);
  os_activity_scope_leave(&state);
}

void SecItemFetchPCSIdentityOutOfBand(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = _os_activity_create(&dword_1887D2000, "fetchPCSIdentityOutOfBand", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  v8 = objc_autoreleasePoolPush();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __SecItemFetchPCSIdentityOutOfBand_block_invoke;
  v14[3] = &unk_1E70DECC0;
  v9 = v6;
  v15 = v9;
  v10 = SecuritydXPCProxyObject(0, v14);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SecItemFetchPCSIdentityOutOfBand_block_invoke_2;
  v12[3] = &unk_1E70DDD30;
  v11 = v9;
  v13 = v11;
  [v10 secItemFetchPCSIdentityByKeyOutOfBand:v5 forceFetch:a2 complete:v12];

  objc_autoreleasePoolPop(v8);
  os_activity_scope_leave(&state);
}

unint64_t SecBase64Encode_(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, unsigned int a5, _DWORD *a6)
{
  v7 = a3;
  v8 = a2;
  v9 = (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  *a6 = 0;
  if (a5)
  {
    v9 = v9 + 2 * ((v9 + a5 - 1) / a5) - 2;
  }

  if (a3)
  {
    if (v9 <= a4)
    {
      if (a2 >= 3)
      {
        v10 = 0;
        do
        {
          v11 = v7;
          v12 = *a1;
          v13 = v12 >> 2;
          v14 = a1[1];
          v15 = (v14 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v12 & 3));
          v16 = a1[2];
          *v7 = b64_chars[v13];
          v7[1] = b64_chars[v15];
          v7[2] = b64_chars[(v16 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v14 & 0xF))];
          v7 += 4;
          v11[3] = b64_chars[v16 & 0x3F];
          v10 += 4;
          if (v10 == a5 && v7 != &a3[a4])
          {
            v10 = 0;
            *(v11 + 2) = 2573;
            v7 = v11 + 6;
          }

          a1 += 3;
          v8 -= 3;
        }

        while (v8 > 2);
      }

      if (v8)
      {
        v17 = 0;
        v20 = -21846;
        v21 = -86;
        do
        {
          v18 = v17;
          *(&v20 + v17) = a1[v17];
          ++v17;
        }

        while (v8 != v17);
        if (v18 < 2)
        {
          bzero(&v20 + v8, v8 ^ 3);
        }

        SecBase64Encode_(&v20, 3, v7, 12, 0, a6);
        memset(&v7[v8 + 1], 61, v8 ^ 3);
      }
    }

    else
    {
      v9 = 0;
      *a6 = 1;
    }
  }

  return v9;
}

unint64_t SecBase64Encode2(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, char a5, unsigned int a6, char *a7)
{
  if (a7)
  {
    v8 = a7;
  }

  else
  {
    v8 = &v11;
  }

  v9 = a5 & 0xF;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        a6 = 76;
        return SecBase64Encode_(a1, a2, a3, a4, a6, v8);
      }

LABEL_11:
      result = 0;
      *v8 = 3;
      return result;
    }

LABEL_13:
    a6 = 64;
    return SecBase64Encode_(a1, a2, a3, a4, a6, v8);
  }

  if ((a5 & 0xF) == 0)
  {
    if ((a6 & 0x80000000) == 0)
    {
      return SecBase64Encode_(a1, a2, a3, a4, a6, v8);
    }

    goto LABEL_13;
  }

  if (v9 != 1)
  {
    goto LABEL_11;
  }

  a6 = 0;
  return SecBase64Encode_(a1, a2, a3, a4, a6, v8);
}

_BYTE *SecBase64Decode_(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, __int16 a5, void *a6, _DWORD *a7)
{
  v7 = a2 >> 2;
  if ((a2 & 3) != 0)
  {
    ++v7;
  }

  v8 = 3 * v7;
  *a6 = 0;
  *a7 = 0;
  if (a3)
  {
    if (v8 > a4)
    {
      v8 = 0;
      *a7 = 1;
      return v8;
    }

    v15 = -1431655766;
    v9 = a3;
    if (!a2)
    {
      return (v9 - a3);
    }

    v10 = 0;
    v11 = 0;
    v9 = a3;
    while (1)
    {
      v12 = *a1;
      if (v12 == 61)
      {
        *(&v15 + v11) = 0;
        ++v10;
        goto LABEL_12;
      }

      v13 = b64_indexes[v12];
      if (v13 != 255)
      {
        v10 = 0;
        *(&v15 + v11) = v13;
LABEL_12:
        if (++v11 == 4)
        {
          *v9 = (4 * v15) | (BYTE1(v15) >> 4) & 3;
          if (v10 == 2)
          {
            return (++v9 - a3);
          }

          v9[1] = (16 * BYTE1(v15)) | (BYTE2(v15) >> 2) & 0xF;
          if (v10 == 1)
          {
            v9 += 2;
            return (v9 - a3);
          }

          v9[2] = HIBYTE(v15) + (BYTE2(v15) << 6);
          if (v10)
          {
            v9 += 3;
            return (v9 - a3);
          }

          v11 = 0;
          v9 += 3;
        }

        goto LABEL_23;
      }

      if (v12 <= 0x20)
      {
        if (((1 << v12) & 0x100000B00) != 0)
        {
          if ((a5 & 0x200) != 0)
          {
            goto LABEL_30;
          }

          goto LABEL_23;
        }

        if (((1 << v12) & 0x2400) != 0)
        {
          goto LABEL_23;
        }
      }

      if ((a5 & 0x100) != 0)
      {
LABEL_30:
        v8 = 0;
        *a7 = 3;
        *a6 = a1;
        return v8;
      }

LABEL_23:
      ++a1;
      if (!--a2)
      {
        return (v9 - a3);
      }
    }
  }

  return v8;
}

_BYTE *SecBase64Decode2(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, unint64_t a4, __int16 a5, char *a6, char *a7)
{
  if (!a6)
  {
    a6 = &v9;
  }

  if (!a7)
  {
    a7 = &v8;
  }

  return SecBase64Decode_(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t SecCMSCreateEnvelopedData(void *a1, CFDictionaryRef theDict, const __CFData *a3, uint64_t a4)
{
  if (theDict && (Value = CFDictionaryGetValue(theDict, kSecCMSBulkEncryptionAlgorithm)) != 0)
  {
    v8 = Value;
    if (CFEqual(kSecCMSEncryptionAlgorithmDESCBC, Value))
    {
      v9 = 64;
      v10 = 10;
    }

    else
    {
      v26 = CFEqual(kSecCMSEncryptionAlgorithmAESCBC, v8);
      if (v26)
      {
        v10 = 184;
      }

      else
      {
        v10 = 7;
      }

      if (v26)
      {
        v9 = 128;
      }

      else
      {
        v9 = 192;
      }
    }
  }

  else
  {
    v9 = 192;
    v10 = 7;
  }

  v11 = SecCmsMessageCreate();
  if (!v11)
  {
    return 4294967246;
  }

  v12 = v11;
  v13 = SecCmsEnvelopedDataCreate(v11, v10, v9);
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  if (SecCmsContentInfoSetContent(v12, 0x1Bu, v13) || SecCmsContentInfoSetContentData(v14, 0, 0))
  {
    goto LABEL_22;
  }

  v15 = CFGetTypeID(a1);
  if (v15 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v19 = Count;
      v20 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v20);
        if (!nss_cmsrecipientinfo_create(v14, 0, ValueAtIndex, 0))
        {
          goto LABEL_22;
        }
      }

      while (v19 != ++v20);
    }

LABEL_18:
    Length = 0;
    BytePtr = 0;
    if (a3)
    {
      Length = CFDataGetLength(a3);
      BytePtr = CFDataGetBytePtr(a3);
      if (Length)
      {
        p_Length = &Length;
      }

      else
      {
        p_Length = 0;
      }
    }

    else
    {
      p_Length = 0;
    }

    if (SecCmsMessageEncode(v12, p_Length, a4, v17, v18))
    {
      v24 = 4294967246;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_27;
  }

  v22 = CFGetTypeID(a1);
  if (v22 == SecCertificateGetTypeID() && nss_cmsrecipientinfo_create(v14, 0, a1, 0))
  {
    goto LABEL_18;
  }

LABEL_22:
  v24 = 4294967246;
LABEL_27:
  SecCmsMessageDestroy(v12);
  return v24;
}

uint64_t SecCMSDecryptEnvelopedData(const __CFData *a1, __CFData *a2, void *a3)
{
  v6 = MS_SecCMSDecryptEnvelopedData(a1, a2, a3);
  if (isMessageSecurityAllowedForCurrentBundleID_onceToken != -1)
  {
    dispatch_once(&isMessageSecurityAllowedForCurrentBundleID_onceToken, &__block_literal_global_3844);
  }

  if (!isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound || !v6)
  {
    return v6;
  }

  v23 = 0;
  v22[0] = CFDataGetLength(a1);
  v22[1] = CFDataGetBytePtr(a1);
  v8 = SecCmsMessageDecode(v22, 0, 0, v7, 0, 0, 0, &v23);
  v9 = v23;
  if (v8)
  {
    v6 = 4294941021;
    goto LABEL_30;
  }

  if (!v23)
  {
    return 4294967246;
  }

  OID = *(v23 + 32);
  if (!OID)
  {
    OID = SECOID_FindOID(v23);
    *(v9 + 32) = OID;
    if (!OID)
    {
      goto LABEL_35;
    }
  }

  if (*(OID + 16) != 27)
  {
    goto LABEL_35;
  }

  v11 = *(v9 + 16);
  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = *(v11 + 144);
  while (1)
  {
    v13 = *v12;
    if (!*v12)
    {
      break;
    }

    v14 = *(v13 + 144);
    ++v12;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  v14 = 0;
LABEL_16:
  v15 = 0;
  ChildContentInfo = v9;
  do
  {
    ++v15;
    ChildContentInfo = SecCmsContentInfoGetChildContentInfo(ChildContentInfo);
  }

  while (ChildContentInfo);
  if (v15 != 2)
  {
    goto LABEL_36;
  }

  v17 = SecCmsContentInfoGetChildContentInfo(v9);
  if (!v17)
  {
LABEL_35:
    v6 = 4294967246;
    goto LABEL_31;
  }

  v18 = v17;
  v19 = *(v17 + 32);
  if (!v19 && (v19 = SECOID_FindOID(v18), (*(v18 + 32) = v19) == 0) || *(v19 + 16) != 25)
  {
LABEL_36:
    v6 = 4294967246;
    goto LABEL_30;
  }

  InnerContent = SecCmsContentInfoGetInnerContent(v9);
  if (InnerContent)
  {
    CFDataAppendBytes(a2, *(InnerContent + 8), *InnerContent);
  }

  if (a3)
  {
    if (v13)
    {
      CFRetain(v14);
    }

    v6 = 0;
    *a3 = v14;
  }

  else
  {
    v6 = 0;
  }

LABEL_30:
  if (v9)
  {
LABEL_31:
    SecCmsMessageDestroy(v9);
  }

  return v6;
}

uint64_t SecCMSSignDataOrDigestAndAttributes(uint64_t a1, const __CFData *a2, int a3, int a4, unsigned int a5, uint64_t a6, const __CFDictionary *a7, int a8, CFArrayRef theArray)
{
  if (!a3 && (a4 & 1) != 0)
  {
    return 4294967246;
  }

  v17 = SecCmsMessageCreate();
  if (!v17)
  {
    return 4294967246;
  }

  v18 = v17;
  v19 = PORT_ArenaAlloc(*(v17 + 120), 0xB8uLL);
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v19;
  *(v19 + 176) = 0;
  *(v19 + 144) = 0u;
  *(v19 + 160) = 0u;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *v19 = 0u;
  *(v19 + 24) = v18;
  if (SecCmsContentInfoSetContent(v18, 0x1Au, v19))
  {
    goto LABEL_25;
  }

  if (SecCmsContentInfoSetContentData(v20, 0, a3))
  {
    goto LABEL_25;
  }

  v21 = SecCmsSignerInfoCreate(v20, a1, a5);
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v21;
  if (theArray)
  {
    if (SecCmsSignedDataAddCertList(v20, theArray))
    {
      goto LABEL_25;
    }
  }

  if (SecCmsSignerInfoIncludeCerts(v22, a8))
  {
    goto LABEL_25;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (SecCmsSignerInfoAddSigningTime(v22, Current))
  {
    goto LABEL_25;
  }

  if (a7)
  {
    CFDictionaryApplyFunction(a7, sign_all_attributes, v22);
  }

  Length = 0;
  BytePtr = 0;
  if (!a2)
  {
    v26 = 0;
    if (a4)
    {
      goto LABEL_16;
    }

LABEL_19:
    if (v26)
    {
      v28 = &Length;
    }

    else
    {
      v28 = 0;
    }

    v27 = v18;
    goto LABEL_23;
  }

  Length = CFDataGetLength(a2);
  BytePtr = CFDataGetBytePtr(a2);
  v26 = Length != 0;
  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (SecCmsSignedDataSetDigestValue(v20, a5, &Length))
  {
LABEL_25:
    v29 = 4294967246;
    goto LABEL_26;
  }

  v27 = v18;
  v28 = 0;
LABEL_23:
  if (SecCmsMessageEncode(v27, v28, a6, v24, v25))
  {
    goto LABEL_25;
  }

  v29 = 0;
LABEL_26:
  SecCmsMessageDestroy(v18);
  return v29;
}

uint64_t sign_all_attributes(const __CFData *a1, const __CFData *a2, uint64_t a3)
{
  v13[0] = CFDataGetLength(a1);
  v13[1] = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a2);
  v12[0] = Length;
  v12[1] = CFDataGetBytePtr(a2);
  v7 = *(*(*(a3 + 128) + 24) + 120);
  result = PORT_ArenaAlloc(v7, 0x28uLL);
  if (result)
  {
    v9 = result;
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    if (!SECITEM_CopyItem(v7, result, v13))
    {
      v10 = SECITEM_AllocItem(v7, 0, Length);
      if (v10)
      {
        v11 = v10;
        if (!SECITEM_CopyItem(v7, v10, v12) && !SecCmsArrayAdd(v7, (v9 + 16), v11))
        {
          *(v9 + 32) = 1;
        }
      }
    }

    return SecCmsAttributeArrayAddAttr(v7, (a3 + 64), v9);
  }

  return result;
}

uint64_t SecCMSCreateSignedData(uint64_t a1, const __CFData *a2, CFDictionaryRef theDict, const __CFDictionary *a4, uint64_t a5)
{
  theArray = theDict;
  if (!theDict)
  {
    v10 = 0;
    v11 = 0;
    v19 = 4;
    IntValue = 2;
    return SecCMSSignDataOrDigestAndAttributes(a1, a2, v11, v10, v19, a5, a4, IntValue, theArray);
  }

  v10 = CFDictionaryGetValueIfPresent(theDict, kSecCMSSignDigest, 0) != 0;
  v11 = CFDictionaryGetValueIfPresent(theArray, kSecCMSSignDetached, 0) != 0;
  Value = CFDictionaryGetValue(theArray, kSecCMSSignHashAlgorithm);
  v13 = CFDictionaryGetValue(theArray, kSecCMSCertChainMode);
  if (v13 && (v14 = v13, v15 = CFGetTypeID(v13), v15 == CFStringGetTypeID()))
  {
    IntValue = CFStringGetIntValue(v14);
  }

  else
  {
    IntValue = 2;
  }

  v17 = CFDictionaryGetValue(theArray, kSecCMSAdditionalCerts);
  theArray = v17;
  if (v17)
  {
    v18 = CFGetTypeID(v17);
    if (v18 != CFArrayGetTypeID())
    {
      theArray = 0;
    }
  }

  if (!Value || CFEqual(kSecCMSHashingAlgorithmSHA1, Value))
  {
    v19 = 4;
    return SecCMSSignDataOrDigestAndAttributes(a1, a2, v11, v10, v19, a5, a4, IntValue, theArray);
  }

  if (CFEqual(kSecCMSHashingAlgorithmSHA256, Value))
  {
    v19 = 192;
    return SecCMSSignDataOrDigestAndAttributes(a1, a2, v11, v10, v19, a5, a4, IntValue, theArray);
  }

  if (CFEqual(kSecCMSHashingAlgorithmSHA384, Value))
  {
    v19 = 193;
    return SecCMSSignDataOrDigestAndAttributes(a1, a2, v11, v10, v19, a5, a4, IntValue, theArray);
  }

  if (CFEqual(kSecCMSHashingAlgorithmSHA512, Value))
  {
    v19 = 194;
    return SecCMSSignDataOrDigestAndAttributes(a1, a2, v11, v10, v19, a5, a4, IntValue, theArray);
  }

  return 4294967246;
}

uint64_t certArrayIsSubset(const __CFArray *a1, CFArrayRef theArray)
{
  if (a1 == theArray)
  {
    return 1;
  }

  result = 0;
  if (a1 && theArray)
  {
    v5 = 0;
    do
    {
      Count = CFArrayGetCount(theArray);
      v7 = v5 < Count;
      result = v5 >= Count;
      if (!v7)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
      v9.length = CFArrayGetCount(a1);
      v9.location = 0;
      result = CFArrayContainsValue(a1, v9, ValueAtIndex);
      ++v5;
    }

    while (result);
  }

  return result;
}

uint64_t SecCMSDecodeSignedData(const __CFData *a1, uint64_t *a2, const void **a3)
{
  if (isMessageSecurityAllowedForCurrentBundleID_onceToken != -1)
  {
    dispatch_once(&isMessageSecurityAllowedForCurrentBundleID_onceToken, &__block_literal_global_3844);
  }

  if (isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound)
  {

    return SecCMSVerifySignedData_internal(a1, 0, 0, 0, 0, a2, a3);
  }

  else
  {

    return MS_SecCMSDecodeSignedData(a1, a2, a3);
  }
}

CFMutableDataRef SecCMSCreateCertificatesOnlyMessage(void *a1)
{
  values = a1;
  if (!a1)
  {
    return 0;
  }

  v2 = SecCmsMessageCreate();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = PORT_ArenaAlloc(*(v2 + 120), 0xB8uLL);
  Mutable = v4;
  if (v4)
  {
    *(v4 + 176) = 0;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    *(v4 + 24) = v3;
    if (!SecCmsContentInfoSetContentData(v4, 0, 1) && !SecCmsContentInfoSetContent(v3, 0x1Au, Mutable) && SEC_ASN1EncodeInteger(*(v3 + 120), Mutable + 15, 1uLL))
    {
      v6 = CFGetTypeID(a1);
      if (v6 == SecCertificateGetTypeID())
      {
        v7 = *MEMORY[0x1E695E480];
        Copy = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
        goto LABEL_11;
      }

      v9 = CFGetTypeID(a1);
      if (v9 == CFArrayGetTypeID())
      {
        v7 = *MEMORY[0x1E695E480];
        Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a1);
LABEL_11:
        v10 = Copy;
        if (Copy)
        {
          Count = CFArrayGetCount(Copy);
          if (Count >= 1)
          {
            v12 = Count;
            v13 = PORT_ArenaAlloc(*(v3 + 120), 8 * Count + 8);
            *(Mutable + 18) = v13;
            if (v13)
            {
              v14 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
                if (!ValueAtIndex)
                {
                  break;
                }

                v16 = ValueAtIndex;
                v17 = PORT_ArenaAlloc(*(v3 + 120), 0x10uLL);
                if (v17)
                {
                  *v17 = 0;
                  v17[1] = 0;
                }

                *(*(Mutable + 18) + 8 * v14) = v17;
                v18 = v16[2];
                v19 = *(*(Mutable + 18) + 8 * v14);
                *v19 = v16[3];
                v19[1] = v18;
                if (v12 == ++v14)
                {
                  *(*(Mutable + 18) + 8 * v12) = 0;
                  if (v12 != 1)
                  {
                    SecCmsArraySort(*(Mutable + 18), SecCmsUtilDERCompare, 0, 0);
                  }

                  Mutable = CFDataCreateMutable(v7, 0);
                  v21 = 0;
                  v22 = 0;
                  if (SEC_ASN1EncodeItem(*(v3 + 120), &v21, v3, &SecCmsMessageTemplate))
                  {
                    CFDataAppendBytes(Mutable, v22, v21);
                    goto LABEL_23;
                  }

                  CFRelease(v10);
                  v10 = Mutable;
                  if (Mutable)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_25;
                }
              }
            }
          }

          Mutable = 0;
LABEL_23:
          CFRelease(v10);
          goto LABEL_25;
        }
      }
    }

    Mutable = 0;
  }

LABEL_25:
  SecCmsMessageDestroy(v3);
  return Mutable;
}

__CFData *SecCMSCreateCertificatesOnlyMessageIAP(__SecCertificate *a1)
{
  v1 = SecCertificateCopyData(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  BytePtr = CFDataGetBytePtr(v1);
  Length = CFDataGetLength(v2);
  if ((Length - 0xFFFF) < 0xFFFFFFFFFFFF0101)
  {
    v7 = 0;
  }

  else
  {
    v5 = Length;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v7 = Mutable;
    if (Mutable)
    {
      CFDataAppendBytes(Mutable, SecCMSCreateCertificatesOnlyMessageIAP_header, 45);
      CFDataAppendBytes(v7, BytePtr, v5);
      CFDataAppendBytes(v7, SecCMSCreateCertificatesOnlyMessageIAP_trailer, 4);
      MutableBytePtr = CFDataGetMutableBytePtr(v7);
      v9 = CFDataGetLength(v7);
      MutableBytePtr[2] = (v9 - 4) >> 8;
      MutableBytePtr[3] = v9 - 4;
      MutableBytePtr[17] = (v9 - 19) >> 8;
      MutableBytePtr[18] = v9 - 19;
      MutableBytePtr[21] = (v9 - 23) >> 8;
      MutableBytePtr[22] = v9 - 23;
      MutableBytePtr[43] = (v9 - 49) >> 8;
      MutableBytePtr[44] = v9 - 49;
    }
  }

  CFRelease(v2);
  return v7;
}

void sub_1888BF724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTKUserSecretTriesLeftErrorKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CryptoTokenKitLibrary();
  result = dlsym(v2, "TKUserSecretTriesLeftErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKUserSecretTriesLeftErrorKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getTKTokenNotFoundAndRegistered()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getTKTokenNotFoundAndRegisteredSymbolLoc_ptr;
  v8 = getTKTokenNotFoundAndRegisteredSymbolLoc_ptr;
  if (!getTKTokenNotFoundAndRegisteredSymbolLoc_ptr)
  {
    v1 = CryptoTokenKitLibrary();
    v6[3] = dlsym(v1, "TKTokenNotFoundAndRegistered");
    getTKTokenNotFoundAndRegisteredSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"TKErrorCode getTKTokenNotFoundAndRegistered(void)"];
    [v3 handleFailureInFunction:v4 file:@"SecSoftLink.h" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1888BFC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SECKEY_LOG()
{
  if (_SECKEY_LOG_once != -1)
  {
    dispatch_once(&_SECKEY_LOG_once, &__block_literal_global_9334);
  }

  v1 = _SECKEY_LOG_log;

  return v1;
}

void *__getTKTokenNotFoundAndRegisteredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CryptoTokenKitLibrary();
  result = dlsym(v2, "TKTokenNotFoundAndRegistered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKTokenNotFoundAndRegisteredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getTKClientTokenParameterForceSystemSession()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr;
  v9 = getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr;
  if (!getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr)
  {
    v1 = CryptoTokenKitLibrary();
    v7[3] = dlsym(v1, "TKClientTokenParameterForceSystemSession");
    getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTKClientTokenParameterForceSystemSession(void)"];
    [v4 handleFailureInFunction:v5 file:@"SecSoftLink.h" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1888C0244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTKClientTokenParameterForceSystemSessionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CryptoTokenKitLibrary();
  result = dlsym(v2, "TKClientTokenParameterForceSystemSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SecCTKKeySetParameter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v37 = [SecCTKKey fromKeyRef:a1];
  v6 = [v37 sessionParameters];
  v7 = [v6 mutableCopy];

  [v7 setObject:a3 forKeyedSubscript:a2];
  v8 = v7;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [v8 copy];
  v9 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        if ([v14 isEqual:@"u_AuthCtx"])
        {
          v16 = v15;

          [v8 removeObjectForKey:v14];
          v11 = v16;
        }

        if ([v14 isEqual:@"u_CredRef"])
        {
          if (LocalAuthenticationLibraryCore())
          {
            v17 = [objc_alloc(getLAContextClass()) initWithExternalizedContext:v15];

            v11 = v17;
          }

          [v8 removeObjectForKey:v14];
        }

        if ([v14 isEqual:@"u_OpPrompt"])
        {
          if (LocalAuthenticationLibraryCore())
          {
            if (!v11)
            {
              v11 = objc_alloc_init(getLAContextClass());
            }

            [v11 setLocalizedReason:v15];
          }

          [v8 removeObjectForKey:v14];
        }

        if (LocalAuthenticationLibraryCore() && [v14 isEqual:@"u_CallerName"])
        {
          if (LocalAuthenticationLibraryCore())
          {
            if (!v11)
            {
              v11 = objc_alloc_init(getLAContextClass());
            }

            [v11 setOptionCallerName:v15];
          }

          [v8 removeObjectForKey:v14];
        }

        if ([v14 isEqual:@"u_AuthUI"])
        {
          if (LocalAuthenticationLibraryCore())
          {
            if (!v11)
            {
              v11 = objc_alloc_init(getLAContextClass());
            }

            v18 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "isEqual:", @"u_AuthUIF"}];
            [v11 setOptionNotInteractive:v18];
          }

          [v8 removeObjectForKey:v14];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  if (CryptoTokenKitLibraryCore())
  {
    v19 = objc_alloc(getTKClientTokenSessionClass());
    v20 = v37;
    v21 = [v37 tokenObject];
    v22 = [v21 session];
    v23 = [v22 token];
    v40 = 0;
    v24 = [v19 initWithToken:v23 LAContext:v11 parameters:v8 error:&v40];
    v25 = v40;

    v26 = [v37 tokenObject];
    v27 = [v26 objectID];
    v39 = v25;
    v28 = [v24 objectForObjectID:v27 error:&v39];
    v29 = v39;

    if (v28)
    {
      [v37 setSessionParameters:v8];
      [v37 setTokenObject:v28];

      v30 = 1;
      goto LABEL_42;
    }
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A768];
    v45 = *MEMORY[0x1E696A278];
    v46 = @"CryptoTokenKit is not available";
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v29 = [v31 errorWithDomain:v32 code:-4 userInfo:v33];

    v20 = v37;
  }

  if (a4)
  {
    v29 = v29;
    v30 = 0;
    *a4 = v29;
  }

  else
  {
    v30 = 0;
  }

LABEL_42:

  v34 = *MEMORY[0x1E69E9840];
  return v30;
}

void *SecCTKKeyCreateDuplicate(const void *a1)
{
  v2 = [SecCTKKey fromKeyRef:a1];
  v3 = CFGetAllocator(a1);
  v4 = SecKeyCreate(v3, &kSecCTKKeyDescriptor, 0, 0, 0);
  v4[3] = [v2 copy];

  return v4;
}

uint64_t SecCTKKeyIsEqual(uint64_t a1, uint64_t a2)
{
  v3 = [SecCTKKey fromKeyRef:a1];
  v4 = [SecCTKKey fromKeyRef:a2];
  v5 = [v3 isEqual:v4];

  return v5;
}

id __SecCTKKeyCopyPublicOctets_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) tokenObject];
  v2 = [v1 publicKey];

  return v2;
}

id SecCTKKeyCopyKeyDescription(uint64_t a1)
{
  v2 = [SecCTKKey fromKeyRef:a1];
  v3 = [v2 keychainAttributes];
  v4 = [v3 objectForKeyedSubscript:@"tkid"];
  v5 = v4;
  v6 = @"uninited";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef:('%@') %p>", v7, a1];

  v9 = v8;
  return v9;
}

void __SecCTKKeyCopyAttributeDictionary_block_invoke()
{
  v3[23] = *MEMORY[0x1E69E9840];
  v3[0] = @"class";
  v3[1] = @"tkid";
  v3[2] = @"kcls";
  v3[3] = @"accc";
  v3[4] = @"priv";
  v3[5] = @"modi";
  v3[6] = @"type";
  v3[7] = @"bsiz";
  v3[8] = @"esiz";
  v3[9] = @"sens";
  v3[10] = @"asen";
  v3[11] = @"extr";
  v3[12] = @"next";
  v3[13] = @"encr";
  v3[14] = @"decr";
  v3[15] = @"drve";
  v3[16] = @"sign";
  v3[17] = @"vrfy";
  v3[18] = @"snrc";
  v3[19] = @"vyrc";
  v3[20] = @"wrap";
  v3[21] = @"unwp";
  v3[22] = @"u_SystemKeychain";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:23];
  v1 = SecCTKKeyCopyAttributeDictionary_exportableAttributes;
  SecCTKKeyCopyAttributeDictionary_exportableAttributes = v0;

  v2 = *MEMORY[0x1E69E9840];
}

uint64_t SecCTKKeyBlockSize(uint64_t a1)
{
  v1 = [SecCTKKey fromKeyRef:a1];
  v2 = [v1 keychainAttributes];
  v3 = [v2 objectForKeyedSubscript:@"bsiz"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
    v5 = v4 + 7;
    if (v4 < -7)
    {
      v5 = v4 + 14;
    }

    v6 = v5 >> 3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void *SecKeyCopySystemKey(uint64_t a1, __CFString **a2)
{
  switch(a1)
  {
    case 0:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_sikObjectIDBytes;
      goto LABEL_12;
    case 1:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_gidObjectIDBytes;
LABEL_12:
      v13 = v3;
      v14 = 23;
      goto LABEL_20;
    case 2:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_uikCommittedObjectIDBytes;
      goto LABEL_19;
    case 3:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_uikProposedObjectIDBytes;
      goto LABEL_19;
    case 4:
      v3 = *MEMORY[0x1E695E480];
      v12 = CFDataCreate(*MEMORY[0x1E695E480], SecKeyCopySystemKey_casdObjectIDBytes, 29);
      goto LABEL_21;
    case 5:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_oikCommittedObjectIDBytes;
      goto LABEL_19;
    case 6:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_oikProposedObjectIDBytes;
      goto LABEL_19;
    case 7:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_dakCommittedObjectIDBytes;
      goto LABEL_19;
    case 8:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_dakProposedObjectIDBytes;
      goto LABEL_19;
    case 9:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_havenCommittedObjectIDBytes;
      goto LABEL_17;
    case 10:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_havenProposedObjectIDBytes;
LABEL_17:
      v13 = v3;
      v14 = 26;
      goto LABEL_20;
    case 11:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_sdakCommittedObjectIDBytes;
      goto LABEL_6;
    case 12:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_sdakProposedObjectIDBytes;
LABEL_6:
      v13 = v3;
      v14 = 25;
      goto LABEL_20;
    case 13:
      v3 = *MEMORY[0x1E695E480];
      v4 = &SecKeyCopySystemKey_dcikObjectIDBytes;
LABEL_19:
      v13 = v3;
      v14 = 24;
LABEL_20:
      v12 = CFDataCreate(v13, v4, v14);
LABEL_21:
      v15 = CFDictionaryCreateForCFTypes(v3, v5, v6, v7, v8, v9, v10, v11, @"toid", v12);
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      CTKKey = SecKeyCreateCTKKey(SecCFAllocatorZeroize_sAllocator, v15, a2);
      if (v15)
      {
        CFRelease(v15);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      break;
    default:
      SecError(-50, a2, @"unexpected system key type %d", a1);
      CTKKey = 0;
      break;
  }

  return CTKKey;
}

uint64_t SecKeyCreateAttestation(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1887D2000, "SecKeyCreateAttestation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  _SecKeyCheck(a1, "SecKeyCreateAttestation");
  v8 = [SecCTKKey fromKeyRef:a1];
  v9 = [SecCTKKey fromKeyRef:a2];
  if (*(a1 + 16) == &kSecCTKKeyDescriptor)
  {
    if (*(a2 + 16) == &kSecCTKKeyDescriptor)
    {
      v12 = [v8 tokenObject];
      v13 = [v9 tokenObject];
      v14 = [v8 sessionParameters];
      v15 = [v14 objectForKeyedSubscript:@"com.apple.security.seckey.setoken.attestation-nonce"];
      v18 = 0;
      v10 = [v12 attestKeyObject:v13 nonce:v15 error:&v18];
      v17 = v18;

      v16 = v17;
      _SecKeyErrorPropagate(v10 != 0, "SecKeyCreateAttestation", v16, a3);

      goto LABEL_6;
    }

    SecError(-4, a3, @"attestation not supported for key %@", a2);
  }

  else
  {
    SecError(-4, a3, @"attestation not supported by key %@", a1);
  }

  v10 = 0;
LABEL_6:

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v6);
  return v10;
}

BOOL SecKeyControlLifetime(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1887D2000, "SecKeyControlLifetime", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  _SecKeyCheck(a1, "SecKeyControlLifetime");
  if (*(a1 + 16) == &kSecCTKKeyDescriptor)
  {
    v9 = [SecCTKKey fromKeyRef:a1];
    v10 = v9;
    if (a2)
    {
      if (a2 != 1)
      {
        v8 = SecError(-50, a3, @"Unsupported lifetime operation %d requested", a2);
        v15 = 0;
        goto LABEL_9;
      }

      v11 = [v9 tokenObject];
      v17 = 0;
      v12 = &v17;
      v13 = [v11 commitKeyWithError:&v17];
    }

    else
    {
      v11 = [v9 tokenObject];
      v18 = 0;
      v12 = &v18;
      v13 = [v11 bumpKeyWithError:&v18];
    }

    v8 = v13;
    v14 = *v12;

    v15 = v14;
    _SecKeyErrorPropagate(v8, "SecKeyControlLifetime", v15, a3);
LABEL_9:

    goto LABEL_10;
  }

  v8 = SecError(-4, a3, @"lifetimecontrol not supported for key %@", a1);
LABEL_10:
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t SecCEPQCStatements(uint64_t a1, uint64_t a2)
{
  if (SecCEPQCStatements_onceToken != -1)
  {
    dispatch_once(&SecCEPQCStatements_onceToken, &__block_literal_global_262);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (!a2 || !SecCEPQCStatements_sQCSParsers || !Mutable)
  {
    goto LABEL_20;
  }

  memset(v14, 170, sizeof(v14));
  if (!DERDecodeSeqInit(a2 + 24, &v14[2], v14) && v14[2] == 0x2000000000000010 && v14[0] != v14[1])
  {
    memset(v13, 170, sizeof(v13));
    for (i = 1023; ; --i)
    {
      result = DERDecodeSeqNext(v14, v13);
      if (result)
      {
        break;
      }

      if (v13[0] != 0x2000000000000010)
      {
        goto LABEL_20;
      }

      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v12[0] = v8;
      v12[1] = v8;
      if (DERParseSequenceContent(&v13[1], 2u, &DERQCStatementItemSpecs, v12, 0x20uLL))
      {
        goto LABEL_20;
      }

      if (!i)
      {
        goto LABEL_20;
      }

      Value = CFDictionaryGetValue(SecCEPQCStatements_sQCSParsers, v12);
      if (Value)
      {
        if ((Value(v5, v12) & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    if (result == 1)
    {
      *(a1 + 632) = v5;
      return result;
    }

LABEL_20:
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  CFRelease(v5);
LABEL_22:
  *(a1 + 632) = 0;
  v10 = secLogObjForScope("SecWarning");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v11)
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "Invalid QCStatements Extension", v12, 2u);
    return 0;
  }

  return result;
}

CFDictionaryRef __SecCEPQCStatements_block_invoke()
{
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], SecCertificateInitializeQCStatementParsers_extnOIDs, SecCertificateInitializeQCStatementParsers_extnParsers, 2, &SecDERItemKeyCallBacks, 0);
  SecCEPQCStatements_sQCSParsers = result;
  return result;
}

uint64_t SecQCPType(__CFDictionary *a1, uint64_t a2)
{
  memset(v17, 170, sizeof(v17));
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  if (DERDecodeSeqInit(a2 + 16, v17, &v17[1]) || v17[0] != 0x2000000000000010 || v17[1] == v17[2])
  {
    goto LABEL_20;
  }

  memset(v16, 170, sizeof(v16));
  for (i = 9; ; --i)
  {
    v6 = DERDecodeSeqNext(&v17[1], v16);
    if (v6)
    {
      break;
    }

    if (v16[0] != 6 || i == 0)
    {
      goto LABEL_20;
    }

    v8 = DEROidCompare(&oidQCTypeWeb, &v16[1]);
    v9 = @"QCSTypeWeb";
    if (!v8)
    {
      v10 = DEROidCompare(&oidQCTypeEseal, &v16[1]);
      v9 = @"QCSTypeEseal";
      if (!v10)
      {
        v11 = DEROidCompare(&oidQCTypeEsign, &v16[1]);
        v9 = @"QCSTypeEsign";
        if (!v11)
        {
          continue;
        }
      }
    }

    CFSetAddValue(Mutable, v9);
  }

  if (v6 != 1)
  {
LABEL_20:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v13 = secLogObjForScope("SecWarning");
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v14)
    {
      *v15 = 0;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "Invalid QCS Type", v15, 2u);
      return 0;
    }
  }

  else
  {
    CFDictionarySetValue(a1, @"QCSType", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 1;
  }

  return result;
}

uint64_t SecCEPInhibitAnyPolicy(uint64_t a1, uint64_t a2)
{
  memset(v8, 170, sizeof(v8));
  if (DERDecodeItem(a2 + 24, v8) || v8[0] != 2 || DERParseInteger(&v8[1], (a1 + 380)))
  {
    *(a1 + 376) = 0;
    v5 = secLogObjForScope("SecWarning");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Invalid InhibitAnyPolicy Extension", v7, 2u);
      return 0;
    }
  }

  else
  {
    result = 1;
    *(a1 + 376) = 1;
    *(a1 + 377) = *(a2 + 16);
  }

  return result;
}

uint64_t SecCEPPolicyConstraints(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v4;
  v10 = v4;
  if (DERParseSequence(a2 + 24, DERNumPolicyConstraintsItemSpecs, &DERPolicyConstraintsItemSpecs, &v9, 0x20uLL))
  {
    goto LABEL_10;
  }

  if (*(&v9 + 1))
  {
    if (DERParseInteger(&v9, (a1 + 312)))
    {
      goto LABEL_10;
    }

    *(a1 + 310) = 1;
  }

  if (!*(&v10 + 1))
  {
LABEL_8:
    result = 1;
    *(a1 + 308) = 1;
    *(a1 + 309) = *(a2 + 16);
    return result;
  }

  if (!DERParseInteger(&v10, (a1 + 320)))
  {
    *(a1 + 316) = 1;
    goto LABEL_8;
  }

LABEL_10:
  *(a1 + 308) = 0;
  v6 = secLogObjForScope("SecWarning");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    *v8 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Invalid PolicyConstraints Extension", v8, 2u);
    return 0;
  }

  return result;
}

uint64_t SecCEPPolicyMappings(uint64_t a1, uint64_t a2)
{
  memset(v17, 170, sizeof(v17));
  if (DERDecodeSeqInit(a2 + 24, &v17[2], v17) || v17[2] != 0x2000000000000010)
  {
    goto LABEL_8;
  }

  v4 = 0;
  memset(v16, 170, sizeof(v16));
  while (1)
  {
    v5 = DERDecodeSeqNext(v17, v16);
    if (v5)
    {
      break;
    }

    if (v16[0] == 0x2000000000000010 && v4++ < 0x3FF)
    {
      continue;
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  if (v5 != 1)
  {
    goto LABEL_8;
  }

  v13 = malloc_type_malloc(32 * v4, 0x1010040E633A1C4uLL);
  if (!v13)
  {
    goto LABEL_8;
  }

  if (DERDecodeSeqInit(a2 + 24, &v17[2], v17))
  {
LABEL_21:
    free(v13);
LABEL_8:
    *(a1 + 328) = 0;
    v7 = secLogObjForScope("SecWarning");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Invalid PolicyMappings Extension", buf, 2u);
      return 0;
    }

    return result;
  }

  v10 = v13 + 1;
  v11 = v4;
  do
  {
    if (DERDecodeSeqNext(v17, v16))
    {
      break;
    }

    if (v16[0] != 0x2000000000000010)
    {
      goto LABEL_21;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v12;
    v15 = v12;
    if (DERParseSequenceContent(&v16[1], DERNumPolicyMappingItemSpecs, &DERPolicyMappingItemSpecs, buf, 0x20uLL))
    {
      goto LABEL_21;
    }

    *(v10 - 1) = *buf;
    *v10 = v15;
    v10 += 2;
    --v11;
  }

  while (v11);
  result = 1;
  *(a1 + 328) = 1;
  *(a1 + 329) = *(a2 + 16);
  *(a1 + 336) = v4;
  *(a1 + 344) = v13;
  return result;
}