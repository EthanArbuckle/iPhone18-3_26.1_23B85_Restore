uint64_t SSLHandshakeProceed(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = tls_handshake_continue();
  if (!v3)
  {
    v3 = (*(*(a1 + 40) + 64))(*(a1 + 48));
    if ((v3 + 10009) <= 9)
    {
      v3 = dword_188960578[(v3 + 10009)];
    }

    if (!v3)
    {
      memset(v6, 170, sizeof(v6));
      v3 = (**(a1 + 40))(*(a1 + 48), v6);
      if ((v3 + 10009) <= 9)
      {
        v3 = dword_188960578[(v3 + 10009)];
      }

      if (!v3)
      {
        v4 = *(a1 + 56);
        v3 = tls_handshake_process();
        v7 = *v6;
        v8 = *&v6[16];
        (*(*(a1 + 40) + 56))(*(a1 + 48), &v7);
      }

      if (*(a1 + 108) == 1 && (*(a1 + 552) & 1) == 0 && (*(a1 + 553) & 1) == 0 && v3 != -9803 && v3)
      {
        log_SecureTransport_early_fail(v3);
      }
    }
  }

  return v3;
}

uint64_t tls_handshake_message_callback(uint64_t a1, int a2)
{
  result = 0;
  if (a2 <= 12)
  {
    if (a2 == 1)
    {
      v6 = *(a1 + 56);
      *(a1 + 392) = tls_handshake_get_peer_signature_algorithms();
      if (*(a1 + 359))
      {
        return 4294957445;
      }

      else
      {
        return 0;
      }
    }

    if (a2 != 2)
    {
      if (a2 != 11)
      {
        return result;
      }

      v4 = *(a1 + 56);
      result = tls_helper_set_peer_pubkey();
      if (result)
      {
        return result;
      }

      if (!*(a1 + 108))
      {
        goto LABEL_14;
      }

      return 0;
    }

    *(a1 + 553) = 1;
    v8 = *(a1 + 56);
    peer_alpn_data = tls_handshake_get_peer_alpn_data();
    if (peer_alpn_data && (v10 = *(a1 + 536)) != 0)
    {
      v11 = 544;
    }

    else
    {
      v12 = *(a1 + 56);
      peer_alpn_data = tls_handshake_get_peer_npn_data();
      if (!peer_alpn_data)
      {
LABEL_29:
        v13 = *(a1 + 56);
        peer_signature_algorithms = tls_handshake_get_peer_signature_algorithms();
        result = 0;
        *(a1 + 392) = peer_signature_algorithms;
        return result;
      }

      v10 = *(a1 + 520);
      v11 = 528;
    }

    v10(a1, *(a1 + v11), peer_alpn_data[1], *peer_alpn_data);
    goto LABEL_29;
  }

  if (a2 == 67)
  {
    v7 = *(a1 + 56);
    result = tls_handshake_get_peer_npn_data();
    if (!result)
    {
      return result;
    }

    (*(a1 + 520))(a1, *(a1 + 528), *(result + 8), *result);
    return 0;
  }

  if (a2 != 14)
  {
    if (a2 != 13)
    {
      return result;
    }

    *(a1 + 256) = 1;
    v5 = *(a1 + 56);
    *(a1 + 408) = tls_handshake_get_peer_acceptable_client_auth_type();
    if (*(a1 + 354) && !*(a1 + 152))
    {
      *(a1 + 357) = 1;
      return 4294957454;
    }

    return 0;
  }

LABEL_14:

  return tls_verify_peer_cert(a1);
}

__CFData *SecRSAPrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  Mutable = *MEMORY[0x1E695E738];
  v13 = *(a1 + 24);
  if (a2 == 3)
  {
    if (CFEqual(cf1, @"algid:encrypt:RSA:raw-cc"))
    {
      if (!a5)
      {
        Length = CFDataGetLength(a6);
        ccrsa_ctx_public();
        if (Length == ((ccrsa_block_size() + 7) & 0xFFFFFFFFFFFFFFF8))
        {
          if (SecCFAllocatorZeroize_sOnce != -1)
          {
            dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
          }

          v16 = SecCFAllocatorZeroize_sAllocator;
LABEL_15:
          Mutable = CFDataCreateMutable(v16, 0);
          CFDataSetLength(Mutable, Length);
          CFDataGetMutableBytePtr(Mutable);
          CFDataGetBytePtr(a6);
          v17 = ccrsa_priv_crypt();
          if (!v17)
          {
            return Mutable;
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          SecError(-50, a8, @"rsa_priv_crypt failed, ccerr=%d", v17);
          return 0;
        }

LABEL_21:
        SecError(-50, a8, @"%@: sign - input buffer bad size (%d bytes)", a1, Length);
        return 0;
      }

      return *MEMORY[0x1E695E4D0];
    }
  }

  else if (!a2 && CFEqual(cf1, @"algid:sign:RSA:raw-cc"))
  {
    if (!a5)
    {
      Length = CFDataGetLength(a6);
      ccrsa_ctx_public();
      if (Length == ((ccrsa_block_size() + 7) & 0xFFFFFFFFFFFFFFF8))
      {
        CFDataGetLength(a6);
        CFDataGetBytePtr(a6);
        v15 = *v13;
        if ((ccn_cmpn() & 0x80000000) == 0)
        {
          v19 = CFDataGetLength(a6);
          SecError(-50, a8, @"%@: sign - digest too big (%d bytes)", a1, v19);
          return 0;
        }

        v16 = *MEMORY[0x1E695E480];
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    return *MEMORY[0x1E695E4D0];
  }

  return Mutable;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPKCS1v15SHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha256_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 0, v7);
}

__CFData *SecKeyRSACopyEMSASignature(uint64_t a1, uint64_t a2, __CFString **a3, int a4, void *a5)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v10 = SecKeyCopyAttributes(*a1);
  v11 = v10;
  if (!v10)
  {
    SecError(-50, a3, @"Unable to export key parameters");
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v10, @"type");
  if (!CFEqual(Value, @"42") || (v13 = CFDictionaryGetValue(v11, @"kcls"), !CFEqual(v13, @"1")))
  {
    v26[3] = *MEMORY[0x1E695E738];
    goto LABEL_20;
  }

  if (a4)
  {
    v14 = [CFDictionaryGetValue(v11 @"bsiz")];
    if (v14 < ((16 * *a5) | 9))
    {
      v15 = *(a1 + 16);
      Count = CFArrayGetCount(v15);
      ValueAtIndex = CFArrayGetValueAtIndex(v15, Count - 1);
      SecError(-50, a3, @"algorithm %@ incompatible with %lubit RSA key", ValueAtIndex, v14);
LABEL_20:
      CFRelease(v11);
LABEL_16:
      v18 = v26[3];
      goto LABEL_18;
    }
  }

  else
  {
    v14 = 0;
  }

  CFRelease(v11);
  if (a5 && (a4 & 1) == 0)
  {
    CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15");
  }

  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:raw-cc");
  if (*(a1 + 24) != 1)
  {
    v19 = *a1;
    _SecKeyCheck(*a1, "SecKeyGetBlockSize");
    v20 = *(*(v19 + 2) + 80);
    if (!v20 || (v21 = v20(v19)) == 0)
    {
      SecError(-50, a3, @"expecting RSA key");
      v18 = 0;
      goto LABEL_18;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __SecKeyRSACopyEMSASignature_block_invoke;
    v23[3] = &unk_1E70E07C8;
    v24 = a4;
    v23[6] = a3;
    v23[7] = a5;
    v23[8] = a2;
    v23[9] = v14;
    v23[4] = &v25;
    v23[5] = v21;
    v23[10] = a1;
    PerformWithCFDataBuffer((v21 + 7) & 0xFFFFFFFFFFFFFFF8, v23);
    goto LABEL_16;
  }

  v18 = SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a3);
LABEL_18:
  _Block_object_dispose(&v25, 8);
  return v18;
}

void __SecKeyRSACopyEMSASignature_block_invoke(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  v18 = [MEMORY[0x1E695DF88] dataWithLength:*(a1 + 40)];
  if (!v18)
  {
    SecError(-108, *(a1 + 48), @"out of memory");
    goto LABEL_14;
  }

  if (*(a1 + 88) != 1)
  {
    v10 = *(a1 + 40);
    [v18 mutableBytes];
    CFDataGetLength(*(a1 + 64));
    CFDataGetBytePtr(*(a1 + 64));
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = *(v11 + 32);
    }

    if (ccrsa_emsa_pkcs1v15_encode())
    {
      SecError(-50, *(a1 + 48), @"RSAsign wrong input data length");
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = [MEMORY[0x1E695DF88] dataWithLength:**(a1 + 56)];
  if (!v5)
  {
    SecError(-108, *(a1 + 48), @"out of memory");
LABEL_22:

    goto LABEL_14;
  }

  v6 = ccrng();
  v7 = (*v6)(v6, **(a1 + 56), [v5 mutableBytes]);
  if (v7)
  {
    SecError(-26276, *(a1 + 48), @"PSS salt gen fail (%zu bytes), err %d", **(a1 + 56), v7);
    goto LABEL_22;
  }

  v8 = **(a1 + 56);
  [v5 bytes];
  CFDataGetLength(*(a1 + 64));
  CFDataGetBytePtr(*(a1 + 64));
  v9 = *(a1 + 72) - 1;
  [v18 mutableBytes];
  if (ccrsa_emsa_pss_encode())
  {
    SecError(-50, *(a1 + 48), @"RSASSA-PSS incompatible algorithm for key size");
    goto LABEL_22;
  }

LABEL_10:
  v13 = *(a1 + 40);
  [v18 bytes];
  ccn_read_uint();
  v14 = SecKeyRunAlgorithmAndCopyResult(*(a1 + 80), a3, 0, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = v14;
  if (v14)
  {
    v15 = *(*(a1 + 32) + 8);
    v16 = SecKeyRSACopyCCUnitToBigEndian(*(v15 + 24), *(a1 + 40));
    v17 = *(v15 + 24);
    if (v17)
    {
      CFRelease(v17);
    }

    *(v15 + 24) = v16;
  }

LABEL_14:
}

uint64_t tls_verify_peer_cert(uint64_t a1)
{
  v10 = 0;
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 168) = 0;
    CFRelease(v2);
  }

  sslCreateSecTrust(a1, &v10);
  v3 = v10;
  if (!v10)
  {
    if (*(a1 + 108) == 1 || *(a1 + 252) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (!*(a1 + 187))
  {
    goto LABEL_14;
  }

  v9 = -1431655766;
  v4 = SecTrustEvaluateInternal(v10, &v9);
  if (!v4)
  {
    if (v9 != 1 && v9 != 4 && !*(a1 + 312))
    {
LABEL_12:
      *(a1 + 168) = v3;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 168) = v3;
    goto LABEL_15;
  }

  *(a1 + 168) = v3;
  if ((v4 + 9815) <= 3)
  {
    v8 = dword_18895E200[v4 + 9815];
  }

LABEL_15:
  v5 = *(a1 + 56);
  tls_handshake_set_peer_trust();
  if (*(a1 + 108))
  {
    if (!*(a1 + 168))
    {
      return 0;
    }

    v6 = 353;
  }

  else
  {
    v6 = 355;
  }

  if (*(a1 + v6))
  {
    return 4294957455;
  }

  else
  {
    return 0;
  }
}

uint64_t sslCreateSecTrust(uint64_t a1, void *a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 108);
  peer_trust = tls_helper_create_peer_trust();
  if (peer_trust)
  {
    v7 = peer_trust;
  }

  else
  {
    v7 = 0;
  }

  *a2 = 0;
  return v7;
}

uint64_t SecItemCopyParentCertificates_ios(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1887D2000, "SecItemCopyParentCertificates_ios", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  if (gSecurityd && (v8 = *(gSecurityd + 40)) != 0)
  {
    v9 = v8(a1, a2, a3);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __data_array_to_array_error_request_block_invoke;
    v13[3] = &__block_descriptor_48_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v13[4] = a1;
    v13[5] = a2;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __data_array_to_array_error_request_block_invoke_2;
    v12[3] = &unk_1E70DEAC0;
    v12[4] = &v14;
    securityd_send_sync_and_do(0x6Du, a3, v13, v12);
    v9 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v6);
  return v9;
}

uint64_t __data_array_to_array_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  SecXPCDictionarySetData(v6, "normIssuer", v5, a3);
  SecXPCDictionarySetPListWithRepair(v6, "accessGroups", *(a1 + 40), a3, v7, v8, v9, v10);

  return 1;
}

BOOL SecXPCDictionarySetData(void *a1, const char *a2, CFDataRef theData, __CFString **a4)
{
  if (!theData)
  {
    return SecError(-50, a4, @"data for key %s is NULL", a2);
  }

  if (CFDataGetLength(theData) < 0)
  {
    return SecError(-50, a4, @"no data for key %s", a2);
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  xpc_dictionary_set_data(a1, a2, BytePtr, Length);
  return 1;
}

OSStatus SSLRead(SSLContextRef context, void *data, size_t dataLength, size_t *processed)
{
  memset(v22, 170, sizeof(v22));
  result = -50;
  if (!context || !data || !processed)
  {
    return result;
  }

  *processed = 0;
  while (2)
  {
    while (2)
    {
      v9 = *(context + 20) - 3;
      if (v9 < 4)
      {
        return dword_18895E240[v9];
      }

      while (!*(context + 18))
      {
        result = SSLHandshakeProceed(context);
        if (result)
        {
          goto LABEL_29;
        }
      }

      v10 = *(context + 7);
      result = tls_handshake_continue();
      if (result)
      {
        return result;
      }

      result = (*(*(context + 5) + 64))(*(context + 6));
      if ((result + 10009) <= 9)
      {
        result = dword_188960578[result + 10009];
      }

      if (result)
      {
        v11 = result == -9803;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        v12 = *(context + 37);
        v13 = dataLength;
        v14 = data;
        if (v12)
        {
          v15 = *(context + 38);
          v16 = *(context + 36) - v15 >= dataLength ? dataLength : *(context + 36) - v15;
          memcpy(data, (v12 + v15), v16);
          v13 = dataLength - v16;
          v14 = data + v16;
          *processed += v16;
          v17 = *(context + 37);
          v18 = *(context + 38) + v16;
          *(context + 38) = v18;
          if (v17)
          {
            if (v18 >= *(context + 36))
            {
              free(v17);
              *(context + 36) = 0;
              *(context + 37) = 0;
              *(context + 38) = 0;
            }
          }
        }

        if (!v13 || *(context + 20) == 3)
        {
          goto LABEL_33;
        }

        result = (**(context + 5))(*(context + 6), v22);
        if ((result + 10009) <= 9)
        {
          result = dword_188960578[result + 10009];
        }

        if (!result)
        {
          if (v22[0] != 23 && v22[0])
          {
            v21 = *(context + 7);
            result = tls_handshake_process();
            if (result)
            {
              if (result != -9805)
              {
                goto LABEL_29;
              }

              SSLClose(context);
            }
          }

          else
          {
            v20 = *&v22[8];
            if (*&v22[8] > v13)
            {
              memcpy(v14, *&v22[16], v13);
              *processed += v13;
              *(context + 18) = *&v22[8];
              *(context + 38) = v13;
              goto LABEL_33;
            }

            memcpy(v14, *&v22[16], *&v22[8]);
            *processed += v20;
          }

          v23 = *v22;
          v24 = *&v22[16];
          result = (*(*(context + 5) + 56))(*(context + 6), &v23);
          if (!result)
          {
            goto LABEL_33;
          }
        }
      }

LABEL_29:
      v19 = (result + 9851);
      if (v19 <= 0x30)
      {
        if (v19 == 2)
        {
          continue;
        }

        if (((1 << (result + 123)) & 0x1400800000601) != 0)
        {
          return result;
        }
      }

      break;
    }

    if (result)
    {
      *(context + 20) = 4;
      return result;
    }

LABEL_33:
    result = 0;
    if (dataLength && !*processed)
    {
      continue;
    }

    return result;
  }
}

OSStatus SSLWrite(SSLContextRef context, const void *data, size_t dataLength, size_t *processed)
{
  result = -50;
  if (context && processed)
  {
    *processed = 0;
    v9 = *(context + 20);
    if (v9 > 3)
    {
      if (v9 == 4 || v9 == 6)
      {
        return -9806;
      }

      else
      {
LABEL_14:
        while (!*(context + 19))
        {
          result = SSLHandshakeProceed(context);
          if (result)
          {
            goto LABEL_24;
          }
        }

        result = (*(*(context + 5) + 64))(*(context + 6));
        if ((result + 10009) <= 9)
        {
          result = dword_188960578[result + 10009];
        }

        if (!result)
        {
          if (!dataLength)
          {
            goto LABEL_22;
          }

          memset(&v13[1], 170, 7);
          v11 = *(context + 6);
          v12 = *(*(context + 5) + 8);
          v13[0] = 23;
          v14 = dataLength;
          v15 = data;
          result = v12(v11, v13);
          if ((result + 10009) <= 9)
          {
            result = dword_188960578[result + 10009];
          }

          if (!result)
          {
LABEL_22:
            *processed = dataLength;
            result = (*(*(context + 5) + 64))(*(context + 6));
            if ((result + 10009) <= 9)
            {
              result = dword_188960578[result + 10009];
            }
          }

LABEL_24:
          if ((result + 9851) > 0x30 || ((1 << (result + 123)) & 0x1400000000605) == 0)
          {
            if (result)
            {
              *(context + 20) = 4;
            }
          }
        }
      }
    }

    else if (v9)
    {
      if (v9 != 3)
      {
        goto LABEL_14;
      }

      return -9805;
    }

    else
    {
      return -909;
    }
  }

  return result;
}

OSStatus SSLClose(SSLContextRef context)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 7);
  result = tls_handshake_close();
  if (!result)
  {
    result = (*(*(context + 5) + 64))(*(context + 6));
    if ((result + 10009) <= 9)
    {
      result = dword_188960578[result + 10009];
    }
  }

  *(context + 20) = 3;
  if (result == -36)
  {
    return 0;
  }

  return result;
}

uint64_t _SSLDisposeContext(const void *a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  CFRelease(a1);
  return 0;
}

void SSLContextDestroy(uint64_t a1)
{
  v2 = *(a1 + 56);
  tls_handshake_destroy();
  if (*(a1 + 40) == SSLRecordLayerInternal)
  {
    v3 = *(a1 + 48);
    v4 = v3[3];
    if (v4)
    {
      free(v4);
    }

    v3[2] = 0;
    v3[3] = 0;
    v5 = v3[5];
    if (v5)
    {
      do
      {
        v6 = *v5;
        free(v5);
        v5 = v6;
      }

      while (v6);
    }

    if (*v3)
    {
      tls_record_destroy();
    }

    free(v3);
  }

  v7 = *(a1 + 328);
  if (v7)
  {
    free(v7);
  }

  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  v8 = *(a1 + 200);
  if (v8)
  {
    free(v8);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  v9 = *(a1 + 216);
  if (v9)
  {
    free(v9);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  v10 = *(a1 + 232);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v11 = *(a1 + 296);
  if (v11)
  {
    free(v11);
  }

  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v12 = *(a1 + 376);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v13 = *(a1 + 272);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 152);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 160);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 176);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    CFRelease(v17);
  }

  sslFreeDnList(a1);
  v18 = *(a1 + 456);
  if (v18)
  {
    free(v18);
  }

  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  v19 = *(a1 + 472);
  if (v19)
  {
    free(v19);
  }

  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  v20 = *(a1 + 504);
  if (v20)
  {
    free(v20);
  }

  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  v21 = *(a1 + 488);
  if (v21)
  {
    free(v21);
  }

  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v22 = *(a1 + 144);
  if (v22)
  {
    free(v22);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (*(a1 + 64))
  {
    tls_cache_cleanup();
  }

  bzero((a1 + 16), 0x220uLL);
}

void SecIdentityDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 24) = 0;

    CFRelease(v3);
  }
}

void sslFreeDnList(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    do
    {
      v3 = v2[2];
      if (v3)
      {
        free(v3);
      }

      v4 = *v2;
      free(v2);
      v2 = v4;
    }

    while (v4);
  }

  *(a1 + 264) = 0;
}

CFArrayRef SecTrustCopyCertificateChain(SecTrustRef trust)
{
  v1 = trust;
  if (trust)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 0;
    SecTrustEvaluateIfNecessary(trust);
    v2 = *(v1 + 17);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __SecTrustCopyCertificateChain_block_invoke;
    v4[3] = &unk_1E70E2FA0;
    v4[4] = &v5;
    v4[5] = v1;
    dispatch_sync(v2, v4);
    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

uint64_t _SSLCopyPeerCertificates(uint64_t a1, CFArrayRef *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 168);
  if (!v3)
  {
    v5 = 0;
    result = 4294966387;
    goto LABEL_7;
  }

  v4 = SecTrustCopyCertificateChain(v3);
  if (v4)
  {
    v5 = v4;
    result = 0;
LABEL_7:
    *a2 = v5;
    return result;
  }

  return 4294967188;
}

uint64_t SSLRecordServiceWriteQueueInternal(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      break;
    }

    v3 = v2[1];
    v4 = *(a1 + 8);
    v10 = v2[2] - v3;
    v5 = (*(v4 + 24))(*(v4 + 32), v2 + v3 + 24, &v10);
    if (v5 == -9803)
    {
      v6 = 4294957295;
    }

    else
    {
      v6 = v5;
    }

    v7 = v2[2];
    v8 = v2[1] + v10;
    v2[1] = v8;
    if (v8 >= v7)
    {
      *(a1 + 40) = *v2;
      free(v2);
    }

    if (v6)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t SSLRecordReadInternal(uint64_t *a1, uint64_t a2)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a1;
  header_size = tls_record_get_header_size();
  v6 = a1[4];
  if (header_size > v6)
  {
    v7 = a1[3];
    v8 = a1[1];
    v27 = header_size - v6;
    v9 = (*(v8 + 16))(*(v8 + 32), v7 + v6, &v27);
    if (v9 == -9803)
    {
      v10 = -10001;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 != -10001)
      {
        return 4294957292;
      }

LABEL_18:
      a1[4] += v27;
      return 4294957295;
    }

    a1[4] += v27;
  }

  v12 = a1[3];
  v13 = *a1;
  tls_record_parse_header();
  v18 = *a1;
  if (tls_record_parse_ssl2_header())
  {
    return 4294957287;
  }

  if (a1[2] < 0xAAAAAAAAAAAAAAACLL)
  {
    return 4294957288;
  }

  v14 = a1[4];
  if (v14 < 0xAAAAAAAAAAAAAAACLL)
  {
    v15 = a1[3];
    v16 = a1[1];
    v27 = 0xAAAAAAAAAAAAAAACLL - v14;
    result = (*(v16 + 16))(*(v16 + 32), v15 + v14, &v27);
    if (result == -9803)
    {
      v17 = -10001;
    }

    else
    {
      v17 = result;
    }

    if (v17)
    {
      if (v17 != -10001)
      {
        return result;
      }

      goto LABEL_18;
    }

    v19 = a1[4] + v27;
  }

  v20 = a1[3];
  *a2 = -86;
  a1[4] = 0;
  v21 = *a1;
  v22 = tls_record_decrypted_size();
  if (v22)
  {
    v23 = v22;
    v24 = malloc_type_malloc(v22, 0x7BE92BBDuLL);
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    *(a2 + 8) = v25;
    *(a2 + 16) = v24;
    if (v24)
    {
      v26 = *a1;
      return tls_record_decrypt();
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (*(a1[1] + 104))
  {
    return 4294957287;
  }

  else
  {
    return 4294957292;
  }
}

uint64_t tls_handshake_write_callback(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(v5 + 8);
  v8[0] = a4;
  memset(&v8[1], 170, 7);
  v9 = a2;
  v10 = a3;
  return v6(v4, v8);
}

uint64_t SSLRecordWriteInternal(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = tls_record_encrypted_size();
  v8 = malloc_type_malloc(v7 + 24, 0x7BE92BBDuLL);
  if (!v8)
  {
    return 4294957296;
  }

  v9 = v8;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = v7;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a1;
  v13 = *a2;
  v14 = tls_record_encrypt();
  if (v14)
  {
    v17 = v14;
    free(v9);
  }

  else
  {
    v9[2] = v7;
    v15 = a1[5];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
      v17 = 0;
      *v16 = v9;
    }

    else
    {
      v17 = 0;
      a1[5] = v9;
    }
  }

  return v17;
}

uint64_t SSLRecordFreeInternal(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    free(v3);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return 0;
}

uint64_t __SecTrustCopyCertificateChain_block_invoke(uint64_t a1)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      result = CFArrayCreateCopy(0, *(*(a1 + 40) + 72));
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

__CFDictionary *SecPolicyCreateLockdownPairing()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(result, @"CriticalExtensions", *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(v1, @"UnparseableExtension", v2);
    CFDictionaryAddValue(v1, @"DuplicateExtension", v2);
    CFDictionaryAddValue(v1, @"IdLinkage", v2);
    CFDictionaryAddValue(v1, @"BasicConstraints", v2);
    CFDictionaryAddValue(v1, @"WeakKeySize", v2);
    CFDictionaryAddValue(v1, @"RevocationDbIgnored", v2);
    v3 = SecPolicyCreate(@"1.2.840.113635.100.1.57", @"LockdownPairing", v1);
    CFRelease(v1);
    return v3;
  }

  return result;
}

OSStatus SecTrustSetAnchorCertificates(SecTrustRef trust, CFArrayRef anchorCertificates)
{
  if (trust)
  {
    v4 = *(trust + 17);
    block = MEMORY[0x1E69E9820];
    p_block = 0x40000000;
    v21 = __SecTrustSetNeedsEvaluation_block_invoke;
    v22 = &__block_descriptor_tmp_80_14598;
    v23 = trust;
    dispatch_sync(v4, &block);
    block = 0;
    p_block = &block;
    v21 = 0x2000000000;
    v22 = 0;
    if (!anchorCertificates)
    {
      goto LABEL_15;
    }

    v5 = CFGetTypeID(anchorCertificates);
    if (v5 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(anchorCertificates);
      Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
      *(p_block + 24) = Mutable;
      if (!Mutable)
      {
        v14 = -108;
        goto LABEL_21;
      }

      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(anchorCertificates, i);
          if (ValueAtIndex && (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 == SecCertificateGetTypeID()))
          {
            CFArrayAppendValue(*(p_block + 24), v10);
          }

          else
          {
            v12 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: anchorCertificates array contains non-certificate value", buf, 2u);
            }
          }
        }

        Mutable = *(p_block + 24);
      }

      if (Count == CFArrayGetCount(Mutable))
      {
LABEL_15:
        v13 = *(trust + 17);
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 0x40000000;
        v17[2] = __SecTrustSetAnchorCertificates_block_invoke;
        v17[3] = &unk_1E70E2650;
        v17[4] = &block;
        v17[5] = trust;
        v17[6] = anchorCertificates;
        dispatch_sync(v13, v17);
        v14 = 0;
LABEL_21:
        _Block_object_dispose(&block, 8);
        return v14;
      }

      v15 = *(p_block + 24);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    v14 = -50;
    goto LABEL_21;
  }

  return -50;
}

void __SecTrustSetAnchorCertificates_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 24);
  if (v3)
  {
    CFRelease(v3);
    v2 = a1[5];
  }

  *(v2 + 24) = *(*(a1[4] + 8) + 24);
  *(a1[5] + 116) = a1[6] != 0;
}

_DWORD *tls_handshake_ready_callback(_DWORD *result, int a2, int a3)
{
  if (a2)
  {
    result[19] = a3;
  }

  else
  {
    result[18] = a3;
    if (a3)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    result[20] = v3;
  }

  return result;
}

uint64_t tls_handshake_advance_write_callback(uint64_t a1)
{
  if (*(a1 + 315))
  {
    v2 = *(a1 + 88) < 0x302u;
  }

  else
  {
    v2 = 0;
  }

  (*(*(a1 + 40) + 72))(*(a1 + 48), 0, v2);
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 40) + 24);

  return v4(v3);
}

uint64_t SSLRecordSetOption(void *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return MEMORY[0x1EEE64B08](*a1, a3);
  }
}

uint64_t SecGetDebugDescriptionFormatOptions()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecGetDebugDescriptionFormatOptions_block_invoke;
  block[3] = &__block_descriptor_tmp_16163;
  block[4] = &SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsSingleton;
  if (SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsOnce != -1)
  {
    dispatch_once(&SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsOnce, block);
  }

  return SecGetDebugDescriptionFormatOptions_sSecGetDebugDescriptionFormatOptionsSingleton;
}

id SecAccessControlCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecAccessControlCopyFormatDescription(a1);
}

CFDictionaryRef __SecGetDebugDescriptionFormatOptions_block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  values = *MEMORY[0x1E695E4D0];
  keys[0] = @"debug";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  **(a1 + 32) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

id SecAccessControlCopyFormatDescription(uint64_t a1)
{
  v1 = MEMORY[0x1E696AD60];
  v2 = *(a1 + 16);
  v3 = [v1 string];
  v4 = [v2 objectForKeyedSubscript:@"prot"];
  dumpValue(v4, v3, &stru_1EFA8C6C8);

  v5 = [v2 objectForKeyedSubscript:@"acl"];

  dumpValue(v5, v3, @";");
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecAccessControlRef: %@>", v3];

  return v6;
}

void dumpValue(void *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = CFGetTypeID(v5);
    if (v8 == CFBooleanGetTypeID())
    {
      if ([(__CFString *)v5 BOOLValue])
      {
        v9 = @"true";
      }

      else
      {
        v9 = @"false";
      }

LABEL_6:
      v10 = v6;
LABEL_7:
      [v10 appendString:v9];
      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(__CFString *)v5 stringValue];
      [v6 appendString:v11];
LABEL_10:

      goto LABEL_11;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      v9 = v5;
      goto LABEL_7;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __dumpValue_block_invoke;
        v27[3] = &unk_1E70DDD08;
        v28 = v6;
        v29 = v7;
        [(__CFString *)v5 enumerateKeysAndObjectsUsingBlock:v27];

        goto LABEL_11;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      [v6 appendString:@"["];
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v16 = v5;
      v17 = [(__CFString *)v16 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v24;
        v20 = &stru_1EFA8C6C8;
        do
        {
          v21 = 0;
          do
          {
            if (*v24 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v22 = *(*(&v23 + 1) + 8 * v21);
            [v6 appendString:v20];
            dumpValue(v22, v6, v7);
            ++v21;
            v20 = @",";
          }

          while (v18 != v21);
          v18 = [(__CFString *)v16 countByEnumeratingWithState:&v23 objects:v30 count:16];
          v20 = @",";
        }

        while (v18);
      }

      v9 = @"]";
      goto LABEL_6;
    }

    v11 = v5;
    v13 = [(__CFString *)v11 bytes];
    if ([(__CFString *)v11 length]<= 0x40)
    {
      v14 = [(__CFString *)v11 length];
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v14 = 64;
    }

    v15 = 0;
    do
    {
      [v6 appendFormat:@"%02X", *(v13 + v15++)];
    }

    while (v14 != v15);
LABEL_22:
    if (v14 < [(__CFString *)v11 length])
    {
      [v6 appendFormat:@"...(%db)", -[__CFString length](v11, "length")];
    }

    goto LABEL_10;
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

const __CFDictionary *SecTokenItemValueCopy(const void *a1, CFTypeRef *a2)
{
  theDict = 0;
  if (!a1)
  {
    goto LABEL_13;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFDataGetTypeID())
  {
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v7 = &BytePtr[Length];
  v11 = der_decode_plist(0, &theDict, a2, BytePtr, &BytePtr[Length], v8, v9, v10);
  if (!v11)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (v11 != v7)
  {
    SecError(-26275, a2, @"trailing garbage at end of token data field");
    goto LABEL_14;
  }

  v12 = theDict;
  Value = CFDictionaryGetValue(theDict, @"oid");
  if (!Value || (v14 = CFGetTypeID(Value), v14 != CFDataGetTypeID()))
  {
    SecError(-26276, a2, @"token based item data does not have OID");
    goto LABEL_14;
  }

  if ((v15 = CFDictionaryGetValue(v12, @"ac")) != 0 && (v16 = CFGetTypeID(v15), v16 != CFDataGetTypeID()) || (v17 = CFDictionaryGetValue(v12, @"data")) != 0 && (v18 = CFGetTypeID(v17), v18 != CFDataGetTypeID()))
  {
LABEL_13:
    SecError(-50, a2, @"Unexpected type");
    goto LABEL_14;
  }

  if (!v12)
  {
    return v12;
  }

  CFRetain(v12);
LABEL_15:
  if (theDict)
  {
    CFRelease(theDict);
  }

  return v12;
}

id SecTokenSessionCreate(const __CFString *a1, CFDictionaryRef *a2, __CFString **a3)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v6 = CFDictionaryGetValue(*a2, @"u_CredRef") != 0;
    if (*a2 && CFDictionaryGetValue(*a2, @"u_CredRef"))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!CFStringHasPrefix(a1, @"com.apple.setoken"))
  {
    if (SecTokenSessionCreate_onceToken != -1)
    {
      dispatch_once(&SecTokenSessionCreate_onceToken, &__block_literal_global_171);
    }

    os_unfair_lock_lock(&SecTokenSessionCreate_lock);
    Value = CFDictionaryGetValue(SecTokenSessionCreate_sharedLAContexts, a1);
    if (Value)
    {
      goto LABEL_10;
    }

    if (!LocalAuthenticationLibraryCore())
    {
      SecError(-26276, a3, @"LocalAuthentication is not available");
      goto LABEL_41;
    }

    v25 = objc_alloc_init(getLAContextClass());
    if (!v25)
    {
      os_unfair_lock_unlock(&SecTokenSessionCreate_lock);
      SecError(-26276, a3, @"Failed to create authentication context");
      goto LABEL_41;
    }

    v26 = v25;
    CFDictionarySetValue(SecTokenSessionCreate_sharedLAContexts, a1, v25);
    CFRelease(v26);
    Value = CFDictionaryGetValue(SecTokenSessionCreate_sharedLAContexts, a1);
    if (Value)
    {
LABEL_10:
      v8 = Value;
      v9 = [Value externalizedContext];
      if (v9)
      {
        v10 = SecCFDictionaryCOWGetMutable(a2);
        CFDictionarySetValue(v10, @"u_AuthCtx", v8);
        v11 = SecCFDictionaryCOWGetMutable(a2);
        CFDictionarySetValue(v11, @"u_CredRef", v9);
        CFRelease(v9);
      }
    }

    os_unfair_lock_unlock(&SecTokenSessionCreate_lock);
  }

LABEL_13:
  v12 = [(__CFDictionary *)*a2 objectForKey:@"u_AuthCtx"];
  if (!v12)
  {
    v13 = [(__CFDictionary *)*a2 objectForKey:@"u_CredRef"];
    if (!v13)
    {
      v12 = 0;
      goto LABEL_18;
    }

    if (LocalAuthenticationLibraryCore())
    {
      v12 = [objc_alloc(getLAContextClass()) initWithExternalizedContext:v13];
LABEL_18:

      goto LABEL_19;
    }

    SecError(-26276, a3, @"LocalAuthentication is not available");

LABEL_41:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_19:
  if (CryptoTokenKitLibraryCore())
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    if (SecCTKIsQueryForSystemKeychain(*a2))
    {
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v15 = getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr_10460;
      v34 = getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr_10460;
      if (!getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr_10460)
      {
        v29[1] = MEMORY[0x1E69E9820];
        v29[2] = 3221225472;
        v29[3] = __getTKClientTokenParameterForceSystemSessionSymbolLoc_block_invoke_10461;
        v29[4] = &unk_1E70E1270;
        v30 = &v31;
        v16 = CryptoTokenKitLibrary();
        v32[3] = dlsym(v16, "TKClientTokenParameterForceSystemSession");
        getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr_10460 = *(v30[1] + 24);
        v15 = v32[3];
      }

      _Block_object_dispose(&v31, 8);
      if (!v15)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getTKClientTokenParameterForceSystemSession(void)"];
        [v27 handleFailureInFunction:v28 file:@"SecSoftLink.h" lineNumber:41 description:{@"%s", dlerror()}];

        __break(1u);
      }

      [v14 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*v15];
    }

    v17 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [v14 setObject:v17 forKeyedSubscript:@"authenticationContextProvidedBySecCaller"];

    v18 = [v14 copy];
    v19 = [objc_alloc(getTKClientTokenClass()) initWithTokenID:a1];
    v29[0] = 0;
    v20 = [objc_alloc(getTKClientTokenSessionClass()) initWithToken:v19 LAContext:v12 parameters:v18 error:v29];
    v21 = v29[0];
  }

  else
  {
    v22 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A278];
    v36[0] = @"CryptoTokenKit is not available";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v21 = [v22 errorWithDomain:*MEMORY[0x1E696A768] code:-4 userInfo:v14];
    v20 = 0;
  }

  if (a3 && !v20)
  {
    *a3 = v21;
  }

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];

  return v20;
}

void sub_188805EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CryptoTokenKitLibraryCore()
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = CryptoTokenKitLibraryCore_frameworkLibrary;
  v6 = CryptoTokenKitLibraryCore_frameworkLibrary;
  if (!CryptoTokenKitLibraryCore_frameworkLibrary)
  {
    v7 = "/System/Library/Frameworks/CryptoTokenKit.framework/CryptoTokenKit";
    v8 = "/System/Library/PrivateFrameworks/CryptoTokenKit.framework/CryptoTokenKit";
    v9 = "/AppleInternal/Library/Frameworks/CryptoTokenKit.framework/CryptoTokenKit";
    v10 = "/System/AppleInternal/Library/Frameworks/CryptoTokenKit.framework/CryptoTokenKit";
    v11 = 0;
    v4[3] = _sl_dlopen();
    CryptoTokenKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_188806044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SecCTKIsQueryForSystemKeychain(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [a1 objectForKey:@"u_SystemKeychain"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v1 BOOLValue])
  {
    if (SecIsEduMode_once != -1)
    {
      dispatch_once(&SecIsEduMode_once, &__block_literal_global_16871);
    }

    v2 = SecIsEduMode_result;
    v3 = _SECKEY_LOG();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    if (v2 == 1)
    {
      if (v4)
      {
        v8 = 138543618;
        v9 = @"u_SystemKeychain";
        v10 = 2114;
        v11 = v1;
        v5 = "Forcing CTK systemKey due to %{public}@=%{public}@ on shared iPad";
LABEL_13:
        _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, v5, &v8, 0x16u);
      }
    }

    else if (v4)
    {
      v8 = 138543618;
      v9 = @"u_SystemKeychain";
      v10 = 2114;
      v11 = v1;
      v5 = "%{public}@=%{public}@ detected, but not on shared iPad, ignoring this flag";
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v2 = 0;
LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

id getTKClientTokenClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTKClientTokenClass_softClass;
  v7 = getTKClientTokenClass_softClass;
  if (!getTKClientTokenClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTKClientTokenClass_block_invoke;
    v3[3] = &unk_1E70E1270;
    v3[4] = &v4;
    __getTKClientTokenClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188806298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getTKClientTokenSessionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getTKClientTokenSessionClass_softClass;
  v7 = getTKClientTokenSessionClass_softClass;
  if (!getTKClientTokenSessionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getTKClientTokenSessionClass_block_invoke;
    v3[3] = &unk_1E70E1270;
    v3[4] = &v4;
    __getTKClientTokenSessionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_188806378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *SecKeyCreateCTKKey(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = SecKeyCreate(a1, &kSecCTKKeyDescriptor, 0, 0, 0);
  v10 = 0;
  v6 = [[SecCTKKey alloc] initWithAttributes:a2 error:&v10];
  v7 = v10;
  v8 = v7;
  if (v6)
  {
    v5[3] = v6;
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v7;
    }
  }

  return v5;
}

CFDataRef SecCertificateCopyData(CFDataRef certificate)
{
  if (certificate)
  {
    v1 = certificate;
    v2 = CFGetAllocator(certificate);
    v3 = *(v1 + 2);
    v4 = *(v1 + 3);

    return CFDataCreate(v2, v3, v4);
  }

  return certificate;
}

uint64_t SecCTKKeyCopyAttributeDictionary(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (SecCTKKeyCopyAttributeDictionary_onceToken != -1)
  {
    dispatch_once(&SecCTKKeyCopyAttributeDictionary_onceToken, &__block_literal_global_108);
  }

  v2 = [SecCTKKey fromKeyRef:a1];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = SecCTKKeyCopyAttributeDictionary_exportableAttributes;
  v5 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v2 keychainAttributes];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          [v3 setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  v12 = [v2 tokenObject];

  if (v12)
  {
    v13 = [v2 tokenObject];
    v14 = [v13 publicKey];

    v15 = SecSHA1DigestCreate(*MEMORY[0x1E695E480], [v14 bytes], objc_msgSend(v14, "length"));
  }

  else
  {
    v14 = [v2 keychainAttributes];
    v15 = [v14 objectForKeyedSubscript:@"klbl"];
  }

  v16 = v15;
  [v3 setObject:v15 forKeyedSubscript:{@"klbl", v30}];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"perm"];
  v17 = [v2 tokenObject];

  if (v17)
  {
    v18 = [v2 tokenObject];
    v19 = [v18 session];
    v20 = [v19 token];
    v21 = [v20 tokenID];
    [v3 setObject:v21 forKeyedSubscript:@"tkid"];

    v22 = [v2 tokenObject];
    v23 = [v22 objectID];
    v24 = @"toid";
    v25 = v3;
    v26 = v23;
  }

  else
  {
    v22 = [v2 keychainAttributes];
    v23 = [v22 objectForKeyedSubscript:@"tkid"];
    v25 = v3;
    v26 = v23;
    v24 = @"tkid";
  }

  [v25 setObject:v26 forKeyedSubscript:v24];

  v27 = [v3 copy];
  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

CFDataRef SecCertificateCopyExtensionValue(uint64_t a1, const __CFString *cf, _BYTE *a3)
{
  v3 = 0;
  if (a1)
  {
    OidDataFromString = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDataGetTypeID())
      {
        CFRetain(OidDataFromString);
      }

      else
      {
        v8 = CFGetTypeID(OidDataFromString);
        if (v8 != CFStringGetTypeID())
        {
          return 0;
        }

        OidDataFromString = SecCertificateCreateOidDataFromString(0, OidDataFromString);
        if (!OidDataFromString)
        {
          return 0;
        }
      }

      BytePtr = CFDataGetBytePtr(OidDataFromString);
      Length = CFDataGetLength(OidDataFromString);
      if (Length < 0)
      {
        goto LABEL_13;
      }

      v11 = *(a1 + 504);
      if (v11 < 1)
      {
        goto LABEL_13;
      }

      v12 = Length;
      v13 = *(a1 + 512);
      while (*(v13 + 8) != v12 || memcmp(*v13, BytePtr, v12))
      {
        v13 += 40;
        if (!--v11)
        {
          goto LABEL_13;
        }
      }

      if (a3)
      {
        *a3 = *(v13 + 16);
      }

      v15 = *(v13 + 32);
      if (v15 < 0)
      {
LABEL_13:
        v3 = 0;
      }

      else
      {
        v3 = CFDataCreate(0, *(v13 + 24), v15);
      }

      CFRelease(OidDataFromString);
    }
  }

  return v3;
}

SecKeyRef SecKeyCopyPublicKey(SecKeyRef key)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1887D2000, "SecKeyCopyPublicKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &state);
  _SecKeyCheck(key, "SecKeyCopyPublicKey");
  v4 = *(key + 2);
  if (*v4 < 4u || (v5 = *(v4 + 144)) == 0 || (v6 = v5(key)) == 0)
  {
    cf = 0;
    v7 = SecKeyCopyPublicBytes(key, &cf);
    v6 = 0;
    v8 = cf;
    if (!v7 && cf)
    {
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v9 = SecCFAllocatorZeroize_sAllocator;
      AlgorithmId = SecKeyGetAlgorithmId(key);
      v6 = SecKeyCreateFromPublicData(v9, AlgorithmId, cf);
      v8 = cf;
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t SecCTKKeyCopyPublicOctets(uint64_t a1, void *a2)
{
  v3 = [SecCTKKey fromKeyRef:a1];
  v4 = [v3 tokenObject];
  if (v4)
  {

LABEL_6:
    v8 = [v3 tokenObject];
    if (v8)
    {
      v9 = [v3 tokenObject];
      [v9 publicKey];
    }

    else
    {
      v9 = [v3 keychainAttributes];
      [v9 objectForKeyedSubscript:@"klbl"];
    }
    v10 = ;
    *a2 = v10;

    v7 = 0;
    goto LABEL_10;
  }

  if (![v3 isRegisteredSmartcard])
  {
    goto LABEL_6;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecCTKKeyCopyPublicOctets_block_invoke;
  v13[3] = &unk_1E70DDE08;
  v14 = v3;
  v12 = 0;
  v5 = [v14 ensureTokenObjectForBlock:v13 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = 0;
    *a2 = v5;
  }

  else
  {
    v7 = 4294941996;
  }

LABEL_10:
  return v7;
}

uint64_t SecCTKGetAlgorithmID(uint64_t a1)
{
  v1 = [SecCTKKey fromKeyRef:a1];
  v2 = [v1 algorithmID];

  return v2;
}

void *SecKeyCreateFromPublicData(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return SecKeyCreateFromPublicBytes(a1, a2, BytePtr, Length);
}

void *SecKeyCreateFromPublicBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 5)
  {
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v4 = &kSecEd25519PublicKeyDescriptor;
      }

      else
      {
        v4 = &kSecX25519PublicKeyDescriptor;
      }
    }

    else if (a2 == 1)
    {
      v4 = &kSecRSAPublicKeyDescriptor;
    }

    else
    {
      if (a2 != 3)
      {
        return 0;
      }

      v4 = &kSecECPublicKeyDescriptor;
    }

LABEL_19:
    v5 = 7;
    return SecKeyCreate(a1, v4, a3, a4, v5);
  }

  if (a2 <= 7)
  {
    if (a2 == 6)
    {
      v4 = &kSecEd448PublicKeyDescriptor;
    }

    else
    {
      v4 = &kSecX448PublicKeyDescriptor;
    }

    goto LABEL_19;
  }

  switch(a2)
  {
    case 8:
      v4 = &kSecKyberPublicKeyDescriptor;
      goto LABEL_22;
    case 9:
      v4 = &kSecMLKEMPublicKeyDescriptor;
      goto LABEL_22;
    case 10:
      v4 = &kSecMLDSAPublicKeyDescriptor;
LABEL_22:
      v5 = 0;
      return SecKeyCreate(a1, v4, a3, a4, v5);
  }

  return 0;
}

uint64_t getCPForPublicSize()
{
  ccec_x963_import_pub_size();
  if (!ccec_keysize_is_supported())
  {
    return 0;
  }

  return ccec_get_cp();
}

CFDataRef SecKeyCopyExternalRepresentation(SecKeyRef key, CFErrorRef *error)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = _os_activity_create(&dword_1887D2000, "SecKeyCopyExternalRepresentation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  _SecKeyCheck(key, "SecKeyCopyExternalRepresentation");
  v6 = *(*(key + 2) + 136);
  if (v6)
  {
    *buf = 0;
    v7 = v6(key, buf);
    _SecKeyErrorPropagate(v7 != 0, "SecKeyCopyExternalRepresentation", *buf, error);
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    SecError(-4, error, @"export not implemented for key %@", key);
    v8 = _SECKEY_LOG_11460();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      *&buf[4] = "SecKeyCopyExternalRepresentation";
      v13 = 2114;
      v14 = key;
      _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%{public}s failed, export not implemented for key %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

CFStringRef SecCertificateCopyDescription(__SecCertificate *a1)
{
  v2 = SecCertificateCopySubjectSummary(a1);
  v3 = SecCertificateCopyIssuerSummary(a1);
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<cert(%p) s: %@ i: %@>", a1, v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

CFStringRef SecCertificateCopySubjectSummary(CFStringRef certificate)
{
  if (certificate)
  {
    v1 = certificate;
    v9 = 0;
    cf = 0;
    v11 = 0;
    v2 = parseX501NameContent(&certificate[5].length, &v9, obtainSummaryFromX501Name, 1);
    certificate = 0;
    if (!v2)
    {
      v3 = v11;
      if (v11)
      {
        if (v9 == 4)
        {
          v4 = SecFrameworkCopyLocalizedString(@"%@ (%@)", @"Certificate");
          v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v4, cf, v11);
          CFRelease(v4);
          CFRelease(cf);
          cf = v5;
          v3 = v11;
        }

        CFRelease(v3);
      }

      if (v9 != 4)
      {
        v6 = SecCertificateCopyRFC822Names(v1);
        if (v6 || (v6 = SecCertificateCopyDNSNames(v1)) != 0)
        {
          v7 = v6;
          v8 = cf;
          if (cf)
          {
            cf = 0;
            CFRelease(v8);
          }

          cf = CFArrayGetValueAtIndex(v7, 0);
          CFRetain(cf);
          CFRelease(v7);
        }
      }

      return cf;
    }
  }

  return certificate;
}

uint64_t obtainSummaryFromX501Name(unsigned int *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  if (DEROidCompare(a2, &oidCommonName))
  {
    v9 = 0;
    v10 = 4;
    goto LABEL_18;
  }

  if (DEROidCompare(a2, &oidOrganizationalUnitName))
  {
    v9 = 0;
    v10 = 3;
    goto LABEL_18;
  }

  if (DEROidCompare(a2, &oidOrganizationName))
  {
    v9 = 0;
    v10 = 2;
    goto LABEL_18;
  }

  if (DEROidCompare(a2, &oidDescription))
  {
    v11 = *MEMORY[0x1E695E480];
    v12 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    v9 = v12;
    if (!v12)
    {
      v10 = 0;
      goto LABEL_18;
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      if (a5)
      {
        v14 = SecFrameworkCopyLocalizedString(@"%@, %@", @"Certificate");
        v15 = CFStringCreateWithFormat(v11, 0, v14, v9, *(a1 + 2));
      }

      else
      {
        v14 = @"%@, %@";
        v15 = CFStringCreateWithFormat(v11, 0, @"%@, %@", v12, v13);
      }

      v16 = v15;
      CFRelease(v14);
      CFRelease(*(a1 + 2));
      *(a1 + 2) = v16;
    }

    else
    {
      *(a1 + 2) = v12;
      CFRetain(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 1;
LABEL_18:
  v17 = *a1;
  if (*a1 <= v10)
  {
    if (!v9)
    {
      v18 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
      if (!v18)
      {
        return 0;
      }

      v9 = v18;
      v17 = *a1;
    }

    if (v17 == v10)
    {
      if (a5)
      {
        v19 = SecFrameworkCopyLocalizedString(@"%@, %@", @"Certificate");
        v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v19, v9, *(a1 + 1));
      }

      else
      {
        v19 = @"%@, %@";
        v20 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@, %@", v9, *(a1 + 1));
      }

      v21 = v20;
      CFRelease(v19);
      CFRelease(v9);
      v9 = v21;
    }

    else
    {
      *a1 = v10;
    }

    v22 = *(a1 + 1);
    if (v22)
    {
      CFRelease(v22);
    }

    *(a1 + 1) = v9;
  }

  else if (v9)
  {
    CFRelease(v9);
  }

  return 0;
}

CFTypeRef SecCertificateCopyIssuerSummary(uint64_t a1)
{
  v6 = 0;
  cf = 0;
  v8 = 0;
  v1 = parseX501NameContent((a1 + 152), &v6, obtainSummaryFromX501Name, 1);
  result = 0;
  if (!v1)
  {
    v3 = v8;
    if (v8)
    {
      if (v6 == 4)
      {
        v4 = SecFrameworkCopyLocalizedString(@"%@ (%@)", @"Certificate");
        v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, v4, cf, v8);
        CFRelease(v4);
        CFRelease(cf);
        cf = v5;
        v3 = v8;
      }

      CFRelease(v3);
    }

    return cf;
  }

  return result;
}

uint64_t SecCTKKeyCopyOperationResult(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, __CFString **a8)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a2 < 7 && ((0x59u >> a2) & 1) != 0)
  {
    v12 = qword_188960998[a2];
    v13 = [SecCTKKey fromKeyRef:a1];
    if (v13)
    {
      v21 = a8;
      v14 = MEMORY[0x1E69E9820];
      while (1)
      {
        v23[0] = v14;
        v23[1] = 3221225472;
        v23[2] = __SecCTKKeyCopyOperationResult_block_invoke;
        v23[3] = &unk_1E70DDE30;
        v15 = v13;
        v24 = v15;
        v25 = v12;
        v26 = a6;
        v27 = a4;
        v28 = a7;
        v22 = 0;
        v16 = [v15 ensureTokenObjectForBlock:v23 error:&v22];
        v17 = v22;
        if (v16)
        {

          goto LABEL_16;
        }

        if (![v15 shouldRetryOperationForRegisteredSmartcard:v17])
        {
          break;
        }

        v18 = _SECKEY_LOG();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v17;
          _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "Retrying operation for registered smart card key after error: %@", buf, 0xCu);
        }
      }

      if (v21)
      {
        v17 = v17;
        v16 = 0;
        *v21 = v17;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
      SecError(-50, a8, @"Unable to create CTK key from key reference");
      v17 = 0;
    }

    v16 = 0;
    goto LABEL_16;
  }

  SecError(-50, a8, @"Invalid key operation %d", a2);
  v16 = 0;
LABEL_17:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

id __SecCTKKeyCopyOperationResult_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) tokenObject];
  v5 = [v4 session];
  [v5 setAuthenticateWhenNeeded:1];

  v6 = [*(a1 + 32) tokenOID];

  if (v6)
  {
    v7 = [*(a1 + 32) tokenObject];
    v8 = [v7 session];
    v9 = [v8 token];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) keychainAttributes];
    v12 = [v11 objectForKeyedSubscript:@"tkid"];
    [v9 notifyOperation:v10 forToken:v12 withStatus:0];
  }

  v13 = [*(a1 + 32) tokenObject];
  v14 = [v13 operation:*(a1 + 40) data:*(a1 + 48) algorithms:*(a1 + 56) parameters:*(a1 + 64) error:a2];

  v15 = [*(a1 + 32) tokenOID];

  if (v15)
  {
    v16 = [*(a1 + 32) tokenObject];
    v17 = [v16 session];
    v18 = [v17 token];
    v19 = *(a1 + 40);
    v20 = [*(a1 + 32) keychainAttributes];
    v21 = [v20 objectForKeyedSubscript:@"tkid"];
    [v18 notifyOperation:v19 forToken:v21 withStatus:1];
  }

  return v14;
}

void SecCTKKeyDestroy(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

__CFData *SecCertificateCopyIssuerSHA1Digest(uint64_t a1)
{
  result = SecDERItemCopySequence(a1 + 152);
  if (result)
  {
    v2 = result;
    v3 = *MEMORY[0x1E695E480];
    BytePtr = CFDataGetBytePtr(result);
    Length = CFDataGetLength(v2);
    v6 = SecSHA1DigestCreate(v3, BytePtr, Length);
    CFRelease(v2);
    return v6;
  }

  return result;
}

OSStatus SecTrustSetNetworkFetchAllowed(SecTrustRef trust, Boolean allowFetch)
{
  if (!trust)
  {
    return -50;
  }

  v2 = allowFetch;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v4 = *(trust + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustSetNetworkFetchAllowed_block_invoke;
  block[3] = &unk_1E70E27E0;
  block[5] = &v14;
  block[6] = trust;
  v9 = allowFetch;
  block[4] = &v10;
  dispatch_sync(v4, block);
  if (v2 && (v11[3] & 1) == 0)
  {
    v5 = *(trust + 17);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = __SecTrustSetNeedsEvaluation_block_invoke;
    v18[3] = &__block_descriptor_tmp_80_14598;
    v18[4] = trust;
    dispatch_sync(v5, v18);
  }

  v6 = *(v15 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v6;
}

uint64_t __SecTrustSetNetworkFetchAllowed_block_invoke(uint64_t a1)
{
  v2 = SecTrustCopyOptionsFromPolicies(*(*(a1 + 48) + 32));
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  v4 = *(v3 + 32);
  if (*(a1 + 56))
  {
    result = SecTrustRemoveOptionInPolicies(*(v3 + 32), @"NoNetworkAccess");
  }

  else if (v4 && (v6 = CFGetTypeID(*(v3 + 32)), v6 == CFArrayGetTypeID()))
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      if (CFArrayGetCount(v4) <= v7)
      {
        result = 0;
        goto LABEL_15;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      if (!ValueAtIndex)
      {
        goto LABEL_16;
      }

      v10 = ValueAtIndex;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex[4]);
      if (!MutableCopy)
      {
        break;
      }

      v12 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"NoNetworkAccess", v8);
      v13 = v10[4];
      if (v13)
      {
        v10[4] = 0;
        CFRelease(v13);
      }

      v10[4] = v12;
      ++v7;
    }

    result = 4294967188;
  }

  else
  {
LABEL_16:
    result = 4294941020;
  }

LABEL_15:
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

__CFArray *SecTrustCopyOptionsFromPolicies(const __CFArray *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  for (i = 0; CFArrayGetCount(a1) > i; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
    Value = CFDictionaryGetValue(ValueAtIndex[4], @"NoNetworkAccess");
    if (Value)
    {
      CFArrayAppendValue(Mutable, Value);
    }
  }

  if (!CFArrayGetCount(Mutable) && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

__CFData *SecDistinguishedNameCopyNormalizedSequence(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SecDistinguishedNameCopyNormalizedContent(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = SecCopySequenceFromContent(v1);
  CFRelease(v2);
  return v3;
}

__CFData *SecDistinguishedNameCopyNormalizedContent(const __CFData *a1)
{
  if (CFDataGetLength(a1) < 0)
  {
    return 0;
  }

  v5[0] = CFDataGetBytePtr(a1);
  v5[1] = CFDataGetLength(a1);
  memset(v4, 170, sizeof(v4));
  v2 = DERDecodeItem(v5, v4);
  result = 0;
  if (!v2 && v4[0] == 0x2000000000000010)
  {
    return createNormalizedX501Name(*MEMORY[0x1E695E480], &v4[1]);
  }

  return result;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA384");
  v8 = ccsha384_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA384(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA384_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

id getSigningTime(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69B17C0];
  v2 = *MEMORY[0x1E69B1720];
  v3 = a1;
  v4 = [v1 OIDWithString:v2 error:0];
  v5 = [v3 getAttributesWithType:v4];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_19;
  }

  if ([v5 count] >= 2)
  {
    v6 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v14) = [v5 count];
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "too many signing time attributes (%d), skipping", buf, 8u);
    }

    v7 = 0;
    goto LABEL_18;
  }

  v8 = [v5 objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v6 = 0;
      if (v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_14:
    v9 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "skipping signing time that failed to decode: %@", buf, 0xCu);
    }

    v7 = 0;
    goto LABEL_17;
  }

  v12 = 0;
  v9 = [objc_alloc(MEMORY[0x1E69B17B0]) initWithAttribute:v8 error:&v12];
  v6 = v12;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_12:
  v7 = [v9 signingTime];
LABEL_17:

LABEL_18:
LABEL_19:

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

OSStatus SecTrustSetVerifyDate(SecTrustRef trust, CFDateRef verifyDate)
{
  result = -50;
  if (trust && verifyDate)
  {
    v5 = CFGetTypeID(verifyDate);
    if (v5 == CFDateGetTypeID())
    {
      v6 = *(trust + 17);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
      block[3] = &__block_descriptor_tmp_80_14598;
      block[4] = trust;
      dispatch_sync(v6, block);
      v7 = *(trust + 17);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 0x40000000;
      v8[2] = __SecTrustSetVerifyDate_block_invoke;
      v8[3] = &__block_descriptor_tmp_87_14618;
      v8[4] = trust;
      v8[5] = verifyDate;
      dispatch_sync(v7, v8);
      return 0;
    }

    else
    {
      return -50;
    }
  }

  return result;
}

void __SecTrustSetVerifyDate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 64);
  if (v3 != v1)
  {
    if (!v1 || (CFRetain(v1), (v3 = *(v2 + 64)) != 0))
    {
      CFRelease(v3);
    }

    *(v2 + 64) = v1;
  }
}

uint64_t SecPolicyCheckCertLeafMarkerOidWithoutValueCheck(uint64_t a1, const __CFString *a2)
{
  v4 = CFGetTypeID(a2);
  if (v4 != CFArrayGetTypeID())
  {
    v11 = CFGetTypeID(a2);
    if (v11 == CFDataGetTypeID())
    {
      return SecCertificateGetExtensionValue(a1, a2) != 0;
    }

    v12 = CFGetTypeID(a2);
    if (v12 == CFStringGetTypeID())
    {
      return SecCertificateGetExtensionValue(a1, a2) != 0;
    }

    return 0;
  }

  Count = CFArrayGetCount(a2);
  v6 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
    result = SecPolicyCheckCertLeafMarkerOidWithoutValueCheck(a1, ValueAtIndex);
    if (result)
    {
      break;
    }
  }

  while (v6 != v7++);
  return result;
}

uint64_t SecCertificateGetExtensionValue(uint64_t a1, const __CFString *cf)
{
  if (!a1 || !cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFDataGetTypeID())
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      OidDataFromString = SecCertificateCreateOidDataFromString(0, cf);
      if (OidDataFromString)
      {
        v8 = OidDataFromString;
        v9 = cert_extension_value_for_marker(a1, OidDataFromString);
        CFRelease(v8);
        return v9;
      }
    }

    return 0;
  }

  return cert_extension_value_for_marker(a1, cf);
}

uint64_t cert_extension_value_for_marker(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length < 0)
  {
    return 0;
  }

  v6 = *(a1 + 504);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = Length;
  for (i = *(a1 + 512); *(i + 8) != v7 || memcmp(*i, BytePtr, v7); i += 40)
  {
    if (!--v6)
    {
      return 0;
    }
  }

  return i + 24;
}

uint64_t SecCMSVerifySignedData_internal(const __CFData *a1, const __CFData *a2, void *a3, SecTrustRef *a4, const __CFArray *a5, uint64_t *a6, const void **a7)
{
  v7 = a7;
  v115 = *MEMORY[0x1E69E9840];
  cf2 = 0;
  cf = 0;
  if (a6)
  {
    p_cf = &cf;
  }

  else
  {
    p_cf = 0;
  }

  if (a7)
  {
    p_cf2 = &cf2;
  }

  else
  {
    p_cf2 = 0;
  }

  v107 = 0;
  if (a4)
  {
    v16 = &v107;
  }

  else
  {
    v16 = 0;
  }

  v17 = MS_SecCMSVerifySignedData_internal(a1, a2, a3, v16, a5, p_cf, p_cf2);
  if (isMessageSecurityAllowedForCurrentBundleID_onceToken != -1)
  {
    dispatch_once(&isMessageSecurityAllowedForCurrentBundleID_onceToken, &__block_literal_global_3844);
  }

  if (isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound && v17)
  {
    v104 = a4;
    v106 = 0;
    if (!a1)
    {
      goto LABEL_161;
    }

    v105[0] = CFDataGetLength(a1);
    v105[1] = CFDataGetBytePtr(a1);
    v19 = SecCmsMessageDecode(v105, 0, 0, v18, 0, 0, 0, &v106);
    v20 = v106;
    if (v19)
    {
      v68 = 4294941021;
      goto LABEL_81;
    }

    if (!v106)
    {
LABEL_161:
      v68 = 4294967246;
      goto LABEL_104;
    }

    OID = *(v106 + 32);
    if (OID || (OID = SECOID_FindOID(v106), (*(v20 + 32) = OID) != 0))
    {
      if (*(OID + 16) == 26)
      {
        v22 = *(v20 + 16);
        if (v22)
        {
          if (a2)
          {
            if (*(v22 + 168))
            {
              goto LABEL_102;
            }

            started = SecCmsDigestContextStartMultiple(*(v22 + 136));
            BytePtr = CFDataGetBytePtr(a2);
            Length = CFDataGetLength(a2);
            SecCmsDigestContextUpdate(started, BytePtr, Length);
            SecCmsSignedDataSetDigestContext(v22, started);
            SecCmsDigestContextCancel(started);
          }

          if (!a5 || !SecCmsSignedDataAddCertList(v22, a5))
          {
            if (!a3)
            {
              goto LABEL_33;
            }

            v26 = *(v22 + 160);
            if (v26 && *v26)
            {
              v27 = v26 + 1;
              v28 = -1;
              do
              {
                v29 = *v27++;
                ++v28;
              }

              while (v29);
              if (v28)
              {
                v68 = 4294967246;
                goto LABEL_81;
              }

              if (SecCmsSignedDataVerifySignerInfo_internal(v22, 0, a3, v104))
              {
                v68 = 4294942003;
                goto LABEL_81;
              }

LABEL_33:
              v30 = MEMORY[0x1E695E480];
              if (a6)
              {
                InnerContent = SecCmsContentInfoGetInnerContent(v20);
                if (InnerContent)
                {
                  InnerContent = CFDataCreate(*v30, *(InnerContent + 8), *InnerContent);
                }

                *a6 = InnerContent;
              }

              if (v7)
              {
                v32 = *v30;
                Mutable = CFDictionaryCreateMutable(*v30, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (Mutable)
                {
                  v34 = Mutable;
                  v102 = v7;
                  v103 = v17;
                  v35 = *(**(v22 + 160) + 64);
                  if (v35)
                  {
                    v36 = *v35;
                    if (*v35)
                    {
                      do
                      {
                        v37 = CFDataCreate(v32, *(v36 + 8), *v36);
                        if (v37)
                        {
                          v38 = v37;
                          v39 = *v35;
                          v40 = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0]);
                          v41 = *(v39 + 16);
                          if (v41)
                          {
                            v42 = *v41;
                            if (*v41)
                            {
                              v43 = v41 + 1;
                              do
                              {
                                v44 = CFDataCreate(v32, *(v42 + 8), *v42);
                                if (v44)
                                {
                                  v45 = v44;
                                  CFArrayAppendValue(v40, v44);
                                  CFRelease(v45);
                                }

                                v46 = *v43++;
                                v42 = v46;
                              }

                              while (v46);
                            }
                          }

                          if (v40)
                          {
                            v47 = CFDictionaryGetValue(v34, v38);
                            if (v47)
                            {
                              v48 = v47;
                              Count = CFArrayGetCount(v40);
                              if (Count)
                              {
                                v116.length = Count;
                                v116.location = 0;
                                CFArrayAppendArray(v48, v40, v116);
                              }
                            }

                            else
                            {
                              CFDictionarySetValue(v34, v38, v40);
                            }

                            CFRelease(v40);
                          }

                          CFRelease(v38);
                        }

                        v50 = v35[1];
                        ++v35;
                        v36 = v50;
                      }

                      while (v50);
                    }
                  }

                  v51 = *(v22 + 144);
                  v52 = CFArrayCreateMutable(v32, 0, MEMORY[0x1E695E9C0]);
                  v7 = v102;
                  if (v51)
                  {
                    v53 = *v51;
                    if (*v51)
                    {
                      v54 = v51 + 1;
                      do
                      {
                        v55 = SecCertificateCreateWithBytes(0, *(v53 + 8), *v53);
                        if (v55)
                        {
                          v56 = v55;
                          CFArrayAppendValue(v52, v55);
                          CFRelease(v56);
                        }

                        v57 = *v54++;
                        v53 = v57;
                      }

                      while (v57);
                    }
                  }

                  CFDictionaryAddValue(v34, kSecCMSAllCerts, v52);
                  *at = -1;
                  SecCmsSignerInfoGetSigningTime(**(v22 + 160), at, v58);
                  if (!v59)
                  {
                    v60 = CFDateCreate(v32, *at);
                    if (v60)
                    {
                      v61 = v60;
                      CFDictionarySetValue(v34, kSecCMSSignDate, v60);
                      CFRelease(v61);
                    }
                  }

                  value = 0;
                  if (SecCmsSignerInfoGetAppleCodesigningHashAgility(**(v22 + 160), &value))
                  {
                    v62 = 1;
                  }

                  else
                  {
                    v62 = value == 0;
                  }

                  LODWORD(v17) = v103;
                  if (!v62)
                  {
                    CFDictionarySetValue(v34, kSecCMSHashAgility, value);
                  }

                  policies = 0;
                  if (SecCmsSignerInfoGetAppleCodesigningHashAgilityV2(**(v22 + 160), &policies))
                  {
                    v64 = 1;
                  }

                  else
                  {
                    v64 = policies == 0;
                  }

                  if (!v64)
                  {
                    CFDictionarySetValue(v34, kSecCMSHashAgilityV2, policies);
                  }

                  v110 = NAN;
                  SecCmsSignerInfoGetAppleExpirationTime(**(v22 + 160), &v110, v63);
                  if (!v65)
                  {
                    v66 = CFDateCreate(0, v110);
                    if (v66)
                    {
                      v67 = v66;
                      CFDictionarySetValue(v34, kSecCMSExpirationDate, v66);
                      CFRelease(v67);
                    }
                  }

                  *v102 = v34;
                  if (v52)
                  {
                    CFRelease(v52);
                  }
                }
              }

              v68 = 0;
LABEL_81:
              if (!v20)
              {
LABEL_104:
                v75 = v104;
                if (!a6)
                {
                  goto LABEL_112;
                }

                v76 = *a6;
                if (*a6 && cf)
                {
                  if (CFEqual(v76, cf))
                  {
                    goto LABEL_112;
                  }
                }

                else if (v76 == cf)
                {
                  goto LABEL_112;
                }

                v77 = secLogObjForScope("SecWarning");
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  v78 = *a6;
                  *at = 138412546;
                  *&at[4] = v78;
                  *&at[12] = 2112;
                  v114 = cf;
                  _os_log_impl(&dword_1887D2000, v77, OS_LOG_TYPE_DEFAULT, "MessageSecurity and Security frameworks have different attached contents results, returning Security result. sec: %@, ms: %@", at, 0x16u);
                }

LABEL_112:
                if (v7)
                {
                  v79 = *v7;
                  if (*v7 && cf2)
                  {
                    if (CFEqual(v79, cf2))
                    {
                      goto LABEL_120;
                    }
                  }

                  else if (v79 == cf2)
                  {
                    goto LABEL_120;
                  }

                  v80 = secLogObjForScope("SecWarning");
                  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                  {
                    v81 = *v7;
                    *at = 138412546;
                    *&at[4] = v81;
                    *&at[12] = 2112;
                    v114 = cf2;
                    _os_log_impl(&dword_1887D2000, v80, OS_LOG_TYPE_DEFAULT, "MessageSecurity and Security frameworks have different signed attributes results, returning Security result. sec: %@, ms: %@", at, 0x16u);
                  }
                }

LABEL_120:
                if (!v104 || (v82 = *v104, v83 = v107, *v104 == v107))
                {
LABEL_133:
                  if (v68 != v17)
                  {
                    v88 = secLogObjForScope("SecWarning");
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                    {
                      *at = 67109376;
                      *&at[4] = v68;
                      *&at[8] = 1024;
                      *&at[10] = v17;
                      _os_log_impl(&dword_1887D2000, v88, OS_LOG_TYPE_DEFAULT, "MessageSecurity and Security frameworks have different status results, returning Security result. sec: %d, ms: %d", at, 0xEu);
                    }
                  }

                  v89 = cf;
                  if (cf)
                  {
                    cf = 0;
                    CFRelease(v89);
                  }

                  v90 = cf2;
                  if (cf2)
                  {
                    cf2 = 0;
                    CFRelease(v90);
                  }

                  v91 = v107;
                  if (v107)
                  {
                    v107 = 0;
                    CFRelease(v91);
                  }

                  goto LABEL_142;
                }

                if (!v82 || !v107)
                {
LABEL_131:
                  v86 = secLogObjForScope("SecWarning");
                  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                  {
                    v87 = *v75;
                    *at = 138412546;
                    *&at[4] = v87;
                    *&at[12] = 2112;
                    v114 = v107;
                    _os_log_impl(&dword_1887D2000, v86, OS_LOG_TYPE_DEFAULT, "MessageSecurity and Security frameworks have different trustref results, returning Security result. sec: %@, ms: %@", at, 0x16u);
                  }

                  goto LABEL_133;
                }

                value = 0;
                *at = 0;
                if (SecTrustCopyInputCertificates(v82, at) || SecTrustCopyInputCertificates(v83, &value))
                {
                  goto LABEL_126;
                }

                ValueAtIndex = CFArrayGetValueAtIndex(*at, 0);
                v95 = CFArrayGetValueAtIndex(value, 0);
                if (ValueAtIndex && v95)
                {
                  if (!CFEqual(ValueAtIndex, v95))
                  {
                    goto LABEL_126;
                  }
                }

                else if (ValueAtIndex != v95)
                {
LABEL_126:
                  v84 = *at;
                  if (*at)
                  {
                    *at = 0;
                    CFRelease(v84);
                  }

                  v85 = *&value;
                  if (!value)
                  {
                    goto LABEL_131;
                  }

                  value = 0;
                  goto LABEL_130;
                }

                if (!certArrayIsSubset(*at, value) || (certArrayIsSubset(value, *at) & 1) == 0)
                {
                  goto LABEL_126;
                }

                v96 = *at;
                if (*at)
                {
                  *at = 0;
                  CFRelease(v96);
                }

                v97 = value;
                if (value)
                {
                  value = 0;
                  CFRelease(v97);
                }

                v110 = 0.0;
                policies = 0;
                if (SecTrustCopyPolicies(v82, &policies) || SecTrustCopyPolicies(v83, &v110))
                {
                  v98 = policies;
LABEL_157:
                  if (v98)
                  {
                    policies = 0;
                    CFRelease(v98);
                  }

                  v85 = v110;
                  if (!*&v110)
                  {
                    goto LABEL_131;
                  }

                  v110 = 0.0;
LABEL_130:
                  CFRelease(*&v85);
                  goto LABEL_131;
                }

                v98 = policies;
                if (policies && *&v110)
                {
                  v99 = CFEqual(policies, *&v110);
                  v98 = policies;
                  if (!v99)
                  {
                    goto LABEL_157;
                  }
                }

                else if (policies != *&v110)
                {
                  goto LABEL_157;
                }

                if (v98)
                {
                  policies = 0;
                  CFRelease(v98);
                }

                v100 = v110;
                if (*&v110)
                {
                  v110 = 0.0;
                  CFRelease(*&v100);
                }

                VerifyTime = SecTrustGetVerifyTime(v82);
                v75 = v104;
                if (vabdd_f64(VerifyTime, SecTrustGetVerifyTime(v83)) <= 0.1)
                {
                  goto LABEL_133;
                }

                goto LABEL_131;
              }

LABEL_103:
              SecCmsMessageDestroy(v20);
              goto LABEL_104;
            }
          }
        }
      }
    }

LABEL_102:
    v68 = 4294967246;
    goto LABEL_103;
  }

  if (a6)
  {
    v69 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    *a6 = v69;
  }

  if (v7)
  {
    v70 = cf2;
    if (cf2)
    {
      CFRetain(cf2);
    }

    *v7 = v70;
  }

  if (a4)
  {
    v71 = v107;
    if (v107)
    {
      CFRetain(v107);
    }

    *a4 = v71;
  }

  v72 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v72);
  }

  v73 = cf2;
  if (cf2)
  {
    cf2 = 0;
    CFRelease(v73);
  }

  v74 = v107;
  if (v107)
  {
    v107 = 0;
    CFRelease(v74);
  }

  v68 = v17;
LABEL_142:
  v92 = *MEMORY[0x1E69E9840];
  return v68;
}

void __isMessageSecurityAllowedForCurrentBundleID_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    Identifier = CFBundleGetIdentifier(MainBundle);
    if (Identifier)
    {
      v2 = Identifier;
      v3 = CFStringHasPrefix(Identifier, @"com.apple.mdmclient") || CFStringHasPrefix(v2, @"com.apple.managedclient.pds.Certificate") || CFStringHasPrefix(v2, @"com.apple.managedconfiguration.profiled") || CFStringHasPrefix(v2, @"com.apple.remotemanagementd") || CFStringHasPrefix(v2, @"com.apple.RemoteManagementAgent") != 0;
    }

    else
    {
      v3 = 0;
    }

    isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound = v3;
  }

  v4 = secLogObjForScope("SecCMS");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound)
    {
      v5 = "false";
    }

    else
    {
      v5 = "true";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "isMessageSecurityAllowedForCurrentBundleID %s", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t MS_SecCMSVerifySignedData_internal(uint64_t a1, uint64_t a2, void *a3, __SecTrust **a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v68 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v14 = objc_alloc_init(MEMORY[0x1E69B17B8]);
    [v14 setAdditionalCertificates:a5];
  }

  else
  {
    v14 = 0;
  }

  v64 = 0;
  v15 = [MEMORY[0x1E69B1790] decodeMessageSecurityObject:a1 options:v14 error:&v64];
  v16 = v64;
  if (v15)
  {
    v17 = [v15 contentType];
    if ([v17 isEqualToString:*MEMORY[0x1E69B1738]] && (objc_msgSend(v15, "embeddedContent"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v19 = v18;
      v59 = a6;
      v60 = a7;
      v20 = [v15 embeddedContent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v22 = [v15 embeddedContent];
        v23 = v22;
        if (a2)
        {
          if (([v22 detached]& 1) == 0)
          {
            v24 = secLogObjForScope("SecWarning");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "CMS message has attached content but caller passed in detached contents, using detached contents", buf, 2u);
            }
          }

          v25 = [v23 contentType];
          v26 = [v25 isEqualToString:*MEMORY[0x1E69B1728]];

          if ((v26 & 1) == 0)
          {
            v27 = secLogObjForScope("SecWarning");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "Caller passed a detached content by the content is not a data type.", buf, 2u);
            }
          }

          [v23 setDataContent:a2];
        }

        v28 = v60;
        if (!a3)
        {
          v34 = secLogObjForScope("SecWarning");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "SecCMSVerify called without policy -- skipping verification!", buf, 2u);
          }

          goto LABEL_50;
        }

        v29 = CFGetTypeID(a3);
        if (v29 == SecPolicyGetTypeID())
        {
          v65 = a3;
          v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
        }

        else
        {
          v35 = CFGetTypeID(a3);
          if (v35 != CFArrayGetTypeID())
          {
            v34 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "policy is not a SecPolicy or CFArr0ay", buf, 2u);
            }

            v31 = 4294967246;
            goto LABEL_46;
          }

          v30 = a3;
        }

        v34 = v30;
        v36 = [v23 signers];
        v37 = [v36 count];

        if (v37 == 1)
        {
          v38 = [v23 signers];
          v39 = [v38 objectAtIndexedSubscript:0];

          v40 = getSigningTime(v39);
          verifyDate = v40;
          if (a4)
          {
            v63 = v16;
            v41 = [v23 verifySignatures:&v63];
            v42 = v63;

            v28 = v60;
            if (v41)
            {
              v62 = v42;
              v57 = v39;
              v43 = [v39 createTrustObjectWithPolicies:v34 error:&v62];
              v16 = v62;

              if (v43)
              {
                v44 = verifyDate;
                if (verifyDate)
                {
                  SecTrustSetVerifyDate(v43, verifyDate);
                }

                *a4 = v43;
                v39 = v57;
                goto LABEL_49;
              }

              v56 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v67 = v16;
                _os_log_impl(&dword_1887D2000, v56, OS_LOG_TYPE_DEFAULT, "Failed to create trust ref to verify signer: %@", buf, 0xCu);
              }

              v31 = [v16 code];
              v42 = v16;
              v39 = v57;
LABEL_68:

              v16 = v42;
              goto LABEL_28;
            }

            v54 = secLogObjForScope("SecError");
            if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
LABEL_67:

              v31 = 4294942003;
              goto LABEL_68;
            }

            *buf = 138412290;
            v67 = v42;
            v55 = "CMS signature verification failed: %@";
          }

          else
          {
            v61 = v16;
            v48 = [v23 verifySignaturesAndSignersWithPolicies:v34 verifyTime:v40 error:&v61];
            v42 = v61;

            v28 = v60;
            if (v48)
            {
              v16 = v42;
              v44 = verifyDate;
LABEL_49:

LABEL_50:
              if (v59)
              {
                if (([v23 detached]& 1) != 0)
                {
                  v49 = [MEMORY[0x1E695DEF0] data];
                }

                else
                {
                  v50 = [v23 contentType];
                  v51 = [v50 isEqualToString:*MEMORY[0x1E69B1728]];

                  if ((v51 & 1) == 0)
                  {
                    v52 = secLogObjForScope("SecWarning");
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                    {
                      v53 = [v23 contentType];
                      *buf = 138412290;
                      v67 = v53;
                      _os_log_impl(&dword_1887D2000, v52, OS_LOG_TYPE_DEFAULT, "returning attached embedded content of type %@", buf, 0xCu);
                    }
                  }

                  v49 = [v23 dataContent];
                  v28 = v60;
                }

                *v59 = v49;
              }

              if (v28)
              {
                addSignedAttribues(v23, v28);
              }

              v31 = 0;
              goto LABEL_28;
            }

            v54 = secLogObjForScope("SecError");
            if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_67;
            }

            *buf = 138412290;
            v67 = v42;
            v55 = "Signature/signer verification failed: %@";
          }

          _os_log_impl(&dword_1887D2000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);
          goto LABEL_67;
        }

        v45 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v23 signers];
          v47 = [v46 count];
          *buf = 67109120;
          LODWORD(v67) = v47;
          _os_log_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEFAULT, "CMS message has %d signers, expected 1", buf, 8u);
        }

        v31 = 4294942003;
LABEL_46:

        goto LABEL_28;
      }
    }

    else
    {
    }

    v23 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "CMS message does not contain a SignedData", buf, 2u);
    }

    v31 = 4294941021;
  }

  else
  {
    v23 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v67 = v16;
      _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "failed to decode CMS message: %@", buf, 0xCu);
    }

    v31 = 4294942003;
  }

LABEL_28:

  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

CFDataRef SecTrustCopyExceptions(SecTrustRef trust)
{
  Data = trust;
  v50 = *MEMORY[0x1E69E9840];
  if (trust)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v46 = 0;
    v2 = *(trust + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustCopyExceptions_block_invoke;
    block[3] = &unk_1E70E3018;
    block[4] = &v43;
    block[5] = Data;
    dispatch_sync(v2, block);
    if (v44[3])
    {
      v3 = *(Data + 17);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __SecTrustSetNeedsEvaluation_block_invoke;
      v48 = &__block_descriptor_tmp_80_14598;
      v49 = Data;
      dispatch_sync(v3, buf);
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2000000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2000000000;
    v37 = 0;
    SecTrustEvaluateIfNecessary(Data);
    v4 = *(Data + 17);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 0x40000000;
    v33[2] = __SecTrustCopyExceptions_block_invoke_2;
    v33[3] = &unk_1E70E3040;
    v33[5] = &v34;
    v33[6] = Data;
    v33[4] = &v38;
    dispatch_sync(v4, v33);
    v5 = v39[3];
    if (v5)
    {
      Count = CFArrayGetCount(v5);
    }

    else
    {
      Count = 0;
    }

    v7 = *MEMORY[0x1E695E480];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    cf = 0;
    ExceptionResetCount = SecTrustGetExceptionResetCount(&cf);
    valuePtr = ExceptionResetCount;
    v10 = secLogObjForScope("trust");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v29 = "Error";
      if (!cf)
      {
        v29 = "OK";
      }

      *buf = 134218242;
      *&buf[4] = ExceptionResetCount;
      *&buf[12] = 2082;
      *&buf[14] = v29;
      _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "The current exceptions epoch is %llu. (%{public}s)", buf, 0x16u);
    }

    v11 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (Count >= 1)
    {
      v12 = 0;
      v13 = MEMORY[0x1E695E9D8];
      v14 = MEMORY[0x1E695E9E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v39[3], v12);
        v16 = CFDictionaryGetCount(ValueAtIndex);
        if (v12 && v16 < 1)
        {
          MutableCopy = CFDictionaryCreate(v7, 0, 0, 0, v13, v14);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, ValueAtIndex);
          v18 = CFArrayGetValueAtIndex(v35[3], v12);
          SHA1Digest = SecCertificateGetSHA1Digest(v18);
          if (SHA1Digest)
          {
            CFDictionaryAddValue(MutableCopy, @"SHA1Digest", SHA1Digest);
          }

          else
          {
            v20 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v12;
              _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "Unable to get digest of certificate at index %lld", buf, 0xCu);
            }
          }

          if (valuePtr && !cf && v11)
          {
            CFDictionaryAddValue(MutableCopy, @"ExceptionResetCount", v11);
          }
        }

        CFArrayAppendValue(Mutable, MutableCopy);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        ++v12;
      }

      while (Count != v12);
    }

    if (v44[3])
    {
      v21 = *(Data + 17);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 0x40000000;
      v30[2] = __SecTrustCopyExceptions_block_invoke_319;
      v30[3] = &unk_1E70E3068;
      v30[4] = &v43;
      v30[5] = Data;
      dispatch_sync(v21, v30);
      v22 = *(Data + 17);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __SecTrustSetNeedsEvaluation_block_invoke;
      v48 = &__block_descriptor_tmp_80_14598;
      v49 = Data;
      dispatch_sync(v22, buf);
    }

    if (Count >= 2)
    {
      v23 = Count + 1;
      do
      {
        v24 = CFArrayGetValueAtIndex(Mutable, v23 - 2);
        if (CFDictionaryGetCount(v24))
        {
          break;
        }

        CFArrayRemoveValueAtIndex(Mutable, v23 - 2);
        --v23;
      }

      while (v23 > 2);
    }

    Data = CFPropertyListCreateData(v7, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    CFRelease(Mutable);
    v25 = v39[3];
    if (v25)
    {
      CFRelease(v25);
    }

    v26 = v35[3];
    if (v26)
    {
      CFRelease(v26);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v43, 8);
  }

  v27 = *MEMORY[0x1E69E9840];
  return Data;
}

uint64_t __SecTrustCopyExceptions_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 104);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = v1;
    *(*(result + 40) + 104) = 0;
  }

  return result;
}

void *__SecTrustCopyExceptions_block_invoke_2(void *result)
{
  v1 = result;
  v2 = result[6];
  v3 = *(v2 + 88);
  if (v3)
  {
    result = CFRetain(*(v2 + 88));
  }

  *(*(v1[4] + 8) + 24) = v3;
  v4 = v1[6];
  v5 = *(v4 + 72);
  if (v5)
  {
    result = CFRetain(*(v4 + 72));
  }

  *(*(v1[5] + 8) + 24) = v5;
  return result;
}

uint64_t SecTrustGetExceptionResetCount(CFTypeRef *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1887D2000, "SecTrustExceptionGetResetCount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v9.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &v9);
  if (gTrustd && (v3 = *(gTrustd + 176)) != 0)
  {
    v4 = v3(a1);
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 0x40000000;
    v15 = __to_uint_error_request_block_invoke;
    v16 = &unk_1E70E3A30;
    v17 = &v10;
    v18 = a1;
    securityd_send_sync_and_do(0x78u, a1, 0, &buf);
    v4 = v11[3];
    _Block_object_dispose(&v10, 8);
  }

  os_release(v2);
  if (a1)
  {
    if (*a1)
    {
      v5 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the exceptions epoch.", &buf, 2u);
      }
    }
  }

  v6 = secLogObjForScope("trust");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "The exceptions epoch is %lld.", &buf, 0xCu);
  }

  os_activity_scope_leave(&v9);
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL __to_uint_error_request_block_invoke(uint64_t a1, xpc_object_t xdict, void *a3)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "status");
  if ((uint64 & 0x8000000000000000) != 0)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Invalid exceptions epoch.", v9, 2u);
    }

    if (*(a1 + 40))
    {
      **(a1 + 40) = CFErrorCreate(0, *MEMORY[0x1E695E640], 34, 0);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = uint64;
  }

  if (a3)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      if (*a3)
      {
        *v7 = *a3;
      }
    }
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

id _OctagonSignpostLogSystem()
{
  if (_OctagonSignpostLogSystem_onceToken != -1)
  {
    dispatch_once(&_OctagonSignpostLogSystem_onceToken, &__block_literal_global_606);
  }

  v1 = _OctagonSignpostLogSystem_log;

  return v1;
}

id OTSetupControlProtocol(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[SecXPCHelper safeErrorClasses];
  [v1 setClasses:v2 forSelector:sel_appleAccountSignedIn_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_appleAccountSignedOut_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_notifyIDMSTrustLevelChangeForAltDSID_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_rpcEpochWithArguments_configuration_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_rpcPrepareIdentityAsApplicantWithArguments_configuration_reply_ argumentIndex:5 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_rpcVoucherWithArguments_configuration_peerID_permanentInfo_permanentInfoSig_stableInfo_stableInfoSig_maxCapability_reply_ argumentIndex:2 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_rpcJoinWithArguments_configuration_vouchData_vouchSig_reply_ argumentIndex:0 ofReply:1];
  [v1 setXPCType:MEMORY[0x1E69E9EA0] forSelector:sel_status_xpcFd_reply_ argumentIndex:1 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_status_xpcFd_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_status_xpcFd_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchEgoPeerID_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchCliqueStatus_configuration_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchTrustStatus_configuration_reply_ argumentIndex:4 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_startOctagonStateMachine_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_resetAndEstablish_resetReason_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_accountSettings_isGuitarfish_accountIsW_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_establish_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_leaveClique_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_removeFriendsInClique_peerIDs_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_peerDeviceNamesByPeerID_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchAllViableBottles_source_reply_ argumentIndex:2 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_restoreFromBottle_entropy_bottleID_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchEscrowContents_reply_ argumentIndex:3 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_createRecoveryKey_recoveryKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_joinWithRecoveryKey_recoveryKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_healthCheck_skipRateLimitingCheck_repair_danglingPeerCleanup_caesarPeerCleanup_updateIdMS_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_simulateReceivePush_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_simulateReceiveTDLChangePush_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_waitForOctagonUpgrade_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_postCDPFollowupResult_success_type_error_reply_ argumentIndex:3 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_postCDPFollowupResult_success_type_error_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_tapToRadar_description_radar_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_refetchCKKSPolicy_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setCDPEnabled_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_getCDPStatus_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchEscrowRecords_source_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setUserControllableViewsSyncStatus_enabled_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchUserControllableViewsSyncStatus_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_resetAccountCDPContents_idmsTargetContext_idmsCuttlefishPassword_notifyIdMS_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setLocalSecureElementIdentity_secureElementIdentity_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_removeLocalSecureElementIdentityPeerID_secureElementIdentityPeerID_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchTrustedSecureElementIdentities_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setAccountSetting_setting_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchAccountSettings_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchAccountWideSettingsWithForceFetch_arguments_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_waitForPriorityViewKeychainDataRecovery_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_createCustodianRecoveryKey_uuid_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_joinWithCustodianRecoveryKey_custodianRecoveryKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_preflightJoinWithCustodianRecoveryKey_custodianRecoveryKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_removeCustodianRecoveryKey_uuid_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_createInheritanceKey_uuid_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_generateInheritanceKey_uuid_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_storeInheritanceKey_ik_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_joinWithInheritanceKey_inheritanceKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_preflightJoinWithInheritanceKey_inheritanceKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_removeInheritanceKey_uuid_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_tlkRecoverabilityForEscrowRecordData_recordData_source_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setMachineIDOverride_machineID_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_isRecoveryKeySet_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_recoverWithRecoveryKey_recoveryKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_removeRecoveryKey_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_preflightRecoverOctagonUsingRecoveryKey_recoveryKey_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_clearCliqueFromAccount_resetReason_isGuitarfish_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_performCKServerUnreadableDataRemoval_isGuitarfish_accountIsW_altDSID_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_totalTrustedPeers_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_trustedFullPeers_reply_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_areRecoveryKeysDistrusted_reply_ argumentIndex:1 ofReply:1];

  v3 = *MEMORY[0x1E69E9840];

  return v1;
}

__CFData *SecRSAPublicKeyCopyExternalRepresentation(void *a1)
{
  v1 = a1[3];
  v2 = CFGetAllocator(a1);

  return SecRSAPublicKeyCreatePKCS1(v2, v1);
}

uint64_t SecECPrivateKeyCopyPublicOctets(void *a1, __CFData **a2)
{
  v3 = a1[3];
  v4 = CFGetAllocator(a1);
  v5 = SecECPublicKeyExport(v4, v3);
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t sec_protocol_options_set_tls_early_data_enabled(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_early_data_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_42;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_early_data_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFE7FFFFF | (*(a1 + 32) << 23) | 0x1000000;
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_session_state(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_session_state_block_invoke;
      v2[3] = &__block_descriptor_tmp_62;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_session_state_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 192);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 32);
    *(a2 + 192) = v5;
    dispatch_retain(v5);
  }

  return a2 != 0;
}

OSStatus SecItemUpdate(CFDictionaryRef query, CFDictionaryRef attributesToUpdate)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _os_activity_create(&dword_1887D2000, "SecItemUpdate_ios", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SecItemUpdate_block_invoke;
  v7[3] = &__block_descriptor_48_e20_B16__0_____CFError_8l;
  v7[4] = query;
  v7[5] = attributesToUpdate;
  LODWORD(attributesToUpdate) = SecOSStatusWith(v7);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v4);
  return attributesToUpdate;
}

uint64_t SecItemUpdateWithError(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v21 = a1;
  cf = 0;
  v19 = a2;
  v20 = 0;
  Value = CFDictionaryGetValue(a1, @"v_Ref");
  if (Value)
  {
    v8 = Value;
    v9 = CFGetTypeID(Value);
    if (v9 == SecIdentityGetTypeID())
    {
      v10 = v8[2];
      CFRetain(v10);
      v11 = v8[3];
      CFRetain(v11);
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
      if (!MutableCopy)
      {
        v14 = 0;
        if (!v10)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v13 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"v_Ref", v10);
      v14 = SecItemUpdateWithError(v13, a2, a3);
      if (v14)
      {
        CFDictionarySetValue(v13, @"v_Ref", v11);
        if ((SecItemUpdateWithError(v13, a2, a3) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_12;
    }

LABEL_16:
    v14 = SecItemAuthDoQuery(&v21, &v19, SecItemUpdate, a3, &__block_literal_global_10535);
    v17 = cf;
    if (!cf)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v15 = CFDictionaryGetValue(a1, @"class");
  if (!v15 || !CFEqual(@"idnt", v15))
  {
    goto LABEL_16;
  }

  v16 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (v16)
  {
    v13 = v16;
    CFDictionarySetValue(v16, @"class", @"cert");
    if (!SecItemUpdateWithError(v13, a2, a3))
    {
      v10 = 0;
      v11 = 0;
LABEL_6:
      v14 = 0;
      goto LABEL_12;
    }

    CFDictionarySetValue(v13, @"class", @"keys");
    v10 = 0;
    v14 = (SecItemUpdateWithError(v13, a2, a3) & 1) != 0;
    v11 = 0;
LABEL_12:
    CFRelease(v13);
    if (!v10)
    {
LABEL_14:
      if (!v11)
      {
        goto LABEL_18;
      }

      v17 = v11;
LABEL_17:
      CFRelease(v17);
      goto LABEL_18;
    }

LABEL_13:
    CFRelease(v10);
    goto LABEL_14;
  }

  v14 = 0;
LABEL_18:
  if (v20)
  {
    CFRelease(v20);
  }

  objc_autoreleasePoolPop(v6);
  return v14;
}

uint64_t __SecItemUpdateWithError_block_invoke(uint64_t a1, void *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5, CFTypeRef *a6)
{
  v9 = a2;
  if ((isModifyingAPIRateWithinLimits() & 1) == 0)
  {
    __security_simulatecrash(@"BUG IN CLIENT OF SECITEM: too many writes. See https://at.apple.com/secitemratelimit", 1405091855);
  }

  if (v9)
  {
    v10 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SecTokenItemUpdate_block_invoke;
    v13[3] = &unk_1E70DEE90;
    v14 = v10;
    v15 = a4;
    v11 = SecTokenItemForEachMatching(a3, a6, v13);
  }

  else
  {
    v11 = SecItemRawUpdate(a3, a4, a6);
  }

  return v11;
}

uint64_t SecItemRawUpdate(const __CFString *a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  if (gSecurityd)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SecItemRawUpdate_block_invoke;
    context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
    context[4] = Mutable;
    CFDictionaryApplyFunction(a2, apply_block_2_10426, context);
    v7 = *(gSecurityd + 16);
    v8 = SecSecurityClientGet();
    v9 = v7(a1, Mutable, v8, a3);
    CFRelease(Mutable);
  }

  else
  {
    message = securityd_create_message(2u, a3);
    v15 = message;
    if (message && SecXPCDictionarySetPListWithRepair(message, "query", a1, a3, v11, v12, v13, v14) && SecXPCDictionarySetPListWithRepair(v15, "attributesToUpdate", a2, a3, v16, v17, v18, v19))
    {
      logUnreasonableDataLength(a2);
      v20 = securityd_message_with_reply_sync(v15, a3);
      v21 = v20;
      if (v20)
      {
        v9 = securityd_message_no_error(v20, a3);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void Security::CodeSigning::SingleDiskRep::mainExecutablePath(Security::CodeSigning::SingleDiskRep *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 1);
    a2->__r_.__value_.__r.__words[2] = *(this + 4);
  }
}

void Security::CodeSigning::MachORep::infoPlist(Security::CodeSigning::MachORep *this)
{
  cf = 0;
  v1 = (*(*this + 80))(this);
  Security::Universal::architecture(v1);
}

void sub_18880B664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  (*(*v9 + 8))(v9);
  __cxa_begin_catch(a1);
  v11 = secLogObjForScope("machorep");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    a9 = 0;
    _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "exception reading embedded Info.plist", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x18880B62CLL);
}

void sub_18880B6F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

unint64_t Security::MachOBase::findSegment(Security::MachOBase *this, const char *a2)
{
  for (i = *(this + 2); i; i = Security::MachOBase::nextCommand(this, i))
  {
    v4 = *i;
    v5 = bswap32(*i);
    if (*(this + 33))
    {
      v4 = v5;
    }

    if (v4 == 25 || v4 == 1)
    {
      v7 = bswap32(*(i + 4));
      v8 = *(this + 33) ? v7 : *(i + 4);
      if (v8 <= 0x37)
      {
        Security::UnixError::throwMe(8);
      }

      if (!strncmp((i + 8), "__TEXT", 0x10uLL))
      {
        break;
      }
    }
  }

  return i;
}

uint64_t MS_SecCMSCertificatesOnlyMessageCopyCertificates(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v1 = [MEMORY[0x1E69B1790] decodeMessageSecurityObject:a1 options:0 error:&v18];
  v2 = v18;
  if (v1)
  {
    v3 = [v1 contentType];
    if ([v3 isEqualToString:*MEMORY[0x1E69B1738]] && (objc_msgSend(v1, "embeddedContent"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      v6 = [v1 embeddedContent];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v1 embeddedContent];
        v9 = [v8 signers];
        v10 = [v9 count];

        if (v10)
        {
          v11 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "certs-only message has signers", buf, 2u);
          }
        }

        else
        {
          v11 = [v8 certificates];
          if ([v11 count])
          {
            v15 = [v11 allObjects];
LABEL_19:

            goto LABEL_15;
          }
        }

        v15 = 0;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "CMS message does not contain a SignedData";
      v13 = v8;
      v14 = 2;
LABEL_13:
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  else
  {
    v8 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v2;
      v12 = "failed to decode CMS message: %@";
      v13 = v8;
      v14 = 12;
      goto LABEL_13;
    }
  }

  v15 = 0;
LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __dumpValue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = a2;
  [v5 appendString:v6];
  dumpValue(v8, *(a1 + 32), &stru_1EFA8C6C8);

  objc_msgSend(*(a1 + 32), "appendString:", @"(");
  dumpValue(v7, *(a1 + 32), &stru_1EFA8C6C8);

  v9 = *(a1 + 32);

  return [v9 appendString:@""]);
}

void lastErrorReleaseError(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

const __CFData *SecCMSCertificatesOnlyMessageCopyCertificates(uint64_t a1)
{
  Mutable = a1;
  v27 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_38;
  }

  v2 = MS_SecCMSCertificatesOnlyMessageCopyCertificates(a1);
  if (isMessageSecurityAllowedForCurrentBundleID_onceToken != -1)
  {
    dispatch_once(&isMessageSecurityAllowedForCurrentBundleID_onceToken, &__block_literal_global_3844);
  }

  if (!isMessageSecurityAllowedForCurrentBundleID_blockedBundleIDFound)
  {
    Mutable = v2;
    goto LABEL_38;
  }

  v22 = 0;
  v21[0] = CFDataGetLength(Mutable);
  v21[1] = CFDataGetBytePtr(Mutable);
  v4 = SecCmsMessageDecode(v21, 0, 0, v3, 0, 0, 0, &v22);
  v5 = v22;
  if (!v4)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    OID = *(v22 + 32);
    if ((OID || (OID = SECOID_FindOID(v22), (*(v5 + 32) = OID) != 0)) && *(OID + 16) == 26 && (v7 = *(v5 + 16)) != 0 && ((v8 = *(v7 + 160)) == 0 || !*v8))
    {
      v9 = *(v7 + 144);
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (v9)
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = v9 + 1;
          do
          {
            v12 = SecCertificateCreateWithBytes(0, *(v10 + 8), *v10);
            if (v12)
            {
              v13 = v12;
              CFArrayAppendValue(Mutable, v12);
              CFRelease(v13);
            }

            v14 = *v11++;
            v10 = v14;
          }

          while (v14);
          if (!v5)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      Mutable = 0;
    }

    goto LABEL_21;
  }

  Mutable = 0;
  if (v22)
  {
LABEL_21:
    SecCmsMessageDestroy(v5);
  }

LABEL_22:
  if (!Mutable || CFArrayGetCount(Mutable) > 0)
  {
    goto LABEL_26;
  }

  CFRelease(Mutable);
LABEL_25:
  Mutable = 0;
LABEL_26:
  if (Mutable != v2)
  {
    if (v2 && Mutable && (Count = CFArrayGetCount(Mutable), Count == CFArrayGetCount(v2)))
    {
      v16 = 0;
      while (v16 < CFArrayGetCount(Mutable))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v16);
        v28.length = CFArrayGetCount(v2);
        v28.location = 0;
        ++v16;
        if (!CFArrayContainsValue(v2, v28, ValueAtIndex))
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
LABEL_33:
      v18 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = Mutable;
        v25 = 2112;
        v26 = v2;
        _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "MessageSecurity and Security frameworks have different results, returning Security result. sec: %@, ms: %@", buf, 0x16u);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

LABEL_38:
  v19 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void sec_protocol_options_set_max_tls_protocol_version(sec_protocol_options_t options, tls_protocol_version_t version)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_max_tls_protocol_version_block_invoke;
    v2[3] = &__block_descriptor_tmp_21;
    v3 = version;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_max_tls_protocol_version_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 2) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_sec_protocol_configuration(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_sec_protocol_configuration_block_invoke;
    v2[3] = &__block_descriptor_tmp_65;
    v2[4] = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_sec_protocol_configuration_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 296);
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = os_retain(v4);
    }

    *(a2 + 296) = v4;
    if (v3)
    {
      os_release(v3);
    }
  }

  return a2 != 0;
}

void __SecItemFetchCurrentItemDataAcrossAllDevices_block_invoke_2(uint64_t a1, SecItemCurrentItemData *a2, void *a3, void *a4)
{
  v9 = a4;
  if (a2)
  {
    v7 = a3;
    v8 = a2;
    a2 = [[SecItemCurrentItemData alloc] initWithPersistentRef:v8];

    [(SecItemCurrentItemData *)a2 setCurrentItemPointerModificationTime:v7];
  }

  (*(*(a1 + 32) + 16))();
}

BOOL __sec_protocol_options_set_trusted_peer_certificate_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFFFFE7 | (8 * *(a1 + 32)) | 0x10;
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_minimum_ecdsa_key_size(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_minimum_ecdsa_key_size_block_invoke;
    v2[3] = &__block_descriptor_tmp_68;
    v2[4] = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_minimum_rsa_key_size_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 312) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_minimum_signature_algorithm(uint64_t result, int a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_minimum_signature_algorithm_block_invoke;
    v2[3] = &__block_descriptor_tmp_69;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_minimum_ecdsa_key_size_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 320) = *(a1 + 32);
  }

  return a2 != 0;
}

BOOL __sec_protocol_options_set_minimum_signature_algorithm_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 328) = *(a1 + 32);
  }

  return a2 != 0;
}

NSObject *sec_protocol_configuration_copy_transformed_options_for_host_or_address_internal(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5[1];
  v9 = v8;
  if (v8)
  {
    if (!v7)
    {
      sec_protocol_configuration_copy_transformed_options(v8, v6);
      goto LABEL_17;
    }

    v10 = xpc_dictionary_get_BOOL(v7, "NSExceptionAllowsInsecureHTTPLoads");
    v11 = v10;
    if (v10)
    {
      sec_protocol_options_set_ats_required(v6, 0);
    }

    if (xpc_dictionary_get_BOOL(v7, "NSExceptionRequiresForwardSecrecy"))
    {
      if (v6)
      {
        sec_protocol_options_access_handle(v6, &__block_literal_global_19);
      }
    }

    else
    {
      sec_protocol_options_set_ats_non_pfs_ciphersuite_allowed(v6, 1);
      if (v11)
      {
        goto LABEL_14;
      }

      if (v6)
      {
        sec_protocol_options_access_handle(v6, &__block_literal_global_19);
      }

      sec_protocol_options_append_tls_ciphersuite_group(v6, tls_ciphersuite_group_ats_compatibility);
    }

    sec_protocol_options_append_tls_ciphersuite_group(v6, tls_ciphersuite_group_ats);
LABEL_14:
    int64 = xpc_dictionary_get_int64(v7, "NSExceptionMinimumTLSVersion");
    if (int64)
    {
      sec_protocol_options_set_min_tls_protocol_version(v6, int64);
      sec_protocol_options_set_ats_minimum_tls_version_allowed(v6, 1);
    }
  }

  v13 = v6;
LABEL_17:

  return v6;
}

uint64_t sec_protocol_options_set_ats_non_pfs_ciphersuite_allowed(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_ats_non_pfs_ciphersuite_allowed_block_invoke;
    v2[3] = &__block_descriptor_tmp_84;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_ats_non_pfs_ciphersuite_allowed_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFFFFFB | (4 * (*(a1 + 32) & 1));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_ats_minimum_tls_version_allowed(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_ats_minimum_tls_version_allowed_block_invoke;
    v2[3] = &__block_descriptor_tmp_85;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_ats_minimum_tls_version_allowed_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFFFFFD | (2 * (*(a1 + 32) & 1));
  }

  return a2 != 0;
}

OSStatus SecTrustEvaluateAsyncWithError(SecTrustRef trust, dispatch_queue_t queue, SecTrustWithErrorCallback result)
{
  v4 = -50;
  if (trust && queue)
  {
    if (result)
    {
      dispatch_assert_queue_V2(queue);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __SecTrustEvaluateAsyncWithError_block_invoke;
      v7[3] = &unk_1E70E2E88;
      v7[4] = result;
      v7[5] = trust;
      SecTrustEvaluateIfNecessaryFastAsync(trust, queue, v7);
      return 0;
    }
  }

  return v4;
}

const char *__cdecl sec_protocol_metadata_get_server_name(sec_protocol_metadata_t metadata)
{
  v1 = metadata;
  if (metadata)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    os_unfair_lock_lock(&returned_raw_string_pointers_lock);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_server_name_block_invoke;
    v3[3] = &unk_1E70D5C08;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(v1, v3);
    os_unfair_lock_unlock(&returned_raw_string_pointers_lock);
    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

uint64_t __sec_protocol_metadata_get_server_name_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = *(a2 + 384);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, &sec_protocol_helper_c_string_set_callbacks);
    *(a2 + 384) = Mutable;
  }

  v5 = *(a2 + 48);
  if (!v5)
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = CFSetGetValue(Mutable, *(a2 + 48));
  v6 = *(*(a1 + 32) + 8);
  if (!*(v6 + 24))
  {
    *(v6 + 24) = strdup(v5);
    CFSetAddValue(*(a2 + 384), *(*(*(a1 + 32) + 8) + 24));
  }

  return 1;
}

uint64_t sec_protocol_options_set_nw_protocol_joining_context(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_nw_protocol_joining_context_block_invoke;
    v2[3] = &__block_descriptor_tmp_44;
    v2[4] = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_nw_protocol_joining_context_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 352) = *(a1 + 32);
  }

  return a2 != 0;
}

id sec_protocol_configuration_find_exception_for_host(void *a1, const char *a2, int a3)
{
  v5 = a1;
  v6 = v5[1];
  v7 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_18;
  }

  v8 = xpc_dictionary_get_dictionary(v6, "NSExceptionDomains");
  v9 = v8;
  if (v8)
  {
    v10 = xpc_dictionary_get_dictionary(v8, a2);
    v11 = v10;
    if (v10 && (!a3 || xpc_dictionary_get_BOOL(v10, "NSIncludesSubdomains")))
    {
      v12 = v11;
    }

    else
    {
      v14 = strlen(a2);
      if (!v14)
      {
LABEL_13:
        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v15 = 0;
      while (a2[v15] != 46)
      {
        if (v14 == ++v15)
        {
          goto LABEL_13;
        }
      }

      v12 = sec_protocol_configuration_find_exception_for_host(v5, &a2[v15 + 1], 1);
    }

    v13 = v12;
    goto LABEL_16;
  }

  v13 = 0;
LABEL_17:

LABEL_18:

  return v13;
}

BOOL sec_protocol_configuration_tls_required_for_host_or_address_internal(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = v5[1];
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      v9 = !xpc_dictionary_get_BOOL(v6, "NSExceptionAllowsInsecureHTTPLoads");
    }

    else
    {
      v9 = (!a2 || xpc_dictionary_get_uint64(v7, "NSAllowsLocalNetworking") == 1) && sec_protocol_configuration_tls_required(v5);
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

BOOL __sec_protocol_options_set_ats_required_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFFFFFE | *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_minimum_rsa_key_size(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_minimum_rsa_key_size_block_invoke;
    v2[3] = &__block_descriptor_tmp_67;
    v2[4] = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

uint64_t sec_protocol_options_copy(uint64_t a1)
{
  if (sec_protocol_options_copy_onceToken != -1)
  {
    dispatch_once(&sec_protocol_options_copy_onceToken, &__block_literal_global_9);
  }

  v2 = sec_protocol_options_copy__nw_protocol_options_copy;
  if (!sec_protocol_options_copy__nw_protocol_options_copy)
  {
    return 0;
  }

  return v2(a1);
}

NSObject *sec_protocol_configuration_copy_transformed_options_with_ats_minimums(void *a1)
{
  v1 = a1;
  sec_protocol_options_set_ats_required(v1, 1);
  sec_protocol_options_set_trusted_peer_certificate(v1, 1);
  sec_protocol_options_set_minimum_rsa_key_size(v1, 2048);
  sec_protocol_options_set_minimum_ecdsa_key_size(v1, 256);
  sec_protocol_options_set_minimum_signature_algorithm(v1, 6);
  sec_protocol_options_set_min_tls_protocol_version(v1, tls_protocol_version_TLSv12);

  return v1;
}

uint64_t sec_protocol_options_set_ats_required(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_ats_required_block_invoke;
    v2[3] = &__block_descriptor_tmp_66;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

uint64_t sec_protocol_options_set_trusted_peer_certificate(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_trusted_peer_certificate_block_invoke;
    v2[3] = &__block_descriptor_tmp_70;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL _SecItemParsePersistentRef(const void *a1, void *a2, void *a3, const void **a4, CFDictionaryRef *a5)
{
  v10 = CFGetTypeID(a1);
  if (v10 != CFDataGetTypeID())
  {
    return 0;
  }

  if (CFDataGetLength(a1) < 5 || *CFDataGetBytePtr(a1) != 1919970164)
  {
    if (CFDataGetLength(a1) == 12)
    {
      BytePtr = CFDataGetBytePtr(a1);
      v12 = *(BytePtr + 4);
      v13 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(@"genp");
      v15 = CFStringCreateWithBytes(v13, BytePtr, Length, 0x8000100u, 1u);
      if (v15)
      {
        v16 = v15;
        valid = isValidClass(v15, a2);
        v18 = valid;
        if (a3 && valid)
        {
          *a3 = bswap64(v12);
        }

        goto LABEL_31;
      }
    }

    else if (SecKeychainIsStaticPersistentRefsEnabled())
    {
      if (CFDataGetLength(a1) == 20)
      {
        v19 = CFDataGetBytePtr(a1);
        v20 = *MEMORY[0x1E695E480];
        v21 = CFStringGetLength(@"genp");
        v22 = CFStringCreateWithBytes(v20, v19, v21, 0x8000100u, 1u);
        if (v22)
        {
          v23 = v22;
          v24 = isValidClass(v22, a2);
          v18 = v24;
          if (a4 && v24)
          {
            v25 = CFStringGetLength(v23);
            v26 = CFDataGetLength(a1);
            v27 = CFStringGetLength(v23);
            v28 = CFDataCreateWithBytesNoCopy(v20, &v19[v25], v26 - v27, *MEMORY[0x1E695E498]);
            v29 = *a4;
            if (*a4 != v28)
            {
              if (!v28 || (CFRetain(v28), (v29 = *a4) != 0))
              {
                CFRelease(v29);
              }

              *a4 = v28;
            }

            if (v28)
            {
              CFRelease(v28);
            }
          }

          v30 = v23;
          goto LABEL_32;
        }
      }
    }

    return 0;
  }

  cf = 0;
  v31 = CFDataGetBytePtr(a1);
  v32 = CFDataGetLength(a1);
  v33 = &v31[v32];
  v37 = der_decode_plist(0, &cf, 0, (v31 + 4), &v31[v32], v34, v35, v36);
  v18 = 0;
  v16 = cf;
  if (v37 && v37 == v33)
  {
    v38 = CFGetTypeID(cf);
    if (v38 != CFArrayGetTypeID() || CFArrayGetCount(v16) != 3)
    {
      v18 = 0;
      if (!v16)
      {
        return v18;
      }

      goto LABEL_31;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
    v40 = isValidClass(ValueAtIndex, a2);
    v18 = v40;
    if (a5 && v40)
    {
      v41 = *MEMORY[0x1E695E480];
      v42 = CFArrayGetValueAtIndex(v16, 1);
      CFArrayGetValueAtIndex(v16, 2);
      *a5 = CFDictionaryCreateForCFTypes(v41, v43, v44, v45, v46, v47, v48, v49, @"tkid", v42);
    }
  }

  if (v16)
  {
LABEL_31:
    v30 = v16;
LABEL_32:
    CFRelease(v30);
  }

  return v18;
}

BOOL isValidClass(CFTypeRef cf2, void *a2)
{
  v4 = 0;
  v9[6] = *MEMORY[0x1E69E9840];
  v9[0] = @"genp";
  v9[1] = @"inet";
  v9[2] = @"apls";
  v9[3] = @"cert";
  v9[4] = @"keys";
  v9[5] = @"idnt";
  v5 = 1;
  while (1)
  {
    if (cf2)
    {
      v6 = v9[v4];
      if (v6)
      {
        if (CFEqual(v9[v4], cf2))
        {
          break;
        }
      }
    }

    v5 = v4++ < 5;
    if (v4 == 6)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  if (a2)
  {
    *a2 = v6;
  }

LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

BOOL SecPolicyAddChainLengthOptions(__CFDictionary *a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  if (v3)
  {
    CFDictionaryAddValue(a1, @"ChainLength", v3);
    CFRelease(v3);
  }

  return v3 != 0;
}

OSStatus SecStaticCodeCreateWithPathAndAttributes(CFURLRef path, SecCSFlags flags, CFDictionaryRef attributes, SecStaticCodeRef *staticCode)
{
  if (flags >= 2)
  {
    Security::MacOSError::throwMe(0xFFFEFA02);
  }

  v28 = 0xAAAAAAAAAAAAAA00;
  v30 = 0xAAAAAAAAAAAAAA00;
  v25 = 0xFFFFFFFF00000000;
  v26 = 0;
  v27 = 0;
  v29 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  if (!attributes)
  {
LABEL_24:
    v14 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
    Security::SecCFObject::allocate(0x298, *(v14 + 200), v15);
    Security::cfString(__p, path);
    if (v22 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    Security::CodeSigning::DiskRep::bestGuess(v16, &v25);
  }

  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v19 = -1431655766;
  v20 = -1431655766;
  v18 = -1431655766;
  if (Security::cfscan(attributes, "{%O=%d}", attributes, staticCode, @"UniversalFileOffset", &v18))
  {
    v27 = v18;
LABEL_18:
    if (Security::cfscan(attributes, "{%O=%s}", v6, @"bundleversion", v23))
    {
      v13 = v23;
      if (v24 < 0)
      {
        v13 = v23[0];
      }

      v26 = v13;
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_24;
  }

  if (Security::cfscan(attributes, "{%O=%s}", v6, @"architecture", __p))
  {
    if (v22 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = NXGetArchInfoFromName(v8);
    if (v9)
    {
      v10 = *&v9->cputype;
    }

    else
    {
      v10 = 0;
    }

    v25 = v10;
    goto LABEL_18;
  }

  if (Security::cfscan(attributes, "{%O=%d,%O=%d}", v7, @"architecture", &v20, @"subarchitecture", &v19))
  {
    v12 = v19;
    v11 = v20;
  }

  else
  {
    if (!Security::cfscan(attributes, "{%O=%d}", v6, @"architecture", &v20))
    {
      goto LABEL_18;
    }

    v11 = v20;
    v12 = -1;
  }

  v25 = __PAIR64__(v12, v11);
  goto LABEL_18;
}

void sub_18880D234(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  switch(a2)
  {
    case 6:
      v29 = __cxa_begin_catch(a1);
      if (v29[36] == 8)
      {
        break;
      }

LABEL_10:
      (*(*v29 + 24))(v29);
      break;
    case 5:
      goto LABEL_9;
    case 4:
      v29 = __cxa_begin_catch(a1);
      v31 = v29[36];
      if (v31 > 0x1A)
      {
        goto LABEL_10;
      }

      v32 = 1 << v31;
      if ((v32 & 0x800108) == 0 && (v32 & 0x4014000) == 0)
      {
        goto LABEL_10;
      }

      break;
    case 3:
LABEL_9:
      v30 = __cxa_begin_catch(a1);
      (*(*v30 + 24))(v30);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v33);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x18880D1F4);
}

void *SecPolicyCreatePassbookCardSigner(void *a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v5))
  {
    v6 = SecPolicyAddChainLengthOptions(v5, 3);
    v7 = 0;
    if (a2 && v6)
    {
      CFDictionaryAddValue(v5, @"SubjectOrganizationalUnit", a2);
      add_leaf_marker_value(v5, &oidAppleInstallerPackagingSigningExternal, a1);
      add_element(v5, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.1");
      add_eku(v5, oidAppleExtendedKeyUsagePassbook);
      v7 = SecPolicyCreate(@"1.2.840.113635.100.1.22", @"ApplePassbook", v5);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

void add_leaf_marker_value(const __CFDictionary *a1, uint64_t a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = *MEMORY[0x1E695E480];
    if (a3)
    {
      v7 = SecDERItemCopyOIDDecimalRepresentation(*MEMORY[0x1E695E480], a2);
      values = a3;
      keys[0] = v7;
      v8 = CFDictionaryCreate(v6, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      v8 = CFDataCreate(*MEMORY[0x1E695E480], *a2, v4);
    }

    add_element(a1, @"LeafMarkerOid", v8);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t SecCMSVerifySignedData(const __CFData *a1, const __CFData *a2, void *a3, SecTrustRef *a4, const __CFArray *a5, uint64_t *a6, CFDictionaryRef *a7)
{
  values = 0;
  v8 = SecCMSVerifySignedData_internal(a1, a2, a3, a4, a5, a6, &values);
  v9 = values;
  if (a7 && !v8 && values)
  {
    *a7 = CFDictionaryCreate(*MEMORY[0x1E695E480], &kSecCMSSignedAttributes, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = values;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v8;
}

CFStringRef SecFrameworkCopyLocalizedString(const __CFString *a1, const __CFString *a2)
{
  Bundle = SecFrameworkGetBundle();
  if (Bundle)
  {

    return CFBundleCopyLocalizedString(Bundle, a1, a1, a2);
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    return a1;
  }
}

void addSignedAttribues(void *a1, void *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v2 certificates];

  if (v4)
  {
    v5 = [v2 certificates];
    v6 = [v5 allObjects];
    [v3 setObject:v6 forKeyedSubscript:kSecCMSAllCerts];
  }

  v81 = v2;
  v7 = [v2 signers];
  v8 = [v7 objectAtIndexedSubscript:0];

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v9 = [v8 protectedAttributes];
  v10 = [v9 countByEnumeratingWithState:&v83 objects:v93 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v84;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v84 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v83 + 1) + 8 * i);
        v15 = [v14 attributeType];
        v16 = [v15 OIDBytes];

        v17 = [v14 attributeValues];
        v18 = [v17 mutableCopy];

        v19 = [v3 objectForKey:v16];
        v20 = v19;
        if (v19)
        {
          [v19 addObjectsFromArray:v18];
        }

        else
        {
          [v3 setObject:v18 forKey:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v83 objects:v93 count:16];
    }

    while (v11);
  }

  v21 = [v8 unprotectedAttributes];
  [v21 removeAllObjects];

  v22 = v3;
  v23 = getSigningTime(v8);
  [v22 setObject:v23 forKeyedSubscript:kSecCMSSignDate];

  v24 = v22;
  v25 = MEMORY[0x1E69B17C0];
  v26 = *MEMORY[0x1E69B1710];
  v27 = v8;
  v28 = [v25 OIDWithString:v26 error:0];
  v29 = [v27 getAttributesWithType:v28];

  if (v29)
  {
    if ([v29 count] >= 2)
    {
      v30 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v29 count];
        *buf = 67109120;
        LODWORD(v96) = v31;
        _os_log_impl(&dword_1887D2000, v30, OS_LOG_TYPE_DEFAULT, "too many hash agility attributes (%d), skipping", buf, 8u);
      }

      goto LABEL_27;
    }

    v32 = [v29 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = objc_alloc(MEMORY[0x1E69B1778]);
      *&v89 = 0;
      v34 = [v33 initWithAttribute:v32 error:&v89];
      v30 = v89;
      if (!v34)
      {
LABEL_24:
        v34 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v96 = v30;
          _os_log_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEFAULT, "skipping hash agility attribute that failed to decode: %@", buf, 0xCu);
        }

        goto LABEL_26;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v30 = 0;
        goto LABEL_24;
      }

      v34 = v32;
      v30 = 0;
      if (!v34)
      {
        goto LABEL_24;
      }
    }

    v35 = [v34 hashAgilityValue];
    [v24 setObject:v35 forKeyedSubscript:kSecCMSHashAgility];

LABEL_26:
LABEL_27:
  }

  v36 = v27;
  v37 = v24;
  v38 = [MEMORY[0x1E69B17C0] OIDWithString:*MEMORY[0x1E69B1718] error:0];
  v39 = [v36 getAttributesWithType:v38];

  if (!v39)
  {
    goto LABEL_57;
  }

  if ([v39 count] >= 2)
  {
    v40 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v39 count];
      *buf = 67109120;
      LODWORD(v96) = v41;
      _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "too many hash agility V2 attributes (%d), skipping", buf, 8u);
    }

    goto LABEL_56;
  }

  v42 = [v39 objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = 0;
      goto LABEL_53;
    }

    v44 = v42;
    v40 = 0;
    if (!v44)
    {
      goto LABEL_53;
    }

LABEL_37:
    v79 = v36;
    v45 = [v44 hashAgilityValues];
    v82 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v45, "count")}];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v46 = v45;
    v47 = [v46 countByEnumeratingWithState:&v89 objects:buf count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v90;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v90 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v89 + 1) + 8 * j);
          v88 = 0;
          v52 = [MEMORY[0x1E69B17C0] OIDWithString:v51 error:&v88];
          v53 = v88;
          if (v52)
          {
            v54 = [v52 OIDBytes];
            memset(v94, 170, sizeof(v94));
            *v94 = [v54 length];
            *&v94[8] = [v54 bytes];
            OID = SECOID_FindOID(v94);
            if (OID)
            {
              v56 = *(OID + 16);
            }

            else
            {
              v56 = 0;
            }

            v57 = [v46 objectForKeyedSubscript:v51];
            v58 = [MEMORY[0x1E696AD98] numberWithLongLong:v56];
            [v82 setObject:v57 forKey:v58];
          }

          else
          {
            v54 = secLogObjForScope("SecWarning");
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *v94 = 138412290;
              *&v94[4] = v51;
              _os_log_impl(&dword_1887D2000, v54, OS_LOG_TYPE_DEFAULT, "skipping hash agility entry with invalid OID: %@", v94, 0xCu);
            }
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v89 objects:buf count:16];
      }

      while (v48);
    }

    v59 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v82];

    [v37 setObject:v59 forKeyedSubscript:kSecCMSHashAgilityV2];
    v36 = v79;
    v42 = v77;
    v39 = v78;
    v60 = v75;
    v40 = v76;
    goto LABEL_55;
  }

  v43 = objc_alloc(MEMORY[0x1E69B1780]);
  v87 = 0;
  v44 = [v43 initWithAttribute:v42 error:&v87];
  v40 = v87;
  if (v44)
  {
    goto LABEL_37;
  }

LABEL_53:
  v60 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v96 = v40;
    _os_log_impl(&dword_1887D2000, v60, OS_LOG_TYPE_DEFAULT, "skipping hash agility V2 attribute that failed to decode: %@", buf, 0xCu);
  }

LABEL_55:

LABEL_56:
LABEL_57:

  v61 = v37;
  v62 = MEMORY[0x1E69B17C0];
  v63 = *MEMORY[0x1E69B1708];
  v64 = v36;
  v65 = [v62 OIDWithString:v63 error:0];
  v66 = [v64 getAttributesWithType:v65];

  if (v66)
  {
    if ([v66 count] >= 2)
    {
      v67 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = [v66 count];
        *buf = 67109120;
        LODWORD(v96) = v68;
        _os_log_impl(&dword_1887D2000, v67, OS_LOG_TYPE_DEFAULT, "too many expiration time attributes (%d), skipping", buf, 8u);
      }

      goto LABEL_71;
    }

    v69 = [v66 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = objc_alloc(MEMORY[0x1E69B1770]);
      *&v89 = 0;
      v71 = [v70 initWithAttribute:v69 error:&v89];
      v67 = v89;
      if (!v71)
      {
LABEL_68:
        v71 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v96 = v67;
          _os_log_impl(&dword_1887D2000, v71, OS_LOG_TYPE_DEFAULT, "skipping expration time that failed to decode: %@", buf, 0xCu);
        }

        goto LABEL_70;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v67 = 0;
        goto LABEL_68;
      }

      v71 = v69;
      v67 = 0;
      if (!v71)
      {
        goto LABEL_68;
      }
    }

    v72 = [v71 expirationTime];
    [v61 setObject:v72 forKeyedSubscript:kSecCMSExpirationDate];

LABEL_70:
LABEL_71:
  }

  v73 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v61];
  *a2 = v73;

  v74 = *MEMORY[0x1E69E9840];
}

OSStatus SecTrustGetTrustResult(SecTrustRef trust, SecTrustResultType *result)
{
  v3 = -50;
  if (trust)
  {
    if (result)
    {
      SecTrustEvaluateIfNecessary(trust);
      v5 = *(trust + 17);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 0x40000000;
      v6[2] = __SecTrustGetTrustResult_block_invoke;
      v6[3] = &__block_descriptor_tmp_100_14689;
      v6[4] = result;
      v6[5] = trust;
      dispatch_sync(v5, v6);
      return 0;
    }
  }

  return v3;
}

void SecItemFetchCurrentItemDataAcrossAllDevices(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = _os_activity_create(&dword_1887D2000, "SecItemFetchCurrentItemDataAcrossAllDevices", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v13, &state);
  v14 = objc_autoreleasePoolPush();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __SecItemFetchCurrentItemDataAcrossAllDevices_block_invoke;
  v20[3] = &unk_1E70DECC0;
  v15 = v12;
  v21 = v15;
  v16 = SecuritydXPCProxyObject(0, v20);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __SecItemFetchCurrentItemDataAcrossAllDevices_block_invoke_2;
  v18[3] = &unk_1E70DEDB0;
  v17 = v15;
  v19 = v17;
  [v16 secItemFetchCurrentItemAcrossAllDevices:v9 identifier:v10 viewHint:v11 fetchCloudValue:a4 complete:v18];

  objc_autoreleasePoolPop(v14);
  os_activity_scope_leave(&state);
}

id SecuritydXPCProxyObject(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (gSecurityd)
  {
    v4 = *(gSecurityd + 704);
    if (v4)
    {
      v5 = v4;
LABEL_8:
      v6 = v5;
      goto LABEL_10;
    }
  }

  if (SecuritydXPCProxyObject_onceToken != -1)
  {
    dispatch_once(&SecuritydXPCProxyObject_onceToken, &__block_literal_global_2066);
  }

  if (SecuritydXPCProxyObject_rpc)
  {
    v5 = [SecuritydXPCProxyObject_rpc protocolWithSync:a1 errorHandler:v3];
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = @"Could not create SecuritydXPCClient";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"securityd" code:-1 userInfo:v8];
  v3[2](v3, v9);

  v6 = 0;
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t SecKeychainIsStaticPersistentRefsEnabled()
{
  v7 = *MEMORY[0x1E69E9840];
  if (SecKeychainStaticPersistentRefsEnabledOverrideSet == 1)
  {
    v0 = persistentRefOverrideLastValue;
    if (persistentRefOverrideLastValue != SecKeychainStaticPersistentRefsEnabledOverride)
    {
      v1 = secLogObjForScope("octagon");
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
        if (SecKeychainStaticPersistentRefsEnabledOverride)
        {
          v2 = @"enabled";
        }

        else
        {
          v2 = @"disabled";
        }

        v5 = 138412290;
        v6 = v2;
        _os_log_impl(&dword_1887D2000, v1, OS_LOG_TYPE_DEFAULT, "Static Persistent Refs are %@ (overridden)", &v5, 0xCu);
      }

      v0 = SecKeychainStaticPersistentRefsEnabledOverride;
      persistentRefOverrideLastValue = SecKeychainStaticPersistentRefsEnabledOverride;
    }
  }

  else
  {
    v0 = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v0 & 1;
}

void *SecPolicyCreateiPhoneApplicationSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddAppleAnchorOptions(v1))
  {
    goto LABEL_10;
  }

  if (os_variant_allows_internal_security_policies())
  {
    CFDictionaryAddValue(v1, @"SubjectCommonNameTEST", @"Apple iPhone OS Application Signing");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.3.1");
  }

  else
  {
    CFDictionaryAddValue(v1, @"SubjectCommonName", @"Apple iPhone OS Application Signing");
  }

  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.3");
  add_eku(v1, 0);
  add_eku(v1, &oidAnyExtendedKeyUsage);
  add_eku(v1, &oidExtendedKeyUsageCodeSigning);
  CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Certification Authority");
  if (SecPolicyAddChainLengthOptions(v1, 3))
  {
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.54", @"iPhoneApplicationSigning", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

CFArrayRef Security::makeCFArray(Security *this, const void *a2, ...)
{
  va_start(va, a2);
  va_copy(&v3[1], va);
  v3[0] = a2;
  return CFArrayCreate(0, v3, 1, MEMORY[0x1E695E9C0]);
}

const void **Security::CFRef<__SecPolicy *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void __SecTrustEvaluateAsyncWithError_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    Error = SecCopyLastError(a2);
    v4 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
    if (Error)
    {

      CFRelease(Error);
    }
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v5 = *(a1 + 40);
    v6 = *(v5 + 136);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustEvaluateAsyncWithError_block_invoke_2;
    v9[3] = &unk_1E70E2E60;
    v9[4] = &v10;
    v9[5] = v5;
    dispatch_sync(v6, v9);
    SecTrustLogFailureDescription(*(a1 + 40), *(v11 + 6));
    v7 = SecTrustCopyError(*(a1 + 40));
    *(v11 + 6);
    v8 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
    if (v7)
    {
      CFRelease(v7);
    }

    _Block_object_dispose(&v10, 8);
  }
}

CFErrorRef SecTrustCopyError(uint64_t a1)
{
  v106 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = 0;
    v2 = *(a1 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustCopyError_block_invoke;
    block[3] = &unk_1E70E3390;
    block[4] = &v47;
    block[5] = a1;
    dispatch_sync(v2, block);
    v3 = 0;
    v4 = *(v48 + 6);
    if (v4 == 1 || v4 == 4)
    {
LABEL_84:
      _Block_object_dispose(&v47, 8);
      goto LABEL_85;
    }

    values = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2000000000;
    v78 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2000000000;
    v74 = 0;
    v6 = *(a1 + 136);
    v99 = MEMORY[0x1E69E9820];
    v100 = 0x40000000;
    v101 = __SecTrustCopyErrorStrings_block_invoke;
    v102 = &unk_1E70E33B8;
    v104 = &v71;
    v105 = a1;
    v103 = &v75;
    dispatch_sync(v6, &v99);
    if (!v76[3])
    {
      v20 = v72[3];
      if (v20)
      {
        v72[3] = 0;
        CFRelease(v20);
      }

      v21 = 0;
      v22 = -26276;
      v23 = 1;
      goto LABEL_70;
    }

    if (SecTrustCopyErrorStrings_onceToken != -1)
    {
      dispatch_once(&SecTrustCopyErrorStrings_onceToken, &__block_literal_global_410);
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x2000000000;
    Mutable = CFStringCreateMutable(0, 0);
    v63 = 0;
    v64 = &v63;
    v65 = 0x2000000000;
    v66 = 11;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2000000000;
    v62 = -67671;
    v55 = 0;
    v56 = &v55;
    v57 = 0x2000000000;
    v58 = -1;
    v51 = 0;
    v52 = &v51;
    v53 = 0x2000000000;
    v54 = 0xAAAAAAAAAAAAAAAALL;
    Count = CFArrayGetCount(v76[3]);
    v52[3] = 0;
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i < v8; v52[3] = i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v76[3], i);
        if (CFDictionaryGetCount(ValueAtIndex))
        {
          v11 = CFArrayGetValueAtIndex(v72[3], v52[3]);
          v12 = SecCertificateCopySubjectSummary(v11);
          v13 = SecFrameworkCopyLocalizedString(@"Certificate %ld “%@” has errors: ", @"Trust");
          CFStringAppendFormat(v68[3], 0, v13, v52[3], v12);
          if (v12)
          {
            CFRelease(v12);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          v79 = 0;
          v80 = &v79;
          v81 = 0x2000000000;
          LOBYTE(v82) = 1;
          context = MEMORY[0x1E69E9820];
          v90 = 0x40000000;
          v91 = __SecTrustCopyErrorStrings_block_invoke_3;
          v92 = &unk_1E70E3660;
          v93 = &v63;
          v94 = &v55;
          v95 = &v51;
          v96 = &v59;
          v97 = &v79;
          v98 = &v67;
          CFDictionaryApplyFunction(ValueAtIndex, apply_block_2_14760, &context);
          CFStringAppend(v68[3], @";");
          _Block_object_dispose(&v79, 8);
        }

        i = v52[3] + 1;
      }
    }

    v14 = v76[3];
    if (v14)
    {
      v76[3] = 0;
      CFRelease(v14);
    }

    v15 = v56[3];
    if (v15 == -1)
    {
      v15 = 0;
      v56[3] = 0;
    }

    v16 = CFArrayGetValueAtIndex(v72[3], v15);
    v17 = SecCertificateCopySubjectSummary(v16);
    v18 = *(v64 + 6);
    if (v18 <= 4)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v19 = @"“%@” certificate is using a broken key size";
        }

        else if (v18 == 3)
        {
          v19 = @"“%@” certificate is using a broken signature algorithm";
        }

        else
        {
          v19 = @"User or administrator set “%@” certificate as distrusted";
        }

        goto LABEL_59;
      }

      if (!v18)
      {
        v19 = @"“%@” certificate is blocked";
        goto LABEL_59;
      }

      if (v18 == 1)
      {
        v19 = @"“%@” certificate is revoked";
        goto LABEL_59;
      }
    }

    else
    {
      if (v18 <= 7)
      {
        if (v18 == 5)
        {
          v19 = @"“%@” certificate is not standards compliant";
        }

        else
        {
          if (v18 == 6)
          {
            v24 = SecFrameworkCopyLocalizedString(@"%@ certificates do not meet pinning requirements", @"Trust");
            v25 = CFStringCreateMutable(0, 0);
            v85 = 0;
            v86 = &v85;
            v87 = 0x2000000000;
            v88 = 0;
            v26 = *(a1 + 136);
            v79 = MEMORY[0x1E69E9820];
            v80 = 0x40000000;
            v81 = __SecTrustCopyChainSummary_block_invoke;
            v82 = &unk_1E70E3688;
            v83 = &v85;
            v84 = a1;
            dispatch_sync(v26, &v79);
            v27 = CFArrayGetCount(v86[3]);
            if (v27 >= 1)
            {
              v28 = v27;
              for (j = 0; j != v28; ++j)
              {
                if (j)
                {
                  CFStringAppend(v25, @",");
                }

                v30 = CFArrayGetValueAtIndex(v86[3], j);
                v31 = SecCertificateCopySubjectSummary(v30);
                CFStringAppendFormat(v25, 0, @"%@", v31);
                if (v31)
                {
                  CFRelease(v31);
                }
              }
            }

            _Block_object_dispose(&v85, 8);
            if (v17)
            {
              CFRelease(v17);
            }

            v17 = v25;
LABEL_60:
            if (v24 && v17)
            {
              v32 = CFStringCreateWithFormat(0, 0, v24, v17);
            }

            else
            {
              v32 = 0;
              v21 = 0;
              if (!v24)
              {
LABEL_65:
                if (v17)
                {
                  CFRelease(v17);
                }

                v33 = v72[3];
                if (v33)
                {
                  v72[3] = 0;
                  CFRelease(v33);
                }

                values = v68[3];
                v22 = *(v60 + 6);
                _Block_object_dispose(&v51, 8);
                _Block_object_dispose(&v55, 8);
                _Block_object_dispose(&v59, 8);
                _Block_object_dispose(&v63, 8);
                _Block_object_dispose(&v67, 8);
                v23 = values == 0;
LABEL_70:
                _Block_object_dispose(&v71, 8);
                _Block_object_dispose(&v75, 8);
                if (!v21)
                {
                  v21 = SecCopyErrorMessageString(v22, v34);
                }

                if (v23)
                {
                  values = SecCopyErrorMessageString(v22, v34);
                }

                v35 = MEMORY[0x1E695E650];
                v36 = CFDictionaryCreate(0, MEMORY[0x1E695E650], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v37 = *MEMORY[0x1E695E638];
                v38 = v22;
                v39 = CFErrorCreate(0, *MEMORY[0x1E695E638], v22, v36);
                if (v36)
                {
                  CFRelease(v36);
                }

                v40 = values;
                if (values)
                {
                  values = 0;
                  CFRelease(v40);
                }

                v41 = *MEMORY[0x1E695E670];
                context = *v35;
                v90 = v41;
                v99 = v21;
                v100 = v39;
                v42 = CFDictionaryCreate(0, &context, &v99, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v3 = CFErrorCreate(0, v37, v38, v42);
                if (v42)
                {
                  CFRelease(v42);
                }

                if (v21)
                {
                  CFRelease(v21);
                }

                if (v39)
                {
                  CFRelease(v39);
                }

                goto LABEL_84;
              }
            }

            CFRelease(v24);
            v21 = v32;
            goto LABEL_65;
          }

          v19 = @"“%@” certificate is not trusted";
        }

LABEL_59:
        v24 = SecFrameworkCopyLocalizedString(v19, @"Trust");
        goto LABEL_60;
      }

      switch(v18)
      {
        case 8:
          v19 = @"“%@” certificate is not permitted for this usage";
          goto LABEL_59;
        case 9:
          v19 = @"“%@” certificate name does not match input";
          goto LABEL_59;
        case 10:
          v19 = @"“%@” certificate is expired";
          goto LABEL_59;
      }
    }

    v19 = @"Unknown trust error for “%@” certificate";
    goto LABEL_59;
  }

  v3 = 0;
LABEL_85:
  v43 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sec_protocol_metadata_copy_negotiated_protocol(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_negotiated_protocol_block_invoke;
  v3[3] = &unk_1E70D5B70;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_negotiated_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = strdup(v4);
    }
  }

  return a2 != 0;
}

const __CFArray *SecCertificateCopyDNSNames(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (*(a1 + 456))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v4 = SecCertificateParseGeneralNames(*(a1 + 456) + 24, Mutable, appendDNSNamesFromGeneralNames);
    if (Mutable)
    {
      v5 = v4 == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      if (CFArrayGetCount(Mutable) > 0)
      {
        return Mutable;
      }
    }

    else if (!Mutable)
    {
      goto LABEL_10;
    }

    CFRelease(Mutable);
  }

LABEL_10:
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent((a1 + 184), Mutable, appendDNSNamesFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t appendDNSNamesFromX501Name(__CFArray *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, &oidCommonName);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      if (SecFrameworkIsDNSName(v9))
      {
        CFArrayAppendValue(a1, v10);
      }

      CFRelease(v10);
      return 0;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

uint64_t SECOID_FindOID(uint64_t a1)
{
  pthread_once(&hash_once, InitOIDHashOnce);
  v2 = oidhash;
  v3 = (*(oidhash + 16))(a1);
  v4 = *v2 + 8 * ((-1640531527 * v3) >> *(v2 + 12));
  v5 = *v4;
  if (!*v4)
  {
    goto LABEL_6;
  }

  v6 = v3;
  while (1)
  {
    v7 = v5;
    if (*(v5 + 8) == v6)
    {
      if ((*(v2 + 24))(a1, *(v5 + 16)))
      {
        break;
      }
    }

    v5 = *v7;
    v4 = v7;
    if (!*v7)
    {
      goto LABEL_6;
    }
  }

  if (!*v4 || (result = *(*v4 + 24)) == 0)
  {
LABEL_6:
    ThreadErrInfo = PR_getThreadErrInfo(1, &v10);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00100000000;
    }

    return 0;
  }

  return result;
}

uint64_t SECITEM_Hash(uint64_t *a1)
{
  v5 = 0;
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1[1];
  do
  {
    *(&v5 | v2 & 3) ^= *(v3 + v2);
    ++v2;
  }

  while (v1 != v2);
  return v5;
}

uint64_t SECITEM_ItemsAreEqual(size_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 && v4)
  {
    return memcmp(v3, v4, v2) == 0;
  }

  else
  {
    return v3 == v4;
  }
}

uint64_t SecPolicyCheckCertSubjectCommonNameTEST(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (!cf)
  {
    return v2;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    return 0;
  }

  v5 = SecCertificateCopyCommonNames(a1);
  v6 = v5;
  if (v5 && CFArrayGetCount(v5) == 1)
  {
    v2 = 1;
LABEL_14:
    CFRelease(v6);
    return v2;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
  v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"TEST %@ TEST", v2);
  if (!CFEqual(v2, ValueAtIndex))
  {
    if (!v8)
    {
      v2 = 0;
      if (!v6)
      {
        return v2;
      }

      goto LABEL_14;
    }

    v2 = CFEqual(v8, ValueAtIndex) != 0;
    goto LABEL_12;
  }

  v2 = 1;
  if (v8)
  {
LABEL_12:
    CFRelease(v8);
  }

  if (v6)
  {
    goto LABEL_14;
  }

  return v2;
}

CFMutableArrayRef SecCertificateCopyCommonNames(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent((a1 + 184), Mutable, appendCommonNamesFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendCommonNamesFromX501Name(__CFArray *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, &oidCommonName);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(a1, v9);
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

CFTypeRef SecPolicyCheckCertSubjectOrganizationalUnit(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID() && (v5 = SecCertificateCopyOrganizationalUnit(a1)) != 0)
    {
      v6 = v5;
      v2 = (CFArrayGetCount(v5) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0), CFEqual(v2, ValueAtIndex)));
      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFMutableArrayRef SecCertificateCopyOrganizationalUnit(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent((a1 + 184), Mutable, appendOrganizationalUnitFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendOrganizationalUnitFromX501Name(__CFArray *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, &oidOrganizationalUnitName);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(a1, v9);
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

CFTypeRef SecPolicyCheckCertSubjectCommonName(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID() && (v5 = SecCertificateCopyCommonNames(a1)) != 0)
    {
      v6 = v5;
      v2 = (CFArrayGetCount(v5) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0), CFEqual(v2, ValueAtIndex)));
      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFStringRef *Security::CFTempString::CFTempString<char const*>(CFStringRef *a1, const char *a2)
{
  if (a2)
  {
    v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (!v4)
    {
      v4 = CFStringCreateWithCString(0, a2, 0x600u);
      if (!v4)
      {
        Security::CFError::throwMe(0);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return a1;
}

const void **Security::CFRef<__CFDate const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t Security::CodeSigning::MachORep::signingBase(Security::CodeSigning::MachORep *this)
{
  v1 = (*(*this + 80))(this);

  return Security::Universal::archOffset(v1);
}

uint64_t Security::Universal::archOffset(Security::Universal *this)
{
  v1 = *(this + 4);
  if (*(this + 1))
  {
    v3 = Security::Universal::bestNativeArch(this);
    v1 += *(Security::Universal::findArch(*(this + 1), *(this + 4), v3, SHIDWORD(v3)) + 2);
  }

  return v1;
}

void sub_18880FDDC(_Unwind_Exception *a1)
{
  Security::CFRef<__CFDictionary const*>::~CFRef((v2 - 24));
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

unint64_t Security::MachOBase::version(Security::MachOBase *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  Command = *(this + 2);
  if (Command)
  {
    do
    {
      cmd = Command->cmd;
      v10 = *(this + 33);
      v11 = bswap32(Command->cmd);
      if (*(this + 33))
      {
        cmd = v11;
      }

      if (cmd == 50)
      {
        cmdsize = Command->cmdsize;
        v18 = bswap32(cmdsize);
        if (*(this + 33))
        {
          cmdsize = v18;
        }

        if (cmdsize <= 0x17)
        {
          goto LABEL_56;
        }

        if (a2)
        {
          v19 = Command[1].cmd;
          v20 = bswap32(v19);
          if (*(this + 33))
          {
            v19 = v20;
          }

          *a2 = v19;
        }

        if (a3)
        {
          v21 = Command[1].cmdsize;
          v22 = bswap32(v21);
          if (v10)
          {
            v21 = v22;
          }

          *a3 = v21;
        }

        if (a4)
        {
          p_cmdsize = &Command[2];
          goto LABEL_51;
        }

        return 1;
      }

      Command = Security::MachOBase::nextCommand(this, Command);
    }

    while (Command);
    v12 = *(this + 2);
    if (v12)
    {
      while (1)
      {
        v13 = v12->cmd;
        v10 = *(this + 33);
        v14 = bswap32(v12->cmd);
        if (*(this + 33))
        {
          v13 = v14;
        }

        if (v13 <= 0x30 && ((1 << v13) & 0x1803000000000) != 0)
        {
          break;
        }

        result = Security::MachOBase::nextCommand(this, v12);
        v12 = result;
        if (!result)
        {
          return result;
        }
      }

      v24 = v12->cmdsize;
      v25 = bswap32(v24);
      if (*(this + 33))
      {
        v24 = v25;
      }

      if (v24 > 0xF)
      {
        if (v13 > 46)
        {
          if (v13 == 47)
          {
            v26 = 3;
          }

          else
          {
            if (v13 != 48)
            {
              goto LABEL_40;
            }

            v26 = 4;
          }
        }

        else if (v13 == 36)
        {
          v26 = 1;
        }

        else
        {
          if (v13 == 37)
          {
            v26 = 2;
            goto LABEL_43;
          }

LABEL_40:
          v26 = 0;
        }

LABEL_43:
        if (a2)
        {
          *a2 = v26;
        }

        if (a3)
        {
          v27 = v12[1].cmd;
          v28 = bswap32(v27);
          if (v10)
          {
            v27 = v28;
          }

          *a3 = v27;
        }

        if (a4)
        {
          p_cmdsize = &v12[1].cmdsize;
LABEL_51:
          v29 = *p_cmdsize;
          v30 = bswap32(v29);
          if (v10)
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }

          *a4 = v31;
        }

        return 1;
      }

LABEL_56:
      Security::UnixError::throwMe(8);
    }
  }

  return 0;
}

CFDataRef Security::CFMake::make(Security::CFMake *this)
{
  while (Security::CFMunge::next(this) == 64)
  {
    v2 = (*this)++;
    v3 = *(v2 + 1);
    if (v3 == 69)
    {
      *this = v2 + 2;
      v6 = *(this + 1);
      v7 = *v6;
      *v6 += 2;
      *(this + 6) = *v7;
    }

    else if (v3 == 65)
    {
      *this = v2 + 2;
      v4 = *(this + 1);
      v5 = (*v4)++;
      *(this + 2) = *v5;
    }
  }

  MutableCopy = 0;
  v9 = Security::CFMunge::next(this);
  if (v9 > 0x5A)
  {
    if (v9 <= 122)
    {
      if (v9 != 91)
      {
        if (v9 == 93)
        {
          return MutableCopy;
        }

        goto LABEL_45;
      }

      ++*this;
      if (Security::CFMunge::next(this) == 33)
      {
        ++*this;
      }

      v15 = Security::CFMunge::next(this);
      if (v15 == 43)
      {
        ++*this;
        if (Security::CFMunge::next(this) != 37)
        {
          return 0;
        }

        ++*this;
        if (Security::CFMunge::next(this) != 79)
        {
          return 0;
        }

        v17 = *(this + 1);
        ++*this;
        v18 = (*v17)++;
        MutableCopy = CFArrayCreateMutableCopy(*(this + 2), 0, *v18);
        if (Security::CFMunge::next(this) != 125)
        {
          goto LABEL_52;
        }
      }

      else
      {
        MutableCopy = Security::makeCFMutableArray(v15, v16);
LABEL_52:
        while (Security::CFMunge::next(this) != 93)
        {
          v34 = Security::CFMake::make(this);
          if (!v34)
          {
            goto LABEL_62;
          }

          v35 = v34;
          CFArrayAppendValue(MutableCopy, v34);
          CFRelease(v35);
        }
      }

LABEL_37:
      ++*this;
      return MutableCopy;
    }

    if (v9 == 125)
    {
      return MutableCopy;
    }

    if (v9 != 123)
    {
      goto LABEL_45;
    }

    ++*this;
    if (Security::CFMunge::next(this) == 33)
    {
      ++*this;
    }

    if (Security::CFMunge::next(this) == 43)
    {
      ++*this;
      if (Security::CFMunge::next(this) != 37)
      {
        return 0;
      }

      ++*this;
      if (Security::CFMunge::next(this) != 79)
      {
        return 0;
      }

      v13 = *(this + 1);
      ++*this;
      v14 = (*v13)++;
      MutableCopy = CFDictionaryCreateMutableCopy(*(this + 2), 0, *v14);
      if (Security::CFMunge::next(this) == 125)
      {
        goto LABEL_37;
      }
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*(this + 2), 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (!MutableCopy || Security::CFMake::add(this, MutableCopy))
    {
      return MutableCopy;
    }

LABEL_62:
    CFRelease(MutableCopy);
    return 0;
  }

  if (v9 <= 36)
  {
    if (!v9)
    {
      return MutableCopy;
    }

    if (v9 == 35)
    {
      MutableCopy = 0;
      v10 = *this;
      *this += 2;
      v11 = v10[1];
      if (v11 <= 83)
      {
        if (v11 != 70)
        {
          if (v11 == 78)
          {
            v12 = MEMORY[0x1E695E738];
            return *v12;
          }

          return MutableCopy;
        }
      }

      else
      {
        if (v11 == 84)
        {
LABEL_14:
          v12 = MEMORY[0x1E695E4D0];
          return *v12;
        }

        if (v11 != 102)
        {
          if (v11 == 116)
          {
            goto LABEL_14;
          }

          return MutableCopy;
        }
      }

      v12 = MEMORY[0x1E695E4C0];
      return *v12;
    }

LABEL_45:
    v29 = **this;
    if ((v29 & 0x80000000) != 0)
    {
      v38 = __maskrune(**this, 0x100uLL);
    }

    else
    {
      v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60);
      if (v29 == 45 || (*(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x400) != 0)
      {
        valuePtr = strtod(*this, this);
        v32 = *(this + 2);
        v33 = kCFNumberDoubleType;
        return CFNumberCreate(v32, v33, &valuePtr);
      }

      v38 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x100;
    }

    if (v38)
    {
      goto LABEL_70;
    }

    return 0;
  }

  if (v9 != 37)
  {
    if (v9 == 39)
    {
LABEL_70:

      return Security::CFMake::makestring(this);
    }

    goto LABEL_45;
  }

  MutableCopy = 0;
  v19 = *this;
  *this += 2;
  v20 = *(v19 + 1);
  if (v20 > 99)
  {
    if (v20 == 100)
    {
      v41 = *(this + 1);
      v42 = *v41;
      *v41 += 2;
      LODWORD(valuePtr) = *v42;
      v32 = 0;
      v33 = kCFNumberIntType;
      return CFNumberCreate(v32, v33, &valuePtr);
    }

    if (v20 != 115)
    {
      if (v20 != 117)
      {
        return MutableCopy;
      }

      v36 = *(this + 1);
      v37 = *v36;
      *v36 += 2;
      *&valuePtr = *v37;
      v32 = 0;
      v33 = kCFNumberLongLongType;
      return CFNumberCreate(v32, v33, &valuePtr);
    }

    v47 = *(this + 1);
    v46 = *(this + 2);
    v48 = (*v47)++;
    v49 = *v48;

    return CFStringCreateWithCString(v46, v49, 0x8000100u);
  }

  else
  {
    switch(v20)
    {
      case 'B':
        v39 = *(this + 1);
        v40 = *v39;
        *v39 += 2;
        v12 = MEMORY[0x1E695E4D0];
        if (!*v40)
        {
          v12 = MEMORY[0x1E695E4C0];
        }

        return *v12;
      case 'O':
        v43 = *(this + 1);
        v44 = (*v43)++;
        v45 = *v44;

        return CFRetain(v45);
      case 'b':
        v21 = *(this + 1);
        v22 = (*v21)++;
        v23 = *v22;
        v24 = *(this + 1);
        v25 = (*v24)++;
        v26 = *v25;
        v27 = *(this + 2);

        return CFDataCreate(v27, v23, v26);
      default:
        return MutableCopy;
    }
  }
}

CFDataRef Security::cfmake<__CFDictionary const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a9;
  v11[0] = a1;
  v11[1] = &v10;
  v11[2] = 0;
  v12 = 0;
  return Security::CFMake::make(v11);
}

uint64_t Security::CFMunge::next(Security::CFMunge *this)
{
  v1 = *this;
  LOBYTE(v2) = **this;
  if (v2)
  {
    v4 = MEMORY[0x1E69E9830];
    do
    {
      if ((v2 & 0x80) != 0)
      {
        v5 = __maskrune(v2, 0x4000uLL);
        v1 = *this;
        if (!v5)
        {
LABEL_7:
          v2 = *v1;
          if (v2 != 44)
          {
            return v2;
          }
        }
      }

      else if ((*(v4 + 4 * v2 + 60) & 0x4000) == 0)
      {
        goto LABEL_7;
      }

      *this = v1 + 1;
      v2 = *++v1;
    }

    while (v2);
  }

  return v2;
}

__CFDictionary *Security::CFMake::add(Security::CFMake *this, __CFDictionary *a2)
{
  while (Security::CFMunge::next(this) != 125)
  {
    v4 = Security::CFMake::make(this);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    if (Security::CFMunge::next(this) != 61 || (++*this, (v6 = Security::CFMake::make(this)) == 0))
    {
      CFRelease(v5);
      return 0;
    }

    v7 = v6;
    CFDictionaryAddValue(a2, v5, v6);
    CFRelease(v5);
    CFRelease(v7);
  }

  ++*this;
  return a2;
}

OSStatus SecIdentityCopyPrivateKey(SecIdentityRef identityRef, SecKeyRef *privateKeyRef)
{
  v2 = *(identityRef + 3);
  *privateKeyRef = v2;
  CFRetain(v2);
  return 0;
}

OSStatus SecIdentityCopyCertificate(SecIdentityRef identityRef, SecCertificateRef *certificateRef)
{
  v2 = *(identityRef + 2);
  *certificateRef = v2;
  CFRetain(v2);
  return 0;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPKCS1v15SHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha1_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 0, v7);
}

BOOL amfi_developer_mode_status()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v3, 0, 0) && v2 == 1;
}

uint64_t amfi_launch_constraint_matches_process(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11[128] = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    if (a4)
    {
      result = 0;
      *a4 = 5;
      strcpy((a4 + 4), "No Constraint provided");
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a3 <= 0x4000)
  {
    bzero(v11, 0x400uLL);
    v10 = 5;
    if (!v4)
    {
      v4 = &v10;
    }

    v8 = *a1;
    v9 = a1[1];
    if (!__sandbox_ms() && !*v4)
    {
      result = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = 0;
  *a4 = 5;
  strcpy((a4 + 4), "Constraint too large");
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_encode_extension(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t *a6)
{
  v8 = ccder_sizeof_extension(a2, a4, a5);
  v9 = a6[1];
  if (v9 - *a6 < v8)
  {
    return 0;
  }

  result = ccder_blob_encode_body_tl();
  if ((result & 1) == 0)
  {
    return 0;
  }

  if (a5)
  {
    v11 = a6[1];
    v12 = (v11 - 1);
    if (v11)
    {
      v13 = v12 >= *a6;
    }

    else
    {
      v13 = 0;
    }

    if (!v13 || (*v12 = -1, v14 = a6[1], v15 = v14 - 1, !v14) || *a6 > v15)
    {
      __break(0x5519u);
      return result;
    }

    a6[1] = v15;
    if (!ccder_blob_encode_tl())
    {
      return 0;
    }
  }

  if (!ccder_blob_encode_body_tl())
  {
    return 0;
  }

  v16 = v9 - a6[1];

  return ccder_blob_encode_tl();
}

uint64_t ccder_sizeof_extension(uint64_t a1, uint64_t a2, int a3)
{
  v4 = ccder_sizeof();
  v5 = ccder_sizeof();
  if (a3)
  {
    result = ccder_sizeof();
  }

  else
  {
    result = 0;
  }

  if (__CFADD__(result, v5) || __CFADD__(result + v5, v4))
  {
    __break(0x5500u);
  }

  else
  {

    return ccder_sizeof();
  }

  return result;
}

unint64_t CTDecompressGeneric(char *a1, int64_t a2, char *a3, unint64_t a4, unint64_t a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = 393217;
  if (!a1)
  {
    goto LABEL_102;
  }

  v11 = a2;
  if (!a2)
  {
    goto LABEL_102;
  }

  v94 = a3;
  if (a2 <= 0)
  {
    goto LABEL_230;
  }

  v6 = a5;
  v5 = a4;
  v7 = a1;
  v8 = *a1;
  *&v96 = 0xAAAAAAAAAAAAAAAALL;
  *(&v96 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v93 = ~a4;
  if (~a4 < a5)
  {
    goto LABEL_231;
  }

  v9 = (a4 + a5);
  if (a4 + a5 < a4)
  {
    goto LABEL_230;
  }

  *&v96 = a4;
  *(&v96 + 1) = a4 + a5;
  if (a4)
  {
    v12 = &v96;
  }

  else
  {
    v12 = 0;
  }

  v95 = 0;
  if ((v8 - 2) >= 2 && (v8 - 162) >= 2)
  {
    v20 = 0;
  }

  else
  {
    *v102 = 0;
    *&v101[0] = 0;
    Signature = CTDecompressGetSignature(v8, a1, a2, v101, v102);
    if (Signature)
    {
      goto LABEL_101;
    }

    v14 = (v5 + v6);
    v15 = CTNonVariableCompressedSizeForStyle(v8);
    v16 = v11 - v15;
    if (v11 < v15)
    {
      goto LABEL_232;
    }

    v17 = v16 - *v102;
    if (v16 < *v102)
    {
      goto LABEL_232;
    }

    if (__CFADD__(*&v101[0], *v102))
    {
      goto LABEL_231;
    }

    v9 = v12;
    v18 = *&v101[0] + *v102;
    if (*&v101[0] + *v102 >= v7 == (*&v101[0] + *v102 - v7) < 0)
    {
      goto LABEL_231;
    }

    v19 = ccder_sizeof_extension(v17, 10, 0);
    v20 = v19;
    if (v5)
    {
      if (*(&v96 + 1) - v96 < v19)
      {
        goto LABEL_100;
      }

      v89 = v6;
      if (&v7[v11] < v18 || v18 < v7 || v17 > &v7[v11 - v18])
      {
        goto LABEL_230;
      }

      v21 = v19;
      v22 = ccder_encode_extension(v18, v17, &CTOidAppleMFI4AccessoryData, 10, 0, &v96);
      v20 = v21;
      v6 = v89;
      if ((v22 & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    v12 = v9;
    v9 = v14;
  }

  if (v8 > 160)
  {
    if (v8 != 163 && v8 != 161)
    {
      goto LABEL_41;
    }
  }

  else if (v8 != 1 && v8 != 3)
  {
    goto LABEL_41;
  }

  v86 = v9;
  v90 = v6;
  v92 = v20;
  v23 = ccder_sizeof_extension(36, 10, 0);
  v24 = 124;
  if ((~v8 & 0xA0) == 0)
  {
    v24 = 122;
  }

  if (v24 + 36 > v11)
  {
    goto LABEL_60;
  }

  v25 = v23;
  v6 = v8;
  v9 = v11;
  if (v5)
  {
    if (*(&v96 + 1) - v96 < v23)
    {
      goto LABEL_100;
    }

    if (__CFADD__(v7, v24))
    {
      goto LABEL_231;
    }

    if (!ccder_encode_extension(&v7[v24], 36, &CTOidAppleMFI4ProductPlanUID, 10, 0, &v96))
    {
      goto LABEL_100;
    }
  }

  else if (__CFADD__(v7, v24))
  {
    goto LABEL_231;
  }

  v20 = v92 + v25;
  if (__CFADD__(v92, v25))
  {
    goto LABEL_180;
  }

  v6 = v90;
  v9 = v86;
LABEL_41:
  v92 = v20;
  if ((v8 - 4) >= 2 && (v8 - 164) >= 2)
  {
    v31 = ccder_sizeof_extension(32, 10, 1);
    v32 = 72;
    if ((~v8 & 0xA0) == 0)
    {
      v32 = 70;
    }

    if ((v32 | 0x20uLL) > v11)
    {
      goto LABEL_60;
    }

    v33 = v31;
    if (v5)
    {
      if (*(&v96 + 1) - v96 < v31)
      {
        goto LABEL_100;
      }

      if (__CFADD__(v7, v32))
      {
        goto LABEL_231;
      }

      if (!ccder_encode_extension(&v7[v32], 32, &CTOidAppleMFI4Properties, 10, 1, &v96))
      {
        goto LABEL_100;
      }
    }

    else if (__CFADD__(v7, v32))
    {
      goto LABEL_231;
    }

    if (__CFADD__(v92, v33))
    {
      goto LABEL_180;
    }

    v92 += v33;
  }

  a3 = &leaf_5280_extensions_template;
  v85 = v12;
  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
      v27 = 0;
      v28 = &ca_5280_extensions_template;
      v29 = 33;
      v30 = 102;
      goto LABEL_59;
    }

    v26 = v8 - 164;
  }

  else
  {
    v26 = v8 - 4;
    if (v8 < 4)
    {
      v27 = 0;
      v28 = &ca_5280_extensions_template;
      v29 = 33;
      v30 = 104;
      goto LABEL_59;
    }
  }

  Signature = 393218;
  if (v26 >= 2)
  {
    goto LABEL_101;
  }

  a3 = &ca_5280_extensions_template;
  v28 = &CTOidAppleMFI4ProductPlanUID;
  v27 = 1;
  v29 = 97;
  v30 = 78;
LABEL_59:
  if (v30 + 20 > v11)
  {
LABEL_60:
    Signature = 393217;
    goto LABEL_101;
  }

  if (v5)
  {
    v10 = *(&v96 + 1);
    if (*(&v96 + 1) - v96 < v29)
    {
      goto LABEL_100;
    }

    if (v96 > *(&v96 + 1))
    {
      goto LABEL_230;
    }

    v101[0] = v96;
    v34 = v28 >= a3;
    v35 = v28 - a3;
    if (!v34 || v29 > v35)
    {
      goto LABEL_230;
    }

    v87 = v96;
    v83 = v29;
    if (!ccder_blob_encode_body())
    {
      goto LABEL_193;
    }

    if (v27)
    {
      v99 = 0xAAAAAAAAAAAAAAAALL;
      v100 = 0xAAAAAAAAAAAAAAAALL;
      if (v10 >= 0xFFFFFFFFFFFFFFD1)
      {
        goto LABEL_231;
      }

      if (v10 < 0x2F || v87 > v10 - 47)
      {
        goto LABEL_230;
      }

      v99 = v87;
      v100 = v10 - 47;
      if (__CFADD__(v7, v30))
      {
        goto LABEL_231;
      }

      if (v11 - v30 < 0x14)
      {
        goto LABEL_230;
      }

      if ((ccder_blob_encode_body() & 1) == 0)
      {
        goto LABEL_193;
      }

      memset(v102, 170, 20);
      v36 = CTDecompressCAComputeSKID(v7, v11, v102);
      if (v36)
      {
        goto LABEL_166;
      }

      if (v87 > v10 - 16)
      {
        goto LABEL_230;
      }

      v97 = v87;
      v98 = v10 - 16;
    }

    else
    {
      if (__CFADD__(v7, v30))
      {
        goto LABEL_231;
      }

      if (v11 - v30 < 0x14)
      {
        goto LABEL_230;
      }
    }

    if ((ccder_blob_encode_body() & 1) == 0)
    {
LABEL_193:
      Signature = 393226;
      goto LABEL_101;
    }

    v10 = v92 + v83;
    if (__CFADD__(v92, v83))
    {
      goto LABEL_180;
    }

    if ((ccder_blob_encode_tl() & 1) == 0)
    {
      goto LABEL_100;
    }

    ccder_sizeof();
    if ((ccder_blob_encode_tl() & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (__CFADD__(v92, v29))
    {
      goto LABEL_180;
    }

    ccder_sizeof();
  }

  v10 = ccder_sizeof();
  v95 = v10;
  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
      v38 = 37;
      goto LABEL_98;
    }

    v37 = v8 - 164;
  }

  else
  {
    v37 = v8 - 4;
    if (v8 < 4)
    {
      v38 = 39;
      goto LABEL_98;
    }
  }

  Signature = 393218;
  if (v37 >= 2)
  {
    goto LABEL_101;
  }

  v38 = 45;
LABEL_98:
  if (v5 && *(&v96 + 1) - v96 < 0x5BuLL)
  {
    goto LABEL_100;
  }

  if (__CFADD__(v7, v38))
  {
    goto LABEL_231;
  }

  v41 = &v7[v38];
  v42 = &v7[v11];
  if (v41 > &v7[v11] || v41 < v7)
  {
    goto LABEL_230;
  }

  *&v101[0] = v41;
  *(&v101[0] + 1) = 33;
  v105 = -86;
  *&v43 = 0xAAAAAAAAAAAAAAAALL;
  *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v104 = v43;
  *&v102[16] = v43;
  v103 = v43;
  *v102 = v43;
  Signature = decompressECPublicKey(v101, &CTOidSECP256r1, v102, 65);
  if (Signature)
  {
    goto LABEL_101;
  }

  if (v5)
  {
    Signature = 393226;
    if (!ccder_blob_encode_body() || (ccder_blob_encode_body() & 1) == 0)
    {
      goto LABEL_101;
    }
  }

  v95 = 91;
  v44 = v10 + 91;
  if (v10 >= 0xFFFFFFFFFFFFFFA5)
  {
    goto LABEL_180;
  }

  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
      a3 = &attestation_leaf_subject;
      v45 = &attestation_ca_subject;
      v46 = 14;
      v47 = 64;
      v48 = 164;
      v49 = 37;
      v50 = 33;
      goto LABEL_121;
    }

    Signature = 393218;
    if ((v8 - 164) >= 2)
    {
      goto LABEL_101;
    }

    a3 = &attestation_ca_subject;
    v45 = &root_subject;
    v46 = 58;
    v48 = 108;
  }

  else
  {
    if (v8 < 4)
    {
      a3 = &mfi_leaf_subject;
      v45 = &mfi_ca_subject;
      v46 = 17;
      v47 = 32;
      v48 = 119;
      v49 = 1;
      v50 = 16;
      goto LABEL_121;
    }

    Signature = 393218;
    if ((v8 - 4) >= 2)
    {
      goto LABEL_101;
    }

    a3 = &mfi_ca_subject;
    v45 = &attestation_leaf_subject;
    v46 = 57;
    v48 = 107;
  }

  v49 = 37;
  v50 = 8;
  v47 = 8;
LABEL_121:
  if (!v5)
  {
    v95 = v48;
    v57 = v44 + v48;
    if (__CFADD__(v44, v48))
    {
      goto LABEL_180;
    }

    goto LABEL_138;
  }

  v92 = v10 + 91;
  v51 = *(&v96 + 1);
  v10 = v96;
  if (*(&v96 + 1) - v96 < v48)
  {
LABEL_100:
    Signature = 393220;
    goto LABEL_101;
  }

  v82 = v49;
  v84 = v46;
  __n = v50;
  if (v96 > *(&v96 + 1) || a3 > v45 || v48 > v45 - a3)
  {
    goto LABEL_230;
  }

  v88 = v47;
  v80 = v48;
  if (!ccder_blob_encode_body())
  {
    goto LABEL_193;
  }

  if (__CFADD__(*(&v96 + 1), v84))
  {
    goto LABEL_231;
  }

  a3 = (*(&v96 + 1) + v84);
  if (*(&v96 + 1) + v84 >= v10 == (*(&v96 + 1) + v84 - v10) < 0)
  {
    goto LABEL_231;
  }

  v52 = &v7[v82];
  v53 = v88;
  if (&v7[v82] < v7 || a3 > v51 || v10 > a3 || v88 > v51 - a3 || v52 > v42)
  {
    goto LABEL_230;
  }

  if (v8 <= 159)
  {
    v54 = v8 - 4;
    if (v8 < 4)
    {
      v55 = &v7[v82];
      v56 = __n;
      goto LABEL_170;
    }

    v10 = *(&v96 + 1) + v84;
LABEL_175:
    Signature = 393218;
    v71 = v92;
    if (v54 >= 2)
    {
      goto LABEL_101;
    }

    a3 = __n;
    if (__n > v88)
    {
      goto LABEL_230;
    }

    v72 = v10;
    v73 = v10;
    v10 = __n;
    memcpy(v73, v52, __n);
    if (v72 > v72 + __n)
    {
      goto LABEL_230;
    }

    goto LABEL_178;
  }

  v10 = *(&v96 + 1) + v84;
  if ((v8 - 160) >= 4)
  {
    v54 = v8 - 164;
    goto LABEL_175;
  }

  v99 = &v7[v82];
  v100 = __n;
  v105 = -86;
  *&v70 = 0xAAAAAAAAAAAAAAAALL;
  *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v104 = v70;
  *&v102[16] = v70;
  v103 = v70;
  *v102 = v70;
  Signature = decompressECPublicKey(&v99, &CTOidSECP256r1, v102, 65);
  if (Signature)
  {
    goto LABEL_171;
  }

  ccsha256_di();
  memset(v101, 0, sizeof(v101));
  ccdigest();
  v55 = v101;
  v56 = 32;
  a3 = v10;
  v53 = v88;
LABEL_170:
  Signature = CTConvertByteArrayToAsciiHex(v55, v56, a3, v53);
LABEL_171:
  v71 = v92;
  if (Signature)
  {
    goto LABEL_101;
  }

LABEL_178:
  v95 = v80;
  v34 = __CFADD__(v71, v80);
  v57 = v71 + v80;
  if (v34)
  {
    goto LABEL_180;
  }

LABEL_138:
  if (v8 > 159)
  {
    if ((v8 - 160) < 4)
    {
LABEL_144:
      v62 = 0;
      v61 = 0;
      v59 = 1;
      v10 = 9;
      v60 = 23;
      goto LABEL_145;
    }

    v58 = v8 - 164;
LABEL_143:
    Signature = 393218;
    if (v58 >= 2)
    {
      goto LABEL_101;
    }

    goto LABEL_144;
  }

  v58 = v8 - 4;
  if (v8 >= 4)
  {
    goto LABEL_143;
  }

  v59 = 0;
  v60 = 0;
  v61 = &endOfTime;
  v62 = nibbleToAsciiByte;
  v10 = 25;
LABEL_145:
  v63 = &v7[v60];
  if (v59)
  {
    v64 = &v7[v11];
  }

  else
  {
    v64 = v62;
  }

  if (v59)
  {
    v65 = v63;
  }

  else
  {
    v65 = v61;
  }

  *v102 = 0;
  v66 = v59 ^ 1;
  if (v63 >= v7)
  {
    v67 = 1;
  }

  else
  {
    v67 = v66;
  }

  if (v64 < v65 || !v67 || &v64[-v65] <= 13)
  {
    goto LABEL_230;
  }

  v36 = CTDecompressDate(v65, v85, v102);
  if (v36)
  {
    goto LABEL_166;
  }

  v68 = &v7[v10];
  if (&v7[v10] > v42 || v68 < v7)
  {
    goto LABEL_230;
  }

  v69 = *v102;
  v36 = CTDecompressDate(v68, v85, v102);
  if (v36)
  {
    goto LABEL_166;
  }

  v34 = __CFADD__(v69, *v102);
  v10 = v69 + *v102;
  if (v34)
  {
    goto LABEL_180;
  }

  if (v5 && (ccder_blob_encode_tl() & 1) == 0)
  {
    goto LABEL_100;
  }

  v95 = ccder_sizeof();
  v10 = v57 + v95;
  if (__CFADD__(v57, v95))
  {
    goto LABEL_180;
  }

  v36 = CTDecompressIssuer(v8, v7, v11, v85, &v95);
  if (v36)
  {
LABEL_166:
    Signature = v36;
    goto LABEL_101;
  }

  while (1)
  {
    v34 = __CFADD__(v10, v95);
    v10 += v95;
    if (v34)
    {
      goto LABEL_180;
    }

    v74 = 393220;
    if (v5)
    {
      if (*(&v96 + 1) - v96 < 0xCuLL)
      {
        goto LABEL_100;
      }

      if ((ccder_blob_encode_body() & 1) == 0)
      {
        goto LABEL_193;
      }
    }

    v95 = 12;
    v34 = __CFADD__(v10, 12);
    v10 += 12;
    if (v34)
    {
      goto LABEL_180;
    }

    v36 = CTDecompressSerialNumber(v8, v7, v11, v85, &v95);
    if (v36)
    {
      goto LABEL_166;
    }

    v34 = __CFADD__(v10, v95);
    v10 += v95;
    if (v34)
    {
      goto LABEL_180;
    }

    if (v5)
    {
      if (*(&v96 + 1) - v96 < 5uLL)
      {
        goto LABEL_100;
      }

      if ((ccder_blob_encode_body() & 1) == 0)
      {
        goto LABEL_193;
      }

      v95 = 5;
      v34 = __CFADD__(v10, 5);
      v10 += 5;
      if (v34)
      {
        goto LABEL_180;
      }

      if (!ccder_blob_encode_tl())
      {
        goto LABEL_193;
      }
    }

    else
    {
      v95 = 5;
      v34 = __CFADD__(v10, 5);
      v10 += 5;
      if (v34)
      {
        goto LABEL_180;
      }
    }

    v75 = ccder_sizeof();
    *v102 = 0;
    *&v101[0] = 0;
    v76 = CTDecompressGetSignature(v8, v7, v11, v101, v102);
    if (v76)
    {
      goto LABEL_196;
    }

    if (*v102 != -1)
    {
      v91 = v75 + 12;
      if (v75 < 0xFFFFFFFFFFFFFFF4 && !__CFADD__(v91, ccder_sizeof()))
      {
        break;
      }
    }

LABEL_180:
    __break(0x5500u);
  }

  v92 = ccder_sizeof_tl();
  if (v5)
  {
    v10 = v92 + v75;
    if (__CFADD__(v92, v75))
    {
      goto LABEL_180;
    }

    if (v10 > v6)
    {
      goto LABEL_197;
    }

    if (v92 > v93)
    {
      goto LABEL_231;
    }

    v77 = *(&v96 + 1);
    if (*(&v96 + 1) >= v5 == (*(&v96 + 1) - v5) < 0)
    {
      goto LABEL_231;
    }

    *&v96 = v5;
    *(&v96 + 1) = v9;
    if (v9 < v77)
    {
      goto LABEL_230;
    }

    if (v77 < v5)
    {
      goto LABEL_230;
    }

    if (v75 > v9 - v77)
    {
      goto LABEL_230;
    }

    v78 = v5 + v92;
    if (v5 + v92 > v9)
    {
      goto LABEL_230;
    }

    if (v78 < v5)
    {
      goto LABEL_230;
    }

    if (v75 > v6 - v92)
    {
      goto LABEL_230;
    }

    memmove((v5 + v92), v77, v75);
    if (v78 > v78 + v75)
    {
      goto LABEL_230;
    }

    if (v10 >= 0xFFFFFFFFFFFFFFF4)
    {
      goto LABEL_180;
    }

    if (v10 + 12 > v6)
    {
      goto LABEL_197;
    }

    if (__CFADD__(v78, v75))
    {
      goto LABEL_231;
    }

    v79 = v78 + v75;
    if (v9 < v78 + v75)
    {
      goto LABEL_230;
    }

    if (v79 < v5)
    {
      goto LABEL_230;
    }

    if (v9 - v78 - v75 < 0xC)
    {
      goto LABEL_230;
    }

    *(v79 + 8) = 33752125;
    *v79 = 0xCE48862A08060A30;
    if (v79 >= v79 + 12)
    {
      goto LABEL_230;
    }
  }

  v76 = CTDecompressSignature(v8, v7, v11, v85, &v95);
  if (v76)
  {
LABEL_196:
    v74 = v76;
    goto LABEL_197;
  }

  a3 = (v91 + v95);
  if (__CFADD__(v91, v95))
  {
    goto LABEL_180;
  }

  if (!v5)
  {
    goto LABEL_233;
  }

  v11 = &a3[v92];
  if (__CFADD__(v92, a3))
  {
    goto LABEL_180;
  }

  if (v11 > v6)
  {
    goto LABEL_197;
  }

  if (v92 > v93)
  {
LABEL_231:
    __break(0x5513u);
LABEL_232:
    __break(0x5515u);
LABEL_233:
    v11 = &a3[v92];
    if (!__CFADD__(a3, v92))
    {
      goto LABEL_234;
    }

    goto LABEL_180;
  }

  if (v5 + v92 > v9 || v5 + v92 < v5)
  {
LABEL_230:
    __break(0x5519u);
    goto LABEL_231;
  }

  *&v96 = v5;
  *(&v96 + 1) = v5 + v92;
  if ((ccder_blob_encode_tl() & 1) == 0)
  {
    v74 = 393226;
    goto LABEL_197;
  }

LABEL_234:
  v74 = 0;
  if (v94)
  {
    *v94 = v11;
  }

LABEL_197:
  Signature = v74;
LABEL_101:
  v10 = Signature;
LABEL_102:
  v39 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t CTCompressComputeBufferSize(unint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_16:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_16;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v6;
  v32 = v6;
  v29 = v6;
  v30 = v6;
  v27 = v6;
  v28 = v6;
  v25 = v6;
  v26 = v6;
  v23 = v6;
  v24 = v6;
  v21 = v6;
  v22 = v6;
  v19 = v6;
  v20 = v6;
  v17[3] = v6;
  v18 = v6;
  v17[1] = v6;
  v17[2] = v6;
  v17[0] = v6;
  v16[0] = a1;
  v16[1] = a1 + a2;
  v7 = X509CertificateParse(v17, v16);
  if (v7)
  {
    goto LABEL_4;
  }

  v7 = 393218;
  v10 = CTCompressedStyleFromCert(v17);
  if (v10 == 255)
  {
    goto LABEL_4;
  }

  v11 = v10;
  result = CTNonVariableCompressedSizeForStyle(v10);
  if (result < 0)
  {
    goto LABEL_4;
  }

  v12 = result + v18;
  if (!__CFADD__(result, v18))
  {
    if ((v11 - 162) >= 2 && (v11 - 2) > 1)
    {
      goto LABEL_13;
    }

    v14 = 0;
    v15 = 0;
    result = CTParseExtensionValue(a1, a2, &CTOidAppleMFI4AccessoryData, 0xAuLL, &v14, &v15);
    if (result)
    {
      v7 = result;
LABEL_4:
      v8 = *MEMORY[0x1E69E9840];
      return v7;
    }

    v13 = __CFADD__(v12, v15);
    v12 += v15;
    if (!v13)
    {
LABEL_13:
      v7 = 0;
      if (a3)
      {
        *a3 = v12;
      }

      goto LABEL_4;
    }
  }

  __break(0x5500u);
  return result;
}