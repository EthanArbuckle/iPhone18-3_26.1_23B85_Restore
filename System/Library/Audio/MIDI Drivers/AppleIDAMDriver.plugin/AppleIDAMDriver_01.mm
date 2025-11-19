void sub_F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, std::__shared_weak_count *a20)
{
  if (a16)
  {
    sub_DCFC(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

ItemCount sub_F498(uint64_t a1)
{
  if (*(a1 + 491) != 1)
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  result = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  if (result)
  {
    outValue = 0;
    result = MIDIDeviceGetEntity(*(a1 + 8), result - 1);
    if (result)
    {
      MIDIObjectGetIntegerProperty(result, kMIDIPropertyUMPCanTransmitGroupless, &outValue);
      return outValue != 0;
    }
  }

  return result;
}

void **sub_F520(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1280();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_15ADC(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_15B24(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void **sub_F614(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1280();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      sub_15ADC(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_15B24(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_F728(uint64_t a1, int a2, int a3, int a4)
{
  if (*(a1 + 492) == 1)
  {
    *(a1 + 188) = 0;
    sub_E65C();
    v7 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      v8 = "";
      v9 = *(a1 + 492);
      v37 = "USBMIDIDevice.cpp";
      v36 = 136316162;
      v38 = 1024;
      if (v9)
      {
        v8 = "[AQAMIDI] defaults value midi1fallback is set";
      }

      v39 = 989;
      v40 = 1024;
      *v41 = a2;
      *&v41[4] = 1024;
      *&v41[6] = a3;
      v42 = 2080;
      v43 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoint(inEP: 0x%x, outEP: 0x%x) failed %s", &v36, 0x28u);
    }

    v10 = sub_FD40(a1);
    sub_E65C();
    v11 = qword_2C138;
    v12 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (!v12)
      {
        return;
      }

      v36 = 136315906;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 991;
      v40 = 1024;
      *v41 = a2;
      *&v41[4] = 1024;
      *&v41[6] = a3;
      v13 = "%25s:%-5d [-] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x) - Successfully fell back to MIDI 1.0 after failure.";
    }

    else
    {
      if (!v12)
      {
        return;
      }

      v36 = 136315906;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 993;
      v40 = 1024;
      *v41 = a2;
      *&v41[4] = 1024;
      *&v41[6] = a3;
      v13 = "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x) - MIDI 1.0 fallback failed.";
    }

    v16 = v11;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 30;
    goto LABEL_16;
  }

  v14 = a4;
  if (a4 == 255)
  {
    v14 = *(a1 + 493);
    sub_E65C();
    v15 = qword_2C138;
    if (v14 == 1)
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        v36 = 136315394;
        v37 = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 999;
        v14 = 1;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%25s:%-5d * * * [AQAMIDI] Protocol negotiation skipped because of defaults. Forcing MIDI-1UP as default protocol. * * *", &v36, 0x12u);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 1001;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d * * * [AQAMIDI] Protocol negotiation timed out. Using MIDI-1UP as default protocol. * * *", &v36, 0x12u);
      }

      v14 = 1;
    }
  }

  sub_E65C();
  v19 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v36 = 136315906;
    v37 = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 1004;
    v40 = 1024;
    *v41 = a2;
    *&v41[4] = 1024;
    *&v41[6] = a3;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice::NegotiationCompleteForEndpoints(inEP: 0x%x, outEP: 0x%x)", &v36, 0x1Eu);
  }

  v20 = *(a1 + 136);
  v21 = *(a1 + 144);
  v22 = v20;
  if (v20 != v21)
  {
    v22 = *(a1 + 136);
    while (1)
    {
      v23 = v22[1] ? *v22 | 0x80 : *v22;
      if (a2 == v23)
      {
        break;
      }

      v22 += 8;
      if (v22 == v21)
      {
        goto LABEL_54;
      }
    }
  }

  if (v21 != v22)
  {
    v22[7] = v14;
    v25 = *(a1 + 160);
    v24 = *(a1 + 168);
    v26 = v25;
    if (v25 != v24)
    {
      while (1)
      {
        v27 = v26[1] ? *v26 | 0x80 : *v26;
        if (a3 == v27)
        {
          break;
        }

        v26 += 8;
        if (v26 == v24)
        {
          goto LABEL_54;
        }
      }
    }

    if (v24 != v26)
    {
      v26[7] = v14;
      while (v20 != v21)
      {
        if (v20[7] == 255)
        {
          v29 = 1;
          goto LABEL_53;
        }

        v20 += 8;
      }

      if (v25 == v24)
      {
        v29 = 0;
      }

      else
      {
        v28 = v25 + 8;
        do
        {
          v29 = *(v28 - 1) == 255;
          v30 = *(v28 - 1) == 255 || v28 == v24;
          v28 += 8;
        }

        while (!v30);
      }

LABEL_53:
      *(a1 + 188) = v29;
    }
  }

LABEL_54:
  if ((*(a1 + 188) & 1) == 0)
  {
    sub_E65C();
    v31 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 1019;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d ============================================", &v36, 0x12u);
    }

    sub_E65C();
    v32 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v33 = "MIDI-1UP";
      v37 = "USBMIDIDevice.cpp";
      v36 = 136315650;
      if (v14 == 2)
      {
        v33 = "MIDI 2.0";
      }

      v38 = 1024;
      v39 = 1020;
      v40 = 2080;
      *v41 = v33;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%25s:%-5d == [AQAMIDI] Protocol changed to %s ==", &v36, 0x1Cu);
    }

    sub_E65C();
    v34 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v36 = 136315394;
      v37 = "USBMIDIDevice.cpp";
      v38 = 1024;
      v39 = 1021;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_INFO, "%25s:%-5d ============================================", &v36, 0x12u);
    }

    if (((*(*a1 + 48))(a1) & 1) == 0)
    {
      sub_E65C();
      v35 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 1024;
        v13 = "%25s:%-5d [!] USBMIDIDevice::NegotiationCompleteForEndpoint() - unable to start I/O";
        v16 = v35;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 18;
LABEL_16:
        _os_log_impl(&dword_0, v16, v17, v13, &v36, v18);
      }
    }
  }
}

uint64_t sub_FD40(uint64_t a1)
{
  *(a1 + 491) = 0;
  sub_E65C();
  v2 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 248;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d * * * [AQAMIDI] MIDI protocol negotiation failed. Falling back to USB MIDI 1.0 configuration * * *", buf, 0x12u);
  }

  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  v4 = (NumberOfEntities - 1);
  if (NumberOfEntities - 1 >= 0)
  {
    do
    {
      Entity = MIDIDeviceGetEntity(*(a1 + 8), v4);
      MIDIDeviceRemoveEntity(*(a1 + 8), Entity);
      --v4;
    }

    while (v4 != -1);
  }

  sub_E65C();
  v6 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 256;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice::InitializeFallback() - probing device", buf, 0x12u);
  }

  sub_9488(*(a1 + 88), *(a1 + 96), buf);
  if (*buf)
  {
    sub_E65C();
    v7 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *v36 = 136315394;
      *&v36[4] = "USBMIDIDevice.cpp";
      *&v36[12] = 1024;
      *&v36[14] = 260;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d      Creating fallback port map list", v36, 0x12u);
    }

    sub_97E0(1, buf, v36);
    sub_E65C();
    v8 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      *v30 = 136315394;
      v31 = "USBMIDIDevice.cpp";
      v32 = 1024;
      v33 = 264;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d      Setting alternate interface to 0", v30, 0x12u);
    }

    (*(**(a1 + 104) + 176))(*(a1 + 104), 0);
    v9 = *(a1 + 160);
    v10 = *(a1 + 168);
    while (v9 != v10)
    {
      *(v9 + 7) = 0;
      (*(**(a1 + 104) + 224))(*(a1 + 104), *(v9 + 6));
      v9 += 8;
    }

    sub_E65C();
    v11 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v12 = (*(a1 + 144) - *(a1 + 136)) >> 3;
      *v30 = 136315650;
      v31 = "USBMIDIDevice.cpp";
      v32 = 1024;
      v33 = 271;
      v34 = 1024;
      v35 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d      Priming %d input pipe(s)", v30, 0x18u);
    }

    v13 = *(a1 + 136);
    v14 = *(a1 + 144);
    if (v13 != v14)
    {
      v15 = 0;
      do
      {
        v16 = 0;
        *(v13 + 7) = 0;
        v17 = 1;
        do
        {
          v18 = v17;
          v19 = v16 | (2 * v15);
          v20 = *(a1 + 272);
          if (v19 >= (*(a1 + 280) - v20) >> 4)
          {
            sub_CB94();
          }

          v21 = *(v20 + 16 * v19);
          *(v21 + 64) = *(v13 + 6);
          (*(**(a1 + 104) + 224))(*(a1 + 104));
          (*(*a1 + 64))(a1, v21);
          v17 = 0;
          v16 = 1;
        }

        while ((v18 & 1) != 0);
        ++v15;
        v13 += 8;
      }

      while (v13 != v14);
    }

    v23 = *(a1 + 88);
    v22 = *(a1 + 96);
    v24 = (*(**(a1 + 80) + 112))(*(a1 + 80));
    v25 = (*(**(a1 + 80) + 96))(*(a1 + 80));
    v26 = (*(**(a1 + 80) + 104))(*(a1 + 80));
    LODWORD(v23) = sub_96BC(v23, v22, v24, v25, v26, *(a1 + 8), v36, v40, v41, v42);
    sub_E65C();
    v27 = qword_2C138;
    if (v23)
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *v30 = 136315394;
        v31 = "USBMIDIDevice.cpp";
        v32 = 1024;
        v33 = 287;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice::InitializeFallback() - device configured. Starting I/O.", v30, 0x12u);
      }

      v28 = (*(*a1 + 48))(a1);
    }

    else
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136315394;
        v31 = "USBMIDIDevice.cpp";
        v32 = 1024;
        v33 = 290;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::InitializeFallback() - could not configure device", v30, 0x12u);
      }

      v28 = 0;
    }

    if (*v36)
    {
      *&v36[8] = *v36;
      operator delete(*v36);
    }
  }

  else
  {
    v28 = 0;
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  return v28;
}

void sub_10314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_CDF4(&a19);
  _Unwind_Resume(a1);
}

void sub_10358(uint64_t a1)
{
  v2 = MIDIGetDriverIORunLoop();
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = (*(*v3 + 40))(v3);
    if (v5)
    {
      v6 = v5;
      if (CFRunLoopContainsSource(v2, v5, kCFRunLoopDefaultMode))
      {
        CFRunLoopRemoveSource(v2, v6, kCFRunLoopDefaultMode);
      }
    }
  }

  sub_E65C();
  v7 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "USBMIDIDevice.cpp";
    v10 = 1024;
    v11 = 326;
    v12 = 2048;
    v13 = a1;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::UnregisterAsyncSource()", &v8, 0x1Cu);
  }
}

uint64_t sub_10484(uint64_t a1)
{
  sub_E65C();
  v2 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v7.protocol = 136315650;
    *&v7.numPackets = "USBMIDIDevice.cpp";
    WORD2(v7.packet[0].timeStamp) = 1024;
    *(&v7.packet[0].timeStamp + 6) = 331;
    HIWORD(v7.packet[0].wordCount) = 2048;
    *v7.packet[0].words = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::StartIO()", &v7, 0x1Cu);
  }

  *(a1 + 480) = MIDITimerTaskCreate();
  (*(*a1 + 24))(a1, 1);
  if (*(a1 + 491))
  {
    v3 = MIDIEventListInit(&v7, kMIDIProtocol_2_0);
    v7.numPackets = 1;
    v3->timeStamp = 0;
    *&v3->wordCount = 0x3000000000000002;
    v3->words[1] = 0;
    (*(*a1 + 96))(a1, &v7, 0);
  }

  else
  {
    v7.protocol = kMIDIProtocol_1_0;
    *&v7.numPackets = 0;
    HIDWORD(v7.packet[0].timeStamp) = -135266302;
    (*(*a1 + 88))(a1, &v7, 0);
  }

  sub_E65C();
  v4 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v7.protocol = 136315394;
    *&v7.numPackets = "USBMIDIDevice.cpp";
    WORD2(v7.packet[0].timeStamp) = 1024;
    *(&v7.packet[0].timeStamp + 6) = 357;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d      bringing initialized device online...", &v7, 0x12u);
  }

  MIDIObjectSetIntegerProperty(*(a1 + 8), kMIDIPropertyOffline, 0);
  sub_E65C();
  v5 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v7.protocol = 136315650;
    *&v7.numPackets = "USBMIDIDevice.cpp";
    WORD2(v7.packet[0].timeStamp) = 1024;
    *(&v7.packet[0].timeStamp + 6) = 360;
    HIWORD(v7.packet[0].wordCount) = 2048;
    *v7.packet[0].words = a1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::StartIO() = true", &v7, 0x1Cu);
  }

  return 1;
}

uint64_t sub_10728(uint64_t a1)
{
  v2 = a1 + 344;
  result = (*(*(a1 + 344) + 16))(a1 + 344);
  v4 = result;
  *(a1 + 488) = 0;
  if ((*(a1 + 184) & 1) == 0)
  {
    result = (*(*a1 + 72))(a1);
  }

  if (v4)
  {
    return (*(*v2 + 24))(v2);
  }

  return result;
}

void *sub_10808(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_289A8;
  if ((a1[23] & 1) == 0)
  {
    sub_E65C();
    v4 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 185);
      v6 = "Input";
      *&v37[4] = "USBMIDIDevice.cpp";
      v7 = *(a1 + 186);
      v8 = v5 == 0;
      v38 = 1024;
      v39 = 369;
      v9 = "Output";
      if (v8)
      {
        v6 = "N/A";
      }

      *v37 = 136316162;
      v40 = 2048;
      if (!v7)
      {
        v9 = "N/A";
      }

      v41 = a1;
      v42 = 2080;
      v43 = v6;
      v44 = 2080;
      v45 = v9;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [+] USBMIDIDevice(%p)::~USBMIDIDevice() - Halting I/O chain for: %s and %s", v37, 0x30u);
    }

    (*(*a1 + 24))(a1, 0);
    if (((*(*a1 + 112))(a1) & 1) != 0 || (*(*a1 + 104))(a1))
    {
      (*(*a1[10] + 160))(a1[10], a1);
    }

    *(a1 + 184) = 1;
    v10 = a1[20];
    v11 = a1[21];
    while (v10 != v11)
    {
      (*(*a1[13] + 224))(a1[13], *(v10 + 6));
      v10 += 8;
    }

    v12 = a1[17];
    v13 = a1[18];
    while (v12 != v13)
    {
      (*(*a1[13] + 224))(a1[13], *(v12 + 6));
      v12 += 8;
    }

    v14 = 199;
    do
    {
      v16 = a1[34];
      v15 = a1[35];
      if (v16 == v15)
      {
        v18 = 0;
      }

      else
      {
        v17 = v16 + 16;
        do
        {
          v18 = *(*(v17 - 16) + 44);
          if (v18)
          {
            break;
          }

          v8 = v17 == v15;
          v17 += 16;
        }

        while (!v8);
      }

      for (i = a1[37]; i != a1[38]; i += 16)
      {
        if (*(*i + 44))
        {
          v20 = 1;
          goto LABEL_33;
        }
      }

      v20 = 0;
      v21 = 0;
      if (!v18)
      {
        break;
      }

LABEL_33:
      usleep(0x2710u);
      v21 = v18;
    }

    while (v14-- >= 2);
    if ((v20 & 1) != 0 || v21)
    {
      sub_E65C();
      v23 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
      {
        v24 = "complete";
        *&v37[4] = "USBMIDIDevice.cpp";
        v38 = 1024;
        v39 = 407;
        v40 = 2048;
        if (v21)
        {
          v25 = "pending";
        }

        else
        {
          v25 = "complete";
        }

        *v37 = 136316162;
        v41 = a1;
        if (v20)
        {
          v24 = "pending";
        }

        v42 = 2080;
        v43 = v25;
        v44 = 2080;
        v45 = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice(%p)::~USBMIDIDevice() Input:%s Output:%s", v37, 0x30u);
      }
    }

    sub_10D6C(a1 + 34);
    sub_10D6C(a1 + 37);
    (*(*a1 + 40))(a1);
    if (a1[60])
    {
      MIDITimerTaskDispose();
    }
  }

  if (a1[13])
  {
    v26 = a1[12];
    if (v26)
    {
      sub_3CEC(v26, a2, a3);
      operator delete();
    }
  }

  v27 = a1[11];
  if (v27)
  {
    sub_2B44(v27);
    operator delete();
  }

  sub_E65C();
  v28 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    *v37 = 136315650;
    *&v37[4] = "USBMIDIDevice.cpp";
    v38 = 1024;
    v39 = 431;
    v40 = 2048;
    v41 = a1;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "%25s:%-5d [-] USBMIDIDevice(%p)::~USBMIDIDevice()", v37, 0x1Cu);
  }

  *v37 = a1 + 57;
  sub_15950(v37);
  sub_159D4(a1 + 54);
  sub_25DC((a1 + 43));
  *v37 = a1 + 40;
  sub_15A88(v37);
  *v37 = a1 + 37;
  sub_15A88(v37);
  *v37 = a1 + 34;
  sub_15A88(v37);
  v29 = a1[33];
  if (v29)
  {
    sub_DCFC(v29);
  }

  v30 = a1[31];
  if (v30)
  {
    sub_DCFC(v30);
  }

  v31 = a1[29];
  if (v31)
  {
    sub_DCFC(v31);
  }

  v32 = a1[24];
  if (v32)
  {
    a1[25] = v32;
    operator delete(v32);
  }

  v33 = a1[20];
  if (v33)
  {
    a1[21] = v33;
    operator delete(v33);
  }

  v34 = a1[17];
  if (v34)
  {
    a1[18] = v34;
    operator delete(v34);
  }

  *v37 = a1 + 14;
  sub_15A88(v37);
  v35 = a1[9];
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  sub_1C25C(a1);
  return a1;
}

void sub_10D4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1298(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10D6C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_DCFC(v4);
    }
  }

  a1[1] = v2;
}

void sub_10DBC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10808(a1, a2, a3);

  operator delete();
}

void sub_10DF4(uint64_t a1, int a2)
{
  if (*(a1 + 491))
  {
    *(a1 + 12) = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
    v4 = *(a1 + 8);

    sub_17C84(a2, a1, v4, (a1 + 192), (a1 + 16), a1 + 40);
  }

  else
  {

    sub_1C2C4(a1, a2);
  }
}

void sub_10E90(uint64_t a1, uint64_t a2, unsigned __int8 **a3, void *a4, void *a5)
{
  v37 = 0;
  if (a1 && a2)
  {
    v9 = (*(*a2 + 152))(a2, &v37);
    sub_E65C();
    v10 = qword_2C138;
    if (v9)
    {
      sub_1DDCC(qword_2C138, v9);
    }

    else
    {
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v39 = "USBMIDIDevice.cpp";
        v40 = 1024;
        v41 = 464;
        v42 = 1024;
        v43 = v37;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice::FindPipes() -- interface has %d endpoints", buf, 0x18u);
      }

      if (v37)
      {
        v11 = 1;
        v12 = 1;
        while (1)
        {
          WORD2(v36) = 0;
          BYTE6(v36) = -1;
          v13 = sub_3E98(a1, v11, &v36);
          sub_E65C();
          v14 = qword_2C138;
          v15 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO);
          if (v13)
          {
            break;
          }

          if (v15)
          {
            *buf = 136315906;
            v39 = "USBMIDIDevice.cpp";
            v40 = 1024;
            v41 = 469;
            v42 = 1024;
            v43 = v36;
            v44 = 1024;
            v45 = BYTE1(v36);
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d      Got pipe 0x%x direction %d", buf, 0x1Eu);
          }

          v16 = v36;
          if (BYTE1(v36))
          {
            v16 = v36 | 0x80;
          }

          for (i = *a3; ; i += 8)
          {
            if (i == a3[1])
            {
              HIBYTE(v36) = 0;
              goto LABEL_19;
            }

            if (i[2] == v16 || i[3] == v16)
            {
              break;
            }
          }

          v29 = i[4];
          HIBYTE(v36) = v29;
          if (v29 <= 1)
          {
            if (v29)
            {
              sub_E65C();
              v30 = qword_2C138;
              if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
              {
                if (BYTE1(v36))
                {
                  v31 = v36 | 0x80;
                }

                else
                {
                  v31 = v36;
                }

                *buf = 136316162;
                v39 = "USBMIDIDevice.cpp";
                v40 = 1024;
                v41 = 474;
                v42 = 1024;
                v43 = v11;
                v44 = 1024;
                v45 = v36;
                v46 = 1024;
                v47 = v31;
                v20 = v30;
                v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (MIDI-1UP)";
LABEL_24:
                _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, v21, buf, 0x24u);
                goto LABEL_25;
              }

              goto LABEL_25;
            }

LABEL_19:
            sub_E65C();
            v18 = qword_2C138;
            if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
            {
              goto LABEL_25;
            }

            if (BYTE1(v36))
            {
              v19 = v36 | 0x80;
            }

            else
            {
              v19 = v36;
            }

            *buf = 136316162;
            v39 = "USBMIDIDevice.cpp";
            v40 = 1024;
            v41 = 472;
            v42 = 1024;
            v43 = v11;
            v44 = 1024;
            v45 = v36;
            v46 = 1024;
            v47 = v19;
            v20 = v18;
            v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (legacy MIDI 1.0)";
            goto LABEL_24;
          }

          if (v29 == 2)
          {
            sub_E65C();
            v34 = qword_2C138;
            if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
            {
              if (BYTE1(v36))
              {
                v35 = v36 | 0x80;
              }

              else
              {
                v35 = v36;
              }

              *buf = 136316162;
              v39 = "USBMIDIDevice.cpp";
              v40 = 1024;
              v41 = 476;
              v42 = 1024;
              v43 = v11;
              v44 = 1024;
              v45 = v36;
              v46 = 1024;
              v47 = v35;
              v20 = v34;
              v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (MIDI 2.0)";
              goto LABEL_24;
            }
          }

          else if (v29 == 255)
          {
            sub_E65C();
            v32 = qword_2C138;
            if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
            {
              if (BYTE1(v36))
              {
                v33 = v36 | 0x80;
              }

              else
              {
                v33 = v36;
              }

              *buf = 136316162;
              v39 = "USBMIDIDevice.cpp";
              v40 = 1024;
              v41 = 478;
              v42 = 1024;
              v43 = v11;
              v44 = 1024;
              v45 = v36;
              v46 = 1024;
              v47 = v33;
              v20 = v32;
              v21 = "%25s:%-5d      Found pipeIndex %d, pipeNum %d [ep 0x%00x] (Use MIDI-CI to discover protocol)";
              goto LABEL_24;
            }
          }

LABEL_25:
          if (BYTE1(v36) == 1)
          {
            v24 = a4[1];
            if (v24 >= a4[2])
            {
              v25 = sub_15C5C(a4, &v36);
            }

            else
            {
              *v24 = v36;
              v25 = (v24 + 1);
            }

            a4[1] = v25;
            goto LABEL_45;
          }

          if (!BYTE1(v36))
          {
            v22 = a5[1];
            if (v22 >= a5[2])
            {
              v23 = sub_15C5C(a5, &v36);
            }

            else
            {
              *v22 = v36;
              v23 = (v22 + 1);
            }

            a5[1] = v23;
            goto LABEL_45;
          }

          sub_E65C();
          v26 = qword_2C138;
          if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            v39 = "USBMIDIDevice.cpp";
            v40 = 1024;
            v41 = 487;
            v42 = 1024;
            v43 = v11;
            v44 = 1024;
            v45 = BYTE1(v36);
            v27 = v26;
            v28 = "%25s:%-5d [?]  Unknown direction for endpoint %d: %d";
LABEL_33:
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, v28, buf, 0x1Eu);
          }

LABEL_45:
          v11 = ++v12;
          if (v12 > v37)
          {
            return;
          }
        }

        if (!v15)
        {
          goto LABEL_45;
        }

        *buf = 136315906;
        v39 = "USBMIDIDevice.cpp";
        v40 = 1024;
        v41 = 491;
        v42 = 1024;
        v43 = v11;
        v44 = 1024;
        v45 = v13;
        v27 = v14;
        v28 = "%25s:%-5d [?]  Couldn't get pipe for endpoint %d (0x%x)";
        goto LABEL_33;
      }
    }
  }
}

uint64_t sub_1144C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = mach_absolute_time();
  v7 = a1[10];
  v8 = *(a2 + 24);
  v9 = *(a2 + 64);
  v10 = sub_114F4(a1, v9);
  v11 = *(*v7 + 168);

  return v11(v7, a1, v6, v8, a3, v9, v10);
}

uint64_t sub_114F4(void *a1, int a2)
{
  for (i = a1[17]; i != a1[18]; ++i)
  {
    if (a2 == BYTE6(*i))
    {
      return HIBYTE(*i);
    }
  }

  for (j = a1[20]; ; ++j)
  {
    if (j == a1[21])
    {
      return 1;
    }

    if (a2 == BYTE6(*j))
    {
      break;
    }
  }

  return HIBYTE(*j);
}

uint64_t sub_11554(void *a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 112))(a1);
  if (result)
  {
    v24 = a1 + 43;
    v25 = (*(a1[43] + 16))();
    result = sub_1188C(a1, a3);
    v7 = result;
    v8 = a1[24];
    v9 = a3;
    if (a3 < ((a1[25] - v8) >> 3))
    {
      v9 = *(v8 + 8 * a3 + 1);
    }

    if (*a2 >= 1)
    {
      v10 = a2 + 4;
      v28 = 0;
      v27 = 0u;
      memset(__dst, 0, sizeof(__dst));
      v11 = *(a2 + 4);
      v12 = *(v10 + 8);
      if (v12 > 0x40)
      {
        v13 = malloc_type_malloc(*(v10 + 8), 0x100004077774924uLL);
        memcpy(v13, (v10 + 10), v12);
      }

      else
      {
        memcpy(__dst, (v10 + 10), *(v10 + 8));
      }

      v27 = __PAIR64__(v9, a3);
      LOBYTE(v28) = *(v7 + 6);
      operator new();
    }

    v15 = a1[20];
    v14 = a1[21];
    v16 = v14 - v15;
    if (v14 == v15)
    {
      goto LABEL_15;
    }

    v17 = 0;
    v18 = v16 >> 3;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v19 = (v15 + 6);
    while (1)
    {
      v20 = *v19;
      v19 += 8;
      if (v20 == *(result + 6))
      {
        break;
      }

      if (v18 == ++v17)
      {
        goto LABEL_15;
      }
    }

    if (v17 < 0)
    {
LABEL_15:
      __assert_rtn("Send", "USBMIDIDevice.cpp", 555, "currentBufferIndex >= 0");
    }

    v21 = a1[40];
    if (v17 >= ((a1[41] - v21) >> 4))
    {
      sub_CB94();
    }

    v22 = *(v21 + 16 * v17);
    if (v22 && (*(v22 + 44) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      v23 = a1[60];
      mach_absolute_time();
      result = MIDITimerTaskSetNextWakeTime();
    }

    if (v25)
    {
      return (*(*v24 + 24))(v24);
    }
  }

  return result;
}

void sub_1185C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_1188C(void *a1, int a2)
{
  v2 = a1[24];
  if (((a1[25] - v2) >> 3) > a2 && (v3 = v2 + 8 * a2, v4 = *(v3 + 3), *(v3 + 3)) && (v5 = a1[20], (v6 = a1[21] - v5) != 0))
  {
    v7 = v6 >> 3;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (*v5 != v4)
    {
      v5 += 8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v5 = a1[20];
    if (a1[21] == v5)
    {
      sub_CB94();
    }
  }

  return v5;
}

void sub_11904(uint64_t a1, int *a2, int a3)
{
  if (!(*(*a1 + 112))(a1))
  {
    return;
  }

  v6 = sub_1188C(a1, a3);
  v7 = v6[7];
  if (!v6[7])
  {
    if (a3 == 255)
    {
      return;
    }

    v36 = *(a1 + 224);
    if (!v36)
    {
      return;
    }

    goto LABEL_45;
  }

  v8 = *a2;
  if (v7 != 2 && v8 == 2)
  {
    v36 = *(a1 + 240);
    if (!v36)
    {
      return;
    }

LABEL_45:
    *(a1 + 220) = a3;
    v37 = *(*v36 + 16);

    v37();
    return;
  }

  if (v7 == 2 && v8 == 1)
  {
    v36 = *(a1 + 256);
    if (!v36)
    {
      return;
    }

    goto LABEL_45;
  }

  v11 = v6;
  if (a3 != 255)
  {
    v12 = a2[1];
    if (v12)
    {
      v13 = a2 + 2;
      do
      {
        v14 = v13 + 3;
        v15 = v13[2];
        if (v15)
        {
          v16 = &v14[v15];
          v17 = v13 + 3;
          do
          {
            v18 = *v17;
            v19 = v18 >> 28;
            if (*v17 >> 28)
            {
              v20 = v19 == 15;
            }

            else
            {
              v20 = 1;
            }

            if (!v20)
            {
              *v17 = v18 & 0xF0FFFFFF | ((a3 & 0xF) << 24);
            }

            v17 += byte_20300[v19];
          }

          while (v17 != v16);
          v21 = v13[2];
        }

        else
        {
          v21 = 0;
        }

        v13 = &v14[v21];
        --v12;
      }

      while (v12);
    }
  }

  v22 = a1 + 344;
  v23 = (*(*(a1 + 344) + 16))(a1 + 344);
  v24 = *(a1 + 192);
  v25 = a3;
  if (a3 < ((*(a1 + 200) - v24) >> 3))
  {
    v25 = *(v24 + 8 * a3 + 1);
  }

  v26 = v11[6];
  v27 = a2[1];
  if (v27)
  {
    v28 = (a2 + 2);
    do
    {
      if (!v28[2])
      {
        break;
      }

      sub_15E50(buf, v28, a3, v25, v26);
      sub_15DE4((a1 + 456), buf);
      sub_D10C(*(a1 + 464) - 296);
      sub_D1B8(buf);
      v28 += v28[2] + 3;
      --v27;
    }

    while (v27);
    v26 = v11[6];
  }

  v30 = *(a1 + 160);
  v29 = *(a1 + 168);
  v31 = v29 - v30;
  if (v29 == v30)
  {
    goto LABEL_38;
  }

  v32 = 0;
  v33 = v31 >> 3;
  if (v33 <= 1)
  {
    v33 = 1;
  }

  v34 = (v30 + 6);
  while (1)
  {
    v35 = *v34;
    v34 += 8;
    if (v35 == v26)
    {
      break;
    }

    if (v33 == ++v32)
    {
      goto LABEL_38;
    }
  }

  if (v32 < 0)
  {
LABEL_38:
    __assert_rtn("SendPackets", "USBMIDIDevice.cpp", 626, "currentBufferIndex >= 0");
  }

  v38 = *(a1 + 320);
  if (v32 >= ((*(a1 + 328) - v38) >> 4))
  {
    sub_CB94();
  }

  v39 = *(v38 + 16 * v32);
  if (v39)
  {
    if ((*(v39 + 44) & 1) == 0 && !*(a1 + 488))
    {
      *(a1 + 488) = 1;
      v40 = *(a1 + 480);
      mach_absolute_time();
      MIDITimerTaskSetNextWakeTime();
    }
  }

  else
  {
    sub_E65C();
    v41 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "USBMIDIDevice.cpp";
      v44 = 1024;
      v45 = 629;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::SendPackets() - buffer not found", buf, 0x12u);
    }
  }

  if (v23)
  {
    (*(*v22 + 24))(v22);
  }
}

void sub_11D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11D3C(uint64_t a1, uint64_t a2)
{
  atomic_fetch_add((a2 + 8), 1u);
  *(a2 + 44) = 1;
  result = (*(**(a1 + 104) + 264))(*(a1 + 104), *(a2 + 64), *(a2 + 24), *(a2 + 40), sub_11E14, a2);
  if (result == -536854449 || result == -536870163)
  {
    v6 = *(**(a1 + 104) + 264);
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);

    return v6();
  }

  return result;
}

void sub_11E14(uint64_t a1, int a2, unint64_t a3)
{
  *(a1 + 44) = 0;
  v4 = *(a1 + 56);
  if (!v4 || (v7 = *(a1 + 64), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    v16 = a1;
    sub_12094(&v16);
    return;
  }

  v9 = v8;
  v10 = *(a1 + 48);
  v16 = a1;
  if (v10 && a2 != -536870165 && (*(v10 + 184) & 1) == 0)
  {
    if (a2)
    {
      if (a2 == -536870163 && !(*(**(v10 + 104) + 224))(*(v10 + 104), v7))
      {
        (*(*v10 + 64))(v10, a1);
      }

      goto LABEL_20;
    }

    *(v10 + 185) = 1;
    v11 = *(v10 + 188);
    if (a3 <= 4)
    {
      if (*(v10 + 188))
      {
LABEL_19:
        (*(*v10 + 64))(v10, a1);
        goto LABEL_20;
      }
    }

    else if (*(v10 + 188))
    {
      v12 = *(a1 + 64);
      v13 = *(v10 + 112);
      v14 = *(v10 + 120);
      if (v13 != v14)
      {
        while (*(*v13 + 46) != v12)
        {
          v13 += 2;
          if (v13 == v14)
          {
            goto LABEL_24;
          }
        }
      }

      if (v14 == v13)
      {
LABEL_24:
        sub_E65C();
        v15 = qword_2C138;
        if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = "USBMIDIDevice.cpp";
          v19 = 1024;
          v20 = 694;
          v21 = 1024;
          v22 = v12;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] No negotiator for pipeIndex %d", buf, 0x18u);
        }
      }

      else
      {
        sub_1979C(*v13, a1, a3);
      }

      goto LABEL_19;
    }

    (*(*v10 + 80))(v10, a1, a3);
    goto LABEL_19;
  }

LABEL_20:
  sub_12094(&v16);
  sub_DCFC(v9);
}

void sub_12074(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12094(va);
  sub_DCFC(v2);
  _Unwind_Resume(a1);
}

atomic_uint **sub_12094(atomic_uint **a1)
{
  v2 = *a1;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_120F8(uint64_t a1)
{
  if (*(a1 + 491) != 1 || (v2 = *(a1 + 456), v2 == *(a1 + 464)))
  {
    if (!*(a1 + 448))
    {
      return;
    }

    v4 = 0;
    v3 = (*(a1 + 440) + 120);
  }

  else
  {
    v3 = (v2 + 292);
    v4 = 1;
  }

  v5 = *v3;
  v6 = sub_114F4(a1, *v3);
  v8 = *(a1 + 160);
  v7 = *(a1 + 168);
  v9 = v7 - v8;
  if (v7 == v8)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = v9 >> 3;
  if (v11 <= 1)
  {
    v11 = 1;
  }

  v12 = (v8 + 6);
  while (1)
  {
    v13 = *v12;
    v12 += 8;
    if (v13 == v5)
    {
      break;
    }

    if (v11 == ++v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 0)
  {
LABEL_12:
    sub_1DE84();
  }

  v14 = *(a1 + 320);
  if (v10 >= ((*(a1 + 328) - v14) >> 4))
  {
    sub_CB94();
  }

  v15 = *(v14 + 16 * v10);
  if (!v15)
  {
    sub_E65C();
    v21 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v32 = 136315650;
    v33 = "USBMIDIDevice.cpp";
    v34 = 1024;
    v35 = 723;
    v36 = 1024;
    v37 = v5;
    v22 = "%25s:%-5d [!] USBMIDIDevice::DoWrite() - Buffer not found for pipeIndex = %d";
    v23 = v21;
    v24 = 24;
LABEL_37:
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, v22, &v32, v24);
    return;
  }

  v16 = *(a1 + 80);
  v17 = *(v15 + 24);
  v18 = *(v15 + 40);
  v19 = *v16;
  if (v4)
  {
    v20 = (*(v19 + 184))(v16, a1, a1 + 456, v17, v18, v6);
  }

  else
  {
    v20 = (*(v19 + 176))(v16, a1, a1 + 432, v17, v18, v6);
  }

  if (!v20)
  {
    return;
  }

  v25 = *(a1 + 160);
  v26 = *(a1 + 168);
  if (v25 != v26)
  {
    while (*(v25 + 6) != v5)
    {
      v25 += 8;
      if (v25 == v26)
      {
        goto LABEL_35;
      }
    }
  }

  if (v25 == v26)
  {
LABEL_35:
    sub_E65C();
    v31 = qword_2C138;
    if (!os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v32 = 136315394;
    v33 = "USBMIDIDevice.cpp";
    v34 = 1024;
    v35 = 758;
    v22 = "%25s:%-5d [!] USBMIDIDevice::DoWrite() - Missing pipe for queued element";
    v23 = v31;
    v24 = 18;
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 8), 1u);
  *(v15 + 44) = 1;
  v27 = (*(**(a1 + 104) + 272))(*(a1 + 104), v5, *(v15 + 24), v20, sub_12450, v15);
  if (v27 == -536854449 || v27 == -536870163)
  {
    v29 = *(**(a1 + 104) + 272);
    v30 = *(v15 + 24);

    v29();
  }
}

void sub_12450(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(a1 + 48);
    *(a1 + 44) = 0;
    if (v7)
    {
      v8 = (*(*(v7 + 344) + 16))();
      if (a2)
      {
        (*(**(v7 + 104) + 360))(*(v7 + 104), *(a1 + 64));
      }

      else
      {
        *(v7 + 186) = 1;
      }

      if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
      {
        (*(*a1 + 16))(a1);
      }

      if (!a2 && (*(v7 + 184) & 1) == 0)
      {
        (*(*v7 + 72))(v7);
      }

      if (v8 == 1)
      {
        (*(*(v7 + 344) + 24))(v7 + 344);
      }

LABEL_19:

      sub_DCFC(v6);
      return;
    }
  }

  else
  {
    v6 = 0;
    *(a1 + 44) = 0;
  }

  if (atomic_fetch_add((a1 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*a1 + 16))(a1);
  }

  if (v6)
  {
    goto LABEL_19;
  }
}

void sub_12640(uint64_t a1, int a2)
{
  sub_E65C();
  v3 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
  {
    v4 = "false";
    *buf = 136315650;
    v24 = "USBMIDIDevice.cpp";
    if (a2)
    {
      v4 = "true";
    }

    v25 = 1024;
    v26 = 897;
    v27 = 2080;
    *v28 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] USBMIDIDevice::ReconstructPortMapList(forUMP = %s)", buf, 0x1Cu);
  }

  *(a1 + 200) = *(a1 + 192);
  v5 = MIDIDeviceGetNumberOfEntities(*(a1 + 8)) - *(a1 + 189);
  if (v5 >= 1)
  {
    v6 = 0;
    v20 = v5 & 0x7FFFFFFF;
    do
    {
      outValue = 0;
      Entity = MIDIDeviceGetEntity(*(a1 + 8), v6);
      if (MIDIObjectGetIntegerProperty(Entity, @"Cable", &outValue))
      {
        v8 = v6;
      }

      else
      {
        v8 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"In Endpoint", &outValue))
      {
        v9 = 0;
      }

      else
      {
        v9 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Out Endpoint", &outValue))
      {
        v10 = 0;
      }

      else
      {
        v10 = outValue;
      }

      if (((MIDIObjectGetIntegerProperty(Entity, @"Default Protocol", &outValue) == 0) & a2) != 0)
      {
        v11 = outValue;
      }

      else
      {
        v11 = 0;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Group Terminal Block ID", &outValue))
      {
        v12 = 0;
      }

      else
      {
        v12 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"First Group", &outValue))
      {
        v13 = 0;
      }

      else
      {
        v13 = outValue;
      }

      if (MIDIObjectGetIntegerProperty(Entity, @"Number of Groups", &outValue))
      {
        v14 = 0;
      }

      else
      {
        v14 = outValue;
      }

      sub_E65C();
      v15 = qword_2C138;
      if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136317186;
        v24 = "USBMIDIDevice.cpp";
        v25 = 1024;
        v26 = 923;
        v27 = 1024;
        *v28 = v6;
        *&v28[4] = 1024;
        *&v28[6] = v8;
        v29 = 1024;
        v30 = v9;
        v31 = 1024;
        v32 = v10;
        v33 = 1024;
        v34 = v11;
        v35 = 1024;
        v36 = v12;
        v37 = 1024;
        v38 = v14;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d      MIDIPortMap(entity %d, cable %d, inEP 0x%x, outEP 0x%x, protocol %d, gtbID %d, numGroups %d => mMapList", buf, 0x3Cu);
      }

      buf[0] = v6;
      buf[1] = v8;
      buf[2] = v9;
      buf[3] = v10;
      LOBYTE(v24) = v11;
      BYTE1(v24) = v13;
      BYTE2(v24) = v14;
      BYTE3(v24) = v12;
      v16 = *(a1 + 200);
      if (v16 >= *(a1 + 208))
      {
        v17 = sub_CC3C((a1 + 192), buf);
      }

      else
      {
        *v16 = v6;
        v16[1] = v8;
        v16[2] = v9;
        v16[3] = v10;
        v16[4] = v11;
        v16[5] = v13;
        v16[6] = v14;
        v17 = (v16 + 8);
        v16[7] = v12;
      }

      *(a1 + 200) = v17;
      ++v6;
    }

    while (v20 != v6);
  }

  sub_E65C();
  v18 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
  {
    v19 = (*(a1 + 200) - *(a1 + 192)) >> 3;
    *buf = 136315650;
    v24 = "USBMIDIDevice.cpp";
    v25 = 1024;
    v26 = 926;
    v27 = 2048;
    *v28 = v19;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] USBMIDIDevice::ReconstructPortMapList() - %lu port map(s) created", buf, 0x1Cu);
  }
}

void *sub_12A50(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28A58;
  *a1 = off_28A38;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_12AB8(void *a1)
{
  *a1 = off_28A38;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_12B0C(void *a1)
{
  *a1 = off_28A38;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_12B80(uint64_t a1, _DWORD *a2)
{
  v6 = *(a1 + 8);
  (*(v6 + 8))(v7, a1 + 16);
  v8 = 0;
  v7[6] = &v9;
  if (*a2 == 2)
  {
    v5[0] = a1;
    v5[1] = &v6;
    sub_12D88(a2, v5);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v5[0] = &v6;
    sub_12CB4(a2, v5);
  }

  return sub_13CF0(&v6);
}

void sub_12C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_13CF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_12CB4(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v10[0] = v5 + 12;
      v10[1] = v6;
      v10[2] = *v5;
      v10[3] = 0;
      v8 = 0;
      v9 = 0;
      v7 = 0;
      result = sub_12E60(v10, &v9, &v7);
      if (result)
      {
        do
        {
          v12 = v9;
          v11[0] = *a2;
          v11[1] = &v12;
          sub_12F10(&v7, v11);
          v8 = 0;
          v9 = 0;
          v7 = 0;
          result = sub_12E60(v10, &v9, &v7);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

uint64_t sub_12D88(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v11[0] = v5 + 12;
      v11[1] = v6;
      v11[2] = *v5;
      v11[3] = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = sub_12E60(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          *&v12 = a2[1];
          *(&v12 + 1) = &v13;
          sub_13548((v7 + 64), &v8, &v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_12E60(v11, &v10, &v8);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

uint64_t sub_12E60(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = byte_20290[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          std::terminate();
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

unsigned __int16 *sub_12F10(unsigned __int16 *result, uint64_t *a2)
{
  v3 = *result;
  v4 = v3 >> 28;
  v5 = &v36;
  if (v3 >> 28 == 3)
  {
    v22 = (v3 >> 16) & 0xF;
    if (v22 > 6 || BYTE2(v3) > 0x3Fu)
    {
      return result;
    }

    v23 = (v3 >> 20) + 3;
    v24 = bswap32(*(result + 1));
    v34[0] = bswap32(v3);
    v34[1] = v24;
    if (BYTE2(v3) > 0x1Fu)
    {
      v6 = 0;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v6 = 1;
      p_dst = &v36;
      if (!v22)
      {
LABEL_43:
        if ((v23 & 2) != 0)
        {
          *(&__dst + v6++) = -9;
        }

        v7 = *a2;
        v27 = *a2[1];
        v9 = *(*a2 + 56);
        v28 = v7 + 1088;
        v29 = *(v7 + 64);
        if (v29)
        {
          if (*v9 == v27)
          {
            v30 = *(v9 + 8);
            if (*(v30 + v9 + 10 - 1) != 247 && __dst != 240)
            {
              if (v9 + 10 + v6 + v30 <= v28)
              {
LABEL_56:
                result = (v9 + v30 + 10);
                v31 = &__dst;
                if (v6 <= 1)
                {
                  if (!v6)
                  {
LABEL_80:
                    *(v9 + 8) += v6;
                    goto LABEL_81;
                  }

                  if (v6 == 1)
                  {
LABEL_79:
                    *result = *v31;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v6 != 2)
                {
                  if (v6 != 3)
                  {
                    if (v6 == 4)
                    {
LABEL_74:
                      *result = __dst;
                      result = (result + 1);
LABEL_77:
                      v33 = *v5;
                      v32 = v5 + 1;
                      *result = v33;
                      result = (result + 1);
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v6);
                    goto LABEL_80;
                  }

LABEL_76:
                  v5 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v32 = &__dst;
LABEL_78:
                *result = *v32;
                result = (result + 1);
                v31 = v32 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = *(v9 + 8);
          }

          v9 = (v9 + v30 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v9 + v6 + 10 <= v28)
        {
          LODWORD(v30) = 0;
          *(v7 + 64) = v29 + 1;
          *v9 = v27;
          *(v9 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = sub_133A0(v7, v27, &__dst, v6);
LABEL_68:
        v9 = result;
LABEL_81:
        *(v7 + 56) = v9;
        return result;
      }
    }

    memcpy(p_dst, v34 + 2, v22);
    v6 += (v22 - 1) + 1;
    goto LABEL_43;
  }

  if (v4 == 2)
  {
    v14 = v3 & 0xE00000;
    __dst = BYTE2(*result);
    v36 = BYTE1(v3) & 0x7F;
    if ((v3 & 0xE00000) == 0xC00000)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    if (v14 != 12582912)
    {
      v37 = v3 & 0x7F;
    }

    v16 = *a2;
    v17 = *a2[1];
    result = *(*a2 + 56);
    v18 = *a2 + 1088;
    v19 = *(*a2 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = BYTE2(v3);
        v21 = result[4];
        if (v20 != 240 && *(result + v21 + 9) != 247)
        {
          if (result + v15 + v21 + 10 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v21 = result[4];
      }

      result = ((result + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (result + v15 + 10 <= v18)
    {
      LODWORD(v21) = 0;
      *(v16 + 64) = v19 + 1;
      *result = v17;
      result[4] = 0;
LABEL_36:
      v26 = result + v21 + 10;
      if (v14 == 12582912)
      {
        v5 = &__dst;
      }

      else
      {
        *v26++ = __dst;
      }

      *v26 = *v5;
      v26[1] = v5[1];
      result[4] += v15;
      goto LABEL_40;
    }

LABEL_34:
    result = sub_133A0(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_202F0[BYTE2(v3) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v3) + 16)) & 1) == 0)
    {
      v36 = BYTE1(v3) & 0x7F;
      if (BYTE2(v3) == 242)
      {
        v37 = v3 & 0x7F;
      }
    }

    v7 = *a2;
    v8 = *a2[1];
    v9 = *(*a2 + 56);
    v10 = v7 + 1088;
    v11 = *(v7 + 64);
    if (v11)
    {
      if (*v9 == v8)
      {
        v12 = BYTE2(v3);
        v13 = *(v9 + 8);
        if (v12 != 240 && *(v13 + v9 + 10 - 1) != 247)
        {
          if (v9 + 10 + v13 + v6 <= v10)
          {
LABEL_70:
            result = (v9 + v13 + 10);
            v31 = &__dst;
            if (v6 <= 1)
            {
              if (!v6)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v6 != 2)
            {
              if (v6 != 3)
              {
                if (v6 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = sub_133A0(v7, v8, &__dst, v6);
          goto LABEL_68;
        }
      }

      else
      {
        v13 = *(v9 + 8);
      }

      v9 = (v9 + v13 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v9 + v6 + 10 <= v10)
    {
      LODWORD(v13) = 0;
      *(v7 + 64) = v11 + 1;
      *v9 = v8;
      *(v9 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t sub_133A0(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v16 = a1 + 64;
    (**a1)(a1 + 8, &v16);
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      v8 = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v9 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_15:
          v13 = 0;
          goto LABEL_16;
        }

        if (a4 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_10:
            v12 = *a3++;
            *v9++ = v12;
LABEL_13:
            *v9 = *a3;
            v13 = *(a1 + 76);
LABEL_16:
            *(a1 + 76) = v13 + a4;
            return v8;
          case 3:
LABEL_9:
            v11 = *a3++;
            *v9++ = v11;
            goto LABEL_10;
          case 4:
            v10 = *a3++;
            v9 = (a1 + 79);
            *(a1 + 78) = v10;
            goto LABEL_9;
        }
      }

      memmove(v9, a3, a4);
      goto LABEL_15;
    }
  }

  MIDI::LegacyPacketList::create();
  v16 = v15;
  (**a1)(a1 + 8, &v16);
  sub_1351C(&v15, 0);
  v8 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  sub_1351C(&v15, 0);
  return v8;
}

uint64_t *sub_1351C(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return MIDI::LegacyPacketListDeleter::operator()();
  }

  return result;
}

unsigned __int16 *sub_13548(unsigned __int16 *result, unsigned __int16 *a2, __int128 *a3)
{
  v5 = *a2;
  v30 = v3;
  v31 = v4;
  if (((1 << (v5 >> 28)) & 0xA02F) != 0)
  {
    v29 = *a3;
    v7 = a2;
    return sub_13860(v7, &v29);
  }

  if (v5 >> 28 != 4)
  {
    return result;
  }

  v8 = BYTE3(v5) & 0xF | 0x20;
  v9 = *(a2 + 1);
  v10 = BYTE2(v5) >> 4;
  if (v10 > 0xB)
  {
    switch(v10)
    {
      case 0xCu:
        if (v5)
        {
          v28 = 0;
          *&v27[8] = 0;
          v24 = v8 << 24;
          v25 = BYTE2(v5) << 16;
          v26 = (v25 - 0x100000) | (v8 << 24);
          *v27 = (v25 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (v9 >> 8) & 0x7F;
          v29 = *a3;
          sub_13860(v27, &v29);
          v28 = 0;
          *&v27[8] = 0;
          *v27 = v26 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
          v29 = *a3;
          sub_13860(v27, &v29);
        }

        else
        {
          v24 = v8 << 24;
          v25 = BYTE2(v5) << 16;
        }

        v28 = 0;
        *&v27[4] = 0;
        v13 = HIWORD(v9) & 0x7F00 | v24 | v25;
        goto LABEL_31;
      case 0xDu:
        v28 = 0;
        *&v27[4] = 0;
        v13 = (BYTE2(v5) << 16) | (v8 << 24) | (v9 >> 25 << 8);
        goto LABEL_31;
      case 0xEu:
        v28 = 0;
        *&v27[4] = 0;
        v13 = (v9 >> 10) & 0x7F00 | (BYTE2(v5) << 16) | (v8 << 24) | (v9 >> 25);
LABEL_31:
        *v27 = v13;
        v29 = *a3;
        v7 = v27;
        return sub_13860(v7, &v29);
    }

    return result;
  }

  if (v10 - 8 < 4)
  {
    v11 = v10 == 9;
    if (v9 >> 25)
    {
      v11 = v9 >> 25;
    }

    v28 = 0;
    *&v27[4] = 0;
    v12 = (BYTE2(v5) << 16) | (v8 << 24) | v5 & 0x7F00;
    goto LABEL_30;
  }

  if (v10 - 2 < 2)
  {
    v14 = (v5 >> 16) & 0xF;
    v15 = &result[24 * (BYTE3(v5) & 0xF)] + 3 * v14;
    v16 = (v5 >> 8) & 0x7F;
    v17 = v5 & 0x7F;
    v18 = (v9 >> 18) & 0x7F;
    if ((v5 & 0x100000) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    if (v19 == *v15 && v16 == v15[1])
    {
      v20 = v14 | 0xB0;
      if (v17 == v15[2])
      {
        v21 = (v8 << 24) | (v20 << 16);
        goto LABEL_28;
      }
    }

    else
    {
      v20 = v14 | 0xB0;
    }

    if ((v5 & 0x100000) != 0)
    {
      v22 = 25344;
    }

    else
    {
      v22 = 25856;
    }

    v28 = 0;
    *&v27[8] = 0;
    v21 = (v8 << 24) | (v20 << 16);
    v23 = v21 | v22;
    *v27 = v21 | v22 | v16;
    v29 = *a3;
    sub_13860(v27, &v29);
    v28 = 0;
    *&v27[8] = 0;
    *v27 = (v23 | v17) - 256;
    v29 = *a3;
    sub_13860(v27, &v29);
    *v15 = v19;
    v15[1] = v16;
    v15[2] = v17;
LABEL_28:
    v28 = 0;
    *&v27[8] = 0;
    *v27 = v21 | (v9 >> 25) | 0x600;
    v29 = *a3;
    result = sub_13860(v27, &v29);
    if (v18)
    {
      v28 = 0;
      *&v27[4] = 0;
      v11 = v18 | v21;
      v12 = 9728;
LABEL_30:
      v13 = v11 | v12;
      goto LABEL_31;
    }
  }

  return result;
}

unsigned __int16 *sub_13860(unsigned __int16 *result, uint64_t *a2)
{
  v3 = *result;
  v4 = v3 >> 28;
  v5 = &v36;
  if (v3 >> 28 == 3)
  {
    v22 = (v3 >> 16) & 0xF;
    if (v22 > 6 || BYTE2(v3) > 0x3Fu)
    {
      return result;
    }

    v23 = (v3 >> 20) + 3;
    v24 = bswap32(*(result + 1));
    v34[0] = bswap32(v3);
    v34[1] = v24;
    if (BYTE2(v3) > 0x1Fu)
    {
      v6 = 0;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v6 = 1;
      p_dst = &v36;
      if (!v22)
      {
LABEL_43:
        if ((v23 & 2) != 0)
        {
          *(&__dst + v6++) = -9;
        }

        v7 = *a2;
        v27 = *a2[1];
        v9 = *(*a2 + 56);
        v28 = v7 + 1088;
        v29 = *(v7 + 64);
        if (v29)
        {
          if (*v9 == v27)
          {
            v30 = *(v9 + 8);
            if (*(v30 + v9 + 10 - 1) != 247 && __dst != 240)
            {
              if (v9 + 10 + v6 + v30 <= v28)
              {
LABEL_56:
                result = (v9 + v30 + 10);
                v31 = &__dst;
                if (v6 <= 1)
                {
                  if (!v6)
                  {
LABEL_80:
                    *(v9 + 8) += v6;
                    goto LABEL_81;
                  }

                  if (v6 == 1)
                  {
LABEL_79:
                    *result = *v31;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v6 != 2)
                {
                  if (v6 != 3)
                  {
                    if (v6 == 4)
                    {
LABEL_74:
                      *result = __dst;
                      result = (result + 1);
LABEL_77:
                      v33 = *v5;
                      v32 = v5 + 1;
                      *result = v33;
                      result = (result + 1);
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v6);
                    goto LABEL_80;
                  }

LABEL_76:
                  v5 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v32 = &__dst;
LABEL_78:
                *result = *v32;
                result = (result + 1);
                v31 = v32 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v30 = *(v9 + 8);
          }

          v9 = (v9 + v30 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v9 + v6 + 10 <= v28)
        {
          LODWORD(v30) = 0;
          *(v7 + 64) = v29 + 1;
          *v9 = v27;
          *(v9 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = sub_133A0(v7, v27, &__dst, v6);
LABEL_68:
        v9 = result;
LABEL_81:
        *(v7 + 56) = v9;
        return result;
      }
    }

    memcpy(p_dst, v34 + 2, v22);
    v6 += (v22 - 1) + 1;
    goto LABEL_43;
  }

  if (v4 == 2)
  {
    v14 = v3 & 0xE00000;
    __dst = BYTE2(*result);
    v36 = BYTE1(v3) & 0x7F;
    if ((v3 & 0xE00000) == 0xC00000)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    if (v14 != 12582912)
    {
      v37 = v3 & 0x7F;
    }

    v16 = *a2;
    v17 = *a2[1];
    result = *(*a2 + 56);
    v18 = *a2 + 1088;
    v19 = *(*a2 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = BYTE2(v3);
        v21 = result[4];
        if (v20 != 240 && *(result + v21 + 9) != 247)
        {
          if (result + v15 + v21 + 10 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v21 = result[4];
      }

      result = ((result + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (result + v15 + 10 <= v18)
    {
      LODWORD(v21) = 0;
      *(v16 + 64) = v19 + 1;
      *result = v17;
      result[4] = 0;
LABEL_36:
      v26 = result + v21 + 10;
      if (v14 == 12582912)
      {
        v5 = &__dst;
      }

      else
      {
        *v26++ = __dst;
      }

      *v26 = *v5;
      v26[1] = v5[1];
      result[4] += v15;
      goto LABEL_40;
    }

LABEL_34:
    result = sub_133A0(*a2, v17, &__dst, v15);
LABEL_40:
    *(v16 + 56) = result;
    return result;
  }

  if (v4 == 1 && BYTE2(v3) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v3) + 16)) & 1) == 0)
  {
    v6 = byte_202F0[BYTE2(v3) - 240];
    __dst = BYTE2(*result);
    if (((0xDD40uLL >> (BYTE2(v3) + 16)) & 1) == 0)
    {
      v36 = BYTE1(v3) & 0x7F;
      if (BYTE2(v3) == 242)
      {
        v37 = v3 & 0x7F;
      }
    }

    v7 = *a2;
    v8 = *a2[1];
    v9 = *(*a2 + 56);
    v10 = v7 + 1088;
    v11 = *(v7 + 64);
    if (v11)
    {
      if (*v9 == v8)
      {
        v12 = BYTE2(v3);
        v13 = *(v9 + 8);
        if (v12 != 240 && *(v13 + v9 + 10 - 1) != 247)
        {
          if (v9 + 10 + v13 + v6 <= v10)
          {
LABEL_70:
            result = (v9 + v13 + 10);
            v31 = &__dst;
            if (v6 <= 1)
            {
              if (!v6)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v6 != 2)
            {
              if (v6 != 3)
              {
                if (v6 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = sub_133A0(v7, v8, &__dst, v6);
          goto LABEL_68;
        }
      }

      else
      {
        v13 = *(v9 + 8);
      }

      v9 = (v9 + v13 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v9 + v6 + 10 <= v10)
    {
      LODWORD(v13) = 0;
      *(v7 + 64) = v11 + 1;
      *v9 = v8;
      *(v9 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t sub_13CF0(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

void *sub_13D64(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28AB0;
  *a1 = off_28A90;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void *sub_13DCC(void *a1)
{
  *a1 = off_28A90;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_13E20(void *a1)
{
  *a1 = off_28A90;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_13E94(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v6 = *(a1 + 8);
    (*(v6 + 1))(v7, a1 + 16);
    v7[7] = 1;
    v7[6] = &v8;
    v5[0] = a1;
    v5[1] = &v6;
    sub_140B4(a2, v5);
    return sub_14844(&v6);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v6 = a2;
    return (**(a1 + 8))(a1 + 16, &v6);
  }
}

void sub_13F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_14844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_13F8C(uint64_t a1, unsigned int *a2)
{
  v5 = *(a1 + 8);
  (*(v5 + 8))(v6, a1 + 16);
  v7 = v5;
  (*(v5 + 8))(v8, v6);
  v8[7] = 1;
  v8[6] = &v9;
  v4 = &v7;
  sub_148B8(a2, &v4);
  sub_14844(&v7);
  return (*(v5 + 24))(v6);
}

void sub_14060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_140B4(uint64_t result, uint64_t *a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v11[0] = v5 + 12;
      v11[1] = v6;
      v11[2] = *v5;
      v11[3] = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = sub_12E60(v11, &v10, &v8);
      if (result)
      {
        do
        {
          v13 = v10;
          v7 = *a2;
          v12[0] = a2[1];
          v12[1] = &v13;
          sub_1418C((v7 + 64), &v8, v12);
          v9 = 0;
          v10 = 0;
          v8 = 0;
          result = sub_12E60(v11, &v10, &v8);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

_DWORD *sub_1418C(_DWORD *result, char *__src, _DWORD **a3)
{
  v3 = *__src;
  if (((1 << (v3 >> 28)) & 0xA02F) == 0)
  {
    if (v3 >> 28 != 4)
    {
      return result;
    }

    v8 = BYTE3(v3) & 0xF | 0x20;
    v9 = *(__src + 1);
    v10 = BYTE2(v3) >> 4;
    if (v10 > 0xB)
    {
      switch(v10)
      {
        case 0xCu:
          if (v3)
          {
            v27 = 0;
            *&v26[8] = 0;
            v23 = v8 << 24;
            v24 = BYTE2(v3) << 16;
            v25 = (v24 - 0x100000) | (v8 << 24);
            *v26 = (v24 - 0x100000) & 0xFFFFFF80 | (v8 << 24) | (v9 >> 8) & 0x7F;
            sub_144B0(*a3, *a3[1], v26);
            v27 = 0;
            *&v26[8] = 0;
            *v26 = v25 & 0xFFFFFF80 | v9 & 0x7F | 0x2000;
            sub_144B0(*a3, *a3[1], v26);
          }

          else
          {
            v23 = v8 << 24;
            v24 = BYTE2(v3) << 16;
          }

          v27 = 0;
          *&v26[4] = 0;
          v12 = HIWORD(v9) & 0x7F00 | v23 | v24;
          break;
        case 0xDu:
          v27 = 0;
          *&v26[4] = 0;
          v12 = (BYTE2(v3) << 16) | (v8 << 24) | (v9 >> 25 << 8);
          break;
        case 0xEu:
          v27 = 0;
          *&v26[4] = 0;
          v12 = (v9 >> 10) & 0x7F00 | (BYTE2(v3) << 16) | (v8 << 24) | (v9 >> 25);
          break;
        default:
          return result;
      }

      goto LABEL_35;
    }

    if (v10 - 8 < 4)
    {
      v11 = v10 == 9;
      if (v9 >> 25)
      {
        v11 = v9 >> 25;
      }

      v27 = 0;
      *&v26[4] = 0;
      v12 = v11 | (BYTE2(v3) << 16) | (v8 << 24) | v3 & 0x7F00;
LABEL_35:
      *v26 = v12;
      return sub_144B0(*a3, *a3[1], v26);
    }

    if (v10 - 2 >= 2)
    {
      return result;
    }

    v13 = (v3 >> 16) & 0xF;
    v14 = &result[12 * (BYTE3(v3) & 0xF)] + 3 * v13;
    v15 = (v3 >> 8) & 0x7F;
    v16 = *__src & 0x7F;
    v17 = (v9 >> 18) & 0x7F;
    if ((v3 & 0x100000) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (v18 == *v14 && v15 == v14[1])
    {
      v19 = v13 | 0xB0;
      if (v16 == v14[2])
      {
        v20 = (v8 << 24) | (v19 << 16);
LABEL_28:
        v27 = 0;
        *&v26[8] = 0;
        *v26 = v20 | (v9 >> 25) | 0x600;
        result = sub_144B0(*a3, *a3[1], v26);
        if (!v17)
        {
          return result;
        }

        v27 = 0;
        *&v26[4] = 0;
        v12 = v17 | v20 | 0x2600;
        goto LABEL_35;
      }
    }

    else
    {
      v19 = v13 | 0xB0;
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = 25344;
    }

    else
    {
      v21 = 25856;
    }

    v27 = 0;
    *&v26[8] = 0;
    v20 = (v8 << 24) | (v19 << 16);
    v22 = v20 | v21;
    *v26 = v20 | v21 | v15;
    sub_144B0(*a3, *a3[1], v26);
    v27 = 0;
    *&v26[8] = 0;
    *v26 = (v22 | v16) - 256;
    sub_144B0(*a3, *a3[1], v26);
    *v14 = v18;
    v14[1] = v15;
    v14[2] = v16;
    goto LABEL_28;
  }

  v6 = *a3;
  v7 = *a3[1];

  return sub_144B0(v6, v7, __src);
}

_DWORD *sub_144B0(_DWORD *result, uint64_t a2, char *__src)
{
  v3 = result;
  v4 = *__src;
  v5 = byte_20290[v4 >> 28];
  v6 = *(result + 7);
  if (byte_20290[v4 >> 28])
  {
    v7 = (result + 272);
    v8 = v4 & 0xF0000000;
    v9 = result[17];
    if (v6)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      if (!v9)
      {
        goto LABEL_34;
      }

      if (!v6)
      {
        if (v8 != 805306368)
        {
          goto LABEL_31;
        }

LABEL_33:
        v6 += v6[2] + 3;
LABEL_34:
        if (&v6[v5 + 3] <= v7)
        {
          LODWORD(v19) = 0;
          result[17] = v9 + 1;
          *v6 = a2;
          v6[2] = 0;
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v11 = v6[2];
      v12 = v11 >= 2;
      v13 = v11 - 2;
      if (v12 && v6[3] >> 28 == 3)
      {
        v14 = v6[v13 + 3];
        if (v14 >> 28 == 3)
        {
          v15 = (v14 >> 20) & 0xF;
        }

        else
        {
          v15 = 255;
        }

        if (v15)
        {
          v16 = v15 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        v18 = 1;
LABEL_27:
        if ((v4 & 0xF0E00000) != 0x30000000 && (((v8 == 805306368) ^ v18) & 1) == 0 && *v6 == a2 && (v17 & 1) == 0)
        {
LABEL_31:
          v19 = v6[2];
          if (&v6[v19 + 3 + v5] <= v7)
          {
LABEL_37:
            result = &v6[v19 + 3];
            if (v5 > 2)
            {
              if (v5 != 3)
              {
                if (v5 != 4)
                {
LABEL_49:
                  result = memmove(result, __src, 4 * v5);
                  goto LABEL_47;
                }

                v20 = *__src;
                __src += 4;
                *result = v20;
                result = &v6[v19 + 4];
              }

              v21 = *__src;
              __src += 4;
              *result++ = v21;
            }

            else
            {
              if (v5 == 1)
              {
LABEL_46:
                *result = *__src;
LABEL_47:
                v6[2] += v5;
                goto LABEL_48;
              }

              if (v5 != 2)
              {
                goto LABEL_49;
              }
            }

            v22 = *__src;
            __src += 4;
            *result++ = v22;
            goto LABEL_46;
          }

          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_27;
  }

  if (!v6)
  {
LABEL_35:
    result = sub_1468C(result, a2, __src, v5);
    v6 = result;
  }

LABEL_48:
  *(v3 + 7) = v6;
  return result;
}

uint64_t sub_1468C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 68))
  {
    v19 = a1 + 64;
    (**a1)(a1 + 8, &v19);
    *(a1 + 68) = 0;
    v8 = a1 + 72;
    if (!a4)
    {
      return v8;
    }

    if (a4 <= 251)
    {
      *(a1 + 68) = 1;
      *(a1 + 72) = a2;
      *(a1 + 80) = 0;
      v12 = (a1 + 84);
      v13 = (4 * a4) >> 2;
      if (v13 <= 1)
      {
        v17 = 0;
        if (!v13)
        {
LABEL_18:
          *(a1 + 80) = v17 + a4;
          return v8;
        }

        if (v13 == 1)
        {
LABEL_17:
          *v12 = *a3;
          v17 = *(a1 + 80);
          goto LABEL_18;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
LABEL_14:
            v16 = *a3++;
            *v12++ = v16;
            goto LABEL_17;
          case 3:
LABEL_13:
            v15 = *a3++;
            *v12++ = v15;
            goto LABEL_14;
          case 4:
            v14 = *a3++;
            v12 = (a1 + 88);
            *(a1 + 84) = v14;
            goto LABEL_13;
        }
      }

      memmove(v12, a3, 4 * a4);
      v17 = 0;
      goto LABEL_18;
    }
  }

  v9 = *(a1 + 64);
  MIDI::EventList::create();
  v21 = v19;
  (**a1)(a1 + 8, &v21);
  v10 = v19;
  v19 = 0;
  if (v10)
  {
    v20();
    v11 = v19;
    v8 = a1 + 72;
    *(a1 + 56) = a1 + 72;
    *(a1 + 68) = 0;
    v19 = 0;
    if (v11)
    {
      v20();
    }
  }

  else
  {
    v8 = a1 + 72;
    *(a1 + 56) = a1 + 72;
    *(a1 + 68) = 0;
  }

  return v8;
}

void sub_14820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(void))
{
  if (a10)
  {
    a11();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_14844(uint64_t a1)
{
  if (*(a1 + 68))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 68) = 0;
  *(a1 + 56) = a1 + 72;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

unsigned int *sub_148B8(unsigned int *result, _DWORD **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 1);
    do
    {
      result = sub_14924(a2, v5);
      v5 = (v5 + *(v5 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t sub_14924(_DWORD **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v8[0] = a2 + 10;
  v8[1] = v3;
  v8[2] = *a2;
  v8[3] = 0;
  v6 = 0;
  *v7 = 0;
  __src = 0;
  result = sub_149A8(v8, v7, &__src);
  if (result)
  {
    do
    {
      sub_144B0(*a1, *v7, &__src);
      v6 = 0;
      *v7 = 0;
      __src = 0;
      result = sub_149A8(v8, v7, &__src);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_149A8(uint64_t *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = *a1;
  v6 = (*a1 + v4);
  v7 = *v6;
  if (*v6 < -16)
  {
LABEL_3:
    v8 = 2;
    if ((v7 & 0xE0) != 0xC0)
    {
      v8 = 3;
    }

    v9 = v8 + v4;
    v10 = v9 <= v3;
    if (v9 <= v3)
    {
      v11 = v6[1] & 0x7F;
      if ((v7 & 0xE0) == 0xC0)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6[2] & 0x7F;
      }

      *a3 = v12 | (v7 << 16) | (v11 << 8) | 0x20000000;
      *a2 = a1[2];
      v3 = v9;
    }

    goto LABEL_20;
  }

  while (2)
  {
    if (v7 < 0xF1)
    {
      v16 = v7 == 240;
      if (v7 == 240)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16)
      {
        a1[3] = ++v4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      while (1)
      {
        v21 = (v4 < v3) | v19;
        if (v4 < v3 && (v19 & 1) == 0)
        {
          v22 = *(v5 + v4);
          if ((v22 & 0x80000000) == 0)
          {
            if (v18 == 6)
            {
              goto LABEL_43;
            }

            v21 = 0;
            a1[3] = ++v4;
            ++v20;
            goto LABEL_42;
          }

          if (v22 == -9)
          {
            a1[3] = ++v4;
          }

          if (v17 == 1)
          {
            v17 = 0;
          }

          else
          {
            v17 = 3;
          }

          v21 = 1;
        }

        if (v18 == 6)
        {
LABEL_43:
          v23 = bswap32(v28);
          *a3 = (v17 << 20) | (v20 << 16) | (v27[0] << 8) | v27[1] | 0x30000000;
          a3[1] = v23;
          *a2 = a1[2];
          return 1;
        }

        LOBYTE(v22) = 0;
LABEL_42:
        v27[v18++] = v22;
        v19 = v21;
      }
    }

    if (v7 == 247)
    {
      *a3 = 808452096;
      *a2 = a1[2];
      v24 = v4 + 1;
      goto LABEL_53;
    }

    if ((0x22B1uLL >> (v7 + 16)))
    {
      v13 = v4;
      do
      {
        v4 = v13 + 1;
        a1[3] = v13 + 1;
        if (v13 + 1 >= v3)
        {
          return 0;
        }

        v14 = *(v5 + v13++ + 1);
      }

      while ((v14 & 0x80000000) == 0);
      v6 = (v5 + v4);
      v7 = *(v5 + v4);
      if (*(v5 + v4) > -17)
      {
        continue;
      }

      goto LABEL_3;
    }

    break;
  }

  v24 = v4 + byte_202F0[v7 - 240];
  if (v24 > v3)
  {
    v10 = 0;
LABEL_20:
    a1[3] = v3;
    return v10;
  }

  if ((0xDD40uLL >> (v7 + 16)))
  {
    v25 = 0;
    goto LABEL_51;
  }

  v25 = v6[1] & 0x7F;
  if (v7 != 242)
  {
LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

  v26 = v6[2] & 0x7F;
LABEL_52:
  *a3 = (v7 << 16) | (v25 << 8) | v26 | 0x10000000;
  *a2 = a1[2];
LABEL_53:
  a1[3] = v24;
  return 1;
}

void *sub_14C14(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &off_28AB0;
  *a1 = off_28AE8;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x821uLL);
  return a1;
}

void *sub_14C7C(void *a1)
{
  *a1 = off_28AE8;
  (*(a1[1] + 24))(a1 + 2);
  return a1;
}

void sub_14CD0(void *a1)
{
  *a1 = off_28AE8;
  (*(a1[1] + 24))(a1 + 2);

  operator delete();
}

uint64_t sub_14D44(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v10 = a2;
    return (**(a1 + 8))(a1 + 16, &v10);
  }

  else
  {
    if (*a2 != 1)
    {
      std::terminate();
    }

    v4 = *(a1 + 8);
    v9 = 0;
    v10 = v4;
    (*(v4 + 8))(v11, a1 + 16);
    v11[7] = 2;
    v11[6] = &v12;
    v6 = &v9;
    v7 = a1;
    v8 = &v10;
    sub_14F30(a2, &v6);
    v6 = &v10;
    v7 = &v9;
    sub_15008((a1 + 64), &v6);
    return sub_14844(&v10);
  }
}

void sub_14E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_14844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_14E64(uint64_t a1, unsigned int *a2)
{
  v7 = *(a1 + 8);
  (*(v7 + 8))(v8, a1 + 16);
  v8[7] = 2;
  v8[6] = &v9;
  v5[0] = a1;
  v5[1] = &v7;
  v6 = v5;
  sub_15848(a2, &v6);
  return sub_14844(&v7);
}

void sub_14F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_14844(va);
  _Unwind_Resume(a1);
}

uint64_t sub_14F30(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = result + 8;
    do
    {
      v6 = *(v5 + 8);
      v12[0] = v5 + 12;
      v12[1] = v6;
      v12[2] = *v5;
      v12[3] = 0;
      v10 = 0;
      v11 = 0;
      __src = 0;
      result = sub_12E60(v12, &v11, &__src);
      if (result)
      {
        do
        {
          v8 = *a2;
          v7 = *(a2 + 8);
          *v8 = v11;
          v13[0] = *(a2 + 16);
          v13[1] = v8;
          sub_15188(v7 + 64, &__src, v13);
          v10 = 0;
          v11 = 0;
          __src = 0;
          result = sub_12E60(v12, &v11, &__src);
        }

        while ((result & 1) != 0);
      }

      v5 += 12 + 4 * *(v5 + 8);
      ++v4;
    }

    while (v4 < *(v3 + 4));
  }

  return result;
}

_DWORD *sub_15008(_DWORD *result, _DWORD **a2)
{
  v3 = result;
  v4 = *result;
  v5 = v4 >> 28;
  if (v4 >> 28)
  {
    v6 = v5 == 15;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6 || (v4 & 0xFF0000) == 0;
  if (!v7 && (BYTE1(v4) | 0x20) == 0x26)
  {
    LODWORD(v20) = BYTE3(v4) & 0xF;
    if (v5 == 15)
    {
      v20 = 255;
    }

    else
    {
      v20 = v20;
    }

    *(&result[32 * v20 + 8 + 2 * ((v4 >> 16) & 0xF)] + 1) = 0;
    *(result + 32) = 1;
  }

  if (BYTE2(v4))
  {
    v23 = 0;
    if (v5)
    {
      v8 = v5 == 15;
    }

    else
    {
      v8 = 1;
    }

    v9 = v4 & 0xF000000 | 0x40000000;
    if (v8)
    {
      v9 = -16777216;
    }

    v21 = v9 | v4 & 0xFF00 | (BYTE2(v4) << 16);
    v10 = v4;
    v11 = v4 << 25;
    if (v10 >= 0x41)
    {
      v12 = (v10 & 0x3F) << 19;
      if (v12)
      {
        do
        {
          v11 |= v12;
          v13 = v12 > 0x3F;
          v12 >>= 6;
        }

        while (v13);
      }
    }

    v22 = v11;
    result = sub_144B0(*a2, *a2[1], &v21);
    *v3 = 0;
  }

  v14 = v3[4];
  if (BYTE2(v14))
  {
    v23 = 0;
    if (v14 >> 28)
    {
      v15 = v14 >> 28 == 15;
    }

    else
    {
      v15 = 1;
    }

    v16 = v14 & 0xF000000 | 0x40000000;
    if (v15)
    {
      v16 = -16777216;
    }

    v21 = v16 | v14 & 0xFF00 | (BYTE2(v14) << 16);
    v17 = v14;
    v18 = v14 << 25;
    if (v17 >= 0x41)
    {
      v19 = (v17 & 0x3F) << 19;
      if (v19)
      {
        do
        {
          v18 |= v19;
          v13 = v19 > 0x3F;
          v19 >>= 6;
        }

        while (v13);
      }
    }

    v22 = v18;
    result = sub_144B0(*a2, *a2[1], &v21);
    v3[4] = 0;
  }

  return result;
}

void sub_15188(uint64_t a1, char *__src, _DWORD **a3)
{
  v5 = *__src;
  if (*__src >> 28 != 2)
  {
    v24 = *a3;
    v25 = *a3[1];

    sub_144B0(v24, v25, __src);
    return;
  }

  v53 = 0;
  v54 = 0;
  v52 = BYTE2(v5);
  v51 = 0;
  v50[0] = a1;
  v50[1] = &v52;
  v50[2] = __src;
  v50[3] = (&v51 + 1);
  v50[4] = &v51;
  v7 = *(a1 + 32);
  if ((v7 & 1) == 0)
  {
    sub_15674(v50);
  }

  v8 = v5 & 0x7F;
  v9 = HIBYTE(v5) & 0xF;
  v10 = HIBYTE(v5) & 0xF | 0x40;
  v11 = *a1;
  v12 = BYTE2(*a1);
  if (BYTE2(*a1) && v7)
  {
    *(a1 + 32) = 1;
    v57 = 0;
    __srca = v11 & 0xFF00 | (v12 << 16) & 0x80FFFFFF | ((HIBYTE(v5) & 0xF | 0x40) << 24);
    v13 = v11;
    v14 = v11 << 25;
    if (v13 >= 0x41)
    {
      v15 = (v13 & 0x3F) << 19;
      if (v15)
      {
        do
        {
          v14 |= v15;
          v16 = v15 > 0x3F;
          v15 >>= 6;
        }

        while (v16);
      }
    }

    v56 = v14;
    sub_144B0(*a3, *a3[1], &__srca);
    *a1 = 0;
    v57 = 0;
    v17 = *(a1 + 16);
    if (BYTE2(v17))
    {
      __srca = *(a1 + 16) & 0xFF00 | (BYTE2(*(a1 + 16)) << 16) | (v10 << 24);
      v18 = v17;
      v19 = v17 << 25;
      v20 = v18 >= 0x41;
      v21 = (v18 & 0x3F) << 19;
      if (v20 && v21 != 0)
      {
        do
        {
          v19 |= v21;
          v16 = v21 > 0x3F;
          v21 >>= 6;
        }

        while (v16);
      }

      v56 = v19;
      sub_144B0(*a3, *a3[1], &__srca);
      *(a1 + 16) = 0;
    }

    v23 = v52;
    *(a1 + (v9 << 7) + 8 * (v52 & 0xF) + 33) = 0;
  }

  else
  {
    v23 = v52;
  }

  v26 = (v5 >> 8) & 0x7F;
  v27 = v23 >> 4;
  if (v23 >> 4 <= 0xA)
  {
    if (v27 != 8)
    {
      if (v27 != 9)
      {
        if (v27 != 10)
        {
          goto LABEL_62;
        }

        HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
        v32 = v5 << 25;
        if (v8 >= 0x41)
        {
          v33 = (v5 & 0x3F) << 19;
          if (v33)
          {
            do
            {
              v32 |= v33;
              v16 = v33 > 0x3F;
              v33 >>= 6;
            }

            while (v16);
          }
        }

        goto LABEL_55;
      }

      if ((v5 & 0x7F) == 0)
      {
        v23 -= 16;
        LODWORD(v52) = v23;
        v8 = 64;
      }
    }

    HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
    v40 = v8 << 9;
    if (v8 >= 0x41)
    {
      v41 = 8 * (v8 & 0x3F);
      if (v41)
      {
        do
        {
          v40 |= v41;
          v16 = v41 > 0x3F;
          v41 >>= 6;
        }

        while (v16);
      }
    }

    v32 = v40 << 16;
    goto LABEL_55;
  }

  if (v23 >> 4 > 0xC)
  {
    if (v27 == 13)
    {
      HIDWORD(v52) = (v23 << 16) | (v10 << 24);
      v38 = v5 >> 8 << 25;
      if (v26 >= 0x41)
      {
        v39 = ((v5 >> 8) & 0x3F) << 19;
        if (v39)
        {
          do
          {
            v38 |= v39;
            v16 = v39 > 0x3F;
            v39 >>= 6;
          }

          while (v16);
        }
      }

      v53 = v38;
      goto LABEL_62;
    }

    if (v27 != 14)
    {
      goto LABEL_62;
    }

    HIDWORD(v52) = (v23 << 16) | (v10 << 24);
    v34 = v26 | (v8 << 7);
    v32 = v34 << 18;
    if (v34 > 0x2000)
    {
      for (i = 32 * (v34 & 0x1FFF); i; i >>= 13)
      {
        v32 |= i;
      }
    }

LABEL_55:
    v53 = v32;
    goto LABEL_62;
  }

  if (v27 != 11)
  {
    if (v27 == 12)
    {
      v28 = a1 + (v9 << 7) + 8 * (v23 & 0xF);
      v30 = *(v28 + 33);
      v29 = v28 + 33;
      if (v30 == 1)
      {
        v31 = *(a1 + 32) ^ 1;
      }

      else
      {
        v31 = 0;
      }

      v43 = (v26 << 24) | (*(v29 + 2) << 8) | *(v29 + 3);
      HIDWORD(v52) = (v23 << 16) | (v10 << 24) | v31;
      v53 = v43;
      *v29 = 0;
LABEL_61:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

LABEL_62:
    sub_144B0(*a3, *a3[1], &v52 + 4);
    return;
  }

  v36 = (a1 + (v9 << 7) + 8 * (v23 & 0xF));
  if (((v5 >> 8) & 0x7F) <= 0x61)
  {
    if (((v5 >> 8) & 0x7F) > 0x1F)
    {
      if (v26 != 32)
      {
        if (v26 == 38)
        {
          v37 = v5 & 0x7F;
          goto LABEL_67;
        }

LABEL_88:
        HIDWORD(v52) = (v10 << 24) | (v23 << 16) | (v26 << 8);
        v32 = v5 << 25;
        if (v8 >= 0x41)
        {
          v49 = (v5 & 0x3F) << 19;
          if (v49)
          {
            do
            {
              v32 |= v49;
              v16 = v49 > 0x3F;
              v49 >>= 6;
            }

            while (v16);
          }
        }

        goto LABEL_55;
      }

      v36[36] = v8;
    }

    else
    {
      if (v26)
      {
        if (v26 == 6)
        {
          v37 = 0;
          v36[39] = v8;
LABEL_67:
          v36[40] = v37;
LABEL_79:
          if ((*(a1 + 32) & 1) == 0 && v36[34])
          {
            if (v36[34] == 1)
            {
              v45 = 32;
            }

            else
            {
              v45 = 48;
            }

            HIDWORD(v52) = (v10 << 24) | ((v45 | v23 & 0xF) << 16) | (v36[37] << 8) | v36[38];
            v46 = v36[40] | (v36[39] << 7);
            v47 = v46 << 18;
            if (v46 > 0x2000)
            {
              for (j = 32 * (v46 & 0x1FFF); j; j >>= 13)
              {
                v47 |= j;
              }
            }

            v53 = v47;
            goto LABEL_61;
          }

          goto LABEL_88;
        }

        goto LABEL_88;
      }

      v36[35] = v8;
    }

    v36[33] = 1;
    goto LABEL_78;
  }

  if (((v5 >> 8) & 0x7F) > 0x63)
  {
    if (v26 != 100)
    {
      if (v26 != 101)
      {
        goto LABEL_88;
      }

      v42 = 1;
      goto LABEL_71;
    }

    v44 = 1;
  }

  else
  {
    if (v26 != 98)
    {
      v42 = 2;
LABEL_71:
      v36[34] = v42;
      v36[37] = v8;
      goto LABEL_78;
    }

    v44 = 2;
  }

  v36[34] = v44;
  v36[38] = v8;
LABEL_78:
  if (*(a1 + 32))
  {
    goto LABEL_79;
  }
}

__n128 sub_15674(unsigned int **a1)
{
  v1 = *a1;
  if ((*a1)[8])
  {
    return result;
  }

  v2 = *a1[1];
  v3 = v2 >> 4;
  v4 = *v1;
  if ((*v1 & 0xFF0000) != 0)
  {
    if (((v2 ^ HIWORD(v4)) & 0xF) != 0)
    {
      *(v1 + 32) = 1;
      return result;
    }

    if (v3 == 11)
    {
      if (BYTE1(v4) > 0x62u)
      {
        switch(BYTE1(v4))
        {
          case 'c':
            v9 = a1[2];
            v10 = *v9 & 0xFF00;
            v11 = *v9 & 0xF0DF00;
            v12 = 25088;
            break;
          case 'd':
            v9 = a1[2];
            v10 = *v9 & 0xFF00;
            v11 = *v9 & 0xF0DF00;
            v12 = 25856;
            break;
          case 'e':
            v9 = a1[2];
            if ((*v9 & 0xFF00) != 0x6400 && (*v9 & 0xF0DF00) != 0xB00600)
            {
              return result;
            }

            goto LABEL_39;
          default:
            return result;
        }
      }

      else
      {
        if (!BYTE1(v4))
        {
          v9 = a1[2];
          if (*(v9 + 1) << 8 != 0x2000)
          {
            return result;
          }

          goto LABEL_39;
        }

        if (BYTE1(v4) == 32)
        {
          v9 = a1[2];
          if (*(v9 + 1))
          {
            return result;
          }

          goto LABEL_39;
        }

        if (BYTE1(v4) != 98)
        {
          return result;
        }

        v9 = a1[2];
        v10 = *v9 & 0xFF00;
        v11 = *v9 & 0xF0DF00;
        v12 = 25344;
      }

      if (v10 != v12 && v11 != 11535872)
      {
        return result;
      }

LABEL_39:
      result = *v9;
      *(v1 + 1) = *v9;
    }
  }

  else if (v3 == 11)
  {
    v5 = a1[2];
    if ((v5->n128_u32[0] & 0xF00000) == 0xB00000)
    {
      v6 = BYTE1(v5->n128_u32[0]);
      if ((v6 - 98) < 4 || (v6 != 32 ? (v7 = v6 == 0) : (v7 = 1), v7))
      {
        result = *v5;
        *v1 = *v5;
      }
    }
  }

  return result;
}

unsigned int *sub_15848(unsigned int *result, uint64_t **a2)
{
  if (*result)
  {
    v3 = result;
    v4 = 0;
    v5 = (result + 1);
    do
    {
      result = sub_158B4(a2, v5);
      v5 = (v5 + *(v5 + 8) + 13) & 0xFFFFFFFFFFFFFFFCLL;
      ++v4;
    }

    while (v4 < *v3);
  }

  return result;
}

uint64_t sub_158B4(uint64_t **a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v10[0] = a2 + 10;
  v10[1] = v3;
  v10[2] = *a2;
  v10[3] = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  result = sub_149A8(v10, &v9, &v7);
  if (result)
  {
    do
    {
      v5 = *a1;
      v12 = v9;
      v6 = *v5;
      v11[0] = v5[1];
      v11[1] = &v12;
      sub_15188(v6 + 64, &v7, v11);
      v8 = 0;
      v9 = 0;
      v7 = 0;
      result = sub_149A8(v10, &v9, &v7);
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_15950(void ***a1)
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
        v4 -= 296;
        sub_D1B8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_159D4(void *a1)
{
  for (i = a1[1]; i != a1; i = i[1])
  {
    v3 = i[4];
    if (v3)
    {
      free(v3);
    }
  }

  sub_15A24(a1);
  return a1;
}

void *sub_15A24(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void sub_15A88(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10D6C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_15ADC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1394();
}

void **sub_15B24(void **a1)
{
  sub_15B58(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_15B58(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_DCFC(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_15BAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_15C20(result, a4);
  }

  return result;
}

void sub_15C04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_15C20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_CB08(a1, a2);
  }

  sub_1280();
}

uint64_t sub_15C5C(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_1280();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v14 = a1;
  if (v7)
  {
    sub_CB08(a1, v7);
  }

  __p = 0;
  v11 = (8 * v2);
  v13 = 0;
  *v11 = *a2;
  v12 = 8 * v2 + 8;
  sub_15D7C(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 += (v11 - v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_15D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_15D7C(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(result + 8);
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = (a2[1] + *result - v3);
    do
    {
      v6 = *v2++;
      *v5++ = v6;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  *(result + 8) = v2;
  a2[1] = v2;
  v7 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v7;
  v8 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v8;
  *a2 = a2[1];
  return result;
}

uint64_t sub_15DE4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_16000(a1, a2);
  }

  else
  {
    v5 = sub_1615C(v4, a2);
    v6 = *(a2 + 280);
    *(v5 + 285) = *(a2 + 285);
    *(v5 + 280) = v6;
    result = v5 + 296;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_15E50(uint64_t a1, unsigned int *a2, int a3, int a4, char a5)
{
  *(a1 + 252) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = a3;
  *(a1 + 284) = a4;
  *(a1 + 288) = 0;
  v7 = a2[2];
  v8 = 4 * v7;
  *(a1 + 292) = a5;
  sub_D1B8(a1);
  if (v7 > 0x40)
  {
    sub_15F3C(a1, v8 + 12);
    *(a1 + 272) = 1;
    v9 = *a1;
  }

  else
  {
    *(a1 + 252) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v9 = a1;
    *(a1 + 272) = 0;
  }

  memmove(v9, a2, v8 + 12);
  return a1;
}

void *sub_15F3C(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_15FB0(result, a2);
  }

  return result;
}

void sub_15F94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_15FB0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1280();
}

uint64_t sub_16000(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_1280();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1622C(a1, v6);
  }

  v7 = 296 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  sub_1615C(v7, a2);
  v8 = *(a2 + 280);
  *(v7 + 285) = *(a2 + 285);
  *(v7 + 280) = v8;
  *&v17 = v7 + 296;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_16288(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_16310(&v15);
  return v14;
}

void sub_16148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_16310(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1615C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 272) = -1;
  sub_16194(a1, a2);
  return a1;
}

uint64_t sub_16194(uint64_t a1, uint64_t a2)
{
  result = sub_D1B8(a1);
  v5 = *(a2 + 272);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_28B08[v5])(&v6, a2);
    *(a1 + 272) = v5;
  }

  return result;
}

__n128 sub_16204(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  v2->n128_u64[0] = 0;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  result = *a2;
  *v2 = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void sub_1622C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xDD67C8A60DD67DLL)
  {
    operator new();
  }

  sub_1394();
}

void sub_16288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1615C(a4, v7);
      v9 = *(v7 + 280);
      *(v8 + 285) = *(v7 + 285);
      *(v8 + 280) = v9;
      v7 += 296;
      a4 = v8 + 296;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_D1B8(v6);
      v6 += 296;
    }
  }
}

uint64_t sub_16310(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    sub_D1B8(i - 296);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_16360(uint64_t a1, uint64_t a2)
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

void *sub_163F8(void *a1)
{
  *a1 = off_28B28;
  sub_166CC((a1 + 2));
  return a1;
}

void sub_1643C(void *a1)
{
  *a1 = off_28B28;
  sub_166CC((a1 + 2));

  operator delete();
}

uint64_t sub_1651C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_28B28;
  a2[1] = v2;
  return sub_16360((a2 + 2), a1 + 16);
}

void sub_16554(void *a1)
{
  sub_166CC(a1 + 16);

  operator delete(a1);
}

uint64_t sub_16598(uint64_t a1, uint64_t a2)
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

uint64_t sub_16618(uint64_t (**a1)(uint64_t, char *), uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*a1)(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_16678((a1 + 1), v4);
    v5 = v7;
  }

  return v5 & 1;
}

uint64_t sub_16678(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1514();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_166CC(uint64_t a1)
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

void sub_167D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_E65C();
  if (v2)
  {
    sub_E65C();
    v3 = qword_2C138;
    if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG))
    {
      v4 = 136315650;
      v5 = "USBMIDIDevice.cpp";
      v6 = 1024;
      v7 = 100;
      v8 = 1024;
      v9 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d =====> NOTICE: USB I/O destructive tracing at level %d <=====", &v4, 0x18u);
    }
  }
}

uint64_t sub_16910(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28BB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_169BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28C00;
  a2[1] = v2;
  return result;
}

uint64_t sub_16A68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_28C48;
  a2[1] = v2;
  return result;
}

uint64_t *sub_16B08(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_16B8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_16BC4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_16C5C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_16CA0();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_16CA0()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_16D70(void *a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28D30;
  sub_16E68((a1 + 3), a2, a3, a4);
}

void sub_16DEC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28D30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_16E68(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  sub_16EE4(a1, v4, v7);
}

void sub_16ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_16EE4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1CE64((a1 + 16));
  *(a1 + 8) = 1;
  *a1 = off_28D68;
  v6 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1CEB4((a1 + 16), a2);
}

void sub_16F70(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_1CE74(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_16F90(void *a1)
{
  *a1 = off_28D68;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1CE74((a1 + 2));
  return a1;
}

void sub_16FE4(void *a1)
{
  *a1 = off_28D68;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1CE74((a1 + 2));

  operator delete();
}

uint64_t sub_17058(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_17120(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28D90;
  sub_171FC((a1 + 3), a2);
  return a1;
}

void sub_1719C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_28D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_171FC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_18EA8(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_DCFC(*(&v4 + 1));
  }

  return a1;
}

void sub_17248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_DCFC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_17260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_28DC8;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  v6 = (a1 + 24);
  *(a1 + 32) = 0;
  v7 = (a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  v8 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = a3;
  sub_17698();
  v9 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136316162;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 37;
    v26 = 2048;
    v27 = a1;
    v28 = 2048;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] IOServiceClient(%p)::IOServiceClient(notifyRunLoop %p, matchingDict %p", &v22, 0x30u);
  }

  if (IOMainPort(0, v6))
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 8);
  if (!v10)
  {
    return a1;
  }

  CFRetain(v10);
  v11 = IONotificationPortCreate(*v6);
  *v7 = v11;
  if (!v11)
  {
    goto LABEL_20;
  }

  RunLoopSource = IONotificationPortGetRunLoopSource(v11);
  *(a1 + 16) = RunLoopSource;
  if (!RunLoopSource)
  {
    goto LABEL_20;
  }

  CFRunLoopAddSource(*(a1 + 8), RunLoopSource, kCFRunLoopDefaultMode);
  sub_17698();
  v13 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    v22 = 136315906;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 50;
    v26 = 2048;
    v27 = v14;
    v28 = 2048;
    v29 = v15;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d      added runloop source %p to runloop %p", &v22, 0x26u);
  }

  CFRetain(*(a1 + 56));
  sub_17698();
  v16 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 56);
    v22 = 136315650;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 53;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d      mMatchingDict: %@", &v22, 0x1Cu);
  }

  if (IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceMatched", *(a1 + 56), sub_176C8, a1, v8))
  {
    goto LABEL_20;
  }

  sub_17698();
  v18 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315394;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 55;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d      signed up for matched notifications", &v22, 0x12u);
  }

  CFRetain(*(a1 + 56));
  if (IOServiceAddMatchingNotification(*(a1 + 32), "IOServiceTerminate", *(a1 + 56), sub_177B0, a1, (a1 + 44)))
  {
LABEL_20:
    sub_1DEB0(a1);
    return a1;
  }

  sub_17698();
  v19 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315394;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 59;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d      signed up for terminated notifications", &v22, 0x12u);
  }

  *(a1 + 48) = 1;
  sub_17698();
  v20 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v22 = 136315650;
    v23 = "IOServiceClient.cpp";
    v24 = 1024;
    v25 = 63;
    v26 = 2048;
    v27 = a1;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] IOServiceClient(%p)::IOServiceClient() - success", &v22, 0x1Cu);
  }

  return a1;
}

void sub_17698()
{
  if ((atomic_load_explicit(&qword_2C150, memory_order_acquire) & 1) == 0)
  {
    sub_1DF78();
  }
}

uint64_t sub_176C8(uint64_t a1, io_iterator_t a2)
{
  sub_17698();
  v4 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "IOServiceClient.cpp";
    v8 = 1024;
    v9 = 106;
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient::ServicePublishCallback(refcon %p, it %u)", &v6, 0x22u);
  }

  return sub_17A04(a1, a2);
}

uint64_t sub_177B0(uint64_t a1, io_iterator_t a2)
{
  sub_17698();
  v4 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "IOServiceClient.cpp";
    v8 = 1024;
    v9 = 115;
    v10 = 2048;
    v11 = a1;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient::ServiceTerminateCallback(refcon %p, it %u)", &v6, 0x22u);
  }

  return sub_17A84(a1, a2);
}

uint64_t sub_17898(uint64_t a1)
{
  *a1 = off_28DC8;
  sub_17698();
  v2 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "IOServiceClient.cpp";
    v13 = 1024;
    v14 = 76;
    v15 = 2048;
    v16 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)::~IOServiceClient()", &v11, 0x1Cu);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      CFRunLoopRemoveSource(v3, v4, kCFRunLoopDefaultMode);
      CFRelease(*(a1 + 8));
    }
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    IOObjectRelease(v6);
  }

  v7 = *(a1 + 44);
  if (v7)
  {
    IOObjectRelease(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    mach_port_deallocate(mach_task_self_, v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    CFRelease(v9);
  }

  return a1;
}

void sub_179F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

uint64_t sub_17A04(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 16))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_17A84(uint64_t a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v5 = result;
    do
    {
      (*(*a1 + 24))(a1, v5);
      IOObjectRelease(v5);
      result = IOIteratorNext(iterator);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_17B04(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (*(a1 + 48) == 1)
    {
      sub_17698();
      v2 = qword_2C148;
      if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
      {
        v4 = 136315650;
        v5 = "IOServiceClient.cpp";
        v6 = 1024;
        v7 = 130;
        v8 = 2048;
        v9 = a1;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - emptying iterators ...", &v4, 0x1Cu);
      }

      *(a1 + 48) = 0;
      sub_17A04(a1, *(a1 + 40));
      sub_17A84(a1, *(a1 + 44));
    }

    else
    {
      sub_1DFD8(a1, (a1 + 24));
    }
  }

  else
  {
    sub_17698();
    v3 = qword_2C148;
    if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315650;
      v5 = "IOServiceClient.cpp";
      v6 = 1024;
      v7 = 125;
      v8 = 2048;
      v9 = a1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::ScanServices() - mMainDevicePort == 0", &v4, 0x1Cu);
    }
  }
}

void sub_17C84(int a1, void *a2, MIDIDeviceRef device, void *a4, const void **a5, uint64_t a6)
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(device);
  outValue = 0;
  if (NumberOfEntities >= 1)
  {
    v11 = 0;
    v58 = 0;
    v52 = NumberOfEntities & 0x7FFFFFFF;
    v53 = (NumberOfEntities - 1);
    if (a1)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0;
    }

    v50 = a1 ^ 1;
    v51 = (NumberOfEntities & 0x7FFFFFFF) - 1;
    v57 = a1;
    do
    {
      Entity = MIDIDeviceGetEntity(device, v11);
      v14 = Entity;
      if (v11 >= (a4[1] - *a4) >> 3)
      {
        MIDIObjectGetIntegerProperty(Entity, @"First Group", &outValue);
      }

      else
      {
        outValue = *(*a4 + 8 * v11 + 5);
      }

      v56 = v11;
      if (v53 == v11)
      {
        v60 = 0;
        IntegerProperty = MIDIObjectGetIntegerProperty(v14, kMIDIPropertyUMPCanTransmitGroupless, &v60);
        v16 = v60;
        if (IntegerProperty)
        {
          v16 = IntegerProperty;
        }

        v58 = v16;
      }

      NumberOfSources = MIDIEntityGetNumberOfSources(v14);
      NumberOfDestinations = MIDIEntityGetNumberOfDestinations(v14);
      if (a1 && NumberOfSources)
      {
        for (i = 0; i != NumberOfSources; ++i)
        {
          v19 = v14;
          Source = MIDIEntityGetSource(v14, i);
          v21 = a5[1];
          if (!v58)
          {
            v30 = i + outValue;
            while (1)
            {
              v31 = *a5;
              v32 = v21 - *a5;
              v33 = v32 >> 2;
              if (v32 >> 2 >= v30)
              {
                break;
              }

              v34 = a5[2];
              if (v21 >= v34)
              {
                v36 = v33 + 1;
                if ((v33 + 1) >> 62)
                {
                  goto LABEL_61;
                }

                v37 = v34 - v31;
                if (v37 >> 1 > v36)
                {
                  v36 = v37 >> 1;
                }

                v28 = v37 >= 0x7FFFFFFFFFFFFFFCLL;
                v38 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v28)
                {
                  v38 = v36;
                }

                if (v38)
                {
                  sub_1812C(a5, v38);
                }

                *(4 * v33) = 0;
                v35 = 4 * v33 + 4;
                memcpy(0, v31, v32);
                v39 = *a5;
                *a5 = 0;
                a5[1] = v35;
                a5[2] = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v21 = 0;
                v35 = (v21 + 1);
              }

              a5[1] = v35;
              v61 = 0;
              v60 = 0;
              sub_18024(a6, &v60);
              v21 = a5[1];
            }
          }

          v22 = a5[2];
          if (v21 >= v22)
          {
            v24 = *a5;
            v25 = v21 - *a5;
            v26 = (v25 >> 2) + 1;
            if (v26 >> 62)
            {
LABEL_61:
              sub_1280();
            }

            v27 = v22 - v24;
            if (v27 >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
            v29 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              sub_1812C(a5, v29);
            }

            v40 = (4 * (v25 >> 2));
            *v40 = Source;
            v23 = v40 + 1;
            memcpy(0, v24, v25);
            v41 = *a5;
            *a5 = 0;
            a5[1] = v23;
            a5[2] = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *v21 = Source;
            v23 = v21 + 1;
          }

          a1 = v57;
          v14 = v19;
          a5[1] = v23;
          v61 = 0;
          v60 = 0;
          sub_18024(a6, &v60);
        }
      }

      if (NumberOfDestinations)
      {
        v42 = 0;
        v43 = v50;
        if (!v58)
        {
          v43 = 1;
        }

        if (v51 == v56)
        {
          v44 = v43;
        }

        else
        {
          v44 = 1;
        }

        do
        {
          v45 = v42 + outValue;
          Destination = MIDIEntityGetDestination(v14, v42);
          if (a1)
          {
            v47 = v45;
          }

          else
          {
            v47 = 0;
          }

          if (--NumberOfDestinations)
          {
            v48 = v47;
          }

          else
          {
            v48 = 255;
          }

          if (v44)
          {
            v49 = v47;
          }

          else
          {
            v49 = v48;
          }

          MIDIEndpointSetRefCons(Destination, v12, v49);
          ++v42;
        }

        while (NumberOfDestinations);
      }

      v11 = v56 + 1;
    }

    while (v56 + 1 != v52);
  }
}

void sub_18024(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 1);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      sub_1280();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x1555555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_18174(a1, v11);
    }

    v12 = 6 * v8;
    v13 = *a2;
    *(v12 + 4) = *(a2 + 2);
    *v12 = v13;
    v7 = 6 * v8 + 6;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 4) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 6;
  }

  *(a1 + 8) = v7;
}

void sub_1812C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1394();
}

void sub_18174(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1394();
}

void sub_181C8(uint64_t a1, CFUUIDRef factoryID)
{
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = off_28DF8;
  *(a1 + 8) = &unk_2C000;
  *(a1 + 16) = factoryID;
  CFPlugInAddInstanceForFactory(factoryID);
  *(a1 + 24) = 1;
  v3 = off_28E58;
  v4 = a1;
  operator new();
}

void sub_183E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void *sub_184B4(void *a1)
{
  *a1 = off_28DF8;
  v2 = a1[2];
  if (v2)
  {
    CFPlugInRemoveInstanceForFactory(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_DCFC(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_DCFC(v4);
  }

  return a1;
}

void sub_18520(void *a1)
{
  sub_184B4(a1);

  operator delete();
}

uint64_t sub_18558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[6];
  if (!v5)
  {
    return 7;
  }

  a1[4] = a3;
  a1[5] = a4;
  (*(*v5 + 16))(v5);
  return 0;
}

uint64_t sub_185B0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    return 7;
  }

  *(a1 + 64) = a2;
  (*(*v4 + 16))(v4, a3);
  return 0;
}

uint64_t sub_18614(_DWORD *a1, CFUUIDBytes a2, void *a3)
{
  v5 = CFUUIDCreateFromUUIDBytes(0, a2);
  v6 = CFUUIDGetConstantUUIDWithBytes(0, 0x2Fu, 0xD9u, 0x4Du, 0xFu, 0x8Cu, 0x2Au, 0x48u, 0x2Au, 0x8Au, 0xD8u, 0x7Du, 0x9Eu, 0xA3u, 0x81u, 0xC9u, 0xC1u);
  if (CFEqual(v5, v6))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    v8 = 3;
LABEL_5:
    a1[5] = v8;
    return result;
  }

  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0x43u, 0xC9u, 0x8Cu, 0x3Cu, 0x30u, 0x6Cu, 0x11u, 0xD5u, 0xAFu, 0x73u, 0, 0x30u, 0x65u, 0xA8u, 0x30u, 0x1Eu);
  if (CFEqual(v5, v9))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    result = 0;
    v8 = 2;
    goto LABEL_5;
  }

  v10 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v5, v10))
  {
    (*(*a1 + 16))(a1);
    *a3 = a1;
    CFRelease(v5);
    return 0;
  }

  else
  {
    *a3 = 0;
    CFRelease(v5);
    return 2147483652;
  }
}

uint64_t sub_187CC(uint64_t a1)
{
  v1 = (*(a1 + 16) + 1);
  *(a1 + 16) = v1;
  return v1;
}

uint64_t sub_187E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (v1 - 1);
  *(a1 + 16) = v2;
  if (v1 == 1)
  {
    (*(*(a1 - 8) + 8))();
  }

  return v2;
}

void sub_18A64(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = *a2;
  v7 = a2[1];
  *(a1 + 32) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a3;
  v8 = *a4;
  *(a1 + 136) = 0u;
  *(a1 + 48) = v8;
  *(a1 + 56) = -1;
  *(a1 + 64) = 850045863;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 328) = -1;
  *(a1 + 332) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 320) = MIDICapabilityGetDiscoveryMUID();
  sub_18E78();
  v9 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    if (a3[1])
    {
      v10 = *a3 | 0x80;
    }

    else
    {
      v10 = *a3;
    }

    v11 = a3[6];
    v12 = *(a3 + 2);
    if (*(a4 + 1))
    {
      v13 = *a4 | 0x80;
    }

    else
    {
      v13 = *a4;
    }

    v14 = *(a4 + 6);
    v15 = *(a4 + 2);
    v16 = *(a1 + 320);
    buf[0] = 136317186;
    *&buf[1] = "MIDIProtocolNegotiator.cpp";
    v18 = 1024;
    v19 = 141;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = v11;
    v24 = 1024;
    v25 = v12;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = v14;
    v30 = 1024;
    v31 = v15;
    v32 = 1024;
    v33 = v16;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [*] MIDIProtocolNegotiatior(inEP: 0x%x (pipeIndex %u, mps %u), outEP: 0x%x (pipeIndex %u, mps %u) - Negotiating with MUID 0x%x", buf, 0x3Cu);
  }

  v34 = a1;
  sub_1B124();
}

void sub_18D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    sub_1298(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_18E78()
{
  if ((atomic_load_explicit(&qword_2C160, memory_order_acquire) & 1) == 0)
  {
    sub_1E0F8();
  }
}

uint64_t sub_18EAC(uint64_t a1)
{
  sub_18E78();
  v2 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315394;
    *&v10[4] = "MIDIProtocolNegotiator.cpp";
    v11 = 1024;
    v12 = 193;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] ~MIDIProtocolNegotiatior()", v10, 0x12u);
  }

  if (*(a1 + 128))
  {
    MIDITimerTaskDispose();
    *(a1 + 128) = 0;
  }

  *(a1 + 332) = 1;
  sub_18E78();
  v3 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315394;
    *&v10[4] = "MIDIProtocolNegotiator.cpp";
    v11 = 1024;
    v12 = 196;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] ~MIDIProtocolNegotiatior()", v10, 0x12u);
  }

  v4 = *(a1 + 232);
  if (v4)
  {
    sub_DCFC(v4);
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    sub_DCFC(v5);
  }

  *v10 = a1 + 136;
  sub_15A88(v10);
  std::mutex::~mutex((a1 + 64));
  v6 = *(a1 + 32);
  if (v6)
  {
    sub_DCFC(v6);
  }

  v7 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_19068(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

void sub_19078(uint64_t a1)
{
  sub_18E78();
  v2 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "MIDIProtocolNegotiator.cpp";
    v9 = 1024;
    v10 = 201;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] MIDIProtocolNegotiatior::negotiateProtocol()", buf, 0x12u);
  }

  v5 = 2;
  v6 = 512;
  sub_157C(*(a1 + 16), 127, *(a1 + 320), 0xFFFFFFFu, 0x70u, &v5, 5);
  sub_18E78();
  v3 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "MIDIProtocolNegotiator.cpp";
    v9 = 1024;
    v10 = 209;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating] Send Discovery message", buf, 0x12u);
  }

  *(a1 + 328) = 1;
  if ((*(**(a1 + 16) + 24))(*(a1 + 16)))
  {
    sub_1ADE0(a1, dbl_20330[*(a1 + 328) == 1]);
  }

  else
  {
    sub_19284(a1);
  }

  sub_18E78();
  v4 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v8 = "MIDIProtocolNegotiator.cpp";
    v9 = 1024;
    v10 = 220;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [-] MIDIProtocolNegotiatior::negotiateProtocol()", buf, 0x12u);
  }
}

void sub_19284(uint64_t a1)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    sub_18E78();
    v2 = qword_2C158;
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
    {
      v3 = 136315394;
      v4 = "MIDIProtocolNegotiator.cpp";
      v5 = 1024;
      v6 = 460;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [timeout]", &v3, 0x12u);
    }

    if (*(a1 + 128))
    {
      MIDITimerTaskDispose();
      *(a1 + 128) = 0;
    }

    *(a1 + 332) = 1;
    sub_1A8FC(a1, 0);
  }
}

uint64_t sub_1936C(uint64_t a1, unsigned int a2, int a3)
{
  v3 = 3758096385;
  if (a2 <= 3)
  {
    v6 = *(a1 + 8 * a2 + 160);
    if (v6)
    {
      v7 = *(*(a1 + 136) + 16 * a2);
      v8 = *(v7 + 44);
      v9 = *(a1 + 208);
      if (v8 != 1 || (*(a1 + 208) & 1) != 0)
      {
        *(v7 + 44) = 1;
        if (((v8 | v9) & 1) == 0 || a3)
        {
          *(a1 + 208) = 1;
          v12 = *(a1 + 24);
          sub_18E78();
          v13 = qword_2C158;
          if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
          {
            if ((3 * v6) >= 0x7FFFFFFFFFFFFFF8)
            {
              sub_1AF6C();
            }

            v14 = *(v7 + 24);
            if ((3 * v6) >= 0x17)
            {
              operator new();
            }

            v26 = 3 * v6;
            bzero(&__p, 3 * v6);
            *(&__p + 3 * v6) = 0;
            if (v26 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            v16 = v6;
            do
            {
              v17 = *v14++;
              *p_p = a0123456789abcd_1[v17 >> 4];
              p_p[1] = a0123456789abcd_1[v17 & 0xF];
              p_p[2] = 32;
              p_p += 3;
              --v16;
            }

            while (v16);
            v18 = &__p;
            if (v26 < 0)
            {
              v18 = __p;
            }

            *buf = 136315650;
            v28 = "MIDIProtocolNegotiator.cpp";
            v29 = 1024;
            v30 = 21;
            v31 = 2080;
            v32 = v18;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] writeAsyncWithBuffer: %s", buf, 0x1Cu);
            if (v26 < 0)
            {
              operator delete(__p);
            }
          }

          v19 = *(v12 + 104);
          atomic_fetch_add((v7 + 8), 1u);
          v20 = (*(*v19 + 272))(v19, *(v7 + 64), *(v7 + 24), v6, sub_1AA2C, a1);
          if (v20)
          {
            sub_18E78();
            v21 = qword_2C158;
            if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
            {
              v22 = *(v7 + 64);
              v23 = *(v7 + 24);
              *buf = 136316674;
              v28 = "MIDIProtocolNegotiator.cpp";
              v29 = 1024;
              v30 = 26;
              v31 = 2048;
              v32 = v19;
              v33 = 1024;
              v34 = v22;
              v35 = 2048;
              v36 = v23;
              v37 = 2048;
              v38 = v6;
              v39 = 1024;
              v40 = v20;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] writePipeAsync(%p, %u, %p, %lu, ...) = 0x%x", buf, 0x3Cu);
            }

            v3 = (*(*v19 + 272))(v19, *(v7 + 64), *(v7 + 24), v6, sub_1AA2C, a1);
          }

          else
          {
            v3 = 0;
          }

          sub_18E78();
          v10 = qword_2C158;
          if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v28 = "MIDIProtocolNegotiator.cpp";
            v29 = 1024;
            v30 = 31;
            v31 = 1024;
            LODWORD(v32) = v3;
            v11 = "%25s:%-5d [-] writeAsyncWithBuffer() = 0x%x";
            goto LABEL_31;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v3 = 3758097109;
        sub_18E78();
        v10 = qword_2C158;
        if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v28 = "MIDIProtocolNegotiator.cpp";
          v29 = 1024;
          v30 = 229;
          v31 = 1024;
          LODWORD(v32) = a2;
          v11 = "%25s:%-5d [!] I/O pending on buffer %u";
LABEL_31:
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x18u);
        }
      }
    }
  }

  return v3;
}

void sub_1979C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((*(a1 + 332) & 1) == 0)
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      v7 = std::__shared_weak_count::lock(v5);
      if (v7 && *(a2 + 48))
      {
        *(a2 + 44) = 0;
        if (a3 < 5)
        {
          v10 = 0;
        }

        else
        {
          sub_18E78();
          v8 = qword_2C158;
          if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
          {
            *v21 = 136315650;
            *&v21[4] = "MIDIProtocolNegotiator.cpp";
            *&v21[12] = 1024;
            *&v21[14] = 261;
            v22 = 1024;
            v23 = a3;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIProtocolNegotiatior::handleCIInput() - %u bytes received", v21, 0x18u);
          }

          *v21 = *(a2 + 24);
          *&v21[8] = a3 >> 2;
          v9 = sub_19A30(v21, a1 + 248 + *(a1 + 312), a1 + 312);
          v10 = v9;
          v11 = *(a1 + 312) + v9;
          *(a1 + 312) = v11;
          if (v9)
          {
            if (v11)
            {
              v12 = v11;
              v13 = (a1 + 248);
              while (*v13 != 247)
              {
                ++v13;
                if (!--v12)
                {
                  goto LABEL_18;
                }
              }
            }

            else
            {
              v13 = (a1 + 248);
            }

            if ((a1 + 248 + v11) != v13)
            {
              sub_19EE0(a1);
LABEL_21:
              if (v7)
              {
                sub_DCFC(v7);
              }

              return;
            }
          }
        }

LABEL_18:
        sub_18E78();
        v19 = qword_2C158;
        if (!os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
        {
          goto LABEL_21;
        }

        v20 = *(a1 + 312);
        *v21 = 136315906;
        *&v21[4] = "MIDIProtocolNegotiator.cpp";
        *&v21[12] = 1024;
        *&v21[14] = 269;
        v22 = 1024;
        v23 = v10;
        v24 = 1024;
        v25 = v20;
        v15 = "%25s:%-5d [Negotiating] Read %u bytes (%u total), reading more ...";
        v16 = v19;
        v17 = OS_LOG_TYPE_INFO;
        v18 = 30;
LABEL_20:
        _os_log_impl(&dword_0, v16, v17, v15, v21, v18);
        goto LABEL_21;
      }
    }

    else
    {
      v7 = 0;
    }

    sub_18E78();
    v14 = qword_2C158;
    if (!os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }

    *v21 = 136315394;
    *&v21[4] = "MIDIProtocolNegotiator.cpp";
    *&v21[12] = 1024;
    *&v21[14] = 255;
    v15 = "%25s:%-5d [readCallback: owning USBMIDIDevice destroyed]";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEBUG;
    v18 = 18;
    goto LABEL_20;
  }
}

uint64_t sub_19A30(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = a1;
  v5 = *a1;
  v6 = a1[1];
  sub_18E78();
  v7 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v46 = "MIDIProtocolNegotiator.cpp";
    v47 = 1024;
    v48 = 45;
    v49 = 1024;
    v50 = v6;
    v51 = 1024;
    v52 = v3 - a2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] appendSysExToBuffer() - wordCount %u, %u bytes available", buf, 0x1Eu);
  }

  v8 = &unk_20000;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = v5 + 4 * v6;
    v43 = v4;
    while (1)
    {
      v12 = (*v4 + 4 * v9);
      if (v12 >= v11)
      {
        goto LABEL_53;
      }

      v13 = *v12;
      v14 = *v12 >> 28;
      if (v14 == 1)
      {
        sub_18E78();
        v22 = qword_2C158;
        if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
        {
          v23 = *v12;
          *buf = 136315650;
          v46 = "MIDIProtocolNegotiator.cpp";
          v47 = 1024;
          v48 = 54;
          v49 = 1024;
          v50 = v23;
          v24 = v22;
          v25 = OS_LOG_TYPE_DEBUG;
          v26 = "%25s:%-5d      skipping msg: 0x%08x";
LABEL_21:
          _os_log_impl(&dword_0, v24, v25, v26, buf, 0x18u);
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = v6;
          v16 = v8;
          __src = 0;
          v17 = (v13 >> 20) & 0xF;
          v18 = v17 == 3;
          v19 = v17 == 3 || v17 == 0;
          LODWORD(v20) = HIWORD(v13) & 0xF;
          if (v17 >= 2)
          {
            v20 = v20;
          }

          else
          {
            v20 = (v20 + 1);
          }

          v21 = v20 + v19;
          if ((v20 + v19) <= 8)
          {
            v29 = v17 == 3 || v17 == 0;
            v30 = v20 + v19;
            if (v29)
            {
              *(&v57 + v21) = -9;
              v30 = v21 - 1;
            }

            if (v17 > 1)
            {
              p_src = &__src;
            }

            else
            {
              LOBYTE(__src) = -16;
              --v30;
              p_src = &__src + 1;
            }

            if (v30 >= 1)
            {
              v32 = 0;
              for (i = 0; i != v30; ++i)
              {
                if (i <= 5)
                {
                  if (i >= 2)
                  {
                    v35 = 40;
                  }

                  else
                  {
                    v35 = 8;
                  }

                  v34 = v12[i > 1] >> (v35 + v32);
                }

                else
                {
                  LOBYTE(v34) = 0;
                }

                p_src[i] = v34;
                v32 -= 8;
              }
            }
          }

          else
          {
            LODWORD(v21) = 0;
          }

          sub_18E78();
          v36 = qword_2C158;
          if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
          {
            v37 = *v12;
            v38 = v12[1];
            v39 = "";
            if (v17 == 3)
            {
              v39 = "[END]";
            }

            *buf = 136316418;
            v46 = "MIDIProtocolNegotiator.cpp";
            v47 = 1024;
            v48 = 60;
            v49 = 1024;
            v50 = v37;
            v51 = 1024;
            v52 = v38;
            v53 = 1024;
            v54 = v21;
            v55 = 2080;
            v56 = v39;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d      sysex 0x%08x 0x%08x (%u bytes converted) %s", buf, 0x2Eu);
          }

          memcpy((a2 + v10), &__src, v21);
          v10 += v21;
          v8 = v16;
          v6 = v15;
          v4 = v43;
          goto LABEL_46;
        }

        sub_18E78();
        v27 = qword_2C158;
        if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
        {
          v28 = *v12;
          *buf = 136315650;
          v46 = "MIDIProtocolNegotiator.cpp";
          v47 = 1024;
          v48 = 51;
          v49 = 1024;
          v50 = v28;
          v24 = v27;
          v25 = OS_LOG_TYPE_ERROR;
          v26 = "%25s:%-5d [!] appendSysExToBuffer() - sysex message cannot be interrupted with message with first word 0x%x";
          goto LABEL_21;
        }
      }

      v18 = 0;
LABEL_46:
      v9 = v9 + byte_20290[*v12 >> 28];
      if (v9 >= v6 || v18)
      {
        goto LABEL_53;
      }
    }
  }

  v10 = 0;
LABEL_53:
  sub_18E78();
  v41 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *buf = v8[38];
    v46 = "MIDIProtocolNegotiator.cpp";
    v47 = 1024;
    v48 = 66;
    v49 = 1024;
    v50 = v10;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] appendSysExToBuffer() - %u total bytes copied", buf, 0x18u);
  }

  return v10;
}

void sub_19EE0(uint64_t a1)
{
  sub_18E78();
  v2 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 312);
    if (v3)
    {
      if ((3 * v3) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AF6C();
      }

      v4 = (a1 + 248);
      if ((3 * v3) >= 0x17)
      {
        operator new();
      }

      v46 = 3 * v3;
      bzero(&__p, 3 * v3);
      *(&__p + 3 * v3) = 0;
      if (v46 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      do
      {
        v7 = *v4++;
        *p_p = a0123456789abcd_1[v7 >> 4];
        p_p[1] = a0123456789abcd_1[v7 & 0xF];
        p_p[2] = 32;
        p_p += 3;
        --v3;
      }

      while (v3);
      v5 = &__p;
      if (v46 < 0)
      {
        v5 = __p;
      }
    }

    else
    {
      v46 = 0;
      LOBYTE(__p) = 0;
      v5 = &__p;
    }

    *buf = 136315650;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v48 = 1024;
    v49 = 278;
    v50 = 2080;
    *v51 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [handleMessage] RCV: %s", buf, 0x1Cu);
    if (v46 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = *(a1 + 328);
  if (v8 == 1)
  {
    if (sub_1AF84(a1 + 248, *(a1 + 312), 113, 31))
    {
      if (*(a1 + 128))
      {
        MIDITimerTaskDispose();
        *(a1 + 128) = 0;
      }

      *(a1 + 324) = *(a1 + 254) & 0x7F | ((*(a1 + 255) & 0x7F) << 7) & 0x3FFF | ((*(a1 + 256) & 0x7F) << 14) & 0xF01FFFFF | ((*(a1 + 257) & 0x7F) << 21);
      sub_18E78();
      v9 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 324);
        *buf = 136315906;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 283;
        v50 = 1024;
        *v51 = v10;
        *&v51[4] = 1024;
        *&v51[6] = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [handleMessage: Discovery Reply] Discovered MUID 0x%x (%u)", buf, 0x1Eu);
      }

      *&buf[8] = 0;
      *buf = 0x20000000001;
      sub_157C(*(a1 + 16), 127, *(a1 + 320), *(a1 + 324), 0x10u, buf, 10);
      *(a1 + 328) = 2;
      if ((*(**(a1 + 16) + 24))())
      {
        sub_1ADE0(a1, dbl_20330[*(a1 + 328) == 1]);
        v11 = 0;
      }

      else
      {
        v11 = -536870163;
      }

      goto LABEL_24;
    }

    v8 = *(a1 + 328);
  }

  if (v8 != 2)
  {
LABEL_60:
    if (v8 == 4 && sub_1AF84(a1 + 248, *(a1 + 312), 20, 64))
    {
      v31 = 0;
      while (v31 == *(a1 + v31 + 263))
      {
        if (++v31 == 48)
        {
          if (*(a1 + 128))
          {
            MIDITimerTaskDispose();
            *(a1 + 128) = 0;
          }

          sub_18E78();
          v32 = qword_2C158;
          if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "MIDIProtocolNegotiator.cpp";
            v48 = 1024;
            v49 = 343;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating] Protocol Test: confirming new protocol established...", buf, 0x12u);
          }

          sub_157C(*(a1 + 16), 127, *(a1 + 320), *(a1 + 324), 0x15u, 0, 0);
          if (!(*(**(a1 + 16) + 24))())
          {
            v11 = -536870163;
            goto LABEL_25;
          }

          sub_18E78();
          v33 = qword_2C158;
          if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "MIDIProtocolNegotiator.cpp";
            v48 = 1024;
            v49 = 349;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating] Done with negotiation.", buf, 0x12u);
          }

          sub_1A8FC(a1, 8);
          goto LABEL_82;
        }
      }
    }

    if (*(a1 + 312) >= 5uLL && *(a1 + 252) == 127)
    {
      sub_18E78();
      v34 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 353;
        v35 = "%25s:%-5d [Negotiating] NAK received";
        v36 = v34;
        v37 = 18;
LABEL_81:
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      }
    }

    else
    {
      sub_18E78();
      v38 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 248);
        v40 = *(a1 + 328);
        v41 = *(a1 + 312);
        v42 = v41 - 1;
        if (!v41)
        {
          v42 = 0;
        }

        v43 = *(a1 + 248 + v42);
        *buf = 136316418;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 355;
        v50 = 1024;
        *v51 = v40;
        *&v51[4] = 1024;
        *&v51[6] = v41;
        v52 = 1024;
        v53 = v39;
        v54 = 1024;
        v55 = v43;
        v35 = "%25s:%-5d [!]  status = %d, msgSize = %u (%02x ... %02x)";
        v36 = v38;
        v37 = 42;
        goto LABEL_81;
      }
    }

LABEL_82:
    bzero((a1 + 248), 0x40uLL);
    *(a1 + 312) = 0;
    return;
  }

  v12 = *(a1 + 312);
  v13 = sub_1AF84(a1 + 248, v12, 17, v12);
  if (v12 <= 0x11 || !v13)
  {
    v8 = *(a1 + 328);
    goto LABEL_60;
  }

  if (*(a1 + 128))
  {
    MIDITimerTaskDispose();
    *(a1 + 128) = 0;
  }

  sub_18E78();
  v15 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v48 = 1024;
    v49 = 296;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating: Protocol Discovery] Examining protocols ...", buf, 0x12u);
  }

  v16 = *(a1 + 263);
  if (*(a1 + 263))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 264;
    do
    {
      v21 = *(a1 + v20);
      v22 = *(a1 + v20 + 2);
      sub_18E78();
      v23 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        v48 = 1024;
        v49 = 309;
        v50 = 1024;
        *v51 = v21;
        *&v51[4] = 1024;
        *&v51[6] = v22;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating: Protocol Discovery] Found protocol: 0x%x, extension bitmap 0x%x", buf, 0x1Eu);
      }

      v24 = ((v22 & 3) == 0) | v17;
      if (v21 != 1)
      {
        v24 = v17;
      }

      if (v21 == 2)
      {
        v18 |= (v22 & 1) == 0;
      }

      else
      {
        v17 = v24;
      }

      ++v19;
      v20 += 5;
    }

    while (v19 < v16);
    if ((v17 | v18))
    {
      sub_18E78();
      v25 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
      {
        v26 = "MIDI-1UP";
        *buf = 136315650;
        *&buf[4] = "MIDIProtocolNegotiator.cpp";
        if (v18)
        {
          v26 = "MIDI 2.0";
        }

        v48 = 1024;
        v49 = 324;
        v50 = 2080;
        *v51 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating: Protocol Discovery] Setting %s protocol...", buf, 0x1Cu);
      }

      if (v18)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      LOBYTE(__p) = v27;
      v28 = *(a1 + 16);
      *(&__p + 1) = 0;
      sub_157C(v28, 127, *(a1 + 320), *(a1 + 324), 0x12u, &__p, 5);
      *(a1 + 328) = 3;
      v11 = -536870163;
      if ((*(**(a1 + 16) + 24))())
      {
        sub_18E78();
        v29 = qword_2C158;
        if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "MIDIProtocolNegotiator.cpp";
          v48 = 1024;
          v49 = 332;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%25s:%-5d [Negotiating: Test Protocol] Sending protocol test data ...", buf, 0x12u);
        }

        v30 = *(a1 + 16);
        *(a1 + 328) = 4;
        sub_157C(v30, 127, *(a1 + 320), *(a1 + 324), 0x13u, 0, 0);
        if ((*(**(a1 + 16) + 24))())
        {
          sub_1ADE0(a1, dbl_20330[*(a1 + 328) == 1]);
          v11 = 0;
          *(a1 + 56) = v27;
        }
      }

LABEL_24:
      if (v11)
      {
LABEL_25:
        sub_1E158(v11);
      }

      goto LABEL_82;
    }
  }

  sub_18E78();
  v44 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "MIDIProtocolNegotiator.cpp";
    v48 = 1024;
    v49 = 317;
    _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d [Negotiation Failure] No usable protocols discovered", buf, 0x12u);
  }

  sub_19284(a1);
}

void sub_1A8FC(uint64_t a1, int a2)
{
  sub_18E78();
  v4 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_INFO))
  {
    v5 = "success";
    v9 = "MIDIProtocolNegotiator.cpp";
    v8 = 136315650;
    if (!a2)
    {
      v5 = "failure";
    }

    v10 = 1024;
    v11 = 433;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d [*] MIDIProtocolNegotiator::finished(%s)", &v8, 0x1Cu);
  }

  *(a1 + 332) = 1;
  *(a1 + 328) = a2;
  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 184) & 1) == 0)
  {
    if ((a2 - 5) >= 4)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0x2010201u >> (8 * (a2 - 5));
    }

    *(a1 + 56) = v7;
    sub_1AC90(a1);
  }
}

void sub_1AA2C(void *a1, int a2)
{
  if (a2 == -536870165)
  {
    sub_18E78();
    v2 = qword_2C158;
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "MIDIProtocolNegotiator.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 367;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [write aborted]", buf, 0x12u);
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  sub_16C5C(buf, a1);
  v3 = *buf;
  if (*buf && (*(*buf + 332) & 1) == 0)
  {
    std::mutex::lock((*buf + 64));
    v4 = *buf;
    v5 = *(*buf + 224);
    v13 = v5;
    if (!v5)
    {
LABEL_23:
      std::mutex::unlock(v3 + 1);
      goto LABEL_24;
    }

    v12 = &v13;
    *(v5 + 44) = 0;
    v6 = *(v4 + 216);
    *(v4 + 216) = v6 + 1;
    if (v6 == 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 + 1;
    }

    v8 = (*(v4 + 136) + 16 * v7);
    v9 = *v8;
    if (*(*v8 + 44) == 1)
    {
      *(v4 + 216) = v7;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v4 + 232);
      *(v4 + 224) = v9;
      *(v4 + 232) = v10;
      if (!v11)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v11 = *(v4 + 232);
      *(v4 + 224) = 0;
      *(v4 + 232) = 0;
      if (!v11)
      {
LABEL_18:
        if (*(*buf + 24))
        {
          if (*(*buf + 224))
          {
            sub_1936C(*buf, *(*buf + 216), 1);
          }

          else
          {
            *(*buf + 208) = 0;
          }
        }

        sub_1AC24(&v12);
        goto LABEL_23;
      }
    }

    sub_DCFC(v11);
    goto LABEL_18;
  }

LABEL_24:
  if (*&buf[8])
  {
    sub_DCFC(*&buf[8]);
  }
}

void sub_1ABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint **a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v13 = v12;
  sub_1AC24(&a9);
  std::mutex::unlock(v13 + 1);
  if (a12)
  {
    sub_DCFC(a12);
  }

  _Unwind_Resume(a1);
}

atomic_uint ***sub_1AC24(atomic_uint ***a1)
{
  v2 = **a1;
  if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_1AC90(uint64_t a1)
{
  sub_18E78();
  v2 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 56);
    if (*(a1 + 41))
    {
      v4 = *(a1 + 40) | 0x80;
    }

    else
    {
      v4 = *(a1 + 40);
    }

    if (*(a1 + 49))
    {
      v5 = *(a1 + 48) | 0x80;
    }

    else
    {
      v5 = *(a1 + 48);
    }

    v9 = 136316162;
    v10 = "MIDIProtocolNegotiator.cpp";
    v11 = 1024;
    v12 = 424;
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = v4;
    v17 = 1024;
    v18 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDIProtocolNegotiator::completeNegotiation(selectedProtocol:%x) - inEP: 0x%x, outEP: 0x%x", &v9, 0x24u);
  }

  v6 = *(a1 + 24);
  if (v6 && (*(v6 + 184) & 1) == 0)
  {
    if (*(a1 + 41))
    {
      v7 = *(a1 + 40) | 0x80;
    }

    else
    {
      v7 = *(a1 + 40);
    }

    if (*(a1 + 49))
    {
      v8 = *(a1 + 48) | 0x80;
    }

    else
    {
      v8 = *(a1 + 48);
    }

    sub_F728(v6, v7, v8, *(a1 + 56));
  }
}

void sub_1ADE0(uint64_t a1, double a2)
{
  if (!*(a1 + 128))
  {
    *(a1 + 128) = MIDITimerTaskCreate();
  }

  mach_absolute_time();
  __udivti3();
  MIDITimerTaskSetNextWakeTime();
  sub_18E78();
  v3 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "MIDIProtocolNegotiator.cpp";
    v6 = 1024;
    v7 = 473;
    v8 = 2048;
    v9 = a2;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [Negotiating] Timeout %f ms from now", &v4, 0x1Cu);
  }
}

void sub_1AF18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1298(a1);
}

void sub_1AF24(uint64_t a1)
{
  v1 = *(a1 + 212);
  if (v1 == 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = v1 + 1;
  }

  *(a1 + 212) = v2;
  v3 = *(a1 + 136);
  v4 = *(v3 + 16 * v2);
  v5 = *(v3 + 16 * v2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 200);
  *(a1 + 192) = v4;
  if (v6)
  {
    sub_DCFC(v6);
  }
}

BOOL sub_1AF84(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  if (a2 < 5)
  {
    return 0;
  }

  v9 = *(a1 + 4);
  if (a2 != a4)
  {
    sub_18E78();
    v10 = qword_2C158;
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315906;
      v15 = "MIDIProtocolNegotiator.cpp";
      v16 = 1024;
      v17 = 75;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] spanMatchesTypeAndLength() - msgSize %u does not match supplied length %u", &v14, 0x1Eu);
    }
  }

  if (v9 != a3)
  {
    sub_18E78();
    v11 = qword_2C158;
    if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 4);
      v14 = 136315906;
      v15 = "MIDIProtocolNegotiator.cpp";
      v16 = 1024;
      v17 = 77;
      v18 = 1024;
      v19 = v12;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] spanMatchesTypeAndLength() - subID2 %u does not match supplied type %u", &v14, 0x1Eu);
    }
  }

  return a2 == a4 && v9 == a3;
}

void sub_1B1A8(void *a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_28D30;
  sub_1B204((a1 + 3), a2, a3, a4);
}

void sub_1B204(uint64_t a1, uint64_t *a2, void *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  sub_16EE4(a1, v4, v7);
}

void sub_1B268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B280(std::mutex **a1, unsigned __int8 **a2)
{
  v3 = *a1;
  std::mutex::lock(*a1 + 1);
  sub_18E78();
  v4 = qword_2C158;
  v53 = v3;
  v56 = a2;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = v5 - *a2;
    if (v5 == *a2)
    {
      v59 = 0;
      LOBYTE(__p) = 0;
      p_p = &__p;
    }

    else
    {
      if ((3 * v7) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1AF6C();
      }

      if ((3 * v7) >= 0x17)
      {
        operator new();
      }

      v59 = 3 * v7;
      bzero(&__p, 3 * v7);
      *(&__p + 3 * v7) = 0;
      if (v59 >= 0)
      {
        v9 = &__p;
      }

      else
      {
        v9 = __p;
      }

      do
      {
        v10 = *v6++;
        *v9 = a0123456789abcd_1[v10 >> 4];
        v9[1] = a0123456789abcd_1[v10 & 0xF];
        v9[2] = 32;
        v9 += 3;
      }

      while (v6 != v5);
      p_p = &__p;
      if (v59 < 0)
      {
        p_p = __p;
      }
    }

    *buf = 136315906;
    v61 = "MIDIProtocolNegotiator.cpp";
    v62 = 1024;
    v63 = 154;
    v64 = 1024;
    v65 = v7;
    v66 = 2080;
    v67 = p_p;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [+] MIDICIMessageEmitter %u bytes: %s", buf, 0x22u);
    if (v59 < 0)
    {
      operator delete(__p);
    }
  }

  if (!*&v3->__m_.__opaque[16])
  {
    goto LABEL_96;
  }

  v11 = a2[1] - *a2;
  if (!v11)
  {
    goto LABEL_96;
  }

  v12 = v11 - (**a2 == 240) - ((*a2)[v11 - 1] == 247);
  if (v12)
  {
    if (v12 % 6)
    {
      v13 = v12 / 6 + 1;
    }

    else
    {
      v13 = v12 / 6;
    }

    v14 = 8 * v13;
  }

  else
  {
    v14 = 8;
  }

  v57 = v14;
  v15 = 0;
  if (!v14)
  {
LABEL_87:
    if (v57 != v15)
    {
      sub_18E78();
      v47 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v61 = "MIDIProtocolNegotiator.cpp";
        v62 = 1024;
        v63 = 184;
        v64 = 1024;
        v65 = v15;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] MIDICIMessageEmitter did not copy %u bytes", buf, 0x18u);
      }
    }

    goto LABEL_96;
  }

  v15 = 0;
  v16 = 0;
  v54 = &v3[2].__m_.__opaque[24];
  while (1)
  {
    sig = v3[3].__m_.__sig;
    v18 = *a2;
    v19 = *(sig + 40);
    if (v19)
    {
      v55 = v15;
      v20 = 0;
      v21 = 0;
      LODWORD(v22) = 0;
      v23 = &v18[v16];
      v24 = *(sig + 24);
      v25 = v24 + v19;
      while (1)
      {
        if (v22)
        {
          v26 = 2;
        }

        else
        {
          LODWORD(v22) = v23[v20] == 240;
          if (v23[v20] == 240)
          {
            v26 = 1;
          }

          else
          {
            v26 = 2;
          }
        }

        v27 = &v23[v22];
        v28 = v27;
        if ((v11 - v22) >= 6u)
        {
          v29 = 6;
        }

        else
        {
          v29 = (v11 - v22);
        }

        if (v11 != v22)
        {
          v30 = v29;
          v28 = &v23[v22];
          while (*v28 != 247)
          {
            ++v28;
            if (!--v30)
            {
              goto LABEL_43;
            }
          }
        }

        if (&v27[v29] == v28)
        {
LABEL_43:
          if ((v11 - v22) == 7)
          {
            LODWORD(v22) = v22 + 7;
            v31 = 3;
          }

          else
          {
            v31 = v26;
          }
        }

        else
        {
          LODWORD(v22) = v22 + v29;
          LODWORD(v29) = v29 - 1;
          v31 = 3;
        }

        v32 = v29 >= 6 ? 6 : v29;
        if (!v29)
        {
          break;
        }

        v33 = *v27;
        if (v29 == 1)
        {
          v34 = 0;
          v35 = 0;
LABEL_53:
          v36 = 0;
LABEL_54:
          v37 = 0;
LABEL_55:
          v38 = 0;
          goto LABEL_56;
        }

        v36 = v27[1];
        if (v29 < 3)
        {
          v34 = 0;
          v35 = 0;
          goto LABEL_54;
        }

        v35 = v27[2];
        if (v29 == 3)
        {
          v34 = 0;
          goto LABEL_54;
        }

        v37 = v27[3];
        if (v29 < 5)
        {
          v34 = 0;
          goto LABEL_55;
        }

        v34 = v27[4];
        if (v29 == 5)
        {
          goto LABEL_55;
        }

        v38 = v27[5] & 0x7F;
LABEL_56:
        if (&v21[v24 + 8] <= v25)
        {
          *&v21[v24] = (v31 << 20) | (v32 << 16) | ((v33 & 0x7F) << 8) | v36 & 0x7F | ((((v35 & 0x7F) << 24) | ((v37 & 0x7F) << 16) | ((v34 & 0x7F) << 8) | v38) << 32) | 0x30000000;
          if (v31 == 3)
          {
            v39 = 0;
          }

          else
          {
            v39 = v29;
          }

          if ((atomic_load_explicit(&qword_2C170, memory_order_acquire) & 1) == 0)
          {
            sub_1E21C();
          }

          v21 += 8;
          v22 = (v39 + v22);
          v40 = qword_2C168;
          if (os_log_type_enabled(qword_2C168, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136316162;
            v61 = "USBMIDIUMPTranslation.h";
            v62 = 1024;
            v63 = 456;
            v64 = 1024;
            v65 = v22;
            v66 = 2048;
            v67 = v21;
            v68 = 1024;
            v69 = v11 - v22;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] MIDI1SysExToUMPSysEx() - @ index %u: %lu UMP bytes written so far, %u legacy MIDI bytes remain", buf, 0x28u);
          }

          if (v31 != 3)
          {
            v20 = v22;
            if (v11 > v22)
            {
              continue;
            }
          }
        }

        LODWORD(v11) = v11 - v22;
        a2 = v56;
        v18 = *v56;
        v3 = v53;
        v15 = v55;
        goto LABEL_77;
      }

      v34 = 0;
      v35 = 0;
      v33 = 0;
      goto LABEL_53;
    }

    LODWORD(v11) = 0;
    LODWORD(v21) = 0;
LABEL_77:
    v41 = *&v3[3].__m_.__opaque[12];
    *&v54[8 * v41] = v21;
    if (!v21)
    {
      break;
    }

    v42 = a2[1];
    v43 = sub_1936C(v3, v41, 0);
    if (v43)
    {
      sub_18E78();
      v52 = qword_2C158;
      if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v61 = "MIDIProtocolNegotiator.cpp";
        v62 = 1024;
        v63 = 174;
        v64 = 1024;
        v65 = v43;
        v49 = "%25s:%-5d [!] copyEmitter: write failed with err 0x%x";
        v50 = v52;
        v51 = 24;
LABEL_94:
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, v49, buf, v51);
      }

      goto LABEL_95;
    }

    if (!*&v3[3].__m_.__opaque[24])
    {
      v45 = v3[3].__m_.__sig;
      v44 = *v3[3].__m_.__opaque;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v46 = *&v3[3].__m_.__opaque[32];
      *&v3[3].__m_.__opaque[24] = v45;
      *&v3[3].__m_.__opaque[32] = v44;
      if (v46)
      {
        sub_DCFC(v46);
      }

      *&v3[3].__m_.__opaque[16] = *&v3[3].__m_.__opaque[12];
    }

    v15 += v21;
    sub_1AF24(v3);
    if (v15 < v57)
    {
      v16 = v42 - (v18 + v11);
      if (v11)
      {
        continue;
      }
    }

    goto LABEL_87;
  }

  sub_18E78();
  v48 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v61 = "MIDIProtocolNegotiator.cpp";
    v62 = 1024;
    v63 = 169;
    v49 = "%25s:%-5d [!] copyEmitter: no bytes copied";
    v50 = v48;
    v51 = 18;
    goto LABEL_94;
  }

LABEL_95:
  sub_19284(v3);
LABEL_96:
  std::mutex::unlock(v3 + 1);
}

void sub_1B98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::mutex::unlock(a10 + 1);
  sub_1298(exception_object);
}

uint64_t sub_1B9E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1BCB0(a1, 0x200u);
  *v6 = off_28EE0;
  *(v6 + 18) = 0;
  v7 = *a2;
  v6[10] = *a2;
  (*(v7 + 8))(v6 + 11, a2 + 1);
  v8 = *a3;
  *(a1 + 120) = *a3;
  (*(v8 + 8))(a1 + 128, a3 + 1);
  *(a1 + 165) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_1560(a1);
  return a1;
}

void sub_1BA84(_Unwind_Exception *a1)
{
  (*(v1[15] + 24))(v1 + 16);
  (*(v1[10] + 24))(v1 + 11);
  sub_1BAD0(v1);
  _Unwind_Resume(a1);
}

void *sub_1BAD0(void *a1)
{
  *a1 = off_28F10;
  sub_1BE50(a1);
  (*(a1[4] + 24))(a1 + 5);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1BB40(void *a1)
{
  sub_1BF30(a1);

  operator delete();
}

uint64_t sub_1BB78(void *a1, uint64_t a2)
{
  v3 = a1 + 1;
  if (a1[2] == a1[1])
  {
    return 0;
  }

  if (*(*a2 + 32) == 1)
  {
    (**a2)(a2 + 8, v3);
  }

  else
  {
    v6 = a1[4];
    if (*(v6 + 32) == 1)
    {
      (*v6)(a1 + 5, v3);
    }
  }

  v7 = a1[1];
  result = (*(a1 + 4) - v7);
  a1[2] = v7;
  return result;
}

uint64_t sub_1BC04(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  v4 = v2 - v1;
  v5 = *(a1 + 72);
  if (v5 == 2)
  {
    v6 = *(a1 + 120);
    if (*(v6 + 32) != 1)
    {
      goto LABEL_10;
    }

    v7 = 128;
  }

  else
  {
    if (v5 != 1)
    {
      goto LABEL_10;
    }

    v6 = *(a1 + 80);
    if ((*(v6 + 32) & 1) == 0)
    {
      goto LABEL_10;
    }

    v7 = 88;
  }

  (*v6)(a1 + v7, a1 + 8);
LABEL_10:
  if (*(a1 + 160) == 1)
  {
    *(a1 + 160) = 0;
  }

  else
  {
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  return v4;
}

void *sub_1BCB0(void *a1, unsigned int a2)
{
  *a1 = off_28F10;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = &off_28F30;
  sub_1BD4C(a1 + 1, a2);
  return a1;
}

void sub_1BD1C(_Unwind_Exception *a1)
{
  (*(*(v1 + 32) + 24))(v1 + 40);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_1BD4C(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1280();
  }

  return result;
}

void sub_1BE18(void *a1)
{
  sub_1BAD0(a1);

  operator delete();
}

uint64_t sub_1BE50(uint64_t a1)
{
  v3 = &off_28F30;
  v1 = (*(*a1 + 16))(a1, &v3);
  (v3[3])(&v4);
  return v1;
}

void sub_1BEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1298(exception_object);
}

void *sub_1BF30(void *a1)
{
  *a1 = off_28EE0;
  sub_1BC04(a1);
  (*(a1[15] + 24))(a1 + 16);
  (*(a1[10] + 24))(a1 + 11);

  return sub_1BAD0(a1);
}

const char *sub_1BFB0(int a1)
{
  if (a1 > 111)
  {
    if (a1 > 125)
    {
      if (a1 == 126)
      {
        return "Invalidate MUID";
      }

      if (a1 == 127)
      {
        return "NAK";
      }
    }

    else
    {
      if (a1 == 112)
      {
        return "Discovery";
      }

      if (a1 == 113)
      {
        return "DiscoveryReply";
      }
    }

    return "Unknown Message Type";
  }

  else
  {
    v1 = a1 - 16;
    result = "Protocol Negotiation Inquiry";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "Protocol Negotiation Inquiry Response";
        break;
      case 2:
        result = "Protocol Negotiation Set";
        break;
      case 3:
        result = "Protocol Negotiation Test";
        break;
      case 4:
        result = "Protocol Negotiation Test Response";
        break;
      case 5:
        result = "Protocol Negotiation Confirmation";
        break;
      case 16:
        result = "Profile Inquiry";
        break;
      case 17:
        result = "Profile Inquiry Reply";
        break;
      case 18:
        result = "Set Profile On";
        break;
      case 19:
        result = "Set Profile Off";
        break;
      case 20:
        result = "Profile Enabled";
        break;
      case 21:
        result = "Profile Disabled";
        break;
      case 22:
        result = "Profile-Specific Data";
        break;
      case 32:
        result = "Property Inquiry";
        break;
      case 33:
        result = "Property Inquiry Reply";
        break;
      case 34:
        result = "Has Property";
        break;
      case 35:
        result = "Has Property Reply";
        break;
      case 36:
        result = "Get Property";
        break;
      case 37:
        result = "Get Property Reply";
        break;
      case 38:
        result = "Set Property";
        break;
      case 39:
        result = "Set Property Reply";
        break;
      case 40:
        result = "Property Subscription";
        break;
      case 41:
        result = "Property Subscription Reply";
        break;
      case 47:
        result = "Property Notify";
        break;
      default:
        return "Unknown Message Type";
    }
  }

  return result;
}

double sub_1C224(uint64_t a1, int a2)
{
  *a1 = off_28F68;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  return result;
}

void *sub_1C25C(void *a1)
{
  *a1 = off_28F68;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1C2C4(uint64_t a1, int a2)
{
  NumberOfEntities = MIDIDeviceGetNumberOfEntities(*(a1 + 8));
  *(a1 + 12) = NumberOfEntities;
  sub_1C530((a1 + 16), NumberOfEntities);
  sub_1C5D0((a1 + 40), *(a1 + 12));
  if (*(a1 + 12))
  {
    for (i = 0; i < *(a1 + 12); ++i)
    {
      Entity = MIDIDeviceGetEntity(*(a1 + 8), i);
      if (MIDIEntityGetNumberOfDestinations(Entity))
      {
        Destination = MIDIEntityGetDestination(Entity, 0);
        if (a2)
        {
          MIDIEndpointSetRefCons(Destination, a1, i);
LABEL_7:
          if (MIDIEntityGetNumberOfSources(Entity))
          {
            Source = MIDIEntityGetSource(Entity, 0);
          }

          else
          {
            Source = 0;
          }

          v10 = *(a1 + 24);
          v9 = *(a1 + 32);
          if (v10 >= v9)
          {
            v12 = *(a1 + 16);
            v13 = v10 - v12;
            v14 = (v10 - v12) >> 2;
            v15 = v14 + 1;
            if ((v14 + 1) >> 62)
            {
              sub_1280();
            }

            v16 = v9 - v12;
            if (v16 >> 1 > v15)
            {
              v15 = v16 >> 1;
            }

            v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
            v18 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v17)
            {
              v18 = v15;
            }

            if (v18)
            {
              sub_1812C(a1 + 16, v18);
            }

            v19 = (v10 - v12) >> 2;
            v20 = (4 * v14);
            v21 = (4 * v14 - 4 * v19);
            *v20 = Source;
            v11 = v20 + 1;
            memcpy(v21, v12, v13);
            v22 = *(a1 + 16);
            *(a1 + 16) = v21;
            *(a1 + 24) = v11;
            *(a1 + 32) = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v10 = Source;
            v11 = v10 + 4;
          }

          *(a1 + 24) = v11;
          v24 = *(a1 + 48);
          v23 = *(a1 + 56);
          if (v24 >= v23)
          {
            v26 = *(a1 + 40);
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v26) >> 1);
            v28 = v27 + 1;
            if (v27 + 1 > 0x2AAAAAAAAAAAAAAALL)
            {
              sub_1280();
            }

            v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v26) >> 1);
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x1555555555555555)
            {
              v30 = 0x2AAAAAAAAAAAAAAALL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_18174(a1 + 40, v30);
            }

            v31 = 6 * v27;
            *(v31 + 4) = 0;
            *v31 = 0;
            v25 = 6 * v27 + 6;
            v32 = *(a1 + 40);
            v33 = *(a1 + 48) - v32;
            v34 = 6 * v27 - v33;
            memcpy((v31 - v33), v32, v33);
            v35 = *(a1 + 40);
            *(a1 + 40) = v34;
            *(a1 + 48) = v25;
            *(a1 + 56) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            *(v24 + 4) = 0;
            *v24 = 0;
            v25 = v24 + 6;
          }

          *(a1 + 48) = v25;
          continue;
        }

        MIDIEndpointSetRefCons(Destination, 0, 0);
      }

      else if (a2)
      {
        goto LABEL_7;
      }
    }
  }
}

void *sub_1C530(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      v2 = result[1] - *result;
      sub_1812C(result, a2);
    }

    sub_1280();
  }

  return result;
}

void *sub_1C5D0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 1) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      sub_18174(result, a2);
    }

    sub_1280();
  }

  return result;
}

uint64_t NewAppleIDAMDriver(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
  if (CFEqual(a2, v3))
  {
    operator new();
  }

  return 0;
}

void sub_1C818()
{
  if ((byte_2C178 & 1) == 0)
  {
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.AppleIDAMDriver");
    if (BundleWithIdentifier)
    {
      v1 = BundleWithIdentifier;
      CFRetain(BundleWithIdentifier);
      off_2C070 = CFBundleCopyLocalizedString(v1, off_2C070, off_2C070, @"IDAMMIDILocalizable");
      off_2C078 = CFBundleCopyLocalizedString(v1, off_2C078, off_2C078, @"IDAMMIDILocalizable");
      off_2C080 = CFBundleCopyLocalizedString(v1, off_2C080, off_2C080, @"IDAMMIDILocalizable");
      CFRelease(v1);
      byte_2C178 = 1;
    }
  }
}

void sub_1C8D0(void *a1)
{
  sub_184B4(a1);

  operator delete();
}

uint64_t sub_1C908(int a1, MIDIDeviceListRef devList)
{
  NumberOfDevices = MIDIDeviceListGetNumberOfDevices(devList);
  if (NumberOfDevices)
  {
    v4 = NumberOfDevices;
    sub_1CB5C();
    v5 = qword_2C180;
    if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "AppleIDAMDriver.cpp";
      v15 = 1024;
      v16 = 79;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Deleting all (%lu) IDAM devices.", &v13, 0x1Cu);
    }

    for (i = 0; i != v4; ++i)
    {
      Device = MIDIDeviceListGetDevice(devList, i);
      MIDISetupRemoveDevice(Device);
    }
  }

  sub_1CB5C();
  v8 = qword_2C180;
  if (os_log_type_enabled(qword_2C180, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "AppleIDAMDriver.cpp";
    v15 = 1024;
    v16 = 86;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Done deleting IDAM devices.", &v13, 0x12u);
  }

  v9 = IOServiceMatching("IOUSBDeviceInterface");
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"USBDeviceFunction", @"IDAMInterface");
    CFDictionarySetValue(v9, @"IOPropertyMatch", v11);
    CFRelease(v11);
    operator new();
  }

  CFRelease(v9);
  return 3758097085;
}

void sub_1CB5C()
{
  if ((atomic_load_explicit(&qword_2C188, memory_order_acquire) & 1) == 0)
  {
    sub_1E318();
  }
}

uint64_t sub_1CB8C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 96) = 0;
  return 0;
}

uint64_t sub_1CC04(uint64_t a1)
{
  outDevice = 0;
  newEntity = 0;
  v1 = off_2C078;
  MIDIDeviceCreate((a1 + 8), off_2C078, off_2C070, off_2C078, &outDevice);
  v3 = &off_28878;
  cf = 0;
  if (v1)
  {
    CFRetain(v1);
    cf = v1;
  }

  MIDIDeviceAddEntity(outDevice, v1, 1u, 1uLL, 1uLL, &newEntity);
  sub_CD30(&v3);
  return outDevice;
}

void sub_1CCC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CD30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294956462;
  }

  (*(*a3 + 88))(a3, a2, a4);
  return 0;
}

uint64_t sub_1CDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[4] = a3;
  a1[5] = a4;
  v4 = a1[6];
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  return 0;
}

void *sub_1CE64(void *result)
{
  *result = 0;
  result[1] = 0;
  *(result + 21) = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_1CE74(uint64_t result)
{
  if (*(result + 16))
  {
    operator delete[]();
  }

  return result;
}

void sub_1CEFC()
{
  if (__cxa_guard_acquire(&qword_2C100))
  {
    qword_2C0F8 = os_log_create("com.apple.coremidi", "ciemit");

    __cxa_guard_release(&qword_2C100);
  }
}

uint64_t sub_1CF5C(uint64_t a1, int a2, uint64_t a3)
{
  v8 = 0;
  v7 = 0;
  result = (*(**(a1 + 8) + 296))(*(a1 + 8), 2, a2 != 1, 0, &v8);
  if (!result)
  {
    *(a3 + 8) = v8;
    *(a3 + 1) = a2 != 1;
    *(a3 + 2) = 2;
    *a3 = 0;
    result = (*(**(a1 + 8) + 200))(*(a1 + 8));
    if (!result)
    {
      *(a3 + 4) = v7;
    }
  }

  return result;
}

void sub_1D004()
{
  if (__cxa_guard_acquire(&qword_2C110))
  {
    qword_2C108 = os_log_create("com.apple.coremidi", "usbdev");

    __cxa_guard_release(&qword_2C110);
  }
}

void sub_1D064()
{
  sub_2E80();
  v0 = qword_2C108;
  if (os_log_type_enabled(qword_2C108, OS_LOG_TYPE_ERROR))
  {
    v1[0] = 136315650;
    sub_48B4();
    sub_48D4();
    _os_log_impl(&dword_0, v0, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBInterface::Open() - err = 0x%x", v1, 0x18u);
  }

  sub_48E4();
}

void sub_1D124(_DWORD *a1)
{
  sub_2E80();
  if (sub_48F0())
  {
    sub_48B4();
    sub_48C4();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  *a1 = -536870160;
}

void sub_1D1D4()
{
  sub_2E80();
  if (sub_48F0())
  {
    sub_48B4();
    sub_48D4();
    sub_48C4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_48E4();
}

void sub_1D284()
{
  sub_2E80();
  if (sub_48F0())
  {
    sub_48B4();
    sub_48D4();
    sub_48C4();
    _os_log_impl(v0, v1, v2, v3, v4, 0x18u);
  }

  sub_48E4();
}

void sub_1D334(uint64_t a1)
{
  sub_4E84();
  v2 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v7 = "IDAMMIDIDevice.cpp";
    v8 = 1024;
    v9 = 212;
    v10 = 1024;
    v11 = 2;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%25s:%-5d [?] IDAMMIDIDevice::FindPipes() - Finding %d endpoints", buf, 0x18u);
  }

  for (i = 1; i != 3; ++i)
  {
    WORD2(v5) = 0;
    *(&v5 + 1) = -1;
    if (!sub_1CF5C(*(a1 + 504), i, &v5))
    {
      if (BYTE1(v5) == 1)
      {
        *(a1 + 536) = v5;
      }

      else if (BYTE1(v5))
      {
        sub_4E84();
        v4 = qword_2C118;
        if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v7 = "IDAMMIDIDevice.cpp";
          v8 = 1024;
          v9 = 224;
          v10 = 1024;
          v11 = i;
          v12 = 1024;
          v13 = BYTE1(v5);
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d      Unknown direction for endpoint %d: %d", buf, 0x1Eu);
        }
      }

      else
      {
        *(a1 + 520) = v5;
      }
    }
  }
}

void sub_1D508(_BYTE *a1, int a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    a1[20] = 0;
LABEL_4:
    v6 = *a1;
    if (*(*a1 + 184))
    {
      return;
    }

    sub_55CC(*a1, a1, a3);
    v7 = v6;
    goto LABEL_14;
  }

  sub_4E84();
  v8 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315906;
    v11 = "IDAMMIDIDevice.cpp";
    v12 = 1024;
    v13 = 296;
    v14 = 1024;
    v15 = a2;
    v16 = 2048;
    v17 = a3;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] IDAMMIDIDevice::ReadCallback(0x%x, %lu)", &v10, 0x22u);
  }

  a1[20] = 0;
  switch(a2)
  {
    case -536870186:
      v7 = *a1;
      break;
    case -536870165:
      return;
    case -536870163:
      v9 = *a1;
      if ((*(**(*a1 + 512) + 192))(*(*a1 + 512), *(*a1 + 528)))
      {
        return;
      }

      v7 = v9;
      break;
    default:
      if (a2)
      {
        return;
      }

      goto LABEL_4;
  }

LABEL_14:
  sub_4EB4(v7, a1);
}

void sub_1D6DC(_BYTE *a1)
{
  sub_4E84();
  v2 = qword_2C118;
  if (os_log_type_enabled(qword_2C118, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "IDAMMIDIDevice.cpp";
    v5 = 1024;
    v6 = 140;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IDAMMIDIDevice::Initialize() = false", &v3, 0x12u);
  }

  *a1 = 0;
}

void sub_1D79C()
{
  if (__cxa_guard_acquire(&qword_2C120))
  {
    qword_2C118 = os_log_create("com.apple.coremidi", "idamio");

    __cxa_guard_release(&qword_2C120);
  }
}

uint64_t sub_1D7FC(uint64_t a1, uint64_t a2)
{
  v4 = MIDIGetDriverDeviceList((*(a1 + 64) + 8));
  NumberOfDevices = MIDIDeviceListGetNumberOfDevices(v4);
  if (NumberOfDevices <= 0)
  {
    MIDIDeviceListDispose(v4);
    goto LABEL_13;
  }

  v6 = 0;
  v7 = 0;
  v8 = NumberOfDevices & 0x7FFFFFFF;
  do
  {
    outValue = 0;
    Device = MIDIDeviceListGetDevice(v4, v6);
    IntegerProperty = MIDIObjectGetIntegerProperty(Device, kMIDIPropertyOffline, &outValue);
    if (IntegerProperty)
    {
      v11 = 1;
    }

    else
    {
      v11 = outValue == 0;
    }

    v12 = !v11;
    v7 |= v12;
    ++v6;
  }

  while (v8 != v6);
  v13 = IntegerProperty;
  MIDIDeviceListDispose(v4);
  if ((v7 & 1) == 0)
  {
LABEL_13:
    Device = (*(**(a1 + 64) + 224))(*(a1 + 64), a2);
    v13 = MIDISetupAddDevice(Device);
    if (v13)
    {
      return v13;
    }
  }

  MIDIObjectSetIntegerProperty(Device, @"USBVendorProduct", 95159724);
  v14 = (*(**(a1 + 64) + 240))(*(a1 + 64), *(a1 + 64), a2, Device);
  if (v14)
  {
    v15 = v14;
    if ((*(*v14 + 16))(v14))
    {
      if (*(a1 + 72))
      {
        return 3758096385;
      }

      else
      {
        *(a1 + 72) = v15;
        MIDIObjectSetIntegerProperty(Device, kMIDIPropertyOffline, 0);
      }
    }

    else
    {
      (*(*v15 + 8))(v15);
    }
  }

  return v13;
}

void sub_1D9EC()
{
  if (__cxa_guard_acquire(&qword_2C130))
  {
    qword_2C128 = os_log_create("com.apple.coremidi", "usbmba");

    __cxa_guard_release(&qword_2C130);
  }
}

void sub_1DA4C(uint64_t a1)
{
  v2 = MIDIGetDriverIORunLoop();
  source = 0;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  v3 = v2;
  v4 = (*(**(a1 + 104) + 40))(*(a1 + 104));
  source = v4;
  v5 = v4 == 0;
  if (!v4)
  {
    v6 = 0;
    if ((*(**(a1 + 104) + 32))(*(a1 + 104), &source) || !source)
    {
      goto LABEL_11;
    }

    sub_E65C();
    v7 = qword_2C138;
    v8 = os_log_type_enabled(qword_2C138, OS_LOG_TYPE_DEBUG);
    v4 = source;
    if (v8)
    {
      *buf = 136315906;
      v13 = "USBMIDIDevice.cpp";
      v14 = 1024;
      v15 = 307;
      v16 = 2048;
      v17 = a1;
      v18 = 2048;
      v19 = source;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() created CFRunLoopSource %p", buf, 0x26u);
      v4 = source;
    }
  }

  if (!CFRunLoopContainsSource(v3, v4, kCFRunLoopDefaultMode))
  {
    CFRunLoopAddSource(v3, source, kCFRunLoopDefaultMode);
  }

  v6 = v5;
LABEL_11:
  sub_E65C();
  v9 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_INFO))
  {
    v10 = "failure";
    *buf = 136315906;
    v13 = "USBMIDIDevice.cpp";
    if (v6)
    {
      v10 = "success";
    }

    v14 = 1024;
    v15 = 313;
    v16 = 2048;
    v17 = a1;
    v18 = 2080;
    v19 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d [*] USBMIDIDevice(%p)::RegisterAsyncSource() = %s", buf, 0x26u);
  }
}

void sub_1DC94()
{
  if (__cxa_guard_acquire(&qword_2C140))
  {
    qword_2C138 = os_log_create("com.apple.coremidi", "usbmio");

    __cxa_guard_release(&qword_2C140);
  }
}

void sub_1DCF4(uint64_t a1, _BYTE *a2)
{
  sub_E65C();
  v4 = qword_2C138;
  if (os_log_type_enabled(qword_2C138, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "USBMIDIDevice.cpp";
    v7 = 1024;
    v8 = 240;
    v9 = 2048;
    v10 = a1;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [-] USBMIDIDevice(%p)::Initialize() encountered an error and is exiting prematurely.", &v5, 0x1Cu);
  }

  *a2 = 0;
}

void sub_1DDCC(NSObject *a1, int a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315650;
    v5 = "USBMIDIDevice.cpp";
    v6 = 1024;
    v7 = 496;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] USBMIDIDevice::FindPipes: failed (0x%x)", &v4, 0x18u);
  }
}

void sub_1DEB0(uint64_t a1)
{
  sub_17698();
  v2 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "IOServiceClient.cpp";
    v5 = 1024;
    v6 = 68;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] IOServiceClient(%p)::IOServiceClient() - failure", &v3, 0x1Cu);
  }
}

void sub_1DF78()
{
  if (__cxa_guard_acquire(&qword_2C150))
  {
    qword_2C148 = os_log_create("com.apple.coremidi", "ioserv");

    __cxa_guard_release(&qword_2C150);
  }
}

uint64_t sub_1DFD8(uint64_t a1, mach_port_t *a2)
{
  existing = 0;
  CFRetain(*(a1 + 56));
  sub_17698();
  v4 = qword_2C148;
  if (os_log_type_enabled(qword_2C148, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 56);
    *buf = 136315906;
    v9 = "IOServiceClient.cpp";
    v10 = 1024;
    v11 = 140;
    v12 = 2048;
    v13 = a1;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [*] IOServiceClient(%p)ScanServices() - getting matching services for dictionary: %@", buf, 0x26u);
  }

  if (!IOServiceGetMatchingServices(*a2, *(a1 + 56), &existing))
  {
    sub_17A04(a1, existing);
  }

  result = existing;
  if (existing)
  {
    return IOObjectRelease(existing);
  }

  return result;
}

void sub_1E0F8()
{
  if (__cxa_guard_acquire(&qword_2C160))
  {
    qword_2C158 = os_log_create("com.apple.coremidi", "proton");

    __cxa_guard_release(&qword_2C160);
  }
}

void sub_1E158(int a1)
{
  sub_18E78();
  v2 = qword_2C158;
  if (os_log_type_enabled(qword_2C158, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "MIDIProtocolNegotiator.cpp";
    v5 = 1024;
    v6 = 360;
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d [!] handleMessage failed with 0x%x", &v3, 0x18u);
  }
}

void sub_1E21C()
{
  if (__cxa_guard_acquire(&qword_2C170))
  {
    qword_2C168 = os_log_create("com.apple.coremidi", "umptrs");
    __cxa_guard_release(&qword_2C170);
  }
}

void sub_1E318()
{
  if (__cxa_guard_acquire(&qword_2C188))
  {
    qword_2C180 = os_log_create("com.apple.coremidi", "idamdv");

    __cxa_guard_release(&qword_2C188);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
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