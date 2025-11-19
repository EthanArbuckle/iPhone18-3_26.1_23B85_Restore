uint64_t CloseAllHandles(uint64_t result, uint64_t (*a2)(unint64_t))
{
  v2 = g_apHObjs[result];
  if (v2)
  {
    v3 = result;
    v4 = g_adwHandles[result];
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        if (a2)
        {
          if (*v2)
          {
            result = a2(i);
            v4 = g_adwHandles[v3];
          }
        }

        v2 += 19;
      }
    }
  }

  return result;
}

uint64_t CreateHandle(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v4 = a2;
    v5 = (&g_axHandles + 64 * a2);
    pthread_mutex_lock(v5);
    if (g_adwReaders[a2])
    {
      do
      {
        pthread_cond_wait(&g_acHandles + v4, v5);
      }

      while (g_adwReaders[v4]);
    }

    v6 = g_adwHeads[v4];
    if (v6 == g_adwHandles[v4])
    {
      v7 = v6 + 8;
      v8 = malloc_type_malloc(152 * (v6 + 8), 0x10800408174B0CEuLL);
      if (!v8)
      {
        v15 = 0xFFFFFFFFLL;
        goto LABEL_16;
      }

      v9 = v8;
      v10 = g_apHObjs[v4];
      v11 = g_adwHandles[v4];
      memcpy(v8, v10, 152 * v11);
      bzero(&v9[152 * v11], 0x4C0uLL);
      if (v11 < v7)
      {
        v12 = &v9[152 * v11 + 104];
        v13 = v6 - v11 + 8;
        v14 = v11 + 1;
        do
        {
          v12[-2].__sig = v14;
          pthread_mutex_init(&v12[-2].__opaque[24], 0);
          pthread_cond_init(v12, 0);
          v12 = (v12 + 152);
          ++v14;
          --v13;
        }

        while (v13);
        v10 = g_apHObjs[v4];
      }

      g_apHObjs[v4] = v9;
      g_adwHandles[v4] = v7;
      g_adwTails[v4] = v6 + 7;
      if (v10)
      {
        free(v10);
      }
    }

    else
    {
      v9 = g_apHObjs[v4];
    }

    v15 = g_adwHeads[v4];
    v16 = &v9[152 * v15];
    g_adwHeads[v4] = *(v16 + 1);
    v17 = g_adwNumHandles[v4];
    *v16 = a1;
    g_adwNumHandles[v4] = v17 + 1;
    pthread_cond_broadcast(&g_acHandles + v4);
LABEL_16:
    pthread_mutex_unlock(v5);
    return v15;
  }

  return 0xFFFFFFFFLL;
}

uint64_t CheckInHandleDebug(unint64_t a1, unsigned int a2, uint64_t a3)
{
  if (g_adwHandles[a2] <= a1)
  {
    return 0;
  }

  v5 = a2;
  v6 = (&g_axHandles + 64 * a2);
  pthread_mutex_lock(v6);
  ++g_adwReaders[v5];
  pthread_mutex_unlock(v6);
  v7 = g_apHObjs[v5] + 152 * a1;
  pthread_mutex_lock((v7 + 40));
  v8 = *v7;
  if (*v7 && a3)
  {
    if (a3 == 1)
    {
      ++*(v7 + 16);
    }

    else
    {
      if (a3 == 128)
      {
        *v7 = 0;
        --g_adwNumHandles[v5];
        goto LABEL_13;
      }

      v9 = *(v7 + 24);
      if ((v9 & a3) != 0)
      {
        v8 = 0xFFFFFFFFLL;
        goto LABEL_13;
      }

      *(v7 + 24) = v9 | a3;
    }

    *(v7 + 32) = 1;
  }

LABEL_13:
  pthread_mutex_unlock((v7 + 40));
  pthread_mutex_lock(v6);
  v10 = g_adwReaders[v5] - 1;
  g_adwReaders[v5] = v10;
  if (!v10)
  {
    pthread_cond_broadcast(&g_acHandles + v5);
  }

  pthread_mutex_unlock(v6);
  return v8;
}

unint64_t CheckOutHandleDebug(unint64_t result, unsigned int a2, uint64_t a3)
{
  if (g_adwHandles[a2] <= result)
  {
    return result;
  }

  v4 = result;
  v5 = a2;
  v6 = (&g_axHandles + 64 * a2);
  pthread_mutex_lock(v6);
  ++g_adwReaders[v5];
  result = pthread_mutex_unlock(v6);
  if (!a3)
  {
    return result;
  }

  v7 = g_apHObjs[v5];
  if (a3 != 128)
  {
    v12 = v7 + 152 * v4;
    pthread_mutex_lock((v12 + 40));
    if (a3 == 1)
    {
      v13 = *(v12 + 24);
      --*(v12 + 16);
      if (!v13)
      {
LABEL_19:
        if (!*(v12 + 16))
        {
          *(v12 + 32) = 0;
          pthread_cond_signal((v12 + 104));
        }
      }
    }

    else
    {
      v14 = *(v12 + 24) & ~a3;
      *(v12 + 24) = v14;
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    pthread_mutex_unlock((v12 + 40));
    pthread_mutex_lock(v6);
    v15 = g_adwReaders[v5] - 1;
    g_adwReaders[v5] = v15;
    if (!v15)
    {
      pthread_cond_broadcast(&g_acHandles + v5);
    }

    goto LABEL_23;
  }

  v8 = v7 + 152 * v4;
  pthread_mutex_lock((v8 + 40));
  while (*(v8 + 32))
  {
    pthread_cond_wait((v8 + 104), (v8 + 40));
  }

  *v8 = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  pthread_mutex_unlock((v8 + 40));
  pthread_mutex_lock(v6);
  v9 = g_adwReaders[v5] - 1;
  g_adwReaders[v5] = v9;
  if (!v9)
  {
    pthread_cond_broadcast(&g_acHandles + v5);
  }

  pthread_mutex_unlock(v6);
  pthread_mutex_lock(v6);
  while (g_adwReaders[v5])
  {
    pthread_cond_wait(&g_acHandles + v5, v6);
  }

  v10 = &g_adwHeads[v5];
  v11 = g_adwHandles[v5];
  if (*v10 != v11)
  {
    v10 = (v7 + 152 * g_adwTails[v5] + 8);
  }

  *v10 = v4;
  g_adwTails[v5] = v4;
  *(v8 + 8) = v11;
LABEL_23:

  return pthread_mutex_unlock(v6);
}

uint64_t FindHandle(unsigned int a1, unsigned int (*a2)(void, uint64_t, unint64_t), uint64_t a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1;
  v7 = (&g_axHandles + 64 * a1);
  pthread_mutex_lock(v7);
  ++g_adwReaders[a1];
  pthread_mutex_unlock(v7);
  v8 = g_adwHandles[a1];
  if (v8)
  {
    v9 = 0;
    v10 = g_apHObjs[a1];
    while (1)
    {
      if (*v10)
      {
        if (a2(*v10, a3, v9))
        {
          v12 = 1;
          goto LABEL_13;
        }

        v8 = g_adwHandles[v6];
      }

      ++v9;
      v10 += 19;
      if (v9 >= v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = 0;
LABEL_11:
  v12 = 0;
LABEL_13:
  pthread_mutex_lock(v7);
  v13 = g_adwReaders[v6] - 1;
  g_adwReaders[v6] = v13;
  if (!v13)
  {
    pthread_cond_broadcast(&g_acHandles + v6);
  }

  pthread_mutex_unlock(v7);
  if (v12)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}