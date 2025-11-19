uint64_t ASD_HasProperty(AudioServerPlugInDriverInterface **a1, uint64_t a2, int a3, const AudioObjectPropertyAddress *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = getASDPlugin(a1);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForObjectID:a2];
    v11 = [v10 hasProperty:a4];
    if (a4)
    {
      mSelector = a4->mSelector;
      mScope = a4->mScope;
      mElement = a4->mElement;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v16 UTF8String];
    }

    v17 = v10;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315650;
      v21 = "!plugin";
      v22 = 2080;
      v23 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v24 = 1024;
      v25 = 983;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v20, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_HasProperty: ASD driver reference\n", &v20, 2u);
    }

    v17 = 0;
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ASD_GetPropertyData(AudioServerPlugInDriverInterface **a1, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, void *a9)
{
  v9 = 0;
  v37 = *MEMORY[0x277D85DE8];
  v10 = 2003329396;
  if (a4 && a8)
  {
    context = objc_autoreleasePoolPush();
    v18 = getASDPlugin(a1);
    v19 = v18;
    if (v18)
    {
      v20 = [v18 objectForObjectID:a2];
      v9 = v20;
      if (v20)
      {
        if ([v20 hasProperty:a4])
        {
          if (a9)
          {
            *a8 = a7;
            if ([v9 getProperty:a4 withQualifierSize:a5 qualifierData:a6 dataSize:a8 andData:a9 forClient:a3])
            {
              v10 = 0;
            }

            else
            {
              v10 = 2003329396;
            }
          }

          else if (!a7)
          {
            v10 = 0;
            *a8 = 0;
          }
        }

        else
        {
          v10 = 2003332927;
        }
      }

      else
      {
        v10 = 560947818;
      }

      mSelector = a4->mSelector;
      mScope = a4->mScope;
      mElement = a4->mElement;
      v24 = *a8;
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v26 UTF8String];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v32 = "!plugin";
        v33 = 2080;
        v34 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
        v35 = 1024;
        v36 = 1104;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
      }

      v10 = 560947818;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_GetPropertyData: ASD driver reference\n", buf, 2u);
      }

      v9 = 0;
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v19 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

id getASDPlugin(AudioServerPlugInDriverInterface **a1)
{
  if (*a1 && (reserved = (*a1)[1]._reserved) != 0)
  {
    WeakRetained = objc_loadWeakRetained(reserved + 3);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

uint64_t ASD_SetPropertyData(AudioServerPlugInDriverInterface **a1, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, uint64_t a7, const void *a8)
{
  v8 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v9 = 2003329396;
  if (a4 && a7)
  {
    v12 = 0;
    if (a8)
    {
      context = objc_autoreleasePoolPush();
      v18 = getASDPlugin(a1);
      v12 = v18;
      if (v18)
      {
        v19 = [v18 objectForObjectID:a2];
        v8 = v19;
        if (v19)
        {
          if ([v19 hasProperty:a4])
          {
            if ([v8 minDataSizeForProperty:a4 withQualifierSize:a5 andQualifierData:a6] <= a7)
            {
              if ([v8 setProperty:a4 withQualifierSize:a5 qualifierData:a6 dataSize:a7 andData:a8 forClient:a3])
              {
                v9 = 0;
              }

              else
              {
                v9 = 2003329396;
              }
            }

            else
            {
              v9 = 561211770;
            }
          }

          else
          {
            v9 = 2003332927;
          }
        }

        else
        {
          v9 = 560947818;
        }

        mSelector = a4->mSelector;
        mScope = a4->mScope;
        mElement = a4->mElement;
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        [v24 UTF8String];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v30 = "!plugin";
          v31 = 2080;
          v32 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
          v33 = 1024;
          v34 = 1162;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
        }

        v9 = 560947818;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_SetPropertyData: ASD driver reference\n", buf, 2u);
        }

        v8 = 0;
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v12 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t ASD_IsPropertySettable(AudioServerPlugInDriverInterface **a1, uint64_t a2, int a3, const AudioObjectPropertyAddress *a4, unsigned __int8 *a5)
{
  v5 = 0;
  v29 = *MEMORY[0x277D85DE8];
  v6 = 2003329396;
  if (a4)
  {
    v8 = 0;
    if (a5)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = getASDPlugin(a1);
      v8 = v13;
      if (v13)
      {
        v14 = [v13 objectForObjectID:a2];
        v5 = v14;
        if (v14)
        {
          if ([v14 hasProperty:a4])
          {
            v6 = 0;
            *a5 = [v5 isPropertySettable:a4];
          }

          else
          {
            v6 = 2003332927;
          }
        }

        else
        {
          v6 = 560947818;
        }

        mSelector = a4->mSelector;
        mScope = a4->mScope;
        mElement = a4->mElement;
        v18 = *a5;
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        [v20 UTF8String];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 136315650;
          v24 = "!plugin";
          v25 = 2080;
          v26 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
          v27 = 1024;
          v28 = 1016;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v23, 0x1Cu);
        }

        v6 = 560947818;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_IsPropertySettable: ASD driver reference\n", &v23, 2u);
        }

        v5 = 0;
      }

      objc_autoreleasePoolPop(v12);
    }
  }

  else
  {
    v8 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ASD_GetPropertyDataSize(AudioServerPlugInDriverInterface **a1, uint64_t a2, int a3, const AudioObjectPropertyAddress *a4, uint64_t a5, const void *a6, unsigned int *a7)
{
  v7 = 0;
  v33 = *MEMORY[0x277D85DE8];
  v8 = 2003329396;
  if (a4)
  {
    v10 = 0;
    if (a7)
    {
      context = objc_autoreleasePoolPush();
      v16 = getASDPlugin(a1);
      v10 = v16;
      if (v16)
      {
        v17 = [v16 objectForObjectID:a2];
        v7 = v17;
        if (v17)
        {
          if ([v17 hasProperty:a4])
          {
            v8 = 0;
            *a7 = [v7 dataSizeForProperty:a4 withQualifierSize:a5 andQualifierData:a6];
          }

          else
          {
            v8 = 2003332927;
          }
        }

        else
        {
          v8 = 560947818;
        }

        mSelector = a4->mSelector;
        mScope = a4->mScope;
        mElement = a4->mElement;
        v21 = *a7;
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        [v23 UTF8String];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v28 = "!plugin";
          v29 = 2080;
          v30 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
          v31 = 1024;
          v32 = 1061;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
        }

        v8 = 560947818;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_GetPropertyDataSize: ASD driver reference\n", buf, 2u);
        }

        v7 = 0;
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    v10 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t ASD_RemoveDeviceClient(AudioServerPlugInDriverInterface **a1, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = getASDPlugin(a1);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v9 removeClient:a3];
    }

    else
    {
      v10 = 560227702;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "!plugin";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v17 = 1024;
      v18 = 832;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v13, 0x1Cu);
    }

    v10 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_RemoveDeviceClient: ASD driver reference\n", &v13, 2u);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v6);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ASD_StartIO(AudioServerPlugInDriverInterface **a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = getASDPlugin(a1);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v9 startIOForClient:a3];
    }

    else
    {
      v10 = 560227702;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "!plugin";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v17 = 1024;
      v18 = 1221;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v13, 0x1Cu);
    }

    v10 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_StartIO: ASD driver reference\n", &v13, 2u);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v6);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_2415DB020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t ASDPluginInterfaceInfo::deviceRealtimeOperationsForObject(ASDPluginInterfaceInfo *this, unsigned int a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    if (v3 <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(this + 27) + 8 * a2);
    }
  }

  else
  {
    v5 = (this + 96);
    atomic_fetch_add(this + 24, 1u);
    result = atomic_load(this + 11);
    if (result)
    {
      caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(result, a2);
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        result = *(v6 + 8);
        atomic_fetch_add(this + 24, 0xFFFFFFFF);
        atomic_fetch_add(v6, 0xFFFFFFFF);
        return result;
      }

      result = 0;
      v5 = (this + 96);
    }

    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  return result;
}

uint64_t ASD_GetZeroTimeStamp(AudioServerPlugInDriverInterface **a1, unsigned int a2, uint64_t a3, double *a4, unint64_t *a5, unint64_t *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 + 184);
    if (v7)
    {
      v12 = ASDPluginInterfaceInfo::deviceRealtimeOperationsForObject(*(v6 + 184), a2);
      if (v12)
      {
        v13 = **(v12 + 16);
        if (v13)
        {
          v14 = (*(v13 + 16))(v13, a4, a5, a6, a3);
        }

        else
        {
          v14 = 2003329396;
        }
      }

      else
      {
        v14 = 560227702;
      }

      if (a4)
      {
        v15 = *a4;
        if (a5)
        {
          goto LABEL_14;
        }
      }

      else if (a5)
      {
LABEL_14:
        v16 = *a5;
        if (!a6)
        {
LABEL_18:
          v18 = *(v7 + 40);
          goto LABEL_19;
        }

LABEL_15:
        v17 = *a6;
        goto LABEL_18;
      }

      if (!a6)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315650;
    v22 = "!pluginInterfaceInfo";
    v23 = 2080;
    v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
    v25 = 1024;
    v26 = 1289;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v21, 0x1Cu);
  }

  v14 = 560947818;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_GetZeroTimeStamp: ASD driver reference\n", &v21, 2u);
  }

LABEL_19:
  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  v3 = a2 % v2;
  if ((a2 % v2) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = (v3 + v4 - 3);
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  v8 = a2 % v2;
  do
  {
    v9 = v5;
    v10 = atomic_load((result + 16 + 8 * v8));
    if (v10 == -1)
    {
      if (v6 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        if (v6 >= 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        return v7 | (v8 << 32);
      }

      if (*(v10 + 4) == a2)
      {
        return v7 | (v8 << 32);
      }
    }

    if (v9 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v5 = (v9 + v11 - 3);
    v8 = v9;
  }

  while (v9 != v3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    return v7 | (v8 << 32);
  }

  __break(1u);
  return result;
}

uint64_t ASD_WillDoIOOperation(AudioServerPlugInDriverInterface **a1, unsigned int a2, uint64_t a3, int a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1)
  {
    v7 = *(v6 + 184);
    if (v7)
    {
      v12 = ASDPluginInterfaceInfo::deviceRealtimeOperationsForObject(*(v6 + 184), a2);
      if (!v12)
      {
        v13 = 560227702;
        if (!a5)
        {
          if (!a6)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

LABEL_40:
        v15 = *a5 == 0;
        if (!a6)
        {
          goto LABEL_42;
        }

LABEL_41:
        v15 = *a6 == 0;
LABEL_42:
        v16 = *(v7 + 40);
        goto LABEL_43;
      }

      v13 = 0;
      *a5 = 0;
      *a6 = 1;
      if (a4 > 1886218615)
      {
        if (a4 > 1919246691)
        {
          if (a4 != 1919513701)
          {
            if (a4 != 1919246692)
            {
              goto LABEL_40;
            }

            v14 = v12[3];
            if (!v14)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }

          v14 = v12[10];
          if (v14)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (a4 != 1886218616)
          {
            if (a4 != 1886352756)
            {
              goto LABEL_40;
            }

            v14 = v12[6];
            if (!v14)
            {
              goto LABEL_39;
            }

            goto LABEL_37;
          }

          v14 = v12[8];
          if (v14)
          {
            goto LABEL_37;
          }
        }
      }

      else if (a4 > 1835628654)
      {
        if (a4 != 1835628655)
        {
          if (a4 != 1885957744)
          {
            goto LABEL_40;
          }

          v14 = v12[5];
          if (!v14)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }

        v14 = v12[7];
        if (v14)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (a4 != 1667853936)
        {
          if (a4 != 1668114808)
          {
            goto LABEL_40;
          }

          v14 = v12[9];
          if (!v14)
          {
            goto LABEL_39;
          }

LABEL_37:
          if (*v14)
          {
            v13 = (*(*v14 + 16))(*v14, a3, a5, a6);
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v14 = v12[4];
        if (v14)
        {
          goto LABEL_37;
        }
      }

LABEL_39:
      v13 = 0;
      goto LABEL_40;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "!pluginInterfaceInfo";
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
    v23 = 1024;
    v24 = 1326;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v19, 0x1Cu);
  }

  v13 = 560947818;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_WillDoIOOperation: ASD driver reference\n", &v19, 2u);
  }

LABEL_43:
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

void ASD_IOThreadStateChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*a1 && (v3 = *(*a1 + 40)) != 0 && (WeakRetained = objc_loadWeakRetained((v3 + 24))) != 0)
  {
    v7 = WeakRetained;
    v8 = objc_autoreleasePoolPush();
    v9 = [v7 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [v9 ioThreadStateChange:a3];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = "true";
        v13 = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
        v15 = 1024;
        v16 = 1764;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v11, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_IOThreadStateChange: Bad device object ID\n", &v11, 2u);
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = "!plugin";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v15 = 1024;
      v16 = 1752;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v11, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_SetupForIsolatedIO: ASD driver reference\n", &v11, 2u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t ASD_BeginIOOperation(AudioServerPlugInDriverInterface **a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, const AudioServerPlugInIOCycleInfo *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1 && (v7 = *(v6 + 184)) != 0)
  {
    v12 = ASDPluginInterfaceInfo::deviceRealtimeOperationsForObject(*(v6 + 184), a2);
    if (v12)
    {
      v13 = **(v12 + 88);
      if (v13)
      {
        v14 = (*(v13 + 16))(v13, a4, a5, a6, a3);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 560227702;
    }

    mHostTime = a6->mCurrentTime.mHostTime;
    v16 = a6->mInputTime.mHostTime;
    v17 = a6->mOutputTime.mHostTime;
    v18 = *(v7 + 40);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "!pluginInterfaceInfo";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 1427;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v21, 0x1Cu);
    }

    v14 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_BeginIOOperation: ASD driver reference\n", &v21, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t ASD_DoIOOperation(AudioServerPlugInDriverInterface **a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6, const AudioServerPlugInIOCycleInfo *a7, void *a8, void *a9)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  if (!*a1 || (v10 = *(v9 + 184)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "!pluginInterfaceInfo";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 1465;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v21, 0x1Cu);
    }

    v14 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_DoIOOperation: ASD driver reference\n", &v21, 2u);
    }

    goto LABEL_32;
  }

  v12 = *(v10 + 40);
  v13 = ASDPluginInterfaceInfo::streamRealtimeOperationsForObject(*(v9 + 184), a3);
  if (!v13)
  {
    v14 = 561214578;
    goto LABEL_32;
  }

  v14 = 1852797029;
  if (a5 > 1886218615)
  {
    if (a5 > 1919246691)
    {
      if (a5 == 1919246692)
      {
        v15 = 8;
      }

      else
      {
        if (a5 != 1919513701)
        {
          goto LABEL_32;
        }

        v15 = 64;
      }
    }

    else if (a5 == 1886218616)
    {
      v15 = 48;
    }

    else
    {
      if (a5 != 1886352756)
      {
        goto LABEL_32;
      }

      v15 = 32;
    }
  }

  else if (a5 > 1835628654)
  {
    if (a5 == 1835628655)
    {
      v15 = 40;
    }

    else
    {
      if (a5 != 1885957744)
      {
        goto LABEL_32;
      }

      v15 = 24;
    }
  }

  else
  {
    if (a5 != 1667853936)
    {
      if (a5 == 1668114808)
      {
        v15 = 56;
        goto LABEL_28;
      }

LABEL_32:
      v20 = *MEMORY[0x277D85DE8];
      return v14;
    }

    v15 = 16;
  }

LABEL_28:
  v16 = **(v13 + v15);
  if (!v16)
  {
    goto LABEL_32;
  }

  v17 = *(v16 + 16);
  v18 = *MEMORY[0x277D85DE8];

  return v17();
}

uint64_t ASDPluginInterfaceInfo::streamRealtimeOperationsForObject(ASDPluginInterfaceInfo *this, unsigned int a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    if (v3 <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(this + 45) + 8 * a2);
    }
  }

  else
  {
    v5 = (this + 240);
    atomic_fetch_add(this + 60, 1u);
    result = atomic_load(this + 29);
    if (result)
    {
      caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(result, a2);
      if (v6)
      {
        atomic_fetch_add(v6, 1u);
        result = *(v6 + 8);
        atomic_fetch_add(this + 60, 0xFFFFFFFF);
        atomic_fetch_add(v6, 0xFFFFFFFF);
        return result;
      }

      result = 0;
      v5 = (this + 240);
    }

    atomic_fetch_add(v5, 0xFFFFFFFF);
  }

  return result;
}

uint64_t ASD_EndIOOperation(AudioServerPlugInDriverInterface **a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, const AudioServerPlugInIOCycleInfo *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  if (*a1 && (v7 = *(v6 + 184)) != 0)
  {
    v12 = ASDPluginInterfaceInfo::deviceRealtimeOperationsForObject(*(v6 + 184), a2);
    if (v12)
    {
      v13 = **(v12 + 96);
      if (v13)
      {
        v14 = (*(v13 + 16))(v13, a4, a5, a6, a3);
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 560227702;
    }

    mHostTime = a6->mCurrentTime.mHostTime;
    v16 = a6->mInputTime.mHostTime;
    v17 = a6->mOutputTime.mHostTime;
    v18 = *(v7 + 40);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "!pluginInterfaceInfo";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 1537;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v21, 0x1Cu);
    }

    v14 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_EndIOOperation: ASD driver reference\n", &v21, 2u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t ASD_StopIO(AudioServerPlugInDriverInterface **a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = getASDPlugin(a1);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v9 stopIOForClient:a3];
    }

    else
    {
      v10 = 560227702;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "!plugin";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v17 = 1024;
      v18 = 1255;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v13, 0x1Cu);
    }

    v10 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_StopIO: ASD driver reference\n", &v13, 2u);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v6);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ASD_PerformDeviceConfigurationChange(AudioServerPlugInDriverInterface **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = objc_autoreleasePoolPush();
  v9 = getASDPlugin(a1);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      if (a3)
      {
        v12 = 1970171760;
      }

      else if (a4)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        [v11 performConfigurationChange:a4];
        v12 = 0;
      }

      else
      {
        v12 = 4294967246;
      }
    }

    else
    {
      v12 = 560227702;
    }

    v13 = v11;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "!plugin";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v20 = 1024;
      v21 = 877;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v16, 0x1Cu);
    }

    v12 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_PerformDeviceConfigurationChange: ASD driver reference\n", &v16, 2u);
    }

    v13 = 0;
  }

  objc_autoreleasePoolPop(v8);

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_2415DD2BC(_Unwind_Exception *a1)
{
  MEMORY[0x245CEB8C0](v4, 0x10A1C4051BADACELL);

  _Unwind_Resume(a1);
}

uint64_t ASDSRCStreamHelper::ASDSRCStreamHelper(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5)
{
  v10 = *a2;
  v11 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>(a1 + 40, *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__init_with_size[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>(a1 + 64, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 168) = a5;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 1;
  v12 = a3[1] - *a3;
  if (!v12)
  {
    v37 = "underlyingStreamFormats.size() > 0";
    v38 = 30;
    goto LABEL_43;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) != 0xCCCCCCCCCCCCCCCDLL * (v12 >> 3))
  {
    v37 = "underlyingStreamIOBlocks.size() == underlyingStreamFormats.size()";
    v38 = 31;
    goto LABEL_43;
  }

  if ((*(a2 + 12) & 0x20) != 0)
  {
    v37 = "srcFormat.IsInterleaved()";
    v38 = 32;
    goto LABEL_43;
  }

  if (*a2 == 0.0)
  {
    v37 = "srcFormat.mSampleRate != 0";
    v38 = 33;
LABEL_43:
    __assert_rtn("ASDSRCStreamHelper", "ASDSRCStreamHelper.mm", v38, v37);
  }

  CAStreamBasicDescription::CAStreamBasicDescription(&inSourceFormat);
  v42 = a2;
  CAStreamBasicDescription::CAStreamBasicDescription(&inDestinationFormat);
  v13 = *a3;
  v41 = a3[1];
  if (*a3 != v41)
  {
    while (1)
    {
      if ((*(v13 + 12) & 0x20) != 0)
      {
        v35 = 42;
        v36 = "underlyingFmt.IsInterleaved()";
        goto LABEL_38;
      }

      v14 = *(v13 + 28);
      if (!v14)
      {
        v35 = 43;
        v36 = "underlyingFmt.NumberChannels() != 0";
        goto LABEL_38;
      }

      if (v14 != *(v42 + 28))
      {
        break;
      }

      v15 = *v13;
      if (*v13 == 0.0)
      {
        v35 = 45;
        v36 = "underlyingFmt.mSampleRate != 0";
LABEL_38:
        __assert_rtn("ASDSRCStreamHelper", "ASDSRCStreamHelper.mm", v35, v36);
      }

      v16 = *v42;
      if (a5)
      {
        v17 = *v42;
      }

      else
      {
        v17 = *v13;
      }

      if (a5)
      {
        v18 = *v13;
      }

      else
      {
        v18 = *v42;
      }

      v19 = *(a1 + 160);
      v20 = v17 / v18;
      if (v18 > v17)
      {
        v20 = v18 / v17;
      }

      if (v19 <= v20)
      {
        v19 = v20;
      }

      *(a1 + 160) = v19;
      if (v15 != v16)
      {
        memset(&__p, 0, 24);
        operator new();
      }

      *(a1 + 152) = 1;
      v13 += 40;
      if (v13 == v41)
      {
        goto LABEL_23;
      }
    }

    v35 = 44;
    v36 = "underlyingFmt.NumberChannels() == srcFormat.NumberChannels()";
    goto LABEL_38;
  }

LABEL_23:
  if (a5)
  {
    v21 = (a1 + 136);
    v22 = *(*a3 + 32);
    v23 = *(*a3 + 16);
    *&inSourceFormat.mSampleRate = **a3;
    *&inSourceFormat.mBytesPerPacket = v23;
    *&inSourceFormat.mBitsPerChannel = v22;
    v24 = v42;
  }

  else
  {
    v25 = *(v42 + 16);
    *&inSourceFormat.mSampleRate = *v42;
    *&inSourceFormat.mBytesPerPacket = v25;
    *&inSourceFormat.mBitsPerChannel = *(v42 + 32);
    v21 = (a1 + 136);
    v24 = *a3;
  }

  v26 = *v24;
  v27 = *(v24 + 16);
  *&inDestinationFormat.mBitsPerChannel = *(v24 + 32);
  *&inDestinationFormat.mSampleRate = v26;
  *&inDestinationFormat.mBytesPerPacket = v27;
  if (*(a1 + 152))
  {
    v28 = AudioConverterNew(&inSourceFormat, &inDestinationFormat, v21 + 1);
    v29 = v28;
    if (v28)
    {
      LOBYTE(__p.mSampleRate) = HIBYTE(v28);
      BYTE1(__p.mSampleRate) = BYTE2(v28);
      BYTE2(__p.mSampleRate) = BYTE1(v28);
      *(&__p.mSampleRate + 3) = v28;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASDSRCStreamHelper::ASDSRCStreamHelper();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_2853449C8;
      exception[2] = v29;
    }
  }

  else
  {
    *&__p.mSampleRate = *&inSourceFormat.mSampleRate;
    *&__p.mBytesPerPacket = *&inSourceFormat.mBytesPerPacket;
    __p.mReserved = inSourceFormat.mReserved;
    __p.mFormatFlags = 9;
    __p.mBytesPerPacket = 4 * inSourceFormat.mChannelsPerFrame;
    __p.mBytesPerFrame = 4 * inSourceFormat.mChannelsPerFrame;
    __p.mBitsPerChannel = 32;
    v31 = AudioConverterNew(&inSourceFormat, &__p, v21);
    v32 = v31;
    if (v31)
    {
      LOBYTE(v43.mSampleRate) = HIBYTE(v31);
      BYTE1(v43.mSampleRate) = BYTE2(v31);
      BYTE2(v43.mSampleRate) = BYTE1(v31);
      *(&v43.mSampleRate + 3) = v31;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASDSRCStreamHelper::ASDSRCStreamHelper();
      }

      v39 = __cxa_allocate_exception(0x10uLL);
      *v39 = &unk_2853449C8;
      v39[2] = v32;
    }

    *&v43.mFormatID = *&__p.mFormatID;
    *&v43.mBytesPerPacket = *&__p.mBytesPerPacket;
    *&v43.mBitsPerChannel = *&__p.mBitsPerChannel;
    v43.mSampleRate = inDestinationFormat.mSampleRate;
    v33 = AudioConverterNew(&v43, &inDestinationFormat, v21 + 1);
    if (v33)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASDSRCStreamHelper::ASDSRCStreamHelper();
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = &unk_2853449C8;
      v40[2] = v33;
    }
  }

  return a1;
}

void sub_2415DE2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::vector<std::vector<RamstadSRC *>>::__destroy_vector::operator()[abi:ne200100]((v32 - 160));
  std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destroy_vector::operator()[abi:ne200100]((v32 - 160));
  v34 = *a11;
  if (*a11)
  {
    *(v31 + 48) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<RamstadSRC *>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<RamstadSRC *>>::__emplace_back_slow_path<std::vector<RamstadSRC *> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<RamstadSRC *>>::__construct_one_at_end[abi:ne200100]<std::vector<RamstadSRC *> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void ASDSRCStreamHelper::~ASDSRCStreamHelper(ASDSRCStreamHelper *this)
{
  v3 = *(this + 14);
  v4 = *(this + 15);
  for (i = (this + 112); v3 != v4; v3 += 3)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        RamstadSRC::~RamstadSRC(*v5);
        MEMORY[0x245CEB8C0]();
      }

      ++v5;
    }
  }

  std::vector<std::vector<RamstadSRC *>>::clear[abi:ne200100](i);
  v7 = *(this + 17);
  if (v7)
  {
    AudioConverterDispose(v7);
  }

  v8 = *(this + 18);
  if (v8)
  {
    AudioConverterDispose(v8);
  }

  v10 = i;
  std::vector<std::vector<RamstadSRC *>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 64);
  std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destroy_vector::operator()[abi:ne200100](&v10);
  v9 = *(this + 5);
  if (v9)
  {
    *(this + 6) = v9;
    operator delete(v9);
  }
}

void std::vector<std::vector<RamstadSRC *>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
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

  a1[1] = v3;
}

void *ASDSRCStreamHelper::allocateStreamingResources(ASDSRCStreamHelper *this, size_t a2, double a3, double a4)
{
  LODWORD(a4) = *(this + 7);
  LODWORD(a2) = vcvtpd_u64_f64(*(this + 20) * (a2 * *&a4 * 4.0));
  *(this + 27) = a2;
  result = malloc_type_calloc(1uLL, a2, 0x100004052888210uLL);
  *(this + 12) = result;
  if (!result)
  {
    ASDSRCStreamHelper::allocateStreamingResources();
  }

  v6 = *(this + 27);
  if (!v6)
  {
    ASDSRCStreamHelper::allocateStreamingResources();
  }

  if (*(this + 17))
  {
    *(this + 26) = v6;
    result = malloc_type_calloc(1uLL, v6, 0x100004052888210uLL);
    *(this + 11) = result;
    if (!result)
    {
      ASDSRCStreamHelper::allocateStreamingResources();
    }
  }

  return result;
}

void ASDSRCStreamHelper::deallocateStreamingResources(ASDSRCStreamHelper *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    free(v2);
    *(this + 11) = 0;
    *(this + 26) = 0;
  }

  v3 = *(this + 12);
  if (v3)
  {
    free(v3);
    *(this + 12) = 0;
    *(this + 27) = 0;
  }
}

uint64_t ASDSRCStreamHelper::readInput(ASDSRCStreamHelper *this, uint64_t a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5, unsigned int a6)
{
  v74 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a3)
    {
      v9 = *&a3->mOutputTime.mSMPTETime.mSubframes;
      v70 = *&a3->mOutputTime.mRateScalar;
      v71 = v9;
      v10 = *&a3->mMainHostTicksPerFrame;
      v72 = *&a3->mOutputTime.mSMPTETime.mHours;
      v73 = v10;
      v11 = *&a3->mInputTime.mSMPTETime.mSubframes;
      v66 = *&a3->mInputTime.mRateScalar;
      v67 = v11;
      v12 = *&a3->mOutputTime.mSampleTime;
      v68 = *&a3->mInputTime.mSMPTETime.mHours;
      v69 = v12;
      v13 = *&a3->mCurrentTime.mSMPTETime.mSubframes;
      v62 = *&a3->mCurrentTime.mRateScalar;
      v63 = v13;
      v14 = *&a3->mInputTime.mSampleTime;
      v64 = *&a3->mCurrentTime.mSMPTETime.mHours;
      v65 = v14;
      v15 = *(this + 22) == a3->mInputTime.mSampleTime;
      v16 = *&a3->mIOCycleCounter;
      v17 = *&a3->mCurrentTime.mSampleTime;
      *buf = *&a3->mIOCycleCounter;
      *&buf[16] = v17;
      if (!v15)
      {
        *(this + 200) = 1;
      }

      v18 = *(this + 8);
      if (*(this + 9) != v18)
      {
        v19 = 0;
        v20 = 0;
        v50 = 4 * a2;
        while (1)
        {
          v21 = *(this + 5);
          if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v21) >> 3) <= v19)
          {
            std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
          }

          v22 = (v18 + 24 * v19);
          if (!*v22)
          {
            v24 = 1937010544;
            goto LABEL_47;
          }

          v23 = v21 + 40 * v19;
          if (*(this + 152) == 1)
          {
            v24 = (*(*v22 + 16))(*v22, a2, a3, *(this + 12), 0, a6);
            v25 = *(v23 + 24) * a2;
            ioOutputDataSize = *(this + 6) * a2;
            if (v25 > *(this + 27))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *v56 = 136315650;
                *v57 = "inputDataSize > mBufferSize[1]";
                *&v57[8] = 2080;
                v58 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
                v59 = 1024;
                v60 = 227;
                _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", v56, 0x1Cu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v48 = *(this + 27);
                *v56 = 67109376;
                *v57 = v25;
                *&v57[4] = 1024;
                *&v57[6] = v48;
                _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Input data size %d exceeds driver capacity %d in SRC  readInput\n", v56, 0xEu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                ASDSRCStreamHelper::readInput(this + 27);
              }

              goto LABEL_48;
            }

            if (AudioConverterConvertBuffer(*(this + 18), v25, *(this + 12), &ioOutputDataSize, a4))
            {
              v24 = 560226676;
            }

            else
            {
              v24 = v24;
            }
          }

          else
          {
            v51 = v20;
            v26 = *(v23 + 28);
            LODWORD(v16) = a3->mNominalIOBufferFrameSize;
            v27 = v16;
            v28 = *v23;
            v29 = *v23 * v27;
            v30 = *this;
            *&v29 = v29 / *this;
            *&buf[8] = vcvtas_u32_f32(*&v29);
            v31 = *(this + 14);
            if (0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - v31) >> 3) <= v19)
            {
              std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
            }

            v32 = (v31 + 24 * v19);
            if (*(this + 200) == 1)
            {
              *&v65 = round(v28 * a3->mInputTime.mSampleTime / v30);
              *(this + 200) = 0;
              v33 = *v32;
              v34 = v32[1];
              while (v33 != v34)
              {
                RamstadSRC::reset(*v33++);
              }
            }

            else
            {
              *&v65 = *(this + 23) + *(this + 24);
            }

            v35 = RamstadSRC::inputSamplesForOutputSamples(**v32, a2);
            v36 = *(this + 11);
            v37 = (*(*v22 + 16))();
            *(this + 24) = v35;
            v38 = *(v23 + 24) * v35;
            ioOutputDataSize = 4 * v26 * v35;
            if (AudioConverterConvertBuffer(*(this + 17), v38, *(this + 11), &ioOutputDataSize, *(this + 12)))
            {
LABEL_46:
              v24 = 560226676;
              goto LABEL_47;
            }

            v52 = v37;
            if (v26)
            {
              for (i = 0; i != v26; ++i)
              {
                if (i >= v32[1] - *v32)
                {
                  std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
                }

                v40 = (*v32)[i];
                if (*(v40 + 8) != 1)
                {
                  __assert_rtn("readInput", "ASDSRCStreamHelper.mm", 278, "src->numChannels() == 1 && Number of SRC channels is not 1");
                }

                v41 = *(this + 11);
                v42 = *(this + 12);
                v43 = RamstadSRC::inputSamplesForOutputSamples(v40, a2);
                RamstadSRC::processMono(v40, (v42 + 4 * i), (v41 + 4 * i), v43, a2, v26, v26);
                if (v44 != v43)
                {
                  __assert_rtn("readInput", "ASDSRCStreamHelper.mm", 284, "inputFramesConsumed == numInputFrames");
                }
              }
            }

            v45 = v50 * v26;
            ioOutputDataSize = *(this + 6) * a2;
            if (v45 > *(this + 26))
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *v56 = 136315650;
                *v57 = "inputDataSize > mBufferSize[0]";
                *&v57[8] = 2080;
                v58 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
                v59 = 1024;
                v60 = 289;
                _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", v56, 0x1Cu);
              }

              v24 = v52;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v49 = *(this + 26);
                *v56 = 67109376;
                *v57 = v45;
                *&v57[4] = 1024;
                *&v57[6] = v49;
                _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Input data size %d exceeds driver capacity %d in SRC  readInput\n", v56, 0xEu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
              {
                ASDSRCStreamHelper::readInput(this + 26);
              }

              goto LABEL_48;
            }

            v24 = v52;
            if (AudioConverterConvertBuffer(*(this + 18), v45, *(this + 11), &ioOutputDataSize, a4))
            {
              goto LABEL_46;
            }

            v20 = v51;
          }

          v18 = *(this + 8);
          v19 = ++v20;
          if (0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - v18) >> 3) <= v20)
          {
            goto LABEL_47;
          }
        }
      }

      v24 = 1970171760;
LABEL_47:
      *(this + 23) = v65;
      *(this + 22) = a3->mInputTime.mSampleTime + a2;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "NULL == ioCycleInfo";
        *&buf[12] = 2080;
        *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
        *&buf[22] = 1024;
        *&buf[24] = 198;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioCycleInfo passed to SRC readInput\n", buf, 2u);
      }

      v24 = 1970171760;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        ASDSRCStreamHelper::readInput();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "NULL == ioMainBuffer";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
      *&buf[22] = 1024;
      *&buf[24] = 197;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioMainBuffer passed to SRC readInput\n", buf, 2u);
    }

    v24 = 1970171760;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ASDSRCStreamHelper::readInput();
    }
  }

LABEL_48:
  v46 = *MEMORY[0x277D85DE8];
  return v24;
}

void sub_2415DEE00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v3 = __cxa_begin_catch(a1);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASDSRCStreamHelper::readInput(v3);
      }
    }

    else
    {
      v4 = __cxa_begin_catch(a1);
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (a2 == 2)
      {
        if (v5)
        {
          ASDSRCStreamHelper::readInput(v4);
        }
      }

      else if (v5)
      {
        ASDSRCStreamHelper::readInput();
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2415DEB6CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDSRCStreamHelper::writeMix(ASDSRCStreamHelper *this, unsigned int a2, const AudioServerPlugInIOCycleInfo *a3, void *a4, void *a5)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "NULL == ioMainBuffer";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
      *&buf[22] = 1024;
      *&buf[24] = 331;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioMainBuffer passed to SRC writeMix\n", buf, 2u);
    }

    v17 = 1970171760;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ASDSRCStreamHelper::writeMix();
    }

    goto LABEL_69;
  }

  v5 = a3;
  if (!a3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "NULL == ioCycleInfo";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
      *&buf[22] = 1024;
      *&buf[24] = 332;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfNULLWithFault %s failed in %s at line %d goto Exit. ", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "NULL ioCycleInfo passed to SRC writeMix\n", buf, 2u);
    }

    v17 = 1970171760;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      ASDSRCStreamHelper::writeMix();
    }

    goto LABEL_69;
  }

  v8 = *&a3->mOutputTime.mSMPTETime.mSubframes;
  v75 = *&a3->mOutputTime.mRateScalar;
  v76 = v8;
  v9 = *&a3->mMainHostTicksPerFrame;
  v77 = *&a3->mOutputTime.mSMPTETime.mHours;
  v78 = v9;
  v10 = *&a3->mInputTime.mSMPTETime.mSubframes;
  v71 = *&a3->mInputTime.mRateScalar;
  v72 = v10;
  v11 = *&a3->mOutputTime.mSampleTime;
  v73 = *&a3->mInputTime.mSMPTETime.mHours;
  v74 = v11;
  v12 = *&a3->mCurrentTime.mSMPTETime.mSubframes;
  v67 = *&a3->mCurrentTime.mRateScalar;
  v68 = v12;
  v13 = *&a3->mInputTime.mSampleTime;
  v69 = *&a3->mCurrentTime.mSMPTETime.mHours;
  v70 = v13;
  v14 = *(this + 22) == a3->mOutputTime.mSampleTime;
  v15 = *&a3->mIOCycleCounter;
  v16 = *&a3->mCurrentTime.mSampleTime;
  *buf = *&a3->mIOCycleCounter;
  *&buf[16] = v16;
  if (!v14)
  {
    *(this + 200) = 1;
  }

  v17 = 1970171760;
  v18 = *(this + 8);
  if (*(this + 9) == v18)
  {
    goto LABEL_68;
  }

  v19 = 0;
  v20 = 0;
  v55 = 4 * a2;
  while (1)
  {
    v21 = *(this + 5);
    if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 6) - v21) >> 3) <= v19)
    {
      std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
    }

    v22 = v18 + 24 * v19;
    v24 = *(v22 + 8);
    v23 = v22 + 8;
    if (!v24)
    {
      v17 = 1937010544;
      goto LABEL_68;
    }

    v25 = v21 + 40 * v19;
    if (*(this + 152) == 1)
    {
      v26 = *(this + 6);
      ioOutputDataSize = *(v25 + 24) * a2;
      if (ioOutputDataSize > *(this + 27))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *v61 = 136315650;
          *v62 = "outputDataSize > mBufferSize[1]";
          *&v62[8] = 2080;
          v63 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
          v64 = 1024;
          v65 = 359;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", v61, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v49 = *(this + 27);
          *v61 = 67109376;
          *v62 = ioOutputDataSize;
          *&v62[4] = 1024;
          *&v62[6] = v49;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Output data size %d exceeds driver capacity %d in SRC writeMix\n", v61, 0xEu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          ASDSRCStreamHelper::writeMix(&ioOutputDataSize);
        }

        goto LABEL_66;
      }

      v27 = v23;
      if (AudioConverterConvertBuffer(*(this + 18), v26 * a2, a4, &ioOutputDataSize, *(this + 12)))
      {
        goto LABEL_46;
      }

      v28 = *(this + 12);
      v17 = (*(*v27 + 16))();
      goto LABEL_32;
    }

    v57 = v20;
    v29 = *(this + 14);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - v29) >> 3) <= v19)
    {
      std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
    }

    v56 = v23;
    v30 = *(this + 7);
    v31 = (v29 + 24 * v19);
    LODWORD(v15) = v5->mNominalIOBufferFrameSize;
    v32 = v15;
    v33 = *v25;
    v34 = *v25 * v32;
    v35 = *this;
    *&v34 = v34 / *this;
    *&buf[8] = vcvtas_u32_f32(*&v34);
    if (*(this + 200) == 1)
    {
      *&v74 = round(v33 * v5->mOutputTime.mSampleTime / v35);
      *(this + 200) = 0;
      v36 = *v31;
      v37 = v31[1];
      while (v36 != v37)
      {
        RamstadSRC::reset(*v36++);
      }
    }

    else
    {
      *&v74 = *(this + 23) + *(this + 24);
    }

    v38 = *(this + 6) * a2;
    ioOutputDataSize = v55 * v30;
    if (AudioConverterConvertBuffer(*(this + 17), v38, a4, &ioOutputDataSize, *(this + 11)))
    {
LABEL_46:
      v48 = 3;
      v17 = 560226676;
      goto LABEL_67;
    }

    v58 = v17;
    if (v30)
    {
      for (i = 0; i != v30; ++i)
      {
        if (i >= v31[1] - *v31)
        {
          std::vector<CAStreamBasicDescription>::__throw_out_of_range[abi:ne200100]();
        }

        v40 = (*v31)[i];
        if (*(v40 + 8) != 1)
        {
          __assert_rtn("writeMix", "ASDSRCStreamHelper.mm", 409, "src->numChannels() == 1 && Number of SRC channels is not 1");
        }

        v41 = *(this + 11);
        v42 = *(this + 12);
        *v61 = 0;
        v43 = RamstadSRC::outputSamplesForInputSamples(v40, a2, v61);
        RamstadSRC::processMono(v40, (v41 + 4 * i), (v42 + 4 * i), a2, v43, v30, v30);
        *v61 = v44;
        if (v44 != a2)
        {
          __assert_rtn("writeMix", "ASDSRCStreamHelper.mm", 416, "inputFramesConsumed == ioBufferFrameSize");
        }
      }
    }

    else
    {
      v43 = 0;
    }

    *(this + 24) = v43;
    v45 = 4 * v30 * v43;
    v46 = *(v25 + 24) * v43;
    ioOutputDataSize = v46;
    if (v45 > *(this + 27))
    {
      break;
    }

    v5 = a3;
    v17 = v58;
    if (v46 > *(this + 26))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 136315650;
        *v62 = "outputDataSize > mBufferSize[0]";
        *&v62[8] = 2080;
        v63 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
        v64 = 1024;
        v65 = 424;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", v61, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v51 = *(this + 26);
        *v61 = 67109376;
        *v62 = ioOutputDataSize;
        *&v62[4] = 1024;
        *&v62[6] = v51;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Input data size %d exceeds driver capacity %d in SRC writeMix\n", v61, 0xEu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        ASDSRCStreamHelper::writeMix(&ioOutputDataSize);
      }

      goto LABEL_66;
    }

    if (AudioConverterConvertBuffer(*(this + 18), v45, *(this + 12), &ioOutputDataSize, *(this + 11)))
    {
      goto LABEL_46;
    }

    v47 = *(this + 11);
    v17 = (*(*v56 + 16))();
    v20 = v57;
LABEL_32:
    v18 = *(this + 8);
    v19 = ++v20;
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - v18) >> 3) <= v20)
    {
      goto LABEL_68;
    }
  }

  v5 = a3;
  v17 = v58;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v61 = 136315650;
    *v62 = "inputDataSize > mBufferSize[1]";
    *&v62[8] = 2080;
    v63 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/ASDSRCStreamHelper.mm";
    v64 = 1024;
    v65 = 423;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithFault %s failed in %s at line %d goto Exit. ", v61, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v50 = *(this + 27);
    *v61 = 67109376;
    *v62 = v45;
    *&v62[4] = 1024;
    *&v62[6] = v50;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Input data size %d exceeds driver capacity %d in SRC writeMix\n", v61, 0xEu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    ASDSRCStreamHelper::writeMix(this + 27);
  }

LABEL_66:
  v48 = 2;
LABEL_67:
  if (v48 == 3)
  {
LABEL_68:
    *(this + 23) = v74;
    *(this + 22) = v5->mOutputTime.mSampleTime + a2;
  }

LABEL_69:
  v52 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_2415DF820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v3 = __cxa_begin_catch(a1);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ASDSRCStreamHelper::readInput(v3);
      }
    }

    else
    {
      v4 = __cxa_begin_catch(a1);
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (a2 == 2)
      {
        if (v5)
        {
          ASDSRCStreamHelper::readInput(v4);
        }
      }

      else if (v5)
      {
        ASDSRCStreamHelper::readInput();
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2415DF770);
  }

  _Unwind_Resume(a1);
}

uint64_t ASDSRCStreamHelper::readIsolatedInput(ASDSRCStreamHelper *this, uint64_t a2, uint64_t a3, const AudioServerPlugInIOCycleInfo *a4)
{
  v4 = *(this + 8);
  v5 = *(this + 9);
  if (v4 == v5)
  {
    return 1970171760;
  }

  while (1)
  {
    v9 = *(v4 + 16);
    if (!v9)
    {
      break;
    }

    result = (*(v9 + 16))(v9, a2, a3, a4);
    v4 += 24;
    if (v4 == v5)
    {
      return result;
    }
  }

  return 1937010544;
}

void CAException::~CAException(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x245CEB8C0);
}

uint64_t std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription*,CAStreamBasicDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CAStreamBasicDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2415DFA84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CAStreamBasicDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(a1, a2);
  }

  std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CAStreamBasicDescription>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
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
}

uint64_t std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__init_with_size[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2415DFC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>(a1, a2);
  }

  std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = MEMORY[0x245CEBEA0](*v6);
      v4[1] = MEMORY[0x245CEBEA0](v6[1]);
      v4[2] = MEMORY[0x245CEBEA0](v6[2]);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,std::reverse_iterator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>,std::reverse_iterator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,std::reverse_iterator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>,std::reverse_iterator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 24);
      v6 -= 24;
    }

    while (v6 != a5);
  }
}

void std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {

    v4 = *(i - 24);
  }

  a1[1] = v2;
}

void std::vector<std::vector<RamstadSRC *>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<RamstadSRC *>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<RamstadSRC *>>::__construct_one_at_end[abi:ne200100]<std::vector<RamstadSRC *> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<RamstadSRC *>::__init_with_size[abi:ne200100]<RamstadSRC **,RamstadSRC **>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<RamstadSRC *>>::__emplace_back_slow_path<std::vector<RamstadSRC *> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
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

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<RamstadSRC *>::__init_with_size[abi:ne200100]<RamstadSRC **,RamstadSRC **>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<RamstadSRC *>>::~__split_buffer(&v14);
  return v8;
}

void sub_2415E0140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<RamstadSRC *>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<RamstadSRC *>::__init_with_size[abi:ne200100]<RamstadSRC **,RamstadSRC **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<RamstadSRC *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2415E01B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<RamstadSRC *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>(a1, a2);
  }

  std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<RamstadSRC *>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<RamstadSRC *>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<RamstadSRC *>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t *OUTLINED_FUNCTION_2@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

unsigned int *OUTLINED_FUNCTION_7@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

char *CAStringForOSType(unsigned int a1, char *__str, int64_t __size)
{
  if (__size)
  {
    v5 = 0;
    v6 = 0;
    v7 = &__str[__size];
    v13 = bswap32(a1);
    v8 = MEMORY[0x277D85DE0];
    do
    {
      v9 = *(&v13 + v6);
      if (v9 < 0)
      {
        if (!__maskrune(*(&v13 + v6), 0x40000uLL))
        {
          goto LABEL_11;
        }
      }

      else if ((*(v8 + 4 * v9 + 60) & 0x40000) == 0)
      {
        goto LABEL_11;
      }

      if (*(&v13 + v6) == 92)
      {
LABEL_11:
        v10 = &__str[snprintf(__str, __size, "0x")];
        goto LABEL_12;
      }

      v5 = v6++ > 2;
    }

    while (v6 != 4);
    if (__size < 1)
    {
      v10 = __str;
    }

    else
    {
      *__str = 39;
      v10 = __str + 1;
    }

LABEL_12:
    if (v10 < v7)
    {
      v11 = 0;
      do
      {
        if (v5)
        {
          *v10++ = *(&v13 + v11);
        }

        else
        {
          v10 += snprintf(v10, v7 - v10, "%02X", *(&v13 + v11));
        }

        if (v11 > 2)
        {
          break;
        }

        ++v11;
      }

      while (v10 < v7);
      if (v5 && v10 < v7)
      {
        *v10++ = 39;
      }
    }

    v10[-(v10 >= v7)] = 0;
  }

  return __str;
}

void CAStreamBasicDescription::CAStreamBasicDescription(CAStreamBasicDescription *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

void CAStreamBasicDescription::CAStreamBasicDescription(CAStreamBasicDescription *this, const AudioStreamBasicDescription *a2)
{
  v2 = *&a2->mSampleRate;
  v3 = *&a2->mBytesPerPacket;
  *(this + 4) = *&a2->mBitsPerChannel;
  *this = v2;
  *(this + 1) = v3;
}

{
  v2 = *&a2->mSampleRate;
  v3 = *&a2->mBytesPerPacket;
  *(this + 4) = *&a2->mBitsPerChannel;
  *this = v2;
  *(this + 1) = v3;
}

void CAStreamBasicDescription::CAStreamBasicDescription(CAStreamBasicDescription *this, double a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  *this = a2;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a6;
  *(this + 7) = a7;
  *(this + 2) = a3;
  *(this + 3) = a9;
  *(this + 8) = a8;
  *(this + 9) = 0;
}

{
  *this = a2;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a6;
  *(this + 7) = a7;
  *(this + 2) = a3;
  *(this + 3) = a9;
  *(this + 8) = a8;
  *(this + 9) = 0;
}

char *CAStreamBasicDescription::AsString(CAStreamBasicDescription *this, char *a2, int a3, char a4)
{
  v53 = *MEMORY[0x277D85DE8];
  CAStringForOSType(*(this + 2), v52, 24);
  if (a4)
  {
    *__str = 0;
    v50[0] = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat(this, __str, v50) && *__str && *__str <= 5u)
    {
      if (v50[0])
      {
        v8 = ", inter";
      }

      else
      {
        v8 = ", non-inter";
      }

      if (*(this + 7) <= 1u)
      {
        v8 = "";
      }

      v9 = a3;
      v43 = *this;
      v40 = *(this + 7);
      v44 = off_278CE39F0[*__str - 1];
      v45 = v8;
      v10 = "%2d ch, %6.0f Hz, %s%s";
      goto LABEL_29;
    }

    v23 = *(this + 2);
    if (v23 == 1718773105)
    {
      v9 = a3;
      v43 = *this;
      v40 = *(this + 7);
      v10 = "%2d ch, %6.0f Hz, 'freq'";
LABEL_29:
      v24 = a2;
LABEL_90:
      snprintf(v24, v9, v10, v40, v43, v44, v45, v46, v47, v48, v49);
      goto LABEL_91;
    }

    v11 = *(this + 7);
    if (!v11 && !v23 && *this == 0.0)
    {
      v9 = a3;
      v43 = *this;
      v40 = 0;
      v10 = "%2d ch, %6.0f Hz";
      goto LABEL_29;
    }
  }

  else
  {
    v11 = *(this + 7);
  }

  v12 = snprintf(a2, a3, "%2d ch, %6.0f Hz, %s (0x%08X) ", v11, *this, v52, *(this + 3));
  v13 = (a3 - v12);
  if (v13 >= 1)
  {
    v14 = &a2[v12];
    v15 = *(this + 2);
    if (v15 != 1634492771 && v15 != 1718378851)
    {
      if (v15 != 1819304813)
      {
        v44 = *(this + 5);
        v45 = *(this + 6);
        v40 = *(this + 8);
        v43 = *(this + 4);
        v10 = "%d bits/channel, %d bytes/packet, %d frames/packet, %d bytes/frame";
LABEL_89:
        v24 = v14;
        v9 = v13;
        goto LABEL_90;
      }

      v16 = *(this + 3);
      v17 = *(this + 6);
      v18 = "";
      if (!v17)
      {
        goto LABEL_19;
      }

      if ((v16 & 0x20) != 0)
      {
        v19 = 1;
      }

      else
      {
        v19 = *(this + 7);
        if (!v19)
        {
LABEL_19:
          v20 = " signed";
          if ((v16 & 4) == 0)
          {
            v20 = " unsigned";
          }

          if (v16)
          {
            v21 = "float";
          }

          else
          {
            v21 = "integer";
          }

          if (v16)
          {
            v22 = "";
          }

          else
          {
            v22 = v20;
          }

LABEL_66:
          __str[0] = 0;
          if ((v16 & 0x20) != 0)
          {
            v34 = ", deinterleaved";
          }

          else
          {
            v34 = "";
          }

          v30 = "";
          v35 = "";
          goto LABEL_70;
        }
      }

      v29 = v17 / v19;
      if ((v17 / v19) < 2)
      {
        v32 = " signed";
        if ((v16 & 4) == 0)
        {
          v32 = " unsigned";
        }

        if (v16)
        {
          v21 = "float";
        }

        else
        {
          v21 = "integer";
        }

        if (v16)
        {
          v22 = "";
        }

        else
        {
          v22 = v32;
        }

        if (v29 != 1)
        {
          goto LABEL_66;
        }

        v30 = "";
      }

      else
      {
        if ((v16 & 2) != 0)
        {
          v30 = " big-endian";
        }

        else
        {
          v30 = " little-endian";
        }

        v31 = " unsigned";
        if ((v16 & 4) != 0)
        {
          v31 = " signed";
        }

        if (v16)
        {
          v21 = "float";
        }

        else
        {
          v21 = "integer";
        }

        if (v16)
        {
          v22 = "";
        }

        else
        {
          v22 = v31;
        }
      }

      CAStreamBasicDescription::PackednessIsSignificant(this);
      if (v33)
      {
        if ((*(this + 12) & 8) != 0)
        {
          snprintf(__str, 0x20uLL, "packed in %d bytes");
        }

        else
        {
          snprintf(__str, 0x20uLL, "unpacked in %d bytes");
        }
      }

      else
      {
        __str[0] = 0;
      }

      CAStreamBasicDescription::PackednessIsSignificant(this);
      if ((v36 & 1) != 0 || (*(this + 32) & 7) != 0)
      {
        v16 = *(this + 3);
        if ((v16 & 0x10) != 0)
        {
          v35 = " high-aligned";
        }

        else
        {
          v35 = " low-aligned";
        }
      }

      else
      {
        v16 = *(this + 3);
        v35 = "";
      }

      if ((v16 & 0x20) != 0)
      {
        v34 = ", deinterleaved";
      }

      else
      {
        v34 = "";
      }

      if (__str[0])
      {
        v18 = ", ";
LABEL_85:
        v37 = *(this + 8);
        if (((v16 >> 7) & 0x3F) != 0)
        {
          snprintf(v50, 0x14uLL, "%d.%d");
        }

        else
        {
          v42 = *(this + 8);
          snprintf(v50, 0x14uLL, "%d");
        }

        v48 = v35;
        v49 = v34;
        v46 = v18;
        v47 = __str;
        v44 = v22;
        v45 = v21;
        v10 = "%s-bit%s%s %s%s%s%s%s";
        v40 = v50;
        v43 = v30;
        goto LABEL_89;
      }

LABEL_70:
      if (*v35)
      {
        v18 = ", ";
      }

      goto LABEL_85;
    }

    v25 = *(this + 3) - 1;
    if (v25 > 3)
    {
      v26 = snprintf(&a2[v12], v13, "from UNKNOWN source bit depth, ");
    }

    else
    {
      v41 = dword_241642BA0[v25];
      v26 = snprintf(&a2[v12], v13, "from %d-bit source, ");
    }

    v27 = (v13 - v26);
    if (v27 >= 1)
    {
      v28 = *(this + 5);
      snprintf(&v14[v26], v27, "%d frames/packet");
    }
  }

LABEL_91:
  v38 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t CAStreamBasicDescription::IdentifyCommonPCMFormat(_DWORD *a1, _DWORD *a2, BOOL *a3)
{
  *a2 = 0;
  if (a1[2] != 1819304813)
  {
    return 0;
  }

  if (a1[5] != 1)
  {
    return 0;
  }

  v3 = a1[6];
  if (v3 != a1[4])
  {
    return 0;
  }

  v4 = a1[8];
  if (v3 < v4 >> 3)
  {
    return 0;
  }

  v5 = a1[7];
  if (!v5)
  {
    return 0;
  }

  v6 = a1[3];
  if (a3)
  {
    *a3 = (a1[3] & 0x20) == 0;
  }

  if ((v6 & 0x20) == 0)
  {
    if (v3 % v5)
    {
      return 0;
    }

    v3 /= v5;
  }

  result = 1;
  if ((v6 & 2) != 0 || 8 * v3 != v4)
  {
    return result;
  }

  if (v6)
  {
    if ((v6 & 0x1F84) == 0)
    {
      if (v3 != 4)
      {
        if (v3 != 8)
        {
          return result;
        }

        LODWORD(result) = 4;
      }

      goto LABEL_29;
    }

    return 0;
  }

  if ((v6 & 4) == 0)
  {
    return result;
  }

  v8 = (v6 >> 7) & 0x3F;
  if (v8 == 24 && v3 == 4)
  {
    LODWORD(result) = 3;
LABEL_29:
    *a2 = result;
    return 1;
  }

  if (!v8 && v3 == 4)
  {
    LODWORD(result) = 5;
    goto LABEL_29;
  }

  if (!v8 && v3 == 2)
  {
    LODWORD(result) = 2;
    goto LABEL_29;
  }

  return result;
}

void CAStreamBasicDescription::PackednessIsSignificant(CAStreamBasicDescription *this)
{
  if (*(this + 2) == 1819304813)
  {
    v1 = *(this + 6);
    if (v1)
    {
      if ((*(this + 12) & 0x20) != 0)
      {
        v2 = 1;
      }

      else
      {
        v2 = *(this + 7);
        if (!v2)
        {
          v1 = 0;
          goto LABEL_8;
        }
      }

      v1 = 8 * (v1 / v2);
    }

LABEL_8:
    v3 = v1 != *(this + 8);
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    CAStreamBasicDescription::PackednessIsSignificant();
  }

  __break(1u);
}

_DWORD *CAStreamBasicDescription::NormalizeLinearPCMFormat(_DWORD *this, AudioStreamBasicDescription *a2)
{
  if (this[2] == 1819304813 && (this[3] & 0x40) == 0)
  {
    v2 = 2 * this[7];
    this[3] = 12;
    this[4] = v2;
    this[5] = 1;
    this[6] = v2;
    this[8] = 16;
  }

  return this;
}

uint64_t CAStreamBasicDescription::NormalizeLinearPCMFormat(uint64_t this, _DWORD *a2, AudioStreamBasicDescription *a3)
{
  if (a2[2] == 1819304813 && (a2[3] & 0x40) == 0)
  {
    if (this)
    {
      v3 = 9;
    }

    else
    {
      v3 = 11;
    }

    v4 = 2 * a2[7];
    a2[3] = v3;
    a2[4] = v4;
    a2[5] = 1;
    a2[6] = v4;
    a2[8] = 16;
  }

  return this;
}

_DWORD *CAStreamBasicDescription::VirtualizeLinearPCMFormat(_DWORD *this, AudioStreamBasicDescription *a2)
{
  if (this[2] == 1819304813 && (this[3] & 0x40) == 0)
  {
    v2 = 4 * this[7];
    this[3] = 9;
    this[4] = v2;
    this[5] = 1;
    this[6] = v2;
    this[8] = 32;
  }

  return this;
}

uint64_t CAStreamBasicDescription::VirtualizeLinearPCMFormat(uint64_t this, _DWORD *a2, AudioStreamBasicDescription *a3)
{
  if (a2[2] == 1819304813 && (a2[3] & 0x40) == 0)
  {
    if (this)
    {
      v3 = 9;
    }

    else
    {
      v3 = 11;
    }

    v4 = 4 * a2[7];
    a2[3] = v3;
    a2[4] = v4;
    a2[5] = 1;
    a2[6] = v4;
    a2[8] = 32;
  }

  return this;
}

double CAStreamBasicDescription::ResetFormat(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

uint64_t CAStreamBasicDescription::FillOutFormat(uint64_t this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  if (*this == 0.0)
  {
    *this = a2->mSampleRate;
  }

  if (!*(this + 8))
  {
    *(this + 8) = a2->mFormatID;
  }

  if (!*(this + 12))
  {
    *(this + 12) = a2->mFormatFlags;
  }

  if (!*(this + 16))
  {
    *(this + 16) = a2->mBytesPerPacket;
  }

  if (!*(this + 20))
  {
    *(this + 20) = a2->mFramesPerPacket;
  }

  if (!*(this + 24))
  {
    *(this + 24) = a2->mBytesPerFrame;
  }

  if (!*(this + 28))
  {
    *(this + 28) = a2->mChannelsPerFrame;
  }

  if (!*(this + 32))
  {
    *(this + 32) = a2->mBitsPerChannel;
  }

  return this;
}

uint64_t CAStreamBasicDescription::GetSimpleName(uint64_t this, AudioStreamBasicDescription *__str, size_t __size, int a4, int a5)
{
  v6 = __size;
  v7 = __str;
  v8 = this;
  if (a5)
  {
    this = snprintf(__str, __size, "%.0f ", *this);
    v7 = (v7 + this);
    v6 -= this;
  }

  v9 = *(v8 + 2);
  if (v9 == 1633889587)
  {
    strcpy(v7, "AC-3");
    return this;
  }

  if (v9 == 1667326771)
  {
    strcpy(v7, "AC-3 fo");
    return this;
  }

  if (v9 != 1819304813)
  {
    LOBYTE(v7->mSampleRate) = HIBYTE(v9);
    BYTE1(v7->mSampleRate) = *(v8 + 10);
    BYTE2(v7->mSampleRate) = *(v8 + 9);
    *(&v7->mSampleRate + 3) = *(v8 + 8);
    return this;
  }

  v10 = *(v8 + 3);
  if (v10)
  {
    v11 = "Floating Point";
    v12 = "Float";
  }

  else if ((v10 & 4) != 0)
  {
    v11 = "Signed Integer";
    v12 = "SInt";
  }

  else
  {
    v11 = "Unsigned Integer";
    v12 = "UInt";
  }

  if (a4)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if ((v10 & 0x10) != 0)
  {
    v14 = "High";
  }

  else
  {
    v14 = "Low";
  }

  if ((v10 & 0x40) != 0)
  {
    v15 = "Unmixable";
  }

  else
  {
    v15 = "Mixable";
  }

  v16 = *(v8 + 7);
  if (a4)
  {
    if ((v10 & 2) != 0)
    {
      if ((v10 & 8) != 0)
      {
        return snprintf(v7, v6, "%s %d Ch %s %s%d");
      }

      else
      {
        v27 = 8 * (*(v8 + 6) / v16);
        return snprintf(v7, v6, "%s %d Ch %s %s %s%d/%s%d", v15, v16, "Big Endian");
      }
    }

    else
    {
      if ((v10 & 8) == 0)
      {
        v17 = 8 * (*(v8 + 6) / v16);
        v24 = *(v8 + 8);
        v25 = v13;
        v21 = v14;
        v23 = v13;
        v19 = v15;
        v20 = *(v8 + 7);
        v18 = "%s %d Ch %s %s%d/%s%d";
        return snprintf(v7, v6, v18, v19, v20, v21, v23, v24, v25, v17);
      }

      return snprintf(v7, v6, "%s %d Ch %s%d");
    }
  }

  else if ((v10 & 2) != 0)
  {
    if ((v10 & 8) == 0)
    {
      v17 = 8 * (*(v8 + 6) / v16);
      v24 = v13;
      v25 = v14;
      v21 = *(v8 + 8);
      v23 = "Big Endian";
      v19 = v15;
      v20 = *(v8 + 7);
      v18 = "%s %d Channel %d Bit %s %s Aligned %s in %d Bits";
      return snprintf(v7, v6, v18, v19, v20, v21, v23, v24, v25, v17);
    }

    return snprintf(v7, v6, "%s %d Channel %d Bit %s %s");
  }

  else
  {
    v22 = *(v8 + 8);
    if ((v10 & 8) != 0)
    {
      return snprintf(v7, v6, "%s %d Channel %d Bit %s");
    }

    else
    {
      v26 = 8 * (*(v8 + 6) / v16);
      return snprintf(v7, v6, "%s %d Channel %d Bit %s Aligned %s in %d Bits", v15);
    }
  }
}

uint64_t CAStreamBasicDescription::GetRegularizedFormatFlags(CAStreamBasicDescription *this, int a2)
{
  result = *(this + 3);
  if (*(this + 2) == 1819304813)
  {
    v4 = result & 0x7FFFFFFF;
    if ((result & 0x7FFFFFFF) == 0)
    {
      v4 = result;
    }

    if (a2)
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 & 0xFFFFFFBF;
    }

    CAStreamBasicDescription::PackednessIsSignificant(this);
    if (!v6)
    {
      v5 |= 8u;
    }

    CAStreamBasicDescription::PackednessIsSignificant(this);
    v7 = *(this + 8);
    if ((v8 & 1) == 0 && (v7 & 7) == 0)
    {
      v5 &= ~0x10u;
    }

    v9 = v5 & 0xFFFFFFFB;
    if ((v5 & 1) == 0)
    {
      v9 = v5;
    }

    v10 = (v9 & 8) == 0 || v7 > 8;
    v11 = v9 & 2;
    if (v10)
    {
      v11 = v9;
    }

    if (*(this + 7) == 1)
    {
      v11 &= ~0x20u;
    }

    if (v11)
    {
      return v11;
    }

    else
    {
      return 0x80000000;
    }
  }

  return result;
}

BOOL CAStreamBasicDescription::EquivalentFormatFlags(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3, int a4)
{
  v4 = a3;
  if (a4)
  {
    v6.i64[0] = *(this + 1);
    v6.i64[1] = *&a2->mFormatID;
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(v6))))
    {
      return 1;
    }
  }

  if (*(this + 2) == 1819304813)
  {
    RegularizedFormatFlags = CAStreamBasicDescription::GetRegularizedFormatFlags(this, a3);
    return RegularizedFormatFlags == CAStreamBasicDescription::GetRegularizedFormatFlags(a2, v4);
  }

  else
  {
    return *(this + 3) == a2->mFormatFlags;
  }
}

BOOL CAStreamBasicDescription::IsEquivalent(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *this;
  if (a3)
  {
    if (v3 != 0.0 && a2->mSampleRate != 0.0 && v3 != a2->mSampleRate)
    {
      return 0;
    }

    v5 = *(this + 2);
    if (v5)
    {
      mFormatID = a2->mFormatID;
      if (mFormatID)
      {
        if (v5 != mFormatID)
        {
          return 0;
        }
      }
    }

    v7 = *(this + 4);
    if (v7)
    {
      mBytesPerPacket = a2->mBytesPerPacket;
      if (mBytesPerPacket)
      {
        if (v7 != mBytesPerPacket)
        {
          return 0;
        }
      }
    }

    v9 = *(this + 5);
    if (v9)
    {
      mFramesPerPacket = a2->mFramesPerPacket;
      if (mFramesPerPacket)
      {
        if (v9 != mFramesPerPacket)
        {
          return 0;
        }
      }
    }

    v11 = *(this + 6);
    if (v11)
    {
      mBytesPerFrame = a2->mBytesPerFrame;
      if (mBytesPerFrame)
      {
        if (v11 != mBytesPerFrame)
        {
          return 0;
        }
      }
    }

    v13 = *(this + 7);
    if (v13)
    {
      mChannelsPerFrame = a2->mChannelsPerFrame;
      if (mChannelsPerFrame)
      {
        if (v13 != mChannelsPerFrame)
        {
          return 0;
        }
      }
    }

    v15 = *(this + 8);
    if (!v15)
    {
      return CAStreamBasicDescription::EquivalentFormatFlags(this, a2, ((a3 >> 1) & 1), a3 & 1);
    }

    mBitsPerChannel = a2->mBitsPerChannel;
    if (!mBitsPerChannel)
    {
      return CAStreamBasicDescription::EquivalentFormatFlags(this, a2, ((a3 >> 1) & 1), a3 & 1);
    }
  }

  else
  {
    if (v3 != a2->mSampleRate || *(this + 2) != a2->mFormatID || *(this + 4) != a2->mBytesPerPacket || *(this + 5) != a2->mFramesPerPacket || *(this + 7) != a2->mChannelsPerFrame)
    {
      return 0;
    }

    v15 = *(this + 8);
    mBitsPerChannel = a2->mBitsPerChannel;
  }

  if (v15 != mBitsPerChannel)
  {
    return 0;
  }

  return CAStreamBasicDescription::EquivalentFormatFlags(this, a2, ((a3 >> 1) & 1), a3 & 1);
}

BOOL CAStreamBasicDescription::IsEqual(CAStreamBasicDescription *this, AudioStreamBasicDescription *a2, int a3)
{
  if (!a3)
  {
    return memcmp(this, a2, 0x24uLL) == 0;
  }

  return CAStreamBasicDescription::IsEquivalent(this, a2, 3);
}

BOOL SanityCheck(const AudioStreamBasicDescription *a1)
{
  result = 0;
  if (a1->mSampleRate >= 0.0 && a1->mSampleRate < 3000000.0)
  {
    mBytesPerPacket = a1->mBytesPerPacket;
    if (mBytesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mFramesPerPacket = a1->mFramesPerPacket;
    if (mFramesPerPacket >= 0xF4240)
    {
      return 0;
    }

    mBytesPerFrame = a1->mBytesPerFrame;
    if (mBytesPerFrame >= 0xF4240)
    {
      return 0;
    }

    result = 0;
    if (a1->mChannelsPerFrame - 1 > 0x3FF || a1->mBitsPerChannel > 0x400)
    {
      return result;
    }

    mFormatID = a1->mFormatID;
    if (!mFormatID)
    {
      return 0;
    }

    v8 = mFramesPerPacket == 1 && mBytesPerPacket == mBytesPerFrame;
    return mFormatID != 1819304813 || v8;
  }

  return result;
}

uint64_t CAStreamBasicDescription::FromText(CAStreamBasicDescription *this, char *a2, AudioStreamBasicDescription *a3)
{
  if (*this == 45)
  {
    v5 = (this + 1);
  }

  else
  {
    v5 = this;
  }

  v6 = *v5;
  if (v6 == 76)
  {
    v7 = 2 * (*(v5 + 1) == 69);
    i = 12;
  }

  else
  {
    if (v6 != 66)
    {
      i = 12;
      goto LABEL_12;
    }

    v7 = 2 * (*(v5 + 1) == 69);
    if (*(v5 + 1) == 69)
    {
      i = 14;
    }

    else
    {
      i = 12;
    }
  }

  v5 = (v5 + v7);
  v6 = *v5;
LABEL_12:
  v9 = MEMORY[0x277D85DF8];
  switch(v6)
  {
    case 'U':
      i &= 0xAu;
      v10 = *(v5 + 1);
      v5 = (v5 + 1);
      v6 = v10;
      break;
    case 'F':
      i = i & 0xFFFFFFFA | 1;
      goto LABEL_17;
    case 'I':
LABEL_17:
      v11 = (v5 + 1);
      if (*(v5 + 1) < 0)
      {
        v13 = 0;
      }

      else
      {
        v12 = *(v5 + 1);
        if ((*(MEMORY[0x277D85DE0] + 4 * *(v5 + 1) + 60) & 0x400) != 0)
        {
          v13 = 0;
          v11 = (v5 + 2);
          while (1)
          {
            v13 = v12 + 10 * v13 - 48;
            if (*v11 < 0)
            {
              break;
            }

            v18 = *v11;
            v12 = *v11;
            v11 = (v11 + 1);
            if ((*(MEMORY[0x277D85DE0] + 4 * v18 + 60) & 0x400) == 0)
            {
              v5 = (v11 - 2);
              v11 = (v11 - 1);
              goto LABEL_33;
            }
          }
        }

        else
        {
          v13 = 0;
LABEL_33:
          if (v12 == 46)
          {
            v21 = *(v5 + 2);
            v19 = (v5 + 2);
            v20 = v21;
            if (v21 < 0 || (v22 = v20, (*(MEMORY[0x277D85DE0] + 4 * v20 + 60) & 0x400) == 0))
            {
              v23 = *MEMORY[0x277D85DF8];
              v24 = "Expected fractional bits following '.'\n";
              v25 = 39;
LABEL_37:
              fwrite(v24, v25, 1uLL, v23);
              goto LABEL_101;
            }

            v29 = 0;
            v11 = v19;
            do
            {
              if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x400) == 0)
              {
                break;
              }

              v30 = *(v11 + 1);
              v11 = (v11 + 1);
              v29 = 10 * v29 + v22 - 48;
              v22 = v30;
            }

            while ((v30 & 0x80000000) == 0);
            v13 += v29;
            i |= v29 << 7;
          }
        }
      }

      v28 = 1819304813;
      v26 = (v13 + 7) >> 3;
      if ((v13 & 7) != 0)
      {
        i = i & 0xFFFFFFE7 | 0x10;
      }

      v27 = 1;
      goto LABEL_50;
  }

  v14 = 0;
  __c = 538976288;
  v15 = this;
  v11 = this;
  while (1)
  {
    v17 = *v11;
    v11 = (v11 + 1);
    v16 = v17;
    if (v17 == 92)
    {
      if (*v11 != 120)
      {
        return 0;
      }

      v51 = 0;
      if (sscanf(v15 + 2, "%02X", &v51) != 1)
      {
        return 0;
      }

      *(&__c + v14) = v51;
      v11 = (v15 + 4);
      goto LABEL_26;
    }

    *(&__c + v14) = v16;
    if (!v16)
    {
      break;
    }

LABEL_26:
    ++v14;
    v15 = v11;
    if (v14 == 4)
    {
      goto LABEL_40;
    }
  }

  if (v14 != 3)
  {
    return 0;
  }

  HIBYTE(__c) = 32;
  v11 = v15;
LABEL_40:
  if (memchr("-@/#", SHIBYTE(__c), 5uLL))
  {
    HIBYTE(__c) = 32;
    v11 = (v11 - 1);
  }

  i = 0;
  v26 = 0;
  v27 = 0;
  v13 = 0;
  v28 = bswap32(__c);
LABEL_50:
  v31 = *v11;
  if (v31 != 64)
  {
    v33 = 0.0;
    goto LABEL_57;
  }

  v32 = *(v11 + 1);
  v11 = (v11 + 1);
  LOBYTE(v31) = v32;
  if (v32 < 0)
  {
    goto LABEL_100;
  }

  v33 = 0.0;
  while ((*(MEMORY[0x277D85DE0] + 4 * v31 + 60) & 0x400) != 0)
  {
    v33 = (v31 - 48) + v33 * 10.0;
    v34 = *(v11 + 1);
    v11 = (v11 + 1);
    LOBYTE(v31) = v34;
    if (v34 < 0)
    {
      goto LABEL_100;
    }
  }

LABEL_57:
  if (v31 == 47)
  {
    for (i = 0; ; i = (v36 + v35) | (16 * i))
    {
      v11 = (v11 + 1);
      v35 = *v11;
      if ((v35 - 48) >= 0xA)
      {
        v31 = *v11;
        if ((v31 - 65) >= 6)
        {
          if ((v31 - 97) > 5)
          {
            break;
          }

          v36 = -87;
        }

        else
        {
          v36 = -55;
        }
      }

      else
      {
        v36 = -48;
      }
    }
  }

  if (v31 != 35)
  {
    v37 = v31;
    v39 = v27;
    goto LABEL_73;
  }

  v38 = *(v11 + 1);
  v11 = (v11 + 1);
  v37 = v38;
  if (v38 < 0)
  {
    goto LABEL_100;
  }

  v39 = v27;
  while ((*(MEMORY[0x277D85DE0] + 4 * v37 + 60) & 0x400) != 0)
  {
    v39 = 10 * v39 + v37 - 48;
    v40 = *(v11 + 1);
    v11 = (v11 + 1);
    v37 = v40;
    if (v40 < 0)
    {
      goto LABEL_100;
    }
  }

LABEL_73:
  if (v37 != 58)
  {
LABEL_82:
    if (v37 != 44)
    {
      goto LABEL_99;
    }

    v44 = v11 + 1;
    v45 = *(v11 + 1);
    if ((*(v11 + 1) & 0x80000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * *(v11 + 1) + 60) & 0x400) != 0)
    {
      v27 = 0;
      v46 = v11 + 2;
      do
      {
        v44 = v46;
        v27 = v45 + 10 * v27 - 48;
        v47 = *v46;
        v45 = v47;
        if (v47 < 0)
        {
          break;
        }

        v48 = *(MEMORY[0x277D85DE0] + 4 * v47 + 60);
        v46 = v44 + 1;
      }

      while ((v48 & 0x400) != 0);
      v11 = (v44 - 1);
    }

    else
    {
      v27 = 0;
    }

    if (v45 == 73)
    {
      v44 = v11 + 2;
    }

    else if (v45 == 68)
    {
      if (v28 != 1819304813)
      {
        v23 = *v9;
        v24 = "non-interleaved flag invalid for non-PCM formats\n";
        v25 = 49;
        goto LABEL_37;
      }

      v11 = (v11 + 2);
      i |= 0x20u;
LABEL_99:
      if (*v11)
      {
        goto LABEL_100;
      }

      *a2 = v33;
      *(a2 + 2) = v28;
      *(a2 + 3) = i;
      *(a2 + 4) = v26;
      *(a2 + 5) = v39;
      *(a2 + 6) = v26;
      *(a2 + 7) = v27;
      result = 1;
      *(a2 + 8) = v13;
      *(a2 + 9) = 0;
      return result;
    }

    if (v28 == 1819304813)
    {
      v49 = v27;
    }

    else
    {
      v49 = 1;
    }

    v26 *= v49;
    v11 = v44;
    goto LABEL_99;
  }

  i &= 0xFFFFFFE7;
  v41 = *(v11 + 1);
  if (v41 == 76)
  {
    goto LABEL_77;
  }

  if (v41 == 72)
  {
    i |= 0x10u;
LABEL_77:
    v42 = *(v11 + 2);
    v11 = (v11 + 2);
    v37 = v42;
    if ((v42 & 0x80000000) == 0)
    {
      v26 = 0;
      while ((*(MEMORY[0x277D85DE0] + 4 * v37 + 60) & 0x400) != 0)
      {
        v43 = *(v11 + 1);
        v11 = (v11 + 1);
        v26 = 10 * v26 + v37 - 48;
        v37 = v43;
        if (v43 < 0)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_82;
    }

LABEL_100:
    fprintf(*v9, "extra characters at end of format string: %s\n", v11);
  }

LABEL_101:
  fprintf(*v9, "Invalid format string: %s\n", this);
  fwrite("Syntax of format strings is: \n", 0x1EuLL, 1uLL, *v9);
  return 0;
}

void *CASmartPreferences::instance(CASmartPreferences *this)
{
  {
    CASmartPreferences::CASmartPreferences(&CASmartPreferences::instance(void)::global);
  }

  return &CASmartPreferences::instance(void)::global;
}

double CACFPreferencesGetAppFloatValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretFloat(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

double CASmartPreferences::InterpretFloat(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberDoubleType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%lf", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CACFPreferencesGetAppIntegerValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretInteger(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t CASmartPreferences::InterpretInteger(const __CFString *this, _BYTE *a2, BOOL *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      valuePtr = CFBooleanGetValue(this);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(this, kCFNumberIntType, &valuePtr);
      goto LABEL_6;
    }

    if (v5 == CFStringGetTypeID())
    {
      CFStringGetCString(this, buffer, 64, 0x600u);
      if (sscanf(buffer, "%d", &valuePtr) == 1)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  result = valuePtr;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CACFPreferencesGetAppBooleanValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  v6 = v4;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v10;
  }

  v8 = CASmartPreferences::InterpretBoolean(v4, v7, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

BOOL CASmartPreferences::InterpretBoolean(CASmartPreferences *this, _BYTE *a2, BOOL *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  *a2 = 0;
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      LODWORD(this) = CFBooleanGetValue(v4);
LABEL_6:
      *a2 = 1;
      goto LABEL_7;
    }

    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
      LODWORD(this) = valuePtr != 0;
      goto LABEL_6;
    }

    if (v5 != CFStringGetTypeID())
    {
      LODWORD(this) = 0;
      goto LABEL_7;
    }

    CFStringGetCString(v4, buffer, 64, 0x600u);
    if (sscanf(buffer, "%d", &valuePtr) == 1)
    {
      *a2 = 1;
      LODWORD(this) = valuePtr != 0;
      goto LABEL_7;
    }

    v8 = buffer[0];
    if (buffer[0])
    {
      v9 = &buffer[1];
      do
      {
        *(v9 - 1) = __tolower(v8);
        v10 = *v9++;
        v8 = v10;
      }

      while (v10);
    }

    if (!(*buffer ^ 0x6F6E | buffer[2]) || (*buffer == 1936482662 ? (v11 = v14 == 101) : (v11 = 0), v11))
    {
      LODWORD(this) = 0;
      goto LABEL_6;
    }

    if (*buffer == 7562617 || !(*buffer ^ 0x65757274 | v14))
    {
      LODWORD(this) = 1;
      *a2 = 1;
    }

    else
    {
      LODWORD(this) = valuePtr;
    }
  }

LABEL_7:
  result = this != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CACFPreferencesGetAppFourCCValue(const __CFString *a1, const __CFString *a2, BOOL *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (!v4)
  {
    v8 = 0;
    v9 = 0;
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  if (v6 == CFStringGetTypeID())
  {
    CFStringGetCString(v5, buffer, 64, 0x600u);
    v7 = strlen(buffer);
    v8 = v7 == 4;
    if (v7 == 4)
    {
      v9 = bswap32(*buffer);
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
LABEL_9:
  CFRelease(v5);
  if (a3)
  {
LABEL_10:
    *a3 = v8;
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void CASmartPreferences::CASmartPreferences(CASmartPreferences *this)
{
  *this = 850045863;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 8) = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  global_queue = dispatch_get_global_queue(0, 0);
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v3 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, global_queue);
  *(this + 12) = v3;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = ___ZN18CASmartPreferencesC2Ev_block_invoke;
  handler[3] = &__block_descriptor_tmp;
  handler[4] = this;
  dispatch_source_set_event_handler(v3, handler);
  dispatch_resume(*(this + 12));
}

void CASmartPreferences::RereadPrefs(CASmartPreferences *this)
{
  std::mutex::lock(this);
  CFSetApplyFunction(*(this + 8), SynchronizePrefDomain, 0);
  v2 = *(this + 9);
  v3 = *(this + 10);
  while (v2 != v3)
  {
    CASmartPreferences::Pref::Load(v2);
    v2 += 6;
  }

  std::mutex::unlock(this);
}

uint64_t CASmartPreferences::HavePref(CASmartPreferences *this, CFTypeRef cf1, const __CFString *a3)
{
  v3 = *(this + 9);
  v4 = *(this + 10);
  if (v3 == v4)
  {
    return 0;
  }

  while (!CFEqual(cf1, *v3) || !CFEqual(a3, v3[1]))
  {
    v3 += 6;
    if (v3 == v4)
    {
      return 0;
    }
  }

  return 1;
}

void CASmartPreferences::_RegisterFirstHandler(uint64_t a1, const void *a2, __CFString *a3, uint64_t a4)
{
  value = a3;
  v11 = a2;
  std::mutex::lock(a1);
  if ((CASmartPreferences::HavePref(a1, a2, a3) & 1) == 0)
  {
    CFRetain(a2);
    CFRetain(a3);
    v8 = *(a1 + 80);
    if (v8 >= *(a1 + 88))
    {
      v9 = std::vector<CASmartPreferences::Pref>::__emplace_back_slow_path<__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(a1 + 72, &v11, &value, a4);
    }

    else
    {
      std::allocator<CASmartPreferences::Pref>::construct[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(a1 + 72, *(a1 + 80), &v11, &value, a4);
      v9 = v8 + 48;
      *(a1 + 80) = v8 + 48;
    }

    *(a1 + 80) = v9;
    CFSetAddValue(*(a1 + 64), value);
    CASmartPreferences::Pref::Load((*(a1 + 80) - 48));
  }

  std::mutex::unlock(a1);
}

void sub_2415E2C8C(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

CFPropertyListRef CASmartPreferences::Pref::Load(CFStringRef *this)
{
  result = CFPreferencesCopyAppValue(*this, this[1]);
  if (result)
  {

    return std::function<BOOL ()(void const*)>::operator()((this + 2), result);
  }

  return result;
}

uint64_t std::function<BOOL ()(void const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::vector<CASmartPreferences::Pref>::__emplace_back_slow_path<__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if (v4 + 1 > 0x555555555555555)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v8 = 0x555555555555555;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CASmartPreferences::Pref>>(a1, v8);
  }

  v15 = 0;
  v16 = 48 * v4;
  std::allocator<CASmartPreferences::Pref>::construct[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(a1, (48 * v4), a2, a3, a4);
  v17 = 48 * v4 + 48;
  v9 = *(a1 + 8);
  v10 = 48 * v4 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CASmartPreferences::Pref>,CASmartPreferences::Pref*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(&v15);
  return v14;
}

void sub_2415E2EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::allocator<CASmartPreferences::Pref>::construct[abi:ne200100]<CASmartPreferences::Pref,__CFString const*&,__CFString const*&,std::function<BOOL ()(void const*)> &>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *a3;
  v7 = *a4;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v10, a5);
  *a2 = v6;
  a2[1] = v7;
  std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100]((a2 + 2), v10);
  result = std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2415E2F44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<CASmartPreferences::Pref>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CASmartPreferences::Pref>,CASmartPreferences::Pref*>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 16;
    v7 = a2;
    do
    {
      *(v6 - 16) = *v7;
      v8 = std::__function::__value_func<BOOL ()(void const*)>::__value_func[abi:ne200100](v6, (v7 + 1));
      v7 += 3;
      v6 = v8 + 48;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100]((v5 + 1));
      v5 += 3;
    }
  }
}

uint64_t std::__split_buffer<CASmartPreferences::Pref>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__function::__value_func<BOOL ()(void const*)>::~__value_func[abi:ne200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_2415E3B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E3C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E3CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E3E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E3F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E40BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E4124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E4214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E427C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E436C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E43D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E44C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E4530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E4620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E4688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E47C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415E4854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E4994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415E4A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E4B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E4BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E5224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E53B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E54D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415E564C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415E5770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E596C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E5B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E5DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415E5F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id ASDDSP::exceptionBarrier<objc_object *({block_pointer} {__strong})(void)>(void *a1)
{
  v1 = a1;
  v2 = v1[2]();

  return v2;
}

uint64_t std::function<objc_object * ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void _ZNSt3__110__function6__funcIZN6ASDDSP16exceptionBarrierIU8__strongU13block_pointerFP11objc_objectvEEEDTclfL0p_EET_S9_EUlvE_NS_9allocatorISB_EES6_ED0Ev(uint64_t a1)
{

  JUMPOUT(0x245CEB8C0);
}

id _ZNKSt3__110__function6__funcIZN6ASDDSP16exceptionBarrierIU8__strongU13block_pointerFP11objc_objectvEEEDTclfL0p_EET_S9_EUlvE_NS_9allocatorISB_EES6_E7__cloneEPNS0_6__baseIS6_EE(uint64_t a1, void *a2)
{
  *a2 = &unk_285344510;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN6ASDDSP16exceptionBarrierIU8__strongU13block_pointerFP11objc_objectvEEEDTclfL0p_EET_S9_EUlvE_NS_9allocatorISB_EES6_E18destroy_deallocateEv(id *a1)
{

  operator delete(a1);
}

uint64_t std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ASDDSP::exceptionBarrier<void({block_pointer} {__strong})(void)>(void *a1)
{
  v1 = a1;
  v1[2]();
}

uint64_t std::function<void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
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

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t ASDDSP::exceptionBarrier<BOOL({block_pointer} {__strong})(void)>(void *a1)
{
  v1 = a1;
  v2 = v1[2]();

  return v2;
}

uint64_t std::function<BOOL ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t _ZNKSt3__110__function6__funcIZN6ASDDSP16exceptionBarrierIU8__strongU13block_pointerFbvEEEDTclfL0p_EET_S7_EUlvE_NS_9allocatorIS9_EES4_E7__cloneEPNS0_6__baseIS4_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2853444C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t ASDDSP::exceptionBarrier<unsigned int({block_pointer} {__strong})(void)>(void *a1)
{
  v1 = a1;
  v2 = v1[2]();

  return v2;
}

uint64_t std::function<unsigned int ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t _ZNKSt3__110__function6__funcIZN6ASDDSP16exceptionBarrierIU8__strongU13block_pointerFjvEEEDTclfL0p_EET_S7_EUlvE_NS_9allocatorIS9_EES4_E7__cloneEPNS0_6__baseIS4_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285344480;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ASDIntervalFilter::ASDIntervalFilter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_285344950;
  *(a1 + 24) = a4 + 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  operator new[]();
}

void ASDIntervalFilter::~ASDIntervalFilter(ASDIntervalFilter *this)
{
  *this = &unk_285344950;
  pthread_mutex_destroy((this + 56));
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x245CEB8C0](v2, 0x1000C40451B5BE8);
  }
}

void ASDIntervalFilter::reInitialiseFilter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  pthread_mutex_lock((a1 + 56));
  if (!(a3 | a2))
  {
    if (*(a1 + 48) < 2uLL)
    {
      goto LABEL_5;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 24);
    v10 = v9 + *(a1 + 40);
    v11 = (v8 + 16 * ((v10 - 1) % v9));
    a3 = (__PAIR128__(v11[1] - *(v8 + 16 * ((v10 - 2) % v9) + 8), *v11) - *(v8 + 16 * ((v10 - 2) % v9))) >> 64;
    a2 = *v11 - *(v8 + 16 * ((v10 - 2) % v9));
  }

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
LABEL_5:
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = *(a1 + 32);
  if (v12)
  {
    MEMORY[0x245CEB8C0](v12, 0x1000C40451B5BE8);
    *(a1 + 32) = 0;
  }

  *(a1 + 24) = a4 + 1;
  operator new[]();
}

uint64_t ASDIntervalFilter::newTimePosition(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!*(a1 + 32))
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 56));
  if (!*(a1 + 48))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = (v6 + 16 * v7);
    *v8 = a2;
    v8[1] = a3;
    v9 = *(a1 + 24);
    if (v9 != 1)
    {
      v10 = v9 - 1;
      v11 = a3;
      v12 = a2;
      do
      {
        LODWORD(v7) = (v9 - 1 + v7) % v9;
        v13 = *(a1 + 8);
        v14 = v11 - *(a1 + 16);
        v15 = v12 >= v13;
        v12 -= v13;
        v16 = !v15;
        v11 = v14 - v16;
        v17 = (v6 + 16 * v7);
        *v17 = v12;
        v17[1] = v11;
        --v10;
      }

      while (v10);
    }
  }

  v18 = (*(*a1 + 40))(a1, a2, a3);
  v19 = *(a1 + 40);
  v20 = (*(a1 + 32) + 16 * v19);
  *v20 = v18;
  v20[1] = v21;
  *(a1 + 40) = (v19 + *(a1 + 24) + 1) % *(a1 + 24);
  ++*(a1 + 48);
  pthread_mutex_unlock((a1 + 56));
  return v18;
}

uint64_t ASDIntervalFilter::getMultiIntervalTime(ASDIntervalFilter *this)
{
  if (!*(this + 4))
  {
    return 0;
  }

  pthread_mutex_lock((this + 56));
  v2 = *(this + 4);
  v3 = *(this + 10);
  v4 = (v2 + 16 * ((v3 + *(this + 6) - 1) % *(this + 6)));
  v6 = (__PAIR128__(v4[1] - *(v2 + 16 * v3 + 8), *v4) - *(v2 + 16 * v3)) >> 64;
  v5 = *v4 - *(v2 + 16 * v3);
  pthread_mutex_unlock((this + 56));
  return v5;
}

void ASDIntervalFilterIIR::ASDIntervalFilterIIR(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ASDIntervalFilter::ASDIntervalFilter(a1, a2, a3, a4);
}

{
  ASDIntervalFilter::ASDIntervalFilter(a1, a2, a3, a4);
}

uint64_t ASDIntervalFilterIIR::calculateNewTimePosition(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  v6 = *(a1 + 184);
  v7 = *(a1 + 16);
  v8 = v4;
  v9 = v7;
  if (*(a1 + 184))
  {
    v10 = *(a1 + 184);
    v9 = *(a1 + 16);
    v8 = *(a1 + 8);
    do
    {
      *(&v11 + 1) = v9;
      *&v11 = v8;
      v9 = v11 >> 63;
      v8 *= 2;
      --v10;
    }

    while (v10);
  }

  v13 = (__PAIR128__(v9, v8) + __PAIR128__(a3, a2)) >> 64;
  v12 = v8 + a2;
  if (*(a1 + 48))
  {
    v69 = 0uLL;
    v14 = v8 + a2;
    *(&v68 + 1) = (__PAIR128__(v9, v8) + __PAIR128__(a3, a2)) >> 64;
    if (v6)
    {
      v16 = *(&v69 + 1);
      v15 = v69;
      v17 = (__PAIR128__(v9, v8) + __PAIR128__(a3, a2)) >> 64;
      v18 = v6;
      v14 = v8 + a2;
      do
      {
        *(&v19 + 1) = v16;
        *&v19 = v15;
        v16 = v19 >> 63;
        *(&v19 + 1) = v15;
        *&v19 = v17;
        v15 = v19 >> 63;
        *(&v19 + 1) = v17;
        *&v19 = v14;
        v17 = v19 >> 63;
        v14 *= 2;
        --v18;
      }

      while (v18);
      *&v69 = v15;
      *(&v69 + 1) = v16;
      *(&v68 + 1) = v17;
    }

    *&v68 = v14;
    (*(*a1 + 48))(a1, a1 + 120, &v68);
    v67 = 0uLL;
    v20 = *(a1 + 184);
    *(&v66 + 1) = v13;
    if (v20)
    {
      v22 = *(&v67 + 1);
      v21 = v67;
      do
      {
        *(&v23 + 1) = v22;
        *&v23 = v21;
        v22 = v23 >> 63;
        *(&v23 + 1) = v21;
        *&v23 = v13;
        v21 = v23 >> 63;
        *(&v23 + 1) = v13;
        *&v23 = v12;
        v13 = v23 >> 63;
        v12 *= 2;
        --v20;
      }

      while (v20);
      *&v67 = v21;
      *(&v67 + 1) = v22;
      *(&v66 + 1) = v13;
    }

    *&v66 = v12;
    operator-(&v66, (a1 + 120), &v68);
    v66 = v68;
    v67 = v69;
    (*(*a1 + 48))(a1, a1 + 152, &v66, *(a1 + 184));
    ASD_U256::operator+(a1 + 120, a1 + 152, &v66);
    v24 = *(a1 + 184);
    v26 = *(&v66 + 1);
    v25 = v66;
    if (*(a1 + 184))
    {
      v27 = *(&v67 + 1);
      v28 = v67;
      do
      {
        *(&v29 + 1) = v26;
        *&v29 = v25;
        v25 = v29 >> 1;
        *(&v29 + 1) = v28;
        *&v29 = v26;
        v26 = v29 >> 1;
        *(&v29 + 1) = v27;
        *&v29 = v28;
        v28 = v29 >> 1;
        v27 >>= 1;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    v66 = __PAIR128__(v13, v12);
    v67 = 0uLL;
    v64 = 0;
    v65 = 0;
    v63 = v7;
    if (v6)
    {
      v30 = v64;
      v31 = v65;
      do
      {
        *(&v32 + 1) = v31;
        *&v32 = v30;
        v31 = v32 >> 63;
        *(&v32 + 1) = v30;
        *&v32 = v7;
        v30 = v32 >> 63;
        *(&v32 + 1) = v7;
        *&v32 = v4;
        v7 = v32 >> 63;
        v4 *= 2;
        --v6;
      }

      while (v6);
      v64 = v30;
      v65 = v31;
      v63 = v7;
    }

    v62 = v4;
    operator-(&v66, &v62, &v68);
    v33 = *(a1 + 184);
    v34 = *(&v68 + 1);
    v35 = v68;
    v37 = *(&v69 + 1);
    v36 = v69;
    if (*(a1 + 184))
    {
      v38 = *(a1 + 184);
      do
      {
        *(&v39 + 1) = v37;
        *&v39 = v36;
        v37 = v39 >> 63;
        *(&v39 + 1) = v36;
        *&v39 = v34;
        v36 = v39 >> 63;
        *(&v39 + 1) = v34;
        *&v39 = v35;
        v34 = v39 >> 63;
        v35 *= 2;
        --v38;
      }

      while (v38);
    }

    *(a1 + 120) = v35;
    *(a1 + 136) = v36;
    *(a1 + 144) = v37;
    *(a1 + 128) = v34;
    v69 = 0uLL;
    v40 = v12;
    *(&v68 + 1) = v13;
    if (v33)
    {
      v42 = *(&v69 + 1);
      v41 = v69;
      v43 = v13;
      v44 = v33;
      v40 = v12;
      do
      {
        *(&v45 + 1) = v42;
        *&v45 = v41;
        v42 = v45 >> 63;
        *(&v45 + 1) = v41;
        *&v45 = v43;
        v41 = v45 >> 63;
        *(&v45 + 1) = v43;
        *&v45 = v40;
        v43 = v45 >> 63;
        v40 *= 2;
        --v44;
      }

      while (v44);
      *&v69 = v41;
      *(&v69 + 1) = v42;
      *(&v68 + 1) = v43;
    }

    *&v68 = v40;
    (*(*a1 + 48))(a1, a1 + 120, &v68);
    v67 = 0uLL;
    v46 = *(a1 + 184);
    *(&v66 + 1) = v13;
    if (v46)
    {
      v48 = *(&v67 + 1);
      v47 = v67;
      do
      {
        *(&v49 + 1) = v48;
        *&v49 = v47;
        v48 = v49 >> 63;
        *(&v49 + 1) = v47;
        *&v49 = v13;
        v47 = v49 >> 63;
        *(&v49 + 1) = v13;
        *&v49 = v12;
        v13 = v49 >> 63;
        v12 *= 2;
        --v46;
      }

      while (v46);
      *&v67 = v47;
      *(&v67 + 1) = v48;
      *(&v66 + 1) = v13;
    }

    *&v66 = v12;
    operator-(&v66, (a1 + 120), &v68);
    operator*(v5, ~(-1 << *(a1 + 184)), &v66);
    v51 = *(&v66 + 1);
    v50 = v66;
    v53 = *(&v67 + 1);
    v52 = v67;
    if (*(a1 + 184))
    {
      v54 = *(a1 + 184);
      do
      {
        *(&v55 + 1) = v53;
        *&v55 = v52;
        v53 = v55 >> 63;
        *(&v55 + 1) = v52;
        *&v55 = v51;
        v52 = v55 >> 63;
        *(&v55 + 1) = v51;
        *&v55 = v50;
        v51 = v55 >> 63;
        v50 *= 2;
        --v54;
      }

      while (v54);
    }

    *(a1 + 168) = v52;
    *(a1 + 176) = v53;
    *(a1 + 160) = v51;
    *(a1 + 152) = v50;
    v66 = v68;
    v67 = v69;
    (*(*a1 + 48))(a1, a1 + 152, &v66);
    ASD_U256::operator+(a1 + 120, a1 + 152, &v66);
    v56 = *(a1 + 184);
    v57 = *(&v66 + 1);
    v25 = v66;
    if (*(a1 + 184))
    {
      v58 = *(&v67 + 1);
      v59 = v67;
      do
      {
        *(&v60 + 1) = v57;
        *&v60 = v25;
        v25 = v60 >> 1;
        *(&v60 + 1) = v59;
        *&v60 = v57;
        v57 = v60 >> 1;
        *(&v60 + 1) = v58;
        *&v60 = v59;
        v59 = v60 >> 1;
        v58 >>= 1;
        --v56;
      }

      while (v56);
    }
  }

  return v25 - v8;
}

void *operator-@<X0>(void *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[2];
  v4 = a2[2];
  v5 = __PAIR128__(result[3] - a2[3], v3) - v4;
  *(a3 + 16) = v5;
  v6 = result[1];
  v8 = *result < *a2;
  v7 = __PAIR128__(v6 - a2[1], *result) - *a2;
  *a3 = v7;
  v9 = v6 == *(&v7 + 1) && v8;
  if (v6 < *(&v7 + 1) || v9)
  {
    *(a3 + 16) = v5 - 1;
    if (v3 == v4)
    {
      *(a3 + 24) = *(&v5 + 1) - 1;
    }
  }

  return result;
}

uint64_t ASD_U256::operator+@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 16) + *(result + 16);
  v5 = *result;
  v4 = *(result + 8);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *a2 + *result;
  *a3 = v8;
  *(a3 + 16) = v3;
  if (v6 > *(&v8 + 1) || (v7 > v8 ? (v9 = v6 == *(&v8 + 1)) : (v9 = 0), !v9 ? (v10 = 0) : (v10 = 1), v4 == *(&v8 + 1) ? (v11 = v8 >= v5) : (v11 = 1), v11 ? (v12 = v4 > *(&v8 + 1)) : (v12 = 1), !v12 ? (v13 = v10 == 0) : (v13 = 0), !v13))
  {
    *(a3 + 16) = v3 + 1;
    if (v3 == -1)
    {
      *(a3 + 24) = *(&v3 + 1) + 1;
    }
  }

  return result;
}

__n128 ASDIntervalFilterIIR::IIR(uint64_t a1, __n128 *a2, uint64_t *a3, int a4)
{
  v5 = a2->n128_u64[0];
  v6 = a2->n128_u64[1];
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u64[1];
  if (a4)
  {
    v9 = a4;
    do
    {
      *(&v10 + 1) = v6;
      *&v10 = v5;
      v5 = v10 >> 1;
      *(&v10 + 1) = v7;
      *&v10 = v6;
      v6 = v10 >> 1;
      *(&v10 + 1) = v8;
      *&v10 = v7;
      v7 = v10 >> 1;
      v8 >>= 1;
      --v9;
    }

    while (v9);
  }

  v20[2] = v7;
  v20[3] = v8;
  v20[0] = v5;
  v20[1] = v6;
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  for (i = a3[3]; a4; --a4)
  {
    *(&v15 + 1) = v12;
    *&v15 = v11;
    v11 = v15 >> 1;
    *(&v15 + 1) = v13;
    *&v15 = v12;
    v12 = v15 >> 1;
    *(&v15 + 1) = i;
    *&v15 = v13;
    v13 = v15 >> 1;
    i >>= 1;
  }

  v19[2] = v13;
  v19[3] = i;
  v19[0] = v11;
  v19[1] = v12;
  operator-(a2, v20, v17);
  ASD_U256::operator+(v17, v19, v18);
  result = v18[1];
  *a2 = v18[0];
  a2[1] = result;
  return result;
}

uint64_t ASDIntervalFilterFIR::setNewFilter(ASDIntervalFilterFIR *this, unsigned int a2, const unint64_t *a3, int a4)
{
  v8 = *(this + 17);
  if (v8)
  {
    free(v8);
    *(this + 17) = 0;
  }

  v9 = *(this + 16);
  if (v9)
  {
    free(v9);
    *(this + 16) = 0;
  }

  v10 = *(this + 15);
  if (v10)
  {
    free(v10);
    *(this + 15) = 0;
  }

  *(this + 36) = a2;
  v11 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  *(this + 15) = v11;
  if (v11)
  {
    memcpy(v11, a3, 8 * *(this + 36));
    *(this + 37) = a4;
    v12 = *(this + 36);
    operator new[]();
  }

  return 3758097084;
}

void ASDIntervalFilterFIR::~ASDIntervalFilterFIR(ASDIntervalFilterFIR *this)
{
  *this = &unk_285344908;
  v2 = *(this + 17);
  if (v2)
  {
    MEMORY[0x245CEB8C0](v2, 0x1000C40451B5BE8);
    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {
    MEMORY[0x245CEB8C0](v3, 0x1000C40451B5BE8);
    *(this + 16) = 0;
  }

  v4 = *(this + 15);
  if (v4)
  {
    free(v4);
    *(this + 15) = 0;
  }

  ASDIntervalFilter::~ASDIntervalFilter(this);
}

{
  ASDIntervalFilterFIR::~ASDIntervalFilterFIR(this);

  JUMPOUT(0x245CEB8C0);
}

uint64_t ASDIntervalFilterFIR::calculateNewTimePosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (*(a1 + 48))
  {
    ASDIntervalFilterFIR::FIR(a1, *(a1 + 128), a2, a3, &v17);
    v21 = v17;
    v22 = v18;
    *&v15 = a2;
    *(&v15 + 1) = a3;
    v16 = 0uLL;
    operator-(&v15, &v21, &v17);
    v6 = *(a1 + 136);
  }

  else
  {
    if (*(a1 + 144))
    {
      v7 = 0;
      v8 = 0;
      do
      {
        operator*((a1 + 8), v8, &v17);
        v9 = *(a1 + 128);
        v10 = *(a1 + 144);
        *(v9 + 16 * ((v7 + v10) % v10)) = __PAIR128__(a3 - *(&v17 + 1), a2) - v17;
        ++v8;
        --v7;
      }

      while (v8 < v10);
    }

    else
    {
      v9 = *(a1 + 128);
    }

    ASDIntervalFilterFIR::FIR(a1, v9, a2, a3, &v17);
    v21 = v17;
    v22 = v18;
    *&v15 = a2;
    *(&v15 + 1) = a3;
    v16 = 0uLL;
    operator-(&v15, &v21, &v17);
    operator*((a1 + 8), *(a1 + 144) >> 1, &v15);
    v11 = *(a1 + 144);
    v6 = *(a1 + 136);
    if (v11)
    {
      v12 = v15;
      v13 = *(a1 + 144);
      do
      {
        *(v6 + 16 * (v13 % v11)) = v12;
        --v13;
      }

      while (v13);
    }
  }

  ASDIntervalFilterFIR::FIR(a1, v6, v17, *(&v17 + 1), &v15);
  v19 = v15;
  v20 = v16;
  ASD_U256::operator+(&v21, &v19, &v15);
  result = v15;
  *(a1 + 152) = (*(a1 + 152) + *(a1 + 144) + 1) % *(a1 + 144);
  return result;
}

uint64_t ASDIntervalFilterFIR::FIR@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = result;
  v19 = 0u;
  v20 = 0u;
  v7 = (a2 + 16 * *(result + 152));
  *v7 = a3;
  v7[1] = a4;
  LODWORD(v7) = *(result + 144);
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      operator*((a2 + 16 * ((v9 + v7 + *(v5 + 152)) % v7)), *(*(v5 + 120) + 8 * v10), v18);
      result = ASD_U256::operator+=(&v19, v18);
      ++v10;
      v7 = *(v5 + 144);
      --v9;
    }

    while (v10 < v7);
  }

  v11 = *(v5 + 148);
  v12 = v20;
  *a5 = v19;
  *(a5 + 1) = v12;
  v13 = *a5;
  if (v11)
  {
    v14 = a5[1];
    v15 = a5[2];
    v16 = a5[3];
    do
    {
      *(&v17 + 1) = v14;
      *&v17 = v13;
      v13 = v17 >> 1;
      *(&v17 + 1) = v15;
      *&v17 = v14;
      v14 = v17 >> 1;
      *(&v17 + 1) = v16;
      *&v17 = v15;
      v15 = v17 >> 1;
      v16 >>= 1;
      --v11;
    }

    while (v11);
    a5[1] = v14;
    a5[2] = v15;
    a5[3] = v16;
  }

  *a5 = v13;
  return result;
}

uint64_t ASD_U256::operator+=(uint64_t result, uint64_t a2)
{
  v3 = (*(a2 + 16) + *(result + 16)) >> 64;
  v2 = *(a2 + 16) + *(result + 16);
  v4 = *(result + 8);
  v5 = *(a2 + 8);
  v6 = *a2 + *result;
  if (v5 > *(&v6 + 1) || (*a2 > v6 ? (v7 = v5 == *(&v6 + 1)) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), v4 == *(&v6 + 1) ? (v9 = v6 >= *result) : (v9 = 1), v9 ? (v10 = v4 > *(&v6 + 1)) : (v10 = 1), !v10 ? (v11 = v8 == 0) : (v11 = 0), !v11))
  {
    v9 = __CFADD__(v2++, 1);
    if (v9)
    {
      ++v3;
    }
  }

  *(result + 16) = v2;
  *(result + 24) = v3;
  *result = v6;
  return result;
}

void ASDIntervalFilterIIR::~ASDIntervalFilterIIR(ASDIntervalFilterIIR *this)
{
  ASDIntervalFilter::~ASDIntervalFilter(this);

  JUMPOUT(0x245CEB8C0);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2415E93D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E96F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void **a25)
{
  MEMORY[0x245CEB8C0](v25, 0x1020C403FC65FD6);
  a25 = &a22;
  std::vector<ASDDSPStreamHelper::DSPStream>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void sub_2415E9870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ASDDSPStreamHelper *std::unique_ptr<ASDDSPStreamHelper>::reset[abi:ne200100](ASDDSPStreamHelper **a1, ASDDSPStreamHelper *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ASDDSPStreamHelper::~ASDDSPStreamHelper(result);

    JUMPOUT(0x245CEB8C0);
  }

  return result;
}

void sub_2415E9A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415E9C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415EAB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15 - 56);

  _Unwind_Resume(a1);
}

void sub_2415EB154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  ASDDSPGraphHelper::~ASDDSPGraphHelper(va);
  _Unwind_Resume(a1);
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::remove(uint64_t a1, uint64_t a2)
{
  v18 = (a1 + 48);
  v19 = 1;
  std::mutex::lock((a1 + 48));
  v4 = atomic_load((a1 + 8));
  if (v4)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(v4, a2);
    if (SlotForKey)
    {
      v7 = v6;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v4 + 8 * HIDWORD(SlotForKey) + 16));
      if (v6)
      {
        v8 = atomic_load((a1 + 16));
        if (v8 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v9 = atomic_load((a1 + 16));
          }

          while (v9 > 0);
        }

        if (atomic_load(v7))
        {
          std::mutex::unlock(v18);
          v19 = 0;
          while (atomic_load(v7))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v18);
          v4 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::element_t::release(v7);
        v13 = *(a1 + 4) - 1;
        *(a1 + 4) = v13;
        if (v4)
        {
          v14 = 16 * v13;
          v15 = *(v4 + 8);
          if (v14 / v15 <= 2 && v15 >= 9)
          {
            caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::rehash(a1, v15 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
  }

  if (v19 == 1)
  {
    std::mutex::unlock(v18);
  }
}

void sub_2415EB3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415EB6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415EC324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<objc_object * ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415EC460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  atomic_fetch_add(v10, 0xFFFFFFFF);
  _Unwind_Resume(exception_object);
}

void sub_2415EC660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415EC774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  atomic_fetch_add(v10, 0xFFFFFFFF);
  _Unwind_Resume(exception_object);
}

void ASDDSPGraphHelper::~ASDDSPGraphHelper(ASDDSPGraphHelper *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__list_imp<ASDDSPGraphHelper>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[5];
        v2[5] = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v7 = v2[4];
        v2[4] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = v2[3];
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::~guarded_lookup_hash_table(result);

    JUMPOUT(0x245CEB8C0);
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    v6 = _os_crash();
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::~guarded_lookup_hash_table(v6);
  }

  v3 = atomic_load((a1 + 8));
  if (v3)
  {
    v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::~table_impl(v3);
    MEMORY[0x245CEB8C0](v4, 0x1060C402CF69088);
  }

  std::mutex::~mutex((a1 + 48));
  v7 = (a1 + 24);
  std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (!atomic_load(result))
    {

      JUMPOUT(0x245CEB8C0);
    }

    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::element_t::release();
  }

  return result;
}

void std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>,0>(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::~table_impl(result);

    JUMPOUT(0x245CEB8C0);
  }

  return result;
}

void std::vector<ASDDSPStreamHelper::DSPStream>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        ASDDSPStreamHelper::DSPStream::~DSPStream((v4 - 80));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ASDDSPStreamHelper::DSPStream::~DSPStream(ASDDSPStreamHelper::DSPStream *this)
{
  v4 = *(this + 9);
  v2 = (this + 72);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<ASDBufferList>::operator()[abi:ne200100](v2, v3);
  }
}

void std::default_delete<ASDBufferList>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 40);
    v3 = *(a2 + 40);
    *v2 = 0;
    if (v3)
    {
      std::default_delete<CABufferList>::operator()[abi:ne200100](v2, v3);
    }

    JUMPOUT(0x245CEB8C0);
  }
}

void std::default_delete<CABufferList>::operator()[abi:ne200100](int a1, void *__p)
{
  if (__p)
  {
    v3 = __p[1];
    if (v3)
    {
      MEMORY[0x245CEB8A0](v3, 0x1000C8077774924);
    }

    operator delete(__p);
  }
}

uint64_t std::vector<ASDDSPStreamHelper::DSPStream>::__construct_one_at_end[abi:ne200100]<ASDStreamDirection,AudioStreamBasicDescription,int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned long long,unsigned int,AudioServerPlugInIOCycleInfo const*)>(uint64_t a1, unsigned int *a2, AudioStreamBasicDescription *a3, void *a4, void *a5, void *a6)
{
  v10 = *(a1 + 8);
  v11 = *a2;
  CAStreamBasicDescription::CAStreamBasicDescription(v13, a3);
  result = ASDDSPStreamHelper::DSPStream::DSPStream(v10, v11, v13, *a4, *a5, *a6);
  *(a1 + 8) = v10 + 80;
  return result;
}

uint64_t std::vector<ASDDSPStreamHelper::DSPStream>::__emplace_back_slow_path<ASDStreamDirection,AudioStreamBasicDescription,int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned int,AudioServerPlugInIOCycleInfo const*,void *,void *,unsigned int),int({block_pointer} {__strong})(unsigned long long,unsigned int,AudioServerPlugInIOCycleInfo const*)>(uint64_t a1, unsigned int *a2, const AudioStreamBasicDescription *a3, void *a4, void *a5, void *a6)
{
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v7 = v6 + 1;
  if (v6 + 1 > 0x333333333333333)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v13 = 0x333333333333333;
  }

  else
  {
    v13 = v7;
  }

  v24 = a1;
  if (v13)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>>(a1, v13);
  }

  v21 = 0;
  v22 = 80 * v6;
  v23 = 80 * v6;
  v14 = *a2;
  CAStreamBasicDescription::CAStreamBasicDescription(v25, a3);
  ASDDSPStreamHelper::DSPStream::DSPStream(80 * v6, v14, v25, *a4, *a5, *a6);
  *&v23 = 80 * v6 + 80;
  v15 = *(a1 + 8);
  v16 = (80 * v6 + *a1 - v15);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>,ASDDSPStreamHelper::DSPStream*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = *(a1 + 16);
  v20 = v23;
  *(a1 + 8) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<ASDDSPStreamHelper::DSPStream>::~__split_buffer(&v21);
  return v20;
}

void sub_2415ED938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<ASDDSPStreamHelper::DSPStream>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASDDSPStreamHelper::DSPStream>,ASDDSPStreamHelper::DSPStream*>(uint64_t a1, ASDDSPStreamHelper::DSPStream *a2, const ASDDSPStreamHelper::DSPStream *a3, ASDDSPStreamHelper::DSPStream *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      ASDDSPStreamHelper::DSPStream::DSPStream(a4, v8);
      v8 = (v8 + 80);
      a4 = (a4 + 80);
      v7 -= 80;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      ASDDSPStreamHelper::DSPStream::~DSPStream(v6);
      v6 = (v6 + 80);
    }
  }
}

void sub_2415EDA24(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 80);
    do
    {
      ASDDSPStreamHelper::DSPStream::~DSPStream(v4);
      v4 = (v5 - 80);
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ASDDSPStreamHelper::DSPStream>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    ASDDSPStreamHelper::DSPStream::~DSPStream((i - 80));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ASDDSPStreamHelper::~ASDDSPStreamHelper(ASDDSPStreamHelper *this)
{
  std::mutex::~mutex((this + 304));
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }

  v9 = (this + 232);
  std::vector<ASDDSPStreamHelper::DSPStream>::__destroy_vector::operator()[abi:ne200100](&v9);
  v4 = *(this + 26);
  if (v4)
  {
    *(this + 27) = v4;
    operator delete(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    *(this + 24) = v5;
    operator delete(v5);
  }

  v9 = (this + 160);
  std::vector<ASDDSPStreamHelper::DSPStream>::__destroy_vector::operator()[abi:ne200100](&v9);
  v6 = *(this + 17);
  *(this + 17) = 0;
  if (v6)
  {
    std::default_delete<CABufferList>::operator()[abi:ne200100](this + 136, v6);
  }

  v7 = *(this + 11);
  *(this + 11) = 0;
  if (v7)
  {
    std::default_delete<CABufferList>::operator()[abi:ne200100](this + 88, v7);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    std::default_delete<CABufferList>::operator()[abi:ne200100](this + 40, v8);
  }
}

uint64_t std::vector<CAStreamBasicDescription>::__init_with_size[abi:ne200100]<CAStreamBasicDescription const*,CAStreamBasicDescription const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CAStreamBasicDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2415EDBD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = a2 % v2;
  if ((a2 % v2) >= 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(result + 8);
  }

  v5 = v3 + v4 - 3;
  v6 = 0xFFFFFFFFLL;
  v7 = 1;
  v8 = a2 % v2;
  do
  {
    v9 = v5;
    v10 = atomic_load((result + 16 + 8 * v8));
    if (v10 == -1)
    {
      if (v6 >= 0)
      {
        v6 = v6;
      }

      else
      {
        v6 = v8;
      }
    }

    else
    {
      if (!v10)
      {
        v7 = 0;
        if (v6 >= 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v8;
        }

        return v7 | (v8 << 32);
      }

      if (*(v10 + 8) == a2)
      {
        return v7 | (v8 << 32);
      }
    }

    if (v9 >= 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(result + 8);
    }

    v5 = (v9 + v11 - 3);
    v8 = v9;
  }

  while (v9 != v3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = 0;
    v8 = v6;
    return v7 | (v8 << 32);
  }

  __break(1u);
  return result;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::rehash();
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::rehash(unint64_t *a1, unsigned int a2)
{
  v3 = a1 + 1;
  v4 = atomic_load(a1 + 1);
  v5 = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::create(a1, a2);
  v6 = v5;
  if (v4)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::copyAllElementsTo(v4, v5);
    atomic_store(v6, v3);
    v8 = a1[4];
    v7 = a1[5];
    if (v8 >= v7)
    {
      v10 = a1[3];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      v23[4] = a1 + 3;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>((a1 + 3), v16);
      }

      v17 = (v8 - v10) >> 3;
      v18 = (8 * v12);
      v19 = (8 * v12 - 8 * v17);
      *v18 = v4;
      v9 = v18 + 1;
      memcpy(v19, v10, v11);
      v20 = a1[3];
      a1[3] = v19;
      a1[4] = v9;
      v21 = a1[5];
      a1[5] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::~__split_buffer(v23);
    }

    else
    {
      *v8 = v4;
      v9 = v8 + 1;
    }

    a1[4] = v9;
  }

  else
  {
    atomic_store(v5, v3);
  }

  return v6;
}

char *caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::create(uint64_t a1, unsigned int a2)
{
  result = operator new(8 * (a2 - 1) + 24);
  *result = a1;
  *(result + 2) = a2;
  if (a2)
  {
    v5 = (result + 16);
    v6 = a2 + 1;
    do
    {
      atomic_store(0, v5++);
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::copyAllElementsTo(unint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = (result + 16);
    v5 = a2 + 16;
    do
    {
      v6 = *v4;
      if (*v4 + 1 >= 2)
      {
        result = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(a2, *(v6 + 8));
        if ((result & 1) == 0)
        {
          atomic_fetch_add(v6, 0x10000u);
          atomic_store(v6, (v5 + 8 * HIDWORD(result)));
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>,0>(v5, (v4 - 8));
  }

  return result;
}

uint64_t std::list<ASDDSPGraphHelper>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::_addOrReplace(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  std::mutex::lock((a1 + 48));
  v8 = atomic_load((a1 + 8));
  v9 = *(a1 + 4) + 1;
  *(a1 + 4) = v9;
  if (v8)
  {
    v10 = 16 * v9;
    v11 = *(v8 + 8);
    if (v10 / v11 < 0xB)
    {
      goto LABEL_6;
    }

    v12 = 2 * v11;
  }

  else
  {
    v12 = 8;
  }

  v8 = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::rehash(a1, v12);
LABEL_6:
  v13 = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::addOrReplace(v8, a2, a3, a4);
  if (v13)
  {
    v14 = atomic_load((a1 + 16));
    if (v14 <= 0)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
    }
  }

  else
  {
    --*(a1 + 4);
  }

  std::mutex::unlock((a1 + 48));
  return v13;
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::addOrReplace(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::findSlotForKey(a1, a2);
  if ((SlotForKey & 1) == 0)
  {
    operator new();
  }

  if (a4)
  {
    *(v7 + 16) = a3;
  }

  return (SlotForKey & 1) == 0;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2415F3EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v15 = 0;
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
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

void sub_2415F413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *v15 = 0;
  (*(*v14 + 8))(v14);
  _Unwind_Resume(a1);
}

uint64_t DSPGraph::GraphFactory::createFormatMatchedGraphWithGraph(DSPGraph::Graph **a1, void *a2, void *a3)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3) == DSPGraph::Graph::numInputs(*a1) && 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3) == DSPGraph::Graph::numOutputs(*a1))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/DSP/DSPGraph_GraphFactory.cpp");
  std::string::basic_string[abi:ne200100]<0>(&v9, "createFormatMatchedGraphWithGraph");
  v5 = (*a1 + 408);
  if (*(*a1 + 431) < 0)
  {
    v5 = *v5;
  }

  v6 = (*(**a1 + 16))(*a1);
  DSPGraph::strprintf(v11, "%s %s number of graph busses must match the number of external formats.", v7, v5, v6);
  result = DSPGraph::ThrowException();
  __break(1u);
  return result;
}

void sub_2415F47F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void sub_2415F553C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415F5908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29)
{
  MEMORY[0x245CEB8C0](v29, 0x10A0C40218B55E4);
  if (__p)
  {
    operator delete(__p);
  }

  a29 = &a26;
  std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destroy_vector::operator()[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void sub_2415F5AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

ASDSRCStreamHelper *std::unique_ptr<ASDSRCStreamHelper>::reset[abi:ne200100](ASDSRCStreamHelper **a1, ASDSRCStreamHelper *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ASDSRCStreamHelper::~ASDSRCStreamHelper(result);

    JUMPOUT(0x245CEB8C0);
  }

  return result;
}

void std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>::destroy[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks,0>(a1, i))
  {
    i -= 3;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>::destroy[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks,0>(uint64_t a1, void **a2)
{
  v3 = *a2;
}

uint64_t std::vector<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__emplace_back_slow_path<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
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

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = MEMORY[0x245CEBEA0](*a2);
  *(v7 + 8) = MEMORY[0x245CEBEA0](a2[1]);
  *(v7 + 16) = MEMORY[0x245CEBEA0](a2[2]);
  *&v16 = v7 + 24;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::~__split_buffer(&v14);
  return v13;
}

void sub_2415F667C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0;
      v7[1] = 0;
      *a4 = v8;
      v9 = v7[2];
      v7[2] = 0;
      *(a4 + 16) = v9;
      v7 += 3;
      a4 += 24;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>::destroy[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks,0>(a1, v5);
      v5 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>,ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 3;
      std::allocator_traits<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>::destroy[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 24;
    std::allocator_traits<std::allocator<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks>>::destroy[abi:ne200100]<ASDSRCStreamHelper::ASDUnderlyingStreamDoIOOperationBlocks,0>(v5, (v4 - 24));
  }
}

void sub_2415F6B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415F6CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415F6E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415F6FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_2415F7118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415F7650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2415F78EC(_Unwind_Exception *a1)
{
  MEMORY[0x245CEB8C0](v2, 0x10F0C40C0A48933);

  _Unwind_Resume(a1);
}

ASDPluginInterfaceInfo *ASD_DestroyDriverInterface(ASDPluginInterfaceInfo *result)
{
  if (result)
  {
    result = *(result + 23);
    if (result)
    {
      ASDPluginInterfaceInfo::~ASDPluginInterfaceInfo(result);

      JUMPOUT(0x245CEB8C0);
    }
  }

  return result;
}

void ASD_SetRealtimeOperationTableSize(uint64_t a1, unsigned int a2)
{
  if (!*a1 || (v3 = *(*a1 + 184)) == 0)
  {
    ASD_SetRealtimeOperationTableSize_cold_1();
  }

  ASDPluginInterfaceInfo::setRealTimeOperationVectorSize(v3, a2);
}

void ASDPluginInterfaceInfo::setRealTimeOperationVectorSize(ASDPluginInterfaceInfo *this, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(this + 4);
      v7 = 138412546;
      v8 = v4;
      v9 = 1024;
      v10 = a2;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Setting realtime operation vectors to a capacity of %u elements.", &v7, 0x12u);
    }

    if (*(this + 18) > a2)
    {
      v5 = a2;
      do
      {
        ASDPluginInterfaceInfo::removeDeviceRealtimeOperations(this, v5);
        ASDPluginInterfaceInfo::removeStreamRealtimeOperations(this, v5++);
      }

      while (v5 < *(this + 18));
    }

    std::vector<ASDDeviceRealTimeOperations *>::resize(this + 24, a2);
    *(this + 27) = *(this + 24);
    std::vector<ASDDeviceRealTimeOperations *>::resize(this + 42, a2);
    *(this + 45) = *(this + 42);
    *(this + 18) = a2;
  }

  else if (*(this + 18))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ASDPluginInterfaceInfo::setRealTimeOperationVectorSize(this);
    }

    __assert_rtn("setRealTimeOperationVectorSize", "ASDInterface.mm", 235, "0");
  }

  v6 = *MEMORY[0x277D85DE8];
}

void ASD_AddAudioDeviceRealTimeOperations(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1)
  {
    if (*(*a1 + 184))
    {
      operator new();
    }
  }

  __assert_rtn("ASD_AddAudioDeviceRealTimeOperations", "ASDInterface.mm", 476, "pluginInfo");
}

BOOL ASDPluginInterfaceInfo::addDeviceRealtimeOperations(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Adding realtime operations for device with objectID %u", &v10, 0x12u);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    if (v7 <= a2)
    {
      result = 0;
    }

    else
    {
      *(*(a1 + 216) + 8 * a2) = a3;
      result = 1;
    }
  }

  else
  {
    result = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::_addOrReplace(a1 + 80, a2, a3, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void ASD_RemoveAudioDeviceRealTimeOperations(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*a1 || (v3 = *(*a1 + 184)) == 0)
  {
    __assert_rtn("ASD_RemoveAudioDeviceRealTimeOperations", "ASDInterface.mm", 499, "pluginInfo");
  }

  ASDPluginInterfaceInfo::removeDeviceRealtimeOperations(v3, [v5 objectID]);
  if ((v4 & 1) == 0)
  {
    __assert_rtn("ASD_RemoveAudioDeviceRealTimeOperations", "ASDInterface.mm", 502, "success");
  }
}

void ASDPluginInterfaceInfo::removeDeviceRealtimeOperations(ASDPluginInterfaceInfo *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 4);
    v9 = 138412546;
    v10 = v4;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Removing realtime operations for device with objectID %u", &v9, 0x12u);
  }

  v5 = ASDPluginInterfaceInfo::deviceRealtimeOperationsForObject(this, a2);
  if (v5)
  {
    v6 = v5;
    if (*(this + 18))
    {
      *(*(this + 27) + 8 * a2) = 0;
LABEL_7:

      MEMORY[0x245CEB8C0](v6, 0x80C40FDC59921);
      goto LABEL_8;
    }

    caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::remove(this + 80, a2);
    if (v7)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

void ASD_AddClockDeviceRealTimeOperations(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1)
  {
    if (*(*a1 + 184))
    {
      operator new();
    }
  }

  __assert_rtn("ASD_AddClockDeviceRealTimeOperations", "ASDInterface.mm", 508, "pluginInfo");
}

void ASD_RemoveClockDeviceRealTimeOperations(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*a1 || (v3 = *(*a1 + 184)) == 0)
  {
    __assert_rtn("ASD_RemoveClockDeviceRealTimeOperations", "ASDInterface.mm", 531, "pluginInfo");
  }

  ASDPluginInterfaceInfo::removeDeviceRealtimeOperations(v3, [v5 objectID]);
  if ((v4 & 1) == 0)
  {
    __assert_rtn("ASD_RemoveClockDeviceRealTimeOperations", "ASDInterface.mm", 534, "success");
  }
}

void ASD_AddStreamRealTimeOperations(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*a1)
  {
    if (*(*a1 + 184))
    {
      operator new();
    }
  }

  __assert_rtn("ASD_AddStreamRealTimeOperations", "ASDInterface.mm", 540, "pluginInfo");
}

BOOL ASDPluginInterfaceInfo::addStreamRealtimeOperations(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Adding realtime operations for stream with objectID %u", &v10, 0x12u);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    if (v7 <= a2)
    {
      result = 0;
    }

    else
    {
      *(*(a1 + 360) + 8 * a2) = a3;
      result = 1;
    }
  }

  else
  {
    result = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::_addOrReplace(a1 + 224, a2, a3, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void ASD_RemoveStreamRealTimeOperations(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!*a1 || (v3 = *(*a1 + 184)) == 0)
  {
    __assert_rtn("ASD_RemoveStreamRealTimeOperations", "ASDInterface.mm", 561, "pluginInfo");
  }

  ASDPluginInterfaceInfo::removeStreamRealtimeOperations(v3, [v5 objectID]);
  if ((v4 & 1) == 0)
  {
    __assert_rtn("ASD_RemoveStreamRealTimeOperations", "ASDInterface.mm", 564, "success");
  }
}

void ASDPluginInterfaceInfo::removeStreamRealtimeOperations(ASDPluginInterfaceInfo *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 4);
    v9 = 138412546;
    v10 = v4;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: Removing realtime operations for stream with objectID %u", &v9, 0x12u);
  }

  v5 = ASDPluginInterfaceInfo::streamRealtimeOperationsForObject(this, a2);
  if (v5)
  {
    v6 = v5;
    if (*(this + 18))
    {
      *(*(this + 45) + 8 * a2) = 0;
LABEL_7:

      MEMORY[0x245CEB8C0](v6, 0x80C40A1CEA83ALL);
      goto LABEL_8;
    }

    caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::remove(this + 224, a2);
    if (v7)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t ASD_QueryInterface(void *a1, CFUUIDBytes a2, void **a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*a1 || (v3 = *(*a1 + 184)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "!pluginInterfaceInfo";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 631;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
    }

    v13 = 560947818;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v14 = MEMORY[0x277D86220];
    goto LABEL_15;
  }

  v5 = *&a2.byte8;
  v6 = *&a2.byte0;
  WeakRetained = objc_loadWeakRetained((v3 + 24));
  if (!WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "!plugin";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 634;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
    }

    v13 = 560947818;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v14 = MEMORY[0x277D86220];
LABEL_15:
    _os_log_impl(&dword_2415D8000, v14, OS_LOG_TYPE_DEFAULT, "ASD_QueryInterface: ASD driver reference\n", buf, 2u);
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v8 = WeakRetained;
  if (a3)
  {
    *&v28.byte0 = v6;
    *&v28.byte8 = v5;
    v9 = CFUUIDCreateFromUUIDBytes(0, v28);
    if (v9)
    {
      v10 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
      if (CFEqual(v9, v10) || (v11 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u), CFEqual(v9, v11)))
      {
        [v8 addRef];
        v12 = 48;
      }

      else
      {
        v19 = CFUUIDGetConstantUUIDWithBytes(0, 0xD9u, 0x1Fu, 0x5Fu, 0x7Cu, 0x44u, 0x8Bu, 0x45u, 0xE9u, 0x8Cu, 0xDCu, 6u, 0xE6u, 0x69u, 0x78u, 0x95u, 0xAu);
        if (CFEqual(v9, v19))
        {
          [v8 addRef];
          v12 = 56;
        }

        else
        {
          v20 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0x92u, 0xB9u, 0x78u, 0x25u, 0xB0u, 0x4Du, 0x59u, 0xA7u, 0xB7u, 0xD1u, 0x45u, 0xCEu, 0x52u, 0x72u, 0x19u);
          if (!CFEqual(v9, v20))
          {
            v13 = 2147483652;
            goto LABEL_10;
          }

          [v8 addRef];
          v12 = 64;
        }
      }

      v13 = 0;
      *a3 = *(v3 + v12);
LABEL_10:
      CFRelease(v9);
      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "theRequestedUUID == NULL";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 639;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
    }

    v13 = 1852797029;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = MEMORY[0x277D86220];
      v18 = "ASD_QueryInterface: failed to create the CFUUIDRef\n";
      goto LABEL_30;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "outInterface == NULL";
      v23 = 2080;
      v24 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v25 = 1024;
      v26 = 635;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", buf, 0x1Cu);
    }

    v13 = 1852797029;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = MEMORY[0x277D86220];
      v18 = "ASD_QueryInterface: no place to store the returned interface\n";
LABEL_30:
      _os_log_impl(&dword_2415D8000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    }
  }

LABEL_17:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t ASD_AddRef(AudioServerPlugInDriverInterface **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = getASDPlugin(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 addRef];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "!plugin";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v10 = 1024;
      v11 = 683;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v6, 0x1Cu);
    }

    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_AddRef: ASD driver reference\n", &v6, 2u);
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ASD_Release(AudioServerPlugInDriverInterface **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = getASDPlugin(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 removeRef];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "!plugin";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v10 = 1024;
      v11 = 703;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v6, 0x1Cu);
    }

    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_Release: ASD driver reference\n", &v6, 2u);
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ASD_Initialize(AudioServerPlugInDriverInterface **a1, const AudioServerPlugInHostInterface *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = getASDPlugin(a1);
  v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v5)
    {
      v9 = 134217984;
      v10 = a1;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_Initialize driver %p\n", &v9, 0xCu);
    }

    [v4 halInitializeWithPluginHost:a2];
    v6 = 0;
  }

  else
  {
    if (v5)
    {
      v9 = 136315650;
      v10 = "!plugin";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v13 = 1024;
      v14 = 731;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v9, 0x1Cu);
    }

    v6 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_Initialize: ASD driver reference\n", &v9, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t ASD_AddDeviceClient(AudioServerPlugInDriverInterface **a1, uint64_t a2, const AudioServerPlugInClientInfo *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  v7 = getASDPlugin(a1);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v10 = [v9 addClient:a3];
    }

    else
    {
      v10 = 560227702;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "!plugin";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v17 = 1024;
      v18 = 794;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v13, 0x1Cu);
    }

    v10 = 560947818;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_AddDeviceClient: ASD driver reference\n", &v13, 2u);
    }

    v9 = 0;
  }

  objc_autoreleasePoolPop(v6);

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t ASD_AbortDeviceConfigurationChange(AudioServerPlugInDriverInterface **a1, uint64_t a2, unint64_t a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = getASDPlugin(a1);
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = 1970171760;
      if (a4)
      {
        objc_opt_class();
        objc_opt_isKindOfClass();
        v12 = v10;
        [v10 abortConfigurationChange:a4];
        goto LABEL_13;
      }
    }

    else
    {
      v11 = 560227702;
    }

    v12 = v10;
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "!plugin";
    v17 = 2080;
    v18 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
    v19 = 1024;
    v20 = 936;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v15, 0x1Cu);
  }

  v11 = 560947818;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_AbortDeviceConfigurationChange: ASD driver reference\n", &v15, 2u);
  }

  v12 = 0;
LABEL_13:
  objc_autoreleasePoolPop(v7);

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ASD_IsolatedAddRef(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a1 && (v1 = *(*a1 + 56)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v3 = [WeakRetained addRef];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "!pluginInterfaceInfo";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v10 = 1024;
      v11 = 1576;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v6, 0x1Cu);
    }

    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_IsolatedAddRef: ASD driver reference\n", &v6, 2u);
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ASD_IsolatedRelease(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a1 && (v1 = *(*a1 + 56)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v3 = [WeakRetained removeRef];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "!pluginInterfaceInfo";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v10 = 1024;
      v11 = 1593;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v6, 0x1Cu);
    }

    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_IsolatedRelease: ASD driver reference\n", &v6, 2u);
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ASD_SetupForIsolatedIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v9 = getASDPlugin(a1);
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v9 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v9 objectForObjectID:a3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v11 setupIsolatedIOForStream:v12 frameSize:a4 useCase:a5];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315650;
          v17 = "![stream isKindOfClass:[ASDStream class]]";
          v18 = 2080;
          v19 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
          v20 = 1024;
          v21 = 1624;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v16, 0x1Cu);
        }

        v13 = 560947818;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_SetupForIsolatedIO: Bad stream object ID\n", &v16, 2u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = "![device isKindOfClass:[ASDAudioDevice class]]";
        v18 = 2080;
        v19 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
        v20 = 1024;
        v21 = 1619;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v16, 0x1Cu);
      }

      v13 = 560947818;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_SetupForIsolatedIO: Bad device object ID\n", &v16, 2u);
      }

      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "!plugin";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v20 = 1024;
      v21 = 1610;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v16, 0x1Cu);
    }

    v13 = 2003329396;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_SetupForIsolatedIO: ASD driver reference\n", &v16, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id getASDPlugin(uint64_t a1)
{
  if (*a1 && (v2 = *(*a1 + 56)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

uint64_t ASD_TeardownForIsolatedIO(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = getASDPlugin(a1);
  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v7 objectForObjectID:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 objectForObjectID:a3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 teardownIsolatedIOForStream:v10 useCase:a4];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315650;
          v15 = "![stream isKindOfClass:[ASDStream class]]";
          v16 = 2080;
          v17 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
          v18 = 1024;
          v19 = 1657;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v14, 0x1Cu);
        }

        v11 = 560947818;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_TeardownForIsolatedIO: Bad stream object ID\n", &v14, 2u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = "![device isKindOfClass:[ASDAudioDevice class]]";
        v16 = 2080;
        v17 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
        v18 = 1024;
        v19 = 1652;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIfWithAction %s failed in %s at line %d goto Done. ", &v14, 0x1Cu);
      }

      v11 = 560947818;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_TeardownForIsolatedIO: Bad device object ID\n", &v14, 2u);
      }

      v10 = 0;
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "!plugin";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v18 = 1024;
      v19 = 1643;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v14, 0x1Cu);
    }

    v11 = 2003329396;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_SetupForIsolatedIO: ASD driver reference\n", &v14, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t ASD_DoIsolatedIOOperation(uint64_t *a1, int a2, unsigned int a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!*a1 || (v6 = *(v5 + 56)) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "!pluginInterfaceInfo";
      v18 = 2080;
      v19 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v20 = 1024;
      v21 = 1677;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v16, 0x1Cu);
    }

    v10 = 1852797029;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_DoIsolatedIOOperation: ASD driver reference\n", &v16, 2u);
    }

    goto LABEL_14;
  }

  v8 = *(v6 + 40);
  v9 = ASDPluginInterfaceInfo::streamRealtimeOperationsForObject(*(v5 + 56), a3);
  if (!v9)
  {
    v10 = 561214578;
LABEL_14:
    v15 = *MEMORY[0x277D85DE8];
    return v10;
  }

  v10 = 1852797029;
  if (a5 != 1919246692)
  {
    goto LABEL_14;
  }

  v11 = **(v9 + 72);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *(v11 + 16);
  v13 = *MEMORY[0x277D85DE8];

  return v12();
}

uint64_t ASD_IOThreadStateChangeAddRef(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a1 && (v1 = *(*a1 + 40)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v3 = [WeakRetained addRef];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "!pluginInterfaceInfo";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v10 = 1024;
      v11 = 1722;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v6, 0x1Cu);
    }

    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_IOThreadStateChangeAddRef: ASD driver reference\n", &v6, 2u);
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t ASD_IOThreadStateChangeRelease(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a1 && (v1 = *(*a1 + 40)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
    v3 = [WeakRetained removeRef];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "!pluginInterfaceInfo";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AudioServerDriver/AudioServerDriver/ASDInterface.mm";
      v10 = 1024;
      v11 = 1739;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " AudioServerDriver assertion FailIf %s failed in %s at line %d goto Done. ", &v6, 0x1Cu);
    }

    v3 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASD_IOThreadStateChangeRelease: ASD driver reference\n", &v6, 2u);
      v3 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_2415FA470(_Unwind_Exception *a1)
{
  v6 = v2[42];
  if (v6)
  {
    v2[43] = v6;
    operator delete(v6);
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::~guarded_lookup_hash_table((v2 + 28));
  v7 = v2[24];
  if (v7)
  {
    v2[25] = v7;
    operator delete(v7);
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::~guarded_lookup_hash_table((v2 + 10));

  objc_destroyWeak(v3);
  _Unwind_Resume(a1);
}

void ASDDriverInterface::ASDDriverInterface(ASDDriverInterface *this, ASDPluginInterfaceInfo *a2)
{
  *this = 0;
  *(this + 1) = ASD_QueryInterface;
  *(this + 2) = ASD_AddRef;
  *(this + 3) = ASD_Release;
  *(this + 4) = ASD_Initialize;
  *(this + 5) = ASD_CreateDevice;
  *(this + 6) = ASD_DestroyDevice;
  *(this + 7) = ASD_AddDeviceClient;
  *(this + 8) = ASD_RemoveDeviceClient;
  *(this + 9) = ASD_PerformDeviceConfigurationChange;
  *(this + 10) = ASD_AbortDeviceConfigurationChange;
  *(this + 11) = ASD_HasProperty;
  *(this + 12) = ASD_IsPropertySettable;
  *(this + 13) = ASD_GetPropertyDataSize;
  *(this + 14) = ASD_GetPropertyData;
  *(this + 15) = ASD_SetPropertyData;
  *(this + 16) = ASD_StartIO;
  *(this + 17) = ASD_StopIO;
  *(this + 18) = ASD_GetZeroTimeStamp;
  *(this + 19) = ASD_WillDoIOOperation;
  *(this + 20) = ASD_BeginIOOperation;
  *(this + 21) = ASD_DoIOOperation;
  *(this + 22) = ASD_EndIOOperation;
  *(this + 23) = a2;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    v6 = _os_crash();
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::~guarded_lookup_hash_table(v6);
  }

  v3 = atomic_load((a1 + 8));
  if (v3)
  {
    v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::~table_impl(v3);
    MEMORY[0x245CEB8C0](v4, 0x1060C402CF69088);
  }

  std::mutex::~mutex((a1 + 48));
  v7 = (a1 + 24);
  std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (!atomic_load(result))
    {

      JUMPOUT(0x245CEB8C0);
    }

    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::element_t::release();
  }

  return result;
}

void std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>,0>(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::~table_impl(result);

    JUMPOUT(0x245CEB8C0);
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    v6 = _os_crash();
    caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::~guarded_lookup_hash_table(v6);
  }

  v3 = atomic_load((a1 + 8));
  if (v3)
  {
    v4 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::~table_impl(v3);
    MEMORY[0x245CEB8C0](v4, 0x1060C402CF69088);
  }

  std::mutex::~mutex((a1 + 48));
  v7 = (a1 + 24);
  std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

void std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>,0>(v3, i))
  {
    --i;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>,0>(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::~table_impl(result);

    JUMPOUT(0x245CEB8C0);
  }

  return result;
}

void ASDPluginInterfaceInfo::~ASDPluginInterfaceInfo(ASDPluginInterfaceInfo *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x245CEB8C0](v2, 0xA0C40F73F3A8ELL);
  }

  v3 = *(this + 1);
  if (v3)
  {
    MEMORY[0x245CEB8C0](v3, 0xA0C4086DBBAE0);
  }

  v4 = *(this + 2);
  if (v4)
  {
    MEMORY[0x245CEB8C0](v4, 0xA0C40CE99C112);
  }

  v5 = *(this + 42);
  if (v5)
  {
    *(this + 43) = v5;
    operator delete(v5);
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::~guarded_lookup_hash_table(this + 224);
  v6 = *(this + 24);
  if (v6)
  {
    *(this + 25) = v6;
    operator delete(v6);
  }

  caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::~guarded_lookup_hash_table(this + 80);

  objc_destroyWeak(this + 3);
}

void std::vector<ASDDeviceRealTimeOperations *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<ASDDeviceRealTimeOperations *>::__append(a1, a2 - v2);
  }
}

void std::vector<ASDDeviceRealTimeOperations *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::_addOrReplace(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  std::mutex::lock((a1 + 48));
  v8 = atomic_load((a1 + 8));
  v9 = *(a1 + 4) + 1;
  *(a1 + 4) = v9;
  if (v8)
  {
    v10 = 16 * v9;
    v11 = *(v8 + 8);
    if (v10 / v11 < 0xB)
    {
      goto LABEL_6;
    }

    v12 = 2 * v11;
  }

  else
  {
    v12 = 8;
  }

  v8 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::rehash(a1, v12);
LABEL_6:
  v13 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::addOrReplace(v8, a2, a3, a4);
  if (v13)
  {
    v14 = atomic_load((a1 + 16));
    if (v14 <= 0)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
    }
  }

  else
  {
    --*(a1 + 4);
  }

  std::mutex::unlock((a1 + 48));
  return v13;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::rehash(unint64_t *a1, unsigned int a2)
{
  v3 = a1 + 1;
  v4 = atomic_load(a1 + 1);
  v5 = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::create(a1, a2);
  v6 = v5;
  if (v4)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::copyAllElementsTo(v4, v5);
    atomic_store(v6, v3);
    v8 = a1[4];
    v7 = a1[5];
    if (v8 >= v7)
    {
      v10 = a1[3];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      v23[4] = a1 + 3;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>((a1 + 3), v16);
      }

      v17 = (v8 - v10) >> 3;
      v18 = (8 * v12);
      v19 = (8 * v12 - 8 * v17);
      *v18 = v4;
      v9 = v18 + 1;
      memcpy(v19, v10, v11);
      v20 = a1[3];
      a1[3] = v19;
      a1[4] = v9;
      v21 = a1[5];
      a1[5] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::~__split_buffer(v23);
    }

    else
    {
      *v8 = v4;
      v9 = v8 + 1;
    }

    a1[4] = v9;
  }

  else
  {
    atomic_store(v5, v3);
  }

  return v6;
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::addOrReplace(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(a1, a2);
  if ((SlotForKey & 1) == 0)
  {
    operator new();
  }

  if (a4)
  {
    *(v7 + 8) = a3;
  }

  return (SlotForKey & 1) == 0;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::copyAllElementsTo(unint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v4 = (result + 16);
    v5 = a2 + 16;
    do
    {
      v6 = *v4;
      if (*v4 + 1 >= 2)
      {
        result = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(a2, *(v6 + 4));
        if ((result & 1) == 0)
        {
          atomic_fetch_add(v6, 0x10000u);
          atomic_store(v6, (v5 + 8 * HIDWORD(result)));
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>,0>(v5, (v4 - 8));
  }

  return result;
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::remove(uint64_t a1, unsigned int a2)
{
  v18 = (a1 + 48);
  v19 = 1;
  std::mutex::lock((a1 + 48));
  v4 = atomic_load((a1 + 8));
  if (v4)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(v4, a2);
    if (SlotForKey)
    {
      v7 = v6;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v4 + 8 * HIDWORD(SlotForKey) + 16));
      if (v6)
      {
        v8 = atomic_load((a1 + 16));
        if (v8 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v9 = atomic_load((a1 + 16));
          }

          while (v9 > 0);
        }

        if (atomic_load(v7))
        {
          std::mutex::unlock(v18);
          v19 = 0;
          while (atomic_load(v7))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v18);
          v4 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::element_t::release(v7);
        v13 = *(a1 + 4) - 1;
        *(a1 + 4) = v13;
        if (v4)
        {
          v14 = 16 * v13;
          v15 = *(v4 + 8);
          if (v14 / v15 <= 2 && v15 >= 9)
          {
            caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::rehash(a1, v15 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
  }

  if (v19 == 1)
  {
    std::mutex::unlock(v18);
  }
}

void sub_2415FB17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::_addOrReplace(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  std::mutex::lock((a1 + 48));
  v8 = atomic_load((a1 + 8));
  v9 = *(a1 + 4) + 1;
  *(a1 + 4) = v9;
  if (v8)
  {
    v10 = 16 * v9;
    v11 = *(v8 + 8);
    if (v10 / v11 < 0xB)
    {
      goto LABEL_6;
    }

    v12 = 2 * v11;
  }

  else
  {
    v12 = 8;
  }

  v8 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::rehash(a1, v12);
LABEL_6:
  v13 = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::addOrReplace(v8, a2, a3, a4);
  if (v13)
  {
    v14 = atomic_load((a1 + 16));
    if (v14 <= 0)
    {
      std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
    }
  }

  else
  {
    --*(a1 + 4);
  }

  std::mutex::unlock((a1 + 48));
  return v13;
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::rehash(unint64_t *a1, unsigned int a2)
{
  v3 = a1 + 1;
  v4 = atomic_load(a1 + 1);
  v5 = caulk::concurrent::guarded_lookup_hash_table<unsigned long long,ASDDSPGraphHelper *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned long long>>::table_impl::create(a1, a2);
  v6 = v5;
  if (v4)
  {
    caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::copyAllElementsTo(v4, v5);
    atomic_store(v6, v3);
    v8 = a1[4];
    v7 = a1[5];
    if (v8 >= v7)
    {
      v10 = a1[3];
      v11 = v8 - v10;
      v12 = (v8 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<CAStreamBasicDescription>::__throw_length_error[abi:ne200100]();
      }

      v14 = v7 - v10;
      if (v14 >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      v15 = v14 >= 0x7FFFFFFFFFFFFFF8;
      v16 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v15)
      {
        v16 = v13;
      }

      v23[4] = a1 + 3;
      if (v16)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<RamstadSRC *>>((a1 + 3), v16);
      }

      v17 = (v8 - v10) >> 3;
      v18 = (8 * v12);
      v19 = (8 * v12 - 8 * v17);
      *v18 = v4;
      v9 = v18 + 1;
      memcpy(v19, v10, v11);
      v20 = a1[3];
      a1[3] = v19;
      a1[4] = v9;
      v21 = a1[5];
      a1[5] = 0;
      v23[2] = v20;
      v23[3] = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::~__split_buffer(v23);
    }

    else
    {
      *v8 = v4;
      v9 = v8 + 1;
    }

    a1[4] = v9;
  }

  else
  {
    atomic_store(v5, v3);
  }

  return v6;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 8;
    result = std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>,0>(v5, (v4 - 8));
  }

  return result;
}

void caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::remove(uint64_t a1, unsigned int a2)
{
  v18 = (a1 + 48);
  v19 = 1;
  std::mutex::lock((a1 + 48));
  v4 = atomic_load((a1 + 8));
  if (v4)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDDeviceRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl::findSlotForKey(v4, a2);
    if (SlotForKey)
    {
      v7 = v6;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v4 + 8 * HIDWORD(SlotForKey) + 16));
      if (v6)
      {
        v8 = atomic_load((a1 + 16));
        if (v8 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v9 = atomic_load((a1 + 16));
          }

          while (v9 > 0);
        }

        if (atomic_load(v7))
        {
          std::mutex::unlock(v18);
          v19 = 0;
          while (atomic_load(v7))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v18);
          v4 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::element_t::release(v7);
        v13 = *(a1 + 4) - 1;
        *(a1 + 4) = v13;
        if (v4)
        {
          v14 = 16 * v13;
          v15 = *(v4 + 8);
          if (v14 / v15 <= 2 && v15 >= 9)
          {
            caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::rehash(a1, v15 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<unsigned int,ASDStreamRealTimeOperations *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<unsigned int>>::table_impl>>>::__base_destruct_at_end[abi:ne200100](a1 + 24, *(a1 + 24));
  }

  if (v19 == 1)
  {
    std::mutex::unlock(v18);
  }
}

void sub_2415FB5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 ASD_U128::operator*@<Q0>(unint64_t *a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  v8 = HIDWORD(v4);
  v9 = v4;
  v10 = HIDWORD(v6);
  v11 = v6 * v4;
  v12 = HIDWORD(v6) * v4 + v6 * HIDWORD(v4);
  v13 = __CFADD__(v11, v12 << 32);
  v14 = v11 + (v12 << 32);
  v15 = HIDWORD(v6) * HIDWORD(v4) + v13 + HIDWORD(v12);
  v16 = HIDWORD(v5);
  v17 = v5;
  v18 = HIDWORD(v7);
  v19 = v7 * v5;
  v20 = HIDWORD(v7) * v5 + v7 * HIDWORD(v5);
  v13 = __CFADD__(v19, v20 << 32);
  v21 = v19 + (v20 << 32);
  v22 = HIDWORD(v7) * HIDWORD(v5) + v13 + HIDWORD(v20);
  v23 = v7 * v4;
  v24 = HIDWORD(v7) * v9 + v7 * v8;
  v25 = HIDWORD(v24);
  v13 = __CFADD__(v23, v24 << 32);
  v26 = v23 + (v24 << 32);
  v27 = v13;
  v28 = v6 * v5;
  v29 = HIDWORD(v6) * v17 + v6 * v16;
  v38[2] = v14;
  v38[3] = v15;
  v38[0] = 0;
  v38[1] = 0;
  v37 = 0;
  v35 = 0;
  v36 = __PAIR128__(v27, v26) + __PAIR128__(v25, v28) + __PAIR128__(v10 * v16 + v18 * v8 + HIDWORD(v29), v29 << 32);
  v34[2] = 0;
  v34[3] = 0;
  v34[0] = v21;
  v34[1] = v22;
  ASD_U256::operator+(v38, &v35, &v32);
  v30 = v33;
  *a3 = v32;
  a3[1] = v30;
  ASD_U256::operator+(a3, v34, &v32);
  result = v33;
  *a3 = v32;
  a3[1] = result;
  return result;
}

uint64_t ASD_U128::operator/(uint64_t *a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  result = *a1;
  v7 = a1[1];
  v10 = a2;
  v8 = *a2;
  v9 = v10[1];
  v11 = 128;
  do
  {
    v12 = result;
    *(&v13 + 1) = v5;
    *&v13 = v4;
    v5 = v13 >> 63;
    *(&v13 + 1) = v4;
    *&v13 = v7;
    v4 = v13 >> 63;
    result *= 2;
    v14 = v5 - v9;
    if (v5 > v9 || v5 == v9 && v4 >= v8)
    {
      v15 = v4 >= v8;
      v4 -= v8;
      v16 = !v15;
      v5 = v14 - v16;
      result |= 1uLL;
    }

    *(&v17 + 1) = v7;
    *&v17 = v12;
    v7 = v17 >> 63;
    --v11;
  }

  while (v11);
  return result;
}

double operator*@<D0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4[0] = a2;
  v4[1] = 0;
  *&result = ASD_U128::operator*(a1, v4, a3).n128_u64[0];
  return result;
}

double operator*@<D0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4[0] = a1;
  v4[1] = 0;
  *&result = ASD_U128::operator*(v4, a2, a3).n128_u64[0];
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2415FE430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_2415FE7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}