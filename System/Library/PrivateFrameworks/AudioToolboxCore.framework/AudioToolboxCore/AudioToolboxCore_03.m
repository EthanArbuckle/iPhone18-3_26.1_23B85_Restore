uint64_t AudioFileObject::ReadPacketDataCBR(AudioFileObject *this, uint64_t a2, unsigned int *a3, uint64_t a4, unsigned int *a5, void *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3 || !*a3)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_14:
      result = 4294967246;
      goto LABEL_15;
    }

    v19 = 136315394;
    v20 = "AudioFileObject.cpp";
    v21 = 1024;
    v22 = 935;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  invalid ioNumBytes parameter";
LABEL_13:
    _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x12u);
    goto LABEL_14;
  }

  if (!a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = 136315394;
    v20 = "AudioFileObject.cpp";
    v21 = 1024;
    v22 = 936;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "%25s:%-5d  NULL buffer";
    goto LABEL_13;
  }

  v9 = *(this + 10);
  v10 = *a3 / v9;
  v11 = *a5;
  if (*a5 > v10)
  {
    *a5 = v10;
    v9 = *(this + 10);
    v11 = v10;
  }

  v19 = v9 * v11;
  result = (*(*this + 72))(this, a2, v9 * a4, &v19, a6);
  if (!result || result == -39)
  {
    v13 = v19;
    v14 = *(this + 10);
    if (v19 != v14 * *a5)
    {
      v15 = v19 / v14;
      *a5 = v19 / v14;
      v13 = *(this + 10) * v15;
    }

    *a3 = v13;
  }

LABEL_15:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ExtAudioFile::UpdateInternals(ExtAudioFile *this)
{
  v26 = *MEMORY[0x1E69E9840];
  *(this + 20) = 0;
  result = *(this + 19);
  if (result)
  {
    v3 = *(this + 8);
    v14 = 4;
    if (v3 == 1)
    {
      v4 = 2020569203;
    }

    else
    {
      v4 = 2020175987;
    }

    v17 = v4;
    v15 = this + 284;
    v16 = &v14;
    v23 = &v17;
    v24 = &v16;
    v25 = &v15;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
    *&buf[8] = &v23;
    v5 = with_resolved(result, buf);
    if (v5)
    {
      v12 = v5;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&v23, v12);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 912;
        v19 = 2080;
        v20 = &v23;
        v21 = 2080;
        v22 = "get audio converter's maximum packet size";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "get audio converter's maximum packet size", v12);
    }

    v6 = *(this + 28);
    v7 = 1.0;
    if (v6 != 0.0)
    {
      v8 = *(this + 21);
      if (v8 != 0.0)
      {
        v7 = v6 / v8;
      }
    }

    *(this + 27) = v7;
    if (!*(this + 50) && !ExtAudioFile::GetFilePacketTable(this, buf))
    {
      v9 = *(this + 26);
      v10 = *(this + 27);
      *(this + 20) = (*&buf[8] * v9 + 0.5);
      *(this + 9) = (v9 * v10 * *buf + 0.5);
    }

    result = *(this + 19);
    if (result)
    {
      v14 = *(this + 416);
      LODWORD(v15) = 610889331;
      v17 = 4;
      v16 = &v14;
      v23 = &v15;
      v24 = &v17;
      v25 = &v16;
      *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
      *&buf[8] = &v23;
      result = with_resolved(result, buf);
    }
  }

  else
  {
    *(this + 71) = *(this + 70);
    *(this + 27) = 0x3FF0000000000000;
  }

  if (*(this + 8) == 1 && *(this + 58) == 1819304813)
  {
    *(this + 7) = -1;
    *(this + 8) = -1;
    result = ExtAudioFile::Seek(this, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

OSStatus ExtAudioFileGetProperty(ExtAudioFileRef inExtAudioFile, ExtAudioFilePropertyID inPropertyID, UInt32 *ioPropertyDataSize, void *outPropertyData)
{
  v28 = *MEMORY[0x1E69E9840];
  if (ioPropertyDataSize && (v8 = BaseOpaqueObject::ResolveOpaqueRef()) != 0)
  {
    v9 = v8;
    outSize = 0;
    result = ExtAudioFileGetPropertyInfo(inExtAudioFile, inPropertyID, &outSize, 0);
    if (!result)
    {
      v11 = -66562;
      if (*ioPropertyDataSize < outSize)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ExtendedAudioFile.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 294;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  invalid property size", buf, 0x12u);
        }

        goto LABEL_58;
      }

      v11 = -66561;
      v12 = MEMORY[0x1E69E5478];
      if (inPropertyID <= 1668116594)
      {
        if (inPropertyID <= 1634101611)
        {
          if (inPropertyID <= 1633903461)
          {
            if (inPropertyID == 593916525)
            {
              NumberFrames = ExtAudioFile::GetNumberFrames(v9);
              goto LABEL_48;
            }

            if (inPropertyID == 610889316)
            {
              NumberFrames = ExtAudioFile::GetInstrumentation(v9);
LABEL_48:
              *outPropertyData = NumberFrames;
              goto LABEL_54;
            }

LABEL_58:
            v23 = v12;
            exception = __cxa_allocate_exception(4uLL);
            *exception = v11;
            __cxa_throw(exception, v23, 0);
          }

          if (inPropertyID == 1633903462)
          {
            NumberFrames = ExtAudioFile::GetConverterConfig(*(v9 + 152));
            goto LABEL_48;
          }

          if (inPropertyID != 1633906294)
          {
            goto LABEL_58;
          }

          v17 = *(v9 + 152);
          goto LABEL_45;
        }

        if (inPropertyID <= 1667657075)
        {
          if (inPropertyID != 1634101612)
          {
            if (inPropertyID != 1667460207)
            {
              goto LABEL_58;
            }

            v15 = *(v9 + 272);
            if (v15)
            {
              goto LABEL_23;
            }

            goto LABEL_18;
          }

          v17 = *(v9 + 16);
LABEL_45:
          *outPropertyData = v17;
          goto LABEL_54;
        }

        if (inPropertyID != 1667657076)
        {
          if (inPropertyID != 1668112750)
          {
            goto LABEL_58;
          }

          v21 = *(v9 + 164);
          goto LABEL_53;
        }

        v18 = *(v9 + 224);
        v19 = *(v9 + 240);
        v20 = *(v9 + 256);
LABEL_51:
        *(outPropertyData + 4) = v20;
        *outPropertyData = v18;
        *(outPropertyData + 1) = v19;
        goto LABEL_54;
      }

      if (inPropertyID > 1718448242)
      {
        if (inPropertyID > 1768907378)
        {
          if (inPropertyID != 1768907379)
          {
            if (inPropertyID == 2020635753)
            {
              FilePacketTable = ExtAudioFile::GetFilePacketTable(v9, buf);
              if (FilePacketTable)
              {
                v25 = __cxa_allocate_exception(4uLL);
                *v25 = FilePacketTable;
                __cxa_throw(v25, MEMORY[0x1E69E5478], 0);
              }

              *outPropertyData = *buf;
              goto LABEL_54;
            }

            goto LABEL_58;
          }

          v21 = *(v9 + 88);
        }

        else
        {
          if (inPropertyID != 1718448243)
          {
            if (inPropertyID != 1768907366)
            {
              goto LABEL_58;
            }

            v17 = *(v9 + 112);
            goto LABEL_45;
          }

          v21 = *(v9 + 280);
        }
      }

      else
      {
        if (inPropertyID > 1717792373)
        {
          if (inPropertyID == 1717792374)
          {
            v21 = *(v9 + 160);
            goto LABEL_53;
          }

          if (inPropertyID != 1717988724)
          {
            goto LABEL_58;
          }

          v18 = *(v9 + 168);
          v19 = *(v9 + 184);
          v20 = *(v9 + 200);
          goto LABEL_51;
        }

        if (inPropertyID != 1668116595)
        {
          if (inPropertyID != 1717791855)
          {
            goto LABEL_58;
          }

          v15 = *(v9 + 264);
          if (v15)
          {
LABEL_23:
            v16 = *(v15 + 12);
            goto LABEL_24;
          }

LABEL_18:
          v16 = 0;
LABEL_24:
          memcpy(outPropertyData, (v15 + 16), v16);
LABEL_54:
          result = 0;
          *ioPropertyDataSize = outSize;
          goto LABEL_12;
        }

        v21 = *(v9 + 284);
      }

LABEL_53:
      *outPropertyData = v21;
      goto LABEL_54;
    }
  }

  else
  {
    result = -50;
  }

LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F615DEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 == 4)
    {
      v3 = *(__cxa_begin_catch(a1) + 2);
      __cxa_end_catch();
    }

    else if (a2 == 3)
    {
      v4 = *(__cxa_begin_catch(a1) + 66);
      __cxa_end_catch();
    }

    else
    {
      v5 = __cxa_begin_catch(a1);
      if (a2 == 2)
      {
        v6 = *v5;
        __cxa_end_catch();
      }

      else
      {
        __cxa_end_catch();
      }
    }

    JUMPOUT(0x18F615B0CLL);
  }

  _Unwind_Resume(a1);
}

OSStatus ExtAudioFileGetPropertyInfo(ExtAudioFileRef inExtAudioFile, ExtAudioFilePropertyID inPropertyID, UInt32 *outSize, Boolean *outWritable)
{
  v7 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v7)
  {
    return -50;
  }

  if (inPropertyID > 1668116594)
  {
    if (inPropertyID > 1718448242)
    {
      if (inPropertyID > 1768907378)
      {
        if (inPropertyID != 1768907379)
        {
          if (inPropertyID != 2020635753)
          {
            goto LABEL_47;
          }

          LODWORD(v10) = 16;
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      if (inPropertyID != 1718448243)
      {
        if (inPropertyID != 1768907366)
        {
          goto LABEL_47;
        }

        LODWORD(v10) = 8;
        goto LABEL_41;
      }
    }

    else
    {
      if (inPropertyID > 1717792373)
      {
        if (inPropertyID != 1717792374)
        {
          if (inPropertyID == 1717988724)
          {
            v11 = 0;
            LODWORD(v10) = 40;
            goto LABEL_42;
          }

          goto LABEL_47;
        }

        goto LABEL_37;
      }

      if (inPropertyID != 1668116595)
      {
        if (inPropertyID != 1717791855)
        {
          goto LABEL_47;
        }

        v10 = *(v7 + 264);
        if (v10)
        {
LABEL_18:
          LODWORD(v10) = *(v10 + 12);
        }

LABEL_41:
        v11 = 1;
        goto LABEL_42;
      }
    }

    v11 = 0;
    LODWORD(v10) = 4;
    goto LABEL_42;
  }

  if (inPropertyID > 1634101611)
  {
    if (inPropertyID <= 1667657075)
    {
      if (inPropertyID == 1634101612)
      {
        goto LABEL_26;
      }

      if (inPropertyID != 1667460207)
      {
        goto LABEL_47;
      }

      v10 = *(v7 + 272);
      if (v10)
      {
        goto LABEL_18;
      }

      goto LABEL_41;
    }

    if (inPropertyID == 1667657076)
    {
      LODWORD(v10) = 40;
      goto LABEL_41;
    }

    if (inPropertyID != 1668112750)
    {
      goto LABEL_47;
    }

LABEL_37:
    LODWORD(v10) = 4;
    goto LABEL_41;
  }

  if (inPropertyID <= 1633903461)
  {
    if (inPropertyID == 593916525)
    {
      v11 = *(v7 + 188) == 1;
      goto LABEL_27;
    }

    v8 = 610889316;
LABEL_25:
    if (inPropertyID == v8)
    {
      goto LABEL_26;
    }

LABEL_47:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -66561;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  if (inPropertyID != 1633903462)
  {
    v8 = 1633906294;
    goto LABEL_25;
  }

LABEL_26:
  v11 = 0;
LABEL_27:
  LODWORD(v10) = 8;
LABEL_42:
  if (outSize)
  {
    *outSize = v10;
  }

  v9 = 0;
  if (outWritable)
  {
    *outWritable = v11;
  }

  return v9;
}

uint64_t CAFAudioFile::NumberValidFrames(CAFAudioFile *this)
{
  result = *(this + 22);
  if (result < 0)
  {
    v3 = *(this + 11);
    if (v3)
    {
      return (*(*this + 248))(this) * v3 - (*(this + 46) + *(this + 47));
    }
  }

  return result;
}

uint64_t ExtAudioFile::Close(ExtAudioFile *this, uint64_t a2, void *a3)
{
  v39[2] = *MEMORY[0x1E69E9840];
  v3 = *(this + 8);
  if (v3)
  {
    if (*(this + 42))
    {
      v5 = CADeprecated::TSingleton<ExtAudioFileAsyncWriteMgr>::instance();
      std::mutex::lock(v5);
      v6 = *(v5 + 112);
      v7 = *(v5 + 120);
      v8 = v6;
      if (v6 != v7)
      {
        while (*v8 != this)
        {
          if (++v8 == v7)
          {
            v8 = *(v5 + 120);
            break;
          }
        }
      }

      if (v7 != v8)
      {
        v9 = v7 - (v8 + 1);
        if (v7 != v8 + 1)
        {
          memmove(v8, v8 + 1, v7 - (v8 + 1));
          v6 = *(v5 + 112);
        }

        v7 = (v8 + v9);
        *(v5 + 120) = v8 + v9;
      }

      if (v6 == v7)
      {
        v10 = dispatch_time(0, 2000000000);
        global_queue = dispatch_get_global_queue(0, 0);
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 0x40000000;
        *&block[16] = ___ZN25ExtAudioFileAsyncWriteMgr12RemoveClientEP12ExtAudioFile_block_invoke;
        *&block[24] = &__block_descriptor_tmp_1814;
        *&block[32] = v5;
        dispatch_after(v10, global_queue, block);
      }

      std::mutex::unlock(v5);
      ExtAudioFile::PerformAsyncWrites(this, 1);
      v12 = *(this + 42);
      if (v12)
      {
        AT::RingBuffer::~RingBuffer(v12);
        MEMORY[0x193ADF220]();
      }

      *(this + 42) = 0;
      v13 = *(this + 44);
      if (v13)
      {
        v14 = v13[1];
        if (v14)
        {
          MEMORY[0x193ADF1F0](v14, 0x1000C8077774924);
        }

        operator delete(v13);
      }

      *(this + 44) = 0;
      v15 = *(this + 45);
      if (v15)
      {
        v16 = v15[1];
        if (v16)
        {
          MEMORY[0x193ADF1F0](v16, 0x1000C8077774924);
        }

        operator delete(v15);
      }

      *(this + 45) = 0;
      v3 = *(this + 8);
    }

    if (v3 == 4 && *(this + 19))
    {
      *(this + 30) = 1;
      v17 = ExtAudioFile::WritePacketsFromCallback(this, this, a3);
      *(this + 30) = 0;
      if (!*(this + 50))
      {
        *isWritable = 0;
        if (!AudioFileGetPropertyInfo(*(this + 2), 0x706E666Fu, &isWritable[1], isWritable))
        {
          if (isWritable[0])
          {
            isWritable[1] = 8;
            v26 = *(this + 19);
            v37 = 1886546285;
            v39[0] = &isWritable[1];
            v36 = &v32;
            inPropertyData.mNumberValidFrames = &v37;
            *&inPropertyData.mPrimingFrames = v39;
            v35 = &v36;
            *block = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetProperty::$_0>;
            *&block[8] = &inPropertyData;
            if (!with_resolved(v26, block) && !ExtAudioFile::GetFilePacketTable(this, &inPropertyData))
            {
              mPrimingFrames = inPropertyData.mPrimingFrames;
              mRemainderFrames = inPropertyData.mRemainderFrames;
              *&inPropertyData.mPrimingFrames = v32;
              inPropertyData.mNumberValidFrames = inPropertyData.mNumberValidFrames + mPrimingFrames + mRemainderFrames - (v32 + SHIDWORD(v32));
              v29 = AudioFileSetProperty(*(this + 2), 0x706E666Fu, 0x10u, &inPropertyData);
              if (v29)
              {
                v30 = v29;
                if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                {
                  CAX4CCString::CAX4CCString(v39, v30);
                  *block = 136315906;
                  *&block[4] = "ExtAudioFile.cpp";
                  *&block[12] = 1024;
                  *&block[14] = 1597;
                  *&block[18] = 2080;
                  *&block[20] = v39;
                  *&block[28] = 2080;
                  *&block[30] = "couldn't set packet table info on audio file";
                  _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", block, 0x26u);
                }

                exception = __cxa_allocate_exception(0x110uLL);
                CAXException::CAXException(exception, "couldn't set packet table info on audio file", v30);
              }
            }
          }
        }
      }

      ExtAudioFile::CopyEncoderCookieToFile(this);
    }

    else
    {
      v17 = 0;
    }

    v18 = *(this + 19);
    if (v18)
    {
      AudioConverterDispose(v18);
      *(this + 19) = 0;
    }

    v19 = *(this + 2);
    if (v19 && *(this + 28) == 1)
    {
      AudioFileClose(v19);
      *(this + 2) = 0;
    }

    if ((*(this + 120) & 1) == 0)
    {
      v20 = *(this + 14);
      if (v20)
      {
        MEMORY[0x193ADF1F0](v20, 0x1000C8077774924);
      }

      *(this + 14) = 0;
      *(this + 27) = 0;
    }

    v21 = *(this + 16);
    if (v21)
    {
      MEMORY[0x193ADF1F0](v21, 0x1000C80451B5BE8);
    }

    *(this + 16) = 0;
    *(this + 34) = 0;
    v22 = *(this + 18);
    if (v22)
    {
      MEMORY[0x193ADF1F0](v22, 0x1000C80451B5BE8);
    }

    *(this + 18) = 0;
    v23 = *(this + 37);
    if (v23)
    {
      MEMORY[0x193ADF1F0](v23, 0x1000C8077774924);
    }

    *(this + 37) = 0;
    *(this + 8) = 0;
  }

  else
  {
    v17 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v17;
}

OSStatus ExtAudioFileDispose(ExtAudioFileRef inExtAudioFile)
{
  v1 = BaseOpaqueObject::ResolveOpaqueRef();
  if (!v1)
  {
    return -50;
  }

  v4 = v1;
  v5 = ExtAudioFile::Close(v1, v2, v3);
  (*(*v4 + 8))(v4);
  return v5;
}

void ExtAudioFile::~ExtAudioFile(ExtAudioFile *this, uint64_t a2, void *a3)
{
  *this = &unk_1F0327008;
  ExtAudioFile::Close(this, a2, a3);
  CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(this + 40, 0);
  MEMORY[0x193ADE5D0](this + 272);
  MEMORY[0x193ADE5D0](this + 264);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

{
  ExtAudioFile::~ExtAudioFile(this, a2, a3);

  JUMPOUT(0x193ADF220);
}

uint64_t ExtAudioFile::AllocateBuffers(uint64_t this, char a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 280);
  if (v2)
  {
    v3 = this;
    if (*(this + 88) <= v2)
    {
      v4 = *(this + 280);
    }

    else
    {
      v4 = *(this + 88);
    }

    *(this + 88) = v4;
    *(this + 92) = v4 / v2;
    if (*(this + 108) != v4)
    {
      *(this + 96) = 1;
      *(this + 104) = *(this + 196);
      if ((*(this + 120) & 1) == 0)
      {
        v5 = *(this + 112);
        if (v5)
        {
          MEMORY[0x193ADF1F0](v5, 0x1000C8077774924);
        }

        operator new[]();
      }

      *(this + 108) = v4;
    }

    if (*(this + 184))
    {
      v6 = *(this + 136);
      if (*(this + 188))
      {
        v7 = 0;
        v8 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v6 = *(this + 136);
    }

    v8 = *(this + 92);
    v7 = 1;
LABEL_20:
    if (v6 != v8)
    {
      v10 = *(this + 128);
      if (v10)
      {
        MEMORY[0x193ADF1F0](v10, 0x1000C80451B5BE8);
      }

      *(v3 + 128) = 0;
      *(v3 + 136) = 0;
      this = *(v3 + 144);
      if (this)
      {
        this = MEMORY[0x193ADF1F0](this, 0x1000C80451B5BE8);
      }

      *(v3 + 144) = 0;
      if (v7)
      {
        v11 = *(v3 + 92);
        operator new[]();
      }
    }

    goto LABEL_27;
  }

  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      CAX4CCString::CAX4CCString(v13, 0xFFFEFBF9);
      *buf = 136315906;
      v15 = "ExtAudioFile.cpp";
      v16 = 1024;
      v17 = 956;
      v18 = 2080;
      v19 = v13;
      v20 = 2080;
      v21 = "file's maximum packet size is 0";
      _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
    }

    exception = __cxa_allocate_exception(0x110uLL);
    CAXException::CAXException(exception, "file's maximum packet size is 0", -66567);
  }

LABEL_27:
  v12 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t ExtAudioFile::GetNumberFrames(AudioFileID *this)
{
  v21 = *MEMORY[0x1E69E9840];
  ioDataSize = 16;
  if (AudioFileGetProperty(this[2], 0x706E666Fu, &ioDataSize, &outPropertyData))
  {
    v2 = *(this + 47);
    v11 = 0;
    v10 = 8;
    Property = AudioFileGetProperty(this[2], 0x70636E74u, &v10, &v11);
    if (Property)
    {
      v7 = Property;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(v12, v7);
        *buf = 136315906;
        v14 = "ExtAudioFile.h";
        v15 = 1024;
        v16 = 121;
        v17 = 2080;
        v18 = v12;
        v19 = 2080;
        v20 = "get audio file's packet count";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "get audio file's packet count", v7);
    }

    result = v11 * v2 - *(this + 20);
  }

  else
  {
    result = (outPropertyData * *(this + 26) + 0.5);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void CADeprecated::CAAutoDelete<CADeprecated::CABufferList>::set(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1 != a2)
  {
    if (v2)
    {
      v5 = v2[1];
      if (v5)
      {
        MEMORY[0x193ADF1F0](v5, 0x1000C8077774924);
      }

      operator delete(v2);
    }

    *a1 = a2;
  }
}

void createHapticCommandWriter(void *a1, int a2)
{
  v3 = a1;
  if (setupLogging(void)::once != -1)
  {
    dispatch_once(&setupLogging(void)::once, &__block_literal_global_2623);
  }

  v4 = v3;
  v5 = v4;
  if (!v4)
  {
    v5 = xpc_null_create();
  }

  v8 = 1;
  v7 = MEMORY[0x1E69E5078] + 16;
  v10 = xpc_null_create();
  v9 = a2;
  applesauce::xpc::object::object(&v11, v5);
  v6 = v10;
  v10 = v11;
  v11 = 0;

  operator new();
}

void sub_18F616E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x193ADE520](&a9);

  _Unwind_Resume(a1);
}

void **applesauce::xpc::object::object(void **a1, void *a2)
{
  v3 = a2;
  *a1 = v3;
  if (!v3)
  {
    v4 = xpc_null_create();
    v5 = *a1;
    *a1 = v4;
  }

  return a1;
}

void SharableMemoryBlock::SharableMemoryBlock(SharableMemoryBlock *this)
{
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = MEMORY[0x1E69E5068] + 16;
  *(this + 4) = 0xFFFFFFFF00000000;
  *(this + 10) = 0;
  *(this + 6) = xpc_null_create();
}

uint64_t AudioFormatProperty_NumberOfChannelsForLayout(const AudioChannelLayout *a1, unsigned int *a2)
{
  *a2 = 0;
  mChannelLayoutTag = a1->mChannelLayoutTag;
  if ((a1->mChannelLayoutTag & 0x80000000) != 0)
  {
    if (mChannelLayoutTag == -267386874)
    {
      mChannelLayoutTag = 6;
      goto LABEL_23;
    }

    if (mChannelLayoutTag == -266338299)
    {
      mChannelLayoutTag = 5;
LABEL_23:
      result = 0;
      *a2 = mChannelLayoutTag;
      return result;
    }
  }

  else
  {
    if (mChannelLayoutTag == 0x10000)
    {
      v6 = vcnt_s8(a1->mChannelBitmap);
      v6.i16[0] = vaddlv_u8(v6);
      mChannelLayoutTag = v6.i32[0];
      goto LABEL_23;
    }

    if (!mChannelLayoutTag)
    {
      mChannelLayoutTag = a1->mNumberChannelDescriptions;
      goto LABEL_23;
    }
  }

  v3 = (mChannelLayoutTag & 0xFFFEFFFF) == 0 || mChannelLayoutTag > 0xFFFEFFFF;
  if (v3 || ((v4 = mChannelLayoutTag & 0xFFFF0000, (mChannelLayoutTag & 0xFFFF0000) != 0x930000) ? (v5 = v4 == -268369920) : (v5 = 1), v5 || v4 == 12451840 || v4 == 12517376 || mChannelLayoutTag == -267386874 || mChannelLayoutTag == -266338299 || (result = 560360820, mChannelLayoutTag - 14417920 >= 0xFF880000) && gAllLayoutTags[HIWORD(mChannelLayoutTag) - 98] == mChannelLayoutTag))
  {
    mChannelLayoutTag = mChannelLayoutTag;
    goto LABEL_23;
  }

  return result;
}

uint64_t AudioFormatProperty_TagForChannelLayout(const AudioChannelLayout *a1, unsigned int *a2)
{
  v21 = 0;
  v4 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v21);
  if (!v4)
  {
    mChannelLayoutTag = a1->mChannelLayoutTag;
    if (a1->mChannelLayoutTag)
    {
      if (mChannelLayoutTag == 0x10000)
      {
        v7 = AudioFormatProperty_LayoutTagForBitmap(a1->mChannelBitmap);
        if (v7 == 0x10000)
        {
          return 560360820;
        }

        else
        {
          v4 = 0;
          *a2 = v7;
        }
      }

      else
      {
        v4 = 0;
        *a2 = mChannelLayoutTag;
      }
    }

    else
    {
      v20 = 0;
      v8 = v21;
      CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v20, 20 * v21 + 12, 0);
      v9 = 0;
      v19 = 0;
      *&v18.mChannelBitmap = 0;
      v10 = 1;
      v11 = v20;
      while (2)
      {
        v12 = v10;
        for (i = 2; i != 122; ++i)
        {
          v14 = gAllLayoutTags[i];
          if ((i & 0x7E) == 0x5C || i == 49)
          {
            v16 = v8;
          }

          else
          {
            v16 = 0;
          }

          v17 = v14 | v16;
          v18.mChannelLayoutTag = v14 | v16;
          if (!AudioFormatProperty_NumberOfChannelsForLayout(&v18, &v19) && v8 == v19 && !AudioFormatProperty_ChannelLayoutForTag(v17, v11) && (equalChannels(a1, v11, v9 & 1) & 1) != 0)
          {
            goto LABEL_27;
          }
        }

        if (!AudioFormatProperty_ChannelLayoutForTag(v8 | 0xF0010000, v11) && (equalChannels(a1, v11, v9 & 1) & 1) != 0)
        {
          v17 = v8 | 0xF0010000;
LABEL_27:
          v4 = 0;
          *a2 = v17;
          goto LABEL_28;
        }

        v10 = 0;
        v9 = 1;
        if (v12)
        {
          continue;
        }

        break;
      }

      v4 = 560360820;
LABEL_28:
      if (v11)
      {
        free(v11);
      }
    }
  }

  return v4;
}

void sub_18F61739C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SetDefaultChannelPosition(uint64_t result)
{
  if ((*(result + 4) & 3) != 0)
  {
    return result;
  }

  *(result + 4) = 2;
  *(result + 12) = 0x3F80000000000000;
  v1 = *result;
  if (*result > 207)
  {
    if (v1 > 300)
    {
      if (v1 == 302)
      {
LABEL_12:
        v2 = 1106247680;
        goto LABEL_44;
      }

      if (v1 != 301)
      {
LABEL_45:
        *(result + 4) = 0;
        *(result + 16) = 0;
        return result;
      }
    }

    else if (v1 != 208)
    {
      if (v1 != 209)
      {
        goto LABEL_45;
      }

      goto LABEL_12;
    }

LABEL_11:
    v2 = -1041235968;
LABEL_44:
    *(result + 8) = v2;
    return result;
  }

  switch(v1)
  {
    case 1:
      goto LABEL_11;
    case 2:
      goto LABEL_12;
    case 3:
      *(result + 8) = 0;
      return result;
    case 5:
    case 10:
      v2 = -1025769472;
      goto LABEL_44;
    case 6:
    case 11:
      v2 = 1121714176;
      goto LABEL_44;
    case 7:
      v2 = -1049624576;
      goto LABEL_44;
    case 8:
      v2 = 1097859072;
      goto LABEL_44;
    case 9:
    case 44:
      v2 = 1127481344;
      goto LABEL_44;
    case 12:
      v3 = 0x42B4000000000000;
      goto LABEL_42;
    case 13:
      v3 = 0x42340000C2340000;
      goto LABEL_42;
    case 14:
      v3 = 0x41F0000000000000;
      goto LABEL_42;
    case 15:
      v3 = vdup_n_s32(0x42340000u);
      goto LABEL_42;
    case 16:
      v3 = 0x41F00000C3160000;
      goto LABEL_42;
    case 17:
      v3 = 0x41F0000043340000;
      goto LABEL_42;
    case 18:
      v3 = 0x41F0000043160000;
      goto LABEL_42;
    case 33:
    case 63:
      v2 = -1021968384;
      goto LABEL_44;
    case 34:
    case 64:
      v2 = 1125515264;
      goto LABEL_44;
    case 35:
    case 65:
      v2 = -1032847360;
      goto LABEL_44;
    case 36:
    case 66:
      v2 = 1114636288;
      goto LABEL_44;
    case 37:
      v2 = -1036779520;
      goto LABEL_44;
    case 49:
      v3 = 0x42340000C2B40000;
      goto LABEL_42;
    case 51:
      v3 = 0x4234000042B40000;
      goto LABEL_42;
    case 52:
      v3 = 0x42340000C3070000;
      goto LABEL_42;
    case 53:
      v3 = 0x4234000043340000;
      goto LABEL_42;
    case 54:
      v3 = 0x4234000043070000;
      goto LABEL_42;
    case 55:
      v2 = -1028390912;
      goto LABEL_44;
    case 56:
      v2 = 1119092736;
      goto LABEL_44;
    case 57:
      v3 = 0xC1700000C2340000;
      goto LABEL_42;
    case 58:
      v3 = 0xC170000042340000;
      goto LABEL_42;
    case 59:
      v3 = 0xC170000000000000;
      goto LABEL_42;
    case 60:
      v3 = 0x420C0000C2DC0000;
      goto LABEL_42;
    case 61:
      v3 = 0x420C000042DC0000;
LABEL_42:
      *(result + 8) = v3;
      break;
    case 62:
      v2 = 1110704128;
      goto LABEL_44;
    default:
      goto LABEL_45;
  }

  return result;
}

uint64_t checkEnvVar(const char *a1)
{
  result = getenv(a1);
  if (result)
  {
    std::string::basic_string[abi:ne200100]<0>(&v2, result);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 != 1)
      {
        return v4 != 2 || v2 != 20302;
      }

      return v2 != 48;
    }

    if (v3 == 1)
    {
      if (*v2 != 48)
      {
LABEL_10:
        operator delete(v2);
        return 1;
      }
    }

    else if (v3 != 2 || *v2 != 20302)
    {
      goto LABEL_10;
    }

    operator delete(v2);
    return 0;
  }

  return result;
}

uint64_t ExtAudioFile::SetConverterChannelLayout(uint64_t this, const AudioChannelLayout *a2, const CAAudioChannelLayout *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    goto LABEL_26;
  }

  v4 = a2;
  v5 = this;
  this = CAAudioChannelLayout::NumberChannels((*a3 + 16), a2);
  if (!this)
  {
    goto LABEL_26;
  }

  v7 = *a3;
  if (*a3)
  {
    v8 = CAAudioChannelLayout::NumberChannels((v7 + 16), v6) < 3;
    v7 = *a3;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v5 + 152);
  if (v4)
  {
    if (v7)
    {
      v10 = *(v7 + 12);
    }

    else
    {
      v10 = 0;
    }

    v19 = v10;
    v20 = 1868786720;
    v18 = v7 + 16;
    v26 = &v20;
    v27 = &v19;
    v28 = &v18;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    *&buf[8] = &v26;
    this = with_resolved(v9, buf);
    if (!v8 && this && this != 1869627199)
    {
      v12 = this;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&v26, v12);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 795;
        v22 = 2080;
        v23 = &v26;
        v24 = 2080;
        v25 = "couldn't set converter's output channel layout";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "couldn't set converter's output channel layout", v12);
    }
  }

  else
  {
    if (v7)
    {
      v11 = *(v7 + 12);
    }

    else
    {
      v11 = 0;
    }

    v19 = v11;
    v20 = 1768123424;
    v18 = v7 + 16;
    v26 = &v20;
    v27 = &v19;
    v28 = &v18;
    *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterSetProperty::$_0>;
    *&buf[8] = &v26;
    this = with_resolved(v9, buf);
    if (!v8 && this && this != 1869627199)
    {
      v16 = this;
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&v26, v16);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 799;
        v22 = 2080;
        v23 = &v26;
        v24 = 2080;
        v25 = "couldn't set converter's input channel layout";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      v17 = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(v17, "couldn't set converter's input channel layout", v16);
    }
  }

  if (*(v5 + 32) == 3)
  {
    v14 = *MEMORY[0x1E69E9840];

    return ExtAudioFile::FileFormatChanged(v5, 0, 0, 0);
  }

  else
  {
LABEL_26:
    v15 = *MEMORY[0x1E69E9840];
  }

  return this;
}

uint64_t ExtAudioFile::Seek(uint64_t this, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(this + 56) != a2)
  {
    if ((a2 & 0x8000000000000000) != 0 || (v3 = this, *(this + 32) != 1) || *(this + 232) != 1819304813)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        CAX4CCString::CAX4CCString(&outPropertyData, 0xFFFEFBF8);
        *buf = 136315906;
        *&buf[4] = "ExtAudioFile.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1126;
        v23 = 2080;
        p_outPropertyData = &outPropertyData;
        v25 = 2080;
        v26 = "seek to frame in audio file";
        _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x110uLL);
      CAXException::CAXException(exception, "seek to frame in audio file", -66568);
    }

    v4 = *(this + 188);
    v5 = a2;
    if (v4 != 1)
    {
      if (v4)
      {
        v5 = a2 / v4;
      }

      else
      {
        outPropertyData = a2;
        ioDataSize = 24;
        Property = AudioFileGetProperty(*(this + 16), 0x6672706Bu, &ioDataSize, &outPropertyData);
        if (Property)
        {
          v16 = Property;
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v21, v16);
            *buf = 136315906;
            *&buf[4] = "ExtAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1083;
            v23 = 2080;
            p_outPropertyData = v21;
            v25 = 2080;
            v26 = "packet <-> frame translation failed for format with variable frames/packet";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          v17 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v17, "packet <-> frame translation failed for format with variable frames/packet", v16);
        }

        v5 = v28;
      }
    }

    *buf = v5;
    LODWORD(outPropertyData) = 16;
    v7 = AudioFileGetProperty(*(v3 + 16), 0x706B726Cu, &outPropertyData, buf);
    v8 = *&buf[8];
    if (v7)
    {
      v8 = 0;
    }

    v9 = (v5 - v8) & ~((v5 - v8) >> 63);
    *(v3 + 48) = v9;
    v10 = *(v3 + 188);
    if (v10 != 1)
    {
      if (v10)
      {
        v9 *= v10;
      }

      else
      {
        v28 = v9;
        ioDataSize = 24;
        v11 = AudioFileGetProperty(*(v3 + 16), 0x706B6672u, &ioDataSize, &outPropertyData);
        if (v11)
        {
          v18 = v11;
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v21, v18);
            *buf = 136315906;
            *&buf[4] = "ExtAudioFile.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1051;
            v23 = 2080;
            p_outPropertyData = v21;
            v25 = 2080;
            v26 = "packet <-> frame translation unimplemented for format with variable frames/packet";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          v19 = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(v19, "packet <-> frame translation unimplemented for format with variable frames/packet", v18);
        }

        v9 = outPropertyData;
      }
    }

    v12 = v9 - *(v3 + 80);
    *(v3 + 56) = v12;
    this = *(v3 + 152);
    if (this)
    {
      *buf = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterReset::$_0>;
      *&buf[8] = &outPropertyData;
      this = with_resolved(this, buf);
      v12 = *(v3 + 56);
    }

    v13 = *(v3 + 216);
    *(v3 + 84) = (((a2 - v12) & ~((a2 - v12) >> 31)) * v13 + 0.5);
    *(v3 + 56) = a2;
    *(v3 + 64) = (v13 * a2 + 0.5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t CAFAudioFile::PacketToRollDistance(CAFAudioFile *this, AudioPacketRollDistanceTranslation *a2)
{
  if ((*(*this + 280))(this))
  {
    v4 = *(this + 3);
    v5 = *(this + 10);
    if (v5)
    {
      v6 = *(this + 11) == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6 || *(this + 15) == 0;
    v8 = 0;
    v9 = -1;
    v21 = -1;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    memset(__p, 0, sizeof(__p));
    v10 = (v4 + v4);
    mPacket = a2->mPacket;
    for (i = 16 * a2->mPacket; ; i -= 16)
    {
      v17 = xmmword_18F901C70;
      if (mPacket < v9 || mPacket >= v9 + v20)
      {
        v20 = 0;
        if (CAFAudioFile::LoadPacketsForScanning(this, mPacket, -1, v10, &v21, &v20, v19, __p) == 1885563711 || !v20)
        {
          break;
        }

        v9 = v21;
      }

      if (v7)
      {
        v13 = (mPacket - v9) * v5;
        v14 = v5;
      }

      else
      {
        v15 = __p[0] + i + -16 * v9;
        v14 = *(v15 + 3);
        v13 = *v15;
      }

      CAFAudioFile::GetPacketDependencyForPacket(this, v19[0] + v13, v14, &v17);
      if (v17)
      {
        if (v8 >= DWORD1(v17))
        {
          break;
        }
      }

      --mPacket;
      ++v8;
    }

    a2->mRollDistance = v8;
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v19[0])
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    AudioFileObject::PacketToRollDistance(this, a2);
  }

  return 0;
}

void sub_18F618108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
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

OSStatus AudioConverterFillComplexBuffer(AudioConverterRef inAudioConverter, AudioConverterComplexInputDataProc inInputDataProc, void *inInputDataProcUserData, UInt32 *ioOutputDataPacketSize, AudioBufferList *outOutputData, AudioStreamPacketDescription *outPacketDescription)
{
  v12 = inInputDataProcUserData;
  v13 = inInputDataProc;
  v10 = outOutputData;
  v11 = ioOutputDataPacketSize;
  v9 = outPacketDescription;
  v7[0] = &v13;
  v7[1] = &v12;
  v7[2] = &v11;
  v7[3] = &v10;
  v7[4] = &v9;
  v8[0] = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBuffer::$_0>;
  v8[1] = v7;
  return with_resolved(inAudioConverter, v8);
}

OSStatus ExtAudioFileRead(ExtAudioFileRef inExtAudioFile, UInt32 *ioNumberFrames, AudioBufferList *ioData)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = -50;
  if (ioNumberFrames)
  {
    if (ioData)
    {
      v6 = BaseOpaqueObject::ResolveOpaqueRef();
      if (v6)
      {
        v7 = v6;
        CrashIfClientProvidedBogusAudioBufferList();
        if (*(v7 + 152) && (*(v7 + 236) & 0x20) != 0)
        {
          v9 = *(v7 + 252);
        }

        else
        {
          v9 = 1;
        }

        if (ioData->mNumberBuffers != v9)
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v47, 0xFFFFFFCE);
            *buf = 136315906;
            v49 = "ExtAudioFile.cpp";
            v50 = 1024;
            v51 = 1173;
            v52 = 2080;
            v53 = v47;
            v54 = 2080;
            v55 = "wrong number of buffers";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "wrong number of buffers", -50);
          goto LABEL_73;
        }

        v10 = *(v7 + 284);
        if (!v10)
        {
          if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v47, 0xFFFEFBF9);
            *buf = 136315906;
            v49 = "ExtAudioFile.cpp";
            v50 = 1024;
            v51 = 1175;
            v52 = 2080;
            v53 = v47;
            v54 = 2080;
            v55 = "client maximum packet size is 0";
            _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
          }

          exception = __cxa_allocate_exception(0x110uLL);
          CAXException::CAXException(exception, "client maximum packet size is 0", -66567);
          goto LABEL_73;
        }

        v11 = *ioNumberFrames;
        if (!*(v7 + 112))
        {
          ExtAudioFile::AllocateBuffers(v7, 0);
          v10 = *(v7 + 284);
        }

        mDataByteSize = ioData->mBuffers[0].mDataByteSize;
        v13 = mDataByteSize / v10;
        if (mDataByteSize / v10 < v11)
        {
          v11 = mDataByteSize / v10;
        }

        v46 = v11;
        *(v7 + 308) = -1;
        if (*(v7 + 244) == 1)
        {
          v14 = *(v7 + 84);
          if (v14 >= 1)
          {
            do
            {
              if (v13 < v14)
              {
                v14 = v13;
              }

              ioOutputDataPacketSize = v14;
              v15 = *(v7 + 188);
              if (v15)
              {
                *(v7 + 308) = (v14 + v15 - 1) / v15;
              }

              v16 = *(v7 + 152);
              if (v16)
              {
                v17 = AudioConverterFillComplexBuffer(v16, ExtAudioFile::ReadInputProc, v7, &ioOutputDataPacketSize, ioData, 0);
                if (v17)
                {
                  v42 = v17;
                  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                  {
                    CAX4CCString::CAX4CCString(v47, v42);
                    *buf = 136315906;
                    v49 = "ExtAudioFile.cpp";
                    v50 = 1024;
                    v51 = 1197;
                    v52 = 2080;
                    v53 = v47;
                    v54 = 2080;
                    v55 = "convert audio packets (pcm read)";
                    _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
                  }

                  exception = __cxa_allocate_exception(0x110uLL);
                  CAXException::CAXException(exception, "convert audio packets (pcm read)", v42);
                  goto LABEL_73;
                }
              }

              else
              {
                InputProc = ExtAudioFile::ReadInputProc(0, &ioOutputDataPacketSize, ioData, 0, v7, v8);
                if (InputProc)
                {
                  v44 = InputProc;
                  if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
                  {
                    CAX4CCString::CAX4CCString(v47, v44);
                    *buf = 136315906;
                    v49 = "ExtAudioFile.cpp";
                    v50 = 1024;
                    v51 = 1195;
                    v52 = 2080;
                    v53 = v47;
                    v54 = 2080;
                    v55 = "read audio file";
                    _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
                  }

LABEL_72:
                  exception = __cxa_allocate_exception(0x110uLL);
                  CAXException::CAXException(exception, "read audio file", v44);
LABEL_73:
                }
              }

              v19 = ioOutputDataPacketSize;
              if (!ioOutputDataPacketSize)
              {
                goto LABEL_56;
              }

              v14 = *(v7 + 84) - ioOutputDataPacketSize;
              *(v7 + 84) = v14;
              mNumberBuffers = ioData->mNumberBuffers;
              if (mNumberBuffers >= 1)
              {
                v21 = 0;
                v22 = (mNumberBuffers + 3) & 0xFFFFFFFC;
                v23 = vdupq_n_s64(mNumberBuffers - 1);
                v24 = &ioData[-1].mNumberBuffers + 4 * mNumberBuffers + 1;
                do
                {
                  v25 = vdupq_n_s64(v21);
                  v26 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_18F9016C0)));
                  if (vuzp1_s16(v26, *v23.i8).u8[0])
                  {
                    v24[4] = mDataByteSize;
                  }

                  if (vuzp1_s16(v26, *&v23).i8[2])
                  {
                    *v24 = mDataByteSize;
                  }

                  if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v25, xmmword_18F9016B0)))).i32[1])
                  {
                    *(v24 - 4) = mDataByteSize;
                    *(v24 - 8) = mDataByteSize;
                  }

                  v21 += 4;
                  v24 -= 16;
                }

                while (v22 != v21);
              }
            }

            while (v14 > 0);
          }
        }

        v27 = *(v7 + 188);
        if (v27)
        {
          *(v7 + 308) = v11 / v27 + 1;
        }

        v28 = *(v7 + 152);
        if (v28)
        {
          if (!v11)
          {
            v19 = 0;
LABEL_56:
            v3 = 0;
            *ioNumberFrames = v19;
            goto LABEL_57;
          }

          v29 = AudioConverterFillComplexBuffer(v28, ExtAudioFile::ReadInputProc, v7, &v46, ioData, 0);
          if (v29)
          {
            v30 = v29;
            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(v47, v30);
              *buf = 136315906;
              v49 = "ExtAudioFile.cpp";
              v50 = 1024;
              v51 = 1222;
              v52 = 2080;
              v53 = v47;
              v54 = 2080;
              v55 = "convert audio packets (read)";
              _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
            }

            exception = __cxa_allocate_exception(0x110uLL);
            CAXException::CAXException(exception, "convert audio packets (read)", v30);
            goto LABEL_73;
          }
        }

        else
        {
          v32 = ExtAudioFile::ReadInputProc(0, &v46, ioData, 0, v7, v8);
          if (v32)
          {
            v44 = v32;
            if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
            {
              CAX4CCString::CAX4CCString(v47, v44);
              *buf = 136315906;
              v49 = "ExtAudioFile.cpp";
              v50 = 1024;
              v51 = 1217;
              v52 = 2080;
              v53 = v47;
              v54 = 2080;
              v55 = "read audio file";
              _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
            }

            goto LABEL_72;
          }
        }

        v19 = v46;
        if (*(v7 + 244) == 1)
        {
          v33 = *(v7 + 72);
          v34 = *(v7 + 64) + v46;
          if (v33 && v34 > v33)
          {
            if (v34 - v33 <= v46)
            {
              v35 = v34 - v33;
            }

            else
            {
              v35 = v46;
            }

            v36 = ioData->mNumberBuffers;
            if (v36 >= 1)
            {
              v37 = *(v7 + 248) * v35;
              v38 = v36 + 1;
              v39 = (ioData + 16 * v36 - 4);
              do
              {
                v39->mNumberBuffers -= v37;
                v39 = (v39 - 16);
                --v38;
              }

              while (v38 > 1);
            }

            v19 -= v35;
            v34 = v33;
          }

          *(v7 + 56) = (v34 / *(v7 + 216));
          *(v7 + 64) = v34;
        }

        goto LABEL_56;
      }
    }
  }

LABEL_57:
  v40 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_18F618914(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    if (a2 == 4)
    {
      v5 = *(__cxa_begin_catch(exception_object) + 2);
      __cxa_end_catch();
    }

    else if (a2 == 3)
    {
      v6 = *(__cxa_begin_catch(exception_object) + 66);
      __cxa_end_catch();
    }

    else
    {
      v7 = __cxa_begin_catch(exception_object);
      if (a2 == 2)
      {
        v8 = *v7;
        __cxa_end_catch();
      }

      else
      {
        __cxa_end_catch();
      }
    }

    JUMPOUT(0x18F618558);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterFillComplexBuffer::$_0>(void ***a1, uint64_t a2)
{
  v3 = (*(*a2 + 80))(a2, ***a1, *(*a1)[1], *(*a1)[2], *(*a1)[3], *(*a1)[4], 0, 0);
  if (isRenderStatusConcerning(v3))
  {
    v4 = (*(*a2 + 104))(a2) ? 15 : 11;
    v5 = _os_log_pack_size() + 88;
    message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v5 + v4, 16);
    if (message)
    {
      v7 = message;
      v8 = (message + v5);
      v9 = _os_log_pack_fill();
      if ((*(*a2 + 104))(a2))
      {
        v10 = "out-of-process";
      }

      else
      {
        v10 = "in-process";
      }

      stpcpy(v8, v10);
      *v9 = 134218498;
      *(v9 + 4) = a2;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v8;
      *(v9 + 22) = 1024;
      *(v9 + 24) = v3;
      caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v7);
    }
  }

  return v3;
}

uint64_t ExtAudioFile::AlignIO(ExtAudioFile *this, uint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(this + 46);
  if (v3 && v3 * a2 >= (3 * *(this + 22)) >> 2)
  {
    v4 = *(this + 5);
    v6 = *(this + 6);
    v5 = (this + 40);
    if (v4 < 0)
    {
      ioDataSize = 8;
      Property = AudioFileGetProperty(*(this + 2), 0x646F6666u, &ioDataSize, v5);
      if (Property)
      {
        v15 = Property;
        if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          CAX4CCString::CAX4CCString(v18, v15);
          *buf = 136315906;
          v20 = "ExtAudioFile.cpp";
          v21 = 1024;
          v22 = 479;
          v23 = 2080;
          v24 = v18;
          v25 = 2080;
          v26 = "couldn't get file's data offset";
          _os_log_impl(&dword_18F5DF000, 0, OS_LOG_TYPE_ERROR, "%25s:%-5d about to throw %s: %s", buf, 0x26u);
        }

        exception = __cxa_allocate_exception(0x110uLL);
        CAXException::CAXException(exception, "couldn't get file's data offset", v15);
      }

      v4 = *v5;
    }

    v8 = v4 + (v6 + v2) * v3;
    if ((v8 & 0xFFF) != 0)
    {
      LODWORD(v9) = (7 * v2) >> 3;
      v9 = v9 <= 1 ? 1 : v9;
      v10 = v4 + (v6 + v9) * v3;
      v11 = v8 & 0xFFFFFFFFFFFFF000;
      if (v11 > v10)
      {
        v12 = v11 - v4;
        while (v12 != v12 / v3 * v3)
        {
          v11 -= 4096;
          v12 -= 4096;
          if (v11 <= v10)
          {
            goto LABEL_16;
          }
        }

        v2 = (v12 / v3) - v6;
      }
    }
  }

LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t AudioFileObject::ReadPacketData(AudioFileObject *this, unsigned __int8 a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a6 && *a6)
  {
    if (*(this + 10))
    {
      v7 = *(*this + 112);
      v8 = *MEMORY[0x1E69E9840];

      return v7();
    }

    if (a4)
    {
      v7 = *(*this + 104);
      v13 = *MEMORY[0x1E69E9840];

      return v7();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "AudioFileObject.cpp";
      v16 = 1024;
      v17 = 916;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  invalid outPacketDescriptions parameter";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "AudioFileObject.cpp";
    v16 = 1024;
    v17 = 911;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  invalid ioNumPackets parameter";
LABEL_9:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 0x12u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return 4294967246;
}

uint64_t AudioFormatProperty_MatrixMixMap(const AudioChannelLayout *const *a1, const AudioChannelLayout *a2, float *a3, _DWORD *a4)
{
  v197 = *MEMORY[0x1E69E9840];
  __dst = 0;
  v195 = 0;
  v193 = 0;
  v8 = AudioFormatProperty_NumberOfChannelsForLayout(a1, &v193);
  if (v8)
  {
    goto LABEL_2;
  }

  v192 = 0;
  v9 = AudioFormatProperty_NumberOfChannelsForLayout(a2, &v192);
  if (!v9)
  {
    v13 = v192;
    v12 = v193;
    v14 = v192 * v193;
    if (!a4)
    {
      v9 = 0;
      *a3 = v14;
      goto LABEL_4;
    }

    if (v14 > *a3)
    {
      v9 = 4294967246;
      goto LABEL_4;
    }

    *a3 = v14;
    mChannelLayoutTag = a2->mChannelLayoutTag;
    v16 = *a1;
    v190 = *a1;
    v191 = mChannelLayoutTag;
    *v188 = v12;
    v17 = (20 * v12 + 12);
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&v195, v17, 0);
    CADeprecated::CAAutoFree<unsigned char>::allocBytes(&__dst, (20 * v13 + 12), 0);
    if (mChannelLayoutTag == 0x10000)
    {
      v19 = __dst;
      AudioFormatProperty_ChannelLayoutForBitmap(a2->mChannelBitmap, __dst, v18);
      v191 = AudioFormatProperty_LayoutTagForBitmap(a2->mChannelBitmap);
    }

    else if (mChannelLayoutTag)
    {
      v19 = __dst;
      v8 = AudioFormatProperty_ChannelLayoutForTag(a2->mChannelLayoutTag, __dst);
      if (v8)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v19 = __dst;
      memcpy(__dst, a2, (20 * v13 + 12));
      AudioFormatProperty_TagForChannelLayout(v19, &v191);
    }

    if (v16 == 0x10000)
    {
      v21 = v195;
      AudioFormatProperty_ChannelLayoutForBitmap(*(a1 + 1), v195, v20);
      v190 = AudioFormatProperty_LayoutTagForBitmap(*(a1 + 1));
      goto LABEL_23;
    }

    if (!v16)
    {
      v21 = v195;
      memcpy(v195, a1, v17);
      AudioFormatProperty_TagForChannelLayout(v21, &v190);
      goto LABEL_23;
    }

    v21 = v195;
    v8 = AudioFormatProperty_ChannelLayoutForTag(*a1, v195);
    if (!v8)
    {
LABEL_23:
      mNumberChannelDescriptions = v21->mNumberChannelDescriptions;
      if (mNumberChannelDescriptions)
      {
        mChannelDescriptions = v21->mChannelDescriptions;
        while (1)
        {
          mChannelLabel = mChannelDescriptions->mChannelLabel;
          if (mChannelDescriptions->mChannelLabel <= 207)
          {
            break;
          }

          if (mChannelLabel <= 300)
          {
            if (mChannelLabel == 208)
            {
              goto LABEL_37;
            }

            if (mChannelLabel != 209)
            {
              goto LABEL_39;
            }

LABEL_36:
            mChannelLabel = 2;
            goto LABEL_39;
          }

          if (mChannelLabel == 301)
          {
            goto LABEL_37;
          }

          if (mChannelLabel == 302)
          {
            goto LABEL_36;
          }

LABEL_39:
          mChannelDescriptions->mChannelLabel = mChannelLabel;
          ++mChannelDescriptions;
          if (!--mNumberChannelDescriptions)
          {
            goto LABEL_40;
          }
        }

        if (mChannelLabel == 42)
        {
          mChannelLabel = 3;
          goto LABEL_39;
        }

        if (mChannelLabel == 206)
        {
LABEL_37:
          mChannelLabel = 1;
          goto LABEL_39;
        }

        if (mChannelLabel != 207)
        {
          goto LABEL_39;
        }

        goto LABEL_36;
      }

LABEL_40:
      v25 = v19->mNumberChannelDescriptions;
      if (v25)
      {
        v26 = v19->mChannelDescriptions;
        while (1)
        {
          v27 = v26->mChannelLabel;
          if (v26->mChannelLabel <= 207)
          {
            break;
          }

          if (v27 <= 300)
          {
            if (v27 == 208)
            {
              goto LABEL_54;
            }

            if (v27 != 209)
            {
              goto LABEL_56;
            }

LABEL_53:
            v27 = 2;
            goto LABEL_56;
          }

          if (v27 == 301)
          {
            goto LABEL_54;
          }

          if (v27 == 302)
          {
            goto LABEL_53;
          }

LABEL_56:
          v26->mChannelLabel = v27;
          ++v26;
          if (!--v25)
          {
            goto LABEL_57;
          }
        }

        if (v27 == 42)
        {
          v27 = 3;
          goto LABEL_56;
        }

        if (v27 == 206)
        {
LABEL_54:
          v27 = 1;
          goto LABEL_56;
        }

        if (v27 != 207)
        {
          goto LABEL_56;
        }

        goto LABEL_53;
      }

LABEL_57:
      octagonalCompatibility(v21, v19);
      singleSurroundPairCompatibility(v21, v19);
      bzero(a4, 4 * *a3);
      v28 = v19->mNumberChannelDescriptions;
      if (v28)
      {
        v29 = v19->mChannelDescriptions;
        v30 = v28 - 1;
        v31 = v19->mChannelDescriptions;
        do
        {
          v32 = HIWORD(v31->mChannelLabel) << 16;
          v33 = v30-- != 0;
          v34 = v33;
          if (v32 != 0x10000)
          {
            break;
          }

          ++v31;
        }

        while ((v34 & 1) != 0);
        if (v32 == 0x10000)
        {
          v35 = v21->mNumberChannelDescriptions;
          if (!v35)
          {
            goto LABEL_114;
          }

          v36 = v21->mChannelDescriptions;
          v37 = v35 - 1;
          do
          {
            v38 = HIWORD(v36->mChannelLabel) << 16;
            v39 = v38 == 0x10000 || v37-- == 0;
            ++v36;
          }

          while (!v39);
          if (v38 != 0x10000)
          {
LABEL_114:
            if (v13)
            {
              for (i = 0; i != v13; i = (i + 1))
              {
                mChannelLabel_low = LOWORD(v29->mChannelLabel);
                ++v29;
                v61 = mChannelLabel_low;
                if (mChannelLabel_low < v188[0])
                {
                  a4[i + v61 * v13] = 1065353216;
                }
              }
            }

            goto LABEL_171;
          }
        }
      }

      v40 = v190;
      if (!v190)
      {
        v50 = *(a1 + 2);
        if (v50)
        {
          v51 = a1 + 3;
          v52 = v50 - 1;
          v53 = a1 + 12;
          do
          {
            v54 = *(v53 + 1) << 16;
            v33 = v52-- != 0;
            v55 = v33;
            if (v54 != 0x10000)
            {
              break;
            }

            v53 += 20;
          }

          while ((v55 & 1) != 0);
          if (v54 == 0x10000)
          {
            v56 = -65536;
            do
            {
              v58 = *v51;
              v51 += 5;
              v57 = v58;
              if (v58 - 0x10000 < v13)
              {
                a4[v56 + v57] = 1065353216;
              }

              v56 += v13;
              --v50;
            }

            while (v50);
            goto LABEL_171;
          }
        }
      }

      if (v188[0])
      {
        v41 = 0;
        v42 = 0;
        do
        {
          v43 = v21->mChannelDescriptions[v41].mChannelLabel;
          if (HIWORD(v43) || ((v44 = v21->mChannelDescriptions[v41].mChannelLabel, v44 <= 0x2D) ? (v45 = ((1 << v43) & 0x3B0000070000) == 0) : (v45 = 1), !v45 || v44 - 304 < 2 || v44 == 400))
          {
            v46 = v19->mChannelDescriptions;
            v47 = v13;
            if (v13)
            {
              do
              {
                v48 = v46->mChannelLabel;
                ++v46;
                if (v43 == v48)
                {
                  a4[v42] = 1065353216;
                }

                ++v42;
                v47 = (v47 - 1);
              }

              while (v47);
            }
          }

          else
          {
            v42 += v13;
          }

          ++v41;
        }

        while (v41 != *v188);
      }

      if (v40 == 6750210)
      {
        v49 = v191;
        if (v191 > 6750209)
        {
          if (v191 > 6946817)
          {
            if (v191 == 6946818)
            {
              goto LABEL_124;
            }

            if (v191 == 8519688)
            {
              goto LABEL_128;
            }

            goto LABEL_129;
          }

          goto LABEL_112;
        }
      }

      else
      {
        if (v40 != 8519688)
        {
          goto LABEL_129;
        }

        v49 = v191;
        if (v191 > 6750209)
        {
          if (v191 > 6946817)
          {
            if (v191 != 6946818)
            {
              if (v191 == 8519688)
              {
                SetMatrixCoefficient(v21, v19, 1, 1, a4, 1.0);
                SetMatrixCoefficient(v21, v19, 2, 2, a4, 1.0);
                SetMatrixCoefficient(v21, v19, 3, 3, a4, 1.0);
                SetMatrixCoefficient(v21, v19, 4, 4, a4, 1.0);
                SetMatrixCoefficient(v21, v19, 5, 5, a4, 1.0);
                SetMatrixCoefficient(v21, v19, 6, 6, a4, 1.0);
LABEL_128:
                SetMatrixCoefficient(v21, v19, 38, 38, a4, 1.0);
                v63 = 1.0;
                v64 = v21;
                v65 = v19;
                v66 = 39;
LABEL_168:
                v67 = 39;
                goto LABEL_169;
              }

              goto LABEL_129;
            }

LABEL_124:
            SetMatrixCoefficient(v21, v19, 38, 1, a4, 1.0);
            v63 = 1.0;
            v64 = v21;
            v65 = v19;
            v66 = 39;
            goto LABEL_125;
          }

LABEL_112:
          if (v49 == 6750210)
          {
            goto LABEL_128;
          }

          v59 = 6881282;
          goto LABEL_123;
        }
      }

      if (v49 == 6553601)
      {
        SetMatrixCoefficient(v21, v19, 38, 3, a4, 1.0);
        v63 = 1.0;
        v64 = v21;
        v65 = v19;
        v66 = 39;
        goto LABEL_156;
      }

      if (v49 == 6619138)
      {
        goto LABEL_124;
      }

      v59 = 6684674;
LABEL_123:
      if (v49 == v59)
      {
        goto LABEL_124;
      }

LABEL_129:
      HIDWORD(v69) = v40 - 6619138;
      LODWORD(v69) = v40 - 6619138;
      v68 = v69 >> 16;
      if (v68 > 5 || ((1 << v68) & 0x33) == 0)
      {
        goto LABEL_138;
      }

      if (v191 <= 6750209)
      {
        if (v191 == -267386874)
        {
          SetMatrixCoefficient(v21, v19, 1, 1, a4, 1.0);
          SetMatrixCoefficient(v21, v19, 2, 2, a4, 1.0);
        }

        else if (v191 != -266338299)
        {
LABEL_138:
          if (v40 != 6553601)
          {
            goto LABEL_143;
          }

          if (v191 == -267386874)
          {
            SetMatrixCoefficient(v21, v19, 3, 1, a4, 1.0);
            SetMatrixCoefficient(v21, v19, 3, 2, a4, 1.0);
            v63 = 1.0;
            v64 = v21;
            v65 = v19;
            v66 = 3;
            v67 = 0x20000;
            goto LABEL_169;
          }

          if (v191 != -266338299)
          {
            if (v191 == 6684674)
            {
              SetMatrixCoefficient(v21, v19, 3, 1, a4, 1.0);
              v63 = 1.0;
              v64 = v21;
              v65 = v19;
              v66 = 3;
              goto LABEL_125;
            }

LABEL_143:
            ChannelLabelReduceMatrixStereo(v21);
            ChannelLabelReduceMatrixStereo(v19);
            ABitmapForCompare = AudioFormatProperty_GetABitmapForCompare(a2);
            v71 = AudioFormatProperty_GetABitmapForCompare(a1);
            if (ABitmapForCompare && v71 && (v71 & ~ABitmapForCompare & 0xFFFFFFF7) == 0)
            {
              if (v188[0])
              {
                v73 = 0;
                v74 = 0;
                do
                {
                  if (v13)
                  {
                    v75 = v21->mChannelDescriptions[v73].mChannelLabel;
                    v76 = v19->mChannelDescriptions;
                    v77 = v13;
                    do
                    {
                      v78 = v76->mChannelLabel;
                      ++v76;
                      if (v75 == v78)
                      {
                        a4[v74] = 1065353216;
                      }

                      ++v74;
                      v77 = (v77 - 1);
                    }

                    while (v77);
                  }

                  ++v73;
                }

                while (v73 != *v188);
              }

              optionallyMixInNonSpeakerChannels(v21, v188[0], v13, a4, v72);
              goto LABEL_171;
            }

            v79 = AudioFormatProperty_GetABitmapForCompare(v19);
            v80 = AudioFormatProperty_GetABitmapForCompare(v21);
            v82 = v80;
            if ((v79 & 0x825D0000) == 0 && v79 && v80 && (v80 & 0x825D0000) == 0)
            {
              if ((v80 & 4) == 0)
              {
                goto LABEL_179;
              }

              if ((v79 & 4) != 0)
              {
                v87 = 1.0;
                v83 = v21;
                v84 = v19;
                v85 = 3;
                v86 = a4;
              }

              else
              {
                if ((v79 & 3) == 0)
                {
                  goto LABEL_179;
                }

                SetMatrixCoefficient(v21, v19, 3, 1, a4, 0.70711);
                v83 = v21;
                v84 = v19;
                v85 = 2;
                v86 = a4;
                v87 = 0.70711;
              }

              SetMatrixCoefficient(v83, v84, 3, v85, v86, v87);
LABEL_179:
              if ((v82 & 3) == 0)
              {
                goto LABEL_185;
              }

              if ((v79 & 7) == 4)
              {
                SetMatrixCoefficient(v21, v19, 1, 3, a4, 0.70711);
                v89 = v21;
                v90 = v19;
                v91 = 3;
                v92 = a4;
                v93 = 0.70711;
              }

              else
              {
                if ((v79 & 3) == 0)
                {
                  goto LABEL_185;
                }

                SetMatrixCoefficient(v21, v19, 1, 1, a4, 1.0);
                v93 = 1.0;
                v89 = v21;
                v90 = v19;
                v91 = 2;
                v92 = a4;
              }

              SetMatrixCoefficient(v89, v90, 2, v91, v92, v93);
LABEL_185:
              if ((v82 & 0x2000) == 0)
              {
                goto LABEL_193;
              }

              if ((v79 & 0x2000) != 0)
              {
                v98 = 1.0;
                v94 = v21;
                v95 = v19;
                v96 = 14;
              }

              else
              {
                if ((v79 & 0x5000) != 0)
                {
                  SetMatrixCoefficient(v21, v19, 14, 13, a4, 0.70711);
                  v94 = v21;
                  v95 = v19;
                  v96 = 15;
LABEL_189:
                  v97 = a4;
                  v98 = 0.70711;
LABEL_192:
                  SetMatrixCoefficient(v94, v95, 14, v96, v97, v98);
                  goto LABEL_193;
                }

                if ((v79 & 7) != 4)
                {
                  if ((v79 & 3) == 0)
                  {
LABEL_193:
                    if ((v82 & 0xC0) == 0)
                    {
                      goto LABEL_208;
                    }

                    if ((~v79 & 0xC0) != 0)
                    {
                      if ((v79 & 7) == 4)
                      {
                        v104 = 1060439283;
                        SetMatrixCoefficient(v21, v19, 7, 3, a4, 0.70711);
                        v100 = v21;
                        v101 = v19;
                        v102 = 3;
                      }

                      else
                      {
                        if ((v79 & 7) == 7)
                        {
                          v104 = 1060439283;
                          v105 = v19;
                          SetMatrixCoefficient(v21, v19, 7, 1, a4, 0.70711);
                          SetMatrixCoefficient(v21, v19, 7, 3, a4, 0.70711);
                          v106 = v21;
                          v107 = v19;
                          v108 = 3;
                          v109 = a4;
                          v110 = 0.70711;
                        }

                        else
                        {
                          if ((v79 & 3) == 0)
                          {
                            goto LABEL_208;
                          }

                          v104 = 1063105495;
                          v105 = v19;
                          SetMatrixCoefficient(v21, v19, 7, 1, a4, 0.86603);
                          SetMatrixCoefficient(v21, v19, 7, 2, a4, 0.5);
                          v110 = 0.5;
                          v106 = v21;
                          v107 = v19;
                          v108 = 1;
                          v109 = a4;
                        }

                        SetMatrixCoefficient(v106, v107, 8, v108, v109, v110);
                        v100 = v21;
                        v101 = v105;
                        v102 = 2;
                      }

                      v103 = a4;
                      v99 = *&v104;
                    }

                    else
                    {
                      SetMatrixCoefficient(v21, v19, 7, 7, a4, 1.0);
                      v99 = 1.0;
                      v100 = v21;
                      v101 = v19;
                      v102 = 8;
                      v103 = a4;
                    }

                    SetMatrixCoefficient(v100, v101, 8, v102, v103, v99);
LABEL_208:
                    v189 = v79 & 0x30;
                    if ((v82 & 0x100) == 0)
                    {
                      goto LABEL_218;
                    }

                    if ((v79 & 0x100) != 0)
                    {
                      v114 = 1.0;
                      v111 = v21;
                      v112 = v19;
                      v113 = 9;
                    }

                    else
                    {
                      if (v79 >> 29)
                      {
                        SetMatrixCoefficient(v21, v19, 9, 33, a4, 0.70711);
                        v111 = v21;
                        v112 = v19;
                        v113 = 34;
                        goto LABEL_216;
                      }

                      if ((v79 & 0x30) != 0)
                      {
                        SetMatrixCoefficient(v21, v19, 9, 5, a4, 0.70711);
                        v111 = v21;
                        v112 = v19;
                        v113 = 6;
LABEL_216:
                        v115 = a4;
                        v114 = 0.70711;
                        goto LABEL_217;
                      }

                      if ((v79 & 3) != 0)
                      {
                        SetMatrixCoefficient(v21, v19, 9, 1, a4, 0.70711);
                        SetMatrixCoefficient(v21, v19, 9, 2, a4, 0.70711);
                        goto LABEL_218;
                      }

                      if ((v79 & 4) == 0)
                      {
LABEL_218:
                        if ((v82 & 0x30) == 0)
                        {
                          goto LABEL_228;
                        }

                        if ((v79 & 0x130) == 0x100)
                        {
                          SetMatrixCoefficient(v21, v19, 5, 9, a4, 0.70711);
                          v116 = v21;
                          v117 = v19;
                          v118 = 9;
LABEL_221:
                          v119 = a4;
                          v120 = 0.70711;
LABEL_227:
                          SetMatrixCoefficient(v116, v117, 6, v118, v119, v120);
                          goto LABEL_228;
                        }

                        if ((v79 & 0x30) != 0)
                        {
                          SetMatrixCoefficient(v21, v19, 5, 5, a4, 1.0);
                          v120 = 1.0;
                          v116 = v21;
                          v117 = v19;
                          v118 = 6;
                        }

                        else
                        {
                          if ((v79 & 7) != 4)
                          {
                            if ((v79 & 3) == 0)
                            {
LABEL_228:
                              if (!(v82 >> 29))
                              {
                                goto LABEL_268;
                              }

                              if ((~v79 & 0x60000000) == 0)
                              {
                                SetMatrixCoefficient(v21, v19, 33, 33, a4, 1.0);
                                v121 = 1.0;
                                v122 = v21;
                                v123 = v19;
                                v124 = 34;
                                v125 = a4;
LABEL_267:
                                SetMatrixCoefficient(v122, v123, 34, v124, v125, v121);
LABEL_268:
                                v133 = v79 & 0xA00000;
                                if ((v82 & 0x18000000) == 0)
                                {
                                  goto LABEL_277;
                                }

                                if ((~v79 & 0x18000000) != 0)
                                {
                                  if ((v79 & 3) != 0)
                                  {
                                    SetMatrixCoefficient(v21, v19, 35, 1, a4, 0.70711);
                                    v135 = v21;
                                    v136 = v19;
                                    v137 = 2;
                                  }

                                  else
                                  {
                                    if ((v79 & 4) == 0)
                                    {
                                      goto LABEL_277;
                                    }

                                    SetMatrixCoefficient(v21, v19, 35, 3, a4, 0.70711);
                                    v135 = v21;
                                    v136 = v19;
                                    v137 = 3;
                                  }

                                  v138 = a4;
                                  v134 = 0.70711;
                                }

                                else
                                {
                                  SetMatrixCoefficient(v21, v19, 35, 35, a4, 1.0);
                                  v134 = 1.0;
                                  v135 = v21;
                                  v136 = v19;
                                  v137 = 36;
                                  v138 = a4;
                                }

                                SetMatrixCoefficient(v135, v136, 36, v137, v138, v134);
LABEL_277:
                                v139 = v79 & 0x600;
                                if ((v82 & 0x5000) == 0)
                                {
                                  goto LABEL_284;
                                }

                                if ((v79 & 0x7000) == 0x2000)
                                {
                                  SetMatrixCoefficient(v21, v19, 13, 14, a4, 0.70711);
                                  v140 = v21;
                                  v141 = v19;
                                  v142 = 14;
LABEL_280:
                                  v143 = a4;
                                  v144 = 0.70711;
LABEL_283:
                                  SetMatrixCoefficient(v140, v141, 15, v142, v143, v144);
                                  goto LABEL_284;
                                }

                                if ((v79 & 0x5000) != 0)
                                {
                                  SetMatrixCoefficient(v21, v19, 13, 13, a4, 1.0);
                                  v144 = 1.0;
                                  v140 = v21;
                                  v141 = v19;
                                  v142 = 15;
                                  v143 = a4;
                                  goto LABEL_283;
                                }

                                if (v133)
                                {
                                  SetMatrixCoefficient(v21, v19, 13, 49, a4, 0.70711);
                                  v140 = v21;
                                  v141 = v19;
                                  v142 = 51;
                                  goto LABEL_280;
                                }

                                if (v139 == 1536)
                                {
                                  SetMatrixCoefficient(v21, v19, 13, 10, a4, 0.70711);
                                  v185 = v21;
                                  v186 = v19;
                                  v187 = 11;
                                }

                                else
                                {
                                  if ((v79 & 3) == 0)
                                  {
                                    if ((v79 & 4) != 0)
                                    {
                                      SetMatrixCoefficient(v21, v19, 13, 3, a4, 0.70711);
                                      v140 = v21;
                                      v141 = v19;
                                      v142 = 3;
                                      goto LABEL_280;
                                    }

LABEL_284:
                                    if ((v82 & 0xA00000) == 0)
                                    {
                                      goto LABEL_293;
                                    }

                                    if (v133 == 10485760)
                                    {
                                      SetMatrixCoefficient(v21, v19, 49, 49, a4, 1.0);
                                      v145 = 1.0;
                                      v146 = v21;
                                      v147 = v19;
                                      v148 = 51;
                                      v149 = a4;
LABEL_292:
                                      SetMatrixCoefficient(v146, v147, 51, v148, v149, v145);
                                      goto LABEL_293;
                                    }

                                    if ((~v79 & 0x5005000) == 0)
                                    {
                                      SetMatrixCoefficient(v21, v19, 49, 13, a4, 0.70711);
                                      SetMatrixCoefficient(v21, v19, 49, 52, a4, 0.70711);
                                      SetMatrixCoefficient(v21, v19, 51, 15, a4, 0.70711);
                                      v146 = v21;
                                      v147 = v19;
                                      v148 = 54;
LABEL_291:
                                      v149 = a4;
                                      v145 = 0.70711;
                                      goto LABEL_292;
                                    }

                                    if (v189 == 48)
                                    {
                                      SetMatrixCoefficient(v21, v19, 49, 5, a4, 0.70711);
                                      v146 = v21;
                                      v147 = v19;
                                      v148 = 6;
                                      goto LABEL_291;
                                    }

                                    if (v139 == 1536)
                                    {
                                      SetMatrixCoefficient(v21, v19, 49, 10, a4, 0.70711);
                                      v173 = v21;
                                      v174 = v19;
                                      v175 = 11;
                                    }

                                    else
                                    {
                                      if ((v79 & 3) == 0)
                                      {
                                        if ((v79 & 4) != 0)
                                        {
                                          SetMatrixCoefficient(v21, v19, 49, 3, a4, 0.70711);
                                          v146 = v21;
                                          v147 = v19;
                                          v148 = 3;
                                          goto LABEL_291;
                                        }

LABEL_293:
                                        if ((v82 & 0x5000000) == 0)
                                        {
LABEL_300:
                                          if ((v82 & 0x600) == 0)
                                          {
                                            goto LABEL_307;
                                          }

                                          if (v139 == 1536)
                                          {
                                            goto LABEL_302;
                                          }

                                          if ((~v79 & 0x5000000) == 0)
                                          {
                                            SetMatrixCoefficient(v21, v19, 10, 52, a4, 1.0);
                                            v155 = 1.0;
                                            v156 = v21;
                                            v157 = v19;
                                            v158 = 54;
                                            goto LABEL_305;
                                          }

                                          if (v133)
                                          {
                                            SetMatrixCoefficient(v21, v19, 10, 49, a4, 0.70711);
                                            v156 = v21;
                                            v157 = v19;
                                            v158 = 51;
LABEL_315:
                                            v159 = a4;
                                            v155 = 0.70711;
                                            goto LABEL_306;
                                          }

                                          if ((~v79 & 0x60000000) == 0)
                                          {
                                            SetMatrixCoefficient(v21, v19, 10, 33, a4, 0.70711);
                                            v182 = v21;
                                            v183 = v19;
                                            v184 = 34;
LABEL_373:
                                            SetMatrixCoefficient(v182, v183, 11, v184, a4, 0.70711);
                                            goto LABEL_307;
                                          }

                                          if (v189 == 48)
                                          {
                                            SetMatrixCoefficient(v21, v19, 10, 5, a4, 0.70711);
                                            v182 = v21;
                                            v183 = v19;
                                            v184 = 6;
                                            goto LABEL_373;
                                          }

                                          if ((v79 & 3) != 0)
                                          {
                                            SetMatrixCoefficient(v21, v19, 10, 1, a4, 0.70711);
                                            v182 = v21;
                                            v183 = v19;
                                            v184 = 2;
                                            goto LABEL_373;
                                          }

                                          if ((v79 & 4) != 0)
                                          {
                                            SetMatrixCoefficient(v21, v19, 10, 3, a4, 0.70711);
                                            v156 = v21;
                                            v157 = v19;
                                            v158 = 3;
                                            goto LABEL_315;
                                          }

LABEL_307:
                                          if ((v82 & 0x800) == 0)
                                          {
                                            goto LABEL_319;
                                          }

                                          if ((v79 & 0x800) != 0)
                                          {
                                            v164 = 1.0;
                                            v160 = v21;
                                            v161 = v19;
                                            v162 = 12;
                                          }

                                          else if ((v79 & 0x100) != 0)
                                          {
                                            v164 = 1.0;
                                            v160 = v21;
                                            v161 = v19;
                                            v162 = 9;
                                          }

                                          else
                                          {
                                            if ((~v79 & 0x60000000) == 0)
                                            {
                                              SetMatrixCoefficient(v21, v19, 12, 33, a4, 0.70711);
                                              v160 = v21;
                                              v161 = v19;
                                              v162 = 34;
                                              v163 = a4;
                                              v164 = 0.70711;
LABEL_318:
                                              SetMatrixCoefficient(v160, v161, 12, v162, v163, v164);
                                              goto LABEL_319;
                                            }

                                            if (v189 == 48)
                                            {
                                              SetMatrixCoefficient(v21, v19, 12, 5, a4, 0.70711);
                                              v176 = v21;
                                              v177 = v19;
                                              v178 = 6;
LABEL_353:
                                              SetMatrixCoefficient(v176, v177, 12, v178, a4, 0.70711);
                                              goto LABEL_319;
                                            }

                                            if ((v79 & 3) != 0)
                                            {
                                              SetMatrixCoefficient(v21, v19, 12, 1, a4, 0.70711);
                                              v176 = v21;
                                              v177 = v19;
                                              v178 = 2;
                                              goto LABEL_353;
                                            }

                                            if ((v79 & 4) == 0)
                                            {
LABEL_319:
                                              if ((v82 & 0x28000) == 0)
                                              {
LABEL_326:
                                                if ((v79 & v82 & 8) != 0)
                                                {
                                                  SetMatrixCoefficient(v21, v19, 4, 4, a4, 1.0);
                                                }

                                                optionallyMixInNonSpeakerChannels(v21, v193, v192, a4, v81);
                                                goto LABEL_171;
                                              }

                                              if ((~v79 & 0x28000) == 0)
                                              {
                                                SetMatrixCoefficient(v21, v19, 0x8000, 0x8000, a4, 1.0);
                                                v165 = 1.0;
                                                v166 = v21;
                                                v167 = v19;
                                                v168 = 0x20000;
LABEL_324:
                                                v169 = a4;
LABEL_325:
                                                SetMatrixCoefficient(v166, v167, 0x20000, v168, v169, v165);
                                                goto LABEL_326;
                                              }

                                              if ((~v79 & 0x5000000) == 0)
                                              {
                                                SetMatrixCoefficient(v21, v19, 0x8000, 52, a4, 1.0);
                                                v165 = 1.0;
                                                v166 = v21;
                                                v167 = v19;
                                                v168 = 54;
                                                goto LABEL_324;
                                              }

                                              if (v133)
                                              {
                                                SetMatrixCoefficient(v21, v19, 0x8000, 49, a4, 0.70711);
                                                v166 = v21;
                                                v167 = v19;
                                                v168 = 51;
LABEL_331:
                                                v169 = a4;
                                                v165 = 0.70711;
                                                goto LABEL_325;
                                              }

                                              if ((~v79 & 0x60000000) != 0)
                                              {
                                                if (v189 == 48)
                                                {
                                                  SetMatrixCoefficient(v21, v19, 0x8000, 5, a4, 0.70711);
                                                  v179 = v21;
                                                  v180 = v19;
                                                  v181 = 6;
                                                }

                                                else if (v139 == 1536)
                                                {
                                                  SetMatrixCoefficient(v21, v19, 0x8000, 10, a4, 0.70711);
                                                  v179 = v21;
                                                  v180 = v19;
                                                  v181 = 11;
                                                }

                                                else
                                                {
                                                  if ((v79 & 3) == 0)
                                                  {
                                                    if ((v79 & 4) == 0)
                                                    {
                                                      goto LABEL_326;
                                                    }

                                                    SetMatrixCoefficient(v21, v19, 0x8000, 3, a4, 0.70711);
                                                    v166 = v21;
                                                    v167 = v19;
                                                    v168 = 3;
                                                    goto LABEL_331;
                                                  }

                                                  SetMatrixCoefficient(v21, v19, 0x8000, 1, a4, 0.70711);
                                                  v179 = v21;
                                                  v180 = v19;
                                                  v181 = 2;
                                                }
                                              }

                                              else
                                              {
                                                SetMatrixCoefficient(v21, v19, 0x8000, 33, a4, 0.70711);
                                                v179 = v21;
                                                v180 = v19;
                                                v181 = 34;
                                              }

                                              SetMatrixCoefficient(v179, v180, 0x20000, v181, a4, 0.70711);
                                              goto LABEL_326;
                                            }

                                            v164 = 0.70711;
                                            v160 = v21;
                                            v161 = v19;
                                            v162 = 3;
                                          }

                                          v163 = a4;
                                          goto LABEL_318;
                                        }

                                        if ((~v79 & 0x5000000) == 0)
                                        {
                                          SetMatrixCoefficient(v21, v19, 52, 52, a4, 1.0);
                                          v150 = 1.0;
                                          v151 = v21;
                                          v152 = v19;
                                          v153 = 54;
                                          v154 = a4;
LABEL_299:
                                          SetMatrixCoefficient(v151, v152, 54, v153, v154, v150);
                                          goto LABEL_300;
                                        }

                                        if (v133)
                                        {
                                          SetMatrixCoefficient(v21, v19, 52, 49, a4, 0.70711);
                                          v151 = v21;
                                          v152 = v19;
                                          v153 = 51;
LABEL_298:
                                          v154 = a4;
                                          v150 = 0.70711;
                                          goto LABEL_299;
                                        }

                                        if ((~v79 & 0x60000000) != 0)
                                        {
                                          if (v189 == 48)
                                          {
                                            SetMatrixCoefficient(v21, v19, 52, 5, a4, 0.70711);
                                            v170 = v21;
                                            v171 = v19;
                                            v172 = 6;
                                          }

                                          else
                                          {
                                            if (v139 == 1536)
                                            {
                                              SetMatrixCoefficient(v21, v19, 52, 10, a4, 0.70711);
                                              SetMatrixCoefficient(v21, v19, 54, 11, a4, 0.70711);
                                              if ((v82 & 0x600) != 0)
                                              {
LABEL_302:
                                                SetMatrixCoefficient(v21, v19, 10, 10, a4, 1.0);
                                                v155 = 1.0;
                                                v156 = v21;
                                                v157 = v19;
                                                v158 = 11;
LABEL_305:
                                                v159 = a4;
LABEL_306:
                                                SetMatrixCoefficient(v156, v157, 11, v158, v159, v155);
                                                goto LABEL_307;
                                              }

                                              goto LABEL_307;
                                            }

                                            if ((v79 & 3) == 0)
                                            {
                                              if ((v79 & 4) == 0)
                                              {
                                                goto LABEL_300;
                                              }

                                              SetMatrixCoefficient(v21, v19, 52, 3, a4, 0.70711);
                                              v151 = v21;
                                              v152 = v19;
                                              v153 = 3;
                                              goto LABEL_298;
                                            }

                                            SetMatrixCoefficient(v21, v19, 52, 1, a4, 0.70711);
                                            v170 = v21;
                                            v171 = v19;
                                            v172 = 2;
                                          }
                                        }

                                        else
                                        {
                                          SetMatrixCoefficient(v21, v19, 52, 33, a4, 0.70711);
                                          v170 = v21;
                                          v171 = v19;
                                          v172 = 34;
                                        }

                                        SetMatrixCoefficient(v170, v171, 54, v172, a4, 0.70711);
                                        goto LABEL_300;
                                      }

                                      SetMatrixCoefficient(v21, v19, 49, 1, a4, 0.70711);
                                      v173 = v21;
                                      v174 = v19;
                                      v175 = 2;
                                    }

                                    SetMatrixCoefficient(v173, v174, 51, v175, a4, 0.70711);
                                    goto LABEL_293;
                                  }

                                  SetMatrixCoefficient(v21, v19, 13, 1, a4, 0.70711);
                                  v185 = v21;
                                  v186 = v19;
                                  v187 = 2;
                                }

                                SetMatrixCoefficient(v185, v186, 15, v187, a4, 0.70711);
                                goto LABEL_284;
                              }

                              if ((~v79 & 0x130) != 0)
                              {
                                if ((v79 & 0x30) == 0x30)
                                {
                                  SetMatrixCoefficient(v21, v19, 33, 5, a4, 0.70711);
                                  v122 = v21;
                                  v123 = v19;
                                  v124 = 6;
                                  goto LABEL_266;
                                }

                                if ((v79 & 0x100) == 0)
                                {
                                  if ((v79 & 3) != 0)
                                  {
                                    SetMatrixCoefficient(v21, v19, 33, 1, a4, 0.70711);
                                    v122 = v21;
                                    v123 = v19;
                                    v124 = 2;
                                  }

                                  else
                                  {
                                    if ((v79 & 4) == 0)
                                    {
                                      goto LABEL_268;
                                    }

                                    SetMatrixCoefficient(v21, v19, 33, 3, a4, 0.70711);
                                    v122 = v21;
                                    v123 = v19;
                                    v124 = 3;
                                  }

                                  goto LABEL_266;
                                }

                                v127 = v21;
                                v126 = v19;
                                v128 = v19;
                                v129 = 33;
                                v130 = 9;
                              }

                              else
                              {
                                v126 = v19;
                                SetMatrixCoefficient(v21, v19, 33, 5, a4, 0.70711);
                                SetMatrixCoefficient(v21, v19, 33, 9, a4, 0.70711);
                                v127 = v21;
                                v128 = v19;
                                v129 = 34;
                                v130 = 6;
                              }

                              SetMatrixCoefficient(v127, v128, v129, v130, a4, 0.70711);
                              v122 = v21;
                              v123 = v126;
                              v124 = 9;
LABEL_266:
                              v125 = a4;
                              v121 = 0.70711;
                              goto LABEL_267;
                            }

                            SetMatrixCoefficient(v21, v19, 5, 1, a4, 0.70711);
                            v116 = v21;
                            v117 = v19;
                            v118 = 2;
                            goto LABEL_221;
                          }

                          SetMatrixCoefficient(v21, v19, 5, 3, a4, 0.5);
                          v120 = 0.5;
                          v116 = v21;
                          v117 = v19;
                          v118 = 3;
                        }

                        v119 = a4;
                        goto LABEL_227;
                      }

                      v114 = 0.70711;
                      v111 = v21;
                      v112 = v19;
                      v113 = 3;
                    }

                    v115 = a4;
LABEL_217:
                    SetMatrixCoefficient(v111, v112, 9, v113, v115, v114);
                    goto LABEL_218;
                  }

                  SetMatrixCoefficient(v21, v19, 14, 1, a4, 0.70711);
                  v94 = v21;
                  v95 = v19;
                  v96 = 2;
                  goto LABEL_189;
                }

                v98 = 0.70711;
                v94 = v21;
                v95 = v19;
                v96 = 3;
              }

              v97 = a4;
              goto LABEL_192;
            }

            if (v40 == 7012356 || (v40 & 0xFFFE0000 | 0x10000) == 0xBF0000)
            {
              v196 = xmmword_18F901960;
              std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>();
            }

            if ((~v79 & 3) == 0 && v40 == 6815746)
            {
              SetMatrixCoefficient(v21, v19, 204, 1, a4, 0.70711);
              SetMatrixCoefficient(v21, v19, 204, 2, a4, 0.70711);
              SetMatrixCoefficient(v21, v19, 205, 1, a4, 0.70711);
              v63 = -0.70711;
              v64 = v21;
              v65 = v19;
              v66 = 205;
              goto LABEL_125;
            }

            if (v191 == 6815746 && (v80 & 3) == 3)
            {
              SetMatrixCoefficient(v21, v19, 1, 204, a4, 0.70711);
              SetMatrixCoefficient(v21, v19, 2, 204, a4, 0.70711);
              SetMatrixCoefficient(v21, v19, 1, 205, a4, 0.70711);
              v63 = -0.70711;
              v64 = v21;
              v65 = v19;
              v66 = 2;
              v67 = 205;
              goto LABEL_169;
            }

            if (v191 <= 6750209)
            {
              if (v191 == 6553601)
              {
                if (v40 == 6815746)
                {
                  goto LABEL_380;
                }

                if (v40 == 9633793)
                {
                  v9 = 0;
                  *a4 = 1065353216;
                  goto LABEL_4;
                }

                goto LABEL_402;
              }

              if (v191 == 6619138)
              {
                goto LABEL_379;
              }

              v132 = 6684674;
            }

            else
            {
              if (v191 <= 6881281)
              {
                if (v191 != 6750210)
                {
                  if (v191 == 6815746)
                  {
                    v9 = 1718449215;
                    if (v40 > 6750209)
                    {
                      if (v40 != 6750210 && v40 != 6881282)
                      {
                        v131 = 6946818;
LABEL_400:
                        if (v40 != v131)
                        {
                          goto LABEL_4;
                        }
                      }

LABEL_401:
                      v9 = 0;
                      *a4 = xmmword_18F901950;
                      goto LABEL_4;
                    }

                    if (v40 != 6553601)
                    {
                      if (v40 != 6619138)
                      {
                        v131 = 6684674;
                        goto LABEL_400;
                      }

                      goto LABEL_401;
                    }

LABEL_380:
                    v9 = 0;
                    *a4 = 1065353216;
                    goto LABEL_4;
                  }

LABEL_402:
                  if (optionallyMixInNonSpeakerChannels(v21, v188[0], v13, a4, v81))
                  {
                    v9 = 0;
                  }

                  else
                  {
                    v9 = 1718449215;
                  }

                  goto LABEL_4;
                }

LABEL_379:
                if (v40 == 9633793)
                {
                  goto LABEL_380;
                }

                goto LABEL_402;
              }

              if (v191 == 6881282)
              {
                goto LABEL_379;
              }

              v132 = 6946818;
            }

            if (v191 != v132)
            {
              goto LABEL_402;
            }

            goto LABEL_379;
          }

          v63 = 1.0;
          v64 = v21;
          v65 = v19;
          v66 = 3;
LABEL_156:
          v67 = 3;
          goto LABEL_169;
        }

        SetMatrixCoefficient(v21, v19, 1, 0x20000, a4, 1.0);
        SetMatrixCoefficient(v21, v19, 2, 0x20000, a4, 1.0);
        SetMatrixCoefficient(v21, v19, 1, 131073, a4, 0.5);
        SetMatrixCoefficient(v21, v19, 2, 131073, a4, -0.5);
        SetMatrixCoefficient(v21, v19, 1, 131075, a4, 0.86603);
        v67 = 131075;
        v64 = v21;
        v65 = v19;
        v66 = 2;
        v88 = a4;
        v63 = 0.86603;
LABEL_170:
        SetMatrixCoefficient(v64, v65, v66, v67, v88, v63);
LABEL_171:
        v9 = 0;
        goto LABEL_4;
      }

      if (v191 == 6750210)
      {
        SetMatrixCoefficient(v21, v19, 1, 38, a4, 1.0);
        v63 = 1.0;
        v64 = v21;
        v65 = v19;
        v66 = 2;
        goto LABEL_168;
      }

      if (v191 != 8519688)
      {
        goto LABEL_138;
      }

      SetMatrixCoefficient(v21, v19, 1, 1, a4, 1.0);
      v63 = 1.0;
      v64 = v21;
      v65 = v19;
      v66 = 2;
LABEL_125:
      v67 = 2;
LABEL_169:
      v88 = a4;
      goto LABEL_170;
    }

LABEL_2:
    v9 = v8;
  }

LABEL_4:
  if (__dst)
  {
    free(__dst);
  }

  if (v195)
  {
    free(v195);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_18F61B56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x18F619A10);
  }

  _Unwind_Resume(a1);
}

uint64_t AudioFormatProperty_ChannelLayoutForTag(signed int a1, AudioChannelLayout *a2)
{
  if (a1 == 0x10000)
  {
    return 1718449215;
  }

  v107 = v2;
  v108 = v3;
  a2->mChannelLayoutTag = a1;
  a2->mChannelBitmap = 0;
  v106.mChannelBitmap = 0;
  v106.mNumberChannelDescriptions = 0;
  v105 = 0;
  v106.mChannelLayoutTag = a1;
  AudioFormatProperty_NumberOfChannelsForLayout(&v106, &v105);
  v7 = v105;
  a2->mNumberChannelDescriptions = v105;
  mChannelDescriptions = a2->mChannelDescriptions;
  bzero(a2->mChannelDescriptions, 20 * v7);
  if (a1 == -266338299)
  {
    v10 = 131074;
    a2->mChannelLayoutTag = 0;
    v9 = 131075;
    v11 = 3;
    a2->mChannelDescriptions[0].mChannelLabel = 0x20000;
    v12 = 131073;
    v13 = 92;
    v14 = 72;
    v15 = 52;
    v16 = 32;
    goto LABEL_7;
  }

  if (a1 == -267386874)
  {
    v9 = 131074;
    v10 = 131073;
    a2->mChannelLayoutTag = 0;
    a2->mChannelDescriptions[0].mChannelLabel = 208;
    v11 = 131075;
    v12 = 0x20000;
    a2[1].mChannelLayoutTag = 209;
    v13 = 112;
    v14 = 92;
    v15 = 72;
    v16 = 52;
LABEL_7:
    result = 0;
    *(&a2->mChannelLayoutTag + v16) = v12;
    *(&a2->mChannelLayoutTag + v15) = v10;
    *(&a2->mChannelLayoutTag + v14) = v9;
    *(&a2->mChannelLayoutTag + v13) = v11;
    return result;
  }

  v17 = a1 & 0xFFFF0000;
  if ((a1 & 0xFFFF0000) >= 12451840)
  {
    if (v17 != 12451840 && v17 != 12517376)
    {
      goto LABEL_38;
    }

    result = 560360820;
    v25 = v17 == 12451840;
    v26 = 196608;
    if (v25)
    {
      v26 = 0x20000;
    }

    if (v7 <= 0xFE01)
    {
      v27 = sqrt(v7) + 0.5;
      if (v27 * v27 == v7)
      {
        if (!v7)
        {
          return 0;
        }

        v28 = (v7 + 3) & 0x1FFFC;
        v29 = vdupq_n_s64(v7 - 1);
        v30 = xmmword_18F9016B0;
        v31 = xmmword_18F9016C0;
        v32 = (a2 + 52);
        v33 = vdupq_n_s64(4uLL);
        result = 0;
        do
        {
          v34 = vmovn_s64(vcgeq_u64(v29, v31));
          if (vuzp1_s16(v34, *v29.i8).u8[0])
          {
            LODWORD(v32[-2].mChannelDescriptions[0].mCoordinates[1]) = v26;
          }

          if (vuzp1_s16(v34, *&v29).i8[2])
          {
            v32[-1].mChannelDescriptions[0].mChannelLabel = v26 + 1;
          }

          if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
          {
            v32->mChannelLayoutTag = v26 + 2;
            LODWORD(v32->mChannelDescriptions[0].mCoordinates[0]) = v26 + 3;
          }

          v30 = vaddq_s64(v30, v33);
          v31 = vaddq_s64(v31, v33);
          v26 += 4;
          v32 = (v32 + 80);
          v28 -= 4;
        }

        while (v28);
      }
    }
  }

  else
  {
    if (v17 != -268369920)
    {
      if (v17 == 9633792)
      {
        if (v7)
        {
          v18 = 0;
          v19 = vdupq_n_s64(v7 - 1);
          v20 = xmmword_18F9016B0;
          v21 = xmmword_18F9016C0;
          v22 = (a2 + 52);
          v23 = vdupq_n_s64(4uLL);
          do
          {
            v24 = vmovn_s64(vcgeq_u64(v19, v21));
            if (vuzp1_s16(v24, *v19.i8).u8[0])
            {
              LODWORD(v22[-2].mChannelDescriptions[0].mCoordinates[1]) = v18 | 0x10000;
            }

            if (vuzp1_s16(v24, *&v19).i8[2])
            {
              v22[-1].mChannelDescriptions[0].mChannelLabel = v18 | 0x10001;
            }

            if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, *&v20))).i32[1])
            {
              v22->mChannelLayoutTag = v18 | 0x10002;
              LODWORD(v22->mChannelDescriptions[0].mCoordinates[0]) = v18 | 0x10003;
            }

            result = 0;
            v18 += 4;
            v20 = vaddq_s64(v20, v23);
            v21 = vaddq_s64(v21, v23);
            v22 = (v22 + 80);
          }

          while (((v7 + 3) & 0x1FFFFFFFCLL) != v18);
          return result;
        }

        return 0;
      }

LABEL_38:
      result = 560360820;
      if (a1 > 10420230)
      {
        if (a1 > 12320774)
        {
          if (a1 <= 13434887)
          {
            if (a1 > 12910595)
            {
              if (a1 <= 13172743)
              {
                if (a1 <= 13041670)
                {
                  if (a1 != 12910596)
                  {
                    if (a1 != 12976134)
                    {
                      return result;
                    }

                    a2->mChannelDescriptions[0].mChannelLabel = 1;
                    a2[1].mChannelLayoutTag = 2;
                    LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                    a2[2].mNumberChannelDescriptions = 6;
                    LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 9;
                    v35 = 3;
                    goto LABEL_346;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 2;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 9;
                  v59 = 3;
                  goto LABEL_389;
                }

                if (a1 != 13041671)
                {
                  if (a1 != 13107207)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 3;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                  a2[2].mNumberChannelDescriptions = 5;
                  v77 = 9;
LABEL_385:
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v77;
                  v68 = 6;
                  goto LABEL_386;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                a2[2].mNumberChannelDescriptions = 6;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 9;
                v68 = 3;
LABEL_386:
                a2[3].mChannelDescriptions[0].mChannelFlags = v68;
                v57 = 4;
                goto LABEL_398;
              }

              if (a1 <= 13303821)
              {
                if (a1 != 13172744)
                {
                  if (a1 != 13238284)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 2;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
                  a2[2].mNumberChannelDescriptions = 34;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                  a2[4].mChannelBitmap = 3;
                  v58 = 4;
                  goto LABEL_305;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                a2[2].mNumberChannelDescriptions = 6;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                v79 = 34;
                goto LABEL_318;
              }

              if (a1 != 13303822)
              {
                if (a1 != 13369368)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 35;
                a2[1].mChannelLayoutTag = 36;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 37;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                a2[3].mChannelDescriptions[0].mChannelFlags = 34;
                a2[4].mChannelBitmap = 1;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 2;
                a2[5].mChannelDescriptions[0].mChannelLabel = 9;
                a2[6].mChannelLayoutTag = 62;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 55;
                a2[7].mNumberChannelDescriptions = 56;
                LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 13;
                a2[8].mChannelDescriptions[0].mChannelFlags = 15;
                a2[9].mChannelBitmap = 14;
                LODWORD(a2[9].mChannelDescriptions[0].mCoordinates[1]) = 12;
                a2[10].mChannelDescriptions[0].mChannelLabel = 52;
                a2[11].mChannelLayoutTag = 54;
                LODWORD(a2[11].mChannelDescriptions[0].mCoordinates[0]) = 49;
                a2[12].mNumberChannelDescriptions = 51;
                LODWORD(a2[12].mChannelDescriptions[0].mCoordinates[2]) = 53;
                a2[13].mChannelDescriptions[0].mChannelFlags = 59;
                a2[14].mChannelBitmap = 57;
                LODWORD(a2[14].mChannelDescriptions[0].mCoordinates[1]) = 58;
LABEL_399:
                if (v7)
                {
                  do
                  {
                    SetDefaultChannelPosition(mChannelDescriptions);
                    result = 0;
                    ++mChannelDescriptions;
                    --v7;
                  }

                  while (v7);
                  return result;
                }

                return 0;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
              a2[2].mNumberChannelDescriptions = 34;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              a2[3].mChannelDescriptions[0].mChannelFlags = 6;
              a2[4].mChannelBitmap = 3;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 4;
              a2[5].mChannelDescriptions[0].mChannelLabel = 13;
              a2[6].mChannelLayoutTag = 15;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 49;
              a2[7].mNumberChannelDescriptions = 51;
              LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 52;
              v54 = 54;
LABEL_325:
              a2[8].mChannelDescriptions[0].mChannelFlags = v54;
              goto LABEL_399;
            }

            if (a1 > 12648463)
            {
              if (a1 <= 12779529)
              {
                if (a1 != 12648464)
                {
                  if (a1 != 12713992)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 2;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                  a2[2].mNumberChannelDescriptions = 4;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                  a2[4].mChannelBitmap = 49;
                  v47 = 51;
                  goto LABEL_391;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 33;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 34;
                a2[5].mChannelDescriptions[0].mChannelLabel = 35;
                a2[6].mChannelLayoutTag = 36;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 13;
                a2[7].mNumberChannelDescriptions = 15;
                LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 49;
                a2[8].mChannelDescriptions[0].mChannelFlags = 51;
                a2[9].mChannelBitmap = 52;
                v70 = 54;
                goto LABEL_300;
              }

              if (a1 == 12779530)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 13;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 15;
                a2[5].mChannelDescriptions[0].mChannelLabel = 52;
                v67 = 54;
              }

              else
              {
                if (a1 != 12845066)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 33;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 34;
                a2[5].mChannelDescriptions[0].mChannelLabel = 49;
                v67 = 51;
              }

LABEL_303:
              a2[6].mChannelLayoutTag = v67;
              goto LABEL_399;
            }

            if (a1 != 12320775)
            {
              if (a1 != 12386312)
              {
                if (a1 != 12582924)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 33;
                v58 = 34;
                goto LABEL_305;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
              a2[3].mChannelDescriptions[0].mChannelFlags = 34;
              v74 = 5;
              goto LABEL_376;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            a2[2].mNumberChannelDescriptions = 4;
            v95 = 9;
            goto LABEL_380;
          }

          if (a1 > 13893636)
          {
            if (a1 <= 14155780)
            {
              if (a1 <= 14024710)
              {
                if (a1 != 13893637)
                {
                  if (a1 != 13959174)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 1;
                  a2[1].mChannelLayoutTag = 3;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                  a2[2].mNumberChannelDescriptions = 33;
                  v46 = 34;
                  goto LABEL_345;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 3;
                v97 = 2;
                goto LABEL_334;
              }

              if (a1 != 14024711)
              {
                if (a1 != 14090248)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v78 = 3;
LABEL_261:
                a2[1].mChannelLayoutTag = v78;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 5;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
                a2[3].mChannelDescriptions[0].mChannelFlags = 33;
                v80 = 34;
LABEL_350:
                a2[4].mChannelBitmap = v80;
                v47 = 4;
LABEL_391:
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = v47;
                goto LABEL_399;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              v73 = 3;
              goto LABEL_323;
            }

            if (a1 > 14286854)
            {
              if (a1 != 14286855)
              {
                if (a1 != 14352392)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
                a2[2].mNumberChannelDescriptions = 34;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                v79 = 6;
LABEL_318:
                a2[3].mChannelDescriptions[0].mChannelFlags = v79;
                v80 = 3;
                goto LABEL_350;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              v98 = 3;
LABEL_327:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v98;
              v68 = 9;
              goto LABEL_386;
            }

            if (a1 != 14155781)
            {
              if (a1 != 14221318)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
              v43 = 34;
              goto LABEL_153;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
            v56 = 34;
            goto LABEL_320;
          }

          if (a1 > 13631499)
          {
            if (a1 > 13762571)
            {
              if (a1 == 13762572)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                a2[3].mChannelDescriptions[0].mChannelFlags = 34;
                a2[4].mChannelBitmap = 55;
                v58 = 56;
LABEL_305:
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = v58;
                a2[5].mChannelDescriptions[0].mChannelLabel = 13;
                a2[6].mChannelLayoutTag = 15;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 52;
                v94 = 54;
                goto LABEL_378;
              }

              if (a1 != 13828110)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
              a2[3].mChannelDescriptions[0].mChannelFlags = 34;
              a2[4].mChannelBitmap = 55;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 56;
              a2[5].mChannelDescriptions[0].mChannelLabel = 13;
              a2[6].mChannelLayoutTag = 15;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 52;
              a2[7].mNumberChannelDescriptions = 54;
              LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 65;
              v54 = 66;
            }

            else
            {
              if (a1 == 13631500)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                a2[4].mChannelBitmap = 13;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 15;
                a2[5].mChannelDescriptions[0].mChannelLabel = 14;
                a2[6].mChannelLayoutTag = 60;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 61;
                v94 = 12;
LABEL_378:
                a2[7].mNumberChannelDescriptions = v94;
                goto LABEL_399;
              }

              if (a1 != 13697038)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              a2[3].mChannelDescriptions[0].mChannelFlags = 6;
              a2[4].mChannelBitmap = 63;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 64;
              a2[5].mChannelDescriptions[0].mChannelLabel = 13;
              a2[6].mChannelLayoutTag = 15;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 14;
              a2[7].mNumberChannelDescriptions = 60;
              LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 61;
              v54 = 12;
            }

            goto LABEL_325;
          }

          if (a1 != 13434888)
          {
            if (a1 == 13500428)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 37;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
              a2[3].mChannelDescriptions[0].mChannelFlags = 34;
              a2[4].mChannelBitmap = 62;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 55;
              a2[5].mChannelDescriptions[0].mChannelLabel = 56;
              a2[6].mChannelLayoutTag = 13;
              LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 15;
              v94 = 53;
              goto LABEL_378;
            }

            if (a1 != 13565962)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            a2[2].mNumberChannelDescriptions = 4;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
            a2[3].mChannelDescriptions[0].mChannelFlags = 6;
            a2[4].mChannelBitmap = 13;
            LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 15;
            a2[5].mChannelDescriptions[0].mChannelLabel = 60;
            v67 = 61;
            goto LABEL_303;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
          a2[2].mNumberChannelDescriptions = 4;
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
          v99 = 6;
LABEL_382:
          a2[3].mChannelDescriptions[0].mChannelFlags = v99;
          a2[4].mChannelBitmap = 13;
          v47 = 15;
          goto LABEL_391;
        }

        if (a1 > 11337734)
        {
          if (a1 > 11796488)
          {
            if (a1 <= 12058631)
            {
              if (a1 <= 11927558)
              {
                if (a1 == 11796489)
                {
                  a2->mChannelDescriptions[0].mChannelLabel = 7;
                  a2[1].mChannelLayoutTag = 8;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
                  a2[2].mNumberChannelDescriptions = 2;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 6;
                  a2[4].mChannelBitmap = 33;
                  v44 = 34;
                }

                else
                {
                  if (a1 != 11862025)
                  {
                    return result;
                  }

                  a2->mChannelDescriptions[0].mChannelLabel = 7;
                  a2[1].mChannelLayoutTag = 3;
                  LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
                  a2[2].mNumberChannelDescriptions = 1;
                  LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 2;
                  a2[3].mChannelDescriptions[0].mChannelFlags = 5;
                  a2[4].mChannelBitmap = 9;
                  v44 = 6;
                }

                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = v44;
                a2[5].mChannelDescriptions[0].mChannelLabel = 4;
                goto LABEL_399;
              }

              if (a1 != 11927559)
              {
                if (a1 != 11993096)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                v78 = 1;
                goto LABEL_261;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 3;
              v100 = 1;
              goto LABEL_352;
            }

            if (a1 <= 12189700)
            {
              if (a1 != 12058632)
              {
                if (a1 != 12124164)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 33;
                v59 = 34;
                goto LABEL_389;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 3;
              v85 = 1;
LABEL_331:
              a2[1].mChannelLayoutTag = v85;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
              v99 = 4;
              goto LABEL_382;
            }

            if (a1 == 12189701)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v97 = 3;
LABEL_334:
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v97;
              a2[2].mNumberChannelDescriptions = 33;
              v84 = 34;
              goto LABEL_367;
            }

            if (a1 != 12255238)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            v71 = 4;
            goto LABEL_265;
          }

          if (a1 <= 11534342)
          {
            if (a1 != 11337735)
            {
              if (a1 == 11403271)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 3;
                a2[1].mChannelLayoutTag = 1;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 33;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 34;
                v68 = 12;
              }

              else
              {
                if (a1 != 11468807)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                a2[1].mChannelLayoutTag = 9;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
                a2[2].mNumberChannelDescriptions = 2;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
                v68 = 34;
              }

              goto LABEL_386;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            a2[1].mChannelLayoutTag = 8;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
            a2[2].mNumberChannelDescriptions = 2;
            v77 = 5;
            goto LABEL_385;
          }

          if (a1 <= 11665415)
          {
            if (a1 == 11534343)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 7;
              a2[1].mChannelLayoutTag = 3;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
              a2[2].mNumberChannelDescriptions = 1;
              v95 = 2;
LABEL_380:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v95;
              a2[3].mChannelDescriptions[0].mChannelFlags = 5;
              v57 = 6;
              goto LABEL_398;
            }

            if (a1 != 11599880)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            v55 = 3;
LABEL_349:
            a2[1].mChannelLayoutTag = v55;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
            a2[2].mNumberChannelDescriptions = 1;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 2;
            a2[3].mChannelDescriptions[0].mChannelFlags = 5;
            v80 = 6;
            goto LABEL_350;
          }

          if (a1 != 11665416)
          {
            if (a1 != 11730952)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 8;
            a2[2].mNumberChannelDescriptions = 1;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 2;
            a2[3].mChannelDescriptions[0].mChannelFlags = 5;
            v74 = 9;
LABEL_376:
            a2[4].mChannelBitmap = v74;
            v47 = 6;
            goto LABEL_391;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 7;
          a2[1].mChannelLayoutTag = 8;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
          v83 = 2;
LABEL_308:
          a2[2].mNumberChannelDescriptions = v83;
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
          v96 = 6;
LABEL_355:
          a2[3].mChannelDescriptions[0].mChannelFlags = v96;
          a2[4].mChannelBitmap = 33;
          v47 = 34;
          goto LABEL_391;
        }

        if (a1 <= 10878983)
        {
          if (a1 > 10616839)
          {
            if (a1 <= 10747911)
            {
              if (a1 == 10616840)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 3;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 5;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
                a2[3].mChannelDescriptions[0].mChannelFlags = 4;
                a2[4].mChannelBitmap = 10;
                v47 = 11;
              }

              else
              {
                if (a1 != 10682376)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 3;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
                a2[2].mNumberChannelDescriptions = 5;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
                a2[3].mChannelDescriptions[0].mChannelFlags = 4;
                a2[4].mChannelBitmap = 35;
                v47 = 36;
              }

              goto LABEL_391;
            }

            if (a1 != 10747912)
            {
              if (a1 != 10813448)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 3;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
              a2[3].mChannelDescriptions[0].mChannelFlags = 4;
              a2[4].mChannelBitmap = 9;
              v47 = 12;
              goto LABEL_391;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            v85 = 3;
            goto LABEL_331;
          }

          if (a1 == 10420231)
          {
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v57 = 14;
            goto LABEL_398;
          }

          if (a1 == 10485768)
          {
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            v96 = 4;
            goto LABEL_355;
          }

          if (a1 != 10551304)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 3;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          v62 = 6;
          goto LABEL_370;
        }

        if (a1 > 11075588)
        {
          if (a1 > 11206661)
          {
            if (a1 == 11206662)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 3;
              a2[1].mChannelLayoutTag = 1;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 33;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 34;
              v35 = 12;
              goto LABEL_346;
            }

            if (a1 != 11272198)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 3;
            a2[1].mChannelLayoutTag = 9;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
            v71 = 2;
LABEL_265:
            a2[2].mNumberChannelDescriptions = v71;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 33;
            v35 = 34;
LABEL_346:
            a2[3].mChannelDescriptions[0].mChannelFlags = v35;
            goto LABEL_399;
          }

          if (a1 != 11075589)
          {
            if (a1 != 11141126)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 7;
            a2[1].mChannelLayoutTag = 8;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 1;
            v50 = 2;
            goto LABEL_336;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v82 = 1;
          goto LABEL_280;
        }

        switch(a1)
        {
          case 10878984:
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v102 = 9;
            break;
          case 10944520:
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v102 = 12;
            break;
          case 11010052:
            a2->mChannelDescriptions[0].mChannelLabel = 3;
            v45 = 1;
            goto LABEL_174;
          default:
            return result;
        }

        a2[4].mChannelBitmap = v102;
        v47 = 14;
        goto LABEL_391;
      }

      if (a1 <= 8454151)
      {
        if (a1 > 7471106)
        {
          if (a1 > 7929861)
          {
            if (a1 > 8192006)
            {
              if (a1 > 8323079)
              {
                if (a1 == 8323080)
                {
                  a2->mChannelDescriptions[0].mChannelLabel = 3;
                  v55 = 7;
                  goto LABEL_349;
                }

                if (a1 != 8388616)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                v83 = 4;
                goto LABEL_308;
              }

              if (a1 == 8192007)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 4;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
                v101 = 6;
LABEL_353:
                a2[3].mChannelDescriptions[0].mChannelFlags = v101;
                v57 = 9;
LABEL_398:
                a2[4].mChannelBitmap = v57;
                goto LABEL_399;
              }

              if (a1 != 8257544)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              v60 = 6;
LABEL_371:
              a2[3].mChannelDescriptions[0].mChannelFlags = v60;
              a2[4].mChannelBitmap = 7;
              v47 = 8;
              goto LABEL_391;
            }

            if (a1 > 8060933)
            {
              if (a1 == 8060934)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v81 = 3;
              }

              else
              {
                if (a1 != 8126470)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                v81 = 1;
              }

              a2[1].mChannelLayoutTag = v81;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              v46 = 6;
              goto LABEL_345;
            }

            if (a1 != 7929862)
            {
              if (a1 != 7995398)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              v43 = 6;
LABEL_153:
              a2[2].mNumberChannelDescriptions = v43;
              v46 = 3;
LABEL_345:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v46;
              v35 = 4;
              goto LABEL_346;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            v50 = 4;
LABEL_336:
            a2[2].mNumberChannelDescriptions = v50;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
            v35 = 6;
            goto LABEL_346;
          }

          if (a1 > 7667716)
          {
            if (a1 > 7798788)
            {
              if (a1 == 7798789)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v75 = 3;
              }

              else
              {
                if (a1 != 7864325)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 3;
                v75 = 1;
              }

              a2[1].mChannelLayoutTag = v75;
              v72 = 2;
            }

            else
            {
              if (a1 != 7667717)
              {
                if (a1 != 7733253)
                {
                  return result;
                }

                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
                v56 = 6;
LABEL_320:
                a2[2].mNumberChannelDescriptions = v56;
                v84 = 3;
                goto LABEL_367;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v72 = 3;
            }

            goto LABEL_313;
          }

          if (a1 != 7471107)
          {
            if (a1 == 7536644)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v89 = 3;
              goto LABEL_388;
            }

            if (a1 != 7602180)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 3;
            v69 = 1;
            goto LABEL_338;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v76 = 1;
          goto LABEL_393;
        }

        if (a1 <= 7012355)
        {
          if (a1 <= 6750209)
          {
            switch(a1)
            {
              case 6553601:
                mChannelDescriptions->mChannelLabel = 42;
                goto LABEL_399;
              case 6619138:
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                v48 = 2;
                break;
              case 6684674:
                a2->mChannelDescriptions[0].mChannelLabel = 301;
                v48 = 302;
                break;
              default:
                return result;
            }
          }

          else if (a1 > 6881281)
          {
            if (a1 == 6881282)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 206;
              v48 = 207;
            }

            else
            {
              if (a1 != 6946818)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 208;
              v48 = 209;
            }
          }

          else if (a1 == 6750210)
          {
            a2->mChannelDescriptions[0].mChannelLabel = 38;
            v48 = 39;
          }

          else
          {
            if (a1 != 6815746)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 204;
            v48 = 205;
          }

          goto LABEL_361;
        }

        if (a1 > 7208965)
        {
          if (a1 <= 7340039)
          {
            if (a1 == 7208966)
            {
              v86 = &a2->mChannelDescriptions[0].mCoordinates[2];
              v87 = 6;
              do
              {
                *(v86 - 3) = 2;
                *v86 = 1.0;
                v86 += 5;
                --v87;
              }

              while (v87);
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
              a2[3].mChannelDescriptions[0].mChannelFlags = 9;
              a2->mChannelDescriptions[0].mCoordinates[0] = -60.0;
              a2[1].mNumberChannelDescriptions = 1114636288;
              a2[1].mChannelDescriptions[0].mCoordinates[2] = -120.0;
              a2[2].mChannelDescriptions[0].mChannelFlags = 1123024896;
              a2[3].mChannelBitmap = 0;
              a2[3].mChannelDescriptions[0].mCoordinates[1] = 180.0;
            }

            else
            {
              if (a1 != 7274504)
              {
                return result;
              }

              v51 = &a2->mChannelDescriptions[0].mCoordinates[2];
              v52 = 8;
              do
              {
                *(v51 - 3) = 2;
                *v51 = 1.0;
                v51 += 5;
                --v52;
              }

              while (v52);
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
              a2[3].mChannelDescriptions[0].mChannelFlags = 9;
              a2[4].mChannelBitmap = 35;
              LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 36;
              a2->mChannelDescriptions[0].mCoordinates[0] = -45.0;
              a2[1].mNumberChannelDescriptions = 1110704128;
              a2[1].mChannelDescriptions[0].mCoordinates[2] = -135.0;
              a2[2].mChannelDescriptions[0].mChannelFlags = 1124532224;
              a2[3].mChannelBitmap = 0;
              a2[3].mChannelDescriptions[0].mCoordinates[1] = 180.0;
              a2[4].mChannelDescriptions[0].mChannelLabel = -1028390912;
              a2[5].mChannelLayoutTag = 1119092736;
            }

            goto LABEL_399;
          }

          if (a1 == 7340040)
          {
            v90 = 0;
            v91 = &a2->mChannelDescriptions[0].mCoordinates[2];
            do
            {
              *(v91 - 3) = 2;
              *v91 = 1.0;
              if (v90 >= 4)
              {
                v92 = 45.0;
              }

              else
              {
                v92 = 0.0;
              }

              *(v91 - 1) = v92;
              ++v90;
              v91 += 5;
            }

            while (v90 != 8);
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 13;
            a2[3].mChannelDescriptions[0].mChannelFlags = 15;
            a2[4].mChannelBitmap = 52;
            LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 54;
            a2->mChannelDescriptions[0].mCoordinates[0] = -45.0;
            a2[1].mNumberChannelDescriptions = 1110704128;
            a2[1].mChannelDescriptions[0].mCoordinates[2] = -135.0;
            a2[2].mChannelDescriptions[0].mChannelFlags = 1124532224;
            a2[3].mChannelBitmap = -1036779520;
            a2[3].mChannelDescriptions[0].mCoordinates[1] = 45.0;
            a2[4].mChannelDescriptions[0].mChannelLabel = -1022951424;
            a2[5].mChannelLayoutTag = 1124532224;
            goto LABEL_399;
          }

          if (a1 != 7405571)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          v49 = 3;
          goto LABEL_394;
        }

        if (a1 != 7012356)
        {
          if (a1 == 7077892)
          {
            v103 = &a2->mChannelDescriptions[0].mCoordinates[2];
            v104 = 4;
            do
            {
              *(v103 - 3) = 2;
              *v103 = 1.0;
              v103 += 5;
              --v104;
            }

            while (v104);
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            a2->mChannelDescriptions[0].mCoordinates[0] = -45.0;
            a2[1].mNumberChannelDescriptions = 1110704128;
            a2[1].mChannelDescriptions[0].mCoordinates[2] = -135.0;
            a2[2].mChannelDescriptions[0].mChannelFlags = 1124532224;
          }

          else
          {
            if (a1 != 7143429)
            {
              return result;
            }

            v64 = &a2->mChannelDescriptions[0].mCoordinates[2];
            v65 = 5;
            do
            {
              *(v64 - 3) = 2;
              *v64 = 1.0;
              v64 += 5;
              --v65;
            }

            while (v65);
            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
            a2->mChannelDescriptions[0].mCoordinates[0] = -72.0;
            a2[1].mNumberChannelDescriptions = 1116733440;
            a2[1].mChannelDescriptions[0].mCoordinates[2] = -144.0;
            a2[2].mChannelDescriptions[0].mChannelFlags = 1125122048;
            a2[3].mChannelBitmap = 0;
          }

          goto LABEL_399;
        }

        a2->mChannelDescriptions[0].mChannelLabel = 200;
        a2[1].mChannelLayoutTag = 201;
        LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 202;
        v59 = 203;
        goto LABEL_389;
      }

      if (a1 <= 9371654)
      {
        if (a1 <= 8912899)
        {
          if (a1 <= 8650755)
          {
            if (a1 == 8454152)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              v62 = 3;
LABEL_370:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v62;
              v60 = 4;
              goto LABEL_371;
            }

            if (a1 == 8519688)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 5;
              a2[3].mChannelDescriptions[0].mChannelFlags = 6;
              a2[4].mChannelBitmap = 38;
              v47 = 39;
              goto LABEL_391;
            }

            if (a1 != 8585219)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v49 = 9;
LABEL_394:
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v49;
            goto LABEL_399;
          }

          if (a1 > 8781827)
          {
            if (a1 != 8781828)
            {
              if (a1 != 8847365)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              v72 = 4;
LABEL_313:
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v72;
              a2[2].mNumberChannelDescriptions = 5;
              v84 = 6;
              goto LABEL_367;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v89 = 4;
LABEL_388:
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v89;
            v59 = 9;
            goto LABEL_389;
          }

          if (a1 != 8650756)
          {
            if (a1 != 8716291)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v49 = 4;
            goto LABEL_394;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
          v59 = 6;
LABEL_389:
          a2[2].mNumberChannelDescriptions = v59;
          goto LABEL_399;
        }

        if (a1 <= 9109509)
        {
          if (a1 != 8912900)
          {
            if (a1 == 8978437)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
              a2[2].mNumberChannelDescriptions = 4;
              v84 = 9;
              goto LABEL_367;
            }

            if (a1 != 9043973)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            v66 = 6;
            goto LABEL_281;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          v63 = 3;
          goto LABEL_374;
        }

        if (a1 <= 9240581)
        {
          if (a1 != 9109510)
          {
            if (a1 != 9175047)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
            a2[2].mNumberChannelDescriptions = 6;
            v53 = 3;
            goto LABEL_397;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          a2[1].mChannelLayoutTag = 2;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
          a2[2].mNumberChannelDescriptions = 6;
          v88 = 3;
LABEL_342:
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v88;
          v35 = 9;
          goto LABEL_346;
        }

        if (a1 != 9240582)
        {
          if (a1 != 9306119)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v73 = 1;
LABEL_323:
          a2[1].mChannelLayoutTag = v73;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          v98 = 6;
          goto LABEL_327;
        }

        a2->mChannelDescriptions[0].mChannelLabel = 3;
        v93 = 1;
      }

      else
      {
        if (a1 <= 9895939)
        {
          if (a1 > 9568276)
          {
            if (a1 <= 9764865)
            {
              if (a1 == 9568277)
              {
                a2->mChannelDescriptions[0].mChannelLabel = 1;
                a2[1].mChannelLayoutTag = 2;
                LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
                a2[2].mNumberChannelDescriptions = 14;
                LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 10;
                a2[3].mChannelDescriptions[0].mChannelFlags = 11;
                a2[4].mChannelBitmap = 5;
                LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 6;
                a2[5].mChannelDescriptions[0].mChannelLabel = 13;
                a2[6].mChannelLayoutTag = 15;
                LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 35;
                a2[7].mNumberChannelDescriptions = 36;
                LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 44;
                a2[8].mChannelDescriptions[0].mChannelFlags = 9;
                a2[9].mChannelBitmap = 4;
                LODWORD(a2[9].mChannelDescriptions[0].mCoordinates[1]) = 37;
                a2[10].mChannelDescriptions[0].mChannelLabel = 7;
                a2[11].mChannelLayoutTag = 8;
                LODWORD(a2[11].mChannelDescriptions[0].mCoordinates[0]) = 40;
                a2[12].mNumberChannelDescriptions = 41;
                LODWORD(a2[12].mChannelDescriptions[0].mCoordinates[2]) = 45;
                goto LABEL_399;
              }

              if (a1 != 9699335)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              a2[1].mChannelLayoutTag = 2;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 5;
              a2[2].mNumberChannelDescriptions = 6;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 3;
              a2[3].mChannelDescriptions[0].mChannelFlags = 7;
              v57 = 8;
              goto LABEL_398;
            }

            if (a1 != 9764866)
            {
              if (a1 != 9830403)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              v76 = 3;
LABEL_393:
              a2[1].mChannelLayoutTag = v76;
              v49 = 2;
              goto LABEL_394;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 3;
            v48 = 4;
LABEL_361:
            a2[1].mChannelLayoutTag = v48;
            goto LABEL_399;
          }

          if (a1 != 9371655)
          {
            if (a1 == 9437192)
            {
              a2->mChannelDescriptions[0].mChannelLabel = 3;
              a2[1].mChannelLayoutTag = 1;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              a2[2].mNumberChannelDescriptions = 5;
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
              a2[3].mChannelDescriptions[0].mChannelFlags = 33;
              a2[4].mChannelBitmap = 34;
              v47 = 9;
              goto LABEL_391;
            }

            if (a1 != 9502736)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 3;
            a2[2].mNumberChannelDescriptions = 14;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 10;
            a2[3].mChannelDescriptions[0].mChannelFlags = 11;
            a2[4].mChannelBitmap = 5;
            LODWORD(a2[4].mChannelDescriptions[0].mCoordinates[1]) = 6;
            a2[5].mChannelDescriptions[0].mChannelLabel = 13;
            a2[6].mChannelLayoutTag = 15;
            LODWORD(a2[6].mChannelDescriptions[0].mCoordinates[0]) = 35;
            a2[7].mNumberChannelDescriptions = 36;
            LODWORD(a2[7].mChannelDescriptions[0].mCoordinates[2]) = 44;
            a2[8].mChannelDescriptions[0].mChannelFlags = 9;
            a2[9].mChannelBitmap = 4;
            v70 = 37;
LABEL_300:
            LODWORD(a2[9].mChannelDescriptions[0].mCoordinates[1]) = v70;
            goto LABEL_399;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 3;
          v61 = 1;
          goto LABEL_396;
        }

        if (a1 <= 10158085)
        {
          if (a1 > 10027011)
          {
            if (a1 != 10027012)
            {
              if (a1 != 10092549)
              {
                return result;
              }

              a2->mChannelDescriptions[0].mChannelLabel = 1;
              v82 = 3;
LABEL_280:
              a2[1].mChannelLayoutTag = v82;
              LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
              v66 = 9;
LABEL_281:
              a2[2].mNumberChannelDescriptions = v66;
              v84 = 4;
LABEL_367:
              LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v84;
              goto LABEL_399;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 2;
            v63 = 9;
            goto LABEL_374;
          }

          if (a1 != 9895940)
          {
            if (a1 != 9961476)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            v45 = 3;
LABEL_174:
            a2[1].mChannelLayoutTag = v45;
            v63 = 2;
LABEL_374:
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = v63;
            v59 = 4;
            goto LABEL_389;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          v69 = 3;
LABEL_338:
          a2[1].mChannelLayoutTag = v69;
          v89 = 2;
          goto LABEL_388;
        }

        if (a1 > 10289158)
        {
          if (a1 != 10289159)
          {
            if (a1 != 10354695)
            {
              return result;
            }

            a2->mChannelDescriptions[0].mChannelLabel = 1;
            a2[1].mChannelLayoutTag = 3;
            LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
            a2[2].mNumberChannelDescriptions = 5;
            LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
            a2[3].mChannelDescriptions[0].mChannelFlags = 4;
            v57 = 12;
            goto LABEL_398;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          v100 = 3;
LABEL_352:
          a2[1].mChannelLayoutTag = v100;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = 6;
          v101 = 4;
          goto LABEL_353;
        }

        if (a1 != 10158086)
        {
          if (a1 != 10223623)
          {
            return result;
          }

          a2->mChannelDescriptions[0].mChannelLabel = 1;
          v61 = 3;
LABEL_396:
          a2[1].mChannelLayoutTag = v61;
          LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
          a2[2].mNumberChannelDescriptions = 5;
          v53 = 6;
LABEL_397:
          LODWORD(a2[2].mChannelDescriptions[0].mCoordinates[2]) = v53;
          a2[3].mChannelDescriptions[0].mChannelFlags = 33;
          v57 = 34;
          goto LABEL_398;
        }

        a2->mChannelDescriptions[0].mChannelLabel = 1;
        v93 = 3;
      }

      a2[1].mChannelLayoutTag = v93;
      LODWORD(a2[1].mChannelDescriptions[0].mCoordinates[0]) = 2;
      a2[2].mNumberChannelDescriptions = 5;
      v88 = 6;
      goto LABEL_342;
    }

    if (!v7)
    {
      return 0;
    }

    v36 = 0;
    v37 = vdupq_n_s64(v7 - 1);
    v38 = xmmword_18F9016B0;
    v39 = xmmword_18F9016C0;
    v40 = (a2 + 52);
    v41 = vdupq_n_s64(4uLL);
    do
    {
      v42 = vmovn_s64(vcgeq_u64(v37, v39));
      if (vuzp1_s16(v42, *v37.i8).u8[0])
      {
        LODWORD(v40[-2].mChannelDescriptions[0].mCoordinates[1]) = v36 | 0x40000;
      }

      if (vuzp1_s16(v42, *&v37).i8[2])
      {
        v40[-1].mChannelDescriptions[0].mChannelLabel = v36 | 0x40001;
      }

      if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38))).i32[1])
      {
        v40->mChannelLayoutTag = v36 | 0x40002;
        LODWORD(v40->mChannelDescriptions[0].mCoordinates[0]) = v36 | 0x40003;
      }

      result = 0;
      v36 += 4;
      v38 = vaddq_s64(v38, v41);
      v39 = vaddq_s64(v39, v41);
      v40 = (v40 + 80);
    }

    while (((v7 + 3) & 0x1FFFFFFFCLL) != v36);
  }

  return result;
}

uint64_t equalChannels(const AudioChannelLayout *a1, const AudioChannelLayout *a2, int a3)
{
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions != a2->mNumberChannelDescriptions)
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!mNumberChannelDescriptions)
  {
    v4 = 1;
    goto LABEL_41;
  }

  v4 = 0;
  mChannelDescriptions = a1->mChannelDescriptions;
  v6 = a2->mChannelDescriptions;
  v7 = 1;
  v8 = a1->mNumberChannelDescriptions;
  while (1)
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v9 = mChannelLabel;
    v12 = v6->mChannelLabel;
    ++v6;
    v11 = v12;
    if (!a3)
    {
      goto LABEL_36;
    }

    if (v9 <= 207)
    {
      switch(v9)
      {
        case 42:
          v9 = 3;
          break;
        case 206:
          goto LABEL_17;
        case 207:
          goto LABEL_16;
      }
    }

    else
    {
      if (v9 > 300)
      {
        if (v9 != 301)
        {
          if (v9 != 302)
          {
            goto LABEL_19;
          }

LABEL_16:
          v9 = 2;
          goto LABEL_19;
        }

LABEL_17:
        v9 = 1;
        goto LABEL_19;
      }

      if (v9 == 208)
      {
        goto LABEL_17;
      }

      if (v9 == 209)
      {
        goto LABEL_16;
      }
    }

LABEL_19:
    if (v11 > 207)
    {
      if (v11 > 300)
      {
        if (v11 != 301)
        {
          if (v11 != 302)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }
      }

      else if (v11 != 208)
      {
        if (v11 != 209)
        {
          goto LABEL_33;
        }

LABEL_30:
        v11 = 2;
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v11 == 42)
    {
      break;
    }

    if (v11 != 206)
    {
      if (v11 != 207)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

LABEL_31:
    v11 = 1;
LABEL_36:
    if (v9 == v11)
    {
      v4 = v7++ >= mNumberChannelDescriptions;
      if (--v8)
      {
        continue;
      }
    }

    LOBYTE(mNumberChannelDescriptions) = 0;
    goto LABEL_41;
  }

  v11 = 3;
LABEL_33:
  if (v9 != 3 || v11 != 3 || mNumberChannelDescriptions != 1)
  {
    goto LABEL_36;
  }

  v15 = 0;
  do
  {
    v16 = fabsf(a1->mChannelDescriptions[0].mCoordinates[v15]);
    LOBYTE(mNumberChannelDescriptions) = v16 < 0.00000011921;
  }

  while (v16 < 0.00000011921 && v15++ != 2);
LABEL_41:
  v13 = v4 | mNumberChannelDescriptions;
  return v13 & 1;
}

uint64_t octagonalCompatibility(AudioChannelLayout *a1, AudioChannelLayout *a2)
{
  OctagonalStyle = getOctagonalStyle(a1);
  result = getOctagonalStyle(a2);
  if (OctagonalStyle > 1)
  {
    if (OctagonalStyle == 2)
    {
      if (result != 3)
      {
        if (result != 1)
        {
          return result;
        }

        mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
        if (!mNumberChannelDescriptions)
        {
          return result;
        }

        for (i = a1->mChannelDescriptions[0].mCoordinates; ; i += 5)
        {
          v13 = *(i - 2);
          if (v13 > 5)
          {
            switch(v13)
            {
              case 6:
                v13 = 36;
                v14 = 1119092736;
                goto LABEL_41;
              case 33:
                v13 = 5;
                v14 = -1022951424;
                goto LABEL_41;
              case 34:
                v13 = 6;
                v14 = 1124532224;
                goto LABEL_41;
            }
          }

          else
          {
            switch(v13)
            {
              case 1:
                v14 = -1036779520;
                goto LABEL_41;
              case 2:
                v14 = 1110704128;
                goto LABEL_41;
              case 5:
                v13 = 35;
                v14 = -1028390912;
LABEL_41:
                v15 = v14;
                goto LABEL_42;
            }
          }

          v15 = *i;
LABEL_42:
          *(i - 2) = v13;
          if ((*(i - 1) & 2) != 0)
          {
            *i = v15;
          }

          if (!--mNumberChannelDescriptions)
          {
            return result;
          }
        }
      }

      v26 = a1->mNumberChannelDescriptions;
      if (!v26)
      {
        return result;
      }

      for (j = a1->mChannelDescriptions[0].mCoordinates; ; j += 5)
      {
        v28 = *(j - 2);
        if (v28 > 5)
        {
          switch(v28)
          {
            case 6:
              v28 = 11;
              v29 = 1119092736;
              goto LABEL_98;
            case 33:
              v28 = 5;
              v29 = -1022951424;
              goto LABEL_98;
            case 34:
              v28 = 6;
              v29 = 1124532224;
              goto LABEL_98;
          }
        }

        else
        {
          switch(v28)
          {
            case 1:
              v29 = -1036779520;
              goto LABEL_98;
            case 2:
              v29 = 1110704128;
              goto LABEL_98;
            case 5:
              v28 = 10;
              v29 = -1028390912;
LABEL_98:
              v30 = v29;
              goto LABEL_99;
          }
        }

        v30 = *j;
LABEL_99:
        *(j - 2) = v28;
        if ((*(j - 1) & 2) != 0)
        {
          *j = v30;
        }

        if (!--v26)
        {
          return result;
        }
      }
    }

    if (result == 2)
    {
      v31 = a1->mNumberChannelDescriptions;
      if (v31)
      {
        mCoordinates = a1->mChannelDescriptions[0].mCoordinates;
        do
        {
          v33 = *(mCoordinates - 2);
          v34 = v33 - 5;
          if ((v33 - 5) > 6)
          {
            v35 = mCoordinates;
          }

          else
          {
            v35 = mCoordinates;
            if ((0x63u >> v34))
            {
              v33 = *&asc_18F916968[4 * v34];
              v35 = (&unk_18F916984 + 4 * v34);
            }
          }

          v36 = *v35;
          *(mCoordinates - 2) = v33;
          if ((*(mCoordinates - 1) & 2) != 0)
          {
            *mCoordinates = v36;
          }

          mCoordinates += 5;
          --v31;
        }

        while (v31);
      }

      return result;
    }

    if (result != 1)
    {
      return result;
    }

    v16 = a1->mNumberChannelDescriptions;
    if (!v16)
    {
      return result;
    }

    for (k = a1->mChannelDescriptions[0].mCoordinates; ; k += 5)
    {
      v18 = *(k - 2);
      if (v18 > 9)
      {
        if (v18 == 10)
        {
          v18 = 35;
          v19 = -1028390912;
          goto LABEL_60;
        }

        if (v18 == 11)
        {
          v18 = 36;
          v19 = 1119092736;
          goto LABEL_60;
        }
      }

      else
      {
        if (v18 == 1)
        {
          v19 = -1036779520;
          goto LABEL_60;
        }

        if (v18 == 2)
        {
          v19 = 1110704128;
LABEL_60:
          v20 = v19;
          goto LABEL_61;
        }
      }

      v20 = *k;
LABEL_61:
      *(k - 2) = v18;
      if ((*(k - 1) & 2) != 0)
      {
        *k = v20;
      }

      if (!--v16)
      {
        return result;
      }
    }
  }

  if (!OctagonalStyle)
  {
    return result;
  }

  if (result == 3)
  {
    v21 = a1->mNumberChannelDescriptions;
    if (!v21)
    {
      return result;
    }

    for (m = a1->mChannelDescriptions[0].mCoordinates; ; m += 5)
    {
      v23 = *(m - 2);
      if (v23 > 34)
      {
        if (v23 == 35)
        {
          v23 = 10;
          v24 = -1028390912;
          goto LABEL_77;
        }

        if (v23 == 36)
        {
          v23 = 11;
          v24 = 1119092736;
          goto LABEL_77;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v24 = -1036779520;
          goto LABEL_77;
        }

        if (v23 == 2)
        {
          v24 = 1110704128;
LABEL_77:
          v25 = v24;
          goto LABEL_78;
        }
      }

      v25 = *m;
LABEL_78:
      *(m - 2) = v23;
      if ((*(m - 1) & 2) != 0)
      {
        *m = v25;
      }

      if (!--v21)
      {
        return result;
      }
    }
  }

  if (result == 2)
  {
    v6 = a1->mNumberChannelDescriptions;
    if (v6)
    {
      v7 = a1->mChannelDescriptions[0].mCoordinates;
      do
      {
        v8 = *(v7 - 2);
        if (v8 > 34)
        {
          if (v8 == 35)
          {
            v8 = 5;
            v9 = -1025769472;
            goto LABEL_17;
          }

          if (v8 == 36)
          {
            v8 = 6;
            v9 = 1121714176;
            goto LABEL_17;
          }
        }

        else
        {
          if (v8 == 5)
          {
            v8 = 33;
            v9 = -1021968384;
            goto LABEL_17;
          }

          if (v8 == 6)
          {
            v8 = 34;
            v9 = 1125515264;
LABEL_17:
            v10 = v9;
            goto LABEL_18;
          }
        }

        v10 = *v7;
LABEL_18:
        *(v7 - 2) = v8;
        if ((*(v7 - 1) & 2) != 0)
        {
          *v7 = v10;
        }

        v7 += 5;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t getOctagonalStyle(const AudioChannelLayout *a1)
{
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (!mNumberChannelDescriptions)
  {
    return 0;
  }

  v2 = 0;
  mChannelDescriptions = a1->mChannelDescriptions;
  do
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v4 = mChannelLabel;
    v6 = v2 | 0x200;
    v7 = v2 | 0x10;
    v8 = v2 | 0x20;
    if (mChannelLabel != 36)
    {
      v8 = v2;
    }

    if (v4 != 35)
    {
      v7 = v8;
    }

    if (v4 != 34)
    {
      v6 = v7;
    }

    v9 = v2 | 0x40;
    v10 = v2 | 0x80;
    v11 = v2 | 0x100;
    if (v4 != 33)
    {
      v11 = v2;
    }

    if (v4 != 11)
    {
      v10 = v11;
    }

    if (v4 != 10)
    {
      v9 = v10;
    }

    if (v4 <= 33)
    {
      v6 = v9;
    }

    v12 = v2 | 4;
    v13 = v2 | 8;
    v14 = v2 | 0x800;
    if (v4 != 9)
    {
      v14 = v2;
    }

    if (v4 != 6)
    {
      v13 = v14;
    }

    if (v4 != 5)
    {
      v12 = v13;
    }

    v15 = v2 | 1;
    v16 = v2 | 2;
    if (v4 == 3)
    {
      v2 |= 0x400u;
    }

    if (v4 == 2)
    {
      v2 = v16;
    }

    if (v4 == 1)
    {
      v2 = v15;
    }

    if (v4 > 4)
    {
      v2 = v12;
    }

    if (v4 > 9)
    {
      v2 = v6;
    }

    --mNumberChannelDescriptions;
  }

  while (mNumberChannelDescriptions);
  if ((~v2 & 0xC0F) != 0)
  {
    return 0;
  }

  if (v2 == 3135)
  {
    return 1;
  }

  if (v2 != 3855)
  {
    if (v2 == 3279)
    {
      return 3;
    }

    return 0;
  }

  return 2;
}

uint64_t AT::RingBuffer::Store(AT::RingBuffer *this, const AudioBufferList *a2, unsigned int a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(this + 6);
  if (*(v5 + 40) < a3)
  {
    return 3;
  }

  if ((*(v5 + 168) & 1) == 0 && **(v5 + 64) != a2->mNumberBuffers)
  {
    return 4294967291;
  }

  v9 = a4 + a3;
  v10 = v5 + 176;
  v11 = (v5 + 944);
  v12 = atomic_load((v5 + 944));
  if (*(v5 + 176 + 24 * (v12 & 0x1F) + 8) > a4 || *(v5 + 948) == 1 && *(v5 + 949) == 1)
  {
    v13 = atomic_load(v11);
    v14 = v10 + 24 * (++v13 & 0x1F);
    *v14 = a4;
    *(v14 + 8) = a4;
    *(v14 + 16) = v13;
    atomic_store(v13, v11);
    *(v5 + 948) = 0;
  }

  else
  {
    v15 = (v5 + 944);
    v16 = atomic_load((v5 + 944));
    v17 = *(v5 + 40);
    if (v9 - *(v10 + 24 * (v16 & 0x1F)) > v17)
    {
      v18 = v9 - v17;
      v19 = atomic_load(v15);
      v20 = *(v10 + 24 * (v19 & 0x1F) + 8);
      v21 = atomic_load(v15);
      v22 = v21 + 1;
      v23 = v10 + 24 * (v22 & 0x1F);
      *v23 = v18;
      if (v18 <= v20)
      {
        v18 = v20;
      }

      *(v23 + 8) = v18;
      *(v23 + 16) = v22;
      atomic_store(v22, v15);
    }
  }

  v24 = atomic_load((v5 + 944));
  v25 = *(v10 + 24 * (v24 & 0x1F) + 8);
  v26 = *(v5 + 40);
  v27 = *(v5 + 48);
  if (v25 >= a4)
  {
    v29 = ((((a4 % v26) >> 63) & v26) + (a4 % v26)) * v27;
  }

  else
  {
    v28 = ((((v25 % v26) >> 63) & v26) + (v25 % v26)) * v27;
    v29 = ((((a4 % v26) >> 63) & v26) + (a4 % v26)) * v27;
    v30 = *(v5 + 64);
    if (v28 >= v29)
    {
      if (*v30)
      {
        v104 = v5 + 176;
        v105 = a4 + a3;
        v33 = 0;
        v34 = *(v5 + 52) - v28;
        v35 = 4;
        do
        {
          bzero((*&v30[v35] + v28), v34);
          ++v33;
          v35 += 4;
        }

        while (v33 < *v30);
        v36 = *(v5 + 64);
        if (*v36)
        {
          v37 = 0;
          v38 = 4;
          v10 = v5 + 176;
          do
          {
            bzero(*&v36[v38], v29);
            ++v37;
            v38 += 4;
          }

          while (v37 < *v36);
          v9 = v105;
          goto LABEL_31;
        }

        goto LABEL_30;
      }
    }

    else if (*v30)
    {
      v104 = v5 + 176;
      v105 = a4 + a3;
      v31 = 0;
      v32 = 4;
      do
      {
        bzero((*&v30[v32] + v28), v29 - v28);
        ++v31;
        v32 += 4;
      }

      while (v31 < *v30);
LABEL_30:
      v10 = v104;
      v9 = v105;
    }
  }

LABEL_31:
  LODWORD(v39) = *(v5 + 40);
  v40 = v9 % v39;
  v41 = (((v40 >> 63) & v39) + v40) * *(v5 + 48);
  v42 = *(v5 + 168);
  v43 = v41 - v29;
  if (v41 <= v29)
  {
    if (*(v5 + 168))
    {
      v57 = (((a4 % v39) >> 63) & v39) + a4 % v39;
      v58 = v39 - v57;
      if (v39 != v57)
      {
        v59 = *(v5 + 112);
        v60 = *v59;
        if (v60)
        {
          v61 = *(v5 + 96) * v58;
          v62 = v59 + 4;
          p_mData = &a2->mBuffers[0].mData;
          do
          {
            v64 = *p_mData;
            p_mData += 2;
            *v62 = v64;
            *(v62 - 1) = v61;
            v62 += 2;
            --v60;
          }

          while (v60);
        }

        v65 = *(v5 + 136);
        v66 = *v65;
        if (v66)
        {
          v67 = *(v5 + 24) * v58;
          v68 = v65 + 4;
          v69 = (*(v5 + 64) + 16);
          do
          {
            v70 = *v69;
            v69 += 2;
            *v68 = v70 + v29;
            *(v68 - 1) = v67;
            v68 += 2;
            --v66;
          }

          while (v66);
        }

        v71 = *(v5 + 160);
        v113 = v58;
        v111 = v65;
        v112 = v59;
        v106 = &v113;
        v107 = &v112;
        v108 = &v111;
        v109 = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
        v110 = &v106;
        with_resolved_rt(v71, &v109);
        v39 = *(v5 + 40);
        v40 = v9 % v39;
      }

      v72 = ((v40 >> 63) & v39) + v40;
      if (v72)
      {
        v73 = *(v5 + 112);
        v74 = *v73;
        if (v74)
        {
          v75 = *(v5 + 96);
          v76 = v75 * v58;
          v77 = v75 * v72;
          v78 = v73 + 4;
          v79 = &a2->mBuffers[0].mData;
          do
          {
            v80 = *v79;
            v79 += 2;
            *v78 = &v80[v76];
            *(v78 - 1) = v77;
            v78 += 2;
            --v74;
          }

          while (v74);
        }

        v81 = *(v5 + 136);
        v82 = *v81;
        if (v82)
        {
          v83 = *(v5 + 24) * v72;
          v84 = v81 + 4;
          v85 = (*(v5 + 64) + 16);
          do
          {
            v86 = *v85;
            v85 += 2;
            *v84 = v86;
            *(v84 - 1) = v83;
            v84 += 2;
            --v82;
          }

          while (v82);
        }

        v87 = *(v5 + 160);
        v113 = v72;
        v111 = v81;
        v112 = v73;
        v106 = &v113;
        v107 = &v112;
        v108 = &v111;
        v109 = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
        v110 = &v106;
        with_resolved_rt(v87, &v109);
      }
    }

    else
    {
      v91 = *(v5 + 64);
      if (*v91)
      {
        v92 = v10;
        v93 = v9;
        v94 = 0;
        v95 = *(v5 + 52) - v29;
        v96 = 4;
        do
        {
          memcpy((*&v91[v96] + v29), *(&a2->mNumberBuffers + v96 * 4), v95);
          ++v94;
          v96 += 4;
        }

        while (v94 < *v91);
        v97 = *(v5 + 64);
        v9 = v93;
        v10 = v92;
        if (*v97)
        {
          v98 = 0;
          v99 = 4;
          do
          {
            memcpy(*&v97[v99], (*(&a2->mNumberBuffers + v99 * 4) + v95), v41);
            ++v98;
            v99 += 4;
          }

          while (v98 < *v97);
        }
      }
    }
  }

  else if (*(v5 + 168))
  {
    v44 = *(v5 + 112);
    v45 = *v44;
    if (v45)
    {
      v46 = *(v5 + 96) * a3;
      v47 = v44 + 4;
      v48 = &a2->mBuffers[0].mData;
      do
      {
        v49 = *v48;
        v48 += 2;
        *v47 = v49;
        *(v47 - 1) = v46;
        v47 += 2;
        --v45;
      }

      while (v45);
    }

    v50 = *(v5 + 136);
    v51 = *v50;
    if (v51)
    {
      v52 = *(v5 + 24) * a3;
      v53 = v50 + 4;
      v54 = (*(v5 + 64) + 16);
      do
      {
        v55 = *v54;
        v54 += 2;
        *v53 = v55 + v29;
        *(v53 - 1) = v52;
        v53 += 2;
        --v51;
      }

      while (v51);
    }

    v56 = *(v5 + 160);
    v113 = a3;
    v111 = v50;
    v112 = v44;
    v106 = &v113;
    v107 = &v112;
    v108 = &v111;
    v109 = caulk::rt_function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterConvertComplexBuffer::$_0>;
    v110 = &v106;
    with_resolved_rt(v56, &v109);
  }

  else
  {
    v88 = *(v5 + 64);
    if (*v88)
    {
      v89 = 0;
      v90 = 4;
      do
      {
        memcpy((*&v88[v90] + v29), *(&a2->mNumberBuffers + v90 * 4), v43);
        ++v89;
        v90 += 4;
      }

      while (v89 < *v88);
    }
  }

  result = 0;
  v100 = atomic_load((v5 + 944));
  v101 = *(v10 + 24 * (v100 & 0x1F));
  v102 = atomic_load((v5 + 944));
  v103 = v10 + 24 * (++v102 & 0x1F);
  *v103 = v101;
  *(v103 + 8) = v9;
  *(v103 + 16) = v102;
  atomic_store(v102, (v5 + 944));
  return result;
}

uint64_t singleSurroundPairCompatibility(AudioChannelLayout *a1, AudioChannelLayout *a2)
{
  SingleSurroundPairStyle = getSingleSurroundPairStyle(a1);
  result = getSingleSurroundPairStyle(a2);
  if (SingleSurroundPairStyle <= 1)
  {
    if (!SingleSurroundPairStyle)
    {
      return result;
    }

    if (result != 3)
    {
      if (result != 2)
      {
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_8;
  }

  if (SingleSurroundPairStyle == 2)
  {
    if (result == 3)
    {
LABEL_8:

      return transformSurroundsToRear(a1);
    }
  }

  else if (result == 2)
  {
LABEL_17:

    return transformSurroundsToSideDirect(a1);
  }

  if (result == 1)
  {

    return transformSurroundsToSide(a1);
  }

  return result;
}

uint64_t getSingleSurroundPairStyle(const AudioChannelLayout *a1)
{
  mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
  if (mNumberChannelDescriptions - 7 < 0xFFFFFFFE)
  {
    return 0;
  }

  v2 = 0;
  mChannelDescriptions = a1->mChannelDescriptions;
  v4 = a1->mNumberChannelDescriptions;
  do
  {
    mChannelLabel = mChannelDescriptions->mChannelLabel;
    ++mChannelDescriptions;
    v5 = mChannelLabel;
    v7 = v2 | 0x80;
    v8 = v2 | 0x100;
    v9 = v2 | 0x200;
    if (mChannelLabel != 34)
    {
      v9 = v2;
    }

    if (v5 != 33)
    {
      v8 = v9;
    }

    if (v5 != 11)
    {
      v7 = v8;
    }

    v10 = v2 | 0x20;
    v11 = v2 | 0x40;
    if (v5 != 10)
    {
      v11 = v2;
    }

    if (v5 != 6)
    {
      v10 = v11;
    }

    if (v5 <= 10)
    {
      v7 = v10;
    }

    v12 = v2 | 4;
    v13 = v2 | 8;
    v14 = v2 | 0x10;
    if (v5 != 5)
    {
      v14 = v2;
    }

    if (v5 != 4)
    {
      v13 = v14;
    }

    if (v5 != 3)
    {
      v12 = v13;
    }

    v15 = v2 | 1;
    if (v5 == 2)
    {
      v2 |= 2u;
    }

    if (v5 == 1)
    {
      v2 = v15;
    }

    if (v5 > 2)
    {
      v2 = v12;
    }

    if (v5 > 5)
    {
      v2 = v7;
    }

    --v4;
  }

  while (v4);
  v16 = mNumberChannelDescriptions == 6 ? v2 & 0xFFFFFFF7 : v2;
  if ((~v16 & 7) != 0)
  {
    return 0;
  }

  if (v16 == 55)
  {
    return 1;
  }

  if (v16 != 775)
  {
    if (v16 == 199)
    {
      return 2;
    }

    return 0;
  }

  return 3;
}

uint64_t ChannelLabelReduceMatrixStereo(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = (result + 12);
    v7 = (result + 12);
    v8 = *(result + 8);
    do
    {
      v10 = *v7;
      v7 += 5;
      v9 = v10;
      if (v10 > 37)
      {
        if (v9 == 39)
        {
          v3 = 1;
        }

        else if (v9 == 38)
        {
          v5 = 1;
        }
      }

      else if (v9 == 1)
      {
        v2 = 1;
      }

      else if (v9 == 2)
      {
        v4 = 1;
      }

      --v8;
    }

    while (v8);
    if ((v2 & v5 & 1) == 0 && (v4 & v3 & 1) == 0)
    {
      do
      {
        if (*v6 == 39)
        {
          v11 = 2;
        }

        else
        {
          v11 = *v6;
        }

        if (*v6 == 38)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        *v6 = v12;
        v6 += 5;
        --v1;
      }

      while (v1);
    }
  }

  return result;
}

uint64_t AudioFormatProperty_GetABitmapForCompare(const AudioChannelLayout *a1)
{
  mChannelLayoutTag = a1->mChannelLayoutTag;
  if (!a1->mChannelLayoutTag)
  {
    mNumberChannelDescriptions = a1->mNumberChannelDescriptions;
    if (!mNumberChannelDescriptions)
    {
      return 0;
    }

    LODWORD(result) = 0;
    mChannelDescriptions = a1->mChannelDescriptions;
    do
    {
      mChannelLabel = mChannelDescriptions->mChannelLabel;
      ++mChannelDescriptions;
      v6 = mChannelLabel;
      if (mChannelLabel > 207)
      {
        if (v6 == 302)
        {
          v8 = 2;
        }

        else
        {
          v8 = 0;
        }

        if (v6 == 301)
        {
          v8 = 1;
        }

        if (v6 == 209)
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        if (v6 == 208)
        {
          v9 = 1;
        }

        if (v6 <= 300)
        {
          v8 = v9;
        }
      }

      else
      {
        v8 = 0;
        switch(v6)
        {
          case 1:
          case 38:
            v8 = 1;
            break;
          case 2:
          case 39:
            v8 = 2;
            break;
          case 3:
          case 42:
            v8 = 4;
            break;
          case 4:
          case 37:
            v8 = 8;
            break;
          case 5:
            v8 = 16;
            break;
          case 6:
            v8 = 32;
            break;
          case 7:
            v8 = 64;
            break;
          case 8:
            v8 = 128;
            break;
          case 9:
            v8 = 256;
            break;
          case 10:
            v8 = 512;
            break;
          case 11:
            v8 = 1024;
            break;
          case 12:
            v8 = 2048;
            break;
          case 13:
            v8 = 4096;
            break;
          case 14:
            v8 = 0x2000;
            break;
          case 15:
            v8 = 0x4000;
            break;
          case 16:
            v8 = 0x8000;
            break;
          case 17:
            v8 = 0x10000;
            break;
          case 18:
            v8 = 0x20000;
            break;
          case 33:
            v8 = 0x20000000;
            break;
          case 34:
            v8 = 0x40000000;
            break;
          case 35:
            v8 = 0x8000000;
            break;
          case 36:
            v8 = 0x10000000;
            break;
          case 49:
            v8 = 0x200000;
            break;
          case 51:
            v8 = 0x800000;
            break;
          case 52:
            v8 = 0x1000000;
            break;
          case 53:
            v8 = 0x2000000;
            break;
          case 54:
            v8 = 0x4000000;
            break;
          default:
            break;
        }
      }

      result = v8 | result;
      --mNumberChannelDescriptions;
    }

    while (mNumberChannelDescriptions);
    return result;
  }

  if (mChannelLayoutTag == 0x10000)
  {
    return a1->mChannelBitmap;
  }

  if (mChannelLayoutTag <= 10223622)
  {
    if (mChannelLayoutTag <= 8323079)
    {
      if (mChannelLayoutTag <= 7471106)
      {
        if (mChannelLayoutTag > 7012355)
        {
          if (mChannelLayoutTag > 7208965)
          {
            if (mChannelLayoutTag <= 7340039)
            {
              if (mChannelLayoutTag != 7208966)
              {
                if (mChannelLayoutTag == 7274504)
                {
                  return 1847;
                }

                return 0;
              }

              return 311;
            }

            if (mChannelLayoutTag == 7340040)
            {
              return 83906611;
            }

            if (mChannelLayoutTag != 7405571)
            {
              return 0;
            }

            return 7;
          }

          if (mChannelLayoutTag == 7012356)
          {
            return 0;
          }

          if (mChannelLayoutTag != 7077892)
          {
            v15 = 7143429;
LABEL_180:
            if (mChannelLayoutTag != v15)
            {
              return 0;
            }

            return 55;
          }

          return 51;
        }

        if (mChannelLayoutTag > 6750209)
        {
          if (mChannelLayoutTag == 6750210 || mChannelLayoutTag == 6881282)
          {
            return 3;
          }

          v11 = 6946818;
        }

        else
        {
          if (mChannelLayoutTag == 6553601)
          {
            return 4;
          }

          if (mChannelLayoutTag == 6619138)
          {
            return 3;
          }

          v11 = 6684674;
        }

        if (mChannelLayoutTag != v11)
        {
          return 0;
        }

        return 3;
      }

      if (mChannelLayoutTag > 7864324)
      {
        if (mChannelLayoutTag <= 8060933)
        {
          if (mChannelLayoutTag == 7864325)
          {
            return 55;
          }

          if (mChannelLayoutTag != 7929862)
          {
            v10 = 7995398;
LABEL_189:
            if (mChannelLayoutTag != v10)
            {
              return 0;
            }
          }
        }

        else
        {
          if (mChannelLayoutTag > 8192006)
          {
            if (mChannelLayoutTag == 8192007)
            {
              return 319;
            }

            v12 = 8257544;
            goto LABEL_222;
          }

          if (mChannelLayoutTag != 8060934)
          {
            v10 = 8126470;
            goto LABEL_189;
          }
        }

        return 63;
      }

      if (mChannelLayoutTag > 7667716)
      {
        if (mChannelLayoutTag == 7667717 || mChannelLayoutTag == 7733253)
        {
          return 55;
        }

        v15 = 7798789;
        goto LABEL_180;
      }

      if (mChannelLayoutTag == 7471107)
      {
        return 7;
      }

      if (mChannelLayoutTag == 7536644)
      {
        return 263;
      }

      v13 = 7602180;
LABEL_213:
      if (mChannelLayoutTag != v13)
      {
        return 0;
      }

      return 263;
    }

    if (mChannelLayoutTag > 9175046)
    {
      if (mChannelLayoutTag <= 9764865)
      {
        if (mChannelLayoutTag <= 9371654)
        {
          if (mChannelLayoutTag != 9175047)
          {
            if (mChannelLayoutTag == 9240582)
            {
              return 311;
            }

            v14 = 9306119;
            goto LABEL_168;
          }

          return 1610612791;
        }

        if (mChannelLayoutTag == 9371655)
        {
          return 1610612791;
        }

        if (mChannelLayoutTag == 9437192)
        {
          return 1610613047;
        }

        if (mChannelLayoutTag != 9699335)
        {
          return 0;
        }

        return 247;
      }

      if (mChannelLayoutTag <= 9961475)
      {
        if (mChannelLayoutTag == 9764866)
        {
          return 12;
        }

        if (mChannelLayoutTag == 9830403)
        {
          return 7;
        }

        v13 = 9895940;
        goto LABEL_213;
      }

      if (mChannelLayoutTag > 10092548)
      {
        if (mChannelLayoutTag == 10092549)
        {
          return 271;
        }

        v17 = 10158086;
LABEL_227:
        if (mChannelLayoutTag != v17)
        {
          return 0;
        }

        return 311;
      }

      if (mChannelLayoutTag == 9961476)
      {
        return 15;
      }

      if (mChannelLayoutTag != 10027012)
      {
        return 0;
      }
    }

    else
    {
      if (mChannelLayoutTag <= 8716290)
      {
        if (mChannelLayoutTag <= 8519687)
        {
          if (mChannelLayoutTag == 8323080)
          {
            return 255;
          }

          if (mChannelLayoutTag == 8388616)
          {
            return 1610612799;
          }

          v12 = 8454152;
LABEL_222:
          if (mChannelLayoutTag != v12)
          {
            return 0;
          }

          return 255;
        }

        if (mChannelLayoutTag != 8519688)
        {
          if (mChannelLayoutTag == 8585219)
          {
            return 259;
          }

          if (mChannelLayoutTag != 8650756)
          {
            return 0;
          }

          return 51;
        }

        return 63;
      }

      if (mChannelLayoutTag > 8912899)
      {
        if (mChannelLayoutTag <= 9043972)
        {
          if (mChannelLayoutTag == 8912900)
          {
            return 15;
          }

          if (mChannelLayoutTag != 8978437)
          {
            return 0;
          }

          return 271;
        }

        if (mChannelLayoutTag != 9043973)
        {
          v17 = 9109510;
          goto LABEL_227;
        }

        return 59;
      }

      if (mChannelLayoutTag == 8716291)
      {
        return 11;
      }

      if (mChannelLayoutTag != 8781828)
      {
        if (mChannelLayoutTag != 8847365)
        {
          return 0;
        }

        return 59;
      }
    }

    return 267;
  }

  if (mChannelLayoutTag <= 11927558)
  {
    if (mChannelLayoutTag <= 11075588)
    {
      if (mChannelLayoutTag > 10616839)
      {
        if (mChannelLayoutTag <= 10813447)
        {
          if (mChannelLayoutTag == 10616840)
          {
            return 1599;
          }

          if (mChannelLayoutTag != 10682376)
          {
            if (mChannelLayoutTag == 10747912)
            {
              return 20543;
            }

            return 0;
          }

          return 402653247;
        }

        if (mChannelLayoutTag <= 10944519)
        {
          if (mChannelLayoutTag != 10813448)
          {
            if (mChannelLayoutTag == 10878984)
            {
              return 8511;
            }

            return 0;
          }

          return 2367;
        }

        if (mChannelLayoutTag == 10944520)
        {
          return 10303;
        }

        if (mChannelLayoutTag != 11010052)
        {
          return 0;
        }

        return 15;
      }

      if (mChannelLayoutTag <= 10420230)
      {
        if (mChannelLayoutTag != 10223623)
        {
          if (mChannelLayoutTag != 10289159)
          {
            if (mChannelLayoutTag == 10354695)
            {
              return 2111;
            }

            return 0;
          }

          return 319;
        }

        return 1610612791;
      }

      if (mChannelLayoutTag == 10420231)
      {
        return 8255;
      }

      if (mChannelLayoutTag == 10485768)
      {
        return 1610612799;
      }

      v12 = 10551304;
      goto LABEL_222;
    }

    if (mChannelLayoutTag > 11468806)
    {
      if (mChannelLayoutTag > 11665415)
      {
        if (mChannelLayoutTag > 11796488)
        {
          if (mChannelLayoutTag != 11796489)
          {
            if (mChannelLayoutTag == 11862025)
            {
              return 511;
            }

            return 0;
          }

          return 1610612987;
        }

        else
        {
          if (mChannelLayoutTag != 11665416)
          {
            if (mChannelLayoutTag == 11730952)
            {
              return 503;
            }

            return 0;
          }

          return 1610612979;
        }
      }

      if (mChannelLayoutTag == 11468807)
      {
        return 1610613007;
      }

      if (mChannelLayoutTag != 11534343)
      {
        v12 = 11599880;
        goto LABEL_222;
      }

      return 247;
    }

    if (mChannelLayoutTag > 11272197)
    {
      if (mChannelLayoutTag == 11272198)
      {
        return 1610612999;
      }

      if (mChannelLayoutTag != 11337735)
      {
        if (mChannelLayoutTag == 11403271)
        {
          return 1610614799;
        }

        return 0;
      }

      return 251;
    }

    if (mChannelLayoutTag != 11075589)
    {
      if (mChannelLayoutTag != 11141126)
      {
        if (mChannelLayoutTag == 11206662)
        {
          return 1610614791;
        }

        return 0;
      }

      return 243;
    }

    return 271;
  }

  if (mChannelLayoutTag <= 12976133)
  {
    if (mChannelLayoutTag > 12386311)
    {
      if (mChannelLayoutTag <= 12713991)
      {
        if (mChannelLayoutTag != 12386312)
        {
          if (mChannelLayoutTag != 12582924)
          {
            if (mChannelLayoutTag == 12648464)
            {
              return 2107658303;
            }

            return 0;
          }

          return 1694519359;
        }

        return 1610612799;
      }

      if (mChannelLayoutTag <= 12845065)
      {
        if (mChannelLayoutTag != 12713992)
        {
          if (mChannelLayoutTag == 12779530)
          {
            return 83906623;
          }

          return 0;
        }

        return 10485823;
      }

      if (mChannelLayoutTag == 12845066)
      {
        return 1621098559;
      }

      v13 = 12910596;
      goto LABEL_213;
    }

    if (mChannelLayoutTag <= 12189700)
    {
      if (mChannelLayoutTag != 11927559)
      {
        if (mChannelLayoutTag != 11993096)
        {
          if (mChannelLayoutTag == 12124164)
          {
            return 1610612739;
          }

          return 0;
        }

        return 1610612799;
      }

      return 319;
    }

    if (mChannelLayoutTag == 12189701)
    {
      return 1610612743;
    }

    if (mChannelLayoutTag == 12255238)
    {
      return 1610612751;
    }

    v14 = 12320775;
LABEL_168:
    if (mChannelLayoutTag != v14)
    {
      return 0;
    }

    return 319;
  }

  if (mChannelLayoutTag > 13959173)
  {
    if (mChannelLayoutTag <= 14155780)
    {
      if (mChannelLayoutTag == 13959174)
      {
        return 1610612751;
      }

      if (mChannelLayoutTag == 14024711)
      {
        return 319;
      }

      v16 = 14090248;
    }

    else
    {
      if (mChannelLayoutTag <= 14286854)
      {
        if (mChannelLayoutTag != 14155781)
        {
          if (mChannelLayoutTag != 14221318)
          {
            return 0;
          }

          return 1610612751;
        }

        return 1610612743;
      }

      if (mChannelLayoutTag == 14286855)
      {
        return 319;
      }

      v16 = 14352392;
    }

    if (mChannelLayoutTag == v16)
    {
      return 1610612799;
    }

    return 0;
  }

  if (mChannelLayoutTag <= 13172743)
  {
    if (mChannelLayoutTag != 12976134)
    {
      if (mChannelLayoutTag == 13041671)
      {
        return 319;
      }

      v14 = 13107207;
      goto LABEL_168;
    }

    return 311;
  }

  if (mChannelLayoutTag <= 13303821)
  {
    if (mChannelLayoutTag != 13172744)
    {
      if (mChannelLayoutTag != 13238284)
      {
        return 0;
      }

      return 1694519359;
    }

    return 1610612799;
  }

  if (mChannelLayoutTag != 13303822)
  {
    if (mChannelLayoutTag == 13893637)
    {
      return 1610612743;
    }

    return 0;
  }

  return 1705005119;
}

uint64_t optionallyMixInNonSpeakerChannels(AudioChannelLayout *a1, int a2, AudioChannelLayout *a3, uint64_t a4, float *a5)
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      mChannelLabel = a1->mChannelDescriptions[v10].mChannelLabel;
      if (mChannelLabel < 0x20000)
      {
        if (mChannelLabel == -1)
        {
          if (v10 < v6)
          {
            *(a4 + 4 * (v12 + v10)) = *(a4 + 4 * (v12 + v10)) + 1.0;
          }
        }

        else if (mChannelLabel == 200)
        {
          goto LABEL_14;
        }
      }

      else if (mChannelLabel == 0x20000 || mChannelLabel == 196608 || mChannelLabel == 0x40000)
      {
LABEL_14:
        if (v6)
        {
          v14 = v6;
          do
          {
            *(a4 + 4 * v12) = *(a4 + 4 * v12) + 0.5;
            ++v12;
            --v14;
          }

          while (v14);
        }

        v11 = 1;
        goto LABEL_21;
      }

      v12 += v6;
LABEL_21:
      if (++v10 == a2)
      {
        return v11 & 1;
      }
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t SanitizeClientAudioChannelLayout(AudioChannelLayout const*,unsigned int)::$_0::__invoke(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x193ADF1F0);
  }

  return result;
}

void Resampler2::Resampler2(Resampler2 *this, double a2, double a3, int a4, int a5, uint64_t a6, double a7, char a8)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F032E4F8;
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 28) = a5;
  *(this + 29) = a4;
  *(this + 31) = 0;
  *(this + 66) = 0;
  *(this + 18) = a7;
  *(this + 20) = 0;
  v12 = a2 / a3;
  *(this + 21) = v12;
  *(this + 22) = 1.0 / v12;
  *(this + 184) = a8;
  *(this + 185) = 0;
  *(this + 24) = 0;
  *(this + 200) = 1;
  RateRamp::RateRamp((this + 208));
  *(this + 264) = 0;
  *(this + 34) = 0;
  Resampler2::ConstructorBody(this, 1, a6, a2, a3, 0.0, 0.0);
}

uint64_t Resampler2::ConstructorBody(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = a5;
  v12 = a4;
  v59 = *MEMORY[0x1E69E9840];
  if (a4 <= 0.0 || a5 <= 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = 136315906;
      v52 = "Resampler2.cpp";
      v53 = 1024;
      v54 = 260;
      v55 = 2048;
      v56 = v12;
      v57 = 2048;
      v58 = v11;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Resampler2 bad sample rate(s) : %11.2f %11.2f", &v51, 0x26u);
    }

    if (v12 > 0.0 || v11 > 0.0)
    {
      if (v11 <= 0.0 && v12 > 0.0)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      if (v12 <= 0.0)
      {
        v12 = v11;
      }

      v11 = v15;
    }

    else
    {
      v11 = 44100.0;
      v12 = 44100.0;
    }
  }

  v16 = *(a1 + 116);
  if (v16 == 1818848869)
  {
    *(a1 + 72) = 0x200200000001;
    *(a1 + 192) = 1;
    v17 = 8194;
    goto LABEL_71;
  }

  v18 = vcvtmd_s64_f64(v12);
  v19 = vcvtmd_s64_f64(v11);
  if (v12 != v18 || v11 != v19)
  {
    goto LABEL_43;
  }

  v21 = v18 >= 0 ? v18 : -v18;
  v22 = v19 >= 0 ? v19 : -v19;
  if (v21 >= 2 && v22 >= 2)
  {
    do
    {
      if (v21 <= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v21 < v22)
      {
        v22 = v21;
      }

      v21 = v24 % v22;
    }

    while (v24 % v22);
  }

  else
  {
    v22 = 1;
  }

  v25 = v19 / v22;
  if (v19 / v22 <= 640)
  {
    *(a1 + 133) = 1;
    *(a1 + 108) = v18 / v22;
    *(a1 + 124) = v25;
    *(a1 + 152) = 1.0 / v25;
  }

  else
  {
LABEL_43:
    if (v16 == 1650553971)
    {
      v25 = 512;
    }

    else
    {
      v25 = 128;
    }
  }

  if (a2 == 2)
  {
    v26 = *(a1 + 168);
    v27 = fmax(v26, 1.0);
    if (v26 <= 1.0)
    {
      v26 = 1.0 / v26;
    }

    v28 = ((a6 + -6.0) * (v26 * 0.07016) / (1.0 - v27 * a7) / v25);
    goto LABEL_60;
  }

  v29 = *(a1 + 112);
  v30 = *(a1 + 168);
  v31 = fmax(v30, 1.0);
  v32 = 1.0 / v31;
  if (v16 != 1650553971)
  {
    if (v29 < 0x7F)
    {
      a7 = v32 * 0.9;
      if (v29 <= 0x5F)
      {
        if (v29 <= 0x3F)
        {
          a6 = 80.0;
        }

        else
        {
          a6 = 90.0;
        }

        if (v29 <= 0x3F)
        {
          v35 = 16;
        }

        else
        {
          v35 = 32;
        }
      }

      else
      {
        v35 = 64;
        a6 = 100.0;
      }
    }

    else
    {
      a6 = dbl_18F9018E0[v30 < 1.09];
      a7 = v32 * 0.9;
      v35 = 96;
    }

    goto LABEL_61;
  }

  if (v29 > 0x7E)
  {
    v33 = 1152.0;
    v34 = 0.99;
LABEL_57:
    v36 = 160.0;
    goto LABEL_58;
  }

  if (v29 > 0x5F)
  {
    v33 = 555.0;
    v34 = 0.98;
    goto LABEL_57;
  }

  if (v29 <= 0x3F)
  {
    v34 = dbl_18F9018F0[v29 > 0x1F];
    if (v29 <= 0x1F)
    {
      a6 = 120.0;
    }

    else
    {
      a6 = 144.0;
    }

    v33 = 88.2;
    if (v29 > 0x1F)
    {
      v33 = 192.0;
    }

    goto LABEL_59;
  }

  v33 = 323.4;
  v34 = 0.97;
  v36 = 144.0;
LABEL_58:
  a6 = v36;
LABEL_59:
  a7 = v32 * v34;
  v28 = vcvtpd_s64_f64(v31 * v33);
LABEL_60:
  v35 = (v28 + 15) & 0xFFFFFFF0;
LABEL_61:
  if (v35 <= 96)
  {
    v37 = 96;
  }

  else
  {
    v37 = v35;
  }

  pthread_mutex_lock(&sInitLocker);
  if (sIsInitialized != 1)
  {
    operator new();
  }

  *(a1 + 56) = SincKernelFactory::ReferenceSincKernel(sSincKernelFactory, a6, a7);
  pthread_mutex_unlock(&sInitLocker);
  *(a1 + 48) = *(a1 + 56);
  if (*(a1 + 184) == 1)
  {
    v38 = v37 + 0x2000;
  }

  else
  {
    v38 = vcvtpd_u64_f64(v37 + *(a1 + 168) * 1024.0);
  }

  *(a1 + 76) = v38;
  (*(*a1 + 96))(a1, a3);
  v17 = *(a1 + 76);
LABEL_71:
  v39 = malloc_type_malloc(4 * v17, 0xA7392CC8uLL);
  v40 = v39;
  if (v17 && !v39)
  {
    exception = __cxa_allocate_exception(8uLL);
    v48 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v39, 4 * v17);
  *(a1 + 80) = v40;
  v41 = *(a1 + 76);
  v42 = malloc_type_malloc(4 * v41, 0x3978D4E8uLL);
  v43 = v42;
  if (v41 && !v42)
  {
    v49 = __cxa_allocate_exception(8uLL);
    v50 = std::bad_alloc::bad_alloc(v49);
  }

  bzero(v42, 4 * v41);
  *(a1 + 88) = v43;
  v44 = *MEMORY[0x1E69E5090];
  if (*MEMORY[0x1E69E5090] == -1)
  {
    v44 = CAVectorUnit_Examine();
  }

  *(a1 + 128) = v44;
  result = Resampler2::SetConverterFunction(a1);
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18F6201BC(_Unwind_Exception *a1)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  v4 = MEMORY[0x193ADF220](v1, 0x80C40D6874129);
  ResamplerInitLocker::~ResamplerInitLocker(v4);
  _Unwind_Resume(a1);
}

uint64_t Resampler2::SetPrimeMethod(uint64_t this, int a2)
{
  v2 = this;
  if (*(this + 116) == 1818848869)
  {
    *(this + 72) = 1;
  }

  else
  {
    *(this + 120) = a2;
    if (a2)
    {
      if (a2 == 2)
      {
        this = (*(*this + 152))(this);
        a2 = this - 1;
      }

      else
      {
        a2 = *(*(this + 56) + 20);
      }
    }

    *(v2 + 72) = a2;
    *(v2 + 192) = 0;
    *(v2 + 200) = 1;
    v3 = *(v2 + 144);
    *(v2 + 160) = v3;
    if (v3 != 0.0)
    {
      *(v2 + 133) = 0;

      return Resampler2::SetConverterFunction(v2);
    }
  }

  return this;
}

uint64_t Resampler2::GetKernelSize(Resampler2 *this)
{
  if (*(this + 29) == 1818848869)
  {
    return 2;
  }

  else
  {
    return *(*(this + 7) + 12);
  }
}

uint64_t Resampler2::SetConverterFunction(uint64_t this)
{
  if (*(this + 116) == 1818848869)
  {
    v1 = Resampler2::ConvertLinear;
  }

  else if (*(this + 128) < 1)
  {
    if (*(this + 264) == 1)
    {
      v1 = Resampler2::ConvertScalar<Resampler2::RampedRate>;
    }

    else
    {
      v1 = Resampler2::ConvertScalar<Resampler2::FixedRate>;
    }
  }

  else if (*(this + 133) == 1)
  {
    v1 = Resampler2::ConvertSIMD_SmallIntegerRatio;
  }

  else if (*(this + 264) == 1)
  {
    v1 = Resampler2::ConvertSIMD<Resampler2::RampedRate>;
  }

  else
  {
    v1 = Resampler2::ConvertSIMD<Resampler2::FixedRate>;
  }

  *(this + 8) = v1;
  *(this + 16) = 0;
  return this;
}

uint64_t Resampler2::GetPrimeInfo(uint64_t this, AudioConverterPrimeInfo *a2)
{
  if ((*(this + 120) | 2) == 2)
  {
    v2 = 0.5;
    if (*(this + 116) != 1818848869)
    {
      v2 = *(this + 168) + *(*(this + 56) + 20);
    }

    v3 = vcvtpd_u64_f64(v2);
  }

  else
  {
    v3 = 0;
  }

  a2->leadingFrames = v3;
  a2->trailingFrames = v3;
  return this;
}

unint64_t AT::RingBuffer::FetchAllWithZeroes(AT::RingBuffer *this, AudioBufferList *a2, unsigned int a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  v13 = *(this + 6);
  v14 = *(v13 + 48) * a3;
  v15 = a4 + a3;
  v68 = 0;
  v67 = 0;
  v16 = AT::RingBuffer::Impl::CheckTimeBounds2(v13, a4, v15, &v68, &v67);
  if (v16 == 4)
  {
    *a5 = a3;
    *a7 = 0;
    *a6 = 0;
    if (a2->mNumberBuffers)
    {
      v17 = 0;
      v18 = 16;
      do
      {
        bzero(*(&a2->mNumberBuffers + v18), v14);
        ++v17;
        v18 += 16;
      }

      while (v17 < a2->mNumberBuffers);
      LODWORD(v19) = 4;
    }

    else
    {
      LODWORD(v19) = 4;
    }
  }

  else
  {
    v62 = a7;
    v63 = a6;
    v61 = a3;
    v20 = (v68 - a4) & ~((v68 - a4) >> 63);
    if (v20 >= a3)
    {
      LODWORD(v20) = a3;
    }

    v57 = a3;
    v58 = v15;
    v21 = (v15 - v67) & ~((v15 - v67) >> 63);
    if (v21 >= a3)
    {
      v21 = a3;
    }

    v59 = v21;
    v60 = a5;
    v56 = *(v13 + 48);
    v64 = v67;
    if (v67 > v68)
    {
      v22 = (v56 * v20);
      v23 = *(v13 + 40);
      v24 = ((((v68 % v23) >> 63) & v23) + (v68 % v23)) * v56;
      v25 = ((((v67 % v23) >> 63) & v23) + (v67 % v23)) * v56;
      if (v24 >= v25)
      {
        if (a2->mNumberBuffers)
        {
          __n = v25;
          v30 = 0;
          v31 = *(v13 + 52) - v24;
          v32 = *(v13 + 64);
          v33 = 16;
          do
          {
            memcpy((*(&a2->mNumberBuffers + v33) + v22), (*(v32 + v33) + v24), v31);
            ++v30;
            mNumberBuffers = a2->mNumberBuffers;
            v33 += 16;
          }

          while (v30 < mNumberBuffers);
          if (mNumberBuffers)
          {
            v35 = 0;
            v36 = *(v13 + 64);
            v37 = 16;
            do
            {
              memcpy((*(&a2->mNumberBuffers + v37) + v31 + v22), *(v36 + v37), __n);
              ++v35;
              v37 += 16;
            }

            while (v35 < a2->mNumberBuffers);
          }
        }
      }

      else if (a2->mNumberBuffers)
      {
        v26 = 0;
        v27 = v25 - v24;
        v28 = *(v13 + 64);
        v29 = 16;
        do
        {
          memcpy((*(&a2->mNumberBuffers + v29) + v22), (*(v28 + v29) + v24), v27);
          ++v26;
          v29 += 16;
        }

        while (v26 < a2->mNumberBuffers);
      }
    }

    v66 = 0;
    v19 = AT::RingBuffer::Impl::CheckTimeBounds2(v13, a4, v58, &v66, &v65);
    v38 = v66;
    if (v64 < v66)
    {
      v38 = v64;
    }

    v39 = (v38 - a4) & ~((v38 - a4) >> 63);
    if (v39 >= v57)
    {
      v40 = v57;
    }

    else
    {
      v40 = v39;
    }

    if (v40 && a2->mNumberBuffers)
    {
      v41 = 0;
      v42 = (*(v13 + 48) * v40);
      v43 = 16;
      do
      {
        bzero(*(&a2->mNumberBuffers + v43), v42);
        ++v41;
        v43 += 16;
      }

      while (v41 < a2->mNumberBuffers);
    }

    if (v59 && a2->mNumberBuffers)
    {
      v44 = 0;
      v45 = 16;
      do
      {
        bzero((*(&a2->mNumberBuffers + v45) + (v14 - v56 * v59)), (v56 * v59));
        ++v44;
        v45 += 16;
      }

      while (v44 < a2->mNumberBuffers);
    }

    *v60 = v40;
    *v62 = v59;
    *v63 = v61 - (v59 + v40);
    v46 = a2->mNumberBuffers;
    if (v46)
    {
      v47 = (v46 + 3) & 0x1FFFFFFFCLL;
      v48 = vdupq_n_s64(v46 - 1);
      v49 = xmmword_18F9016B0;
      v50 = xmmword_18F9016C0;
      v51 = &a2[1].mBuffers[0].mData + 1;
      v52 = vdupq_n_s64(4uLL);
      do
      {
        v53 = vmovn_s64(vcgeq_u64(v48, v50));
        if (vuzp1_s16(v53, *v48.i8).u8[0])
        {
          *(v51 - 8) = v14;
        }

        if (vuzp1_s16(v53, *&v48).i8[2])
        {
          *(v51 - 4) = v14;
        }

        if (vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v49))).i32[1])
        {
          *v51 = v14;
          v51[4] = v14;
        }

        v49 = vaddq_s64(v49, v52);
        v50 = vaddq_s64(v50, v52);
        v51 += 16;
        v47 -= 4;
      }

      while (v47);
    }

    v16 = v19;
  }

  return v16 & 0xFFFFFFFF00000000 | v19;
}

uint64_t AT::RingBuffer::Impl::CheckTimeBounds2(AT::RingBuffer::Impl *this, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a2)
  {
    return 4294967246;
  }

  v7 = this + 176;
  v8 = 8;
  result = 4;
  while (1)
  {
    v9 = atomic_load(this + 236);
    v10 = &v7[24 * (v9 & 0x1F)];
    v11 = *v10;
    v12 = *(v10 + 1);
    if (*(v10 + 4) == v9)
    {
      break;
    }

    if (!--v8)
    {
      return result;
    }
  }

  *a4 = a2;
  *a5 = a3;
  if (v11 <= a2)
  {
    if (v12 >= a3)
    {
      return 0;
    }

    else
    {
      *a5 = v12;
      if (v12 <= a2)
      {
        *a4 = v12;
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  else
  {
    *a4 = v11;
    if (v12 >= a3)
    {
      if (v11 >= a3)
      {
        *a5 = v11;
        return 4294967294;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      *a5 = v12;
      return 3;
    }
  }
}

void RenderContextChangeGenerator::checkChange(RenderContextChangeGenerator *this)
{
  v2 = os_workgroup_interval_copy_current_4AudioToolbox();
  v5 = v2;
  if (v2 != this->mLastWorkgroup)
  {
    this->mLastWorkgroup = v2;
    v6[0] = v2;
    memset(&v6[1], 0, 24);
    (*(this->mObserver + 2))(this->mObserver, v6, v3, v4);
  }

  if (v5)
  {
    os_release(v5);
  }
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void Resampler2::~Resampler2(Resampler2 *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F032E4F8;
  if (*(this + 24) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "Resampler2.cpp";
    v7 = 1024;
    v8 = 363;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Someone is deleting a Resampler while it is in use.\n", &v5, 0x12u);
  }

  v2 = *(this + 10);
  if (v2)
  {
    free(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    free(v3);
    *(this + 11) = 0;
  }

  pthread_mutex_lock(&sInitLocker);
  SincKernelFactory::ReleaseSincKernel(sSincKernelFactory, *(this + 6));
  pthread_mutex_unlock(&sInitLocker);
  v4 = *MEMORY[0x1E69E9840];
}

{
  Resampler2::~Resampler2(this);

  JUMPOUT(0x193ADF220);
}

void sub_18F620B2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AT::ExportedResampler::~ExportedResampler(AT::ExportedResampler *this)
{
  *this = &unk_1F032E5E0;
  Resampler2::~Resampler2(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032E5E0;
  Resampler2::~Resampler2(this);
}

void connectionHandler(xpc_object_t object)
{
  if (connectionHandler(_xpc_connection_s *)::onceToken != -1)
  {
    dispatch_once(&connectionHandler(_xpc_connection_s *)::onceToken, &__block_literal_global_4);
  }

  v2 = gService_0;
  if (object)
  {
    xpc_retain(object);
    v4 = object;
    v3 = object;
  }

  else
  {
    v3 = xpc_null_create();
    v4 = v3;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (object_getClass(v3) == MEMORY[0x1E69E9E68])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

LABEL_8:
  v4 = xpc_null_create();
LABEL_9:
  XPCListener::accept_connection((v2 + 8), &v4);
}

void sub_18F620C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  xpc_release(v10);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_18F621234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t *std::unique_ptr<auoop::WorkgroupMirror>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long,caulk::mach::os_workgroup_managed,(caulk::concurrent::guarded_lookup_hash_table_options)0,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long>>::~guarded_lookup_hash_table(v2 + 8);

    JUMPOUT(0x193ADF220);
  }

  return result;
}

void AudioConverterService::setupMemoryPressureWarnings(AudioConverterService *this)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("memoryPresureWarningQueue", v2);
  v4 = *(this + 39);
  *(this + 39) = v3;
  if (v4)
  {
    dispatch_release(v4);
    v3 = *(this + 39);
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 0x10uLL, v3);
  v6 = *(this + 38);
  *(this + 38) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 38);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___ZN21AudioConverterService27setupMemoryPressureWarningsEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_19;
  handler[4] = this;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(*(this + 38));
}

void AudioConverterService::setupTempDirectory(AudioConverterService *this)
{
  v11 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.audio.AudioConverterService");
  unsetenv("TMPDIR");
  if (!_set_user_dir_suffix() || ((v6 & 0x80u) == 0 ? (v1 = __p) : (v1 = __p[0]), (v6 & 0x80u) == 0 ? (v2 = v6) : (v2 = __p[1]), !confstr(65537, v1, v2)))
  {
    if (gAudioConverterDeferredLogOnce != -1)
    {
      dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
    }

    v3 = *gAudioConverterLog;
    if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "AudioConverterService.cpp";
      v9 = 1024;
      v10 = 112;
      _os_log_impl(&dword_18F5DF000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioConverterService: Failed to set user dir suffix. Converter audio captures will not be written.", buf, 0x12u);
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void XPCListener::accept_connection(XPCListener *this, void **a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v4 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 3);
    std::recursive_mutex::lock((v5 + 56));
    v6 = (*(v5 + 128) - *(v5 + 120)) >> 3;
    std::recursive_mutex::unlock((v5 + 56));
    v7 = atomic_load((*(this + 3) + 280));
    buf[0] = 136316162;
    *&buf[1] = "AudioConverterService.cpp";
    v21 = 1024;
    v22 = 279;
    v23 = 2048;
    v24 = v5;
    v25 = 1024;
    v26 = v6 + 1;
    v27 = 1024;
    v28 = v7 + 1;
    _os_log_impl(&dword_18F5DF000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterService -> %p:  New connection, number of connections: %u, number of converters: %u.", buf, 0x28u);
  }

  *v13 = 0u;
  v14 = 0u;
  *v12 = 0u;
  v8 = *a2;
  v15 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v9 = *(this + 3);
  v10 = *v9;
  if (*v9)
  {
    dispatch_retain(*v9);
  }

  v16 = v10;
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v17 = *gAudioConverterLog;
  v18 = 0;
  std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](v19, *(this + 1) + 96);
  v11 = *(this + 3);
  std::recursive_mutex::lock((v11 + 56));
  if (*(v11 + 128) == *(v11 + 120))
  {
    XOSTransactor::beginTransaction((v11 + 320));
  }

  operator new();
}

void sub_18F621B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, dispatch_object_t object, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  std::recursive_mutex::unlock((v38 + 56));
  swix::connection_config::~connection_config(&a11);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<AudioConverterService>::reset[abi:ne200100](uint64_t result)
{
  v1 = gService_0;
  gService_0 = result;
  if (v1)
  {
    v2 = *(v1 + 304);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(v1 + 304);
      *(v1 + 304) = 0;
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 312);
    if (v4)
    {
      dispatch_sync(v4, &__block_literal_global_23);
      v5 = *(v1 + 312);
      *(v1 + 312) = 0;
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    XOSTransactor::endTransaction((v1 + 320));
    v6 = *(v1 + 312);
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(v1 + 304);
    if (v7)
    {
      dispatch_release(v7);
    }

    std::unique_ptr<auoop::WorkgroupMirror>::reset[abi:ne200100]((v1 + 296), 0);
    caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(v1 + 216);
    caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::~lf_read_synchronized_write(v1 + 152);
    v8 = (v1 + 120);
    std::vector<std::unique_ptr<RemoteAudioConverter>>::__destroy_vector::operator()[abi:ne200100](&v8);
    std::recursive_mutex::~recursive_mutex((v1 + 56));
    if (*(v1 + 48) == 1)
    {
      xpc_release(*(v1 + 40));
      *(v1 + 40) = 0;
    }

    swix::connection::~connection((v1 + 8));

    JUMPOUT(0x193ADF220);
  }

  return result;
}

_BYTE *applesauce::CF::convert_to<std::string,0>(UInt8 *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(a2);
    maxBufLen = 0;
    v12.location = 0;
    v12.length = Length;
    CFStringGetBytes(a2, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    std::string::basic_string[abi:ne200100](a1, maxBufLen);
    if ((a1[23] & 0x80u) == 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v13.location = 0;
    v13.length = Length;
    return CFStringGetBytes(a2, v13, 0x8000100u, 0, 0, v8, maxBufLen, &maxBufLen);
  }
}

void sub_18F621F0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::lf_read_synchronized_write(caulk::concurrent::details::lf_read_sync_write_impl *a1)
{
  result = caulk::concurrent::details::lf_read_sync_write_impl::lf_read_sync_write_impl(a1);
  *(result + 8) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t std::function<void ()(void)>::operator=(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a2);
  if (v7 != a1)
  {
    v3 = v8;
    v4 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v4 == a1)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v4 == a1)
    {
      (*(*v4 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v3;
    }
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F6221E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__func<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1},std::allocator<AudioConverterService::addRemoteClient(swix::connection_config const&,auoop::WorkgroupMirror &)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F0325FE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::function<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::operator=(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v9 = v8;
      (*(*v3 + 24))(v3, v8);
    }

    else
    {
      v9 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v9 = 0;
  }

  if (v8 != a1)
  {
    v4 = v9;
    v5 = *(a1 + 24);
    if (v9 == v8)
    {
      if (v5 == a1)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v8);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, a1);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v8);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v9;
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_18F62269C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0,std::allocator<RemoteAudioConverter::setInvalidationHandler(std::function<void ()(void)>)::$_0>,void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void AudioConverterXPC_Server::dispatch_message(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v135 = *MEMORY[0x1E69E9840];
  swix::message::message(a3);
  switch(*a2)
  {
    case 0x3B7B3D0:
      v6 = getpid();
      MEMORY[0x193ADE690](v126, a2);
      v7 = *&v126[8];
      *a3 = *v126;
      *&v126[8] = xpc_null_create();
      v8 = *(a3 + 8);
      *(a3 + 8) = v7;
      xpc_release(v8);
      v9 = *&v126[8];
      *(a3 + 16) = *&v126[16];
      xpc_release(v9);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", 0);
      xpc_dictionary_set_int64(*(a3 + 8), "process", v6);
      goto LABEL_96;
    case 0x3B7B3D1:
      Next = 0;
      *v126 = xmmword_18F901880;
      *&v126[16] = 0;
      do
      {
        Next = AudioComponentFindNext(Next, v126);
      }

      while (Next);
      goto LABEL_35;
    case 0x3B7B3D2:
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v126 = *&buf.mSampleRate;
      *&v126[16] = *&buf.mBytesPerPacket;
      v127[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v127[1] = buf;
      v34 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      *&buf.mSampleRate = *v126;
      *&buf.mBytesPerPacket = *&v126[16];
      *&buf.mBitsPerChannel = v127[0];
      v131 = *&v127[1];
      v36 = AudioConverterXPC_Server::instantiateSpecific(a1, &buf, &v131, v34, v35);
      v38 = v37;
      MEMORY[0x193ADE690](&buf, a2);
      v39 = *&buf.mFormatID;
      *a3 = buf.mSampleRate;
      *&buf.mFormatID = xpc_null_create();
      v40 = *(a3 + 8);
      *(a3 + 8) = v39;
      xpc_release(v40);
      v41 = *&buf.mFormatID;
      *(a3 + 16) = *&buf.mBytesPerPacket;
      xpc_release(v41);
      if (v38)
      {
        v42 = 0;
      }

      else
      {
        v42 = v36;
      }

      xpc_dictionary_set_int64(*(a3 + 8), ".error", v42);
      if (!v42)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", v36);
      }

      goto LABEL_96;
    case 0x3B7B3D3:
      v47 = xpc_null_create();
      *&buf.mSampleRate = v47;
      *&buf.mFormatID = 0;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v120, *(a2 + 8), "ipcResources");
      buf.mSampleRate = v120;
      xpc_release(v47);
      v120 = 0.0;
      *&buf.mFormatID = xpc_dictionary_get_uint64(*(a2 + 8), "clientRendererPtr");
      v48 = *(**(a1 + 16) + 32);
      AudioConverterXPC_Server::setUpRenderer();
    case 0x3B7B3D4:
      v128 = 0u;
      memset(v127, 0, sizeof(v127));
      *&v126[16] = 0u;
      *v126 = 0u;
      v16 = xpc_null_create();
      object = v16;
      uint64 = 0;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v126 = *&buf.mSampleRate;
      *&v126[16] = *&buf.mBytesPerPacket;
      v127[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v127[1] = buf;
      v17 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      v19 = v18;
      *&v128 = v17;
      *(&v128 + 1) = v18;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v119, *(a2 + 8), "ipcResources");
      v20 = v119;
      object = v119;
      xpc_release(v16);
      v119 = 0;
      uint64 = xpc_dictionary_get_uint64(*(a2 + 8), "renderClient");
      *&buf.mSampleRate = *v126;
      *&buf.mBytesPerPacket = *&v126[16];
      *&buf.mBitsPerChannel = v127[0];
      v131 = *&v127[1];
      v21 = AudioConverterXPC_Server::instantiateSpecific(a1, &buf, &v131, v17, v19);
      if ((v22 & 1) != 0 || (v23 = v21) == 0)
      {
        v106 = *(**(a1 + 16) + 32);
        AudioConverterXPC_Server::setUpRenderer();
      }

      MEMORY[0x193ADE690](&buf, a2);
      v107 = *&buf.mFormatID;
      *a3 = buf.mSampleRate;
      *&buf.mFormatID = xpc_null_create();
      v108 = *(a3 + 8);
      *(a3 + 8) = v107;
      xpc_release(v108);
      v109 = *&buf.mFormatID;
      *(a3 + 16) = *&buf.mBytesPerPacket;
      xpc_release(v109);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v23);
      if (!v23)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", v23);
      }

      xpc_release(v20);
      goto LABEL_96;
    case 0x3B7B3D5:
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v126 = *&buf.mSampleRate;
      *&v126[16] = *&buf.mBytesPerPacket;
      v127[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v127[1] = buf;
      v57 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      *&v131.mSampleRate = *v126;
      *&v131.mBytesPerPacket = *&v126[16];
      *&v131.mBitsPerChannel = v127[0];
      v121[0] = *&v127[1];
      v121[1] = *&v127[3];
      v122 = v127[5];
      AudioConverterXPC_Server::instantiateSpecificAndFetchProperties(&buf, a1, &v131, v121, v57, v58);
      MEMORY[0x193ADE690](&v131, a2);
      v59 = *&v131.mFormatID;
      *a3 = v131.mSampleRate;
      *&v131.mFormatID = xpc_null_create();
      v60 = *(a3 + 8);
      *(a3 + 8) = v59;
      xpc_release(v60);
      v61 = *&v131.mFormatID;
      *(a3 + 16) = *&v131.mBytesPerPacket;
      xpc_release(v61);
      v62 = v134;
      if (v134)
      {
        mSampleRate_low = 0;
      }

      else
      {
        mSampleRate_low = LODWORD(buf.mSampleRate);
      }

      xpc_dictionary_set_int64(*(a3 + 8), ".error", mSampleRate_low);
      if (!mSampleRate_low)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", *&buf.mSampleRate);
        if (*&buf.mBytesPerPacket != *&buf.mFormatID)
        {
          xpc_dictionary_set_data(*(a3 + 8), "maxPacketSize", *&buf.mFormatID, *&buf.mBytesPerPacket - *&buf.mFormatID);
        }

        if (v133 != *&buf.mBitsPerChannel)
        {
          xpc_dictionary_set_data(*(a3 + 8), "maxMetadataSize", *&buf.mBitsPerChannel, v133 - *&buf.mBitsPerChannel);
        }
      }

      if (v62)
      {
        caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>(&buf);
      }

      goto LABEL_96;
    case 0x3B7B3D6:
      v128 = 0u;
      memset(v127, 0, sizeof(v127));
      *&v126[16] = 0u;
      *v126 = 0u;
      v73 = xpc_null_create();
      object = v73;
      uint64 = 0;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "sourceFormat");
      *v126 = *&buf.mSampleRate;
      *&v126[16] = *&buf.mBytesPerPacket;
      v127[0] = *&buf.mBitsPerChannel;
      swix::coder<AudioStreamBasicDescription>::decode(&buf, *(a2 + 8), "destinationFormat");
      *&v127[1] = buf;
      v74 = swix::coder<std::span<AudioClassDescription const,18446744073709551615ul>>::decode(*(a2 + 8));
      v76 = v75;
      *&v128 = v74;
      *(&v128 + 1) = v75;
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v118, *(a2 + 8), "ipcResources");
      object = v118;
      xpc_release(v73);
      v118 = 0;
      uint64 = xpc_dictionary_get_uint64(*(a2 + 8), "renderClient");
      *&v131.mSampleRate = *v126;
      *&v131.mBytesPerPacket = *&v126[16];
      *&v131.mBitsPerChannel = v127[0];
      v121[0] = *&v127[1];
      v121[1] = *&v127[3];
      v122 = v127[5];
      AudioConverterXPC_Server::instantiateSpecificAndFetchProperties(&buf, a1, &v131, v121, v74, v76);
      if ((v134 & 1) != 0 || (v77 = LODWORD(buf.mSampleRate), !LODWORD(buf.mSampleRate)))
      {
        v78 = *(**(a1 + 16) + 32);
        AudioConverterXPC_Server::setUpRenderer();
      }

      if (v134)
      {
        caulk::__expected_detail::destroy<std::tuple<unsigned long long,std::vector<unsigned int>,std::vector<unsigned int>>,(void *)0>(&buf);
      }

      MEMORY[0x193ADE690](&buf, a2);
      v79 = *&buf.mFormatID;
      *a3 = buf.mSampleRate;
      *&buf.mFormatID = xpc_null_create();
      v80 = *(a3 + 8);
      *(a3 + 8) = v79;
      xpc_release(v80);
      v81 = *&buf.mFormatID;
      *(a3 + 16) = *&buf.mBytesPerPacket;
      xpc_release(v81);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v77);
      if (!v77)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "remoteConverterPtr", v77);
        if (v115 != v114)
        {
          xpc_dictionary_set_data(*(a3 + 8), "maxPacketSize", v114, v115 - v114);
        }
      }

      xpc_release(object);
      goto LABEL_96;
    case 0x3B7B3D7:
      v49 = xpc_dictionary_get_uint64(*(a2 + 8), "clientRenderer");
      *v126 = *(**(a1 + 16) + 32);
      *&v126[8] = 0;
      *&v126[16] = *v126 + 4;
      v126[24] = 1;
      os_unfair_lock_lock((*v126 + 4));
      LODWORD(v127[0]) = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(*v126);
      HIDWORD(v127[0]) = LODWORD(v127[0]) == 0;
      v50 = caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::copy_previous(v126);
      v52 = *v50;
      v51 = *(v50 + 8);
      if (*v50 == v51)
      {
        goto LABEL_75;
      }

      while (*v52 != v49)
      {
        v52 += 2;
        if (v52 == v51)
        {
          goto LABEL_87;
        }
      }

LABEL_75:
      if (v52 == v51)
      {
LABEL_87:
        caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v126);
        goto LABEL_35;
      }

      v100 = v52[1];
      v101 = v52 + 2;
      if (v52 + 2 != v51)
      {
        do
        {
          v102 = v101[1];
          *(v101 - 2) = *v101;
          *(v101 - 1) = v102;
          v101 += 2;
        }

        while (v101 != v51);
        v52 = v101 - 2;
      }

      *(v50 + 8) = v52;
      caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v126);
      if (v100)
      {
        (*(*v100 + 8))(v100);
      }

      goto LABEL_35;
    case 0x3B7B3D8:
      v94 = xpc_null_create();
      *v126 = 0;
      data = xpc_dictionary_get_data(*(a2 + 8), "configParams", v126);
      if (*v126 == 16 && data != 0)
      {
        v104 = *data;
      }

      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v117, *(a2 + 8), "ipcResources");
      v117 = v94;
      xpc_release(v94);
      v117 = 0;
      xpc_dictionary_get_uint64(*(a2 + 8), "propertyClient");
      v105 = *(**(a1 + 16) + 32);
      operator new();
    case 0x3B7B3D9:
      v28 = xpc_dictionary_get_uint64(*(a2 + 8), "propertyClient");
      v29 = *(**(a1 + 16) + 32);
      v30 = &v29[16];
      *v126 = v29 + 16;
      *&v126[8] = 0;
      *&v126[16] = v29 + 17;
      v126[24] = 1;
      os_unfair_lock_lock(v29 + 17);
      LODWORD(v127[0]) = caulk::concurrent::details::lf_read_sync_write_impl::begin_mutate(v30);
      HIDWORD(v127[0]) = LODWORD(v127[0]) == 0;
      v31 = caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterPropertyServer *>>>::mutator::copy_previous(v126);
      v33 = *v31;
      v32 = *(v31 + 8);
      if (*v31 == v32)
      {
        goto LABEL_69;
      }

      break;
    case 0x3B7B3DA:
      v82 = xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      v83 = *(**(a1 + 16) + 32);
      v84 = AudioConverterDispose(v82);
      v85 = (v83 + 128);
      atomic_fetch_add((v83 + 128), 0xFFFFFFFF);
      atomic_load((v83 + 128));
      v86 = _os_log_pack_size();
      message = caulk::deferred_logger::create_message(gAudioConverterDeferredLog, v86 + 88, 0);
      if (message)
      {
        v88 = message;
        v89 = _os_log_pack_fill();
        v90 = atomic_load(v85);
        *v89 = 67109376;
        *(v89 + 4) = v84;
        *(v89 + 8) = 1024;
        *(v89 + 10) = v90;
        caulk::concurrent::messenger::enqueue(*(gAudioConverterDeferredLog + 16), v88);
      }

      MEMORY[0x193ADE690](v126, a2);
      v91 = *&v126[8];
      *a3 = *v126;
      *&v126[8] = xpc_null_create();
      v92 = *(a3 + 8);
      *(a3 + 8) = v91;
      xpc_release(v92);
      v93 = *&v126[8];
      *(a3 + 16) = *&v126[16];
      xpc_release(v93);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v84);
      goto LABEL_96;
    case 0x3B7B3DB:
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = *(v14 + 8);
        if (*(v15 + 72))
        {
          dispatch_retain(*(v15 + 72));
        }

        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v126, **(a1 + 16) + 40);
        operator new();
      }

      std::terminate();
      return;
    case 0x3B7B3DC:
      v24 = xpc_null_create();
      swix::xpcobj_coder<applesauce::xpc::object>::decode(&v116, *(a2 + 8), "workgroups");
      v25 = v116;
      xpc_release(v24);
      v116 = 0;
      if (gAudioConverterDeferredLogOnce != -1)
      {
        dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
      }

      v26 = *gAudioConverterLog;
      if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
      {
        *v126 = 136315394;
        *&v126[4] = "RemoteAudioConverter.cpp";
        *&v126[12] = 1024;
        *&v126[14] = 243;
        _os_log_impl(&dword_18F5DF000, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterOOP -> Received workgroup synchronization notice in the service.", v126, 0x12u);
      }

      v27 = *(*(**(a1 + 16) + 32) + 144);
      *v126 = v25;
      if (v25 && object_getClass(v25) == MEMORY[0x1E69E9E80])
      {
        xpc_retain(v25);
      }

      else
      {
        *v126 = xpc_null_create();
      }

      auoop::WorkgroupMirror::update(v27, v126);
      xpc_release(*v126);
      MEMORY[0x193ADE690](v126, a2);
      v110 = *&v126[8];
      *a3 = *v126;
      *&v126[8] = xpc_null_create();
      v111 = *(a3 + 8);
      *(a3 + 8) = v110;
      xpc_release(v111);
      v112 = *&v126[8];
      *(a3 + 16) = *&v126[16];
      xpc_release(v112);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", 0);
      xpc_release(v25);
      goto LABEL_96;
    case 0x3B7B3DD:
      v64 = xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      v65 = swix::decode_message::decode<unsigned int>(*(a2 + 8), "propertyID");
      HIDWORD(__n) = 0;
      LOBYTE(v125) = 0;
      LODWORD(v124) = v65;
      *&v131.mSampleRate = &__n + 4;
      *&v121[0] = &v125;
      *&buf.mSampleRate = &v124;
      *&buf.mFormatID = &v131;
      *&buf.mBytesPerPacket = v121;
      *v126 = caulk::function_ref<int ()(AudioConverterAPI *)>::functor_invoker<AudioConverterGetPropertyInfo::$_0>;
      *&v126[8] = &buf;
      v66 = with_resolved(v64, v126);
      v67 = v66;
      v68 = v125;
      if (v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = HIDWORD(__n);
      }

      MEMORY[0x193ADE690](v126, a2);
      v70 = *&v126[8];
      *a3 = *v126;
      *&v126[8] = xpc_null_create();
      v71 = *(a3 + 8);
      *(a3 + 8) = v70;
      xpc_release(v71);
      v72 = *&v126[8];
      *(a3 + 16) = *&v126[16];
      xpc_release(v72);
      xpc_dictionary_set_int64(*(a3 + 8), ".error", v67);
      if (!v67)
      {
        xpc_dictionary_set_uint64(*(a3 + 8), "dataSize", v69);
        xpc_dictionary_set_BOOL(*(a3 + 8), "outWritable", v68 != 0);
      }

      goto LABEL_96;
    case 0x3B7B3DE:
      v10 = xpc_null_create();
      xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "propertyID");
      swix::xpcobj_coder<swix::data>::decode(v126, *(a2 + 8), "inData");
      v11 = *v126;
      v12 = xpc_null_create();
      xpc_release(v10);
      xpc_release(v12);
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "dataSize");
      xpc_dictionary_get_BOOL(*(a2 + 8), "inputRequiredForProperty");
      memset(v121, 0, 24);
      xpc_null_create();
      bytes_ptr = xpc_data_get_bytes_ptr(v11);
      xpc_data_get_length(v11);
      PropertyMarshaller::PropertyMarshaller(v126, bytes_ptr);
    case 0x3B7B3DF:
      v43 = xpc_null_create();
      xpc_dictionary_get_uint64(*(a2 + 8), "converter");
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "propertyID");
      swix::xpcobj_coder<swix::data>::decode(v126, *(a2 + 8), "inData");
      v44 = *v126;
      v45 = xpc_null_create();
      xpc_release(v43);
      xpc_release(v45);
      swix::decode_message::decode<unsigned int>(*(a2 + 8), "dataSize");
      v46 = xpc_data_get_bytes_ptr(v44);
      xpc_data_get_length(v44);
      PropertyMarshaller::PropertyMarshaller(v126, v46);
    default:
      goto LABEL_96;
  }

  while (*v33 != v28)
  {
    v33 += 2;
    if (v33 == v32)
    {
      goto LABEL_81;
    }
  }

LABEL_69:
  if (v33 == v32)
  {
LABEL_81:
    caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v126);
    goto LABEL_82;
  }

  v97 = v33[1];
  v98 = v33 + 2;
  if (v33 + 2 != v32)
  {
    do
    {
      v99 = v98[1];
      *(v98 - 2) = *v98;
      *(v98 - 1) = v99;
      v98 += 2;
    }

    while (v98 != v32);
    v33 = v98 - 2;
  }

  *(v31 + 8) = v33;
  caulk::concurrent::lf_read_synchronized_write<std::vector<std::pair<unsigned long long,AudioConverterRenderServer *>>>::mutator::~mutator(v126);
  if (v97)
  {
    (*(*v97 + 8))(v97);
  }

LABEL_82:
  if (gAudioConverterDeferredLogOnce != -1)
  {
    dispatch_once(&gAudioConverterDeferredLogOnce, &__block_literal_global);
  }

  v103 = *gAudioConverterLog;
  if (os_log_type_enabled(*gAudioConverterLog, OS_LOG_TYPE_DEFAULT))
  {
    *v126 = 136315394;
    *&v126[4] = "RemoteAudioConverter.cpp";
    *&v126[12] = 1024;
    *&v126[14] = 212;
    _os_log_impl(&dword_18F5DF000, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverterService: Destroyed property server", v126, 0x12u);
  }

LABEL_35:
  MEMORY[0x193ADE690](v126, a2);
  v54 = *&v126[8];
  *a3 = *v126;
  *&v126[8] = xpc_null_create();
  v55 = *(a3 + 8);
  *(a3 + 8) = v54;
  xpc_release(v55);
  v56 = *&v126[8];
  *(a3 + 16) = *&v126[16];
  xpc_release(v56);
  xpc_dictionary_set_int64(*(a3 + 8), ".error", 0);
LABEL_96:
  v113 = *MEMORY[0x1E69E9840];
}