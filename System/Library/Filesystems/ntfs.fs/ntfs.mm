uint64_t start(int a1, uint64_t a2)
{
  v2 = *a2;
  if (a1 < 3 || (memset(&v38, 0, sizeof(v38)), v4 = *(a2 + 8), *v4 != 45))
  {
LABEL_99:
    sub_100000CE4(v2);
  }

  v5 = v4[1];
  v6 = *(a2 + 16);
  if (v5 <= 0x6F)
  {
    if (v5 == 107)
    {
      if (a1 != 3)
      {
        goto LABEL_99;
      }
    }

    else if (v5 != 109 || a1 != 8)
    {
      goto LABEL_99;
    }

    goto LABEL_15;
  }

  if (v5 == 112)
  {
    if (a1 != 5)
    {
      goto LABEL_99;
    }
  }

  else if (v5 != 117 || a1 != 4)
  {
    goto LABEL_99;
  }

LABEL_15:
  if (strncmp(*(a2 + 16), "disk", 4uLL))
  {
    if (!strncmp(v6, "/dev/fd/", 8uLL))
    {
      if (v5 == 107 || v5 == 112)
      {
        __strlcpy_chk();
        goto LABEL_24;
      }

      fprintf(__stderrp, "%s: only support fd during probing or getting voolume uuid");
    }

LABEL_103:
    exit(-6);
  }

  if (snprintf(__str, 0x400uLL, "/dev/r%s", v6) >= 1024)
  {
    goto LABEL_100;
  }

  if (stat(__str, &v38))
  {
LABEL_101:
    v36 = __stderrp;
    v37 = __error();
    strerror(*v37);
    fprintf(v36, "%s: stat %s failed, %s\n");
    goto LABEL_103;
  }

  if (snprintf(v40, 0x400uLL, "/dev/%s", v6) >= 1024)
  {
LABEL_100:
    fprintf(__stderrp, "%s: Specified device name is too long.\n");
    goto LABEL_103;
  }

  if (stat(v40, &v38))
  {
    goto LABEL_101;
  }

LABEL_24:
  if (v5 == 117 || v5 == 109)
  {
    v7 = *(a2 + 24);
    v8 = (a2 + 32);
  }

  else
  {
    v7 = 0;
    v8 = (a2 + 24);
  }

  if (v5 == 112 || v5 == 109)
  {
    v9 = *v8;
    if (strcmp(*v8, "removable") && strcmp(v9, "fixed"))
    {
      goto LABEL_99;
    }

    v10 = v8[1];
    if (!strcmp(v10, "readonly"))
    {
      v11 = 1;
    }

    else
    {
      if (strcmp(v10, "writable"))
      {
        goto LABEL_99;
      }

      v11 = 0;
    }

    if (v5 == 109)
    {
      v12 = v8[2];
      if (!strcmp(v12, "nosuid"))
      {
        v13 = 1;
      }

      else
      {
        if (strcmp(v12, "suid"))
        {
          goto LABEL_99;
        }

        v13 = 0;
      }

      v20 = v8[3];
      if (!strcmp(v20, "nodev"))
      {
        v21 = 0;
      }

      else
      {
        if (strcmp(v20, "dev"))
        {
          goto LABEL_99;
        }

        v21 = 1;
      }

      v51 = *off_100004120;
      v52 = 0;
      *&v43 = "/sbin/mount";
      *(&v43 + 1) = "-w";
      *&v44 = "-o";
      *(&v44 + 1) = "suid";
      *&v45 = "-o";
      *(&v45 + 1) = "dev";
      v46 = "-t";
      v47 = "ntfs";
      v48 = v40;
      v49 = v7;
      v50 = 0;
      if (v7 && *v7)
      {
        if (v11)
        {
          *(&v43 + 1) = "-r";
        }

        if (v13)
        {
          *(&v44 + 1) = "nosuid";
        }

        if ((v21 & 1) == 0)
        {
          *(&v45 + 1) = "nodev";
        }

        memset(&__buf, 0, sizeof(__buf));
        if (getvfsbyname("ntfs", &__buf))
        {
          sub_100001904(v2, &v51);
        }

        return sub_100001904(v2, &v43);
      }

      return 4294967290;
    }
  }

  if (v5 <= 111)
  {
    v39 = 0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v14 = sub_100000EE0(__str, &v43, &v39);
    if (v14 == -1)
    {
      v15 = v39;
      v16 = v39 + v39[10];
      *&v51 = v39;
      *(&v51 + 1) = v16;
      v17 = sub_100001368(0x40u, &v51);
      if (v17)
      {
        if (v17 == -2)
        {
          v14 = 4294967290;
        }

        else
        {
          v14 = v17;
        }

        goto LABEL_93;
      }

      if (!*(*(&v51 + 1) + 8))
      {
        v22 = *(&v51 + 1) + *(*(&v51 + 1) + 20);
        v23 = v22 + *(*(&v51 + 1) + 16);
        if (v23 <= v15 + DWORD2(v43) && v23 <= *(&v51 + 1) + *(*(&v51 + 1) + 4) && snprintf(&__buf, 0x25uLL, "%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x", *v22, *(v22 + 4), *(v22 + 6), *(v22 + 8), *(v22 + 9), *(v22 + 10), *(v22 + 11), *(v22 + 12), *(v22 + 13), *(v22 + 14), *(v22 + 15)) == 36)
        {
          write(1, &__buf, 0x24uLL);
          v14 = 4294967293;
LABEL_93:
          free(v15);
          return v14;
        }
      }

LABEL_92:
      v14 = 4294967292;
      goto LABEL_93;
    }
  }

  else
  {
    if (v5 != 112)
    {
      *&v43 = "/sbin/umount";
      *(&v43 + 1) = v7;
      *&v44 = 0;
      if (v7 && *v7)
      {
        return sub_100001904(v2, &v43);
      }

      return 4294967290;
    }

    *&v51 = 0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v14 = sub_100000EE0(__str, &v43, &v51);
    if (v14 == -1)
    {
      v15 = v51;
      v18 = v15 + v15[10];
      *&__buf.vfc_reserved1 = v51;
      *&__buf.vfc_name[4] = v18;
      v19 = sub_100001368(0x60u, &__buf.vfc_reserved1);
      if (v19)
      {
        if (v19 == -2)
        {
          v14 = 0xFFFFFFFFLL;
        }

        else
        {
          v14 = v19;
        }

        goto LABEL_93;
      }

      if (!*(*&__buf.vfc_name[4] + 8))
      {
        v24 = (*&__buf.vfc_name[4] + *(*&__buf.vfc_name[4] + 20));
        v25 = *(*&__buf.vfc_name[4] + 16);
        if (&v24[v25] <= v15 + DWORD2(v43) && &v24[v25] <= *&__buf.vfc_name[4] + *(*&__buf.vfc_name[4] + 4))
        {
          if (v25 >= 2)
          {
            v26 = v25 >> 1;
            v27 = (*&__buf.vfc_name[4] + *(*&__buf.vfc_name[4] + 20));
            do
            {
              if ((*v27 & 0xFFC0) == 0xF000)
              {
                v28 = *v27 & 0x3FLL;
                if (v28 <= 0x29)
                {
                  *v27 = byte_100001CA0[v28];
                }
              }

              ++v27;
              --v26;
            }

            while (v26);
          }

          v29 = CFStringCreateWithBytes(kCFAllocatorDefault, v24, v25 & 0xFFFFFFFE, 0x14000100u, 1u);
          if (v29)
          {
            v30 = v29;
            MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v29);
            v32 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x10F9C8EAuLL);
            if (v32)
            {
              v33 = v32;
              if (CFStringGetFileSystemRepresentation(v30, v32, MaximumSizeOfFileSystemRepresentation) && (v34 = strlen(v33), v34 <= MaximumSizeOfFileSystemRepresentation))
              {
                write(1, v33, v34);
                v14 = 0xFFFFFFFFLL;
              }

              else
              {
                v14 = 4294967292;
              }

              free(v33);
            }

            else
            {
              v14 = 4294967292;
            }

            CFRelease(v30);
            goto LABEL_93;
          }
        }
      }

      goto LABEL_92;
    }
  }

  return v14;
}

void sub_100000CE4(const char *a1)
{
  fprintf(__stderrp, "usage: %s action_arg device_arg [mount_point_arg] [Flags]\n", a1);
  fwrite("action_arg:\n", 0xCuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "       -%c (Get UUID Key)\n", 107);
  fprintf(__stderrp, "       -%c (Mount)\n", 109);
  fprintf(__stderrp, "       -%c (Probe)\n", 112);
  fprintf(__stderrp, "       -%c (Unmount)\n", 117);
  fwrite("device_arg:\n", 0xCuLL, 1uLL, __stderrp);
  fwrite("       device we are acting upon (for example, 'disk0s2')\n", 0x3AuLL, 1uLL, __stderrp);
  fwrite("mount_point_arg:\n", 0x11uLL, 1uLL, __stderrp);
  fwrite("       required for Mount and Unmount\n", 0x26uLL, 1uLL, __stderrp);
  fwrite("Flags:\n", 7uLL, 1uLL, __stderrp);
  fwrite("       required for Mount and Probe\n", 0x24uLL, 1uLL, __stderrp);
  fwrite("       indicates removable or fixed (for example 'fixed')\n", 0x3AuLL, 1uLL, __stderrp);
  fwrite("       indicates readonly or writable (for example 'readonly')\n", 0x3FuLL, 1uLL, __stderrp);
  fwrite("Flags (Mount only):\n", 0x14uLL, 1uLL, __stderrp);
  fwrite("       indicates suid or nosuid (for example 'nosuid')\n", 0x37uLL, 1uLL, __stderrp);
  fwrite("       indicates dev or nodev (for example 'nodev')\n", 0x34uLL, 1uLL, __stderrp);
  fwrite("Examples:\n", 0xAuLL, 1uLL, __stderrp);
  fprintf(__stderrp, "       %s -p disk0s2 fixed writable\n", a1);
  fprintf(__stderrp, "       %s -m disk0s2 /my/hfs removable readonly nosuid nodev\n", a1);
  exit(-6);
}

uint64_t sub_100000EE0(const char *a1, uint64_t a2, unsigned __int16 **a3)
{
  v44 = 0;
  v42 = 0;
  v6 = sysconf(29);
  v7 = 512;
  if (v6 > 512)
  {
    v7 = v6;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x8000;
  }

  if (strncmp(a1, "/dev/rdisk", 0xAuLL))
  {
    if (strncmp(a1, "/dev/fd/", 8uLL))
    {
      return 4294967292;
    }

    __endptr = 0;
    v9 = strtol(a1 + 8, &__endptr, 10);
    if (*__endptr)
    {
      return 4294967292;
    }

    v10 = v9;
    memset(&v41, 0, sizeof(v41));
    if (fstat(v9, &v41) || lseek(v10, 0, 0) == -1)
    {
      return 4294967292;
    }

LABEL_13:
    if (ioctl(v10, 0x40046418uLL, &v42) < 0 || (v42 <= v8 ? (v12 = v8) : (v12 = v42), (v13 = malloc_type_malloc(v12, 0xEC9661CBuLL)) == 0))
    {
      v11 = 4294967292;
LABEL_53:
      close(v10);
      return v11;
    }

    v14 = v13;
    if (read(v10, v13, v12) < 512)
    {
      goto LABEL_19;
    }

    if (*(v14 + 3) == 0x202020205346544ELL)
    {
      v15 = *(v14 + 11);
      if (v15 - 4097 >= 0xFFFFF0FF)
      {
        if ((v16 = v14[13], (v16 - 1) <= 0x3F) && ((1 << (v16 - 1)) & 0x800000008000808BLL) != 0 || v16 == 128)
        {
          v17 = v16 * v15;
          if (v16 * v15 <= 0x10000 && !*(v14 + 7) && !*(v14 + 17) && !*(v14 + 19) && !*(v14 + 11) && !*(v14 + 8) && !v14[16])
          {
            v18 = v14[64];
            if ((v14[64] + 8) <= 0xE8u)
            {
              if (v14[64] - 1 > 0x3F)
              {
                goto LABEL_51;
              }

              v11 = 4294967294;
              if (((1 << (v18 - 1)) & 0x800000008000808BLL) == 0)
              {
                goto LABEL_52;
              }
            }

            v19 = v14[68];
            if ((v19 - 248) <= 0xFFFFFFE8)
            {
              v20 = v19 - 1;
              if (v20 > 0x3F)
              {
                goto LABEL_51;
              }

              v11 = 4294967294;
              if (((1 << v20) & 0x800000008000808BLL) == 0)
              {
                goto LABEL_52;
              }
            }

            *a2 = v15;
            *(a2 + 4) = v17;
            if (v17 >= v15)
            {
              v21 = v18 <= 0 ? (1 << -v18) : v17 * v18;
              *(a2 + 8) = v21;
              v22 = *(v14 + 5) / v16;
              if (!HIDWORD(v22))
              {
                *(a2 + 40) = v22;
                v23 = *(v14 + 6);
                if (v23 < v22)
                {
                  *(a2 + 16) = v23;
                  v24 = *(v14 + 7);
                  if (v24 < v22)
                  {
                    *(a2 + 24) = v24;
                    v25 = malloc_type_malloc(v21, 0xA4A37787uLL);
                    if (!v25)
                    {
                      v11 = 4294967290;
                      goto LABEL_52;
                    }

                    v26 = v25;
                    v27 = sub_1000013DC(v10, v14, v12, v25, *(a2 + 8), *(a2 + 16) * *(a2 + 4));
                    v28 = *(a2 + 8);
                    if (v27 == v28 && !sub_1000014B4(v26, v28))
                    {
                      v31 = v26 + v26[10];
                      *&v41.st_dev = v26;
                      v41.st_ino = v31;
                      v32 = sub_100001368(0x80u, &v41);
                      if (!v32)
                      {
                        __endptr = 0;
                        v32 = sub_100001564(a2, v41.st_ino, &__endptr);
                        if (!v32)
                        {
                          v33 = *(a2 + 4);
                          v34 = *(a2 + 8);
                          v35 = (v33 - 1) & (3 * v34);
                          v40 = __endptr;
                          v36 = 3 * v34 / v33;
                          do
                          {
                            v37 = sub_100001874(v40, v36, &v44);
                            if (v37 < 0 || ((v38 = *(a2 + 4), v44 * v38 - v35 >= v34) ? (v39 = v34) : (v39 = v44 * v38 - v35), sub_1000013DC(v10, v14, v12, v26, v39, v35 + v37 * v38) != v39))
                            {
                              free(v40);
                              goto LABEL_69;
                            }

                            v35 = 0;
                            v34 -= v39;
                            v36 += v44;
                          }

                          while (v34 > 0);
                          free(v40);
                          if (!sub_1000014B4(v26, *(a2 + 8)))
                          {
                            close(v10);
                            free(v14);
                            *a3 = v26;
                            return 0xFFFFFFFFLL;
                          }

LABEL_69:
                          free(v26);
LABEL_19:
                          v11 = 4294967292;
LABEL_52:
                          free(v14);
                          goto LABEL_53;
                        }
                      }

                      v29 = v32;
                    }

                    else
                    {
                      v29 = 4294967292;
                    }

                    free(v26);
                    v11 = v29;
                    goto LABEL_52;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_51:
    v11 = 4294967294;
    goto LABEL_52;
  }

  v10 = open(a1, 0);
  if (v10 != -1)
  {
    goto LABEL_13;
  }

  return 4294967292;
}

uint64_t sub_100001368(unsigned int a1, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2 >= *a2)
  {
    v5 = v3 + *(v3 + 28);
    while (v2 <= v5)
    {
      a2[1] = v2;
      v6 = *v2;
      if (*v2 > a1 || v6 == -1)
      {
        return 4294967294;
      }

      v8 = v2[1];
      if (!v8)
      {
        return 4294967292;
      }

      if (v6 == a1)
      {
        if (*(v2 + 9))
        {
          return 4294967294;
        }

        else
        {
          return 0;
        }
      }

      v2 = (v2 + v8);
      if (v2 < v3)
      {
        return 4294967292;
      }
    }
  }

  return 4294967292;
}

uint64_t sub_1000013DC(int __fd, char *__buf, int64_t __nbyte, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 < 1)
  {
    return 0;
  }

  v7 = a5;
  v11 = 0;
  v12 = -__nbyte;
  v13 = (__nbyte - 1) & a6;
  v14 = __nbyte - v13;
  while (1)
  {
    v15 = v14 >= v7 ? v7 : v14;
    if (pread(__fd, __buf, __nbyte, v12 & a6) < (v15 + v13))
    {
      break;
    }

    memcpy((a4 + v11), &__buf[v13], v15);
    v11 += v15;
    v16 = v7 <= v15;
    v7 -= v15;
    if (v16)
    {
      return v11;
    }
  }

  if (!v11)
  {
    return -1;
  }

  return v11;
}

uint64_t sub_1000014B4(uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x1FF) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 4);
  if (v2)
  {
    return 0;
  }

  v3 = *(a1 + 6);
  v4 = v3 - 1;
  v5 = v2 + 2 * (v3 - 1) <= a2 && a2 >> 9 == (v3 - 1);
  if (!v5 || v3 == 1)
  {
    return 0;
  }

  v6 = v2 >> 1;
  v7 = (a1 + 510);
  v8 = v3 - 2;
  v9 = 510;
  do
  {
    if (*(a1 + v9) != *(a1 + 2 * v6))
    {
      *a1 = 1145127234;
      return 4294967292;
    }

    v9 += 512;
    v5 = v8-- == 0;
  }

  while (!v5);
  v10 = (a1 + 2 * v6 + 2);
  do
  {
    result = 0;
    v12 = *v10++;
    *v7 = v12;
    v7 += 256;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t sub_100001564(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 4294967290;
  }

  if (!*(a2 + 8))
  {
    return 4294967290;
  }

  v4 = *(a2 + 16);
  if (v4 < 0)
  {
    return 4294967290;
  }

  v5 = *(a2 + 32);
  v6 = *(a2 + 4);
  if (v5 > v6)
  {
    return 4294967292;
  }

  v10 = (a2 + v5);
  if (!v4)
  {
    if (!*v10)
    {
      return 4294967294;
    }

    v11 = malloc_type_malloc(0x400uLL, 0x58E7ADB5uLL);
    if (v11)
    {
      v49 = a1;
      v50 = a3;
      v12 = 0;
      goto LABEL_12;
    }

    return 4294967290;
  }

  v11 = malloc_type_malloc(0x400uLL, 0x58E7ADB5uLL);
  if (!v11)
  {
    return 4294967290;
  }

  v49 = a1;
  v50 = a3;
  *v11 = xmmword_100001C90;
  v11[2] = v4;
  v12 = 1;
LABEL_12:
  if (v5 >= v6)
  {
    goto LABEL_51;
  }

  v13 = 0;
  v14 = a2 + v6;
  v15 = 1024;
  while (*v10)
  {
    v16 = v12;
    if (24 * v12 + 72 > v15)
    {
      v51 = v12;
      v17 = v4;
      v18 = v11;
      v19 = malloc_type_malloc(v15 + 1024, 0xD8C51940uLL);
      if (!v19)
      {
        v7 = 4294967290;
        v11 = v18;
        goto LABEL_52;
      }

      v20 = v19;
      memcpy(v19, v18, v15);
      free(v18);
      v11 = v20;
      v15 += 1024;
      v4 = v17;
      v12 = v51;
    }

    v21 = &v11[3 * v16];
    *v21 = v4;
    v22 = *v10 & 0xF;
    if ((*v10 & 0xF) == 0 || &v10[v22] >= v14)
    {
      goto LABEL_51;
    }

    v23 = v10[v22];
    v24 = v22 - 1;
    if (v24)
    {
      v25 = v24;
      v26 = &v10[v24];
      v27 = v25 - 1;
      do
      {
        v28 = *v26--;
        v23 = v28 | (v23 << 8);
      }

      while (v27--);
    }

    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v21[2] = v23;
    v30 = *v10;
    if (v30 >= 0x10)
    {
      v32 = v30 & 0xF;
      v33 = v32 + (v30 >> 4);
      if (&v10[v33] >= v14)
      {
        goto LABEL_51;
      }

      v34 = v10[v33];
      v35 = v33 - 1;
      if (v35 > v32)
      {
        v36 = v35;
        v37 = &v10[v35];
        v38 = v36 - 1;
        do
        {
          v39 = *v37--;
          v34 = v39 | (v34 << 8);
        }

        while (v32 < v38--);
      }

      v31 = v34 + v13;
      v13 = v31;
      if (v31 < -1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v31 = -1;
    }

    v4 += v23;
    v21[1] = v31;
    ++v12;
    v10 += (*v10 & 0xF) + (*v10 >> 4) + 1;
    if (v10 >= v14)
    {
      goto LABEL_51;
    }
  }

  v42 = *(a2 + 24);
  if (v42 && v4 - 1 != v42)
  {
    goto LABEL_51;
  }

  if (*(a2 + 16))
  {
    v44 = -2;
LABEL_50:
    v7 = 0;
    v48 = &v11[3 * v12];
    *v48 = v4;
    v48[1] = v44;
    v48[2] = 0;
    *v50 = v11;
    return v7;
  }

  if (!v42)
  {
LABEL_49:
    v44 = -3;
    goto LABEL_50;
  }

  v45 = (*(a2 + 40) + *(v49 + 4) - 1) / *(v49 + 4);
  v46 = v45 - 1 - v42;
  if (v45 - 1 > v42)
  {
    v47 = &v11[3 * v12];
    *v47 = v4;
    v4 += v46;
    v47[1] = -2;
    v47[2] = v46;
    LOWORD(v12) = v12 + 1;
    goto LABEL_49;
  }

  if (v42 < v45)
  {
    goto LABEL_49;
  }

LABEL_51:
  v7 = 4294967292;
LABEL_52:
  free(v11);
  return v7;
}

uint64_t sub_100001874(void *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return -2;
  }

  if (*a1 > a2)
  {
    return -3;
  }

  v4 = 1;
  while (1)
  {
    v5 = &a1[3 * v4 - 3];
    v6 = v5[2];
    if (!v6)
    {
      break;
    }

    v7 = a1[3 * v4++];
    if (v7 > a2)
    {
      v8 = a2 - *v5;
      if (a3)
      {
        *a3 = v6 - v8;
      }

      v9 = v5[1];
      if (v9 < 0)
      {
        v8 = 0;
      }

      return v8 + v9;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  v10 = v5[1];
  if (v10 >= 0)
  {
    return -3;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_100001904(const char *a1, const char **a2)
{
  v17 = 0;
  v4 = fork();
  if (v4 == -1)
  {
    v5 = __stderrp;
    v6 = __error();
    strerror(*v6);
    fprintf(v5, "%s: fork failed: %s\n");
    return 4294967290;
  }

  if (!v4)
  {
    execv(*a2, a2);
    v12 = *__error();
    v13 = __stderrp;
    v14 = *a2;
    v15 = strerror(v12);
    fprintf(v13, "%s: execv %s failed: %s\n", a1, v14, v15);
    exit(v12);
  }

  if (wait4(v4, &v17, 0, 0) != v4)
  {
    v7 = *a2;
    fprintf(__stderrp, "%s: BUG executing %s command.\n");
    return 4294967290;
  }

  if ((v17 & 0x7F) != 0)
  {
    v16 = *a2;
    fprintf(__stderrp, "%s: %s command aborted by signal %d.\n");
    return 4294967290;
  }

  if (!BYTE1(v17))
  {
    return 4294967293;
  }

  v9 = __stderrp;
  v10 = *a2;
  v11 = strerror(BYTE1(v17));
  fprintf(v9, "%s: %s command failed: %s\n", a1, v10, v11);
  return 4294967292;
}