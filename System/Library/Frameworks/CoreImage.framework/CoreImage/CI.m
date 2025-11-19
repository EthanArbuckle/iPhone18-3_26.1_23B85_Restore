@interface CI
@end

@implementation CI

FILE *__CI_LOG_FILE_block_invoke()
{
  v24 = *MEMORY[0x1E69E9840];
  string = get_string("CI_LOG_FILE");
  if (!string)
  {
LABEL_7:
    result = CI_LOG_FILE::fp;
    if (CI_LOG_FILE::fp)
    {
      return result;
    }

    goto LABEL_8;
  }

  v1 = string;
  if (!strcmp(string, "stderr"))
  {
    v5 = MEMORY[0x1E69E9848];
LABEL_12:
    result = *v5;
    goto LABEL_13;
  }

  if (!strcmp(v1, "stdout"))
  {
    v5 = MEMORY[0x1E69E9858];
    goto LABEL_12;
  }

  if (strcmp(v1, "oslog"))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *__str = 0u;
    v9 = 0u;
    v2 = CI_TEMP_DIR();
    snprintf(__str, 0xFFuLL, "%s/%s", v2, v1);
    CI_LOG_FILE::fp = fopen(__str, "a");
    v3 = ci_logger_general();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = __str;
      _os_log_impl(&dword_19CC36000, v3, OS_LOG_TYPE_DEFAULT, "CI_LOG_FILE path: %s", buf, 0xCu);
    }

    goto LABEL_7;
  }

  result = funopen(&CI_LOG_FILE::cookie, 0, memstream_write, 0, 0);
LABEL_13:
  CI_LOG_FILE::fp = result;
  if (!result)
  {
LABEL_8:
    CI_LOG_FILE::fp = *MEMORY[0x1E69E9848];
  }

  return result;
}

size_t __CI_PRINT_TIME_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  string = get_string("CI_PRINT_TIME");
  if (string)
  {
    result = atoi(string);
  }

  else
  {
    result = CI_PRINT_TIME::v;
  }

  CI_PRINT_TIME::v = result;
  if (result)
  {
    v2 = MEMORY[0x1E69E9848];
    fwrite("CI_PRINT_TIME options flags:\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
    fprintf(*v2, " depth=%d\n", CI_PRINT_TIME::v);
    memset(&__dst[1], 0, 63);
    v3 = CI_PRINT_TIME_has_string("context==");
    if (v3 || (v3 = CI_PRINT_TIME_has_string("context!="), __dst[0] = 0, v3))
    {
      v4 = v3;
      strncpy(__dst, v3 + 9, 0x40uLL);
      v5 = 0;
      v6.i64[0] = 0x2020202020202020;
      v6.i64[1] = 0x2020202020202020;
      do
      {
        v7 = vceqq_s8(*&__dst[v5], v6);
        if (v7.i8[0])
        {
          __dst[v5] = 0;
        }

        if (v7.i8[1])
        {
          __dst[v5 + 1] = 0;
        }

        if (v7.i8[2])
        {
          __dst[v5 + 2] = 0;
        }

        if (v7.i8[3])
        {
          __dst[v5 + 3] = 0;
        }

        if (v7.i8[4])
        {
          __dst[v5 + 4] = 0;
        }

        if (v7.i8[5])
        {
          __dst[v5 + 5] = 0;
        }

        if (v7.i8[6])
        {
          __dst[v5 + 6] = 0;
        }

        if (v7.i8[7])
        {
          __dst[v5 + 7] = 0;
        }

        if (v7.i8[8])
        {
          __dst[v5 + 8] = 0;
        }

        if (v7.i8[9])
        {
          __dst[v5 + 9] = 0;
        }

        if (v7.i8[10])
        {
          __dst[v5 + 10] = 0;
        }

        if (v7.i8[11])
        {
          __dst[v5 + 11] = 0;
        }

        if (v7.i8[12])
        {
          __dst[v5 + 12] = 0;
        }

        if (v7.i8[13])
        {
          __dst[v5 + 13] = 0;
        }

        if (v7.i8[14])
        {
          __dst[v5 + 14] = 0;
        }

        if (v7.i8[15])
        {
          __dst[v5 + 15] = 0;
        }

        v5 += 16;
      }

      while (v5 != 64);
      v8 = *v2;
      if (v4[7] == 61)
      {
        fprintf(v8, " context==<name|number> (set %s)\n", __dst);
      }

      else
      {
        fwrite(" context==<name|number>\n", 0x18uLL, 1uLL, v8);
      }

      if (v4[7] == 33)
      {
        return fprintf(*v2, " context!=<name|number> (set %s)\n", __dst);
      }
    }

    else
    {
      fwrite(" context==<name|number>\n", 0x18uLL, 1uLL, *v2);
    }

    return fwrite(" context!=<name|number>\n", 0x18uLL, 1uLL, *v2);
  }

  return result;
}

char *__CI_PRINT_TIME_context_block_invoke()
{
  result = CI_PRINT_TIME_has_string("context");
  if (!result)
  {
    return result;
  }

  v1 = result[7];
  if (v1 == 33)
  {
    v2 = 0;
    CI_PRINT_TIME_context::nequal = result[8] == 61;
  }

  else
  {
    v2 = 0;
    CI_PRINT_TIME_context::nequal = 0;
    if (v1 == 61)
    {
      v2 = result[8] == 61;
    }
  }

  CI_PRINT_TIME_context::equal = v2;
  v5 = result[9];
  v4 = result + 9;
  v3 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    result = __maskrune(v3, 0x100uLL);
    if (result)
    {
LABEL_8:
      v6 = 64;
      result = strncpy(&CI_PRINT_TIME_context::name, v4, 0x40uLL);
      v7 = result + 7;
      v8.i64[0] = 0x2020202020202020;
      v8.i64[1] = 0x2020202020202020;
      do
      {
        v9 = vceqq_s8(*(v7 - 7), v8);
        if (v9.i8[0])
        {
          *(v7 - 7) = 0;
        }

        if (v9.i8[1])
        {
          *(v7 - 6) = 0;
        }

        if (v9.i8[2])
        {
          *(v7 - 5) = 0;
        }

        if (v9.i8[3])
        {
          *(v7 - 4) = 0;
        }

        if (v9.i8[4])
        {
          *(v7 - 3) = 0;
        }

        if (v9.i8[5])
        {
          *(v7 - 2) = 0;
        }

        if (v9.i8[6])
        {
          *(v7 - 1) = 0;
        }

        if (v9.i8[7])
        {
          *v7 = 0;
        }

        if (v9.i8[8])
        {
          v7[1] = 0;
        }

        if (v9.i8[9])
        {
          v7[2] = 0;
        }

        if (v9.i8[10])
        {
          v7[3] = 0;
        }

        if (v9.i8[11])
        {
          v7[4] = 0;
        }

        if (v9.i8[12])
        {
          v7[5] = 0;
        }

        if (v9.i8[13])
        {
          v7[6] = 0;
        }

        if (v9.i8[14])
        {
          v7[7] = 0;
        }

        if (v9.i8[15])
        {
          v7[8] = 0;
        }

        v7 += 16;
        v6 -= 16;
      }

      while (v6);
      return result;
    }
  }

  else
  {
    result = (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x100);
    if (result)
    {
      goto LABEL_8;
    }
  }

  v10 = *v4;
  if ((v10 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) != 0)
  {
    result = atoi(v4);
    CI_PRINT_TIME_context::v = result;
  }

  return result;
}

uint64_t __CI_PRINT_TREE_block_invoke()
{
  v32 = *MEMORY[0x1E69E9840];
  string = get_string("CI_PRINT_TREE");
  v1 = string;
  if (string)
  {
    result = atoi(string);
  }

  else
  {
    result = CI_PRINT_TREE::v;
  }

  CI_PRINT_TREE::v = result;
  if (!result)
  {
    return result;
  }

  v3 = MEMORY[0x1E69E9848];
  fwrite("CI_PRINT_TREE options flags:\n", 0x1DuLL, 1uLL, *MEMORY[0x1E69E9848]);
  if (CI_PRINT_TREE::v)
  {
    v4 = "(set)";
  }

  else
  {
    v4 = "";
  }

  fprintf(*v3, "%3d  initial graph %s\n", 1, v4);
  if ((CI_PRINT_TREE::v & 2) != 0)
  {
    v5 = "(set)";
  }

  else
  {
    v5 = "";
  }

  fprintf(*v3, "%3d  optimized graph %s\n", 2, v5);
  if ((CI_PRINT_TREE::v & 4) != 0)
  {
    v6 = "(set)";
  }

  else
  {
    v6 = "";
  }

  fprintf(*v3, "%3d  program graph %s\n", 4, v6);
  v7 = *v3;
  if (strstr(v1, "dump-inputs"))
  {
    v8 = "(set)";
  }

  else
  {
    v8 = "";
  }

  fprintf(v7, " dump-inputs %s\n", v8);
  v9 = *v3;
  if (strstr(v1, "dump-intermediates"))
  {
    v10 = "(set)";
  }

  else
  {
    v10 = "";
  }

  fprintf(v9, " dump-intermediates %s\n", v10);
  v11 = *v3;
  if (strstr(v1, "dump-raw-intermediates"))
  {
    v12 = "(set)";
  }

  else
  {
    v12 = "";
  }

  fprintf(v11, " dump-raw-intermediates %s\n", v12);
  v13 = *v3;
  if (strstr(v1, "dump-bmtl-intermediates"))
  {
    v14 = "(set)";
  }

  else
  {
    v14 = "";
  }

  fprintf(v13, " dump-bmtl-intermediates %s\n", v14);
  v15 = *v3;
  if (strstr(v1, "dump-outputs"))
  {
    v16 = "(set)";
  }

  else
  {
    v16 = "";
  }

  fprintf(v15, " dump-outputs %s\n", v16);
  v17 = *v3;
  if (strstr(v1, "dump-timing"))
  {
    v18 = "(set)";
  }

  else
  {
    v18 = "";
  }

  fprintf(v17, " dump-timing %s\n", v18);
  memset(&__dst[1], 0, 63);
  v19 = CI_PRINT_TREE_has_string("context==");
  if (!v19)
  {
    v19 = CI_PRINT_TREE_has_string("context!=");
    __dst[0] = 0;
    if (!v19)
    {
      fwrite(" context==<name|number>\n", 0x18uLL, 1uLL, *v3);
LABEL_74:
      fwrite(" context!=<name|number>\n", 0x18uLL, 1uLL, *v3);
      goto LABEL_75;
    }
  }

  v20 = v19;
  strncpy(__dst, v19 + 9, 0x40uLL);
  v21 = 0;
  v22.i64[0] = 0x2020202020202020;
  v22.i64[1] = 0x2020202020202020;
  do
  {
    v23 = vceqq_s8(*&__dst[v21], v22);
    if (v23.i8[0])
    {
      __dst[v21] = 0;
    }

    if (v23.i8[1])
    {
      __dst[v21 + 1] = 0;
    }

    if (v23.i8[2])
    {
      __dst[v21 + 2] = 0;
    }

    if (v23.i8[3])
    {
      __dst[v21 + 3] = 0;
    }

    if (v23.i8[4])
    {
      __dst[v21 + 4] = 0;
    }

    if (v23.i8[5])
    {
      __dst[v21 + 5] = 0;
    }

    if (v23.i8[6])
    {
      __dst[v21 + 6] = 0;
    }

    if (v23.i8[7])
    {
      __dst[v21 + 7] = 0;
    }

    if (v23.i8[8])
    {
      __dst[v21 + 8] = 0;
    }

    if (v23.i8[9])
    {
      __dst[v21 + 9] = 0;
    }

    if (v23.i8[10])
    {
      __dst[v21 + 10] = 0;
    }

    if (v23.i8[11])
    {
      __dst[v21 + 11] = 0;
    }

    if (v23.i8[12])
    {
      __dst[v21 + 12] = 0;
    }

    if (v23.i8[13])
    {
      __dst[v21 + 13] = 0;
    }

    if (v23.i8[14])
    {
      __dst[v21 + 14] = 0;
    }

    if (v23.i8[15])
    {
      __dst[v21 + 15] = 0;
    }

    v21 += 16;
  }

  while (v21 != 64);
  v24 = *v3;
  if (v20[7] == 61)
  {
    fprintf(v24, " context==<name|number> (set %s)\n", __dst);
  }

  else
  {
    fwrite(" context==<name|number>\n", 0x18uLL, 1uLL, v24);
  }

  if (v20[7] != 33)
  {
    goto LABEL_74;
  }

  fprintf(*v3, " context!=<name|number> (set %s)\n", __dst);
LABEL_75:
  if (CI_PRINT_TREE_frame::didCheck != -1)
  {
    __CI_PRINT_TREE_block_invoke_cold_1();
  }

  snprintf(__str, 0x40uLL, "(set frame-%d)", CI_PRINT_TREE_frame::v);
  v25 = *v3;
  if (CI_PRINT_TREE_frame::didCheck != -1)
  {
    __CI_PRINT_TREE_block_invoke_cold_1();
  }

  v26 = __str;
  if (!CI_PRINT_TREE_frame::v)
  {
    v26 = "";
  }

  fprintf(v25, " frame-<number> %s\n", v26);
  if (CI_PRINT_TREE_graphviz::didCheck != -1)
  {
    __CI_PRINT_TREE_block_invoke_cold_3();
  }

  snprintf(v29, 0x40uLL, "(set %s)", CI_PRINT_TREE_graphviz::v);
  v27 = *v3;
  if (CI_PRINT_TREE_graphviz::didCheck != -1)
  {
    __CI_PRINT_TREE_block_invoke_cold_3();
  }

  v28 = v29;
  if (!CI_PRINT_TREE_graphviz::v)
  {
    v28 = "";
  }

  fprintf(v27, " <dot|pdf|png> %s\n", v28);
  return fputc(10, *v3);
}

char *__CI_PRINT_TREE_context_block_invoke()
{
  result = CI_PRINT_TREE_has_string("context");
  if (!result)
  {
    return result;
  }

  v1 = result[7];
  if (v1 == 33)
  {
    v2 = 0;
    CI_PRINT_TREE_context::nequal = result[8] == 61;
  }

  else
  {
    v2 = 0;
    CI_PRINT_TREE_context::nequal = 0;
    if (v1 == 61)
    {
      v2 = result[8] == 61;
    }
  }

  CI_PRINT_TREE_context::equal = v2;
  v5 = result[9];
  v4 = result + 9;
  v3 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    result = __maskrune(v3, 0x100uLL);
    if (result)
    {
LABEL_8:
      v6 = 64;
      result = strncpy(&CI_PRINT_TREE_context::name, v4, 0x40uLL);
      v7 = result + 7;
      v8.i64[0] = 0x2020202020202020;
      v8.i64[1] = 0x2020202020202020;
      do
      {
        v9 = vceqq_s8(*(v7 - 7), v8);
        if (v9.i8[0])
        {
          *(v7 - 7) = 0;
        }

        if (v9.i8[1])
        {
          *(v7 - 6) = 0;
        }

        if (v9.i8[2])
        {
          *(v7 - 5) = 0;
        }

        if (v9.i8[3])
        {
          *(v7 - 4) = 0;
        }

        if (v9.i8[4])
        {
          *(v7 - 3) = 0;
        }

        if (v9.i8[5])
        {
          *(v7 - 2) = 0;
        }

        if (v9.i8[6])
        {
          *(v7 - 1) = 0;
        }

        if (v9.i8[7])
        {
          *v7 = 0;
        }

        if (v9.i8[8])
        {
          v7[1] = 0;
        }

        if (v9.i8[9])
        {
          v7[2] = 0;
        }

        if (v9.i8[10])
        {
          v7[3] = 0;
        }

        if (v9.i8[11])
        {
          v7[4] = 0;
        }

        if (v9.i8[12])
        {
          v7[5] = 0;
        }

        if (v9.i8[13])
        {
          v7[6] = 0;
        }

        if (v9.i8[14])
        {
          v7[7] = 0;
        }

        if (v9.i8[15])
        {
          v7[8] = 0;
        }

        v7 += 16;
        v6 -= 16;
      }

      while (v6);
      return result;
    }
  }

  else
  {
    result = (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x100);
    if (result)
    {
      goto LABEL_8;
    }
  }

  v10 = *v4;
  if ((v10 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) != 0)
  {
    result = atoi(v4);
    CI_PRINT_TREE_context::v = result;
  }

  return result;
}

uint64_t __CI_PRINT_TREE_frame_block_invoke()
{
  v0 = CI_PRINT_TREE_has_string("frame-");
  if (v0)
  {
    result = atoi(v0 + 6);
  }

  else
  {
    result = CI_PRINT_TREE_frame::v;
  }

  CI_PRINT_TREE_frame::v = result;
  return result;
}

void __CI_PRINT_TREE_graphviz_block_invoke()
{
  v0 = CI_PRINT_TREE_graphviz::v;
  if (!CI_PRINT_TREE_graphviz::v)
  {
    v0 = "pdf";
    if (!CI_PRINT_TREE_has_string("pdf"))
    {
      v0 = CI_PRINT_TREE_graphviz::v;
      if (!CI_PRINT_TREE_graphviz::v)
      {
        v0 = "png";
        if (!CI_PRINT_TREE_has_string("png"))
        {
          v0 = CI_PRINT_TREE_graphviz::v;
          if (!CI_PRINT_TREE_graphviz::v)
          {
            v0 = "dot";
            if (!CI_PRINT_TREE_has_string("dot"))
            {
              v0 = CI_PRINT_TREE_graphviz::v;
              if (!CI_PRINT_TREE_graphviz::v)
              {
                if (CI_PRINT_TREE_has_string("graphviz"))
                {
                  v0 = "dot";
                }

                else
                {
                  v0 = CI_PRINT_TREE_graphviz::v;
                }
              }
            }
          }
        }
      }
    }
  }

  CI_PRINT_TREE_graphviz::v = v0;
}

uint64_t __CI_PRINT_PROGRAM_block_invoke()
{
  string = get_string("CI_PRINT_PROGRAM");
  if (string)
  {
    result = atoi(string);
  }

  else
  {
    result = CI_PRINT_PROGRAM::v;
  }

  CI_PRINT_PROGRAM::v = result;
  return result;
}

char *__CI_PRINT_PROGRAM_context_block_invoke()
{
  result = get_string("CI_PRINT_PROGRAM");
  if (!result)
  {
    return result;
  }

  result = strstr(result, "context");
  if (!result)
  {
    return result;
  }

  v1 = result[7];
  if (v1 == 33)
  {
    v2 = 0;
    CI_PRINT_PROGRAM_context::nequal = result[8] == 61;
  }

  else
  {
    v2 = 0;
    CI_PRINT_PROGRAM_context::nequal = 0;
    if (v1 == 61)
    {
      v2 = result[8] == 61;
    }
  }

  CI_PRINT_PROGRAM_context::equal = v2;
  v5 = result[9];
  v4 = result + 9;
  v3 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    result = __maskrune(v3, 0x100uLL);
    if (result)
    {
LABEL_9:
      v6 = 64;
      result = strncpy(&CI_PRINT_PROGRAM_context::name, v4, 0x40uLL);
      v7 = result + 7;
      v8.i64[0] = 0x2020202020202020;
      v8.i64[1] = 0x2020202020202020;
      do
      {
        v9 = vceqq_s8(*(v7 - 7), v8);
        if (v9.i8[0])
        {
          *(v7 - 7) = 0;
        }

        if (v9.i8[1])
        {
          *(v7 - 6) = 0;
        }

        if (v9.i8[2])
        {
          *(v7 - 5) = 0;
        }

        if (v9.i8[3])
        {
          *(v7 - 4) = 0;
        }

        if (v9.i8[4])
        {
          *(v7 - 3) = 0;
        }

        if (v9.i8[5])
        {
          *(v7 - 2) = 0;
        }

        if (v9.i8[6])
        {
          *(v7 - 1) = 0;
        }

        if (v9.i8[7])
        {
          *v7 = 0;
        }

        if (v9.i8[8])
        {
          v7[1] = 0;
        }

        if (v9.i8[9])
        {
          v7[2] = 0;
        }

        if (v9.i8[10])
        {
          v7[3] = 0;
        }

        if (v9.i8[11])
        {
          v7[4] = 0;
        }

        if (v9.i8[12])
        {
          v7[5] = 0;
        }

        if (v9.i8[13])
        {
          v7[6] = 0;
        }

        if (v9.i8[14])
        {
          v7[7] = 0;
        }

        if (v9.i8[15])
        {
          v7[8] = 0;
        }

        v7 += 16;
        v6 -= 16;
      }

      while (v6);
      return result;
    }
  }

  else
  {
    result = (*(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x100);
    if (result)
    {
      goto LABEL_9;
    }
  }

  v10 = *v4;
  if ((v10 & 0x8000000000000000) == 0 && (*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x400) != 0)
  {
    result = atoi(v4);
    CI_PRINT_PROGRAM_context::v = result;
  }

  return result;
}

char *__CI_FORCE_GPU_PRIORITY_block_invoke()
{
  result = getenv("CI_FORCE_GPU_PRIORITY");
  if (result)
  {
    v1 = *result;
    if (v1 > 0x4C)
    {
      if (*result > 0x6Bu)
      {
        if (v1 == 108)
        {
          goto LABEL_20;
        }

        if (v1 == 110)
        {
          goto LABEL_21;
        }

        if (v1 != 109)
        {
          return result;
        }
      }

      else if (v1 != 77)
      {
        if (v1 != 78)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (*result <= 0x33u)
      {
        if (v1 != 48)
        {
          if (v1 != 49)
          {
            if (v1 != 50)
            {
              return result;
            }

LABEL_20:
            CI_FORCE_GPU_PRIORITY::v = 76;
            return result;
          }

LABEL_21:
          CI_FORCE_GPU_PRIORITY::v = 78;
          v1 |= 0x20u;
LABEL_22:
          if (v1 != 104)
          {
            return result;
          }
        }

LABEL_23:
        CI_FORCE_GPU_PRIORITY::v = 72;
        return result;
      }

      if (v1 != 52)
      {
LABEL_18:
        if (v1 != 72)
        {
          if (v1 != 76)
          {
            return result;
          }

          goto LABEL_20;
        }

        goto LABEL_23;
      }
    }

    CI_FORCE_GPU_PRIORITY::v = 77;
    if (v1 > 77)
    {
      return result;
    }

    goto LABEL_18;
  }

  return result;
}

const char *__CI_WORKING_FORMAT_block_invoke()
{
  result = getenv("CI_WORKING_FORMAT");
  if (result)
  {
    v1 = result;
    result = strcmp(result, "BGRA8");
    if (result)
    {
      result = strcmp(v1, "RGBA8");
      if (result)
      {
        result = strcmp(v1, "RGBAh");
        if (result)
        {
          result = strcmp(v1, "RGBAf");
          if (result)
          {
            return result;
          }

          v2 = 2312;
        }

        else
        {
          v2 = 2056;
        }
      }

      else
      {
        v2 = 264;
      }
    }

    else
    {
      v2 = 266;
    }

    CI_WORKING_FORMAT::v = v2;
  }

  return result;
}

uint64_t __CI_ENABLE_METAL_GPU_block_invoke()
{
  v0 = getenv("CI_ENABLE_METAL_GPU");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI_ENABLE_METAL_GPU::v;
  }

  CI_ENABLE_METAL_GPU::v = result;
  return result;
}

const char *__CI_DISABLE_LOADING_ARCHIVES_BY_NAME_block_invoke()
{
  result = get_string("CI_DISABLE_LOADING_ARCHIVES_BY_NAME");
  if (result)
  {
    result = strlcpy(CI_DISABLE_LOADING_ARCHIVES_BY_NAME::archives_name, result, 0x400uLL);
    CI_DISABLE_LOADING_ARCHIVES_BY_NAME::is_set = 1;
  }

  return result;
}

const char *__CI_HARVESTING_SPECIFIC_LIBRARY_LIST_block_invoke()
{
  result = get_string("CI_HARVESTING_SPECIFIC_LIBRARY_LIST");
  if (result)
  {
    result = strlcpy(CI_HARVESTING_SPECIFIC_LIBRARY_LIST::archives_name, result, 0x400uLL);
    CI_HARVESTING_SPECIFIC_LIBRARY_LIST::is_set = 1;
  }

  return result;
}

const char *__CI_HARVEST_PROCESS_NAME_LIST_block_invoke()
{
  result = get_string("CI_HARVEST_PROCESS_NAME_LIST");
  if (result)
  {
    result = strlcpy(CI_HARVEST_PROCESS_NAME_LIST::archives_name, result, 0x400uLL);
    CI_HARVEST_PROCESS_NAME_LIST::is_set = 1;
  }

  return result;
}

const char *__CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH_block_invoke()
{
  result = get_string("CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH");
  if (result)
  {
    result = strlcpy(CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH::harvesting_path, result, 0x80uLL);
    CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH::is_set = 1;
  }

  return result;
}

const char *__CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME_block_invoke()
{
  result = get_string("CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME");
  if (result)
  {
    result = strlcpy(CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME::harvesting_dir, result, 0x80uLL);
    CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME::is_set = 1;
  }

  return result;
}

const __CFArray *__CI_DOCS_DIR_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"UIFileSharingEnabled");
  if (result == *MEMORY[0x1E695E4D0])
  {
    result = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    if (result)
    {
      result = CFArrayGetValueAtIndex(result, 0);
      if (result)
      {
        CFStringGetCString(result, &CI_DOCS_DIR::directory, 256, 0x8000100u);
        v2 = stat(&CI_DOCS_DIR::directory, &v4);
        st_mode = v4.st_mode;
        result = access(&CI_DOCS_DIR::directory, 2);
        if (result | v2 || (st_mode & 0x4000) == 0)
        {
          CI_DOCS_DIR::directory = 0;
        }
      }
    }
  }

  return result;
}

NSString *__CI_TEMP_DIR_block_invoke()
{
  result = NSTemporaryDirectory();
  if (result)
  {
    v1 = [(NSString *)result UTF8String];

    return strlcpy(CI_TEMP_DIR::temporaryDirectory, v1, 0x200uLL);
  }

  return result;
}

size_t __CI_CACHE_PROGRAM_GRAPH_block_invoke()
{
  CI_CACHE_PROGRAM_GRAPH::v = get_BOOL("CI_CACHE_PROGRAM_GRAPH", 1);
  result = CI_PRINT_TREE_dump_timing();
  if (result)
  {
    if (CI_CACHE_PROGRAM_GRAPH::v == 1)
    {
      result = fwrite("Program Graph cache disabled when using CI_PRINT_TREE dump_timing\n", 0x42uLL, 1uLL, *MEMORY[0x1E69E9848]);
      CI_CACHE_PROGRAM_GRAPH::v = 0;
    }
  }

  return result;
}

uint64_t __CI_TRASH_SURFACES_ON_SETVOLATILE_block_invoke()
{
  v0 = getenv("CI_TRASH_SURFACES_ON_SETVOLATILE");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI_TRASH_SURFACES_ON_SETVOLATILE_v;
  }

  CI_TRASH_SURFACES_ON_SETVOLATILE_v = result;
  return result;
}

@end