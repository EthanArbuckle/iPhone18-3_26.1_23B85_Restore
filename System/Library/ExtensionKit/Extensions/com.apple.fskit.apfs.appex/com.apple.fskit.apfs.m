void printv(uint64_t a1, const char *a2, va_list a3)
{
  if (!a1)
  {
    return;
  }

  bzero(__str, 0x401uLL);
  v5 = vsnprintf(__str, 0x400uLL, a2, a3);
  if (v5 < 0x401)
  {
LABEL_10:
    if (*(a1 + 56) == 1)
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        return;
      }
    }

    v11(a1, __str);
    return;
  }

  v6 = v5;
  v7 = v5 + 1;
  v8 = malloc_type_malloc(v7, 0x6FBDF0F3uLL);
  if (!v8)
  {
    strcpy(__str, "* * * cannot allocate memory * * *\n");
    goto LABEL_10;
  }

  v9 = v8;
  if (v7 <= vsnprintf(v8, v6, a2, a3))
  {
    strcpy(__str, " * * * cannot allocate memory * * *\n");
    free(v9);
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(a1, v9);
  }

  free(v9);
}

uint64_t outputString(FILE **a1, char *a2)
{
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = __stdoutp;
  }

  fputs(a2, v2);

  return fflush(v2);
}

const char *typestring(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1000E48A0[a1 - 1];
  }
}

_BYTE *convertfmt(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 1;
  do
  {
    a1 = strchr(a1 + 1, 37);
    v2 += 5;
  }

  while (a1);
  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, v3 + v2, 0xFC76B622uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E17D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

FILE **fsckCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040D577FD4FuLL);
  v1 = v0;
  if (v0)
  {
    if (fsckAddMessages(v0, &fsck_messages_common) == -1)
    {
      fsckDestroy(v1);
      return 0;
    }

    else
    {
      v1[5] = outputString;
    }
  }

  return v1;
}

uint64_t fsckAddMessages(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (!*(a2 + 8))
      {
        return 0;
      }

      v5 = 0;
      v6 = (a2 + 48);
      do
      {
        v7 = *v6;
        v6 += 5;
        ++v5;
      }

      while (v7);
      v8 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 24) + v5), 0x2004093837F09uLL);
      if (v8)
      {
        *(a1 + 32) = v8;
        v9 = *(a1 + 24);
        v10 = 8 * v9;
        v11 = v5;
        do
        {
          *(*(a1 + 32) + v10) = v4;
          v10 += 8;
          v4 += 40;
          --v11;
        }

        while (v11);
        v12 = *(a1 + 32);
        v13 = v9 + v5;
        *(a1 + 24) = v13;
        qsort(v12, v13, 8uLL, msgCompar);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void fsckDestroy(FILE **a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    if (a1[1])
    {
      fclose(*a1);
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t fsckSetWriter(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t fsckSetLogger(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t fsckSetOutputStyle(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t fsckSetDefaultResponse(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = a2;
  return result;
}

uint64_t fsckAskPrompt(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) != 1)
  {
    v29 = *(a1 + 20);
    if (v29 == 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v29 == 1)
    {
      return 0;
    }

    else
    {
      return v30;
    }
  }

  v11 = 0;
  v34 = 0;
  while (1)
  {
    v34 = &a9;
    printv(a1, a2, &a9);
    v18 = *(a1 + 20);
    if (v18 == 1)
    {
      v28 = 0;
      v31 = "NO\n";
      goto LABEL_30;
    }

    if (v18 == 2)
    {
      v28 = 1;
      v31 = "YES\n";
LABEL_30:
      printargs(a1, v31, v12, v13, v14, v15, v16, v17, v33);
      return v28;
    }

    v33 = 0;
    v19 = fgetln(__stdinp, &v33);
    if (v19)
    {
      v26 = v33 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_12;
    }

    v27 = *v19;
    if (v27 <= 0x4D)
    {
      break;
    }

    if (*v19 > 0x6Du)
    {
      if (v27 == 110)
      {
        return 0;
      }

      if (v27 == 121)
      {
        return 1;
      }
    }

    else
    {
      if (v27 == 78)
      {
        return 0;
      }

      if (v27 == 89)
      {
        return 1;
      }
    }

LABEL_13:
    ++v11;
  }

  if (v27 != 10)
  {
    goto LABEL_13;
  }

LABEL_12:
  if (v11 < 0xA)
  {
    goto LABEL_13;
  }

  printargs(a1, "\n", v20, v21, v22, v23, v24, v25, v33);
  return 0;
}

const void **findmessage(const void **result, int a2)
{
  __key = a2;
  if (result)
  {
    result = bsearch(&__key, result[4], *(result + 6), 8uLL, bCompar);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

char *fsckPrintToString(int a1, const char *a2, va_list a3)
{
  v8 = 0;
  v7 = 0;
  v3 = a1 - 1;
  if ((a1 - 1) > 8)
  {
    v4 = &byte_1000B36A6;
    v5 = &byte_1000B36A6;
  }

  else
  {
    v4 = off_1000E48E8[v3];
    v5 = *(&off_1000E4930 + v3);
  }

  vasprintf(&v7, a2, a3);
  if (!v7)
  {
    return 0;
  }

  asprintf(&v8, "%s%s%s\n", v4, v7, v5);
  free(v7);
  return v8;
}

uint64_t fsckPrintString(uint64_t a1, uint64_t a2, const char *a3, va_list a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_1000A3B6C();
  }

  v5 = *(a2 + 16);
  if (v5 == 8)
  {
    return 0;
  }

  v6 = fsckPrintToString(v5, a3, a4);
  if (v6)
  {
    v13 = v6;
    printargs(a1, "%s", v7, v8, v9, v10, v11, v12, v6);
    free(v13);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fsckPrintXML(uint64_t a1, unsigned int *a2, char *a3, uint64_t *a4)
{
  v5 = *(a2 + 1);
  if (v5 != a3)
  {
    sub_1000A3B98();
  }

  v7 = convertfmt(v5);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v7;
  printargs(a1, "<plist version=1.0>\n", v8, v9, v10, v11, v12, v13, v96);
  printargs(a1, "\t<dict>\n", v15, v16, v17, v18, v19, v20, v97);
  typestring(a2[4]);
  printargs(a1, "\t\t<key>%s</key> <string>%s</string>\n", v21, v22, v23, v24, v25, v26, "fsck_msg_type");
  if (*a2 != 119)
  {
    a2[5];
    printargs(a1, "\t\t<key>%s</key> <integer>%s</integer>\n", v27, v28, v29, v30, v31, v32, "fsck_verbosity");
    v102 = *a2;
    printargs(a1, "\t\t<key>%s</key> <integer>%u</integer>\n", v33, v34, v35, v36, v37, v38, "fsck_msg_number");
    printargs(a1, "\t\t<key>%s</key> <string>%s</string>\n", v39, v40, v41, v42, v43, v44, "fsck_msg_string");
  }

  if (a2[6] >= 1)
  {
    printargs(a1, "\t\t<key>%s</key>\n", v27, v28, v29, v30, v31, v32, "parameters");
    printargs(a1, "\t\t<array>\n", v45, v46, v47, v48, v49, v50, v99);
    if (a2[6] >= 1)
    {
      for (i = 0; i < a2[6]; ++i)
      {
        v58 = *(*(a2 + 4) + 4 * i);
        if (v58 > 5)
        {
          if (v58 <= 7)
          {
            if (v58 == 6)
            {
              v72 = a4++;
              v66 = sub_100001A30(*v72);
              v67 = "directory";
            }

            else
            {
              v70 = a4++;
              v66 = sub_100001A30(*v70);
              v67 = "volumename";
            }

LABEL_27:
            printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v60, v61, v62, v63, v64, v65, v67);
            goto LABEL_28;
          }

          if (v58 == 8)
          {
LABEL_23:
            v71 = a4++;
            printargs(a1, "\t\t\t<integer>%d</integer>\n", v51, v52, v53, v54, v55, v56, *v71);
            continue;
          }

          if (v58 == 9)
          {
            v81 = a4++;
            v66 = sub_100001A30(*v81);
            printargs(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v82, v83, v84, v85, v86, v87, "fstype");
            goto LABEL_28;
          }

          if (v58 != 10)
          {
            goto LABEL_30;
          }

          v68 = a4++;
          printargs(a1, "\t\t\t<integer>%llu</integer>\n", v51, v52, v53, v54, v55, v56, *v68);
        }

        else
        {
          if (v58 > 2)
          {
            if (v58 != 3)
            {
              if (v58 == 4)
              {
                v80 = a4++;
                v66 = sub_100001A30(*v80);
                v67 = "path";
              }

              else
              {
                v59 = a4++;
                v66 = sub_100001A30(*v59);
                v67 = "file";
              }

              goto LABEL_27;
            }

            v73 = a4++;
            v66 = sub_100001A30(*v73);
            printargs(a1, "\t\t\t<string>%s</string>\n", v74, v75, v76, v77, v78, v79, v66);
LABEL_28:
            free(v66);
            continue;
          }

          if (v58 == 1)
          {
            goto LABEL_23;
          }

          if (v58 != 2)
          {
LABEL_30:
            v88 = a4++;
            printargs(a1, "\t\t\t<integer>%p</integer>\n", v51, v52, v53, v54, v55, v56, *v88);
            continue;
          }

          v69 = a4++;
          printargs(a1, "\t\t\t<integer>%ld</integer>\n", v51, v52, v53, v54, v55, v56, *v69);
        }
      }
    }

    printargs(a1, "\t\t</array>\n", v51, v52, v53, v54, v55, v56, v100);
  }

  printargs(a1, "\t</dict>\n", v27, v28, v29, v30, v31, v32, v98);
  printargs(a1, "</plist>\n", v89, v90, v91, v92, v93, v94, v101);
  free(v14);
  return 0;
}

char *sub_100001A30(uint64_t a1)
{
  result = __chkstk_darwin(a1);
  if (result)
  {
    v2 = result;
    v3 = __s1;
    bzero(__s1, 0x1801uLL);
    while (1)
    {
      v4 = *v2;
      if (v4 <= 0x26)
      {
        if (v4 == 34)
        {
          *v3 = 1869967654;
          *(v3 + 2) = 15220;
          goto LABEL_15;
        }

        if (v4 == 38)
        {
          *v3 = 1886216486;
          v3[4] = 59;
          v5 = 5;
          goto LABEL_18;
        }

        if (!*v2)
        {
          return strdup(__s1);
        }
      }

      else
      {
        switch(v4)
        {
          case '\'':
            *v3 = 1869635878;
            *(v3 + 2) = 15219;
LABEL_15:
            v5 = 6;
            goto LABEL_18;
          case '<':
            *v3 = 997485606;
            goto LABEL_13;
          case '>':
            *v3 = 997484326;
LABEL_13:
            v5 = 4;
            goto LABEL_18;
        }
      }

      *v3 = v4;
      v5 = 1;
LABEL_18:
      v3 += v5;
      ++v2;
    }
  }

  return result;
}

uint64_t fsckPrintGUI(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_1000A3BC4();
  }

  v6 = convertfmt(a3);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  v14 = *(a2 + 16) - 1;
  if (v14 > 8)
  {
    LOBYTE(v15) = 63;
  }

  else
  {
    v15 = dword_1000AAD38[v14];
  }

  if (*a2 != 119)
  {
    v25 = *(a2 + 24);
    printargs(a1, "(%c,%s,%d)\n", v7, v8, v9, v10, v11, v12, v15);
  }

  if (*(a2 + 24) >= 1)
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      v18 = *(*(a2 + 32) + 4 * i);
      if (v18 > 7)
      {
        if (v18 == 8)
        {
          v22 = a4;
          a4 += 2;
          printargs(a1, "(%d %%)\n", v7, v8, v9, v10, v11, v12, *v22);
          continue;
        }

        if (v18 == 9)
        {
LABEL_13:
          v19 = a4;
          a4 += 2;
          printargs(a1, "%s\n", v7, v8, v9, v10, v11, v12, *v19);
          continue;
        }

        if (v18 != 10)
        {
          goto LABEL_24;
        }

        v20 = a4;
        a4 += 2;
        printargs(a1, "%llu\n", v7, v8, v9, v10, v11, v12, *v20);
      }

      else
      {
        if ((v18 - 3) < 5)
        {
          goto LABEL_13;
        }

        if (v18 == 1)
        {
          v24 = a4;
          a4 += 2;
          printargs(a1, "%d\n", v7, v8, v9, v10, v11, v12, *v24);
          continue;
        }

        if (v18 != 2)
        {
LABEL_24:
          v23 = a4;
          a4 += 2;
          printargs(a1, "%p\n", v7, v8, v9, v10, v11, v12, *v23);
          continue;
        }

        v21 = a4;
        a4 += 2;
        printargs(a1, "%ld\n", v7, v8, v9, v10, v11, v12, *v21);
      }
    }
  }

  free(v13);
  return 0;
}

uint64_t fsckPrint(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = findmessage(a1, a2);
  if (!v10)
  {
    sub_1000A3BF0();
  }

  v11 = v10;
  v12 = *(a1 + 16) - 1;
  if (v12 > 3)
  {
    v13 = fsckPrintNothing;
  }

  else
  {
    v13 = off_1000E4978[v12];
  }

  *(a1 + 56) = 1;
  fsckPrintString(a1, v10, v10[1], &a9);
  *(a1 + 56) = 0;
  return (v13)(a1, v11, v11[1], &a9);
}

uint64_t fsck_print_cache_stats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  fsck_printf("fsck cache stats:\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  sub_100001EB8(1);
  fsck_printf("\n", v8, v9, v10, v11, v12, v13, v14, vars0a);

  return sub_100001EB8(0);
}

uint64_t sub_100001EB8(int a1)
{
  *v49 = 0u;
  v50 = 0u;
  if (a1)
  {
    v1 = &unk_1000EA058;
  }

  else
  {
    v1 = &unk_1000EA088;
  }

  if (a1)
  {
    v2 = "hit";
  }

  else
  {
    v2 = "miss";
  }

  if (a1)
  {
    v3 = &unk_1000EA064;
  }

  else
  {
    v3 = &unk_1000EA094;
  }

  __sprintf_chk(v49, 0, 0x20uLL, "Cache %s count:", v2);
  v45 = *(v1 + 2);
  fsck_printf("\t%-32s %u\n", v4, v5, v6, v7, v8, v9, v10, v49);
  __sprintf_chk(v49, 0, 0x20uLL, "Cache %s time:", v2);
  v46 = *v1;
  fsck_printf("\t%-32s %.2lf [usec]\n", v11, v12, v13, v14, v15, v16, v17, v49);
  __sprintf_chk(v49, 0, 0x20uLL, "Cache average %s time:", v2);
  LODWORD(v18) = *(v1 + 2);
  v47 = *v1 / v18;
  fsck_printf("\t%-32s %.2lf [usec]\n", v19, v20, v21, v22, v23, v24, v25, v49);
  fsck_printf("\tCache %s histogram:\n", v26, v27, v28, v29, v30, v31, v32, v2);
  v33 = 0;
  v34 = 0;
  do
  {
    v42 = __exp10(v33);
    if (v33 >= 4)
    {
      if (v33 == 7)
      {
        v34 /= 0xF4240uLL;
      }

      else
      {
        v34 /= 0x3E8uLL;
      }

LABEL_17:
      v43 = off_1000E4998[(v33 - 1) / 3u];
      goto LABEL_18;
    }

    if (v33)
    {
      goto LABEL_17;
    }

LABEL_18:
    v48 = v3[v33];
    result = fsck_printf("\t\t[%4llu - %4llu) [%4s] = %d\n", v35, v36, v37, v38, v39, v40, v41, v34);
    ++v33;
    v34 = v42;
  }

  while (v33 != 8);
  return result;
}

uint64_t fsck_dev_init_with_dev_handle_ext(uint64_t *a1, __int128 *a2, uint64_t a3, unsigned int a4)
{
  v37 = 0;
  v7 = *(*a1 + 72);
  if (v7 && *(v7 + 128) == sub_1000023A8)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0xB0uLL, 0x80040F50BA72EuLL);
  if (!v8)
  {
    return 12;
  }

  v16 = v8;
  v17 = a4;
  if (!a4)
  {
    v17 = *(*a1 + 84);
  }

  if (v17 > 0x100000 || (v18 = v17, v17 % *(*a1 + 84)) || vm_page_size < v17 && v17 % vm_page_size || vm_page_size > v17 && vm_page_size % v17)
  {
    v19 = 34;
  }

  else
  {
    v21 = a4 != 0;
    v22 = *(*a1 + 72);
    v24 = v22[9];
    v23 = v22[10];
    v25 = v22[7];
    v8[8] = v22[8];
    v26 = v22[2];
    v27 = *v22;
    v8[1] = v22[1];
    v8[2] = v26;
    v29 = v22[5];
    v28 = v22[6];
    v30 = v22[4];
    v8[3] = v22[3];
    v8[4] = v30;
    *v8 = v27;
    v8[5] = v29;
    v8[6] = v28;
    v8[9] = v24;
    v8[10] = v23;
    v8[7] = v25;
    *(v8 + 16) = sub_1000023A8;
    *(v8 + 3) = sub_100002404;
    *(v8 + 5) = sub_100002434;
    *(v8 + 4) = sub_100002664;
    *(v8 + 6) = sub_10000266C;
    *(v8 + 8) = sub_1000027B0;
    *(v8 + 9) = sub_10000282C;
    *(v8 + 11) = sub_1000028B4;
    *(v8 + 18) = sub_100002934;
    v31 = *(*a1 + 84);
    v32 = 0x800000 / v31;
    v33 = *(*a1 + 112);
    v34 = v33 * v31;
    if (v33 >= v32)
    {
      v35 = 0x800000;
    }

    else
    {
      v35 = v34;
    }

    v36 = v35 / v18;
    fsck_printf_debug("Requested cache size: %lluMB (%uk blocks * %ukB)\n", v9, v10, v11, v12, v13, v14, v15, v35 >> 20);
    v19 = CacheInit(&v37, *a1, a2, *(*a1 + 72), v18, v36, 0x101u, 0, v21);
    if (!v19)
    {
      *(*a1 + 16) = v37;
      *(*a1 + 72) = v16;
      return v19;
    }
  }

  free(v16);
  dev_close(*a1);
  *a1 = 0;
  return v19;
}

uint64_t sub_1000023A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    free(*(a1 + 72));
    *(a1 + 72) = CacheDevFuncs(*(a1 + 16));
    CacheDestroy(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  return dev_close(a1);
}

double sub_100002434(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {

    sub_100002ACC(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {
    v16 = dev_block_size(a1);
    v24 = 1;
    v23 = 0;
    if ((a9 & 0x10000) != 0)
    {
      v21 = *(CacheDevFuncs(*(a1 + 16)) + 40);

      LODWORD(a9) = a9 & 0xFFFEFFFF;
      v21(a1, a2, a3, a4, a5, 0, 0, a8, a9, 0);
    }

    else
    {
      v17 = v16 * a2;
      v18 = v16 * a3;
      if (cache_stats_enabled == 1)
      {
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        tv_sec = __tp.tv_sec;
        v20 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        tv_sec = 0;
        v20 = 0;
      }

      if (!CacheRead(*(a1 + 16), v17, v18, &v23, a5, a9, &v24, 0, a8))
      {
        if (cache_stats_enabled == 1)
        {
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          sub_100002CCC(v24, tv_sec, v20, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, 0);
        }

        v22 = v23;
        memcpy(a4, *(v23 + 40), v18);
        return CacheRelease(*(a1 + 16), v22, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10000266C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 112))
  {
    return 0;
  }

  v4 = dev_block_size(a1);
  tv_sec = 0;
  v6 = 0;
  v7 = *(a2 + 120);
  v8 = *(a2 + 128);
  v9 = *(a2 + 112);
  v11 = 0;
  if (cache_stats_enabled == 1)
  {
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v6 = SLODWORD(__tp.tv_nsec) / 1000;
  }

  result = CacheReadFinish(*(a1 + 16), v7, &v11);
  if (!result)
  {
    if (cache_stats_enabled == 1)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      sub_100002CCC(0, tv_sec, v6, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, *(a2 + 136));
    }

    memcpy(*(a2 + 104), (v9 + v8), v4);
    return CacheReadRelease(*(a1 + 16), v11);
  }

  return result;
}

uint64_t sub_1000028B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dev_block_size(a1);
  v7 = CacheDevFuncs(*(a1 + 16));
  v8 = (*(v7 + 88))(a1, a2, a3);
  if (!v8)
  {
    CacheEvict(*(a1 + 16), 0, v6 * a2, v6 * a3);
  }

  return v8;
}

uint64_t sub_100002934(uint64_t a1, uint64_t a2)
{
  result = CacheUpdateDevBlockSize(*(a1 + 16), a2);
  if (!result)
  {
    v5 = *(CacheDevFuncs(*(a1 + 16)) + 144);

    return v5(a1, a2);
  }

  return result;
}

uint64_t fsck_dev_init_with_fd(int a1, unsigned int **a2)
{
  result = dev_init_with_fd(a1, a2);
  if (!result)
  {

    return fsck_dev_init_with_dev_handle_ext(a2, 0, v4, 0);
  }

  return result;
}

uint64_t fsck_dev_init_with_fd_ext(int a1, uint64_t a2, unsigned int **a3, __int128 *a4, uint64_t a5, unsigned int a6)
{
  result = dev_init_with_fd(a1, a3);
  if (!result)
  {

    return fsck_dev_init_with_dev_handle_ext(a3, a4, v10, a6);
  }

  return result;
}

uint64_t fsck_dev_init_ext(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t a5, unsigned int a6)
{
  result = fskit_dev_init(*(state + 80), a2, a3);
  if (!result)
  {

    return fsck_dev_init_with_dev_handle_ext(a3, a4, v10, a6);
  }

  return result;
}

void sub_100002ACC(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a3 <= 1 && (a6 & 0x10000) == 0)
  {
    v15 = *(a1 + 16);
    v16 = dev_block_size(a1);
    v24 = CacheBlockSize(v15);
    tv_sec = 0;
    v18 = 0;
    v19 = v16;
    v20 = v16 * a2;
    v27 = 0;
    v26 = 1;
    if (cache_stats_enabled == 1)
    {
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      tv_sec = __tp.tv_sec;
      v18 = SLODWORD(__tp.tv_nsec) / 1000;
    }

    v25 = tv_sec;
    if (!CacheRead(*(a1 + 16), v20, v16, &v27, a5, a6, &v26, a7, a8))
    {
      if (cache_stats_enabled == 1)
      {
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v21 = __tp.tv_sec;
        v22 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (v26 == 1)
      {
        if (cache_stats_enabled)
        {
          sub_100002CCC(1, v25, v18, v21, v22, 0);
        }

        v23 = v27;
        memcpy(a4, *(v27 + 40), v19);
        CacheRelease(*(a1 + 16), v23, 0);
        *(a7 + 112) = 0;
      }

      else
      {
        if (cache_stats_enabled)
        {
          *(a7 + 136) = 1000000 * (v21 - v25) - v18 + v22;
        }

        *(a7 + 104) = a4;
        *(a7 + 120) = v20 / v24 * v24;
        *(a7 + 128) = v20 % v24;
      }
    }
  }
}

uint64_t sub_100002CCC(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = result;
  v7 = a6 - a3 + a5 + 1000000 * (a4 - a2);
  if (v7)
  {
    result = ilog10(a6 - a3 + a5 + 1000000 * (a4 - a2));
    v8 = result + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    v8 = 7;
  }

  if (v6)
  {
    v9 = &unk_1000EA058;
  }

  else
  {
    v9 = &unk_1000EA088;
  }

  ++*(v9 + 2);
  *v9 = *v9 + v7;
  v10 = &unk_1000EA094;
  if (v6)
  {
    v10 = &unk_1000EA064;
  }

  ++v10[v8];
  return result;
}

char *fsck_global_volume_get_by_index(uint64_t a1, unsigned int a2)
{
  if (a1 && (v2 = *(a1 + 8)) != 0)
  {
    v3 = *(v2 + 180);
  }

  else
  {
    v3 = 100;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    return &unk_1000EA280 + 1024 * a2;
  }
}

char *fsck_global_volume_get_by_fs_oid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 180);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 184);
  for (result = &unk_1000EA280; ; result += 1024)
  {
    v6 = *v4++;
    if (v6 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void *fsck_global_volume_get_by_uuid(uint64_t a1, unsigned __int8 *uu1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 180))
  {
    v5 = 0;
    v6 = &unk_1000EA280;
    do
    {
      v7 = v6[5];
      if (v7)
      {
        if (!uuid_compare(uu1, (v7 + 240)))
        {
          return v6;
        }

        v2 = *(a1 + 8);
      }

      ++v5;
      v6 += 128;
    }

    while (v5 < *(v2 + 180));
  }

  return 0;
}

uint64_t fsck_global_volume_get_range(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = state;
  v4 = *(state + 24);
  if (v4 == -1)
  {
    *a2 = 0;
    if (result && (v6 = *(result + 8)) != 0)
    {
      v5 = *(v6 + 180);
    }

    else
    {
      v5 = 100;
    }
  }

  else
  {
    *a2 = v4;
    v5 = *(v3 + 24) + 1;
  }

  *a3 = v5;
  return result;
}

void fsck_global_volume_cleanup_all()
{
  v0 = &unk_1000EA280;
  v1 = 100;
  do
  {
    volume_cleanup(v0);
    v0 += 128;
    --v1;
  }

  while (v1);
}

uint64_t fsck_apfs_check_fs(uint64_t a1)
{
  v474 = 0;
  v2 = fsck_global_container_get();
  *v472 = 0u;
  v473 = 0u;
  *v471 = 0u;
  v470 = 0;
  v469 = 0;
  v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040202D4F4CuLL);
  state = v3;
  if (!v3)
  {
    fsck_printf_err("failed to allocate memory for fsck_state\n", v4, v5, v6, v7, v8, v9, v10, v445);
LABEL_14:
    nx_superblock = 0;
    goto LABEL_15;
  }

  v11 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  *(v3 + 10) = *(a1 + 80);
  v3[3] = v13;
  v3[4] = v14;
  v3[2] = v12;
  v15 = *(state + 24);
  if (v15 == -1 && (*(state + 46) & 1) == 0)
  {
    v16 = *(state + 47) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if ((*(state + 40) & 1) == 0 && *(state + 42) == 1)
  {
    disable_idle_sleep();
  }

  v17 = fsckCreate();
  if (!v17)
  {
    fsck_printf_err("Could not initialize message output\n", v18, v19, v20, v21, v22, v23, v24, v445);
    v33 = 151;
    goto LABEL_13;
  }

  v25 = v17;
  fsckSetDefaultResponse(v17, *(state + 32));
  fsckSetOutputStyle(v25, *(state + 36));
  if (fsckAddMessages(v25, &fsck_messages_apfs))
  {
    fsck_printf_err("Could not initialize APFS-specific messages\n", v26, v27, v28, v29, v30, v31, v32, v445);
    v33 = 152;
LABEL_13:
    fsck_fail_func(v33, 12);
    goto LABEL_14;
  }

  fsckSetWriter(v25, outstring);
  fsckSetLogger(v25, logstring);
  fsck_apfs_ctx = v25;
  if (v15 == -1)
  {
    fsck_progress_init_for_container(0, 0, 0);
  }

  else
  {
    fsck_progress_init_for_volume(0, 0);
  }

  fsck_fail_set_dev_node(*(state + 8));
  fsck_fail_set_phase(2);
  v468 = 0;
  info = container_get_info(v2, v471, &v468);
  if (info)
  {
LABEL_30:
    v35 = info;
    nx_superblock = 0;
    goto LABEL_16;
  }

  while (1)
  {
    if (v468)
    {
      nx_superblock = 0;
      v68 = state;
      if (*(state + 40))
      {
        goto LABEL_77;
      }

      v35 = 0;
      v69 = 0;
      v70 = 106;
      goto LABEL_69;
    }

    info = container_open(v2, v473, v46, v47, v48);
    if (info)
    {
      goto LABEL_30;
    }

    v467 = 0;
    info = container_crypto_prepare(v2, v473, &v467);
    if (info)
    {
      goto LABEL_30;
    }

    if (BYTE8(v473) == 1)
    {
      info = container_freeze(v2, v471, *(state + 49));
      if (info)
      {
        goto LABEL_30;
      }
    }

    fsck_fail_set_phase(3);
    nx_superblock = get_nx_superblock(*v2, &v469);
    if (!nx_superblock)
    {
      goto LABEL_60;
    }

    fsckPrint(v25, 201, v52, v53, v54, v55, v56, v57, v445);
    if ((v469 & 1) == 0)
    {
      if (fsck_nx_superblock(*v2, nx_superblock, 0, v58, v59, v60, v61, v62))
      {
        goto LABEL_60;
      }
    }

    fsck_fail_set_uuid(nx_superblock + 18);
    fsck_fail_set_phase(4);
    if (get_latest_checkpoint(*v2, nx_superblock, v2 + 1, v2 + 5))
    {
      v71 = v25;
      v72 = 304;
      goto LABEL_61;
    }

    fsckPrint(v25, 222, v52, v53, v54, v55, v56, v57, *(*(v2 + 1) + 16));
    fsck_fail_set_phase(5);
    if (v469 == 1)
    {
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix corrupt container superblock? ", v52, v53, v54, v55, v56, v57, v445) != 1)
      {
        goto LABEL_60;
      }

      v63 = *(v2 + 1);
      v64 = v63[9];
      memcpy(nx_superblock, v63, 0x588uLL);
      __str[0].i64[0] = 0;
      __str[0].i32[2] = v64;
      *(&__str[0].i64[1] + 4) = 0;
      __str[1].i32[1] = 0;
      if (write_obj(v2, 0, nx_superblock, __str, v65, v66))
      {
        goto LABEL_60;
      }

      fsck_fail_add_repair();
    }

    if (*(state + 40) == 1)
    {
      if (*(*(v2 + 1) + 1264))
      {
LABEL_60:
        v71 = v25;
        v72 = 301;
LABEL_61:
        fsckPrint(v71, v72, v52, v53, v54, v55, v56, v57, v445);
        v69 = 0;
        v35 = 8;
      }

      else
      {
        v35 = sub_100004A38(v25, v2);
        v69 = 0;
      }

LABEL_62:
      v70 = 106;
LABEL_63:
      v68 = state;
      if (*(state + 40))
      {
        if (v35)
        {
          if (v35 == 8)
          {
            v35 = 3;
          }

          else
          {
            v35 = v35;
          }

          v73 = v25;
          v74 = 126;
          goto LABEL_82;
        }

LABEL_77:
        fsckPrint(v25, 125, v46, v47, v48, v49, v50, v51, v445);
        v35 = 0;
LABEL_83:
        v78 = fsck_fail_num_warnings();
        v79 = fsck_fail_num_failures();
        if (!v35)
        {
          if (*(state + 50) == 1 && v78 | v79)
          {
            if (*(state + 40))
            {
              v35 = 3;
            }

            else
            {
              v35 = 8;
            }

            fsck_printf("%d failures and %d warnings issued; failing execution as requested.\n", v80, v81, v82, v83, v84, v85, v86, v79);
          }

          else
          {
            v35 = 0;
          }
        }

        goto LABEL_16;
      }

LABEL_69:
      if (v15 == -1)
      {
        if (v35)
        {
          v74 = 127;
        }

        else
        {
          v74 = 128;
        }

        v445 = *v68;
        v73 = v25;
LABEL_82:
        fsckPrint(v73, v74, v46, v47, v48, v49, v50, v51, v445);
      }

      else
      {
        if (v69)
        {
          v75 = 105;
        }

        else
        {
          v75 = 104;
        }

        if (v35)
        {
          v76 = v70;
        }

        else
        {
          v76 = v75;
        }

        v77 = fsck_global_volume_get_by_index(v2, *(v68 + 24));
        sub_100005EE4(v25, v76, v77);
      }

      goto LABEL_83;
    }

    if (v469 != 1 || !container_status_is_corrupt(*(state + 8)))
    {
      break;
    }

    v469 = 0;
    dev_reload_validate();
    if (v472[1])
    {
      sub_1000A3C1C();
    }

    if (v471[1])
    {
      sub_1000A3C48();
    }

    if ((verify_overallocation & 1) == 0)
    {
      sub_1000A3C74();
    }

    if (*(state + 16) != -1)
    {
      sub_1000A3CA0();
    }

    fsck_global_volume_cleanup_all();
    free(nx_superblock);
    container_cleanup(v2);
    *v472 = 0u;
    v473 = 0u;
    *v471 = 0u;
    dev_reload(*(state + 8));
    fsck_fail_set_dev_node(*(state + 8));
    fsck_fail_set_phase(2);
    v468 = 0;
    v35 = container_get_info(v2, v471, &v468);
    nx_superblock = 0;
    if (v35)
    {
      goto LABEL_16;
    }
  }

  space_verification_init(v2);
  v67 = *(*(v2 + 1) + 1384);
  if (v67 > 0x959D39220F1C2)
  {
    memset(__str, 0, 25);
    v87 = apfs_parse_version(v67, __str[0].i8, 25);
    LOBYTE(v95) = v87;
    if (!v87)
    {
      v95 = __str;
      snprintf(__str[0].i8, 0x19uLL, "%llu", *(*(v2 + 1) + 1384));
    }

    fsck_printf_warn("container has been mounted by APFS version %s, which is newer than %s\n", v88, v89, v90, v91, v92, v93, v94, v95);
    if (*(state + 45))
    {
      v103 = "enabling overallocation repairs because -o was passed; this may cause data loss\n";
    }

    else
    {
      v103 = "disabling overallocation repairs by default; use -o to override\n";
    }

    fsck_printf_warn(v103, v96, v97, v98, v99, v100, v101, v102, v446);
  }

  else
  {
    *(state + 45) = 1;
  }

  v104 = fsck_repairs_init((v2 + 392), 0);
  if (v104)
  {
LABEL_98:
    v112 = v104;
LABEL_99:
    fsck_printf_err("failed to initialize tree for container repairs\n", v105, v106, v107, v108, v109, v110, v111, v445);
    v113 = 926;
    v114 = v112;
    goto LABEL_100;
  }

  v35 = 0;
  v448 = 0;
  while (1)
  {
    fsck_fail_set_phase(6);
    if (*(nx_superblock + 159))
    {
      if (container_is_internal_embedded(v2))
      {
        fsck_printf_warn("found unexpected EFI jumpstart record\n", v115, v116, v117, v118, v119, v120, v121, v445);
      }

      else
      {
        fsckPrint(v25, 211, v116, v117, v118, v119, v120, v121, v445);
        if (fsck_nx_efi_jumpstart(v2))
        {
          v434 = v25;
          v435 = 312;
          goto LABEL_343;
        }
      }
    }

    fsck_fail_set_phase(7);
    if (*(*(v2 + 1) + 1256))
    {
      v477 = 0u;
      v478 = 0u;
      memset(__str, 0, sizeof(__str));
      fsckPrint(v25, 218, v128, v129, v130, v131, v132, v133, v445);
      tree_init_ext(__str, v2, 0, 0x40000000, 2, 33, 0, *(*(v2 + 1) + 36), 8, 16, 0, *(*(v2 + 1) + 1256), uint64_key_compare);
      if (fsck_tree(__str, 0, evict_mapping_tree_validate_key_val, 0, 0, 1))
      {
        v434 = v25;
        v435 = 319;
        goto LABEL_343;
      }
    }

    fsck_fail_set_phase(8);
    if (get_nx_reaper(v2, 0))
    {
      v70 = 106;
      v35 = 8;
      goto LABEL_346;
    }

    if (fsck_reaper(v2, v134, v46, v47, v48, v49, v50, v51))
    {
      goto LABEL_344;
    }

    fsck_fail_set_phase(9);
    fsckPrint(v25, 203, v135, v136, v137, v138, v139, v140, v445);
    if (get_spaceman(v2, 0))
    {
      goto LABEL_314;
    }

    if (v15 == -1 && (*(state + 54) & 1) == 0)
    {
      sub_100004818(v2);
    }

    if (fsck_spaceman(v2, &v470, v122, v123, v124, v125, v126, v127))
    {
LABEL_314:
      v434 = v25;
      v435 = 303;
      goto LABEL_343;
    }

    v141 = *(v2 + 1);
    if ((*(v141 + 104) & 0x80000000) != 0 || (*(v141 + 108) & 0x80000000) != 0 || (v142 = *(v2 + 3), (*(v142 + 164) & 0x80000000) != 0) || (*(v142 + 152) & 0x8000000000000000) != 0)
    {
      fsck_fail_set_phase(10);
      fsckPrint(v25, 213, v143, v144, v145, v146, v147, v148, v445);
      if (fsck_fragmented_metadata(v2))
      {
        v434 = v25;
        v435 = 315;
        goto LABEL_343;
      }
    }

    fsck_fail_set_phase(11);
    fsckPrint(v25, 217, v149, v150, v151, v152, v153, v154, v445);
    if (fsck_spaceman_free_queue_trees(v2, &v470))
    {
      v434 = v25;
      v435 = 318;
      goto LABEL_343;
    }

    if (v470)
    {
      v156 = *(v2 + 3);
      __str[0] = *(v2 + 88);
      __str[1].i64[0] = *(v2 + 13);
      v157 = write_obj(v2, 0, v156, __str, __str[0], v155);
      if (v157)
      {
        v394 = v157;
        fsckPrint(v25, 303, v158, v159, v160, v161, v162, v163, v445);
        v436 = 782;
LABEL_340:
        fsck_fail_func(v436, v394);
        goto LABEL_344;
      }

      fsck_fail_add_repair();
      v470 = 0;
    }

    mark_reserved_space_as_allocated(v2);
    fsck_fail_set_phase(12);
    fsckPrint(v25, 204, v164, v165, v166, v167, v168, v169, v445);
    if (get_omap(v2, 0, 0))
    {
      goto LABEL_344;
    }

    if (v15 == -1)
    {
      omap_sv_init(0, *(*(v2 + 1) + 88), *(*(v2 + 4) + 88));
      if (fsck_omap(v2, 0, v170, v171, v172, v173, v174, v175))
      {
LABEL_318:
        v434 = v25;
        v435 = 305;
        goto LABEL_343;
      }

      if (*(state + 54) == 1)
      {
        sub_100004818(v2);
      }
    }

    else if (fsck_omap(v2, 0, v46, v47, v48, v49, v50, v51))
    {
      goto LABEL_318;
    }

    v176 = *(v2 + 1);
    if (*(v176 + 1400) || *(v176 + 1304))
    {
      fsck_fail_set_phase(30);
      fsckPrint(v25, 223, v177, v178, v179, v180, v181, v182, v445);
      if (fsck_nx_keybags(v2, v183, v184, v185, v186, v187, v188, v189))
      {
        goto LABEL_316;
      }
    }

    if (v467 == 1)
    {
      v190 = container_crypto_setup(v2, v473);
      if (v190)
      {
        v35 = v190;
        goto LABEL_16;
      }
    }

    v466[0] = 0;
    v466[1] = 0;
    fsck_global_volume_get_range(v2, &v474 + 1, &v474);
    if (HIDWORD(v474) < v474)
    {
      break;
    }

LABEL_277:
    fsck_fail_set_phase(22);
    fsckPrint(v25, 210, v377, v378, v379, v380, v381, v382, v445);
    if ((v16 & 1) == 0)
    {
      goto LABEL_284;
    }

    v394 = fsck_spaceman_with_context(v2, v466, &v470, v383, v384, v385, v386, v387);
    if (!v394 && v470)
    {
      v396 = *(v2 + 3);
      __str[0] = *(v2 + 88);
      __str[1].i64[0] = *(v2 + 13);
      v394 = write_obj(v2, 0, v396, __str, __str[0], v395);
    }

    if (v394)
    {
      fsckPrint(v25, 303, v388, v389, v390, v391, v392, v393, v445);
      v436 = 1098;
      goto LABEL_340;
    }

    if (v470)
    {
      fsck_fail_add_repair();
      v470 = 0;
    }

LABEL_284:
    if (v15 == -1)
    {
      if (omap_sv_finalize(v2, 0, 0))
      {
        goto LABEL_342;
      }

      if (fsck_nx_keybag_orphans(v2, v397, v122, v123, v124, v125, v126, v127))
      {
LABEL_316:
        v434 = v25;
        v435 = 324;
        goto LABEL_343;
      }
    }

    fsck_fail_set_phase(32);
    verify_overallocation &= v16;
    if (fsck_tree_node_repair_finalize(v2))
    {
      v434 = v25;
      v435 = 325;
      goto LABEL_343;
    }

    fsck_fail_set_phase(22);
    if (fsck_verify_space(v2))
    {
      goto LABEL_342;
    }

    fsck_fail_set_phase(23);
    v451 = 0;
    v452 = 0;
    v450 = 0;
    __str[0].i64[0] = 0;
    tree_key_count((v2 + 392), 0, __str);
    v404 = __str[0].i64[0];
    for (i = HIDWORD(v474); i < v474; ++i)
    {
      v406 = fsck_global_volume_get_by_index(v2, i);
      if (*(*(v2 + 1) + 8 * i + 184))
      {
        __str[0].i64[0] = 0;
        tree_key_count((v406 + 768), 0, __str);
        v404 += __str[0].i64[0];
      }
    }

    if (!v404)
    {
      goto LABEL_305;
    }

    fsckPrint(v25, 216, v398, v399, v400, v401, v402, v403, v445);
    v414 = fsck_repairs_perform((v2 + 392), v2, 0, verify_overallocation, 0, &v452, &v451, &v450);
    v415 = HIDWORD(v474);
    v416 = v474;
    while (v415 < v416)
    {
      if (*(*(v2 + 1) + 8 * v415 + 184))
      {
        v417 = fsck_global_volume_get_by_index(v2, v415);
        v418 = fsck_repairs_perform((v417 + 768), v2, v417, verify_overallocation, 0, &v452, &v451, &v450);
        if (!v414)
        {
          v414 = v418;
        }

        v416 = v474;
      }

      ++v415;
    }

    if (v414)
    {
      if (v450)
      {
        v443 = 316;
      }

      else
      {
        v443 = 317;
      }

      fsckPrint(v25, v443, v408, v409, v410, v411, v412, v413, v445);
      v35 = 8;
      v70 = 110;
      goto LABEL_346;
    }

    if ((verify_overallocation & 1) == 0 && v452)
    {
      fsck_printf_err("Unable to perform deferred repairs without full space verification\n", v407, v408, v409, v410, v411, v412, v413, v445);
      if (*(state + 24) != -1)
      {
        fsck_printf_err("Try running fsck against the entire APFS container instead of a volume\n", v444, v46, v47, v48, v49, v50, v51, v445);
      }

LABEL_344:
      v35 = 8;
LABEL_345:
      v70 = 106;
LABEL_346:
      v69 = v448;
      goto LABEL_63;
    }

    if (v451)
    {
      if (!fsck_fail_add_iteration())
      {
        fsck_printf_err("Reached max number of fsck passes during repair\n", v426, v427, v428, v429, v430, v431, v432, v445);
        v35 = 8;
        v69 = 1;
        goto LABEL_62;
      }

      fsck_printf("Restarting after deferred repairs...\n", v426, v427, v428, v429, v430, v431, v432, v445);
      space_verification_cleanup();
      space_verification_init(v2);
      v112 = fsck_repairs_init((v2 + 392), 0);
      v448 = 1;
      if (v112)
      {
        goto LABEL_99;
      }
    }

    else
    {
LABEL_305:
      fsck_fail_set_phase(24);
      if (verify_overallocation != 1 || !has_overlapped_extents())
      {
        goto LABEL_326;
      }

      if (*(state + 44) == 1)
      {
        print_overlapped_extents();
        if (fsckAskPrompt(fsck_apfs_ctx, "Fix overlapped extents? ", v437, v438, v439, v440, v441, v442, v445))
        {
          if (!repair_overlapped_extents(v2))
          {
            *(state + 44) = 0;
LABEL_326:
            fsck_fail_set_phase(25);
            goto LABEL_345;
          }
        }

        else
        {
          fsck_fail_func(0x1CB, 92);
        }

LABEL_342:
        v434 = v25;
        v435 = 311;
LABEL_343:
        fsckPrint(v434, v435, v122, v123, v124, v125, v126, v127, v445);
        goto LABEL_344;
      }

      fsck_printf("Overlap repair pass...\n", v419, v420, v421, v422, v423, v424, v425, v445);
      *(state + 44) = 1;
      v104 = fsck_repairs_init((v2 + 392), 0);
      if (v104)
      {
        goto LABEL_98;
      }
    }
  }

  v191 = HIDWORD(v474) + 23;
  while (2)
  {
    if (!*(*(v2 + 1) + 8 * v191))
    {
      goto LABEL_156;
    }

    v192 = v191 - 23;
    v193 = fsck_global_volume_get_by_index(v2, v191 - 23);
    fsck_fail_set_dev_node(*v193);
    fsck_fail_set_phase(13);
    fsckPrint(v25, 101, v194, v195, v196, v197, v198, v199, *v193);
    fsckPrint(v25, 206, v200, v201, v202, v203, v204, v205, v447);
    v206 = fsck_repairs_init((v193 + 768), v193);
    if (v206)
    {
      v433 = v206;
      fsck_printf_err("failed to initialize tree for volume repairs\n", v207, v208, v209, v210, v211, v212, v213, v445);
      v113 = 705;
      v114 = v433;
      goto LABEL_100;
    }

    v214 = v191;
    v215 = (v193 + 40);
    v216 = *(v2 + 1);
    v449 = v214;
    if (!*(v193 + 5))
    {
      if (!copy_obj(v2, 0, 0, *(v216 + 8 * v214), 0, 0, 13, 0, v193 + 5, (v193 + 80), 0))
      {
        goto LABEL_144;
      }

      goto LABEL_147;
    }

    if (omap_sv_mark(0, *(v216 + 8 * v214), 1))
    {
      fsck_printf_warn("object (oid 0x%llx): Unable to mark the omap entry of the apfs_sb at index (%u) in use for omap space verification\n", v217, v218, v219, v220, v221, v222, v223, *(*(v2 + 1) + 8 * v449));
      fsck_fail_func(0x3DD, -7);
    }

LABEL_144:
    v230 = 0uLL;
    if (v15 != -1)
    {
      v489 = 0uLL;
      v490 = 0uLL;
      v487 = 0uLL;
      v488 = 0uLL;
      v485 = 0uLL;
      v486 = 0uLL;
      v483 = 0uLL;
      v484 = 0uLL;
      v481 = 0uLL;
      v482 = 0uLL;
      v479 = 0uLL;
      v480 = 0uLL;
      v477 = 0uLL;
      v478 = 0uLL;
      memset(__str, 0, sizeof(__str));
      v231 = *v215;
      __strlcpy_chk();
      v491 = __str;
      fsck_progress_init_for_volume(*v215, &v491);
      v230 = 0uLL;
    }

    v465 = 0;
    v463 = v230;
    v464 = v230;
    v460[1] = v230;
    v461 = v230;
    v460[0] = v230;
    v462 = 16;
    LODWORD(v463) = *(*v215 + 960);
    sub_100004BE4(v25);
    if (sub_100004CD4(v2, *v215, v192, &v470))
    {
LABEL_147:
      v232 = v25;
      v233 = 307;
      goto LABEL_148;
    }

    fsck_fail_set_phase(14);
    fsckPrint(v25, 204, v236, v237, v238, v239, v240, v241, v445);
    if (get_omap(v2, v193, 0))
    {
      goto LABEL_149;
    }

    if ((*(state + 46) & 1) == 0)
    {
      omap_sv_init(1, *(*(v2 + 1) + 88), *(*(v193 + 9) + 88));
    }

    if (fsck_omap(v2, v193, v242, v243, v244, v245, v246, v247))
    {
      v232 = v25;
      v233 = 305;
      goto LABEL_148;
    }

    v248 = *(*v215 + 1000);
    if (v248)
    {
      v249 = omap_sv_mark(1, v248, 1);
      if (v249)
      {
        v257 = v249;
        fsck_printf_warn("object (oid 0x%llx): Unable to mark the omap entry of the apfs_snap_meta_ext_oid in use for omap space verification\n", v250, v251, v252, v253, v254, v255, v256, *(*v215 + 1000));
        fsck_fail_func(0x3D5, v257);
      }
    }

    fsck_fail_set_phase(15);
    v258 = *v215;
    if ((*(*v215 + 264) & 1) == 0 || *(v258 + 976))
    {
      if (v193[8] == 1)
      {
        v259 = volume_crypto_open(v193, v2, v473);
        if (v259)
        {
          fsck_fail_func(0x45F, v259);
          v35 = 66;
          goto LABEL_16;
        }

        v258 = *v215;
      }

      if (*(v258 + 976) && fsck_encryption_rolling(v2, v193))
      {
        v232 = v25;
        v233 = 314;
        goto LABEL_148;
      }
    }

    fsck_fail_set_phase(17);
    if (*(*v215 + 152))
    {
      __str[0].i64[0] = 0;
      snapshot_init();
      fsckPrint(v25, 209, v260, v261, v262, v263, v264, v265, v445);
      if (get_snap_meta_tree(v2, v193, __str[0].i64) || fsck_tree(__str[0].i64[0], 0, jobj_validate_repair_key_val, v460, 0, 1) || snapshot_finalize((v193 + 768)))
      {
        v232 = v25;
        v233 = 310;
        goto LABEL_148;
      }
    }

    fsck_fail_set_phase(19);
    v272 = *v215;
    if ((*(*v215 + 264) & 1) != 0 && !*(v272 + 976))
    {
      v193[9] = 1;
      v274 = v193 + 9;
      v275 = *(state + 46);
      LOBYTE(v276) = v275 ^ 1;
    }

    else
    {
      v273 = *(v193 + 3);
      v193[9] = v273 != 0;
      v274 = v193 + 9;
      v275 = *(state + 46);
      LOBYTE(v276) = v275 ^ 1;
      if ((v275 & 1) == 0 && !v273)
      {
        v277 = *(v193 + 6);
        if (!v277)
        {
          v277 = v272;
        }

        v276 = (*(v277 + 56) >> 5) & 1;
      }
    }

    v193[10] = v276;
    v193[11] = v275;
    fsckPrint(v25, 205, v266, v267, v268, v269, v270, v271, v445);
    v457 = 0u;
    v458 = 0u;
    v459 = 0;
    v455 = 0;
    memset(v454, 0, sizeof(v454));
    v456 = 16;
    LODWORD(v457) = *(*(v193 + 5) + 960);
    if (fsck_omap_snap(v2, v193, v454, v278, v279, v280, v281, v282, 0.0, v283))
    {
      goto LABEL_194;
    }

    if ((*(state + 46) & 1) == 0 && v461 != v455)
    {
      fsck_printf_warn("omap has %llu snaphots but snap meta tree has %llu\n", v284, v224, v225, v226, v227, v228, v229, v455);
    }

    if (v462 < v456)
    {
      v462 = v456;
    }

    if (v463 < v457)
    {
      LODWORD(v463) = v457;
    }

    if ((*(state + 46) & 1) == 0 && fsck_compare_snapshots(v2, v193, (v193 + 768)))
    {
LABEL_194:
      v232 = v25;
      v233 = 306;
      goto LABEL_148;
    }

    fsck_fail_set_phase(16);
    v285 = *(v193 + 6);
    if (!v285)
    {
      v285 = *v215;
    }

    if ((*(v285 + 56) & 0x20) != 0 && fsck_integrity_meta(v2, v193, 0))
    {
      goto LABEL_149;
    }

    memset(out, 0, 37);
    uuid_unparse((*v215 + 240), out);
    v293 = *v215;
    if ((*(*v215 + 56) & 0x10) != 0)
    {
      *v274 = 0;
      fsck_printf_warn("Volume %s is incompletely restored, skipping the fsroot tree.\n", v286, v287, v288, v289, v290, v291, v292, out);
LABEL_212:
      v294 = 0;
      goto LABEL_213;
    }

    if (*(v293 + 160))
    {
      *v274 = 0;
      fsck_printf_warn("Volume %s has revert_to_xid set, skipping the fsroot tree.\n", v286, v287, v288, v289, v290, v291, v292, out);
      goto LABEL_212;
    }

    if (((*(v293 + 264) & 1) == 0 || *(v293 + 976)) && !*(v193 + 3))
    {
      fsck_printf_warn("Volume %s is encrypted and crypto I/O failed/was skipped, skipping the fsroot tree.\n", v286, v287, v288, v289, v290, v291, v292, out);
      goto LABEL_212;
    }

    phys_extent_init(v193);
    __str[0].i64[0] = 0;
    fsroot_tree = get_fsroot_tree(v2, v193, __str[0].i64);
    if (!fsroot_tree)
    {
      fsroot_jobj_init(__str[0].i64[0], 0, v314, v315, v316, v317, v318, v319, v445);
      fsck_doc_id_init(v2, v193, 0);
      v320 = *(v193 + 5);
      if (v320[134] || v320[135])
      {
        fsck_fail_set_phase(28);
        fsckPrint(v25, 221, v321, v322, v323, v324, v325, v326, v445);
        if (fsck_doc_id_trees(v2, v193, 0))
        {
          goto LABEL_229;
        }

        v320 = *v215;
      }

      if (v320[139])
      {
        fsck_fail_set_phase(33);
        fsckPrint(v25, 225, v333, v334, v335, v336, v337, v338, v445);
        if ((*(*v215 + 57) & 2) == 0)
        {
          fsck_printf_err("found clone group tree in invalid volume format\n", v339, v340, v341, v342, v343, v344, v345, v445);
          v193[13] = 1;
        }

        if (fsck_clonegroup_tree(v2, v193, 0, v460))
        {
          v233 = 326;
          goto LABEL_244;
        }
      }

      fsck_fail_set_phase(16);
      fsckPrint(v25, 207, v346, v347, v348, v349, v350, v351, v445);
      if (fsck_tree(__str[0].i64[0], 0, jobj_validate_repair_key_val, v460, 0, 0) || *(*v215 + 1096) && (get_secondary_fsroot_tree(v2, v193, __str[0].i64) || fsroot_jobj_advance(v2, v193, (v193 + 768), v225, v226, v227, v228, v229) || fsck_tree(__str[0].i64[0], 0, jobj_validate_repair_key_val, v460, 0, 0)) || *v274 == 1 && fsck_ios_encryption_rolling(v2, v193) || fsroot_jobj_finalize(v2, v193, 0, (v193 + 768), v226, v227, v228, v229))
      {
        v233 = 308;
LABEL_244:
        v232 = v25;
LABEL_148:
        fsckPrint(v232, v233, v224, v225, v226, v227, v228, v229, v445);
      }

      else
      {
        if (fsck_doc_id_finalize(v2, v193, 0))
        {
LABEL_229:
          v233 = 322;
          goto LABEL_244;
        }

        v294 = 1;
LABEL_213:
        fsck_doc_id_cleanup();
        v295 = *(v193 + 6);
        if (!v295)
        {
          v295 = *v215;
        }

        if ((*(v295 + 56) & 0x20) != 0)
        {
          phys_extent_init(v193);
          __str[0].i64[0] = 0;
          fsck_fail_set_phase(26);
          fsckPrint(v25, 219, v302, v303, v304, v305, v306, v307, v445);
          if (get_fext_tree(v2, v193, __str, v308, v309, v310, v311, v312) || fsck_tree(__str[0].i64[0], 0, fext_validate_repair_key_val, v460, 0, 1))
          {
            v232 = v25;
            v233 = 320;
            goto LABEL_148;
          }
        }

        fsck_fail_set_phase(18);
        fsckPrint(v25, 208, v296, v297, v298, v299, v300, v301, v445);
        v453 = 0;
        if (get_extentref_tree(v2, v193, &v453) || fsck_tree(v453, 0, jobj_validate_repair_key_val, v460, 0, 1))
        {
          v232 = v25;
          v233 = 309;
          goto LABEL_148;
        }

        if (!phys_extent_finalize(v193, 0))
        {
          if ((*(*v215 + 56) & 0x40) != 0)
          {
            __str[0].i64[0] = 0;
            fsck_fail_set_phase(27);
            fsckPrint(v25, 220, v352, v353, v354, v355, v356, v357, v445);
            if (get_pfkur_tree(v2, v193, __str[0].i64, v358, v359, v360, v361, v362) || fsck_tree(__str[0].i64[0], 0, pfkur_validate_repair_key_val, v460, 0, 1) || pfkur_finalize(v2, v193, (v193 + 768), v225, v226, v227, v228, v229))
            {
              v232 = v25;
              v233 = 321;
              goto LABEL_148;
            }
          }

          if (v294)
          {
            fsck_fail_set_phase(31);
            fsckPrint(v25, 224, v327, v328, v329, v330, v331, v332, v445);
            if (omap_sv_finalize(v2, v193, 1))
            {
              v232 = v25;
              v233 = 323;
              goto LABEL_148;
            }
          }

          else
          {
            omap_sv_disable(1);
          }

          volume_crypto_close(v193);
          fsck_fail_set_phase(21);
          if (v193[9] == 1 && sub_100005A70(*v215, v460, &v470, v363, v226, v227, v228, v229) || (v193[11] & 1) == 0 && sub_100005D94(v2, *v215, v466, &v470, v226, v227, v228, v229))
          {
            goto LABEL_147;
          }

          if ((*(*v215 + 264) & 4) != 0)
          {
            __str[0].i64[0] = 0;
            tree_key_count((v193 + 768), 0, __str);
            if (!__str[0].i64[0] && (v470 || (v193[12] & 1) != 0 || fsckAskPrompt(fsck_apfs_ctx, "Clear volume inconsistent bit? ", v364, v365, v366, v367, v368, v369, v445)))
            {
              *(*v215 + 264) &= ~4uLL;
              v470 = 1;
              goto LABEL_272;
            }
          }

          if (!v470 && v193[12] != 1)
          {
            goto LABEL_150;
          }

LABEL_272:
          v376 = write_apfs_superblock(v2, v193);
          if (v376 && v470)
          {
            fsckPrint(v25, 307, v370, v371, v372, v373, v374, v375, v445);
            fsck_fail_func(0xA7, v376);
            goto LABEL_149;
          }

          fsck_fail_add_repair();
          v470 = 0;
          v193[12] = 0;
          if (!v376)
          {
LABEL_150:
            v16 &= v193[11] ^ 1;
            if (v193[13])
            {
              v35 = 8;
            }

            else
            {
              v35 = v35;
            }

            __str[0].i64[0] = 0;
            tree_key_count((v193 + 768), 0, __str);
            if (__str[0].i64[0])
            {
              v234 = 109;
              v191 = v449;
            }

            else
            {
              if (v193[13])
              {
                v234 = 108;
              }

              else
              {
                v234 = 104;
              }

              v191 = v449;
              if (v15 != -1 && !v193[13])
              {
                goto LABEL_156;
              }
            }

            sub_100005EE4(v25, v234, v193);
LABEL_156:
            fsck_fail_set_dev_node(*(state + 8));
            v235 = v191 - 22;
            ++v191;
            if (v235 >= v474)
            {
              goto LABEL_277;
            }

            continue;
          }
        }
      }

LABEL_149:
      omap_sv_disable(1);
      fsck_tree_node_repair_abort();
      fsroot_jobj_abort(v193);
      fsck_doc_id_cleanup();
      v193[11] = 1;
      v193[13] = 1;
      goto LABEL_150;
    }

    break;
  }

  v114 = fsroot_tree;
  v113 = 1533;
LABEL_100:
  fsck_fail_func(v113, v114);
LABEL_15:
  v35 = 71;
LABEL_16:
  dev_cleanup();
  fsck_global_volume_cleanup_all();
  if (nx_superblock)
  {
    free(nx_superblock);
  }

  container_cleanup(v2);
  if (v472[1])
  {
    free(v472[1]);
  }

  if (v471[1])
  {
    free(v471[1]);
  }

  space_verification_cleanup();
  if (cache_stats_enabled == 1)
  {
    fsck_print_cache_stats(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  fsck_progress_done();
  return v35;
}

void sub_100004818(uint64_t *a1)
{
  if (a1)
  {
    if (*(state + 54))
    {
      v10 = 0;
      v11 = 0;
      bzero(v12, 0x320uLL);
      fsck_global_volume_get_range(a1, &v11 + 1, &v11);
      v2 = HIDWORD(v11);
      if (HIDWORD(v11) >= v11)
      {
        fsck_progress_init_for_container(a1[3], v12, 0);
      }

      else
      {
        v3 = 0;
        do
        {
          v4 = *(a1[1] + 8 * v2 + 184);
          if (v4)
          {
            if (copy_obj(a1, 0, 0, v4, 0, 0, 13, 0, &v10, 0, 0) || (v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x3ABAA1DCuLL)) == 0)
            {
              v5 = &byte_1000B36A6;
            }

            else
            {
              v5 = v6;
              __strlcpy_chk();
            }

            v12[v3] = v5;
            v3 = (v3 + 1);
            if (v10)
            {
              free(v10);
            }
          }

          v10 = 0;
          ++v2;
        }

        while (v2 < v11);
        fsck_progress_init_for_container(a1[3], v12, v3);
        if (v3 >= 1)
        {
          v7 = v3;
          v8 = v12;
          do
          {
            if (*v8 != &byte_1000B36A6)
            {
              free(*v8);
            }

            ++v8;
            --v7;
          }

          while (v7);
        }
      }

      return;
    }

    v9 = a1[3];
  }

  else
  {
    v9 = 0;
  }

  fsck_progress_init_for_container(v9, 0, 0);
}

uint64_t sub_100004A38(uint64_t a1, uint64_t *a2)
{
  v44 = 0;
  space_verification_init(a2);
  fsck_fail_set_phase(12);
  fsckPrint(a1, 204, v4, v5, v6, v7, v8, v9, v41);
  if (get_omap(a2, 0, 0))
  {
    return 8;
  }

  if (fsck_omap(a2, 0, v10, v11, v12, v13, v14, v15))
  {
    v22 = a1;
    v23 = 305;
    goto LABEL_4;
  }

  v45 = 0;
  fsck_global_volume_get_range(a2, &v45 + 1, &v45);
  v25 = HIDWORD(v45);
  if (HIDWORD(v45) >= v45)
  {
    return 0;
  }

  while (1)
  {
    if (!*(a2[1] + 8 * v25 + 184))
    {
      goto LABEL_16;
    }

    v26 = fsck_global_volume_get_by_index(a2, v25);
    fsck_fail_set_dev_node(*v26);
    fsck_fail_set_phase(13);
    fsckPrint(a1, 101, v27, v28, v29, v30, v31, v32, *v26);
    fsckPrint(a1, 206, v33, v34, v35, v36, v37, v38, v43);
    v39 = (v26 + 40);
    if (!*(v26 + 5))
    {
      if (copy_obj(a2, 0, 0, *(a2[1] + 8 * v25 + 184), 0, 0, 13, 0, v26 + 5, (v26 + 80), 0))
      {
        break;
      }

      v40 = *v39;
    }

    sub_100004BE4(a1);
    if (sub_100004CD4(a2, *v39, v25, &v44))
    {
      break;
    }

    if (v44)
    {
      if (write_apfs_superblock(a2, v26))
      {
        break;
      }

      fsck_fail_add_repair();
      v44 = 0;
    }

LABEL_16:
    if (++v25 >= v45)
    {
      return 0;
    }
  }

  v22 = a1;
  v23 = 307;
LABEL_4:
  fsckPrint(v22, v23, v16, v17, v18, v19, v20, v21, v42);
  return 8;
}

uint64_t sub_100004BE4(uint64_t a1)
{
  memset(v9, 0, sizeof(v9));
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  return fsckPrint(a1, 124, v2, v3, v4, v5, v6, v7, v9);
}

uint64_t sub_100004CD4(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v8 = *(a1 + 8);
  v9 = *(v8 + 96);
  v10 = *(v8 + 40);
  timestamp = get_timestamp();
  if (*(a2 + 32) != 1112756289)
  {
    v121 = *(a2 + 32);
    fsck_printf_err("apfs superblock at index %u: apfs_magic invalid: %d\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 14;
LABEL_24:
    fsck_fail_func(v37, 92);
    return v21;
  }

  v19 = timestamp;
  v20 = *(a1 + 24);
  if (*(a2 + 36) != a3)
  {
    fsck_printf_err("apfs_fs_index (%d) is not valid (%d)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    fsck_fail_func(0xF, 92);
    v114 = *(a2 + 16);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_index(oid 0x%llx, xid 0x%llx)? ", v22, v23, v24, v25, v26, v27, *(a2 + 8)))
    {
      return v21;
    }

    *(a2 + 36) = a3;
    *a4 = 1;
  }

  if ((*(a2 + 40) & 0xFFFFFFFFFFFFFFE0) != 0)
  {
    v115 = *(a2 + 40) & 0xFFFFFFFFFFFFFFE0;
    fsck_printf_warn("apfs superblock at index %u: apfs_features has unrecognized features (0x%llX)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    fsck_fail_func(0x10, -3);
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFF1) != 0)
  {
    v116 = *(a2 + 48) & 0xFFFFFFFFFFFFFFF1;
    fsck_printf_warn("apfs superblock at index %u: apfs_readonly_compatible_features has unsupported flags: (0x%llX)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v28 = state;
    *(state + 32) = 1;
    *(v28 + 41) = 1;
    fsckSetDefaultResponse(fsck_apfs_ctx, 1);
    fsck_fail_func(0x11, -3);
  }

  v29 = *(a2 + 56);
  if ((v29 & 0xFFFFFFFFFFFFFC00) != 0 || (*(a2 + 56) & 9) == 9)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_incompatible_features has unsupported flags: (0x%llX)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 18;
    goto LABEL_24;
  }

  if (v29 >= 0x200 && (*(a2 + 48) & 2) != 0)
  {
    v122 = *(a2 + 48);
    v154 = *(a2 + 56);
    fsck_printf_err("apfs superblock at index %u: incompatible features set (apfs_readonly_compatible_features: (0x%llX), apfs_incompatible_features: (0x%llX))\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 1210;
    goto LABEL_24;
  }

  if (*(a2 + 64) > v19)
  {
    v117 = *(a2 + 64);
    fsck_printf_warn("apfs superblock at index %u: apfs_unmount_time (%llu) is greater than current time (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    fsck_fail_func(0x13, -4);
  }

  if (v20)
  {
    if (*(a2 + 88) > *(*(a1 + 8) + 40) - (v20[30] + v20[9]))
    {
      v118 = *(a2 + 88);
      v152 = *(*(a1 + 8) + 40) - (v20[30] + v20[9]);
      fsck_printf_warn("apfs superblock at index %u: apfs_fs_alloc_count (%llu) is greater than container wide allocated count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      fsck_fail_func(0x308, -7);
    }

    v30 = *(a2 + 72);
    if (v30)
    {
      if (v30 <= *(*(a1 + 8) + 40))
      {
        if (v30 > v20[23])
        {
          v123 = *(a2 + 72);
          v155 = v20[23];
          fsck_printf_warn("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than spaceman reserve block count (%llu) for a guaranteed-minimum space FS\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
          fsck_fail_func(0x14, -7);
          v30 = *(a2 + 72);
        }
      }

      else
      {
        v119 = *(a2 + 72);
        v153 = *(*(a1 + 8) + 40);
        fsck_printf_err("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than the container block count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
        v21 = 92;
        fsck_fail_func(0x448, 92);
        v120 = *(a2 + 16);
        if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", v31, v32, v33, v34, v35, v36, *(a2 + 8)))
        {
          return v21;
        }

        v30 = 0;
        *(a2 + 72) = 0;
        *a4 = 1;
      }

      if (v30 >= *(a2 + 88))
      {
        v30 = *(a2 + 88);
      }

      if (v30 > v20[24])
      {
        v156 = v20[24];
        fsck_printf_warn("apfs superblock at index %u: apfs reserve alloc count (%llu) is greater than spaceman reserve alloc count (%llu) for a guaranteed-minimum space FS\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
        fsck_fail_func(0x309, -7);
      }
    }
  }

  v39 = *(a2 + 80);
  if (v39)
  {
    if (*(a2 + 72) > v39)
    {
      v124 = *(a2 + 72);
      v157 = *(a2 + 80);
      fsck_printf_err("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 21;
      goto LABEL_24;
    }

    if (v39 > v10)
    {
      v125 = *(a2 + 80);
      fsck_printf_warn("apfs superblock at index %u: apfs_fs_quota_block_count (%llu) should not be greater than nx_block_count (%llu) for an FS with quota\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      fsck_fail_func(0x16, -7);
      v39 = *(a2 + 80);
    }

    if (*(a2 + 88) > v39)
    {
      v126 = *(a2 + 88);
      fsck_printf_err("apfs superblock at index %u: apfs_fs_alloc_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 23;
      goto LABEL_24;
    }
  }

  if (*(a2 + 116) >> 30 == 3 || *(a2 + 116) != 2)
  {
    v128 = *(a2 + 116);
    fsck_printf_err("apfs superblock at index %u: apfs_root_tree_type is invalid: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 24;
    goto LABEL_24;
  }

  if (*(a2 + 120) >> 30 == 3 || *(a2 + 120) != 2)
  {
    v129 = *(a2 + 120);
    fsck_printf_err("apfs superblock at index %u: apfs_extentref_tree_type is invalid: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 25;
    goto LABEL_24;
  }

  if (*(a2 + 124) >> 30 == 3 || *(a2 + 124) != 2)
  {
    v130 = *(a2 + 124);
    fsck_printf_err("apfs superblock at index %u: apfs_snap_meta_tree_type is invalid: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 26;
    goto LABEL_24;
  }

  if (!*(a2 + 128))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_omap_oid is invalid.\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 27;
    goto LABEL_24;
  }

  if (!*(a2 + 136))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_root_tree_oid is invalid.\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 28;
    goto LABEL_24;
  }

  if ((*(a2 + 56) & 0x100) != 0)
  {
    if ((*(a2 + 264) & 1) != 0 && !*(a2 + 976))
    {
      v133 = *(a2 + 264);
      v159 = *(a2 + 56);
      fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) inconsistent with apfs_incompatible_features secondary fsroot bit (0x%llx)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 1160;
      goto LABEL_24;
    }

    if (!*(a2 + 1096))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_sec_root_tree_oid is invalid\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 1161;
      goto LABEL_24;
    }

    if (*(a2 + 1104) >> 30 == 3 || *(a2 + 1104) != 2)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_sec_root_tree_type is invalid\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 1162;
      goto LABEL_24;
    }
  }

  else if (*(a2 + 1096))
  {
    v127 = *(a2 + 1096);
    fsck_printf_warn("apfs superblock at index %u: apfs_sec_root_tree_oid (%llu) set on incompatible volume\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    fsck_fail_func(0x48B, -2);
  }

  if (!*(a2 + 144))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_extentref_tree_oid is invalid.\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 29;
    goto LABEL_24;
  }

  v40 = *(a2 + 160);
  if (v40 >= v9)
  {
    v132 = *(a2 + 160);
    fsck_printf_err("apfs superblock at index %u: apfs_revert_to_xid (%llu) should be less than nx_next_xid (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 30;
    goto LABEL_24;
  }

  if (v40 && !*(a2 + 168))
  {
    v136 = *(a2 + 160);
    fsck_printf_err("apfs superblock at index %u: apfs_revert_to_xid is %llu, but sblock oid is invalid\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 31;
    goto LABEL_24;
  }

  if (*(a2 + 232) > *(a2 + 224))
  {
    v131 = *(a2 + 232);
    v158 = *(a2 + 224);
    fsck_printf_warn("apfs superblock at index %u: apfs_total_blocks_freed (%llu) should not be greater than apfs_total_blocks_alloced (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    fsck_fail_func(0x20, -7);
  }

  if (uuid_is_null((a2 + 240)))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_vol_uuid is NULL\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 33;
    goto LABEL_24;
  }

  if (*(a2 + 256) > v19)
  {
    v134 = *(a2 + 256);
    fsck_printf_warn("apfs superblock at index %u: apfs_last_mod_time (%llu) is greater than current time (%llu)\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    fsck_fail_func(0x22, -4);
  }

  v48 = *(a2 + 264);
  if (v48 >= 0x1000)
  {
    v135 = *(a2 + 264);
    fsck_printf_warn("apfs superblock at index %u: apfs_fs_flags has an unknown flag set 0x%llx\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    fsck_fail_func(0x23, -3);
    v48 = *(a2 + 264);
  }

  v49 = v48 & 0x109;
  if ((*(a2 + 48) & 2) == 0 && (v49 != 256) == ((*(a2 + 56) >> 6) & 1))
  {
    v162 = *(a2 + 56);
    fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) PFK bit inconsistent with apfs_incompatible_features (0x%llx) PFK bit\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 998;
    goto LABEL_24;
  }

  if ((v49 & (v49 - 1)) != 0)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_fs_flags has conflicting encryption flags 0x%llx\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 999;
    goto LABEL_24;
  }

  if ((v48 & 0x80) != 0 && (*(a2 + 56) & 0x20 | *(a2 + 1024) || *(a2 + 1032)))
  {
    v167 = *(a2 + 1032);
    v163 = *(a2 + 56);
    fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) previously sealed bit inconsistent with apfs_incompatible_features (0x%llx) / apfs_integrity_meta_oid (%llu) / apfs_fext_tree_oid (%llu)\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 951;
    goto LABEL_24;
  }

  if ((v48 & 1) == 0 || *(a2 + 976))
  {
    if ((*(a2 + 56) & 0x20) != 0)
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fs_flags (0x%llx) indicates sealed volume is not fully unencrypted\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
      v21 = 92;
      v37 = 917;
      goto LABEL_24;
    }

    sub_100005F9C((a2 + 96), a2, v42, v43, v44, v45, v46, v47);
  }

  if (!*(a2 + 704))
  {
    fsck_printf_err("apfs superblock at index %u: apfs_volname[0] == 0\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 36;
    goto LABEL_24;
  }

  if (strnlen((a2 + 272), 0x20uLL) == 32)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_formatted_by.id (%.*s) is not NULL terminated.\n", v50, v51, v52, v53, v54, v55, v56, *(a2 + 36));
    v21 = 92;
    fsck_fail_func(0x25, 92);
    v137 = *(a2 + 16);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_formatted_by.id(oid 0x%llx, xid 0x%llx)? ", v57, v58, v59, v60, v61, v62, *(a2 + 8)))
    {
      return v21;
    }

    *(a2 + 303) = 0;
    *a4 = 1;
  }

  if (*(a2 + 304) > v19)
  {
    v138 = *(a2 + 304);
    fsck_printf_warn("apfs superblock at index %u: apfs_formatted_by.timestamp (%llu) is greater than current time (%llu)\n", v50, v51, v52, v53, v54, v55, v56, *(a2 + 36));
    fsck_fail_func(0x26, -4);
  }

  if (*(a2 + 312) > v9)
  {
    v139 = *(a2 + 312);
    fsck_printf_warn("apfs superblock at index %u: apfs_formatted_by.last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", v50, v51, v52, v53, v54, v55, v56, *(a2 + 36));
    fsck_fail_func(0x27, -2);
  }

  v63 = 0;
  v64 = a2 + 320;
  do
  {
    v65 = *(v64 + 32);
    if (!v65)
    {
      break;
    }

    if (strnlen(v64, 0x20uLL) == 32)
    {
      v73 = v64;
      fsck_printf_err("apfs superblock at index %u: apfs_modified_by[%d].id (%.*s) is not NULL terminated.\n", v66, v67, v68, v69, v70, v71, v72, *(a2 + 36));
      v21 = 92;
      fsck_fail_func(0x28, 92);
      v140 = *(a2 + 8);
      v160 = *(a2 + 16);
      if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_modified_by[%d].id(oid 0x%llx, xid 0x%llx)? ", v74, v75, v76, v77, v78, v79, v63))
      {
        return v21;
      }

      v64 = v73;
      *(v73 + 31) = 0;
      *a4 = 1;
      v65 = *(v73 + 32);
    }

    if (v65 > v19)
    {
      fsck_printf_warn("apfs superblock at index %u: apfs_modified_by[%d].timestamp (%llu) is greater than current time (%llu)\n", v66, v67, v68, v69, v70, v71, v72, *(a2 + 36));
      fsck_fail_func(0x29, -4);
    }

    if (*(v64 + 40) > v9)
    {
      v161 = *(v64 + 40);
      fsck_printf_warn("apfs superblock at index %u: apfs_modified_by[%d].last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", v66, v67, v68, v69, v70, v71, v72, *(a2 + 36));
      fsck_fail_func(0x2A, -2);
    }

    ++v63;
    v64 += 48;
  }

  while (v63 != 8);
  if (strnlen((a2 + 704), 0x100uLL) == 256)
  {
    fsck_printf_err("apfs superblock at index %u: apfs_volname (%.*s) is not NULL terminated.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    v21 = 92;
    fsck_fail_func(0x2B, 92);
    v141 = *(a2 + 16);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_volname(oid 0x%llx, xid 0x%llx)? ", v87, v88, v89, v90, v91, v92, *(a2 + 8)))
    {
      return v21;
    }

    *(a2 + 959) = 0;
    *a4 = 1;
  }

  if (*(a2 + 960) <= 2u)
  {
    v142 = *(a2 + 960);
    fsck_printf_err("apfs superblock at index %u: apfs_next_doc_id (%u) should not be less than MIN_DOC_ID (%d)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    v21 = 92;
    v37 = 44;
    goto LABEL_24;
  }

  if (*(a2 + 216) && !*(a2 + 1000))
  {
    fsck_printf_debug("apfs_sb: object (oid 0x%llx): apfs_snap_meta_ext_oid invalid\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 8));
  }

  v93 = *(a2 + 56);
  if ((v93 & 0x20) != 0)
  {
    if (!*(a2 + 1032))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_fext_tree_oid is invalid.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 909;
      goto LABEL_24;
    }

    if (*(a2 + 1040) >> 30 == 3 || *(a2 + 1040) != 2)
    {
      v150 = *(a2 + 1040);
      fsck_printf_err("apfs superblock at index %u: apfs_fext_tree_type is invalid: %u\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 910;
      goto LABEL_24;
    }

    if (!*(a2 + 1024))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_integrity_meta_oid is invalid.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 911;
      goto LABEL_24;
    }
  }

  if ((v93 & 0x40) != 0)
  {
    if (!*(a2 + 1048))
    {
      fsck_printf_err("apfs superblock at index %u: apfs_pfkur_tree_oid is invalid.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 970;
      goto LABEL_24;
    }

    if (*(a2 + 1044) >> 30 == 3 || *(a2 + 1044) != 2)
    {
      v151 = *(a2 + 1044);
      fsck_printf_err("apfs superblock at index %u: apfs_pfkur_tree_type is invalid: 0x%x\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 971;
      goto LABEL_24;
    }
  }

  if (*(a2 + 1056) >= *(*(a1 + 8) + 96))
  {
    v143 = *(a2 + 1056);
    v164 = *(*(a1 + 8) + 96);
    fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_index_xid (%llu) is greater than or equal to container nx_next_xid (%llu)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    fsck_fail_func(0x40F, -2);
  }

  v94 = *(a2 + 1064);
  if (v94 >= 0x20)
  {
    v144 = *(a2 + 1064);
    fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_index_flags has unrecognized flags (0x%x)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    fsck_fail_func(0x410, -3);
    v94 = *(a2 + 1064);
  }

  if ((v94 & 1) == 0)
  {
    if (*(a2 + 1080))
    {
      v145 = *(a2 + 1080);
      fsck_printf_warn("apfs superblock at index %u: apfs_prev_doc_id_tree_oid is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      fsck_fail_func(0x411, -3);
    }

    if (*(a2 + 1088))
    {
      v146 = *(a2 + 1088);
      v165 = *(a2 + 1064);
      fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_fixup_cursor is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      fsck_fail_func(0x412, -3);
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_doc_id_fixup_cursor? ", v95, v96, v97, v98, v99, v100, v112))
      {
        *(a2 + 1088) = 0;
        *a4 = 1;
      }
    }
  }

  if (*(a2 + 1088) >= *(a2 + 176))
  {
    v147 = *(a2 + 1088);
    v166 = *(a2 + 176);
    fsck_printf_warn("apfs superblock at index %u: apfs_doc_id_fixup_cursor (%llu) is greater than or equal to apfs_next_obj_id (%llu)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    fsck_fail_func(0x413, -2);
  }

  if ((*(a2 + 1072) || *(a2 + 1080)) && (*(a2 + 1068) >> 30 == 3 || *(a2 + 1068) != 2))
  {
    v148 = *(a2 + 1068);
    fsck_printf_err("apfs superblock at index %u: apfs_doc_id_tree_type is invalid: %u\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    v21 = 92;
    fsck_fail_func(0x414, 92);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_doc_id_tree_type? ", v101, v102, v103, v104, v105, v106, v113))
    {
      return v21;
    }

    *(a2 + 1068) = 2;
    *a4 = 1;
  }

  if (*(a2 + 1108) >= 4u)
  {
    v149 = *(a2 + 1108);
    fsck_printf_warn("apfs superblock at index %u: unknown clone group tree flags: 0x%x\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    if (fsck_should_repair_unknown_flags(a1, *(a2 + 1108), 3, v107, v108, v109, v110, v111))
    {
      *(a2 + 1108) &= 3u;
      *a4 = 1;
    }

    fsck_fail_func(0x5EC, -3);
  }

  return 0;
}

uint64_t sub_100005A70(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 176) < *(a2 + 40))
  {
    fsck_printf_err("apfs_next_obj_id is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 40));
    v11 = 92;
    fsck_fail_func(0x2D, 92);
    v61 = *(a1 + 16);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_next_obj_id(oid 0x%llx, xid 0x%llx)? ", v12, v13, v14, v15, v16, v17, *(a1 + 8)))
    {
      return v11;
    }

    *(a1 + 176) = *(a2 + 40);
    *a3 = 1;
  }

  if (*(a1 + 960) < *(a2 + 48))
  {
    fsck_printf_err("apfs_next_doc_id is not valid (expected %u, actual %u)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 48));
    v11 = 92;
    fsck_fail_func(0x415, 92);
    v62 = *(a1 + 16);
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_next_doc_id(oid 0x%llx, xid 0x%llx)? ", v18, v19, v20, v21, v22, v23, *(a1 + 8)))
    {
      return v11;
    }

    *(a1 + 960) = *(a2 + 48);
    *a3 = 1;
  }

  if (*(a1 + 184) != *a2)
  {
    fsck_printf_warn("apfs_num_files is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *a2);
    fsck_fail_func(0x2E, -8);
    v63 = *(a1 + 16);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_files(oid 0x%llx, xid 0x%llx)? ", v24, v25, v26, v27, v28, v29, *(a1 + 8)))
    {
      *(a1 + 184) = *a2;
      *a3 = 1;
    }
  }

  if (*(a1 + 192) != *(a2 + 8))
  {
    fsck_printf_warn("apfs_num_directories is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));
    fsck_fail_func(0x2F, -8);
    v64 = *(a1 + 16);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_directories(oid 0x%llx, xid 0x%llx)? ", v30, v31, v32, v33, v34, v35, *(a1 + 8)))
    {
      *(a1 + 192) = *(a2 + 8);
      *a3 = 1;
    }
  }

  if (*(a1 + 200) != *(a2 + 16))
  {
    fsck_printf_warn("apfs_num_symlinks is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 16));
    fsck_fail_func(0x30, -8);
    v65 = *(a1 + 16);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_symlinks(oid 0x%llx, xid 0x%llx)? ", v36, v37, v38, v39, v40, v41, *(a1 + 8)))
    {
      *(a1 + 200) = *(a2 + 16);
      *a3 = 1;
    }
  }

  if (*(a1 + 208) != *(a2 + 24))
  {
    fsck_printf_warn("apfs_num_other_fsobjects is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 24));
    fsck_fail_func(0x31, -8);
    v66 = *(a1 + 16);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_other_fsobjects(oid 0x%llx, xid 0x%llx)? ", v42, v43, v44, v45, v46, v47, *(a1 + 8)))
    {
      *(a1 + 208) = *(a2 + 24);
      *a3 = 1;
    }
  }

  if (*(a1 + 216) != *(a2 + 32))
  {
    fsck_printf_warn("apfs_num_snapshots is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 32));
    fsck_fail_func(0x32, -8);
    v67 = *(a1 + 16);
    if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_num_snapshots(oid 0x%llx, xid 0x%llx)? ", v48, v49, v50, v51, v52, v53, *(a1 + 8)))
    {
      *(a1 + 216) = *(a2 + 32);
      *a3 = 1;
    }
  }

  if (*(a1 + 1136) >= *(a2 + 56))
  {
    return 0;
  }

  fsck_printf_err("apfs_clonegroup_next_id is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 56));
  v11 = 92;
  fsck_fail_func(0x5ED, 92);
  v68 = *(a1 + 16);
  if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_clonegroup_next_id(oid 0x%llx, xid 0x%llx)? ", v54, v55, v56, v57, v58, v59, *(a1 + 8)))
  {
    v11 = 0;
    *(a1 + 1136) = *(a2 + 56);
    *a3 = 1;
  }

  return v11;
}

uint64_t sub_100005D94(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2[9];
  v12 = *a3;
  if (v11 > *(*(a1 + 8) + 40) - *a3)
  {
    fsck_printf_err("apfs_fs_reserve_block_count brings total reserve block count beyond the container block count (max %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 8) + 40) - *a3);
    v13 = 92;
    fsck_fail_func(0x449, 92);
    v35 = a2[2];
    if (!fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", v14, v15, v16, v17, v18, v19, a2[1]))
    {
      return v13;
    }

    v11 = 0;
    a2[9] = 0;
    *a4 = 1;
    v12 = *a3;
  }

  *a3 = v12 + v11;
  v37 = 0;
  v13 = volume_alloc_count_get(a2[1], &v37);
  if (!v13)
  {
    v27 = a2[11];
    if (v27 != v37)
    {
      fsck_printf_warn("apfs_fs_alloc_count is not valid (expected %llu, actual %llu)\n", v20, v21, v22, v23, v24, v25, v26, v37);
      fsck_fail_func(0x367, -8);
      v36 = a2[2];
      if (fsckAskPrompt(fsck_apfs_ctx, "Fix apfs_fs_alloc_count(oid 0x%llx, xid 0x%llx)? ", v28, v29, v30, v31, v32, v33, a2[1]))
      {
        v27 = v37;
        a2[11] = v37;
        *a4 = 1;
      }

      else
      {
        v27 = a2[11];
      }
    }

    if (a2[9] < v27)
    {
      v27 = a2[9];
    }

    a3[1] += v27;
  }

  return v13;
}

uint64_t sub_100005EE4(uint64_t a1, int a2, void *a3)
{
  memset(dst, 0, sizeof(dst));
  memset(out, 0, 37);
  v6 = a3[5];
  if (v6)
  {
    uuid_copy(dst, (v6 + 240));
  }

  else
  {
    uuid_clear(dst);
  }

  uuid_unparse(dst, out);
  return fsckPrint(a1, a2, v7, v8, v9, v10, v11, v12, *a3);
}

char *sub_100005F9C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*result != 5)
  {
    v10 = *result;
    fsck_printf_warn("apfs object (oid 0x%llx): crypto major version (%u) is not CP_CURRENT (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));
    result = fsck_fail_func(0xC, -6);
  }

  if (*(v9 + 1))
  {
    fsck_printf_warn("apfs object (oid 0x%llx): cpflags (%u) should be 0\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));

    return fsck_fail_func(0xD, -3);
  }

  return result;
}

char *disable_idle_sleep()
{
  AssertionID = 0;
  if (IOPMAssertionCreateWithName(@"PreventUserIdleDisplaySleep", 0xFFu, @"Running FSCK", &AssertionID))
  {
    v7 = "failed!";
  }

  else
  {
    dword_100103280 = AssertionID;
    v7 = "succeeded.";
  }

  return fsck_printf_debug("Disabling idle sleep, %s\n", v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t dev_cleanup()
{
  v0 = dword_1000E8518;
  if ((dword_1000E8518 & 0x80000000) == 0)
  {
    dword_1000E8518 = -1;
    fcntl(v0, 54, 0);
    result = close(v0);
  }

  if (dword_100103284)
  {
    v2 = dword_100103284;
    dword_100103284 = 0;
    return apfs_crypto_io_disable(&v2);
  }

  return result;
}

void dev_reload_validate()
{
  if (dword_1000E8518 != -1)
  {
    sub_1000A3CCC();
  }

  if (dword_100103284)
  {
    sub_1000A3CF8();
  }
}

uint64_t dev_reload(const char *a1)
{
  result = open(a1, 2);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

BOOL container_status_is_corrupt(const char *a1)
{
  v1 = device_basename(a1);
  v2 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    iterator = 0;
    IORegistryEntryGetChildIterator(MatchingService, "IOService", &iterator);
    if (iterator)
    {
      v5 = IOIteratorNext(iterator);
      if (!v5)
      {
LABEL_8:
        IOObjectRelease(iterator);
        v11 = 0;
LABEL_16:
        IOObjectRelease(v4);
        return v11;
      }

      v6 = v5;
      v7 = kCFAllocatorDefault;
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"IOMatchCategory", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v9 = CFProperty;
          v10 = CFEqual(CFProperty, @"IOStorage");
          CFRelease(v9);
          if (v10)
          {
            break;
          }
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(iterator);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      IOObjectRelease(iterator);
    }

    else
    {
      v7 = kCFAllocatorDefault;
      v6 = v4;
    }

    v12 = IORegistryEntryCreateCFProperty(v6, @"Status", v7, 0);
    if (v12)
    {
      v13 = v12;
      v11 = CFEqual(v12, @"Corrupt") != 0;
      CFRelease(v13);
    }

    else
    {
      v11 = 0;
    }

    IOObjectRelease(v6);
    goto LABEL_16;
  }

  return 0;
}

uint64_t volume_crypto_open(const char **a1, uint64_t *a2, char a3)
{
  is_multikey_encrypted = device_is_multikey_encrypted(*a1);
  v7 = is_multikey_encrypted;
  if (is_multikey_encrypted)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v33 = v8;
  if (a2)
  {
    v9 = *(a2[1] + 36);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v31 = a3;
  if (is_multikey_encrypted)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = a1 + 104;
  v32 = a1;
  v13 = a1 + 3;
  for (i = 1; ; i = 0)
  {
    v15 = &v12[12 * v10];
    *(v15 + 64) = v10;
    v16 = &v13[v10];
    if (*v16)
    {
      inited = fsck_dev_init_with_dev_handle_ext(v16, v15, v33, v11);
LABEL_13:
      v18 = inited;
      if (inited)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    if (a2)
    {
      break;
    }

    v19 = dev_init(*v32, a3 & 3, v16);
    if (v19)
    {
      goto LABEL_30;
    }

LABEL_23:
    v21 = i & v7;
    v10 = 1;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(state + 20) & 0x80000000) == 0)
  {
    v19 = fsck_meta_crypto_state_unwrap(a2, v32, v15);
    if (v19)
    {
      goto LABEL_30;
    }

    v20 = dup(*(state + 16));
    if ((v20 & 0x80000000) == 0)
    {
      inited = fsck_dev_init_with_fd_ext(v20, a3 & 3, v16, v15, v33, v11);
      goto LABEL_13;
    }

    v18 = *__error();
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_14:
    if (a2 && *v16)
    {
      dev_set_block_size(*v16);
    }

    goto LABEL_23;
  }

  if (!*(state + 72) || (v19 = fsck_meta_crypto_state_unwrap(a2, v32, v15), !v19))
  {
    a3 = v31;
    inited = fsck_dev_init_ext(*v32, v31 & 3, v16, v15, v33, v11);
    goto LABEL_13;
  }

LABEL_30:
  v18 = v19;
LABEL_31:
  v22 = *v32;
  strerror(v18);
  fsck_printf_err("device %s failed to open with error: %s\n", v23, v24, v25, v26, v27, v28, v29, v22);
  return v18;
}

void volume_crypto_close(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 24;
  v3 = a1 + 832;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v2 + 8 * v1);
    if (v6)
    {
      dev_close(v6);
      *(v2 + 8 * v1) = 0;
    }

    v7 = v3 + 96 * v1;
    if (*(v7 + 72))
    {
      fsck_meta_crypto_state_destroy(v7);
    }

    v4 = 0;
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

uint64_t container_get_info(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(state + 16) != -1)
  {
    *a2 = 0;
    *(a2 + 2) = 0;
    goto LABEL_3;
  }

  v6 = sub_100006860(*(state + 8), 1, a2, (a2 + 1), (a2 + 2), (a2 + 8));
  if (v6)
  {
    v14 = v6;
    v15 = *(state + 8);
    strerror(v6);
    fsck_printf_err("dev_is_mounted(%s) failed with error: %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
    v23 = 153;
LABEL_7:
    fsck_fail_func(v23, v14);
    return 66;
  }

  if ((*a2 & 1) == 0)
  {
LABEL_3:
    if (*(state + 41) != 1)
    {
      v4 = 0;
      *(a2 + 32) = 18;
      return v4;
    }

    goto LABEL_4;
  }

  v25 = state;
  if (*(a2 + 1) != 1)
  {
    if (*(state + 24) == -1)
    {
      *(a2 + 16) = 1;
    }

    else
    {
      v27 = sub_100006860(*state, 0, (a2 + 16), (a2 + 17), (a2 + 18), (a2 + 24));
      if (v27)
      {
        v14 = v27;
        v28 = *state;
        strerror(v27);
        fsck_printf_err("dev_is_mounted(%s) failed with error: %s\n", v29, v30, v31, v32, v33, v34, v35, v28);
        v23 = 155;
        goto LABEL_7;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
        v36 = state;
        if (*(state + 41) != 1)
        {
          *(a2 + 32) = 18;
          *(a2 + 40) = 1;
          fsck_printf_err("live repair of a volume in mounted container %s is not supported yet.\n", v7, v8, v9, v10, v11, v12, v13, *(v36 + 8));
          v4 = 64;
          v26 = 158;
          v38 = 64;
          goto LABEL_34;
        }

        v37 = *(state + 42);
        if ((*(state + 40) & 1) == 0)
        {
          if (*(state + 42))
          {
            goto LABEL_26;
          }

          fsck_printf_err("container %s is mounted with write access; please re-run with -l.\n", v7, v8, v9, v10, v11, v12, v13, *(state + 8));
          v4 = 65;
          v26 = 589;
          goto LABEL_33;
        }

        if (*(state + 42))
        {
          goto LABEL_26;
        }

LABEL_31:
        v4 = 0;
        *a3 = 1;
        return v4;
      }
    }

    if (*(state + 41) != 1)
    {
      fsck_printf_err("container %s is mounted with write access.\n", v7, v8, v9, v10, v11, v12, v13, *(state + 8));
      v4 = 65;
      v26 = 157;
      goto LABEL_33;
    }

    if (*(state + 40) != 1 || *(a2 + 18) != 1 || (*(state + 42) & 1) != 0)
    {
      if (*(state + 42) == 1)
      {
LABEL_26:
        v4 = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        return v4;
      }

      fsck_printf_err("container %s is mounted with write access; please re-run with -l.\n", v7, v8, v9, v10, v11, v12, v13, *(state + 8));
      v4 = 65;
      v26 = 156;
LABEL_33:
      v38 = 65;
LABEL_34:
      fsck_fail_func(v26, v38);
      return v4;
    }

    goto LABEL_31;
  }

  if (*(state + 41) != 1)
  {
    if (*(a2 + 2) == 1)
    {
      *(a2 + 32) = 0x4000000000012;
      fsck_printf_err("container %s is mounted. repairs in a mounted container is not supported yet.\n", v7, v8, v9, v10, v11, v12, v13, *(v25 + 8));
      v4 = 65;
      v26 = 857;
    }

    else
    {
      fsck_printf_err("container %s is mounted.\n", v7, v8, v9, v10, v11, v12, v13, *(state + 8));
      v4 = 65;
      v26 = 154;
    }

    goto LABEL_33;
  }

LABEL_4:
  v4 = 0;
  *(a2 + 32) = 0;
  return v4;
}

uint64_t sub_100006860(const char *a1, int a2, _BYTE *a3, _BYTE *a4, char *a5, void **a6)
{
  v8 = a4;
  *a3 = 0;
  *a4 = 1;
  *a5 = 0;
  *a6 = 0;
  v10 = device_basename(a1);
  v11 = strlen(v10);
  v12 = getfsstat(0, 0, 2);
  if ((v12 & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v13 = 2168 * v12;
  v14 = malloc_type_malloc(2168 * v12, 0x100004087E0324AuLL);
  v15 = v14;
  if (!v14 || (v16 = getfsstat(v14, v13, 2), (v16 & 0x80000000) != 0))
  {
LABEL_34:
    v28 = *__error();
  }

  else
  {
    if (v16)
    {
      v30 = v8;
      v17 = v16;
      v18 = v15;
      while (1)
      {
        f_mntfromname = v18->f_mntfromname;
        if (!strcmp(v18->f_mntfromname, "root_device"))
        {
          f_mntfromname = devname(v18->f_fsid.val[0], 0x6000u);
        }

        v20 = strrchr(f_mntfromname, 64);
        if (v20)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = f_mntfromname;
        }

        v22 = device_basename(v21);
        if (strncmp(v22, v10, v11))
        {
          goto LABEL_31;
        }

        v23 = v22[v11];
        if (v22[v11])
        {
          if (a2)
          {
            if (v23 != 115)
            {
              goto LABEL_31;
            }

LABEL_17:
            f_flags = v18->f_flags;
            if ((f_flags & 0x4000) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

          if (v23 != 115 || (v18->f_flags & 0x40000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (a2)
        {
          goto LABEL_17;
        }

        f_flags = v18->f_flags;
        if ((f_flags & 0x40000000) == 0)
        {
LABEL_18:
          v25 = 0;
          goto LABEL_26;
        }

LABEL_24:
        if (*a3)
        {
          goto LABEL_27;
        }

        v25 = 1;
LABEL_26:
        *a5 = v25;
LABEL_27:
        *a3 = 1;
        if ((f_flags & 1) == 0)
        {
          *v30 = 0;
        }

        if (!*a6)
        {
          v27 = strdup(v18->f_mntonname);
          *a6 = v27;
          if (!v27)
          {
            v8 = v30;
            goto LABEL_34;
          }
        }

LABEL_31:
        ++v18;
        if (!--v17)
        {
          v28 = 0;
          v8 = v30;
          goto LABEL_35;
        }
      }
    }

    v28 = 0;
  }

LABEL_35:
  if ((*a3 & 1) == 0)
  {
    *v8 = 0;
  }

  if (v15)
  {
    free(v15);
  }

  if (v28 && *a6)
  {
    free(*a6);
    *a6 = 0;
  }

  return v28;
}

uint64_t container_open(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(state + 16);
  if (v6 == -1)
  {
    v7 = fsck_dev_init(*(state + 8), a2, a1, a4, a5);
  }

  else
  {
    v7 = fsck_dev_init_with_fd(v6, a1);
  }

  v8 = v7;
  if (!v7)
  {
    return 0;
  }

  v9 = *(state + 8);
  strerror(v7);
  fsck_printf_err("device %s failed to open with error: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
  fsck_fail_func(0xA3, v8);
  return 66;
}

uint64_t container_crypto_prepare(uint64_t a1, char a2, _BYTE *a3)
{
  v23 = 0;
  fsck_global_volume_get_range(a1, &v23 + 1, &v23);
  *a3 = 0;
  for (i = HIDWORD(v23); i < v23; ++i)
  {
    v7 = fsck_global_volume_get_by_index(a1, i);
    v8 = *v7;
    if (!*v7)
    {
      v9 = *(state + 8);
      v24 = 0;
      asprintf(&v24, "/dev/r%ss%d", (v9 + 6), i + 1);
      v8 = v24;
      *v7 = v24;
      if (!v8)
      {
        fsck_printf_err("failed to allocate memory for device path\n", v10, v11, v12, v13, v14, v15, v16, v22);
        fsck_fail_func(0xA4, 12);
        return 71;
      }
    }

    if ((*(state + 40) & 1) == 0 && (*(state + 47) & 1) == 0)
    {
      is_encrypted = device_is_encrypted(v8);
      *a3 |= is_encrypted;
      if (is_encrypted)
      {
        if (*(state + 48) == 1)
        {
          *strrchr(*v7, 115) = 0;
          v7[8] = 1;
          *a3 = 0;
        }

        v18 = volume_crypto_open(v7, 0, a2);
        if (v18)
        {
          fsck_fail_func(0x9F, v18);
          return 66;
        }
      }

      v20 = *(state + 20) >= 0 || *(state + 72) != 0;
      v7[8] = v20;
    }
  }

  return 0;
}

uint64_t container_crypto_setup(uint64_t a1, char a2)
{
  v25 = 0;
  fsck_global_volume_get_range(a1, &v25 + 1, &v25);
  if (dword_100103284)
  {
    v4 = v25;
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v8 = *(a1 + 8);
    v9 = *(v8 + 1392);
    v23 = *(v8 + 1296);
    v24 = v9;
    v10 = *(state + 8);
    v22[0] = v23;
    v22[1] = v9;
    v11 = apfs_crypto_io_enable(v10, (a2 & 3) != 0, v22, &dword_100103284, v26);
    if (v11)
    {
      v12 = v11;
      v13 = *(state + 8);
      strerror(v11);
      fsck_printf_err("failed to enable crypto I/O mode for container %s: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
      fsck_fail_func(0x3B1, v12);
      return 66;
    }

    v4 = v25;
    for (i = HIDWORD(v25); i < v25; v4 = v25)
    {
      fsck_global_volume_get_by_index(a1, i)[8] = *(v26 + i) != 0;
      ++i;
    }
  }

  v5 = HIDWORD(v25);
  if (HIDWORD(v25) < v4)
  {
    do
    {
      v6 = fsck_global_volume_get_by_index(a1, v5);
      if ((v6[8] & 1) == 0)
      {
        volume_crypto_close(v6);
      }

      ++v5;
    }

    while (v5 < v25);
  }

  return 0;
}

uint64_t container_freeze(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  if (state)
  {
    if (*(state + 16) != -1)
    {
      sub_1000A3D24();
    }
  }

  v5 = open(v4, 0);
  dword_1000E8518 = v5;
  if (v5 < 0)
  {
    v17 = *__error();
    strerror(v17);
    fsck_printf_err("could not open %s to freeze the volume: %s\n", v18, v19, v20, v21, v22, v23, v24, v4);
    fsck_fail_func(0xA1, v17);
    return 66;
  }

  if (a3)
  {
    v33 = 0;
    result = ffsctl(v5, 0x80044A62uLL, &v33, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v8 = strerror(v7);
    fsck_printf_err("could not sync and freeze volume: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
    v16 = 1081;
  }

  else
  {
    result = fcntl(v5, 53, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v25 = strerror(v7);
    fsck_printf_err("could not freeze volume: %s\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v16 = 162;
  }

  fsck_fail_func(v16, v7);
  return 71;
}

FILE *safely_open_log_file(const char *a1)
{
  v1 = open(a1, 777, 438);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  memset(&v5, 0, sizeof(v5));
  if (!fstat(v1, &v5) && (v5.st_mode & 0xF000) == 0x8000)
  {
    return fdopen(v2, "a");
  }

  close(v2);
  v4 = __error();
  result = 0;
  *v4 = 1;
  return result;
}

uint64_t sub_100007024(uint64_t result, uint64_t a2, char *__format, const char *a4, va_list a5)
{
  v18 = 0;
  if (*(a2 + 8) && *(a2 + 16))
  {
    v8 = result;
    if (result == 1)
    {
      v18 = a5;
    }

    if (live_fsck && *a2 == __stdoutp)
    {
      pthread_mutex_lock(&stru_1000E8528);
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = v9 - v10;
    if (v8 == 1)
    {
      result = vsnprintf(*(a2 + 8), v11 - (v9 - v10), __format, a5);
    }

    else
    {
      result = snprintf(v9, v11 - (v9 - v10), "%s", a4);
    }

    if (v11 - (v9 - v10) >= result)
    {
      v9 += result;
    }

    else
    {
      if (result >= 4096)
      {
        v13 = (result + 4095) & 0x7FFFF000;
      }

      else
      {
        v13 = 4096;
      }

      v14 = v11 + v13;
      if (!((v11 + v13) >> 20))
      {
        result = malloc_type_realloc(v10, v14, 0xB86594F6uLL);
        if (result)
        {
          v15 = result;
          v16 = result + v12;
          if (v8 == 1)
          {
            result = vsnprintf((result + v12), v14 - v12, __format, v18);
          }

          else
          {
            result = snprintf((result + v12), v14 - v12, "%s", a4);
          }

          v17 = result;
          if (v14 - v12 < result)
          {
            v17 = 0;
          }

          v9 = (v16 + v17);
          v10 = v15;
          v11 = v14;
        }
      }
    }

    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    if (live_fsck)
    {
      if (*a2 == __stdoutp)
      {
        pthread_cond_signal(&stru_1001032C8);
        return pthread_mutex_unlock(&stru_1000E8528);
      }
    }
  }

  return result;
}

uint64_t setup_logging()
{
  v0 = qword_100103288;
  setlinebuf(__stdoutp);
  result = setlinebuf(__stderrp);
  live_fsck = lflag;
  if (!v0)
  {
    result = safely_open_log_file("/var/log/fsck_apfs.log");
    if (result)
    {
      v2 = result;
      qword_100103288 = result;
      setlinebuf(result);
      if (live_fsck)
      {
        v3 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (v3 && result)
        {
          *v3 = 0;
          qword_100103290 = v3;
          unk_100103298 = v3;
          qword_1001032A0 = 4096;
          *result = 0;
          qword_1001032A8 = __stdoutp;
          unk_1001032B0 = result;
          qword_1001032B8 = result;
          unk_1001032C0 = 4096;
          v7 = time(0);
          v4 = ctime(&v7);
          result = sub_100007024(2, &qword_100103288, "\nfsck_apfs started at %s", v4, 0);
          if (live_fsck)
          {
            pthread_cond_init(&stru_1001032C8, 0);
            pthread_create(&qword_1001032F8, 0, sub_1000073DC, &qword_1001032A8);
            return pthread_create(&qword_100103300, 0, sub_1000073DC, &qword_100103288);
          }
        }
      }

      else
      {
        v7 = time(0);
        if (cdevname)
        {
          v5 = cdevname;
        }

        else
        {
          v5 = "UNKNOWN-DEV";
        }

        v6 = ctime(&v7);
        fprintf(v2, "\n%s: fsck_apfs started at %s", v5, v6);
        return fflush(v2);
      }
    }

    else
    {
      live_fsck = 0;
    }
  }

  return result;
}

uint64_t sub_1000073DC(uint64_t a1)
{
  v2 = *a1;
  bzero(__dst, 0x400uLL);
  v3 = 0;
  while (dword_1000E8520 || *(a1 + 8) != *(a1 + 16))
  {
    pthread_mutex_lock(&stru_1000E8528);
    while (dword_1000E8520 && *(a1 + 8) == *(a1 + 16))
    {
      v4 = pthread_cond_wait(&stru_1001032C8, &stru_1000E8528);
      if (v4)
      {
        fprintf(__stderrp, "error %d from cond wait\n", v4);
        break;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      pthread_mutex_unlock(&stru_1000E8528);
    }

    else
    {
      if (v7 < 0x400)
      {
        __memcpy_chk();
        v8 = v6;
      }

      else
      {
        memcpy(__dst, *(a1 + 16), 0x3FFuLL);
        memmove(v6, (v6 + 1023), v7 - 1023);
        v8 = v5 - 1023;
        v7 = 1023;
      }

      __dst[v7] = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = v6;
      pthread_mutex_unlock(&stru_1000E8528);
      v9 = __dst[0];
      if (__dst[0])
      {
        v10 = __dst;
        do
        {
          v11 = v10++;
          if (v9)
          {
            while (v9 != 10)
            {
              v12 = *v10++;
              v9 = v12;
              if (!v12)
              {
                goto LABEL_19;
              }
            }

            *(v10 - 1) = 0;
            v13 = "\n";
          }

          else
          {
LABEL_19:
            --v10;
            v13 = &byte_1000B36A6;
          }

          if (v2 == __stdoutp || *v11 == 0 || v3)
          {
            fprintf(v2, "%s%s");
          }

          else
          {
            fprintf(v2, "%s: %s%s");
          }

          v3 = *v13 != 10;
          v9 = *v10;
        }

        while (*v10);
      }

      fflush(v2);
    }
  }

  return 0;
}

uint64_t logstring(uint64_t a1, const char *a2)
{
  byte_100103308 = 0;
  if (live_fsck)
  {

    return sub_100007024(2, &qword_100103288, "%s", a2, 0);
  }

  else
  {
    result = qword_100103288;
    if (qword_100103288)
    {
      fprintf(qword_100103288, "%s: ", cdevname);
      byte_100103308 = 1;
      v4 = qword_100103288;

      return fputs(a2, v4);
    }
  }

  return result;
}

void outstring(uint64_t a1, const char *a2)
{
  if (live_fsck)
  {
    sub_100007024(2, &qword_1001032A8, "%s", a2, 0);
  }

  else
  {
    appexPrintFixed(a2);
  }
}

uint64_t sub_100007758(char *__format, va_list a2)
{
  v11 = a2;
  v12 = a2;
  byte_100103308 = 0;
  if (state && *(state + 36) == 3)
  {
    __s = 0;
    vasprintf(&__s, __format, v12);
    v3 = __s;
    if (__s)
    {
      v4 = strlen(__s);
      v7[0] = 0;
      v7[1] = __s;
      v8 = 0x100000005uLL;
      v9 = 0;
      if (v4)
      {
        if (__s[v4 - 1] == 10)
        {
          __s[v4 - 1] = 0;
          v3 = __s;
        }
      }

      fsckPrintXML(fsck_apfs_ctx, v7, v3, 0);
      free(__s);
    }
  }

  else if (live_fsck)
  {
    sub_100007024(1, &qword_1001032A8, __format, 0, v12);
  }

  else
  {
    vfprintf(__stderrp, __format, v12);
  }

  if (live_fsck)
  {
    return sub_100007024(1, &qword_100103288, __format, 0, v11);
  }

  result = qword_100103288;
  if (qword_100103288)
  {
    if (byte_100103308)
    {
      if (!strchr(__format, 10))
      {
        return vfprintf(qword_100103288, __format, v11);
      }

      v6 = 0;
    }

    else
    {
      fprintf(qword_100103288, "%s: ", cdevname);
      v6 = strchr(__format, 10) == 0;
    }

    byte_100103308 = v6;
    return vfprintf(qword_100103288, __format, v11);
  }

  return result;
}

char *fsck_printf_debug(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (state)
  {
    if (*(state + 28))
    {
      return sub_100007758(result, &a9);
    }
  }

  return result;
}

void sub_10000798C(const char *a1, const char *a2, va_list a3)
{
  v5 = strlen(a1);
  v6 = vsnprintf(0, 0, a2, a3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6 + 1;
    v8 = malloc_type_malloc(v7 + v5, 0xF1CC683DuLL);
    v9 = strcpy(v8, a1);
    vsnprintf(&v9[v5], v7, a2, a3);
    appexPrintFixed(v8);
    free(v8);
  }
}

void fsck_printf_warn(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = strlen(a1);
  v11 = crc32c(0, a1, v10) & 0x3FF;
  v12 = byte_100103309[v11];
  if (v12 <= 49)
  {
    byte_100103309[v11] = v12 + 1;
    sub_10000798C("warning: ", a1, &a9);
    if (byte_100103309[v11] == 50)
    {
      fsck_printf("Too many warnings of this type generated; suppressing subsequent ones.\n", v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

char *print_wrapped_crypto_state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 4);
  v9 = *(a1 + 8);
  v26 = *(a1 + 2);
  fsck_printf_debug("vers: %u.%u flags: %#x class: %c os: ", a2, a3, a4, a5, a6, a7, a8, *a1);
  fsck_printf_debug("%d%d-%d", v11, v12, v13, v14, v15, v16, v17, HIBYTE(*(a1 + 12)));
  v27 = *(a1 + 18);
  return fsck_printf_debug(" revision: %u key len: %u", v18, v19, v20, v21, v22, v23, v24, *(a1 + 16));
}

char *print_pfkur_tree_key_val_info(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v9 = *a3;
  v10 = a3[1];
  return fsck_printf_debug("inum: %8lld version: %u flags: %u current_offset: %8llu current_ns_offset: %8llu\n", a2, a3, a4, a5, a6, a7, a8, *a2);
}

char *print_fext_tree_key_val_info(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  fsck_printf_debug("obj-id: %8lld type: %-11s\n", a2, a3, a4, a5, a6, a7, a8, *a2);
  v19 = *a3 & 0xFFFFFFFFFFFFFFLL;
  v18 = a3[1];
  return fsck_printf_debug("logical addr: %lld  phys-block-num: %lld  len: %lld  flags: %x\n", v10, v11, v12, v13, v14, v15, v16, a2[1]);
}

void print_jobj_key_val_info(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 > 7)
  {
    v9 = a5;
    v11 = a3;
    v14 = *a2;
    if (a3 <= 0xB && (v14 & 0xF000000000000000) == 0xE000000000000000)
    {
      fsck_printf_debug("obj-id: %8lld type: ???\n", a2, a3, a4, a5, a6, a7, a8, v14);
    }

    else
    {
      v15 = v14 >> 60;
      if (v14 >> 60 == 14)
      {
        LODWORD(v15) = *(a2 + 8);
      }

      v123 = 0;
      v16 = v14;
      jobj_type_to_str(v15);
      fsck_printf_debug("obj-id: %8lld type: %-11s\n", v17, v18, v19, v20, v21, v22, v23, v16);
      if (jkey_validate_len(*(a1 + 40), a2, v11, &v123 + 1) || jval_validate_len(a2, a4, v9, &v123))
      {
        fsck_printf_err("key size (%u)/val size (%u) is invalid\n", v24, v25, v26, v27, v28, v29, v30, v11);
      }

      else if (HIDWORD(v123) <= v11)
      {
        if (v123 <= v9)
        {
          switch(v15)
          {
            case 1:
              v96 = *(a4 + 3);
              v107 = *(a4 + 2);
              fsck_printf_debug(" extentref_tree_oid: %lld sblock_oid: %lld change_time: %llu create_time: %llu\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              if (v9 - 50 >= a4[24])
              {
                v38 = a4[24];
              }

              v87 = *(a4 + 11);
              fsck_printf_debug(" extentref_Tree_type: %u flags: %u name: '%.*s' name_len: %u\n", v31, v32, v33, v34, v35, v36, v37, *(a4 + 10));
              break;
            case 2:
              v89 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              v99 = *(a4 + 1);
              fsck_printf_debug("refcnt %d len %lld owning_obj_id %lld\n", v24, v25, v26, v27, v28, v29, v30, *(a4 + 4));
              break;
            case 3:
              v100 = *(a4 + 2);
              v110 = *(a4 + 3);
              v90 = *a4;
              fsck_printf_debug("private-id: %lld parent-id: %lld cr/mtime: %lld/%lld \n", v24, v25, v26, v27, v28, v29, v30, *(a4 + 1));
              if ((a4[40] & 0xF000) == 0x4000)
              {
                v91 = *(a4 + 14);
                fsck_printf_debug("gen-count: %u nchildren: %d \n", v51, v52, v53, v54, v55, v56, v57, *(a4 + 16));
              }

              else if (*(a4 + 14) >= 2)
              {
                fsck_printf_debug("nlink: %d \n", v51, v52, v53, v54, v55, v56, v57, *(a4 + 14));
              }

              fsck_printf_debug("def-prot-class: %d \n", v51, v52, v53, v54, v55, v56, v57, *(a4 + 15));
              if (a4[41])
              {
                fsck_printf_debug("pad1: 0x%x \n", v77, v78, v79, v80, v81, v82, v83, a4[41]);
              }

              if (*(a4 + 42))
              {
                fsck_printf_debug("uncompressed-size: 0x%llx \n", v77, v78, v79, v80, v81, v82, v83, *(a4 + 42));
              }

              v117 = *(a4 + 6);
              v105 = a4[40];
              v113 = *(a4 + 17);
              v95 = *(a4 + 19);
              fsck_printf_debug("uid/gid/mode: %d/%d/0x%x bsd_flags: 0x%x internal_flags: 0x%llx name: %s\n", v77, v78, v79, v80, v81, v82, v83, *(a4 + 18));
              break;
            case 4:
              v42 = *a4;
              if (v9 - 4 >= a4[1])
              {
                v43 = a4[1];
              }

              fsck_printf_debug("flags: 0x%x data-len: %d name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              if (*a4)
              {
                v76 = *(a4 + 2);
                v104 = *(a4 + 14);
                fsck_printf_debug(" out-of-line data size: %lld (under obj-id: %lld / crypto-id: %lld)\n", v44, v45, v46, v47, v48, v49, v50, *(a4 + 6));
              }

              else
              {
                fsck_printf_debug(" embedded data size: %d\n", v44, v45, v46, v47, v48, v49, v50, a4[1]);
              }

              break;
            case 5:
              v40 = *a4;
              a4[4];
              fsck_printf_debug("sib-id: %lld parent-id: %lld name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 8));
              break;
            case 6:
              fsck_printf_debug("refcnt %d\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              break;
            case 7:
              v121 = *(a4 + 2);
              v122 = *(a4 + 5);
              fsck_printf_debug("refcnt: %d \n", v24, v25, v26, v27, v28, v29, v30, *a4);
              print_wrapped_crypto_state(&v121, v58, v59, v60, v61, v62, v63, v64);
              break;
            case 8:
              v111 = *a4 & 0xFFFFFFFFFFFFFFLL;
              v92 = *(a4 + 1);
              v101 = *(a4 + 2);
              fsck_printf_debug("logical addr: %lld  phys-block-num: %lld  crypto-id: %lld  len: %lld  flags: %x\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 8));
              break;
            case 9:
              if ((*(*(a1 + 40) + 56) & 9) != 0)
              {
                v73 = a4[8];
                v74 = *(a4 + 1);
                *(a2 + 8);
                fsck_printf_debug("file-id: %6lld flags: %d date-added: %lld hash: 0x%x name-len: %d name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              }

              else
              {
                v84 = a4[8];
                v85 = *(a4 + 1);
                if (v11 - 10 >= *(a2 + 8))
                {
                  v86 = *(a2 + 8);
                }

                fsck_printf_debug("file-id: %6lld flags: %d date-added: %lld name-len: %d name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              }

              break;
            case 10:
              v103 = *(a4 + 3);
              fsck_printf_debug("num children: %lld total size: %lld gen-count: %lld\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              if (*(a4 + 2))
              {
                fsck_printf_debug(" chained-key: %lld\n", v66, v67, v68, v69, v70, v71, v72, *(a4 + 2));
              }

              break;
            case 11:
              v39 = v11 - 10;
              if (v39 >= *(a2 + 8))
              {
                LOWORD(v39) = *(a2 + 8);
              }

              v98 = *(a2 + 8);
              v109 = *a4;
              fsck_printf_debug(" name: '%.*s' name_len: %u snap_xid: %lld\n", v24, v25, v26, v27, v28, v29, v30, v39);
              break;
            case 12:
              fsck_printf_debug("sib-map: %lld\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              break;
            case 13:
              v41 = *(a2 + 8);
              if (HIBYTE(v41) == 2)
              {
                v114 = *(a4 + 1);
                v118 = a4[12];
                v106 = *a4;
                fsck_printf_debug(" type: %u hash: 0x%llx total_count: %llu physical_size: %llu flags: 0x%x\n", v24, v25, v26, v27, v28, v29, v30, 2);
              }

              else if (HIBYTE(v41) == 1)
              {
                fsck_printf_debug(" type: %u logical addr: %lld\n", v24, v25, v26, v27, v28, v29, v30, 1);
              }

              else
              {
                fsck_printf_debug(" type: %u\n", v24, v25, v26, v27, v28, v29, v30, SHIBYTE(v41));
              }

              break;
            case 16:
              v115 = *(a4 + 4);
              v119 = *(a4 + 5);
              v97 = *a4;
              v108 = *(a4 + 1);
              v88 = *(a2 + 20);
              fsck_printf_debug(" atime: %llu file_id: %llu file_size: %llu dstream_id: %llu flags: 0x%x owning_uid: %u\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 12));
              break;
            case 17:
              v65 = *(a2 + 12);
              v93 = *a4;
              fsck_printf_debug(" file_id: %llu dstream_id: %llu\n", v24, v25, v26, v27, v28, v29, v30, v65);
              break;
            case 18:
              v116 = *(a4 + 4);
              v120 = *(a4 + 12);
              v102 = *(a4 + 2);
              v112 = *(a4 + 5);
              fsck_printf_debug(" descendants: %llu phys_size: %llu resource_fork_size: %llu gen_count: %llu chained_key: %llu flags: 0x%x\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              break;
            case 19:
              v75 = *(a2 + 12);
              v94 = *(a2 + 20);
              fsck_printf_debug(" private_id: %llu, file_id: %llu\n", v24, v25, v26, v27, v28, v29, v30, v75);
              break;
            default:
              return;
          }
        }

        else
        {
          fsck_printf_err("val size is too small, actual: %u, minimum: %u\n", v24, v25, v26, v27, v28, v29, v30, v9);
        }
      }

      else
      {
        fsck_printf_err("key size is too small, actual: %u, minimum: %u\n", v24, v25, v26, v27, v28, v29, v30, v11);
      }
    }
  }

  else
  {

    fsck_printf_debug("obj-id: ??? type: ???\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t authapfs_get_hash_info(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t authapfs_digest(uint64_t *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v11 = *a1;
    if (*a1 >= 0x41)
    {
      sub_1000A3D50();
    }

    v21 = &v21;
    __chkstk_darwin(a1);
    bzero(&v21 - ((2 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 2 * v11);
    v12 = (a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8;
    __chkstk_darwin(v13);
    v15 = &v21 - v14;
    bzero(&v21 - v14, v16);
    ccdigest_init();
    v17 = 2 * (a2 & 0x7FFFFFFF);
    if (v17 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v17;
      a4 += v17;
    }

    while (v7 >= v17);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v18;
        v7 -= v18;
      }

      while (v7);
    }

    (a1[7])(a1, v15, a5);
    v19 = a1[1] + a1[2];
    return cc_clear();
  }

  else
  {

    return ccdigest();
  }
}

uint64_t graft_blockmap_lut_tree_key_compare(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, int *a6)
{
  v6 = *a2 & 0x7FFFFFFF;
  v7 = *a4 & 0x7FFFFFFF;
  v8 = v6 >= v7;
  v9 = v6 > v7;
  if (!v8)
  {
    v9 = -1;
  }

  *a6 = v9;
  return 0;
}

unint64_t sub_1000085D0(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, 0xB0000000CLL);
        v17 = vmull_u32(*v13.i8, 0x700000008);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, 0xF00000010), *v14.i8, 0x300000004);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *qword_100008590);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&qword_100008590[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100008590[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&qword_100008590[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, 0xB0000000CLL);
          v17 = vmlal_u32(v23, *v13.i8, 0x700000008);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, 0xF00000010), *v14.i8, 0x300000004);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_100008590[4]), vmlal_high_u32(v17, v12, *&qword_100008590[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *qword_100008590), v14, *&qword_100008590[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, 0x700000008), *v28.i8, 0x300000004), v27, *&qword_100008590[4]), v28, *&qword_100008590[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, 0x300000004), v30, *&qword_100008590[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

uint64_t gbitmap_key_compare(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_1000087AC(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t sub_1000087C0(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  v5 = *a3;
  a1[4] = a3[2];
  a1[5] = v5;
  a1[6] = 0;
  return result;
}

uint64_t sub_1000087E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 376) = *(a1 + 56);
  *(a1 + 408) = 8 * *(a1 + 48) - 256;
  if (a2)
  {
    *(a1 + 384) = *(a2 + 24);
  }

  return 0;
}

uint64_t sub_100008814(void *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[1];
  v12 = *(*a1 + 392);
  if (v11)
  {
    v13 = a1[1];
  }

  else
  {
    v13 = *(*a1 + 392);
  }

  v65 = a1[2];
  v70 = 0;
  if (v11 && obj_modify(v11, 0, a5, a4, a5, a6, a7, a8))
  {
    if (obj_type(v11) != 13)
    {
      v14 = v11[48] + 212;
    }

    obj_oid(v11);
    log_err("%s:%d: %s obj_modify(fs %lld) failed: %d\n", v15, v16, v17, v18, v19, v20, v21, "gbitmap_reap");
  }

  if (sub_100008BA4(a1, 0, 0, &v70))
  {
    if (obj_type(v13) != 13)
    {
      v29 = v13[48] + 212;
    }

    log_err("%s:%d: %s Can't get tree: %d\n", v22, v23, v24, v25, v26, v27, v28, "gbitmap_reap");
  }

  if (v70)
  {
    v30 = *a3;
    v68 = 0;
    v69 = v30;
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    bt_iterator_init(v66, v70, 0, 0, &v69, 8, 8u, &v68, 8u);
    v32 = v31;
    v33 = 1023;
    if (v31)
    {
LABEL_28:
      if (v32 != 2)
      {
        if (obj_type(v13) != 13)
        {
          v55 = v13[48] + 212;
        }

        log_err("%s:%d: %s Tree iteration threw %d at cursor %llu\n", v47, v48, v49, v50, v51, v52, v53, "gbitmap_reap");
      }
    }

    else
    {
      while (!bt_iterator_ended(v66))
      {
        if ((v65 & 0x40000000) != 0 && (v34 = v68, (v68 & 0x8000000000000000) != 0))
        {
          v68 &= ~0x8000000000000000;
          spaceman_free(v13, 64, v34 & 0x7FFFFFFFFFFFFFFFLL, 1, a5);
        }

        else
        {
          v35 = *(a1 + 4);
          if (v11)
          {
            v36 = obj_oid(v11);
          }

          else
          {
            v36 = 0;
          }

          v37 = *(v12 + 392);
          v38 = obj_size_phys(a1);
          if (obj_delete_and_free_by_oid(v37, v35 & 0xD8000000 | 0x1B, v38, v36, v68, a5))
          {
            if (obj_type(v13) != 13)
            {
              v46 = v13[48] + 212;
            }

            log_err("%s:%d: %s deletion threw %d for cursor %llu, oid %llu, oflags 0x%x\n", v39, v40, v41, v42, v43, v44, v45, "gbitmap_reap");
          }
        }

        *a3 = v69 + 1;
        if (!v33)
        {
          v54 = 36;
          goto LABEL_39;
        }

        v32 = bt_iterator_next(v66);
        --v33;
        if (v32)
        {
          goto LABEL_28;
        }
      }
    }

    if (btree_delete(v70, a5, 0))
    {
      if (obj_type(v13) != 13)
      {
        v64 = v13[48] + 212;
      }

      obj_oid(v70);
      log_err("%s:%d: %s Tree delete oid %llu threw %d\n", v56, v57, v58, v59, v60, v61, v62, "gbitmap_reap");
    }
  }

  obj_delete_and_free(a1, a5);
  v54 = 0;
LABEL_39:
  if (v70)
  {
    obj_release(v70);
  }

  return v54;
}

uint64_t sub_100008BA4(void *a1, unint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (a1[1])
  {
    v8 = a1[1];
  }

  else
  {
    v8 = *(*a1 + 392);
  }

  *a4 = 0;
  v9 = obj_flags(a1);
  return btree_get(v8, v9 & 0xFFFFFC00, *(a1[47] + 32), a2, 3, a3 != 0, 26, gbitmap_key_compare, a3, a4);
}

uint64_t apfs_clonegroup_key_cmp(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == 17 && a5 == 17)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == 25 && a5 == 25)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t pfkur_tree_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

unint64_t fletcher64_set_cksum(unint64_t *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  result = sub_1000085D0(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(result) + result - 0xFFFFFFFF * ((((HIDWORD(result) + result) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  *a1 = v8 | (~(v8 + result + ((((v8 + result) * 0x200000003uLL) >> 64) >> 1)) << 32);
  return result;
}

unint64_t fletcher64_verify_cksum(void *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  v7 = sub_1000085D0(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(v7) + v7 - 0xFFFFFFFF * ((((HIDWORD(v7) + v7) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  return (v8 | (~(v8 + v7 + ((((v8 + v7) * 0x200000003uLL) >> 64) >> 1)) << 32)) ^ *a1;
}

uint64_t rolling_stats_init(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = new_lock(a1);
  if (!result)
  {
    v8.tv_sec = 0;
    v8.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
    *(a1 + 64) = v8.tv_sec / a2 * a2;
    *(a1 + 72) = a2;
    *(a1 + 76) = a3;
    v7 = _apfs_calloc(a3, 8uLL);
    *(a1 + 80) = v7;
    if (v7)
    {
      result = 0;
      *(a1 + 88) = 0;
    }

    else
    {
      free_lock(a1);
      return 12;
    }
  }

  return result;
}

uint64_t rolling_stats_destroy(uint64_t a1)
{
  _apfs_free(*(a1 + 80), 8 * *(a1 + 76));
  *(a1 + 80) = 0;

  return free_lock(a1);
}

uint64_t nx_corruption_detected_int(uint64_t a1)
{
  if (a1)
  {
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(a1);
    v17 = *(a1 + 384) + 212;
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: %s Container corruption detected by %s:%u!\n", v3, v4, v5, v6, v7, v8, "nx_corruption_detected_int");
  }

  else
  {
    v9 = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(v9, "%s:%d: Container corruption detected by %s:%u!\n", v10, v11, v12, v13, v14, v15, "nx_corruption_detected_int");
  }

  return 92;
}

unint64_t obj_checksum_verify_phys(uint64_t *a1, int a2, int8x16_t a3, int8x16_t a4)
{
  result = fletcher64_verify_cksum(a1, (a1 + 1), (a2 - 8), 0, a3, a4);
  if (result)
  {
    v23 = *(a1 + 7);
    v21 = a1[1];
    v22 = *(a1 + 6);
    v20 = *a1;
    log_err("%s:%d: failed: cksum 0x%016llx, oid 0x%llx, type 0x%x/0x%x, size %d\n", v6, v7, v8, v9, v10, v11, v12, "obj_checksum_verify_phys");
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", v14, v15, v16, v17, v18, v19, "nx_corruption_detected_int");
    return 92;
  }

  return result;
}

uint64_t nx_superblock_sanity_check_extent(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v5 = (a2 + 48);
  if (!a2)
  {
    v5 = (a1 + 40);
  }

  v6 = *v5;
  if ((a5 ^ 1u) > a3 || v6 - 1 < a3)
  {
    return 22;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (v6 - a3 >= a4)
  {
    return 0;
  }

  return 22;
}

unint64_t nx_check_superblock(uint64_t a1, unsigned int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  if (a2 < 0x1000)
  {
    return 22;
  }

  if (*(a1 + 32) != 1112758350)
  {
    return 79;
  }

  if (a3 || (v8 = *(a1 + 36), v8 == a2))
  {
    result = obj_checksum_verify_phys(a1, a2, a4, a5);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 36);
  }

  v9 = *(a1 + 24);
  v10 = v9 != -2147483647;
  if (v9 == -2147483647)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(a1 + 28))
  {
    v10 = v11;
  }

  if (*(a1 + 8) != 1)
  {
    ++v10;
  }

  if (v8 < 0x1000)
  {
    ++v10;
  }

  if (v8 <= 0x10000)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (*(a1 + 88) < 0x400uLL)
  {
    ++v12;
  }

  v13 = *(a1 + 104);
  if ((v13 & 0x7FFFFFF8) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  v15 = v13 & 0x7FFFFFFF;
  v16 = *(a1 + 40);
  if ((v13 & 0x7FFFFFFF) > 0x1000)
  {
    ++v14;
  }

  if (v16 <= v15)
  {
    ++v14;
  }

  v17 = *(a1 + 112);
  v18 = v16 - 1;
  v20 = v17 < 1 || v18 < v17;
  if ((v13 & 0x80000000) != 0)
  {
    v14 += v20;
  }

  else if ((v20 & 1) != 0 || v13 >= 2 && v16 - v17 < v13)
  {
    ++v14;
  }

  if (*(a1 + 128) >= v15)
  {
    ++v14;
  }

  v21 = *(a1 + 108);
  if ((v21 & 0x7FFFFFF8) != 0)
  {
    v22 = v14;
  }

  else
  {
    v22 = v14 + 1;
  }

  v23 = v21 & 0x7FFFFFFF;
  if (v16 > (v21 & 0x7FFFFFFF))
  {
    v24 = v22;
  }

  else
  {
    v24 = v22 + 1;
  }

  v25 = *(a1 + 120);
  v27 = v25 < 1 || v18 < v25;
  if ((v21 & 0x80000000) != 0)
  {
    v24 += v27;
    LODWORD(v21) = 1;
  }

  else if ((v27 & 1) != 0 || v21 >= 2 && v16 - v25 < v21)
  {
    ++v24;
  }

  if (*(a1 + 132) < v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  if ((v13 & 0x80000000) != 0)
  {
    LODWORD(v13) = 1;
  }

  if (v17 >= v25)
  {
    v13 = v21;
  }

  else
  {
    v13 = v13;
  }

  if (v17 >= v25)
  {
    v29 = *(a1 + 120);
  }

  else
  {
    v29 = *(a1 + 112);
  }

  if (v17 <= v25)
  {
    v17 = *(a1 + 120);
  }

  if ((v29 + v13) <= v17)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 + 1;
  }

  if ((*(a1 + 64) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v30)
    {
      goto LABEL_105;
    }

    return 0;
  }

  v31 = *(a1 + 140);
  if (!*(a1 + 152))
  {
    ++v30;
  }

  if (!*(a1 + 160))
  {
    ++v30;
  }

  if (!(a3 | v31))
  {
    if (!*(a1 + 148) && !*(a1 + 136) && !*(a1 + 144))
    {
      goto LABEL_104;
    }

    v31 = 0;
  }

  if (*(a1 + 136) >= v15)
  {
    ++v30;
  }

  v32 = *(a1 + 148);
  if (*(a1 + 144) >= v23)
  {
    ++v30;
  }

  if (v31 < 2)
  {
    ++v30;
  }

  if (v31 < v15)
  {
    v33 = v30;
  }

  else
  {
    v33 = v30 + 1;
  }

  if (v32 < 2)
  {
    ++v33;
  }

  if (v32 < v23)
  {
    v30 = v33;
  }

  else
  {
    v30 = v33 + 1;
  }

LABEL_104:
  if (v30 | (*(a1 + 180) > 0x64u))
  {
LABEL_105:
    is_panic_on_corruption_enabled = nx_is_panic_on_corruption_enabled(0);
    log_corrupt(is_panic_on_corruption_enabled, "%s:%d: Container corruption detected by %s:%u!\n", v35, v36, v37, v38, v39, v40, "nx_corruption_detected_int");
    return 92;
  }

  return 0;
}

uint64_t supplemental_tree_create(pthread_mutex_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v16 = 0;
  v10 = fext_tree_key_cmp;
  if (a3 == 5)
  {
    v11 = 0x20000001FLL;
    v13 = 16;
    v12 = 16;
  }

  else
  {
    if (a3 != 6)
    {
      log_err("%s:%d: %s unsupported tree type: %d\n", a2, a3, a4, a5, a6, a4, a8, "supplemental_tree_get_descriptor");
      return 45;
    }

    v11 = 32;
    v10 = pfkur_tree_key_cmp;
    v12 = 24;
    v13 = 8;
  }

  v17[1] = 0;
  v18 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17[0] = v10;
  v17[2] = v11;
  if (a2 != 2)
  {
    extended = 22;
    goto LABEL_9;
  }

  extended = btree_create_extended(a1, a2 & 0xFFFF0000, 0, v13, v12, v17, v9, &v16);
  if (extended)
  {
LABEL_9:
    log_err("%s:%d: %s Failed to create supplemental tree (type %d): %d\n", a2, a3, v13, v12, a6, v9, a8, "supplemental_tree_create");
    return extended;
  }

  *a5 = obj_oid(v16);
  obj_release(v16);
  return extended;
}

uint64_t supplemental_tree_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v10 = fext_tree_key_cmp;
  if (a3 == 5)
  {
    v11 = 0x20000001FLL;
  }

  else
  {
    if (a3 != 6)
    {
      log_err("%s:%d: %s unsupported tree type: %d\n", a2, a3, a4, a5, a6, a7, a8, "supplemental_tree_get_descriptor");
      return 45;
    }

    v11 = 32;
    v10 = pfkur_tree_key_cmp;
  }

  v29 = 0;
  if (!a5)
  {
    tree = jfs_get_tree(a1, a3, a4, &v29);
    if (tree)
    {
      return tree;
    }

    goto LABEL_11;
  }

  v30[1] = 0;
  v31 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v30[0] = v10;
  v30[2] = v11;
  if (a2 != 2)
  {
    tree = 22;
    goto LABEL_15;
  }

  tree = btree_get_extended(a1, a2 & 0xFFFF0000, a5, 0, 0, v30, 0, &v29);
  if (tree)
  {
LABEL_15:
    strerror(tree);
    log_err("%s:%d: %s Failed to get supplemental tree (type %d, oid %llu): %d (%s)\n", v21, v22, v23, v24, v25, v26, v27, "supplemental_tree_destroy");
    return tree;
  }

LABEL_11:
  v13 = btree_delete(v29, a4, a6);
  tree = v13;
  if (v13)
  {
    strerror(v13);
    log_err("%s:%d: %s Failed to delete supplemental tree (type %d): %d (%s)\n", v14, v15, v16, v17, v18, v19, v20, "supplemental_tree_destroy");
  }

  obj_release(v29);
  return tree;
}

unint64_t parse_size(const char *a1)
{
  __endptr = 0;
  result = strtoull(a1, &__endptr, 10);
  v3 = __endptr;
  v4 = *__endptr;
  if (v4 > 0x66)
  {
    if (*__endptr <= 0x6Cu)
    {
      if (v4 != 103)
      {
        if (v4 != 107)
        {
          goto LABEL_19;
        }

LABEL_9:
        result <<= 10;
LABEL_18:
        v3 = __endptr + 1;
        goto LABEL_19;
      }

LABEL_16:
      result <<= 30;
      goto LABEL_18;
    }

    if (v4 != 109)
    {
      if (v4 != 116)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_17:
    result <<= 20;
    goto LABEL_18;
  }

  if (*__endptr <= 0x4Cu)
  {
    if (v4 != 71)
    {
      if (v4 != 75)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (v4 == 77)
  {
    goto LABEL_17;
  }

  if (v4 == 84)
  {
LABEL_15:
    result <<= 40;
    goto LABEL_18;
  }

LABEL_19:
  if (v3 == a1)
  {
    return -1;
  }

  if (*v3)
  {
    return -1;
  }

  return result;
}

char *parse_nx_format_options(char *__s1, uuid_t out)
{
  v3 = __s1;
  if (!__s1)
  {
    *(out + 4) = 0;
    *out = 0u;
    *(out + 1) = 0u;
    uuid_generate(out);
    *(out + 5) = 1073741826;
    return v3;
  }

  v4 = strdup(__s1);
  if (v4)
  {
    v5 = v4;
    __lasts = 0;
    v6 = strtok_r(v4, ",", &__lasts);
    if (!v6)
    {
LABEL_24:
      v3 = 0;
      goto LABEL_27;
    }

    v7 = v6;
    while (1)
    {
      if (!strncasecmp(v7, "blocksize=", 0xAuLL))
      {
        v10 = parse_size(v7 + 10);
        if (v10 - 65537 < 0xFFFFFFFFFFFF0FFFLL || ((v10 + 0x1FFFF) & v10) != 0)
        {
LABEL_26:
          v3 += v7 - v5;
LABEL_27:
          free(v5);
          return v3;
        }

        *(out + 4) = v10;
      }

      else
      {
        if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
        {
          v9 = 1073741826;
LABEL_15:
          *(out + 5) = v9;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "omap=ephemeral"))
        {
          v9 = -2147483646;
          goto LABEL_15;
        }

        if (!strcasecmp(v7, "defragment=yes"))
        {
          v11 = *(out + 12) & 0xFFFC | 2;
LABEL_22:
          *(out + 12) = v11;
          goto LABEL_23;
        }

        if (!strcasecmp(v7, "defragment=no"))
        {
          v11 = *(out + 12) & 0xFFFC | 1;
          goto LABEL_22;
        }

        if (strncasecmp(v7, "maxfs=", 6uLL))
        {
          goto LABEL_26;
        }

        v8 = parse_size(v7 + 6);
        if (v8 >= 0x65)
        {
          goto LABEL_26;
        }

        out[26] = v8;
      }

LABEL_23:
      v7 = strtok_r(0, ",", &__lasts);
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  return v3;
}

char *parse_apfs_format_options(char *a1, uuid_t out)
{
  v3 = a1;
  if (!a1)
  {
    *(out + 29) = 0u;
    *(out + 30) = 0u;
    *(out + 27) = 0u;
    *(out + 28) = 0u;
    *(out + 25) = 0u;
    *(out + 26) = 0u;
    *(out + 23) = 0u;
    *(out + 24) = 0u;
    *(out + 21) = 0u;
    *(out + 22) = 0u;
    *(out + 19) = 0u;
    *(out + 20) = 0u;
    *(out + 17) = 0u;
    *(out + 18) = 0u;
    *(out + 15) = 0u;
    *(out + 16) = 0u;
    *(out + 13) = 0u;
    *(out + 14) = 0u;
    *(out + 11) = 0u;
    *(out + 12) = 0u;
    *(out + 9) = 0u;
    *(out + 10) = 0u;
    *(out + 7) = 0u;
    *(out + 8) = 0u;
    *(out + 5) = 0u;
    *(out + 6) = 0u;
    *(out + 3) = 0u;
    *(out + 4) = 0u;
    *(out + 1) = 0u;
    *(out + 2) = 0u;
    *out = 0u;
    uuid_generate(out);
    *(out + 2) = xmmword_1000AADB0;
    *(out + 123) = 1073741826;
    *(out + 12) = -1;
    *(out + 111) = getuid();
    *(out + 112) = getgid();
    *(out + 26) &= ~0x80u;
    __strlcpy_chk();
    *(out + 26) = *(out + 26) & 0xFBF3 | 8;
    return v3;
  }

  if (!strncasecmp(a1, "uuid_from_role", 0xEuLL))
  {
    v21 = *(out + 27);
    if (v21 <= 0xBF)
    {
      if (*(out + 27) <= 7u)
      {
        if (*(out + 27) <= 1u)
        {
          if (*(out + 27))
          {
            v22 = "61706673-7575-6964-0001-766f6c756d00";
          }

          else
          {
            v22 = "61706673-7575-6964-0000-766f6c756d00";
          }

          goto LABEL_121;
        }

        if (v21 == 2)
        {
          v22 = "61706673-7575-6964-0002-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 4)
        {
          v22 = "61706673-7575-6964-0004-766f6c756d00";
          goto LABEL_121;
        }
      }

      else if (*(out + 27) <= 0x1Fu)
      {
        if (v21 == 8)
        {
          v22 = "61706673-7575-6964-0008-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 16)
        {
          v22 = "61706673-7575-6964-0010-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x20u:
            v22 = "61706673-7575-6964-0020-766f6c756d00";
            goto LABEL_121;
          case 0x40u:
            v22 = "61706673-7575-6964-0040-766f6c756d00";
            goto LABEL_121;
          case 0x80u:
            v22 = "61706673-7575-6964-0080-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) > 0x1FFu)
    {
      if (*(out + 27) <= 0x27Fu)
      {
        if (v21 == 512)
        {
          v22 = "61706673-7575-6964-0200-766f6c756d00";
          goto LABEL_121;
        }

        if (v21 == 576)
        {
          v22 = "61706673-7575-6964-0240-766f6c756d00";
          goto LABEL_121;
        }
      }

      else
      {
        switch(v21)
        {
          case 0x280u:
            v22 = "61706673-7575-6964-0280-766f6c756d00";
            goto LABEL_121;
          case 0x2C0u:
            v22 = "61706673-7575-6964-02c0-766f6c756d00";
            goto LABEL_121;
          case 0x300u:
            v22 = "61706673-7575-6964-0300-766f6c756d00";
            goto LABEL_121;
        }
      }
    }

    else if (*(out + 27) <= 0x13Fu)
    {
      if (v21 == 192)
      {
        v22 = "61706673-7575-6964-00c0-766f6c756d00";
        goto LABEL_121;
      }

      if (v21 == 256)
      {
        v22 = "61706673-7575-6964-0100-766f6c756d00";
        goto LABEL_121;
      }
    }

    else
    {
      switch(v21)
      {
        case 0x140u:
          v22 = "61706673-7575-6964-0140-766f6c756d00";
          goto LABEL_121;
        case 0x180u:
          v22 = "61706673-7575-6964-0180-766f6c756d00";
          goto LABEL_121;
        case 0x1C0u:
          v22 = "61706673-7575-6964-01c0-766f6c756d00";
LABEL_121:
          uuid_parse(v22, out);
          return 0;
      }
    }

    return strerror(22);
  }

  if (!strncasecmp(v3, "password=", 9uLL))
  {
    v3 += 9;
    __strlcpy_chk();
    v23 = strnlen(v3, 0x80uLL);
    *(out + 110) = v23;
    if ((v23 & 0xFFFFFF80) == 0)
    {
      return 0;
    }

    return v3;
  }

  if (!strncasecmp(v3, "empty_password", 0xFuLL))
  {
    v3 = 0;
    out[312] = 0;
    *(out + 110) = 0;
    return v3;
  }

  if (!strncasecmp(v3, "volname=", 8uLL))
  {
    __strlcpy_chk();
    return 0;
  }

  v4 = strdup(v3);
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  __lasts = 0;
  v6 = strtok_r(v4, ",", &__lasts);
  if (!v6)
  {
    v3 = 0;
    goto LABEL_109;
  }

  v7 = v6;
  v8 = "fsquota=";
  v9 = "fsindex=";
  while (1)
  {
    if (!strncasecmp(v7, "fssize=", 7uLL))
    {
      v11 = parse_size(v7 + 7);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v11;
LABEL_36:
      *(out + 3) = v11;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "fsreserve=", 0xAuLL))
    {
      v12 = parse_size(v7 + 10);
      if (v12 == -1)
      {
        goto LABEL_108;
      }

      *(out + 2) = v12;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, v8, 8uLL))
    {
      v11 = parse_size(v7 + 8);
      if (v11 == -1)
      {
        goto LABEL_108;
      }

      goto LABEL_36;
    }

    if (!strncasecmp(v7, v9, 8uLL))
    {
      break;
    }

    if (!strcasecmp(v7, "omap=btree") || !strcasecmp(v7, "omap=physical"))
    {
      v13 = 1073741826;
LABEL_40:
      *(out + 8) = v13;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "omap=ephemeral"))
    {
      v13 = -2147483646;
      goto LABEL_40;
    }

    if (!strcasecmp(v7, "fstree=btree"))
    {
      *(out + 36) = 0x4000000200000002;
      *(out + 11) = 1073741826;
      *(out + 123) = 1073741826;
      goto LABEL_37;
    }

    if (!strcasecmp(v7, "encrypted"))
    {
      v10 = *(out + 26) | 1;
LABEL_55:
      *(out + 26) = v10;
      goto LABEL_37;
    }

    if (!strncasecmp(v7, "role=", 5uLL))
    {
      v17 = parse_str_to_role(v7 + 5);
      if (v17 == -1)
      {
        goto LABEL_108;
      }

      *(out + 27) = v17;
    }

    else
    {
      if (!strcasecmp(v7, "case=insensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 4;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "case=sensitive"))
      {
        v10 = *(out + 26) & 0xFFF3 | 8;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=yes"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x20;
        goto LABEL_55;
      }

      if (!strcasecmp(v7, "defragment=no"))
      {
        v10 = *(out + 26) & 0xFFCF | 0x10;
        goto LABEL_55;
      }

      if (!strncasecmp(v7, "uid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0;
        v18 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v18 == -1)
        {
          goto LABEL_108;
        }

        *(out + 111) = v18;
        goto LABEL_45;
      }

      if (!strncasecmp(v7, "gid=", 4uLL))
      {
        v14 = v8;
        v15 = v9;
        __endptr = 0;
        v19 = strtoull(v7 + 4, &__endptr, 10);
        if (__endptr == v7 + 4 || *__endptr || v19 == -1)
        {
          goto LABEL_108;
        }

        *(out + 112) = v19;
        goto LABEL_45;
      }

      if (!strcasecmp(v7, "sealed=yes"))
      {
        *(out + 26) |= 0x80u;
        *(out + 122) = 1;
        *(out + 9) = 2;
        goto LABEL_37;
      }

      if (!strcasecmp(v7, "conformance"))
      {
        goto LABEL_108;
      }

      if (strncasecmp(v7, "hash=", 5uLL))
      {
        if (!strcasecmp(v7, "unwritten"))
        {
          v10 = *(out + 26) | 0x400;
        }

        else
        {
          if (strcasecmp(v7, "unwritten=no"))
          {
            goto LABEL_108;
          }

          v10 = *(out + 26) & 0xFBFF;
        }

        goto LABEL_55;
      }

      v20 = sub_10000A1EC(v7 + 5);
      if (v20 == -1)
      {
        goto LABEL_108;
      }

      *(out + 122) = v20;
    }

LABEL_37:
    v7 = strtok_r(0, ",", &__lasts);
    if (!v7)
    {
      v3 = 0;
      goto LABEL_109;
    }
  }

  v14 = v8;
  v15 = v9;
  __endptr = 0;
  v16 = strtoull(v7 + 8, &__endptr, 10);
  if (__endptr != v7 + 8 && !*__endptr && v16 != -1)
  {
    *(out + 12) = v16;
LABEL_45:
    v9 = v15;
    v8 = v14;
    goto LABEL_37;
  }

LABEL_108:
  v3 += v7 - v5;
LABEL_109:
  free(v5);
  return v3;
}

uint64_t sub_10000A1EC(const char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strncasecmp(a1, "sha256", 7uLL))
  {
    return 1;
  }

  if (!strncasecmp(a1, "sha512_256", 0xBuLL))
  {
    return 5;
  }

  if (!strncasecmp(a1, "sha384", 7uLL))
  {
    return 3;
  }

  if (!strncasecmp(a1, "sha512", 7uLL))
  {
    return 4;
  }

  if (!strncmp(a1, "sha3_256_4k", 0xCuLL))
  {
    return 262;
  }

  if (!strncmp(a1, "sha3_384_4k", 0xCuLL))
  {
    return 263;
  }

  if (!strncmp(a1, "sha3_512_4k", 0xCuLL))
  {
    return 264;
  }

  if (!strncmp(a1, "sha3_256", 9uLL))
  {
    return 6;
  }

  if (!strncmp(a1, "sha3_384", 9uLL))
  {
    return 7;
  }

  if (!strncmp(a1, "sha3_512", 9uLL))
  {
    return 8;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10000A35C(void *a1)
{
  v1 = a1[7];
  a1[47] = v1;
  a1[48] = v1 + 32;
  return 0;
}

uint64_t fs_lookup_snapshot_metadata_by_xid(uint64_t a1, uint64_t a2, unsigned __int16 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17[0] = 5242881;
  v17[1] = a2;
  v15 = lookup_jobj(a1, 3, 0, v17, a3, a6, a7, a8);
  if (v15)
  {
    log_err("%s:%d: %s Couldn't find snap_meta for xid %llu: %d\n", v8, v9, v10, v11, v12, v13, v14, "fs_lookup_snapshot_metadata_by_xid");
  }

  return v15;
}

uint64_t fs_delete_clone_superblock(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(*(a1 + 392) + 392);
  v7 = 0;
  v5 = obj_get(v4, 0x40000000, a2, &apfs_desc, 0, 0, 0, 0, &v7);
  if (!v5)
  {
    obj_delete_and_free(v7, a3);
    obj_release(v7);
  }

  return v5;
}

uint64_t fs_delete_supplemental_tree(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(*(a1 + 392) + 392);
  v18 = 0;
  result = obj_get(v9, 0x40000000, a3, &apfs_desc, 0, 0, 0, a4, &v18);
  if (!result)
  {
    v11 = v18[47];
    if (a2 == 5)
    {
      v12 = 1040;
      v13 = 1032;
    }

    else
    {
      if (a2 != 6)
      {
        obj_release(v18);
        return 45;
      }

      v12 = 1044;
      v13 = 1048;
    }

    v14 = *(v11 + v12);
    v15 = *(v11 + v13);
    obj_release(v18);
    if (v15)
    {
      return supplemental_tree_destroy(a1, v14, a2, a4, v15, a5, v16, v17);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fs_delete_snapshot_metadata_tree(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0;
  tree = jfs_get_tree(a1, 3, 0, &v9);
  if (tree)
  {
    return tree;
  }

  v7 = btree_delete(v9, a2, a3);
  obj_release(v9);
  if (!v7)
  {
    pthread_mutex_lock((a1 + 1480));
    *(*(a1 + 376) + 152) = 0;
    fs_sb_dirty(a1, a2);
    pthread_mutex_unlock((a1 + 1480));
  }

  return v7;
}

uint64_t get_timestamp()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v1);
  return timespec_to_apfs_timestamp(&v1.tv_sec);
}

uint64_t timespec_to_apfs_timestamp(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 / 1000000000;
  v4 = v2 % 1000000000;
  if (*a1 < 0 && v2 >= 1)
  {
    v5 = v3 + 1;
    v4 -= 1000000000;
  }

  else
  {
    v6 = v2 >= 0;
    if (v2 < 0)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = v2 / 1000000000;
    }

    if (v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1000000000;
    }

    if (v1 >= 1)
    {
      v4 = v7;
    }

    else
    {
      v5 = v3;
    }
  }

  v8 = v1 + v5;
  if (__OFADD__(v1, v5) || (v9 = 1000000000 * v8, (v8 * 1000000000) >> 64 != (1000000000 * v8) >> 63) || (result = v4 + v9, __OFADD__(v4, v9)))
  {
    if (v1 > 0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      return 0x8000000000000000;
    }
  }

  return result;
}

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = 0;
  if (*(a1 + 637) == 1)
  {
    v32 = *(a1 + 384) + 212;
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_metazone_init");
    return 0;
  }

  v35 = 0;
  v36 = 0;
  v34 = 0;
  v8 = spaceman_get(a1, &v33);
  if (v8)
  {
    return v8;
  }

  v10 = v33;
  if (!v33)
  {
    return 19;
  }

  if (!*(v33 + 376))
  {
    v8 = 19;
    goto LABEL_32;
  }

  if (*(v33 + 1112) & 1) != 0 || (*(v33 + 1216))
  {
    v8 = 0;
LABEL_32:
    obj_release(v10);
    return v8;
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = v33;
    v15 = v33 + 104 * v11;
    *(v15 + 1112) = 0;
    *(v15 + 1016) = 0u;
    *(v15 + 1032) = 0u;
    *(v15 + 1048) = 0u;
    *(v15 + 1064) = 0u;
    *(v15 + 1080) = 0u;
    *(v15 + 1096) = 0u;
    v16 = *(v14 + 376);
    v17 = *(v16 + 32);
    v18 = *(v16 + 48 * v11 + 48);
    if (is_mul_ok(v18, v17))
    {
      v19 = v18 * v17;
    }

    else
    {
      v19 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v17, v18, v19, &v36, &v35))
    {
      v20 = v14 + 104 * v11;
      v21 = v35 + v36 / v17;
      spaceman_metazone_get_partitions(v17, v36, v35, v21, &v34, 0);
      v22 = v35;
      *(v20 + 1016) = v35;
      *(v20 + 1032) = v22;
      v23 = v34;
      *(v20 + 1024) = v34;
      *(v20 + 1042) = 1;
      *(v20 + 1048) = v23;
      *(v20 + 1064) = v34;
      *(v20 + 1056) = v21;
      *(v20 + 1074) = 1;
      *(v20 + 1113) = 1;
      v24 = v33;
      v25 = *(v33 + 1000 + 8 * v11);
      if (v25 < v21 && v25 >= v35)
      {
        if (v21 == v18)
        {
          v27 = 0;
        }

        else
        {
          v27 = v21;
        }

        *(v33 + 1000 + 8 * v11) = v27;
      }

      if (*(v24 + 8 * v11 + 1496))
      {
        v28 = *(*(v24 + 376) + 36);
        v29 = v35 / v28;
        v30 = (v21 - 1) / v28;
        if (v29 <= v30)
        {
          do
          {
            *(*(v33 + 8 * v11 + 1496) + 4 * v29++) |= 0x4000000u;
          }

          while (v29 <= v30);
          v24 = v33;
        }
      }

      *(v24 + 104 * v11 + 1112) = 1;
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v8 = 0;
  v10 = v33;
  if (v33)
  {
    goto LABEL_32;
  }

  return v8;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 2)
  {
    v8 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v8 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v8 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v10 = a2;
    if (!a1[1])
    {
      v11 = *(*(*a1 + 392) + 384) + 212;
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_get_metazone_alloc_index");
    v8 = &a1[v10 + 125];
  }

  else
  {
    v8 = &a1[13 * a2 + 129];
  }

  return *v8;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v52 = 0;
  v2 = spaceman_get(a1, &v52);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v52 + 6);
  v10 = v52;
  v11 = *&v52[5].__opaque[48];
  if ((*(v11 + 144) & 1) == 0 || !*(v11 + 336))
  {
    v12 = *(v11 + 116);
    if (!v12)
    {
      v12 = *(v11 + 112);
    }

    v13 = (*(v11 + 128) + 8 * v12);
    if (v13 + 2184 <= (v13 + *(v11 + 32) - 1) / *(v11 + 32) * *(v11 + 32))
    {
      memmove((v11 + 2520), (v11 + 336), v13 - 336);
      v14 = vadd_s32(*(v11 + 324), vdup_n_s32(0x888u));
      *(v11 + 324) = v14;
      v15 = (*(v11 + 332) + 2184);
      *(v11 + 332) = v15;
      v16 = (*(v11 + 80) + 2184);
      *(v11 + 80) = v16;
      v17 = (*(v11 + 128) + 2184);
      *&v10[13].__opaque[32] = v11 + v14.u32[0];
      *(v11 + 128) = v17;
      *&v10[13].__opaque[40] = v11 + v14.u32[1];
      *&v10[13].__opaque[48] = v11 + v15;
      v10[14].__sig = v11 + v16;
      *v10[14].__opaque = v11 + v17;
      *(v11 + 336) = 0x9D800000001;
      bzero((v11 + 344), 0x880uLL);
      *(v11 + 144) |= 1u;
    }

    else
    {
      if (!*v52->__opaque)
      {
        v18 = *(*(v52->__sig + 392) + 384) + 212;
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", v3, v4, v5, v6, v7, v8, v9, "spaceman_upgrade_sm_version_0_to_1");
      v50 = a1[48] + 212;
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_allocation_init");
    }
  }

  spaceman_free_queue_trim_list_init(a1, v52);
  v2 = spaceman_metazone_init(a1, 0, v26, v27, v28, v29, v30, v31);
  if (v2)
  {
LABEL_17:
    v48 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v52, v32, v33, v34, v35, v36, v37, v38);
    v39 = 1;
    while (1)
    {
      v40 = spaceman_datazone_init(a1, v39);
      if (v40)
      {
        break;
      }

      if (++v39 == 5)
      {
        v2 = spaceman_free_extent_cache_setup(a1, v52);
        goto LABEL_17;
      }
    }

    v48 = v40;
    v51 = a1[48] + 212;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", v41, v42, v43, v44, v45, v46, v47, "spaceman_allocation_init");
  }

  if (v52)
  {
    pthread_mutex_unlock(v52 + 6);
    obj_release(&v52->__sig);
  }

  return v48;
}

void spaceman_sanitize_datazone(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = a1[47];
    if (*(v9 + 144))
    {
      if (*(v9 + 336))
      {
        v10 = 0;
        v11 = v9 + 344;
        v28 = v9 + 368;
        v29 = v9 + 48;
        v12 = 1;
        do
        {
          v30 = v12;
          v13 = *(v29 + 48 * v10);
          if (v13)
          {
            v14 = 0;
            v15 = (v28 + 1088 * v10);
            do
            {
              v16 = v11 + 1088 * v10 + 136 * v14;
              if (*v16 >= v13 || ((v17 = *(v16 + 8), v17 <= v13) ? (v18 = *v16 > v17) : (v18 = 1), v18))
              {
                if (!a1[1])
                {
                  v19 = *(*(*a1 + 392) + 384) + 212;
                }

                log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_sanitize_datazone");
                v20 = 1;
              }

              else
              {
                v20 = 0;
              }

              v21 = 0;
              v22 = v15;
              while (1)
              {
                v23 = *(v22 - 1);
                if (v23 >= v13)
                {
                  break;
                }

                if (*v22 > v13 || v23 > *v22)
                {
                  break;
                }

                ++v21;
                v22 += 2;
                if (v21 == 7)
                {
                  if (*(v16 + 130) <= 6u)
                  {
                    if ((v20 & 1) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_32;
                  }

LABEL_29:
                  if (!a1[1])
                  {
                    v26 = *(*(*a1 + 392) + 384) + 212;
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_sanitize_datazone");
                  goto LABEL_32;
                }
              }

              if (!a1[1])
              {
                v25 = *(*(*a1 + 392) + 384) + 212;
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_sanitize_datazone");
              if (*(v16 + 130) >= 7u)
              {
                goto LABEL_29;
              }

LABEL_32:
              if (!a1[1])
              {
                v27 = *(*(*a1 + 392) + 384) + 212;
              }

              log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_sanitize_datazone");
              *(v16 + 128) = 0;
              *(v16 + 96) = 0u;
              *(v16 + 112) = 0u;
              *(v16 + 64) = 0u;
              *(v16 + 80) = 0u;
              *(v16 + 32) = 0u;
              *(v16 + 48) = 0u;
              *v16 = 0u;
              *(v16 + 16) = 0u;
LABEL_35:
              ++v14;
              v15 += 17;
            }

            while (v14 != 8);
          }

          v12 = 0;
          v10 = 1;
        }

        while ((v30 & 1) != 0);
      }
    }
  }
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v22 = 0;
  v4 = spaceman_get(a1, &v22);
  if (v4)
  {
    return v4;
  }

  if (!v22)
  {
    return 19;
  }

  v6 = v22[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v22[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v22 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v22 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v22, 0, a2);
  if (v11)
  {
    v4 = v11;
    v19 = a1[48] + 212;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", v12, v13, v14, v15, v16, v17, v18, "spaceman_datazone_init");
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    v21 = *v10;
    v20 = a1[48] + 212;
    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", v12, v13, v14, v15, v16, v17, v18, "spaceman_datazone_init");
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v22)
  {
    obj_release(v22);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          *(v7 + 16) = v19;
          v3 = sub_10000B384(a1, a2, v6, *v19 / *(v8 + 36));
          if (v3)
          {
            if (!a1[1])
            {
              v27 = *(*(*a1 + 392) + 384) + 212;
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", v20, v21, v22, v23, v24, v25, v26, "spaceman_initialize_allocation_zone_from_disk");
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      *(v7 + 16) = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              _apfs_free(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_10000B384(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v6 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v8 = *(a1[a2 + 187] + 4 * a3);
      v9 = v8 & 0xC000000;
      v10 = *&v8 & 0xFFFFFFLL;
      if (!v9 && v6 < v10)
      {
        break;
      }
    }

    if (++v6 == 4)
    {
      return 0;
    }
  }

  v14 = sub_10000B384(a1, a2, v6, a3);
  v22 = a1[1];
  if (v14)
  {
    v12 = v14;
    if (!v22)
    {
      v23 = *(*(*a1 + 392) + 384) + 212;
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", v15, v16, v17, v18, v19, v20, v21, "spaceman_evaluate_chunk_for_disabled_allocation_zones");
  }

  else
  {
    if (!v22)
    {
      v24 = *(*(*a1 + 392) + 384) + 212;
    }

    v25 = *(i - 25);
    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", v15, v16, v17, v18, v19, v20, v21, "spaceman_evaluate_chunk_for_disabled_allocation_zones");
    v12 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v12;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        v100 = 0;
        v101 = 0;
        v98 = 0;
        v99 = 0;
        v96 = 0;
        v97 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v71 = sub_10000B384(v5, v6, a4, v21);
          if (v71)
          {
            v4 = v71;
            v84 = *(a1 + 384) + 212;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n", v72, v73, v74, v75, v76, v77, v78, "spaceman_get_new_chunk_for_allocation_zone");
          }

          else
          {
            v80 = *(v5 + 1592);
            if (v80)
            {
              ++*(v80 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v81 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v81 = get_timestamp();
              v81[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v82 = *(v5 + 1604);
              if ((v82 + 1) < *(v5 + 1600))
              {
                v83 = v82 + 1;
              }

              else
              {
                v83 = 0;
              }

              *(v5 + 1604) = v83;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v94 = 0;
            v32 = 0;
            v91 = v31;
            v92 = (v26 / v27);
            v88 = v26;
            v89 = v5 + 896;
            v87 = v5;
            v33 = v5 + 1496;
            v93 = -1;
            v21 = -1;
            do
            {
              v34 = (v92 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v93;
                v38 = v94;
                if (v34 / v35 != v93 || v94 == 0)
                {
                  v40 = *(*(v89 + 8 * v9) + 8 * v36);
                  if (v97)
                  {
                    obj_release(v97);
                    v97 = 0;
                  }

                  v100 = v8;
                  v101 = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &sm_cab_desc, &v100, 0, 0, 0, &v97);
                  if (v41)
                  {
                    v4 = v41;
                    v86 = *(a1 + 384) + 212;
                    log_err("%s:%d: %s error getting cab %d: %d\n", v42, v43, v44, v45, v46, v47, v48, "spaceman_get_new_chunk_for_allocation_zone");
                    goto LABEL_58;
                  }

                  v38 = v97[7];
                  v35 = v8[11];
                  v37 = v36;
                }

                v93 = v37;
                v94 = v38;
                v49 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v49 = (*(v89 + 8 * v9) + 8 * v34);
              }

              v50 = *v49;
              v98 = v8;
              v99 = __PAIR64__(v34, v6);
              v51 = obj_get(*(a1 + 392), 0x40000000, v50, &sm_cib_desc, &v98, 0, 0, 0, &v96);
              if (v51)
              {
                v4 = v51;
                v85 = *(a1 + 384) + 212;
                log_err("%s:%d: %s error getting cib %d: %d\n", v52, v53, v54, v55, v56, v57, v58, "spaceman_get_new_chunk_for_allocation_zone");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v59) = 0;
              }

              else
              {
                LODWORD(v59) = v88 % v8[10] + 1;
              }

              v31 = v91;
              v60 = v96[7];
              v61 = *(v60 + 36);
              v62 = v61 >= v59;
              v63 = v61 - v59;
              if (v63 != 0 && v62)
              {
                v64 = v34 * v8[10];
                v59 = v59;
                v65 = (v60 + 32 * v59 + 60);
                v66 = v21;
                do
                {
                  v67 = *v65;
                  v65 += 8;
                  v68 = v67 & 0xFFFFF;
                  if (v32 < v68)
                  {
                    v21 = v64 + v59;
                    v69 = *(*(v33 + 8 * v9) + 4 * (v64 + v59));
                    if ((v69 & 0xC000000) == 0 && (*&v69 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v68;
                      v66 = v64 + v59;
                      if (v68 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v59;
                  v21 = v66;
                  --v63;
                }

                while (v63);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v96);
              v96 = 0;
              ++v30;
              v14 = v91[4];
            }

            while (v30 < v14);
            v5 = v87;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v97)
        {
          obj_release(v97);
        }

        if (v96)
        {
          obj_release(v96);
        }
      }
    }
  }

  return v4;
}

BOOL spaceman_should_avoid_data_allocation_at_block(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = *(a1 + 8 * a2 + 1496);
  if (!v4)
  {
    return 0;
  }

  v5 = a1 + 104 * a2;
  if (*(v5 + 1112) == 1)
  {
    v6 = v5 + 1016;
    v7 = 40;
    if (*(v6 + 90))
    {
      v7 = 72;
    }

    if (*v6 <= a3 && *(v6 + v7) > a3)
    {
      return 1;
    }
  }

  if ((*(v4 + 4 * (a3 / *(*(a1 + 376) + 36))) & 0x8000000) == 0)
  {
    return 0;
  }

  if (a4 <= 4 && (v9 = a1 + 136 * a2 + 32 * a4, *(v9 + 1216) == 1) && (v10 = (v9 + 1192), *v10 <= a3))
  {
    return v10[1] <= a3;
  }

  else
  {
    return 1;
  }
}

BOOL spaceman_clip_extent(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, __int16 a5, unint64_t a6, unint64_t *a7, unint64_t *a8)
{
  v19 = 0;
  v14 = calc_overlap_range(a1, a2, a3, a4, &v19);
  if (v14)
  {
    v15 = a2 - v14;
    if (a2 == v14)
    {
      v16 = 0;
LABEL_17:
      *a8 = v16;
      return v14 != 0;
    }

    v16 = v19 - a1;
    if (v19 == a1)
    {
      v17 = v14 + a1;
LABEL_6:
      *a7 = v17;
LABEL_7:
      v16 = v15;
      goto LABEL_17;
    }

    v15 = a2 - (v16 + v14);
    if ((a5 & 0x4000) != 0)
    {
      if (a6 > v19 && a2 != v16 + v14 && (v19 + v14 <= a6 || a6 - v19 > v19 + v14 - a6))
      {
        *a7 = v19 + v14;
        goto LABEL_7;
      }
    }

    else if (v15 > v16)
    {
      v17 = v19 + v14;
      goto LABEL_6;
    }

    *a7 = a1;
    goto LABEL_17;
  }

  return v14 != 0;
}

uint64_t spaceman_clip_extent_to_zones(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, __int16 a6, unint64_t a7, unint64_t *a8, unint64_t *a9)
{
  v12 = a5;
  v13 = a4;
  v15 = a2;
  v16 = *(a1 + 1024);
  if (v16)
  {
    v17 = 0;
    if (!a3 && (*(a1 + 634) & 1) == 0)
    {
      v18 = *(a1 + 1016);
      if ((a6 & 0x200) != 0)
      {
        if (v18 && spaceman_clip_extent(a4, a5, 0, v18, a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        v18 += v16;
        v16 = *(*(a2 + 376) + 48) - v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = spaceman_clip_extent(v13, v12, v18, v16, a6, a7, a8, a9);
      v15 = a2;
      if (v19)
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  if ((a6 & 0x2000) != 0)
  {
    v20 = v15 + 104 * a3;
    if (*(v20 + 1112) == 1)
    {
      v21 = v20 + 1016;
      v22 = 40;
      if (*(v21 + 90))
      {
        v22 = 72;
      }

      if (spaceman_clip_extent(v13, v12, *v21, *(v21 + v22) - *v21, a6, a7, a8, a9))
      {
        v13 = *a8;
        v12 = *a9;
        v17 = 1;
      }
    }

    if (*(v15 + 136 * a3 + 1352) == 1)
    {
      v23 = (v15 + 136 * a3 + 1248);
      v24 = 4;
      do
      {
        if (*v23 == 1 && spaceman_clip_extent(v13, v12, *(v23 - 3), *(v23 - 2) - *(v23 - 3), a6, a7, a8, a9))
        {
          v13 = *a8;
          v12 = *a9;
          v17 = 1;
        }

        v23 += 32;
        --v24;
      }

      while (v24);
    }
  }

  return v17 & 1;
}

uint64_t spaceman_free_extent_cache_init(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = new_lock((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = _apfs_calloc_typed(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      sub_10000C0F4(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        free_lock((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t sub_10000C0F4(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void spaceman_free_extent_cache_destroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      _apfs_free(v2, 24 * (*(a1 + 88) >> 8));
      *(a1 + 80) = 0;
    }

    if (*a1)
    {
      free_lock((a1 + 16));
      *a1 = 0;
    }
  }
}

void spaceman_free_extent_cache_reset(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (HIBYTE(*(a1 + 88)))
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    spaceman_free_extent_cache_destroy(a1);
    if (spaceman_free_extent_cache_init(v4, v3, v2, (v2 >> 8), a1))
    {
      *(a1 + 88);
      v12 = *(*a1 + 384) + 212;
      log_err("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", v5, v6, v7, v8, v9, v10, v11, "spaceman_free_extent_cache_reset");
      *(a1 + 280) |= 2uLL;
    }
  }

  else
  {
    bzero((a1 + 92), 0x4FCuLL);
    bzero(*(a1 + 80), 24 * (v2 >> 8));

    sub_10000C0F4(a1);
  }
}

uint64_t spaceman_free_extent_cache_scan_should_pause(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v3 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 176);
  if (v6 <= *(a1 + 224))
  {
    v6 = *(a1 + 224);
  }

  if (v6 < *(a1 + 248) || (v7 = *(a1 + 128), (v7 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v4 = 0;
  }

  else
  {
    *(a1 + 328) = v7;
    v4 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v4;
}

void spaceman_free_extent_cache_print_stats(void *a1)
{
  v74 = 0;
  if (!spaceman_get(a1, &v74))
  {
    v6 = 0;
    for (i = 1; ; i = 0)
    {
      v8 = i;
      v9 = v74[47] + 48 * v6;
      v12 = *(v9 + 48);
      v10 = v9 + 48;
      v11 = v12;
      if (!v12)
      {
        goto LABEL_29;
      }

      v13 = v74[v6 + 197];
      if (!v13)
      {
        goto LABEL_29;
      }

      v73 = v8;
      v14 = *(v10 + 24);
      v15 = *(v13 + 94);
      if (*v13)
      {
        pthread_mutex_lock((v13 + 16));
      }

      v16 = v13 + 1264;
      if (!sub_10000E5C8(v13, v13 + 1264, 1u, v1, v2, v3, v4, v5))
      {
        v72 = *(*(v13 + 80) + 24 * *(v16 + 4 * *(v13 + 1361)) + 8) & 0xFFFFFFFFFFFFFLL;
      }

      if (sub_10000F7A8(v13, v13 + 1264, v17, v18, v19, v20, v21, v22))
      {
        v28 = 0;
      }

      else
      {
        v71 = *(*(v13 + 80) + 24 * *(v16 + 4 * *(v13 + 1361))) & 0xFFFFFFFFFFFFFLL;
        if (sub_10000E5C8(v13, v13 + 1264, 0, v23, v24, v25, v26, v27))
        {
          v28 = v71;
        }

        else
        {
          v29 = (*(v13 + 80) + 24 * *(v16 + 4 * *(v13 + 1361)));
          v28 = v71;
          v30 = (*v29 & 0xFFFFFFFFFFFFFLL) - v71 + (v29[1] & 0xFFFFFFFFFFFFFLL);
        }
      }

      if (*(v13 + 96) > 1uLL)
      {
        v31 = *(v13 + 96);
      }

      v32 = *(v13 + 88);
      v33 = *(v13 + 120);
      v48 = *(*v13 + 384) + 212;
      log_info("%s:%d: %s dev %d smfree %lld/%lld table %d/%d blocks %lld %lld:%lld:%lld %d.%02d%% range %lld:%lld %d.%02d%% scans %lld\n", *(v13 + 336), v28, v23, v24, v25, v26, v27, "spaceman_fxc_print_stats");
      v35 = v13 + 272;
      v36 = 3;
      do
      {
        if (*(v35 - 32))
        {
          if (!v14)
          {
            v37 = *(v35 - 32);
          }

          *(v35 - 40);
          v68 = *(v35 - 16);
          v61 = *(v35 - 24);
          v49 = *(*v13 + 384) + 212;
          v52 = *(v13 + 88);
          log_info("%s:%d: %s dev %d scan_stats[%d]: foundmax %lld extents %lld blocks %lld long %lld avg %lld %d.%02d%% range %lld:%lld %d.%02d%%\n", v68, 10000 * *(v35 - 8) / v11 / 0x64, v36 - 1, v2, v3, v4, v5, "spaceman_fxc_print_stats");
        }

        v35 -= 48;
        --v36;
      }

      while (v36);
      v38 = *v13;
      if (*(v13 + 344))
      {
        v69 = *(v13 + 432);
        v70 = *(v13 + 440);
        v65 = *(v13 + 464);
        v67 = *(v13 + 472);
        v62 = *(v13 + 448);
        v64 = *(v13 + 456);
        v57 = *(v13 + 424);
        v59 = *(v13 + 416);
        v55 = *(v13 + 352);
        v50 = *(v38 + 384) + 212;
        log_info("%s:%d: %s dev %d Searches: %lld success %lld fail %lld partial %lld, bm search yes:%lld (%lld/%lld/%lld) no:%lld/%lld\n", *(v13 + 88), v34, v1, v2, v3, v4, v5, "spaceman_fxc_print_stats");
        v46 = *(v13 + 360);
        v8 = v73;
        if (v46)
        {
          v47 = *(v13 + 368) / v46;
        }

        v66 = *(v13 + 368);
        v63 = *(v13 + 376);
        v58 = *(v13 + 392);
        v60 = *(v13 + 384);
        v54 = *(v13 + 408);
        v56 = *(v13 + 400);
        v51 = *(*v13 + 384) + 212;
        v53 = *(v13 + 88);
        log_info("%s:%d: %s dev %d Remainders: zero %lld one %lld tiny %lld small %lld good %lld, total %lld blocks %lld avg %lld\n", v39, v40, v41, v42, v43, v44, v45, "spaceman_fxc_print_stats");
        if (!*v13)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v8 = v73;
        if (!v38)
        {
          goto LABEL_29;
        }
      }

      pthread_mutex_unlock((v13 + 16));
LABEL_29:
      v6 = 1;
      if ((v8 & 1) == 0)
      {
        obj_release(v74);
        return;
      }
    }
  }
}

uint64_t spaceman_free_extent_cache_setup(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4))
    {
      v8 = *(*(a2 + 376) + 48 * v4 + 48);
      if (v8)
      {
        v9 = _apfs_calloc_typed(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
        *(v5 + 8 * v4) = v9;
        if (!v9)
        {
          v19 = 12;
          goto LABEL_13;
        }

        v17 = v8 >> 18;
        if (v8 >> 18 >= 0xFF80)
        {
          LODWORD(v17) = 65408;
        }

        v18 = spaceman_free_extent_cache_init(a1, a2, v4, v17 + 128, v9);
        if (v18)
        {
          break;
        }
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = v18;
  v20 = *(v5 + 8 * v4);
  if (v20)
  {
    *(v20 + 280) |= 2uLL;
  }

LABEL_13:
  v22 = *(a1 + 384) + 212;
  log_err("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", v10, v11, v12, v13, v14, v15, v16, "spaceman_free_extent_cache_setup");
  return v19;
}

uint64_t spaceman_free_extent_cache_insert(unint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 22;
  }

  v8 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v12 = *(a1 + 280);
  if ((v12 & 2) == 0)
  {
    v13 = a1 + 136 + 48 * ((v12 & 4) == 0);
    v15 = *(v13 + 40);
    v14 = (v13 + 40);
    if (v15 < v8)
    {
      *v14 = v8;
    }

    v117 = 0;
    v16 = sub_10000D018(a1, v8, a3, a4, a5, a6, a7, a8);
    if (v16 == 55)
    {
      v17 = a1 + 16 * (a2 ^ 1u);
      v18 = *(v17 + 296);
      if (v18)
      {
        if (v18 < a3 && v8 + a3 < *(v17 + 304))
        {
          sub_10000D23C(a1, a3, v8);
          v19 = 0;
          *(v17 + 296) = a3;
          goto LABEL_27;
        }
      }
    }

    if (spaceman_extent_check(*a1, *(a1 + 8), a3, v8))
    {
      if (nx_ratelimit_log_allowed(*a1))
      {
        v110 = *(a1 + 88);
        v107 = *(*a1 + 384) + 212;
        log_err("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", v23, v24, v25, v26, v27, v28, v29, "spaceman_free_extent_cache_insert");
      }

      goto LABEL_23;
    }

    v30 = (a1 + 1068);
    v31 = sub_10000D284(a1, 0, a3, v8, a1 + 1068, v20, v21, v22);
    if (v31)
    {
      goto LABEL_25;
    }

    v113 = a1 + 136;
    v40 = *(v30 + 2 * *(a1 + 1165));
    v41 = (a1 + 1166);
    v42 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v42;
    *(a1 + 1262) = *(a1 + 1164);
    v43 = *(a1 + 1084);
    *(a1 + 1166) = *v30;
    *(a1 + 1182) = v43;
    v44 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v44;
    if (v40)
    {
      v19 = 0;
    }

    else
    {
      v75 = sub_10000F938(a1, a1 + 1166, 0xFFFFFFFFLL, v34, v35, v36, v37, v38);
      v19 = v75;
      if ((v75 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      if (v75 == 2)
      {
        v19 = 2;
        goto LABEL_33;
      }
    }

    v35 = *(v41 + 2 * *(a1 + 1263));
    v45 = (*(a1 + 80) + 24 * v35);
    v46 = *v45 & 0xFFFFFFFFFFFFFLL;
    v33 = v45[1] & 0xFFFFFFFFFFFFFLL;
    if (v33 + v46 >= a3)
    {
      v8 = v8 + a3 - v46;
      v76 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v76;
      *(a1 + 1164) = *(a1 + 1262);
      v77 = *(a1 + 1182);
      *v30 = *v41;
      *(a1 + 1084) = v77;
      v78 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v78;
      if (v8 <= v33)
      {
        if (v19)
        {
          v19 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v31 = sub_10000D3BC(a1, v46, v33, v8, v35, v36, v37, v38);
      if (v31)
      {
LABEL_25:
        v19 = v31;
LABEL_26:
        v111 = *(a1 + 88);
        v108 = *(*a1 + 384) + 212;
        log_err("%s:%d: %s dev %d Error %d, reinitializing\n", v32, v33, v34, v35, v36, v37, v38, "spaceman_free_extent_cache_insert");
        spaceman_free_extent_cache_reset(a1);
        goto LABEL_27;
      }

      v79 = v113 + 48 * ((*(a1 + 280) & 4) == 0);
      v81 = *(v79 + 40);
      v80 = (v79 + 40);
      if (v81 < v8)
      {
        *v80 = v8;
      }

      sub_10000D6C0(a1, v46, v8);
      v19 = 0;
LABEL_34:
      v47 = *(a1 + 1165);
      if (v47 < 0 || *(v30 + 2 * v47))
      {
LABEL_36:
        v115 = *(v30 + 2 * v47);
        v116 = v46 + v8;
        v48 = v8;
        v114 = v46;
        while (1)
        {
          if (v19)
          {
            goto LABEL_26;
          }

          v49 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v49;
          *(a1 + 1262) = *(a1 + 1164);
          v50 = *(a1 + 1084);
          *v41 = *v30;
          *(a1 + 1182) = v50;
          v51 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v51;
          v52 = sub_10000F938(a1, a1 + 1166, 1, v34, v35, v36, v37, v38);
          if (v52)
          {
            break;
          }

          v53 = *(v41 + 2 * *(a1 + 1263));
          v54 = (*(a1 + 80) + 24 * *(v41 + 2 * *(a1 + 1263)));
          v55 = *v54 & 0xFFFFFFFFFFFFFLL;
          if (v116 < v55)
          {
            goto LABEL_61;
          }

          v56 = v54[1] & 0xFFFFFFFFFFFFFLL;
          if (v56 + v55 >= v116)
          {
            v57 = v56 + v55 - v116;
          }

          else
          {
            v57 = 0;
          }

          sub_10000DC64(a1, a1 + 1166);
          v61 = sub_10000D284(a1, 1u, v55, v56, a1 + 1068, v58, v59, v60);
          if (v61)
          {
            v19 = v61;
LABEL_70:
            v112 = *(a1 + 88);
            v109 = *(*a1 + 384) + 212;
            log_err("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", v62, v63, v64, v65, v66, v67, v68, "spaceman_free_extent_cache_insert");
            goto LABEL_26;
          }

          if (!*(v30 + 2 * *(a1 + 1165)))
          {
            v19 = 2;
            goto LABEL_70;
          }

          if (v55 == *(a1 + 112))
          {
            if (v56 != *(a1 + 120))
            {
              sub_1000A3DA8();
            }

            v69 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v69;
            *(a1 + 1262) = *(a1 + 1164);
            v70 = *(a1 + 1084);
            *v41 = *v30;
            *(a1 + 1182) = v70;
            v71 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v71;
            sub_10000DFE0(a1, a1 + 1166, v63, v64, v65, v66, v67, v68);
          }

          v48 += v57;
          sub_10000DC64(a1, a1 + 1068);
          sub_10000DBCC(a1, v53);
          v46 = v114;
          v19 = sub_10000D284(a1, 0, v114, v8, a1 + 1068, v72, v73, v74);
          if (*(v30 + 2 * *(a1 + 1165)) != v115)
          {
            sub_1000A3DD4();
          }
        }

        v19 = v52;
        if (v52 != 2)
        {
          goto LABEL_26;
        }

LABEL_61:
        if (v48 <= v8)
        {
          goto LABEL_23;
        }

        v31 = sub_10000D3BC(a1, v46, v8, v48, v115, v36, v37, v38);
        if (!v31)
        {
          v82 = v113 + 48 * ((*(a1 + 280) & 4) == 0);
          v84 = *(v82 + 40);
          v83 = (v82 + 40);
          if (v84 >= v48)
          {
            goto LABEL_23;
          }

          v19 = 0;
          *v83 = v48;
          goto LABEL_27;
        }

        goto LABEL_25;
      }

      if (v16 == 55)
      {
        v85 = sub_10000F938(a1, a1 + 1068, 1, v34, v35, v36, v37, v38);
        if (v85)
        {
          v19 = v85;
          v89 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_77;
        }

        v96 = *(v30 + 2 * *(a1 + 1165));
        v97 = (*(a1 + 80) + 24 * *(v30 + 2 * *(a1 + 1165)));
        v98 = *v97;
        v89 = *v97 & 0xFFFFFFFFFFFFFLL;
        if (v46 + v8 < v89)
        {
          v19 = 2;
LABEL_77:
          sub_10000D23C(a1, v46, v8);
          v99 = a1 + 16 * (a2 ^ 1u);
          *(v99 + 296) = v46;
          *(v99 + 304) = v89;
          if (v19 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v19 = 0;
          goto LABEL_27;
        }

        v100 = v97[1] & 0xFFFFFFFFFFFFFLL;
        v101 = v89 - v46 + v100;
        if (v89 == *(a1 + 112))
        {
          *(a1 + 112) = v46;
        }

        *v97 = v98 & 0xFFF0000000000000 | v46;
        v31 = sub_10000D3BC(a1, v46, v100, v89 - v46 + v100, v96, v86, v87, v88);
        if (!v31)
        {
          v102 = v113 + 48 * ((*(a1 + 280) & 4) == 0);
          v104 = *(v102 + 40);
          v103 = (v102 + 40);
          if (v104 >= v101)
          {
            goto LABEL_23;
          }

          v19 = 0;
          *v103 = v101;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 16));
          }

          return v19;
        }
      }

      else
      {
        v117 = 0;
        v31 = sub_10000D73C(a1, v46, v8, &v117, a1 + 1068);
        if (!v31)
        {
          v90 = sub_10000DA40(a1, 1u, v46, v8, &v117, v36, v37, v38);
          if (v90)
          {
            v19 = v90;
            if (!sub_10000DB50(a1, v46, v8, v91, v92, v93, v94, v95))
            {
              sub_10000DBCC(a1, v117);
            }

            goto LABEL_26;
          }

          v105 = *(a1 + 120);
          if (v105 - 1 >= v8 || v8 == v105 && v46 > *(a1 + 112))
          {
            *(a1 + 112) = v46;
            *(a1 + 120) = v8;
          }

          if (v8 > *(a1 + 128))
          {
            *(a1 + 128) = v8;
          }

          v106 = sub_10000D284(a1, 0, v46, v8, a1 + 1068, v93, v94, v95);
          if (*(v30 + 2 * *(a1 + 1165)) != v117)
          {
            sub_1000A3D7C();
          }

          v19 = v106;
          sub_10000D6C0(a1, v46, v8);
          LOBYTE(v47) = *(a1 + 1165);
          goto LABEL_36;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v46 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_10000D018(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v10 = *(a1 + 120);
  if (v10 > a2)
  {
    return 55;
  }

  v12 = *(a1 + 112);
  if (v10 == a2 && v12 < a3)
  {
    return 55;
  }

  if (!v12)
  {
    return 0;
  }

  v14 = (a1 + 480);
  if (sub_10000D284(a1, 0, v12, v10, a1 + 480, a6, a7, a8) || (v22 = 4 * *(a1 + 577), v23 = *(v14 + v22), !*(v14 + v22)))
  {
    v53 = *(a1 + 88);
    v50 = *(*a1 + 384) + 212;
    log_err("%s:%d: %s dev %d Failed to find smallest extent in paddr tree: %d\n", v15, v16, v17, v18, v19, v20, v21, "spaceman_fxc_tree_node_recycle_smallest");
  }

  else
  {
    sub_10000DC64(a1, a1 + 480);
    if (sub_10000D284(a1, 1u, *(a1 + 112), *(a1 + 120), a1 + 480, v24, v25, v26) || !*(v14 + 2 * *(a1 + 577)))
    {
      v51 = *(*a1 + 384) + 212;
      v54 = *(a1 + 88);
      log_err("%s:%d: %s dev %d Failed to find smallest extent %d in length tree: %d\n", v27, v28, v29, v30, v31, v32, v33, "spaceman_fxc_tree_node_recycle_smallest");
    }

    else
    {
      if (v23 != *(v14 + 2 * *(a1 + 577)))
      {
        sub_1000A3E00();
      }

      sub_10000D23C(a1, *(a1 + 112), *(a1 + 120));
      v34 = *(a1 + 560);
      *(a1 + 642) = *(a1 + 544);
      *(a1 + 658) = v34;
      *(a1 + 674) = *(a1 + 576);
      v35 = *(a1 + 496);
      *(a1 + 578) = *v14;
      *(a1 + 594) = v35;
      v36 = *(a1 + 528);
      *(a1 + 610) = *(a1 + 512);
      *(a1 + 626) = v36;
      v42 = sub_10000F938(a1, a1 + 578, 1, v37, v38, v39, v40, v41);
      if (!v42)
      {
        *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a1 + 578 + 4 * *(a1 + 675))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
        goto LABEL_24;
      }

      if (v42 == 2)
      {
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
LABEL_24:
        sub_10000DC64(a1, a1 + 480);
        sub_10000DBCC(a1, v23);
        return 0;
      }

      v55 = *(a1 + 88);
      v52 = *(*a1 + 384) + 212;
      log_err("%s:%d: %s dev %d Failed to find next smallest extent in length tree: %d\n", v43, v44, v45, v46, v47, v48, v49, "spaceman_fxc_tree_node_recycle_smallest");
    }
  }

  return 3;
}

uint64_t sub_10000D23C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 48 * ((*(a1 + 280) & 4) == 0);
  if (*(v3 + 152) < a3)
  {
    *(v3 + 152) = a3;
  }

  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  *(v3 + 136) = vaddq_s64(*(v3 + 136), v4);
  return sub_10000E8EC(v3 + 136, a2, a3);
}

uint64_t sub_10000D284(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = a2;
  v13 = *(a1 + 2 * a2 + 104);
  *a5 = v13;
  if (v13)
  {
    if (a2 >= 2)
    {
      sub_1000A3E2C();
    }

    *(a5 + 2) = *(*(a1 + 80) + 24 * v13 + 8 * (a2 != 0) + 7);
  }

  for (i = *(a5 + 4 * *(a5 + 97)); *(a5 + 4 * *(a5 + 97)); i = *(a5 + 4 * *(a5 + 97)))
  {
    v15 = (*(a1 + 80) + 24 * i);
    if (a2)
    {
      v16 = v15[1] & 0xFFFFFFFFFFFFFLL;
      v17 = v16 > a4;
      v18 = v16 < a4;
      if (v17)
      {
        v18 = -1;
      }

      if (!v18)
      {
        v19 = *v15 & 0xFFFFFFFFFFFFFLL;
        v17 = v19 < a3;
        v18 = v19 > a3;
        if (v17)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v20 = *v15 & 0xFFFFFFFFFFFFFLL;
      v17 = v20 <= a3;
      v18 = v20 < a3;
      if (!v17)
      {
        goto LABEL_18;
      }
    }

    if (!v18)
    {
      return 0;
    }

    if (v18 < 0)
    {
LABEL_18:
      v21 = a1;
      v22 = a5;
      v23 = 0xFFFFFFFFLL;
      goto LABEL_19;
    }

    v21 = a1;
    v22 = a5;
    v23 = 1;
LABEL_19:
    result = sub_10000F83C(v21, v22, v23, a4, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_10000D3BC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a5;
  v13 = a1 + 676;
  v14 = *(a1 + 112);
  v15 = sub_10000D284(a1, 1u, a2, a3, a1 + 676, a6, a7, a8);
  if (v15)
  {
    return v15;
  }

  if (!*(v13 + 4 * *(a1 + 773)))
  {
    return 2;
  }

  if (*(v13 + 4 * *(a1 + 773)) != a5)
  {
    v47 = *(v13 + 4 * *(a1 + 773));
    v43 = *(*a1 + 384) + 212;
    v45 = *(a1 + 88);
    log_err("%s:%d: %s dev %d length tree search for 0x%llx 0x%llx returned node %d instead of %d\n", v16, v17, v18, v19, v20, v21, v22, "spaceman_fxc_update_length");
    return 22;
  }

  v25 = (a1 + 774);
  v26 = *(a1 + 96);
  v27 = *(a1 + 80) + 24 * a5;
  *(v27 + 8) = *(v27 + 8) & 0xFFF0000000000000 | a4 & 0xFFFFFFFFFFFFFLL;
  *(a1 + 96) = a4 - a3 + v26;
  if (a4 <= a3)
  {
    if (v14 != a2)
    {
      v32 = *(v13 + 80);
      *(a1 + 838) = *(v13 + 64);
      *(a1 + 854) = v32;
      *(a1 + 870) = *(v13 + 96);
      v33 = *(v13 + 16);
      *v25 = *v13;
      *(a1 + 790) = v33;
      v34 = *(v13 + 48);
      *(a1 + 806) = *(v13 + 32);
      *(a1 + 822) = v34;
      v35 = sub_10000F938(a1, a1 + 774, 0xFFFFFFFFLL, v18, v19, v20, v21, v22);
      if (v35)
      {
        v23 = v35;
        if (v35 == 2)
        {
          v44 = *(*a1 + 384) + 212;
          v46 = *(a1 + 88);
          log_err("%s:%d: %s dev %d Failed to find length tree predecessor for node that wasn't the smallest\n", v16, v17, v18, v19, v20, v21, v22, "spaceman_fxc_update_length");
        }

        return v23;
      }

      if ((*(*(a1 + 80) + 24 * *(v25 + 2 * *(a1 + 871)) + 8) & 0xFFFFFFFFFFFFFuLL) >= a4)
      {
        v38 = *(a1 + 120);
        if (v38 > a4 || v38 == a4 && *(a1 + 112) < a2)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = a4;
        }

        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v28 = *(v13 + 80);
    *(a1 + 838) = *(v13 + 64);
    *(a1 + 854) = v28;
    *(a1 + 870) = *(v13 + 96);
    v29 = *(v13 + 16);
    *v25 = *v13;
    *(a1 + 790) = v29;
    v30 = *(v13 + 48);
    *(a1 + 806) = *(v13 + 32);
    *(a1 + 822) = v30;
    v31 = sub_10000F938(a1, a1 + 774, 1, v18, v19, v20, v21, v22);
    if (v31)
    {
      v23 = v31;
      if (v31 != 2)
      {
        return v23;
      }

      if (v14 == a2)
      {
        *(a1 + 120) = a4;
      }

      if (*(a1 + 128) >= a4)
      {
        return 0;
      }

      v23 = 0;
LABEL_39:
      *(a1 + 128) = a4;
      return v23;
    }

    v36 = vandq_s8(*(*(a1 + 80) + 24 * *(v25 + 2 * *(a1 + 871))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
    if (v36.i64[1] < a4 || (v36.i64[1] == a4 ? (v37 = v36.i64[0] <= a2) : (v37 = 1), !v37))
    {
      if (v14 == a2)
      {
        *(a1 + 112) = v36;
      }

LABEL_37:
      sub_10000DC64(a1, v13);
      v23 = sub_10000DA40(a1, 1u, a2, a4, &v48, v39, v40, v41);
      goto LABEL_38;
    }

    if (v14 != a2)
    {
LABEL_32:
      v23 = 0;
      goto LABEL_38;
    }
  }

  v23 = 0;
  *(a1 + 120) = a4;
LABEL_38:
  v42 = *(a1 + 128);
  if (v42 < a4)
  {
    goto LABEL_39;
  }

  if (v42 == a3)
  {
    sub_10000E560(a1, v16, v17, v18, v19, v20, v21, v22);
  }

  return v23;
}

unint64_t sub_10000D6C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = result + 296;
  v6 = a2 - 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v5 + 16 * v4);
    if (*v9)
    {
      result = calc_overlap_range(v6, a3 + 2, *v9, v9[1] - *v9, 0);
      if (result)
      {
        *v9 = 0;
      }
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_10000D73C(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = *(a5 + 96);
  if (a4 && (LOWORD(v7) = *a4) != 0)
  {
    v8 = *(a1 + 80);
    v9 = (v8 + 24 * *a4);
    if ((*v9 & 0xFFFFFFFFFFFFFLL) != a2)
    {
      sub_1000A3E58();
    }

    if ((v9[1] & 0xFFFFFFFFFFFFFLL) != a3)
    {
      sub_1000A3E84();
    }

    *(v9 + v6 + 4) = 0;
    if (v6 >= 2)
    {
      sub_1000A3EB0();
    }

    v9[v6 != 0] &= 0xFFFFFFFFFFFFFFuLL;
  }

  else
  {
    v7 = *(a1 + 92);
    if (v7 > *(a1 + 88) >> 8)
    {
      return 22;
    }

    if (!*(a1 + 92))
    {
      return 12;
    }

    if (*a1)
    {
      v11 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 48);
      if (v11 < a3)
      {
        sub_1000A3F08();
      }

      v12 = *(a1 + 96) + a3;
      if (v12 > v11)
      {
        sub_1000A3EDC();
      }
    }

    else
    {
      v12 = *(a1 + 96) + a3;
    }

    v13 = (*(a1 + 80) + 24 * *(a1 + 92));
    *(a1 + 92) = *v13;
    ++*(a1 + 94);
    *(a1 + 96) = v12;
    v13[1] = 0;
    v13[2] = 0;
    *v13 = 0;
    if (a4)
    {
      *a4 = v7;
    }

    v8 = *(a1 + 80);
    v14 = (v8 + 24 * v7);
    *v14 = a2;
    v14[1] = a3;
  }

  v15 = *(a5 + 97);
  v16 = (a5 + 4 * v15);
  *v16 = v7;
  v16[1] = 0;
  if (v15)
  {
    v17 = v15;
    *(v8 + 24 * *(a5 + 4 * (v15 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v15 - 1) + 3) + 1 + (((*(a5 + 4 * (v15 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16) = v7;
    v18 = v15;
    if ((v15 & 0x80000000) == 0)
    {
      while (!*(a5 + 4 * v18 + 2))
      {
        v19 = v18--;
        if (v19 <= 0)
        {
          v18 = -1;
          break;
        }
      }
    }

    v20 = (v18 + 1);
    if (v20 < v17)
    {
      if (v6 > 1)
      {
        sub_1000A3EB0();
      }

      LOBYTE(v21) = v18 + 1;
      do
      {
        v22 = (a5 + 4 * v21);
        v23 = *(v22 + 3);
        *(v8 + 8 * (v6 != 0) + 24 * *v22 + 7) = v23;
        *(v22 + 2) = v23;
        v21 = (v21 + 1);
      }

      while (v21 < v17);
    }

    if ((v18 & 0x80) == 0)
    {
      v24 = (a5 + 4 * v18);
      v25 = *(v24 + 3);
      if (!(*(v24 + 2) + v25))
      {
        if (v6 >= 2)
        {
          sub_1000A3EB0();
        }

        result = 0;
        *(v8 + 24 * *v24 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
        return result;
      }

      if (*(v24 + 2) == v25)
      {
        if (v18)
        {
          v27 = (v8 + 24 * *(a5 + 4 * (v18 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v18 - 1) + 3) + 1 + (((*(a5 + 4 * (v18 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        else
        {
          v27 = (a1 + 2 * v6 + 104);
        }

        v28 = -v25;
        v29 = (a5 + 4 * v20);
        v30 = *(v29 + 2);
        if (v30 == v25)
        {
          sub_10000FA14(a1, v6, v28, *v24, v27);
        }

        else if (v30 == v28)
        {
          sub_10000FB30(a1, v6, v25, *v24, *v29, v27);
        }
      }
    }

    return 0;
  }

  v26 = a1 + 104;
  if (*(a1 + 104 + 2 * v6))
  {
    sub_1000A3F34();
  }

  result = 0;
  *(v26 + 2 * v6) = v7;
  return result;
}