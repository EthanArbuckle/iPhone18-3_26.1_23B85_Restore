void alGetBuffer3f(ALuint bid, ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "oalImp.cpp";
    v10 = 1024;
    v11 = 1632;
    v12 = 2048;
    v13 = bid;
    v14 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetBuffer3f--> buffer %ld : property = %s", &v8, 0x26u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void alGetBufferfv(ALuint bid, ALenum param, ALfloat *values)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 1641;
    v10 = 2048;
    v11 = bid;
    v12 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetBufferfv--> buffer %ld : property = %s", &v6, 0x26u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alGetBufferi(ALuint bid, ALenum param, ALint *value)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315906;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 1650;
    v21 = 2048;
    v22 = bid;
    v23 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetBufferi--> buffer %ld : property = %s", &v17, 0x26u);
  }

  if (gOALBufferMap)
  {
    CleanUpDeadBufferList();
    v6 = *(gOALBufferMap + 8);
    if (v6)
    {
      v7 = gOALBufferMap + 8;
      do
      {
        v8 = *(v6 + 32);
        v9 = v8 >= bid;
        v10 = v8 < bid;
        if (v9)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * v10);
      }

      while (v6);
      if (v7 != gOALBufferMap + 8 && *(v7 + 32) <= bid)
      {
        v11 = *(v7 + 40);
        if (v11)
        {
          if (param > 8194)
          {
            if (param == 8195)
            {
              v12 = *(v11 + 332);
              goto LABEL_30;
            }

            if (param == 8196)
            {
              v12 = *(v11 + 300);
              goto LABEL_30;
            }
          }

          else
          {
            if (param == 8193)
            {
              v12 = *(v11 + 304);
              goto LABEL_30;
            }

            if (param == 8194)
            {
              v12 = *(v11 + 336);
LABEL_30:
              *value = v12;
LABEL_31:
              atomic_fetch_add((v11 + 280), 0xFFFFFFFF);
              v16 = *MEMORY[0x277D85DE8];
              return;
            }
          }

          *value = 0;
          pthread_once(&gErrorOnce, ErrorKeyInitializer);
          if (!pthread_getspecific(gALErrorKey))
          {
            pthread_setspecific(gALErrorKey, 0xA002);
          }

          goto LABEL_31;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = GetALAttributeString(param);
    String = alGetString(40963);
    v17 = 136316162;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 1682;
    v21 = 2048;
    v22 = bid;
    v23 = 2080;
    ALAttributeString = v13;
    v25 = 2080;
    v26 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetBufferi FAILED: buffer = %ld property = %s error = %s", &v17, 0x30u);
  }

  *value = 0;
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA003);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void alGetBuffer3i(ALuint bid, ALenum param, ALint *value1, ALint *value2, ALint *value3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "oalImp.cpp";
    v10 = 1024;
    v11 = 1691;
    v12 = 2048;
    v13 = bid;
    v14 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetBuffer3i--> buffer %ld : property = %s", &v8, 0x26u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void alGetBufferiv(ALuint bid, ALenum param, ALint *values)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315906;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 1700;
    v21 = 2048;
    v22 = bid;
    v23 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetBufferi--> buffer %ld : property = %s", &v17, 0x26u);
  }

  if (gOALBufferMap)
  {
    CleanUpDeadBufferList();
    v6 = *(gOALBufferMap + 8);
    if (v6)
    {
      v7 = gOALBufferMap + 8;
      do
      {
        v8 = *(v6 + 32);
        v9 = v8 >= bid;
        v10 = v8 < bid;
        if (v9)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * v10);
      }

      while (v6);
      if (v7 != gOALBufferMap + 8 && *(v7 + 32) <= bid)
      {
        v11 = *(v7 + 40);
        if (v11)
        {
          if (param > 8194)
          {
            if (param == 8195)
            {
              v12 = *(v11 + 332);
              goto LABEL_30;
            }

            if (param == 8196)
            {
              v12 = *(v11 + 300);
              goto LABEL_30;
            }
          }

          else
          {
            if (param == 8193)
            {
              v12 = *(v11 + 304);
              goto LABEL_30;
            }

            if (param == 8194)
            {
              v12 = *(v11 + 336);
LABEL_30:
              *values = v12;
LABEL_31:
              atomic_fetch_add((v11 + 280), 0xFFFFFFFF);
              v16 = *MEMORY[0x277D85DE8];
              return;
            }
          }

          *values = 0;
          pthread_once(&gErrorOnce, ErrorKeyInitializer);
          if (!pthread_getspecific(gALErrorKey))
          {
            pthread_setspecific(gALErrorKey, 0xA002);
          }

          goto LABEL_31;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = GetALAttributeString(param);
    String = alGetString(40963);
    v17 = 136316162;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 1731;
    v21 = 2048;
    v22 = bid;
    v23 = 2080;
    ALAttributeString = v13;
    v25 = 2080;
    v26 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetBufferiv FAILED: buffer = %ld property = %s error = %s", &v17, 0x30u);
  }

  *values = 0;
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA003);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void alGenSources(ALsizei n, ALuint *sources)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315650;
    v17 = "oalImp.cpp";
    v18 = 1024;
    v19 = 1747;
    v20 = 2048;
    v21 = n;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGenSources--> requested sources = %ld", &v16, 0x1Cu);
  }

  if (n)
  {
    v4 = 40963;
    if (n <= 0x100 && sources)
    {
      if (gOALContextMap)
      {
        v5 = gCurrentContext;
        v6 = gContextMapLock;
        v7 = (*(*gContextMapLock + 16))(gContextMapLock);
        v8 = *(gOALContextMap + 8);
        if (!v8)
        {
          goto LABEL_15;
        }

        v9 = gOALContextMap + 8;
        do
        {
          v10 = *(v8 + 32);
          v11 = v10 >= v5;
          v12 = v10 < v5;
          if (v11)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * v12);
        }

        while (v8);
        if (v9 != gOALContextMap + 8 && *(v9 + 32) <= v5)
        {
          v13 = *(v9 + 40);
          if (v13)
          {
            atomic_fetch_add(v13 + 110, 1u);
          }
        }

        else
        {
LABEL_15:
          v13 = 0;
        }

        if (v7)
        {
          (*(*v6 + 24))(v6);
        }

        if (v13)
        {
          ++GetNewToken(void)::currentToken;
          OALContext::AddSource(v13);
        }
      }

      v4 = 40964;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(v4);
      v16 = 136315906;
      v17 = "oalImp.cpp";
      v18 = 1024;
      v19 = 1778;
      v20 = 2048;
      v21 = n;
      v22 = 2080;
      v23 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGenSources FAILED: source count = %ld error = %s", &v16, 0x26u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, v4);
    }

    alDeleteSources(0, sources);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_23A021018(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alDeleteSources(ALsizei n, const ALuint *sources)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315650;
    v20 = "oalImp.cpp";
    v21 = 1024;
    v22 = 1790;
    v23 = 2048;
    v24 = n;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDeleteSources: count = %ld", &v19, 0x1Cu);
  }

  if (n)
  {
    if (!gOALContextMap)
    {
      goto LABEL_27;
    }

    v4 = gCurrentContext;
    v5 = gContextMapLock;
    v6 = (*(*gContextMapLock + 16))(gContextMapLock);
    v7 = *(gOALContextMap + 8);
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = gOALContextMap + 8;
    do
    {
      v9 = *(v7 + 32);
      v13 = v9 >= v4;
      v10 = v9 < v4;
      if (v13)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * v10);
    }

    while (v7);
    if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
    {
      v11 = *(v8 + 40);
      if (v11)
      {
        atomic_fetch_add(v11 + 110, 1u);
      }
    }

    else
    {
LABEL_13:
      v11 = 0;
    }

    if (v6)
    {
      (*(*v5 + 24))(v5);
    }

    if (v11)
    {
      SourceCount = OALContext::GetSourceCount(v11);
      v13 = n >= 0 && SourceCount >= n;
      v14 = v13;
      if (v14 == 1)
      {
        v15 = n;
        v16 = sources;
        do
        {
          alSourceStop(*v16);
          OALContext::RemoveSource(v11, *v16++);
          --v15;
        }

        while (v15);
      }

      else
      {
        LODWORD(v15) = 40963;
      }

      atomic_fetch_add(v11 + 110, 0xFFFFFFFF);
    }

    else
    {
LABEL_27:
      LOBYTE(v14) = 0;
      LODWORD(v15) = 40964;
    }

    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        String = alGetString(v15);
        v19 = 136315906;
        v20 = "oalImp.cpp";
        v21 = 1024;
        v22 = 1825;
        v23 = 2048;
        v24 = n;
        v25 = 2080;
        v26 = String;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alDeleteSources FAILED: source count = %ld error = %s", &v19, 0x26u);
      }

      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, v15);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_23A021308(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alSourceStop(ALuint sid)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2684;
    v10 = 2048;
    v11 = sid;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceStop--> source %ld", &v6, 0x1Cu);
  }

  v2 = ProtectSourceObjectInCurrentContext(sid);
  v3 = v2;
  if (v2)
  {
    OALSource::Stop(v2);
    atomic_fetch_add(v3 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40963);
      v6 = 136315650;
      v7 = "oalImp.cpp";
      v8 = 1024;
      v9 = 2698;
      v10 = 2080;
      v11 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceStop FAILED = %s\n", &v6, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

ALBOOLean alIsSource(ALuint sid)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "oalImp.cpp";
    v7 = 1024;
    v8 = 1833;
    v9 = 2048;
    v10 = sid;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alIsSource--> source %ld", &v5, 0x1Cu);
  }

  v2 = ProtectSourceObjectInCurrentContext(sid);
  if (v2)
  {
    atomic_fetch_add((v2 + 72), 0xFFFFFFFF);
    LOBYTE(v2) = 1;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void alSourcef(ALuint sid, ALenum param, ALfloat value)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = ProtectSourceObjectInCurrentContext(sid);
  if (v6)
  {
    v7 = v6;
    v8 = 1;
    switch(param)
    {
      case 4097:
        v9 = OALSource::SetConeInnerAngle(v6, value);
        goto LABEL_21;
      case 4098:
        v9 = OALSource::SetConeOuterAngle(v6, value);
        goto LABEL_21;
      case 4099:
        v9 = OALSource::SetPitch(v6, value);
        goto LABEL_21;
      case 4106:
        v9 = OALSource::SetGain(v6, value);
        goto LABEL_21;
      case 4109:
        v9 = OALSource::SetMinGain(v6, value);
        goto LABEL_21;
      case 4110:
        v9 = OALSource::SetMaxGain(v6, value);
        goto LABEL_21;
      case 4128:
        v9 = OALSource::SetReferenceDistance(v6, value);
        goto LABEL_21;
      case 4129:
        v9 = OALSource::SetRollOffFactor(v6, value);
        goto LABEL_21;
      case 4130:
        v9 = OALSource::SetConeOuterGain(v6, value);
        goto LABEL_21;
      case 4131:
        v9 = OALSource::SetMaxDistance(v6, value);
        goto LABEL_21;
      case 4132:
        goto LABEL_10;
      case 4133:
        v8 = 2;
        goto LABEL_10;
      case 4134:
        v8 = 3;
LABEL_10:
        v9 = OALSource::SetQueueOffset(v6, v8, value);
LABEL_21:
        v10 = v9;
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v9)
        {
          goto LABEL_26;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_23;
        }

        goto LABEL_24;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA004);
        }

        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        goto LABEL_26;
    }
  }

  v10 = 40963;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_23:
    v12 = 136316418;
    v13 = "oalImp.cpp";
    v14 = 1024;
    v15 = 1920;
    v16 = 2048;
    v17 = sid;
    v18 = 2080;
    ALAttributeString = GetALAttributeString(param);
    v20 = 2048;
    v21 = value;
    v22 = 2080;
    String = alGetString(v10);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR alSourcef FAILED: source %ld : property = %s : value = %.f2 : error = %s", &v12, 0x3Au);
  }

LABEL_24:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v10);
  }

LABEL_26:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23A021884(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    v4 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v5 = *v4;
      __cxa_end_catch();
      atomic_fetch_add((v2 + 72), 0xFFFFFFFF);
      if (!v5)
      {
        JUMPOUT(0x23A021850);
      }

      JUMPOUT(0x23A021770);
    }

    __cxa_end_catch();
    atomic_fetch_add((v2 + 72), 0xFFFFFFFF);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      JUMPOUT(0x23A021818);
    }

    JUMPOUT(0x23A021784);
  }

  _Unwind_Resume(a1);
}

void alSourcefv(ALuint sid, ALenum param, const ALfloat *values)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = ProtectSourceObjectInCurrentContext(sid);
  if (v6)
  {
    v7 = v6;
    switch(param)
    {
      case 4097:
        v8 = OALSource::SetConeInnerAngle(v6, *values);
        goto LABEL_20;
      case 4098:
        v8 = OALSource::SetConeOuterAngle(v6, *values);
        goto LABEL_20;
      case 4099:
        v8 = OALSource::SetPitch(v6, *values);
        goto LABEL_20;
      case 4100:
        v8 = OALSource::SetPosition(v6, *values, values[1], values[2]);
        goto LABEL_20;
      case 4101:
        v8 = OALSource::SetDirection(v6, *values, values[1], values[2]);
        goto LABEL_20;
      case 4102:
        v8 = OALSource::SetVelocity(v6, *values, values[1], values[2]);
        goto LABEL_20;
      case 4106:
        v8 = OALSource::SetGain(v6, *values);
        goto LABEL_20;
      case 4109:
        v8 = OALSource::SetMinGain(v6, *values);
        goto LABEL_20;
      case 4110:
        v8 = OALSource::SetMaxGain(v6, *values);
        goto LABEL_20;
      case 4128:
        v8 = OALSource::SetReferenceDistance(v6, *values);
        goto LABEL_20;
      case 4129:
        v8 = OALSource::SetRollOffFactor(v6, *values);
        goto LABEL_20;
      case 4130:
        v8 = OALSource::SetConeOuterGain(v6, *values);
        goto LABEL_20;
      case 4131:
        v8 = OALSource::SetMaxDistance(v6, *values);
        goto LABEL_20;
      case 4132:
        v8 = OALSource::SetQueueOffset(v6, 1, *values);
        goto LABEL_20;
      case 4133:
        v8 = OALSource::SetQueueOffset(v6, 2, *values);
        goto LABEL_20;
      case 4134:
        v8 = OALSource::SetQueueOffset(v6, 3, *values);
LABEL_20:
        v9 = v8;
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (v8)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        v11 = *MEMORY[0x277D85DE8];
        return;
    }
  }

  v9 = 40963;
LABEL_21:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = 136316162;
    v13 = "oalImp.cpp";
    v14 = 1024;
    v15 = 1997;
    v16 = 2048;
    v17 = sid;
    v18 = 2080;
    ALAttributeString = GetALAttributeString(param);
    v20 = 2080;
    String = alGetString(v9);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR alSourcefv FAILED: source = %ld property = %s result = %s\n", &v12, 0x30u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v9);
  }

LABEL_25:
  v10 = *MEMORY[0x277D85DE8];
}

void alSource3f(ALuint sid, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = ProtectSourceObjectInCurrentContext(sid);
  if (!v10)
  {
    v12 = 40963;
    goto LABEL_11;
  }

  v11 = v10;
  switch(param)
  {
    case 4100:
      v12 = OALSource::SetPosition(v10, value1, value2, value3);
      atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
      if (!v12)
      {
LABEL_15:
        v13 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_11:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316930;
        v16 = "oalImp.cpp";
        v17 = 1024;
        v18 = 2036;
        v19 = 2048;
        v20 = sid;
        v21 = 2080;
        ALAttributeString = GetALAttributeString(param);
        v23 = 2048;
        v24 = value1;
        v25 = 2048;
        v26 = value2;
        v27 = 2048;
        v28 = value3;
        v29 = 2080;
        String = alGetString(v12);
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSource3f FAILED: source %ld : %s : values = %.f2:%.f2:%.f2 error = %s", &v15, 0x4Eu);
      }

      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, v12);
      }

      goto LABEL_15;
    case 4102:
      v12 = OALSource::SetVelocity(v10, value1, value2, value3);
      atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 4101:
      v12 = OALSource::SetDirection(v10, value1, value2, value3);
      atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
  v14 = *MEMORY[0x277D85DE8];
}

void alSourcei(ALuint sid, ALenum param, ALint value)
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = ProtectSourceObjectInCurrentContext(sid);
  if (!v6)
  {
    v8 = 40963;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v7 = v6;
  if (param > 4128)
  {
    if (param <= 4131)
    {
      if (param == 4129)
      {
        v8 = OALSource::SetRollOffFactor(v6, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }
      }

      else if (param == 4130)
      {
        v8 = OALSource::SetConeOuterGain(v6, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v8 = OALSource::SetMaxDistance(v6, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_54;
    }

    switch(param)
    {
      case 4132:
        v8 = OALSource::SetQueueOffset(v6, 1, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      case 4133:
        v8 = OALSource::SetQueueOffset(v6, 2, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
LABEL_58:
          v18 = *MEMORY[0x277D85DE8];
          return;
        }

LABEL_54:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      case 4134:
        v8 = OALSource::SetQueueOffset(v6, 3, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
    }

    goto LABEL_59;
  }

  if (param <= 4102)
  {
    switch(param)
    {
      case 514:
        v8 = OALSource::SetSourceRelative(v6, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      case 4097:
        v8 = OALSource::SetConeInnerAngle(v6, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      case 4098:
        v8 = OALSource::SetConeOuterAngle(v6, value);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
    }

    goto LABEL_59;
  }

  if (param == 4103)
  {
    v8 = OALSource::SetLooping(v6, value);
    atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
    if (!v8)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

  if (param != 4105)
  {
    if (param == 4128)
    {
      v8 = OALSource::SetReferenceDistance(v6, value);
      atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
      if (!v8)
      {
        goto LABEL_58;
      }

      goto LABEL_54;
    }

LABEL_59:
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA002);
    }

    goto LABEL_61;
  }

  SourceType = OALSource::GetSourceType(v6);
  if (value && SourceType == 4137 || !alIsBuffer(value))
  {
    atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
    v8 = 40964;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
LABEL_56:
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, v8);
      }

      goto LABEL_58;
    }

LABEL_55:
    ALAttributeString = GetALAttributeString(param);
    String = alGetString(v8);
    *v20 = 136316418;
    *&v20[4] = "oalImp.cpp";
    v21 = 1024;
    v22 = 2114;
    v23 = 2048;
    v24 = sid;
    v25 = 2080;
    v26 = ALAttributeString;
    v27 = 2048;
    v28 = value;
    v29 = 2080;
    v30 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourcei FAILED - sid:pname:value:result %ld:%s:%ld:%s", v20, 0x3Au);
    goto LABEL_56;
  }

  if (gOALBufferMap)
  {
    *v20 = gBufferMapLock;
    v20[8] = (*(*gBufferMapLock + 16))(gBufferMapLock);
    v10 = *(gOALBufferMap + 8);
    if (!v10)
    {
      goto LABEL_50;
    }

    v11 = gOALBufferMap + 8;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= value;
      v14 = v12 < value;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != gOALBufferMap + 8 && *(v11 + 32) <= value)
    {
      v15 = *(v11 + 40);
    }

    else
    {
LABEL_50:
      v15 = 0;
    }

    v8 = OALSource::SetBuffer(v7, value, v15);
    CAGuard::Locker::~Locker(v20);
    atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
    if (!v8)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_61:
  atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
  v19 = *MEMORY[0x277D85DE8];
}

void alSourceiv(ALuint sid, ALenum param, const ALint *values)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = ProtectSourceObjectInCurrentContext(sid);
  if (v6)
  {
    v7 = v6;
    switch(param)
    {
      case 4097:
        v8 = OALSource::SetConeInnerAngle(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (v8)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      case 4098:
        v8 = OALSource::SetConeOuterAngle(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (v8)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      case 4099:
      case 4104:
      case 4106:
      case 4107:
      case 4108:
      case 4109:
      case 4110:
      case 4111:
      case 4112:
      case 4113:
      case 4114:
      case 4115:
      case 4116:
      case 4117:
      case 4118:
      case 4119:
      case 4120:
      case 4121:
      case 4122:
      case 4123:
      case 4124:
      case 4125:
      case 4126:
      case 4127:
      case 4130:
        goto LABEL_11;
      case 4100:
        v8 = OALSource::SetPosition(v6, *values, values[1], values[2]);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4101:
        v8 = OALSource::SetDirection(v6, *values, values[1], values[2]);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4102:
        v8 = OALSource::SetVelocity(v6, *values, values[1], values[2]);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4103:
        v8 = OALSource::SetLooping(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4105:
        if (OALSource::GetSourceType(v6) == 4137 || !alIsBuffer(*values))
        {
          v8 = 40964;
          goto LABEL_56;
        }

        if (!gOALBufferMap)
        {
          goto LABEL_45;
        }

        *v19 = gBufferMapLock;
        v19[8] = (*(*gBufferMapLock + 16))(gBufferMapLock);
        v9 = *values;
        v10 = *(gOALBufferMap + 8);
        if (!v10)
        {
          goto LABEL_42;
        }

        v11 = gOALBufferMap + 8;
        do
        {
          v12 = *(v10 + 32);
          v13 = v12 >= v9;
          v14 = v12 < v9;
          if (v13)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * v14);
        }

        while (v10);
        if (v11 != gOALBufferMap + 8 && *(v11 + 32) <= v9)
        {
          v15 = *(v11 + 40);
        }

        else
        {
LABEL_42:
          v15 = 0;
        }

        v8 = OALSource::SetBuffer(v7, v9, v15);
        CAGuard::Locker::~Locker(v19);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4128:
        v8 = OALSource::SetReferenceDistance(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4129:
        v8 = OALSource::SetRollOffFactor(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (v8)
        {
          goto LABEL_49;
        }

        goto LABEL_53;
      case 4131:
        v8 = OALSource::SetMaxDistance(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4132:
        v8 = OALSource::SetQueueOffset(v6, 1, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4133:
        v8 = OALSource::SetQueueOffset(v6, 2, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      case 4134:
        v8 = OALSource::SetQueueOffset(v6, 3, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      default:
        if (param != 514)
        {
LABEL_11:
          pthread_once(&gErrorOnce, ErrorKeyInitializer);
          if (!pthread_getspecific(gALErrorKey))
          {
            pthread_setspecific(gALErrorKey, 0xA002);
          }

LABEL_45:
          atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
          goto LABEL_53;
        }

        if (*values > 1u)
        {
          v8 = 40963;
LABEL_56:
          atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        v8 = OALSource::SetSourceRelative(v6, *values);
        atomic_fetch_add(v7 + 18, 0xFFFFFFFF);
        if (!v8)
        {
          goto LABEL_53;
        }

LABEL_49:
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_51;
        }

        break;
    }

    goto LABEL_50;
  }

  v8 = 40963;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_50:
    ALAttributeString = GetALAttributeString(param);
    String = alGetString(v8);
    *v19 = 136316162;
    *&v19[4] = "oalImp.cpp";
    v20 = 1024;
    v21 = 2204;
    v22 = 2048;
    v23 = sid;
    v24 = 2080;
    v25 = ALAttributeString;
    v26 = 2080;
    v27 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourcei FAILED: source %ld : %s error = %s", v19, 0x30u);
  }

LABEL_51:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v8);
  }

LABEL_53:
  v18 = *MEMORY[0x277D85DE8];
}

void alSource3i(ALuint sid, ALenum param, ALint value1, ALint value2, ALint value3)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = ProtectSourceObjectInCurrentContext(sid);
  if (!v10)
  {
    v12 = 40963;
    goto LABEL_11;
  }

  v11 = v10;
  switch(param)
  {
    case 4100:
      v12 = OALSource::SetPosition(v10, value1, value2, value3);
      atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
      if (!v12)
      {
LABEL_15:
        v13 = *MEMORY[0x277D85DE8];
        return;
      }

LABEL_11:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = 136316930;
        v16 = "oalImp.cpp";
        v17 = 1024;
        v18 = 2243;
        v19 = 2048;
        v20 = sid;
        v21 = 2080;
        ALAttributeString = GetALAttributeString(param);
        v23 = 2048;
        v24 = value1;
        v25 = 2048;
        v26 = value2;
        v27 = 2048;
        v28 = value3;
        v29 = 2080;
        String = alGetString(v12);
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSource3f FAILED: source %ld : %s : values = %ld:%ld:%ld error = %s", &v15, 0x4Eu);
      }

      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, v12);
      }

      goto LABEL_15;
    case 4102:
      v12 = OALSource::SetVelocity(v10, value1, value2, value3);
      atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    case 4101:
      v12 = OALSource::SetDirection(v10, value1, value2, value3);
      atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
      if (!v12)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
  v14 = *MEMORY[0x277D85DE8];
}

void alGetSourcef(ALuint sid, ALenum param, ALfloat *value)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = ProtectSourceObjectInCurrentContext(sid);
  if (v5)
  {
    v6 = v5;
    switch(param)
    {
      case 4097:
        ConeInnerAngle = OALSource::GetConeInnerAngle(v5);
        goto LABEL_23;
      case 4098:
        ConeInnerAngle = OALSource::GetConeOuterAngle(v5);
        goto LABEL_23;
      case 4099:
        ConeInnerAngle = OALSource::GetPitch(v5);
        goto LABEL_23;
      case 4106:
        ConeInnerAngle = OALSource::GetGain(v5);
        goto LABEL_23;
      case 4109:
        ConeInnerAngle = OALSource::GetMinGain(v5);
        goto LABEL_23;
      case 4110:
        ConeInnerAngle = OALSource::GetMaxGain(v5);
        goto LABEL_23;
      case 4128:
        ConeInnerAngle = OALSource::GetReferenceDistance(v5);
        goto LABEL_23;
      case 4129:
        ConeInnerAngle = OALSource::GetRollOffFactor(v5);
        goto LABEL_23;
      case 4130:
        ConeInnerAngle = OALSource::GetConeOuterGain(v5);
        goto LABEL_23;
      case 4131:
        ConeInnerAngle = OALSource::GetMaxDistance(v5);
        goto LABEL_23;
      case 4132:
        ConeInnerAngle = OALSource::GetQueueOffsetSecondsFloat(v5);
        goto LABEL_23;
      case 4133:
        v8 = 2;
        goto LABEL_13;
      case 4134:
        v8 = 3;
LABEL_13:
        ConeInnerAngle = OALSource::GetQueueOffset(v5, v8);
LABEL_23:
        *value = ConeInnerAngle;
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315650;
      v11 = "oalImp.cpp";
      v12 = 1024;
      v13 = 2313;
      v14 = 2080;
      String = alGetString(40963);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetSourcef FAILED = %s\n", &v10, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void alGetSourcefv(ALuint sid, ALenum param, ALfloat *values)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = ProtectSourceObjectInCurrentContext(sid);
  if (v5)
  {
    v6 = v5;
    switch(param)
    {
      case 4097:
        *values = OALSource::GetConeInnerAngle(v5);
        break;
      case 4098:
        *values = OALSource::GetConeOuterAngle(v5);
        break;
      case 4099:
        *values = OALSource::GetPitch(v5);
        break;
      case 4100:
        OALSource::GetPosition(v5, values, values + 1, values + 2);
        break;
      case 4101:
        OALSource::GetDirection(v5, values, values + 1, values + 2);
        break;
      case 4102:
        OALSource::GetVelocity(v5, values, values + 1, values + 2);
        break;
      case 4106:
        *values = OALSource::GetGain(v5);
        break;
      case 4109:
        *values = OALSource::GetMinGain(v5);
        break;
      case 4110:
        *values = OALSource::GetMaxGain(v5);
        break;
      case 4128:
        *values = OALSource::GetReferenceDistance(v5);
        break;
      case 4129:
        *values = OALSource::GetRollOffFactor(v5);
        break;
      case 4130:
        *values = OALSource::GetConeOuterGain(v5);
        break;
      case 4131:
        *values = OALSource::GetMaxDistance(v5);
        break;
      case 4132:
        *values = OALSource::GetQueueOffsetSecondsFloat(v5);
        break;
      case 4133:
        v7 = 2;
        goto LABEL_19;
      case 4134:
        v7 = 3;
LABEL_19:
        *values = OALSource::GetQueueOffset(v5, v7);
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "oalImp.cpp";
      v11 = 1024;
      v12 = 2392;
      v13 = 2080;
      String = alGetString(40963);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetSourcefv FAILED = %s\n", &v9, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void alGetSource3f(ALuint sid, ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = ProtectSourceObjectInCurrentContext(sid);
  if (v9)
  {
    v10 = v9;
    switch(param)
    {
      case 4100:
        OALSource::GetPosition(v9, value1, value2, value3);
        break;
      case 4102:
        OALSource::GetVelocity(v9, value1, value2, value3);
        break;
      case 4101:
        OALSource::GetDirection(v9, value1, value2, value3);
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add(v10 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "oalImp.cpp";
      v14 = 1024;
      v15 = 2431;
      v16 = 2080;
      String = alGetString(40963);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetSource3f FAILED = %s\n", &v12, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void alGetSourcei(ALuint sid, ALenum param, ALint *value)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = ProtectSourceObjectInCurrentContext(sid);
  if (v5)
  {
    v6 = v5;
    switch(param)
    {
      case 4097:
        ConeInnerAngle = OALSource::GetConeInnerAngle(v5);
        goto LABEL_20;
      case 4098:
        ConeInnerAngle = OALSource::GetConeOuterAngle(v5);
        goto LABEL_20;
      case 4099:
      case 4100:
      case 4101:
      case 4102:
      case 4104:
      case 4106:
      case 4107:
      case 4108:
      case 4109:
      case 4110:
      case 4111:
      case 4113:
      case 4114:
      case 4115:
      case 4116:
      case 4119:
      case 4120:
      case 4121:
      case 4122:
      case 4123:
      case 4124:
      case 4125:
      case 4126:
      case 4127:
        goto LABEL_10;
      case 4103:
        Looping = OALSource::GetLooping(v5);
        goto LABEL_29;
      case 4105:
        Looping = OALSource::GetBuffer(v5);
        goto LABEL_29;
      case 4112:
        Looping = OALSource::GetState(v5);
        goto LABEL_29;
      case 4117:
        Looping = OALSource::GetQLength(v5);
        goto LABEL_29;
      case 4118:
        Looping = OALSource::GetBuffersProcessed(v5);
        goto LABEL_29;
      case 4128:
        ReferenceDistance = OALSource::GetReferenceDistance(v5);
        goto LABEL_22;
      case 4129:
        ReferenceDistance = OALSource::GetRollOffFactor(v5);
        goto LABEL_22;
      case 4130:
        ConeInnerAngle = OALSource::GetConeOuterGain(v5);
LABEL_20:
        *value = ConeInnerAngle;
        goto LABEL_30;
      case 4131:
        ReferenceDistance = OALSource::GetMaxDistance(v5);
LABEL_22:
        *value = ReferenceDistance;
        goto LABEL_30;
      case 4132:
        v10 = 1;
        goto LABEL_28;
      case 4133:
        v10 = 2;
        goto LABEL_28;
      case 4134:
        v10 = 3;
LABEL_28:
        Looping = OALSource::GetQueueOffset(v5, v10);
        goto LABEL_29;
      case 4135:
        Looping = OALSource::GetSourceType(v5);
        goto LABEL_29;
      default:
        if (param == 514)
        {
          Looping = OALSource::GetSourceRelative(v5);
LABEL_29:
          *value = Looping;
        }

        else
        {
LABEL_10:
          pthread_once(&gErrorOnce, ErrorKeyInitializer);
          if (!pthread_getspecific(gALErrorKey))
          {
            pthread_setspecific(gALErrorKey, 0xA002);
          }
        }

LABEL_30:
        atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
        break;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "oalImp.cpp";
      v14 = 1024;
      v15 = 2508;
      v16 = 2080;
      String = alGetString(40963);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetSourcei FAILED = %s\n", &v12, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void alGetSourceiv(ALuint sid, ALenum param, ALint *values)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = ProtectSourceObjectInCurrentContext(sid);
  if (v5)
  {
    v6 = v5;
    switch(param)
    {
      case 4097:
        ConeInnerAngle = OALSource::GetConeInnerAngle(v5);
        goto LABEL_19;
      case 4098:
        ConeInnerAngle = OALSource::GetConeOuterAngle(v5);
LABEL_19:
        *values = ConeInnerAngle;
        goto LABEL_32;
      case 4099:
      case 4104:
      case 4106:
      case 4107:
      case 4108:
      case 4109:
      case 4110:
      case 4111:
      case 4113:
      case 4114:
      case 4115:
      case 4116:
      case 4119:
      case 4120:
      case 4121:
      case 4122:
      case 4123:
      case 4124:
      case 4125:
      case 4126:
      case 4127:
      case 4130:
        goto LABEL_10;
      case 4100:
        OALSource::GetPosition(v5, values, values + 1, values + 2);
        goto LABEL_32;
      case 4101:
        OALSource::GetDirection(v5, values, values + 1, values + 2);
        goto LABEL_32;
      case 4102:
        OALSource::GetVelocity(v5, values, values + 1, values + 2);
        goto LABEL_32;
      case 4103:
        Looping = OALSource::GetLooping(v5);
        goto LABEL_31;
      case 4105:
        Looping = OALSource::GetBuffer(v5);
        goto LABEL_31;
      case 4112:
        Looping = OALSource::GetState(v5);
        goto LABEL_31;
      case 4117:
        Looping = OALSource::GetQLength(v5);
        goto LABEL_31;
      case 4118:
        Looping = OALSource::GetBuffersProcessed(v5);
        goto LABEL_31;
      case 4128:
        ReferenceDistance = OALSource::GetReferenceDistance(v5);
        goto LABEL_28;
      case 4129:
        ReferenceDistance = OALSource::GetRollOffFactor(v5);
        goto LABEL_28;
      case 4131:
        ReferenceDistance = OALSource::GetMaxDistance(v5);
LABEL_28:
        *values = ReferenceDistance;
        goto LABEL_32;
      case 4132:
        v9 = 1;
        goto LABEL_30;
      case 4133:
        v9 = 2;
        goto LABEL_30;
      case 4134:
        v9 = 3;
LABEL_30:
        Looping = OALSource::GetQueueOffset(v5, v9);
        goto LABEL_31;
      case 4135:
        Looping = OALSource::GetSourceType(v5);
        goto LABEL_31;
      default:
        if (param == 514)
        {
          Looping = OALSource::GetSourceRelative(v5);
LABEL_31:
          *values = Looping;
        }

        else
        {
LABEL_10:
          pthread_once(&gErrorOnce, ErrorKeyInitializer);
          if (!pthread_getspecific(gALErrorKey))
          {
            pthread_setspecific(gALErrorKey, 0xA002);
          }
        }

LABEL_32:
        atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
        break;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "oalImp.cpp";
      v14 = 1024;
      v15 = 2592;
      v16 = 2080;
      String = alGetString(40963);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetSourcefv FAILED = %s\n", &v12, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void alGetSource3i(ALuint sid, ALenum param, ALint *value1, ALint *value2, ALint *value3)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = ProtectSourceObjectInCurrentContext(sid);
  if (v9)
  {
    v10 = v9;
    switch(param)
    {
      case 4100:
        OALSource::GetPosition(v9, value1, value2, value3);
        break;
      case 4102:
        OALSource::GetVelocity(v9, value1, value2, value3);
        break;
      case 4101:
        OALSource::GetDirection(v9, value1, value2, value3);
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add(v10 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "oalImp.cpp";
      v14 = 1024;
      v15 = 2631;
      v16 = 2080;
      String = alGetString(40963);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetSource3f FAILED = %s\n", &v12, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void alSourcePlay(ALuint sid)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "oalImp.cpp";
    v9 = 1024;
    v10 = 2639;
    v11 = 2048;
    v12 = sid;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourcePlay--> source %ld", &v7, 0x1Cu);
  }

  v2 = ProtectSourceObjectInCurrentContext(sid);
  if (v2)
  {
    v3 = v2;
    v4 = OALSource::Play(v2);
    atomic_fetch_add(v3 + 18, 0xFFFFFFFF);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = 40963;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    String = alGetString(v4);
    v7 = 136315650;
    v8 = "oalImp.cpp";
    v9 = 1024;
    v10 = 2653;
    v11 = 2080;
    v12 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourcePlay FAILED = %s\n", &v7, 0x1Cu);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v4);
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
}

void alSourcePause(ALuint sid)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2661;
    v10 = 2048;
    v11 = sid;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourcePause--> source %ld", &v6, 0x1Cu);
  }

  v2 = ProtectSourceObjectInCurrentContext(sid);
  v3 = v2;
  if (v2)
  {
    OALSource::Pause(v2);
    atomic_fetch_add(v3 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40963);
      v6 = 136315650;
      v7 = "oalImp.cpp";
      v8 = 1024;
      v9 = 2676;
      v10 = 2080;
      v11 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourcePause FAILED = %s\n", &v6, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alSourceRewind(ALuint sid)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2706;
    v10 = 2048;
    v11 = sid;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceRewind--> source %ld", &v6, 0x1Cu);
  }

  v2 = ProtectSourceObjectInCurrentContext(sid);
  v3 = v2;
  if (v2)
  {
    OALSource::Rewind(v2);
    atomic_fetch_add(v3 + 18, 0xFFFFFFFF);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40963);
      v6 = 136315650;
      v7 = "oalImp.cpp";
      v8 = 1024;
      v9 = 2720;
      v10 = 2080;
      v11 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceRewind FAILED = %s\n", &v6, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alSourcePlayv(ALsizei ns, const ALuint *sids)
{
  LODWORD(v3) = ns;
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2728;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourcePlayv", &v6, 0x12u);
  }

  if (v3)
  {
    v3 = v3;
    do
    {
      v4 = *sids++;
      alSourcePlay(v4);
      --v3;
    }

    while (v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alSourcePausev(ALsizei ns, const ALuint *sids)
{
  LODWORD(v3) = ns;
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2744;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourcePausev", &v6, 0x12u);
  }

  if (v3)
  {
    v3 = v3;
    do
    {
      v4 = *sids++;
      alSourcePause(v4);
      --v3;
    }

    while (v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alSourceStopv(ALsizei ns, const ALuint *sids)
{
  LODWORD(v3) = ns;
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2760;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceStopv", &v6, 0x12u);
  }

  if (v3)
  {
    v3 = v3;
    do
    {
      v4 = *sids++;
      alSourceStop(v4);
      --v3;
    }

    while (v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alSourceRewindv(ALsizei ns, const ALuint *sids)
{
  LODWORD(v3) = ns;
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 2776;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceRewindv", &v6, 0x12u);
  }

  if (v3)
  {
    v3 = v3;
    do
    {
      v4 = *sids++;
      alSourceRewind(v4);
      --v3;
    }

    while (v3);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void alSourceQueueBuffers(ALuint sid, ALsizei numEntries, const ALuint *bids)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!numEntries)
  {
    goto LABEL_75;
  }

  if (!gOALBufferMap)
  {
LABEL_22:
    v18 = 40964;
    goto LABEL_71;
  }

  v5 = ProtectSourceObjectInCurrentContext(sid);
  if (v5)
  {
    v6 = v5;
    if (OALSource::IsSourceTransitioningToFlushQ(v5))
    {
      v7 = gBufferMapLock;
      *v43 = gBufferMapLock;
      v8 = (*(*gBufferMapLock + 16))(gBufferMapLock);
      v9 = 0;
      v43[8] = v8;
      v10 = (gOALBufferMap + 8);
      v11 = 1;
      do
      {
        v12 = bids[v9];
        if (v12)
        {
          v13 = *v10;
          if (!*v10)
          {
            v18 = 40963;
            goto LABEL_50;
          }

          v14 = gOALBufferMap + 8;
          do
          {
            v15 = *(v13 + 32);
            v16 = v15 >= v12;
            v17 = v15 < v12;
            if (v16)
            {
              v14 = v13;
            }

            v13 = *(v13 + 8 * v17);
          }

          while (v13);
          if (v14 == v10 || *(v14 + 32) > v12 || !*(v14 + 40))
          {
            v18 = 40963;
            if (!v11)
            {
              goto LABEL_38;
            }

            goto LABEL_50;
          }
        }

        v11 = ++v9 < numEntries;
      }

      while (v9 != numEntries);
      v18 = 0;
      if (!v11)
      {
LABEL_38:
        v29 = *bids;
        v30 = *(gOALBufferMap + 8);
        if (!v30)
        {
          goto LABEL_46;
        }

        v31 = gOALBufferMap + 8;
        do
        {
          v32 = *(v30 + 32);
          v16 = v32 >= v29;
          v33 = v32 < v29;
          if (v16)
          {
            v31 = v30;
          }

          v30 = *(v30 + 8 * v33);
        }

        while (v30);
        if (v31 != gOALBufferMap + 8 && *(v31 + 32) <= v29)
        {
          v34 = *(v31 + 40);
        }

        else
        {
LABEL_46:
          v34 = 0;
        }

        OALSource::AddToTempQueue(v6, v29, v34);
      }

LABEL_50:
      if (v8)
      {
LABEL_69:
        (*(*v7 + 24))(v7);
      }

LABEL_70:
      atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
      if (!v18)
      {
        goto LABEL_75;
      }

      goto LABEL_71;
    }

    if (OALSource::GetSourceType(v6) != 4136)
    {
      v7 = gBufferMapLock;
      *v43 = gBufferMapLock;
      v19 = (*(*gBufferMapLock + 16))(gBufferMapLock);
      v20 = 0;
      v43[8] = v19;
      v21 = (gOALBufferMap + 8);
      v22 = numEntries;
      v23 = 1;
      do
      {
        v24 = bids[v20];
        if (v24)
        {
          v25 = *v21;
          if (!*v21)
          {
            v18 = 40963;
            goto LABEL_68;
          }

          v26 = gOALBufferMap + 8;
          do
          {
            v27 = *(v25 + 32);
            v16 = v27 >= v24;
            v28 = v27 < v24;
            if (v16)
            {
              v26 = v25;
            }

            v25 = *(v25 + 8 * v28);
          }

          while (v25);
          if (v26 == v21 || *(v26 + 32) > v24 || !*(v26 + 40))
          {
            v18 = 40963;
            if (v23)
            {
              goto LABEL_68;
            }

            goto LABEL_53;
          }
        }

        v23 = ++v20 < numEntries;
      }

      while (v20 != numEntries);
      v18 = 0;
      if (v23)
      {
        goto LABEL_68;
      }

LABEL_53:
      v35 = 0;
      while (1)
      {
        v36 = bids[v35];
        v37 = *(gOALBufferMap + 8);
        if (!v37)
        {
          goto LABEL_62;
        }

        v38 = gOALBufferMap + 8;
        do
        {
          v39 = *(v37 + 32);
          v16 = v39 >= v36;
          v40 = v39 < v36;
          if (v16)
          {
            v38 = v37;
          }

          v37 = *(v37 + 8 * v40);
        }

        while (v37);
        if (v38 != gOALBufferMap + 8 && *(v38 + 32) <= v36)
        {
          v41 = *(v38 + 40);
        }

        else
        {
LABEL_62:
          v41 = 0;
        }

        v18 = OALSource::AddToQueue(v6, v36, v41);
        if (v18)
        {
          break;
        }

        if (++v35 == v22)
        {
          v18 = 0;
          break;
        }
      }

LABEL_68:
      if (v19)
      {
        goto LABEL_69;
      }

      goto LABEL_70;
    }

    atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
    goto LABEL_22;
  }

  v18 = 40963;
LABEL_71:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v43 = 136315650;
    *&v43[4] = "oalImp.cpp";
    v44 = 1024;
    v45 = 2867;
    v46 = 2080;
    String = alGetString(v18);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceQueueBuffers FAILED = %s\n", v43, 0x1Cu);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v18);
  }

LABEL_75:
  v42 = *MEMORY[0x277D85DE8];
}

void sub_23A024A60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void alSourceUnqueueBuffers(ALuint sid, ALsizei numEntries, ALuint *bids)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!numEntries)
  {
    goto LABEL_16;
  }

  if (bids)
  {
    if (!gOALBufferMap)
    {
      v7 = 40964;
      goto LABEL_10;
    }

    v5 = ProtectSourceObjectInCurrentContext(sid);
    if (v5)
    {
      v6 = v5;
      if (OALSource::GetQLength(v5) >= numEntries)
      {
        v7 = OALSource::RemoveBuffersFromQueue(v6, numEntries, bids);
        atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
        if (!v7)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      atomic_fetch_add(v6 + 18, 0xFFFFFFFF);
    }
  }

  v7 = 40963;
LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315650;
    v10 = "oalImp.cpp";
    v11 = 1024;
    v12 = 2898;
    v13 = 2080;
    String = alGetString(v7);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceUnqueueBuffers FAILED = %s\n", &v9, 0x1Cu);
  }

  if (bids)
  {
    bzero(bids, 4 * numEntries);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v7);
  }

LABEL_16:
  v8 = *MEMORY[0x277D85DE8];
}

void alListenerf(ALenum param, ALfloat value)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_28;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add(v12 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (v12)
  {
    if (param == 4106)
    {
      OALContext::SetListenerGain(v12, value);
    }

    else
    {
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }
    }

    atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_28:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "oalImp.cpp";
      v16 = 1024;
      v17 = 2948;
      v18 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alListenerf FAILED = %s\n", &v14, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A024E7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alListenerfv(ALenum param, const ALfloat *values)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_19;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add(v12 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (!v12)
  {
LABEL_19:
    v13 = 40964;
    goto LABEL_20;
  }

  if (param > 4105)
  {
    if (param == 4106)
    {
      v13 = OALContext::SetListenerGain(v12, *values);
      atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
      if (!v13)
      {
        goto LABEL_36;
      }

      goto LABEL_20;
    }

    if (param != 4111)
    {
      goto LABEL_30;
    }

    v13 = OALContext::SetListenerOrientation(v12, *values, values[1], values[2], values[3], values[4], values[5]);
    atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
    if (!v13)
    {
      goto LABEL_36;
    }

LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315650;
      v16 = "oalImp.cpp";
      v17 = 1024;
      v18 = 2987;
      v19 = 2080;
      String = alGetString(v13);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alListenerfv FAILED = %s\n", &v15, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, v13);
    }

    goto LABEL_36;
  }

  if (param == 4100)
  {
    v13 = OALContext::SetListenerPosition(v12, *values, values[1], values[2]);
    atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  if (param == 4102)
  {
    v13 = OALContext::SetListenerVelocity(v12, *values, values[1], values[2]);
    atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
    if (!v13)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

LABEL_30:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA002);
  }

  atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
LABEL_36:
  v14 = *MEMORY[0x277D85DE8];
}

void sub_23A025194(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alListener3f(ALenum param, ALfloat value1, ALfloat value2, ALfloat value3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_30;
  }

  v8 = gCurrentContext;
  v9 = gContextMapLock;
  v10 = (*(*gContextMapLock + 16))(gContextMapLock);
  v11 = *(gOALContextMap + 8);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = gOALContextMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v8;
    v15 = v13 < v8;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 != gOALContextMap + 8 && *(v12 + 32) <= v8)
  {
    v16 = *(v12 + 40);
    if (v16)
    {
      atomic_fetch_add(v16 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  if (v10)
  {
    (*(*v9 + 24))(v9);
  }

  if (v16)
  {
    if (param == 4102)
    {
      OALContext::SetListenerVelocity(v16, value1, value2, value3);
    }

    else if (param == 4100)
    {
      OALContext::SetListenerPosition(v16, value1, value2, value3);
    }

    else
    {
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }
    }

    atomic_fetch_add(v16 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315650;
      v19 = "oalImp.cpp";
      v20 = 1024;
      v21 = 3019;
      v22 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alListener3f FAILED = %s\n", &v18, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23A025424(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alListeneri(ALenum param, ALint value)
{
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    v2 = gALErrorKey;

    pthread_setspecific(v2, 0xA002);
  }
}

void alListeneriv(ALenum param, const ALint *values)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_32;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add(v12 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (v12)
  {
    switch(param)
    {
      case 4111:
        OALContext::SetListenerOrientation(v12, *values, values[1], values[2], values[3], values[4], values[5]);
        break;
      case 4102:
        OALContext::SetListenerVelocity(v12, *values, values[1], values[2]);
        break;
      case 4100:
        OALContext::SetListenerPosition(v12, *values, values[1], values[2]);
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_32:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "oalImp.cpp";
      v16 = 1024;
      v17 = 3063;
      v18 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alListeneriv FAILED = %s\n", &v14, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A02575C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alListener3i(ALenum param, ALint value1, ALint value2, ALint value3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_30;
  }

  v8 = gCurrentContext;
  v9 = gContextMapLock;
  v10 = (*(*gContextMapLock + 16))(gContextMapLock);
  v11 = *(gOALContextMap + 8);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = gOALContextMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v8;
    v15 = v13 < v8;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 != gOALContextMap + 8 && *(v12 + 32) <= v8)
  {
    v16 = *(v12 + 40);
    if (v16)
    {
      atomic_fetch_add(v16 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  if (v10)
  {
    (*(*v9 + 24))(v9);
  }

  if (v16)
  {
    if (param == 4102)
    {
      OALContext::SetListenerVelocity(v16, value1, value2, value3);
    }

    else if (param == 4100)
    {
      OALContext::SetListenerPosition(v16, value1, value2, value3);
    }

    else
    {
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }
    }

    atomic_fetch_add(v16 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315650;
      v19 = "oalImp.cpp";
      v20 = 1024;
      v21 = 3095;
      v22 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alListener3f FAILED = %s\n", &v18, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23A0259EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetListenerf(ALenum param, ALfloat *value)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_28;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add((v12 + 440), 1u);
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (v12)
  {
    if (param == 4106)
    {
      *value = *(v12 + 368);
    }

    else
    {
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }
    }

    atomic_fetch_add((v12 + 440), 0xFFFFFFFF);
  }

  else
  {
LABEL_28:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "oalImp.cpp";
      v16 = 1024;
      v17 = 3124;
      v18 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetListenerf FAILED = %s\n", &v14, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A025C3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetListenerfv(ALenum param, ALfloat *values)
{
  v20 = *MEMORY[0x277D85DE8];
  if (gOALContextMap)
  {
    v4 = gCurrentContext;
    v5 = gContextMapLock;
    v6 = (*(*gContextMapLock + 16))(gContextMapLock);
    v7 = *(gOALContextMap + 8);
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = gOALContextMap + 8;
    do
    {
      v9 = *(v7 + 32);
      v10 = v9 >= v4;
      v11 = v9 < v4;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * v11);
    }

    while (v7);
    if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
    {
      v12 = *(v8 + 40);
      if (v12)
      {
        atomic_fetch_add((v12 + 440), 1u);
      }
    }

    else
    {
LABEL_10:
      v12 = 0;
    }

    if (v6)
    {
      (*(*v5 + 24))(v5);
    }

    if (v12)
    {
      if (param > 4105)
      {
        if (param == 4106)
        {
          *values = *(v12 + 368);
          goto LABEL_31;
        }

        if (param == 4111)
        {
          *values = *(v12 + 372);
          values[1] = *(v12 + 376);
          values[2] = *(v12 + 380);
          values[3] = *(v12 + 384);
          values[4] = *(v12 + 388);
          values[5] = *(v12 + 392);
          goto LABEL_31;
        }
      }

      else
      {
        if (param == 4100)
        {
          *values = *(v12 + 344);
          values[1] = *(v12 + 348);
          values[2] = *(v12 + 352);
          goto LABEL_31;
        }

        if (param == 4102)
        {
          *values = *(v12 + 356);
          values[1] = *(v12 + 360);
          values[2] = *(v12 + 364);
LABEL_31:
          atomic_fetch_add((v12 + 440), 0xFFFFFFFF);
          goto LABEL_32;
        }
      }

      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }

      goto LABEL_31;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "oalImp.cpp";
    v16 = 1024;
    v17 = 3163;
    v18 = 2080;
    String = alGetString(40964);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetListenerfv FAILED = %s\n", &v14, 0x1Cu);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA004);
  }

LABEL_32:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A025F28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetListener3f(ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_30;
  }

  v8 = gCurrentContext;
  v9 = gContextMapLock;
  v10 = (*(*gContextMapLock + 16))(gContextMapLock);
  v11 = *(gOALContextMap + 8);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = gOALContextMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v8;
    v15 = v13 < v8;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 != gOALContextMap + 8 && *(v12 + 32) <= v8)
  {
    v16 = *(v12 + 40);
    if (v16)
    {
      atomic_fetch_add((v16 + 440), 1u);
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  if (v10)
  {
    (*(*v9 + 24))(v9);
  }

  if (v16)
  {
    if (param == 4102)
    {
      *value1 = *(v16 + 356);
      *value2 = *(v16 + 360);
      *value3 = *(v16 + 364);
    }

    else if (param == 4100)
    {
      *value1 = *(v16 + 344);
      *value2 = *(v16 + 348);
      *value3 = *(v16 + 352);
    }

    else
    {
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }
    }

    atomic_fetch_add((v16 + 440), 0xFFFFFFFF);
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315650;
      v19 = "oalImp.cpp";
      v20 = 1024;
      v21 = 3195;
      v22 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetListener3f FAILED = %s\n", &v18, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23A0261C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetListeneri(ALenum param, ALint *value)
{
  *value = 0;
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    v2 = gALErrorKey;

    pthread_setspecific(v2, 0xA003);
  }
}

void alGetListeneriv(ALenum param, ALint *values)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_32;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add(v12 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (v12)
  {
    switch(param)
    {
      case 4111:
        *values = v12[93];
        values[1] = v12[94];
        values[2] = v12[95];
        values[3] = v12[96];
        values[4] = v12[97];
        values[5] = v12[98];
        break;
      case 4102:
        *values = v12[89];
        values[1] = v12[90];
        values[2] = v12[91];
        break;
      case 4100:
        *values = v12[86];
        values[1] = v12[87];
        values[2] = v12[88];
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_32:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315650;
      v15 = "oalImp.cpp";
      v16 = 1024;
      v17 = 3246;
      v18 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetListenerfv FAILED = %s\n", &v14, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A0264F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetListener3i(ALenum param, ALint *value1, ALint *value2, ALint *value3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!gOALContextMap)
  {
    goto LABEL_30;
  }

  v8 = gCurrentContext;
  v9 = gContextMapLock;
  v10 = (*(*gContextMapLock + 16))(gContextMapLock);
  v11 = *(gOALContextMap + 8);
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = gOALContextMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= v8;
    v15 = v13 < v8;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 != gOALContextMap + 8 && *(v12 + 32) <= v8)
  {
    v16 = *(v12 + 40);
    if (v16)
    {
      atomic_fetch_add(v16 + 110, 1u);
    }
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  if (v10)
  {
    (*(*v9 + 24))(v9);
  }

  if (v16)
  {
    if (param == 4102)
    {
      *value1 = v16[89];
      *value2 = v16[90];
      *value3 = v16[91];
    }

    else if (param == 4100)
    {
      *value1 = v16[86];
      *value2 = v16[87];
      *value3 = v16[88];
    }

    else
    {
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }
    }

    atomic_fetch_add(v16 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_30:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = 136315650;
      v19 = "oalImp.cpp";
      v20 = 1024;
      v21 = 3278;
      v22 = 2080;
      String = alGetString(40964);
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetListener3f FAILED = %s\n", &v18, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_23A026790(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alDistanceModel(ALenum distanceModel)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "oalImp.cpp";
    v15 = 1024;
    v16 = 3288;
    v17 = 2080;
    ALAttributeString = GetALAttributeString(distanceModel);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDistanceModel--> model = %s", &v13, 0x1Cu);
  }

  if ((distanceModel - 53249) >= 6 && distanceModel)
  {
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  else
  {
    if (!gOALContextMap)
    {
      goto LABEL_30;
    }

    v2 = gCurrentContext;
    v3 = gContextMapLock;
    v4 = (*(*gContextMapLock + 16))(gContextMapLock);
    v5 = *(gOALContextMap + 8);
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = gOALContextMap + 8;
    do
    {
      v7 = *(v5 + 32);
      v8 = v7 >= v2;
      v9 = v7 < v2;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * v9);
    }

    while (v5);
    if (v6 != gOALContextMap + 8 && *(v6 + 32) <= v2)
    {
      v10 = *(v6 + 40);
      if (v10)
      {
        atomic_fetch_add((v10 + 440), 1u);
      }
    }

    else
    {
LABEL_13:
      v10 = 0;
    }

    if (v4)
    {
      (*(*v3 + 24))(v3);
    }

    if (v10)
    {
      OALContext::SetDistanceModel(v10, distanceModel);
      atomic_fetch_add((v10 + 440), 0xFFFFFFFF);
    }

    else
    {
LABEL_30:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        String = alGetString(40964);
        v13 = 136315650;
        v14 = "oalImp.cpp";
        v15 = 1024;
        v16 = 3316;
        v17 = 2080;
        ALAttributeString = String;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alDistanceModel FAILED = %s\n", &v13, 0x1Cu);
      }

      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA004);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23A026A58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alDopplerFactor(ALfloat value)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "oalImp.cpp";
    v16 = 1024;
    v17 = 3324;
    v18 = 2048;
    v19 = value;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDopplerFactor---> setting = %.f2", &v14, 0x1Cu);
  }

  if (value < 0.0)
  {
    v2 = 40963;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_22;
    }

LABEL_21:
    String = alGetString(v2);
    v14 = 136315650;
    v15 = "oalImp.cpp";
    v16 = 1024;
    v17 = 3340;
    v18 = 2080;
    v19 = *&String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alDopplerFactor FAILED = %s\n", &v14, 0x1Cu);
    goto LABEL_22;
  }

  if (gOALContextMap)
  {
    v3 = gCurrentContext;
    v4 = gContextMapLock;
    v5 = (*(*gContextMapLock + 16))(gContextMapLock);
    v6 = *(gOALContextMap + 8);
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = gOALContextMap + 8;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= v3;
      v10 = v8 < v3;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != gOALContextMap + 8 && *(v7 + 32) <= v3)
    {
      v11 = *(v7 + 40);
      if (v11)
      {
        atomic_fetch_add((v11 + 440), 1u);
      }
    }

    else
    {
LABEL_15:
      v11 = 0;
    }

    if (v5)
    {
      (*(*v4 + 24))(v4);
    }

    if (v11)
    {
      OALContext::SetDopplerFactor(v11, value);
      atomic_fetch_add((v11 + 440), 0xFFFFFFFF);
      goto LABEL_24;
    }
  }

  v2 = 40964;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_21;
  }

LABEL_22:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v2);
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A026CFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alDopplerVelocity(ALfloat value)
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "oalImp.cpp";
    v16 = 1024;
    v17 = 3348;
    v18 = 2048;
    v19 = value;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDopplerVelocity---> setting = %.f2", &v14, 0x1Cu);
  }

  if (value <= 0.0)
  {
    v11 = 40963;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
LABEL_21:
      String = alGetString(v11);
      v14 = 136315650;
      v15 = "oalImp.cpp";
      v16 = 1024;
      v17 = 3365;
      v18 = 2080;
      v19 = *&String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alDopplerVelocity FAILED = %s\n", &v14, 0x1Cu);
    }
  }

  else
  {
    if (gOALContextMap)
    {
      v2 = gCurrentContext;
      v3 = gContextMapLock;
      v4 = (*(*gContextMapLock + 16))(gContextMapLock);
      v5 = *(gOALContextMap + 8);
      if (!v5)
      {
        goto LABEL_13;
      }

      v6 = gOALContextMap + 8;
      do
      {
        v7 = *(v5 + 32);
        v8 = v7 >= v2;
        v9 = v7 < v2;
        if (v8)
        {
          v6 = v5;
        }

        v5 = *(v5 + 8 * v9);
      }

      while (v5);
      if (v6 != gOALContextMap + 8 && *(v6 + 32) <= v2)
      {
        v10 = *(v6 + 40);
        if (v10)
        {
          atomic_fetch_add((v10 + 440), 1u);
        }
      }

      else
      {
LABEL_13:
        v10 = 0;
      }

      if (v4)
      {
        (*(*v3 + 24))(v3);
      }

      if (v10)
      {
        OALContext::SetDopplerVelocity(v10, value);
        atomic_fetch_add((v10 + 440), 0xFFFFFFFF);
        goto LABEL_24;
      }
    }

    v11 = 40964;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_21;
    }
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v11);
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
}

void sub_23A026FA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alSpeedOfSound(ALfloat value)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315650;
    v14 = "oalImp.cpp";
    v15 = 1024;
    v16 = 3373;
    v17 = 2048;
    v18 = value;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSpeedOfSound---> setting = %.f2", &v13, 0x1Cu);
  }

  if (value <= 0.0 || !gOALContextMap)
  {
    goto LABEL_27;
  }

  v2 = gCurrentContext;
  v3 = gContextMapLock;
  v4 = (*(*gContextMapLock + 16))(gContextMapLock);
  v5 = *(gOALContextMap + 8);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = gOALContextMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v2;
    v9 = v7 < v2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != gOALContextMap + 8 && *(v6 + 32) <= v2)
  {
    v10 = *(v6 + 40);
    if (v10)
    {
      atomic_fetch_add((v10 + 440), 1u);
    }
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  if (v10)
  {
    OALContext::SetSpeedOfSound(v10, value);
    atomic_fetch_add((v10 + 440), 0xFFFFFFFF);
  }

  else
  {
LABEL_27:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40964);
      v13 = 136315650;
      v14 = "oalImp.cpp";
      v15 = 1024;
      v16 = 3389;
      v17 = 2080;
      v18 = *&String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSpeedOfSound FAILED = %s\n", &v13, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_23A027224(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

ALBOOLean alGetBoolean(ALenum param)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 3551;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ***** alGetBoolean", &v3, 0x12u);
  }

  v1 = *MEMORY[0x277D85DE8];
  return 0;
}

void alGetBooleanv(ALenum param, ALBOOLean *data)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 3559;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ***** alGetBooleanv", &v3, 0x12u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

ALfloat alGetFloat(ALenum param)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "oalImp.cpp";
    v17 = 1024;
    v18 = 3567;
    v19 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetFloat ---> attribute = %s", &v15, 0x1Cu);
  }

  if (!gOALContextMap)
  {
    goto LABEL_32;
  }

  v2 = gCurrentContext;
  v3 = gContextMapLock;
  v4 = (*(*gContextMapLock + 16))(gContextMapLock);
  v5 = *(gOALContextMap + 8);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = gOALContextMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= v2;
    v9 = v7 < v2;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 != gOALContextMap + 8 && *(v6 + 32) <= v2)
  {
    v10 = *(v6 + 40);
    if (v10)
    {
      atomic_fetch_add((v10 + 440), 1u);
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  if (v10)
  {
    if (param == 49152)
    {
      result = *(v10 + 336);
    }

    else if (param == 49153)
    {
      result = *(v10 + 340);
    }

    else
    {
      result = 0.0;
      if (param == 49155)
      {
        result = *(v10 + 332);
      }
    }

    atomic_fetch_add((v10 + 440), 0xFFFFFFFF);
  }

  else
  {
LABEL_32:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40964);
      v15 = 136315650;
      v16 = "oalImp.cpp";
      v17 = 1024;
      v18 = 3592;
      v19 = 2080;
      ALAttributeString = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetFloat FAILED = %s\n", &v15, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    v13 = pthread_getspecific(gALErrorKey);
    result = 0.0;
    if (!v13)
    {
      pthread_setspecific(gALErrorKey, 0xA004);
      result = 0.0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02762C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetFloatv(ALenum param, ALfloat *data)
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315650;
    v16 = "oalImp.cpp";
    v17 = 1024;
    v18 = 3602;
    v19 = 2080;
    ALAttributeString = GetALAttributeString(param);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetFloatv ---> attribute = %s", &v15, 0x1Cu);
  }

  if (!gOALContextMap)
  {
    goto LABEL_34;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add((v12 + 440), 1u);
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (v12)
  {
    switch(param)
    {
      case 49152:
        *data = *(v12 + 336);
        break;
      case 49153:
        *data = *(v12 + 340);
        break;
      case 49155:
        *data = *(v12 + 332);
        break;
      default:
        pthread_once(&gErrorOnce, ErrorKeyInitializer);
        if (!pthread_getspecific(gALErrorKey))
        {
          pthread_setspecific(gALErrorKey, 0xA002);
        }

        break;
    }

    atomic_fetch_add((v12 + 440), 0xFFFFFFFF);
  }

  else
  {
LABEL_34:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40964);
      v15 = 136315650;
      v16 = "oalImp.cpp";
      v17 = 1024;
      v18 = 3628;
      v19 = 2080;
      ALAttributeString = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetFloatv FAILED = %s\n", &v15, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_23A027920(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

ALdouble alGetDouble(ALenum param)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (param > 4101)
    {
      if (param <= 40961)
      {
        if (param == 4102)
        {
          v2 = "ALC_EXTENSIONS";
          goto LABEL_26;
        }

        if (param == 40961)
        {
          v2 = "ALC_INVALID_DEVICE";
          goto LABEL_26;
        }
      }

      else
      {
        switch(param)
        {
          case 40962:
            v2 = "ALC_INVALID_CONTEXT";
            goto LABEL_26;
          case 40963:
            v2 = "ALC_INVALID_ENUM";
            goto LABEL_26;
          case 40964:
            v2 = "ALC_INVALID_VALUE";
            goto LABEL_26;
        }
      }
    }

    else if (param <= 784)
    {
      if (!param)
      {
        v2 = "ALC_NO_ERROR";
        goto LABEL_26;
      }

      if (param == 784)
      {
        v2 = "ALC_CAPTURE_DEVICE_SPECIFIER";
        goto LABEL_26;
      }
    }

    else
    {
      switch(param)
      {
        case 785:
          v2 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4100:
          v2 = "ALC_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4101:
          v2 = "ALC_DEVICE_SPECIFIER";
LABEL_26:
          v12 = 136315650;
          v13 = "oalImp.cpp";
          v14 = 1024;
          v15 = 3636;
          v16 = 2080;
          v17 = v2;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetDouble ---> attribute = %s", &v12, 0x1Cu);
          goto LABEL_27;
      }
    }

    v2 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
    goto LABEL_26;
  }

LABEL_27:
  if (param == 61443)
  {
    result = *&gUsersMixerOutputRate;
    if (*&gUsersMixerOutputRate <= 0.0)
    {
      result = 0.0;
      if (gOALDeviceMap)
      {
        v4 = *(gOALDeviceMap + 8);
        if (v4)
        {
          v5 = gOALDeviceMap + 8;
          do
          {
            v6 = *(v4 + 32);
            v7 = v6 >= gCurrentDevice;
            v8 = v6 < gCurrentDevice;
            if (v7)
            {
              v5 = v4;
            }

            v4 = *(v4 + 8 * v8);
          }

          while (v4);
          if (v5 != gOALDeviceMap + 8 && *(v5 + 32) <= gCurrentDevice)
          {
            v9 = *(v5 + 40);
            if (v9)
            {
              result = *(v9 + 56);
            }
          }
        }
      }
    }
  }

  else
  {
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    v10 = pthread_getspecific(gALErrorKey);
    result = 0.0;
    if (!v10)
    {
      pthread_setspecific(gALErrorKey, 0xA003);
      result = 0.0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void alGetDoublev(ALenum param, ALdouble *data)
{
  v19 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (param > 4101)
    {
      if (param <= 40961)
      {
        if (param == 4102)
        {
          v4 = "ALC_EXTENSIONS";
          goto LABEL_26;
        }

        if (param == 40961)
        {
          v4 = "ALC_INVALID_DEVICE";
          goto LABEL_26;
        }
      }

      else
      {
        switch(param)
        {
          case 40962:
            v4 = "ALC_INVALID_CONTEXT";
            goto LABEL_26;
          case 40963:
            v4 = "ALC_INVALID_ENUM";
            goto LABEL_26;
          case 40964:
            v4 = "ALC_INVALID_VALUE";
            goto LABEL_26;
        }
      }
    }

    else if (param <= 784)
    {
      if (!param)
      {
        v4 = "ALC_NO_ERROR";
        goto LABEL_26;
      }

      if (param == 784)
      {
        v4 = "ALC_CAPTURE_DEVICE_SPECIFIER";
        goto LABEL_26;
      }
    }

    else
    {
      switch(param)
      {
        case 785:
          v4 = "ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4100:
          v4 = "ALC_DEFAULT_DEVICE_SPECIFIER";
          goto LABEL_26;
        case 4101:
          v4 = "ALC_DEVICE_SPECIFIER";
LABEL_26:
          v13 = 136315650;
          v14 = "oalImp.cpp";
          v15 = 1024;
          v16 = 3657;
          v17 = 2080;
          v18 = v4;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetDoublev ---> attribute = %s", &v13, 0x1Cu);
          goto LABEL_27;
      }
    }

    v4 = "UNKNOWN ATTRIBUTE - WARNING WARNING WARNING";
    goto LABEL_26;
  }

LABEL_27:
  if (param == 61443)
  {
    v5 = gUsersMixerOutputRate;
    if (*&gUsersMixerOutputRate <= 0.0)
    {
      v5 = 0;
      if (gOALDeviceMap)
      {
        v6 = *(gOALDeviceMap + 8);
        if (v6)
        {
          v7 = gOALDeviceMap + 8;
          do
          {
            v8 = *(v6 + 32);
            v9 = v8 >= gCurrentDevice;
            v10 = v8 < gCurrentDevice;
            if (v9)
            {
              v7 = v6;
            }

            v6 = *(v6 + 8 * v10);
          }

          while (v6);
          if (v7 != gOALDeviceMap + 8 && *(v7 + 32) <= gCurrentDevice)
          {
            v11 = *(v7 + 40);
            if (v11)
            {
              v5 = *(v11 + 56);
            }
          }
        }
      }
    }

    *data = v5;
  }

  else
  {
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

ALint alGetInteger(ALenum param)
{
  v46 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v40 = 136315650;
    v41 = "oalImp.cpp";
    v42 = 1024;
    v43 = 3674;
    v44 = 1024;
    LODWORD(v45) = param;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetInteger ---> attribute = 0x%X", &v40, 0x18u);
  }

  if (param > 61443)
  {
    if (param == 61444)
    {
      if (!gOALContextMap)
      {
        goto LABEL_73;
      }

      v31 = gCurrentContext;
      v32 = gContextMapLock;
      v33 = (*(*gContextMapLock + 16))(gContextMapLock);
      v34 = *(gOALContextMap + 8);
      if (!v34)
      {
        goto LABEL_64;
      }

      v35 = gOALContextMap + 8;
      do
      {
        v36 = *(v34 + 32);
        v8 = v36 >= v31;
        v37 = v36 < v31;
        if (v8)
        {
          v35 = v34;
        }

        v34 = *(v34 + 8 * v37);
      }

      while (v34);
      if (v35 != gOALContextMap + 8 && *(v35 + 32) <= v31)
      {
        v10 = *(v35 + 40);
        if (v10)
        {
          atomic_fetch_add(v10 + 110, 1u);
        }
      }

      else
      {
LABEL_64:
        v10 = 0;
      }

      if (v33)
      {
        (*(*v32 + 24))(v32);
      }

      if (!v10)
      {
LABEL_73:
        result = gMaximumMixerBusCount;
        v39 = *MEMORY[0x277D85DE8];
        return result;
      }

      v11 = v10 + 108;
      goto LABEL_69;
    }

    if (param == 61445)
    {
      if (gOALDeviceMap)
      {
        v12 = gCurrentDevice;
        v13 = gDeviceMapLock;
        v14 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
        v15 = *(gOALDeviceMap + 8);
        if (!v15)
        {
          goto LABEL_31;
        }

        v16 = gOALDeviceMap + 8;
        do
        {
          v17 = *(v15 + 32);
          v8 = v17 >= v12;
          v18 = v17 < v12;
          if (v8)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v18);
        }

        while (v15);
        if (v16 != gOALDeviceMap + 8 && *(v16 + 32) <= v12)
        {
          v19 = *(v16 + 40);
          if (v19)
          {
            atomic_fetch_add((v19 + 76), 1u);
          }
        }

        else
        {
LABEL_31:
          v19 = 0;
        }

        if (v14)
        {
          (*(*v13 + 24))(v13);
        }

        if (v19)
        {
          result = *(v19 + 68);
          v21 = (v19 + 76);
LABEL_70:
          atomic_fetch_add(v21, 0xFFFFFFFF);
          goto LABEL_71;
        }
      }

      goto LABEL_52;
    }

    goto LABEL_36;
  }

  if (param != 53248)
  {
    if (param == 61442)
    {
      if (gOALContextMap)
      {
        v2 = gCurrentContext;
        v3 = gContextMapLock;
        v4 = (*(*gContextMapLock + 16))(gContextMapLock);
        v5 = *(gOALContextMap + 8);
        if (!v5)
        {
          goto LABEL_15;
        }

        v6 = gOALContextMap + 8;
        do
        {
          v7 = *(v5 + 32);
          v8 = v7 >= v2;
          v9 = v7 < v2;
          if (v8)
          {
            v6 = v5;
          }

          v5 = *(v5 + 8 * v9);
        }

        while (v5);
        if (v6 != gOALContextMap + 8 && *(v6 + 32) <= v2)
        {
          v10 = *(v6 + 40);
          if (v10)
          {
            atomic_fetch_add(v10 + 110, 1u);
          }
        }

        else
        {
LABEL_15:
          v10 = 0;
        }

        if (v4)
        {
          (*(*v3 + 24))(v3);
        }

        if (v10)
        {
          v11 = v10 + 106;
LABEL_69:
          result = *v11;
          v21 = v10 + 110;
          goto LABEL_70;
        }
      }

      goto LABEL_52;
    }

LABEL_36:
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA003);
    }

    goto LABEL_54;
  }

  if (gOALContextMap)
  {
    v22 = gCurrentContext;
    v23 = gContextMapLock;
    v24 = (*(*gContextMapLock + 16))(gContextMapLock);
    v25 = *(gOALContextMap + 8);
    if (!v25)
    {
      goto LABEL_47;
    }

    v26 = gOALContextMap + 8;
    do
    {
      v27 = *(v25 + 32);
      v8 = v27 >= v22;
      v28 = v27 < v22;
      if (v8)
      {
        v26 = v25;
      }

      v25 = *(v25 + 8 * v28);
    }

    while (v25);
    if (v26 != gOALContextMap + 8 && *(v26 + 32) <= v22)
    {
      v10 = *(v26 + 40);
      if (v10)
      {
        atomic_fetch_add(v10 + 110, 1u);
      }
    }

    else
    {
LABEL_47:
      v10 = 0;
    }

    if (v24)
    {
      (*(*v23 + 24))(v23);
    }

    if (v10)
    {
      v11 = v10 + 82;
      goto LABEL_69;
    }
  }

LABEL_52:
  result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (result)
  {
    String = alGetString(40964);
    v40 = 136315650;
    v41 = "oalImp.cpp";
    v42 = 1024;
    v43 = 3719;
    v44 = 2080;
    v45 = String;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetInteger FAILED = %s\n", &v40, 0x1Cu);
LABEL_54:
    result = 0;
    v30 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_71:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A028390(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alGetIntegerv(ALenum param, ALint *data)
{
  v46 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v40 = 136315650;
    v41 = "oalImp.cpp";
    v42 = 1024;
    v43 = 3728;
    v44 = 1024;
    LODWORD(v45) = param;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alGetIntegerv ---> attribute = 0x%X", &v40, 0x18u);
  }

  if (param <= 61443)
  {
    if (param != 53248)
    {
      if (param == 61442)
      {
        v4 = gCurrentContext;
        v5 = gContextMapLock;
        v6 = (*(*gContextMapLock + 16))(gContextMapLock);
        v7 = *(gOALContextMap + 8);
        if (!v7)
        {
          goto LABEL_14;
        }

        v8 = gOALContextMap + 8;
        do
        {
          v9 = *(v7 + 32);
          v10 = v9 >= v4;
          v11 = v9 < v4;
          if (v10)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * v11);
        }

        while (v7);
        if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
        {
          v12 = *(v8 + 40);
          if (v12)
          {
            atomic_fetch_add(v12 + 110, 1u);
          }
        }

        else
        {
LABEL_14:
          v12 = 0;
        }

        if (v6)
        {
          (*(*v5 + 24))(v5);
        }

        v13 = v12 + 106;
        goto LABEL_68;
      }

LABEL_34:
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA002);
      }

      goto LABEL_70;
    }

    if (gOALContextMap)
    {
      v23 = gCurrentContext;
      v24 = gContextMapLock;
      v25 = (*(*gContextMapLock + 16))(gContextMapLock);
      v26 = *(gOALContextMap + 8);
      if (!v26)
      {
        goto LABEL_45;
      }

      v27 = gOALContextMap + 8;
      do
      {
        v28 = *(v26 + 32);
        v10 = v28 >= v23;
        v29 = v28 < v23;
        if (v10)
        {
          v27 = v26;
        }

        v26 = *(v26 + 8 * v29);
      }

      while (v26);
      if (v27 != gOALContextMap + 8 && *(v27 + 32) <= v23)
      {
        v12 = *(v27 + 40);
        if (v12)
        {
          atomic_fetch_add(v12 + 110, 1u);
        }
      }

      else
      {
LABEL_45:
        v12 = 0;
      }

      if (v25)
      {
        (*(*v24 + 24))(v24);
      }

      if (v12)
      {
        v13 = v12 + 82;
LABEL_68:
        *data = *v13;
        v22 = v12 + 110;
        goto LABEL_69;
      }
    }

LABEL_50:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      String = alGetString(40964);
      v40 = 136315650;
      v41 = "oalImp.cpp";
      v42 = 1024;
      v43 = 3770;
      v44 = 2080;
      v45 = String;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alGetIntegerv FAILED = %s\n", &v40, 0x1Cu);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALErrorKey))
    {
      pthread_setspecific(gALErrorKey, 0xA004);
    }

    goto LABEL_70;
  }

  if (param == 61444)
  {
    if (!gOALContextMap)
    {
      goto LABEL_72;
    }

    v31 = gCurrentContext;
    v32 = gContextMapLock;
    v33 = (*(*gContextMapLock + 16))(gContextMapLock);
    v34 = *(gOALContextMap + 8);
    if (!v34)
    {
      goto LABEL_63;
    }

    v35 = gOALContextMap + 8;
    do
    {
      v36 = *(v34 + 32);
      v10 = v36 >= v31;
      v37 = v36 < v31;
      if (v10)
      {
        v35 = v34;
      }

      v34 = *(v34 + 8 * v37);
    }

    while (v34);
    if (v35 != gOALContextMap + 8 && *(v35 + 32) <= v31)
    {
      v12 = *(v35 + 40);
      if (v12)
      {
        atomic_fetch_add(v12 + 110, 1u);
      }
    }

    else
    {
LABEL_63:
      v12 = 0;
    }

    if (v33)
    {
      (*(*v32 + 24))(v32);
    }

    if (!v12)
    {
LABEL_72:
      *data = gMaximumMixerBusCount;
      v39 = *MEMORY[0x277D85DE8];
      return;
    }

    v13 = v12 + 108;
    goto LABEL_68;
  }

  if (param != 61445)
  {
    goto LABEL_34;
  }

  if (!gOALDeviceMap)
  {
    goto LABEL_50;
  }

  v14 = gCurrentDevice;
  v15 = gDeviceMapLock;
  v16 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
  v17 = *(gOALDeviceMap + 8);
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = gOALDeviceMap + 8;
  do
  {
    v19 = *(v17 + 32);
    v10 = v19 >= v14;
    v20 = v19 < v14;
    if (v10)
    {
      v18 = v17;
    }

    v17 = *(v17 + 8 * v20);
  }

  while (v17);
  if (v18 != gOALDeviceMap + 8 && *(v18 + 32) <= v14)
  {
    v21 = *(v18 + 40);
    if (v21)
    {
      atomic_fetch_add((v21 + 76), 1u);
    }
  }

  else
  {
LABEL_29:
    v21 = 0;
  }

  if (v16)
  {
    (*(*v15 + 24))(v15);
  }

  if (!v21)
  {
    goto LABEL_50;
  }

  *data = *(v21 + 68);
  v22 = (v21 + 76);
LABEL_69:
  atomic_fetch_add(v22, 0xFFFFFFFF);
LABEL_70:
  v38 = *MEMORY[0x277D85DE8];
}

void sub_23A028928(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

ALBOOLean alIsExtensionPresent(const ALchar *extname)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "oalImp.cpp";
    v13 = 1024;
    v14 = 3933;
    v15 = 2080;
    v16 = extname;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alIsExtensionPresent function name = %s", &v11, 0x1Cu);
  }

  if (extname)
  {
    v2 = strlen(extname);
    v3 = malloc_type_calloc(1uLL, v2 + 1, 0x100004077774924uLL);
    if (*extname)
    {
      v4 = 0;
      v5 = 1;
      do
      {
        v3[v4] = __toupper(extname[v4]);
        v4 = v5++;
      }

      while (strlen(extname) > v4);
    }

    v6 = alExtensions;
    if (!alExtensions)
    {
      v6 = malloc_type_malloc(0x8CuLL, 0x100004077774924uLL);
      alExtensions = v6;
      strcpy(v6, "AL_EXT_OFFSET AL_EXT_LINEAR_DISTANCE AL_EXT_EXPONENT_DISTANCE AL_EXT_STATIC_BUFFER AL_EXT_SOURCE_NOTIFICATIONS AL_EXT_SOURCE_SPATIALIZATION");
    }

    v7 = strstr(v6, v3) != 0;
    free(v3);
    v8 = *MEMORY[0x277D85DE8];
  }

  else
  {
    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }

    v7 = 0;
    v10 = *MEMORY[0x277D85DE8];
  }

  return v7;
}

void alDisable(ALenum capability)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 3957;
    v7 = 1024;
    v8 = capability;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alDisable--> capability = 0x%X", &v3, 0x18u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA003);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void alEnable(ALenum capability)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 3970;
    v7 = 1024;
    v8 = capability;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alEnable--> capability = 0x%X", &v3, 0x18u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, 0xA003);
  }

  v2 = *MEMORY[0x277D85DE8];
}

ALBOOLean alIsEnabled(ALenum capability)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "oalImp.cpp";
    v6 = 1024;
    v7 = 3983;
    v8 = 1024;
    v9 = capability;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alIsEnabled--> capability = 0x%X", &v4, 0x18u);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

void alcMacOSXRenderingQuality(signed int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 3999;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOSXRenderingQuality--> value = %ld", &v3, 0x1Cu);
  }

  alSetInteger(61442, a1);
  v2 = *MEMORY[0x277D85DE8];
}

void alMacOSXRenderChannelCount(signed int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 4007;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alOSXRenderChannelCount--> value = %ld", &v3, 0x1Cu);
  }

  alSetInteger(61445, a1);
  v2 = *MEMORY[0x277D85DE8];
}

void alcMacOSXMixerMaxiumumBusses(int a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 4015;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOSXMixerMaxiumumBusses--> value = %ld", &v3, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 4232;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ***** alSetIntegeri", &v3, 0x12u);
  }

  gMaximumMixerBusCount = a1;
  v2 = *MEMORY[0x277D85DE8];
}

void alcMacOSXMixerOutputRate(double a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315650;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 4023;
    v7 = 2048;
    v8 = a1;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOSXMixerOutputRate--> value = %.f2", &v3, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315394;
    v4 = "oalImp.cpp";
    v5 = 1024;
    v6 = 4302;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ***** alSetDouble", &v3, 0x12u);
  }

  gUsersMixerOutputRate = *&a1;
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t alcMacOSXGetRenderingQuality()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315394;
    v3 = "oalImp.cpp";
    v4 = 1024;
    v5 = 4031;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOSXGetRenderingQuality-->", &v2, 0x12u);
  }

  result = alGetInteger(61442);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t alMacOSXGetRenderChannelCount()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315394;
    v3 = "oalImp.cpp";
    v4 = 1024;
    v5 = 4039;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alOSXGetRenderChannelCount-->", &v2, 0x12u);
  }

  result = alGetInteger(61445);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t alcMacOSXGetMixerMaxiumumBusses()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315394;
    v3 = "oalImp.cpp";
    v4 = 1024;
    v5 = 4047;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOSXGetMixerMaxiumumBusses-->", &v2, 0x12u);
  }

  result = alGetInteger(61444);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void alcMacOSXGetMixerOutputRate()
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315394;
    v2 = "oalImp.cpp";
    v3 = 1024;
    v4 = 4055;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcMacOSXGetMixerOutputRate-->", &v1, 0x12u);
  }

  alGetDouble(61443);
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t alBufferDataStatic(unsigned int a1, unsigned int a2, char *a3, int a4, signed int a5)
{
  v34 = *MEMORY[0x277D85DE8];
  if (gOALBufferMap)
  {
    CleanUpDeadBufferList();
    v10 = *(gOALBufferMap + 8);
    if (!v10)
    {
      v15 = 40963;
      goto LABEL_18;
    }

    v11 = gOALBufferMap + 8;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a1;
      v14 = v12 < a1;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 != gOALBufferMap + 8)
    {
      v15 = 40963;
      if (*(v11 + 32) <= a1 && a4 >= 1)
      {
        if (a3)
        {
          v16 = *(v11 + 40);
          if (v16)
          {
            result = OALBuffer::AddAudioDataStatic(*(v11 + 40), a3, a4, a2, a5);
            v15 = result;
            atomic_fetch_add((v16 + 280), 0xFFFFFFFF);
            if (!result)
            {
              goto LABEL_25;
            }
          }
        }
      }

LABEL_18:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  v15 = 40963;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_19:
    if (a2 - 4352 > 3)
    {
      v18 = "UNKNOWN FORMAT";
    }

    else
    {
      v18 = off_278B468A8[a2 - 4352];
    }

    v20 = 136316674;
    v21 = "oalImp.cpp";
    v22 = 1024;
    v23 = 4081;
    v24 = 2048;
    v25 = a1;
    v26 = 2080;
    v27 = v18;
    v28 = 2048;
    v29 = a4;
    v30 = 2048;
    v31 = a5;
    v32 = 2080;
    String = alGetString(v15);
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alBufferDataStatic FAILED: buffer %ld : %s : %ld bytes : %ldHz error = %s", &v20, 0x44u);
  }

LABEL_23:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  result = pthread_getspecific(gALErrorKey);
  if (!result)
  {
    result = pthread_setspecific(gALErrorKey, v15);
  }

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t alSourceSetRenderCallback(unsigned int a1, uint64_t a2, int a3, signed int a4, void *a5)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 4203;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceSetRenderCallback-->", &v17, 0x12u);
  }

  if (!a2)
  {
    v12 = 40963;
    goto LABEL_8;
  }

  v10 = ProtectSourceObjectInCurrentContext(a1);
  if (v10)
  {
    v11 = v10;
    v12 = OALSource::SetRenderCallback(v10, a2, a3, a4, a5);
    atomic_fetch_add(v11 + 18, 0xFFFFFFFF);
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_8:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v12 = 40963;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_15;
  }

LABEL_11:
  if ((a3 - 4352) > 3)
  {
    v13 = "UNKNOWN FORMAT";
  }

  else
  {
    v13 = off_278B468A8[a3 - 4352];
  }

  String = alGetString(v12);
  v17 = 136316418;
  v18 = "oalImp.cpp";
  v19 = 1024;
  v20 = 4218;
  v21 = 2048;
  v22 = a1;
  v23 = 2080;
  v24 = v13;
  v25 = 2048;
  v26 = a4;
  v27 = 2080;
  v28 = String;
  _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceSetRenderCallback FAILED: source: %ld : %s : %ldHz error = %s", &v17, 0x3Au);
LABEL_15:
  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  if (!pthread_getspecific(gALErrorKey))
  {
    pthread_setspecific(gALErrorKey, v12);
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
LABEL_17:
    v17 = 136315394;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 4222;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d <--alSourceSetRenderCallback", &v17, 0x12u);
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t alSourceAddNotification(unsigned int a1, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315394;
    v15 = "oalImp.cpp";
    v16 = 1024;
    v17 = 4136;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceAddNotification-->", &v14, 0x12u);
  }

  if (a3)
  {
    v8 = ProtectSourceObjectInCurrentContext(a1);
    v9 = v8;
    if (v8)
    {
      result = OALSource::AddNotification(v8, a2, a3, a4);
      if (!result)
      {
        goto LABEL_9;
      }

      v11 = result;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 40963;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
LABEL_7:
        v14 = 136316162;
        v15 = "oalImp.cpp";
        v16 = 1024;
        v17 = 4154;
        v18 = 2048;
        v19 = a1;
        v20 = 2048;
        v21 = a3;
        v22 = 2048;
        v23 = a4;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceAddNotification FAILED: source: %ld : proc: %p : userData: %p", &v14, 0x30u);
      }
    }

    result = v11;
    if (!v9)
    {
LABEL_10:
      v12 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_9:
    atomic_fetch_add(v9 + 18, 0xFFFFFFFF);
    goto LABEL_10;
  }

  result = 40963;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void alSourceRemoveNotification(unsigned int a1, int a2, void (*a3)(unsigned int, unsigned int, void *), void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "oalImp.cpp";
    v13 = 1024;
    v14 = 4173;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceRemoveNotification-->", &v11, 0x12u);
  }

  if (a3)
  {
    v8 = ProtectSourceObjectInCurrentContext(a1);
    if (v8)
    {
      v9 = v8;
      OALSource::RemoveNotification(v8, a2, a3, a4);
      atomic_fetch_add((v9 + 72), 0xFFFFFFFF);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t alcASASetListener(int a1, float *a2, unsigned int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    result = 40963;
    goto LABEL_46;
  }

  if (gOALContextMap)
  {
    v6 = gCurrentContext;
    v7 = gContextMapLock;
    v8 = (*(*gContextMapLock + 16))(gContextMapLock);
    v9 = *(gOALContextMap + 8);
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = gOALContextMap + 8;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v6;
      v13 = v11 < v6;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 != gOALContextMap + 8 && *(v10 + 32) <= v6)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
        atomic_fetch_add(v14 + 110, 1u);
      }
    }

    else
    {
LABEL_11:
      v14 = 0;
    }

    if (v8)
    {
      (*(*v7 + 24))(v7);
    }

    result = 40961;
    if (a1 <= 1920362347)
    {
LABEL_15:
      switch(a1)
      {
        case 1920361826:
          v16 = *a2;
          if (*a2 < 0.5 || v16 > 4.0)
          {
            exception = __cxa_allocate_exception(4uLL);
            *exception = 40963;
            __cxa_throw(exception, MEMORY[0x277D827C0], 0);
          }

          OALContext::SetReverbEQBandwidth(v14, v16);
          break;
        case 1920361830:
          v18 = *a2;
          if (*a2 < 10.0 || v18 > 20000.0)
          {
            v24 = __cxa_allocate_exception(4uLL);
            *v24 = 40963;
            __cxa_throw(v24, MEMORY[0x277D827C0], 0);
          }

          OALContext::SetReverbEQFrequency(v14, v18);
          break;
        case 1920361831:
          if (fabsf(*a2) > 18.0)
          {
            v22 = __cxa_allocate_exception(4uLL);
            *v22 = 40963;
            __cxa_throw(v22, MEMORY[0x277D827C0], 0);
          }

          OALContext::SetReverbEQGain(v14, *a2);
          break;
        default:
          goto LABEL_44;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v14 = 0;
    result = 40961;
    if (a1 <= 1920362347)
    {
      goto LABEL_15;
    }
  }

  if (a1 == 1920362348)
  {
    if (a3 > 3)
    {
      OALContext::SetReverbLevel(v14, *a2);
      goto LABEL_43;
    }

LABEL_49:
    v21 = __cxa_allocate_exception(4uLL);
    *v21 = 40964;
    __cxa_throw(v21, MEMORY[0x277D827C0], 0);
  }

  if (a1 == 1920364398)
  {
    if (a3 >= 4)
    {
      OALContext::SetReverbState(v14, *a2);
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  if (a1 != 1920365172)
  {
    goto LABEL_44;
  }

  if (a3 < 4)
  {
    goto LABEL_49;
  }

  OALContext::SetReverbRoomType(v14, *a2);
LABEL_43:
  result = 0;
LABEL_44:
  if (v14)
  {
    atomic_fetch_add(v14 + 110, 0xFFFFFFFF);
  }

LABEL_46:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02A2E4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x23A02A2ECLL);
  }

  JUMPOUT(0x23A02A180);
}

uint64_t alcASAGetListener(int a1, float *a2, _DWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (gOALContextMap)
  {
    v6 = gCurrentContext;
    v7 = gContextMapLock;
    v8 = (*(*gContextMapLock + 16))(gContextMapLock);
    v9 = *(gOALContextMap + 8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = gOALContextMap + 8;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v6;
      v13 = v11 < v6;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 != gOALContextMap + 8 && *(v10 + 32) <= v6)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
        atomic_fetch_add(v14 + 110, 1u);
      }
    }

    else
    {
LABEL_10:
      v14 = 0;
    }

    if (v8)
    {
      (*(*v7 + 24))(v7);
    }

    result = 40961;
    if (a1 <= 1920362347)
    {
LABEL_14:
      switch(a1)
      {
        case 1920361826:
          if (*a3 >= 4u)
          {
            *a3 = 4;
            ReverbEQBandwidth = OALContext::GetReverbEQBandwidth(v14);
            goto LABEL_30;
          }

          break;
        case 1920361830:
          if (*a3 > 3u)
          {
            *a3 = 4;
            ReverbEQBandwidth = OALContext::GetReverbEQFrequency(v14);
            goto LABEL_30;
          }

          break;
        case 1920361831:
          if (*a3 >= 4u)
          {
            *a3 = 4;
            ReverbEQBandwidth = OALContext::GetReverbEQGain(v14);
LABEL_30:
            result = 0;
            *a2 = ReverbEQBandwidth;
            goto LABEL_31;
          }

          break;
        default:
          goto LABEL_31;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v14 = 0;
    result = 40961;
    if (a1 <= 1920362347)
    {
      goto LABEL_14;
    }
  }

  if (a1 == 1920362348)
  {
    if (*a3 < 4u)
    {
      goto LABEL_41;
    }

    result = 0;
    *a3 = 4;
    *a2 = v14[125];
  }

  else
  {
    if (a1 == 1920364398)
    {
      if (*a3 < 4u)
      {
        goto LABEL_41;
      }

      *a3 = 4;
      *a2 = v14[123];
    }

    else if (a1 != 1920365172)
    {
LABEL_31:
      if (!v14)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (*a3 < 4u)
    {
LABEL_41:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 40964;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    }

    result = 0;
    *a3 = 4;
    *a2 = v14[124];
  }

LABEL_37:
  atomic_fetch_add(v14 + 110, 0xFFFFFFFF);
LABEL_38:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02A5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, int a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t alcASASetSource(int a1, unsigned int a2, AudioUnitParameterValue *a3, unsigned int a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = ProtectSourceObjectInCurrentContext(a2);
  v8 = v7;
  switch(a1)
  {
    case 1868723060:
      if (a4 > 3)
      {
        OALSource::SetObstruction(v7, *a3);
        goto LABEL_10;
      }

      goto LABEL_15;
    case 1868784492:
      if (a4 >= 4)
      {
        OALSource::SetOcclusion(v7, *a3);
        goto LABEL_10;
      }

LABEL_15:
      exception = __cxa_allocate_exception(4uLL);
      *exception = 40964;
      __cxa_throw(exception, MEMORY[0x277D827C0], 0);
    case 1920365420:
      if (a4 >= 4)
      {
        OALSource::SetReverbSendLevel(v7, *a3);
LABEL_10:
        result = 0;
        goto LABEL_12;
      }

      goto LABEL_15;
  }

  result = 40961;
LABEL_12:
  if (v8)
  {
    atomic_fetch_add(v8 + 18, 0xFFFFFFFF);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t alcASAGetSource(int a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = ProtectSourceObjectInCurrentContext(a2);
  if (a1 == 1868723060)
  {
    if (*a4 > 3u)
    {
      v8 = 440;
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (a1 == 1868784492)
  {
    if (*a4 >= 4u)
    {
      v8 = 436;
      goto LABEL_10;
    }

LABEL_15:
    exception = __cxa_allocate_exception(4uLL);
    *exception = 40964;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  if (a1 != 1920365420)
  {
    result = 40961;
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*a4 < 4u)
  {
    goto LABEL_15;
  }

  v8 = 432;
LABEL_10:
  result = 0;
  *a4 = 4;
  *a3 = *(v7 + v8);
LABEL_11:
  atomic_fetch_add((v7 + 72), 0xFFFFFFFF);
LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void alSourceRenderingQuality(unsigned int a1, int a2)
{
  *&v12[5] = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315650;
    v8 = "oalImp.cpp";
    v9 = 1024;
    v10 = 4092;
    v11 = 2048;
    *v12 = a2;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceRenderingQuality--> value = %ld", &v7, 0x1Cu);
  }

  v4 = ProtectSourceObjectInCurrentContext(a1);
  v5 = v4;
  if (v4 && !OALSource::SetRenderQuality(v4, a2))
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315906;
    v8 = "oalImp.cpp";
    v9 = 1024;
    v10 = 4105;
    v11 = 1024;
    v12[0] = a1;
    LOWORD(v12[1]) = 2048;
    *(&v12[1] + 2) = a2;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceRenderingQuality FAILED: source: %d : value: %ld", &v7, 0x22u);
  }

  if (v5)
  {
LABEL_8:
    atomic_fetch_add(v5 + 18, 0xFFFFFFFF);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t alSourceGetRenderingQuality(unsigned int a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "oalImp.cpp";
    v8 = 1024;
    v9 = 4114;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alSourceGetRenderingQuality-->", &v6, 0x12u);
  }

  v2 = ProtectSourceObjectInCurrentContext(a1);
  if (v2)
  {
    v3 = v2;
    result = OALSource::GetRenderQuality(v2);
    atomic_fetch_add(v3 + 18, 0xFFFFFFFF);
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v6 = 136315650;
      v7 = "oalImp.cpp";
      v8 = 1024;
      v9 = 4123;
      v10 = 1024;
      v11 = a1;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alSourceGetRenderingQuality FAILED: source: %d", &v6, 0x18u);
      result = 0;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void *alcOutputCapturerPrepare(unsigned int a1, int a2, int a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136316418;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 4904;
    v21 = 1024;
    v22 = gCurrentContext;
    v23 = 1024;
    v24 = a1;
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    v28 = a3;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOutputCapturerPrepare--> context = %u, frequency = %u, format = %d, buffersize = %d", &v17, 0x2Au);
  }

  if (gOALContextMap)
  {
    v6 = gCurrentContext;
    v7 = gContextMapLock;
    v8 = (*(*gContextMapLock + 16))(gContextMapLock);
    v9 = *(gOALContextMap + 8);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = gOALContextMap + 8;
    do
    {
      v11 = *(v9 + 32);
      v12 = v11 >= v6;
      v13 = v11 < v6;
      if (v12)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v13);
    }

    while (v9);
    if (v10 != gOALContextMap + 8 && *(v10 + 32) <= v6)
    {
      v14 = *(v10 + 40);
      if (v14)
      {
        atomic_fetch_add(v14 + 110, 1u);
      }
    }

    else
    {
LABEL_12:
      v14 = 0;
    }

    if (v8)
    {
      (*(*v7 + 24))(v7);
    }

    if (v14)
    {
      OALContext::OutputCapturerCreate(v14, a1);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315394;
    v18 = "oalImp.cpp";
    v19 = 1024;
    v20 = 4926;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcOutputCapturerPrepare FAILED", &v17, 0x12u);
  }

  pthread_once(&gErrorOnce, ErrorKeyInitializer);
  result = pthread_getspecific(gALCErrorKey);
  if (!result)
  {
    result = pthread_setspecific(gALCErrorKey, 0xA004);
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02B274(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t alcOutputCapturerStart()
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "oalImp.cpp";
    v13 = 1024;
    v14 = 4933;
    v15 = 2048;
    v16 = gCurrentContext;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOutputCapturerStart--> context = %ld", &v11, 0x1Cu);
  }

  if (!gOALContextMap)
  {
    goto LABEL_26;
  }

  v0 = gCurrentContext;
  v1 = gContextMapLock;
  v2 = (*(*gContextMapLock + 16))(gContextMapLock);
  v3 = *(gOALContextMap + 8);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = gOALContextMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v0;
    v7 = v5 < v0;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != gOALContextMap + 8 && *(v4 + 32) <= v0)
  {
    v8 = *(v4 + 40);
    if (v8)
    {
      atomic_fetch_add(v8 + 110, 1u);
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  if (v2)
  {
    (*(*v1 + 24))(v1);
  }

  if (!v8 || (result = OALContext::OutputCapturerStart(v8), atomic_fetch_add(v8 + 110, 0xFFFFFFFF), result))
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "oalImp.cpp";
      v13 = 1024;
      v14 = 4955;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcOutputCapturerStart FAILED", &v11, 0x12u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    result = pthread_getspecific(gALCErrorKey);
    if (!result)
    {
      result = pthread_setspecific(gALCErrorKey, 0xA004);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02B4CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t alcOutputCapturerStop()
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "oalImp.cpp";
    v13 = 1024;
    v14 = 4962;
    v15 = 2048;
    v16 = gCurrentContext;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOutputCapturerStop--> context = %ld", &v11, 0x1Cu);
  }

  if (!gOALContextMap)
  {
    goto LABEL_26;
  }

  v0 = gCurrentContext;
  v1 = gContextMapLock;
  v2 = (*(*gContextMapLock + 16))(gContextMapLock);
  v3 = *(gOALContextMap + 8);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = gOALContextMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v0;
    v7 = v5 < v0;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != gOALContextMap + 8 && *(v4 + 32) <= v0)
  {
    v8 = *(v4 + 40);
    if (v8)
    {
      atomic_fetch_add(v8 + 110, 1u);
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  if (v2)
  {
    (*(*v1 + 24))(v1);
  }

  if (!v8 || (result = OALContext::OutputCapturerStop(v8), atomic_fetch_add(v8 + 110, 0xFFFFFFFF), result))
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "oalImp.cpp";
      v13 = 1024;
      v14 = 4984;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcOutputCapturerStop FAILED", &v11, 0x12u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    result = pthread_getspecific(gALCErrorKey);
    if (!result)
    {
      result = pthread_setspecific(gALCErrorKey, 0xA004);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02B724(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

OALCaptureMixer *alcOutputCapturerAvailableSamples()
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315650;
    v12 = "oalImp.cpp";
    v13 = 1024;
    v14 = 4991;
    v15 = 2048;
    v16 = gCurrentContext;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOutputCapturerAvailableSamples--> context = %ld", &v11, 0x1Cu);
  }

  if (!gOALContextMap)
  {
    goto LABEL_27;
  }

  v0 = gCurrentContext;
  v1 = gContextMapLock;
  v2 = (*(*gContextMapLock + 16))(gContextMapLock);
  v3 = *(gOALContextMap + 8);
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = gOALContextMap + 8;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= v0;
    v7 = v5 < v0;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != gOALContextMap + 8 && *(v4 + 32) <= v0)
  {
    v8 = *(v4 + 40);
    if (v8)
    {
      atomic_fetch_add(v8 + 110, 1u);
    }
  }

  else
  {
LABEL_12:
    v8 = 0;
  }

  if (v2)
  {
    (*(*v1 + 24))(v1);
  }

  if (v8)
  {
    result = OALContext::OutputCapturerAvailableFrames(v8);
    atomic_fetch_add(v8 + 110, 0xFFFFFFFF);
  }

  else
  {
LABEL_27:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315394;
      v12 = "oalImp.cpp";
      v13 = 1024;
      v14 = 5015;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcOutputCapturerAvailableSamples FAILED", &v11, 0x12u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    if (!pthread_getspecific(gALCErrorKey))
    {
      pthread_setspecific(gALCErrorKey, 0xA004);
    }

    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02B980(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t alcOutputCapturerSamples(unsigned __int8 *a1, unsigned int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v15 = 136316162;
    v16 = "oalImp.cpp";
    v17 = 1024;
    v18 = 5023;
    v19 = 2048;
    v20 = gCurrentContext;
    v21 = 2048;
    v22 = a1;
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d alcOutputCapturerSamples--> context = %ld, buffer = %p, samples = %d", &v15, 0x2Cu);
  }

  if (!gOALContextMap)
  {
    goto LABEL_26;
  }

  v4 = gCurrentContext;
  v5 = gContextMapLock;
  v6 = (*(*gContextMapLock + 16))(gContextMapLock);
  v7 = *(gOALContextMap + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = gOALContextMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
  {
    v12 = *(v8 + 40);
    if (v12)
    {
      atomic_fetch_add(v12 + 110, 1u);
    }
  }

  else
  {
LABEL_12:
    v12 = 0;
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  if (!v12 || (result = OALContext::OutputCapturerGetFrames(v12, a2, a1), atomic_fetch_add(v12 + 110, 0xFFFFFFFF), result))
  {
LABEL_26:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = 136315394;
      v16 = "oalImp.cpp";
      v17 = 1024;
      v18 = 5045;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: alcOutputCapturerSamples FAILED", &v15, 0x12u);
    }

    pthread_once(&gErrorOnce, ErrorKeyInitializer);
    result = pthread_getspecific(gALCErrorKey);
    if (!result)
    {
      result = pthread_setspecific(gALCErrorKey, 0xA004);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02BC00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void alSetInteger(int a1, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    *v26 = 136315394;
    *&v26[4] = "oalImp.cpp";
    v27 = 1024;
    v28 = 4232;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ***** alSetIntegeri", v26, 0x12u);
  }

  switch(a1)
  {
    case 61445:
      if (gRenderChannelSetting == a2)
      {
        goto LABEL_51;
      }

      if (!gOALDeviceMap)
      {
        exception = __cxa_allocate_exception(4uLL);
        *exception = 40964;
        __cxa_throw(exception, MEMORY[0x277D827C0], 0);
      }

      gRenderChannelSetting = a2;
      *v26 = gDeviceMapLock;
      v13 = (*(*gDeviceMapLock + 16))(gDeviceMapLock);
      v26[8] = v13;
      v14 = gOALDeviceMap;
      if (!*(gOALDeviceMap + 16))
      {
        if (!v13)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v15 = 0;
      while (1)
      {
        v17 = *v14;
        if (v15)
        {
          v18 = v15;
          do
          {
            v20 = v17[1];
            if (v20)
            {
              do
              {
                v21 = v20;
                v20 = *v20;
              }

              while (v20);
            }

            else
            {
              do
              {
                v21 = v17[2];
                v22 = *v21 == v17;
                v17 = v21;
              }

              while (!v22);
            }

            v17 = v21;
          }

          while (v18-- > 1);
        }

        else
        {
          v21 = *v14;
        }

        if (v21 == (v14 + 8))
        {
          v23 = 0;
          if (MEMORY[0x44] == gRenderChannelSetting)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v23 = v21[5];
          if (v23[17] == gRenderChannelSetting)
          {
            goto LABEL_26;
          }
        }

        v16 = v23 + 19;
        atomic_fetch_add(v23 + 19, 1u);
        OALDevice::SetRenderChannelSetting(v23, gRenderChannelSetting);
        atomic_fetch_add(v16, 0xFFFFFFFF);
        v14 = gOALDeviceMap;
LABEL_26:
        if (++v15 >= *(v14 + 16))
        {
          if ((v26[8] & 1) == 0)
          {
LABEL_51:
            gMaximumMixerBusCount = a2;
            goto LABEL_52;
          }

LABEL_50:
          (*(**v26 + 24))(*v26);
          goto LABEL_51;
        }
      }

    case 61444:
      goto LABEL_51;
    case 61442:
      if (a2 == 1751412840 || a2 == 1920034921 || a2 == 1919183983)
      {
        if (gOALContextMap)
        {
          v4 = gCurrentContext;
          v5 = gContextMapLock;
          v6 = (*(*gContextMapLock + 16))(gContextMapLock);
          v7 = *(gOALContextMap + 8);
          if (!v7)
          {
            goto LABEL_18;
          }

          v8 = gOALContextMap + 8;
          do
          {
            v9 = *(v7 + 32);
            v10 = v9 >= v4;
            v11 = v9 < v4;
            if (v10)
            {
              v8 = v7;
            }

            v7 = *(v7 + 8 * v11);
          }

          while (v7);
          if (v8 != gOALContextMap + 8 && *(v8 + 32) <= v4)
          {
            v12 = *(v8 + 40);
            if (v12)
            {
              atomic_fetch_add(v12 + 110, 1u);
            }
          }

          else
          {
LABEL_18:
            v12 = 0;
          }

          if (v6)
          {
            (*(*v5 + 24))(v5);
          }
        }

        else
        {
          v12 = 0;
        }

        OALContext::SetRenderQuality(v12, a2);
        if (v12)
        {
          atomic_fetch_add(v12 + 110, 0xFFFFFFFF);
        }
      }

      break;
    default:
      pthread_once(&gErrorOnce, ErrorKeyInitializer);
      if (!pthread_getspecific(gALErrorKey))
      {
        pthread_setspecific(gALErrorKey, 0xA003);
      }

      break;
  }

LABEL_52:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23A02BFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, int a12, __int16 a13, uint64_t a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t FillInASBD(uint64_t a1, int a2, unsigned int a3)
{
  v3 = a2 - 4352;
  if ((a2 - 4352) > 3)
  {
    return 40963;
  }

  result = 0;
  v6 = dword_23A03A400[v3];
  v7 = dword_23A03A410[v3];
  v8 = dword_23A03A420[v3];
  v9 = dword_23A03A430[v3];
  *a1 = a3;
  *(a1 + 8) = 1819304813;
  *(a1 + 12) = v6;
  *(a1 + 16) = v7;
  *(a1 + 20) = 1;
  *(a1 + 24) = v7;
  *(a1 + 28) = v9;
  *(a1 + 32) = v8;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void OALSource::OALSource(OALSource *this, int a2, OALContext *a3)
{
  *this = a2;
  *(this + 4) = 0;
  v4 = (this + 308);
  *(this + 1) = a3;
  *(this + 4) = 65792;
  *(this + 20) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 60) = 1;
  *(this + 8) = 0;
  *(this + 18) = 0;
  CAGuard::CAGuard((this + 80), "OAL:SourceLock");
  *(this + 58) = -1;
  *(this + 118) = 0;
  *(this + 35) = 0x103000000000;
  *(this + 18) = xmmword_23A03A480;
  *(this + 76) = 4113;
  __asm { FMOV            V0.4S, #1.0 }

  *v4 = _Q0;
  v4[1] = xmmword_23A03A490;
  *(this + 340) = 0;
  *(this + 345) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = 0x72646C6F00000000;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 34) = 0;
  operator new();
}

void OALSource::~OALSource(OALSource *this)
{
  v2 = *(this + 58);
  if (v2 != -1)
  {
    *(this + 27) = 0;
    *(this + 28) = 0;
    if (!OALContext::SetBusRenderProc(*(this + 1), v2, (this + 216)))
    {
      AUGraphUpdate(*(*(*(this + 1) + 16) + 16), 0);
    }

    OALContext::SetBusEnable(*(this + 1), *(this + 58), 1);
    *(this + 236) = 0;
    v3 = *(this + 58);
    if (v3 != -1)
    {
      OALContext::SetBusAsAvailable(*(this + 1), v3);
      *(this + 58) = -1;
    }
  }

  OALSource::FlushBufferQueue(this);
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      *(v4 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x23EE824D0](v4, 0x1020C4055CCDE27);
  }

  v6 = *(this + 3);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    MEMORY[0x23EE824D0](v6, 0x1020C4055CCDE27);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *v8;
    if (*v8)
    {
      *(v8 + 8) = v9;
      operator delete(v9);
    }

    MEMORY[0x23EE824D0](v8, 0x1020C4055CCDE27);
  }

  v10 = *(this + 52);
  if (v10)
  {
    v11 = *(v10 + 24);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *v10;
    if (*v10)
    {
      *(v10 + 8) = v12;
      operator delete(v12);
    }

    MEMORY[0x23EE824D0](v10, 0x1020C401C8C6399);
  }

  CAGuard::~CAGuard((this + 80));
}

uint64_t OALSource::StopRenderingToBus(uint64_t this)
{
  v1 = *(this + 232);
  if (v1 != -1)
  {
    v2 = this;
    *(this + 216) = 0;
    *(this + 224) = 0;
    if (!OALContext::SetBusRenderProc(*(this + 8), v1, (this + 216)))
    {
      AUGraphUpdate(*(*(*(v2 + 8) + 16) + 16), 0);
    }

    this = OALContext::SetBusEnable(*(v2 + 8), *(v2 + 232), 1);
    *(v2 + 236) = 0;
    v3 = *(v2 + 232);
    if (v3 != -1)
    {
      this = OALContext::SetBusAsAvailable(*(v2 + 8), v3);
      *(v2 + 232) = -1;
    }
  }

  return this;
}

void *OALSource::FlushBufferQueue(void *this)
{
  v1 = this;
  v2 = this[4];
  v3 = *(v2 + 6);
  if (v3)
  {
    v4 = *v2;
    if (*v2 == *(v2 + 1))
    {
      do
      {
        *(v2 + 6) = 0;
        --v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        while (1)
        {
          v5 = *(v1 + 32);
          v6 = *v5;
          if (*v5 != *(v5 + 8))
          {
            break;
          }

          *(v5 + 24) = 0;
          if (!--v3)
          {
            goto LABEL_10;
          }
        }

        this = OALBuffer::ReleaseBuffer(v6[1], v1);
        v7 = *(v5 + 8);
        v8 = v7 - (v6 + 4);
        if (v7 != v6 + 4)
        {
          this = memmove(v6, v6 + 4, v7 - (v6 + 4));
        }

        v9 = *v5;
        *(v5 + 8) = v6 + v8;
        *(v5 + 24) = (v6 + v8 - v9) >> 5;
        --v3;
      }

      while (v3);
    }
  }

LABEL_10:
  v10 = *(v1 + 24);
  v11 = *(v10 + 6);
  if (v11)
  {
    v12 = *v10;
    if (*v10 == *(v10 + 1))
    {
      do
      {
        *(v10 + 6) = 0;
        --v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        while (1)
        {
          v13 = *(v1 + 24);
          v14 = *v13;
          if (*v13 != *(v13 + 8))
          {
            break;
          }

          *(v13 + 24) = 0;
          if (!--v11)
          {
            goto LABEL_19;
          }
        }

        this = OALBuffer::ReleaseBuffer(v14[1], v1);
        v15 = *(v13 + 8);
        v16 = v15 - (v14 + 4);
        if (v15 != v14 + 4)
        {
          this = memmove(v14, v14 + 4, v15 - (v14 + 4));
        }

        v17 = *v13;
        *(v13 + 8) = v14 + v16;
        *(v13 + 24) = (v14 + v16 - v17) >> 5;
        --v11;
      }

      while (v11);
LABEL_19:
      v10 = *(v1 + 24);
    }
  }

  *(v1 + 48) = *(*(v1 + 32) + 24) + *(v10 + 6);
  return this;
}

uint64_t OALSource::SetUpDeconstruction(OALSource *this)
{
  v2 = *(this + 1);
  v3 = pthread_self();
  v4 = *(v2 + 480);
  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v5 = (*(*(this + 10) + 16))();
  v6 = *(this + 76);
  if ((v6 - 56577) < 6 || v6 == 4114)
  {
    operator new();
  }

  *(this + 4) = 1;
  *(this + 76) = 56577;
  *(this + 352) = 1;
  if (v5)
  {
    (*(*(this + 10) + 24))(this + 80);
  }

  if (v3 != v4)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  return 0;
}

void sub_23A02CB88(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::SetPitch(OALSource *this, float a2)
{
  if (a2 < 0.0)
  {
    return 40963;
  }

  if (*(this + 78) != a2 || *(this + 20))
  {
    v5 = this + 80;
    v6 = (*(*(this + 10) + 16))(this + 80);
    *(this + 78) = a2;
    v7 = *(this + 58);
    if (v7 == -1)
    {
      *(this + 20) = 1;
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v8 = *(this + 3);
      v10 = *v8;
      v9 = v8[1];
      if (v10)
      {
        v11 = v10 + ((*(this + 14) << 48) >> 43) == v9;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(this + 20) = 0;
        if (!v6)
        {
          return 0;
        }
      }

      else
      {
        v12 = v6;
        OALContext::SetBusPlaybackRate(*(this + 1), v7, *(this + 79) * a2);
        *(this + 20) = 0;
        if (!v12)
        {
          return 0;
        }
      }
    }

    (*(*v5 + 24))(this + 80);
  }

  return 0;
}

uint64_t OALSource::SetGain(OALSource *this, float a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2 < 0.0)
  {
    updated = 40963;
    goto LABEL_11;
  }

  v5 = (this + 80);
  v6 = (*(*(this + 10) + 16))(this + 80);
  v7 = v6;
  if (v5[57] == a2)
  {
    updated = 0;
    if (!v6)
    {
      goto LABEL_11;
    }

LABEL_10:
    (*(*v5 + 24))(v5);
    goto LABEL_11;
  }

  *(this + 77) = a2;
  updated = OALSource::UpdateBusGain(this);
  if (updated && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = *this;
    *buf = 136315906;
    v12 = "oalSource.cpp";
    v13 = 1024;
    v14 = 279;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = updated;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::SetGain FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
  }

  if (v7)
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return updated;
}

void sub_23A02CF34(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::UpdateBusGain(OALSource *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(this + 58);
  if (v1 == -1)
  {
    goto LABEL_12;
  }

  v3 = *(this + 77) * *(this + 75);
  if (v3 > 1.0)
  {
    *(this + 237) = 0;
    v3 = 1.0;
    goto LABEL_4;
  }

  if (v3 < 0.0)
  {
    v5 = 0;
    *(this + 237) = 1;
    goto LABEL_13;
  }

  *(this + 237) = v3 <= 0.0;
  if (v3 <= 0.0)
  {
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

LABEL_4:
  v4 = log10f(v3) * 20.0;
  if (v4 < -120.0)
  {
    v4 = -120.0;
  }

  v5 = OALContext::SetBusInputGain(*(this + 1), v1, v4);
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = *this;
    v9 = 136315906;
    v10 = "oalSource.cpp";
    v11 = 1024;
    v12 = 2466;
    v13 = 2048;
    v14 = v6;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateBusGain FAILED - OALSource = %ld : result = %ld", &v9, 0x26u);
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t OALSource::SetMinGain(OALSource *this, AudioUnitParameterValue a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v6 = (this + 80);
    v7 = (*(*(this + 10) + 16))(this + 80);
    if (v6[63] != a2)
    {
      *(this + 83) = a2;
      v8 = *(this + 58);
      if (v8 != -1)
      {
        v9 = OALContext::SetBusMinGain(*(this + 1), v8, a2);
        if (v9)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v10 = *this;
            *buf = 136315906;
            v13 = "oalSource.cpp";
            v14 = 1024;
            v15 = 2483;
            v16 = 2048;
            v17 = v10;
            v18 = 2048;
            v19 = v9;
            _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateMinBusGain FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
          }
        }
      }
    }

    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    result = 0;
  }

  else
  {
    result = 40963;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02D264(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t OALSource::SetMaxGain(OALSource *this, AudioUnitParameterValue a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v6 = (this + 80);
    v7 = (*(*(this + 10) + 16))(this + 80);
    if (v6[64] != a2)
    {
      *(this + 84) = a2;
      v8 = *(this + 58);
      if (v8 != -1)
      {
        v9 = OALContext::SetBusMaxGain(*(this + 1), v8, a2);
        if (v9)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v10 = *this;
            *buf = 136315906;
            v13 = "oalSource.cpp";
            v14 = 1024;
            v15 = 2500;
            v16 = 2048;
            v17 = v10;
            v18 = 2048;
            v19 = v9;
            _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateMaxBusGain FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
          }
        }
      }
    }

    if (v7)
    {
      (*(*v6 + 24))(v6);
    }

    result = 0;
  }

  else
  {
    result = 40963;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23A02D428(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t OALSource::UpdateMaxBusGain(OALSource *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(this + 58);
  if (v1 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = OALContext::SetBusMaxGain(*(this + 1), v1, *(this + 84));
    if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *this;
      v7 = 136315906;
      v8 = "oalSource.cpp";
      v9 = 1024;
      v10 = 2500;
      v11 = 2048;
      v12 = v4;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateMaxBusGain FAILED - OALSource = %ld : result = %ld", &v7, 0x26u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OALSource::SetDistanceParams(OALSource *this, int a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = (this + 80);
  v6 = *(this + 10);
  v17 = this + 80;
  v8 = (*(v6 + 16))(this + 80);
  v18 = v8;
  BusDistanceParams = OALContext::GetBusDistanceParams(*(v7 - 9), v7[38], &inData);
  if (BusDistanceParams)
  {
    goto LABEL_16;
  }

  v10 = *(this + 80);
  if (a2)
  {
    inData.mReferenceDistance = *(this + 81);
  }

  else if (a3)
  {
    inData.mMaxDistance = *(this + 82);
  }

  v11 = log10f(inData.mReferenceDistance / (inData.mReferenceDistance + (v10 * (inData.mMaxDistance - inData.mReferenceDistance)))) * 20.0;
  v12 = -v11;
  if (v11 >= 0.0)
  {
    v12 = 0.0;
  }

  inData.mMaxAttenuation = v12;
  BusDistanceParams = OALContext::SetBusDistanceParams(*(this + 1), *(this + 58), &inData);
  if (BusDistanceParams)
  {
LABEL_16:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = *this;
      *buf = 136315906;
      v20 = "oalSource.cpp";
      v21 = 1024;
      v22 = 361;
      v23 = 2048;
      v24 = v13;
      v25 = 2048;
      v26 = BusDistanceParams;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::SetDistanceParams FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
    }
  }

  if (v8)
  {
    (*(*v7 + 24))(v7);
  }

  v14 = *MEMORY[0x277D85DE8];
  return BusDistanceParams;
}

void sub_23A02D714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CAGuard::Locker::~Locker(va);
  _Unwind_Resume(a1);
}

uint64_t OALSource::SetReferenceDistance(OALSource *this, float a2)
{
  if (a2 < 0.0)
  {
    return 40963;
  }

  v5 = (this + 80);
  v6 = (*(*(this + 10) + 16))(this + 80);
  if (v5[61] != a2)
  {
    *(this + 81) = a2;
    if ((*(*(this + 1) + 408) & 1) != 0 && *(this + 58) != -1)
    {
      OALSource::SetDistanceParams(this, 1, 0);
    }
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  return 0;
}

uint64_t OALSource::SetMaxDistance(OALSource *this, float a2)
{
  if (a2 <= 0.0)
  {
    return 40963;
  }

  if (*(this + 82) != a2)
  {
    v2 = (this + 80);
    v5 = (*(*(this + 10) + 16))(this + 80);
    v2[62] = a2;
    if ((*(*(v2 - 9) + 408) & 1) != 0 && *(this + 58) != -1)
    {
      OALSource::SetDistanceParams(this, 0, 1);
    }

    if (v5)
    {
      (*(*v2 + 24))(v2);
    }
  }

  return 0;
}

uint64_t OALSource::SetRollOffFactor(OALSource *this, float a2)
{
  if (a2 < 0.0)
  {
    return 40963;
  }

  v5 = (this + 80);
  v6 = (*(*(this + 10) + 16))(this + 80);
  if (v5[60] != a2)
  {
    *(this + 80) = a2;
    if ((*(*(this + 1) + 408) & 1) != 0 && *(this + 58) != -1)
    {
      OALSource::SetDistanceParams(this, 0, 0);
    }
  }

  if (v6)
  {
    (*(*v5 + 24))(v5);
  }

  return 0;
}

uint64_t OALSource::SetLooping(OALSource *this, int a2)
{
  v3 = (this + 80);
  v4 = (*(*(this + 10) + 16))(this + 80);
  v3[49] = a2;
  if (v4)
  {
    (*(*v3 + 24))(v3);
  }

  return 0;
}

uint64_t OALSource::SetPosition(OALSource *this, float a2, float a3, float a4)
{
  v7 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  v7[40] = a2;
  v7[41] = a3;
  v7[42] = a4;
  *(v7 - 63) = 1;
  if (result)
  {
    (*(*v7 + 24))(v7);
    return 0;
  }

  return result;
}

uint64_t OALSource::SetVelocity(OALSource *this, float a2, float a3, float a4)
{
  v7 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  v7[43] = a2;
  v7[44] = a3;
  v7[45] = a4;
  *(v7 - 63) = 1;
  if (result)
  {
    (*(*v7 + 24))(v7);
    return 0;
  }

  return result;
}

uint64_t OALSource::SetDirection(OALSource *this, float a2, float a3, float a4)
{
  v7 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  v7[46] = a2;
  v7[47] = a3;
  v7[48] = a4;
  *(v7 - 63) = 1;
  if (result)
  {
    (*(*v7 + 24))(v7);
    return 0;
  }

  return result;
}

uint64_t OALSource::SetSourceRelative(OALSource *this, unsigned int a2)
{
  if (a2 > 1)
  {
    return 40963;
  }

  v4 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  v4[50] = a2;
  *(v4 - 63) = 1;
  if (result)
  {
    (*(*v4 + 24))(v4);
    return 0;
  }

  return result;
}

uint64_t OALSource::SetChannelParameters(OALSource *this)
{
  v2 = *(this + 81);
  if (v2 >= 0.0)
  {
    v3 = this + 80;
    v4 = (*(*(this + 10) + 16))(this + 80);
    if (*(this + 81) != v2)
    {
      *(this + 81) = v2;
      if ((*(*(this + 1) + 408) & 1) != 0 && *(this + 58) != -1)
      {
        OALSource::SetDistanceParams(this, 1, 0);
      }
    }

    if (v4)
    {
      (*(*v3 + 24))(this + 80);
    }
  }

  v5 = *(this + 82);
  v6 = *(this + 80);
  if (v6 >= 0.0)
  {
    v7 = (*(*(this + 10) + 16))(this + 80);
    if (*(this + 80) != v6)
    {
      *(this + 80) = v6;
      if ((*(*(this + 1) + 408) & 1) != 0 && *(this + 58) != -1)
      {
        OALSource::SetDistanceParams(this, 0, 0);
      }
    }

    if (v7)
    {
      (*(*(this + 10) + 24))(this + 80);
    }
  }

  *(this + 17) = 1;
  return 0;
}

uint64_t OALSource::SetConeInnerAngle(OALSource *this, float a2)
{
  v4 = (this + 80);
  v5 = (*(*(this + 10) + 16))(this + 80);
  if (v4[52] != a2)
  {
    *(this + 72) = a2;
    *(this + 17) = 1;
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  return 0;
}

uint64_t OALSource::SetConeOuterAngle(OALSource *this, float a2)
{
  v4 = (this + 80);
  v5 = (*(*(this + 10) + 16))(this + 80);
  if (v4[53] != a2)
  {
    *(this + 73) = a2;
    *(this + 17) = 1;
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }

  return 0;
}

uint64_t OALSource::SetConeOuterGain(OALSource *this, float a2)
{
  if (a2 <= 0.0)
  {
    return 40963;
  }

  if (a2 < 0.0 || a2 > 1.0)
  {
    return 0;
  }

  v4 = (this + 80);
  result = (*(*(this + 10) + 16))(this + 80);
  if (v4[54] != a2)
  {
    *(this + 74) = a2;
    *(this + 17) = 1;
  }

  if (result)
  {
    (*(*v4 + 24))(v4);
    return 0;
  }

  return result;
}

float OALSource::GetPosition(OALSource *this, float *a2, float *a3, float *a4)
{
  *a2 = *(this + 60);
  *a3 = *(this + 61);
  result = *(this + 62);
  *a4 = result;
  return result;
}

float OALSource::GetVelocity(OALSource *this, float *a2, float *a3, float *a4)
{
  *a2 = *(this + 63);
  *a3 = *(this + 64);
  result = *(this + 65);
  *a4 = result;
  return result;
}

float OALSource::GetDirection(OALSource *this, float *a2, float *a3, float *a4)
{
  *a2 = *(this + 66);
  *a3 = *(this + 67);
  result = *(this + 68);
  *a4 = result;
  return result;
}

uint64_t OALSource::GetState(OALSource *this)
{
  result = *(this + 76);
  if ((result - 56577) <= 5)
  {
    return dword_23A03A4B8[(result - 56577)];
  }

  return result;
}

uint64_t OALSource::GetQLength(OALSource *this)
{
  v1 = 48;
  if (*(this + 352))
  {
    v1 = 52;
  }

  return *(this + v1);
}

uint64_t OALSource::GetBuffersProcessed(atomic_uint *this)
{
  v1 = this[76];
  if (v1 == 4113 || v1 == 56580)
  {
    return 0;
  }

  if (this[71] == 1735095154)
  {
    return 0;
  }

  if (this[88])
  {
    return 0;
  }

  if (v1 == 56577 || v1 == 4116)
  {
    return this[12];
  }

  if (*(this + 60) == 1)
  {
    v5 = *(this + 1);
    v6 = this;
    v7 = pthread_self();
    v8 = v6;
    v9 = *(v5 + 480);
    if (v7 != v9)
    {
      atomic_fetch_add(v6 + 16, 1u);
      for (; v6[17]; v8 = v6)
      {
        usleep(0x1F4u);
      }
    }

    v10 = *(v8 + 10);
    v11 = v8 + 20;
    v12 = (*(v10 + 16))(v8 + 20);
    OALSource::ClearActiveQueue(v6);
    CAGuard::Locker::~Locker(&v11);
    this = v6;
    if (v7 != v9)
    {
      atomic_fetch_add(v6 + 16, 0xFFFFFFFF);
    }
  }

  return *(*(this + 4) + 24);
}

void sub_23A02E530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  CAGuard::Locker::~Locker(&a9);
  if (v10 != v11)
  {
    atomic_fetch_add((v9 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(a1);
}

void OALSource::ClearActiveQueue(OALSource *this)
{
  for (i = *(this + 3); *(i + 6); *(this + 12) = *(*(this + 4) + 24) + *(i + 6))
  {
    v5 = *i;
    v4 = i[1];
    v6 = v5 == v4;
    if (v5 == v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }

    if (!v6)
    {
      v5[5] = 2;
    }

    v8 = *(this + 4);
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[6];
    LODWORD(v17) = v9;
    *(&v17 + 1) = v10;
    v18 = 0;
    v19 = v11;
    std::vector<BufferInfo>::push_back[abi:ne200100](v8, &v17);
    *(v8 + 24) = (*(v8 + 8) - *v8) >> 5;
    v12 = *(this + 3);
    v14 = *v12;
    v13 = v12[1];
    if (*v12 == v13)
    {
      v3 = *v12;
    }

    else
    {
      v15 = v13 - (v14 + 32);
      if (v13 != v14 + 32)
      {
        memmove(*v12, v14 + 32, v13 - (v14 + 32));
      }

      v16 = *v12;
      v3 = &v14[v15];
      v12[1] = &v14[v15];
      v14 = v16;
    }

    *(v12 + 6) = (v3 - v14) >> 5;
    i = *(this + 3);
  }

  *(this + 14) = 0;
  *(this + 60) = 0;
}

uint64_t OALSource::SetBuffer(OALSource *this, int a2, OALBuffer *a3)
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_34;
  }

  v6 = *(this + 1);
  v7 = pthread_self();
  v8 = *(v6 + 480);
  if (v7 != v8)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v9 = (*(*(this + 10) + 16))();
  v10 = *(this + 76);
  if ((v10 - 56577) > 5)
  {
    if ((v10 - 4114) >= 2)
    {
      OALSource::FlushBufferQueue(this);
      if (a2)
      {
        v12 = *(this + 3);
        if (*v12 == *(v12 + 8))
        {
          *(this + 14) = 0;
          *(this + 60) = 0;
        }

        *buf = a2;
        *&v24[4] = v3;
        *&v24[20] = 0;
        std::vector<BufferInfo>::push_back[abi:ne200100](v12, buf);
        *(v12 + 24) = (*(v12 + 8) - *v12) >> 5;
        *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
        OALBuffer::UseThisBuffer(v3, this);
        v3 = 0;
        *(this + 71) = 4136;
        if ((v9 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v3 = 0;
        *(this + 71) = 4144;
        if ((v9 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_31;
    }
  }

  else if (((1 << (v10 - 1)) & 0x36) == 0)
  {
    if (!a2)
    {
      *(this + 71) = 4144;
      *(this + 352) = 1;
      *(this + 13) = 0;
      v13 = *(*(this + 5) + 24);
      if (v13)
      {
        v14 = *(this + 4);
        v15 = *v14;
        if (*v14 == *(v14 + 1))
        {
          do
          {
            *(v14 + 6) = 0;
            --v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            while (1)
            {
              v16 = *(this + 4);
              v18 = *v16;
              v17 = v16[1];
              if (*v16 != v17)
              {
                break;
              }

              *(v16 + 6) = 0;
              if (!--v13)
              {
                goto LABEL_8;
              }
            }

            v19 = v17 - (v18 + 32);
            if (v17 != v18 + 32)
            {
              memmove(*v16, v18 + 32, v17 - (v18 + 32));
            }

            v20 = *v16;
            v16[1] = &v18[v19];
            *(v16 + 6) = (&v18[v19] - v20) >> 5;
            --v13;
          }

          while (v13);
        }
      }
    }

LABEL_8:
    *(v3 + 352) = 1;
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = *this;
    *buf = 136315906;
    *v24 = "oalSource.cpp";
    *&v24[8] = 1024;
    *&v24[10] = 885;
    *&v24[14] = 2048;
    *&v24[16] = v11;
    v25 = 2048;
    v3 = 40964;
    v26 = 40964;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::SetBuffer FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
    if ((v9 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    (*(*(this + 10) + 24))(this + 80);
    goto LABEL_32;
  }

  v3 = 40964;
  if (v9)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v7 != v8)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

LABEL_34:
  v21 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_23A02EA14(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::GetBuffer(OALSource *this)
{
  if (*(this + 71) == 4136 && ((v1 = *(this + 3), *(v1 + 24)) || (v1 = *(this + 4), *(v1 + 24))) && *v1 != *(v1 + 8))
  {
    return **(*v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t OALSource::AddToQueue(OALSource *this, int a2, OALBuffer *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v7 = pthread_self();
  v8 = *(v6 + 480);
  if (v7 != v8)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v9 = (*(*(this + 10) + 16))(this + 80);
  v10 = *(this + 71);
  switch(v10)
  {
    case 4136:
LABEL_7:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v11 = *this;
        *buf = 136315906;
        *v17 = "oalSource.cpp";
        *&v17[8] = 1024;
        *&v17[10] = 960;
        *&v17[14] = 2048;
        *&v17[16] = v11;
        v18 = 2048;
        v12 = 40964;
        v19 = 40964;
        _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::AddToQueue FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v12 = 40964;
        if (!v9)
        {
          goto LABEL_17;
        }
      }

LABEL_16:
      (*(*(this + 10) + 24))(this + 80);
      goto LABEL_17;
    case 4144:
      *(this + 71) = 4137;
      break;
    case 1735095154:
      goto LABEL_7;
  }

  v13 = *(this + 3);
  if (*v13 == *(v13 + 8))
  {
    *(this + 14) = 0;
    *(this + 60) = 0;
  }

  *buf = a2;
  *&v17[4] = a3;
  *&v17[20] = 0;
  std::vector<BufferInfo>::push_back[abi:ne200100](v13, buf);
  *(v13 + 24) = (*(v13 + 8) - *v13) >> 5;
  *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
  OALBuffer::UseThisBuffer(a3, this);
  v12 = 0;
  if (v9)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v7 != v8)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_23A02ECF4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void OALSource::AddToTempQueue(OALSource *this, int a2, OALBuffer *a3)
{
  v6 = *(this + 1);
  if (pthread_self() != *(v6 + 480))
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  (*(*(this + 10) + 16))(this + 80);
  v7 = *(this + 5);
  LODWORD(v8) = a2;
  *(&v8 + 1) = a3;
  v9 = 0;
  v10 = 0;
  std::vector<BufferInfo>::push_back[abi:ne200100](v7, &v8);
  *(v7 + 24) = (*(v7 + 8) - *v7) >> 5;
  OALBuffer::UseThisBuffer(a3, this);
  ++*(this + 13);
  operator new();
}

void sub_23A02EEC8(_Unwind_Exception *exception_object)
{
  if (v2 != v3)
  {
    atomic_fetch_add((v1 + 64), 0xFFFFFFFF);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::RemoveBuffersFromQueue(OALSource *this, unsigned int a2, unsigned int *a3)
{
  v3 = 0;
  v50 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_60;
  }

  v4 = a3;
  if (!a3)
  {
    goto LABEL_60;
  }

  v7 = *(this + 1);
  v8 = pthread_self();
  v9 = *(v7 + 480);
  if (v8 != v9)
  {
    atomic_fetch_add(this + 16, 1u);
    while (*(this + 17))
    {
      usleep(0x1F4u);
    }
  }

  v39 = (*(*(this + 10) + 16))();
  v10 = 48;
  if (*(this + 352))
  {
    v10 = 52;
  }

  if (*(this + v10) < a2)
  {
LABEL_9:
    v3 = 40964;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = *this;
      *buf = 136316162;
      v41 = "oalSource.cpp";
      v42 = 1024;
      v43 = 1102;
      v44 = 1024;
      v45 = v11;
      v46 = 1024;
      v47 = a2;
      v48 = 1024;
      v49 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::RemoveBuffersFromQueue FAILED - OALSource = %d : count = %d : result = %d", buf, 0x24u);
    }

    if (v39 != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  if (*(this + 352))
  {
    operator new();
  }

  v12 = *(this + 76);
  if (v12 > 4115)
  {
    if (v12 != 4116)
    {
      if (v12 == 56577 || v12 == 56580)
      {
        operator new();
      }

      goto LABEL_23;
    }

    goto LABEL_62;
  }

  if ((v12 - 4114) >= 2)
  {
    if (v12 != 4113)
    {
      goto LABEL_23;
    }

LABEL_62:
    OALSource::ClearActiveQueue(this);
    goto LABEL_63;
  }

  if (*(this + 69) == 1)
  {
    goto LABEL_9;
  }

LABEL_63:
  if (*(*(this + 4) + 24) < a2)
  {
    goto LABEL_9;
  }

LABEL_23:
  v37 = v9;
  v38 = v8;
  if ((*(this + 352) & 1) == 0)
  {
    v18 = 0;
    v19 = 8;
    v20 = a2;
    while (1)
    {
      if (*(this + 352) == 1)
      {
        v21 = *(this + 5);
        if (*v21 + v19 - 8 == v21[1])
        {
          v22 = 0;
        }

        else
        {
          v22 = **(*v21 + v19);
        }

        v4[v18] = v22;
        --*(this + 13);
        goto LABEL_33;
      }

      v23 = *(this + 76);
      if (v23 != 56580 && v23 != 56577)
      {
        v28 = *(this + 4);
        v29 = *v28;
        if (*v28 == v28[1])
        {
          v30 = 0;
          v34 = *v28;
        }

        else
        {
          v30 = *v29;
          OALBuffer::ReleaseBuffer(*(v29 + 8), this);
          v31 = v28[1];
          v32 = v31 - (v29 + 32);
          if (v31 != v29 + 32)
          {
            memmove(v29, (v29 + 32), v31 - (v29 + 32));
          }

          v33 = *v28;
          v34 = v29 + v32;
          v28[1] = v29 + v32;
          v29 = v33;
        }

        *(v28 + 6) = (v34 - v29) >> 5;
        *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
        v4[v18] = v30;
        goto LABEL_33;
      }

      v25 = *(this + 4);
      if (v18 >= *(v25 + 24))
      {
        v26 = *(this + 3);
        v27 = *v26 + 32 * (v18 - *(v25 + 24));
        if (v27 == v26[1])
        {
LABEL_50:
          v4[v18] = 0;
          goto LABEL_33;
        }

        v4[v18] = **(v27 + 8);
      }

      else
      {
        if (*v25 + v19 - 8 == *(v25 + 8))
        {
          goto LABEL_50;
        }

        v4[v18] = **(*v25 + v19);
      }

LABEL_33:
      ++v18;
      v19 += 32;
      if (v20 == v18)
      {
        goto LABEL_53;
      }
    }
  }

  v13 = *(this + 5);
  v14 = *v13;
  v15 = v13[1];
  v16 = a2;
  do
  {
    if (v14 == v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = **(v14 + 8);
    }

    *v4++ = v17;
    --*(this + 13);
    v14 += 32;
    --v16;
  }

  while (v16);
LABEL_53:
  if (!*(this + 12))
  {
    v3 = 0;
    *(this + 71) = 4144;
    v9 = v37;
    v8 = v38;
    if (v39 != 1)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v3 = 0;
  v9 = v37;
  v8 = v38;
  if (v39 == 1)
  {
LABEL_57:
    (*(*(this + 10) + 24))(this + 80);
  }

LABEL_58:
  if (v8 != v9)
  {
    atomic_fetch_add(this + 16, 0xFFFFFFFF);
  }

LABEL_60:
  v35 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_23A02F3F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OALSource::PostRenderRemoveBuffersFromQueue(OALSource *this, unsigned int a2)
{
  v26 = *MEMORY[0x277D85DE8];
  OALSource::ClearActiveQueue(this);
  v4 = *(this + 4);
  if (*(v4 + 6) >= a2)
  {
    if (a2)
    {
      v8 = *v4;
      if (*v4 == *(v4 + 1))
      {
        do
        {
          *(v4 + 6) = 0;
          *(this + 12) = *(v4 + 6) + *(*(this + 3) + 24);
          --a2;
        }

        while (a2);
      }

      else
      {
        do
        {
          v11 = *v4;
          if (*v4 == *(v4 + 1))
          {
            v10 = *v4;
          }

          else
          {
            OALBuffer::ReleaseBuffer(v11[1], this);
            v12 = *(v4 + 1);
            v13 = v12 - (v11 + 4);
            if (v12 != v11 + 4)
            {
              memmove(v11, v11 + 4, v12 - (v11 + 4));
            }

            v14 = *v4;
            v10 = (v11 + v13);
            *(v4 + 1) = v11 + v13;
            v11 = v14;
          }

          *(v4 + 6) = (v10 - v11) >> 5;
          v4 = *(this + 4);
          *(this + 12) = *(v4 + 6) + *(*(this + 3) + 24);
          --a2;
        }

        while (a2);
      }
    }

    v6 = 0;
    if (!*(this + 12))
    {
      *(this + 71) = 4144;
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = *this;
      v16 = 136316162;
      v17 = "oalSource.cpp";
      v18 = 1024;
      v19 = 1139;
      v20 = 2048;
      v21 = v5;
      v22 = 2048;
      v23 = a2;
      v24 = 2048;
      v6 = 40964;
      v25 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::RemoveBuffersFromQueue FAILED - OALSource = %ld : count = %ld : result = %ld", &v16, 0x30u);
    }

    else
    {
      v6 = 40964;
    }

    v7 = *MEMORY[0x277D85DE8];
  }

  return v6;
}

uint64_t OALSource::PostRenderAddBuffersToQueue(OALSource *this, uint64_t a2)
{
  v2 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(this + 71);
  if (v4 == 4136 || v4 == 1735095154)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = *this;
      v19 = 136316162;
      *v20 = "oalSource.cpp";
      *&v20[8] = 1024;
      *&v20[10] = 1169;
      *&v20[14] = 2048;
      *&v20[16] = v6;
      v21 = 2048;
      v22 = v2;
      v23 = 2048;
      v2 = 40964;
      v24 = 40964;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::RemoveBuffersFromQueue FAILED - OALSource = %ld : count = %ld : result = %ld", &v19, 0x30u);
    }

    else
    {
      v2 = 40964;
    }
  }

  else if (v4 == 4144)
  {
    *(this + 71) = 4137;
    if (a2)
    {
      do
      {
        while (1)
        {
LABEL_15:
          v7 = *(this + 5);
          v8 = *v7;
          if (*v7 == v7[1])
          {
            v8 = 0;
          }

          v9 = *v8;
          v10 = *(v8 + 8);
          v11 = *(this + 3);
          if (*v11 == *(v11 + 8))
          {
            *(this + 14) = 0;
            *(this + 60) = 0;
          }

          v19 = v9;
          *&v20[4] = v10;
          *&v20[20] = 0;
          std::vector<BufferInfo>::push_back[abi:ne200100](v11, &v19);
          *(v11 + 24) = (*(v11 + 8) - *v11) >> 5;
          *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
          OALBuffer::UseThisBuffer(v10, this);
          v12 = *(this + 5);
          v13 = *v12;
          if (*v12 != *(v12 + 8))
          {
            break;
          }

          *(v12 + 24) = 0;
          v2 = (v2 - 1);
          if (!v2)
          {
            goto LABEL_23;
          }
        }

        OALBuffer::ReleaseBuffer(v13[1], this);
        v14 = *(v12 + 8);
        v15 = v14 - (v13 + 4);
        if (v14 != v13 + 4)
        {
          memmove(v13, v13 + 4, v14 - (v13 + 4));
        }

        v16 = *v12;
        *(v12 + 8) = v13 + v15;
        *(v12 + 24) = (v13 + v15 - v16) >> 5;
        v2 = (v2 - 1);
      }

      while (v2);
    }
  }

  else if (a2)
  {
    goto LABEL_15;
  }

LABEL_23:
  v17 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t OALSource::SetupMixerBus(OALSource *this, CAStreamBasicDescription *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  if (*(this + 58) == -1)
  {
    v9 = *(a2 + 7);
    v10 = *(this + 1);
    v11 = *this;
    if (v9 == 1)
    {
      AvailableMonoBus = OALContext::GetAvailableMonoBus(v10, v11);
      *(this + 58) = AvailableMonoBus;
      if (AvailableMonoBus != -1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      AvailableMonoBus = OALContext::GetAvailableStereoBus(v10, v11);
      *(this + 58) = AvailableMonoBus;
      if (AvailableMonoBus != -1)
      {
LABEL_11:
        OALContext::GetBusFormat(*(this + 1), AvailableMonoBus, &v23);
        if (*&v23 != *a2 || v25 != *(a2 + 8) || HIDWORD(v24) >= 2)
        {
          *(this + 18) = 1;
        }

        v13 = *(this + 81);
        v14 = *(this + 82);
        v15 = log10f(v13 / (v13 + (*(this + 80) * (v14 - v13)))) * 20.0;
        if (v15 >= 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = -v15;
        }

        if (!OALContext::GetBusDistanceParams(*(this + 1), *(this + 58), &buf) && (buf.mReferenceDistance != v13 || buf.mMaxDistance != v14 || buf.mMaxAttenuation != v16))
        {
          buf.mMaxAttenuation = v16;
          *&buf.mReferenceDistance = *(this + 324);
          OALContext::SetBusDistanceParams(*(this + 1), *(this + 58), &buf);
        }

        v17 = *(this + 58);
        if (v17 != -1)
        {
          v18 = *(this + 1);
          if (!*(v18 + 492) || (AudioUnitSetParameter(*(v18 + 32), 8u, 1u, v17, *(this + 108) * 100.0, 0), v17 = *(this + 58), v17 != -1))
          {
            AudioUnitSetParameter(*(*(this + 1) + 32), 0xAu, 1u, v17, *(this + 109), 0);
            v19 = *(this + 58);
            if (v19 != -1)
            {
              AudioUnitSetParameter(*(*(this + 1) + 32), 0xBu, 1u, v19, *(this + 110), 0);
            }
          }
        }

        goto LABEL_2;
      }
    }

    v4 = 0xFFFFFFFFLL;
    goto LABEL_6;
  }

LABEL_2:
  *(this + 20) = 1;
  updated = OALSource::SetPitch(this, *(this + 78));
  if (!updated)
  {
    *(this + 17) = 1;
    updated = OALSource::ChangeChannelSettings(this);
    if (!updated)
    {
      updated = OALSource::UpdateBusGain(this);
      if (!updated)
      {
        v20 = *(this + 58);
        if (v20 != -1)
        {
          v21 = OALContext::SetBusMinGain(*(this + 1), v20, *(this + 83));
          if (v21)
          {
            v4 = v21;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v22 = *this;
              buf.mReferenceDistance = 4.8153e-34;
              *&buf.mMaxDistance = "oalSource.cpp";
              v27 = 1024;
              v28 = 2483;
              v29 = 2048;
              v30 = v22;
              v31 = 2048;
              v32 = v4;
              _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateMinBusGain FAILED - OALSource = %ld : result = %ld", &buf, 0x26u);
            }

            goto LABEL_6;
          }
        }

        updated = OALSource::UpdateMaxBusGain(this);
        if (!updated)
        {
          v4 = OALSource::UpdateBusRenderQuality(this);
          if (!v4)
          {
            goto LABEL_8;
          }

          goto LABEL_6;
        }
      }
    }
  }

  v4 = updated;
LABEL_6:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = *this;
    buf.mReferenceDistance = 4.8153e-34;
    *&buf.mMaxDistance = "oalSource.cpp";
    v27 = 1024;
    v28 = 1266;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v4;
    _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::SetupMixerBus FAILED - OALSource = %ld : result = %ld", &buf, 0x26u);
  }

LABEL_8:
  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t OALSource::ChangeChannelSettings(OALSource *this)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(this + 17) == 1)
  {
    if (*(this + 71) == 1735095154)
    {
      if (*(this + 101) != 1)
      {
LABEL_18:
        *(this + 17) = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v2 = *(this + 3);
      v3 = *v2;
      v4 = v2[1];
      v5 = *v2 + ((*(this + 14) << 48) >> 43);
      if (v3)
      {
        v6 = v5 == v4;
      }

      else
      {
        v6 = 1;
      }

      if (v6 || *(*(v5 + 8) + 332) != 1)
      {
        goto LABEL_18;
      }
    }

    *buf = 0;
    v16 = 0;
    v15 = 0.0;
    OALSource::CalculateDistanceAndAzimuth(this, &v16 + 1, buf, &v16, &v15);
    v7 = v15;
    if (v15 != *(this + 79))
    {
      *(this + 79) = v15;
      OALContext::SetBusPlaybackRate(*(this + 1), *(this + 58), v7 * *(this + 78));
    }

    OALContext::SetBusAzimuth(*(this + 1), *(this + 58), *buf);
    OALContext::SetBusElevation(*(this + 1), *(this + 58), *&v16);
    v8 = *(this + 1);
    if (*(v8 + 408))
    {
      v9 = &v16 + 1;
    }

    else
    {
      v9 = (this + 324);
    }

    OALContext::SetBusDistance(v8, *(this + 58), *v9);
    if (OALSource::ConeAttenuation(this))
    {
      updated = OALSource::UpdateBusGain(this);
      if (updated)
      {
        v11 = updated;
LABEL_21:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v12 = *this;
          *buf = 136315906;
          v18 = "oalSource.cpp";
          v19 = 1024;
          v20 = 2430;
          v21 = 2048;
          v22 = v12;
          v23 = 2048;
          v24 = v11;
          _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::ChangeChannelSettings FAILED - OALSource = %ld : result = %ld", buf, 0x26u);
        }

        goto LABEL_24;
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  if (*(this + 18) != 1)
  {
    v11 = 0;
    goto LABEL_24;
  }

  v11 = OALSource::UpdateBusFormat(this);
  if (v11)
  {
    goto LABEL_21;
  }

LABEL_24:
  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t OALSource::UpdateBusRenderQuality(OALSource *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(this + 58);
  if (v1 == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = OALContext::SetSourceDesiredRenderQualityOnBus(*(this + 1), *(this + 111), v1);
    if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = *this;
      v7 = 136315906;
      v8 = "oalSource.cpp";
      v9 = 1024;
      v10 = 2551;
      v11 = 2048;
      v12 = v4;
      v13 = 2048;
      v14 = v3;
      _os_log_impl(&dword_23A012000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%25s:%-5d ERROR: OALSource::UpdateBusRenderQuality FAILED - OALSource = %ld : result = %ld", &v7, 0x26u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t OALSource::PrepBufferQueueForPlayback(OALSource *this)
{
  OALSource::ClearActiveQueue(this);
  v2 = *(this + 3);
  v3 = *(this + 4);
  *(this + 3) = v3;
  *(this + 4) = v2;
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v2 + 8) - *v2;
  v8 = v5 - *v3;
  v7 = v5 == *v3;
  *(v3 + 6) = v8 >> 5;
  *(v2 + 24) = v6 >> 5;
  *(this + 12) = *(v2 + 24) + *(v3 + 6);
  if (!v7)
  {
    v9 = v8 - 32;
    v10 = v4;
    if (v9 < 0x20)
    {
      goto LABEL_24;
    }

    v11 = (v9 >> 5) + 1;
    v10 = v4 + 32 * (v11 & 0xFFFFFFFFFFFFFFELL);
    v12 = (v4 + 48);
    v13 = v11 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v12 - 4) = 0;
      *v12 = 0;
      v12 += 8;
      v13 -= 2;
    }

    while (v13);
    if (v11 != (v11 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_24:
      do
      {
        *(v10 + 16) = 0;
        v10 += 32;
      }

      while (v10 != v5);
    }
  }

  *(this + 14) = 0;
  *(this + 60) = 0;
  v14 = *(this + 85);
  if (v14)
  {
    OALSource::AdvanceQueueToFrameIndex(this, v14);
    v15 = *(this + 3);
    v4 = *v15;
    v5 = v15[1];
  }

  if (v4 == v5)
  {
    return 0;
  }

  result = 0;
  if (v4)
  {
    v17 = *(this + 14);
    v18 = v4 + 32 * v17;
    if (v18 != v5)
    {
      for (i = v17 + 1; ; ++i)
      {
        if (*v18)
        {
          v20 = *(v18 + 8);
          v21 = *(v20 + 288);
          if (v21)
          {
            break;
          }
        }

        *(v18 + 20) = 2;
        *(this + 14) = i;
        v18 = v4 + 32 * i;
        if (v18 == v5)
        {
          return 0;
        }
      }

      v22 = *(v20 + 300) & 0xFFFFFFFC;
      if (v22)
      {
        v23 = &v21[v22];
        do
        {
          v24 = *v21;
          v21 += 4096;
        }

        while (v21 < v23);
      }

      return 1;
    }
  }

  return result;
}

uint64_t OALSource::AdvanceQueueToFrameIndex(OALSource *this, unsigned int a2)
{
  v4 = (this + 80);
  v5 = (*(*(this + 10) + 16))(this + 80);
  v4[65] = 0;
  v6 = *(v4 - 7);
  v7 = *v6;
  if (*v6 == v6[1])
  {
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    do
    {
      v8 += OALBuffer::GetFrameCount(*(v7 + 8));
      v7 += 32;
    }

    while (v7 != v6[1]);
    if (v8 < a2)
    {
LABEL_5:
      v9 = 40963;
      if (!v5)
      {
        return v9;
      }

      goto LABEL_27;
    }
  }

  v10 = *(*(this + 3) + 24);
  if (v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = *(this + 3);
      v13 = *v12 == v12[1] ? 0 : *v12;
      v14 = OALBuffer::GetFrameCount(*(v13 + 8)) + v11;
      v15 = *(this + 3);
      v17 = *v15;
      v16 = v15[1];
      if (v14 > a2)
      {
        break;
      }

      if (v17 == v16)
      {
        v20 = *v15;
      }

      else
      {
        *(v17 + 20) = 2;
        v18 = v16 - (v17 + 32);
        if (v16 == v17 + 32)
        {
          v19 = v17;
        }

        else
        {
          memmove(v17, (v17 + 32), v16 - (v17 + 32));
          v19 = *v15;
        }

        v20 = v17 + v18;
        v15[1] = v17 + v18;
        v17 = v19;
      }

      *(v15 + 6) = (v20 - v17) >> 5;
      v21 = *(this + 4);
      v22 = *(v13 + 8);
      v23 = *(v13 + 24);
      LODWORD(v26) = *v13;
      *(&v26 + 1) = v22;
      v27 = 0;
      v28 = v23;
      std::vector<BufferInfo>::push_back[abi:ne200100](v21, &v26);
      *(v21 + 24) = (*(v21 + 8) - *v21) >> 5;
      *(this + 12) = *(*(this + 4) + 24) + *(*(this + 3) + 24);
      v24 = *(this + 52);
      if (v24)
      {
        SourceNotifications::CallSourceNotifications(v24, 4118);
      }

      v11 = v14;
      if (!--v10)
      {
        goto LABEL_26;
      }
    }

    if (v17 != v16)
    {
      v9 = 0;
      *(v17 + 16) = *(*(v17 + 8) + 320) * (a2 - v11);
      if (!v5)
      {
        return v9;
      }

      goto LABEL_27;
    }
  }

LABEL_26:
  v9 = 0;
  if (v5)
  {
LABEL_27:
    (*(*v4 + 24))(v4);
  }

  return v9;
}