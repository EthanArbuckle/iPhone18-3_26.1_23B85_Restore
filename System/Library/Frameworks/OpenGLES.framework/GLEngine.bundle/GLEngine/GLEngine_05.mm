void glGetSamplerParameterfv_Exec(uint64_t a1, int a2, int a3, float *a4)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v8 = gleLookupHashObject(*(a1 + 19296) + 232, a2);
  if (v8)
  {
    if (a3 <= 33082)
    {
      if (a3 == 4100)
      {
LABEL_10:
        if (*(a1 + 29832))
        {
          goto LABEL_17;
        }

        v10 = 1280;
        goto LABEL_12;
      }

      if (a3 != 33082)
      {
LABEL_15:
        v12 = 0;
        glGetSamplerParameterIv_Exec(a1, a2, a3, &v12);
        v9 = v12;
        goto LABEL_16;
      }

      v9 = v8[51];
    }

    else
    {
      switch(a3)
      {
        case 33083:
          v9 = v8[52];
          break;
        case 34046:
          v9 = v8[50];
          break;
        case 34049:
          goto LABEL_10;
        default:
          goto LABEL_15;
      }
    }

LABEL_16:
    *a4 = v9;
    goto LABEL_17;
  }

  if (!*(a1 + 29832))
  {
    v10 = 1282;
LABEL_12:
    *(a1 + 29832) = v10;
  }

LABEL_17:
  v11 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v11);
}

void *glSamplerParameteri_PackThread(uint64_t a1, int a2, int a3, int a4)
{
  __src = a4;
  v6 = gleAddCommand(a1, glSamplerParameteri_UnpackThread, 24);
  *v6 = a2;
  v6[1] = a3;
  SamplerParameterNumParams = glGetSamplerParameterNumParams(a3, 0);
  return memcpy(v6 + 2, &__src, (4 * SamplerParameterNumParams));
}

uint64_t glGetSamplerParameterNumParams(int a1, int a2)
{
  result = 1;
  if (a1 <= 33081)
  {
    if ((a1 - 10240) < 4)
    {
      return result;
    }

    if (a1 == 4100)
    {
      return 4;
    }

    v4 = 32882;
    goto LABEL_12;
  }

  if (a1 <= 34048)
  {
    if ((a1 - 33082) < 2)
    {
      return result;
    }

    v4 = 34046;
    goto LABEL_12;
  }

  if ((a1 - 34892) >= 2 && a1 != 34049)
  {
    v4 = 35400;
LABEL_12:
    if (a1 != v4)
    {
      return a2 != 0;
    }
  }

  return result;
}

void *glSamplerParameteriv_PackThread(uint64_t a1, int a2, int a3, const void *a4)
{
  v7 = gleAddCommand(a1, glSamplerParameteriv_UnpackThread, 24);
  *v7 = a2;
  v7[1] = a3;
  v8 = 4 * glGetSamplerParameterNumParams(a3, 0);

  return memcpy(v7 + 2, a4, v8);
}

void *glSamplerParameterf_PackThread(uint64_t a1, int a2, int a3, float a4)
{
  __src = a4;
  v6 = gleAddCommand(a1, glSamplerParameterf_UnpackThread, 24);
  *v6 = a2;
  v6[1] = a3;
  SamplerParameterNumParams = glGetSamplerParameterNumParams(a3, 1);
  return memcpy(v6 + 2, &__src, (4 * SamplerParameterNumParams));
}

void *glSamplerParameterfv_PackThread(uint64_t a1, int a2, int a3, const void *a4)
{
  v7 = gleAddCommand(a1, glSamplerParameterfv_UnpackThread, 24);
  *v7 = a2;
  v7[1] = a3;
  v8 = 4 * glGetSamplerParameterNumParams(a3, 1);

  return memcpy(v7 + 2, a4, v8);
}

void glGetSamplerParameteriv_ExecThread(uint64_t a1, int a2, int a3, int *a4)
{
  (*(a1 + 27752))();

  glGetSamplerParameteriv_Exec(a1, a2, a3, a4);
}

void glGetSamplerParameterfv_ExecThread(uint64_t a1, int a2, int a3, float *a4)
{
  (*(a1 + 27752))();

  glGetSamplerParameterfv_Exec(a1, a2, a3, a4);
}

void OUTLINED_FUNCTION_0_6(uint64_t a1)
{
  v2 = (*(a1 + 19296) + 324);

  os_unfair_lock_lock(v2);
}

float *glScalex_PackThread(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vcvts_n_f32_s32(a2, 0x10uLL);
  v5 = vcvts_n_f32_s32(a3, 0x10uLL);
  v6 = vcvts_n_f32_s32(a4, 0x10uLL);
  result = gleAddCommand(a1, glScale_ListExec, 12);
  *result = v4;
  result[1] = v5;
  result[2] = v6;
  return result;
}

_DWORD *glScissor_Comp(uint64_t a1, int a2, int a3, int a4, int a5)
{
  result = gleAddCommand(a1, glScissor_ListExec, 16);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

uint64_t glScissor_ListExec(uint64_t a1, __int128 *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  glScissorArrayv_Core(a1, 0, 1, &v3);
  return 16;
}

uint64_t glScissorArrayv_Core(uint64_t result, int a2, int a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  v8 = (result + 28652);
  if (a3 < 1)
  {
LABEL_6:
    if ((a3 + a2) >= 2 && !*(result + 15580))
    {
      result = gleSwitchToMultiViewportMode(result);
    }

    if (a3 >= 1)
    {
      v11 = 0;
      v12 = 1;
      while (2)
      {
        v13 = 0;
        v14 = -16;
        while (1)
        {
          v15 = *(v4 + 16 * v13);
          v16 = (v7 + 15560 + 16 * (a2 + v11 + v13));
          if (*v16 != v15)
          {
            break;
          }

          ++v13;
          v14 -= 16;
          if (a3 - v11 == v13)
          {
            if (v12)
            {
              return result;
            }

LABEL_16:
            *v8 = 0;
            v8[287] |= 0x4000000u;
            return result;
          }
        }

        *v16 = v15;
        result = gleUpdateViewScissorDataIndexed(v7, a2 + v11 + v13);
        v12 = 0;
        v17 = ~v11;
        v11 += v13 + 1;
        v4 -= v14;
        if (v17 + a3 != v13)
        {
          continue;
        }

        break;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v9 = (a4 + 12);
    v10 = a3;
    while ((*(v9 - 1) & 0x80000000) == 0 && (*v9 & 0x80000000) == 0)
    {
      v9 += 4;
      if (!--v10)
      {
        goto LABEL_6;
      }
    }

    if (!*(result + 29832))
    {
      *(result + 29832) = 1281;
    }
  }

  return result;
}

void *glShadeModel_Comp(uint64_t a1, int a2)
{
  result = gleAddCommand(a1, glShadeModel_ListExec, 4);
  *result = a2;
  return result;
}

void glUseProgramObjectARB_Exec(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  if (a2)
  {
    v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
    if (!v4)
    {
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      if (*(a1 + 29832))
      {
        return;
      }

      v9 = 1281;
      goto LABEL_18;
    }

    v5 = v4;
    if (*(v4 + 6) != 8 || *(v4 + 3976) != 1 || (v6 = *(a1 + 26432), *(v6 + 42) != -1) && !*(v6 + 41))
    {
LABEL_14:
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      if (*(a1 + 29832))
      {
        return;
      }

      v9 = 1282;
LABEL_18:
      *(a1 + 29832) = v9;
      return;
    }
  }

  else
  {
    v7 = *(a1 + 26432);
    if (*(v7 + 42) != -1 && !*(v7 + 41))
    {
      goto LABEL_14;
    }

    v5 = 0;
  }

  gleUseProgramObject(a1, v5);
  v8 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v8);
}

void *glUseProgramObjectARB_Comp(uint64_t a1, uint64_t a2)
{
  result = gleAddCommand(a1, glUseProgramObjectARB_ListExec, 8);
  *result = a2;
  return result;
}

uint64_t glCreateShaderObjectARB_Exec(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    while (v5)
    {
      ++v4;
      v5 = 1;
      if (v4 == 5)
      {
        goto LABEL_7;
      }
    }

    v6 = gle_shader_targets[v4];
    v5 = v6 == a2;
    ++v4;
  }

  while (v4 != 5);
  if (v6 == a2)
  {
LABEL_7:
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    ShaderObject = gleCreateShaderObject(a1, a2);
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    return ShaderObject;
  }

  ShaderObject = 0;
  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }

  return ShaderObject;
}

uint64_t glCreateProgramObjectARB_Exec(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  ProgramObject = gleCreateProgramObject(a1);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return ProgramObject;
}

void glDeleteObjectARB_Exec(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v2 = a2;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, v2);
  if (!v4)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v7 = 1281;
LABEL_12:
    *(a1 + 29832) = v7;
    return;
  }

  if (*(v4 + 6) != 8)
  {
    if (!*(v4 + 64))
    {
      v8 = *(v4 + 5) - 1;
      *(v4 + 5) = v8;
      v6 = gleUnbindShaderObject;
      if (v8 != 1)
      {
        *(v4 + 64) = 1;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (*(v4 + 3979))
  {
LABEL_10:
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v7 = 1282;
    goto LABEL_12;
  }

  v5 = *(v4 + 5) - 1;
  *(v4 + 5) = v5;
  v6 = gleUnbindProgramObject;
  if (v5 == 1)
  {
LABEL_15:
    gleUnbindDeleteHashNameAndObject(a1, (*(a1 + 19296) + 168), v6, v2);
    goto LABEL_17;
  }

  *(v4 + 3979) = 1;
LABEL_17:
  v9 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v9);
}

void glAttachObjectARB_Exec(uint64_t a1, int a2, int a3)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v6 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *(a1 + 19296);
  if (*(v6 + 6) != 8)
  {
LABEL_18:
    os_unfair_lock_unlock(v8 + 81);
    if (*(a1 + 29832))
    {
      return;
    }

    v19 = 1282;
    goto LABEL_20;
  }

  v9 = gleLookupHashObject(&v8[42], a3);
  if (!v9)
  {
LABEL_15:
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v19 = 1281;
LABEL_20:
    *(a1 + 29832) = v19;
    return;
  }

  v10 = v9;
  if (*(v9 + 6) != 7)
  {
LABEL_17:
    v8 = *(a1 + 19296);
    goto LABEL_18;
  }

  v11 = *(v7 + 982);
  if (v11 >= 1)
  {
    v12 = v7[20];
    v13 = *(v7 + 982);
    while (*v12 != v9 && *(*v12 + 68) != *(v9 + 17))
    {
      v12 += 8;
      if (!--v13)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_17;
  }

LABEL_10:
  v14 = malloc_type_malloc(8 * v11 + 8, 0x746FBC94uLL);
  if (!v14)
  {
    abort();
  }

  v15 = v14;
  v16 = *(v7 + 982);
  if (v16 < 1)
  {
    v18 = 0;
  }

  else
  {
    for (i = 0; i != v16; ++i)
    {
      v14[i] = *(v7[20] + i * 8);
    }

    v18 = v16;
  }

  v14[v18] = v10;
  *(v7 + 982) = v16 + 1;
  v20 = v7[20];
  if (v20)
  {
    free(v20);
  }

  v7[20] = v15;
  ++*(v10 + 5);
  v21 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v21);
}

void glDetachObjectARB_Exec(uint64_t a1, int a2, unsigned int a3)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v6 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v6;
  v8 = *(a1 + 19296);
  if (*(v6 + 6) != 8)
  {
LABEL_13:
    os_unfair_lock_unlock(v8 + 81);
    if (*(a1 + 29832))
    {
      return;
    }

    v17 = 1282;
LABEL_17:
    *(a1 + 29832) = v17;
    return;
  }

  v9 = gleLookupHashObject(&v8[42], a3);
  if (!v9)
  {
LABEL_15:
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v17 = 1281;
    goto LABEL_17;
  }

  v10 = *(v7 + 982);
  if (v10 < 1)
  {
    goto LABEL_12;
  }

  v11 = v9;
  v12 = v7[20];
  v13 = 1;
  do
  {
    v15 = *v12++;
    v14 = v15;
  }

  while (v9 != v15 && v13++ < v10);
  if (v9 != v14)
  {
LABEL_12:
    v8 = *(a1 + 19296);
    goto LABEL_13;
  }

  v18 = v10 - 1;
  if (v18)
  {
    v19 = malloc_type_malloc(8 * v18, 0x746FBC94uLL);
    if (!v19)
    {
      abort();
    }

    v20 = v19;
    v21 = *(v7 + 982);
    if (v21 >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(v7[20] + v22);
        if (v11 != v24)
        {
          v19[v23++] = v24;
        }

        v22 += 8;
      }

      while (8 * v21 != v22);
    }
  }

  else
  {
    v20 = 0;
    LODWORD(v21) = 1;
  }

  *(v7 + 982) = v21 - 1;
  v25 = v7[20];
  if (v25)
  {
    free(v25);
  }

  v7[20] = v20;
  v26 = *(v11 + 5) - 1;
  *(v11 + 5) = v26;
  if (v26 == 1)
  {
    gleUnbindDeleteHashNameAndObject(a1, (*(a1 + 19296) + 168), gleUnbindShaderObject, a3);
  }

  v27 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v27);
}

void glShaderSourceARB_Exec(uint64_t a1, int a2, int a3, const void **a4, int *a5)
{
  if (a3 <= 0)
  {
    goto LABEL_26;
  }

  LODWORD(v8) = a3;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v10 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v10)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_26:
    if (*(a1 + 29832))
    {
      return;
    }

    v24 = 1281;
LABEL_30:
    *(a1 + 29832) = v24;
    return;
  }

  v11 = v10;
  if (*(v10 + 6) != 7)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v24 = 1282;
    goto LABEL_30;
  }

  v12 = 0;
  v13 = v8;
  v8 = v8;
  v14 = a4;
  v15 = a5;
  do
  {
    if (!a5 || (v16 = *v15, *v15 < 0))
    {
      v16 = strlen(*v14);
    }

    v12 += v16;
    ++v15;
    ++v14;
    --v8;
  }

  while (v8);
  v17 = malloc_type_malloc(v12 + 2, 0x746FBC94uLL);
  if (!v17)
  {
    abort();
  }

  v18 = v17;
  v19 = a5;
  v20 = v17;
  do
  {
    if (!a5 || (v21 = *v19, (v21 & 0x80000000) != 0))
    {
      v20 = __stpcpy_chk();
    }

    else
    {
      memcpy(v20, *a4, v21);
      v20 += *v19;
    }

    ++a4;
    ++v19;
    --v13;
  }

  while (v13);
  *v20 = 0;
  for (i = v18; *i == 13; ++i)
  {
    if (i[1] == 10)
    {
      v23 = 32;
    }

    else
    {
      v23 = 10;
    }

    *i = v23;
LABEL_24:
    ;
  }

  if (*i)
  {
    goto LABEL_24;
  }

  if (*(i - 1) != 10)
  {
    *i = 10;
    ++v12;
  }

  v25 = v11[6];
  if (v25)
  {
    free(v25);
  }

  *(v11 + 65) = 1;
  *(v11 + 15) = v12;
  v11[6] = v18;
  v26 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v26);
}

void glLinkProgramARB_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v4)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v5 = 1281;
    goto LABEL_8;
  }

  if (*(v4 + 6) != 8 || *(v4 + 993))
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v5 = 1282;
LABEL_8:
    *(a1 + 29832) = v5;
    return;
  }

  gleLinkProgram(a1, (v4 + 5));
  v6 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v6);
}

void glValidateProgramARB_Exec(unint64_t a1, int a2)
{
  v4 = a1 + 28652;
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v5 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v5)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(v4 + 1180))
    {
      return;
    }

    v14 = 1281;
LABEL_20:
    *(v4 + 1180) = v14;
    return;
  }

  v9 = v5;
  if (*(v5 + 6) != 8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(v4 + 1180))
    {
      return;
    }

    v14 = 1282;
    goto LABEL_20;
  }

  if ((*(v4 + 3841) & 0x40) != 0)
  {
    *(v5 + 3977) = 1;
  }

  else
  {
    v10 = v5[17];
    if (v10)
    {
      free(v10);
    }

    v9[17] = 0;
    *(v9 + 981) = 0;
    if (*(v9 + 3976))
    {
      v11 = *(a1 + 24768);
      if (v9 != v11)
      {
        if (v11)
        {
          ++*(v11 + 5);
        }

        gleUseProgramObject(a1, v9);
      }

      v12 = *(v4 + 3849);
      if ((*(v4 + 3) & 8) != 0 && *(v4 + 29) < 0 && *(v4 + 31) < 0)
      {
        v15 = 0;
      }

      else
      {
        if ((v12 - 3) >= 2)
        {
          if (v12 == 1)
          {
            v13 = gleDoSelectiveDispatchNoErrorCoreGL3(a1, 0x8000000u, 0x80u, 0x80u, 0xF8000000, v6.n128_f64[0], v7, v8);
          }

          else
          {
            v13 = gleDoSelectiveDispatchNoErrorCore(a1, 0x8000000u, 0x80u, 0x80u, 0xF8000000, v6, v7, v8);
          }
        }

        else
        {
          v13 = gleDoSelectiveDispatchNoErrorCoreES2(a1, 0x8000000u, 0x80u, 0x80u, 0xF8000000, v6.n128_f64[0], v7, v8);
        }

        v15 = v13;
      }

      if (*(v4 + 3830))
      {
        gleAppendStringToInfoLog("Validation Failed: Fragment program failed to compile with current context state.\n", v9 + 17, v9 + 981);
        *(v4 + 3832) = 0;
      }

      if (!*(v4 + 3829) && *(*(a1 + 29032) + 101))
      {
        gleAppendStringToInfoLog("Validation Failed: Vertex program failed to compile with current context state.\n", v9 + 17, v9 + 981);
        *(v4 + 3832) = 0;
      }

      if (*(v4 + 3834) && (*(a1 + 29008) || *(a1 + 28960)))
      {
        if (*(v4 + 3832) && !v15)
        {
          *(v9 + 3977) = 1;
LABEL_41:
          if (v9 != v11)
          {
            gleUseProgramObject(a1, v11);
            if (v11)
            {
              --*(v11 + 5);
            }
          }

          goto LABEL_44;
        }

        *(v9 + 3977) = 0;
        if (*(v9 + 3978))
        {
          if (*(v9 + 936))
          {
            v16 = "Validation Failed: Bindable Uniform error:\n  Incomplete bindable uniform buffers.\n";
          }

          else
          {
            v18 = *(v9 + 930);
            if (v18)
            {
              if ((v18 & 0x10) != 0 || *(a1 + 17984))
              {
                if (!v15)
                {
                  goto LABEL_41;
                }

                v16 = "Validation Failed\n";
              }

              else
              {
                v16 = "Validation Failed: Program does not contain fragment shader. Results will be undefined.\n";
              }
            }

            else
            {
              v16 = "Validation Failed: Program does not contain vertex shader. Results will be undefined.\n";
            }
          }
        }

        else
        {
          v16 = "Validation Failed: Sampler error:\n  Samplers of different types use the same texture image unit.\n   - or -\n  A sampler's texture unit is out of range (greater than max allowed or negative).\n";
        }
      }

      else
      {
        *(v9 + 3977) = 0;
        v16 = "Validation Failed: Current draw framebuffer is invalid.\n";
      }

      gleAppendStringToInfoLog(v16, v9 + 17, v9 + 981);
      goto LABEL_41;
    }

    *(v9 + 3977) = 0;
    gleAppendStringToInfoLog("Validation Failed: Link error:\n  Program is not successfully linked.\n", v9 + 17, v9 + 981);
  }

LABEL_44:
  v17 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v17);
}

void glProgramParameteriEXT_Exec(uint64_t a1, int a2, int a3, int a4)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v8 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v9 = 1281;
LABEL_10:
    *(a1 + 29832) = v9;
    return;
  }

  if (*(v8 + 6) != 8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v9 = 1282;
    goto LABEL_10;
  }

  if (a3 == 33367)
  {
    *(v8 + 3982) = a4 != 0;
  }

  else if (a3 == 33368)
  {
    *(v8 + 3980) = a4 != 0;
  }

  else if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }

  v10 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v10);
}

void glGetShaderiv_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v8 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v11 = 1281;
LABEL_13:
    *(a1 + 29832) = v11;
    return;
  }

  if (*(v8 + 6) != 7)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v11 = 1282;
    goto LABEL_13;
  }

  v12 = 0;
  if (a3 == 35662)
  {
    v9 = 35663;
  }

  else
  {
    v9 = a3;
  }

  ObjectParameter = gleGetObjectParameter(a1, v8, v9, &v12);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  if (ObjectParameter)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = ObjectParameter;
    }
  }

  else
  {
    *a4 = v12;
  }
}

void glGetProgramiv_Exec(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v8 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v10 = 1281;
LABEL_10:
    *(a1 + 29832) = v10;
    return;
  }

  if (*(v8 + 6) != 8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v10 = 1282;
    goto LABEL_10;
  }

  v11 = 0;
  ObjectParameter = gleGetObjectParameter(a1, v8, a3, &v11);
  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  if (ObjectParameter)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = ObjectParameter;
    }
  }

  else
  {
    *a4 = v11;
  }
}

void glGetShaderInfoLog_Exec(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  if (a3 < 0)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v10 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v10)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_8:
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1281;
LABEL_12:
    *(a1 + 29832) = v12;
    return;
  }

  if (*(v10 + 6) != 7)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1282;
    goto LABEL_12;
  }

  gleGetString(v10[5], *(v10 + 14), a3, a4, a5);
  v11 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v11);
}

void glGetProgramInfoLog_Exec(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  if (a3 < 0)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v10 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v10)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_8:
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1281;
LABEL_12:
    *(a1 + 29832) = v12;
    return;
  }

  if (*(v10 + 6) != 8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1282;
    goto LABEL_12;
  }

  gleGetString(v10[17], *(v10 + 981), a3, a4, a5);
  v11 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v11);
}

BOOL glIsShader_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (v4)
  {
    v5 = *(v4 + 6) == 7;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v5;
}

BOOL glIsProgram_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (v4)
  {
    v5 = *(v4 + 6) == 8;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((*(a1 + 19296) + 324));
  return v5;
}

void glGetAttachedShaders_Exec(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_15;
  }

  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v10 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v10)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_15:
    if (*(a1 + 29832))
    {
      return;
    }

    v13 = 1281;
LABEL_19:
    *(a1 + 29832) = v13;
    return;
  }

  if (*(v10 + 6) != 8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v13 = 1282;
    goto LABEL_19;
  }

  LODWORD(v11) = 0;
  if (a3 && *(v10 + 982) >= 1)
  {
    v11 = 0;
    do
    {
      *(a5 + 4 * v11) = *(*(v10[20] + 8 * v11) + 16);
      ++v11;
    }

    while (v11 < a3 && v11 < *(v10 + 982));
  }

  if (a4)
  {
    *a4 = v11;
  }

  v12 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v12);
}

void glGetShaderSourceARB_Exec(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  if (a3 < 0)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v10 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v10)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_8:
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1281;
LABEL_12:
    *(a1 + 29832) = v12;
    return;
  }

  if (*(v10 + 6) != 7)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (*(a1 + 29832))
    {
      return;
    }

    v12 = 1282;
    goto LABEL_12;
  }

  gleGetString(v10[6], *(v10 + 15), a3, a4, a5);
  v11 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v11);
}

void glBindAttribLocationARB_Exec(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  if (a4 && *a4 == 103 && a4[1] == 108 && a4[2] == 95)
  {
    goto LABEL_15;
  }

  if (a3 >= 0x10)
  {
LABEL_12:
    if (*(a1 + 29832))
    {
      return;
    }

    v8 = 1281;
LABEL_17:
    *(a1 + 29832) = v8;
    return;
  }

  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v6 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v6)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    goto LABEL_12;
  }

  if (*(v6 + 6) != 8)
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_15:
    if (*(a1 + 29832))
    {
      return;
    }

    v8 = 1282;
    goto LABEL_17;
  }

  ShAttributeBindingRequest();
  v7 = (*(a1 + 19296) + 324);

  os_unfair_lock_unlock(v7);
}

uint64_t glGetAttribLocationARB_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (v4)
  {
    if (*(v4 + 6) == 8 && *(v4 + 3976) == 1)
    {
      AttribLocation = ShGetAttribLocation();
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      return AttribLocation;
    }

    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (!*(a1 + 29832))
    {
      v7 = 1282;
LABEL_9:
      *(a1 + 29832) = v7;
    }
  }

  else
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (!*(a1 + 29832))
    {
      v7 = 1281;
      goto LABEL_9;
    }
  }

  return 0xFFFFFFFFLL;
}

void glGetActiveAttribARB_Exec(uint64_t a1, int a2, unsigned int a3, int a4)
{
  if (a4 < 0)
  {
    goto LABEL_8;
  }

  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v7 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (!v7)
  {
LABEL_7:
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_8:
    if (*(a1 + 29832))
    {
      return;
    }

    v9 = 1281;
    goto LABEL_13;
  }

  if (*(v7 + 6) == 8)
  {
    if (*(v7 + 983) > a3)
    {
      ActiveAttrib = ShGetActiveAttrib();
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      if (ActiveAttrib)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  os_unfair_lock_unlock((*(a1 + 19296) + 324));
LABEL_11:
  if (*(a1 + 29832))
  {
    return;
  }

  v9 = 1282;
LABEL_13:
  *(a1 + 29832) = v9;
}

uint64_t glGetFragDataLocationEXT_Exec(uint64_t a1, int a2)
{
  os_unfair_lock_lock((*(a1 + 19296) + 324));
  v4 = gleLookupHashObject(*(a1 + 19296) + 168, a2);
  if (v4)
  {
    if (*(v4 + 6) == 8 && *(v4 + 3976) == 1)
    {
      FragDataLocation = ShGetFragDataLocation();
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      return FragDataLocation;
    }

    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (!*(a1 + 29832))
    {
      v7 = 1282;
LABEL_9:
      *(a1 + 29832) = v7;
    }
  }

  else
  {
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (!*(a1 + 29832))
    {
      v7 = 1281;
      goto LABEL_9;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t glCreateShaderObjectARB_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glCreateShaderObjectARB_Exec(a1, a2);
}

uint64_t glCreateProgramObjectARB_ExecThread(uint64_t a1)
{
  (*(a1 + 27752))();

  return glCreateProgramObjectARB_Exec(a1);
}

void glDeleteObjectARB_ExecThread(uint64_t a1, uint64_t a2)
{
  (*(a1 + 27752))();

  glDeleteObjectARB_Exec(a1, a2);
}

void *glAttachObjectARB_PackThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = gleAddCommand(a1, glAttachObjectARB_UnpackThread, 16);
  *result = a2;
  result[1] = a3;
  return result;
}

void *glDetachObjectARB_PackThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = gleAddCommand(a1, glDetachObjectARB_UnpackThread, 16);
  *result = a2;
  result[1] = a3;
  return result;
}

void glShaderSourceARB_ExecThread(uint64_t a1, int a2, int a3, const void **a4, int *a5)
{
  (*(a1 + 27752))();

  glShaderSourceARB_Exec(a1, a2, a3, a4, a5);
}

void *glCompileShaderARB_PackThread(uint64_t a1, uint64_t a2)
{
  result = gleAddCommand(a1, glCompileShaderARB_UnpackThread, 8);
  *result = a2;
  return result;
}

void *glLinkProgramARB_PackThread(uint64_t a1, uint64_t a2)
{
  result = gleAddCommand(a1, glLinkProgramARB_UnpackThread, 8);
  *result = a2;
  return result;
}

void *glValidateProgramARB_PackThread(uint64_t a1, uint64_t a2)
{
  result = gleAddCommand(a1, glValidateProgramARB_UnpackThread, 8);
  *result = a2;
  return result;
}

_DWORD *glProgramParameteriEXT_PackThread(uint64_t a1, int a2, int a3, int a4)
{
  result = gleAddCommand(a1, glProgramParameteriEXT_UnpackThread, 12);
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

BOOL glIsShader_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glIsShader_Exec(a1, a2);
}

BOOL glIsProgram_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glIsProgram_Exec(a1, a2);
}

void glGetShaderiv_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  glGetShaderiv_Exec(a1, a2, a3, a4);
}

void glGetProgramiv_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4)
{
  (*(a1 + 27752))();

  glGetProgramiv_Exec(a1, a2, a3, a4);
}

void glGetShaderInfoLog_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  (*(a1 + 27752))();

  glGetShaderInfoLog_Exec(a1, a2, a3, a4, a5);
}

void glGetProgramInfoLog_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  (*(a1 + 27752))();

  glGetProgramInfoLog_Exec(a1, a2, a3, a4, a5);
}

void glGetAttachedShaders_ExecThread(uint64_t a1, int a2, unsigned int a3, _DWORD *a4, uint64_t a5)
{
  (*(a1 + 27752))();

  glGetAttachedShaders_Exec(a1, a2, a3, a4, a5);
}

void glGetShaderSourceARB_ExecThread(uint64_t a1, int a2, int a3, _DWORD *a4, void *a5)
{
  (*(a1 + 27752))();

  glGetShaderSourceARB_Exec(a1, a2, a3, a4, a5);
}

void glBindAttribLocationARB_PackThread(uint64_t a1, uint64_t a2, unsigned int a3, char *__s)
{
  v8 = strlen(__s) + 25;
  v9 = gleAddLargeCommand(a1, glBindAttribLocationARB_UnpackThread, v8);
  if (v9)
  {
    v10 = v9;
    *v9 = a2;
    *(v9 + 2) = a3;
    v11 = (v9 + 3);
    v10[2] = v8;

    strcpy(v11, __s);
  }

  else
  {
    (*(a1 + 27752))(a1);

    glBindAttribLocationARB_Exec(a1, a2, a3, __s);
  }
}

void glGetActiveAttribARB_ExecThread(uint64_t a1, int a2, unsigned int a3, int a4)
{
  (*(a1 + 27752))();

  glGetActiveAttribARB_Exec(a1, a2, a3, a4);
}

uint64_t glGetAttribLocationARB_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glGetAttribLocationARB_Exec(a1, a2);
}

uint64_t glGetFragDataLocationEXT_ExecThread(uint64_t a1, int a2)
{
  (*(a1 + 27752))();

  return glGetFragDataLocationEXT_Exec(a1, a2);
}

uint64_t glShaderBinaryOES_Exec(uint64_t result)
{
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glGetShaderPrecisionFormatOES_Exec(uint64_t result, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (a2 >> 1 != 17816 && !*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  if (a3 <= 36338)
  {
    switch(a3)
    {
      case 36336:
        v9 = *(result + 29032);
        v10 = *(v9 + 470);
        *a4 = v10;
        a4[1] = v10;
        v7 = *(v9 + 476);
        goto LABEL_18;
      case 36337:
        v11 = *(result + 29032);
        v12 = *(v11 + 472);
        *a4 = v12;
        a4[1] = v12;
        v7 = *(v11 + 477);
        goto LABEL_18;
      case 36338:
        v5 = *(result + 29032);
        v6 = *(v5 + 474);
        *a4 = v6;
        a4[1] = v6;
        v7 = *(v5 + 478);
LABEL_18:
        *a5 = v7;
        return result;
    }

    goto LABEL_15;
  }

  switch(a3)
  {
    case 36339:
      v8 = *(*(result + 29032) + 464);
      goto LABEL_20;
    case 36340:
      v8 = *(*(result + 29032) + 466);
      goto LABEL_20;
    case 36341:
      v8 = *(*(result + 29032) + 468);
LABEL_20:
      *a4 = v8;
      a4[1] = v8 - (v8 != 23);
      *a5 = 0;
      return result;
  }

LABEL_15:
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glShaderBinaryOES_ExecThread(uint64_t a1)
{
  result = (*(a1 + 27752))();
  if (!*(a1 + 29832))
  {
    *(a1 + 29832) = 1280;
  }

  return result;
}

uint64_t glGetShaderPrecisionFormatOES_ExecThread(uint64_t a1, unsigned int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  (*(a1 + 27752))();

  return glGetShaderPrecisionFormatOES_Exec(a1, a2, a3, a4, a5);
}

uint64_t validatePathName(uint64_t a1, int a2, char *__big, int a4)
{
  if (a2 && __big)
  {
    v7 = a2;
    if (a2 <= 0)
    {
      v7 = strlen(__big);
    }

    if (*__big == 47 && !strnstr(__big, "//", v7))
    {
      if (v7 < 1)
      {
LABEL_20:
        if (__big[v7 - 1] != 47)
        {
          return 1;
        }
      }

      else
      {
        v9 = v7;
        v10 = __big;
        while (1)
        {
          v12 = *v10++;
          v11 = v12;
          v13 = ((v12 & 0xDF) - 65);
          v14 = (v12 - 48) >= 0xA && v13 >= 0x1A;