uint64_t png_image_size(uint64_t a1)
{
  v1 = *(a1 + 284);
  v2 = *(a1 + 296);
  if (v2 >> 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1 >> 15 == 0;
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 428))
  {
    return v1 + v1 * v2;
  }

  result = 0;
  v6 = *(a1 + 434);
  v7 = *(a1 + 280);
  v8 = 7;
  v9 = 1;
  do
  {
    v10 = v9 - 1;
    if (v9 - 1 <= 1)
    {
      v11 = 3;
    }

    else
    {
      v11 = v8 >> 1;
    }

    v12 = (v7 + ~(-1 << v11) - (((v10 & 1) << (3 - (v9 >> 1))) & 7)) >> v11;
    if (v12)
    {
      v13 = (v6 >> 3) * v12;
      v14 = (v6 * v12 + 7) >> 3;
      if (v6 > 7)
      {
        v14 = v13;
      }

      v15 = (v8 + 1) >> 1;
      if (v10 < 3)
      {
        LOBYTE(v15) = 3;
      }

      v16 = (v1 - ((!(v10 & 1) << (3 - (v10 >> 1))) & 7) + ~(-1 << v15)) >> v15;
      result += v16 + v16 * v14;
    }

    ++v9;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t png_deflate_claim(uint64_t a1, int a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 92);
  if (!v6)
  {
    goto LABEL_5;
  }

  memset(v26, 0, sizeof(v26));
  v25 = 0u;
  v24 = 0u;
  v18[0] = HIBYTE(a2);
  v18[1] = BYTE2(a2);
  v18[2] = BYTE1(a2);
  v18[3] = a2;
  v19 = 8250;
  v20 = HIBYTE(v6);
  v21 = BYTE2(v6);
  v22 = BYTE1(v6);
  v23 = v6;
  png_safecat(v18, &v27, 0x40uLL, 0xAuLL, " using zstream");
  png_warning(a1, v18);
  if (*(a1 + 92) != 1229209940)
  {
    *(a1 + 92) = 0;
LABEL_5:
    if (a2 == 1229209940)
    {
      v8 = *(a1 + 220);
      v9 = *(a1 + 224);
      v10 = *(a1 + 228);
      v11 = *(a1 + 232);
      if (*(a1 + 80))
      {
        v12 = *(a1 + 236);
      }

      else
      {
        v12 = *(a1 + 430) != 8;
      }
    }

    else
    {
      v8 = *(a1 + 240);
      v9 = *(a1 + 244);
      v10 = *(a1 + 248);
      v11 = *(a1 + 252);
      v12 = *(a1 + 256);
    }

    if (a3 <= 0x4000)
    {
      v13 = (1 << (v10 - 1));
      if (a3 + 262 <= v13)
      {
        do
        {
          LODWORD(v13) = v13 >> 1;
          --v10;
        }

        while (v13 >= a3 + 262);
      }
    }

    if ((*(a1 + 84) & 0x10) != 0)
    {
      goto LABEL_31;
    }

    v14 = *(a1 + 80);
    if ((v14 & 2) != 0 && (*(a1 + 260) != v8 || *(a1 + 264) != v9 || *(a1 + 268) != v10 || *(a1 + 272) != v11 || *(a1 + 276) != v12))
    {
      if (deflateEnd((a1 + 96)))
      {
        png_warning(a1, "deflateEnd failed (ignored)");
      }

      v14 = *(a1 + 80) & 0xFFFFFFFD;
      *(a1 + 80) = v14;
    }

    *(a1 + 96) = 0;
    v15 = (a1 + 96);
    *(a1 + 104) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    if ((v14 & 2) != 0)
    {
      v16 = deflateReset(v15);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (a2 == 1229209940 && (*(a1 + 84) & 0x11) != 0)
      {
        v10 = -v10;
      }

      v16 = deflateInit2_(v15, v8, v9, v10, v11, v12, "1.2.12", 112);
      if (!v16)
      {
        *(a1 + 80) |= 2u;
LABEL_31:
        v7 = 0;
        *(a1 + 92) = a2;
        return v7;
      }
    }

    v7 = v16;
    png_zstream_error(a1, v16);
    return v7;
  }

  *(a1 + 144) = "in use by IDAT";
  return 4294967294;
}

void png_write_finish_row(uint64_t a1)
{
  v1 = *(a1 + 308) + 1;
  *(a1 + 308) = v1;
  if (v1 < *(a1 + 288))
  {
    return;
  }

  if (!*(a1 + 428))
  {
    goto LABEL_19;
  }

  *(a1 + 308) = 0;
  v2 = *(a1 + 429);
  if ((*(a1 + 88) & 2) != 0)
  {
    ++v2;
  }

  else
  {
    while (++v2 <= 6u)
    {
      v3 = png_write_finish_row_png_pass_inc[v2];
      v4 = *(a1 + 280) + v3 + ~png_write_finish_row_png_pass_start[v2];
      *(a1 + 292) = v4 / v3;
      v5 = png_write_finish_row_png_pass_yinc[v2];
      v6 = *(a1 + 284) + v5 + ~png_write_finish_row_png_pass_ystart[v2];
      *(a1 + 288) = v6 / v5;
      if (v4 >= v3 && v6 >= v5)
      {
        break;
      }
    }
  }

  *(a1 + 429) = v2;
  if (v2 > 6u)
  {
    goto LABEL_19;
  }

  v7 = *(a1 + 320);
  if (v7)
  {
    v8 = *(a1 + 328);
    v9 = *(a1 + 433) * *(a1 + 436);
    v10 = *(a1 + 280);
    v11 = v9 >= 8;
    v12 = (v10 * v9 + 7) >> 3;
    v13 = v10 * (v9 >> 3);
    if (!v11)
    {
      v13 = v12;
    }

    v11 = v8 >= v7;
    v14 = v8 - v7;
    if (!v11 || v13 >= v14 || (v15 = v13 + 1, bzero(*(a1 + 320), v13 + 1), v7 > v7 + v15))
    {
      __break(0x5519u);
LABEL_19:

      png_compress_IDAT(a1, 0, 0, 4);
    }
  }
}

uint64_t _cg_png_write_chunk_data(uint64_t result, Bytef *a2, uint64_t a3)
{
  if (result && a2 && a3)
  {
    v5 = result;
    png_write_data(result, a2, a3);

    return png_calculate_crc(v5, a2, a3);
  }

  return result;
}

void _cg_png_cleanup_for_write_start_row(void *a1)
{
  v2 = a1[42];
  if (v2)
  {
    free(v2);
    a1[42] = 0;
    a1[43] = 0;
  }

  v3 = a1[40];
  if (v3)
  {
    free(v3);
    a1[40] = 0;
    a1[41] = 0;
  }
}

uint64_t png_flush(uint64_t result)
{
  v1 = *(result + 472);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t IIOImageWriteSession::seek(IIOImageWriteSession *this, uint64_t a2, int a3)
{
  v4 = a2;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 64;
    }

    else
    {
      if (a3 != 2)
      {
        return -1;
      }

      v5 = 56;
    }

    v4 = *(this + v5) + a2;
  }

  v6 = *(this + 4);
  if (!v6 || !fseek(v6, a2, a3))
  {
    *(this + 8) = v4;
    return v4;
  }

  return -1;
}

void (**png_write_IEND(uint64_t a1))(void)
{
  result = _cg_png_write_complete_chunk(a1, 1229278788, 0, 0);
  *(a1 + 76) |= 0x10u;
  return result;
}

uint64_t write_unknown_chunks(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = *(a2 + 352);
  if (v3)
  {
    v4 = *(a2 + 344);
    v5 = v4 + 32 * v3;
    if (v4 < v5)
    {
      v7 = result;
      for (i = *(a2 + 344); v4 <= i; i += 32)
      {
        v9 = i + 32;
        if (i + 32 > v5)
        {
          break;
        }

        if ((*(i + 24) & a3) != 0)
        {
          result = png_handle_as_unknown(v7, i);
          if (result != 1 && (result == 3 || (*(i + 3) & 0x20) != 0 || !result && *(v7 + 880) == 3))
          {
            v10 = *(i + 16);
            if (!v10)
            {
              png_warning(v7, "Writing zero-length unknown chunk");
              v10 = *(i + 16);
            }

            result = _cg_png_write_chunk(v7, i, *(i + 8), v10);
          }
        }

        if (v9 >= v5)
        {
          return result;
        }
      }

      __break(0x5519u);
    }
  }

  return result;
}

void _cg_png_destroy_write_struct(uint64_t *a1, _OWORD **a2)
{
  if (a1)
  {
    v3 = *a1;
    if (*a1)
    {
      if (v3 >= v3 + 1280)
      {
        goto LABEL_11;
      }

      _cg_png_destroy_info_struct(*a1, a2);
      *a1 = 0;
      if ((*(v3 + 80) & 2) != 0)
      {
        deflateEnd((v3 + 96));
      }

      if (v3 + 208 > v3 + 216)
      {
LABEL_11:
        __break(0x5519u);
      }

      else
      {
        png_free_buffer_list(v3, (v3 + 208));
        png_free(v3, *(v3 + 336));
        *(v3 + 336) = 0u;
        png_free(v3, *(v3 + 320));
        png_free(v3, *(v3 + 352));
        png_free(v3, *(v3 + 368));
        *(v3 + 320) = 0u;
        *(v3 + 352) = 0u;
        *(v3 + 368) = 0u;
        png_free(v3, *(v3 + 888));
        *(v3 + 888) = 0u;

        png_destroy_png_struct(v3);
      }
    }
  }
}

void png_free_buffer_list(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (v3)
  {
    *a2 = 0;
    do
    {
      v5 = *v3;
      png_free(a1, v3);
      v3 = v5;
    }

    while (v5);
  }
}

void PNGWritePlugin::~PNGWritePlugin(PNGWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4D92B8;
  v4 = *(this + 7);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    free(v5);
  }

  if (*(this + 5))
  {
    _cg_jpeg_mem_term("~PNGWritePlugin", 158, "*** PNGWritePlugin::~PNGWritePlugin -- cleaning up '_png_ptr' -- should have been done in writeEpilogue\n");
    if (*(this + 6))
    {
      v6 = (this + 48);
    }

    else
    {
      v6 = 0;
    }

    _cg_png_destroy_write_struct(this + 5, v6);
    *(this + 5) = 0;
    *(this + 6) = 0;
  }

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  PNGWritePlugin::~PNGWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t _CGImagePixelDataProviderFinalize(void *a1)
{
  atomic_fetch_add_explicit(&gPDPCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t IIOImageWriteSession::finalize(IIOImageWriteSession *this, int a2)
{
  v4 = *(this + 5);
  if (v4)
  {
    MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v4);
    v6 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
    if (!CFStringGetFileSystemRepresentation(*(this + 5), v6, MaximumSizeOfFileSystemRepresentation))
    {
      v7 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = *(this + 6);
  if (v8)
  {
    v9 = CFStringGetMaximumSizeOfFileSystemRepresentation(v8);
    v7 = malloc_type_malloc(v9, 0x100004077774924uLL);
    if (!CFStringGetFileSystemRepresentation(*(this + 6), v7, v9))
    {
      goto LABEL_36;
    }

    if (a2)
    {
      if (v7)
      {
        unlink(v7);
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (a2)
    {
LABEL_11:
      v10 = *(this + 3);
      if (v10)
      {
        CFDataSetLength(v10, 0);
      }

      v7 = 0;
      goto LABEL_14;
    }

    v7 = 0;
  }

  if (!*(this + 5))
  {
    if (!*(this + 2))
    {
      goto LABEL_14;
    }

    v18 = *(this + 3);
    if (!v18)
    {
      goto LABEL_14;
    }

    if (!*(this + 7))
    {
      goto LABEL_14;
    }

    MutableBytePtr = CFDataGetMutableBytePtr(v18);
    v20 = *(this + 7);
    if (!v20)
    {
      goto LABEL_14;
    }

    v21 = MutableBytePtr;
    while (1)
    {
      v22 = CGDataConsumerPutBytes();
      if (!v22)
      {
        break;
      }

      v21 += v22;
      v20 -= v22;
      if (!v20)
      {
        goto LABEL_14;
      }
    }

    LogError("finalize", 433, "*** ERROR: Could not write any more data to the consumer\n");
LABEL_36:
    v11 = 4294967246;
    if (!v6)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v12 = *(this + 4);
  if (v12)
  {
    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog("<<< CGImageWriteSessionFinalize: [%p] closing FILE* %p\n", this, v12);
      v12 = *(this + 4);
    }

    fclose(v12);
    *(this + 73) = 0;
  }

  *(this + 4) = 0;
  if (v6)
  {
    if (v7)
    {
      if (strcmp(v7, v6))
      {
        rename(v7, v6, v13);
        if (v14)
        {
          v15 = __error();
          v16 = strerror(*v15);
          v17 = __error();
          LogError("finalize", 413, "*** ERROR: rename (%s to %s) failed: '%s' (%d)\n", v7, v6, v16, *v17);
          unlink(v7);
          v11 = 4294967246;
          goto LABEL_37;
        }
      }
    }
  }

LABEL_14:
  v11 = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (v6)
  {
LABEL_37:
    free(v6);
  }

LABEL_38:
  if (v7)
  {
    free(v7);
  }

  return v11;
}

void IIOImageDestination::~IIOImageDestination(IIOImageDestination *this)
{
  IIOImageDestination::~IIOImageDestination(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DA278;
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  *v3 = 0;
  v3[1] = 0;
  v4 = *(this + 20);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 20) = 0;
  v5 = *(this + 11);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 11) = 0;
  v6 = *(this + 12);
  if (v6)
  {
    CFRelease(v6);
  }

  *(this + 12) = 0;
  v8 = *(this + 13);
  for (i = *(this + 14); v8 != i; ++v8)
  {
    if (*v8)
    {
      CGImageRelease(*v8);
    }
  }

  v10 = *(this + 16);
  for (j = *(this + 17); v10 != j; ++v10)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
    }
  }

  v11 = *(this + 21);
  if (v11)
  {
    CGImageRelease(v11);
    *(this + 21) = 0;
  }

  v12 = *(this + 4);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 4) = 0;
  v13 = *(this + 19);
  if (v13)
  {
    CFRelease(v13);
  }

  *(this + 19) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  v14 = *(this + 16);
  if (v14)
  {
    *(this + 17) = v14;
    operator delete(v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    *(this + 14) = v15;
    operator delete(v15);
  }
}

uint64_t _CGImageDestinationFinalize(void *a1)
{
  atomic_fetch_add_explicit(&gIDRCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t _CGImageWriteSessionFinalize(void *a1)
{
  atomic_fetch_add_explicit(&gWriteSessionCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t CreateMetadataFromXMPBufferInternal(const char *a1, uint64_t a2, const char *a3)
{
  if (a1 && a2)
  {
    pthread_mutex_lock(&CreateMetadataFromXMPBufferInternal(char const*,unsigned long,char const*,unsigned long,unsigned int)::mutex);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    cStr = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0;
    if (IIO_InitializeXMPToolkit())
    {
      v4[0] = 0;
      v4[1] = 0;
      TXMPMeta<std::string>::TXMPMeta(v4);
    }

    pthread_mutex_unlock(&CreateMetadataFromXMPBufferInternal(char const*,unsigned long,char const*,unsigned long,unsigned int)::mutex);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(cStr);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v12);
    }
  }

  return 0;
}

CGImageMetadataRef CGImageMetadataCreateFromXMPData(CFDataRef data)
{
  if (data)
  {
    CFDataGetLength(data);
  }

  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCreateFromXMPData", 0, 0, -1, 0);
  }

  if (data && (v2 = CFGetTypeID(data), v2 == CFDataGetTypeID()) && (Length = CFDataGetLength(data), Length >= 0x29))
  {
    v4 = Length;
    BytePtr = CFDataGetBytePtr(data);
    v6 = 29;
    if (strncmp(BytePtr, kMainXMPSignatureString[0], 0x1DuLL))
    {
      if (strncmp(BytePtr, kMainXMPPlainString[0], 0x21uLL))
      {
        if (v4 < 0x7FFFFFFFFFFFFFF8)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:fe200100]();
      }

      v6 = 0;
    }

    MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(&BytePtr[v6], v4 - v6);
    v8 = MetadataFromXMPBuffer;
    if (MetadataFromXMPBuffer)
    {
      v9 = *(MetadataFromXMPBuffer + 24);
      if (v9)
      {
        CFDictionaryGetCount(v9);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  kdebug_trace();
  return v8;
}

uint64_t IIO_InitializeXMPToolkit()
{
  pthread_mutex_lock(&xmpLock);
  v0 = TXMPMeta<std::string>::Initialize();
  v1 = v0;
  v5 = TXMPFiles<std::string>::Initialize(v0, v2, v3, v4);
  pthread_mutex_unlock(&xmpLock);
  return v1 & v5;
}

void AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(AdobeXMPCore_Int *this@<X0>, void *a2@<X8>)
{
  v3 = AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap;
  if (this)
  {
    v4 = *(AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap + 8);
    *AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap = 0;
    *(v3 + 8) = 0;
    if (!v4 || (std::__shared_weak_count::__release_shared[abi:fe200100](v4), (v3 = AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap) != 0))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:fe200100](v5);
      }

      MEMORY[0x186602850](v3, 0x20C40A4A59CD2);
    }

    AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    if (!AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap)
    {
      AdobeXMPCore::INameSpacePrefixMap_v1::CreateNameSpacePrefixMap(this);
    }

    v6 = *(AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap + 8);
    *a2 = *AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(BOOL)::sDefaultNameSpacePrefixMap;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_185EBEEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

double AdobeXMPCore_Int::NameSpacePrefixMapImpl::NameSpacePrefixMapImpl(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this)
{
  *&result = 0x100000000;
  *(this + 8) = 0x100000000;
  *(this + 9) = &unk_1EF4FC0F0;
  *(this + 12) = &unk_1EF4FC1D0;
  *this = off_1EF4FBB70;
  *(this + 7) = &unk_1EF4FBCB0;
  *(this + unk_1EF4FBB28) = &unk_1EF4FBE28;
  *(this + *(*this - 80)) = &unk_1EF4FBDA0;
  *(this + *(*this - 88)) = &unk_1EF4FBE28;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 6) = 0;
  *(this + 7) = &unk_1EF4FB7B8;
  *this = &unk_1EF4FB628;
  *(this + 9) = &unk_1EF4FB8B0;
  *(this + 12) = &unk_1EF4FB940;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 40;
  return result;
}

uint64_t AdobeXMPCore_Int::SharedObjectImpl::Acquire(uint64_t this)
{
  v1 = (this + 16);
  if (atomic_load((this + 16)))
  {
    v3 = -1;
  }

  else
  {
    v1 = (this + 8);
    v3 = 1;
  }

  atomic_fetch_add(v1, v3);
  return this;
}

void XMP_ReadWriteLock::XMP_ReadWriteLock(XMP_ReadWriteLock *this)
{
  *(this + 204) = 0;
  atomic_store(0, this + 50);
  if (pthread_rwlock_init(this, 0))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    exception[1] = "Initialize pthread rwlock failed";
    *(exception + 16) = 0;
  }
}

BOOL XMP_NamespaceTable::Define(XMP_NamespaceTable *this, char *a2, char *a3, const char **a4, unsigned int *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v51 = (this + 8);
  XMP_ReadWriteLock::Acquire((this + 8), 1);
  if (!a2 || !a3 || !*a2 || !*a3)
  {
    __assert_rtn("Define", "XMP_LibUtils.cpp", 451, "(_uri != 0) && (*_uri != 0) && (_suggPrefix != 0) && (*_suggPrefix != 0)");
  }

  v49 = 0uLL;
  v50 = 0;
  std::string::basic_string[abi:fe200100]<0>(&v49, a2);
  memset(&v48, 0, sizeof(v48));
  std::string::basic_string[abi:fe200100]<0>(&v48, a3);
  v10 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  v11 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  size = v48.__r_.__value_.__l.__size_;
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v48.__r_.__value_.__l.__size_;
  }

  if (!v13)
  {
    __break(1u);
  }

  v14 = v48.__r_.__value_.__r.__words[0];
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v48;
  }

  if (v14->__r_.__value_.__s.__data_[v13 - 1] != 58)
  {
    std::string::push_back(&v48, 58);
    v10 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    size = v48.__r_.__value_.__l.__size_;
    v11 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  if (v11 < 0)
  {
    v10 = size;
  }

  v15 = &a3[v10 - 1];
  if (v15 <= a3)
  {
    v18 = "Empty XML name";
    goto LABEL_115;
  }

  v16 = *a3;
  if (v16 < 0)
  {
    *__str = 0;
    v46[0].__r_.__value_.__r.__words[0] = 0;
    CodePoint_from_UTF8(a3, 4uLL, __str, v46);
    v17 = &a3[v46[0].__r_.__value_.__r.__words[0]];
    if ((*__str - 192) >= 0x17 && (*__str - 216) >= 0x1F && (*__str - 248) >= 0x208 && (*__str - 880) >= 0xE && (*__str - 895) >= 0x1C81 && (*__str & 0xFFFFFFFE) != 0x200C && (*__str - 8304) >= 0x120 && (*__str - 11264) >= 0x3F0 && (*__str - 12289) >= 0xA7FF && (*__str - 63744) >= 0x4D0 && (*__str - 65008) >= 0x20E && (*__str - 0x10000) >> 17 > 6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = a3 + 1;
    if ((v16 - 97) >= 0x1A && v16 != 95 && (v16 - 65) >= 0x1A)
    {
LABEL_20:
      v18 = "Bad XML name";
LABEL_115:
      v45 = v18;
LABEL_116:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      exception[1] = v45;
      *(exception + 16) = 0;
    }
  }

  if (v17 < v15)
  {
    v45 = "Bad XML name";
    do
    {
      if (*v17 < 0)
      {
        *__str = 0;
        v46[0].__r_.__value_.__r.__words[0] = 0;
        CodePoint_from_UTF8(v17, 4uLL, __str, v46);
        v17 += v46[0].__r_.__value_.__r.__words[0];
        if ((*__str - 192) >= 0x17 && (*__str - 216) >= 0x1F)
        {
          v25 = (*__str - 248) >= 0x208 && (*__str - 880) >= 0xE;
          if (v25 && (*__str - 895) >= 0x1C81 && (*__str & 0xFFFFFFFE) != 0x200C && (*__str - 8304) >= 0x120 && (*__str - 11264) >= 0x3F0 && (*__str - 12289) >= 0xA7FF && (*__str - 63744) >= 0x4D0 && (*__str - 768) >= 0x70 && (*__str - 65008) >= 0x20E && (*__str - 0x10000) >= 0xE0000 && (*__str - 8255) >= 2 && *__str != 183)
          {
            goto LABEL_116;
          }
        }
      }

      else
      {
        v19 = *v17++;
        if ((v19 - 97) >= 0x1A && v19 != 95 && (v19 - 65) >= 0x1A)
        {
          v21 = v19 - 48;
          v22 = v19 - 45;
          if (v21 >= 0xA && v22 >= 2)
          {
            goto LABEL_116;
          }
        }
      }
    }

    while (v17 < v15);
  }

  v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 216, &v49);
  if ((this + 224) == v26)
  {
    memset(&v47, 0, sizeof(v47));
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v48;
    }

    *__str = 0u;
    v53 = 0u;
    v27 = 1;
    while ((this + 248) != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 240, &v47.__r_.__value_.__l.__data_))
    {
      snprintf(__str, 0x20uLL, "_%d_:", v27);
      std::string::operator=(&v47, &v48);
      v28 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v47.__r_.__value_.__l.__size_;
      }

      std::string::erase(&v47, v28 - 1, 0xFFFFFFFFFFFFFFFFLL);
      ++v27;
      std::string::append(&v47, __str);
    }

    memset(v46, 0, sizeof(v46));
    std::pair<std::string,std::string>::pair[abi:fe200100]<std::string&,std::string&,0>(v46, &v49, &v47);
    v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string,std::string> &>(this + 27, this + 224, &v46[0].__r_.__value_.__l.__data_);
    v29 = v46[0].__r_.__value_.__r.__words[2];
    v30 = *&v46[0].__r_.__value_.__l.__data_;
    v46[0] = v46[1];
    *&v46[1].__r_.__value_.__l.__data_ = v30;
    v46[1].__r_.__value_.__r.__words[2] = v29;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string,std::string> &>(this + 30, this + 248, &v46[0].__r_.__value_.__l.__data_);
    if (SHIBYTE(v46[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  if (a4)
  {
    v31 = (v26 + 56);
    if (*(v26 + 79) < 0)
    {
      v31 = *v31;
    }

    *a4 = v31;
  }

  if (a5)
  {
    v32 = *(v26 + 79);
    if (v32 < 0)
    {
      v32 = *(v26 + 64);
    }

    *a5 = v32;
  }

  v33 = *(v26 + 79);
  if (v33 >= 0)
  {
    v34 = *(v26 + 79);
  }

  else
  {
    v34 = *(v26 + 64);
  }

  v35 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  v36 = SHIBYTE(v48.__r_.__value_.__r.__words[2]);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v48.__r_.__value_.__l.__size_;
  }

  if (v34 != v35)
  {
    v42 = 0;
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v39 = *(v26 + 56);
  v38 = (v26 + 56);
  v37 = v39;
  if (v33 >= 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = v37;
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v48;
  }

  else
  {
    v41 = v48.__r_.__value_.__r.__words[0];
  }

  v42 = memcmp(v40, v41, v34) == 0;
  if (v36 < 0)
  {
LABEL_109:
    operator delete(v48.__r_.__value_.__l.__data_);
  }

LABEL_110:
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  XMP_AutoLock::~XMP_AutoLock(&v51);
  return v42;
}

void sub_185EBF74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, XMP_ReadWriteLock *a35)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  XMP_AutoLock::~XMP_AutoLock(&a35);
  _Unwind_Resume(a1);
}

uint64_t XMP_ReadWriteLock::Release(XMP_ReadWriteLock *this)
{
  v1 = atomic_load(this + 50);
  if (v1 <= 0)
  {
    XMP_ReadWriteLock::Release();
  }

  atomic_fetch_add(this + 50, 0xFFFFFFFF);
  if (*(this + 204) == 1)
  {
    *(this + 204) = 0;
    result = pthread_rwlock_unlock(this);
    if (result)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v4 = "Release pthread write lock failed";
      goto LABEL_9;
    }
  }

  else
  {
    result = pthread_rwlock_unlock(this);
    if (result)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 11;
      v4 = "Release pthread read lock failed";
LABEL_9:
      exception[1] = v4;
      *(exception + 16) = 0;
    }
  }

  return result;
}

BOOL XMP_NamespaceTable::GetPrefix(XMP_NamespaceTable *this, char *a2, const char **a3, unsigned int *a4)
{
  v16 = (this + 8);
  XMP_ReadWriteLock::Acquire((this + 8), 0);
  if (!a2 || !*a2)
  {
    __assert_rtn("GetPrefix", "XMP_LibUtils.cpp", 504, "(_uri != 0) && (*_uri != 0)");
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  std::string::basic_string[abi:fe200100]<0>(__p, a2);
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 216, __p);
  v9 = v8;
  v10 = this + 224;
  if (v10 != v8)
  {
    if (a3)
    {
      v11 = (v8 + 56);
      if (*(v8 + 79) < 0)
      {
        v11 = *v11;
      }

      *a3 = v11;
    }

    if (a4)
    {
      v12 = *(v8 + 79);
      if (v12 < 0)
      {
        v12 = *(v8 + 64);
      }

      *a4 = v12;
    }
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  XMP_AutoLock::~XMP_AutoLock(&v16);
  return v10 != v9;
}

void sub_185EBF9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, XMP_ReadWriteLock *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  XMP_AutoLock::~XMP_AutoLock(&a15);
  _Unwind_Resume(a1);
}

uint64_t AdobeXMPCore_Int::VerifyParameters(AdobeXMPCore_Int *this, int a2, char *__s, const char *a4, const char *a5, uint64_t a6)
{
  if (this)
  {
    if (!__s)
    {
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    if (a5 != -1)
    {
      if (a5)
      {
        goto LABEL_5;
      }

LABEL_9:
      AdobeXMPCore_Int::IError_I::CreateError();
    }

    if (!strlen(__s))
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (!a2)
  {
    return 1;
  }

  if (!a4)
  {
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  if (a6 == -1)
  {
    if (!strlen(a4))
    {
      goto LABEL_16;
    }
  }

  else if (!a6)
  {
LABEL_16:
    AdobeXMPCore_Int::IError_I::CreateError();
  }

  return 1;
}

void sub_185EC0194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AdobeXMPCore_Int::NameSpacePrefixMapImpl::Insert(AdobeXMPCore_Int::NameSpacePrefixMapImpl *this, char *__s, char *a3, const char *a4, uint64_t a5)
{
  v7 = a3;
  v9 = AdobeXMPCore_Int::VerifyParameters(1, 1, __s, a4, a3, a5);
  if (v9)
  {
    if (__s && v7 == -1)
    {
      v7 = strlen(__s);
    }

    if (a4 && a5 == -1)
    {
      strlen(a4);
    }

    if (v7 <= 0)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      v13 = "Empty XML name";
LABEL_66:
      *exception = 102;
      exception[1] = v13;
      *(exception + 16) = 0;
    }

    v10 = *__s;
    if (v10 < 0)
    {
      v24[0] = 0;
      v22[0] = 0;
      CodePoint_from_UTF8(__s, 4uLL, v24, v22);
      v11 = &__s[v22[0]];
      if (v24[0] - 192 >= 0x17 && v24[0] - 216 >= 0x1F && v24[0] - 248 >= 0x208 && v24[0] - 880 >= 0xE && v24[0] - 895 >= 0x1C81 && (v24[0] & 0xFFFFFFFE) != 0x200C && v24[0] - 8304 >= 0x120 && v24[0] - 11264 >= 0x3F0 && v24[0] - 12289 >= 0xA7FF && v24[0] - 63744 >= 0x4D0 && v24[0] - 65008 >= 0x20E && (v24[0] - 0x10000) >> 17 > 6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = __s + 1;
      if ((v10 - 97) >= 0x1A && v10 != 95 && (v10 - 65) >= 0x1A)
      {
LABEL_13:
        exception = __cxa_allocate_exception(0x18uLL);
        v13 = "Bad XML name";
        goto LABEL_66;
      }
    }

    if (v11 >= &__s[v7])
    {
LABEL_63:
      v23 = 0uLL;
      AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(__s, v7);
    }

    while (1)
    {
      if (*v11 < 0)
      {
        v24[0] = 0;
        v22[0] = 0;
        CodePoint_from_UTF8(v11, 4uLL, v24, v22);
        v11 += v22[0];
        if (v24[0] - 192 >= 0x17 && v24[0] - 216 >= 0x1F)
        {
          v20 = v24[0] - 248 >= 0x208 && v24[0] - 880 >= 0xE;
          if (v20 && v24[0] - 895 >= 0x1C81 && (v24[0] & 0xFFFFFFFE) != 0x200C && v24[0] - 8304 >= 0x120 && v24[0] - 11264 >= 0x3F0 && v24[0] - 12289 >= 0xA7FF && v24[0] - 63744 >= 0x4D0 && v24[0] - 768 >= 0x70 && v24[0] - 65008 >= 0x20E && v24[0] - 0x10000 >= 0xE0000 && v24[0] - 8255 >= 2 && v24[0] != 183)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        v14 = *v11++;
        if ((v14 - 97) >= 0x1A && v14 != 95 && (v14 - 65) >= 0x1A)
        {
          v16 = v14 - 48;
          v17 = v14 - 45;
          if (v16 >= 0xA && v17 >= 2)
          {
            goto LABEL_13;
          }
        }
      }

      if (v11 >= &__s[v7])
      {
        goto LABEL_63;
      }
    }
  }

  return v9;
}

void sub_185EC0928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a18);
  }

  __cxa_end_catch();
  JUMPOUT(0x185EC0950);
}

void AdobeXMPCore_Int::IUTF8String_I::CreateUTF8String(AdobeXMPCore_Int::IUTF8String_I *this, const char *a2)
{
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_185EC0AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void *AdobeXMPCore_Int::UTF8StringImpl::UTF8StringImpl(void *this)
{
  this[7] = &unk_1EF4E48E8;
  *this = &unk_1EF4E4318;
  this[6] = off_1EF4E44C8;
  *(this + unk_1EF4E4178) = &unk_1EF4E4528;
  this[8] = 0;
  this[9] = 0;
  this[2] = 0;
  this[3] = 0;
  *this = &unk_1EF4E3E80;
  this[1] = 0;
  this[5] = 0;
  this[6] = &unk_1EF4E4030;
  this[7] = &unk_1EF4E4098;
  this[4] = 0;
  return this;
}

void *AdobeXMPCore_Int::UTF8StringImpl::assign@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 && a3)
  {
    v6 = this + 24;
    if (a3 == -1)
    {
      MEMORY[0x186602520](v6);
    }

    else
    {
      MEMORY[0x186602530](v6);
    }
  }

  else if (*(this + 47) < 0)
  {
    **(this + 3) = 0;
    *(this + 4) = 0;
  }

  else
  {
    *(this + 24) = 0;
    *(this + 47) = 0;
  }

  return AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer(this, a4);
}

void *AdobeXMPCore_Int::UTF8StringImpl::returnSelfSharedPointer@<X0>(AdobeXMPCore_Int::UTF8StringImpl *this@<X0>, void *a2@<X8>)
{
  result = std::shared_ptr<AdobeXMPCommon::IUTF8StringProxy>::shared_ptr[abi:fe200100]<AdobeXMPCommon::IUTF8StringProxy,0>(v6, this + 1);
  v4 = v6[0];
  if (v6[0])
  {
    v4 = v6[0] + *(*v6[0] - 408);
  }

  v5 = v6[1];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t AdobeXMPCore_Int::AutoSharedLock::AutoSharedLock(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = *a1;
  }

  *(a1 + 16) = a3;
  if (v4)
  {
    v6 = *v4;
    if (a3)
    {
      v7 = (*(v6 + 40))();
    }

    else
    {
      v7 = (*(v6 + 64))();
    }

    if (v7)
    {
      AdobeXMPCore_Int::IError_I::CreateError();
    }
  }

  return a1;
}

void sub_185EC0ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *AdobeXMPCore_Int::AutoSharedLock::Release(uint64_t **this)
{
  result = *this;
  if (result)
  {
    v3 = *result;
    if (*(this + 16) == 1)
    {
      result = (*(v3 + 56))();
    }

    else
    {
      result = (*(v3 + 80))();
    }

    if (result)
    {
      v4 = 0;
      v5 = 0;
      AdobeXMPCore_Int::IError_I::CreateError();
    }
  }

  return result;
}

void sub_185EC1100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::find<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = AdobeXMPCore_Int::IUTF8StringComparator::operator()(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || AdobeXMPCore_Int::IUTF8StringComparator::operator()(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::__emplace_unique_key_args<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = *std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::__find_equal<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

IIODictionary *IIOMetadataFlagsFromImageSourceOptions(IIODictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = IIOSkipMetadata(result);
    if (IIOSkipXMP_and_IPTC(v1))
    {
      v2 |= 2u;
    }

    if (IIODictionary::getBoolForKey(v1, @"kCGImageSourceAddThumbnailInformation"))
    {
      v2 |= 4u;
    }

    if (IIODictionary::getBoolForKey(v1, @"kCGImageSourceShouldPreferIPTCToEXIF"))
    {
      return (v2 | 8);
    }

    else
    {
      return v2;
    }
  }

  return result;
}

void ___ZN19AppleJPEGReadPlugin12readExifDataEP13IIODictionarybb_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  if (v5 > 0x200)
  {
    if (v5 == 513)
    {
      if ((*(a1 + 80) & 4) != 0)
      {
        v16 = *(*(a1 + 40) + 8);
        if (!*(v16 + 24))
        {
          *(v16 + 24) = *(a2 + 16) + a3 + *(a1 + 72) + 10;
          IIONumber::IIONumber(v18, *(*(*(a1 + 40) + 8) + 24));
          v17 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"iio", @"JPEGInterchangeFormat", kCGImageMetadataTypeDefault, value);
          IIONumber::~IIONumber(v18);
          if (v17)
          {
            CGImageMetadataSetTagWithPath(*(a1 + 64), 0, @"iio:JPEGInterchangeFormat", v17);
            CFRelease(v17);
          }
        }
      }
    }

    else if (v5 == 514 && (*(a1 + 80) & 4) != 0)
    {
      v11 = *(*(a1 + 48) + 8);
      if (!*(v11 + 24))
      {
        *(v11 + 24) = *(a2 + 16);
        IIONumber::IIONumber(v18, *(*(*(a1 + 48) + 8) + 24));
        v12 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"iio", @"JPEGInterchangeFormatLength", kCGImageMetadataTypeDefault, value);
        IIONumber::~IIONumber(v18);
        if (v12)
        {
          CGImageMetadataSetTagWithPath(*(a1 + 64), 0, @"iio:JPEGInterchangeFormatLength", v12);
          CFRelease(v12);
        }
      }
    }
  }

  else if (v5 - 282 >= 2)
  {
    if (v5 == 274)
    {
      v13 = *(*(a1 + 32) + 8);
      if (!*(v13 + 24))
      {
        v14 = *(a2 + 16);
        if ((v14 - 1) <= 7)
        {
          *(v13 + 24) = v14;
          IIONumber::IIONumber(v18, *(*(*(a1 + 32) + 8) + 24));
          v15 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"Orientation", kCGImageMetadataTypeDefault, value);
          IIONumber::~IIONumber(v18);
          if (v15)
          {
            CGImageMetadataSetTagWithPath(*(a1 + 64), 0, @"tiff:Orientation", v15);
            CFRelease(v15);
          }
        }
      }
    }
  }

  else
  {
    v6 = a3 + *(a2 + 16) + *(a1 + 72);
    v7 = (v6 + 10);
    if (v6 == -10)
    {
      return;
    }

    v8 = *(a1 + 56);
    v20[0] = 0;
    IIOImageReadSession::getBytesAtOffset(*(v8 + 24), v20, v7, 8);
    v20[0] = vrev32_s8(v20[0]);
    v9 = (v20[0].u32[0] / v20[0].u32[1]);
    if (*(a2 + 8) == 282)
    {
      IIONumber::IIONumber(v18, v9);
      v10 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"XResolution", kCGImageMetadataTypeDefault, value);
      IIONumber::~IIONumber(v18);
      if (!v10)
      {
        return;
      }

      CGImageMetadataSetTagWithPath(*(a1 + 64), 0, @"tiff:XResolution", v10);
    }

    else
    {
      IIONumber::IIONumber(v18, v9);
      v10 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"YResolution", kCGImageMetadataTypeDefault, value);
      IIONumber::~IIONumber(v18);
      if (!v10)
      {
        return;
      }

      CGImageMetadataSetTagWithPath(*(a1 + 64), 0, @"tiff:YResolution", v10);
    }

    CFRelease(v10);
  }
}

void sub_185EC168C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::Initialize(XMPMeta *this)
{
  v1 = sXMP_InitCount++;
  if (v1 > 0)
  {
    return 1;
  }

  kdebug_trace();
  result = ImageIOShouldAllowFullsizeDecode();
  if (result)
  {
    v5 = _cg_jpeg_mem_term(result, v3, v4);
    AdobeXMPCore_Int::INameSpacePrefixMap_I::CreateDefaultNameSpacePrefixMap(v5);
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::__find_equal<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!AdobeXMPCore_Int::IUTF8StringComparator::operator()(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!AdobeXMPCore_Int::IUTF8StringComparator::operator()(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::__split_buffer<XPathStepInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<XPathStepInfo>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL TXMPMeta<std::string>::Initialize()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  WXMPMeta_Initialize_1(v3);
  if (*&v3[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v2 = *&v3[0];
    *exception = v4;
    exception[1] = v2;
    *(exception + 16) = 0;
  }

  return v4 != 0;
}

uint64_t WXMPMeta_Initialize_1(XMPMeta *a1)
{
  *a1 = 0;
  result = XMPMeta::Initialize(a1);
  *(a1 + 8) = result;
  return result;
}

void AdobeXMPCore_Int::INameSpacePrefixMap_I::CreateDefaultNameSpacePrefixMap(AdobeXMPCore_Int::INameSpacePrefixMap_I *this)
{
  AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(0, &v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }
}

void InitializeUnicodeConversions(void)
{
  UTF8_to_UTF16Native = UTF8_to_UTF16Nat;
  UTF8_to_UTF32Native = UTF8_to_UTF32Nat;
  UTF16Native_to_UTF8 = UTF16Nat_to_UTF8;
  UTF32Native_to_UTF8 = UTF32Nat_to_UTF8;
  swap32to16Offset = 1;
  CodePoint_to_UTF16BE = CodePoint_to_UTF16Swp;
  CodePoint_to_UTF16LE = CodePoint_to_UTF16Nat;
  CodePoint_from_UTF16BE = CodePoint_from_UTF16Swp;
  CodePoint_from_UTF16LE = CodePoint_from_UTF16Nat;
  UTF8_to_UTF16BE = UTF8_to_UTF16Swp;
  UTF8_to_UTF16LE = UTF8_to_UTF16Nat;
  UTF8_to_UTF32BE = UTF8_to_UTF32Swp;
  UTF8_to_UTF32LE = UTF8_to_UTF32Nat;
  UTF16BE_to_UTF8 = UTF16Swp_to_UTF8;
  UTF16LE_to_UTF8 = UTF16Nat_to_UTF8;
  UTF32BE_to_UTF8 = UTF32Swp_to_UTF8;
  UTF32LE_to_UTF8 = UTF32Nat_to_UTF8;
  UTF16BE_to_UTF32BE = UTF16Swp_to_UTF32Swp;
  UTF16BE_to_UTF32LE = UTF16Swp_to_UTF32Nat;
  UTF16LE_to_UTF32BE = UTF16Nat_to_UTF32Swp;
  UTF16LE_to_UTF32LE = UTF16Nat_to_UTF32Nat;
  UTF32BE_to_UTF16BE = UTF32Swp_to_UTF16Swp;
  UTF32BE_to_UTF16LE = UTF32Swp_to_UTF16Nat;
  UTF32LE_to_UTF16BE = UTF32Nat_to_UTF16Swp;
  UTF32LE_to_UTF16LE = UTF32Nat_to_UTF16Nat;
}

BOOL XMPMeta::RegisterNamespace(XMPMeta *this, char *a2, const char **a3, const char **a4, unsigned int *a5)
{
  v6 = XMP_NamespaceTable::Define(sRegisteredNamespaces, this, a2, a3, a4);
  __src = 0;
  v15 = 0;
  XMP_NamespaceTable::GetPrefix(sRegisteredNamespaces, this, &__src, &v15);
  __dst = 0;
  v13 = 0;
  v14 = 0;
  v7 = v15 - 1;
  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v14) = v15 - 1;
  if (v15 != 1)
  {
    memmove(&__dst, __src, v7);
  }

  *(&__dst + v7) = 0;
  v11 = sDefaultNamespacePrefixMapLock;
  XMP_ReadWriteLock::Acquire(sDefaultNamespacePrefixMapLock, 1);
  if (v14 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v14 >= 0)
  {
    v9 = HIBYTE(v14);
  }

  else
  {
    v9 = v13;
  }

  AdobeXMPCore_Int::INameSpacePrefixMap_I::InsertInDefaultNameSpacePrefixMap(p_dst, v9, this, 0xFFFFFFFFFFFFFFFFLL);
  XMP_AutoLock::~XMP_AutoLock(&v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst);
  }

  return v6;
}

void sub_185EC2AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  XMP_AutoLock::~XMP_AutoLock(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::string>::operator()[abi:fe200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::string>::operator()[abi:fe200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:fe200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string,std::string> &>(void *a1, uint64_t a2, const void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string,std::string> &>();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::less<std::string>::operator()[abi:fe200100](a1, a5, (a2 + 32)))
  {
    if (!std::less<std::string>::operator()[abi:fe200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::less<std::string>::operator()[abi:fe200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::less<std::string>::operator()[abi:fe200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__find_equal<std::string>(a1, a3, a5);
}

void XMP_AutoLock::~XMP_AutoLock(XMP_ReadWriteLock **this)
{
  v2 = *this;
  if (v2)
  {
    XMP_ReadWriteLock::Release(v2);
  }

  *this = 0;
}

uint64_t AdobeXMPCore_Int::INameSpacePrefixMap_I::InsertInDefaultNameSpacePrefixMap(AdobeXMPCore_Int::INameSpacePrefixMap_I *this, const char *a2, uint64_t a3, const char *a4)
{
  AdobeXMPCore_Int::ManageDefaultNameSpacePrefixMap(0, &v10);
  v8 = (*(*v10 + 40))(v10, this, a2, a3, a4);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v11);
  }

  return v8;
}

void sub_185EC2F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AdobeXMPCore_Int::AutoSharedLock::~AutoSharedLock(uint64_t **this)
{
  AdobeXMPCore_Int::AutoSharedLock::Release(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:fe200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:fe200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

BOOL AdobeXMPCore_Int::IUTF8StringComparator::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**a2 + 208))();
  v6 = (*(**a3 + 208))();
  v7 = (*(**a2 + 192))();
  v8 = (*(**a3 + 192))();
  if (v6 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  v10 = strncmp(v7, v8, v9);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5 == v6;
  }

  if (v11)
  {
    return v10 >> 31;
  }

  else
  {
    return v5 < v6;
  }
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::size(AdobeXMPCore_Int::UTF8StringImpl *this)
{
  result = *(this + 47);
  if (result < 0)
  {
    return *(this + 4);
  }

  return result;
}

uint64_t AdobeXMPCore_Int::UTF8StringImpl::c_str(AdobeXMPCore_Int::UTF8StringImpl *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

void RegisterAlias(char *a1, char *a2, char *a3, char *a4, unsigned int a5)
{
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  if (!a1 || !a2 || !a3 || !a4)
  {
    __assert_rtn("RegisterAlias", "XMPMeta.cpp", 509, "(aliasNS != 0) && (aliasProp != 0) && (actualNS != 0) && (actualProp != 0)");
  }

  ExpandXPath(a1, a2, &v76);
  ExpandXPath(a3, a4, &v73);
  if (v77 - v76 != 64 || v74 - v73 != 64)
  {
    v34 = "Alias and actual property names must be simple";
    v69 = 102;
    goto LABEL_121;
  }

  v8 = VerifySetOptions(a5, 0);
  v9 = v8;
  if (v8)
  {
    if ((v8 & 0xFFFFE1FF) != 0)
    {
      v34 = "Only array form flags are allowed";
      v69 = 103;
      goto LABEL_121;
    }

    if ((v74 - v73) <= 0x20)
    {
      goto LABEL_122;
    }

    LODWORD(v73[2].__r_.__value_.__r.__words[1]) |= v8;
    if (v8 > 0xFFF)
    {
      std::string::basic_string[abi:fe200100]<0>(&__p, "[?xml:lang=x-default]");
      v72 = 5;
      v10 = v74;
      if (v74 >= v75)
      {
        goto LABEL_15;
      }
    }

    else
    {
      std::string::basic_string[abi:fe200100]<0>(&__p, "[1]");
      v72 = 3;
      v10 = v74;
      if (v74 >= v75)
      {
LABEL_15:
        v74 = std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(&v73, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_17;
      }
    }

    v11 = *&__p.__r_.__value_.__l.__data_;
    v10->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
    *&v10->__r_.__value_.__l.__data_ = v11;
    memset(&__p, 0, sizeof(__p));
    LODWORD(v10[1].__r_.__value_.__l.__data_) = v72;
    v74 = (v10 + 32);
  }

LABEL_17:
  if ((v77 - v76) <= 0x20)
  {
    goto LABEL_122;
  }

  v12 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v76 + 32);
  if (sRegisteredAliasMap + 8 == v12)
  {
    if ((v74 - v73) <= 0x20)
    {
      goto LABEL_122;
    }

    v35 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, &v73[1].__r_.__value_.__l.__size_);
    if (sRegisteredAliasMap + 8 == v35)
    {
LABEL_60:
      v38 = sRegisteredAliasMap;
      v40 = sRegisteredAliasMap + 8;
      v39 = *sRegisteredAliasMap;
      if (*sRegisteredAliasMap == sRegisteredAliasMap + 8)
      {
LABEL_110:
        if ((v77 - v76) > 0x20)
        {
          std::pair<std::string const,std::vector<XPathStepInfo>>::pair[abi:fe200100]<std::string&,std::vector<XPathStepInfo>&,0>(&__p, (v76 + 32), &v73);
          std::__tree<std::__value_type<std::string,std::vector<XPathStepInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<XPathStepInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<XPathStepInfo>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<XPathStepInfo>>>(v38, &__p.__r_.__value_.__l.__data_);
          v79 = &v72;
          std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&v79);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        }
      }

      else
      {
        v41 = v76;
        v42 = v77 - v76;
        if ((v77 - v76) >= 0x21)
        {
          v34 = "Can't alias an array item to an array item";
          v43 = *sRegisteredAliasMap;
          do
          {
            v44 = v43[7];
            v45 = v43[8] - v44;
            if (v45 <= 0x20)
            {
              goto LABEL_122;
            }

            v46 = *(v41 + 55);
            if (v46 >= 0)
            {
              v47 = *(v41 + 55);
            }

            else
            {
              v47 = *(v41 + 40);
            }

            v48 = *(v44 + 55);
            v49 = v48;
            if ((v48 & 0x80u) != 0)
            {
              v48 = *(v44 + 40);
            }

            if (v47 == v48)
            {
              v50 = v46 >= 0 ? (v41 + 32) : *(v41 + 32);
              v53 = *(v44 + 32);
              v51 = v44 + 32;
              v52 = v53;
              v54 = (v49 >= 0 ? v51 : v52);
              v55 = memcmp(v50, v54, v47);
              if (v42 == 64 && v45 == 64 && !v55)
              {
                goto LABEL_120;
              }
            }

            v56 = v43[1];
            if (v56)
            {
              do
              {
                v57 = v56;
                v56 = *v56;
              }

              while (v56);
            }

            else
            {
              do
              {
                v57 = v43[2];
                v58 = *v57 == v43;
                v43 = v57;
              }

              while (!v58);
            }

            v43 = v57;
          }

          while (v57 != v40);
          while ((v77 - v76) > 0x20)
          {
            v59 = v39[7];
            if (v39[8] - v59 <= 0x20uLL)
            {
              break;
            }

            v60 = *(v76 + 55);
            if (v60 >= 0)
            {
              v61 = *(v76 + 55);
            }

            else
            {
              v61 = *(v76 + 40);
            }

            v62 = v59[2].__r_.__value_.__s.__data_[7];
            v63 = v62;
            if ((v62 & 0x80u) != 0)
            {
              v62 = v59[1].__r_.__value_.__r.__words[2];
            }

            if (v61 == v62)
            {
              v64 = v60 >= 0 ? (v76 + 32) : *(v76 + 32);
              v65 = v63 >= 0 ? &v59[1].__r_.__value_.__r.__words[1] : v59[1].__r_.__value_.__l.__size_;
              if (!memcmp(v64, v65, v61))
              {
                if (v74 == v73)
                {
                  goto LABEL_122;
                }

                std::string::operator=(v59, v73);
                if ((v74 - v73) <= 0x20)
                {
                  goto LABEL_122;
                }

                v66 = v39[7];
                if ((v39[8] - v66) <= 0x20)
                {
                  goto LABEL_122;
                }

                std::string::operator=((v66 + 32), (v73 + 32));
              }
            }

            v67 = v39[1];
            if (v67)
            {
              do
              {
                v68 = v67;
                v67 = *v67;
              }

              while (v67);
            }

            else
            {
              do
              {
                v68 = v39[2];
                v58 = *v68 == v39;
                v39 = v68;
              }

              while (!v58);
            }

            v38 = sRegisteredAliasMap;
            v39 = v68;
            if (v68 == (sRegisteredAliasMap + 8))
            {
              goto LABEL_110;
            }
          }
        }
      }

      goto LABEL_122;
    }

    if (v74 - v73 == 64)
    {
      if (&v73 != (v35 + 56))
      {
        std::vector<XPathStepInfo>::__assign_with_size[abi:fe200100]<XPathStepInfo*,XPathStepInfo*>(&v73, *(v35 + 56), *(v35 + 64), (*(v35 + 64) - *(v35 + 56)) >> 5);
      }

      goto LABEL_60;
    }

    v36 = *(v35 + 56);
    if (*(v35 + 64) - v36 != 64)
    {
LABEL_123:
      v34 = "Can't alias an array item to an array item";
      goto LABEL_120;
    }

    if (v74 != v73)
    {
      std::string::operator=(v73, v36);
      v37 = *(v35 + 56);
      if ((*(v35 + 64) - v37) > 0x20 && (v74 - v73) > 0x20)
      {
        std::string::operator=((v73 + 32), (v37 + 32));
        goto LABEL_60;
      }
    }

LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v13 = *(v12 + 56);
  v14 = *(v12 + 64) - v13;
  if (v14 <= 0x20)
  {
    goto LABEL_122;
  }

  if (v9 != (*(v13 + 56) & 0x1E00))
  {
    v34 = "Mismatch with existing alias array form";
    goto LABEL_120;
  }

  v15 = v73;
  if (v74 - v73 != v14)
  {
    v34 = "Mismatch with existing actual path";
    goto LABEL_120;
  }

  v16 = v73[2].__r_.__value_.__s.__data_[7];
  if (v16 >= 0)
  {
    v17 = v73[2].__r_.__value_.__s.__data_[7];
  }

  else
  {
    v17 = v73[1].__r_.__value_.__r.__words[2];
  }

  v18 = *(v13 + 55);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v13 + 40);
  }

  if (v17 != v18 || (v16 >= 0 ? (size = &v73[1].__r_.__value_.__s.__data_[8]) : (size = v73[1].__r_.__value_.__l.__size_), v19 >= 0 ? (v21 = (v13 + 32)) : (v21 = *(v13 + 32)), memcmp(size, v21, v17)))
  {
    v34 = "Mismatch with existing actual name";
    goto LABEL_120;
  }

  if (v14 == 96)
  {
    v22 = v15[3].__r_.__value_.__s.__data_[15];
    if (v22 >= 0)
    {
      v23 = v15[3].__r_.__value_.__s.__data_[15];
    }

    else
    {
      v23 = v15[3].__r_.__value_.__r.__words[0];
    }

    v24 = *(v13 + 87);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(v13 + 72);
    }

    if (v23 != v24 || ((v28 = v15[2].__r_.__value_.__r.__words[2], v27 = &v15[2].__r_.__value_.__s.__data_[16], v26 = v28, v22 >= 0) ? (v29 = v27) : (v29 = v26), (v32 = *(v13 + 64), v31 = (v13 + 64), v30 = v32, v25 >= 0) ? (v33 = v31) : (v33 = v30), memcmp(v29, v33, v23)))
    {
      v34 = "Mismatch with existing actual array item";
LABEL_120:
      v69 = 4;
LABEL_121:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = v69;
      exception[1] = v34;
      *(exception + 16) = 0;
    }
  }

LABEL_113:
  __p.__r_.__value_.__r.__words[0] = &v73;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  __p.__r_.__value_.__r.__words[0] = &v76;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
}

void sub_185EC37B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __p = &a19;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  __p = &a22;
  std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](&__p);
  _Unwind_Resume(a1);
}

void ExpandXPath(char *a1, _BYTE *a2, uint64_t a3)
{
  if (!a1 || !a2 || !a3 || (v5 = *a2, !*a2))
  {
    ExpandXPath();
  }

  memset(&v86, 0, sizeof(v86));
  v7 = 2;
  v8 = 1;
  while (v5 == 47 || v5 == 91)
  {
    ++v7;
LABEL_11:
    v5 = a2[v8++];
  }

  if (v5)
  {
    goto LABEL_11;
  }

  std::vector<XPathStepInfo>::clear[abi:fe200100](a3);
  std::vector<XPathStepInfo>::reserve(a3, v7);
  for (i = 0; ; ++i)
  {
    v10 = a2[i];
    v11 = (v10 - 42) > 0x31 || ((1 << (v10 - 42)) & 0x2000000000021) == 0;
    if (!v11 || v10 == 0)
    {
      break;
    }
  }

  if (!i)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v83 = "Empty initial XPath step";
    goto LABEL_174;
  }

  MEMORY[0x186602530](&v86, a2, i);
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v13 = &v86;
    goto LABEL_24;
  }

  v13 = v86.__r_.__value_.__r.__words[0];
  if (!v86.__r_.__value_.__r.__words[0])
  {
    goto LABEL_166;
  }

LABEL_24:
  v14 = v13->__r_.__value_.__s.__data_[0];
  if (!v13->__r_.__value_.__s.__data_[0])
  {
LABEL_166:
    v76 = "(schemaURI != 0) && (propName != 0) && (*propName != 0)";
    v77 = 116;
    goto LABEL_170;
  }

  if (*a3 != *(a3 + 8))
  {
    v76 = "(expandedXPath != 0) && (expandedXPath->empty())";
    v77 = 117;
LABEL_170:
    __assert_rtn("VerifyXPathRoot", "XMPCore_Impl.cpp", v77, v76);
  }

  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 101;
    v83 = "Schema namespace URI is required";
    goto LABEL_174;
  }

  if ((v14 - 63) < 2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v83 = "Top level name must not be a qualifier";
    goto LABEL_174;
  }

  v15 = &a2[i];
  v16 = 1;
  if (v13->__r_.__value_.__s.__data_[0])
  {
    while (v14 != 47 && v14 != 91)
    {
      v14 = v13->__r_.__value_.__s.__data_[v16++];
      if (!v14)
      {
        goto LABEL_32;
      }
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v83 = "Top level name must be simple";
LABEL_174:
    exception[1] = v83;
    *(exception + 16) = 0;
  }

LABEL_32:
  v92 = 0;
  if (!XMP_NamespaceTable::GetPrefix(sRegisteredNamespaces, a1, &v92, 0))
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 101;
    v83 = "Unregistered schema namespace URI";
    goto LABEL_174;
  }

    ;
  }

  VerifySimpleXMLName(v13, v13 + j);
  if (!v13->__r_.__value_.__s.__data_[j])
  {
    std::string::basic_string[abi:fe200100]<0>(&__p, a1);
    v91 = 0x80000000;
    v22 = *(a3 + 8);
    if (v22 >= *(a3 + 16))
    {
      v32 = std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(a3, &__p);
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *(a3 + 8) = v32;
      if (v33 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v23 = *&__p.__r_.__value_.__l.__data_;
      *(v22 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v22 = v23;
      memset(&__p, 0, sizeof(__p));
      *(v22 + 24) = v91;
      *(a3 + 8) = v22 + 32;
    }

    std::string::basic_string[abi:fe200100]<0>(&__p, v92);
    v91 = 0;
    v34 = *(a3 + 8);
    if (v34 >= *(a3 + 16))
    {
      v36 = std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(a3, &__p);
      v37 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *(a3 + 8) = v36;
      if (v37 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        v36 = *(a3 + 8);
      }
    }

    else
    {
      v35 = *&__p.__r_.__value_.__l.__data_;
      *(v34 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v34 = v35;
      memset(&__p, 0, sizeof(__p));
      *(v34 + 24) = v91;
      v36 = v34 + 32;
      *(a3 + 8) = v34 + 32;
    }

    if ((v36 - *a3) > 0x20)
    {
      std::string::append((*a3 + 32), v13);
      goto LABEL_65;
    }

LABEL_188:
    __break(1u);
    return;
  }

  v18 = strlen(v13 + j);
  VerifySimpleXMLName(&v13->__r_.__value_.__s.__data_[j + 1], v13 + j + v18);
  __s1 = 0;
  v88 = 0;
  v89 = 0;
  std::string::basic_string[abi:fe200100](&__s1, v13, j + 1);
  v19 = strlen(v92);
  v20 = v19;
  if ((SHIBYTE(v89) & 0x8000000000000000) == 0)
  {
    if (v19 == SHIBYTE(v89))
    {
      p_s1 = &__s1;
      goto LABEL_46;
    }

    goto LABEL_182;
  }

  if (v19 != v88)
  {
    goto LABEL_182;
  }

  if (v19 == -1)
  {
    std::string::__throw_out_of_range[abi:fe200100]();
  }

  p_s1 = __s1;
LABEL_46:
  if (memcmp(p_s1, v92, v20))
  {
LABEL_182:
    v84 = __cxa_allocate_exception(0x18uLL);
    *v84 = 101;
    v84[1] = "Schema namespace URI and prefix mismatch";
    *(v84 + 16) = 0;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, a1);
  v91 = 0x80000000;
  v24 = *(a3 + 8);
  if (v24 >= *(a3 + 16))
  {
    v26 = std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(a3, &__p);
    v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a3 + 8) = v26;
    if (v27 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v25 = *&__p.__r_.__value_.__l.__data_;
    *(v24 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v24 = v25;
    memset(&__p, 0, sizeof(__p));
    *(v24 + 24) = v91;
    *(a3 + 8) = v24 + 32;
  }

  std::string::basic_string[abi:fe200100]<0>(&__p, v13);
  v91 = 0;
  v28 = *(a3 + 8);
  if (v28 >= *(a3 + 16))
  {
    v30 = std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(a3, &__p);
    v31 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a3 + 8) = v30;
    if (v31 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v29 = *&__p.__r_.__value_.__l.__data_;
    *(v28 + 16) = *(&__p.__r_.__value_.__l + 2);
    *v28 = v29;
    memset(&__p, 0, sizeof(__p));
    *(v28 + 24) = v91;
    *(a3 + 8) = v28 + 32;
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(__s1);
  }

LABEL_65:
  if (*(a3 + 8) - *a3 <= 0x20uLL)
  {
    goto LABEL_188;
  }

  v38 = std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, *a3 + 32);
  if (*(a3 + 8) - *a3 <= 0x20uLL)
  {
    goto LABEL_188;
  }

  v39 = 0;
  v40 = 0;
  if (sRegisteredAliasMap + 8 == v38)
  {
    v41 = 1;
  }

  else
  {
    v41 = 17;
  }

  *(*a3 + 56) |= v41;
  while (1)
  {
    v42 = *v15;
    if (v42 != 47)
    {
      break;
    }

    v43 = *++v15;
    v42 = v43;
LABEL_75:
    if (v42 == 42)
    {
      v47 = *++v15;
      if (v47 != 91)
      {
        v80 = "Missing '[' after '*'";
        goto LABEL_172;
      }
    }

    else
    {
      v44 = v15;
      if (v42 != 91)
      {
        while ((v42 - 42 > 0x31 || ((1 << (v42 - 42)) & 0x2000000000021) == 0) && v42)
        {
          v45 = *++v44;
          LOBYTE(v42) = v45;
        }

        v46 = 1;
        v39 = v15;
        v40 = v44;
        goto LABEL_107;
      }
    }

    v48 = v15 + 1;
    v49 = v15[1];
    if ((v49 - 48) < 0xA)
    {
      do
      {
        v51 = *++v48;
        v50 = v51;
      }

      while ((v51 - 48) < 0xA);
      if (v50 == 93)
      {
        v46 = 3;
        goto LABEL_103;
      }

      v80 = "Missing ']' for integer array index";
LABEL_172:
      v81 = __cxa_allocate_exception(0x18uLL);
      *v81 = 102;
      v81[1] = v80;
      *(v81 + 16) = 0;
    }

    for (k = 0; ; ++k)
    {
      if (v49 == 61)
      {
        v53 = &v15[k];
        v54 = v15[k + 2];
        if (v54 == 34 || v54 == 39)
        {
          v55 = v53 + 3;
          v56 = v53[3];
          if (v53[3])
          {
            v40 = (v53 + 1);
            while (1)
            {
              if (v56 == v54)
              {
                v58 = *++v55;
                v57 = v58;
                if (v58 != v54)
                {
                  break;
                }
              }

              v59 = *++v55;
              v56 = v59;
              if (!v59)
              {
                goto LABEL_167;
              }
            }

            v46 = 6;
            v39 = (v15 + 1);
            goto LABEL_105;
          }

LABEL_167:
          v78 = "No terminating quote for array selector";
        }

        else
        {
          v78 = "Invalid quote in array selector";
        }

        v79 = __cxa_allocate_exception(0x18uLL);
        *v79 = 102;
        v79[1] = v78;
        *(v79 + 16) = 0;
      }

      if (v49 == 93)
      {
        break;
      }

      if (!v49)
      {
        v80 = "Missing ']' or '=' for array index";
        goto LABEL_172;
      }

      v49 = v15[k + 2];
    }

    v60 = k + 1;
    if (strncmp("[last()", v15, k + 1))
    {
      v80 = "Invalid non-numeric array index";
      goto LABEL_172;
    }

    v48 = &v15[v60];
    v46 = 4;
LABEL_103:
    v57 = *v48;
    v55 = v48;
LABEL_105:
    if (v57 != 93)
    {
      v80 = "Missing ']' for array index";
      goto LABEL_172;
    }

    v44 = (v55 + 1);
LABEL_107:
    if (v44 == v15)
    {
      v80 = "Empty XPath step";
      goto LABEL_172;
    }

    MEMORY[0x186602530](&v86, v15, v44 - v15);
    if (v46 == 6)
    {
      if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (!*(&v86.__r_.__value_.__s + 23))
        {
          goto LABEL_188;
        }

        v63 = v86.__r_.__value_.__s.__data_[1];
        if (v86.__r_.__value_.__s.__data_[1] == 64)
        {
          v64 = &v86;
          goto LABEL_123;
        }

LABEL_132:
        if (v63 == 63)
        {
          ++v39;
          v46 = 5;
        }

        else
        {
          v46 = 6;
        }

        goto LABEL_148;
      }

      if (!v86.__r_.__value_.__l.__size_)
      {
        goto LABEL_188;
      }

      v64 = v86.__r_.__value_.__r.__words[0];
      if (*(v86.__r_.__value_.__r.__words[0] + 1) == 64)
      {
LABEL_123:
        v64->__r_.__value_.__s.__data_[1] = 63;
        v66 = SHIBYTE(v86.__r_.__value_.__r.__words[2]);
        v67 = v86.__r_.__value_.__s.__data_[1];
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v68 = &v86;
        }

        else
        {
          v68 = v86.__r_.__value_.__r.__words[0];
        }

        if (strncmp(v68, "[?xml:lang=", 0xBuLL))
        {
          goto LABEL_177;
        }

        if ((v66 & 0x80000000) == 0)
        {
          if (!v66)
          {
            goto LABEL_188;
          }

          v63 = v67;
          goto LABEL_132;
        }
      }

      if (!v86.__r_.__value_.__l.__size_)
      {
        goto LABEL_188;
      }

      v63 = *(v86.__r_.__value_.__r.__words[0] + 1);
      goto LABEL_132;
    }

    if (v46 != 1)
    {
      goto LABEL_149;
    }

    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v61 = v86.__r_.__value_.__s.__data_[0];
      if (v86.__r_.__value_.__s.__data_[0] != 64)
      {
        goto LABEL_145;
      }

      v62 = &v86;
LABEL_118:
      v62->__r_.__value_.__s.__data_[0] = 63;
      if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v86.__r_.__value_.__l.__size_ != 9)
        {
          goto LABEL_177;
        }

        v65 = v86.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) != 9)
        {
          goto LABEL_177;
        }

        v65 = &v86;
      }

      v69 = v65->__r_.__value_.__r.__words[0];
      v70 = v65->__r_.__value_.__s.__data_[8];
      if (v69 != 0x6E616C3A6C6D783FLL || v70 != 103)
      {
LABEL_177:
        v80 = "Only xml:lang allowed with '@'";
        goto LABEL_172;
      }

      v62 = &v86;
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = v86.__r_.__value_.__r.__words[0];
      }

      goto LABEL_144;
    }

    v62 = v86.__r_.__value_.__r.__words[0];
    if (*v86.__r_.__value_.__l.__data_ == 64)
    {
      goto LABEL_118;
    }

LABEL_144:
    v61 = v62->__r_.__value_.__s.__data_[0];
LABEL_145:
    if (v61 == 63)
    {
      ++v39;
      v46 = 2;
    }

    else
    {
      v46 = 1;
    }

LABEL_148:
    VerifyQualName(v39, v40);
LABEL_149:
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v85, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
    }

    else
    {
      v85 = v86;
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v85;
    }

    v91 = v46;
    v72 = *(a3 + 8);
    if (v72 >= *(a3 + 16))
    {
      v74 = std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(a3, &__p);
      v75 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      *(a3 + 8) = v74;
      if (v75 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v73 = *&__p.__r_.__value_.__l.__data_;
      *(v72 + 16) = *(&__p.__r_.__value_.__l + 2);
      *v72 = v73;
      memset(&__p, 0, sizeof(__p));
      *(v72 + 24) = v91;
      *(a3 + 8) = v72 + 32;
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v15 = v44;
  }

  if (*v15)
  {
    goto LABEL_75;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }
}

void sub_185EC420C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<XPathStepInfo>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<XPathStepInfo>>(result, a2);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

void sub_185EC4368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<XPathStepInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

char *VerifySimpleXMLName(char *result, char *a2)
{
  if (result >= a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v8 = "Empty XML name";
LABEL_67:
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  v3 = result;
  v4 = *result;
  if ((v4 & 0x80000000) == 0)
  {
    v5 = result + 1;
    if ((v4 - 97) < 0x1A)
    {
      goto LABEL_19;
    }

    if (v4 == 95 || (v4 - 65) < 0x1A)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v19 = 0;
  v18 = 0;
  result = CodePoint_from_UTF8(result, 4uLL, &v19, &v18);
  v5 = &v3[v18];
  if (v19 - 192 >= 0x17 && v19 - 216 >= 0x1F)
  {
    v10 = v19 - 248 >= 0x208 && v19 - 880 >= 0xE;
    if (v10 && v19 - 895 >= 0x1C81 && (v19 & 0xFFFFFFFE) != 0x200C && v19 - 8304 >= 0x120 && v19 - 11264 >= 0x3F0 && v19 - 12289 >= 0xA7FF && v19 - 63744 >= 0x4D0 && v19 - 65008 >= 0x20E && (v19 - 0x10000) >> 17 > 6)
    {
LABEL_9:
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 102;
      v8 = "Bad XML name";
      goto LABEL_67;
    }
  }

LABEL_19:
  while (v5 < a2)
  {
    if (*v5 < 0)
    {
      v19 = 0;
      v18 = 0;
      result = CodePoint_from_UTF8(v5, 4uLL, &v19, &v18);
      v5 += v18;
      if (v19 - 192 >= 0x17 && v19 - 216 >= 0x1F)
      {
        v17 = v19 - 248 >= 0x208 && v19 - 880 >= 0xE;
        if (v17 && v19 - 895 >= 0x1C81 && (v19 & 0xFFFFFFFE) != 0x200C && v19 - 8304 >= 0x120 && v19 - 11264 >= 0x3F0 && v19 - 12289 >= 0xA7FF && v19 - 63744 >= 0x4D0 && v19 - 768 >= 0x70 && v19 - 65008 >= 0x20E && v19 - 0x10000 >= 0xE0000 && v19 - 8255 >= 2 && v19 != 183)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      v11 = *v5++;
      if ((v11 - 97) >= 0x1A && v11 != 95 && (v11 - 65) >= 0x1A)
      {
        v13 = v11 - 48;
        v14 = v11 - 45;
        if (v13 >= 0xA && v14 >= 2)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t std::vector<XPathStepInfo>::__emplace_back_slow_path<XPathStepInfo>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<XPathStepInfo>>(a1, v7);
  }

  v8 = 32 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v8 + 24) = *(a2 + 6);
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = 32 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<XPathStepInfo>,XPathStepInfo*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<XPathStepInfo>::~__split_buffer(&v16);
  return v15;
}

void sub_185EC488C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<XPathStepInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

AdobeXMPCore_Int::ISharedMutex *AdobeXMPCore_Int::ThreadSafeImpl::EnableThreadSafety(AdobeXMPCore_Int::ISharedMutex *this)
{
  if (!*(this + 1))
  {
    AdobeXMPCore_Int::ISharedMutex::CreateSharedMutex(this);
  }

  return this;
}

uint64_t XMP_ReadWriteLock::Acquire(pthread_rwlock_t *this, int a2)
{
  if (a2)
  {
    v3 = a2;
    result = pthread_rwlock_wrlock(this);
    if (!result)
    {
      BYTE4(this[1].__sig) = v3;
      if (atomic_load(&this[1]))
      {
        XMP_ReadWriteLock::Acquire();
      }

      goto LABEL_7;
    }

    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v7 = "Acquire pthread write lock failed";
LABEL_11:
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  result = pthread_rwlock_rdlock(this);
  if (result)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 11;
    v7 = "Acquire pthread read lock failed";
    goto LABEL_11;
  }

  if (BYTE4(this[1].__sig) == 1)
  {
    XMP_ReadWriteLock::Acquire();
  }

LABEL_7:
  atomic_fetch_add(&this[1], 1u);
  return result;
}

uint64_t VerifySetOptions(unsigned int a1, const char *a2)
{
  if ((a1 & 0xDFFFE0FD) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v6 = "Unrecognized option flags";
    goto LABEL_13;
  }

  v2 = (((a1 >> 1) & 0x800 | a1) >> 1) & 0x400 | (a1 >> 1) & 0x800 | a1;
  v3 = (v2 >> 1) & 0x200 | v2;
  if ((a1 & 0x100) != 0 && (v3 & 0x200) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v6 = "IsStruct and IsArray options are mutually exclusive";
    goto LABEL_13;
  }

  if ((a1 & 2) != 0 && (v3 & 0x1F00) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v6 = "Structs and arrays can't have value options";
    goto LABEL_13;
  }

  if (a2 && (v3 & 0x1F00) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 103;
    v6 = "Structs and arrays can't have string values";
LABEL_13:
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return v3;
}

uint64_t Common::HandlerRegistry::initialize(Common::HandlerRegistry *this)
{
  v2 = Common::HandlerRegistry::registerNormalHandler(this, 0x50534420u, 0x227Fu, PSD_CheckFormat, PSD_MetaHandlerCTor, 0);
  v3 = Common::HandlerRegistry::registerNormalHandler(this, 0x54494646u, 0x227Fu, TIFF_CheckFormat, TIFF_MetaHandlerCTor, 0);
  v4 = Common::HandlerRegistry::registerNormalHandler(this, 0x47494620u, 0x46Bu, GIF_CheckFormat, GIF_MetaHandlerCTor, 0);
  result = Common::HandlerRegistry::registerNormalHandler(this, 0x504E4720u, 0x46Bu, PNG_CheckFormat, PNG_MetaHandlerCTor, 0);
  if (!v2 || !v3 || !v4 || (result & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    exception[1] = "Failure initializing linked-in file handlers";
    *(exception + 16) = 0;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int,Common::XMPFileHandlerInfo>>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>>>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,Common::XMPFileHandlerInfo>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,Common::XMPFileHandlerInfo>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t ___ZN25IIOImagePixelDataProvider24createEncodingTempBufferEPmS0__block_invoke()
{
  v5 = 0;
  v3 = 4;
  v4 = 0;
  v2 = 8;
  result = sysctlbyname("hw.physicalcpu_max", &v5, &v3, 0, 0);
  v1 = 0x100000;
  if (!result && v3 == 4)
  {
    result = sysctlbyname("hw.l2cachesize", &v4, &v2, 0, 0);
    v1 = 0x100000;
    if (!result && v2 == 8)
    {
      v1 = v4 >> 1;
    }
  }

  if (v1 >= 0x100000)
  {
    v1 = 0x100000;
  }

  IIOImagePixelDataProvider::createEncodingTempBuffer(unsigned long *,unsigned long *)::recommendedBufferSize = v1;
  return result;
}

uint64_t Common::HandlerRegistry::getHandlerInfo(Common::HandlerRegistry *this, unsigned int a2)
{
  v2 = *(*this + 8);
  if (v2)
  {
    v3 = *this + 8;
    do
    {
      v4 = *(v2 + 32);
      v5 = v4 >= a2;
      v6 = v4 < a2;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != *this + 8 && *(v3 + 32) <= a2)
    {
      return v3 + 40;
    }
  }

  v7 = *(this + 1);
  v10 = *(v7 + 8);
  v8 = v7 + 8;
  v9 = v10;
  if (v10)
  {
    v3 = v8;
    do
    {
      v11 = *(v9 + 32);
      v5 = v11 >= a2;
      v12 = v11 < a2;
      if (v5)
      {
        v3 = v9;
      }

      v9 = *(v9 + 8 * v12);
    }

    while (v9);
    if (v3 != v8 && *(v3 + 32) <= a2)
    {
      return v3 + 40;
    }
  }

  v13 = *(this + 2);
  v16 = *(v13 + 8);
  v14 = v13 + 8;
  v15 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = v14;
  do
  {
    v18 = *(v15 + 32);
    v5 = v18 >= a2;
    v19 = v18 < a2;
    if (v5)
    {
      v17 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v17 == v14)
  {
    return 0;
  }

  v20 = *(v17 + 32);
  v21 = v17 + 40;
  if (v20 <= a2)
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

void WXMPMeta_CTor_1(void *a1)
{
  *a1 = 0;
  if (sUseNewCoreAPIs)
  {
    operator new();
  }

  operator new();
}

void sub_185EC5094(void *a1, int a2)
{
  v5 = v3;
  MEMORY[0x186602850](v5, 0x10B3C4030275F38);
  if (a2 == 3)
  {
    v7 = __cxa_begin_catch(a1);
    *(v2 + 32) = *v7;
    v8 = *(v7 + 1);
    if (!v8)
    {
      v8 = "";
    }

    *v2 = v8;
    *(v2 + 8) = "XMP";
  }

  else
  {
    v9 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v2 + 32) = 13;
      v10 = (*(*v9 + 16))(v9);
      v11 = "";
      if (v10)
      {
        v11 = v10;
      }
    }

    else
    {
      *(v2 + 32) = 14;
      v11 = "Caught unknown exception";
    }

    *v2 = v11;
  }

  __cxa_end_catch();
}

void TXMPMeta<std::string>::TXMPMeta(void *a1)
{
  *a1 = &unk_1EF4D9060;
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  WXMPMeta_CTor_1(v1);
}

{
  *a1 = &unk_1EF4D9060;
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  WXMPMeta_CTor_1(v1);
}

void XMPMeta::XMPMeta(XMPMeta *this)
{
  *this = &unk_1EF4FCF18;
  *(this + 2) = 0;
  XMP_ReadWriteLock::XMP_ReadWriteLock((this + 16));
  XMP_Node::XMP_Node((this + 224), 0, "", 0);
  *(this + 45) = 1;
  *(this + 368) = 0;
  *(this + 43) = 0;
  *(this + 44) = &unk_1EF4FD010;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 47) = 0;
  if (sDefaultErrorCallback(void)::onceToken != -1)
  {
    XMPMeta::XMPMeta();
  }

  if (*(gDefaultErrorCallback + 32))
  {
    *(this + 47) = *(gDefaultErrorCallback + 24);
    *(this + 48) = *(gDefaultErrorCallback + 32);
    *(this + 49) = *(gDefaultErrorCallback + 40);
    *(this + 90) = *(gDefaultErrorCallback + 8);
  }
}

void WXMPMeta_SetErrorCallback_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a6 = 0;
  (*(*a1 + 216))(a1, a2, a3, a4, a5);
  XMP_AutoLock::~XMP_AutoLock(&v12);
}

vImagePixelCount IIOImagePixelDataProvider::getBytesDataProvider(IIOImagePixelDataProvider *this, unsigned __int8 *a2, unint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    v5 = *(this + 19);
    v6 = *(this + 20);
    if (v6 > v5)
    {
      if (v5 + a3 <= v6)
      {
        v8 = a3;
      }

      else
      {
        v8 = v6 - v5;
      }

      v9 = *(this + 27);
      if (!v9)
      {
        DataProvider = CGImageGetDataProvider(*(this + 2));
        if (!DataProvider)
        {
          return 0;
        }

        v32 = DataProvider;
        v33 = CGDataProviderCopyData(DataProvider);
        *(this + 27) = v33;
        if (!v33)
        {
          return 0;
        }

        v34 = (*(this + 4) - 1) * *(this + 16) + ((*(this + 3) * *(this + 11)) >> 3);
        Length = CFDataGetLength(v33);
        if (Length < v34)
        {
          v36 = Length;
          CFRelease(*(this + 27));
          *(this + 27) = 0;
          _cg_jpeg_mem_term("getBytesDataProvider", 1042, "CGDataProviderCopyData(%p) did not return enough data. Got %d, expected %d.\n", v32, v36, *(this + 8) * *(this + 32));
          v37 = CGAccessSessionCreate();
          *&v38 = _cg_jpeg_mem_term("getBytesDataProvider", 1045, "Making a copy of the data via CGAccessSession (%p).\n", v37).n128_u64[0];
          if (v37)
          {
            SizeOfData = CGDataProviderGetSizeOfData();
            v40 = *(this + 16);
            v41 = *(this + 4);
            if (SizeOfData != v41 * v40)
            {
              SizeOfData = (v41 - 1) * v40 + *(this + 3) * (*(this + 11) >> 3);
            }

            Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], SizeOfData);
            if (Mutable)
            {
              v43 = Mutable;
              CFDataSetLength(Mutable, SizeOfData);
              CFDataGetMutableBytePtr(v43);
              Bytes = CGAccessSessionGetBytes();
              if (Bytes == SizeOfData)
              {
                _cg_jpeg_mem_term("getBytesDataProvider", 1066, "    success: (%p) CGAccessSessionGetBytes - got all data.\n", v32);
                *(this + 27) = CFRetain(v43);
              }

              else
              {
                _cg_jpeg_mem_term("getBytesDataProvider", 1070, "*** CGAccessSessionGetBytes did not return enough data. Expected %zd, Got %zd.\n", SizeOfData, Bytes);
              }

              CFRelease(v43);
            }

            else
            {
              _cg_jpeg_mem_term("getBytesDataProvider", 1075, "Failed to create CFData.\n");
            }

            CGAccessSessionRelease();
          }

          else
          {
            _cg_jpeg_mem_term("getBytesDataProvider", 1080, "*** Failed to create CGAccessSession.\n", v38);
          }
        }

        v9 = *(this + 27);
        if (!v9)
        {
          return 0;
        }
      }

      BytePtr = CFDataGetBytePtr(v9);
      if (BytePtr)
      {
        v11 = BytePtr;
        v13 = *(this + 18);
        v12 = *(this + 19);
        v14 = (8 * (v12 % v13) / *(this + 21));
        v15 = (v12 / v13);
        v16 = IIOImagePixelDataProvider::endingPointForByteCount(this, v8);
        v47.x = v16;
        v18 = v17;
        LODWORD(v16) = *(this + 11);
        v19 = &v11[*(this + 16) * v15 + (v14 * *&v16 * 0.125)];
        v46.x = v14;
        v46.y = v15;
        v47.y = v18;
        v3 = IIOImagePixelDataProvider::convertBytesWithRange(this, v19, a2, v46, v47, v8);
        if ((*(this + 56) & 0x1F) == 0 && (*(this + 24) & 0x1F) == 3)
        {
          Mask = CGImageGetMask();
          if (Mask)
          {
            v21 = Mask;
            BytesPerRow = CGImageGetBytesPerRow(Mask);
            v23 = CGImageGetDataProvider(v21);
            v24 = CGDataProviderCopyData(v23);
            v25 = CFDataGetBytePtr(v24);
            if (v18 > v15)
            {
              v26 = v15;
              v27 = a2 + 1;
              v28 = *(this + 3);
              v29 = &v25[BytesPerRow * v15];
              do
              {
                if (v28)
                {
                  for (i = 0; i < v28; ++i)
                  {
                    *v27 = v29[i];
                    v27 += 2;
                    v28 = *(this + 3);
                  }
                }

                ++v26;
                v29 += BytesPerRow;
              }

              while (v18 > v26);
            }

            CFRelease(v24);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void TXMPMeta<std::string>::SetErrorCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_SetErrorCallback_1(*(a1 + 8), WrapErrorNotify, a2, a3, a4, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }
}

vImagePixelCount IIOImagePixelDataProvider::convertBytesWithRange(IIOImagePixelDataProvider *this, unsigned __int8 *a2, unsigned __int8 *a3, CGPoint a4, CGPoint a5, vImagePixelCount a6)
{
  v7 = a3;
  y = a5.y;
  x = a5.x;
  v10 = a4.y;
  v11 = a4.x;
  v12 = a2;
  memset(&src, 0, sizeof(src));
  memset(&v35, 0, sizeof(v35));
  if (a4.x <= 0.0 || a5.y <= a4.y)
  {
    v15 = a4.y;
    v16 = a6;
    goto LABEL_11;
  }

  v17 = (*(this + 3) - a4.x);
  src.data = a2;
  src.height = 1;
  LODWORD(a4.y) = *(this + 11);
  *&v18 = a4.x * *&a4.y * 0.125;
  v19 = (*(this + 16) - *&v18);
  src.width = v17;
  src.rowBytes = v19;
  v35.data = a3;
  v35.height = 1;
  LODWORD(v18) = *(this + 21);
  v20 = *(this + 18) - a4.x * v18 * 0.125;
  v35.width = v17;
  v35.rowBytes = v20;
  result = IIOImagePixelDataProvider::convertBytes(this, &src, &v35);
  if (result)
  {
    v16 = a6 - result;
    v22 = *(this + 19) + result;
    if (v22 >= *(this + 20))
    {
      v22 = *(this + 20);
    }

    *(this + 19) = v22;
    v12 += src.rowBytes;
    v7 += result;
    v15 = v10 + 1.0;
    v11 = 0.0;
LABEL_11:
    if (y > v10 && v16 != 0)
    {
      v24 = *(this + 3);
      src.data = v12;
      src.height = (y - v15);
      v25 = *(this + 16);
      src.width = v24;
      src.rowBytes = v25;
      v35.data = v7;
      v35.height = src.height;
      v26 = *(this + 18);
      v35.width = v24;
      v35.rowBytes = v26;
      v27 = IIOImagePixelDataProvider::convertBytes(this, &src, &v35);
      if (!v27)
      {
        return a6 - v16;
      }

      v16 -= v27;
      v28 = *(this + 19) + v27;
      if (v28 >= *(this + 20))
      {
        v28 = *(this + 20);
      }

      *(this + 19) = v28;
      v12 += src.height * src.rowBytes;
      v7 += v27;
    }

    if (!v16)
    {
      v33 = 0;
      return v33 + a6;
    }

    v29 = (x - v11);
    src.data = v12;
    src.height = 1;
    v30 = (*(this + 11) * v29) >> 3;
    src.width = v29;
    src.rowBytes = v30;
    v35.data = v7;
    v35.height = 1;
    v31 = (*(this + 21) * v29) >> 3;
    v35.width = v29;
    v35.rowBytes = v31;
    v32 = IIOImagePixelDataProvider::convertBytes(this, &src, &v35);
    if (v32)
    {
      v33 = v32 - v16;
      v34 = *(this + 19) + v32;
      if (v34 >= *(this + 20))
      {
        v34 = *(this + 20);
      }

      *(this + 19) = v34;
      return v33 + a6;
    }

    return a6 - v16;
  }

  return result;
}

uint64_t XMPMeta::SetErrorCallback(uint64_t this, unsigned __int8 (*a2)(BOOL (*)(void *, unsigned __int8, int, const char *), void *, unsigned __int8, int, const char *), BOOL (*a3)(void *, unsigned __int8, int, const char *), void *a4, int a5)
{
  if (!a2)
  {
    XMPMeta::SetErrorCallback();
  }

  *(this + 364) = 0;
  *(this + 368) = 0;
  *(this + 376) = a2;
  *(this + 384) = a3;
  *(this + 392) = a4;
  *(this + 360) = a5;
  return this;
}

void WXMPMeta_ParseFromBuffer_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = (a1 + 16);
  XMP_ReadWriteLock::Acquire((a1 + 16), 1);
  *a5 = 0;
  (*(*a1 + 200))(a1, a2, a3, a4);
  XMP_AutoLock::~XMP_AutoLock(&v10);
}

void TXMPMeta<std::string>::ParseFromBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_ParseFromBuffer_1(*(a1 + 8), a2, a3, a4, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }
}

uint64_t XMPMeta::ParseFromBuffer(XMPMeta *this, const char *a2, unsigned int a3, char a4)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null parse buffer";
    *(exception + 16) = 0;
  }

  if (a3 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  if (a3 == -1 && a2)
  {
    v7 = 0;
    v6 = -1;
    while (a2[v7])
    {
      if (++v7 == 0xFFFFFFFFLL)
      {
        goto LABEL_13;
      }
    }

    v6 = v7;
  }

LABEL_13:
  v8 = a4 & 2;
  if (*(this + 43))
  {
    result = XMPMeta::ProcessXMLBuffer(this, a2, v6, v8 == 0);
    if (v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = result;
    }

    if (v10)
    {
      XMPMeta::ProcessXMLTree(this, a4);
      result = *(this + 43);
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      *(this + 43) = 0;
    }
  }

  else
  {
    result = XMP_Node::ClearNode((this + 224));
    if (v6 | v8)
    {
      XMP_NewExpatAdapter();
    }
  }

  return result;
}

void sub_185EC5ED8(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *(v1 + 344);
  if (v2)
  {
    XMPMeta::ParseFromBuffer(v2);
  }

  *(v1 + 344) = 0;
  __cxa_rethrow();
}

void *XMP_Node::ClearNode(XMP_Node *this)
{
  *(this + 2) = 0;
  std::string::erase((this + 16), 0, 0xFFFFFFFFFFFFFFFFLL);
  std::string::erase((this + 40), 0, 0xFFFFFFFFFFFFFFFFLL);
  XMP_Node::RemoveChildren(this);

  return XMP_Node::RemoveQualifiers(this);
}

void *XMP_Node::RemoveChildren(void *this)
{
  v1 = this;
  v2 = this[9];
  v3 = this[10] - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    while (1)
    {
      v6 = v1[9];
      if (v4 >= (v1[10] - v6) >> 3)
      {
        break;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      if (v5 == ++v4)
      {
        v2 = v1[9];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v1[10] = v2;
  }

  return this;
}

void *XMP_Node::RemoveQualifiers(void *this)
{
  v1 = this;
  v2 = this[12];
  v3 = this[13] - v2;
  if (v3)
  {
    v4 = 0;
    if ((v3 >> 3) <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 >> 3;
    }

    while (1)
    {
      v6 = v1[12];
      if (v4 >= (v1[13] - v6) >> 3)
      {
        break;
      }

      this = *(v6 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      if (v5 == ++v4)
      {
        v2 = v1[12];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v1[13] = v2;
  }

  return this;
}

void XML_Node::XML_Node(XML_Node *this, XML_Node *a2, const char *__s, char a4)
{
  *this = &unk_1EF4FF1C8;
  *(this + 8) = a4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v7 = strlen(__s);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:fe200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v9 = this + 40;
  *(this + 63) = v7;
  if (v7)
  {
    memmove(v9, __s, v7);
  }

  v9[v8] = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = a2;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
}

void sub_185EC6210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void ExpatAdapter::ExpatAdapter(ExpatAdapter *this, int a2)
{
  *this = &unk_1EF4FF190;
  v4 = this + 8;
  XML_Node::XML_Node((this + 8), 0, "", 0);
  *(this + 10) = 0u;
  v5 = (this + 160);
  *(this + 24) = 0;
  *(this + 11) = 0u;
  *(this + 50) = -1;
  *(this + 26) = 0;
  *(this + 31) = 0;
  v6 = (this + 248);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *this = &unk_1EF4FF130;
  *(this + 32) = 0;
  *(this + 33) = 0;
  NS = XML_ParserCreateNS(0, 64);
  *(this + 31) = NS;
  if (NS)
  {
    if (!a2)
    {
      operator new();
    }

    *(this + 32) = sRegisteredNamespaces;
    XML_SetUserData(NS, this);
    XML_SetNamespaceDeclHandler(*v6, StartNamespaceDeclHandler, EndNamespaceDeclHandler);
    XML_SetElementHandler(*v6, StartElementHandler, EndElementHandler);
    XML_SetCharacterDataHandler(*v6, CharacterDataHandler);
    XML_SetCdataSectionHandler(*v6, StartCdataSectionHandler, EndCdataSectionHandler);
    XML_SetProcessingInstructionHandler(*v6, ProcessingInstructionHandler);
    XML_SetCommentHandler(*v6, CommentHandler);
    v9 = *(this + 21);
    v8 = *(this + 22);
    if (v9 >= v8)
    {
      v11 = (v9 - *v5) >> 3;
      if ((v11 + 1) >> 61)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v12 = v8 - *v5;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(this + 160, v14);
      }

      v15 = (8 * v11);
      *v15 = v4;
      v10 = 8 * v11 + 8;
      v16 = *(this + 20);
      v17 = *(this + 21) - v16;
      v18 = v15 - v17;
      memcpy(v15 - v17, v16, v17);
      v19 = *(this + 20);
      *(this + 20) = v18;
      *(this + 21) = v10;
      *(this + 22) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = v4;
      v10 = (v9 + 1);
    }

    *(this + 21) = v10;
  }

  else
  {
    v20[0] = 15;
    v20[1] = "Failure creating Expat parser";
    v20[2] = 0;
    (*(*this + 32))(this, 3, v20);
  }
}

void sub_185EC6504(_Unwind_Exception *a1)
{
  MEMORY[0x186602850](v2, 0x10A1C40F44AF5F3);
  XMLParserAdapter::~XMLParserAdapter(v1);
  _Unwind_Resume(a1);
}

uint64_t XMPMeta::ProcessXMLBuffer(XMPMeta *this, const char *a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = *(this + 43);
  v9 = *(v8 + 200);
  if (v9 == -1)
  {
    v10 = *(v8 + 208);
    if (a3 < 0x10 || v10)
    {
      if (16 - v10 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = 16 - v10;
      }

      memcpy((v8 + 216 + v10), a2, v13);
      v11 = *(v8 + 208) + v13;
      *(v8 + 208) = v11;
      if ((a4 & 1) == 0 && v11 < 0x10)
      {
        return 0;
      }

      v5 -= v13;
      v6 += v13;
      v12 = (v8 + 216);
    }

    else
    {
      v11 = a3;
      v12 = v6;
    }

    v9 = DetermineInputEncoding(v12, v11);
    *(v8 + 200) = v9;
  }

  v14 = *(v8 + 208);
  if (v9)
  {
    if (v14)
    {
      (*(*v8 + 16))(v8, v8 + 216, v14, 0);
    }

    (*(*v8 + 16))(v8, v6, v5, a4);
    return 1;
  }

  if (!v14)
  {
LABEL_31:
    v22 = ProcessUTF8Portion(*(this + 43), v6, v5, a4);
    v23 = v5 > v22;
    v24 = v5 - v22;
    if (v23)
    {
      if (a4)
      {
        XMPMeta::ProcessXMLBuffer();
      }

      if (v24 >= 0x11)
      {
        exception = __cxa_allocate_exception(0x18uLL);
        *exception = 9;
        exception[1] = "Parser bytesLeft too large";
        *(exception + 16) = 0;
      }

      memcpy((v8 + 216), &v6[v22], v24);
      result = 0;
      *(v8 + 208) = v24;
      return result;
    }

    return 1;
  }

  v15 = v8 + 216;
  while (1)
  {
    if (16 - v14 >= v5)
    {
      v16 = v5;
    }

    else
    {
      v16 = 16 - v14;
    }

    memcpy((v15 + v14), v6, v16);
    v17 = *(v8 + 208) + v16;
    *(v8 + 208) = v17;
    if ((a4 & 1) == 0 && v17 < 0x10)
    {
      return 0;
    }

    v18 = v5 - v16;
    v19 = ProcessUTF8Portion(*(this + 43), (v8 + 216), v17, a4);
    v20 = *(v8 + 208);
    v21 = v20 - v19;
    if (v20 == v19)
    {
      v6 += v16;
LABEL_30:
      *(v8 + 208) = 0;
      v5 = v18;
      goto LABEL_31;
    }

    if (v21 <= v16)
    {
      v6 = &v6[v16 - v21];
      v18 += v21;
      goto LABEL_30;
    }

    if (!v18)
    {
      break;
    }

    v14 = v20 - v16;
    *(v8 + 208) = v20 - v16;
    if (v20 == v16)
    {
      goto LABEL_31;
    }
  }

  if (a4)
  {
    XMPMeta::ProcessXMLBuffer();
  }

  *(v8 + 208) = v21;
  memcpy((v8 + 216), (v15 + v19), v21);
  return 0;
}

uint64_t DetermineInputEncoding(const unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    result = 2;
    if (a2 < 4)
    {
      return result;
    }

    v5 = a1[1] == 0;
    v6 = 4;
    goto LABEL_15;
  }

  if ((v4 & 0x80) != 0)
  {
    if (v4 != 239)
    {
      if (v4 == 254)
      {
        return 2;
      }

      goto LABEL_12;
    }

    return 0;
  }

  if (a1[1])
  {
    return 0;
  }

LABEL_12:
  result = 3;
  if (a2 < 4)
  {
    return result;
  }

  v5 = a1[2] == 0;
  v6 = 5;
LABEL_15:
  if (v5)
  {
    return v6;
  }

  else
  {
    return result;
  }
}

uint64_t ProcessUTF8Portion(XMLParserAdapter *a1, const unsigned __int8 *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v8 = &a2[a3];
  if (a3 >= 1)
  {
    v9 = a2;
    while (1)
    {
      v10 = *v9;
      if (v10 != 38 && v10 - 127 > 0xFFFFFFA0)
      {
        goto LABEL_30;
      }

      if ((v10 & 0x80) != 0)
      {
        if (v10 >= 0xC0)
        {
          v11 = 4 * (v10 & 0x3F);
          v12 = 2;
          if (v11 >= 0x80)
          {
            do
            {
              ++v12;
              v11 = (2 * v11) & 0xF8;
            }

            while (v11 > 0x7F);
          }

          if (&v9[v12] <= v8)
          {
            v29 = v12 - 1;
            v30 = (v9 + 1);
            while (1)
            {
              v31 = *v30++;
              if ((v31 & 0xC0) != 0x80)
              {
                break;
              }

              if (!--v29)
              {
                v9 += v12 - 1;
                goto LABEL_30;
              }
            }
          }

          else if (!a4)
          {
LABEL_74:
            (*(*a1 + 16))(a1, a2, v9 - a2, 0);
            return v9 - v6;
          }
        }

        (*(*a1 + 16))(a1, a2, v9 - a2, 0);
        v13 = 0;
        v14 = kReplaceLatin1[*v9 - 128];
        while (v14[v13])
        {
          ++v13;
          v15 = 0xFFFFFFFFLL;
          if (v13 == 0xFFFFFFFFLL)
          {
            goto LABEL_28;
          }
        }

        v15 = v13;
LABEL_28:
        (*(*a1 + 16))(a1, v14, v15, 0);
LABEL_29:
        a2 = v9 + 1;
        goto LABEL_30;
      }

      if (v10 < 0x20 || v10 == 127)
      {
        v16 = v10 > 0xD;
        v17 = (1 << v10) & 0x2600;
        if (!v16 && v17 != 0)
        {
          goto LABEL_30;
        }

        (*(*a1 + 16))(a1, a2, v9 - a2, 0);
        (*(*a1 + 16))(a1, " ", 1, 0);
        goto LABEL_29;
      }

      if (v10 != 38)
      {
        ProcessUTF8Portion();
      }

      if ((v8 - v9) >= 5)
      {
        break;
      }

LABEL_10:
      if ((a4 & 1) == 0)
      {
        goto LABEL_74;
      }

LABEL_30:
      if (++v9 >= v8)
      {
        goto LABEL_68;
      }
    }

    if (v9[1] != 35 || v9[2] != 120)
    {
      goto LABEL_30;
    }

    v19 = v9 + 3;
    v20 = v9[3];
    v21 = v20 - 48;
    v22 = v20 - 65;
    if ((v20 - 97) <= 5)
    {
      v23 = v20 - 87;
    }

    else
    {
      v23 = 0;
    }

    if ((v20 - 97) <= 5)
    {
      v19 = v9 + 4;
    }

    v24 = v20 - 55;
    if (v22 <= 5)
    {
      v25 = v9 + 4;
    }

    else
    {
      v24 = v23;
      v25 = v19;
    }

    if (v21 <= 9)
    {
      v26 = v21;
    }

    else
    {
      v26 = v24;
    }

    if (v21 <= 9)
    {
      v27 = v9 + 4;
    }

    else
    {
      v27 = v25;
    }

    v28 = *v27;
    if ((v28 - 48) > 9)
    {
      if ((v28 - 65) > 5)
      {
        if ((v28 - 97) > 5)
        {
          goto LABEL_59;
        }

        v26 = v28 + 16 * v26 - 87;
      }

      else
      {
        v26 = v28 + 16 * v26 - 55;
      }
    }

    else
    {
      v26 = (v28 - 48) | (16 * v26);
    }

    ++v27;
LABEL_59:
    if (v27 != v8)
    {
      if (*v27 != 59)
      {
        goto LABEL_30;
      }

      v32 = v27 - v9 + 1;
      if (v32 < 5 || v26 <= 0xDu && ((1 << v26) & 0x2600) != 0)
      {
        goto LABEL_30;
      }

      if ((v32 & 0x80000000) == 0)
      {
        if (v32)
        {
          v34 = v32;
          (*(*a1 + 16))(a1, a2, v9 - a2, 0);
          (*(*a1 + 16))(a1, " ", 1, 0);
          a2 = &v9[v34 & 0x7FFFFFFF];
          v9 = a2 - 1;
        }

        goto LABEL_30;
      }
    }

    goto LABEL_10;
  }

  v9 = a2;
LABEL_68:
  if (v9 != v8)
  {
    ProcessUTF8Portion();
  }

  if (a2 < v8)
  {
    (*(*a1 + 16))(a1, a2, v8 - a2, 0);
  }

  if (a4)
  {
    (*(*a1 + 16))(a1, " ", 1, 1);
  }

  return v5;
}

uint64_t ExpatAdapter::ParseBuffer(uint64_t this, const char *a2, uint64_t a3, int a4)
{
  v4 = this;
  if (a3 || a4)
  {
    if (!a3)
    {
      a2 = " ";
    }

    v5 = *(this + 248);
    if (!a3)
    {
      LODWORD(a3) = 1;
    }

    this = XML_Parse(v5, a2, a3, a4);
    if (this != 1)
    {
      v6[0] = 201;
      v6[1] = "XML parsing failure";
      v6[2] = 0;
      return (*(*v4 + 32))(v4, 0, v6);
    }
  }

  return this;
}

uint64_t _cg_png_set_crc_action(uint64_t result, int a2, int a3)
{
  if (result)
  {
    v4 = result;
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v5 = *(result + 80) | 0xC00;
        goto LABEL_12;
      }

      if (a2 == 5)
      {
        goto LABEL_13;
      }
    }

    else if (a2 == 2)
    {
      result = png_warning(result, "Can't discard critical data on CRC error");
    }

    else if (a2 == 3)
    {
      v5 = *(result + 80) & 0xFFFFF3FF | 0x400;
LABEL_12:
      *(v4 + 80) = v5;
LABEL_13:
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v6 = *(v4 + 80) | 0x300;
          goto LABEL_22;
        }

        if (a3 == 5)
        {
          return result;
        }
      }

      else
      {
        if (a3 == 1)
        {
          v6 = *(v4 + 80) & 0xFFFFFCFF | 0x200;
          goto LABEL_22;
        }

        if (a3 == 3)
        {
          v6 = *(v4 + 80) & 0xFFFFFCFF | 0x100;
LABEL_22:
          *(v4 + 80) = v6;
          return result;
        }
      }

      v6 = *(v4 + 80) & 0xFFFFFCFF;
      goto LABEL_22;
    }

    v5 = *(v4 + 80) & 0xFFFFF3FF;
    goto LABEL_12;
  }

  return result;
}

BOOL StartNamespaceDeclHandler(_BOOL8 result, char *a2, char *__s1)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "_dflt_";
  }

  if (__s1)
  {
    v5 = result;
    if (!strcmp(__s1, "http://purl.org/dc/1.1/"))
    {
      v7 = "http://purl.org/dc/elements/1.1/";
    }

    else
    {
      v7 = __s1;
    }

    v8 = *(v5 + 256);
    if (v8 == sRegisteredNamespaces)
    {

      return XMPMeta::RegisterNamespace(v7, v3, 0, 0, v6);
    }

    else
    {

      return XMP_NamespaceTable::Define(v8, v7, v3, 0, 0);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::__erase_unique<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,std::__map_value_compare<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,AdobeXMPCore_Int::IUTF8StringComparator,true>,std::allocator<std::__value_type<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>>>::find<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v3);
  std::__destroy_at[abi:fe200100]<std::pair<std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const> const,std::shared_ptr<AdobeXMPCommon::IUTF8String_v1 const>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

unint64_t _cg_png_get_text_entry(unint64_t result, uint64_t a2, unsigned int a3, unint64_t *a4, void *a5, void *a6)
{
  if (result && a2 && *(a2 + 164) > a3)
  {
    if (a4)
    {
      v6 = *(a2 + 176);
      v7 = v6 + 88 * a3;
      v8 = v7 + 88;
      if (v7 < v6 || v8 > v6 + 88 * *(a2 + 168) || v7 >= v8)
      {
        goto LABEL_48;
      }

      v12 = *(v7 + 8);
      v11 = *(v7 + 16);
      if (v12 && v12 >= v11)
      {
        goto LABEL_48;
      }

      *a4 = v12;
    }

    if (a5)
    {
      v14 = *(a2 + 176);
      v15 = v14 + 88 * a3;
      v16 = v15 + 88;
      if (v15 < v14 || v16 > v14 + 88 * *(a2 + 168) || v15 >= v16)
      {
        goto LABEL_48;
      }

      *a5 = *(v15 + 40);
    }

    v19 = *(a2 + 168);
    v20 = *(a2 + 176);
    if (a6)
    {
      v21 = v20 + 88 * a3;
      v22 = v21 + 88;
      if (v21 < v20 || v22 > v20 + 88 * v19 || v21 >= v22)
      {
        goto LABEL_48;
      }

      v25 = a3;
      *a6 = *(v21 + 48);
    }

    else
    {
      v25 = a3;
    }

    v26 = v20 + 88 * v25;
    if (v26 >= v20 && v26 + 88 <= v20 + 88 * v19 && v26 <= v26 + 88)
    {
      result = *(v26 + 24);
      if (!result || result < *(v26 + 32))
      {
        return result;
      }
    }

LABEL_48:
    __break(0x5519u);
    return result;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  result = 0;
  if (a6)
  {
    *a6 = 0;
  }

  return result;
}

void PNGReadPlugin::AddTextChunkToProperties(PNGReadPlugin *this, IIODictionary *a2, UInt8 *bytes, char *a4, unsigned int a5)
{
  if (!bytes)
  {
    return;
  }

  if (a4)
  {
    a5 = a4;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = a5;
  v11 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, a5, 0x8000100u, 0);
  if (v11)
  {
    v12 = v11;
    if (CFStringGetLength(v11))
    {
      goto LABEL_9;
    }

    CFRelease(v12);
  }

  v12 = CFStringCreateWithBytes(v9, bytes, v10, 0x600u, 0);
  if (!v12)
  {
    return;
  }

LABEL_9:
  if (!strncmp(a2, "Author", 6uLL))
  {
    v13 = &kCGImagePropertyPNGAuthor;
  }

  else if (!strncmp(a2, "Comment", 7uLL))
  {
    v13 = &kCGImagePropertyPNGComment;
  }

  else if (!strncmp(a2, "Copyright", 9uLL))
  {
    v13 = &kCGImagePropertyPNGCopyright;
  }

  else if (!strncmp(a2, "CreationTime", 0xCuLL))
  {
    v13 = &kCGImagePropertyPNGCreationTime;
  }

  else if (!strncmp(a2, "Description", 0xBuLL))
  {
    v13 = &kCGImagePropertyPNGDescription;
  }

  else if (!strncmp(a2, "Disclaimer", 0xAuLL))
  {
    v13 = &kCGImagePropertyPNGDisclaimer;
  }

  else if (!strncmp(a2, "ModificationTime", 0x10uLL))
  {
    v13 = &kCGImagePropertyPNGModificationTime;
  }

  else if (!strncmp(a2, "Software", 8uLL))
  {
    v13 = &kCGImagePropertyPNGSoftware;
  }

  else if (!strncmp(a2, "Source", 6uLL))
  {
    v13 = &kCGImagePropertyPNGSource;
  }

  else if (!strncmp(a2, "Title", 5uLL))
  {
    v13 = &kCGImagePropertyPNGTitle;
  }

  else
  {
    if (strncmp(a2, "Warning", 7uLL))
    {
LABEL_34:
      _cg_jpeg_mem_term("AddTextChunkToProperties", 1069, "PNG - not handling:      key: %s\n", a2);
      _cg_jpeg_mem_term("AddTextChunkToProperties", 1070, "                        text: %s\n", bytes);
      goto LABEL_35;
    }

    v13 = &kCGImagePropertyPNGWarning;
  }

  if (!*v13)
  {
    goto LABEL_34;
  }

  IIODictionary::setObjectForKeyGroup(this, v12, *v13, @"{PNG}");
LABEL_35:

  CFRelease(v12);
}

void StartElementHandler(void *a1, const char *a2, const char **a3)
{
  if (a3)
  {
    if (*a3)
    {
      v4 = a3 + 1;
      v5 = -1;
      do
      {
        v6 = *v4++;
        ++v5;
      }

      while (v6);
      if ((v5 & 1) == 0)
      {
        v8[0] = 11;
        v8[1] = "Expat attribute info has odd length";
        v8[2] = 0;
        (*(*a1 + 32))(a1, 1, v8);
      }
    }

    if (a1[20] != a1[21])
    {
      operator new();
    }

    __break(1u);
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  StartElementHandler();
}

std::string *SetQualName(XMP_NamespaceTable **a1, const char *__s, XML_Node *a3)
{
  v6 = strlen(__s);
  while (1)
  {
    v7 = v6--;
    if (!v6)
    {
      break;
    }

    if (__s[v7 - 1] == 64)
    {
      goto LABEL_6;
    }
  }

  if (*__s == 64)
  {
LABEL_6:
    v28 = 0;
    v27 = 0;
    v8 = a3 + 16;
    MEMORY[0x186602530](a3 + 16, __s);
    v9 = *(a3 + 39);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    v10 = *(a3 + 3);
    if (v10 == 23)
    {
      if (**v8 == 0x702F2F3A70747468 && *(*v8 + 8) == 0x2F67726F2E6C7275 && *(*v8 + 15) == 0x2F312E312F63642FLL)
      {
        MEMORY[0x186602520](a3 + 16, "http://purl.org/dc/elements/1.1/");
        v9 = *(a3 + 39);
        if ((v9 & 0x80) == 0)
        {
LABEL_7:
          if (!v9)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      v10 = *(a3 + 3);
    }

    if (!v10)
    {
      goto LABEL_21;
    }

    v8 = *v8;
LABEL_20:
    if (XMP_NamespaceTable::GetPrefix(a1[32], v8, &v28, &v27))
    {
LABEL_22:
      *(a3 + 11) = v27;
      MEMORY[0x186602520](a3 + 40, v28);
      return std::string::append((a3 + 40), &__s[v7]);
    }

LABEL_21:
    v26[0] = 11;
    v26[1] = "Unknown URI in Expat full name";
    v26[2] = 0;
    (*(*a1 + 4))(a1, 1, v26);
    goto LABEL_22;
  }

  v14 = a3 + 40;
  result = MEMORY[0x186602520](a3 + 40, __s);
  v15 = *(a3 + 12);
  v16 = (v15 + 40);
  v17 = *(v15 + 63);
  if (v17 < 0)
  {
    if (*(v15 + 48) != 15)
    {
      return result;
    }

    v16 = *v16;
  }

  else if (v17 != 15)
  {
    return result;
  }

  v18 = *v16;
  v19 = *(v16 + 7);
  if (v18 == 0x637365443A666472 && v19 == 0x6E6F697470697263)
  {
    if (*(a3 + 63) < 0)
    {
      if (*(a3 + 6) == 5 && **v14 == 1970233953 && *(*v14 + 4) == 116)
      {
LABEL_54:
        MEMORY[0x186602520](a3 + 16, "http://www.w3.org/1999/02/22-rdf-syntax-ns#");
        v25 = "rdf:about";
        goto LABEL_55;
      }

      if (*(a3 + 6) != 2)
      {
        return result;
      }

      v22 = *v14;
    }

    else
    {
      v21 = *(a3 + 63);
      v22 = (a3 + 40);
      if (v21 != 2)
      {
        if (v21 != 5)
        {
          return result;
        }

        if (*v14 != 1970233953 || *(a3 + 44) != 116)
        {
          return result;
        }

        goto LABEL_54;
      }
    }

    if (*v22 != 17481)
    {
      return result;
    }

    MEMORY[0x186602520](a3 + 16, "http://www.w3.org/1999/02/22-rdf-syntax-ns#");
    v25 = "rdf:ID";
LABEL_55:
    result = MEMORY[0x186602520](a3 + 40, v25);
    *(a3 + 11) = 4;
  }

  return result;
}

uint64_t CharacterDataHandler(uint64_t result, const char *a2)
{
  if (*(result + 160) != *(result + 168))
  {
    operator new();
  }

  __break(1u);
  return result;
}

void *EndElementHandler(void *result, const char *a2)
{
  --result[33];
  v2 = result[21];
  if (result[20] == v2)
  {
    __break(1u);
  }

  else
  {
    result[21] = v2 - 8;
  }

  return result;
}

void XMPMeta::ProcessXMLTree(XMPMeta *this, char a2)
{
  v4 = *(this + 43);
  if (v4[24] < 2uLL)
  {
    v5 = v4[23];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = PickBestRoot((v4 + 1), a2);
    if (!v5)
    {
      return;
    }
  }

  v6 = v5 + 5;
  v7 = *(v5 + 63);
  if (v7 < 0)
  {
    if (v5[6] != 7)
    {
      goto LABEL_44;
    }

    v6 = *v6;
  }

  else if (v7 != 7)
  {
    goto LABEL_44;
  }

  v8 = *v6;
  v9 = *(v6 + 3);
  if (v8 != 979788914 || v9 != 1178882618)
  {
LABEL_44:
    XMPMeta::ProcessXMLTree();
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = v5[12];
  if (!v19)
  {
    return;
  }

  v20 = v19 + 40;
  v21 = *(v19 + 63);
  if (v21 < 0)
  {
    if (*(v19 + 48) != 9)
    {
      return;
    }

    v20 = *v20;
  }

  else if (v21 != 9)
  {
    return;
  }

  v22 = *v20 == 0x74656D706D783A78 && *(v20 + 8) == 97;
  if (v22 || ((v23 = *v20, v24 = *(v20 + 8), v23 == 0x74656D7061783A78) ? (v25 = v24 == 97) : (v25 = 0), v25))
  {
LABEL_16:
    XMPMeta::ProcessRDF(this, v5);
    NormalizeDCArrays((this + 224));
    if ((*(this + 234) & 2) != 0)
    {
      MoveExplicitAliases((this + 224), a2, (this + 352));
    }

    TouchUpDataModel(this, v11);
    v12 = *(this + 37);
    v13 = *(this + 38);
    if (v13 != v12)
    {
      v14 = 0;
      do
      {
        v15 = *(v12 + 8 * v14);
        if (v15[10] == v15[9])
        {
          (*(*v15 + 8))(v15);
          v12 = *(this + 37);
          v16 = *(this + 38);
          if (v16 == v12 + 8 * v14)
          {
            __break(1u);
            goto LABEL_44;
          }

          v17 = v12 + 8 * v14;
          v18 = v16 - (v17 + 8);
          if (v16 != v17 + 8)
          {
            memmove((v12 + 8 * v14), (v17 + 8), v16 - (v17 + 8));
            v12 = *(this + 37);
          }

          v13 = v17 + v18;
          *(this + 38) = v17 + v18;
        }

        else
        {
          ++v14;
        }
      }

      while (v14 < (v13 - v12) >> 3);
    }
  }
}

void RDF_Parser::NodeElementList(RDF_Parser *this, size_t *a2, const XML_Node *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    RDF_Parser::NodeElementList();
  }

  v4 = *(a3 + 16);
  for (i = *(a3 + 17); v4 != i; ++v4)
  {
    if ((XML_Node::IsWhitespaceNode(*v4) & 1) == 0)
    {
      RDF_Parser::NodeElement(this, a2, *v4, 1);
    }
  }
}

void RDF_Parser::RDF(RDF *this, size_t *a2, const XML_Node *a3)
{
  if (*(a3 + 13) != *(a3 + 14))
  {
    v6[0] = 202;
    v6[1] = "Invalid attributes of rdf:RDF element";
    v6[2] = 0;
    GenericErrorCallback::NotifyClient(*this, 0, v6, 0);
  }

  RDF_Parser::NodeElementList(this, a2, a3, 1);
}

uint64_t XML_Node::IsWhitespaceNode(uint64_t this)
{
  if (*(this + 8) != 3)
  {
    return 0;
  }

  v1 = 0;
  v2 = *(this + 87);
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(this + 87);
  if (v1 >= v2)
  {
    return 1;
  }

  while (v3 >= v1)
  {
    v4 = this + 64;
    if ((v2 & 0x80) != 0)
    {
      v4 = *(this + 64);
    }

    v5 = *(v4 + v1);
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      return 0;
    }

    ++v1;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = *(this + 72);
    if (v1 >= v3)
    {
      return 1;
    }
  }

  __break(1u);
  return this;
}

void RDF_Parser::NodeElement(RDF_Parser *this, size_t *a2, const XML_Node *a3, int a4)
{
  RDFTermKind = GetRDFTermKind(a3 + 40);
  if ((RDFTermKind & 7) != 0)
  {
    v12 = 0;
    v9 = 202;
    v10 = "Node element must be rdf:Description or typedNode";
LABEL_6:
    v11[1] = v10;
    v11[0] = v9;
    GenericErrorCallback::NotifyClient(*this, 0, v11, 0);
    return;
  }

  if (!RDFTermKind && a4)
  {
    v12 = 0;
    v9 = 203;
    v10 = "Top level typedNode not allowed";
    goto LABEL_6;
  }

  RDF_Parser::NodeElementAttrs(this, a2, a3, a4);

  RDF_Parser::PropertyElementList(this, a2, a3, a4);
}

uint64_t GetRDFTermKind(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v5 = *(a1 + 8);
    if (v5 <= 4)
    {
      return 0;
    }

    v6 = *a1;
    if (strncmp(*a1, "rdf:", 4uLL))
    {
      return 0;
    }

    if (v5 == 6 && *v6 == 979788914 && *(v6 + 2) == 26988)
    {
      return 9;
    }

    if (*(a1 + 8) != 13 || (**a1 == 0x737261703A666472 ? (v10 = *(*a1 + 5) == 0x6570795465737261) : (v10 = 0), !v10))
    {
      if (*(a1 + 8) != 15 || (**a1 == 0x637365443A666472 ? (v11 = *(*a1 + 7) == 0x6E6F697470697263) : (v11 = 0), !v11))
      {
        if (*(a1 + 8) != 9)
        {
          goto LABEL_55;
        }

        v4 = *a1;
LABEL_39:
        v12 = *v4;
        v13 = *(v4 + 8);
        if (v12 == 0x756F62613A666472 && v13 == 116)
        {
          return 3;
        }

        goto LABEL_55;
      }

      return 8;
    }

    return 4;
  }

  v2 = *(a1 + 23);
  if (v2 < 5 || *a1 != 979788914)
  {
    return 0;
  }

  if (*(a1 + 23) > 0xCu)
  {
    if (v2 != 13)
    {
      if (v2 != 15)
      {
        goto LABEL_55;
      }

      if (*a1 != 0x637365443A666472 || *(a1 + 7) != 0x6E6F697470697263)
      {
        goto LABEL_55;
      }

      return 8;
    }

    if (*a1 != 0x737261703A666472 || *(a1 + 5) != 0x6570795465737261)
    {
      goto LABEL_55;
    }

    return 4;
  }

  if (v2 == 6)
  {
    if (*a1 != 979788914 || *(a1 + 4) != 26988)
    {
      goto LABEL_55;
    }

    return 9;
  }

  v4 = a1;
  if (v2 == 9)
  {
    goto LABEL_39;
  }

LABEL_55:
  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:resource"))
  {
    return 5;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:RDF"))
  {
    return 1;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:ID"))
  {
    return 2;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:nodeID"))
  {
    return 6;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:datatype"))
  {
    return 7;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:aboutEach"))
  {
    return 10;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:aboutEachPrefix"))
  {
    return 11;
  }

  if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(a1, "rdf:bagID"))
  {
    return 12;
  }

  return 0;
}

uint64_t RDF_Parser::NodeElementAttrs(uint64_t this, size_t *a2, const XML_Node *a3, int a4)
{
  v4 = *(a3 + 13);
  v5 = *(a3 + 14);
  if (v4 != v5)
  {
    v8 = this;
    v9 = 0;
    v21 = (a2 + 2);
    while (1)
    {
      this = GetRDFTermKind(*v4 + 40);
      if ((this - 2) >= 2)
      {
        if (!this)
        {
          v13 = *v4 + 64;
          if (*(*v4 + 87) < 0)
          {
            v13 = *v13;
          }

          this = RDF_Parser::AddChildNode(v8, a2, *v4, v13, a4);
          goto LABEL_21;
        }

        if (this != 6)
        {
          break;
        }
      }

      if ((v9 & 0x4C) == 0)
      {
        v9 |= 1 << this;
        if (this != 3 || a4 == 0)
        {
          goto LABEL_21;
        }

        if (a2[8])
        {
          RDF_Parser::NodeElementAttrs();
        }

        v11 = *(a2 + 39);
        if (v11 < 0)
        {
          v12 = a2[3];
        }

        else
        {
          v12 = *(a2 + 39);
        }

        v15 = *v4;
        v16 = (*v4 + 64);
        if (!v12)
        {
          this = std::string::operator=(v21, v16);
          goto LABEL_21;
        }

        v17 = *(v15 + 87);
        if (v17 < 0)
        {
          if (!*(v15 + 9))
          {
            goto LABEL_21;
          }
        }

        else if (!*(v15 + 87))
        {
          goto LABEL_21;
        }

        if (v11 >= 0)
        {
          v18 = *(a2 + 39);
        }

        else
        {
          v18 = a2[3];
        }

        v19 = *(v15 + 9);
        if (v17 >= 0)
        {
          v19 = v17;
        }

        if (v18 == v19)
        {
          v20 = v11 >= 0 ? v21 : v21->__r_.__value_.__r.__words[0];
          if (v17 < 0)
          {
            v16 = v16->__r_.__value_.__r.__words[0];
          }

          this = memcmp(v20, v16, v18);
          if (!this)
          {
            goto LABEL_21;
          }
        }

        v24 = 0;
        v22 = 203;
        v14 = "Mismatched top level rdf:about values";
        goto LABEL_19;
      }

      v23 = "Mutally exclusive about, ID, nodeID attributes";
      v24 = 0;
      v22 = 202;
LABEL_20:
      this = GenericErrorCallback::NotifyClient(*v8, 0, &v22, 0);
LABEL_21:
      if (++v4 == v5)
      {
        return this;
      }
    }

    v24 = 0;
    v22 = 202;
    v14 = "Invalid nodeElement attribute";
LABEL_19:
    v23 = v14;
    goto LABEL_20;
  }

  return this;
}

uint64_t IIO_ConvertCGColorToColorComponents(CGColor *a1, uint64_t a2)
{
  v3 = MEMORY[0x186601360](a2, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (a1)
  {
    CGColorGetColorSpace(a1);
    CGColorGetComponents(a1);
    v5 = CGColorTransformConvertColorComponents();
  }

  else
  {
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    if (v6)
    {
      v7 = v6;
      v5 = CGColorTransformConvertColorComponents();
      CFRelease(v7);
    }

    else
    {
      v5 = 0;
    }
  }

  CFRelease(v4);
  return v5;
}

void RDF_Parser::PropertyElementList(RDF_Parser *this, XMP_Node *a2, const XML_Node *a3, int a4)
{
  v4 = *(a3 + 16);
  for (i = *(a3 + 17); v4 != i; ++v4)
  {
    if ((XML_Node::IsWhitespaceNode(*v4) & 1) == 0)
    {
      if (*(*v4 + 8) == 1)
      {
        RDF_Parser::PropertyElement(this, a2, *v4, a4);
      }

      else
      {
        v9[1] = "Expected property element node not found";
        v9[2] = 0;
        v9[0] = 202;
        GenericErrorCallback::NotifyClient(*this, 0, v9, 0);
      }
    }
  }
}

void RDF_Parser::PropertyElement(RDF_Parser *this, XMP_Node *a2, const XML_Node *a3, int a4)
{
  RDFTermKind = GetRDFTermKind(a3 + 40);
  if (RDFTermKind > 9 || RDFTermKind - 9 >= 0xFFFFFFF8)
  {
    v33 = 0;
    v10 = 202;
    v11 = "Invalid property element name";
LABEL_7:
    v32[1] = v11;
    v32[0] = v10;
    GenericErrorCallback::NotifyClient(*this, 0, v32, 0);
    return;
  }

  v13 = *(a3 + 13);
  v12 = *(a3 + 14);
  if ((v12 - v13) >= 0x19)
  {
    goto LABEL_9;
  }

  while (v13 != v12)
  {
    v14 = *v13;
    v15 = *v13 + 40;
    if (*(*v13 + 63) < 0)
    {
      if (*(v14 + 48) != 8 || **v15 != 0x676E616C3A6C6D78)
      {
        if (*(v14 + 48) != 6 || (**v15 == 979788914 ? (v17 = *(*v15 + 4) == 17481) : (v17 = 0), !v17))
        {
          if (*(v14 + 48) == 12 && **v15 == 0x617461643A666472 && *(*v15 + 8) == 1701869940)
          {
            goto LABEL_64;
          }

          if (*(v14 + 48) != 13)
          {
            goto LABEL_9;
          }

          v15 = *v15;
LABEL_51:
          v22 = *v15;
          v23 = *(v15 + 5);
          if (v22 != 0x737261703A666472 || v23 != 0x6570795465737261)
          {
            goto LABEL_9;
          }

          v25 = (v14 + 64);
          v26 = *(v14 + 87);
          if (v26 < 0)
          {
            if (*(v14 + 72) != 7)
            {
LABEL_73:
              if (!std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v25, "Resource"))
              {
                v33 = 0;
                if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v25, "Collection"))
                {
                  v10 = 203;
                  v11 = "ParseTypeCollection property element not allowed";
                }

                else
                {
                  v10 = 203;
                  v11 = "ParseTypeOther property element not allowed";
                }

                goto LABEL_7;
              }

              RDF_Parser::ParseTypeResourcePropertyElement(this, a2, a3, a4);
              return;
            }

            v27 = *v25;
          }

          else
          {
            v27 = (v14 + 64);
            if (v26 != 7)
            {
              goto LABEL_73;
            }
          }

          v29 = *v27;
          v30 = *(v27 + 3);
          if (v29 == 1702127948 && v30 == 1818325605)
          {
            v33 = 0;
            v10 = 203;
            v11 = "ParseTypeLiteral property element not allowed";
            goto LABEL_7;
          }

          goto LABEL_73;
        }
      }
    }

    else
    {
      v16 = *(*v13 + 63);
      if (v16 <= 7)
      {
        if (v16 != 6)
        {
          goto LABEL_9;
        }

        if (*v15 != 979788914 || *(*v13 + 44) != 17481)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v16 != 8)
        {
          if (v16 != 12)
          {
            if (v16 != 13)
            {
              goto LABEL_9;
            }

            goto LABEL_51;
          }

          if (*v15 == 0x617461643A666472 && *(*v13 + 48) == 1701869940)
          {
            goto LABEL_64;
          }

LABEL_9:

          RDF_Parser::EmptyPropertyElement(this, a2, a3, a4);
          return;
        }

        if (*v15 != 0x676E616C3A6C6D78)
        {
          goto LABEL_9;
        }
      }
    }

    ++v13;
  }

  v19 = *(a3 + 16);
  v20 = *(a3 + 17);
  if (v19 == v20)
  {
    goto LABEL_9;
  }

  while (*(*v19 + 8) == 3)
  {
    v19 += 8;
    if (v19 == v20)
    {
      goto LABEL_64;
    }
  }

  if (v19 == v20)
  {
LABEL_64:

    RDF_Parser::LiteralPropertyElement(this, a2, a3, a4);
  }

  else
  {

    RDF_Parser::ResourcePropertyElement(this, a2, a3, a4);
  }
}

void RDF_Parser::LiteralPropertyElement(RDF_Parser *this, XMP_Node *a2, const XML_Node ***a3, int a4)
{
  v6 = RDF_Parser::AddChildNode(this, a2, a3, "", a4);
  if (v6)
  {
    v7 = v6;
    v8 = a3[13];
    for (i = a3[14]; v8 != i; ++v8)
    {
      v10 = *v8;
      v11 = (*v8 + 40);
      if (*(*v8 + 63) < 0)
      {
        if (*(v10 + 6) != 8 || **v11 != 0x676E616C3A6C6D78)
        {
          if (*(v10 + 6) == 6 && **v11 == 979788914 && *(*v11 + 4) == 17481)
          {
            continue;
          }

          if (*(v10 + 6) == 12)
          {
            v11 = *v11;
            goto LABEL_17;
          }

LABEL_29:
          v32 = "Invalid attribute for literal property element";
          v33 = 0;
          v31 = 202;
          GenericErrorCallback::NotifyClient(*this, 0, &v31, 0);
          continue;
        }
      }

      else
      {
        v12 = *(*v8 + 63);
        if (v12 == 6)
        {
          if (*v11 == 979788914 && *(*v8 + 22) == 17481)
          {
            continue;
          }

          goto LABEL_29;
        }

        if (v12 != 8)
        {
          if (v12 == 12)
          {
LABEL_17:
            v14 = *v11;
            v15 = v11[2];
            if (v14 == 0x617461643A666472 && v15 == 1701869940)
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        if (*v11 != 0x676E616C3A6C6D78)
        {
          goto LABEL_29;
        }
      }

      RDF_Parser::AddQualifierNode(this, v7, v10);
    }

    v19 = a3[16];
    v18 = a3[17];
    if (v19 == v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v21 = *v19;
        if (*(*v19 + 8) == 3)
        {
          v22 = *(v21 + 87);
          if (v22 < 0)
          {
            v22 = *(v21 + 9);
          }

          v20 += v22;
        }

        else
        {
          v32 = "Invalid child of literal property element";
          v33 = 0;
          v31 = 202;
          GenericErrorCallback::NotifyClient(*this, 0, &v31, 0);
        }

        ++v19;
      }

      while (v19 != v18);
    }

    std::string::reserve((v7 + 40), v20);
    v23 = a3[16];
    while (v23 != v18)
    {
      v24 = *v23++;
      v25 = (v24 + 64);
      v26 = *(v24 + 64);
      v27 = *(v24 + 87);
      v28 = *(v24 + 72);
      if ((v27 & 0x80u) == 0)
      {
        v29 = v25;
      }

      else
      {
        v29 = v26;
      }

      if ((v27 & 0x80u) == 0)
      {
        v30 = v27;
      }

      else
      {
        v30 = v28;
      }

      std::string::append((v7 + 40), v29, v30);
    }
  }
}

uint64_t FindSchemaNode(uint64_t result, char *__s, int a3, void *a4)
{
  if (*(result + 64))
  {
    FindSchemaNode();
  }

  v5 = result;
  v7 = *(result + 72);
  v8 = *(result + 80) - v7;
  if (!v8)
  {
LABEL_14:
    if (a3)
    {
      operator new();
    }

    v12 = 0;
    goto LABEL_21;
  }

  v9 = 0;
  v10 = v8 >> 3;
  v11 = *(result + 72);
  while (1)
  {
    if (v10 == v9)
    {
      __break(1u);
      return result;
    }

    v12 = *(v7 + 8 * v9);
    if (*(v12 + 64) != v5)
    {
      FindSchemaNode();
    }

    v13 = (v12 + 16);
    result = strlen(__s);
    v14 = *(v12 + 39);
    if ((v14 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (result == *(v12 + 24))
    {
      if (result == -1)
      {
        std::string::__throw_out_of_range[abi:fe200100]();
      }

      v13 = *v13;
      goto LABEL_12;
    }

LABEL_13:
    ++v9;
    v11 += 8;
    if (v10 == v9)
    {
      goto LABEL_14;
    }
  }

  if (result != v14)
  {
    goto LABEL_13;
  }

LABEL_12:
  result = memcmp(v13, __s, result);
  if (result)
  {
    goto LABEL_13;
  }

  if (!a4)
  {
    return v12;
  }

  *a4 = v11;
  if (v12)
  {
    if (v12 != **a4)
    {
      FindSchemaNode();
    }

    return v12;
  }

LABEL_21:
  if (a3)
  {
    FindSchemaNode();
  }

  return v12;
}

uint64_t png_do_write_transformations(uint64_t result, unsigned int *a2)
{
  v172 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 88);
    if ((v4 & 0x100000) != 0)
    {
      v5 = *(result + 56);
      if (v5)
      {
        v6 = *(result + 336);
        v7 = v6 + 1;
        if (v6 != -1)
        {
          v8 = v7 < v6 || v7 >= *(result + 344);
          if (v8)
          {
            goto LABEL_304;
          }
        }

        result = v5(result, a2, v7);
        v4 = *(v3 + 88);
      }
    }

    if ((v4 & 0x8000) != 0)
    {
      v9 = *(v3 + 336);
      if (v9 + 1 < v9)
      {
        goto LABEL_304;
      }

      result = png_do_strip_channel(a2, v9 + 1, *(v3 + 344), ((*(v3 + 80) >> 7) & 1) == 0);
      v4 = *(v3 + 88);
    }

    if ((v4 & 0x10000) != 0)
    {
      v10 = *(v3 + 336);
      if (v10 + 1 < v10)
      {
        goto LABEL_304;
      }

      result = png_do_packswap(a2, (v10 + 1), *(v3 + 344));
      v4 = *(v3 + 88);
    }

    if ((v4 & 4) == 0)
    {
      goto LABEL_102;
    }

    v11 = *(v3 + 336);
    v12 = (v11 + 1);
    if (v11 + 1 < v11)
    {
      goto LABEL_304;
    }

    if (*(a2 + 17) != 8 || *(a2 + 18) != 1)
    {
      goto LABEL_102;
    }

    v13 = *(v3 + 344);
    v14 = *(v3 + 432);
    if (v14 == 4)
    {
      v38 = *a2;
      if (!*a2)
      {
        goto LABEL_99;
      }

      v39 = 0;
      v40 = v12;
      v18 = v12;
      while (1)
      {
        if (v13 >= v40)
        {
          v41 = v13 - v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = (v38 + ~v39);
        if (v41 >= v42)
        {
          v43 = (v38 + ~v39);
        }

        else
        {
          v43 = v41;
        }

        if (v41 == (v43 != 0))
        {
          goto LABEL_304;
        }

        result = *v40;
        v44 = (v42 ? v40 + 1 : v40);
        v45 = v42 ? v39 + 1 : v39;
        if (v39 + 1 == v38)
        {
          break;
        }

        if (v18 >= v13 || v18 < v12)
        {
          goto LABEL_304;
        }

        *v18++ = v40[1] & 0xF | (16 * result);
        v40 = (v44 + 1);
        v39 = v45 + 1;
        if (v45 + 1 == v38)
        {
          goto LABEL_99;
        }
      }

      if (v18 < v13 && v18 >= v12)
      {
        LOBYTE(v22) = 16 * result;
        goto LABEL_98;
      }

LABEL_304:
      __break(0x5519u);
    }

    if (v14 != 2)
    {
      if (v14 != 1)
      {
        goto LABEL_99;
      }

      v15 = *a2;
      if (!*a2)
      {
        goto LABEL_99;
      }

      v16 = 0;
      v17 = v12;
      v18 = v12;
      while (1)
      {
        v19 = v13 - v17;
        if (v13 < v17)
        {
          v19 = 0;
        }

        v20 = v15 + ~v16;
        if (v19 >= v20)
        {
          v21 = v15 + ~v16;
        }

        else
        {
          v21 = v19;
        }

        if (v21 >= 7)
        {
          v21 = 7;
        }

        if (v19 == v21)
        {
          goto LABEL_304;
        }

        result = 0;
        LOBYTE(v22) = 0;
        if (v20 >= 7)
        {
          v23 = 7;
        }

        else
        {
          v23 = v15 + ~v16;
        }

        v24 = &v17[v23 + 1];
        if (v20 >= 7)
        {
          LODWORD(v20) = 7;
        }

        v25 = v16 + v20;
        v26 = v15 - v16;
        v27 = 128;
        while (1)
        {
          v28 = v17[result] ? v27 : 0;
          LOBYTE(v22) = v28 | v22;
          if (result == 7)
          {
            break;
          }

          v27 >>= 1;
          if (v26 == ++result)
          {
            goto LABEL_72;
          }
        }

        if (v18 >= v13 || v18 < v12)
        {
          goto LABEL_304;
        }

        *v18++ = v22;
        v16 = v25 + 1;
        v17 = v24;
        if (v25 + 1 == v15)
        {
          goto LABEL_99;
        }
      }
    }

    v29 = *a2;
    if (!*a2)
    {
      goto LABEL_99;
    }

    LODWORD(result) = 0;
    v30 = v12;
    v18 = v12;
LABEL_51:
    v31 = v13 - v30;
    if (v13 < v30)
    {
      v31 = 0;
    }

    v32 = v29 + ~result;
    if (v31 >= v32)
    {
      v33 = v29 + ~result;
    }

    else
    {
      v33 = v31;
    }

    if (v33 >= 3)
    {
      v33 = 3;
    }

    if (v31 == v33)
    {
      goto LABEL_304;
    }

    v22 = 0;
    if (v32 >= 3)
    {
      v34 = 3;
    }

    else
    {
      v34 = v29 + ~result;
    }

    v35 = &v30[v34];
    if (v32 >= 3)
    {
      LODWORD(v32) = 3;
    }

    v36 = result + v32;
    LODWORD(result) = v29 - result;
    v37 = 6;
    do
    {
      v22 |= (*v30 & 3) << v37;
      if (!v37)
      {
        if (v18 >= v13 || v18 < v12)
        {
          goto LABEL_304;
        }

        *v18++ = v22;
        v30 = v35 + 1;
        result = (v36 + 1);
        if (result == v29)
        {
          goto LABEL_99;
        }

        goto LABEL_51;
      }

      v37 -= 2;
      ++v30;
      result = (result - 1);
    }

    while (result);
LABEL_72:
    if (v18 >= v13 || v18 < v12)
    {
      goto LABEL_304;
    }

LABEL_98:
    *v18 = v22;
LABEL_99:
    *(a2 + 17) = v14;
    v46 = *(a2 + 18) * v14;
    *(a2 + 19) = v46;
    v8 = v46 >= 8u;
    v47 = (*a2 * v46 + 7) >> 3;
    v48 = *a2 * (v46 >> 3);
    if (!v8)
    {
      v48 = v47;
    }

    *(a2 + 1) = v48;
    v4 = *(v3 + 88);
LABEL_102:
    if ((v4 & 0x10) != 0)
    {
      v49 = *(v3 + 336);
      if (v49 + 1 < v49)
      {
        goto LABEL_304;
      }

      result = png_do_swap(a2, v49 + 1, *(v3 + 344));
      v4 = *(v3 + 88);
    }

    if ((v4 & 8) != 0)
    {
      v50 = *(v3 + 336);
      v51 = (v50 + 1);
      if (v50 + 1 < v50 || v3 + 597 > (v3 + 602))
      {
        goto LABEL_304;
      }

      v52 = *(a2 + 16);
      if (v52 != 3)
      {
        v53 = *(v3 + 344);
        v171 = 0;
        v170 = 0;
        v168 = 0;
        v167 = 0;
        v54 = *(a2 + 17);
        if ((v52 & 2) != 0)
        {
          v55 = *(v3 + 597);
          v57 = *(v3 + 598);
          v58 = *(v3 + 599);
          LODWORD(v170) = v54 - v57;
          HIDWORD(v170) = v54 - v58;
          v167 = __PAIR64__(v58, v57);
          v56 = 3;
        }

        else
        {
          v55 = *(v3 + 600);
          v56 = 1;
        }

        v169 = v54 - v55;
        v166 = v55;
        if ((v52 & 4) != 0)
        {
          v59 = &v169 + v56;
          if (v59 < &v169)
          {
            goto LABEL_304;
          }

          if (v59 + 1 > &v172)
          {
            goto LABEL_304;
          }

          if (v59 > v59 + 1)
          {
            goto LABEL_304;
          }

          v60 = *(v3 + 601);
          *(&v169 + v56) = v54 - v60;
          v61 = &v166 + v56;
          if (v61 < &v166 || v61 + 1 > &v169 || v61 > v61 + 1)
          {
            goto LABEL_304;
          }

          *v61 = v60;
          ++v56;
        }

        if (v54 > 7)
        {
          v74 = *a2 * v56;
          if (v54 == 8)
          {
            if (v74)
            {
              v75 = 0;
              while (v51 < v53)
              {
                v76 = v75 % v56;
                v77 = &v169 + v76;
                v78 = v77 + 1;
                v79 = v77 < &v169 || v78 > &v172;
                v80 = v79 || v77 > v78;
                v81 = (&v166 + v76);
                v82 = v81 + 1;
                v83 = !v80 && v81 >= &v166;
                v84 = !v83 || v82 > &v169;
                if (v84 || v81 > v82)
                {
                  break;
                }

                v86 = 0;
                v87 = *v77;
                result = *v81;
                if (v87 > -result)
                {
                  v86 = 0;
                  v88 = *v51;
                  v89 = -v87;
                  do
                  {
                    v90 = v88 >> v89;
                    v91 = v87 - result;
                    v89 += result;
                    v92 = v87 <= 0;
                    if (v87 <= 0)
                    {
                      LOBYTE(v93) = v90;
                    }

                    else
                    {
                      v93 = v88 << v87;
                    }

                    v86 |= v93;
                    v87 = v91;
                  }

                  while (!v92);
                }

                *v51++ = v86;
                if (++v75 == v74)
                {
                  goto LABEL_203;
                }
              }

              goto LABEL_304;
            }
          }

          else if (v74)
          {
            v94 = 0;
            v95 = v51;
            while (v95 < v53 && v95 >= v51 && (v95 + 1) < v53)
            {
              v96 = v94 % v56;
              v97 = &v169 + v96;
              v98 = v97 + 1;
              v99 = v97 < &v169 || v98 > &v172;
              v100 = v99 || v97 > v98;
              v101 = &v166 + v96;
              v102 = v101 + 1;
              v103 = !v100 && v101 >= &v166;
              v104 = !v103 || v102 > &v169;
              if (v104 || v101 > v102)
              {
                break;
              }

              v106 = 0;
              v107 = *v97;
              v108 = *v101;
              if (v107 > -*v101)
              {
                v106 = 0;
                v109 = __rev16(*v95);
                v110 = -v107;
                do
                {
                  v111 = v109 >> v110;
                  v112 = v107 - v108;
                  v110 += v108;
                  v113 = v107 <= 0;
                  if (v107 <= 0)
                  {
                    v114 = v111;
                  }

                  else
                  {
                    v114 = v109 << v107;
                  }

                  v106 |= v114;
                  v107 = v112;
                }

                while (!v113);
              }

              result = bswap32(v106) >> 16;
              *v95 = result;
              v95 += 2;
              if (++v94 == v74)
              {
                goto LABEL_203;
              }
            }

            goto LABEL_304;
          }
        }

        else
        {
          v62 = *(a2 + 1);
          v63 = *(v3 + 600);
          if (v63 == 3 && v54 == 4)
          {
            v65 = 17;
          }

          else
          {
            v65 = 255;
          }

          if (v63 == 1 && v54 == 2)
          {
            v67 = 85;
          }

          else
          {
            v67 = v65;
          }

          if (v62)
          {
            v68 = 0;
            v8 = v53 >= v51;
            v69 = v53 - v51;
            if (!v8)
            {
              v69 = 0;
            }

            while (v68 != v69)
            {
              v70 = 0;
              if (v54)
              {
                result = *v51;
                v71 = v54;
                v72 = v55 - v54;
                do
                {
                  if (v71 - v55 <= 0)
                  {
                    v73 = (result >> v72) & v67;
                  }

                  else
                  {
                    v73 = result << (v71 - v55);
                  }

                  v70 |= v73;
                  v72 += v55;
                  v71 -= v55;
                }

                while (v71 > 0);
              }

              *v51++ = v70;
              if (++v68 == v62)
              {
                goto LABEL_203;
              }
            }

            goto LABEL_304;
          }
        }

LABEL_203:
        v4 = *(v3 + 88);
      }
    }

    if ((v4 & 0x20000) != 0)
    {
      v115 = *(v3 + 336);
      v116 = (v115 + 1);
      if (v115 + 1 < v115)
      {
        goto LABEL_304;
      }

      v117 = *(v3 + 344);
      v118 = *(a2 + 16);
      if (v118 == 4)
      {
        v126 = *a2;
        if (*(a2 + 17) == 8)
        {
          if (v126)
          {
            v127 = v116;
            while (v127 < v117)
            {
              if (v127 < v116)
              {
                break;
              }

              v128 = v127 + 1;
              if (v128 >= v117)
              {
                break;
              }

              v129 = *(v128 - 1);
              *(v128 - 1) = *v128;
              *v128 = v129;
              v127 = v128 + 1;
              if (!--v126)
              {
                goto LABEL_257;
              }
            }

            goto LABEL_304;
          }
        }

        else if (v126)
        {
          v142 = v116;
          while (v142 < v117)
          {
            if (v142 < v116)
            {
              break;
            }

            v145 = *v142;
            v143 = v142 + 1;
            v144 = v145;
            if (v143 >= v117)
            {
              break;
            }

            v148 = *v143;
            v146 = v143 + 1;
            v147 = v148;
            if (v146 >= v117)
            {
              break;
            }

            if (v146 < v116)
            {
              break;
            }

            *(v146 - 2) = *v146;
            v149 = v146 + 1;
            if (v149 >= v117 || v149 < v116)
            {
              break;
            }

            *(v149 - 2) = *v149;
            *(v149 - 1) = v144;
            *v149 = v147;
            v142 = v149 + 1;
            if (!--v126)
            {
              goto LABEL_257;
            }
          }

          goto LABEL_304;
        }
      }

      else if (v118 == 6)
      {
        v119 = *a2;
        if (*(a2 + 17) == 8)
        {
          if (v119)
          {
            v120 = v116;
            while (v120 < v117)
            {
              if (v120 < v116)
              {
                break;
              }

              v123 = *v120;
              v122 = v120 + 1;
              v121 = v123;
              if (v122 >= v117)
              {
                break;
              }

              *(v122 - 1) = *v122;
              v124 = v122 + 1;
              if (v124 >= v117)
              {
                break;
              }

              if (v124 < v116)
              {
                break;
              }

              *(v124 - 1) = *v124;
              v125 = v124 + 1;
              if (v125 >= v117 || v125 < v116)
              {
                break;
              }

              *(v125 - 1) = *v125;
              *v125 = v121;
              v120 = v125 + 1;
              if (!--v119)
              {
                goto LABEL_257;
              }
            }

            goto LABEL_304;
          }
        }

        else if (v119)
        {
          v130 = v116;
          while (v130 < v117)
          {
            if (v130 < v116)
            {
              break;
            }

            v133 = *v130;
            v132 = v130 + 1;
            v131 = v133;
            if (v132 >= v117)
            {
              break;
            }

            v136 = *v132;
            v135 = v132 + 1;
            v134 = v136;
            if (v135 >= v117)
            {
              break;
            }

            if (v135 < v116)
            {
              break;
            }

            *(v135 - 2) = *v135;
            v137 = v135 + 1;
            if (v137 >= v117)
            {
              break;
            }

            if (v137 < v116)
            {
              break;
            }

            *(v137 - 2) = *v137;
            v138 = v137 + 1;
            if (v138 >= v117)
            {
              break;
            }

            if (v138 < v116)
            {
              break;
            }

            *(v138 - 2) = *v138;
            v139 = v138 + 1;
            if (v139 >= v117)
            {
              break;
            }

            if (v139 < v116)
            {
              break;
            }

            *(v139 - 2) = *v139;
            v140 = v139 + 1;
            if (v140 >= v117)
            {
              break;
            }

            if (v140 < v116)
            {
              break;
            }

            *(v140 - 2) = *v140;
            v141 = v140 + 1;
            if (v141 >= v117 || v141 < v116)
            {
              break;
            }

            *(v141 - 2) = *v141;
            *(v141 - 1) = v131;
            *v141 = v134;
            v130 = v141 + 1;
            if (!--v119)
            {
              goto LABEL_257;
            }
          }

          goto LABEL_304;
        }
      }
    }

LABEL_257:
    if ((*(v3 + 90) & 8) != 0)
    {
      v150 = *(v3 + 336);
      v151 = v150 + 1;
      if (v150 + 1 < v150)
      {
        goto LABEL_304;
      }

      v152 = *(v3 + 344);
      v153 = *(a2 + 16);
      if (v153 == 4)
      {
        v156 = *a2;
        if (*(a2 + 17) == 8)
        {
          if (v156)
          {
            v157 = (v150 + 1);
            while (v157 < v152)
            {
              if (v157 < v151)
              {
                break;
              }

              v158 = v157 + 1;
              if (v158 >= v152)
              {
                break;
              }

              *v158 = ~*v158;
              v157 = v158 + 1;
              if (!--v156)
              {
                goto LABEL_297;
              }
            }

            goto LABEL_304;
          }
        }

        else if (v156)
        {
          v161 = (v150 + 4);
          while ((v161 - 1) < v152 && (v161 - 1) >= v151)
          {
            *(v161 - 1) = ~*(v161 - 1);
            if (v161 >= v152 || v161 < v151)
            {
              break;
            }

            *v161 = ~*v161;
            v161 += 4;
            if (!--v156)
            {
              goto LABEL_297;
            }
          }

          goto LABEL_304;
        }
      }

      else if (v153 == 6)
      {
        v154 = *a2;
        if (*(a2 + 17) == 8)
        {
          if (v154)
          {
            v155 = (v150 + 4);
            while (v155 < v152 && v155 >= v151)
            {
              *v155 = ~*v155;
              v155 += 4;
              if (!--v154)
              {
                goto LABEL_297;
              }
            }

            goto LABEL_304;
          }
        }

        else if (v154)
        {
          v159 = (v150 + 8);
          while ((v159 - 1) < v152 && (v159 - 1) >= v151)
          {
            *(v159 - 1) = ~*(v159 - 1);
            if (v159 >= v152 || v159 < v151)
            {
              break;
            }

            *v159 = ~*v159;
            v159 += 8;
            if (!--v154)
            {
              goto LABEL_297;
            }
          }

          goto LABEL_304;
        }
      }
    }

LABEL_297:
    v163 = *(v3 + 88);
    if (v163)
    {
      v164 = *(v3 + 336);
      if (v164 + 1 < v164)
      {
        goto LABEL_304;
      }

      result = png_do_bgr(a2, v164 + 1, *(v3 + 344));
      v163 = *(v3 + 88);
    }

    if ((v163 & 0x20) != 0)
    {
      v165 = *(v3 + 336);
      if (v165 + 1 < v165)
      {
        goto LABEL_304;
      }

      return png_do_invert(a2, (v165 + 1), *(v3 + 344));
    }
  }

  return result;
}

uint64_t RDF_Parser::AddChildNode(RDF_Parser *this, XMP_Node *a2, const XML_Node *a3, const char *a4, int a5)
{
  v6 = *(a3 + 39);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 3);
  }

  if (v6)
  {
    v8 = a5;
    v10 = a2;
    v11 = a3 + 40;
    if (*(a3 + 63) < 0)
    {
      v13 = *(a3 + 6) == 6 && **v11 == 979788914 && *(*v11 + 4) == 26988;
      v20 = *(a3 + 5);
      v15 = *(a3 + 6) == 9 && *v20 == 0x756C61763A666472 && v20[8] == 101;
    }

    else
    {
      v12 = *(a3 + 63);
      if (v12 == 6)
      {
        v15 = 0;
        v13 = *v11 == 979788914 && *(a3 + 22) == 26988;
      }

      else if (v12 == 9)
      {
        v13 = 0;
        v15 = *v11 == 0x756C61763A666472 && *(a3 + 48) == 101;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v20 = a3 + 40;
    }

    v22 = *(a2 + 2);
    if (!a5)
    {
      goto LABEL_51;
    }

    if (*(a2 + 8))
    {
      goto LABEL_84;
    }

    if (v7 >= 0)
    {
      v23 = a3 + 16;
    }

    else
    {
      v23 = *(a3 + 2);
    }

    SchemaNode = FindSchemaNode(v10, v23, 1, 0);
    v10 = SchemaNode;
    v25 = *(SchemaNode + 8);
    if ((v25 & 0x8000) != 0)
    {
      *(SchemaNode + 8) = v25 & 0xFFFF7FFF;
    }

    if (sRegisteredAliasMap + 8 == std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::find<std::string>(sRegisteredAliasMap, v11))
    {
LABEL_51:
      if (!v13)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(*(v10 + 8) + 8) |= 0x20000u;
      if (!v13)
      {
LABEL_47:
        if ((v22 & 0x200) == 0)
        {
          if (!v15)
          {
            if (FindChildNode(v10, v20, 0, 0))
            {
              v36 = 0;
              v16 = 203;
              v17 = "Duplicate property or field node";
              goto LABEL_80;
            }

LABEL_82:
            operator new();
          }

LABEL_77:
          if ((v8 & 1) != 0 || (v33 = *(v10 + 2), (v33 & 0x100) == 0))
          {
            v36 = 0;
            v16 = 202;
            v17 = "Misplaced rdf:value element";
            goto LABEL_80;
          }

          *(v10 + 2) = v33 | 0x10000000;
          goto LABEL_82;
        }

        v26 = *(a3 + 63);
        if ((v26 & 0x8000000000000000) != 0)
        {
          if (*(a3 + 6) < 6uLL)
          {
LABEL_60:
            v36 = 0;
            v16 = 202;
            v17 = "Array items cannot have arbitrary child names";
            goto LABEL_80;
          }

          v27 = *v11;
        }

        else
        {
          v27 = v11;
          if (v26 < 6)
          {
            goto LABEL_60;
          }
        }

        if (strncmp(v27, "rdf:_", 5uLL))
        {
          goto LABEL_60;
        }

        v28 = *(a3 + 5);
        if ((v26 & 0x80000000) == 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = *(a3 + 6);
        }

        if ((v26 & 0x80000000) == 0)
        {
          v28 = v11;
        }

        v30 = 5;
        while (1)
        {
          if ((v26 & 0x80000000) != 0)
          {
            v31 = *(a3 + 6);
            if (v30 >= v31)
            {
              goto LABEL_76;
            }
          }

          else
          {
            v31 = v26;
            if (v30 >= v26)
            {
              goto LABEL_76;
            }
          }

          if (v31 < v30 || v29 < v30)
          {
            break;
          }

          if (v28[v30] >= 48)
          {
            v32 = v28[v30++];
            if (v32 < 58)
            {
              continue;
            }
          }

          goto LABEL_60;
        }

        __break(1u);
LABEL_84:
        RDF_Parser::AddChildNode();
      }
    }

    if ((v22 & 0x200) == 0)
    {
      v36 = 0;
      v16 = 202;
      v17 = "Misplaced rdf:li element";
      goto LABEL_80;
    }

LABEL_76:
    if (!v15)
    {
      goto LABEL_82;
    }

    goto LABEL_77;
  }

  v36 = 0;
  v16 = 202;
  v17 = "XML namespace required for all elements and attributes";
LABEL_80:
  v35[1] = v17;
  v35[0] = v16;
  GenericErrorCallback::NotifyClient(*this, 0, v35, 0);
  return 0;
}

uint64_t png_do_strip_channel(uint64_t result, unint64_t a2, unint64_t a3, int a4)
{
  v4 = a2 + *(result + 8);
  v5 = *(result + 18);
  if (v5 == 4)
  {
    v10 = *(result + 17);
    if (v10 == 16)
    {
      v27 = 6;
      if (a4)
      {
        v27 = 0;
      }

      v8 = (a2 + v27);
      v28 = 2;
      if (!a4)
      {
        v28 = 8;
      }

      v29 = (a2 + v28);
      if (v29 < v4)
      {
        while (v29 < a3)
        {
          if (v29 < a2)
          {
            break;
          }

          v30 = v8;
          if (v8 >= a3)
          {
            break;
          }

          if (v8 < a2)
          {
            break;
          }

          v32 = *v29;
          v31 = v29 + 1;
          *v8 = v32;
          if (v31 >= a3)
          {
            break;
          }

          if (v31 < a2)
          {
            break;
          }

          v33 = v8 + 1;
          if ((v30 + 1) >= a3)
          {
            break;
          }

          if (v33 < a2)
          {
            break;
          }

          v35 = *v31;
          v34 = v31 + 1;
          *v33 = v35;
          if (v34 >= a3)
          {
            break;
          }

          if (v34 < a2)
          {
            break;
          }

          v36 = v30 + 2;
          if ((v30 + 2) >= a3)
          {
            break;
          }

          if (v36 < a2)
          {
            break;
          }

          v38 = *v34;
          v37 = v34 + 1;
          *v36 = v38;
          if (v37 >= a3)
          {
            break;
          }

          if (v37 < a2)
          {
            break;
          }

          v39 = v30 + 3;
          if ((v30 + 3) >= a3)
          {
            break;
          }

          if (v39 < a2)
          {
            break;
          }

          v41 = *v37;
          v40 = v37 + 1;
          *v39 = v41;
          if (v40 >= a3)
          {
            break;
          }

          if (v40 < a2)
          {
            break;
          }

          v42 = v30 + 4;
          if ((v30 + 4) >= a3)
          {
            break;
          }

          if (v42 < a2)
          {
            break;
          }

          v44 = *v40;
          v43 = v40 + 1;
          *v42 = v44;
          if (v43 >= a3 || v43 < a2 || (v30 + 5) >= a3 || (v30 + 5) < a2)
          {
            break;
          }

          v45 = *v43;
          v29 = v43 + 3;
          v30[5] = v45;
          v8 = v30 + 6;
          if (v29 >= v4)
          {
            v8 = v30 + 6;
            goto LABEL_87;
          }
        }

        goto LABEL_92;
      }

LABEL_87:
      v20 = 48;
    }

    else
    {
      if (v10 != 8)
      {
        return result;
      }

      v11 = 3;
      if (a4)
      {
        v11 = 0;
      }

      v8 = (a2 + v11);
      v12 = (a2 + 4);
      if (a4)
      {
        v12 = (a2 + 1);
      }

      if (v12 < v4)
      {
        while (v12 < a3)
        {
          if (v12 < a2)
          {
            break;
          }

          v13 = v8;
          if (v8 >= a3)
          {
            break;
          }

          if (v8 < a2)
          {
            break;
          }

          v15 = *v12;
          v14 = v12 + 1;
          *v8 = v15;
          if (v14 >= a3)
          {
            break;
          }

          if (v14 < a2)
          {
            break;
          }

          v16 = v8 + 1;
          if ((v13 + 1) >= a3)
          {
            break;
          }

          if (v16 < a2)
          {
            break;
          }

          v18 = *v14;
          v17 = v14 + 1;
          *v16 = v18;
          if (v17 >= a3 || v17 < a2 || (v13 + 2) >= a3 || (v13 + 2) < a2)
          {
            break;
          }

          v19 = *v17;
          v12 = v17 + 2;
          v13[2] = v19;
          v8 = v13 + 3;
          if (v12 >= v4)
          {
            v8 = v13 + 3;
            goto LABEL_37;
          }
        }

        goto LABEL_92;
      }

LABEL_37:
      v20 = 24;
    }

    *(result + 19) = v20;
    *(result + 18) = 3;
    if (*(result + 16) == 6)
    {
      *(result + 16) = 2;
    }

    goto LABEL_90;
  }

  if (v5 != 2)
  {
    return result;
  }

  v6 = *(result + 17);
  if (v6 != 16)
  {
    if (v6 != 8)
    {
      return result;
    }

    v7 = (a2 + 2);
    if (a4)
    {
      v8 = a2;
    }

    else
    {
      v8 = (a2 + 1);
    }

    if (a4)
    {
      v7 = (a2 + 1);
    }

    while (v7 < v4)
    {
      if (v7 >= a3 || v7 < a2 || v8 >= a3 || v8 < a2)
      {
        goto LABEL_92;
      }

      v9 = *v7;
      v7 += 2;
      *v8++ = v9;
    }

    goto LABEL_54;
  }

  v21 = (a2 + 2);
  if (a4)
  {
    v8 = a2;
  }

  else
  {
    v8 = (a2 + 2);
  }

  if (!a4)
  {
    v21 = (a2 + 4);
  }

  if (v21 < v4)
  {
    while (v21 < a3)
    {
      if (v21 < a2)
      {
        break;
      }

      v22 = v8;
      if (v8 >= a3)
      {
        break;
      }

      if (v8 < a2)
      {
        break;
      }

      v24 = *v21;
      v23 = v21 + 1;
      *v8 = v24;
      if (v23 >= a3)
      {
        break;
      }

      if (v23 < a2)
      {
        break;
      }

      v25 = v8 + 1;
      if ((v22 + 1) >= a3 || v25 < a2)
      {
        break;
      }

      v26 = *v23;
      v21 = v23 + 3;
      v22[1] = v26;
      v8 = v22 + 2;
      if (v21 >= v4)
      {
        v8 = v22 + 2;
        goto LABEL_54;
      }
    }

LABEL_92:
    __break(0x5519u);
    return result;
  }

LABEL_54:
  *(result + 19) = v6;
  *(result + 18) = 1;
  if (*(result + 16) == 4)
  {
    *(result + 16) = 0;
  }

LABEL_90:
  *(result + 8) = &v8[-a2];
  return result;
}

uint64_t FindChildNode(uint64_t a1, char *__s, int a3, void *a4)
{
  v6 = *(a1 + 8);
  if ((v6 & 0x80000100) != 0)
  {
    goto LABEL_6;
  }

  if ((v6 & 0x8000) == 0)
  {
LABEL_32:
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v19 = "Named children only allowed for schemas and structs";
    goto LABEL_35;
  }

  if ((v6 & 0x200) != 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 102;
    v19 = "Named children not allowed for arrays";
    goto LABEL_35;
  }

  if ((a3 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 9;
    v19 = "Parent is new implicit node, but createNodes is false";
LABEL_35:
    exception[1] = v19;
    *(exception + 16) = 0;
  }

  *(a1 + 8) = v6 | 0x100;
LABEL_6:
  v8 = *(a1 + 72);
  v9 = *(a1 + 80) - v8;
  if (!v9)
  {
LABEL_18:
    if (a3)
    {
      operator new();
    }

    v13 = 0;
    goto LABEL_25;
  }

  v10 = 0;
  v11 = v9 >> 3;
  v12 = *(a1 + 72);
  while (1)
  {
    if (v11 == v10)
    {
      __break(1u);
      goto LABEL_32;
    }

    v13 = *(v8 + 8 * v10);
    if (*(v13 + 64) != a1)
    {
      FindChildNode();
    }

    v14 = (v13 + 16);
    v15 = strlen(__s);
    v16 = *(v13 + 39);
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (v15 == *(v13 + 24))
    {
      if (v15 == -1)
      {
        std::string::__throw_out_of_range[abi:fe200100]();
      }

      v14 = *v14;
      goto LABEL_16;
    }

LABEL_17:
    ++v10;
    v12 += 8;
    if (v11 == v10)
    {
      goto LABEL_18;
    }
  }

  if (v15 != v16)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (memcmp(v14, __s, v15))
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    return v13;
  }

  *a4 = v12;
  if (!v13)
  {
LABEL_25:
    if (a3)
    {
      FindChildNode();
    }

    return v13;
  }

  if (v13 != **a4)
  {
    FindChildNode();
  }

  return v13;
}

void XMP_Node::XMP_Node(XMP_Node *this, XMP_Node *a2, char *__s, char *a4, int a5)
{
  *this = &unk_1EF4DE950;
  *(this + 2) = a5;
  v8 = (this + 16);
  std::string::basic_string[abi:fe200100]<0>(this + 16, __s);
  std::string::basic_string[abi:fe200100]<0>(this + 40, a4);
  *(this + 72) = 0u;
  *(this + 8) = a2;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if (std::string::find(v8, 58, 0) != -1)
  {
    return;
  }

  v9 = *(this + 39);
  if (v9 < 0)
  {
    if (*(this + 3) != 2)
    {
      goto LABEL_8;
    }

    v10 = v8->__r_.__value_.__r.__words[0];
LABEL_7:
    if (LOWORD(v10->__r_.__value_.__l.__data_) == 23899)
    {
      return;
    }

    goto LABEL_8;
  }

  v10 = v8;
  if (v9 == 2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((*(this + 2) & 0x80000000) == 0)
  {
    if (*(this + 8))
    {
      __assert_rtn("XMP_Node", "XMPCore_Impl.hpp", 333, "(name.find(':') != XMP_VarString::npos) || (name == []) || (options & ((XMP_OptionBits)0x80000000UL)) || (parent == 0)");
    }
  }
}

void sub_185ECA3B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NormalizeDCArrays(XMP_Node *a1)
{
  result = FindSchemaNode(a1, "http://purl.org/dc/elements/1.1/", 0, 0);
  if (result)
  {
    v2 = result;
    v3 = *(result + 80) - *(result + 72);
    if (v3)
    {
      v4 = 0;
      v5 = v3 >> 3;
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      while (1)
      {
        v7 = *(v2 + 72);
        if (v4 >= (*(v2 + 80) - v7) >> 3)
        {
          __break(1u);
          return result;
        }

        v8 = *(v7 + 8 * v4);
        v33 = v8;
        if ((*(v8 + 9) & 0x1F) == 0)
        {
          break;
        }

LABEL_8:
        if (v6 == ++v4)
        {
          return result;
        }
      }

      v9 = v8 + 16;
      v10 = *(v8 + 39);
      if (v10 < 0)
      {
        if (*(v8 + 24) == 10 && (**v9 == 0x74616572633A6364 ? (v14 = *(*v9 + 8) == 29295) : (v14 = 0), v14) || *(v8 + 24) == 7 && (**v9 == 1681548132 ? (v15 = *(*v9 + 3) == 1702125924) : (v15 = 0), v15))
        {
LABEL_93:
          v31 = 1024;
          goto LABEL_106;
        }

        if (*(v8 + 24) == 14 && (**v9 == 0x72637365643A6364 ? (v16 = *(*v9 + 6) == 0x6E6F697470697263) : (v16 = 0), v16) || *(v8 + 24) == 9 && (**v9 == 0x74686769723A6364 ? (v17 = *(*v9 + 8) == 115) : (v17 = 0), v17) || *(v8 + 24) == 8 && **v9 == 0x656C7469743A6364)
        {
LABEL_105:
          v31 = 4096;
LABEL_106:
          VerifySetOptions(v31, 0);
          operator new();
        }

        if (*(v8 + 24) == 14 && (**v9 == 0x72746E6F633A6364 ? (v18 = *(*v9 + 6) == 0x726F747562697274) : (v18 = 0), v18) || *(v8 + 24) == 11 && (**v9 == 0x75676E616C3A6364 ? (v19 = *(*v9 + 3) == 0x65676175676E616CLL) : (v19 = 0), v19) || *(v8 + 24) == 12 && (**v9 == 0x696C6275703A6364 ? (v20 = *(*v9 + 8) == 1919248499) : (v20 = 0), v20))
        {
LABEL_104:
          v31 = 512;
          goto LABEL_106;
        }

        if (*(v8 + 24) != 11)
        {
          goto LABEL_102;
        }

        v13 = *v9;
        goto LABEL_60;
      }

      v11 = *(v8 + 39);
      if (v10 <= 9u)
      {
        if (v11 == 7)
        {
          if (*v9 == 1681548132 && *(v9 + 3) == 1702125924)
          {
            goto LABEL_93;
          }
        }

        else if (v11 == 8)
        {
          if (*v9 == 0x656C7469743A6364)
          {
            goto LABEL_105;
          }
        }

        else if (v11 == 9 && *v9 == 0x74686769723A6364 && *(v9 + 8) == 115)
        {
          goto LABEL_105;
        }

        goto LABEL_102;
      }

      if (v10 <= 0xBu)
      {
        if (v11 == 10)
        {
          if (*v9 == 0x74616572633A6364 && *(v9 + 8) == 29295)
          {
            goto LABEL_93;
          }

          goto LABEL_102;
        }

        if (v11 == 11)
        {
          v12 = *v9 == 0x75676E616C3A6364 && *(v9 + 3) == 0x65676175676E616CLL;
          v13 = v9;
          if (v12)
          {
            goto LABEL_104;
          }

LABEL_60:
          v21 = *v13;
          v22 = *(v13 + 3);
          if (v21 == 0x74616C65723A6364 && v22 == 0x6E6F6974616C6572)
          {
            goto LABEL_104;
          }
        }

LABEL_102:
        if (std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v9, "dc:subject"))
        {
          goto LABEL_104;
        }

        result = std::operator==[abi:fe200100]<char,std::char_traits<char>,std::allocator<char>>(v33 + 2, "dc:type");
        if (result)
        {
          goto LABEL_104;
        }

        goto LABEL_8;
      }

      if (v11 == 12)
      {
        v26 = *(v9 + 8);
        v27 = *v9 == 0x696C6275703A6364;
        v28 = 1919248499;
      }

      else
      {
        if (v11 != 14)
        {
          goto LABEL_102;
        }

        if (*v9 == 0x72637365643A6364 && *(v9 + 6) == 0x6E6F697470697263)
        {
          goto LABEL_105;
        }

        v26 = *(v9 + 6);
        v27 = *v9 == 0x72746E6F633A6364;
        v28 = 0x726F747562697274;
      }

      if (v27 && v26 == v28)
      {
        goto LABEL_104;
      }

      goto LABEL_102;
    }
  }

  return result;
}

void TouchUpDataModel(XMPMeta *a1, XMPMeta::ErrorCallbackInfo *a2)
{
  SchemaNode = FindSchemaNode(a1 + 224, "http://ns.adobe.com/exif/1.0/", 0, 0);
  if (SchemaNode)
  {
    v4 = SchemaNode;
    ChildNode = FindChildNode(SchemaNode, "exif:GPSTimeStamp", 0, 0);
    if (ChildNode)
    {
      v6 = (ChildNode + 40);
      v67 = 0;
      *__p = 0u;
      v66 = 0u;
      v7 = *(ChildNode + 63);
      v8 = (ChildNode + 40);
      if (v7 < 0)
      {
        v8 = v6->__r_.__value_.__r.__words[0];
      }

      XMPUtils::ConvertToDate(v8, __p);
      if (!LODWORD(__p[0]) && __PAIR64__(HIDWORD(__p[0]), 0) == LODWORD(__p[1]))
      {
        v9 = FindChildNode(v4, "exif:DateTimeOriginal", 0, 0);
        if (v9 || (v9 = FindChildNode(v4, "exif:DateTimeDigitized", 0, 0)) != 0)
        {
          v10 = v9;
          v11 = (v9 + 40);
          v64 = 0;
          memset(v63, 0, sizeof(v63));
          if (*(v10 + 63) < 0)
          {
            v11 = *v11;
          }

          XMPUtils::ConvertToDate(v11, v63);
          __p[0] = *&v63[0];
          LODWORD(__p[1]) = DWORD2(v63[0]);
          XMPUtils::ConvertFromDate(__p, v6);
        }
      }
    }

    v12 = FindChildNode(v4, "exif:UserComment", 0, 0);
    if (v12 && (*(v12 + 9) & 0x1F) == 0)
    {
      operator new();
    }
  }

  v13 = FindSchemaNode(a1 + 224, "http://ns.adobe.com/xmp/1.0/DynamicMedia/", 0, 0);
  if (v13)
  {
    v14 = FindChildNode(v13, "xmpDM:copyright", 0, 0);
    if (v14)
    {
      v15 = v14;
      v16 = FindSchemaNode(a1 + 224, "http://purl.org/dc/elements/1.1/", 1, 0);
      v17 = FindChildNode(v16, "dc:rights", 0, 0);
      v18 = v17;
      v19 = (v15 + 40);
      if (!v17 || *(v17 + 72) == *(v17 + 80))
      {
        std::string::insert((v15 + 40), 0, "\n\n");
        if (*(v15 + 63) < 0)
        {
          v19 = *v19;
        }

        (*(*a1 + 128))(a1, "http://purl.org/dc/elements/1.1/", "rights", "", "x-default", v19, 0);
LABEL_69:
        (*(*a1 + 80))(a1, "http://ns.adobe.com/xmp/1.0/DynamicMedia/", "copyright");
        goto LABEL_70;
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v66 = 0;
      std::string::basic_string[abi:fe200100]<0>(__p, "x-default");
      v20 = LookupLangItem(v18, __p);
      if (v20 < 0)
      {
        v21 = *(v18 + 72);
        if (*(v18 + 80) == v21)
        {
          goto LABEL_112;
        }

        v22 = *v21;
        v23 = (v22 + 40);
        if (*(v22 + 63) < 0)
        {
          v23 = *v23;
        }

        (*(*a1 + 128))(a1, "http://purl.org/dc/elements/1.1/", "rights", "", "x-default", v23, 0);
        v20 = LookupLangItem(v18, __p);
      }

      if (v20)
      {
        __assert_rtn("MigrateAudioCopyright", "XMPMeta-Parse.cpp", 538, "xdIndex == 0");
      }

      v24 = *(v18 + 72);
      if (*(v18 + 80) != v24)
      {
        v25 = *v24;
        v26 = (*v24 + 40);
        v27 = *(*v24 + 63);
        if ((v27 & 0x8000000000000000) != 0)
        {
          v28 = *(v25 + 40);
          v29 = *(v25 + 48);
        }

        else
        {
          v28 = *v24 + 40;
          v29 = *(*v24 + 63);
        }

        if (v29 < 2)
        {
          goto LABEL_47;
        }

        v30 = (v28 + v29);
        v31 = v28;
        while (1)
        {
          v32 = memchr(v31, 10, v29 - 1);
          if (!v32)
          {
            goto LABEL_47;
          }

          if (*v32 == 2570)
          {
            break;
          }

          v31 = v32 + 1;
          v29 = v30 - v31;
          if (v30 - v31 < 2)
          {
            goto LABEL_47;
          }
        }

        if (v32 == v30 || v32 - v28 < 0)
        {
LABEL_47:
          v38 = *(v15 + 63);
          if (v38 >= 0)
          {
            v39 = *(v15 + 63);
          }

          else
          {
            v39 = *(v15 + 48);
          }

          v40 = *(v25 + 48);
          if ((v27 & 0x80000000) == 0)
          {
            v40 = v27;
          }

          if (v39 != v40 || (v38 >= 0 ? (v41 = (v15 + 40)) : (v41 = *v19), (v27 & 0x80000000) == 0 ? (v42 = v26) : (v42 = v26->__r_.__value_.__r.__words[0]), memcmp(v41, v42, v39)))
          {
            std::string::append(v26, "\n\n");
            v43 = *(v15 + 63);
            if (v43 >= 0)
            {
              v44 = (v15 + 40);
            }

            else
            {
              v44 = *(v15 + 40);
            }

            if (v43 >= 0)
            {
              v45 = *(v15 + 63);
            }

            else
            {
              v45 = *(v15 + 48);
            }

            std::string::append(v26, v44, v45);
          }
        }

        else
        {
          v33 = ((v32 - v28) & 0x7FFFFFFF) + 2;
          v34 = *(v15 + 63);
          v35 = *(v15 + 40);
          if (v34 >= 0)
          {
            v36 = *(v15 + 63);
          }

          else
          {
            v36 = *(v15 + 48);
          }

          if ((v27 & 0x80000000) != 0)
          {
            v27 = *(v25 + 48);
            if (v36 == -1 || v27 < v33)
            {
LABEL_111:
              std::string::__throw_out_of_range[abi:fe200100]();
            }

            v37 = v26->__r_.__value_.__r.__words[0];
          }

          else
          {
            if (v33 > v27)
            {
              goto LABEL_111;
            }

            v37 = v26;
            if (v36 == -1)
            {
              goto LABEL_111;
            }
          }

          v59 = v27 - v33;
          if (v34 < 0)
          {
            v19 = v35;
          }

          if (v59 >= v36)
          {
            v60 = v36;
          }

          else
          {
            v60 = v59;
          }

          if (memcmp(v37 + v33, v19, v60) || v59 != v36)
          {
            std::string::replace(v26, v33, 0xFFFFFFFFFFFFFFFFLL, v19, v36);
          }
        }

        if (SBYTE7(v66) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_69;
      }

LABEL_112:
      __break(1u);
      return;
    }
  }

LABEL_70:
  v46 = FindSchemaNode(a1 + 224, "http://purl.org/dc/elements/1.1/", 0, 0);
  if (v46)
  {
    v47 = FindChildNode(v46, "dc:subject", 0, 0);
    if (v47)
    {
      *(v47 + 8) &= 0xFFFFE3FF;
    }
  }

  RepairAltText((a1 + 224), "http://purl.org/dc/elements/1.1/", "dc:description");
  RepairAltText((a1 + 224), "http://purl.org/dc/elements/1.1/", "dc:rights");
  RepairAltText((a1 + 224), "http://purl.org/dc/elements/1.1/", "dc:title");
  RepairAltText((a1 + 224), "http://ns.adobe.com/xap/1.0/rights/", "xmpRights:UsageTerms");
  RepairAltText((a1 + 224), "http://ns.adobe.com/exif/1.0/", "exif:UserComment");
  v48 = (a1 + 240);
  v49 = *(a1 + 263);
  if (v49 < 0)
  {
    v49 = *(a1 + 31);
    if (!v49)
    {
      return;
    }

    v50 = v48->__r_.__value_.__r.__words[0];
    if (strncmp(v48->__r_.__value_.__l.__data_, "uuid:", 5uLL))
    {
      goto LABEL_79;
    }

LABEL_90:
    __p[0] = 0;
    __p[1] = 0;
    *&v66 = 0;
    ExpandXPath("http://ns.adobe.com/xap/1.0/mm/", "InstanceID", __p);
    Node = FindNode(a1 + 224, __p, 1, 0, 0);
    v57 = Node;
    if (!Node)
    {
      exception = __cxa_allocate_exception(0x18uLL);
      *exception = 9;
      exception[1] = "Failure creating xmpMM:InstanceID";
      *(exception + 16) = 0;
    }

    *(Node + 8) = 0;
    std::string::operator=((Node + 40), v48);
    XMP_Node::RemoveChildren(v57);
    XMP_Node::RemoveQualifiers(v57);
    std::string::erase(v48, 0, 0xFFFFFFFFFFFFFFFFLL);
    *&v63[0] = __p;
    std::vector<XPathStepInfo>::__destroy_vector::operator()[abi:fe200100](v63);
    return;
  }

  if (!*(a1 + 263))
  {
    return;
  }

  if (!strncmp(a1 + 240, "uuid:", 5uLL))
  {
    goto LABEL_90;
  }

  v50 = a1 + 240;
LABEL_79:
  if (v49 == 36)
  {
    v51 = 0;
    while (1)
    {
      v52 = v50[v51];
      if (v52 == 45)
      {
        if (v51 > 0x17 || ((1 << v51) & 0x842100) == 0)
        {
          return;
        }
      }

      else
      {
        v53 = v52 - 48;
        v54 = v52 - 97;
        if (v53 >= 0xA && v54 > 0x19)
        {
          return;
        }
      }

      if (++v51 == 36)
      {
        goto LABEL_90;
      }
    }
  }
}

uint64_t RepairAltText(XMP_Node *a1, char *a2, char *a3)
{
  result = FindSchemaNode(a1, a2, 0, 0);
  if (result)
  {
    result = FindChildNode(result, a3, 0, 0);
    if (result)
    {
      v5 = result;
      if ((*(result + 8) & 0x1200) == 0x200)
      {
        *(result + 8) |= 0x1C00u;
        v6 = ((*(result + 80) - *(result + 72)) >> 3) - 1;
        if (v6 >= 0)
        {
          v7 = v6 + 1;
          v8 = 8 * (((*(result + 80) - *(result + 72)) >> 3) - 1);
          v9 = v8 ^ 0xFFFFFFFFFFFFFFF8;
          do
          {
            --v7;
            v10 = *(v5 + 72);
            if (v7 >= ((*(v5 + 80) - v10) >> 3))
            {
LABEL_19:
              __break(1u);
              return result;
            }

            v11 = *(v10 + v8);
            v12 = *(v11 + 8);
            if ((v12 & 0x1F00) == 0)
            {
              if ((v12 & 0x40) != 0)
              {
                goto LABEL_17;
              }

              v19 = *(v11 + 63);
              if (v19 < 0)
              {
                v19 = *(v11 + 48);
              }

              if (v19)
              {
                operator new();
              }
            }

            result = (*(*v11 + 8))(v11);
            v13 = *(v5 + 72);
            v14 = *(v5 + 80);
            if (v14 == (v8 + v13))
            {
              goto LABEL_19;
            }

            v15 = (v13 + v8);
            v16 = (v13 + v8 + 8);
            v17 = &v14[-v13];
            v18 = &v17[v9];
            if (v16 != v14)
            {
              result = memmove(v15, v16, &v17[v9]);
            }

            *(v5 + 80) = &v18[v15];
LABEL_17:
            v8 -= 8;
            v9 += 8;
          }

          while (v7 > 0);
        }
      }
    }
  }

  return result;
}

void ExpatAdapter::~ExpatAdapter(ExpatAdapter *this)
{
  ExpatAdapter::~ExpatAdapter(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4FF130;
  v2 = *(this + 31);
  if (v2)
  {
    XML_ParserFree(v2);
  }

  *(this + 31) = 0;
  v3 = *(this + 32);
  if (v3)
  {
    v4 = v3 == sRegisteredNamespaces;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 32) = 0;

  XMLParserAdapter::~XMLParserAdapter(this);
}

void XMLParserAdapter::~XMLParserAdapter(XMLParserAdapter *this)
{
  *this = &unk_1EF4FF190;
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }

  XML_Node::~XML_Node((this + 8));
}

void XML_Node::~XML_Node(XML_Node *this)
{
  *this = &unk_1EF4FF1C8;
  XML_Node::RemoveAttrs(this);
  XML_Node::RemoveContent(this);
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  XML_Node::~XML_Node(this);

  JUMPOUT(0x186602850);
}