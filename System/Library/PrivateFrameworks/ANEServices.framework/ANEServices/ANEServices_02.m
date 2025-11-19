uint64_t ANEServicesProgramChainingPrepare()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v64 = *MEMORY[0x1E69E9840];
  v3 = 2;
  if (!v0)
  {
    goto LABEL_29;
  }

  v4 = v1;
  if (!v1)
  {
    goto LABEL_29;
  }

  v5 = v0;
  v6 = *(v0 + 8);
  if (v6)
  {
    v7 = *(*v6 + 16);
    v8 = *(v7 + 8);
    if (v8)
    {
      if (*(v7 + 32) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v47 = "ANEServicesProgramChainingPrepare";
          v48 = 1024;
          *v49 = 1;
          _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ERROR: %s: Cannot call this API with deviceUsageType=%d\n", buf, 0x12u);
        }

        v3 = 20;
        goto LABEL_29;
      }

      v9 = v2;
      v10 = *(v1 + 44);
      if (v10 >= 8)
      {
        v10 = 7;
        *(v1 + 44) = 7;
      }

      if (*v1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v47 = "ANEServicesProgramChainingPrepare";
          _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ERROR: %s: cacheHandle is not 0\n", buf, 0xCu);
        }

        goto LABEL_27;
      }

      v11 = *(v1 + 48);
      if (v11 > 0x100 || *(v1 + 8248) > 0xFFu || *(v1 + 14376) >= 0xDu)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:
          v3 = 2;
LABEL_27:
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v47 = "ANEServicesProgramChainingPrepare";
            _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s failed\n", buf, 0xCu);
          }

          goto LABEL_29;
        }

        v12 = *(v4 + 8248);
        v13 = *(v4 + 14376);
        *buf = 136315906;
        v47 = "ANEServicesProgramChainingPrepare";
        v48 = 1024;
        *v49 = v11;
        *&v49[4] = 1024;
        *&v49[6] = v12;
        LOWORD(v50[0]) = 1024;
        *(v50 + 2) = v13;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "ERROR: %s: exceed max limit: %d, %d, %d \n";
        v16 = buf;
        v17 = 30;
LABEL_25:
        _os_log_impl(&dword_1C0446000, v14, OS_LOG_TYPE_DEFAULT, v15, v16, v17);
        goto LABEL_26;
      }

      bzero(buf, 0xAE28uLL);
      *&v49[2] = *(v4 + 16);
      v50[0] = *(v4 + 24);
      v52 = v10;
      v51 = *(v4 + 32);
      *&v61[28596] = *(v5 + 160);
      v62 = *(v5 + 168);
      v63 = v9;
      if (!v11)
      {
        goto LABEL_58;
      }

      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v4 + 56;
      do
      {
        v25 = *(v24 + 16);
        if (v25 == 5)
        {
          v26 = [*v24 eventPort];
          v27 = &v54[3 * v23];
          *v27 = v26;
          *(v27 + 3) = *v24;
          *(v27 + 4) = *(v24 + 20);
          ++v23;
        }

        else if (v25 == 4 && v22 == 0)
        {
          v22 = *v24;
          v21 = [*v24 eventPort];
        }

        ++v20;
        v24 += 32;
      }

      while (v20 < *(v4 + 48));
      v57 = v22;
      v56[576] = v21;
      v53 = v23;
      if (!v22)
      {
LABEL_58:
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        *v45 = 136315138;
        *&v45[4] = "ANEServicesProgramChainingPrepare";
        v14 = MEMORY[0x1E69E9C10];
        v15 = "ERROR: %s: no output set free event in the chaing prepare\n";
        v16 = v45;
        v17 = 12;
        goto LABEL_25;
      }

      if (*(v4 + 8248))
      {
        v29 = 0;
        v30 = v56;
        v31 = (v4 + 8268);
        do
        {
          *v30 = *v31;
          v30[320] = IOSurfaceGetID(*(v31 - 3));
          *(&v56[256] + v29++) = *(v31 - 1);
          v31 += 6;
          ++v30;
        }

        while (v29 < *(v4 + 8248));
      }

      if (*(v4 + 14376))
      {
        v32 = 0;
        v33 = (v4 + 14408);
        v34 = v61;
        v35 = &v60;
        while (1)
        {
          v36 = v4 + 14384 + 6160 * v32;
          v37 = &v59[145 * v32];
          v37[3] = *(v36 + 8);
          if (*v36)
          {
            v37[1] = IOSurfaceGetID(*v36);
          }

          if (v6[879])
          {
            v38 = v6[878];
            if (v38)
            {
              v37[2] = v38;
            }
          }

          v39 = *(v36 + 8);
          if (v39 > 0x100)
          {
            break;
          }

          if (v39)
          {
            v40 = 0;
            v41 = v33;
            do
            {
              *&v34[4 * v40] = IOSurfaceGetID(*(v41 - 1));
              v42 = *v41;
              v41 += 3;
              *(v35 + v40++) = v42;
            }

            while (v40 < *(v36 + 8));
          }

          ++v32;
          v33 += 770;
          v34 += 2320;
          v35 += 580;
          if (v32 >= *(v4 + 14376))
          {
            goto LABEL_57;
          }
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 136315394;
          *&v45[4] = "ANEServicesProgramChainingPrepare";
          *&v45[12] = 1024;
          *&v45[14] = v39;
          _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ERROR: %s: exceed max outputs/set limit: %d\n", v45, 0x12u);
        }

        v3 = 2;
      }

      else
      {
LABEL_57:
        v3 = 0;
      }

      v43 = ANE::ANEServicesDevice::ANE_ProgramChainingPrepare(v8, buf, v45);
      if (v43)
      {
        v44 = v43;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramPrepare_cold_3();
        }

        v3 = ANE::IOReturnToANEReturn(v44);
      }

      else
      {
        *(v4 + 90360) = *&v45[16];
        *v4 = *v45;
      }

      if (v3)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v47 = "ANEServicesProgramChainingPrepare";
        _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ERROR: %s: pANEServicesDevice is NULL\n", buf, 0xCu);
      }

      v3 = 8;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "ANEServicesProgramChainingPrepare";
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ERROR: %s: pANEProgramInstancePriv is NULL\n", buf, 0xCu);
    }

    v3 = 1;
  }

LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANEServicesProgramOutputSetEnqueue(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramOutputSetEnqueue_cold_1();
    }

    return 2;
  }

  v2 = *(*(a1 + 16) + 8);
  if (v2)
  {
    v6 = *a2;
    v3 = *(a2 + 3);
    v7 = *(a2 + 2);
    v8 = v3;
    v9 = a2[2];
    v10 = *(a2 + 12);
    result = ANE::ANEServicesDevice::ANE_ProgramOutputSetEnqueue(v2, inputStruct);
    if (result <= -536870185)
    {
      if (result > -536870204)
      {
        if (result <= -536870192)
        {
          if (result == -536870203)
          {
            return 30;
          }

          if (result == -536870201)
          {
            return 24;
          }
        }

        else
        {
          switch(result)
          {
            case 0xE00002D1:
              return 19;
            case 0xE00002D2:
              return 32;
            case 0xE00002D6:
              return 15;
          }
        }

        return 18;
      }

      if (result <= -536870211)
      {
        if (result == -536870911)
        {
          return 31;
        }

        if (result == -536870211)
        {
          return 1;
        }

        return 18;
      }

      if (result == -536870210)
      {
        return 5;
      }

      if (result == -536870207)
      {
        return 20;
      }

      if (result != -536870206)
      {
        return 18;
      }

      return 2;
    }

    if (result <= -536870166)
    {
      if (result <= -536870175)
      {
        if (result == -536870184)
        {
          return 22;
        }

        if (result == -536870176)
        {
          return 26;
        }
      }

      else
      {
        switch(result)
        {
          case 0xE00002E2:
            return 23;
          case 0xE00002E3:
            return 10;
          case 0xE00002E7:
            return 29;
        }
      }

      return 18;
    }

    if (result <= -536870163)
    {
      if (result == -536870165)
      {
        return 21;
      }

      if (result == -536870163)
      {
        return 27;
      }

      return 18;
    }

    if (result == -536870162)
    {
      return 28;
    }

    if (result == -536870160)
    {
      return 4;
    }

    if (result)
    {
      return 18;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramOutputSetEnqueue_cold_2();
    }

    return 8;
  }

  return result;
}

uint64_t ANEServicesProgramInputsReady(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramInputsReady_cold_1();
    }

    return 2;
  }

  v2 = *(*(a1 + 16) + 8);
  if (v2)
  {
    v6[1] = *a2;
    v3 = *(a2 + 12);
    v7 = *(a2 + 8);
    v8 = v3;
    v10 = *(a2 + 3080);
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        v9[i] = *(a2 + 4 * i + 16);
        *&v9[2 * i + 256] = *(a2 + 8 * i + 1040);
      }
    }

    result = ANE::ANEServicesDevice::ANE_ProgramInputsReady(v2, v6);
    if (result <= -536870185)
    {
      if (result > -536870204)
      {
        if (result <= -536870192)
        {
          if (result == -536870203)
          {
            return 30;
          }

          if (result == -536870201)
          {
            return 24;
          }
        }

        else
        {
          switch(result)
          {
            case 0xE00002D1:
              return 19;
            case 0xE00002D2:
              return 32;
            case 0xE00002D6:
              return 15;
          }
        }

        return 18;
      }

      if (result <= -536870211)
      {
        if (result == -536870911)
        {
          return 31;
        }

        if (result == -536870211)
        {
          return 1;
        }

        return 18;
      }

      if (result == -536870210)
      {
        return 5;
      }

      if (result == -536870207)
      {
        return 20;
      }

      if (result != -536870206)
      {
        return 18;
      }

      return 2;
    }

    if (result <= -536870166)
    {
      if (result <= -536870175)
      {
        if (result == -536870184)
        {
          return 22;
        }

        if (result == -536870176)
        {
          return 26;
        }
      }

      else
      {
        switch(result)
        {
          case 0xE00002E2:
            return 23;
          case 0xE00002E3:
            return 10;
          case 0xE00002E7:
            return 29;
        }
      }

      return 18;
    }

    if (result <= -536870163)
    {
      if (result == -536870165)
      {
        return 21;
      }

      if (result == -536870163)
      {
        return 27;
      }

      return 18;
    }

    if (result == -536870162)
    {
      return 28;
    }

    if (result == -536870160)
    {
      return 4;
    }

    if (result)
    {
      return 18;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramInputsReady_cold_2();
    }

    return 8;
  }

  return result;
}

uint64_t ANEServicesProgramChainingSetActiveProcedure(uint64_t a1, uint64_t *a2)
{
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramChainingSetActiveProcedure_cold_1();
    }

    return 2;
  }

  v2 = *(*(a1 + 16) + 8);
  if (v2)
  {
    v4 = *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 1);
    result = ANE::ANEServicesDevice::ANE_ProgramChainingSetActiveProcedure(v2, &v4);
    if (result <= -536870185)
    {
      if (result > -536870204)
      {
        if (result <= -536870192)
        {
          if (result == -536870203)
          {
            return 30;
          }

          if (result == -536870201)
          {
            return 24;
          }
        }

        else
        {
          switch(result)
          {
            case 0xE00002D1:
              return 19;
            case 0xE00002D2:
              return 32;
            case 0xE00002D6:
              return 15;
          }
        }

        return 18;
      }

      if (result <= -536870211)
      {
        if (result == -536870911)
        {
          return 31;
        }

        if (result == -536870211)
        {
          return 1;
        }

        return 18;
      }

      if (result == -536870210)
      {
        return 5;
      }

      if (result == -536870207)
      {
        return 20;
      }

      if (result != -536870206)
      {
        return 18;
      }

      return 2;
    }

    if (result <= -536870166)
    {
      if (result <= -536870175)
      {
        if (result == -536870184)
        {
          return 22;
        }

        if (result == -536870176)
        {
          return 26;
        }
      }

      else
      {
        switch(result)
        {
          case 0xE00002E2:
            return 23;
          case 0xE00002E3:
            return 10;
          case 0xE00002E7:
            return 29;
        }
      }

      return 18;
    }

    if (result <= -536870163)
    {
      if (result == -536870165)
      {
        return 21;
      }

      if (result == -536870163)
      {
        return 27;
      }

      return 18;
    }

    if (result == -536870162)
    {
      return 28;
    }

    if (result == -536870160)
    {
      return 4;
    }

    if (result)
    {
      return 18;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramChainingSetActiveProcedure_cold_2();
    }

    return 8;
  }

  return result;
}

uint64_t ANEServicesProgramCancelAllRequests(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 8);
    if (!v2[435])
    {
      result = 11;
      goto LABEL_17;
    }

    v3 = *(*(*v2 + 16) + 8);
    v4 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2430);
    v5 = +[ANEServicesLog handle];
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v5))
      {
        v7 = *(a1 + 112);
        v14 = 134217984;
        v15 = v7;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ServicesProgramCancelAllRequests", "progHandle=%llx", &v14, 0xCu);
      }
    }

    v8 = ANE::ANEServicesDevice::ANE_CancelAllRequests(v3);
    v9 = +[ANEServicesLog handle];
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v9))
      {
        v11 = *(a1 + 112);
        v14 = 134217984;
        v15 = v11;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_END, v4, "ServicesProgramCancelAllRequests", "progHandle=%llx", &v14, 0xCu);
      }
    }

    if (v8 > -536870185)
    {
      if (v8 > -536870166)
      {
        if (v8 <= -536870163)
        {
          if (v8 == -536870165)
          {
            result = 21;
            goto LABEL_17;
          }

          if (v8 == -536870163)
          {
            result = 27;
            goto LABEL_17;
          }
        }

        else
        {
          switch(v8)
          {
            case -536870162:
              result = 28;
              goto LABEL_17;
            case -536870160:
              result = 4;
              goto LABEL_17;
            case 0:
              result = 0;
              goto LABEL_17;
          }
        }
      }

      else if (v8 <= -536870175)
      {
        if (v8 == -536870184)
        {
          result = 22;
          goto LABEL_17;
        }

        if (v8 == -536870176)
        {
          result = 26;
          goto LABEL_17;
        }
      }

      else
      {
        switch(v8)
        {
          case -536870174:
            result = 23;
            goto LABEL_17;
          case -536870173:
            result = 10;
            goto LABEL_17;
          case -536870169:
            result = 29;
            goto LABEL_17;
        }
      }
    }

    else if (v8 > -536870204)
    {
      if (v8 <= -536870192)
      {
        if (v8 == -536870203)
        {
          result = 30;
          goto LABEL_17;
        }

        if (v8 == -536870201)
        {
          result = 24;
          goto LABEL_17;
        }
      }

      else
      {
        switch(v8)
        {
          case -536870191:
            result = 19;
            goto LABEL_17;
          case -536870190:
            result = 32;
            goto LABEL_17;
          case -536870186:
            result = 15;
            goto LABEL_17;
        }
      }
    }

    else if (v8 <= -536870211)
    {
      if (v8 == -536870911)
      {
        result = 31;
        goto LABEL_17;
      }

      if (v8 == -536870211)
      {
        result = 1;
        goto LABEL_17;
      }
    }

    else
    {
      switch(v8)
      {
        case -536870210:
          result = 5;
          goto LABEL_17;
        case -536870207:
          result = 20;
          goto LABEL_17;
        case -536870206:
          goto LABEL_15;
      }
    }

    result = 18;
    goto LABEL_17;
  }

LABEL_15:
  result = 2;
LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANEServicesProgramMemoryMapRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramMemoryMapRequest_cold_1();
    }

    goto LABEL_10;
  }

  v4 = *(a1 + 16);
  v5 = *(v4 + 8);
  if (v5)
  {
    v6 = *(v4 + 104);
    if (v6)
    {
      v7 = *(a2 + 3080);
      if (v7 >= 0x81)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramMemoryMapRequest_cold_3();
        }

        goto LABEL_10;
      }

      if (a3)
      {
        add = atomic_fetch_add((v6 + 416), 1uLL);
        v7 = *(a2 + 3080);
      }

      else
      {
        add = 0;
      }

      bzero(v19, 0x808uLL);
      if (v7)
      {
        v12 = 0;
        v13 = (a2 + 16);
        v14 = v19;
        do
        {
          *v14 = IOSurfaceGetID(*(v13 - 2));
          *(v14 + 4) = *(v13 - 1);
          v15 = *v13;
          v13 += 3;
          *(v14 + 3) = v15;
          ++v12;
          v16 = *(a2 + 3080);
          v14 += 2;
        }

        while (v12 < v16);
      }

      else
      {
        LODWORD(v16) = 0;
      }

      v19[257] = *(a2 + 3072);
      v20 = v16;
      v21 = *(a2 + 3084);
      v22 = add;
      v17 = ANE::ANEServicesDevice::ANE_ProgramMemoryMapRequest(v5, v19, a3);
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramMemoryMapRequest_cold_2();
        }

        if (v18 <= -536870187)
        {
          if (v18 <= -536870207)
          {
            if (v18 > -536870211)
            {
              if (v18 == -536870210)
              {
                result = 5;
                goto LABEL_17;
              }

              if (v18 == -536870207)
              {
                result = 20;
                goto LABEL_17;
              }
            }

            else
            {
              if (v18 == -536870911)
              {
                result = 31;
                goto LABEL_17;
              }

              if (v18 == -536870211)
              {
                result = 1;
                goto LABEL_17;
              }
            }
          }

          else if (v18 <= -536870202)
          {
            if (v18 == -536870206)
            {
LABEL_10:
              result = 2;
              goto LABEL_17;
            }

            if (v18 == -536870203)
            {
              result = 30;
              goto LABEL_17;
            }
          }

          else
          {
            switch(v18)
            {
              case -536870201:
                result = 24;
                goto LABEL_17;
              case -536870191:
                result = 19;
                goto LABEL_17;
              case -536870190:
                result = 32;
                goto LABEL_17;
            }
          }
        }

        else if (v18 > -536870170)
        {
          if (v18 <= -536870164)
          {
            if (v18 == -536870169)
            {
              result = 29;
              goto LABEL_17;
            }

            if (v18 == -536870165)
            {
              result = 21;
              goto LABEL_17;
            }
          }

          else
          {
            switch(v18)
            {
              case -536870163:
                result = 27;
                goto LABEL_17;
              case -536870162:
                result = 28;
                goto LABEL_17;
              case -536870160:
                result = 4;
                goto LABEL_17;
            }
          }
        }

        else if (v18 <= -536870177)
        {
          if (v18 == -536870186)
          {
            result = 15;
            goto LABEL_17;
          }

          if (v18 == -536870184)
          {
            result = 22;
            goto LABEL_17;
          }
        }

        else
        {
          switch(v18)
          {
            case -536870176:
              result = 26;
              goto LABEL_17;
            case -536870174:
              result = 23;
              goto LABEL_17;
            case -536870173:
              result = 10;
              goto LABEL_17;
          }
        }

        result = 18;
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v24 = "ANEServicesProgramMemoryMapRequest";
        _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: pANEServicesDevice->ANE_ProgramMemoryMapRequest success\n", buf, 0xCu);
      }

      result = 0;
      if (a3)
      {
        *(a2 + 3088) = v22;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramMemoryMapRequest_cold_4();
      }

      result = 11;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramMemoryMapRequest_cold_5();
    }

    result = 8;
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANEServicesProgramMemoryUnmapRequest(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramMemoryUnmapRequest_cold_1();
    }

    goto LABEL_19;
  }

  v3 = *(*(a1 + 16) + 8);
  if (v3)
  {
    bzero(v14, 0x808uLL);
    LODWORD(v4) = *(a2 + 3080);
    if (v4)
    {
      v5 = 0;
      v6 = (a2 + 16);
      v7 = v14;
      do
      {
        *v7 = IOSurfaceGetID(*(v6 - 2));
        *(v7 + 4) = *(v6 - 1);
        v8 = *v6;
        v6 += 3;
        *(v7 + 3) = v8;
        ++v5;
        v4 = *(a2 + 3080);
        v7 += 2;
      }

      while (v5 < v4);
    }

    v14[257] = *(a2 + 3072);
    v15 = v4;
    v16 = *(a2 + 3084);
    v17 = *(a2 + 3088);
    v9 = ANE::ANEServicesDevice::ANE_ProgramMemoryUnMapRequest(v3, v14);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramMemoryUnmapRequest_cold_2();
      }

      if (v10 > -536870187)
      {
        if (v10 > -536870170)
        {
          if (v10 <= -536870164)
          {
            if (v10 == -536870169)
            {
              result = 29;
              goto LABEL_25;
            }

            if (v10 == -536870165)
            {
              result = 21;
              goto LABEL_25;
            }
          }

          else
          {
            switch(v10)
            {
              case -536870163:
                result = 27;
                goto LABEL_25;
              case -536870162:
                result = 28;
                goto LABEL_25;
              case -536870160:
                result = 4;
                goto LABEL_25;
            }
          }
        }

        else if (v10 <= -536870177)
        {
          if (v10 == -536870186)
          {
            result = 15;
            goto LABEL_25;
          }

          if (v10 == -536870184)
          {
            result = 22;
            goto LABEL_25;
          }
        }

        else
        {
          switch(v10)
          {
            case -536870176:
              result = 26;
              goto LABEL_25;
            case -536870174:
              result = 23;
              goto LABEL_25;
            case -536870173:
              result = 10;
              goto LABEL_25;
          }
        }

LABEL_63:
        result = 18;
        goto LABEL_25;
      }

      if (v10 <= -536870207)
      {
        if (v10 > -536870211)
        {
          if (v10 == -536870210)
          {
            result = 5;
            goto LABEL_25;
          }

          if (v10 == -536870207)
          {
            result = 20;
            goto LABEL_25;
          }
        }

        else
        {
          if (v10 == -536870911)
          {
            result = 31;
            goto LABEL_25;
          }

          if (v10 == -536870211)
          {
            result = 1;
            goto LABEL_25;
          }
        }

        goto LABEL_63;
      }

      if (v10 > -536870202)
      {
        switch(v10)
        {
          case -536870201:
            result = 24;
            goto LABEL_25;
          case -536870191:
            result = 19;
            goto LABEL_25;
          case -536870190:
            result = 32;
            goto LABEL_25;
        }

        goto LABEL_63;
      }

      if (v10 != -536870206)
      {
        if (v10 == -536870203)
        {
          result = 30;
          goto LABEL_25;
        }

        goto LABEL_63;
      }

LABEL_19:
      result = 2;
      goto LABEL_25;
    }

    v12 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v12)
    {
      *buf = 136315138;
      v19 = "ANEServicesProgramMemoryUnmapRequest";
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: pANEServicesDevice->ANE_ProgramMemoryUnMapRequest success\n", buf, 0xCu);
      result = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesProgramMemoryUnmapRequest_cold_3();
    }

    result = 8;
  }

LABEL_25:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANEServicesProgramCreateNewInstance(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = 2;
  if (a1 && a2 && a3 && (*a2 || *(a2 + 12)))
  {
    v5 = *(a1 + 16);
    if (*(v5 + 8))
    {
      if (*(v5 + 32) == 1)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramCreateNewInstance_cold_3();
        }

        v3 = 20;
      }

      else
      {
        if (*(a2 + 67) < 0x21u)
        {
          v12 = *(v5 + 8);
          v8 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B240C);
          v9 = +[ANEServicesLog handle];
          if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v10 = v9;
            if (os_signpost_enabled(v9))
            {
              v11 = *a2;
              *buf = 134217984;
              v14 = v11;
              _os_signpost_emit_with_name_impl(&dword_1C0446000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ServicesProgramCreateNewInstance", "progHandle=%llx", buf, 0xCu);
            }
          }

          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesProgramCreateNewInstance_cold_2();
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesProgramCreateNewInstance_cold_4();
      }

      v3 = 8;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANEServicesSessionHintRequest(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = 2;
  if (!a1 || !a2)
  {
    goto LABEL_17;
  }

  v5 = *(*(a1 + 16) + 8);
  if (v5)
  {
    v7 = os_signpost_id_make_with_pointer(+[ANEServicesLog handle], 0x61B2438);
    v8 = +[ANEServicesLog handle];
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v8))
      {
        v10 = *(a2 + 2);
        v11 = *a2;
        *buf = 67109376;
        *&buf[4] = v10;
        *&buf[8] = 2048;
        *&buf[10] = v11;
        _os_signpost_emit_with_name_impl(&dword_1C0446000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "ServicesSessionHintRequest", "hint=%u handle=0x%llx", buf, 0x12u);
      }
    }

    v20 = 0;
    memset(buf, 0, sizeof(buf));
    v19 = *a2;
    LOBYTE(v20) = *(a2 + 2);
    BYTE1(v20) = *(a2 + 12);
    v12 = ANE::ANEServicesDevice::ANE_SessionHintRequest(v5, &v19, buf);
    if (a3 && !v12)
    {
      *a3 = *buf;
      *(a3 + 16) = *&buf[16];
LABEL_10:
      v3 = 0;
LABEL_11:
      v13 = +[ANEServicesLog handle];
      if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
        if (os_signpost_enabled(v13))
        {
          v15 = *(a2 + 2);
          v16 = *a2;
          *buf = 67109376;
          *&buf[4] = v15;
          *&buf[8] = 2048;
          *&buf[10] = v16;
          _os_signpost_emit_with_name_impl(&dword_1C0446000, v14, OS_SIGNPOST_INTERVAL_END, v7, "ServicesSessionHintRequest", "hint=%u handle=0x%llx", buf, 0x12u);
        }
      }

      goto LABEL_17;
    }

    if (v12 > -536870185)
    {
      if (v12 > -536870166)
      {
        if (v12 <= -536870163)
        {
          if (v12 == -536870165)
          {
            v3 = 21;
            goto LABEL_11;
          }

          if (v12 == -536870163)
          {
            v3 = 27;
            goto LABEL_11;
          }
        }

        else
        {
          switch(v12)
          {
            case -536870162:
              v3 = 28;
              goto LABEL_11;
            case -536870160:
              v3 = 4;
              goto LABEL_11;
            case 0:
              goto LABEL_10;
          }
        }
      }

      else if (v12 <= -536870175)
      {
        if (v12 == -536870184)
        {
          v3 = 22;
          goto LABEL_11;
        }

        if (v12 == -536870176)
        {
          v3 = 26;
          goto LABEL_11;
        }
      }

      else
      {
        switch(v12)
        {
          case -536870174:
            v3 = 23;
            goto LABEL_11;
          case -536870173:
            v3 = 10;
            goto LABEL_11;
          case -536870169:
            v3 = 29;
            goto LABEL_11;
        }
      }
    }

    else if (v12 > -536870204)
    {
      if (v12 <= -536870192)
      {
        if (v12 == -536870203)
        {
          v3 = 30;
          goto LABEL_11;
        }

        if (v12 == -536870201)
        {
          v3 = 24;
          goto LABEL_11;
        }
      }

      else
      {
        switch(v12)
        {
          case -536870191:
            v3 = 19;
            goto LABEL_11;
          case -536870190:
            v3 = 32;
            goto LABEL_11;
          case -536870186:
            v3 = 15;
            goto LABEL_11;
        }
      }
    }

    else if (v12 <= -536870211)
    {
      if (v12 == -536870911)
      {
        v3 = 31;
        goto LABEL_11;
      }

      if (v12 == -536870211)
      {
        v3 = 1;
        goto LABEL_11;
      }
    }

    else
    {
      switch(v12)
      {
        case -536870210:
          v3 = 5;
          goto LABEL_11;
        case -536870207:
          v3 = 20;
          goto LABEL_11;
        case -536870206:
          v3 = 2;
          goto LABEL_11;
      }
    }

    v3 = 18;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesSessionHintRequest_cold_1();
  }

  v3 = 8;
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t ANEServicesHandleDeviceOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = ANE::ANERequestReceiver::FrameDone;
  *(a2 + 16) = a5;
  v7 = ANE::ANEServicesDevice::ANEDeviceOpen(a1, MyANEServicesDeviceMessageNotification, a4, *a3, a2);
  if (*(a1 + 136) == 1)
  {
    if (v7 != -536870174)
    {
      if (!v7)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          v9 = *a3;
          v14 = 67109120;
          v15 = v9;
          v10 = MEMORY[0x1E69E9C10];
          v11 = "ANEDriver Device Open succeeded with usage type: %d\n";
LABEL_18:
          _os_log_impl(&dword_1C0446000, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 8u);
          result = 0;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesHandleDeviceOpen_cold_2();
      }

      if (v7 > -536870187)
      {
        if (v7 <= -536870166)
        {
          if (v7 > -536870177)
          {
            if (v7 != -536870176)
            {
              if (v7 != -536870173)
              {
                if (v7 != -536870169)
                {
                  goto LABEL_78;
                }

LABEL_73:
                result = 29;
                goto LABEL_22;
              }

LABEL_70:
              result = 10;
              goto LABEL_22;
            }

LABEL_69:
            result = 26;
            goto LABEL_22;
          }

          goto LABEL_53;
        }

        if (v7 > -536870163)
        {
          if (v7 != -536870162)
          {
            if (v7 != -536870160)
            {
              goto LABEL_78;
            }

            goto LABEL_71;
          }

          goto LABEL_67;
        }

        if (v7 != -536870165)
        {
          if (v7 != -536870163)
          {
            goto LABEL_78;
          }

          goto LABEL_76;
        }

        goto LABEL_77;
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      v15 = -536870174;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not open ANEDriver (possible missing entitlement) - status=0x%x", &v14, 8u);
    }

    goto LABEL_21;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesHandleDeviceOpen_cold_1();
    }

    if (v7 <= -536870187)
    {
LABEL_32:
      if (v7 <= -536870207)
      {
        if (v7 > -536870211)
        {
          if (v7 == -536870210)
          {
            result = 5;
            goto LABEL_22;
          }

          if (v7 == -536870207)
          {
            result = 20;
            goto LABEL_22;
          }
        }

        else
        {
          if (v7 == -536870911)
          {
            result = 31;
            goto LABEL_22;
          }

          if (v7 == -536870211)
          {
            result = 1;
            goto LABEL_22;
          }
        }
      }

      else if (v7 <= -536870202)
      {
        if (v7 == -536870206)
        {
          result = 2;
          goto LABEL_22;
        }

        if (v7 == -536870203)
        {
          result = 30;
          goto LABEL_22;
        }
      }

      else
      {
        switch(v7)
        {
          case -536870201:
            result = 24;
            goto LABEL_22;
          case -536870191:
            result = 19;
            goto LABEL_22;
          case -536870190:
            result = 32;
            goto LABEL_22;
        }
      }

      goto LABEL_78;
    }

    if (v7 > -536870170)
    {
      if (v7 > -536870164)
      {
        if (v7 != -536870163)
        {
          if (v7 != -536870162)
          {
            if (v7 != -536870160)
            {
              goto LABEL_78;
            }

LABEL_71:
            result = 4;
            goto LABEL_22;
          }

LABEL_67:
          result = 28;
          goto LABEL_22;
        }

LABEL_76:
        result = 27;
        goto LABEL_22;
      }

      if (v7 == -536870169)
      {
        goto LABEL_73;
      }

      if (v7 != -536870165)
      {
        goto LABEL_78;
      }

LABEL_77:
      result = 21;
      goto LABEL_22;
    }

    if (v7 <= -536870177)
    {
LABEL_53:
      if (v7 == -536870186)
      {
        result = 15;
        goto LABEL_22;
      }

      if (v7 == -536870184)
      {
        result = 22;
        goto LABEL_22;
      }

      goto LABEL_78;
    }

    if (v7 == -536870176)
    {
      goto LABEL_69;
    }

    if (v7 != -536870174)
    {
      if (v7 == -536870173)
      {
        goto LABEL_70;
      }

LABEL_78:
      result = 18;
      goto LABEL_22;
    }

LABEL_21:
    result = 23;
    goto LABEL_22;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v12 = *a3;
    v14 = 67109120;
    v15 = v12;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "ANEServices Device Open succeeded with usage type: %d\n";
    goto LABEL_18;
  }

LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANEServicesLocateAndOpenHintedDevice(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFArrayRef *a5, uint64_t a6, int a7, _DWORD *a8)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a7 < 1)
  {
    v15 = 18;
  }

  else
  {
    v9 = a5;
    v14 = 0;
    v30 = a7;
    v15 = 18;
    v16 = MEMORY[0x1E69E9C10];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*v9, v14);
      *a1 = ValueAtIndex;
      v18 = ValueAtIndex[34];
      v19 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v18 != 1)
      {
        break;
      }

      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_1C0446000, v16, OS_LOG_TYPE_DEFAULT, "ANEDriver type being skipped due to explicit hint\n", buf, 2u);
      }

LABEL_21:
      if (++v14 == v30)
      {
        goto LABEL_24;
      }
    }

    if (v19)
    {
      *buf = 67109120;
      v32 = v14;
      _os_log_impl(&dword_1C0446000, v16, OS_LOG_TYPE_DEFAULT, "(Possible Multi-ANE System) Opening ANEDevice at index %d\n", buf, 8u);
    }

    v20 = 0;
    while (1)
    {
      v21 = ANEServicesHandleDeviceOpen(*a1, a2, a3, a4, a6);
      v22 = *a1;
      if (!v21)
      {
        break;
      }

      v15 = v21;
      ANE::ANEServicesDevice::ANEDeviceClose(*a1);
      if (v15 == 10)
      {
        ++v20;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          v32 = v20;
          v33 = 1024;
          v34 = 10;
          _os_log_impl(&dword_1C0446000, v16, OS_LOG_TYPE_DEFAULT, "(Possible Multi-ANE System) ANEServices device not powered, retry %d out of %d\n", buf, 0xEu);
        }

        usleep(1u);
        if (v20 != 10)
        {
          continue;
        }
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v32 = v14;
        _os_log_impl(&dword_1C0446000, v16, OS_LOG_TYPE_DEFAULT, "(Possible Multi-ANE System) Could not open ANEServices device at index %d. Skipping device...\n", buf, 8u);
      }

LABEL_20:
      v9 = a5;
      goto LABEL_21;
    }

    v23 = *(v22 + 8);
    v24 = *a8 - 1;
    v25 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v23 != v24)
    {
      if (v25)
      {
        *buf = 67109120;
        v32 = v14;
        _os_log_impl(&dword_1C0446000, v16, OS_LOG_TYPE_DEFAULT, "(Possible Multi-ANE System) Skipping ANEServices device at index %d\n", buf, 8u);
        v22 = *a1;
      }

      ANE::ANEServicesDevice::ANEDeviceClose(v22);
      v15 = 0;
      goto LABEL_20;
    }

    if (v25)
    {
      *buf = 67109120;
      v32 = v14;
      _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "(Possible Multi-ANE System) Selected ANE device at index %d based on subType match\n", buf, 8u);
    }

    v15 = 0;
  }

LABEL_24:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t ANEServicesCheckPrivilegedVMAccess()
{
  v26 = *MEMORY[0x1E69E9840];
  mainPort = 0;
  v0 = MEMORY[0x1C68DA060](*MEMORY[0x1E69E99F8], &mainPort);
  if (v0)
  {
    v1 = v0;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315394;
    v18 = "ANEReturn ANEServicesCheckPrivilegedVMAccess()";
    v19 = 1024;
    LODWORD(v20) = v1;
    v2 = MEMORY[0x1E69E9C10];
    v3 = "%s: Couldn't create a mach port: result=0x%x";
    v4 = 18;
    goto LABEL_9;
  }

  existing = 0;
  strcpy(name, "ANEPrivilegedVMAccess");
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "ANEReturn ANEServicesCheckPrivilegedVMAccess()";
    v19 = 2080;
    v20 = name;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: probing for %s", buf, 0x16u);
  }

  v5 = IOServiceMatching(name);
  MatchingServices = IOServiceGetMatchingServices(mainPort, v5, &existing);
  if (MatchingServices)
  {
    v1 = MatchingServices;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315650;
    v18 = "ANEReturn ANEServicesCheckPrivilegedVMAccess()";
    v19 = 2080;
    v20 = name;
    v21 = 1024;
    v22 = v1;
    v2 = MEMORY[0x1E69E9C10];
    v3 = "%s: Couldn't get matching services for %s: result=0x%x";
    v4 = 28;
    goto LABEL_9;
  }

  if (existing)
  {
    v8 = IOIteratorNext(existing);
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x1E69E9A60];
      v11 = MEMORY[0x1E69E9C10];
      do
      {
        connect = 0;
        v1 = IOServiceOpen(v9, *v10, 3u, &connect);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v1)
        {
          if (v12)
          {
            *buf = 136315650;
            v18 = "ANEReturn ANEServicesCheckPrivilegedVMAccess()";
            v19 = 2080;
            v20 = name;
            v21 = 1024;
            v22 = v1;
            _os_log_impl(&dword_1C0446000, v11, OS_LOG_TYPE_DEFAULT, "%s:Client does NOT have privileged VM access to %s result=0x%x", buf, 0x1Cu);
          }
        }

        else
        {
          if (v12)
          {
            *buf = 136315906;
            v18 = "ANEReturn ANEServicesCheckPrivilegedVMAccess()";
            v19 = 2080;
            v20 = name;
            v21 = 1024;
            v22 = v9;
            v23 = 1024;
            v24 = 0;
            _os_log_impl(&dword_1C0446000, v11, OS_LOG_TYPE_DEFAULT, "%s:Client has privileged VM access to %s at port %u result=0x%x", buf, 0x22u);
          }

          IOServiceClose(connect);
          connect = 0;
        }

        IOObjectRelease(v9);
        v9 = IOIteratorNext(existing);
      }

      while (v9);
    }

    else
    {
      v1 = 0;
    }

    IOObjectRelease(existing);
  }

  else
  {
    v1 = -536870207;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "ANEReturn ANEServicesCheckPrivilegedVMAccess()";
      v2 = MEMORY[0x1E69E9C10];
      v3 = "%s:IOService ANEPrivilegedVMAccess not found.";
      v4 = 12;
LABEL_9:
      _os_log_impl(&dword_1C0446000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, v4);
    }
  }

LABEL_10:
  if (v1 > -536870185)
  {
    if (v1 > -536870166)
    {
      if (v1 <= -536870163)
      {
        if (v1 == -536870165)
        {
          result = 21;
          goto LABEL_71;
        }

        if (v1 == -536870163)
        {
          result = 27;
          goto LABEL_71;
        }
      }

      else
      {
        switch(v1)
        {
          case -536870162:
            result = 28;
            goto LABEL_71;
          case -536870160:
            result = 4;
            goto LABEL_71;
          case 0:
            result = 0;
            goto LABEL_71;
        }
      }
    }

    else if (v1 <= -536870175)
    {
      if (v1 == -536870184)
      {
        result = 22;
        goto LABEL_71;
      }

      if (v1 == -536870176)
      {
        result = 26;
        goto LABEL_71;
      }
    }

    else
    {
      switch(v1)
      {
        case -536870174:
          result = 23;
          goto LABEL_71;
        case -536870173:
          result = 10;
          goto LABEL_71;
        case -536870169:
          result = 29;
          goto LABEL_71;
      }
    }

LABEL_70:
    result = 18;
    goto LABEL_71;
  }

  if (v1 > -536870204)
  {
    if (v1 <= -536870192)
    {
      if (v1 == -536870203)
      {
        result = 30;
        goto LABEL_71;
      }

      if (v1 == -536870201)
      {
        result = 24;
        goto LABEL_71;
      }
    }

    else
    {
      switch(v1)
      {
        case -536870191:
          result = 19;
          goto LABEL_71;
        case -536870190:
          result = 32;
          goto LABEL_71;
        case -536870186:
          result = 15;
          goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

  if (v1 <= -536870211)
  {
    if (v1 == -536870911)
    {
      result = 31;
      goto LABEL_71;
    }

    if (v1 == -536870211)
    {
      result = 1;
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v1 == -536870210)
  {
    result = 5;
    goto LABEL_71;
  }

  if (v1 == -536870207)
  {
    result = 20;
    goto LABEL_71;
  }

  if (v1 != -536870206)
  {
    goto LABEL_70;
  }

  result = 2;
LABEL_71:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MyANEDeviceControllerNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 3758097084;
  }

  else
  {
    return 0;
  }
}

{
  if (a3)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 3758097084;
  }

  else
  {
    return 0;
  }
}

void *AllocateStatsBufferPool(void *result, unsigned int a2, int a3, unint64_t a4, ANE::ANEServicesDevice *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    if (a3)
    {
      operator new();
    }

    *result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ANEServicesInitializePlatformServices()
{
  v24 = 0;
  v23 = 0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ANEServicesInitializePlatformServices_cold_1();
  }

  ANEDeviceController = ANE::CreateANEDeviceController(&v24, MyANEDeviceControllerNotification, 0, v0);
  if (!v24)
  {
    Firmware = -536870208;
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      ANEServicesInitializePlatformServices_cold_7(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v6 = 0;
    goto LABEL_20;
  }

  Firmware = ANEDeviceController;
  if (!CFArrayGetCount(*v24))
  {
LABEL_11:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ANEServicesInitializePlatformServices_cold_6();
    }

    v6 = 0;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E9C10];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*v24, v3);
    if (*(ValueAtIndex + 34) == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        ANEServicesInitializePlatformServices_cold_5(&buf, v22);
      }

      goto LABEL_10;
    }

    v6 = ValueAtIndex;
    Firmware = ANE::ANEServicesDevice::ANEDeviceOpen(ValueAtIndex, MyANEServicesDeviceMessageNotification, 0, 2u, 0);
    if (!Firmware)
    {
      break;
    }

LABEL_10:
    if (++v3 >= CFArrayGetCount(*v24))
    {
      goto LABEL_11;
    }
  }

  memset(outputStruct, 0, sizeof(outputStruct));
  ANE::ANEServicesDevice::ANE_GetStatus(v6, outputStruct);
  if (BYTE8(outputStruct[0]) == 1)
  {
    v19[0] = &v23;
    v19[1] = v6;
    ANEDebugWorkProcessor = ANE::CreateANEDebugWorkProcessor(v19);
    if (ANEDebugWorkProcessor)
    {
      Firmware = ANEDebugWorkProcessor;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ANEServicesInitializePlatformServices_cold_2();
      }
    }

    else
    {
      started = ANE::ANEDebugWorkProcessor::startReceive(v23);
      if (started)
      {
        Firmware = started;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ANEServicesInitializePlatformServices_cold_3();
        }
      }

      else
      {
        Firmware = ANE::ANEServicesDevice::ANE_LoadFirmware(v6);
        if (Firmware)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ANEServicesInitializePlatformServices_cold_4();
          }

          Firmware = 0;
        }
      }
    }
  }

  else
  {
    Firmware = -536870170;
  }

LABEL_14:
  if (!Firmware)
  {
    return 0;
  }

LABEL_20:
  if (v23)
  {
    ANE::ANEDebugWorkProcessor::stopReceive(v23);
    ANE::DestroyANEDebugWorkProcessor(v23, v16);
    v23 = 0;
  }

  if (v6)
  {
    ANE::ANEServicesDevice::ANEDeviceClose(v6);
  }

  if (Firmware <= -536870204)
  {
    if (Firmware <= -536870211)
    {
      if (Firmware == -536870911)
      {
        return 31;
      }

      if (Firmware == -536870211)
      {
        return 1;
      }
    }

    else
    {
      switch(Firmware)
      {
        case -536870210:
          return 5;
        case -536870207:
          return 20;
        case -536870206:
          return 2;
      }
    }

    return 18;
  }

  else
  {
    result = 4;
    switch(Firmware)
    {
      case -536870191:
        return 19;
      case -536870190:
        return 32;
      case -536870189:
      case -536870188:
      case -536870187:
      case -536870185:
      case -536870183:
      case -536870182:
      case -536870181:
      case -536870180:
      case -536870179:
      case -536870178:
      case -536870177:
      case -536870175:
      case -536870172:
      case -536870171:
      case -536870168:
      case -536870167:
      case -536870166:
      case -536870164:
      case -536870161:
        return 18;
      case -536870186:
        return 15;
      case -536870184:
        return 22;
      case -536870176:
        return 26;
      case -536870174:
        return 23;
      case -536870173:
        return 10;
      case -536870170:
        return 0;
      case -536870169:
        return 29;
      case -536870165:
        return 21;
      case -536870163:
        return 27;
      case -536870162:
        return 28;
      case -536870160:
        return result;
      default:
        if (Firmware == -536870203)
        {
          result = 30;
        }

        else
        {
          if (Firmware != -536870201)
          {
            return 18;
          }

          result = 24;
        }

        break;
    }
  }

  return result;
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ANE::ANEServicesThreadStart(uint64_t a1)
{
  pthread_setname_np("ANEServicesThread");
  ANE::ANEThreadReadySyncer::lock(*(a1 + 24));
  operator new();
}

__n128 __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  result = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  *(a1 + 96) = result;
  *(a1 + 112) = v5;
  return result;
}

uint64_t ___ZN3ANE26DestroyANEDeviceControllerEPNS_19ANEDeviceControllerE_block_invoke(uint64_t a1)
{
  ANE::ANEThreadReadySyncer::lock((*(*(a1 + 32) + 8) + 48));
  v2 = *(a1 + 40);
  if (v2)
  {
    ANE::ANEDeviceController::~ANEDeviceController(v2);
    MEMORY[0x1C68DA430]();
  }

  v3 = (*(*(a1 + 32) + 8) + 48);

  return ANE::ANEThreadReadySyncer::signalAndUnlock(v3);
}

uint64_t ANE::ANESetCurrentThreadAsTerminating(uint64_t a1)
{
  pthread_once(&ANE::threadTerminationKeyInitialized, ANE::ANECreateKey);
  v2 = pthread_getspecific(ANE::threadTerminationKey);
  if (!v2)
  {
    v2 = malloc_type_malloc(0x10uLL, 0x10200408CB94CA5uLL);
  }

  *v2 = 1;
  v2[1] = a1;
  v3 = ANE::threadTerminationKey;

  return pthread_setspecific(v3, v2);
}

void *ANE::ANECheckForPendingClose(ANE *this)
{
  pthread_once(&ANE::threadTerminationKeyInitialized, ANE::ANECreateKey);
  result = pthread_getspecific(ANE::threadTerminationKey);
  if (result)
  {
    if (*result == 1)
    {
      result = result[1];
      if (result)
      {
        if (*result)
        {
          return (*(*result + 8))(result);
        }
      }
    }
  }

  return result;
}

uint64_t ANE::ANEIsDelayedCloseFlagSet(ANE *this)
{
  pthread_once(&ANE::threadTerminationKeyInitialized, ANE::ANECreateKey);
  v1 = pthread_getspecific(ANE::threadTerminationKey);
  v3 = 0;
  if (v1)
  {
    return *v1;
  }

  return v3;
}

void *ANE::ANEAckCloseRequest(ANE *this)
{
  result = pthread_getspecific(ANE::threadTerminationKey);
  if (result)
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

CFMutableDictionaryRef ANE::ANECreateCVBuffer(unsigned int a1, unsigned int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, __int16 a11, __int16 a12)
{
  v39 = a2;
  valuePtr = a1;
  v37 = a4;
  v38 = a3;
  pixelBufferOut = 0;
  if (a5)
  {
    if (a5 == 4)
    {
      v18 = 1278226488;
      goto LABEL_17;
    }

    if (a5 == 2)
    {
      HIDWORD(v17) = (a12 & 0xFF0) - 64;
      LODWORD(v17) = HIDWORD(v17);
      v16 = v17 >> 6;
      if (v16 > 2)
      {
        if (v16 == 7)
        {
          v18 = 1734505012;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v18 = 1919379252;
          goto LABEL_17;
        }

LABEL_15:
        v18 = 1650943796;
        goto LABEL_17;
      }

      v18 = 1735549492;
    }

    else
    {
      v18 = 2037741158;
      if (!a6)
      {
        v18 = 2037741171;
      }
    }
  }

  else
  {
    v18 = 875704422;
    if (!a6)
    {
      v18 = 875704438;
    }
  }

LABEL_17:
  pixelFormatType = v18;
  v19 = *MEMORY[0x1E695E480];
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v21 = result;
    v22 = CFNumberCreate(v19, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v21, *MEMORY[0x1E6966200], v22);
    CFRelease(v22);
    v34 = a7;
    v23 = CFNumberCreate(v19, kCFNumberIntType, &v34);
    CFDictionarySetValue(v21, *MEMORY[0x1E6966018], v23);
    CFRelease(v23);
    v24 = CFNumberCreate(v19, kCFNumberIntType, &v39);
    CFDictionarySetValue(v21, *MEMORY[0x1E69660C0], v24);
    CFRelease(v24);
    if (a3)
    {
      v25 = CFNumberCreate(v19, kCFNumberIntType, &v38);
      CFDictionarySetValue(v21, *MEMORY[0x1E6966070], v25);
      CFRelease(v25);
    }

    if (a4)
    {
      v26 = CFNumberCreate(v19, kCFNumberIntType, &v37);
      CFDictionarySetValue(v21, *MEMORY[0x1E6966098], v26);
      CFRelease(v26);
    }

    v27 = CFNumberCreate(v19, kCFNumberIntType, &pixelFormatType);
    CFDictionarySetValue(v21, *MEMORY[0x1E6966128], v27);
    CFRelease(v27);
    v33 = a8;
    v28 = CFNumberCreate(v19, kCFNumberIntType, &v33);
    CFDictionarySetValue(v21, *MEMORY[0x1E6966138], v28);
    CFRelease(v28);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v30 = Mutable;
      if (a10)
      {
        CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0D8], *MEMORY[0x1E695E4C0]);
      }

      if ((a12 & 0x400) != 0)
      {
        CFDictionarySetValue(v30, *MEMORY[0x1E696D120], *MEMORY[0x1E695E4D0]);
      }

      v32 = a9;
      v31 = CFNumberCreate(0, kCFNumberIntType, &v32);
      CFDictionarySetValue(v30, *MEMORY[0x1E696CE60], v31);
      CFRelease(v31);
      CFDictionaryAddValue(v21, *MEMORY[0x1E69660E0], v30);
      CFRelease(v30);
      CVPixelBufferCreate(v19, valuePtr, v39, pixelFormatType, v21, &pixelBufferOut);
      CFRelease(v21);
      return pixelBufferOut;
    }

    else
    {
      CFRelease(v21);
      return 0;
    }
  }

  return result;
}

CFMutableDictionaryRef ANE::ANECreateCVBufferPool(int a1, int a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, int a9, int a10, char a11, __int16 a12, __int16 a13)
{
  v48 = a2;
  valuePtr = a1;
  v46 = a4;
  v47 = a3;
  poolOut = 0;
  v45 = a6;
  if (a5)
  {
    if (a5 == 4)
    {
      v19 = 1278226488;
      goto LABEL_17;
    }

    if (a5 == 2)
    {
      HIDWORD(v18) = (a13 & 0xFF0) - 64;
      LODWORD(v18) = HIDWORD(v18);
      v17 = v18 >> 6;
      if (v17 > 2)
      {
        if (v17 == 7)
        {
          v19 = 1734505012;
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (v17)
      {
        if (v17 == 1)
        {
          v19 = 1919379252;
          goto LABEL_17;
        }

LABEL_15:
        v19 = 1650943796;
        goto LABEL_17;
      }

      v19 = 1735549492;
    }

    else
    {
      v19 = 2037741158;
      if (!a7)
      {
        v19 = 2037741171;
      }
    }
  }

  else
  {
    v19 = 875704422;
    if (!a7)
    {
      v19 = 875704438;
    }
  }

LABEL_17:
  v43 = v19;
  v20 = *MEMORY[0x1E695E480];
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = CFNumberCreate(v20, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(v22, *MEMORY[0x1E6966200], v23);
  CFRelease(v23);
  v42 = a8;
  v24 = CFNumberCreate(v20, kCFNumberIntType, &v42);
  CFDictionarySetValue(v22, *MEMORY[0x1E6966018], v24);
  CFRelease(v24);
  v25 = CFNumberCreate(v20, kCFNumberIntType, &v48);
  CFDictionarySetValue(v22, *MEMORY[0x1E69660C0], v25);
  CFRelease(v25);
  if (a3)
  {
    v26 = CFNumberCreate(v20, kCFNumberIntType, &v47);
    CFDictionarySetValue(v22, *MEMORY[0x1E6966070], v26);
    CFRelease(v26);
  }

  if (a4)
  {
    v27 = CFNumberCreate(v20, kCFNumberIntType, &v46);
    CFDictionarySetValue(v22, *MEMORY[0x1E6966098], v27);
    CFRelease(v27);
  }

  v28 = CFNumberCreate(v20, kCFNumberIntType, &v43);
  CFDictionarySetValue(v22, *MEMORY[0x1E6966128], v28);
  CFRelease(v28);
  v41 = a9;
  v29 = CFNumberCreate(v20, kCFNumberIntType, &v41);
  CFDictionarySetValue(v22, *MEMORY[0x1E6966138], v29);
  CFRelease(v29);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v31 = Mutable;
  if (a11)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E696D0D8], *MEMORY[0x1E695E4C0]);
  }

  if ((a13 & 0x400) != 0)
  {
    CFDictionarySetValue(v31, *MEMORY[0x1E696D120], *MEMORY[0x1E695E4D0]);
  }

  v40 = a10;
  v32 = CFNumberCreate(0, kCFNumberIntType, &v40);
  CFDictionarySetValue(v31, *MEMORY[0x1E696CE60], v32);
  CFRelease(v32);
  CFDictionaryAddValue(v22, *MEMORY[0x1E69660E0], v31);
  CFRelease(v31);
  if (v48 != 8 && ((a13 & 0x30) != 0 || a7))
  {
    v33 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v33)
    {
      v34 = v33;
      if (a7)
      {
        CFDictionarySetValue(v33, *MEMORY[0x1E6965CF8], *MEMORY[0x1E6965D18]);
        if ((a13 & 0x10) != 0)
        {
          v35 = MEMORY[0x1E6965DC8];
        }

        else
        {
          v35 = MEMORY[0x1E6965DA8];
        }

        if ((a13 & 0x30) == 0)
        {
          goto LABEL_42;
        }

        v36 = MEMORY[0x1E6965FC0];
      }

      else
      {
        if ((a13 & 0x10) != 0)
        {
          v35 = MEMORY[0x1E6965DC8];
        }

        else
        {
          v35 = MEMORY[0x1E6965DA8];
        }

        if ((a13 & 0x30) == 0)
        {
          goto LABEL_42;
        }

        v36 = MEMORY[0x1E6965FD8];
      }

      CFDictionarySetValue(v34, *MEMORY[0x1E6965F90], *v36);
      CFDictionarySetValue(v34, *MEMORY[0x1E6965D90], *v35);
      CFDictionarySetValue(v34, *MEMORY[0x1E6965F38], *MEMORY[0x1E6965F58]);
LABEL_42:
      CFDictionaryAddValue(v22, *MEMORY[0x1E6965C78], v34);
      CFRelease(v34);
    }
  }

  v37 = CFDictionaryCreateMutable(v20, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v37)
  {
    v38 = v37;
    v39 = CFNumberCreate(0, kCFNumberCFIndexType, &v45);
    CFDictionaryAddValue(v38, *MEMORY[0x1E6966168], v39);
    CFRelease(v39);
    CVPixelBufferPoolCreate(v20, v38, v22, &poolOut);
    CFRelease(v38);
    if (poolOut)
    {
      CVPixelBufferPoolPreAllocate();
    }
  }

  CFRelease(v22);
  return poolOut;
}

const __CFString *ANE::ANEGetCFPreferenceNumber(const __CFString *this, const __CFString *a2, const __CFString *a3)
{
  v4 = CFPreferencesCopyValue(this, a2, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFStringGetTypeID())
    {
      IntValue = CFStringGetIntValue(v5);
      if (IntValue <= 0)
      {
        IntValue = 1;
        if (CFStringCompare(v5, @"true", 1uLL))
        {
          IntValue = 1;
          if (CFStringCompare(v5, @"yes", 1uLL))
          {
            if (CFStringCompare(v5, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(v5, @"no", 1uLL) == kCFCompareEqualTo || (IntValue = a3, CFStringCompare(v5, @"0", 1uLL) == kCFCompareEqualTo))
            {
              IntValue = 0;
            }
          }
        }
      }
    }

    else
    {
      v8 = CFGetTypeID(v5);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
        }

        else
        {
          IntValue = a3;
        }
      }

      else
      {
        v9 = CFGetTypeID(v5);
        IntValue = a3;
        if (v9 == CFBooleanGetTypeID())
        {
          IntValue = CFEqual(v5, *MEMORY[0x1E695E4D0]);
        }
      }
    }

    CFRelease(v5);
    return IntValue;
  }

  return a3;
}

ANE::ANECFLocalMessagePort *ANE::ANECFLocalMessagePort::ANECFLocalMessagePort(ANE::ANECFLocalMessagePort *this, const __CFString *a2, CFDataRef (__cdecl *a3)(CFMessagePortRef, SInt32, CFDataRef, void *), void (__cdecl *a4)(CFMessagePortRef, void *), void *a5)
{
  *this = &unk_1F3F83628;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  context.version = 0;
  context.info = a5;
  memset(&context.retain, 0, 24);
  v7 = CFMessagePortCreateLocal(0, a2, a3, &context, 0);
  *(this + 1) = v7;
  if (a4 && v7)
  {
    CFMessagePortSetInvalidationCallBack(v7, a4);
  }

  return this;
}

void ANE::ANECFLocalMessagePort::~ANECFLocalMessagePort(ANE::ANECFLocalMessagePort *this)
{
  *this = &unk_1F3F83628;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFMessagePortInvalidate(v3);
    CFRelease(*(this + 1));
  }
}

{
  ANE::ANECFLocalMessagePort::~ANECFLocalMessagePort(this);

  JUMPOUT(0x1C68DA430);
}

CFRunLoopSourceRef ANE::ANECFLocalMessagePort::GetRunLoopSource(ANE::ANECFLocalMessagePort *this)
{
  result = *(this + 2);
  if (!result)
  {
    result = CFMessagePortCreateRunLoopSource(0, *(this + 1), 0);
    *(this + 2) = result;
  }

  return result;
}

ANE::ANECFRemoteMessagePort *ANE::ANECFRemoteMessagePort::ANECFRemoteMessagePort(ANE::ANECFRemoteMessagePort *this, const __CFString *a2, void (__cdecl *a3)(CFMessagePortRef, void *))
{
  *this = &unk_1F3F83648;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  Remote = CFMessagePortCreateRemote(0, a2);
  *(this + 1) = Remote;
  if (a3 && Remote)
  {
    CFMessagePortSetInvalidationCallBack(Remote, a3);
  }

  return this;
}

void ANE::ANECFRemoteMessagePort::~ANECFRemoteMessagePort(ANE::ANECFRemoteMessagePort *this)
{
  *this = &unk_1F3F83648;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  ANE::ANECFRemoteMessagePort::~ANECFRemoteMessagePort(this);

  JUMPOUT(0x1C68DA430);
}

CFRunLoopSourceRef ANE::ANECFRemoteMessagePort::GetRunLoopSource(ANE::ANECFRemoteMessagePort *this)
{
  result = *(this + 2);
  if (!result)
  {
    result = CFMessagePortCreateRunLoopSource(0, *(this + 1), 0);
    *(this + 2) = result;
  }

  return result;
}

uint64_t ANE::ANEGetMachThreadPriority(ANE *this, integer_t *a2, int *a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  v4 = this;
  thread_info_outCnt = 10;
  v5 = thread_info(this, 3u, thread_info_out, &thread_info_outCnt);
  if (!v5)
  {
    switch(v17)
    {
      case 4:
        thread_info_outCnt = 4;
        v6 = thread_info(v4, 0xCu, v14, &thread_info_outCnt);
        if (v6)
        {
          v7 = *MEMORY[0x1E69E9848];
          v8 = "thread_info() for THREAD_SCHED_FIFO_INFO failed";
          v9 = 47;
          goto LABEL_4;
        }

        v11 = v14[1];
        break;
      case 2:
        thread_info_outCnt = 5;
        v6 = thread_info(v4, 0xBu, v13, &thread_info_outCnt);
        if (v6)
        {
          v7 = *MEMORY[0x1E69E9848];
          v8 = "thread_info() for THREAD_SCHED_RR_INFO failed\n";
          v9 = 46;
          goto LABEL_4;
        }

        v11 = v13[1];
        break;
      case 1:
        thread_info_outCnt = 5;
        v6 = thread_info(v4, 0xAu, v12, &thread_info_outCnt);
        if (v6)
        {
          v7 = *MEMORY[0x1E69E9848];
          v8 = "thread_info() for THREAD_SCHED_TIMESHARE_INFO failed\n";
          v9 = 53;
          goto LABEL_4;
        }

        v11 = v12[1];
        break;
      default:
        fwrite("Unknown mach thread policy\n", 0x1BuLL, 1uLL, *MEMORY[0x1E69E9848]);
        return 0;
    }

    *a2 = v11;
    return v6;
  }

  v6 = v5;
  v7 = *MEMORY[0x1E69E9848];
  v8 = "thread_info() for THREAD_BASIC_INFO failed\n";
  v9 = 43;
LABEL_4:
  fwrite(v8, v9, 1uLL, v7);
  return v6;
}

uint64_t ANE::ANESetMachThreadPriority(ANE *this, int a2)
{
  v3 = this;
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v4 = getpid();
  if (proc_pidinfo(v4, 2, 0, buffer, 232) <= 0)
  {
    fwrite("ANESetMachThreadPriority - proc_pidinfo() failed\n", 0x31uLL, 1uLL, *MEMORY[0x1E69E9848]);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    policy_info = a2 - v12;
    v5 = thread_policy_set(v3, 3u, &policy_info, 1u);
    if (v5)
    {
      v6 = v5;
      fprintf(*MEMORY[0x1E69E9848], "ANESetMachThreadPriority - thread_policy_set(...,THREAD_PRECEDENCE_POLICY,...) failed, err=%d\n", v5);
    }

    else
    {
      v6 = thread_policy_set(v3, 1u, &v9, 1u);
      if (v6)
      {
        fprintf(*MEMORY[0x1E69E9848], "ANESetMachThreadPriority - thread_policy_set(...,THREAD_EXTENDED_POLICY,...) failed, err=%d\n", v6);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t ANE::ANEInflateFirmwareBuffer(ANE *this, unint64_t a2, unint64_t a3, unsigned __int8 **a4, unint64_t *a5)
{
  memset(&strm.zalloc, 0, 24);
  strm.avail_in = a2;
  strm.next_in = 0;
  if (HIDWORD(a2))
  {
    fprintf(*MEMORY[0x1E69E9848], "Cannot initialize decompression.  Compressed buffer size %zd too large. \n", a2);
    return 4294967292;
  }

  else
  {
    v8 = inflateInit2_(&strm, 47, "1.2.12", 112);
    if (v8)
    {
      v9 = v8;
      fwrite("Cannot initialize decompression.  Invalid input. \n", 0x32uLL, 1uLL, *MEMORY[0x1E69E9848]);
    }

    else
    {
      v11 = *(this + a2 - 4);
      *a4 = v11;
      if (!(v11 >> 25))
      {
        operator new[]();
      }

      fprintf(*MEMORY[0x1E69E9848], "Expected size for decompressed firmware 0x%08x is larger than 0x%08x.  Failing. \n", v11, 0x2000000);
      return 4294967293;
    }
  }

  return v9;
}

uint64_t ANE::getFrameFormat(ANE *this)
{
  if (this > 1650943795)
  {
    if (this == 2037741171 || this == 2037741158)
    {
      return 1;
    }

    else if (this == 1650943796)
    {
      return 2;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (this == 875704422 || this == 875704438)
  {
    return 0;
  }

  else if (this == 1278226488)
  {
    return 4;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void ANE::ANECleanupKey(void *this, void *a2)
{
  if (this)
  {
    free(this);
  }
}

uint64_t ANE::SharedServiceThreadStart(pthread_mutex_t *this, void *a2)
{
  pthread_setname_np("ANEServicesThread");
  ANE::ANEThreadReadySyncer::lock(this);
  Current = CFRunLoopGetCurrent();
  *(ANE::pSharedServiceThread + 16) = CFRetain(Current);
  memset(&v10, 0, sizeof(v10));
  v4 = CFRunLoopSourceCreate(0, 0, &v10);
  if (v4)
  {
    v5 = v4;
    CFRunLoopAddSource(*(ANE::pSharedServiceThread + 16), v4, *MEMORY[0x1E695E8E0]);
    CFRelease(v5);
  }

  else
  {
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ANE::SharedServiceThreadStart(v6, v7, v8);
    }

    CFRelease(*(ANE::pSharedServiceThread + 16));
    *(ANE::pSharedServiceThread + 16) = 0;
  }

  ANE::ANEThreadReadySyncer::signalAndUnlock(this);
  CFRunLoopRun();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10.version) = 0;
    _os_log_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "shared service thread exit\n", &v10, 2u);
  }

  return 0;
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t ANE::ANEThreadReadySyncer::signalAndUnlock(ANE::ANEThreadReadySyncer *this)
{
  pthread_cond_signal((this + 64));

  return pthread_mutex_unlock(this);
}

void ZinComputeProgramGetANETDThreadStateArgumentSize()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramGetThreadArgumentSize()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramGetANESegThreadStateArgumentSize()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramSupportsFeature()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramGetAneTDPartitionScheduleInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error: ZinComputeProgramGetAneTDPartitionScheduleInfo", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error: thread argument is not supported.", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error: thread argument buffer overrun.", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Out of range next count", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Out of range next segment id [0]", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Out of range next segment id [1]", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Out of range next segment count", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Out of range segment id", a5, a6, a7, a8, 0);
}

void ZinComputeProgramGetProcedureNameFromThread_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: procedure name buffer overrun", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramFindFvmlibSpan_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal section parameter = NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramFindFvmlibSpan_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramFindFvmlibSpan_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal 'fvmlibs' parameter", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramGetInitSection_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal params = NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramMakeInitInfo_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: Unable to allocate the init info structure", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramMakeInitInfo_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: Unable to find the init section", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramMakeInitInfo_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal program parameter = NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramDestroyInitInfo_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal info parameter = NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramCompareCompilerVersion_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: Cannot retrieve version from ident_str", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramCompareCompilerVersion_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: Cannot retrieve version from version string", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramCompareCompilerVersion_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal params = NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramCompareLinkerVersion_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: illegal params = NULL", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void ZinComputeProgramCollectOperationScheduleInfo_cold_1(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Allocation error while collecting operation schedule info", buf, 2u);
}

void ZinComputeProgramCollectOperationScheduleInfo_cold_3(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed memory allocation: prev_operations", buf, 2u);
}

void ZinCreateAnalytics()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinCreateAnalytics(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[ANE Analytics] Group table must be stored prior to Group Info.", buf, 2u);
}

void ZinCreateAnalytics(uint8_t *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = 67109120;
  *a2 = 468;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 487;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 412;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 405;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 398;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 391;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 448;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 441;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 633;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 614;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 609;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 598;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 579;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

{
  *a1 = 67109120;
  *a2 = 565;
  OUTLINED_FUNCTION_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "rc check failed at %d\n", a1);
}

void ZinDumpAnalytics()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinDumpAnalyticsInJSON()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void MemPool::alloc<_AnalyticsProcedureInfo>()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseCU()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseProc()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseHwConfigs()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseIdentString()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseMaxContextLatencyThreshold()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseGroup()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseLayer()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseTD()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseOperation()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParseViolateMaxContextLatencyFlag()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParsePerfStats()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEDebugInfo::DebugInfoParser::ParsePerfTracerInfo()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Parsing failed: in %s at %d ", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ZinIrCompilerParamsUtils::StringToPerfTracerConfig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error: Invalid perf tracer metric2", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error: Invalid perf tracer metric1", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error: Invalid perf tracer category", a5, a6, a7, a8, 0);
}

void ANE::ANEServicesDevice::ANEDeviceOpen(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ANEServicesDevice::ANEServicesDeviceOpen kANEUserClientCommand_DeviceOpen call failed result=0x%x\n", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ANEServicesDevice::ANEServicesDeviceOpen IOServiceOpen failed result= 0x%x\n", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void ANE::ANEServicesDevice::ANE_ProgramSendRequest(int a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = 136315650;
  v3 = "ANE_ProgramSendRequest";
  v4 = 1024;
  v5 = 1000;
  v6 = 1024;
  v7 = a1;
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s:%d status=%x\n", &v2, 0x18u);
  v1 = *MEMORY[0x1E69E9840];
}

void ANE::ANEDeviceController::SetupDeviceController()
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "SetupDeviceController";
  _os_log_error_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ERROR: %s:IONotificationPortGetRunLoopSource failed!\n", &v1, 0xCu);
  v0 = *MEMORY[0x1E69E9840];
}

void ANE::ANEHWDevice::ANEHWDeviceOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "ANEServicesDevice::ANEServicesDeviceOpen kANEUserClientCommand_DeviceOpen call failed result=0x%x\n", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "ANEHWDeviceOpen isPrivileged=%d\n", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "ANEHWDeviceOpen::ANEHWDeviceOpen IOServiceOpen failed result= 0x%x\n", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void ANE::ANERequestReceiver::ProgramProcessRequest()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANE::ANERequestReceiver::syncFrameDone(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceUpdateParameters_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceUpdateParameters_cold_2(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceUpdateParameters_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceClose_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceClose_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceClose_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceClose_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramPrepare_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramPrepare_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramPrepare_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramPrepare_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramPrepare_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramPrepare_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramOutputSetEnqueue_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramOutputSetEnqueue_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramInputsReady_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramInputsReady_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramChainingSetActiveProcedure_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramChainingSetActiveProcedure_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramStop_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramStop_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramStop_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramDestroy_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramDestroy_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramDestroy_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_5(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 6128);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
  v7 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramProcessRequestDirect_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryMapRequest_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryMapRequest_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryMapRequest_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryMapRequest_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryMapRequest_cold_5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryUnmapRequest_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryUnmapRequest_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramMemoryUnmapRequest_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramCreate_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramCreateNewInstance_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramCreateNewInstance_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramCreateNewInstance_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesProgramCreateNewInstance_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesSessionHintRequest_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesHandleDeviceOpen_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesHandleDeviceOpen_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void MyANEServicesDeviceMessageNotification()
{
  *v0 = 0;
  _os_log_debug_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ANEServicesDeviceMessageNotification: kANEDeviceWakeup\n", v0, 2u);
}

{
  *v0 = 0;
  _os_log_debug_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "ANEServicesDeviceMessageNotification: kANEDeviceSleep\n", v0, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ANEServicesDeviceOpen_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceOpen_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesDeviceOpen_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesFrameProcDirect()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesInitializePlatformServices_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Failed to create work processor: %08X\n", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesInitializePlatformServices_cold_3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Failed to start work processor: %08X\n", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesInitializePlatformServices_cold_4()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Error loading firmware: %08X", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesInitializePlatformServices_cold_5(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Skipping ANEDriver\n", buf, 2u);
}

void ANEServicesInitializePlatformServices_cold_6()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], v0, "Error opening ANEServicesDevice: %08X\n", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x1E69E9840];
}

void ANEServicesInitializePlatformServices_cold_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "Error creating ANEDeviceController object: %08X", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void ANE::CreateANEDeviceController(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_2(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_1_2(&dword_1C0446000, MEMORY[0x1E69E9C10], v2, "pthread_attr_init: %s\n", v3);
}

{
  OUTLINED_FUNCTION_2_2(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_1_2(&dword_1C0446000, MEMORY[0x1E69E9C10], v2, "pthread_attr_setschedparam: %s\n", v3);
}

{
  OUTLINED_FUNCTION_2_2(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_1_2(&dword_1C0446000, MEMORY[0x1E69E9C10], v2, "pthread_attr_setdetachstate: %s\n", v3);
}

{
  OUTLINED_FUNCTION_2_2(a1, a2, 4.8149e-34);
  OUTLINED_FUNCTION_1_2(&dword_1C0446000, MEMORY[0x1E69E9C10], v2, "pthread_create: %s\n", v3);
}

void ANE::CreateANEDeviceController(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_1C0446000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "shared service thread retain: refCount=%u\n", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void ANE::CreateANEDeviceController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "failed to init shared service thread\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "failed to allocate shared service thread struct\n", a5, a6, a7, a8, 0);
}

{
  OUTLINED_FUNCTION_0(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "No shared service thread\n", a5, a6, a7, a8, 0);
}

void ANE::SharedServiceThreadStart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 136315138;
  v5 = "SharedServiceThreadStart";
  OUTLINED_FUNCTION_1_2(&dword_1C0446000, MEMORY[0x1E69E9C10], a3, "%s: failed to create run loop source\n", &v4);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63F08]();
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