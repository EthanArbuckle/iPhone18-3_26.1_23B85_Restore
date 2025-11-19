uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_28B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

FILE *fopen_file_func(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  if (fseek(a2, a3, a4))
  {
    return -1;
  }

  return 0;
}

FILE *(**fill_fopen_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = fopen_file_func;
  result[1] = fread_file_func;
  result[2] = fwrite_file_func;
  result[3] = ftell_file_func;
  result[4] = fseek_file_func;
  result[5] = fclose_file_func;
  result[6] = ferror_file_func;
  result[7] = 0;
  return result;
}

uint64_t change_file_date(const char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 20);
  if (v5 > 0x76C)
  {
    v5 -= 1900;
  }

  *&v7.tm_sec = *a3;
  memset(&v7.tm_wday, 0, 32);
  v7.tm_mon = v4;
  v7.tm_year = v5;
  v7.tm_isdst = -1;
  v8.actime = mktime(&v7);
  v8.modtime = v8.actime;
  return utime(a1, &v8);
}

uint64_t makedir(const char *a1)
{
  v2 = strlen(a1);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = malloc_type_malloc((v2 + 1), 0x100004077774924uLL);
  if (v3)
  {
    v4 = strcpy(v3, a1);
    free(v4);
    return 1;
  }

  else
  {
    puts("Error allocating memory");
    return 4294967192;
  }
}

uint64_t do_banner()
{
  puts("MiniUnz 1.01b, demo of zLib + Unz package written by Gilles Vollant");

  return puts("more info at http://www.winimage.com/zLibDll/unzip.html\n");
}

uint64_t do_list(void *a1)
{
  v19 = 0uLL;
  GlobalInfo = unzGetGlobalInfo(a1, &v19);
  if (GlobalInfo)
  {
    printf("error %d with zipfile in unzGetGlobalInfo \n", GlobalInfo);
  }

  puts(" Length  Method   Size  Ratio   Date    Time   CRC-32     Name");
  puts(" ------  ------   ----  -----   ----    ----   ------     ----");
  if (v19)
  {
    v3 = 0;
    do
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      if (unzGetCurrentFileInfo(a1, &v10, v20, 0x100uLL, 0, 0, 0, 0))
      {
        printf("error %d with zipfile in unzGetCurrentFileInfo\n");
        return 0;
      }

      if (*(&v13 + 1))
      {
        v4 = (100 * v13) / *(&v13 + 1);
      }

      else
      {
        v4 = 0;
      }

      if (v11)
      {
        v5 = 42;
      }

      else
      {
        v5 = 32;
      }

      if (*(&v11 + 1))
      {
        if (*(&v11 + 1) == 12)
        {
          v7 = "BZip2 ";
        }

        else if (*(&v11 + 1) == 8)
        {
          v6 = (v11 >> 1) & 3;
          if (v6)
          {
            if (v6 == 1)
            {
              v7 = "Defl:X";
            }

            else
            {
              v7 = "Defl:F";
              if ((v11 & 4) == 0)
              {
                v7 = "Unkn. ";
              }
            }
          }

          else
          {
            v7 = "Defl:N";
          }
        }

        else
        {
          v7 = "Unkn. ";
        }
      }

      else
      {
        v7 = "Stored";
      }

      printf("%7lu  %6s%c%7lu %3lu%%  %2.2lu-%2.2lu-%2.2lu  %2.2lu:%2.2lu  %8.8lx   %s\n", *(&v13 + 1), v7, v5, v13, v4, v18 + 1, HIDWORD(v17), HIDWORD(v18) % 0x64, DWORD2(v17), DWORD1(v17), *(&v12 + 1), v20);
      ++v3;
      v8 = v19;
      if (v3 < v19)
      {
        if (unzGoToNextFile(a1))
        {
          printf("error %d with zipfile in unzGoToNextFile\n");
          return 0;
        }

        v8 = v19;
      }
    }

    while (v3 < v8);
  }

  return 0;
}

uint64_t do_extract_currentfile(uint64_t a1, int *a2, _DWORD *a3, _BYTE *a4)
{
  v32 = 0;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  CurrentFileInfo = unzGetCurrentFileInfo(a1, v30, &v35, 0x100uLL, 0, 0, 0, 0);
  if (CurrentFileInfo)
  {
    v9 = CurrentFileInfo;
    printf("error %d with zipfile in unzGetCurrentFileInfo\n", CurrentFileInfo);
    return v9;
  }

  v10 = malloc_type_malloc(0x2000uLL, 0x11D8D5DuLL);
  if (!v10)
  {
    puts("Error allocating memory");
    return 4294967192;
  }

  v11 = v10;
  v12 = &v35;
  for (i = v36; ; ++i)
  {
    v14 = *(i - 1);
    if (v14 != 47 && v14 != 92)
    {
      break;
    }

    v12 = i;
LABEL_10:
    ;
  }

  if (*(i - 1))
  {
    goto LABEL_10;
  }

  v15 = *a2;
  if (*v12)
  {
    v24 = v15 == 0;
    v16 = &v35;
    if (!v24)
    {
      v16 = v12;
    }

    __filename = v16;
    v17 = unzOpenCurrentFilePassword(a1, a4);
    v9 = v17;
    if (v17)
    {
      printf("error %d with zipfile in unzOpenCurrentFilePassword\n", v17);
    }

    if (*a3 | v9)
    {
      v18 = 1;
    }

    else
    {
      v22 = fopen(__filename, "rb");
      v18 = 1;
      if (v22)
      {
        fclose(v22);
        do
        {
          printf("The file %s exists. Overwrite ? [y]es, [n]o, [A]ll: ", __filename);
          if (scanf("%1s", &v33) != 1)
          {
            exit(1);
          }

          v23 = v33;
          if (v33 - 97 < 0x1A)
          {
            v23 = v33 - 32;
          }

          v24 = v23 - 65 > 0x18 || ((1 << (v23 - 65)) & 0x1002001) == 0;
        }

        while (v24);
        v18 = v23 != 78;
        if (v23 == 65)
        {
          v18 = 1;
          *a3 = 1;
        }
      }
    }

    if (v9 || !v18)
    {
      if (!v9)
      {
        goto LABEL_51;
      }

LABEL_49:
      unzCloseCurrentFile(a1);
    }

    else
    {
      v19 = fopen(__filename, "wb");
      if (v19 || !*a2 && v12 != &v35 && (v25 = *(v12 - 1), *(v12 - 1) = 0, makedir(__filename), *(v12 - 1) = v25, (v19 = fopen(__filename, "wb")) != 0))
      {
        v20 = v19;
        printf(" extracting: %s\n", __filename);
        while (1)
        {
          CurrentFile = unzReadCurrentFile(a1, v11, 0x2000u);
          v9 = CurrentFile;
          if ((CurrentFile & 0x80000000) != 0)
          {
            printf("error %d with zipfile in unzReadCurrentFile\n", CurrentFile);
            goto LABEL_48;
          }

          if (!CurrentFile)
          {
            break;
          }

          if (fwrite(v11, CurrentFile, 1uLL, v20) != 1)
          {
            puts("error in writing extracted file");
            v9 = 0xFFFFFFFFLL;
LABEL_48:
            fclose(v20);
            goto LABEL_49;
          }
        }

        fclose(v20);
        v33 = v31;
        v34 = v32;
        change_file_date(__filename, v26, &v33);
      }

      else
      {
        printf("error opening %s\n", __filename);
      }

LABEL_51:
      v27 = unzCloseCurrentFile(a1);
      v9 = v27;
      if (v27)
      {
        printf("error %d with zipfile in unzCloseCurrentFile\n", v27);
      }
    }
  }

  else
  {
    if (!v15)
    {
      printf("creating directory: %s\n", &v35);
    }

    v9 = 0;
  }

  free(v11);
  return v9;
}

uint64_t do_extract(void *a1, int a2, int a3, _BYTE *a4)
{
  v12 = a3;
  v13 = a2;
  v11 = 0uLL;
  GlobalInfo = unzGetGlobalInfo(a1, &v11);
  if (GlobalInfo)
  {
    printf("error %d with zipfile in unzGetGlobalInfo \n", GlobalInfo);
  }

  if (v11)
  {
    v7 = 0;
    while (!do_extract_currentfile(a1, &v13, &v12, a4))
    {
      ++v7;
      v8 = v11;
      if (v7 < v11)
      {
        File = unzGoToNextFile(a1);
        if (File)
        {
          printf("error %d with zipfile in unzGoToNextFile\n", File);
          return 0;
        }

        v8 = v11;
      }

      if (v7 >= v8)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t do_extract_onefile(uint64_t a1, char *a2, int a3, int a4, _BYTE *a5)
{
  v9 = a4;
  v10 = a3;
  if (!unzLocateFile(a1, a2, 0))
  {
    return do_extract_currentfile(a1, &v10, &v9, a5) != 0;
  }

  printf("file %s not found in the zipfile\n", a2);
  return 2;
}

int main(int argc, const char **argv, const char **envp)
{
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *__dst = 0u;
  puts("MiniUnz 1.01b, demo of zLib + Unz package written by Gilles Vollant");
  puts("more info at http://www.winimage.com/zLibDll/unzip.html\n");
  if (argc != 1)
  {
    if (argc < 2)
    {
      v13 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = argv[v14];
        if (*v15 == 45)
        {
          v16 = v15[1];
          if (v16)
          {
            v17 = (v15 + 2);
            do
            {
              v18 = v16 & 0xDF;
              if (v18 == 76 || v18 == 86)
              {
                v10 = 1;
              }

              if (v18 == 69)
              {
                v9 = 1;
              }

              if (v18 == 79)
              {
                v8 = 1;
              }

              if (v18 == 80)
              {
                v20 = v14 + 1;
                if (v20 < argc)
                {
                  v11 = argv[v20];
                  ++v14;
                }
              }

              else if (v18 == 68)
              {
                v6 = argv[v14 + 1];
                v7 = 1;
              }

              v21 = *v17++;
              v16 = v21;
            }

            while (v21);
          }
        }

        else
        {
          if (v7)
          {
            v22 = 0;
          }

          else
          {
            v22 = v12 == 0;
          }

          if (v22)
          {
            v23 = argv[v14];
          }

          else
          {
            v23 = v12;
          }

          if (v13)
          {
            v12 = v23;
          }

          else
          {
            v13 = argv[v14];
          }
        }

        ++v14;
      }

      while (v14 < argc);
      if (v13)
      {
        strncpy(__dst, v13, 0xFFuLL);
        LOBYTE(v43) = 0;
        v24 = unzOpen(v13);
        if (v24 || (__strcat_chk(), (v24 = unzOpen(__dst)) != 0))
        {
          v25 = v24;
          printf("%s opened\n", __dst);
          if (v10 == 1)
          {
            do_list(v25);
          }

          else
          {
            if (v7 && chdir(v6))
            {
              printf("Error changing into %s, aborting\n", v6);
              exit(-1);
            }

            if (v12)
            {
              onefile = do_extract_onefile(v25, v12, v9, v8, v11);
LABEL_48:
              unzClose(v25);
              return onefile;
            }

            do_extract(v25, v9, v8, v11);
          }

          onefile = 0;
          goto LABEL_48;
        }
      }
    }

    printf("Cannot open %s or %s.zip\n", v13, v13);
    return 1;
  }

  puts("Usage : miniunz [-e] [-x] [-v] [-l] [-o] [-p password] file.zip [file_to_extr.] [-d extractdir]\n\n  -e  Extract without pathname (junk paths)\n  -x  Extract with pathname\n  -v  list files\n  -l  list files\n  -d  directory to extract into\n  -o  overwrite files without prompting\n  -p  extract crypted file using password\n");
  return 0;
}

uint64_t unzRepair()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = fopen(v0, "rb");
  v10 = fopen(v8, "wb");
  v11 = fopen(v6, "wb");
  v12 = 4294967294;
  if (!v9 || !v10)
  {
    return v12;
  }

  v13 = v11;
  __filename = v6;
  if (fread(&__ptr, 1uLL, 0x1EuLL, v9) != 30)
  {
    v14 = 0;
    v30 = 0;
    v21 = 0;
    v44 = 0;
LABEL_30:
    v31 = 0;
    goto LABEL_42;
  }

  v14 = 0;
  v44 = 0;
  v15 = 0;
  v16 = 0;
  v17.i64[1] = -63738;
  __stream = v9;
  v41 = v13;
  while (1)
  {
    v48 = v16;
    if (__ptr != 67324752)
    {
      v31 = 0;
      v21 = v15;
      goto LABEL_41;
    }

    v17.i64[0] = v78;
    v45 = v17;
    v46 = v79;
    v47 = v80;
    v55 = v82;
    v56 = v81;
    v53 = v84;
    v54 = v83;
    v51 = v86;
    v52 = v85;
    v49 = v88;
    v50 = v87;
    v18 = v89;
    v19 = v90;
    v57 = v92;
    v58 = v91;
    v75[0] = 0;
    v76[0] = 0;
    if (fwrite(&__ptr, 1uLL, 0x1EuLL, v10) != 30)
    {
      v31 = -1;
      v21 = v15;
      goto LABEL_40;
    }

    v20 = v18 | (v19 << 8);
    v21 = v15 + 30;
    if (!v20)
    {
      v31 = -2;
      goto LABEL_40;
    }

    if (fread(v76, 1uLL, v18 | (v19 << 8), v9) != v20 || fwrite(v76, 1uLL, v18 | (v19 << 8), v10) != v20)
    {
LABEL_31:
      v31 = -1;
      goto LABEL_40;
    }

    v42 = v15;
    v22 = v58 | (v57 << 8);
    v21 += v20;
    if (v22)
    {
      if (fread(v75, 1uLL, v58 | (v57 << 8), v9) != v22 || fwrite(v75, 1uLL, v22, v10) != v22)
      {
        goto LABEL_31;
      }

      v21 += v22;
    }

    v23 = v56 | (v55 << 8) | (v54 << 16) | (v53 << 24);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v52 | (v51 << 8) | (v50 << 16) | (v49 << 24);
    }

    if (v24 < 1)
    {
      goto LABEL_22;
    }

    v39 = v14;
    v25 = v4;
    v26 = v2;
    v27 = malloc_type_malloc(v24, 0x50D13129uLL);
    if (!v27)
    {
      break;
    }

    v28 = v27;
    if (v24 != fread(v27, 1uLL, v24, __stream) || v24 != fwrite(v28, 1uLL, v24, v10))
    {
      free(v28);
      v31 = -1;
      goto LABEL_39;
    }

    v21 += v24;
    v44 += v24;
    free(v28);
    v2 = v26;
    v4 = v25;
    v14 = v39;
LABEL_22:
    v59 = 33639248;
    v29 = vqtbl1q_s8(v45, xmmword_A830);
    v29.i16[5] = v46;
    v29.i32[3] = v47;
    v29.i16[1] = v29.i16[0];
    v60 = v29;
    LOBYTE(v61) = v56;
    HIBYTE(v61) = v55;
    v62 = v54;
    v63 = v53;
    v64 = v52;
    v65 = v51;
    v66 = v50;
    v67 = v49;
    v68 = v18;
    v69 = v19;
    v70 = v58;
    v71 = v57;
    v72 = 0;
    v73 = 0;
    v74 = v42;
    v13 = v41;
    v9 = __stream;
    if (fwrite(&v59, 1uLL, 0x2EuLL, v41) != 46)
    {
      v16 = v48;
LABEL_37:
      v30 = v16;
      v31 = -1;
      goto LABEL_42;
    }

    v16 = v48 + 46;
    if (fwrite(v76, 1uLL, v20, v41) != v20)
    {
      goto LABEL_37;
    }

    v16 += v20;
    if (v22)
    {
      if (fwrite(v75, 1uLL, v22, v41) != v22)
      {
        goto LABEL_37;
      }

      v16 += v22;
    }

    ++v14;
    v15 = v21;
    if (fread(&__ptr, 1uLL, 0x1EuLL, __stream) != 30)
    {
      v30 = v16;
      goto LABEL_30;
    }
  }

  v31 = -4;
LABEL_39:
  v2 = v26;
  v4 = v25;
  v9 = __stream;
  v14 = v39;
LABEL_40:
  v13 = v41;
LABEL_41:
  v30 = v48;
LABEL_42:
  v59 = 101010256;
  if (v14 >= 0xFFFF)
  {
    v32 = -1;
  }

  else
  {
    v32 = v14;
  }

  v60.i32[0] = 0;
  v60.i16[2] = v32;
  v60.i16[3] = v32;
  v60.i64[1] = __PAIR64__(v21, v30);
  v61 = 0;
  if (fwrite(&v59, 1uLL, 0x16uLL, v13) == 22)
  {
    v12 = v31;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  fclose(v13);
  if (!v12)
  {
    v33 = v14;
    v34 = fopen(__filename, "rb");
    if (v34)
    {
      v35 = v34;
      while (1)
      {
        v36 = fread(&v59, 1uLL, 0x2000uLL, v35);
        if (v36 < 1)
        {
          break;
        }

        if (fwrite(&v59, 1uLL, v36 & 0x7FFFFFFF, v10) != v36)
        {
          v12 = 0xFFFFFFFFLL;
          goto LABEL_56;
        }
      }

      v12 = 0;
LABEL_56:
      fclose(v35);
    }

    else
    {
      v12 = 0;
    }

    v14 = v33;
  }

  fclose(v9);
  fclose(v10);
  remove(__filename, v37);
  if (!v12)
  {
    if (v4)
    {
      *v4 = v14;
    }

    if (v2)
    {
      *v2 = v44;
    }
  }

  return v12;
}

uint64_t unzStringFileNameCompare(const char *a1, const char *a2, unsigned int a3)
{
  if (a3 < 2)
  {
    return strcmp(a1, a2);
  }

  while (1)
  {
    v5 = *a1++;
    v4 = v5;
    v7 = *a2++;
    v6 = v7;
    if ((v4 - 97) < 0x1A)
    {
      LOBYTE(v4) = v4 - 32;
    }

    if ((v6 - 97) < 0x1A)
    {
      LOBYTE(v6) = v6 - 32;
    }

    if (!v4)
    {
      break;
    }

    if (!v6)
    {
      return 1;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 > v6)
    {
      return 1;
    }
  }

  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *unzOpen2(uint64_t a1, _OWORD *a2)
{
  memset(__src, 0, 336);
  if (a2)
  {
    v3 = a2[1];
    __src[0] = *a2;
    __src[1] = v3;
    v4 = a2[3];
    __src[2] = a2[2];
    __src[3] = v4;
    v5 = (*&__src[0])(*(&v4 + 1), a1, 5);
  }

  else
  {
    fill_fopen_filefunc(__src);
    v5 = (*&__src[0])(*(&__src[3] + 1), a1, 5);
  }

  v6 = v5;
  *&__src[4] = v5;
  if (v5)
  {
    if ((*&__src[2])(*(&__src[3] + 1), v5, 0, 2) || ((v8 = (*(&__src[1] + 1))(*(&__src[3] + 1), v6), v9 = v8, v8 >= 0xFFFF) ? (v10 = 0xFFFFLL) : (v10 = v8), (v11 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL)) == 0))
    {
      v7 = 0;
      v36 = 0;
    }

    else
    {
      v12 = v11;
      if (v9 >= 5)
      {
        v13 = 4;
        while (2)
        {
          v14 = v13 + 1024;
          if (v13 + 1024 >= v10)
          {
            v13 = v10;
          }

          else
          {
            v13 += 1024;
          }

          v15 = v13 >= 0x404 ? 1028 : v13;
          if (!(*&__src[2])(*(&__src[3] + 1), v6, v9 - v13, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v6, v12, v15) == v15)
          {
            v16 = (v15 - 4);
            v17 = v13 - v9 - v16;
            v18 = v15 - 3;
            v19 = &v12[v16 + 1];
            while (*(v19 - 1) != 80 || *v19 != 75 || v19[1] != 5 || v19[2] != 6)
            {
              ++v17;
              --v19;
              v20 = __OFSUB__(v18--, 1);
              if ((v18 < 0) ^ v20 | (v18 == 0))
              {
                goto LABEL_28;
              }
            }

            if (v17)
            {
              v7 = -v17;
              v36 = 1;
              goto LABEL_33;
            }

LABEL_28:
            if (v14 < v10)
            {
              continue;
            }
          }

          break;
        }
      }

      v7 = 0;
      v36 = 0;
LABEL_33:
      free(v12);
    }

    v38 = 0;
    v39 = 0;
    v37 = 0;
    v33 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v7, 0);
    HIDWORD(v34) = unzlocal_getLong(__src, *&__src[4], &v40);
    LODWORD(v34) = unzlocal_getShort(__src, *&__src[4], &v39);
    Short = unzlocal_getShort(__src, *&__src[4], &v38);
    v21 = unzlocal_getShort(__src, *&__src[4], &__src[4] + 1);
    v22 = unzlocal_getShort(__src, *&__src[4], &v37);
    v24 = v37;
    v23 = v38;
    v25 = v39;
    v26 = *(&__src[4] + 1);
    Long = unzlocal_getLong(__src, *&__src[4], &__src[8]);
    v28 = unzlocal_getLong(__src, *&__src[4], &__src[8] + 1);
    v29 = unzlocal_getShort(__src, *&__src[4], &__src[5]);
    if (v7 < *&__src[8] + *(&__src[8] + 1) || v28 | Long | v29 || v24 != v26 || v23 || v25 || !v36 || v22 || v21 || Short || v34 || v33)
    {
      (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
      return 0;
    }

    else
    {
      *(&__src[5] + 1) = v7 - (*&__src[8] + *(&__src[8] + 1));
      *(&__src[7] + 1) = v7;
      *&__src[18] = 0;
      DWORD2(__src[18]) = 0;
      v30 = malloc_type_malloc(0x150uLL, 0x10F0040A626E916uLL);
      v6 = v30;
      if (v30)
      {
        memcpy(v30, __src, 0x150uLL);
        v31 = v6[17];
        v6[12] = 0;
        v6[13] = v31;
        v6[14] = unzlocal_GetCurrentFileInfoInternal(v6, (v6 + 18), v6 + 35, 0, 0, 0, 0, 0, 0) == 0;
      }
    }
  }

  return v6;
}

uint64_t unzlocal_getLong(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = 0;
  if (unzlocal_getByte(a1, a2, &v11) || (v6 = v11, unzlocal_getByte(a1, a2, &v11)) || (v7 = v11, unzlocal_getByte(a1, a2, &v11)))
  {
    v8 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v6 + (v7 << 8) + (v11 << 16);
    result = unzlocal_getByte(a1, a2, &v11);
    v8 = v10 + (v11 << 24);
    if (result)
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t unzlocal_getShort(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  if (unzlocal_getByte(a1, a2, &v9))
  {
    v6 = 0;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = v9;
    result = unzlocal_getByte(a1, a2, &v9);
    v6 = v8 + (v9 << 8);
    if (result)
    {
      v6 = 0;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t unzGoToFirstFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a1[17];
  a1[12] = 0;
  a1[13] = v2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t unzClose(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    unzCloseCurrentFile(a1);
  }

  (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  free(a1);
  return 0;
}

uint64_t unzCloseCurrentFile(uint64_t a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = *(a1 + 288);
  if (!v2)
  {
    return 4294967194;
  }

  if (*(v2 + 184) || *(v2 + 280))
  {
    v3 = 0;
  }

  else if (*(v2 + 160) == *(v2 + 168))
  {
    v3 = 0;
  }

  else
  {
    v3 = 4294967191;
  }

  if (*v2)
  {
    free(*v2);
  }

  *v2 = 0;
  if (*(v2 + 128) == 8)
  {
    inflateEnd((v2 + 8));
  }

  free(v2);
  *(a1 + 288) = 0;
  return v3;
}

uint64_t unzGetGlobalInfo(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  result = 0;
  *a2 = *(a1 + 72);
  return result;
}

uint64_t unzlocal_GetCurrentFileInfoInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9)
{
  if (!a1)
  {
    return 4294967194;
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 104), 0) || (v52 = 0, unzlocal_getLong(a1, *(a1 + 64), &v52)))
  {
    v11 = -1;
  }

  else if (v52 == 33639248)
  {
    v11 = 0;
  }

  else
  {
    v11 = -103;
  }

  v46 = v11;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0;
  Short = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v44 = unzlocal_getShort(a1, *(a1 + 64), &v54 + 1);
  v12 = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v55 + 1);
  Long = unzlocal_getLong(a1, *(a1 + 64), &v56);
  v15.i32[0] = v56;
  v16 = vshlq_u32(vdupq_n_s32(v56), xmmword_A850);
  v16.i32[0] = vshlq_u32(v15, xmmword_A840).u32[0];
  LODWORD(v62) = ((v56 >> 21) & 0xF) - 1;
  HIDWORD(v62) = (v56 >> 25) + 1980;
  v61 = vandq_s8(v16, xmmword_A860);
  v17 = unzlocal_getLong(a1, *(a1 + 64), &v56 + 1) | Long;
  v18 = unzlocal_getLong(a1, *(a1 + 64), &v57);
  v19 = v17 | v18 | unzlocal_getLong(a1, *(a1 + 64), &v57 + 1);
  v20 = v19 | unzlocal_getShort(a1, *(a1 + 64), &v58);
  v21 = unzlocal_getShort(a1, *(a1 + 64), &v58 + 1);
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v59);
  v23 = unzlocal_getShort(a1, *(a1 + 64), &v59 + 1);
  v24 = unzlocal_getShort(a1, *(a1 + 64), &v60);
  v25 = unzlocal_getLong(a1, *(a1 + 64), &v60 + 1);
  if (unzlocal_getLong(a1, *(a1 + 64), &v53) | v25 | v24 | v23 | v22 | v21 | v20 | v13 | v12 | v44 | Short)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v46;
  }

  v27 = v58;
  if (a4)
  {
    v29 = a7;
    v28 = a6;
    if (v26)
    {
      v31 = a8;
    }

    else
    {
      v30 = a5;
      v31 = a8;
      if (v58 < a5)
      {
        *(a4 + v58) = 0;
        v30 = v27;
      }

      v26 = 0;
      if (a5 && v27)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64)) == v30)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      v27 -= v30;
    }
  }

  else
  {
    v28 = a6;
    v31 = a8;
    v29 = a7;
  }

  v32 = *(&v58 + 1);
  if (!v28 || v26)
  {
    v35 = *(&v58 + 1) + v27;
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  if (*(&v58 + 1) >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = *(&v58 + 1);
  }

  if (!v27)
  {
    v26 = 0;
    if (!v29)
    {
      goto LABEL_41;
    }

    goto LABEL_37;
  }

  v34 = (*(a1 + 32))(*(a1 + 56), *(a1 + 64), v27, 1);
  if (v34)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = 0;
  }

  if (!v34)
  {
    v27 = 0;
  }

  if (v29)
  {
LABEL_37:
    if (v32)
    {
      if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v28, v33) == v33)
      {
        v26 = v26;
      }

      else
      {
        v26 = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_41:
  v35 = v32 - v33 + v27;
  if (!v31)
  {
    goto LABEL_56;
  }

LABEL_42:
  if (!v26)
  {
    v36 = v59;
    v37 = a9;
    if (v59 < a9)
    {
      *(v31 + v59) = 0;
      v37 = v36;
    }

    if (v35)
    {
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v35, 1))
      {
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
      }

      if (!a9)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v36)
      {
        if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), v31, v37) == v37)
        {
          v26 = v26;
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_56;
    }

    v26 = 0;
    if (a9)
    {
      goto LABEL_52;
    }
  }

LABEL_56:
  if (a2 && !v26)
  {
    v38 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v38;
    *(a2 + 128) = v62;
    v39 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v39;
    v40 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v40;
    v41 = v55;
    *a2 = v54;
    *(a2 + 16) = v41;
  }

  if (a3 && !v26)
  {
    *a3 = v53;
  }

  return v26;
}

uint64_t unzGoToNextFile(void *a1)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!a1[14])
  {
    return 4294967196;
  }

  v2 = a1[9];
  v3 = a1[12] + 1;
  if (v2 != 0xFFFF && v3 == v2)
  {
    return 4294967196;
  }

  v5 = a1[26] + a1[27] + a1[28] + a1[13] + 46;
  a1[12] = v3;
  a1[13] = v5;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t unzLocateFile(uint64_t a1, char *__s, unsigned int a3)
{
  if (!a1 || strlen(__s) > 0xFF)
  {
    return 4294967194;
  }

  if (!*(a1 + 112))
  {
    return 4294967196;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v17 = *(a1 + 240);
  v18 = *(a1 + 256);
  v9 = *(a1 + 280);
  v19 = *(a1 + 272);
  v13 = *(a1 + 176);
  v14 = *(a1 + 192);
  v15 = *(a1 + 208);
  v16 = *(a1 + 224);
  v11 = *(a1 + 144);
  v12 = *(a1 + 160);
  v10 = *(a1 + 136);
  *(a1 + 96) = 0;
  *(a1 + 104) = v10;
  result = unzlocal_GetCurrentFileInfoInternal(a1, a1 + 144, (a1 + 280), 0, 0, 0, 0, 0, 0);
  for (*(a1 + 112) = result == 0; !result; result = unzGoToNextFile(a1))
  {
    result = unzlocal_GetCurrentFileInfoInternal(a1, 0, 0, v20, 0x100uLL, 0, 0, 0, 0);
    if (result)
    {
      break;
    }

    result = unzStringFileNameCompare(v20, __s, a3);
    if (!result)
    {
      return result;
    }
  }

  *(a1 + 96) = v7;
  *(a1 + 104) = v8;
  *(a1 + 240) = v17;
  *(a1 + 256) = v18;
  *(a1 + 176) = v13;
  *(a1 + 192) = v14;
  *(a1 + 208) = v15;
  *(a1 + 224) = v16;
  *(a1 + 144) = v11;
  *(a1 + 160) = v12;
  *(a1 + 272) = v19;
  *(a1 + 280) = v9;
  return result;
}

uint64_t unzGetFilePos(int8x16_t *a1, int8x16_t *a2)
{
  result = 4294967194;
  if (a1 && a2)
  {
    if (a1[7].i64[0])
    {
      result = 0;
      *a2 = vextq_s8(a1[6], a1[6], 8uLL);
    }

    else
    {
      return 4294967196;
    }
  }

  return result;
}

uint64_t unzGoToFilePos(int8x16_t *a1, int8x16_t *a2)
{
  result = 4294967194;
  if (a1)
  {
    if (a2)
    {
      a1[6] = vextq_s8(*a2, *a2, 8uLL);
      result = unzlocal_GetCurrentFileInfoInternal(a1, a1[9].i64, &a1[17].i64[1], 0, 0, 0, 0, 0, 0);
      a1[7].i64[0] = result == 0;
    }
  }

  return result;
}

uint64_t unzOpenCurrentFile3(uint64_t a1, _DWORD *a2, int *a3, int a4, _BYTE *a5)
{
  if (!a1 || !*(a1 + 112))
  {
    return 4294967194;
  }

  if (*(a1 + 288))
  {
    unzCloseCurrentFile(a1);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 88) + *(a1 + 280), 0))
  {
    return 4294967193;
  }

  v55 = 0;
  v56[0] = 0;
  v54 = 0;
  Long = unzlocal_getLong(a1, *(a1 + 64), v56);
  v11 = v56[0];
  Short = unzlocal_getShort(a1, *(a1 + 64), &v55);
  v13 = unzlocal_getShort(a1, *(a1 + 64), &v54);
  v14 = -103;
  if (!unzlocal_getShort(a1, *(a1 + 64), &v55))
  {
    v19 = v11 == 67324752 ? 0 : -103;
    v20 = v13 | Short | Long;
    v14 = v20 ? -1 : v19;
    if (!v20 && v11 == 67324752)
    {
      if (v55 == *(a1 + 168) && v55 <= 0xC && ((1 << v55) & 0x1101) != 0)
      {
        v14 = 0;
      }

      else
      {
        v14 = -103;
      }
    }
  }

  v15 = unzlocal_getLong(a1, *(a1 + 64), &v55);
  v16 = unzlocal_getLong(a1, *(a1 + 64), &v55) || v15 | v14 || v55 != *(a1 + 184) && (v54 & 8) == 0;
  v18 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v55) && !v16)
  {
    v18 = v55 != *(a1 + 192) && (v54 & 8) == 0;
  }

  v21 = 1;
  if (!unzlocal_getLong(a1, *(a1 + 64), &v55) && !v18)
  {
    v21 = v55 != *(a1 + 200) && (v54 & 8) == 0;
  }

  v53 = 0;
  v22 = unzlocal_getShort(a1, *(a1 + 64), &v53);
  v23 = 0;
  v24 = v53;
  if (!v22 && !v21)
  {
    v23 = v53 == *(a1 + 208);
  }

  v52 = 0;
  if (unzlocal_getShort(a1, *(a1 + 64), &v52) || !v23)
  {
    return 4294967193;
  }

  v25 = *(a1 + 280);
  v26 = v52;
  v27 = malloc_type_malloc(0x120uLL, 0x10B0040E43A3504uLL);
  if (!v27)
  {
    return 4294967192;
  }

  v28 = v27;
  v29 = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  *v28 = v29;
  *(v28 + 17) = v24 + v25 + 30;
  *(v28 + 36) = v26;
  *(v28 + 19) = 0;
  *(v28 + 70) = a4;
  if (!v29)
  {
    free(v28);
    return 4294967192;
  }

  *(v28 + 16) = 0;
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  if (!a3)
  {
    goto LABEL_57;
  }

  *a3 = 6;
  v30 = *(a1 + 160) & 6;
  if (v30 > 3)
  {
    if (v30 == 6)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }
  }

  else
  {
    if (!v30)
    {
      goto LABEL_57;
    }

    v31 = 9;
  }

  *a3 = v31;
LABEL_57:
  v33 = *(a1 + 184);
  *(v28 + 20) = 0;
  *(v28 + 21) = v33;
  *(v28 + 33) = *(a1 + 168);
  *(v28 + 32) = *(a1 + 64);
  v34 = *a1;
  v35 = *(a1 + 16);
  v36 = *(a1 + 48);
  *(v28 + 14) = *(a1 + 32);
  *(v28 + 15) = v36;
  *(v28 + 12) = v34;
  *(v28 + 13) = v35;
  *(v28 + 34) = *(a1 + 88);
  *(v28 + 6) = 0;
  v37 = *(a1 + 168);
  if (a4 || v37 != 12)
  {
    if (!a4 && v37 == 8)
    {
      *(v28 + 1) = 0;
      *(v28 + 4) = 0;
      *(v28 + 10) = 0;
      *(v28 + 11) = 0;
      *(v28 + 9) = 0;
      v45 = inflateInit2_((v28 + 8), -15, "1.2.12", 112);
      if (v45)
      {
        v17 = v45;
        free(v28);
        return v17;
      }

      *(v28 + 16) = 8;
    }
  }

  else
  {
    *(v28 + 70) = 1;
  }

  *(v28 + 11) = *(a1 + 192);
  *(v28 + 15) = *(a1 + 280) + (v26 + v24) + 30;
  *(v28 + 4) = 0;
  *(a1 + 288) = v28;
  *(a1 + 296) = 0;
  if (!a5)
  {
    return 0;
  }

  v38 = 878082192;
  crc_table = get_crc_table();
  *(a1 + 304) = xmmword_A870;
  *(a1 + 320) = 878082192;
  *(a1 + 328) = crc_table;
  v40 = *a5;
  if (*a5)
  {
    v41 = a5 + 1;
    v42 = 305419896;
    v43 = 591751049;
    do
    {
      v42 = crc_table[v40 ^ v42] ^ (v42 >> 8);
      v43 = 134775813 * (v43 + v42) + 1;
      *(a1 + 304) = v42;
      *(a1 + 312) = v43;
      v38 = crc_table[(v38 ^ BYTE3(v43))] ^ (v38 >> 8);
      *(a1 + 320) = v38;
      v44 = *v41++;
      v40 = v44;
    }

    while (v44);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(*(a1 + 288) + 272) + *(*(a1 + 288) + 120), 0) || (*(a1 + 8))(*(a1 + 56), *(a1 + 64), v56, 12) < 0xC)
  {
    return 4294967192;
  }

  v46 = 0;
  v48 = *(a1 + 320);
  v47 = *(a1 + 328);
  v49 = *(a1 + 304);
  v50 = *(a1 + 312);
  do
  {
    v51 = *(v56 + v46) ^ (((v48 & 0xFFFD ^ 3) * (v48 | 2)) >> 8);
    *(v56 + v46) = v51;
    v49 = *(v47 + 8 * (v51 ^ v49)) ^ (v49 >> 8);
    v50 = 134775813 * (v50 + v49) + 1;
    *(a1 + 304) = v49;
    *(a1 + 312) = v50;
    v48 = *(v47 + 8 * (v48 ^ BYTE3(v50))) ^ (v48 >> 8);
    *(a1 + 320) = v48;
    ++v46;
  }

  while (v46 != 12);
  v17 = 0;
  *(*(a1 + 288) + 120) += 12;
  *(a1 + 296) = 1;
  return v17;
}

uint64_t unzReadCurrentFile(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v4 = *(a1 + 288);
  if (!v4)
  {
    return 4294967194;
  }

  if (!*v4)
  {
    return 4294967196;
  }

  if (!a3)
  {
    return 0;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v5 = a3;
  v6 = *(v4 + 184);
  if (v6 < a3 && !*(v4 + 280))
  {
    *(v4 + 40) = v6;
    a3 = v6;
  }

  v7 = *(v4 + 176);
  v8 = *(v4 + 16);
  if (v7 + v8 < v5 && *(v4 + 280))
  {
    a3 = v8 + v7;
    *(v4 + 40) = v8 + v7;
  }

  if (!a3)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    LODWORD(v10) = *(v4 + 16);
    if (!v10)
    {
      v11 = *(v4 + 176);
      if (v11)
      {
        if (v11 >= 0x4000)
        {
          v10 = 0x4000;
        }

        else
        {
          v10 = *(v4 + 176);
        }

        if ((*(v4 + 224))(*(v4 + 248), *(v4 + 256), *(v4 + 272) + *(v4 + 120), 0) || (*(v4 + 200))(*(v4 + 248), *(v4 + 256), *v4, v10) != v10)
        {
          return 0xFFFFFFFFLL;
        }

        if (*(a1 + 296))
        {
          v12 = 0;
          do
          {
            v13 = *(a1 + 328);
            v14 = *(*v4 + v12) ^ (((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2u)) >> 8);
            *(*v4 + v12) ^= ((*(a1 + 320) & 0xFFFD ^ 3) * (*(a1 + 320) | 2)) >> 8;
            v15 = *(v13 + 8 * (v14 ^ *(a1 + 304))) ^ (*(a1 + 304) >> 8);
            v16 = 134775813 * (*(a1 + 312) + v15) + 1;
            *(a1 + 304) = v15;
            *(a1 + 312) = v16;
            *(a1 + 320) = *(v13 + 8 * (*(a1 + 320) ^ BYTE3(v16))) ^ (*(a1 + 320) >> 8);
            *(*v4 + v12++) = v14;
          }

          while (v10 != v12);
        }

        *(v4 + 120) += v10;
        *(v4 + 176) -= v10;
        *(v4 + 8) = *v4;
        *(v4 + 16) = v10;
      }

      else
      {
        LODWORD(v10) = 0;
      }
    }

    v17 = *(v4 + 264);
    if (!v17 || *(v4 + 280))
    {
      if (!v10 && !*(v4 + 176))
      {
        return v9;
      }

      v18 = *(v4 + 40);
      if (v18 >= v10)
      {
        v10 = v10;
      }

      else
      {
        v10 = v18;
      }

      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          *(*(v4 + 32) + i) = *(*(v4 + 8) + i);
        }

        v20 = v10;
      }

      else
      {
        v20 = 0;
      }

      *(v4 + 160) = crc32(*(v4 + 160), *(v4 + 32), v10);
      *(v4 + 184) -= v20;
      *(v4 + 16) -= v10;
      *(v4 + 40) -= v10;
      *(v4 + 32) += v20;
      *(v4 + 8) += v20;
      v9 = (v10 + v9);
      *(v4 + 48) += v20;
      goto LABEL_38;
    }

    if (v17 != 12)
    {
      v21 = *(v4 + 48);
      v22 = *(v4 + 32);
      v23 = inflate((v4 + 8), 2);
      if ((v23 & 0x80000000) == 0 && *(v4 + 56))
      {
        v26 = *(v4 + 48);
        v27 = v26 - v21;
        *(v4 + 160) = crc32(*(v4 + 160), v22, v26 - v21);
        *(v4 + 184) -= v27;
        return 4294967293;
      }

      v24 = *(v4 + 48) - v21;
      *(v4 + 160) = crc32(*(v4 + 160), v22, v24);
      *(v4 + 184) -= v24;
      v9 = (v9 + v24);
      if (v23)
      {
        break;
      }
    }

LABEL_38:
    if (!*(v4 + 40))
    {
      return v9;
    }
  }

  if (v23 == 1)
  {
    return v9;
  }

  else
  {
    return v23;
  }
}

uint64_t unztell(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    return *(v1 + 48);
  }

  else
  {
    return -102;
  }
}

uint64_t unzeof(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    return *(v1 + 184) == 0;
  }

  else
  {
    return 4294967194;
  }
}

unint64_t unzGetLocalExtrafield(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  v3 = *(a1 + 288);
  if (!v3)
  {
    return 4294967194;
  }

  v5 = *(v3 + 152);
  result = *(v3 + 144) - v5;
  if (a2)
  {
    if (result >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = result;
    }

    if (v7)
    {
      if ((*(v3 + 224))(*(v3 + 248), *(v3 + 256), *(v3 + 136) + v5, 0))
      {
        return 0xFFFFFFFFLL;
      }

      else if ((*(v3 + 200))(*(v3 + 248), *(v3 + 256), a2, v7) == v7)
      {
        return v7;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t unzGetGlobalComment(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (*(a1 + 80) >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *(a1 + 80);
  }

  if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 120) + 22, 0))
  {
    return 0xFFFFFFFFLL;
  }

  if (v6)
  {
    *a2 = 0;
    if ((*(a1 + 8))(*(a1 + 56), *(a1 + 64), a2, v6) != v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!a2)
  {
    return v6;
  }

  v8 = *(a1 + 80);
  if (v8 < a3)
  {
    a2[v8] = 0;
  }

  return v6;
}

void *unzGetOffset(void *result)
{
  if (result)
  {
    if (result[14] && ((v1 = result[9]) != 0 ? (v2 = v1 == 0xFFFF) : (v2 = 1), v2 || result[12] != v1))
    {
      return result[13];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t unzSetOffset(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  a1[12] = a1[9];
  a1[13] = a2;
  result = unzlocal_GetCurrentFileInfoInternal(a1, (a1 + 18), a1 + 35, 0, 0, 0, 0, 0, 0);
  a1[14] = result == 0;
  return result;
}

uint64_t unzlocal_getByte(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = 0;
  if ((*(a1 + 8))(*(a1 + 56), a2, &v7, 1) == 1)
  {
    result = 0;
    *a3 = v7;
  }

  else if ((*(a1 + 48))(*(a1 + 56), a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }

  return result;
}

void *zipOpen2()
{
  v0 = __chkstk_darwin();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  memset(__src, 0, 512);
  if (v1)
  {
    v7 = v1[1];
    __src[0] = *v1;
    __src[1] = v7;
    v8 = v1[3];
    __src[2] = v1[2];
    __src[3] = v8;
  }

  else
  {
    fill_fopen_filefunc(__src);
  }

  if (v5)
  {
    v9 = 7;
  }

  else
  {
    v9 = 11;
  }

  v10 = (*&__src[0])(*(&__src[3] + 1), v6, v9);
  *&__src[4] = v10;
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (v5 == 1)
  {
    (*&__src[2])(*(&__src[3] + 1), v10, 0, 2);
    v11 = *&__src[4];
  }

  *&__src[1044] = (*(&__src[1] + 1))(*(&__src[3] + 1), v11);
  *(&__src[4] + 8) = 0u;
  LODWORD(__src[13]) = 0;
  DWORD2(__src[5]) = 0;
  *(&__src[1044] + 8) = 0u;
  v12 = malloc_type_malloc(0x4160uLL, 0x10F0040221808EAuLL);
  if (v12)
  {
    *(&__src[1045] + 1) = 0;
    if (v5 == 2)
    {
      v63 = 0;
      v64 = 0;
      v60 = 0;
      v61 = 0;
      v58 = 0;
      v59 = 0;
      v57 = 0;
      v13 = *&__src[4];
      v52 = v3;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], 0, 2) || ((v16 = (*(&__src[1] + 1))(*(&__src[3] + 1), v13), v17 = v16, v16 >= 0xFFFF) ? (v18 = 0xFFFFLL) : (v18 = v16), (v19 = malloc_type_malloc(0x404uLL, 0x100004077774924uLL)) == 0))
      {
        v14 = 0;
      }

      else
      {
        v20 = v19;
        if (v17 >= 5)
        {
          v21 = 4;
          while (2)
          {
            v22 = v21 + 1024;
            if (v21 + 1024 >= v18)
            {
              v21 = v18;
            }

            else
            {
              v21 += 1024;
            }

            v23 = v21 >= 0x404 ? 1028 : v21;
            if (!(*&__src[2])(*(&__src[3] + 1), v13, v17 - v21, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v13, v20, v23) == v23)
            {
              v24 = (v23 - 4);
              v25 = v21 - v17 - v24;
              v26 = v23 - 3;
              v27 = &v20[v24 + 1];
              while (*(v27 - 1) != 80 || *v27 != 75 || v27[1] != 5 || v27[2] != 6)
              {
                ++v25;
                --v27;
                v28 = __OFSUB__(v26--, 1);
                if ((v26 < 0) ^ v28 | (v26 == 0))
                {
                  goto LABEL_42;
                }
              }

              if (v25)
              {
                v14 = -v25;
                goto LABEL_47;
              }

LABEL_42:
              if (v22 < v18)
              {
                continue;
              }
            }

            break;
          }
        }

        v14 = 0;
LABEL_47:
        free(v20);
      }

      v53 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v14, 0);
      HIDWORD(v54) = unzlocal_getLong(__src, *&__src[4], &v62);
      LODWORD(v54) = unzlocal_getShort(__src, *&__src[4], &v61);
      Short = unzlocal_getShort(__src, *&__src[4], &v60);
      v29 = unzlocal_getShort(__src, *&__src[4], &v59);
      v30 = unzlocal_getShort(__src, *&__src[4], &v58);
      v31 = v59;
      v56 = v58;
      v32 = v60;
      v33 = v61;
      Long = unzlocal_getLong(__src, *&__src[4], &v64);
      v35 = unzlocal_getLong(__src, *&__src[4], &v63);
      v36 = unzlocal_getShort(__src, *&__src[4], &v57);
      v37 = v64;
      v51 = v63;
      v38 = v14 >= v64 + v63;
      v39 = v14 - (v64 + v63);
      if (!v38 || v35 | Long | v36 || v56 != v31 || v32 || v33 || v30 || v29 || Short || v54 || v53)
      {
        (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_75:
        free(v12);
        return 0;
      }

      v40 = v57;
      if (v57)
      {
        v41 = malloc_type_malloc(v57 + 1, 0x100004077774924uLL);
        *(&__src[1045] + 1) = v41;
        if (v41)
        {
          v42 = (*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v41, v40);
          *(*(&__src[1045] + 1) + v42) = 0;
        }
      }

      *(&__src[1044] + 1) = v39;
      v43 = malloc_type_malloc(0xFF0uLL, 0x9FB185F7uLL);
      v44 = v39;
      v45 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v39 + v51, 0);
      if (v45)
      {
        v46 = -1;
      }

      else
      {
        v46 = 0;
      }

      v3 = v52;
      if (v37 && !v45)
      {
        while (1)
        {
          v47 = v37 >= 0xFF0 ? 4080 : v37;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v43, v47) != v47)
          {
            break;
          }

          v48 = add_data_in_datablock(&__src[4] + 1, v43, v47);
          v46 = v48;
          v37 -= v47;
          if (!v37 || v48)
          {
            goto LABEL_79;
          }
        }

        v46 = -1;
      }

LABEL_79:
      if (v43)
      {
        free(v43);
      }

      *&__src[1044] = v44;
      *&__src[1045] = v56;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], v44 + v51, 0))
      {
        v50 = 0;
      }

      else
      {
        v50 = v46 == 0;
      }

      v15 = v50;
      if (!v52)
      {
LABEL_17:
        if (v15)
        {
          memcpy(v12, __src, 0x4160uLL);
          return v12;
        }

        if (*(&__src[1045] + 1))
        {
          free(*(&__src[1045] + 1));
        }

        goto LABEL_75;
      }
    }

    else
    {
      v15 = 1;
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    *v3 = *(&__src[1045] + 1);
    goto LABEL_17;
  }

  (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
  return v12;
}

uint64_t add_data_in_datablock(void *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967192;
  }

  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v8 = malloc_type_malloc(0x1010uLL, 0x1020040BBE2FE16uLL);
  if (v8)
  {
    v6 = v8;
    *v8 = 0;
    *(v8 + 8) = xmmword_A8E0;
    *a1 = v8;
    a1[1] = v8;
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v9 = v6[1];
    while (1)
    {
      if (v9)
      {
        v10 = v6[2];
      }

      else
      {
        v11 = malloc_type_malloc(0x1010uLL, 0x1020040BBE2FE16uLL);
        if (!v11)
        {
          *v6 = 0;
          return 4294967192;
        }

        v10 = 0;
        *v11 = 0;
        *(v11 + 8) = xmmword_A8E0;
        *v6 = v11;
        v9 = 4080;
        v6 = v11;
        a1[1] = v11;
      }

      if (v9 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = v6 + v10 + 32;
        v14 = v12;
        v15 = a2;
        do
        {
          v16 = *v15++;
          *v13++ = v16;
          --v14;
        }

        while (v14);
        v9 = v6[1];
        v10 = v6[2];
      }

      v9 -= v12;
      v6[1] = v9;
      v6[2] = v10 + v12;
      a2 += v12;
      v3 -= v12;
      if (!v3)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return 4294967192;
}

uint64_t zipOpenNewFileInZip4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, unsigned int a7, char *__s, int a9, int a10, int a11, int a12, int a13, int a14, _BYTE *a15, uint64_t a16, unint64_t a17, uint64_t a18)
{
  result = 4294967194;
  if (!a1)
  {
    return result;
  }

  if ((a9 & 0xFFFFFFF7) != 0)
  {
    return result;
  }

  if (*(a1 + 88) == 1)
  {
    result = zipCloseFileInZipRaw(a1, 0, 0);
    if (result)
    {
      return result;
    }
  }

  v102 = a5;
  if (a2)
  {
    v27 = a2;
  }

  else
  {
    v27 = "-";
  }

  if (__s)
  {
    v28 = strlen(__s);
  }

  else
  {
    v28 = 0;
  }

  v103 = strlen(v27);
  if (a3)
  {
    v29 = *(a3 + 24);
    if (!v29)
    {
      v30 = *(a3 + 20);
      v31 = v30 - 80;
      if (v30 <= 0x4F)
      {
        v31 = *(a3 + 20);
      }

      if (v30 <= 0x7BB)
      {
        v32 = v31;
      }

      else
      {
        v32 = v30 - 1980;
      }

      v29 = ((32 * *(a3 + 4) + (*a3 >> 1)) + (*(a3 + 8) << 11)) | (((*(a3 + 12) + 32 * *(a3 + 16) + 32) << 16) + (v32 << 25));
    }
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 16640) = v29;
  if ((a10 & 0xFFFFFFFE) == 8)
  {
    v33 = a18 | 2;
  }

  else
  {
    v33 = a18;
  }

  *(a1 + 240) = v33;
  if (a10 == 2)
  {
    v34 = 4;
  }

  else
  {
    if (a10 != 1)
    {
      goto LABEL_28;
    }

    v34 = 6;
  }

  v33 = v34 | a18;
  *(a1 + 240) = v33;
LABEL_28:
  if (a15)
  {
    *(a1 + 240) = v33 | 1;
  }

  *(a1 + 16648) = 0;
  *(a1 + 16656) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = a9;
  *(a1 + 252) = a11;
  *(a1 + 216) = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  v35 = a7 + v28 + v103 + 46;
  *(a1 + 232) = v35;
  v36 = malloc_type_malloc(v35, 0x100004077774924uLL);
  *(a1 + 224) = v36;
  *v36 = 33639248;
  v37 = *(a1 + 224);
  *(v37 + 4) = a17;
  if (a17 >= 0x10000)
  {
    *(v37 + 4) = -1;
  }

  *(*(a1 + 224) + 6) = 20;
  v38 = *(a1 + 224);
  v39 = *(a1 + 240);
  *(v38 + 8) = v39;
  if (v39 >= 0x10000)
  {
    *(v38 + 8) = -1;
  }

  v40 = *(a1 + 224);
  v41 = *(a1 + 248);
  *(v40 + 10) = v41;
  if (v41 >= 0x10000)
  {
    *(v40 + 10) = -1;
  }

  v42 = 0;
  v43 = (*(a1 + 224) + 12);
  v44 = *(a1 + 16640);
  do
  {
    v45 = v44;
    *(v43 + v42) = v44;
    v44 >>= 8;
    ++v42;
  }

  while (v42 != 4);
  if (v45 >= 0x100)
  {
    *v43 = -1;
  }

  *(*(a1 + 224) + 16) = 0;
  *(*(a1 + 224) + 20) = 0;
  *(*(a1 + 224) + 24) = 0;
  v46 = *(a1 + 224);
  *(v46 + 28) = v103;
  if (v103 >= 0x10000uLL)
  {
    *(v46 + 28) = -1;
  }

  v47 = *(a1 + 224);
  *(v47 + 30) = a7;
  if (a7 >= 0x10000)
  {
    *(v47 + 30) = -1;
  }

  v48 = *(a1 + 224);
  *(v48 + 32) = v28;
  if (v28 >= 0x10000)
  {
    *(v48 + 32) = -1;
  }

  v49 = v28;
  *(*(a1 + 224) + 34) = 0;
  v50 = *(a1 + 224);
  if (a3)
  {
    v51 = *(a3 + 32);
    *(v50 + 36) = v51;
    if (v51 >= 0x10000)
    {
      *(v50 + 36) = -1;
    }

    v52 = 0;
    v53 = (*(a1 + 224) + 38);
    v54 = *(a3 + 40);
    do
    {
      v55 = v54;
      *(v53 + v52) = v54;
      v54 >>= 8;
      ++v52;
    }

    while (v52 != 4);
    if (v55 >= 0x100)
    {
      *v53 = -1;
    }
  }

  else
  {
    *(v50 + 36) = 0;
    *(*(a1 + 224) + 38) = 0;
  }

  v56 = 0;
  v57 = (*(a1 + 224) + 42);
  v58 = *(a1 + 216) - *(a1 + 16712);
  do
  {
    v59 = v58;
    *(v57 + v56) = v58;
    v58 >>= 8;
    ++v56;
  }

  while (v56 != 4);
  if (v59 >= 0x100)
  {
    *v57 = -1;
  }

  if (v103)
  {
    for (i = 0; i != v103; ++i)
    {
      *(*(a1 + 224) + i + 46) = v27[i];
    }
  }

  if (a7)
  {
    v61 = v103 + 46;
    v62 = a7;
    do
    {
      v63 = *a6++;
      *(*(a1 + 224) + v61++) = v63;
      --v62;
    }

    while (v62);
  }

  if (v28)
  {
    v64 = a7 + v103 + 46;
    do
    {
      v65 = *__s++;
      *(*(a1 + 224) + v64++) = v65;
      --v49;
    }

    while (v49);
  }

  if (!*(a1 + 224))
  {
    return 4294967192;
  }

  v104[0] = 67324752;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v104, 4) != 4)
  {
    goto LABEL_97;
  }

  LOWORD(v104[0]) = 20;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v104, 2) != 2)
  {
    goto LABEL_97;
  }

  v66 = *(a1 + 64);
  v67 = *(a1 + 240);
  LOWORD(v104[0]) = v67;
  if (v67 >= 0x10000)
  {
    LOWORD(v104[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v66, v104, 2) != 2)
  {
    goto LABEL_97;
  }

  v68 = *(a1 + 64);
  v69 = *(a1 + 248);
  LOWORD(v104[0]) = v69;
  if (v69 >= 0x10000)
  {
    LOWORD(v104[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v68, v104, 2) != 2)
  {
    goto LABEL_97;
  }

  v70 = 0;
  v71 = *(a1 + 64);
  v72 = *(a1 + 16640);
  do
  {
    v73 = v72;
    *(v104 + v70) = v72;
    v72 >>= 8;
    ++v70;
  }

  while (v70 != 4);
  if (v73 >= 0x100)
  {
    v104[0] = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v71, v104, 4) != 4)
  {
    goto LABEL_97;
  }

  v104[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v104, 4) != 4)
  {
    goto LABEL_97;
  }

  v104[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v104, 4) != 4)
  {
    goto LABEL_97;
  }

  v104[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v104, 4) != 4)
  {
    goto LABEL_97;
  }

  v74 = *(a1 + 64);
  LOWORD(v104[0]) = v103;
  if (v103 >= 0x10000uLL)
  {
    LOWORD(v104[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v74, v104, 2) == 2)
  {
    v75 = *(a1 + 64);
    LOWORD(v104[0]) = v102;
    if (v102 >= 0x10000)
    {
      LOWORD(v104[0]) = -1;
    }

    v76 = (*(a1 + 16))(*(a1 + 56), v75, v104, 2);
    v77 = v76 != 2;
    if (v76 == 2 && v103)
    {
      v77 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v27, v103) != v103;
    }

    v78 = v77 << 31 >> 31;
    v79 = a15;
    if (v102 && (v77 & 1) == 0)
    {
      v80 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), a4, v102);
      v79 = a15;
      if (v80 == v102)
      {
        v78 = 0;
      }

      else
      {
        v78 = -1;
      }
    }
  }

  else
  {
LABEL_97:
    v78 = -1;
    v79 = a15;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0x4000;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 256;
  *(a1 + 136) = 0;
  *(a1 + 184) = 0;
  if (v78)
  {
    result = 0xFFFFFFFFLL;
LABEL_100:
    *(a1 + 16696) = 0;
    return result;
  }

  if (*(a1 + 248) == 8 && !*(a1 + 252))
  {
    if (a12 < 0)
    {
      v101 = a12;
    }

    else
    {
      v101 = -a12;
    }

    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    result = deflateInit2_((a1 + 96), a10, 8, v101, a13, a14, "1.2.12", 112);
    if (result)
    {
      goto LABEL_100;
    }

    *(a1 + 208) = 1;
    v79 = a15;
  }

  *(a1 + 16696) = 0;
  if (!v79)
  {
    goto LABEL_112;
  }

  *(a1 + 16656) = 1;
  crc_table = get_crc_table();
  *(a1 + 16688) = crc_table;
  if (!crypthead_calls++)
  {
    v83 = time(0);
    srand(v83 ^ 0xBB40E64E);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  for (j = 0; j != 10; v107[j++] = (((v86 & 0xFFFD ^ 3) * (v86 | 2)) >> 8) ^ (v85 >> 7))
  {
    v85 = rand();
    v86 = *(a1 + 16680);
    v87 = crc_table[(*(a1 + 16664) ^ (v85 >> 7))] ^ (*(a1 + 16664) >> 8);
    *(a1 + 16664) = v87;
    v88 = 134775813 * (*(a1 + 16672) + v87) + 1;
    *(a1 + 16672) = v88;
    *(a1 + 16680) = crc_table[(v86 ^ BYTE3(v88))] ^ (v86 >> 8);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  v89 = 0;
  v90 = *(a1 + 16680);
  v91 = *(a1 + 16664);
  v92 = *(a1 + 16672);
  do
  {
    v93 = (v90 & 0xFFFD ^ 3) * (v90 | 2);
    v94 = v107[v89];
    v91 = crc_table[(v94 ^ v91)] ^ (v91 >> 8);
    *(a1 + 16664) = v91;
    v92 = 134775813 * (v92 + v91) + 1;
    *(a1 + 16672) = v92;
    v90 = crc_table[(v90 ^ BYTE3(v92))] ^ (v90 >> 8);
    *(a1 + 16680) = v90;
    *(v104 + v89++) = v94 ^ HIBYTE(v93);
  }

  while (v89 != 10);
  v95 = ((v90 & 0xFFFFFFFD ^ 3) * (v90 | 2)) >> 8;
  v96 = crc_table[(v91 ^ BYTE2(a16))] ^ (v91 >> 8);
  *(a1 + 16664) = v96;
  v97 = 134775813 * (v92 + v96) + 1;
  *(a1 + 16672) = v97;
  v98 = crc_table[(v90 ^ BYTE3(v97))] ^ (v90 >> 8);
  *(a1 + 16680) = v98;
  v105 = v95 ^ BYTE2(a16);
  v99 = crc_table[v96 ^ BYTE3(a16)] ^ (v96 >> 8);
  *(a1 + 16664) = v99;
  v100 = 134775813 * (v97 + v99) + 1;
  *(a1 + 16672) = v100;
  *(a1 + 16680) = crc_table[(v98 ^ BYTE3(v100))] ^ (v98 >> 8);
  v106 = (((v98 & 0xFFFD ^ 3) * (v98 | 2)) >> 8) ^ BYTE3(a16);
  *(a1 + 16696) = 12;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v104, 12) != 12)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_112:
  result = 0;
  *(a1 + 88) = 1;
  return result;
}

uint64_t zipWriteInFileInZip(uint64_t a1, const Bytef *a2, uInt a3)
{
  if (!a1)
  {
    return 4294967194;
  }

  if (!*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 96) = a2;
  *(a1 + 104) = a3;
  *(a1 + 16648) = crc32(*(a1 + 16648), a2, a3);
  while (*(a1 + 104))
  {
    v4 = *(a1 + 128);
    if (v4 || (result = zipFlushWriteBuffer(a1), v4 = 0x4000, *(a1 + 128) = 0x4000, *(a1 + 120) = a1 + 256, result != -1))
    {
      if (*(a1 + 248) == 8 && !*(a1 + 252))
      {
        v10 = *(a1 + 136);
        result = deflate((a1 + 96), 0);
        LODWORD(v7) = *(a1 + 136) - v10;
      }

      else
      {
        v6 = *(a1 + 104);
        v7 = v6 >= v4 ? v4 : v6;
        if (v6)
        {
          v8 = 0;
          do
          {
            *(*(a1 + 120) + v8) = *(*(a1 + 96) + v8);
            ++v8;
          }

          while (v7 != v8);
          v6 = *(a1 + 104);
          v4 = *(a1 + 128);
        }

        result = 0;
        *(a1 + 104) = v6 - v7;
        *(a1 + 128) = v4 - v7;
        *(a1 + 96) += v7;
        v9 = *(a1 + 120) + v7;
        *(a1 + 112) += v7;
        *(a1 + 120) = v9;
        *(a1 + 136) += v7;
      }

      *(a1 + 212) += v7;
      if (!result)
      {
        continue;
      }
    }

    return result;
  }

  return 0;
}

uint64_t zipFlushWriteBuffer(uint64_t a1)
{
  v2 = *(a1 + 212);
  if (*(a1 + 16656) && v2)
  {
    v3 = (a1 + 256);
    v4 = *(a1 + 212);
    do
    {
      v5 = *(a1 + 16680);
      v6 = *(a1 + 16688);
      v7 = *(v6 + 8 * (*v3 ^ *(a1 + 16664))) ^ (*(a1 + 16664) >> 8);
      *(a1 + 16664) = v7;
      v8 = 134775813 * (*(a1 + 16672) + v7) + 1;
      *(a1 + 16672) = v8;
      *(a1 + 16680) = *(v6 + 8 * (v5 ^ BYTE3(v8))) ^ (v5 >> 8);
      *v3++ ^= ((v5 & 0xFFFD ^ 3) * (v5 | 2)) >> 8;
      --v4;
    }

    while (v4);
  }

  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), a1 + 256, v2) == *(a1 + 212))
  {
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  *(a1 + 212) = 0;
  return result;
}

uint64_t zipCloseFileInZipRaw(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !*(a1 + 88))
  {
    return 4294967194;
  }

  *(a1 + 104) = 0;
  if (*(a1 + 248) != 8 || *(a1 + 252))
  {
    goto LABEL_66;
  }

  do
  {
    if (!*(a1 + 128))
    {
      zipFlushWriteBuffer(a1);
      *(a1 + 128) = 0x4000;
      *(a1 + 120) = a1 + 256;
    }

    v6 = *(a1 + 136);
    v7 = deflate((a1 + 96), 4);
    *(a1 + 212) += *(a1 + 136) - v6;
  }

  while (!v7);
  v8 = v7;
  if (v7 == 1)
  {
LABEL_66:
    if (*(a1 + 212))
    {
      if (zipFlushWriteBuffer(a1) == -1)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  if (*(a1 + 248) == 8 && !*(a1 + 252))
  {
    v9 = deflateEnd((a1 + 96));
    if (v8)
    {
      v8 = v8;
    }

    else
    {
      v8 = v9;
    }

    *(a1 + 208) = 0;
  }

  if (!*(a1 + 252))
  {
    a3 = *(a1 + 16648);
    a2 = *(a1 + 112);
  }

  v10 = 0;
  v11 = *(a1 + 136);
  v12 = *(a1 + 16696);
  v13 = (*(a1 + 224) + 16);
  v14 = a3;
  do
  {
    v15 = v14;
    *(v13 + v10) = v14;
    v14 >>= 8;
    ++v10;
  }

  while (v10 != 4);
  v16 = v11 + v12;
  if (v15 >= 0x100)
  {
    *v13 = -1;
  }

  v17 = 0;
  v18 = (*(a1 + 224) + 20);
  v19 = v11 + v12;
  do
  {
    v20 = v19;
    *(v18 + v17) = v19;
    v19 >>= 8;
    ++v17;
  }

  while (v17 != 4);
  if (v20 >= 0x100)
  {
    *v18 = -1;
  }

  if (*(a1 + 184) == 1)
  {
    *(*(a1 + 224) + 36) = 1;
  }

  v21 = 0;
  v22 = (*(a1 + 224) + 24);
  v23 = a2;
  do
  {
    v24 = v23;
    *(v22 + v21) = v23;
    v23 >>= 8;
    ++v21;
  }

  while (v21 != 4);
  if (v24 >= 0x100)
  {
    *v22 = -1;
  }

  if (v8)
  {
    free(*(a1 + 224));
  }

  else
  {
    v8 = add_data_in_datablock((a1 + 72), *(a1 + 224), *(a1 + 232));
    free(*(a1 + 224));
    if (!v8)
    {
      v25 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), *(a1 + 216) + 14, 0))
      {
        goto LABEL_58;
      }

      v26 = 0;
      v27 = *(a1 + 64);
      do
      {
        v28 = a3;
        *(&v37 + v26) = a3;
        a3 >>= 8;
        ++v26;
      }

      while (v26 != 4);
      if (v28 >= 0x100)
      {
        v37 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v27, &v37, 4) != 4)
      {
        goto LABEL_58;
      }

      v29 = 0;
      v30 = *(a1 + 64);
      do
      {
        v31 = v16;
        *(&v38 + v29) = v16;
        v16 >>= 8;
        ++v29;
      }

      while (v29 != 4);
      if (v31 >= 0x100)
      {
        v38 = -1;
      }

      if ((*(a1 + 16))(*(a1 + 56), v30, &v38, 4) == 4)
      {
        v32 = 0;
        v33 = *(a1 + 64);
        do
        {
          v34 = a2;
          *(&v39 + v32) = a2;
          a2 >>= 8;
          ++v32;
        }

        while (v32 != 4);
        if (v34 >= 0x100)
        {
          v39 = -1;
        }

        if ((*(a1 + 16))(*(a1 + 56), v33, &v39, 4) == 4)
        {
          v35 = 0;
        }

        else
        {
          v35 = -1;
        }
      }

      else
      {
LABEL_58:
        v35 = -1;
      }

      if ((*(a1 + 32))(*(a1 + 56), *(a1 + 64), v25, 0))
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = v35;
      }
    }
  }

  ++*(a1 + 16720);
  *(a1 + 88) = 0;
  return v8;
}

uint64_t zipClose(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 4294967194;
  }

  v2 = a2;
  if (*(a1 + 88) != 1)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v6 = strlen(v2);
    goto LABEL_9;
  }

  v4 = zipCloseFileInZipRaw(a1, 0, 0);
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_7:
  v2 = *(a1 + 16728);
  if (v2)
  {
    goto LABEL_8;
  }

  v6 = 0;
LABEL_9:
  v7 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  if (!v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {
      v8 = 0;
      v4 = 0;
      do
      {
        v10 = v9[2];
        if (v4)
        {
          v4 = -1;
        }

        else if (v10)
        {
          v11 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v9 + 4);
          v10 = v9[2];
          if (v11 == v10)
          {
            v4 = 0;
          }

          else
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = 0;
        }

        v8 += v10;
        v9 = *v9;
      }

      while (v9);
      goto LABEL_21;
    }

    v4 = 0;
  }

  v8 = 0;
LABEL_21:
  v12 = *(a1 + 72);
  if (v12)
  {
    do
    {
      v13 = *v12;
      free(v12);
      v12 = v13;
    }

    while (v13);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (!v4)
  {
    v31 = 101010256;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    LOWORD(v31) = 0;
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v14 = *(a1 + 64);
    v15 = *(a1 + 16720);
    LOWORD(v31) = v15;
    if (v15 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v14, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 16720);
    LOWORD(v31) = v17;
    if (v17 >= 0x10000)
    {
      LOWORD(v31) = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v16, &v31, 2) != 2)
    {
      goto LABEL_53;
    }

    v18 = 0;
    v19 = *(a1 + 64);
    do
    {
      v20 = v8;
      *(&v31 + v18) = v8;
      v8 >>= 8;
      ++v18;
    }

    while (v18 != 4);
    if (v20 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v19, &v31, 4) != 4)
    {
      goto LABEL_53;
    }

    v21 = 0;
    v22 = *(a1 + 64);
    v23 = v7 - *(a1 + 16712);
    do
    {
      v24 = v23;
      *(&v31 + v21) = v23;
      v23 >>= 8;
      ++v21;
    }

    while (v21 != 4);
    if (v24 >= 0x100)
    {
      v31 = -1;
    }

    if ((*(a1 + 16))(*(a1 + 56), v22, &v31, 4) == 4)
    {
      v25 = *(a1 + 64);
      LOWORD(v31) = v6;
      if (v6 >= 0x10000)
      {
        LOWORD(v31) = -1;
      }

      v26 = (*(a1 + 16))(*(a1 + 56), v25, &v31, 2);
      if (v26 == 2)
      {
        v4 = 0;
      }

      else
      {
        v4 = -1;
      }

      if (v26 == 2 && v6)
      {
        if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v2, v6) == v6)
        {
          v4 = 0;
        }

        else
        {
          v4 = -1;
        }
      }
    }

    else
    {
LABEL_53:
      v4 = -1;
    }
  }

  v27 = (*(a1 + 40))(*(a1 + 56), *(a1 + 64));
  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = -1;
  }

  if (v27)
  {
    v5 = v28;
  }

  else
  {
    v5 = v4;
  }

  v29 = *(a1 + 16728);
  if (v29)
  {
    free(v29);
  }

  free(a1);
  return v5;
}

_BYTE *init_keys(_BYTE *result, void *a2, uint64_t a3)
{
  *a2 = xmmword_A870;
  a2[2] = 878082192;
  v3 = *result;
  if (*result)
  {
    v6 = result + 1;
    do
    {
      result = update_keys(a2, a3, v3);
      v7 = *v6++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

uint64_t update_keys(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8 * (*a1 ^ a3)) ^ (*a1 >> 8);
  v4 = 134775813 * (a1[1] + v3) + 1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *(a2 + 8 * (a1[2] ^ BYTE3(v4))) ^ (a1[2] >> 8);
  return a3;
}

void sub_7DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 200));
  objc_destroyWeak((v1 - 192));
  _Unwind_Resume(a1);
}

void sub_7FF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}