float StereoMultiCoefsSRC_Neon(_OWORD *a1, _OWORD *a2, uint64_t a3, float *a4, float *a5, int a6, int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11)
{
  do
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = (a3 + 4 * (a9 * a11));
    v22 = *a1;
    v23 = *(a1 + 1);
    v21 = (a1 + 2);
    v25 = *a2;
    v26 = *(a2 + 1);
    v24 = (a2 + 2);
    v28 = *v20;
    v29 = v20[1];
    v27 = v20 + 2;
    v30 = a11 - 16;
    if (a11 != 16)
    {
      do
      {
        v32 = *v21;
        v33 = v21[1];
        v31 = v21 + 2;
        v12 = vmlaq_f32(v12, v22, v28);
        v35 = *v24;
        v36 = v24[1];
        v34 = v24 + 2;
        v16 = vmlaq_f32(v16, v25, v28);
        v30 -= 16;
        v38 = *v27;
        v39 = v27[1];
        v37 = v27 + 2;
        v13 = vmlaq_f32(v13, v23, v29);
        v17 = vmlaq_f32(v17, v26, v29);
        v22 = *v31;
        v23 = v31[1];
        v21 = v31 + 2;
        v14 = vmlaq_f32(v14, v32, v38);
        v25 = *v34;
        v26 = v34[1];
        v24 = v34 + 2;
        v18 = vmlaq_f32(v18, v35, v38);
        v28 = *v37;
        v29 = v37[1];
        v27 = v37 + 2;
        v15 = vmlaq_f32(v15, v33, v39);
        v19 = vmlaq_f32(v19, v36, v39);
      }

      while (v30);
    }

    v40 = v27[1];
    a1 = (a1 + 4 * a8);
    a2 = (a2 + 4 * a8);
    a9 += HIWORD(a8);
    v41 = vaddq_f32(vmlaq_f32(v12, v22, v28), vmlaq_f32(v13, v23, v29));
    v42 = vaddq_f32(vmlaq_f32(v16, v25, v28), vmlaq_f32(v17, v26, v29));
    v43 = vaddq_f32(vmlaq_f32(v14, *v21, *v27), vmlaq_f32(v15, v21[1], v40));
    v44 = vaddq_f32(vmlaq_f32(v18, *v24, *v27), vmlaq_f32(v19, v24[1], v40));
    if (a9 >= a10)
    {
      a9 -= a10;
      a1 = (a1 + 4);
      a2 = (a2 + 4);
    }

    v45 = vaddq_f32(v41, v43);
    v46 = vaddq_f32(v42, v44);
    result = vaddv_f32(*&vpaddq_f32(v45, v45));
    --a6;
    *a4 = result;
    *a5 = vaddv_f32(*&vpaddq_f32(v46, v46));
    a4 += a7;
    a5 += a7;
  }

  while (a6);
  return result;
}

unint64_t TDeinterleaver_SIMD<PCMSInt16_SIMD>::Deinterleave(unint64_t result, char *a2, void **a3, int a4)
{
  if (!result)
  {
    return result;
  }

  if (result == 1)
  {
    v5 = *a3;

    return memcpy(v5, a2, 2 * a4);
  }

  v6 = 0;
  v7 = a4 + 3;
  if (a4 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4 + 3;
  }

  v9 = v8 >> 2;
  v10 = result;
  v11 = result;
  v12 = 2 * result;
  while (result >= 8)
  {
    v13 = &a2[2 * v6];
    v14 = &a3[v6];
    v15 = *v14;
    v16 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v14[4];
    v20 = v14[5];
    v21 = v14[6];
    v22 = v14[7];
    if (v7 >= 7)
    {
      v23 = 0;
      v24 = v9;
      do
      {
        v25 = v13;
        v27 = *v13;
        v26 = v13[1];
        v28 = (v13 + v12);
        v30 = *v28;
        v29 = v28[1];
        v31 = (v28 + v12);
        v33 = *v31;
        v32 = v31[1];
        v34 = (v31 + v12);
        v35 = v34[1];
        LODWORD(v36) = vzip1_s16(v27, v30).u32[0];
        WORD2(v36) = v33;
        HIWORD(v36) = *v34;
        LODWORD(v37) = vtrn2_s16(v27, v30).u32[0];
        WORD2(v37) = WORD1(v33);
        HIWORD(v37) = WORD1(*v34);
        LODWORD(v38) = vzip2_s16(v27, v30).u32[0];
        WORD2(v38) = WORD2(v33);
        HIWORD(v38) = WORD2(*v34);
        v27.i32[0] = vuzp2_s16(vuzp2_s16(v27, v30), v27).u32[0];
        v27.i16[2] = HIWORD(v33);
        v27.i16[3] = HIWORD(*v34);
        v30.i32[0] = vzip1_s16(v26, v29).u32[0];
        v30.i16[2] = v32.i16[0];
        v30.i16[3] = v35.i16[0];
        LODWORD(v33) = vtrn2_s16(v26, v29).u32[0];
        WORD2(v33) = v32.i16[1];
        HIWORD(v33) = v35.i16[1];
        LODWORD(v39) = vzip2_s16(v26, v29).u32[0];
        WORD2(v39) = v32.i16[2];
        HIWORD(v39) = v35.i16[2];
        v26.i32[0] = vuzp2_s16(vuzp2_s16(v26, v29), v26).u32[0];
        v26.i16[2] = v32.i16[3];
        *&v15[v23] = v36;
        *&v16[v23] = v37;
        v26.i16[3] = v35.i16[3];
        *&v18[v23] = v38;
        *&v17[v23] = v27;
        *&v19[v23] = v30;
        *&v20[v23] = v33;
        *&v21[v23] = v39;
        *&v22[v23] = v26;
        v23 += 4;
        v13 = (v34 + v12);
        --v24;
      }

      while (v24);
      v13 = &v25[v11];
      v15 = (v15 + v23 * 2);
      v16 = (v16 + v23 * 2);
      v18 = (v18 + v23 * 2);
      v17 = (v17 + v23 * 2);
      v19 = (v19 + v23 * 2);
      v20 = (v20 + v23 * 2);
      v21 = (v21 + v23 * 2);
      v22 = (v22 + v23 * 2);
    }

    if ((a4 & 3) != 0)
    {
      v40 = v13 + 1;
      v41 = a4 & 3;
      do
      {
        v42 = v40[-1];
        v43 = *v40;
        *v15++ = v42.i16[0];
        *v16++ = v42.i16[1];
        *v18++ = v42.i16[2];
        *v17++ = v42.i16[3];
        *v19++ = v43.i16[0];
        *v20++ = v43.i16[1];
        *v21++ = v43.i16[2];
        *v22++ = v43.i16[3];
        v40 = (v40 + v12);
        --v41;
      }

      while (v41);
    }

    v44 = -8;
    v45 = 8;
LABEL_34:
    v6 += v45;
    result = (result + v44);
    if (!result)
    {
      return result;
    }
  }

  if (result >= 4)
  {
    v46 = &a2[2 * v6];
    v47 = &a3[v6];
    v48 = *v47;
    v49 = v47[1];
    v51 = v47[2];
    v50 = v47[3];
    if (v7 >= 7)
    {
      v52 = 0;
      v53 = v9;
      do
      {
        v54 = v46;
        v55 = *v46;
        v56 = (v46 + v12);
        v57 = *v56;
        v58 = (v56 + v12);
        v59 = *v58;
        v60 = (v58 + v12);
        LODWORD(v61) = vzip1_s16(v55, v57).u32[0];
        WORD2(v61) = v59;
        HIWORD(v61) = *v60;
        LODWORD(v62) = vtrn2_s16(v55, v57).u32[0];
        WORD2(v62) = WORD1(v59);
        HIWORD(v62) = WORD1(*v60);
        LODWORD(v63) = vzip2_s16(v55, v57).u32[0];
        WORD2(v63) = WORD2(v59);
        HIWORD(v63) = WORD2(*v60);
        v55.i32[0] = vuzp2_s16(vuzp2_s16(v55, v57), v55).u32[0];
        v55.i16[2] = HIWORD(v59);
        v55.i16[3] = HIWORD(*v60);
        *&v48[v52] = v61;
        *&v49[v52] = v62;
        *&v51[v52] = v63;
        *&v50[v52] = v55;
        v52 += 4;
        v46 = (v60 + v12);
        --v53;
      }

      while (v53);
      v46 = &v54[v11];
      v50 = (v50 + v52 * 2);
      v51 = (v51 + v52 * 2);
      v49 = (v49 + v52 * 2);
      v48 = (v48 + v52 * 2);
    }

    v64 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v65 = *v46;
        *v48++ = *v46;
        *v49++ = v65.i16[1];
        *v51++ = v65.i16[2];
        *v50++ = v65.i16[3];
        v46 = (v46 + v12);
        --v64;
      }

      while (v64);
    }

    v44 = -4;
    v45 = 4;
    goto LABEL_34;
  }

  if (result >= 2)
  {
    v66 = &a2[2 * v6];
    v67 = &a3[v6];
    v68 = *v67;
    v69 = v67[1];
    v70 = v9;
    if (v7 >= 7)
    {
      do
      {
        v71 = v66;
        LOWORD(v72) = *v66;
        v73 = *(v66 + 1);
        v74 = &v66[v12];
        v75 = *v74;
        v76 = *(v74 + 1);
        v77 = &v74[v12];
        v78 = *v77;
        v79 = v77[1];
        v80 = &v77[v12 / 2];
        v81 = v73;
        WORD1(v72) = v75;
        WORD2(v72) = v78;
        LOWORD(v82) = v81;
        WORD1(v82) = v76;
        HIWORD(v72) = *v80;
        WORD2(v82) = v79;
        HIWORD(v82) = HIWORD(*v80);
        *v68++ = v72;
        *v69++ = v82;
        v66 = &v80[v12 / 2];
        --v70;
      }

      while (v70);
      v66 = &v71[v11 * 8];
    }

    v83 = a4 & 3;
    if ((a4 & 3) != 0)
    {
      do
      {
        v84 = *(v66 + 1);
        *v68 = *v66;
        v68 = (v68 + 2);
        *v69 = v84;
        v69 = (v69 + 2);
        v66 += v12;
        --v83;
      }

      while (v83);
    }

    v44 = -2;
    v45 = 2;
    goto LABEL_34;
  }

  if (a4)
  {
    v85 = a3[v6];
    v86 = 2 * v10;
    v87 = &a2[2 * v6];
    do
    {
      *v85++ = *v87;
      v87 += v86;
      --a4;
    }

    while (a4);
  }

  return result;
}

uint64_t ExtAudioFile::Write(ExtAudioFile *this, UInt32 a2, const AudioBufferList *__src)
{
  v29 = *MEMORY[0x1E69E9840];
  ioNumPackets = a2;
  if (*(this + 19) && (*(this + 236) & 0x20) != 0)
  {
    v6 = *(this + 63);
  }

  else
  {
    v6 = 1;
  }

  if (__src->mNumberBuffers != v6)
  {
    result = 4294967246;
LABEL_17:
    v12 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!*(this + 14))
  {
    ExtAudioFile::AllocateBuffers(this, 0);
  }

  v7 = *(this + 8);
  if (v7 != 4)
  {
    if (v7 != 3)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v20, 0xFFFEFBFB);
        *buf = 136315906;
        v22 = "ExtAudioFile.cpp";
        v23 = 1024;
        v24 = 1422;
        v25 = 2080;
        v26 = v20;
        v27 = 2080;
        v28 = "can't write to this file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "can't write to this file", -66565);
    }

    *(this + 8) = 4;
  }

  *(this + 328) = 0;
  if (!*(this + 19))
  {
    if (*(this + 416) == 1)
    {
      v13 = mach_absolute_time();
    }

    else
    {
      v13 = 0;
    }

    v14 = AudioFileWritePackets(*(this + 2), *(this + 29), __src->mBuffers[0].mDataByteSize, 0, *(this + 6), &ioNumPackets, __src->mBuffers[0].mData);
    if (v14)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v20, v14);
        *buf = 136315906;
        v22 = "ExtAudioFile.cpp";
        v23 = 1024;
        v24 = 1432;
        v25 = 2080;
        v26 = v20;
        v27 = 2080;
        v28 = "write audio file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v18 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v18, "write audio file", v14);
    }

    if (*(this + 416) == 1)
    {
      *(this + 53) += mach_absolute_time() - v13;
    }

    v15 = ioNumPackets;
    *(this + 6) += ioNumPackets;
    v16 = *(this + 47);
    result = 0;
    if (v16)
    {
      *(this + 7) += v16 * v15;
    }

    goto LABEL_17;
  }

  *(this + 78) = a2;
  v8 = *(this + 40);
  if (*(v8 + 8))
  {
    CAAssertRtn();
  }

  memcpy((v8 + 24), __src, (16 * __src->mNumberBuffers) | 8);
  v10 = *MEMORY[0x1E69E9840];

  return ExtAudioFile::WritePacketsFromCallback(this, this, v9);
}

OSStatus ExtAudioFileWrite(ExtAudioFileRef inExtAudioFile, UInt32 inNumberFrames, const AudioBufferList *ioData)
{
  if (!ioData)
  {
    return -50;
  }

  v5 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  CrashIfClientProvidedBogusAudioBufferList();
  return ExtAudioFile::Write(v6, inNumberFrames, ioData);
}

uint64_t AudioFileObject::WritePackets(AudioFileObject *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, const void *a7)
{
  v10 = a3;
  v26 = *MEMORY[0x1E69E9840];
  if ((*(*this + 248))(this, a2, a3, a4) >= a5)
  {
    if (a6 && a7)
    {
      v16 = *(this + 10);
      v21 = v16 * *a6;
      if (v21 > v10)
      {
        v17 = v10 / v16;
        *a6 = v10 / v16;
        v16 = *(this + 10);
        v21 = v16 * v17;
      }

      v13 = (*(*this + 80))(this, a2, v16 * a5, &v21, a7);
      if (v13)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "AudioFileObject.cpp";
          v24 = 1024;
          v25 = 1190;
          v14 = MEMORY[0x1E69E9C10];
          v15 = "%25s:%-5d  Write Bytes Failed";
          goto LABEL_13;
        }
      }

      else
      {
        v20 = *(this + 10);
        if (v21 != v20 * *a6)
        {
          *a6 = v21 / v20;
        }
      }
    }

    else
    {
      v13 = 2003334207;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "AudioFileObject.cpp";
        v24 = 1024;
        v25 = 1171;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d  invalid parameter";
        goto LABEL_13;
      }
    }
  }

  else
  {
    v13 = 1885563711;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "AudioFileObject.cpp";
      v24 = 1024;
      v25 = 1170;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d  write past end";
LABEL_13:
      _os_log_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t AudioFileObject::WriteBytes(AudioFileObject *this, int a2, uint64_t a3, unsigned int *a4, const void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) == 0)
  {
    updated = 1886547263;
    goto LABEL_11;
  }

  if (!a4 || !a5)
  {
    updated = 2003334207;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    v22 = "AudioFileObject.cpp";
    v23 = 1024;
    v24 = 817;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  invalid parameters";
    goto LABEL_10;
  }

  v11 = (*(*this + 632))(this, *a4 + a3);
  if (v11)
  {
    updated = v11;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    v22 = "AudioFileObject.cpp";
    v23 = 1024;
    v24 = 823;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  invalid file position";
LABEL_10:
    _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    goto LABEL_11;
  }

  v16 = *a4 + a3;
  v17 = (*(*this + 232))(this);
  if (v16 > v17 && !*(this + 20))
  {
    updated = 1869640813;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    v22 = "AudioFileObject.cpp";
    v23 = 1024;
    v24 = 829;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  Can't write more data until the file is optimized";
    goto LABEL_10;
  }

  v18 = (*(**(this + 13) + 56))(*(this + 13), 32 * (a2 == 0), *(this + 9) + a3, *a4, a5, a4);
  if (v18)
  {
    updated = v18;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 136315394;
    v22 = "AudioFileObject.cpp";
    v23 = 1024;
    v24 = 837;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  couldn't write new data";
    goto LABEL_10;
  }

  if (v16 <= v17)
  {
    updated = 0;
    goto LABEL_11;
  }

  v20 = 0;
  v19 = (*(**(this + 13) + 24))(*(this + 13), &v20);
  if (!v19)
  {
    updated = AudioFileObject::UpdateNumBytes(this, v20 - *(this + 9));
    goto LABEL_11;
  }

  updated = v19;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "AudioFileObject.cpp";
    v23 = 1024;
    v24 = 844;
    v12 = MEMORY[0x1E69E9C10];
    v13 = "%25s:%-5d  GetSize failed";
    goto LABEL_10;
  }

LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return updated;
}

uint64_t ChunkyAudioFile::IsValidFilePosition(ChunkyAudioFile *this, uint64_t a2)
{
  v3 = (*(*this + 816))(this);
  if (a2 <= 0xFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = 1868981823;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t AudioFileObject::UpdateNumBytes(AudioFileObject *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return 4294967246;
  }

  if ((*(*this + 232))(this) != a2)
  {
    (*(*this + 240))(this, a2);
    v4 = (*(*this + 232))(this);
    (*(*this + 256))(this, v4 / *(this + 10));
    if ((*(this + 100) & 2) != 0)
    {
      if (*(this + 33))
      {
        result = 0;
        *(this + 136) = 1;
        return result;
      }

      (*(*this + 224))(this);
    }
  }

  return 0;
}

uint64_t std::function<BOOL ()(IConverterFactory const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

float32x4_t **StereoInterleaveFloat32ToInt16(float32x4_t *a1, float32x4_t *a2, __int16 *a3, unsigned int a4)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  v6[1] = a2;
  result = StereoInterleaveFloat32ToNativeInt16Scaled_ARM(v6, a3, a4, 32768.0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

float32x4_t **StereoInterleaveFloat32ToNativeInt16Scaled_ARM(float32x4_t **result, __int16 *a2, unsigned int a3, float a4)
{
  if ((a2 & 0xF) != 0 && a3)
  {
    v4 = 0;
    v5 = *result;
    v6 = result[1];
    do
    {
      v7 = &a2[v4 / 2];
      v8 = llroundf(v5->f32[v4 / 4] * a4);
      v9 = llroundf(v6->f32[v4 / 4] * a4);
      if (v8 > 0)
      {
        v10 = 0x7FFF;
      }

      else
      {
        v10 = 0x8000;
      }

      if ((v8 ^ (v8 >> 31)) >= 0x8000)
      {
        LOWORD(v8) = v10;
      }

      *v7 = v8;
      if (v9 > 0)
      {
        v11 = 0x7FFF;
      }

      else
      {
        v11 = 0x8000;
      }

      if ((v9 ^ (v9 >> 31)) >= 0x8000)
      {
        v12 = v11;
      }

      else
      {
        v12 = v9;
      }

      v7[1] = v12;
      v13 = a3 - 1;
      v14 = a2 + 4 + v4;
      v4 += 4;
      if ((v14 & 0xF) == 0)
      {
        break;
      }

      --a3;
    }

    while (a3);
    a2 = (a2 + v4);
    *result = (v5 + v4);
    result[1] = (v6 + v4);
  }

  else
  {
    v13 = a3;
  }

  if (v13 >= 8)
  {
    v15 = v13 >> 3;
    v16 = *result;
    v17 = result[1];
    do
    {
      v29.val[0] = vqmovn_high_s32(vqmovn_s32(vcvtaq_s32_f32(vmulq_n_f32(*v16, a4))), vcvtaq_s32_f32(vmulq_n_f32(v16[1], a4)));
      v29.val[1] = vqmovn_high_s32(vqmovn_s32(vcvtaq_s32_f32(vmulq_n_f32(*v17, a4))), vcvtaq_s32_f32(vmulq_n_f32(v17[1], a4)));
      vst2q_s16(a2, v29);
      a2 += 16;
      v16 = *result + 2;
      v17 = result[1] + 2;
      *result = v16;
      result[1] = v17;
      --v15;
    }

    while (v15);
  }

  v18 = v13 & 7;
  if (v18)
  {
    v19 = *result;
    v20 = result[1];
    do
    {
      v21 = v19->f32[0];
      v19 = (v19 + 4);
      v22 = v21;
      v23 = *v20++;
      v24 = llroundf(v22 * a4);
      v25 = llroundf(v23 * a4);
      if (v24 > 0)
      {
        v26 = 0x7FFF;
      }

      else
      {
        v26 = 0x8000;
      }

      if ((v24 ^ (v24 >> 31)) >= 0x8000)
      {
        LOWORD(v24) = v26;
      }

      *a2 = v24;
      if (v25 > 0)
      {
        v27 = 0x7FFF;
      }

      else
      {
        v27 = 0x8000;
      }

      if ((v25 ^ (v25 >> 31)) >= 0x8000)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25;
      }

      a2[1] = v28;
      a2 += 2;
      --v18;
    }

    while (v18);
    *result = v19;
    result[1] = v20;
  }

  return result;
}

uint64_t WAVEAudioFile::GetNumBytes(WAVEAudioFile *this)
{
  v1 = *(this + 13);
  v2 = *(this + 128);
  if (v1 >= v2)
  {
    return *(this + 1);
  }

  else
  {
    return (v1 / v2 * *(this + 1));
  }
}

uint64_t DSPGraph::SRCBox::uninitialize(DSPGraph::SRCBox *this)
{
  DSPGraph::Box::uninitialize(this);
  DSPGraph::SimpleABL::free((this + 912));
  result = *(this + 111);
  *(this + 111) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void DSPGraph::ResamplerSRCKernel::~ResamplerSRCKernel(DSPGraph::ResamplerSRCKernel *this)
{
  *this = &unk_1F0336098;
  v1 = (this + 8);
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F0336098;
  v1 = (this + 8);
  std::vector<std::unique_ptr<Resampler2>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

uint64_t DSPGraph::SingleRateLPCMConverterBox::uninitialize(DSPGraph::SingleRateLPCMConverterBox *this)
{
  v2 = *(this + 97);
  if (v2)
  {
    AudioConverterDispose(v2);
  }

  return DSPGraph::Box::uninitialize(this);
}

DSPGraph::FCBox *DSPGraph::FCBox::asOperativeFCBox(DSPGraph::FCBox *this)
{
  if ((*(*this + 712))(this))
  {
    return 0;
  }

  else
  {
    return this;
  }
}

uint64_t DSPGraph::FCBox::isNoOp(DSPGraph::FCBox *this)
{
  v2 = DSPGraph::FCBox::upstreamSampleRate(this);
  if (v2 != DSPGraph::FCBox::downstreamSampleRate(this))
  {
    return 0;
  }

  v3 = DSPGraph::FCBox::upstreamBlockSize(this);
  if (v3 != DSPGraph::FCBox::downstreamBlockSize(this))
  {
    return 0;
  }

  IsCBR = DSPGraph::FCBox::upstreamIsCBR(this);
  return IsCBR ^ DSPGraph::FCBox::downstreamIsCBR(this) ^ 1u;
}

uint64_t DSPGraph::FCBox::upstreamSampleRate(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F668794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::downstreamSampleRate(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return **((*(*v2 + 40))(v2) + 120);
}

void sub_18F6688B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::upstreamBlockSize(DSPGraph::FCBox *this)
{
  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "in");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v5, v6, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 40);
}

void sub_18F6689D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::downstreamBlockSize(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 40);
}

void sub_18F668AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>(void *result, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = result[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*result + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *DSPGraph::FCBox::isogroup(DSPGraph::Box *a1, uint64_t a2, DSPGraph::IsoGroup *a3)
{
  if ((*(*a1 + 712))(a1))
  {

    return DSPGraph::Box::isogroup(a1, a2, a3);
  }

  else
  {
    result = std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::find<DSPGraph::Box *>(*a2, *(a2 + 8), a1);
    if (!result)
    {
      std::__hash_table<DSPGraph::Box *,std::hash<DSPGraph::Box *>,std::equal_to<DSPGraph::Box *>,std::allocator<DSPGraph::Box *>>::__emplace_unique_key_args<DSPGraph::Box *,DSPGraph::Box *>(a2, a1);
      DSPGraph::IsoGroup::add(a3, a1);
      std::__hash_table<DSPGraph::FCBox *,std::hash<DSPGraph::FCBox *>,std::equal_to<DSPGraph::FCBox *>,std::allocator<DSPGraph::FCBox *>>::__emplace_unique_key_args<DSPGraph::FCBox *,DSPGraph::FCBox * const&>(a3 + 17, a1);
      *(a1 + 106) = a3;
      v7 = *(*a1 + 424);

      return v7(a1, a2, a3);
    }
  }

  return result;
}

uint64_t DSPGraph::RingBufferBox::configureRingBuffer(uint64_t this, int a2, int a3)
{
  *(this + 772) = a2;
  *(this + 776) = a3;
  return this;
}

double DSPGraph::CalculationBox::setParameter(DSPGraph::CalculationBox *this, int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a2)
  {
    DSPGraph::Box::setParameter(this, a5);
  }

  if (a3 != 1 || *(this + 194))
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
    std::to_string(&v16, a3);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17, "CalculationBox can't get parameter in scope ", &v16);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, &v17, " with parameter ID ");
    std::to_string(&v15, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v15;
    }

    else
    {
      v9 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v18, v9, size);
    v19 = *v11;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10866, &v21, 178, &v20, &v19);
  }

  if (*(this + 103) <= a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "setParameter");
    std::to_string(&v16, a4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v17, "CalculationBox can't set input scope element ", &v16);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v18, &v17, " with parameter ID ");
    std::to_string(&v15, 0);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v15;
    }

    else
    {
      v12 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = v15.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v18, v12, v13);
    v19 = *v14;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10877, &v21, 173, &v20, &v19);
  }

  v6 = (this + 16 * a4);
  result = a5;
  v6[99] = result;
  *(v6 + 200) = 1;
  return result;
}

void sub_18F6692A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v38 - 41) < 0)
  {
    operator delete(*(v38 - 64));
  }

  if (*(v38 - 17) < 0)
  {
    operator delete(*(v38 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::SingleRateLPCMConverterBox::initialize(DSPGraph::SingleRateLPCMConverterBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (((v3 - v2) & 0x1FFFFFFFE0) != 0x20 || ((*(this + 12) - *(this + 11)) & 0x1FFFFFFFE0) != 0x20)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "SingleRateLPCMConverterBox only supports 1 bus in 1 bus out");
    DSPGraph::ThrowException(1718449215, &v15, 3772, &v14, &v13);
  }

  if (v3 == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v14, "in");
    v9 = (this + 32);
    if (*(this + 55) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, v9, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v4 = *((*(*v2 + 40))(v2) + 120);
  if (v4->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "SingleRateLPCMConverterBox input format must be LPCM");
    DSPGraph::ThrowException(1718449215, &v15, 3778, &v14, &v13);
  }

  if (!v4->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "SingleRateLPCMConverterBox input must have a non-zero number of channels");
    DSPGraph::ThrowException(1718449215, &v15, 3782, &v14, &v13);
  }

  v5 = *(this + 11);
  if (*(this + 12) == v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v14, "out");
    v11 = (this + 32);
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v10, v11, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *((*(*v5 + 40))(v5) + 120);
  if (v6->mFormatID != 1819304813)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "SingleRateLPCMConverterBox output format must be non-interleaved float");
    DSPGraph::ThrowException(1718449215, &v15, 3788, &v14, &v13);
  }

  if (!v6->mChannelsPerFrame)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "SingleRateLPCMConverterBox output must have a non-zero number of channels");
    DSPGraph::ThrowException(1718449215, &v15, 3792, &v14, &v13);
  }

  if (v4->mSampleRate != v6->mSampleRate)
  {
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "SingleRateLPCMConverterBox input and output sample rates must match");
    DSPGraph::ThrowException(1718449215, &v15, 3796, &v14, &v13);
  }

  result = AudioConverterNewWithOptions(v4, v6, 0, this + 97);
  if (result)
  {
    v12 = result;
    std::string::basic_string[abi:ne200100]<0>(&v15, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v14, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v13, "Error in AudioConverterNew");
    DSPGraph::ThrowException(v12, &v15, 3803, &v14, &v13);
  }

  return result;
}

void sub_18F6697A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::SRCBox::initialize(DSPGraph::SRCBox *this)
{
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) != 0)
  {
    DSPGraph::RingBufferBox::initialize(this);
    v2 = *(this + 11);
    if (*(this + 12) != v2)
    {
      v3 = (*(*v2 + 40))(v2);
      v4 = *(this + 8);
      if (*(this + 9) != v4)
      {
        v5 = *(*(v3 + 120) + 28);
        if (*(*((*(*v4 + 40))(v4) + 120) + 28) == v5)
        {
          DSPGraph::FCBox::upstreamSampleRate(this);
          DSPGraph::FCBox::downstreamSampleRate(this);
          if (*(this + 904) == 1)
          {
            operator new();
          }

          operator new();
        }

        std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v11, "initialize");
        std::string::basic_string[abi:ne200100]<0>(&v10, "input and output channel counts don't match");
        DSPGraph::ThrowException(1667788321, &v12, 440, &v11, &v10);
      }

      std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v11, "in");
      v9 = (this + 32);
      if (*(this + 55) < 0)
      {
        v9 = *v9;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, v9, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v11, "out");
    v7 = (this + 32);
    if (*(this + 55) < 0)
    {
      v7 = *v7;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v6, v7, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  std::string::basic_string[abi:ne200100]<0>(&v12, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_SRCBox.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v11, "initialize");
  std::string::basic_string[abi:ne200100]<0>(&v10, "SRCBox has no inputs");
  DSPGraph::ThrowException(1970168609, &v12, 433, &v11, &v10);
}

void sub_18F669DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::numChannels(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 28);
}

void sub_18F669FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::bytesPerPacket(DSPGraph::FCBox *this)
{
  v3 = this + 88;
  v2 = *(this + 11);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v7, "out");
    v6 = (this + 32);
    if (*(this + 55) < 0)
    {
      v6 = *v6;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v5, v6, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  return *(*((*(*v2 + 40))(v2) + 120) + 16);
}

void sub_18F66A100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::initialize(uint64_t a1)
{
  DSPGraph::Box::initialize(a1);
  v2 = *(a1 + 64);
  if (*(a1 + 72) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "in");
    v13 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v12, v13, (*(a1 + 72) - *(a1 + 64)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(a1 + 88);
  if (*(a1 + 96) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "out");
    v15 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v15 = *v15;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, v15, (*(a1 + 96) - *(a1 + 88)) >> 5, 0);
  }

  v5 = *(v3 + 120);
  v6 = *((*(*v4 + 40))(v4) + 120);
  *(a1 + 813) = 1;
  v7 = *(v5 + 8);
  if (v7 == 1819304813)
  {
    v8 = *(v5 + 12);
    if ((v8 & 1) == 0 || *(v5 + 32) != 32)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v7 != 1718773105 || *(v5 + 32) != 64)
    {
LABEL_27:
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v30, "GainBox input format must be non-interleaved float or 'freq'");
      DSPGraph::ThrowException(1718449215, &v32, 2615, &v31, &v30);
    }

    v8 = *(v5 + 12);
  }

  if ((v8 & 0x20) == 0)
  {
    goto LABEL_27;
  }

  v9 = *(v6 + 8);
  if (v9 == 1819304813)
  {
    v10 = *(v6 + 12);
    if ((v10 & 1) == 0 || *(v6 + 32) != 32)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v9 != 1718773105 || *(v6 + 32) != 64)
    {
LABEL_28:
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v30, "GainBox output format must be non-interleaved float or 'freq'");
      DSPGraph::ThrowException(1718449215, &v32, 2618, &v31, &v30);
    }

    v10 = *(v6 + 12);
  }

  if ((v10 & 0x20) == 0)
  {
    goto LABEL_28;
  }

  result = CA::StreamDescription::IsEquivalent(v5, v6);
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
    CA::StreamDescription::AsString(&v26, v5, v16, v17);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v27, "GainBox input and output formats don't match (", &v26);
    *&v18 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v28, &v27, " != ").n128_u64[0];
    CA::StreamDescription::AsString(v24, v6, v18, v19);
    if ((v25 & 0x80u) == 0)
    {
      v20 = v24;
    }

    else
    {
      v20 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v21 = v25;
    }

    else
    {
      v21 = v24[1];
    }

    v22 = std::string::append(&v28, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v30, &v29, ")");
    DSPGraph::ThrowException(1718449215, &v32, 2623, &v31, &v30);
  }

  return result;
}

void sub_18F66A508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 97) < 0)
  {
    operator delete(*(v42 - 120));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (*(v42 - 49) < 0)
  {
    operator delete(*(v42 - 72));
  }

  _Unwind_Resume(exception_object);
}

BOOL CA::StreamDescription::IsEquivalent(uint64_t a1, uint64_t a2)
{
  if (*a1 != 0.0 && *a2 != 0.0 && *a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a2 + 8);
    if (v4 && v3 != v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      if (v6 != v7)
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + 20);
  if (v8)
  {
    v9 = *(a2 + 20);
    if (v9)
    {
      if (v8 != v9)
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a2 + 24);
    if (v11)
    {
      if (v10 != v11)
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + 28);
  if (v12)
  {
    v13 = *(a2 + 28);
    if (v13)
    {
      if (v12 != v13)
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + 32);
  v15 = v14 == 0;
  if (v14)
  {
    v16 = *(a2 + 32);
    if (v16)
    {
      if (v14 != v16)
      {
        return 0;
      }
    }
  }

  v17 = 1;
  if (v3)
  {
    v19 = *(a2 + 8);
    if (v19)
    {
      v20 = *(a1 + 12);
      if (v20)
      {
        v21 = *(a2 + 12);
        if (v21)
        {
          if (v3 != 1819304813)
          {
            return v20 == v21;
          }

          v22 = v20 & 0x7FFFFFFF;
          if ((v20 & 0x7FFFFFFF) == 0)
          {
            v22 = *(a1 + 12);
          }

          if (v10)
          {
            if ((v20 & 0x20) != 0)
            {
              v23 = 1;
            }

            else
            {
              v23 = *(a1 + 28);
            }

            if (v23)
            {
              v23 = 8 * (v10 / v23);
              v15 = v23 == v14;
            }
          }

          else
          {
            v23 = 0;
          }

          if (v15)
          {
            v22 |= 8u;
          }

          if ((v14 & 7) == 0 && v23 == v14)
          {
            v22 &= ~0x10u;
          }

          if (v22)
          {
            v22 &= ~4u;
          }

          if ((v22 & 8) != 0 && v14 <= 8)
          {
            v22 &= 2u;
          }

          if (v12 == 1)
          {
            v22 &= ~0x20u;
          }

          if (!v22)
          {
            v22 = 0x80000000;
          }

          if (v19 != 1819304813)
          {
            return v22 == v21;
          }

          if ((v21 & 0x7FFFFFFF) != 0)
          {
            v27 = v21 & 0x7FFFFFFF;
          }

          else
          {
            v27 = *(a2 + 12);
          }

          v28 = *(a2 + 24);
          if (v28)
          {
            v29 = *(a2 + 28);
            if ((v21 & 0x20) != 0)
            {
              v30 = 1;
            }

            else
            {
              v30 = *(a2 + 28);
            }

            if (v30)
            {
              v30 = 8 * (v28 / v30);
              v31 = *(a2 + 32);
              v32 = v27 | 8;
              v33 = v30 == v31;
LABEL_77:
              if (v33)
              {
                v27 = v32;
              }

              v34 = (v31 & 7) == 0 && v30 == v31;
              v35 = v27 & 0xFFFFFFEF;
              if (!v34)
              {
                v35 = v27;
              }

              if (v35)
              {
                v35 &= ~4u;
              }

              v36 = (v35 & 8) == 0 || v31 > 8;
              v37 = v35 & 2;
              if (v36)
              {
                v37 = v35;
              }

              if (v29 == 1)
              {
                v38 = v37 & 0xFFFFFFDF;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                v21 = v38;
              }

              else
              {
                v21 = 0x80000000;
              }

              return v22 == v21;
            }

            v31 = *(a2 + 32);
            v32 = v27 | 8;
          }

          else
          {
            v30 = 0;
            v32 = v27 | 8;
            v29 = *(a2 + 28);
            v31 = *(a2 + 32);
          }

          v33 = v31 == 0;
          goto LABEL_77;
        }
      }
    }
  }

  return v17;
}

unint64_t DSPGraph::AUBox::getPropertyInfo(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(this[106], a2, a3, a4, &outDataSize, &outWritable);
  v5 = (outWritable != 0) << 32;
  if (PropertyInfo)
  {
    v6 = PropertyInfo;
  }

  else
  {
    v6 = outDataSize;
  }

  if (PropertyInfo)
  {
    v5 = 0;
  }

  return v5 | v6;
}

uint64_t DSPGraph::AUBox::setUsesFixedBlockSize(DSPGraph::AUBox *this, int a2)
{
  result = (*(*this + 296))(this, 3700, 0, 0);
  if ((v5 & 1) != 0 && (result & 0x100000000) != 0)
  {
    v6 = a2;
    return (*(*this + 312))(this, 3700, 0, 0, 4, &v6);
  }

  return result;
}

uint64_t DSPGraph::TimeFreqBox::initialize(DSPGraph::TimeFreqBox *this)
{
  DSPGraph::Box::initialize(this);
  v2 = *(this + 8);
  if (*(this + 9) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "in");
    v19 = (this + 32);
    if (*(this + 55) < 0)
    {
      v19 = *v19;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v18, v19, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v3 = (*(*v2 + 40))(v2);
  v4 = *(this + 11);
  if (*(this + 12) == v4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "out");
    v21 = (this + 32);
    if (*(this + 55) < 0)
    {
      v21 = *v21;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v20, v21, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v5 = *(v3 + 120);
  if (*(v5 + 28) != *(*((*(*v4 + 40))(v4) + 120) + 28))
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v30, "channel mismatch.");
    DSPGraph::ThrowException(1718444833, &v32, 46, &v31, &v30);
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "in");
    v23 = (this + 32);
    if (*(this + 55) < 0)
    {
      v23 = *v23;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v22, v23, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v6 + 40))(v6) + 120) + 8) != 1819304813)
  {
    goto LABEL_9;
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v31, "out");
    v29 = (this + 32);
    if (*(this + 55) < 0)
    {
      v29 = *v29;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v28, v29, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v7 + 40))(v7);
  if (*(*(result + 120) + 8) == 1718773105)
  {
    v9 = 0;
  }

  else
  {
LABEL_9:
    v10 = *(this + 8);
    if (*(this + 9) == v10)
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v31, "in");
      v25 = (this + 32);
      if (*(this + 55) < 0)
      {
        v25 = *v25;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v24, v25, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    if (*(*((*(*v10 + 40))(v10) + 120) + 8) != 1718773105)
    {
      goto LABEL_39;
    }

    v11 = *(this + 11);
    if (*(this + 12) == v11)
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v31, "out");
      v27 = (this + 32);
      if (*(this + 55) < 0)
      {
        v27 = *v27;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v26, v27, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    result = (*(*v11 + 40))(v11);
    if (*(*(result + 120) + 8) != 1819304813)
    {
LABEL_39:
      std::string::basic_string[abi:ne200100]<0>(&v32, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v31, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v30, "formats are not between freq and time domains.");
      DSPGraph::ThrowException(1718444833, &v32, 54, &v31, &v30);
    }

    v9 = 1;
  }

  *(this + 200) = v9;
  v12 = *(v5 + 28);
  v13 = *(this + 97);
  if (v12 > (*(this + 99) - v13) >> 4)
  {
    v14 = *(this + 98) - v13;
    v33 = this + 776;
    std::allocator<std::unique_ptr<void,int (*)(void *)>>::allocate_at_least[abi:ne200100](v12);
  }

  if (v12)
  {
    *&v31 = 0;
    v15 = *(this + 2);
    if (*(v15 + 268) == 1)
    {
      v16 = *(v15 + 272);
    }

    v17 = *(this + 200);
    VPTimeFreqConverter_Create();
  }

  return result;
}

void sub_18F66B000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_18F66B228(_Unwind_Exception *a1)
{
  v6 = v2[20];
  if (v6)
  {
    v2[21] = v6;
    operator delete(v6);
  }

  v7 = v2[17];
  if (v7)
  {
    v2[18] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[15] = v8;
    operator delete(v8);
  }

  v9 = v2[11];
  if (v9)
  {
    v2[12] = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    v2[9] = v10;
    operator delete(v10);
  }

  v11 = v2[5];
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  MEMORY[0x193ADF220](v2, v1);
  _Unwind_Resume(a1);
}

void std::vector<int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

uint64x2_t CreateMagicalWindow(uint64_t a1, int a2, uint64x2_t result)
{
  if (a2 >= 1)
  {
    *result.i32 = a2;
    v44 = vdupq_lane_s32(*result.i8, 0);
    v45 = vdupq_n_s64(a2 - 1);
    v3 = (a2 + 3) & 0xFFFFFFFC;
    v4 = xmmword_18F9016B0;
    result = xmmword_18F9016C0;
    v5 = xmmword_18F901740;
    v6 = (a1 + 8);
    __asm { FMOV            V1.4S, #4.0 }

    v43 = _Q1;
    __asm { FMOV            V1.4S, #1.0 }

    v51 = _Q1;
    __asm { FMOV            V4.4S, #3.0 }

    v41 = vdupq_n_s64(0x3FF459A5D6E6692DuLL);
    v42 = _Q4;
    v39 = vdupq_n_s64(4uLL);
    v40 = vdupq_n_s32(0x3FC90FDBu);
    do
    {
      v49 = result;
      v50 = v4;
      v14 = vmovn_s32(vuzp1q_s32(vcgeq_u64(v45, result), vcgeq_u64(v45, v4)));
      v48 = v5;
      v15 = vdivq_f32(vmulq_f32(vcvtq_f32_u32(v5), v43), v44);
      v16 = vmovn_s32(vcgtq_f32(v51, v15));
      v17 = vbic_s8(v14, v16);
      v18.i64[0] = 0x4000000040000000;
      v18.i64[1] = 0x4000000040000000;
      v19 = vmovn_s32(vcgtq_f32(v18, v15));
      v20 = vbic_s8(v17, v19);
      v21 = vmovn_s32(vcgtq_f32(v42, v15));
      v22 = vbic_s8(v20, v21);
      v23 = vsubq_f32(v18, v15);
      v24 = vand_s8(v20, v21);
      v25.i64[0] = 0xC0000000C0000000;
      v25.i64[1] = 0xC0000000C0000000;
      v26 = vand_s8(v17, v19);
      v47 = vorr_s8(vorr_s8(v22, vorr_s8(vand_s8(v14, v16), v26)), v24);
      v27 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v22), 0x1FuLL)), vaddq_f32(v23, v18), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v24), 0x1FuLL)), vaddq_f32(v15, v25), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v26), 0x1FuLL)), v23, v15)));
      v46 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vorn_s8(v22, vorr_s8(v24, v26))), 0x1FuLL));
      v55 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*v27.f32), v41)), vmulq_f64(vcvt_hight_f64_f32(v27), v41)), v40);
      v52 = cosf(v55.f32[1]);
      v28.f32[0] = cosf(v55.f32[0]);
      v28.f32[1] = v52;
      v53 = v28;
      v29 = cosf(v55.f32[2]);
      v30 = v53;
      v30.f32[2] = v29;
      v54 = v30;
      v31 = cosf(v55.f32[3]);
      v32 = v54;
      v32.f32[3] = v31;
      v33.i64[0] = 0x3F0000003F000000;
      v33.i64[1] = 0x3F0000003F000000;
      v34.i64[0] = 0xBF000000BF000000;
      v34.i64[1] = 0xBF000000BF000000;
      v35 = vmlaq_f32(v33, v34, v32);
      v36 = vmulq_f32(v35, v35);
      v37 = vsqrtq_f32(vbslq_s8(v46, v36, vsubq_f32(v51, v36)));
      if (v47.i8[0])
      {
        *(v6 - 2) = v37.i32[0];
      }

      if (v47.i8[2])
      {
        *(v6 - 1) = v37.i32[1];
      }

      if (v47.i8[4])
      {
        *v6 = v37.i32[2];
      }

      if (v47.i8[6])
      {
        v6[1] = v37.i32[3];
      }

      v4 = vaddq_s64(v50, v39);
      result = vaddq_s64(v49, v39);
      v38.i64[0] = 0x400000004;
      v38.i64[1] = 0x400000004;
      v5 = vaddq_s32(v48, v38);
      v6 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

uint64_t DSPGraph::SumBox::initialize(DSPGraph::SumBox *this)
{
  if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v17, "SumBox has no inputs");
    DSPGraph::ThrowException(1970168609, &v19, 2922, &v18, &v17);
  }

  DSPGraph::Box::initialize(this);
  v2 = *(this + 11);
  if (*(this + 12) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v18, "out");
    v16 = (this + 32);
    if (*(this + 55) < 0)
    {
      v16 = *v16;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v15, v16, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v2 + 40))(v2);
  v4 = *(result + 120);
  v5 = v4[2];
  if (v5 == 1819304813)
  {
    v6 = v4[3];
    if ((v6 & 1) == 0 || v4[8] != 32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v5 != 1718773105 || v4[8] != 64)
    {
LABEL_32:
      std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
      std::string::basic_string[abi:ne200100]<0>(&v17, "SumBox output format must be non-interleaved float");
      DSPGraph::ThrowException(1718449215, &v19, 2930, &v18, &v17);
    }

    v6 = v4[3];
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_32;
  }

  v7 = *(this + 8);
  v8 = *(this + 9);
  if (v7 != v8)
  {
    v9 = *(this + 8);
    do
    {
      result = (*(*v9 + 40))(v9);
      v10 = *(result + 120);
      v11 = v10[2];
      if (v11 == 1819304813)
      {
        v12 = v10[3];
        if ((v12 & 1) == 0 || v10[8] != 32)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v11 != 1718773105 || v10[8] != 64)
        {
LABEL_29:
          std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v17, "SumBox input format must be non-interleaved float");
          DSPGraph::ThrowException(1718449215, &v19, 2935, &v18, &v17);
        }

        v12 = v10[3];
      }

      if ((v12 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      v13 = v10[7];
      v14 = v4[7];
      if (v13 != v14)
      {
        if (((*(this + 9) - *(this + 8)) & 0x1FFFFFFFE0) != 0x20)
        {
          std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v17, "SumBox channel mismatch");
          DSPGraph::ThrowException(1718449215, &v19, 2942, &v18, &v17);
        }

        if (v14 != 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v18, "initialize");
          std::string::basic_string[abi:ne200100]<0>(&v17, "SumBox output channel count must be mono or matched when input is single-bus");
          DSPGraph::ThrowException(1718449215, &v19, 2940, &v18, &v17);
        }
      }

      v9 += 32;
      v7 += 32;
    }

    while (v9 != v8);
  }

  return result;
}

void sub_18F66B9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::PropertyTap::initialize(DSPGraph::PropertyTap *this)
{
  v2 = (*(**this + 296))(*this, *(this + 2), *(this + 3), *(this + 4));
  if ((v3 & 1) == 0)
  {
    v6 = v2;
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "initialize");
    std::string::basic_string[abi:ne200100]<0>(&v7, "getPropertyInfo failed");
    DSPGraph::ThrowException(v6, &v9, 807, &v8, &v7);
  }

  v4 = *(this + 5);
  if (*(this + 6) - v4 != v2)
  {
    *(this + 6) = v4;
    v5 = v2;
    if (v2)
    {
      if (*(this + 7) - v4 < v2)
      {
        operator new();
      }

      bzero(v4, v2);
      *(this + 6) = &v4[v5];
    }
  }
}

void sub_18F66BC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

unint64_t DSPGraph::SRCBox::selfLatencyInTicks(DSPGraph::SRCBox *this)
{
  if ((*(*this + 712))(this))
  {
    return 0;
  }

  v3 = *(this + 194);
  v4 = *(*(this + 1) + 696);
  v5 = v4 / (*(*this + 664))(this) * v3;
  v6 = *(this + 111);
  if (v6)
  {
    v6 = (*(*v6 + 48))(v6, *(*(this + 1) + 696));
  }

  return v6 + v5;
}

uint64_t DSPGraph::ResamplerSRCKernel::selfLatencyInTicks(DSPGraph::ResamplerSRCKernel *this, unint64_t a2)
{
  v2 = **(this + 1);
  if ((*(v2 + 120) | 2) == 2)
  {
    v3 = 0.5;
    if (*(v2 + 116) != 1818848869)
    {
      v3 = *(v2 + 168) + *(*(v2 + 56) + 20);
    }

    v4 = v3 / *(v2 + 96);
  }

  else
  {
    v4 = 0.0;
  }

  v5 = llround(ceil(v4 * a2));
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5 >= 0)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t DSPGraph::TimeFreqBox::selfLatencyInTicks(DSPGraph::TimeFreqBox *this)
{
  if ((*(*(this + 1) + 761) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "selfLatencyInTicks");
    std::string::basic_string[abi:ne200100]<0>(&v16, "not configured");
    DSPGraph::ThrowException(1667655457, &v18, 72, &v17, &v16);
  }

  v3 = this + 64;
  v2 = *(this + 8);
  if (*(v3 + 1) == v2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v17, "in");
    v9 = (this + 32);
    if (*(this + 55) < 0)
    {
      v9 = *v9;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v8, v9, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v2 + 40))(v2) + 120) + 8) == 1819304813)
  {
    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(&v17, "out");
      v15 = (this + 32);
      if (*(this + 55) < 0)
      {
        v15 = *v15;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v14, v15, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    if (*(*((*(*v4 + 40))(v4) + 120) + 8) == 1718773105)
    {
      return 0;
    }
  }

  v6 = *(this + 8);
  if (*(this + 9) == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v17, "in");
    v11 = (this + 32);
    if (*(this + 55) < 0)
    {
      v11 = *v11;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v10, v11, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  if (*(*((*(*v6 + 40))(v6) + 120) + 8) != 1718773105)
  {
    goto LABEL_25;
  }

  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v17, "out");
    v13 = (this + 32);
    if (*(this + 55) < 0)
    {
      v13 = *v13;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v12, v13, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  if (*(*((*(*v7 + 40))(v7) + 120) + 8) != 1819304813)
  {
LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(&v18, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v17, "selfLatencyInTicks");
    std::string::basic_string[abi:ne200100]<0>(&v16, "formats are not between freq and time domains.");
    DSPGraph::ThrowException(1718444833, &v18, 80, &v17, &v16);
  }

  return *(*(this + 2) + 296);
}

void sub_18F66C1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::GraphInput::copyInput(DSPGraph::GraphInput *this)
{
  v2 = *(this + 106);
  v3 = *(v2 + 64);
  *(this + 856) = (v3 & 2) != 0;
  if ((v3 & 2) != 0)
  {
    *(this + 108) = *(v2 + 16);
    *(this + 109) = *(v2 + 8);
  }

  v4 = *(this + 206) - *(this + 209);
  v5 = (*(*this + 672))(this) * v4;
  v6 = *(this + 106);
  v7 = DSPGraph::GraphInput::preflight(this);
  v8 = *v6;
  if (v7 < *v6)
  {
    v8 = v7;
  }

  if (v5 >= v8)
  {
    v5 = v8;
  }

  **(this + 106) = v5;
  v9 = (*(*this + 672))(this);
  v10 = *(*(this + 106) + 72);
  v11 = 0;
  DSPGraph::RingBuffer::write((this + 808), v5 / v9, v5 / v9, &v10);
  DSPGraph::SimpleABL::free(&v10);
}

unsigned int **DSPGraph::RingBuffer::write(DSPGraph::RingBuffer *this, uint64_t a2, unsigned int a3, unsigned int **a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3 > a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_904);
    }

    v13 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      v24 = a3;
      v25 = 1024;
      v26 = a2;
      _os_log_fault_impl(&dword_18F5DF000, v13, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: RingBuffer::write advancing write by more packets than provided with %u > %u", buf, 0xEu);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: RingBuffer::write advancing write by more packets than provided with %u > %u");
LABEL_17:
    qword_1EAD0BBC0 = buf;
    __break(1u);
  }

  if (*(this + 4) - *(this + 7) < a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_904);
    }

    v14 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v15 = *(this + 4);
      v16 = *(this + 7);
      v17 = *(this + 8);
      v18 = *(this + 9);
      *buf = 67110400;
      v24 = a2;
      v25 = 1024;
      v26 = v15 - v16;
      v27 = 1024;
      v28 = v15;
      v29 = 1024;
      v30 = v16;
      v31 = 1024;
      v32 = v17;
      v33 = 1024;
      v34 = v18;
      _os_log_fault_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: RingBuffer::write overflow %u > %u (capacity = %u, readAvail = %u, readPos = %u, writePos = %u)", buf, 0x26u);
    }

    v21 = *(this + 8);
    v22 = *(this + 9);
    v19 = *(this + 4);
    v20 = *(this + 7);
    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: RingBuffer::write overflow %u > %u (capacity = %u, readAvail = %u, readPos = %u, writePos = %u)", a2);
    goto LABEL_17;
  }

  result = DSPGraph::SimpleABL::dstWrapCopy(a4, this, 0, (*(this + 9) * *(this + 6)), (*(this + 6) * a2));
  v8 = *(this + 9) + a3;
  *(this + 9) = v8;
  v9 = *(this + 5);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v10)
  {
    *(this + 9) = v11;
  }

  *(this + 7) += a3;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int **DSPGraph::SimpleABL::dstWrapCopy(unsigned int **this, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  if (!*a2 || !*v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "dstWrapCopy");
    std::string::basic_string[abi:ne200100]<0>(&v17, "empty destination ABL");
    DSPGraph::ThrowException(1768843553, &v19, 722, &v18, &v17);
  }

  v6 = a4;
  v7 = v5[3];
  v8 = (v7 - a4);
  if (v7 <= a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "dstWrapCopy");
    DSPGraph::strprintf("copy destination position exceeds bounds %u >= %u", v14, v6, v7);
  }

  if (v7 < a5)
  {
    v15 = a5;
    std::string::basic_string[abi:ne200100]<0>(&v19, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v18, "dstWrapCopy");
    DSPGraph::strprintf("copy size exceeds destination size %u > %u", v16, v15, v7);
  }

  v9 = a3;
  v10 = a2;
  v11 = this;
  if (a5 + a4 > v7)
  {
    v12 = (a5 - v8);
    DSPGraph::SimpleABL::copy(this, a2, a3, a4, v8, 0);
    a3 = (v8 + v9);
    this = v11;
    a2 = v10;
    a4 = 0;
    a5 = v12;
  }

  return DSPGraph::SimpleABL::copy(this, a2, a3, a4, a5, 0);
}

void sub_18F66C7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **DSPGraph::RingBuffer::read(DSPGraph::RingBuffer *this, unsigned int a2, int a3, unsigned int **a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(this + 7) < a2)
  {
    if (DSPGraph::getLog(void)::onceToken != -1)
    {
      dispatch_once(&DSPGraph::getLog(void)::onceToken, &__block_literal_global_904);
    }

    v14 = DSPGraph::getLog(void)::gLog;
    if (os_log_type_enabled(DSPGraph::getLog(void)::gLog, OS_LOG_TYPE_FAULT))
    {
      v15 = *(this + 4);
      v16 = *(this + 7);
      v17 = *(this + 8);
      v18 = *(this + 9);
      *buf = 67110144;
      v20 = a2;
      v21 = 1024;
      v22 = v16;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v17;
      v27 = 1024;
      v28 = v18;
      _os_log_fault_impl(&dword_18F5DF000, v14, OS_LOG_TYPE_FAULT, "DSPGraph assertion failure: RingBuffer::read underflow %u > %u (capacity = %u, readPos = %u, writePos = %u)", buf, 0x20u);
    }

    snprintf(buf, 0x400uLL, "DSPGraph assertion failure: RingBuffer::read underflow %u > %u (capacity = %u, readPos = %u, writePos = %u)", a2, *(this + 7), *(this + 4), *(this + 8), *(this + 9));
    qword_1EAD0BBC0 = buf;
    __break(1u);
  }

  result = DSPGraph::SimpleABL::srcWrapCopy(this, a4, (*(this + 8) * *(this + 6)), 0, *(this + 6) * a2, 1);
  v8 = *(this + 8) + a3;
  *(this + 8) = v8;
  v9 = *(this + 5);
  v10 = v8 >= v9;
  v11 = v8 - v9;
  if (v10)
  {
    *(this + 8) = v11;
  }

  v12 = *(this + 7) - a3;
  *(this + 7) = v12;
  if (!v12)
  {
    *(this + 4) = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int **DSPGraph::SimpleABL::srcWrapCopy(unsigned int **this, unsigned int **a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = *this;
  if (!*this || !*v6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "srcWrapCopy");
    std::string::basic_string[abi:ne200100]<0>(&v19, "empty internal ABL");
    DSPGraph::ThrowException(1768843553, &v21, 696, &v20, &v19);
  }

  v7 = a3;
  v8 = v6[3];
  v9 = (v8 - a3);
  if (v8 <= a3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "srcWrapCopy");
    DSPGraph::strprintf("copy source position exceeds bounds %u >= %u", v16, v7, v8);
  }

  if (v8 < a5)
  {
    v17 = a5;
    std::string::basic_string[abi:ne200100]<0>(&v21, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Utils.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v20, "srcWrapCopy");
    DSPGraph::strprintf("copy size exceeds source size %u > %u", v18, v17, v8);
  }

  v11 = a4;
  v12 = a2;
  v13 = this;
  if (a5 + a3 > v8)
  {
    v14 = (a5 - v9);
    DSPGraph::SimpleABL::copy(this, a2, a3, a4, v9, 0);
    a4 = (v9 + v11);
    this = v13;
    a2 = v12;
    a3 = 0;
    a5 = v14;
  }

  return DSPGraph::SimpleABL::copy(this, a2, a3, a4, a5, a6);
}

void sub_18F66CB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::SingleRateLPCMConverterBox::process(DSPGraph::SingleRateLPCMConverterBox *this, int a2)
{
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "out");
    v32 = (this + 32);
    if (*(this + 55) < 0)
    {
      v32 = *v32;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v31, v32, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = *(*((*(*v3 + 40))(v3) + 56) + 80);
  if (*v6)
  {
    v7 = 0;
    v8 = 3;
    do
    {
      v9 = *(this + 11);
      if (*(this + 12) == v9)
      {
        std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v46, "out");
        v30 = (this + 32);
        if (*(this + 55) < 0)
        {
          v30 = *v30;
        }

        DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v29, v30, (*(this + 12) - *(this + 11)) >> 5, 0);
      }

      v6[v8] = *(*((*(*v9 + 40))(v9) + 120) + 24) * a2;
      ++v7;
      v8 += 4;
    }

    while (v7 < *v6);
  }

  v10 = *(this + 8);
  if (*(this + 9) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "in");
    v34 = (this + 32);
    if (*(this + 55) < 0)
    {
      v34 = *v34;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v33, v34, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v11 = *(this + 97);
  v12 = (*(*v10 + 40))(v10);
  v13 = *(this + 11);
  if (*(this + 12) == v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "out");
    v36 = (this + 32);
    if (*(this + 55) < 0)
    {
      v36 = *v36;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v35, v36, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v14 = *(*(v12 + 56) + 80);
  v15 = *(*((*(*v13 + 40))(v13) + 56) + 80);
  v49 = a2;
  v45 = v14;
  v48 = v15;
  v46[0] = &v49;
  v46[1] = &v45;
  v46[2] = &v48;
  v47[0] = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
  v47[1] = v46;
  with_resolved_rt(v11, v47);
  v16 = *(this + 8);
  if (*(this + 9) == v16)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "in");
    v38 = (this + 32);
    if (*(this + 55) < 0)
    {
      v38 = *v38;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v37, v38, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v17 = (*(*v16 + 40))(v16);
  v18 = *(this + 11);
  if (*(this + 12) == v18)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "out");
    v40 = (this + 32);
    if (*(this + 55) < 0)
    {
      v40 = *v40;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v39, v40, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v19 = *(v17 + 56);
  v20 = *((*(*v18 + 40))(v18) + 56);
  v21 = *(v19 + 8);
  v22 = *(v19 + 24);
  v23 = *(v19 + 40);
  *(v20 + 56) = *(v19 + 56);
  *(v20 + 40) = v23;
  *(v20 + 24) = v22;
  *(v20 + 8) = v21;
  v24 = *(this + 8);
  if (*(this + 9) == v24)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "in");
    v42 = (this + 32);
    if (*(this + 55) < 0)
    {
      v42 = *v42;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v41, v42, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v25 = (*(*v24 + 40))(v24);
  v26 = *(this + 11);
  if (*(this + 12) == v26)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v46, "out");
    v44 = (this + 32);
    if (*(this + 55) < 0)
    {
      v44 = *v44;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v43, v44, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v27 = *(*(v25 + 56) + 72);
  result = (*(*v26 + 40))(v26);
  *(*(result + 56) + 72) = v27;
  return result;
}

void sub_18F66D21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void *DSPGraph::SRCBox::process(DSPGraph::SRCBox *this, uint64_t a2)
{
  if ((*(*this + 712))(this))
  {
    v4 = *(this + 11);
    if (*(this + 12) == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v41, "out");
      v34 = (this + 32);
      if (*(this + 55) < 0)
      {
        v34 = *v34;
      }

      DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v33, v34, (*(this + 12) - *(this + 11)) >> 5, 0);
    }

    v5 = (*(*v4 + 40))(v4);
    v6 = *(this + 8);
    if (*(this + 9) == v6)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v41, "in");
      v38 = (this + 32);
      if (*(this + 55) < 0)
      {
        v38 = *v38;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v37, v38, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v7 = *(v5 + 56);
    v8 = (*(*v6 + 40))(v6);
    DSPGraph::Buffer::copyFrom(v7, *(v8 + 56));
  }

  else
  {
    v9 = *(this + 8);
    if (*(this + 9) == v9)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v41, "in");
      v36 = (this + 32);
      if (*(this + 55) < 0)
      {
        v36 = *v36;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v35, v36, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v10 = *((*(*v9 + 40))(v9) + 56);
    v11 = *(v10 + 64);
    *(this + 864) = (v11 & 2) != 0;
    if ((v11 & 2) != 0)
    {
      *(this + 109) = *(v10 + 16);
      *(this + 110) = *(v10 + 8);
    }

    v12 = *(this + 8);
    if (*(this + 9) == v12)
    {
      std::string::basic_string[abi:ne200100]<0>(v42, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
      std::string::basic_string[abi:ne200100]<0>(v41, "in");
      v40 = (this + 32);
      if (*(this + 55) < 0)
      {
        v40 = *v40;
      }

      DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v39, v40, (*(this + 9) - *(this + 8)) >> 5, 0);
    }

    v13 = *(*((*(*v12 + 40))(v12) + 56) + 80);
    v14 = *(this + 114);
    v42[0] = *(this + 232);
    (*(**(this + 111) + 56))(*(this + 111), v13, v14, a2, v42);
    DSPGraph::RingBuffer::write((this + 808), v42[0], v42[0], this + 114);
  }

  v15 = *(this + 8);
  if (*(this + 9) == v15)
  {
    std::string::basic_string[abi:ne200100]<0>(v42, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v41, "in");
    v30 = (this + 32);
    if (*(this + 55) < 0)
    {
      v30 = *v30;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v29, v30, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v16 = (*(*v15 + 40))(v15);
  v17 = *(this + 8);
  if (*(this + 9) == v17)
  {
    std::string::basic_string[abi:ne200100]<0>(v42, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v41, "in");
    v32 = (this + 32);
    if (*(this + 55) < 0)
    {
      v32 = *v32;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v31, v32, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v18 = *(*(v16 + 56) + 72);
  result = (*(*v17 + 40))(v17);
  v21 = *(this + 11);
  v20 = *(this + 12);
  if (v21 != v20)
  {
    v22 = result[7];
    result = v21;
    v23 = v21;
    do
    {
      v24 = *v23;
      v23 += 4;
      v25 = *((*(v24 + 40))(result) + 56);
      v26 = *(v22 + 56);
      v27 = *(v22 + 40);
      v28 = *(v22 + 24);
      *(v25 + 8) = *(v22 + 8);
      *(v25 + 24) = v28;
      *(v25 + 40) = v27;
      *(v25 + 56) = v26;
      *(v25 + 72) = v18;
      v21 += 32;
      result = v23;
    }

    while (v23 != v20);
  }

  return result;
}

void sub_18F66D814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::FCBox::doProcess(uint64_t this, uint64_t a2)
{
  if (*(this + 744) == 1)
  {
    v3 = this;
    if (atomic_fetch_or((this + 768), 0x80000000))
    {
      v4 = *(this + 152);
      v5 = *(this + 160);
      while (v4 != v5)
      {
        DSPGraph::ParameterTap::process(v4, v3);
        v4 = (v4 + 40);
      }

      v6 = *(v3 + 176);
      v7 = *(v3 + 184);
      while (v6 != v7)
      {
        DSPGraph::PropertyTap::process(v6, v3);
        v6 = (v6 + 64);
      }

      v8 = *(v3 + 736);
      v14 = v3;
      v15 = a2;
      _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(v8, &v14);
      (*(*v3 + 472))(v3, a2);
      if ((*(*v3 + 712))(v3))
      {
        v9 = *(v3 + 200);
        v10 = *(v3 + 208);
        while (v9 != v10)
        {
          DSPGraph::FileRecorder::record(*v9++, a2);
        }
      }

      v11 = *(v3 + 224);
      v12 = *(v3 + 232);
      while (v11 != v12)
      {
        DSPGraph::FileInjector::inject(*v11++, a2);
      }

      v13 = *(v3 + 736);
      v14 = v3;
      v15 = a2;
      this = _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_((v13 + 64), &v14);
    }

    else
    {
      this = (*(*this + 472))(this, a2);
    }

    atomic_fetch_and((v3 + 768), 0x7FFFFFFFu);
  }

  return this;
}

uint64_t DSPGraph::ResamplerSRCKernel::process(uint64_t this, AudioBufferList *a2, AudioBufferList *a3, int a4, unsigned int *a5)
{
  v6 = this;
  v18 = a4;
  v7 = 4 * *a5;
  if (*(this + 32) == 2)
  {
    mData = a2->mBuffers[0].mData;
    v9 = *&a2[1].mBuffers[0].mNumberChannels;
    v10 = a3->mBuffers[0].mData;
    v11 = *&a3[1].mBuffers[0].mNumberChannels;
    a3->mBuffers[0].mDataByteSize = v7;
    *(&a3[1].mNumberBuffers + 1) = v7;
    return (*(***(this + 8) + 32))(**(this + 8), mData, v9, v10, v11, &v18, a5, 1, 1);
  }

  else
  {
    v12 = *(this + 8);
    if (*(this + 16) != v12)
    {
      v13 = 0;
      p_mData = &a3->mBuffers[0].mData;
      v15 = &a2->mBuffers[0].mData;
      do
      {
        v16 = *v15;
        v15 += 2;
        v17 = *p_mData;
        *(p_mData - 1) = v7;
        this = (*(**(v12 + 8 * v13) + 32))(*(v12 + 8 * v13), v16, 0, v17, 0, &v18, a5, 1, 1);
        ++v13;
        v12 = *(v6 + 8);
        p_mData += 2;
      }

      while (v13 < (*(v6 + 16) - v12) >> 3);
    }
  }

  return this;
}

uint64_t DSPGraph::FCBox::copyOutput(DSPGraph::FCBox *this, uint64_t a2)
{
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v32, "out");
    v23 = (this + 32);
    if (*(this + 55) < 0)
    {
      v23 = *v23;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v22, v23, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v32, "out");
    v25 = (this + 32);
    if (*(this + 55) < 0)
    {
      v25 = *v25;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v24, v25, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 120) + 20);
  *(*((*(*v7 + 40))(v7) + 56) + 72) = 0;
  v9 = *(this + 11);
  if (*(this + 12) == v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v32, "out");
    v27 = (this + 32);
    if (*(this + 55) < 0)
    {
      v27 = *v27;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v26, v27, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v10 = (*(*v9 + 40))(v9);
  DSPGraph::Buffer::setByteSize(*(v10 + 56), *(*(v10 + 56) + 100));
  v11 = *(this + 11);
  if (*(this + 12) == v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v32, "out");
    v29 = (this + 32);
    if (*(this + 55) < 0)
    {
      v29 = *v29;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v28, v29, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v12 = (*(*v11 + 40))(v11);
  DSPGraph::RingBuffer::read((this + 808), a2 / v8, a2 / v8, (*(v12 + 56) + 80));
  v13 = *(this + 11);
  if (*(this + 12) == v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v32, "out");
    v31 = (this + 32);
    if (*(this + 55) < 0)
    {
      v31 = *v31;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v30, v31, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  result = (*(*v13 + 40))(v13);
  v15 = *(result + 56);
  *(v15 + 64) = 1;
  v16 = *(*(this + 107) + 256);
  *(v15 + 8) = v16;
  if (*(this + 864) == 1)
  {
    *(v15 + 64) = 3;
    v17 = v16 / DSPGraph::FCBox::downstreamSampleRate(this);
    v18 = *(this + 110);
    result = DSPGraph::FCBox::upstreamSampleRate(this);
    *(v15 + 16) = *(this + 109) + llround((v17 - v18 / result) * 24000000.0);
  }

  v20 = *(this + 25);
  v19 = *(this + 26);
  while (v20 != v19)
  {
    v21 = *v20++;
    result = DSPGraph::FileRecorder::record(v21, a2);
  }

  return result;
}

void sub_18F66DFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::process(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  if (*(v4 + 8) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v55 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v55 = *v55;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v54, v55, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(v2 + 88);
  if (*(v2 + 96) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "out");
    v57 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v57 = *v57;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v56, v57, (*(v2 + 96) - *(v2 + 88)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  v10 = *(v2 + 88);
  if (*(v2 + 96) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "out");
    v59 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v59 = *v59;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v58, v59, (*(v2 + 96) - *(v2 + 88)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v68 = *(*((*(*v10 + 40))(v10) + 120) + 8);
  v12 = *v8;
  if (*(v2 + 812) == 1)
  {
    *(v2 + 812) = 0;
  }

  if (*(v2 + 813) == 1)
  {
    v13 = 1.0;
    if (*(v2 + 780))
    {
      v13 = 0.0;
    }

    *(v2 + 808) = *(v2 + 776) * v13;
  }

  v14 = *(v2 + 64);
  if (*(v2 + 72) == v14)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v61 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v61 = *v61;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v60, v61, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v15 = (4 * a2) << (v68 == 1718773105);
  if ((*(*((*(*v14 + 40))(v14) + 56) + 72) & 0x10) != 0)
  {
    if (v12)
    {
      v24 = (v11 + 16);
      do
      {
        bzero(*v24, v15);
        *(v24 - 1) = v15;
        v24 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v16 = a2;
    v17 = *(v2 + 804);
    v18 = (v2 + 808);
    v19 = *(v2 + 808);
    if (v17 == v19)
    {
      if (v12)
      {
        v20 = (v11 + 16);
        v21 = v8 + 4;
        do
        {
          v22 = *v21;
          v23 = *v20;
          MEMORY[0x193AE08B0](*v21, 1, v2 + 808, *v20, 1, v16);
          if (v68 == 1718773105)
          {
            MEMORY[0x193AE08B0](v22 + 4 * v16, 1, v2 + 808, v23 + 4 * v16, 1, v16);
          }

          *(v20 - 1) = v15;
          v20 += 2;
          v21 += 2;
          --v12;
        }

        while (v12);
      }
    }

    else
    {
      if (*(v2 + 813))
      {
        v25 = *(v2 + 784);
        v26 = (v19 - v17) / (v25 * DSPGraph::Box::sampleRate(v2));
        *(v2 + 800) = v26;
        v17 = *(v2 + 804);
      }

      else
      {
        v26 = *(v2 + 800);
      }

      *(v2 + 813) = 0;
      v27 = v17 + (v26 * a2);
      if ((v26 <= 0.0 || (v28 = *v18, v27 <= *v18)) && (v26 >= 0.0 || (v28 = *v18, v27 >= *v18)))
      {
        if (v12)
        {
          v34 = (v11 + 16);
          v35 = (v8 + 4);
          do
          {
            v36 = *v35;
            v37 = *v34;
            __Start[0] = *(v2 + 804);
            vDSP_vrampmul(v36, 1, __Start, (v2 + 800), v37, 1, v16);
            if (v68 == 1718773105)
            {
              __Start[0] = *(v2 + 804);
              vDSP_vrampmul(&v36[v16], 1, __Start, (v2 + 800), &v37[v16], 1, v16);
            }

            v34 += 2;
            v35 += 2;
            --v12;
          }

          while (v12);
        }
      }

      else if (v12)
      {
        v29 = fabsf((v28 - v17) / v26);
        v66 = a2 - v29;
        v67 = v2;
        v30 = (v11 + 16);
        v31 = (v8 + 4);
        do
        {
          v32 = *v31;
          v33 = *v30;
          __Start[0] = *(v2 + 804);
          vDSP_vrampmul(v32, 1, __Start, (v2 + 800), v33, 1, v29);
          MEMORY[0x193AE08B0](&v32[v29], 1, v18, &v33[v29], 1, v66);
          if (v68 == 1718773105)
          {
            __Start[0] = *(v67 + 804);
            vDSP_vrampmul(&v32[v16], 1, __Start, (v67 + 800), &v33[v16], 1, v29);
            MEMORY[0x193AE08B0](&v32[v29 + v16], 1, v18, &v33[v29 + v16], 1, v66);
          }

          v30 += 2;
          v31 += 2;
          --v12;
          v2 = v67;
        }

        while (v12);
        v27 = *v18;
      }

      else
      {
        v27 = v28;
      }

      *(v2 + 804) = v27;
    }
  }

  if (*(v2 + 813) == 1)
  {
    v38 = 16 * (*(v2 + 808) == 0.0);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v2 + 64);
  if (*(v2 + 72) == v39)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v63 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v63 = *v63;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v62, v63, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v40 = (*(*v39 + 40))(v39);
  v41 = *(v2 + 64);
  if (*(v2 + 72) == v41)
  {
    std::string::basic_string[abi:ne200100]<0>(__Start, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v69, "in");
    v65 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v65 = *v65;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v64, v65, (*(v2 + 72) - *(v2 + 64)) >> 5, 0);
  }

  v42 = *(*(v40 + 56) + 72);
  result = (*(*v41 + 40))(v41);
  v44 = *(v2 + 88);
  v45 = *(v2 + 96);
  if (v44 != v45)
  {
    v46 = v42 | v38;
    v47 = *(result + 56);
    result = *(v2 + 88);
    v48 = result;
    do
    {
      v49 = *v48;
      v48 += 4;
      v50 = *((*(v49 + 40))(result) + 56);
      v51 = *(v47 + 56);
      v52 = *(v47 + 40);
      v53 = *(v47 + 24);
      *(v50 + 8) = *(v47 + 8);
      *(v50 + 24) = v53;
      *(v50 + 40) = v52;
      *(v50 + 56) = v51;
      *(v50 + 72) = v46;
      v44 += 4;
      result = v48;
    }

    while (v48 != v45);
  }

  if (*(v2 + 804) == *(v2 + 808))
  {
    *(v2 + 813) = 1;
  }

  return result;
}

void sub_18F66E884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::Buffer *DSPGraph::Buffer::copyFrom(DSPGraph::Buffer *this, DSPGraph::Buffer *a2)
{
  if (a2 != this)
  {
    v2 = this;
    v3 = *(a2 + 10);
    v4 = *(this + 10);
    if (*v3 != *v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Buffer.cpp");
      std::string::basic_string[abi:ne200100]<0>(&v12, "copyFrom");
      std::string::basic_string[abi:ne200100]<0>(&v11, "Buffer::copyFrom, fromABL->mNumberBuffers != toABL->mNumberBuffers");
      DSPGraph::ThrowException(1718444833, &v13, 63, &v12, &v11);
    }

    v5 = *(this + 24);
    if (v5)
    {
      v6 = 0;
      v7 = (v4 + 4);
      v8 = v3 + 3;
      do
      {
        v9 = *v8;
        if (v9 > *(v2 + 25))
        {
          std::string::basic_string[abi:ne200100]<0>(&v13, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Buffer.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v12, "copyFrom");
          std::string::basic_string[abi:ne200100]<0>(&v11, "Buffer::copyFrom, fromABL->mBuffers[i].mDataByteSize > mByteCapacity");
          DSPGraph::ThrowException(1718444833, &v13, 68, &v12, &v11);
        }

        v10 = *(v8 + 1);
        this = *v7;
        if (v10 != *v7)
        {
          this = memcpy(this, v10, v9);
          LODWORD(v9) = *v8;
          v5 = *(v2 + 24);
        }

        *(v7 - 1) = v9;
        ++v6;
        v7 += 2;
        v8 += 4;
      }

      while (v6 < v5);
    }
  }

  return this;
}

void sub_18F66EA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

DSPGraph::ParameterTap **DSPGraph::Box::processParameterTaps(DSPGraph::ParameterTap **this)
{
  v1 = this[19];
  v2 = this[20];
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      this = DSPGraph::ParameterTap::process(v1, v3);
      v1 = (v1 + 40);
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t DSPGraph::ParameterTap::process(DSPGraph::ParameterTap *this, DSPGraph::Box *a2)
{
  (*(**this + 88))(*this, *(this + 2), *(this + 3), *(this + 4));
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = *(this + 8);
  v7 = *(*a2 + 80);

  return v7(a2, v4, v5, v6, 0);
}

uint64_t DSPGraph::CalculationBox::getParameter(DSPGraph::CalculationBox *this, int a2, unsigned int a3, unsigned int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    DSPGraph::Box::getParameter(this);
  }

  if (a3 != 2)
  {
    if (a3 == 1 && !*(this + 194))
    {
      if (*(this + 103) <= a4)
      {
        std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
        std::string::basic_string[abi:ne200100]<0>(&v26, "getParameter");
        std::to_string(&v22, a4);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "CalculationBox can't get input scope element ", &v22);
        std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &v23, " with parameter ID ");
        std::to_string(&v21, 0);
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = &v21;
        }

        else
        {
          v13 = v21.__r_.__value_.__r.__words[0];
        }

        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v21.__r_.__value_.__l.__size_;
        }

        v15 = std::string::append(&v24, v13, size);
        v25 = *v15;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
        DSPGraph::ThrowException(-10877, &v27, 137, &v26, &v25);
      }

      v6 = *MEMORY[0x1E69E9840];
      v7 = this + 16 * a4 + 792;

      return DSPGraph::CalculationBox::Value::operator float<float>(v7);
    }

LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(&v27, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v26, "getParameter");
    std::to_string(&v22, a3);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, "CalculationBox can't get parameter in scope ", &v22);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v24, &v23, " with parameter ID ");
    std::to_string(&v21, 0);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v21;
    }

    else
    {
      v10 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v11 = v21.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v24, v10, v11);
    v25 = *v12;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(-10866, &v27, 150, &v26, &v25);
  }

  if (*(this + 195))
  {
    goto LABEL_12;
  }

  DSPGraph::CalculationBox::calculate(&v27, this, a4);
  if ((v28 & 1) == 0)
  {
    v16 = v27;
    std::string::basic_string[abi:ne200100]<0>(&v26, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/Boxes/DSPGraph_CalculationBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v25, "getParameter");
    std::to_string(&v21, a4);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v22, "CalculationBox can't get output scope element ", &v21);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v23, &v22, " with parameter ID ");
    std::to_string(&v20, 0);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v20;
    }

    else
    {
      v17 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v20.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v23, v17, v18);
    v24 = *v19;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    DSPGraph::ThrowException(v16, &v26, 144, &v25, &v24);
  }

  result = DSPGraph::CalculationBox::Value::operator float<float>(&v27);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F66EEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v38 - 73) < 0)
  {
    operator delete(*(v38 - 96));
  }

  if (*(v38 - 49) < 0)
  {
    operator delete(*(v38 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t DSPGraph::CalculationBox::calculate(uint64_t this, uint64_t a2, int a3)
{
  v3 = this;
  if (a3)
  {
    v4 = -10877;
LABEL_3:
    *this = v4;
    *(this + 16) = 0;
  }

  else
  {
    switch(*(a2 + 784))
    {
      case 0:
        v6 = *(a2 + 824);
        if (!v6)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v6 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v7 = *(a2 + 800);
        v8 = *(a2 + 816);
        if (v7 == -1 || v8 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v36 = &v38;
        this = (*(&off_1F032D1F8[2 * v7] + v8))(&v36, a2 + 792, a2 + 808);
        goto LABEL_49;
      case 1:
        v27 = *(a2 + 824);
        if (!v27)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v27 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v28 = *(a2 + 800);
        v29 = *(a2 + 816);
        if (v28 == -1 || v29 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v36 = &v38;
        this = (*(&off_1F032D218[2 * v28] + v29))(&v36, a2 + 792, a2 + 808);
        goto LABEL_49;
      case 2:
        v21 = *(a2 + 824);
        if (!v21)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v21 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v17 = a2 + 792;
        v18 = (a2 + 808);
        goto LABEL_30;
      case 3:
        v24 = *(a2 + 824);
        if (!v24)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v24 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v25 = *(a2 + 800);
        v26 = *(a2 + 816);
        if (v25 == -1 || v26 == -1)
        {
          std::__throw_bad_variant_access[abi:ne200100]();
        }

        v36 = &v38;
        this = (*(&off_1F032D258[2 * v25] + v26))(&v36, a2 + 792, a2 + 808);
        goto LABEL_49;
      case 4:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v36 = -1;
        v37 = 0;
        v17 = a2 + 792;
        v18 = &v36;
LABEL_30:
        this = DSPGraph::CalculationBox::Value::operator*(v17, v18);
LABEL_49:
        *v3 = this;
        *(v3 + 8) = v9;
        break;
      case 5:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(a2 + 792);
        if (this)
        {
          v30 = boost::container::vector<DSPGraph::CalculationBox::Value,boost::container::dtl::static_storage_allocator<DSPGraph::CalculationBox::Value,2ul,0ul,true>,void>::operator[](a2 + 792);
          this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(v30);
LABEL_54:
          v31 = this;
        }

        else
        {
          v31 = 0;
        }

LABEL_65:
        *v3 = v31;
        *(v3 + 8) = 0;
        break;
      case 6:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(a2 + 792);
        if (this)
        {
          v33 = 1;
        }

        else
        {
          v35 = boost::container::vector<DSPGraph::CalculationBox::Value,boost::container::dtl::static_storage_allocator<DSPGraph::CalculationBox::Value,2ul,0ul,true>,void>::operator[](a2 + 792);
          this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(v35);
          v33 = this;
        }

        *v3 = v33;
        *(v3 + 8) = 0;
        *(v3 + 16) = 1;
        return this;
      case 7:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(a2 + 792);
        goto LABEL_64;
      case 8:
        if (!*(a2 + 824))
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v23 = (a2 + 792);
        goto LABEL_68;
      case 9:
        v20 = *(a2 + 824);
        if (!v20)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v20 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator==(a2 + 792, a2 + 808);
        goto LABEL_54;
      case 0xA:
        v34 = *(a2 + 824);
        if (!v34)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v34 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator==(a2 + 792, a2 + 808);
        goto LABEL_64;
      case 0xB:
        v16 = *(a2 + 824);
        if (!v16)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v16 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator<(a2 + 792, a2 + 808);
        goto LABEL_64;
      case 0xC:
        v19 = *(a2 + 824);
        if (!v19)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v19 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator>(a2 + 792, a2 + 808);
        goto LABEL_54;
      case 0xD:
        v32 = *(a2 + 824);
        if (!v32)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v32 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator>(a2 + 792, a2 + 808);
LABEL_64:
        v31 = this ^ 1;
        goto LABEL_65;
      case 0xE:
        v15 = *(a2 + 824);
        if (!v15)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v15 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        this = DSPGraph::CalculationBox::Value::operator<(a2 + 792, a2 + 808);
        goto LABEL_54;
      case 0xF:
        v22 = *(a2 + 824);
        if (!v22)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v22 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v11 = (a2 + 792);
        v12 = (a2 + 808);
        v13 = a2 + 808;
        v14 = a2 + 792;
        goto LABEL_34;
      case 0x10:
        v10 = *(a2 + 824);
        if (!v10)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        if (v10 == 1)
        {
          __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
        }

        v11 = (a2 + 792);
        v12 = (a2 + 808);
        v13 = a2 + 792;
        v14 = a2 + 808;
LABEL_34:
        this = DSPGraph::CalculationBox::Value::operator<(v13, v14);
        if (this)
        {
          v23 = v12;
        }

        else
        {
          v23 = v11;
        }

LABEL_68:
        *v3 = *v23;
        break;
      default:
        v4 = -10863;
        goto LABEL_3;
    }

    *(v3 + 16) = 1;
  }

  return this;
}

uint64_t DSPGraph::CalculationBox::Value::operator BOOL<BOOL>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F032D340[v1])(&v4, a1);
}

uint64_t boost::container::vector<DSPGraph::CalculationBox::Value,boost::container::dtl::static_storage_allocator<DSPGraph::CalculationBox::Value,2ul,0ul,true>,void>::operator[](uint64_t a1)
{
  if (*(a1 + 32) <= 1uLL)
  {
    __assert_rtn("operator[]", "vector.hpp", 1670, "this->m_holder.m_size > n");
  }

  return a1 + 16;
}

uint64_t DSPGraph::CalculationBox::Value::operator float<float>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v4 = &v3;
  return (off_1F032D330[v1])(&v4, a1);
}

DSPGraph::PropertyTap **DSPGraph::Box::processPropertyTaps(DSPGraph::PropertyTap **this)
{
  v1 = this[22];
  v2 = this[23];
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      this = DSPGraph::PropertyTap::process(v1, v3);
      v1 = (v1 + 64);
    }

    while (v1 != v2);
  }

  return this;
}

uint64_t _ZNK5caulk10concurrent26lf_read_synchronized_writeINSt3__16vectorIN8DSPGraph18RenderObserverListINS4_3BoxEE14RenderObserverENS2_9allocatorIS8_EEEEE6accessIZNS7_7callAllEPS6_jNS4_18RenderCallbackTypeEEUlRKT_E_EEvOSG_(caulk::concurrent::details::lf_read_sync_write_impl *a1, uint64_t *a2)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::begin_access(a1);
  if (*(a1 + result + 8))
  {
    v5 = a1 + 24 * result;
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v6 == v7)
    {
      goto LABEL_6;
    }

    do
    {
      v8 = *(a2 + 2);
      v11 = *a2;
      v10 = v8;
      v9 = *(v6 + 32);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v9 + 48))(v9, &v11, &v10);
      v6 += 48;
    }

    while (v6 != v7);
    if (a1)
    {
LABEL_6:

      return caulk::concurrent::details::lf_read_sync_write_impl::end_access(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DSPGraph::TimeFreqBox::process(DSPGraph::TimeFreqBox *this, int a2)
{
  if (*(*(this + 2) + 268) != a2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v48, "process");
    std::string::basic_string[abi:ne200100]<0>(&v47, "inNumFrames != blockSize.");
    DSPGraph::ThrowException(1718188065, &v49, 94, &v48, &v47);
  }

  v4 = this + 64;
  v3 = *(this + 8);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v35 = (this + 32);
    if (*(this + 55) < 0)
    {
      v35 = *v35;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v34, v35, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v6 = (*(*v3 + 40))(v3);
  v7 = *(this + 11);
  if (*(this + 12) == v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "out");
    v37 = (this + 32);
    if (*(this + 55) < 0)
    {
      v37 = *v37;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v36, v37, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v8 = *(*(v6 + 56) + 80);
  v9 = (*(*v7 + 40))(v7);
  if (*v8 != (*(this + 98) - *(this + 97)) >> 4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v48, "process");
    std::string::basic_string[abi:ne200100]<0>(&v47, "buffer list number of buffers doesn't match format channel count.");
    DSPGraph::ThrowException(1667788321, &v49, 101, &v48, &v47);
  }

  v10 = *(this + 11);
  if (*(this + 12) == v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "out");
    v39 = (this + 32);
    if (*(this + 55) < 0)
    {
      v39 = *v39;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v38, v39, (*(this + 12) - *(this + 11)) >> 5, 0);
  }

  v11 = *(*(v9 + 56) + 80);
  v12 = (*(*v10 + 40))(*(this + 11));
  if (*v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(*(v12 + 120) + 24) * a2;
    do
    {
      *(v11 + v13 + 12) = v15;
      v16 = *&v8[v13 / 4 + 4];
      v17 = *(v11 + v13 + 16);
      if (*(this + 200))
      {
        v46.realp = *&v8[v13 / 4 + 4];
        v46.imagp = &v16[4 * a2];
        v18 = VPTimeFreqConverter_Synthesize(*(*(this + 97) + v13), &v46, v17);
        if (v18)
        {
          v44 = v18;
          std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v48, "process");
          std::string::basic_string[abi:ne200100]<0>(&v47, "VPTimeFreqConverter_Synthesize");
          DSPGraph::ThrowException(v44, &v49, 121, &v48, &v47);
        }
      }

      else
      {
        v46.realp = *(v11 + v13 + 16);
        v46.imagp = &v17[4 * a2];
        v19 = VPTimeFreqConverter_Analyze(*(*(this + 97) + v13), v16, &v46);
        if (v19)
        {
          v45 = v19;
          std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_TimeFreqBox.cpp");
          std::string::basic_string[abi:ne200100]<0>(&v48, "process");
          std::string::basic_string[abi:ne200100]<0>(&v47, "VPTimeFreqConverter_Analyze");
          DSPGraph::ThrowException(v45, &v49, 115, &v48, &v47);
        }
      }

      ++v14;
      v13 += 16;
    }

    while (v14 < *v8);
  }

  v20 = *(this + 8);
  if (*(this + 9) == v20)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v41 = (this + 32);
    if (*(this + 55) < 0)
    {
      v41 = *v41;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v40, v41, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v21 = (*(*v20 + 40))(v20);
  v22 = *(this + 8);
  if (*(this + 9) == v22)
  {
    std::string::basic_string[abi:ne200100]<0>(&v49, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(&v48, "in");
    v43 = (this + 32);
    if (*(this + 55) < 0)
    {
      v43 = *v43;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v42, v43, (*(this + 9) - *(this + 8)) >> 5, 0);
  }

  v23 = *(*(v21 + 56) + 72);
  result = (*(*v22 + 40))(v22);
  v26 = *(this + 11);
  v25 = *(this + 12);
  if (v26 != v25)
  {
    v27 = result[7];
    result = v26;
    v28 = v26;
    do
    {
      v29 = *v28;
      v28 += 4;
      v30 = *((*(v29 + 40))(result) + 56);
      v31 = *(v27 + 56);
      v32 = *(v27 + 40);
      v33 = *(v27 + 24);
      *(v30 + 8) = *(v27 + 8);
      *(v30 + 24) = v33;
      *(v30 + 40) = v32;
      *(v30 + 56) = v31;
      *(v30 + 72) = v23;
      v26 += 32;
      result = v28;
    }

    while (v28 != v25);
  }

  return result;
}

void sub_18F6700D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VPTimeFreqConverter_Analyze(uint64_t a1, const void *a2, DSPSplitComplex *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = 4294967246;
    goto LABEL_13;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "vpTimeFreqConverter.cpp";
      v13 = 1024;
      v14 = 72;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for conversion";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v11, 0x12u);
    }

LABEL_12:
    v4 = 4294956433;
    goto LABEL_13;
  }

  if ((*(a1 + 4) | 2) != 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "vpTimeFreqConverter.cpp";
      v13 = 1024;
      v14 = 79;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::analyze: not configured for analysis";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (*a1)
  {
    v4 = 4294967292;
  }

  else
  {
    memcpy(*(a1 + 64), (*(a1 + 64) + 4 * *(a1 + 12)), 4 * (*(a1 + 16) - *(a1 + 12)));
    memcpy((*(a1 + 64) + 4 * (*(a1 + 16) - *(a1 + 12))), a2, 4 * *(a1 + 12));
    MEMORY[0x193AE0840](*(a1 + 136), 1, *(a1 + 64), 1, *(a1 + 88), 1, *(a1 + 16));
    MEMORY[0x193AE08B0](*(a1 + 88), 1, a1 + 24, *(a1 + 88), 1, *(a1 + 16));
    v4 = MultiRadixRealFFT::RealOutOfPlaceForwardTransform((a1 + 32), *(a1 + 88), a3, 1.0);
    if (v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "vpTimeFreqConverter.cpp";
      v13 = 1024;
      v14 = 98;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d _vp: vptimefreqconverter::analyze: FFT error", &v11, 0x12u);
    }
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t DSPGraph::PropertyTap::process(DSPGraph::PropertyTap *this, DSPGraph::Box *a2)
{
  v4 = *(this + 5);
  v12 = *(this + 12) - v4;
  v5 = (*(**this + 304))(*this, *(this + 2), *(this + 3), *(this + 4), &v12, v4);
  if (v5)
  {
    v7 = v5;
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "process");
    std::string::basic_string[abi:ne200100]<0>(&v9, "getProperty failed");
    DSPGraph::ThrowException(v7, &v11, 827, &v10, &v9);
  }

  result = (*(*a2 + 312))(a2, *(this + 6), *(this + 7), *(this + 8), v12, v4);
  if (result)
  {
    v8 = result;
    std::string::basic_string[abi:ne200100]<0>(&v11, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v10, "process");
    std::string::basic_string[abi:ne200100]<0>(&v9, "setProperty failed");
    DSPGraph::ThrowException(v8, &v11, 832, &v10, &v9);
  }

  return result;
}

void sub_18F67053C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

AudioUnitParameterValue DSPGraph::AUBox::getParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(this[106], a2, a3, a4, &outValue);
  if (Parameter)
  {
    v6 = Parameter;
    std::string::basic_string[abi:ne200100]<0>(&v9, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v8, "getParameter");
    std::string::basic_string[abi:ne200100]<0>(&v7, "AudioUnitGetParameter");
    DSPGraph::ThrowException(v6, &v9, 1722, &v8, &v7);
  }

  return outValue;
}

void sub_18F670620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VPTimeFreqConverter_Synthesize(uint64_t a1, const DSPSplitComplex *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = 4294967246;
    goto LABEL_13;
  }

  if ((*(a1 + 184) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "vpTimeFreqConverter.cpp";
      v12 = 1024;
      v13 = 120;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for conversion";
LABEL_11:
      _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, &v10, 0x12u);
    }

LABEL_12:
    v4 = 4294956433;
    goto LABEL_13;
  }

  if ((*(a1 + 4) - 1) >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "vpTimeFreqConverter.cpp";
      v12 = 1024;
      v13 = 127;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%25s:%-5d _vp: vptimefreqconverter::synthesize: not configured for synthesis";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (*a1)
  {
    v4 = 4294967292;
  }

  else
  {
    v4 = MultiRadixRealFFT::RealOutOfPlaceInverseTransform((a1 + 32), a2, *(a1 + 88));
    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "vpTimeFreqConverter.cpp";
        v12 = 1024;
        v13 = 135;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d _vp: vptimefreqconverter::synthesize: IFFT error", &v10, 0x12u);
      }
    }

    else
    {
      MEMORY[0x193AE0840](*(a1 + 88), 1, *(a1 + 160), 1, *(a1 + 88), 1, *(a1 + 16));
      MEMORY[0x193AE07B0](*(a1 + 88), 1, *(a1 + 112), 1, *(a1 + 112), 1, *(a1 + 16));
      memcpy(a3, *(a1 + 112), 4 * *(a1 + 12));
      memmove(*(a1 + 112), (*(a1 + 112) + 4 * *(a1 + 12)), 4 * (*(a1 + 16) - *(a1 + 12)));
      bzero((*(a1 + 112) + 4 * (*(a1 + 16) - *(a1 + 12))), 4 * *(a1 + 12));
    }
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void *DSPGraph::SumBox::process(DSPGraph::SumBox *this, unsigned int a2)
{
  v2 = this;
  v4 = this + 88;
  v3 = *(this + 11);
  if (*(v4 + 1) == v3)
  {
    std::string::basic_string[abi:ne200100]<0>(v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v54, "out");
    v47 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v47 = *v47;
    }

    DSPGraph::strprintf("Box::out inIndex out of range! box %s has %zu outputs but input %u was requested", v46, v47, (*(v2 + 12) - *(v2 + 11)) >> 5, 0);
  }

  v6 = *(*((*(*v3 + 40))(v3) + 56) + 80);
  v7 = *v6;
  v8 = *(v2 + 8);
  v9 = *(v2 + 9);
  v10 = 4 * a2;
  if (((v9 - v8) & 0x1FFFFFFFE0) != 0)
  {
    v11 = 0;
    v12 = (v9 - v8) >> 5;
    v14 = v7 != 1 || ((v9 - v8) & 0x1FFFFFFFE0) != 32;
    v50 = v6;
    v51 = v2;
    v52 = *v6;
    v53 = (v6 + 4);
    LOBYTE(v15) = 1;
    do
    {
      if (v12 <= v11)
      {
        std::string::basic_string[abi:ne200100]<0>(v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v54, "in");
        v43 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v43 = *v43;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v42, v43, (*(v2 + 9) - *(v2 + 8)) >> 5, v11);
      }

      v16 = (*(*(v8 + 32 * v11) + 40))(v8 + 32 * v11);
      v17 = *(v2 + 8);
      if (v11 >= (*(v2 + 9) - v17) >> 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
        std::string::basic_string[abi:ne200100]<0>(v54, "in");
        v45 = (v2 + 32);
        if (*(v2 + 55) < 0)
        {
          v45 = *v45;
        }

        DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v44, v45, (*(v2 + 9) - *(v2 + 8)) >> 5, v11);
      }

      v18 = *(*(v16 + 56) + 80);
      if ((*(*((*(*(v17 + 32 * v11) + 40))(v17 + 32 * v11) + 56) + 72) & 0x10) == 0)
      {
        if (v15)
        {
          if (*v18)
          {
            v19 = 0;
            v20 = 0;
            v21 = 4;
            v22 = v53;
            do
            {
              v23 = *&v18[v21];
              v24 = *v22;
              *(v22 - 1) = v10;
              if (v20 == v19)
              {
                if (v23 != v24)
                {
                  memcpy(v24, v23, 4 * a2);
                }
              }

              else
              {
                MEMORY[0x193AE07B0](v23, 1, v24, 1, v24, 1, a2);
              }

              ++v20;
              v19 += v14;
              v22 += 2 * v14;
              v21 += 4;
            }

            while (v20 < *v18);
            LOBYTE(v15) = 0;
            v2 = v51;
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

        else
        {
          v15 = v52;
          if (v52)
          {
            v25 = (v18 + 4);
            v26 = v53;
            do
            {
              v27 = *v25;
              v25 += 2;
              v28 = *v26;
              *(v26 - 1) = v10;
              MEMORY[0x193AE07B0](v27, 1, v28, 1, v28, 1, a2);
              v26 += 2;
              --v15;
            }

            while (v15);
          }
        }
      }

      ++v11;
      v8 = *(v2 + 8);
      v9 = *(v2 + 9);
      v12 = (v9 - v8) >> 5;
    }

    while (v11 < v12);
    if ((v15 & 1) == 0)
    {
      v31 = 0;
      goto LABEL_36;
    }

    v7 = v52;
    v6 = v50;
  }

  if (v7)
  {
    v29 = (v6 + 4);
    do
    {
      v30 = *v29;
      *(v29 - 1) = v10;
      bzero(v30, 4 * a2);
      v29 += 2;
      --v7;
    }

    while (v7);
    v8 = *(v2 + 8);
    v9 = *(v2 + 9);
  }

  v31 = 16;
LABEL_36:
  if (v9 == v8)
  {
    std::string::basic_string[abi:ne200100]<0>(v55, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Box.h");
    std::string::basic_string[abi:ne200100]<0>(v54, "in");
    v49 = (v2 + 32);
    if (*(v2 + 55) < 0)
    {
      v49 = *v49;
    }

    DSPGraph::strprintf("Box::in inIndex out of range! box %s has %zu inputs but input %u was requested", v48, v49, (*(v2 + 9) - *(v2 + 8)) >> 5, 0);
  }

  result = (*(*v8 + 40))(v8);
  v33 = *(v2 + 11);
  v34 = *(v2 + 12);
  if (v33 != v34)
  {
    v35 = result[7];
    result = *(v2 + 11);
    v36 = result;
    do
    {
      v37 = *v36;
      v36 += 4;
      v38 = *((*(v37 + 40))(result) + 56);
      v39 = *(v35 + 56);
      v40 = *(v35 + 40);
      v41 = *(v35 + 24);
      *(v38 + 8) = *(v35 + 8);
      *(v38 + 24) = v41;
      *(v38 + 40) = v40;
      *(v38 + 56) = v39;
      *(v38 + 72) = v31;
      v33 += 4;
      result = v36;
    }

    while (v36 != v34);
  }

  return result;
}

void sub_18F670DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void DSPGraph::GraphOutput::copyOutput(DSPGraph::GraphOutput *this)
{
  v2 = *(this + 209);
  v3 = (*(*this + 672))(this) * v2;
  v4 = *(this + 106);
  v5 = DSPGraph::GraphOutput::preflight(this);
  v6 = *v4;
  if (v5 < *v4)
  {
    v6 = v5;
  }

  if (v3 >= v6)
  {
    v3 = v6;
  }

  *(this + 107) = *(this + 107) + v3;
  **(this + 106) = v3;
  v7 = (*(*this + 672))(this);
  v8 = *(*(this + 106) + 72);
  v9 = 0;
  DSPGraph::RingBuffer::read((this + 808), v3 / v7, v3 / v7, &v8);
  DSPGraph::SimpleABL::free(&v8);
}

uint64_t DSPGraph::SRCBox::reset(DSPGraph::SRCBox *this)
{
  DSPGraph::RingBufferBox::reset(this);
  result = *(this + 111);
  if (result)
  {
    v3 = *(*result + 40);

    return v3();
  }

  return result;
}

uint64_t DSPGraph::ResamplerSRCKernel::reset(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  while (v1 != v2)
  {
    v3 = *v1++;
    this = (*(*v3 + 88))(v3);
  }

  return this;
}

uint64_t Resampler2::Reset(void **this)
{
  bzero(this[10], 4 * *(this + 19));
  bzero(this[11], 4 * *(this + 19));
  *(this + 18) = 0;
  this[20] = 0;
  *(this + 26) = 0;
  *(this + 132) = 0;
  result = (*(*this + 12))(this, *(this + 30));
  v3 = 0.0;
  if ((this[33] & 1) == 0)
  {
    v4 = *(this + 20);
    result = (*(*this + 19))(this, 0.0);
    v3 = -1.0 - (v4 + (result >> 1));
  }

  *(this + 17) = v3;
  this[34] = 0;
  return result;
}

float DSPGraph::GenericGainBox<DSPGraph::LinearGainPolicy>::reset(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 780))
  {
    v1 = 0.0;
  }

  result = *(a1 + 776) * v1;
  *(a1 + 804) = result;
  *(a1 + 812) = 257;
  return result;
}

uint64_t DSPGraph::Graph::setSliceDuration(uint64_t result, int a2, int a3, int a4)
{
  if (*(result + 761) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(&v6, "/Library/Caches/com.apple.xbs/Sources/CoreAudioServices_AudioToolboxCore/CoreAudioUtility/Source/CADSP/DSPGraph/DSPGraph_Graph.cpp");
    std::string::basic_string[abi:ne200100]<0>(&v5, "setSliceDuration");
    std::string::basic_string[abi:ne200100]<0>(&v4, "cannot set slice duration if graph is already configured.");
    DSPGraph::ThrowException(1667655457, &v6, 236, &v5, &v4);
  }

  *(result + 688) = a2;
  *(result + 692) = a3;
  *(result + 760) = a4 == 1;
  return result;
}

void sub_18F671188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t APAC::MetadataBitStreamPacker::pack(uint64_t a1, uint64_t a2, int a3, __int16 *a4)
{
  v20 = a2;
  v21 = a2;
  v5 = a2 + a3;
  v22 = v5;
  v23 = 0x2000000000;
  v6 = a2 & 3;
  v24 = v6;
  if (*(a4 + 4) != 1 || (*(a4 + 5) & 0xFE) != 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Metadata version mismatch";
    goto LABEL_28;
  }

  if (*a4 != -1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "metadata.header.syncWords has an incorrect value";
    goto LABEL_28;
  }

  if (a3 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.syncWords";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, 0xFFFF, 0x10u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.chunkSize";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, a4[1], 0x10u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.version.major";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *(a4 + 4), 8u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.version.minor";
    goto LABEL_28;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *(a4 + 5), 8u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack metadata.header.informationFrame";
    goto LABEL_28;
  }

  v9 = AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *(a4 + 6), 1u);
  v10 = *(a4 + 5);
  if (v10 == 3)
  {
    APAC::MetadataBitStreamPacker::packMetadataFrame(a1, (a4 + 725540), *(a4 + 6), &v20);
  }

  else if (v10 == 2)
  {
    if (*(a4 + 6) == 1)
    {
      APAC::MetadataBitStreamPacker::packStaticMetadata(v9, a4 + 8, &v20);
    }

    APAC::MetadataBitStreamPacker::packDynamicMetadata(a1, a4 + 174192, &v20);
  }

  v12 = v20;
  v11 = v21;
  v13 = HIDWORD(v23);
  AT::TBitstreamWriter<unsigned int>::Flush(&v20);
  v20 = a2;
  v21 = a2;
  v22 = v5;
  v23 = 0x2000000000;
  v24 = v6;
  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, *a4, 0x10u);
  if (HIDWORD(v23) + 8 * (v22 - v21) - 32 <= 15)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = "Cannot pack actualChunkSize";
LABEL_28:
    *exception = v19;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v14 = 8 * (v11 - v12) - v13;
  v15 = (v14 + 32) >> 3;
  if ((v14 & 7) != 0)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = v15;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(&v20, (v16 - 4), 0x10u);
  AT::TBitstreamWriter<unsigned int>::Flush(&v20);
  return v16;
}

uint64_t AT::TBitstreamWriter<unsigned int>::PutBits(uint64_t result, int a2, unsigned int a3)
{
  if (a3 < 0x20)
  {
    v3 = ~(-1 << a3);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & a2;
  v5 = *(result + 28);
  if (*(result + 32))
  {
    v6 = v5 - 24;
    if (v5 - 24 <= a3)
    {
      v7 = *(result + 24);
      do
      {
        a3 -= v6;
        v8 = (v7 << v6) | (v4 >> a3);
        v9 = *(result + 8);
        *(result + 8) = v9 + 1;
        *v9 = v8;
        v10 = *(result + 32) - 1;
        *(result + 32) = v10;
        *(result + 24) = 0x2000000000;
        v4 &= ~(-1 << a3);
        v5 = 32;
        if (a3 < 8)
        {
          break;
        }

        v7 = 0;
        v6 = 8;
      }

      while (v10);
    }

    if (a3)
    {
      *(result + 24) = (*(result + 24) << a3) | v4;
      *(result + 28) = v5 - a3;
    }
  }

  else
  {
    *(result + 28) = v5 - a3;
    if ((v5 - a3) < 1)
    {
      v11 = *(result + 24);
      v12 = (v11 << v5) | (v4 >> (a3 - v5));
      v13 = (v11 << a3) | v4;
      if (v5 == a3)
      {
        v12 = v13;
      }

      *(result + 24) = v12;
      v14 = *(result + 8);
      if ((*(result + 16) - v14) >= 4)
      {
        *v14 = bswap32(v12);
        v15 = *(result + 28);
        *(result + 24) = v4 & ~(-1 << -v15);
        *(result + 28) = v15 + 32;
        v14 = *(result + 8);
      }

      *(result + 8) = v14 + 1;
    }

    else
    {
      *(result + 24) = (*(result + 24) << a3) | v4;
    }
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packStaticMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v5 = APAC::MetadataBitStreamPacker::packReferenceScreen(a1, a2, a3);
  v6 = APAC::MetadataBitStreamPacker::packCodeBookData(v5, a2 + 424, a3);
  v7 = APAC::MetadataBitStreamPacker::packGroupStaticData(v6, a2 + 428, a3);
  v8 = APAC::MetadataBitStreamPacker::packSceneComponenentStaticData(v7, a2 + 27864, a3);

  return APAC::MetadataBitStreamPacker::packExtendedData(v8, a2 + 173156, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packDynamicMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  APAC::MetadataBitStreamPacker::packGroupDynamicData(a1, a2, a3);
  v6 = APAC::MetadataBitStreamPacker::packSceneComponenentDynamicData(a1, a2 + 32516, a3);

  return APAC::MetadataBitStreamPacker::packExtendedData(v6, a2 + 1271024, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packMetadataFrame(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v16 = "Cannot pack mdFrame.mRendererMetadataPresent";
    goto LABEL_17;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 1), 1u);
  if (*(a2 + 1) == 1)
  {
    if (a3)
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v16 = "Cannot pack glbCfg.mHasData";
        goto LABEL_17;
      }

      v9 = AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 16), 1u);
      if (*(a2 + 16) == 1)
      {
        APAC::MetadataBitStreamPacker::packGlobalConfig(v9, a2 + 16, a4);
      }

      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v16 = "Cannot pack mdFrame.mRendererMetadata.mGroupCount";
        goto LABEL_17;
      }

      v10 = AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 8), 0xBu);
      if (*(a2 + 8))
      {
        v11 = 0;
        v12 = 0;
        v13 = 48 * *(a2 + 8);
        while (1)
        {
          v14 = *(a2 + 4784);
          if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4792) - v14) >> 4) <= v12)
          {
            break;
          }

          v10 = APAC::MetadataBitStreamPacker::packGroupConfig(v10, (v14 + v11), a4);
          ++v12;
          v11 += 48;
          if (v13 == v11)
          {
            goto LABEL_12;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v16 = "metadata.mMetadataFrame.mRendererMetadata.mGroupConfig does not have enough elements";
LABEL_17:
        *exception = v16;
        __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
      }
    }

LABEL_12:

    return APAC::MetadataBitStreamPacker::packRendererMetadata(a1, (a2 + 8), a4);
  }

  return result;
}

uint64_t AT::TBitstreamWriter<unsigned int>::Flush(uint64_t result)
{
  v1 = result;
  v2 = *(result + 28);
  if ((v2 & 7) != 0)
  {
    result = AT::TBitstreamWriter<unsigned int>::PutBits(result, 0, *(result + 28) & 7);
    v2 = *(v1 + 28);
  }

  if (v2 == 32)
  {
    v3 = *(v1 + 8);
  }

  else
  {
    v3 = *(v1 + 8);
    v4 = 24 - v2;
    do
    {
      *v3 = *(v1 + 24) >> v4;
      v3 = *(v1 + 8) + 1;
      *(v1 + 8) = v3;
      v4 -= 8;
    }

    while (v4 != -8);
  }

  *(v1 + 28) = 32;
  *(v1 + 32) = v3 & 3;
  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGlobalConfig(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack glbCfg.mNumParameters";
LABEL_36:
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0xBu);
  v6 = *(a2 + 2);
  if (*(a2 + 2))
  {
    v7 = (a2 + 4);
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = "Cannot pack glbCfg.mParamIndexList[n]";
        goto LABEL_36;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0xBu);
      switch(*v7)
      {
        case 0:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mApplyPostProcReverb";
            goto LABEL_36;
          }

          v8 = *(a2 + 4100);
LABEL_22:
          v9 = a3;
          v10 = 1;
LABEL_32:
          result = AT::TBitstreamWriter<unsigned int>::PutBits(v9, v8, v10);
LABEL_33:
          ++v7;
          if (!--v6)
          {
            return result;
          }

          break;
        case 1:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mIs6DoF";
            goto LABEL_36;
          }

          v8 = *(a2 + 4101);
          goto LABEL_22;
        case 2:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHasSceneRadiationPattern";
            goto LABEL_36;
          }

          v8 = *(a2 + 4102);
          goto LABEL_22;
        case 3:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mTargetPlaybackSystemIndex";
            goto LABEL_36;
          }

          v8 = *(a2 + 4103);
          v9 = a3;
          v10 = 5;
          goto LABEL_32;
        case 4:
          result = APAC::MetadataBitStreamPacker::packAuthoringInformation(result, (a2 + 4106), a3);
          goto LABEL_33;
        case 5:
          result = APAC::MetadataBitStreamPacker::packReferenceScreen(result, a2 + 4116, a3);
          goto LABEL_33;
        case 6:
          result = APAC::MetadataBitStreamPacker::packDBMD(result, (a2 + 4156), a3);
          goto LABEL_33;
        case 7:
          result = APAC::MetadataBitStreamPacker::packBinauralization(result, (a2 + 4480), a3);
          goto LABEL_33;
        case 8:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHCFilter.mDataLocationIndex";
            goto LABEL_36;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4496), 2u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHCFilter.mCustomData_TableID";
            goto LABEL_36;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4498), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mHCFilter.mCustomData_EntryID";
            goto LABEL_36;
          }

          v8 = *(a2 + 4500);
          v9 = a3;
          v10 = 9;
          goto LABEL_32;
        case 9:
          result = APAC::MetadataBitStreamPacker::packSPAD(result, (a2 + 4504), a3);
          goto LABEL_33;
        case 0xA:
          result = APAC::MetadataBitStreamPacker::packDistanceAttenuation(result, (a2 + 4648), a3);
          goto LABEL_33;
        case 0xB:
          result = APAC::MetadataBitStreamPacker::packPosition(result, (a2 + 4668), a3);
          goto LABEL_33;
        case 0xC:
          result = APAC::MetadataBitStreamPacker::packGenericRenderingConfig(result, (a2 + 4716), a3);
          goto LABEL_33;
        case 0xD:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 5)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mContentKind";
            goto LABEL_36;
          }

          v8 = *(a2 + 4104);
          v9 = a3;
          v10 = 6;
          goto LABEL_32;
        case 0xE:
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, 0, 4u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack glbCfg.mMaxNumBlocks";
            goto LABEL_36;
          }

          v8 = *(a2 + 4105);
          v9 = a3;
          v10 = 8;
          goto LABEL_32;
        case 0xF:
          result = APAC::MetadataBitStreamPacker::packChannelBedHeadphoneMetadata(result, (a2 + 4736), a3);
          goto LABEL_33;
        default:
          goto LABEL_33;
      }
    }
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGroupConfig(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mGroupID";
    goto LABEL_48;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mIsGlobal";
    goto LABEL_48;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mIsPerASC";
    goto LABEL_48;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*(a2 + 3) != 1)
  {
    if (v6 <= 10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack gpCfg.mMemberCount";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[9], 0xBu);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack gpCfg.mHasConjunctMembers";
      }

      else
      {
        result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 20), 1u);
        if (*(a2 + 20) == 1)
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
          {
            v8 = 11;
            goto LABEL_31;
          }

          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack gpCfg.mStartASCID";
        }

        else
        {
          if (!a2[9])
          {
            return result;
          }

          v9 = 0;
          v10 = 2 * a2[9];
          while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
          {
            result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 3) + v9), 0xBu);
            v9 += 2;
            if (v10 == v9)
            {
              return result;
            }
          }

          exception = __cxa_allocate_exception(8uLL);
          v13 = "Cannot pack gpCfg.mASCIDList[n]";
        }
      }
    }

LABEL_48:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mASCID";
    goto LABEL_48;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mASCType";
    goto LABEL_48;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 3u);
  v7 = *(a2 + 6);
  if (v7 == 2)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
    {
      v8 = 7;
      goto LABEL_31;
    }

    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mHOAID";
    goto LABEL_48;
  }

  if (v7 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack gpCfg.mObjectID";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 0xBu);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack gpCfg.mIsObjectInBed";
      }

      else
      {
        result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 10), 1u);
        if (*(a2 + 10) != 1)
        {
          return result;
        }

        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 10)
        {
          v8 = 6;
          goto LABEL_31;
        }

        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack gpCfg.mBedASCID";
      }
    }

    goto LABEL_48;
  }

  if (*(a2 + 6))
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack gpCfg.mChBedID";
    goto LABEL_48;
  }

  v8 = 8;
LABEL_31:
  v11 = a2[v8];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v11, 0xBu);
}

uint64_t APAC::MetadataBitStreamPacker::packRendererMetadata(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Cannot pack rMd.mGroupCount";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xBu);
  if (*a2)
  {
    v7 = 0;
    v8 = 40200 * *a2;
    do
    {
      result = APAC::MetadataBitStreamPacker::packGroupData(a1, (*(a2 + 600) + v7), a3);
      v7 += 40200;
    }

    while (v8 != v7);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGroupData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack gpData.mHasData";
    goto LABEL_12;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack gpData.mGroupID";
    goto LABEL_12;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack gpData.mNumBlocks";
LABEL_12:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 6u);
  v7 = a2[4];
  if (a2[4])
  {
    v8 = (a2 + 8);
    do
    {
      result = APAC::MetadataBitStreamPacker::packBlockData(a1, v8, a3);
      v8 += 628;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packBlockData(uint64_t a1, unsigned __int16 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack blkMd.mRtime";
    goto LABEL_12;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0xAu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack blkMd.mHasInterpolationLength";
    goto LABEL_12;
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 1u);
  if (*(a2 + 2) != 1)
  {
    goto LABEL_6;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack blkMd.mInterpolationLength";
LABEL_12:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 0xBu);
LABEL_6:

  return APAC::MetadataBitStreamPacker::packRendererData(v5, (a2 + 4), a3);
}

uint64_t APAC::MetadataBitStreamPacker::packRendererData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack rData.mNumParameters";
    goto LABEL_58;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0xBu);
  v6 = *(a2 + 2);
  if (v6 > 0x20)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "error in packing RendererData -- numParams > ParamIndexList size";
    goto LABEL_58;
  }

  if (*(a2 + 2))
  {
    v7 = (a2 + 4);
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack rData.mParamIndexList[n]";
        goto LABEL_58;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0xBu);
      switch(*v7)
      {
        case 0:
          v8 = (a2 + 68);
          goto LABEL_43;
        case 1:
          result = APAC::MetadataBitStreamPacker::packObjectSpread(result, (a2 + 116), a3);
          goto LABEL_55;
        case 2:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mGain";
            goto LABEL_58;
          }

          v9 = *(a2 + 132);
          break;
        case 3:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mObjectDiffuse";
            goto LABEL_58;
          }

          v9 = *(a2 + 136);
          break;
        case 4:
          result = APAC::MetadataBitStreamPacker::packObjectChannelLock(result, a2 + 140, a3);
          goto LABEL_55;
        case 5:
          result = APAC::MetadataBitStreamPacker::packObjectDivergence(result, a2 + 148, a3);
          goto LABEL_55;
        case 6:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mIsScreenSizeAdaptationEnabled";
            goto LABEL_58;
          }

          v9 = *(a2 + 168);
LABEL_41:
          v10 = a3;
          v11 = 1;
          goto LABEL_54;
        case 7:
          result = APAC::MetadataBitStreamPacker::packZoneExclusion(result, (a2 + 172), a3);
          goto LABEL_55;
        case 8:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mBinauralizationPreset";
            goto LABEL_58;
          }

          v9 = *(a2 + 1037);
LABEL_47:
          v10 = a3;
          v11 = 3;
          goto LABEL_54;
        case 9:
          result = APAC::MetadataBitStreamPacker::packSceneReverb(result, (a2 + 568), a3);
          goto LABEL_55;
        case 0xA:
          result = APAC::MetadataBitStreamPacker::packPostProcReverb(result, (a2 + 780), a3);
          goto LABEL_55;
        case 0xB:
          result = APAC::MetadataBitStreamPacker::packRadiationPattern(result, (a2 + 792), a3);
          goto LABEL_55;
        case 0xC:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHPVirtualize.mBypass";
            goto LABEL_58;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1024), 1u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHPVirtualize.mHasDRR";
            goto LABEL_58;
          }

          result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1025), 1u);
          if (*(a2 + 1025) != 1)
          {
            goto LABEL_55;
          }

          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHPVirtualize.mDRR";
LABEL_58:
            *exception = v13;
            __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
          }

          v9 = *(a2 + 1028);
          break;
        case 0xD:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHeadLock.mHeadLocked";
            goto LABEL_58;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1032), 1u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHeadLock.mIsExternalized";
            goto LABEL_58;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1033), 1u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHeadLock.mReference";
            goto LABEL_58;
          }

          v9 = *(a2 + 1034);
          goto LABEL_47;
        case 0xE:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mParallax";
            goto LABEL_58;
          }

          v9 = *(a2 + 1035);
          goto LABEL_41;
        case 0xF:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mPreferredDoF.mDoFIndex";
            goto LABEL_58;
          }

          v9 = *(a2 + 1036);
          goto LABEL_47;
        case 0x10:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mFieldOfView.mAzimuth";
            goto LABEL_58;
          }

          v9 = *(a2 + 1040);
          break;
        case 0x11:
          result = APAC::MetadataBitStreamPacker::packMaskingZone(result, (a2 + 1044), a3);
          goto LABEL_55;
        case 0x12:
          v8 = (a2 + 1096);
          goto LABEL_43;
        case 0x13:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHOA_Radius";
            goto LABEL_58;
          }

          v9 = *(a2 + 1144);
          break;
        case 0x14:
          v8 = (a2 + 1148);
LABEL_43:
          result = APAC::MetadataBitStreamPacker::packPosition(result, v8, a3);
          goto LABEL_55;
        case 0x15:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mHOA_InteriorOrExterior";
            goto LABEL_58;
          }

          v9 = *(a2 + 1196);
          goto LABEL_41;
        case 0x16:
          result = APAC::MetadataBitStreamPacker::packHOARenderingMatrix(result, (a2 + 1200), a3);
          goto LABEL_55;
        case 0x17:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mNFCRefDist";
            goto LABEL_58;
          }

          v9 = *(a2 + 1240);
          break;
        case 0x18:
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack rData.mPropagationDelay.mProcessingIndex";
            goto LABEL_58;
          }

          v9 = *(a2 + 1244);
          v10 = a3;
          v11 = 2;
          goto LABEL_54;
        default:
          goto LABEL_55;
      }

      v10 = a3;
      v11 = 32;
LABEL_54:
      result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
LABEL_55:
      ++v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packPosition(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack pos.mPositionPresent";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mIsCartesian";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
    if (a2[1] == 1)
    {
      v5 = 0;
      while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *&a2[v5 + 20], 0x20u);
        v5 += 4;
        if (v5 == 12)
        {
          goto LABEL_13;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mCoordinate[n]";
LABEL_21:
      *exception = v10;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mAzimuth";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mElevation";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack pos.mRadius";
      goto LABEL_21;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  }

LABEL_13:
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack pos.mRotationPresent";
    goto LABEL_21;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[16], 1u);
  if (a2[16] == 1)
  {
    v7 = 0;
    v8 = a2 + 32;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *&v8[v7], 0x20u);
      v7 += 4;
      if (v7 == 16)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack pos.mQuaternion[n]";
    goto LABEL_21;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packObjectSpread(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mIsCartesian";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mWidth";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mHeight";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mHasDepth";
    goto LABEL_16;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spread.mDepth";
LABEL_16:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 3);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packObjectChannelLock(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack chLock.mHasMaxDistance";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 1u);
  if (*(a2 + 1) != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack chLock.mMaxDistance";
LABEL_10:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 4);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packObjectDivergence(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mDivergence";
    goto LABEL_15;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mIsCartesian";
    goto LABEL_15;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 1u);
  v5 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*(a2 + 4) == 1)
  {
    if (v5 > 31)
    {
      v6 = 12;
      goto LABEL_8;
    }

    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mPositionRange";
LABEL_15:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v5 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack objDiv.mAzimuthRange";
    goto LABEL_15;
  }

  v6 = 16;
LABEL_8:
  v7 = *(a2 + v6);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packZoneExclusion(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mIsZoneDefined";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mKeepPreviousZone";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mIsCartesian";
    goto LABEL_45;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v14 = "Cannot pack zoneExclusion.mNumZones";
LABEL_45:
    *exception = v14;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 4u);
  v6 = a2[3];
  if (a2[3])
  {
    v7 = (a2 + 36);
    v8 = a2 + 19;
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v14 = "Cannot pack zoneExclusion.mUsePreDefinedZone[n]";
        goto LABEL_45;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v8 - 15), 1u);
      if (*(v8 - 15) == 1)
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
        {
          exception = __cxa_allocate_exception(8uLL);
          v14 = "Cannot pack zoneExclusion.mZoneIndex[n]";
          goto LABEL_45;
        }

        v9 = *v8;
        v10 = a3;
        v11 = 4;
      }

      else
      {
        v12 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
        if (a2[2] == 1)
        {
          if (v12 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMinX";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMaxX";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[1], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMinY";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[2], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMaxY";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[3], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMinZ";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[4], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.cartesian.mMaxZ";
            goto LABEL_45;
          }

          v9 = v7[5];
        }

        else
        {
          if (v12 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMinAzimuth";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMaxAzimuth";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[1], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMinElevation";
            goto LABEL_45;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[2], 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v14 = "Cannot pack zoneExclusion.mZone[n].co_tu.spherical.mMaxElevation";
            goto LABEL_45;
          }

          v9 = v7[3];
        }

        v10 = a3;
        v11 = 32;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
      ++v8;
      v7 += 6;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packMaskingZone(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack maskingZone.mIsZoneDefined";
    goto LABEL_44;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack maskingZone.mUsePreDefinedZone";
    goto LABEL_44;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (a2[1] != 1)
  {
    if (v6 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = "Cannot pack maskingZone.mIsCartesian";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
      v10 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
      if (a2[2] == 1)
      {
        if (v10 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack maskingZone.mZone.mMinX";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack maskingZone.mZone.mMaxX";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack maskingZone.mZone.mMinY";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack maskingZone.mZone.mMaxY";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
                {
                  exception = __cxa_allocate_exception(8uLL);
                  v12 = "Cannot pack maskingZone.mZone.mMinZ";
                }

                else
                {
                  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
                  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                  {
                    v7 = *(a2 + 6);
LABEL_24:
                    v8 = a3;
                    v9 = 32;
                    goto LABEL_25;
                  }

                  exception = __cxa_allocate_exception(8uLL);
                  v12 = "Cannot pack maskingZone.mZone.mMaxZ";
                }
              }
            }
          }
        }
      }

      else if (v10 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = "Cannot pack maskingZone.mZone.mMinAzimuth";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 7), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack maskingZone.mZone.mMaxAzimuth";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack maskingZone.mZone.mMinElevation";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 9), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack maskingZone.mZone.mMaxElevation";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 10), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack maskingZone.mZone.mMinDistance";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 11), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                {
                  v7 = *(a2 + 12);
                  goto LABEL_24;
                }

                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack maskingZone.mZone.mMaxDistance";
              }
            }
          }
        }
      }
    }

LABEL_44:
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack maskingZone.mZoneIndex";
    goto LABEL_44;
  }

  v7 = a2[3];
  v8 = a3;
  v9 = 4;
LABEL_25:

  return AT::TBitstreamWriter<unsigned int>::PutBits(v8, v7, v9);
}

uint64_t APAC::MetadataBitStreamPacker::packSceneReverb(uint64_t a1, int *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack reverb.mReverbProcIndex";
    goto LABEL_28;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  v6 = *a2;
  if (v6 != 3)
  {
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        return result;
      }

      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
      {
        v7 = *(a2 + 1);
LABEL_12:
        v8 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0xAu);

        return APAC::MetadataBitStreamPacker::packParametricReverb(v8, (a2 + 36), a3);
      }

      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack reverb.mAUSMReverbPreset";
      goto LABEL_28;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 1)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 2u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 8)
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 >= 9)
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
          {
            v7 = *(a2 + 5);
            goto LABEL_12;
          }

          exception = __cxa_allocate_exception(8uLL);
          v11 = "Cannot pack reverb.mFallbackCustomeIR.mAUSMReverbPreset";
LABEL_28:
          *exception = v11;
          __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
        }

LABEL_25:
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack reverb.mCustomData_EntryID";
        goto LABEL_28;
      }

LABEL_24:
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack reverb.mCustomData_TableID";
      goto LABEL_28;
    }

LABEL_23:
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack reverb.mDataLocationIndex";
    goto LABEL_28;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    goto LABEL_23;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    goto LABEL_24;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    goto LABEL_25;
  }

  v9 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);

  return APAC::MetadataBitStreamPacker::packFallbackRoomGeometry(v9, a2 + 3, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packPostProcReverb(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack ppReverb.mReverbProcIndex";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack ppReverb.mEarlyReflectionTimeProvided";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack ppReverb.mEarlyReflectionTime";
LABEL_13:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 1);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packRadiationPattern(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack radPattern.mAuSMProcIndex";
    goto LABEL_25;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  v6 = *a2;
  if (v6 <= 2)
  {
    if (v6 == 1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
      {
        v7 = *(a2 + 1);
        goto LABEL_18;
      }

      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack radPattern.mSourceType";
    }

    else
    {
      if (v6 != 2)
      {
        return result;
      }

      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack radPattern.mDataLocationIndex";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 2u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
        {
          exception = __cxa_allocate_exception(8uLL);
          v9 = "Cannot pack radPattern.mCustomData_TableID";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 9)
          {
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack radPattern.mCustomData_EntryID";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
            {
              v7 = *(a2 + 5);
LABEL_18:

              return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0xAu);
            }

            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack radPattern.mFallbackCustomIR.mSourceType";
          }
        }
      }
    }

LABEL_25:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 == 3)
  {

    return APAC::MetadataBitStreamPacker::packParametricRadiationPattern(result, a2 + 16, a3);
  }

  else if (v6 == 4)
  {

    return APAC::MetadataBitStreamPacker::packHOADirectivityModel(result, a2 + 22, a3);
  }

  return result;
}

{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack rP.isPHASE";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack rP.AuSMProcIndex";
    goto LABEL_13;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 3u);
  if (a2[1] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack rP.sourceType";
LABEL_13:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 1);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0xAu);
}

uint64_t APAC::MetadataBitStreamPacker::packHOARenderingMatrix(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack matrix.mDataLocationIndex";
    goto LABEL_19;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 2u);
  v6 = *a2;
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack matrix.mHOAOrder";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[6], 4u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v15 = "Cannot pack matrix.mChannelLayoutTag";
        }

        else
        {
          result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
          v8 = 0;
          v9 = 0;
          v10 = (a2[6] + 1) * (a2[6] + 1);
          v11 = *(a2 + 4);
          while (1)
          {
            v12 = v8;
            v13 = v11;
            if (v11)
            {
              break;
            }

LABEL_16:
            ++v9;
            v8 += 4 * v11;
            if (v9 == v10)
            {
              return result;
            }
          }

          while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
          {
            result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 2) + v12), 0x20u);
            v12 += 4;
            if (!--v13)
            {
              goto LABEL_16;
            }
          }

          exception = __cxa_allocate_exception(8uLL);
          v15 = "Cannot pack matrix.mCoeff[idx]";
        }
      }

LABEL_19:
      *exception = v15;
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    if (*a2)
    {
      return result;
    }
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack matrix.mCustomData_TableID";
    goto LABEL_19;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack matrix.mCustomData_EntryID";
    goto LABEL_19;
  }

  v7 = *(a2 + 2);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 9u);
}

uint64_t APAC::MetadataBitStreamPacker::packParametricRadiationPattern(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack parametric.mDirectivityModel";
    goto LABEL_33;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 5u);
  v6 = *a2;
  if (v6 == 3)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = "Cannot pack parametric.mSphereRadius";
      goto LABEL_33;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 38), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v15 = "Cannot pack parametric.mCapOpeningAngle";
      goto LABEL_33;
    }

    v13 = *(a2 + 39);

    return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v13, 0x20u);
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return result;
    }

    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 9)
    {
      v7 = *(a2 + 1);
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (v7 - 1), 0xAu);
      if (v7)
      {
        v8 = 0;
        v9 = 4 * v7;
        while (1)
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 17)
          {
            goto LABEL_27;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 1) + v8) - 1, 0x12u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v15 = "Cannot pack parametric.mPattern[sb]";
            goto LABEL_33;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 4) + v8), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            break;
          }

          result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 7) + v8), 0x20u);
          v8 += 4;
          if (v9 == v8)
          {
            return result;
          }
        }

        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack parametric.mSharpness[sb]";
        goto LABEL_33;
      }

      return result;
    }

LABEL_35:
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack tmpInt";
    goto LABEL_33;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 17)
  {
    goto LABEL_35;
  }

  v10 = *(a2 + 1);
  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v10 - 1, 0x12u);
  if (v10)
  {
    v11 = 0;
    v12 = 4 * v10;
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 17)
      {
LABEL_27:
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack tmpFreq";
        goto LABEL_33;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 1) + v11) - 1, 0x12u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack parametric.mInnerAngle[sb]";
        goto LABEL_33;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 10) + v11), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack parametric.mOuterAngle[sb]";
        goto LABEL_33;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 13) + v11), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        break;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 16) + v11), 0x20u);
      v11 += 4;
      if (v12 == v11)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack parametric.mOuterGain[sb]";
LABEL_33:
    *exception = v15;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packHOADirectivityModel(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack tmpUI10";
    goto LABEL_13;
  }

  v5 = *a2;
  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (v5 - 1), 0xAu);
  if (v5)
  {
    v7 = 0;
    v8 = 2 * v5;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 12)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (*(a2[1] + v7) - 1), 0xDu);
      v7 += 2;
      if (v8 == v7)
      {
        goto LABEL_6;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack tmpUI13";
LABEL_13:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

LABEL_6:
  v9 = a2[4];
  if (a2[5] != v9)
  {
    v10 = 0;
    v11 = 1;
    while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
    {
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v9 + 4 * v10), 0x20u);
      v10 = v11;
      v9 = a2[4];
      ++v11;
      if (v10 >= (a2[5] - v9) >> 2)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack hoaModel.mCoeffs[n]";
    goto LABEL_13;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packParametricReverb(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mPreDelay.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 1u);
  if (*(a2 + 4) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mPreDelay.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mRT60.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 12), 1u);
  if (*(a2 + 12) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mRT60.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mWetDryMix.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 20), 1u);
  if (*(a2 + 20) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mWetDryMix.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 16), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mReverbWidth.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 28), 1u);
  if (*(a2 + 28) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mReverbWidth.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 24), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mHFDampingCutoffFreq.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 36), 1u);
  if (*(a2 + 36) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mHFDampingCutoffFreq.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 32), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mEarlyReflectionOnly";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 40), 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mEarlyReflectionLevel.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 48), 1u);
  if (*(a2 + 48) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mEarlyReflectionLevel.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 44), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mEarlyReflectionTime.mHasData";
    goto LABEL_54;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 56), 1u);
  if (*(a2 + 56) == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack reverbParams.mEarlyReflectionTime.mValue";
      goto LABEL_54;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 52), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mLateReverbLevel.mHasData";
    goto LABEL_54;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 64), 1u);
  if (*(a2 + 64) != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack reverbParams.mLateReverbLevel.mValue";
LABEL_54:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 60);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packFallbackRoomGeometry(uint64_t a1, int *a2, _DWORD *a3)
{
  v5 = a2 + 11;
  v6 = 10;
  do
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack fallbackRoomGeometry.mOctaveBandRt60[n]";
      goto LABEL_14;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v5 - 10), 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack fallbackRoomGeometry.mOctaveBandEarlyRoomEnergy[n]";
      goto LABEL_14;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v5, 0x20u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v10 = "Cannot pack fallbackRoomGeometry.mOctaveBandLateRoomEnergy[n]";
      goto LABEL_14;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, v5[10], 0x20u);
    ++v5;
    --v6;
  }

  while (v6);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 32)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack fallbackRoomGeometry.mRoomVolume";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[31], 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = "Cannot pack fallbackRoomGeometry.mRoomSurface";
LABEL_14:
    *exception = v10;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v7 = a2[32];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packAuthoringInformation(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolNameIndex";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolVersion.mMajor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolVersion.mMinor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mAuthoringToolVersion.mPatch";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererNameIndex";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererVersion.mMajor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[5], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererVersion.mMinor";
    goto LABEL_20;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[6], 8u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack authorInfo.mRendererVersion.mPatch";
LABEL_20:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = a2[7];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v5, 8u);
}

uint64_t APAC::MetadataBitStreamPacker::packReferenceScreen(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mAspectRatio";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mIsCartesian";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 1u);
  v5 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*(a2 + 4) != 1)
  {
    if (v5 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack refScreen.mScreenCentrePosition.mAzimuth";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 20), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v8 = "Cannot pack refScreen.mScreenCentrePosition.mElevation";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 24), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v8 = "Cannot pack refScreen.mScreenCentrePosition.mRadius";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 28), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
          {
            v6 = 36;
            goto LABEL_14;
          }

          exception = __cxa_allocate_exception(8uLL);
          v8 = "Cannot pack refScreen.mScreenWidth.mAzimuth";
        }
      }
    }

LABEL_26:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v5 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenCentrePosition.mX";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 8), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenCentrePosition.mY";
    goto LABEL_26;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 12), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenCentrePosition.mZ";
    goto LABEL_26;
  }

  v6 = 32;
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 16), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack refScreen.mScreenWidth.mX";
    goto LABEL_26;
  }

LABEL_14:
  v9 = *(a2 + v6);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v9, 0x20u);
}

uint64_t APAC::MetadataBitStreamPacker::packDBMD(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack dbmd.mSurroundDownmix";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack dbmd.mSurroundToStereoDownmix";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack dbmd.mPositionAdjustment";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 3u);
  v5 = 0;
  v6 = a2 + 3;
  v7 = (a2 + 16);
  do
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v13 = "Cannot pack dbmd.mIsAutoTrim[cfg]";
      goto LABEL_25;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6[v5], 1u);
    if ((v6[v5] & 1) == 0)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mFrontGain";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v7 - 1), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mBackGain";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v7, 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mTopGain";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[1], 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mEarLevelBalance";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[2], 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack dbmd.mMixingGains[cfg].mHeightBalance";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[3], 0x20u);
    }

    ++v5;
    v7 += 5;
  }

  while (v5 != 9);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 < 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack tmp";
LABEL_25:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v8 = a2[192];
  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, (v8 - 1), 7u);
  if (v8)
  {
    v10 = a2 + 193;
    do
    {
      v11 = *v10++;
      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v11, 1u);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packBinauralization(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack binaural.mIsDirectBinauralization";
    goto LABEL_27;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack binaural.mChannelLayoutTag";
      goto LABEL_27;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack binaural.mHRTFType";
    goto LABEL_27;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[8], 3u);
  v6 = a2[8];
  if (v6 == 2)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack binaural.mDataLocationIndex";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[14], 2u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack binaural.mCustomData_TableID";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 9u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
        {
          exception = __cxa_allocate_exception(8uLL);
          v11 = "Cannot pack binaural.mCustomData_EntryID";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 9u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 2)
          {
            v7 = 3;
            v8 = 15;
            goto LABEL_15;
          }

          exception = __cxa_allocate_exception(8uLL);
          v11 = "Cannot pack binaural.mFallbackCustomHRTF.mHRTFType";
        }
      }
    }

LABEL_27:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack binaural.mPredefinedIR_ID";
    goto LABEL_27;
  }

  v7 = 8;
  v8 = 9;
LABEL_15:
  v9 = a2[v8];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v9, v7);
}

{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack binaural.isDirectBinauralization";
    goto LABEL_16;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if ((*a2 & 1) == 0)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack binaural.channelLayoutTag";
      goto LABEL_16;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack binaural.HRTFType";
    goto LABEL_16;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[8], 3u);
  if (a2[8] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack binaural.codeBookID";
LABEL_16:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = a2[9];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 4u);
}

uint64_t APAC::MetadataBitStreamPacker::packSPAD(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spad.mDataLocationIndex";
    goto LABEL_10;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spad.mCustomData_TableID";
    goto LABEL_10;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack spad.mCustomData_EntryID";
LABEL_10:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 9u);

  return APAC::MetadataBitStreamPacker::packFallbackSPAD(v5, a2 + 8, a3);
}

uint64_t APAC::MetadataBitStreamPacker::packDistanceAttenuation(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mAttnLawIndex";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 3u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mDistNorm";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mRefDistance";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mMaxDistance";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack distAttnParams.mAttnNormIndex";
LABEL_14:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v5 = a2[16];

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v5, 1u);
}

uint64_t APAC::MetadataBitStreamPacker::packGenericRenderingConfig(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mHasPreset";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  v5 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (*a2 == 1)
  {
    if (v5 > 10)
    {
      v6 = *(a2 + 1);
      v7 = a3;
      v8 = 11;
      goto LABEL_11;
    }

    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mPresetIndex";
LABEL_21:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v5 <= 1)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mDataLocationIndex";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 2u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mCustomData_TableID";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mCustomData_EntryID";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 9u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 10)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mFallbackIndex";
    goto LABEL_21;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0xBu);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 16)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack cfg.mDataByteSize";
    goto LABEL_21;
  }

  v6 = *(a2 + 3);
  v7 = a3;
  v8 = 17;
LABEL_11:

  return AT::TBitstreamWriter<unsigned int>::PutBits(v7, v6, v8);
}

uint64_t APAC::MetadataBitStreamPacker::packChannelBedHeadphoneMetadata(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2 - 1, 4u);
  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1] - 1, 8u);
  if (a2[1])
  {
    v5 = 0;
    do
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 1) + v5++), 3u);
      v6 = a2[1];
    }

    while (v5 < v6);
    v7 = -3 * v6 - 8;
  }

  else
  {
    v7 = -8;
  }

  v8 = v7 + 8 * *a2;

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, 0, v8);
}

uint64_t APAC::MetadataBitStreamPacker::packFallbackSPAD(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v5 = 2;
  do
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack fallback.mDeviceID[n]";
      goto LABEL_25;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[v5], 8u);
    if (a2[v5])
    {
      v6 = v5 == 9;
    }

    else
    {
      v6 = 1;
    }

    ++v5;
  }

  while (!v6);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack fallback.mOrientation";
    goto LABEL_25;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 4u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 7)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack fallback.mNumMicrophones";
    goto LABEL_25;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 8u);
  v8 = a2[1];
  if (a2[1])
  {
    v9 = 0;
    while (1)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicType[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 2) + v9), 4u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicPosAzimuth[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 5) + 4 * v9), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicPosElevation[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 8) + 4 * v9), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v11 = "Cannot pack fallback.mMicPosRadius[n]";
        goto LABEL_25;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 11) + 4 * v9), 0x20u);
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
      {
        break;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(*(a2 + 14) + v9++), 3u);
      if (v8 == v9)
      {
        return result;
      }
    }

    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack fallback.mMicDirection[n]";
LABEL_25:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packGroupDynamicData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpDD.hasData";
    goto LABEL_10;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack grpDD.groupCount";
LABEL_10:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 7u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 4;
    do
    {
      result = APAC::MetadataBitStreamPacker::packDynamicGroup(result, v7, a3);
      ++v6;
      v7 += 256;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packSceneComponenentDynamicData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v15 = "Cannot pack scDD.ASCCount";
LABEL_15:
    *exception = v15;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (*a2)
  {
    v6 = 0;
    v7 = a2 + 8728;
    for (i = a2; ; i += 9752)
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 1)
      {
        exception = __cxa_allocate_exception(8uLL);
        v15 = "Cannot pack scDD.ASCData[n].ASCType";
        goto LABEL_15;
      }

      v9 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, i[4], 2u);
      v10 = i[4];
      if (v10 == 2)
      {
        break;
      }

      if (v10 == 1)
      {
        APAC::MetadataBitStreamPacker::packObjectMetadata(v9, i + 72, a3);
      }

      else if (!i[4])
      {
        v11 = i + 8;
LABEL_11:
        v9 = APAC::MetadataBitStreamPacker::packCommonDynamicMetadata(v9, v11, a3);
      }

      v12 = APAC::MetadataBitStreamPacker::packProprietaryDynamicData(v9, v7 - 1152, a3);
      v13 = APAC::MetadataBitStreamPacker::packExtendedData(v12, v7 - 1028, a3);
      result = APAC::MetadataBitStreamPacker::packExtendedData(v13, v7, a3);
      ++v6;
      v7 += 9752;
      if (v6 >= *a2)
      {
        return result;
      }
    }

    v11 = i + 40;
    goto LABEL_11;
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packExtendedData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v11 = "Cannot pack extData.hasData";
    goto LABEL_9;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
    {
      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack extData.chunkSize";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0xAu);
      v6 = *(a2 + 1);
      v7 = a2 + 4;
      v8 = v6 + 1;
      while (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 7)
      {
        v9 = *v7++;
        result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v9, 8u);
        if (!--v8)
        {
          return result;
        }
      }

      exception = __cxa_allocate_exception(8uLL);
      v11 = "Cannot pack extData.dataChunk[n]";
    }

LABEL_9:
    *exception = v11;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packCommonDynamicMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.hasADMMetadata";
    goto LABEL_31;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.absoluteDistance.hasData";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 1u);
  if (a2[4] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack cmmMd.absoluteDistance.distance";
      goto LABEL_31;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.gain.hasData";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[12], 1u);
  if (a2[12] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack cmmMd.gain.isDB";
      goto LABEL_31;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[13], 1u);
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack cmmMd.gain.gain";
      goto LABEL_31;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headLocked";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[22], 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headphoneVirtualize.hasData";
    goto LABEL_31;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[24], 1u);
  if (a2[24] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headphoneVirtualize.bypass";
    goto LABEL_31;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[25], 1u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack cmmMd.headphoneVirtualize.DRR";
LABEL_31:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 7);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

void APAC::MetadataBitStreamPacker::packObjectMetadata(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack objMd.objectID";
    goto LABEL_14;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 7u);
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack objMd.numBlocks";
LABEL_14:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 4u);
  if (a2[1])
  {
    v5 = 0;
    v6 = a2 + 4;
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack objMd.blockData[n].isNewBlk";
        goto LABEL_14;
      }

      v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *v6, 1u);
      if (v5 && v5 < a2[1] - 1)
      {
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 9)
        {
          exception = __cxa_allocate_exception(8uLL);
          v9 = "Cannot pack objMd.blockData[n].rtime";
          goto LABEL_14;
        }

        v7 = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(v6 + 1), 0xAu);
      }

      APAC::MetadataBitStreamPacker::packBlockData(v7, v6, 513, a3);
      ++v5;
      v6 += 500;
    }

    while (v5 < a2[1]);
  }
}

uint64_t APAC::MetadataBitStreamPacker::packProprietaryDynamicData(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pDD.hasData";
    goto LABEL_30;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = "Cannot pack pDD.numParameters";
LABEL_30:
    *exception = v13;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 5u);
  if (a2[1])
  {
    v6 = 0;
    v7 = a2 + 90;
    do
    {
      if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v13 = "Cannot pack pDD.paramIndexList[n]";
        goto LABEL_30;
      }

      result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, v7[v6], 5u);
      v8 = v7[v6];
      if (v8 > 2)
      {
        switch(v8)
        {
          case 3u:
            result = APAC::MetadataBitStreamPacker::packParametricReverb(result, a2 + 48, a3);
            break;
          case 4u:
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              v13 = "Cannot pack pDD.headLocked";
              goto LABEL_30;
            }

            v9 = a2[88];
LABEL_25:
            v10 = a3;
            v11 = 1;
LABEL_26:
            result = AT::TBitstreamWriter<unsigned int>::PutBits(v10, v9, v11);
            break;
          case 5u:
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              v13 = "Cannot pack pDD.parallax";
              goto LABEL_30;
            }

            v9 = a2[89];
            goto LABEL_25;
        }
      }

      else
      {
        if (!v7[v6])
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pDD.lookDirection.azimuth";
            goto LABEL_30;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 1), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pDD.lookDirection.elevation";
            goto LABEL_30;
          }

          v9 = *(a2 + 2);
          v10 = a3;
          v11 = 32;
          goto LABEL_26;
        }

        if (v8 == 1)
        {
          result = APAC::MetadataBitStreamPacker::packAudioSceneMaskingZone(result, a2 + 12, a3);
        }

        else if (v8 == 2)
        {
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 2)
          {
            exception = __cxa_allocate_exception(8uLL);
            v13 = "Cannot pack pDD.preferredDoF";
            goto LABEL_30;
          }

          v9 = a2[44];
          v10 = a3;
          v11 = 3;
          goto LABEL_26;
        }
      }

      ++v6;
    }

    while (v6 < a2[1]);
  }

  return result;
}

uint64_t APAC::MetadataBitStreamPacker::packAudioSceneMaskingZone(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.isZoneDefined";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.keepPreviousZone";
    goto LABEL_45;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1])
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.usePreDefinedZone";
    goto LABEL_45;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
  v6 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
  if (a2[2] != 1)
  {
    if (v6 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v12 = "Cannot pack mZ.cartesian";
    }

    else
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
      v10 = a3[7] + 8 * (a3[4] - a3[2]) - 32;
      if (a2[3] == 1)
      {
        if (v10 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack mZ.co_tu.cartesian.minX";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack mZ.co_tu.cartesian.maxX";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack mZ.co_tu.cartesian.minY";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.cartesian.maxY";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                {
                  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 0x20u);
                  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
                  {
                    exception = __cxa_allocate_exception(8uLL);
                    v12 = "Cannot pack mZ.co_tu.cartesian.maxZ";
                    goto LABEL_45;
                  }

LABEL_25:
                  v7 = *(a2 + 7);
                  v8 = a3;
                  v9 = 32;
                  goto LABEL_26;
                }

                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.cartesian.minZ";
              }
            }
          }
        }
      }

      else if (v10 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v12 = "Cannot pack mZ.co_tu.spherical.minAzimuth";
      }

      else
      {
        AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
        if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
        {
          exception = __cxa_allocate_exception(8uLL);
          v12 = "Cannot pack mZ.co_tu.spherical.maxAzimuth";
        }

        else
        {
          AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
          if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
          {
            exception = __cxa_allocate_exception(8uLL);
            v12 = "Cannot pack mZ.co_tu.spherical.minElevation";
          }

          else
          {
            AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
            if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
            {
              exception = __cxa_allocate_exception(8uLL);
              v12 = "Cannot pack mZ.co_tu.spherical.maxElevation";
            }

            else
            {
              AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
              if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
              {
                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.spherical.minDistance";
              }

              else
              {
                AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 0x20u);
                if (a3[7] + 8 * (a3[4] - a3[2]) - 32 > 31)
                {
                  goto LABEL_25;
                }

                exception = __cxa_allocate_exception(8uLL);
                v12 = "Cannot pack mZ.co_tu.spherical.maxDistance";
              }
            }
          }
        }
      }
    }

LABEL_45:
    *exception = v12;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  if (v6 <= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v12 = "Cannot pack mZ.zoneIndex";
    goto LABEL_45;
  }

  v7 = a2[4];
  v8 = a3;
  v9 = 4;
LABEL_26:

  return AT::TBitstreamWriter<unsigned int>::PutBits(v8, v7, v9);
}

uint64_t APAC::MetadataBitStreamPacker::packParametricReverb(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasPreDelay";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, *a2, 1u);
  if (*a2 == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.preDelayMSec";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 2), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasEarlyReflectionLevel";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[1], 1u);
  if (a2[1] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.earlyReflectionLevel";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 3), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasRT60";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[2], 1u);
  if (a2[2] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.RT60Msec";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 4), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasWetDryMix";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[3], 1u);
  if (a2[3] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.wetDryMix";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 5), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasReverbWidth";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[4], 1u);
  if (a2[4] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.reverbWidth";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 6), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasHighFrequencyDamping";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[5], 1u);
  if (a2[5] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.highFrequencyDamping";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, *(a2 + 7), 0x20u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasEarlyReflectionOnly";
    goto LABEL_52;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[6], 1u);
  if (a2[6] == 1)
  {
    if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v8 = "Cannot pack pR.earlyReflectionOnly";
      goto LABEL_52;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[32], 1u);
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.hasEarlyReflectionTime";
    goto LABEL_52;
  }

  result = AT::TBitstreamWriter<unsigned int>::PutBits(a3, a2[7], 1u);
  if (a2[7] != 1)
  {
    return result;
  }

  if (a3[7] + 8 * (a3[4] - a3[2]) - 32 <= 31)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = "Cannot pack pR.earlyReflectionTimeMsec";
LABEL_52:
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v6 = *(a2 + 9);

  return AT::TBitstreamWriter<unsigned int>::PutBits(a3, v6, 0x20u);
}

void APAC::MetadataBitStreamPacker::packBlockData(uint64_t a1, uint64_t a2, __int16 a3, _DWORD *a4)
{
  if (*a2 != 1)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.cartesian";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 4), 1u);
  v7 = a4[7] + 8 * (a4[4] - a4[2]) - 32;
  if (*(a2 + 4) == 1)
  {
    if (v7 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.cartesian.X";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 8), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.cartesian.Y";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 12), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.cartesian.Z";
      goto LABEL_156;
    }
  }

  else
  {
    if (v7 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.spherical.azimuth";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 8), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.spherical.elevation";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 12), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.position.co_ut.spherical.distance";
      goto LABEL_156;
    }
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 16), 0x20u);
  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.hasADMMetadata";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 20), 1u);
  if (*(a2 + 20) != 1)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.absoluteDistance.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 24), 1u);
  if (*(a2 + 24) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.absoluteDistance.distance";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 28), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.spread.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 32), 1u);
  if (*(a2 + 32) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.spread.width";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 36), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.spread.height";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 40), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.spread.depth";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 44), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.gain.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 48), 1u);
  if (*(a2 + 48) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.gain.isDB";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 49), 1u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.gain.gain";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 52), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.diffuse.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 56), 1u);
  if (*(a2 + 56) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.diffuse.diffuse";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 60), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.channelLock.channelLock";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 64), 1u);
  if (*(a2 + 64) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.channelLock.hasMaxDistance";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 65), 1u);
    if (*(a2 + 65) == 1)
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack blkData.channelLock.maxDistance";
        goto LABEL_156;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 68), 0x20u);
    }
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.objectDivergence.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 72), 1u);
  if (*(a2 + 72) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.objectDivergence.objectDivergence";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 76), 0x20u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.objectDivergence.positionOrAzimuthRange";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 88), 0x20u);
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.screenRef";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 92), 1u);
  v10 = a3;
  v12 = a3 == 1;
  v11 = HIBYTE(a3);
  v12 = v12 && v11 == 1;
  v13 = v12;
  if (v12)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.importance.hasData";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 93), 1u);
    if (*(a2 + 93) == 1)
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 3)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack blkData.importance.importance";
        goto LABEL_156;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 94), 4u);
    }
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.headLocked";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 95), 1u);
  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.headphoneVirtualize.hasData";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 96), 1u);
  if (*(a2 + 96) == 1)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.headphoneVirtualize.bypass";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 97), 1u);
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
    {
      exception = __cxa_allocate_exception(8uLL);
      v9 = "Cannot pack blkData.headphoneVirtualize.DRR";
      goto LABEL_156;
    }

    AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 100), 0x20u);
  }

  if (v13)
  {
    if (a4[7] + 8 * (a4[4] - a4[2]) - 32 > 3)
    {
      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 106), 4u);
      if (*(a2 + 106))
      {
        v14 = 0;
        for (i = (a2 + 140); ; i += 6)
        {
          v16 = a4[7] + 8 * (a4[4] - a4[2]) - 32;
          if (*(a2 + 4) == 1)
          {
            if (v16 <= 31)
            {
              goto LABEL_111;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, *i, 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_116;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[1], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_110;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[2], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_115;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[3], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_114;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[4], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_119;
            }

            v17 = (a2 + 140 + 24 * v14 + 20);
          }

          else
          {
            if (v16 <= 31)
            {
              goto LABEL_113;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, *i, 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_118;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[1], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_112;
            }

            AT::TBitstreamWriter<unsigned int>::PutBits(a4, i[2], 0x20u);
            if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
            {
              goto LABEL_117;
            }

            v17 = i + 3;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, *v17, 0x20u);
          if (++v14 >= *(a2 + 106))
          {
            return;
          }
        }
      }

      return;
    }

    goto LABEL_138;
  }

  if (v10 != 1 || v11 != 2)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.zoneExclusion.isZoneDefined";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 104), 1u);
  if (*(a2 + 104) != 1)
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.zoneExclusion.keepPreviousZone";
LABEL_156:
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 105), 1u);
  if (*(a2 + 105))
  {
    return;
  }

  if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 3)
  {
LABEL_138:
    exception = __cxa_allocate_exception(8uLL);
    v9 = "Cannot pack blkData.zoneExclusion.numZones";
    goto LABEL_156;
  }

  AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(a2 + 106), 4u);
  if (*(a2 + 106))
  {
    v18 = (a2 + 140);
    v19 = a2 + 160;
    v20 = 122;
    do
    {
      if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 0)
      {
        exception = __cxa_allocate_exception(8uLL);
        v9 = "Cannot pack blkData.zoneExclusion.usePreDefinedZone[w]";
        goto LABEL_156;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(a4, *(v19 + v20 - 175), 1u);
      if (*(v19 + v20 - 175) == 1)
      {
        if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 3)
        {
          exception = __cxa_allocate_exception(8uLL);
          v9 = "Cannot pack blkData.zoneExclusion.zoneIndex[w]";
          goto LABEL_156;
        }

        v21 = *(a2 + v20);
        v22 = a4;
        v23 = 4;
      }

      else
      {
        v24 = a4[7] + 8 * (a4[4] - a4[2]) - 32;
        if (*(a2 + 4) == 1)
        {
          if (v24 <= 31)
          {
LABEL_111:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.minX";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, *v18, 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_116:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.maxX";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[1], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_110:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.minY";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[2], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_115:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.maxY";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[3], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_114:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.minZ";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[4], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_119:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.cartesian.maxZ";
            goto LABEL_156;
          }

          v21 = v18[5];
        }

        else
        {
          if (v24 <= 31)
          {
LABEL_113:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.minAzimuth";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, *v18, 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_118:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.maxAzimuth";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[1], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_112:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.minElevation";
            goto LABEL_156;
          }

          AT::TBitstreamWriter<unsigned int>::PutBits(a4, v18[2], 0x20u);
          if (a4[7] + 8 * (a4[4] - a4[2]) - 32 <= 31)
          {
LABEL_117:
            exception = __cxa_allocate_exception(8uLL);
            v9 = "Cannot pack blkData.zoneExclusion.zone[w].co_tu.spherical.maxElevation";
            goto LABEL_156;
          }

          v21 = v18[3];
        }

        v22 = a4;
        v23 = 32;
      }

      AT::TBitstreamWriter<unsigned int>::PutBits(v22, v21, v23);
      v25 = v20 - 121;
      ++v20;
      v18 += 6;
    }

    while (v25 < *(a2 + 106));
  }
}