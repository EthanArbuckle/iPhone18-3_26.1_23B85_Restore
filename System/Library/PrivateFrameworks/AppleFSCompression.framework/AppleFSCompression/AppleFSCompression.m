ssize_t catFile()
{
  v0 = MEMORY[0x28223BE20]();
  v25 = *MEMORY[0x277D85DE8];
  if (v1 && (v2 = sub_24051DC54(), v2 != 93))
  {
    if (v2)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v3 = open(v0, 0);
    if (v3 == -1)
    {
      v14 = __error();
      strerror(*v14);
      sub_24051EB50(@"%s:%d: open(%s): %s\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = v3;
      memset(__b, 170, sizeof(__b));
      while (1)
      {
        v5 = read(v4, __b, 0x1000uLL);
        if (!v5)
        {
          break;
        }

        if (write(1, __b, v5) != v5)
        {
          v6 = __error();
          strerror(*v6);
          sub_24051EB50(@"%s:%d: write: %s\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
          v5 = 0xFFFFFFFFLL;
          break;
        }
      }

      close(v4);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t queryCompressionInfo(char *a1, int *a2)
{
  if (a1 && a2)
  {

    return sub_24051E7C0(a1, -1, a2, 0);
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t decompressWithCallback(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9[0] = a8;
  v9[1] = a1;
  v9[2] = a2;
  return sub_240524720(v9, a3, a4, a5, a6, a7, a7, a8);
}

_DWORD *sub_24051DAAC(char *path, int fd)
{
  if (fd == -1)
  {
    v4 = getxattr(path, "com.apple.decmpfs", 0, 0, 0, 32);
  }

  else
  {
    v4 = fgetxattr(fd, "com.apple.decmpfs", 0, 0, 0, 32);
  }

  v12 = v4;
  if (v4 == -1)
  {
    if (*__error() != 93)
    {
      v13 = __error();
      strerror(*v13);
      sub_24051EB50(@"%s:%d: getxattr(%s): %s\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
    }

    return 0;
  }

  if (v4 <= 0xF)
  {
    sub_24051EB50(@"%s:%d: Error: size of %s EA is too small (%zd < %zu)\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
    return 0;
  }

  if (v4 >= 0x100000000)
  {
    sub_24051EB50(@"%s:%d: Error: size of %s EA is too big (%zd)\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
    return 0;
  }

  v21 = malloc(v4 + 4);
  v22 = v21 + 1;
  if (fd == -1)
  {
    v23 = getxattr(path, "com.apple.decmpfs", v22, v12, 0, 32);
  }

  else
  {
    v23 = fgetxattr(fd, "com.apple.decmpfs", v22, v12, 0, 32);
  }

  if (v23 != v12)
  {
    sub_24051EB50(@"%s:%d: Error: size of %s EA changed\n", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
    return 0;
  }

  *v21 = v12;
  return v21;
}

uint64_t sub_24051DC54()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v101 = *MEMORY[0x277D85DE8];
  v4 = sub_24051DAAC(v0, -1);
  if (v4)
  {
    v11 = v4;
    v94[0] = 0;
    v94[1] = v3;
    v94[2] = v4;
    sub_240523E4C(&v95, v94, v5, v6, v7, v8, v9, v10);
    if (HIDWORD(v96) != 196608 && HIDWORD(v96) != 0x20000)
    {
      if (HIDWORD(v96) == 0x10000)
      {
        goto LABEL_5;
      }

      v86 = v95[1];
      sub_24051EB50(@"%s:%d: %s: unknown chunking scheme %llu\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
      goto LABEL_25;
    }

    v98 = 0;
    LOWORD(__b[3]) = -21846;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __b[1] = v26;
    __b[2] = v26;
    __b[0] = v26;
    if (HIDWORD(v96) == 0x20000)
    {
      v27 = 8 * v97 + 314;
    }

    else
    {
      v27 = 4 * (v97 + 1);
    }

    v28 = *v95;
    if (*v95)
    {
      value = 0;
      v29 = (*(v28 + 16))(v28, 0, 0, 0, &value);
      v98 = v29;
      if (v29)
      {
        v25 = v29;
        v85 = v95[1];
        sub_24051EB50(@"%s:%d: %s: readRscData: (0, 0), returned error [%d]", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
LABEL_26:
        strerror(v25);
        sub_24051EB50(@"%s:%d: validate(%s): %s\n", v55, v56, v57, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
LABEL_27:
        free(v11);
        goto LABEL_28;
      }

      v37 = value;
      if (value == -1)
      {
LABEL_5:
        for (i = 0; ; i += v23)
        {
          value = 0;
          memset(__b, 170, sizeof(__b));
          v95 = __b;
          v96 = 4096;
          v22 = sub_240524720(v94, i, 4096, 1, &v95, &value, v20, v21);
          if (v22)
          {
            v25 = v22;
            strerror(v22);
            sub_24051EB50(@"%s:%d: decompress: %s\n", v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
            goto LABEL_27;
          }

          v23 = value;
          if (!value)
          {
            v25 = 0;
            goto LABEL_27;
          }

          v24 = (*(v2 + 16))(v2, __b, value);
          if (v24)
          {
            break;
          }
        }

        v25 = v24;
        goto LABEL_27;
      }
    }

    else
    {
      v37 = getxattr(v95[1], "com.apple.ResourceFork", 0, 0, 0, 32);
      if (v37 == -1)
      {
        v38 = v95[1];
        v39 = __error();
        strerror(*v39);
        sub_24051EB50(@"%s:%d: %s: fgetxattr: %s\n", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
        v25 = *__error();
        goto LABEL_42;
      }
    }

    if (v37 < v27)
    {
      v54 = v95[2];
      v92 = v54[2];
      v93 = *(v54 + 3);
      v91 = *v54;
      v87 = v95[1];
      sub_24051EB50(@"%s:%d: %s: resource fork is too small (actual size: %llu < expected min size: %llu) header: (attr_size %u, compression_type %u, uncompressed_size %llu)\n", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
LABEL_25:
      v25 = 22;
      goto LABEL_26;
    }

    if (HIDWORD(v96) == 0x20000)
    {
      if (sub_240523F28(&v95, __b, 0x32uLL, v37 - 50, &v98, v34, v35, v36))
      {
        if (memcmp(__b, &unk_240525D98, 0x32uLL))
        {
          v88 = v95[1];
          sub_24051EB50(@"%s:%d: %s: invalid resource map\n", v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
          goto LABEL_25;
        }

        LODWORD(value) = -1431655766;
        if (sub_240523F28(&v95, &value, 4uLL, 260, &v98, v68, v69, v70))
        {
          if (value == v97)
          {
            goto LABEL_5;
          }

          v90 = v95[1];
          sub_24051EB50(@"%s:%d: %s: expected chunk count %u, found %u\n", v78, v79, v80, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
          goto LABEL_37;
        }
      }
    }

    else
    {
      LODWORD(value) = -1431655766;
      if (sub_240523F28(&v95, &value, 4uLL, 4 * v97, &v98, v34, v35, v36))
      {
        if (v37 == value)
        {
          goto LABEL_5;
        }

        v89 = v95[1];
        sub_24051EB50(@"%s:%d: %s: expected size %u, found %llu\n", v71, v72, v73, v74, v75, v76, v77, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
LABEL_37:
        v25 = 22;
        goto LABEL_42;
      }
    }

    v25 = v98;
LABEL_42:
    if (v25)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  v25 = 93;
LABEL_28:
  v62 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t sub_24051E0C8(uint64_t a1, const void *a2, size_t a3)
{
  if (write(1, a2, a3) == a3)
  {
    return 0;
  }

  v4 = __error();
  strerror(*v4);
  sub_24051EB50(@"%s:%d: write: %s\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
  return *__error();
}

uint64_t decompressFile(char *a1, int a2, int a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v61 = 0;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v60.st_blksize = v6;
  *v60.st_qspare = v6;
  v60.st_birthtimespec = v6;
  *&v60.st_size = v6;
  v60.st_mtimespec = v6;
  v60.st_ctimespec = v6;
  *&v60.st_uid = v6;
  v60.st_atimespec = v6;
  *&v60.st_dev = v6;
  if (stat(a1, &v60) == -1)
  {
    v8 = *__error();
    v17 = __error();
    strerror(*v17);
    sub_24051EB50(@"%s:%d: stat %s: %s\n", v18, v19, v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
    goto LABEL_33;
  }

  if ((v60.st_flags & 0x20) == 0)
  {
    goto LABEL_35;
  }

  if (a2)
  {
    v7 = sub_24051E5A8();
    if (a3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
LABEL_5:
      if (!a1 || sub_24051EE1C(a1, -1, 1))
      {
        v8 = *__error();
        v9 = __error();
        strerror(*v9);
        sub_24051EB50(@"%s:%d: unsetBsdflags %s: %s\n", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
        goto LABEL_22;
      }

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 0x40000000;
      v59[2] = sub_24051E72C;
      v59[3] = &unk_278CA90B0;
      v59[4] = a1;
      v27 = sub_24051ECE0(-1, a1, a1, &v61, v59);
      if (v27 != -1)
      {
        v26 = v27;
        v57[5] = MEMORY[0x277D85DD0];
        v57[6] = 0x40000000;
        v57[7] = sub_24051E738;
        v57[8] = &unk_278CA90D0;
        v58 = v27;
        v57[9] = a1;
        v28 = sub_24051DC54();
        v8 = v28;
        if (v28)
        {
          strerror(v28);
          sub_24051EB50(@"%s:%d: Error: processFileData %s: %s\n", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
          ftruncate(v26, 0);
          sub_24051EE1C(a1, -1, 0);
        }

        else
        {
          fremovexattr(v26, "com.apple.decmpfs", 0);
          fremovexattr(v26, "com.apple.ResourceFork", 0);
        }

LABEL_12:
        fsync(v26);
        close(v26);
        v62.tv_sec = v60.st_atimespec.tv_sec;
        *(&v62.tv_usec + 1) = -1431655766;
        v62.tv_usec = SLODWORD(v60.st_atimespec.tv_nsec) / 1000;
        tv_sec = v60.st_mtimespec.tv_sec;
        v65 = -1431655766;
        v64 = SLODWORD(v60.st_mtimespec.tv_nsec) / 1000;
        if (v61 == 1)
        {
          lchmod(a1, v60.st_mode);
        }

        utimes(a1, &v62);
        if (!v7)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      v8 = *__error();
      v44 = __error();
      strerror(*v44);
      goto LABEL_21;
    }
  }

  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 0x40000000;
  v57[2] = sub_24051E7B4;
  v57[3] = &unk_278CA90F0;
  v57[4] = a1;
  v25 = sub_24051ECE0(-1, a1, a1, &v61, v57);
  if (v25 != -1)
  {
    v26 = v25;
    v8 = 0;
    goto LABEL_12;
  }

  v8 = *__error();
  v36 = __error();
  strerror(*v36);
LABEL_21:
  sub_24051EB50(@"%s:%d: open %s: %s\n", v37, v38, v39, v40, v41, v42, v43, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
LABEL_22:
  if (!v7)
  {
LABEL_27:
    if (!v7)
    {
      goto LABEL_33;
    }

    v54 = v7;
LABEL_32:
    CFRelease(v54);
LABEL_33:
    if (v8)
    {
      goto LABEL_34;
    }

LABEL_35:
    result = 0;
    goto LABEL_36;
  }

LABEL_23:
  if (v8)
  {
    goto LABEL_27;
  }

  v45 = sub_24051E5A8();
  if (v45)
  {
    v46 = v45;
    if (CFEqual(v7, v45))
    {
      v8 = 0;
    }

    else
    {
      sub_24051EB50(@"%s:%d: Error: decompressing %s changed its data!\n", v47, v48, v49, v50, v51, v52, v53, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
      v8 = 5;
    }

    CFRelease(v7);
    v54 = v46;
    goto LABEL_32;
  }

  CFRelease(v7);
  v8 = 5;
LABEL_34:
  *__error() = v8;
  result = 0xFFFFFFFFLL;
LABEL_36:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

CFDataRef sub_24051E5A8()
{
  v0 = MEMORY[0x28223BE20]();
  v28 = *MEMORY[0x277D85DE8];
  v1 = open(v0, 0);
  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v2;
  *&c.wbuf[10] = v2;
  *&c.hash[6] = v2;
  *&c.wbuf[2] = v2;
  *c.count = v2;
  *&c.hash[2] = v2;
  *md = v2;
  v27 = v2;
  if (v1 == -1)
  {
    v5 = __error();
    strerror(*v5);
    sub_24051EB50(@"%s:%d: open %s: %s\n", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
    v13 = 0;
  }

  else
  {
    v3 = v1;
    CC_SHA256_Init(&c);
    while (1)
    {
      memset(__b, 170, sizeof(__b));
      v4 = read(v3, __b, 0x1000uLL);
      if (!v4)
      {
        break;
      }

      if (v4 == -1)
      {
        v14 = __error();
        strerror(*v14);
        sub_24051EB50(@"%s:%d: read %s: %s\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
        v13 = 0;
        goto LABEL_9;
      }

      CC_SHA256_Update(&c, __b, v4);
    }

    CC_SHA256_Final(md, &c);
    v13 = CFDataCreate(0, md, 32);
LABEL_9:
    close(v3);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_24051E738(uint64_t a1, const void *a2, size_t a3)
{
  if (write(*(a1 + 40), a2, a3) == a3)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = __error();
  strerror(*v6);
  sub_24051EB50(@"%s:%d: write %s: %s\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
  return *__error();
}

uint64_t sub_24051E7C0(char *a1, int a2, int *a3, int *a4)
{
  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v43.st_blksize = v8;
  *v43.st_qspare = v8;
  v43.st_birthtimespec = v8;
  *&v43.st_size = v8;
  v43.st_mtimespec = v8;
  v43.st_ctimespec = v8;
  *&v43.st_uid = v8;
  v43.st_atimespec = v8;
  *&v43.st_dev = v8;
  if (a2 == -1)
  {
    result = stat(a1, &v43);
  }

  else
  {
    result = fstat(a2, &v43);
  }

  if (result != -1)
  {
    if (a3)
    {
      st_size = v43.st_size;
      *a3 = 0;
      *(a3 + 1) = 0;
      *(a3 + 2) = st_size;
      *(a3 + 3) = 0;
    }

    else
    {
      *a4 = 0;
    }

    if ((v43.st_flags & 0x20) == 0)
    {
      return 0;
    }

    v11 = sub_24051DAAC(a1, a2);
    if (v11)
    {
      v19 = v11;
      if (v11[1] == 1668116582)
      {
        v20 = v11[2];
        if (a4)
        {
          *a4 = v20;
        }

        else
        {
          *a3 = v20;
          v21 = *(v19 + 3);
          *(a3 + 2) = v21;
          if (v21 != v43.st_size)
          {
            sub_24051EB50(@"%s:%d: Error: Uncompressed size for path '%s' as reported by stat did not match size in disk header!\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
            v20 = *a3;
          }

          v42 = 0;
          sub_240523CD0(v20, 0, &v42, v14, v15, v16, v17, v18);
          if (v42 == 196608 || v42 == 0x20000)
          {
            if (a2 == -1)
            {
              v30 = getxattr(a1, "com.apple.ResourceFork", 0, 0, 0, 32);
            }

            else
            {
              v30 = fgetxattr(a2, "com.apple.ResourceFork", 0, 0, 0, 32);
            }

            if (v30 == -1)
            {
              v41 = *a3;
              sub_24051EB50(@"%s:%d: Error: Type %d compressed file at path '%s' did not have a resource fork\n", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
              LODWORD(v38) = *v19;
            }

            else
            {
              v38 = *v19;
              *(a3 + 1) = v30 + v38;
              v39 = 2;
              if (v42 == 0x20000)
              {
                v39 = 3;
                v40 = 314;
              }

              else
              {
                v40 = 4;
              }

              a3[1] = v38 + v40 + (((*(a3 + 2) + 0xFFFFLL) >> 16) << v39);
            }

            if (v38 >= 0x18)
            {
              *(a3 + 3) = *(v19 + 5);
            }

            goto LABEL_13;
          }

          if (v42 == 0x10000)
          {
            *(a3 + 1) = *v19;
            v29 = 16;
          }

          else
          {
            if (*a3 != 5)
            {
              sub_24051EB50(@"%s:%d: Error: Unknown compression scheme encountered for file '%s'\n", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
              goto LABEL_13;
            }

            *(a3 + 1) = -1;
            v29 = -1;
          }

          a3[1] = v29;
        }

LABEL_13:
        free(v19);
        return 0;
      }

      sub_24051EB50(@"%s:%d: Error: Compressed file at path '%s' had incorrect magic in disk header\n", v12, v13, v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressData/CompressData.c");
      free(v19);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t queryCompressionType(char *a1, int *a2)
{
  if (a1 && a2)
  {

    return sub_24051E7C0(a1, -1, 0, a2);
  }

  else
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }
}

uint64_t fqueryCompressionInfo(int a1, int *a2)
{
  if (a1 < 0 || !a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_24051E7C0("fd", a1, a2, 0);
  }
}

uint64_t fqueryCompressionType(int a1, int *a2)
{
  if (a1 < 0 || !a2)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_24051E7C0("fd", a1, 0, a2);
  }
}

int *sub_24051EB50(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *__error();
  if (qword_27E4B5920 != -1)
  {
    dispatch_once(&qword_27E4B5920, &unk_28525D508);
  }

  v11 = CFStringCreateWithFormatAndArguments(0, 0, a1, &a9);
  if (v11)
  {
    v12 = v11;
    Length = CFStringGetLength(v11);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v15 = malloc(MaximumSizeForEncoding + 1);
    v16 = "failed to convert string\n";
    if (v15 && CFStringGetCString(v12, v15, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      v16 = v15;
    }

    CFRelease(v12);
  }

  else
  {
    v15 = 0;
    v16 = "failed to convert string\n";
  }

  if (byte_27E4B5918 != 1)
  {
    syslog(3, "%s", v16);
    if (!v15)
    {
      goto LABEL_16;
    }

LABEL_15:
    free(v15);
    goto LABEL_16;
  }

  v17 = strlen(v16);
  if (v16[v17 - 1] != 10)
  {
    *&v16[v17] = 10;
  }

  fputs(v16, *MEMORY[0x277D85DF8]);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_16:
  result = __error();
  *result = v10;
  return result;
}

uint64_t sub_24051ECB4()
{
  result = isatty(2);
  byte_27E4B5918 = result != 0;
  return result;
}

uint64_t sub_24051ECE0(int a1, const char *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  result = (*(a5 + 16))(a5);
  if (result == -1)
  {
    if (*__error() != 13)
    {
      return 0xFFFFFFFFLL;
    }

    if (a2)
    {
      if (lchmod(a2, 0x180u) == -1)
      {
        v10 = __error();
        strerror(*v10);
        sub_24051EB50(@"%s:%d: lchmod %s (%s): %s\n", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/commonUtilsUser.c");
        return 0xFFFFFFFFLL;
      }
    }

    else if (fchmod(a1, 0x180u) == -1)
    {
      v19 = __error();
      strerror(*v19);
      sub_24051EB50(@"%s:%d: fchmod %s: %s\n", v20, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/commonUtilsUser.c");
      return 0xFFFFFFFFLL;
    }

    *a4 = 1;
    v18 = *(a5 + 16);

    return v18(a5);
  }

  return result;
}

uint64_t sub_24051EE1C(char *a1, int a2, int a3)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = -1431655766;
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v12.st_blksize = v5;
  *v12.st_qspare = v5;
  v12.st_birthtimespec = v5;
  *&v12.st_size = v5;
  v12.st_mtimespec = v5;
  v12.st_ctimespec = v5;
  *&v12.st_uid = v5;
  v12.st_atimespec = v5;
  v6 = 32 * (a3 == 0);
  v7 = 4;
  *&v12.st_dev = v5;
  while (a2 != -1)
  {
    if (fstat(a2, &v12))
    {
      goto LABEL_16;
    }

LABEL_6:
    LODWORD(v13) = v12.st_flags;
    HIDWORD(v13) = v12.st_flags & 0xFFFFFFDF | v6;
    v14 = -1;
    if (a2 == -1)
    {
      v8 = fsctl(a1, 0xC00C4114uLL, &v13, 0);
    }

    else
    {
      v8 = ffsctl(a2, 0xC00C4114uLL, &v13, 0);
    }

    v9 = v8;
    if (v8)
    {
      if ((v8 & 0x80000000) != 0 && *__error() != 35)
      {
        return v9;
      }
    }

    else if (v12.st_flags == v14)
    {
      return 0;
    }

    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  if (!stat(a1, &v12))
  {
    goto LABEL_6;
  }

LABEL_16:
  v9 = *__error();
LABEL_17:
  if (v12.st_flags == v14)
  {
    v10 = 0;
  }

  else
  {
    v10 = 35;
  }

  if (!v9)
  {
    return v10;
  }

  return v9;
}

unsigned int *CreateStreamCompressorQueueWithOptions(const __CFDictionary *a1)
{
  v130 = *MEMORY[0x277D85DE8];
  v2 = calloc(1uLL, 0x60uLL);
  *v2 = dispatch_group_create();
  *(v2 + 13) = sub_24051F6FC(a1, @"IgnoreXattrErrors", 0, v3, v4, v5, v6, v7);
  *(v2 + 14) = sub_24051F6FC(a1, @"AllowStoringDataInXattr", 1, v8, v9, v10, v11, v12);
  v2[9] = sub_24051F7AC(a1, @"CompressionLevel", 5);
  *(v2 + 15) = sub_24051F6FC(a1, @"ForceAsynchronous", 0, v13, v14, v15, v16, v17);
  v18 = sub_24051F7AC(a1, @"MaxCompressionPercentage", 80);
  v2[5] = v18;
  if (v18 - 101 <= 0xFFFFFF9B)
  {
    sub_24051EB50(@"%s:%d: Error: compression ratio needs to be between 1 and 100\n", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
    goto LABEL_50;
  }

  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"CompressionRules");
    v27 = CFDictionaryGetValue(a1, @"SystemCompressionRules");
    if (Value)
    {
      v28 = CFGetTypeID(Value);
      if (v28 != CFArrayGetTypeID())
      {
        goto LABEL_49;
      }

      Value = CFRetain(Value);
    }

    if (v27)
    {
      v36 = CFGetTypeID(v27);
      if (v36 == CFArrayGetTypeID())
      {
        v37 = CFRetain(v27);
        goto LABEL_27;
      }

LABEL_49:
      *(v2 + 10) = 0;
      sub_24051EB50(@"%s:%d: Error: _InitCompressionRules failed (malformed plist?)\n", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
      goto LABEL_50;
    }
  }

  else
  {
    Value = 0;
  }

  v38 = CFURLCreateFromFileSystemRepresentation(0, "/System/Library/PrivateFrameworks/AppleFSCompression.framework", 62, 1u);
  if (!v38)
  {
    goto LABEL_49;
  }

  v39 = v38;
  v40 = CFBundleCreate(0, v38);
  if (!v40 || (v41 = CFBundleCopyResourceURL(v40, @"SystemCompressionRules", @"plist", 0)) == 0)
  {
    v37 = 0;
    v46 = v39;
LABEL_25:
    CFRelease(v46);
    goto LABEL_26;
  }

  v42 = v41;
  v43 = CFReadStreamCreateWithFile(0, v41);
  v44 = v43;
  if (v43 && CFReadStreamOpen(v43))
  {
    v45 = CFPropertyListCreateWithStream(0, v44, 0, 0, 0, 0);
    v46 = v45;
    if (v45 && (v47 = CFGetTypeID(v45), v47 == CFArrayGetTypeID()))
    {
      v37 = CFRetain(v46);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
    v46 = 0;
  }

  CFRelease(v39);
  CFRelease(v42);
  if (v44)
  {
    CFReadStreamClose(v44);
    CFRelease(v44);
  }

  if (v46)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (!v37)
  {
    goto LABEL_49;
  }

LABEL_27:
  v48 = malloc(0x10uLL);
  if (!v48)
  {
    if (Value)
    {
      CFRelease(Value);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    goto LABEL_49;
  }

  *v48 = Value;
  v48[1] = v37;
  *(v2 + 10) = v48;
  v2[16] = 0;
  if (!a1)
  {
    goto LABEL_59;
  }

  v49 = CFDictionaryGetValue(a1, @"SkipMachOFileTypes");
  if (!v49)
  {
LABEL_53:
    if (v2[16])
    {
LABEL_54:
      v77 = CFDictionaryGetValue(a1, @"SkipMachOOverridePaths");
      if (v77)
      {
        v78 = v77;
        v79 = CFGetTypeID(v77);
        if (v79 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(v78);
          v81 = MEMORY[0x28223BE20]();
          v83 = &v128[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
          if (v81)
          {
            memset(&v128[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)], 170, v82);
          }

          v131.location = 0;
          v131.length = Count;
          CFArrayGetValues(v78, v131, v83);
          *(v2 + 9) = CFSetCreate(0, v83, Count, MEMORY[0x277CBF158]);
        }
      }
    }

LABEL_59:
    if (sub_24051F6FC(a1, @"AFSCThrottledIO", 0, v31, v32, v33, v34, v35))
    {
      *(v2 + 5) = dispatch_get_global_queue(-32768, 0);
    }

    else
    {
      v84 = sub_24051F7AC(a1, @"DispatchQueuePriority", 2);
      global_queue = dispatch_get_global_queue(v84, 0);
      *(v2 + 5) = global_queue;
      if (!global_queue)
      {
        sub_24051EB50(@"%s:%d: Error: invalid kAFSCDispatchQueuePriority value %d\n", v86, v87, v88, v89, v90, v91, v92, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
        goto LABEL_50;
      }
    }

    v93 = dispatch_queue_create("ioqueue", 0);
    *(v2 + 6) = v93;
    dispatch_set_target_queue(v93, *(v2 + 5));
    v94 = dispatch_queue_create("borrowed buffer queue", 0);
    *(v2 + 7) = v94;
    dispatch_set_target_queue(v94, *(v2 + 5));
    v2[4] = 0;
    valuePtr = 0;
    if (!a1)
    {
      goto LABEL_76;
    }

    v100 = CFDictionaryGetValue(a1, @"CompressionTypes");
    if (v100)
    {
      v101 = v100;
      v102 = CFGetTypeID(v100);
      if (v102 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(v101, kCFNumberIntType, &valuePtr))
        {
          IntValue = valuePtr;
          goto LABEL_70;
        }

        sub_24051EB50(@"%s:%d: Error: value %@ for %@ could not be parsed\n", v103, v104, v105, v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
      }

      else
      {
        v111 = CFGetTypeID(v101);
        if (v111 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v101);
          valuePtr = IntValue;
LABEL_70:
          if (sub_240523CD0(IntValue, v2 + 6, v2 + 7, v105, v106, v107, v108, v109))
          {
            v119 = valuePtr;
            if (v2[7] != 0x10000)
            {
              v2[4] = valuePtr;
              if (v119)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            }

            v2[4] = valuePtr + 1;
            sub_240523CD0(v119 + 1, v2 + 6, v2 + 7, v95, v96, v97, v98, v99);
            v127 = v2[4];
            sub_24051EB50(@"%s:%d: Error: shouldn't use compressor type %d since it is a single chunk compressor, using %d instead\n", v120, v121, v122, v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
          }

          goto LABEL_75;
        }

        sub_24051EB50(@"%s:%d: Error: value for %@ is not a string or number\n", v112, v113, v114, v115, v116, v117, v118, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
      }
    }

LABEL_75:
    if (v2[4])
    {
LABEL_77:
      *(v2 + 32) = v2[6];
      *(v2 + 88) = sub_24051F6FC(a1, @"Synchronous", 0, v95, v96, v97, v98, v99);
      goto LABEL_51;
    }

LABEL_76:
    v2[4] = 8;
    sub_240523CD0(8, v2 + 6, v2 + 7, v95, v96, v97, v98, v99);
    goto LABEL_77;
  }

  v50 = v49;
  v51 = CFGetTypeID(v49);
  if (v51 != CFArrayGetTypeID())
  {
    sub_24051EB50(@"%s:%d: Error: SkipMachOFileTypes value is not an array\n", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
    goto LABEL_53;
  }

  v59 = CFArrayGetCount(v50);
  if (v59 < 1)
  {
    goto LABEL_53;
  }

  v60 = v59;
  v61 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v50, v61);
    if (!ValueAtIndex)
    {
      goto LABEL_43;
    }

    v63 = ValueAtIndex;
    valuePtr = 0;
    v64 = CFGetTypeID(ValueAtIndex);
    if (v64 != CFNumberGetTypeID())
    {
      break;
    }

    CFNumberGetValue(v63, kCFNumberSInt32Type, &valuePtr);
    v67 = valuePtr;
LABEL_40:
    if (v67 == -1)
    {
      v2[16] = -1;
      goto LABEL_54;
    }

    if (v67 - 1 >= 0x1F)
    {
      sub_24051EB50(@"%s:%d: Error: invalid item '%@' at index %ld in SkipMachOFileTypes dictionary\n", v65, v66, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
      goto LABEL_50;
    }

    v2[16] |= 1 << v67;
LABEL_43:
    if (v60 == ++v61)
    {
      goto LABEL_53;
    }
  }

  if (v64 == CFStringGetTypeID())
  {
    if (qword_27E4B5930 != -1)
    {
      dispatch_once(&qword_27E4B5930, &unk_28525D528);
    }

    v67 = CFDictionaryGetValue(qword_27E4B5928, v63);
    valuePtr = v67;
    goto LABEL_40;
  }

  sub_24051EB50(@"%s:%d: Error: SkipMachOFileTypes value at index %lu is not a number or string\n", v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
LABEL_50:
  FinishStreamCompressorQueue(v2);
  v2 = 0;
LABEL_51:
  v75 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_24051F6FC(const __CFDictionary *Value, void *key, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, key);
  }

  if (Value == *MEMORY[0x277CBED28])
  {
    return 1;
  }

  if (Value == *MEMORY[0x277CBED10])
  {
    return 0;
  }

  if (Value)
  {
    sub_24051EB50(@"%s:%d: Error: value for %@ is not a BOOLean, using default value (%s)\n", key, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
  }

  return v8;
}

uint64_t sub_24051F7AC(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v5 = Value;
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        valuePtr = -1431655766;
        if (CFNumberGetValue(v5, kCFNumberIntType, &valuePtr))
        {
          return valuePtr;
        }

        else
        {
          sub_24051EB50(@"%s:%d: Error: invalid %@ value %@, assuming %d\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
        }
      }

      else
      {
        sub_24051EB50(@"%s:%d: Error: value for %@ is not a number, assuming %d\n", v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
      }
    }
  }

  return a3;
}

uint64_t FinishStreamCompressorQueue(uint64_t a1)
{
  v2 = DrainStreamCompressorQueue(a1);
  v3 = *__error();
  if (a1)
  {
    if (*a1)
    {
      dispatch_release(*a1);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        CFRelease(v8);
      }

      if (*v7)
      {
        CFRelease(*v7);
      }

      free(v7);
    }

    free(a1);
  }

  *__error() = v3;
  return v2;
}

uint64_t DrainStreamCompressorQueue(uint64_t a1)
{
  if (!a1)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  dispatch_group_wait(*a1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 8))
  {
    v11 = *(a1 + 8);
    strerror(*(a1 + 8));
    sub_24051EB50(@"%s:%d: Error: returning errno %d (%s) from DrainStreamCompressorQueue\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
    v9 = *(a1 + 8);
    *__error() = v9;
    *(a1 + 8) = 0;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_24051F9B4()
{
  qword_27E4B5928 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  CFDictionarySetValue(qword_27E4B5928, @"*", 0xFFFFFFFFFFFFFFFFLL);
  CFDictionarySetValue(qword_27E4B5928, @"MH_OBJECT", 1);
  CFDictionarySetValue(qword_27E4B5928, @"MH_EXECUTE", 2);
  CFDictionarySetValue(qword_27E4B5928, @"MH_FVMLIB", 3);
  CFDictionarySetValue(qword_27E4B5928, @"MH_CORE", 4);
  CFDictionarySetValue(qword_27E4B5928, @"MH_PRELOAD", 5);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DYLIB", 6);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DYLINKER", 7);
  CFDictionarySetValue(qword_27E4B5928, @"MH_BUNDLE", 8);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DYLIB_STUB", 9);
  CFDictionarySetValue(qword_27E4B5928, @"MH_DSYM", 0xA);
  v0 = qword_27E4B5928;

  CFDictionarySetValue(v0, @"MH_KEXT_BUNDLE", 0xB);
}

unsigned int *CreateCompressionQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  result = CreateStreamCompressorQueueWithOptions(a5);
  if (result)
  {
    *(result + 12) = 1;
  }

  return result;
}

BOOL CompressFile(uint64_t a1, char *a2, char *a3)
{
  if (qword_27E4B5970 != -1)
  {
    dispatch_once(&qword_27E4B5970, &unk_28525D738);
  }

  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v63.st_blksize = v6;
  *v63.st_qspare = v6;
  v63.st_birthtimespec = v6;
  *&v63.st_size = v6;
  v63.st_mtimespec = v6;
  v63.st_ctimespec = v6;
  *&v63.st_uid = v6;
  v63.st_atimespec = v6;
  *&v63.st_dev = v6;
  v7 = qword_27E4B5978;
  dispatch_semaphore_wait(qword_27E4B5978, 0xFFFFFFFFFFFFFFFFLL);
  v8 = open(a2, 2);
  if (v8 == -1)
  {
    v31 = __error();
    strerror(*v31);
    sub_24051EB50(@"%s:%d: open '%s': %s\n", v32, v33, v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c");
    v11 = 0;
  }

  else
  {
    v9 = v8;
    v10 = fstat(v8, &v63);
    v11 = v10 != -1;
    if (v10 == -1)
    {
      v39 = __error();
      strerror(*v39);
      sub_24051EB50(@"%s:%d: open '%s': %s\n", v40, v41, v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c");
    }

    else
    {
      StreamCompressor = CreateStreamCompressor(v9, a2, a3, a1, v63.st_size);
      if (StreamCompressor)
      {
        v13 = StreamCompressor;
        v14 = *(StreamCompressor + 244);
        v15 = malloc(0x10000uLL);
        v16 = 0;
        while (v16 < v63.st_size)
        {
          v17 = pread(v14, v15, 0x10000uLL, v16);
          if (!v17)
          {
            break;
          }

          if (v17 == -1)
          {
            v47 = __error();
            strerror(*v47);
            sub_24051EB50(@"%s:%d: pread(%s): %s\n", v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c");
            break;
          }

          v16 += v17;
          if (WriteToStreamCompressor(v13, v15, v17, v18, v19, v20, v21, v22) != v17)
          {
            if (*__error() != 28)
            {
              v23 = __error();
              strerror(*v23);
              sub_24051EB50(@"%s:%d: WriteToStreamCompressor(%s): %s\n", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c");
            }

            break;
          }
        }

        free(v15);
        CloseStreamCompressor(v13, v55, v56, v57, v58, v59, v60, v61);
      }
    }

    close(v9);
  }

  dispatch_semaphore_signal(v7);
  return v11;
}

int *FinishCompressionAndCleanUp(uint64_t a1)
{
  result = FinishStreamCompressorQueue(a1);
  if (result)
  {
    v2 = __error();
    strerror(*v2);
    return sub_24051EB50(@"%s:%d: FinishStreamCompressorQueue: %s\n", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Libraries/CompressionQueue/CompressionQueue.c");
  }

  return result;
}

const char *sub_24051FDA8(const char *a1, char *__s, _BYTE *a3)
{
  v3 = a1;
  *a3 = 0;
  if (a1)
  {
    if (__s)
    {
      if (*a1)
      {
        if (*__s)
        {
          v6 = strlen(__s);
          if (!strncmp(v3, __s, v6))
          {
            v7 = &v3[v6];
            v8 = v3[v6];
            if (v3[v6])
            {
              if (v8 == 47)
              {
                v9 = &v3[v6 - 1];
                do
                {
                  v8 = *(v9++ + 2);
                }

                while (v8 == 47);
                if (*v9 != 47)
                {
                  goto LABEL_15;
                }

                goto LABEL_13;
              }

              v10 = *(v7 - 1);
              v9 = v7 - 1;
              if (v10 == 47)
              {
LABEL_13:
                if (v8 == 46)
                {
                  v11 = 2 * (v9[2] == 47);
LABEL_16:
                  v3 = &v9[v11];
                  *a3 = 1;
                  return v3;
                }

LABEL_15:
                v11 = 0;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }
  }

  return v3;
}

BOOL sub_24051FE8C(const __CFString *a1, CFArrayRef theArray, int a3, char *a4, uint64_t *a5)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 1;
  }

  v9 = Count;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v34 = v13;
  v35 = v12;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
    if (!ValueAtIndex || (v15 = ValueAtIndex, v16 = CFGetTypeID(ValueAtIndex), v16 != CFDictionaryGetTypeID()))
    {
      fprintf(*MEMORY[0x277D85DF8], "Rule at index %llu was not a dictionary\n");
      return v10;
    }

    Value = CFDictionaryGetValue(v15, @"RuleType");
    v18 = CFDictionaryGetValue(v15, @"Flags");
    v19 = CFDictionaryGetValue(v15, @"InverseFlags");
    v20 = v19;
    v38 = 0;
    valuePtr = 0;
    if (!Value && !v18 && !v19)
    {
      v32 = "None of the keys 'RuleType', 'Flags', or 'InverseFlags' were found while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    if (!Value)
    {
      v22 = *a4;
      if (!v18)
      {
        goto LABEL_25;
      }

LABEL_23:
      v23 = CFGetTypeID(v18);
      if (v23 != CFNumberGetTypeID() || !CFNumberGetValue(v18, kCFNumberSInt64Type, &valuePtr))
      {
        v32 = "Key 'Flags' was not a number while evaluating compression rule at index %llu\n";
        goto LABEL_61;
      }

      goto LABEL_25;
    }

    v21 = CFGetTypeID(Value);
    if (v21 != CFStringGetTypeID())
    {
      v32 = "Key 'RuleType' was not a string while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    if (CFStringCompare(Value, @"Exclude", 0) == kCFCompareEqualTo)
    {
      v22 = 0;
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (CFStringCompare(Value, @"Include", 0))
    {
      v32 = "Invalid value found for key 'RuleType' while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    v22 = 1;
    if (v18)
    {
      goto LABEL_23;
    }

LABEL_25:
    if (v20)
    {
      v24 = CFGetTypeID(v20);
      if (v24 != CFNumberGetTypeID() || !CFNumberGetValue(v20, kCFNumberSInt64Type, &v38))
      {
        v32 = "Key 'InverseFlags' was not a number while evaluating compression rule at index %llu\n";
        goto LABEL_61;
      }
    }

    if (*a4 == (v22 & 1) && (valuePtr & ~*a5) == 0 && (v38 & *a5) == 0)
    {
      goto LABEL_47;
    }

    v25 = CFDictionaryGetValue(v15, @"PathEndsWithString");
    if (!v25)
    {
      break;
    }

    v26 = v25;
    v27 = 1;
LABEL_39:
    v31 = CFGetTypeID(v26);
    if (v31 != CFStringGetTypeID())
    {
      v32 = "A path match key had a value that was not a string, while evaluating compression rule at index %llu\n";
      goto LABEL_61;
    }

    if (v27 <= 1)
    {
      if (v27)
      {
        if (!CFStringHasSuffix(a1, v26))
        {
          goto LABEL_47;
        }
      }

      else if (!CFStringHasPrefix(a1, v26))
      {
        goto LABEL_47;
      }

LABEL_46:
      *a4 = v22 & 1;
      *a5 = (*a5 | valuePtr) & ~v38;
      goto LABEL_47;
    }

    if (v27 != 2)
    {
      if (CFStringCompare(a1, v26, 0))
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if (CFStringFind(a1, v26, 0).location != -1)
    {
      goto LABEL_46;
    }

LABEL_47:
    v10 = ++v11 >= v9;
    if (v9 == v11)
    {
      return v10;
    }
  }

  v28 = CFDictionaryGetValue(v15, @"PathBeginsWithString");
  if (v28)
  {
    v26 = v28;
    v27 = v35;
    goto LABEL_39;
  }

  v29 = CFDictionaryGetValue(v15, @"PathContainsString");
  if (v29)
  {
    v26 = v29;
    v27 = 2;
    goto LABEL_39;
  }

  v30 = CFDictionaryGetValue(v15, @"PathExactlyEqualsString");
  if (v30)
  {
    v26 = v30;
    v27 = v34;
    goto LABEL_39;
  }

  v32 = "String to match against not found while evaluating compression rule at index %llu\n";
LABEL_61:
  fprintf(*MEMORY[0x277D85DF8], v32, v11);
  return v10;
}

void sub_240520244(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 321) == 1)
  {
    sub_24052046C(a1, "scheduling %s task after finish", a3, a4, a5, a6, a7, a8, off_278CA9208[a2]);
  }

  if (*(a1 + 168) != -208193560 || *(a1 + 236) != -208193560)
  {
    sub_24052046C(a1, "magic numbers have been clobbered (0x%08x 0x%08x)", a3, a4, a5, a6, a7, a8, *(a1 + 168));
  }

  v12 = a3;
  if (a3)
  {
    if (a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *(a1 + 8 * a2 + 176);
    if (a2)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 232) == 1)
  {
    sub_24052046C(a1, "scheduling %s task after compression finished", a3, a4, a5, a6, a7, a8, "compression");
  }

  dispatch_group_enter(*(a1 + 224));
LABEL_13:
  v13 = *(a1 + 160);
  v14 = *(a1 + 216);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v18 = sub_2405205A4;
  v19 = &unk_28525D548;
  v22 = a2;
  v20 = a4;
  v21 = a1;
  v15 = sub_240520690();
  v16 = v15;
  if (*(v13 + 88) == 1)
  {
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, v16);
    (v18)(v17);
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, 0);
    CFRelease(v16);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1107296256;
    block[2] = sub_240520790;
    block[3] = &unk_28525D698;
    block[4] = v17;
    block[5] = v15;
    dispatch_group_async(v14, v12, block);
  }
}

void sub_24052046C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v47[0] = 0;
  v47[1] = &a9;
  vasprintf(v47, a2, &a9);
  v44 = a1;
  v45 = v47[0];
  v43 = 502;
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p %s. PLEASE FILE A BUG AGAINST AppleFSCompression/X", v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  v17 = sub_240520690();
  Count = CFArrayGetCount(v17);
  Mutable = CFStringCreateMutable(0, 0);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
      CFStringAppendFormat(Mutable, 0, @"%p ", ValueAtIndex, v43, v44, v45);
    }
  }

  CFRelease(v17);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p stack: %@", v22, v23, v24, v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  dispatch_queue_get_label(0);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p queue: %s", v29, v30, v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  v46 = *(a1 + 8);
  sub_24051EB50(@"%s:%d: Error: StreamCompressor %p path: %s", v36, v37, v38, v39, v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  free(v47[0]);
  abort();
}

void sub_2405205A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (*(v8 + 321) == 1)
  {
    sub_24052046C(v8, "running %s task after finish", a3, a4, a5, a6, a7, a8, off_278CA9208[v9]);
  }

  if (!v9 && *(v8 + 232) == 1)
  {
    sub_24052046C(v8, "running %s task after compression finished", a3, a4, a5, a6, a7, a8, "compression");
  }

  if (*(v8 + 168) != -208193560 || *(v8 + 236) != -208193560)
  {
    v14 = *(v8 + 236);
    sub_24052046C(v8, "magic numbers have been clobbered (0x%08x 0x%08x)", a3, a4, a5, a6, a7, a8, *(v8 + 168));
  }

  v12 = *(a1 + 32);
  (*(*(a1 + 32) + 16))();
  if (!*(a1 + 48))
  {
    v13 = *(v8 + 224);

    dispatch_group_leave(v13);
  }
}

__CFArray *sub_240520690()
{
  __b[100] = *MEMORY[0x277D85DE8];
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  v0 = pthread_getspecific(qword_27E4B5948);
  if (v0)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v0);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, 0);
  }

  v2 = MutableCopy;
  memset(__b, 170, 0x320uLL);
  v3 = backtrace(__b, 100);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = __b;
    do
    {
      v6 = *v5++;
      CFArrayAppendValue(v2, v6);
      --v4;
    }

    while (v4);
  }

  CFArrayAppendValue(v2, 0);
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_240520790(uint64_t a1)
{
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, *(a1 + 40));
  (*(*(a1 + 32) + 16))();
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, 0);
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t sub_240520870(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = MEMORY[0x277D85DD0];
  v5 = 0x40000000;
  v6 = sub_2405209E8;
  v7 = &unk_278CA9230;
  v8 = v1;
  return (*(v2 + 16))(v2);
}

uint64_t sub_2405208EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  dispatch_suspend(*(a1 + 48));
  v3 = *(a1 + 56);
  v4 = malloc(v3);
  if (!v4)
  {
    sub_24052046C(v2, "allocating buffer of size %zu failed", v5, v6, v7, v8, v9, v10, v3);
  }

  v11 = v4;
  v12 = *(a1 + 32);
  v15 = MEMORY[0x277D85DD0];
  v16 = 0x40000000;
  v17 = sub_2405209AC;
  v18 = &unk_278CA9250;
  v13 = *(a1 + 48);
  v19 = v11;
  v20 = v13;
  return (*(v12 + 16))();
}

void sub_2405209AC(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  dispatch_resume(v2);
}

void sub_2405209F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(v1 + 232) = 1;
  (*(*(a1 + 32) + 16))();
  v2 = *(v1 + 216);

  dispatch_group_leave(v2);
}

void sub_240520A3C(uint64_t a1, NSObject *a2, NSObject *a3, uint64_t a4)
{
  v8 = sub_240520690();
  v9 = v8;
  if (*(a1 + 88) == 1)
  {
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, v9);
    (*(a4 + 16))(a4);
    if (qword_27E4B5940 != -1)
    {
      dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
    }

    pthread_setspecific(qword_27E4B5948, 0);

    CFRelease(v9);
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_240520B90;
    v10[3] = &unk_28525D6E8;
    v10[4] = a4;
    v10[5] = v8;
    dispatch_group_notify(a2, a3, v10);
  }
}

void sub_240520B90(uint64_t a1)
{
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, *(a1 + 40));
  (*(*(a1 + 32) + 16))();
  if (qword_27E4B5940 != -1)
  {
    dispatch_once(&qword_27E4B5940, &unk_28525D6C8);
  }

  pthread_setspecific(qword_27E4B5948, 0);
  v2 = *(a1 + 40);

  CFRelease(v2);
}

int *sub_240520C44(int *result, unsigned int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *(result + 20);
    if (*(v2 + 12) == 1)
    {
      v3 = 0;
      atomic_compare_exchange_strong_explicit(result + 60, &v3, a2, memory_order_relaxed, memory_order_relaxed);
      if (!v3)
      {
        *&v4 = 0xAAAAAAAAAAAAAAAALL;
        *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22 = v4;
        v23 = v4;
        v20 = v4;
        v21 = v4;
        *v19 = v4;
        backtrace(v19, 10);
        v5 = __error();
        strerror(*v5);
        v13 = "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp";
        v14 = @"%s:%d: %p %p %p %p %p %p %p %p %p %p: Error: setting compressor error to %d (%s)\n";
LABEL_8:
        result = sub_24051EB50(v14, v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    else
    {
      v15 = *(v2 + 8);
      if (!v15)
      {
        atomic_compare_exchange_strong_explicit((v2 + 8), &v15, a2, memory_order_relaxed, memory_order_relaxed);
        if (!v15)
        {
          *&v16 = 0xAAAAAAAAAAAAAAAALL;
          *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v22 = v16;
          v23 = v16;
          v20 = v16;
          v21 = v16;
          *v19 = v16;
          backtrace(v19, 10);
          v17 = __error();
          strerror(*v17);
          v13 = "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c";
          v14 = @"%s:%d: %p %p %p %p %p %p %p %p %p %p: Error: setting queue error to %d (%s)\n";
          goto LABEL_8;
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240520DD4(uint64_t a1)
{
  sub_240521CA0(*(a1 + 32), *(*(a1 + 32) + 244), *(a1 + 40), *(a1 + 64), *(a1 + 48));
  v2 = *(a1 + 56);

  return sub_240524CA0(v2);
}

void sub_240520E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_240521DBC;
  v9[3] = &unk_28525D608;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  sub_240520244(v8, 4u, 0, v9, a5, a6, a7, a8);
}

void sub_240520E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 56);
  v10 = *(a1 + 60);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  v14 = *(v8 + 160);
  if (*(v14 + 12))
  {
    v15 = (v8 + 240);
  }

  else
  {
    v15 = (v14 + 8);
  }

  v16 = *v15;
  if (!v16)
  {
    if (*(v8 + 324))
    {
      goto LABEL_32;
    }

    v23 = *(v14 + 24);
    if (v23 <= 773)
    {
      if (v23 == 460)
      {
        v24 = 0;
        goto LABEL_22;
      }

      if (v23 == 767)
      {
        v25 = *(v14 + 36);
        *v12 = 24184;
        v26 = v12 + 2;
        LODWORD(v13) = v13 - 2;
        v27 = v25 - 1;
        v28 = v25 | 0x200;
        if (v27 >= 9)
        {
          v24 = 517;
        }

        else
        {
          v24 = v28;
        }

        goto LABEL_23;
      }
    }

    else
    {
      switch(v23)
      {
        case 774:
          v24 = 2304;
          goto LABEL_22;
        case 1535:
          v24 = 1794;
          goto LABEL_22;
        case 1279:
          v24 = 2049;
LABEL_22:
          v26 = v12;
LABEL_23:
          v29 = sub_240523D98(v24, v9, v10, v26, v13, 1);
          if (v29)
          {
            v30 = v23 == 767;
          }

          else
          {
            v30 = 0;
          }

          if (v30)
          {
            v31 = v29 + 2;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            *(*(v8 + 400) + 8 * v11) = v12;
            v32 = (v9 - 1);
LABEL_33:
            sub_240524CA0(v32);
            *(*(v8 + 408) + 4 * v11) = v31;
            dispatch_group_enter(*(v8 + 224));
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 0x40000000;
            v37[2] = sub_24052115C;
            v37[3] = &unk_278CA9470;
            v37[4] = v8;
            v38 = v31;
            sub_240520244(v8, 1u, 0, v37, v33, v34, v35, v36);
            return;
          }

LABEL_32:
          v31 = v10 + 1;
          *(*(v8 + 400) + 8 * v11) = v9 - 1;
          v32 = v12;
          goto LABEL_33;
      }
    }

    sub_24051EB50(@"%s:%d: Error: unknown compression scheme %llu\n", v16, a3, a4, v13, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    goto LABEL_32;
  }

  sub_240520C44(*(a1 + 32), v16);

  sub_24052109C(v8, 3, v17, v18, v19, v20, v21, v22);
}

void sub_24052109C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = sub_240521DAC;
  v8[3] = &unk_278CA9370;
  v8[4] = a1;
  v9 = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_240520E1C;
  v10[3] = &unk_28525D638;
  v10[4] = v8;
  v10[5] = a1;
  sub_240520244(a1, 3u, 0, v10, a5, a6, a7, a8);
}

void sub_24052115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  v9 = *(v8 + 300) + *(a1 + 40);
  *(v8 + 300) = v9;
  v10 = *(v8 + 292);
  v11 = v10 + 1;
  *(v8 + 292) = v10 + 1;
  if (v9 > *(v8 + 296))
  {
    if ((*(v8 + 324) & 1) == 0)
    {
      *(v8 + 324) = 1;
    }

    goto LABEL_28;
  }

  if (v11 != *(v8 + 288))
  {
    goto LABEL_28;
  }

  v12 = *(v8 + 160);
  if (*(v12 + 12))
  {
    v13 = (v8 + 240);
  }

  else
  {
    v13 = (v12 + 8);
  }

  if (*v13)
  {
    sub_240520C44(v8, *v13);
    v14 = v8;
    v15 = 3;
LABEL_10:
    sub_24052109C(v14, v15, a3, a4, a5, a6, a7, a8);
    goto LABEL_28;
  }

  if (!v10 && v9 <= 0xECA && !*(v8 + 280) && *(v12 + 14) == 1 && (*(v8 + 253) & 1) == 0)
  {
    v14 = v8;
    v15 = 2;
    goto LABEL_10;
  }

  v16 = *(v8 + 336);
  if (v16)
  {
    v17 = (8 * v11) | 4;
    v18 = v9 + v17;
    *v16 = 0x10000;
    *(v16 + 4) = vrev32_s8(vadd_s32(vdup_n_s32(v9 + v17), 0x400000104));
    *(v16 + 12) = 838860800;
    v19 = v9 + v17 + 314;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *(v16 + 48) = 0u;
    *(v16 + 64) = 0u;
    *(v16 + 80) = 0u;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    *(v16 + 128) = 0u;
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0u;
    *(v16 + 192) = 0u;
    *(v16 + 208) = 0u;
    *(v16 + 224) = 0u;
    *(v16 + 240) = 0u;
    v20 = *(v8 + 336);
    v20[64] = bswap32(v18);
    v21 = *(v8 + 288);
    v20[65] = v21;
    if (v21)
    {
      v22 = *(v8 + 408);
      v23 = v20 + 67;
      do
      {
        v24 = *v22++;
        *(v23 - 1) = v17;
        *v23 = v24;
        v17 += v24;
        v23 += 2;
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    v19 = *(v8 + 344);
    v25 = *(v8 + 352);
    if (v11)
    {
      v26 = 0;
      v27 = *(v8 + 408);
      do
      {
        *(v25 + 4 * v26) = v19;
        v19 += *(v27 + 4 * v26++);
        v28 = *(v8 + 288);
      }

      while (v26 < v28);
    }

    else
    {
      v28 = 0;
    }

    *(v25 + 4 * v28) = v19;
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 0x40000000;
  v30[2] = sub_2405213D0;
  v30[3] = &unk_278CA9490;
  v30[4] = v8;
  v31 = v19;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = sub_240520E1C;
  v32[3] = &unk_28525D638;
  v32[4] = v30;
  v32[5] = v8;
  sub_240520244(v8, 3u, 0, v32, a5, a6, a7, a8);
LABEL_28:
  v29 = *(v8 + 224);

  dispatch_group_leave(v29);
}

uint64_t sub_2405213D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = fgetxattr(*(v1 + 244), "com.apple.ResourceFork", 0, 0, 0, 32);
  if (result == -1)
  {
    if (*__error() != 93)
    {
      v4 = *(v1 + 8);
      v5 = __error();
      strerror(*v5);
      sub_24051EB50(@"%s:%d: fgetxattr %s: %s\n", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    }
  }

  else if (result >= 1)
  {
    *(v1 + 324) = 1;
    return result;
  }

  v13 = *(v1 + 248);
  if (v13 != -1)
  {
    v19[0] = 0x300000002;
    v19[1] = 0;
    v19[2] = v2;
    v19[3] = 0;
    fcntl(v13, 42, v19);
  }

  v14 = *(v1 + 336);
  if (v14)
  {
    result = sub_24052158C(v1, *(v1 + 336), *(v1 + 332), 0);
    if ((result & 1) == 0)
    {
      return result;
    }

    v15 = (v1 + 336);
    v16 = (v1 + 332);
  }

  else
  {
    result = sub_24052158C(v1, *(v1 + 352), *(v1 + 344), 0);
    if (!result)
    {
      return result;
    }

    v15 = (v1 + 352);
    v16 = (v1 + 344);
  }

  v17 = *v16;
  sub_240524CA0(*v15);
  *v15 = 0;
  if (*(v1 + 288))
  {
    v18 = 0;
    while (1)
    {
      result = sub_24052158C(v1, *(*(v1 + 400) + 8 * v18), *(*(v1 + 408) + 4 * v18), v17);
      if (!result)
      {
        break;
      }

      v17 += *(*(v1 + 408) + 4 * v18);
      sub_240524CA0(*(*(v1 + 400) + 8 * v18));
      *(*(v1 + 400) + 8 * v18++) = 0;
      if (v18 >= *(v1 + 288))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    if (!v14)
    {
      return sub_2405216F0(v1, 1);
    }

    result = sub_24052158C(v1, &unk_240525D98, 0x32uLL, v17);
    if (result)
    {
      return sub_2405216F0(v1, 1);
    }
  }

  return result;
}

BOOL sub_24052158C(uint64_t a1, const void *a2, size_t a3, off_t a4)
{
  v8 = *(a1 + 248);
  if (v8 < 0)
  {
    if (a4 < 0x100000000)
    {
      v20 = *(a1 + 244);
      v21 = *(a1 + 8);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 0x40000000;
      v31[2] = sub_240521D88;
      v31[3] = &unk_278CA93B0;
      v31[4] = a1;
      v31[5] = a2;
      v31[6] = a3;
      v31[7] = a4;
      if (sub_24051ECE0(v20, 0, v21, (a1 + 323), v31) != -1)
      {
        return 1;
      }

      v22 = *(a1 + 8);
      v23 = __error();
      strerror(*v23);
      sub_24051EB50(@"%s:%d: fsetxattr %s: %s\n", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
      v19 = *__error();
      v18 = a1;
    }

    else
    {
      v10 = __error();
      strerror(*v10);
      sub_24051EB50(@"%s:%d: fileOffset=%llu is too big: %s\n", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
      v18 = a1;
      v19 = 22;
    }

    sub_240520C44(v18, v19);
    return 0;
  }

  else
  {

    return sub_240521CA0(a1, v8, a2, a3, a4);
  }
}

intptr_t sub_2405216F0(uint64_t a1, int a2)
{
  v84 = *MEMORY[0x277D85DE8];
  sub_240521BD8(a1);
  result = *(a1 + 244);
  if (result == -1)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 160);
  if (*(v12 + 12))
  {
    v13 = (a1 + 240);
  }

  else
  {
    v13 = (v12 + 8);
  }

  v14 = *v13;
  if (*v13)
  {
    goto LABEL_6;
  }

  v19 = *(v12 + 16);
  memset(v77, 170, sizeof(v77));
  switch(a2)
  {
    case 3:
      goto LABEL_34;
    case 2:
      if ((*(v12 + 14) & 1) == 0)
      {
        sub_24051EB50(@"%s:%d: Error: storing data in xattr not allowed\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
        v14 = 45;
        goto LABEL_6;
      }

      v23 = **(a1 + 408);
      v22 = v23 + 16;
      v21 = malloc(v23 + 16);
      v24 = **(a1 + 400);
      memcpy(v21 + 2, v24, v23);
      sub_240524CA0(v24);
      **(a1 + 400) = 0;
      v19 = *(*(a1 + 160) + 16) - 1;
      LODWORD(result) = *(a1 + 244);
      v20 = 1;
      break;
    case 1:
      v20 = 0;
      if (*(a1 + 280))
      {
        v77[2] = *(a1 + 280);
        v21 = v77;
        v22 = 24;
      }

      else
      {
        v21 = v77;
        v22 = 16;
      }

      break;
    default:
      sub_24051EB50(@"%s:%d: Error: invalid close flag %d\n", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
      v14 = 22;
      goto LABEL_6;
  }

  *v21 = 1668116582;
  *(v21 + 1) = v19;
  v21[1] = *(a1 + 264);
  v25 = *(a1 + 8);
  bytes.tv_sec = MEMORY[0x277D85DD0];
  *&bytes.tv_usec = 0x40000000;
  v79 = sub_240521C7C;
  v80 = &unk_278CA9390;
  v81 = a1;
  v82 = v21;
  v83 = v22;
  v26 = sub_24051ECE0(result, 0, v25, (a1 + 323), &bytes);
  v14 = *__error();
  if (v20)
  {
    free(v21);
  }

  if (v26 == -1)
  {
    v37 = *(a1 + 8);
    v38 = __error();
    strerror(*v38);
    sub_24051EB50(@"%s:%d: fsetxattr %s: %s\n", v39, v40, v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

  else if (*(*(a1 + 160) + 12) == 1 && ftruncate(*(a1 + 244), 0) == -1)
  {
    v14 = *__error();
    v46 = *(a1 + 8);
    v47 = __error();
    strerror(*v47);
    sub_24051EB50(@"%s:%d: ftruncate %s: %s\n", v48, v49, v50, v51, v52, v53, v54, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

  else
  {
    v27 = *(a1 + 244);
    if (v27 != -1 && !sub_24051EE1C(0, v27, 0))
    {
      goto LABEL_34;
    }

    v14 = *__error();
    v28 = *(a1 + 8);
    v29 = __error();
    strerror(*v29);
    sub_24051EB50(@"%s:%d: setBsdflags %s: %s\n", v30, v31, v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

  if (!v14)
  {
LABEL_34:
    fsync(*(a1 + 244));
    if ((*(a1 + 254) & 1) == 0 && *(*(a1 + 160) + 12) != 1)
    {
      goto LABEL_37;
    }

    v55 = *(a1 + 56);
    bytes.tv_sec = *(a1 + 48);
    *(&bytes.tv_usec + 1) = -1431655766;
    bytes.tv_usec = v55 / 1000;
    v56 = *(a1 + 72);
    v79 = *(a1 + 64);
    HIDWORD(v80) = -1431655766;
    LODWORD(v80) = v56 / 1000;
    if (futimes(*(a1 + 244), &bytes) == -1)
    {
      v14 = *__error();
      v57 = *(a1 + 8);
      v58 = *(a1 + 244);
      v59 = __error();
      strerror(*v59);
      sub_24051EB50(@"%s:%d: futimes %s (fd %d): %s\n", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    }

    else
    {
LABEL_37:
      v14 = 0;
    }

    if (*(a1 + 323) == 1 && fchmod(*(a1 + 244), *(a1 + 20)) == -1)
    {
      v14 = *__error();
      v67 = *(a1 + 8);
      v68 = *(a1 + 244);
      v69 = __error();
      strerror(*v69);
      sub_24051EB50(@"%s:%d: fchmod %s (fd %d): %s\n", v70, v71, v72, v73, v74, v75, v76, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    }

    if (!v14)
    {
      goto LABEL_7;
    }
  }

LABEL_6:
  sub_240520C44(a1, v14);
LABEL_7:
  v15 = *(a1 + 24);
  LODWORD(bytes.tv_sec) = *(a1 + 16);
  *(&bytes.tv_sec + 4) = v15;
  v16 = CFDataCreate(0, &bytes, 12);
  os_unfair_lock_lock(&unk_27E4B5950);
  CFDictionaryRemoveValue(qword_27E4B5958, v16);
  os_unfair_lock_unlock(&unk_27E4B5950);
  CFRelease(v16);
  v17 = *(a1 + 244);
  if (v17 != -1)
  {
    close(v17);
  }

  *(a1 + 244) = -1;
  if (qword_27E4B5970 != -1)
  {
    dispatch_once(&qword_27E4B5970, &unk_28525D738);
  }

  result = dispatch_semaphore_signal(qword_27E4B5978);
LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t sub_240521BD8(uint64_t a1)
{
  result = *(a1 + 248);
  if (result != -1)
  {
    fsync(result);
    result = *(a1 + 248);
    if (result != -1)
    {
      result = close(result);
    }

    *(a1 + 248) = -1;
  }

  if (*(a1 + 252) == 1)
  {
    *(a1 + 252) = 0;
    if (qword_27E4B5970 != -1)
    {
      dispatch_once(&qword_27E4B5970, &unk_28525D738);
    }

    v3 = qword_27E4B5978;

    return dispatch_semaphore_signal(v3);
  }

  return result;
}

BOOL sub_240521CA0(uint64_t a1, int a2, const void *a3, size_t a4, off_t a5)
{
  do
  {
    *__error() = 0;
    v10 = pwrite(a2, a3, a4, a5);
  }

  while (*__error() == 35);
  if (v10 != a4)
  {
    if (v10 == -1)
    {
      v11 = *__error();
    }

    else
    {
      v11 = 28;
    }

    v12 = *(a1 + 8);
    strerror(v11);
    sub_24051EB50(@"%s:%d: Error: failed to write %zu bytes to %s(%d) at %llu: %s\n", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    sub_240520C44(a1, v11);
  }

  return v10 == a4;
}

_DWORD *sub_240521DCC(_DWORD *result)
{
  v1 = result;
  result[90] = 0;
  v2 = *(result + 33) - *(result + 34);
  if (!v2)
  {
    *(result + 46) = 0;
    result[91] = 0;
LABEL_8:
    *(v1 + 376) = 0;
    return result;
  }

  if (v2 >= 0x10000)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = result[66] - result[68];
  }

  v1[91] = v3;
  if (*(v1 + 304) == 1)
  {
    result = sub_240524AFC(v3, 1);
    *(v1 + 46) = result;
    goto LABEL_8;
  }

  v4 = sub_240524AFC(v3 + 1, 1);
  *v4 = *(*(v1 + 20) + 32);
  *(v1 + 46) = v4 + 1;
  *(v1 + 376) = 1;
  LODWORD(v4) = v1[91];
  v1[98] = v4;
  result = sub_240524AFC(v4, 1);
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_240521E70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 244);
  v3 = *(v1 + 264);
  v5[0] = 0x300000002;
  v5[1] = 0;
  v5[2] = v3;
  v5[3] = 0;
  return fcntl(v2, 42, v5);
}

void sub_240521EBC(uint64_t a1, atomic_ullong *a2)
{
  if (atomic_fetch_add_explicit(a2, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
  {
    sub_240521ED8(a2);
  }
}

void sub_240521ED8(uint64_t a1)
{
  if (qword_27E4B5968 != -1)
  {
    dispatch_once(&qword_27E4B5968, &unk_28525D718);
  }

  if (pthread_getspecific(qword_27E4B5960) != a1)
  {
    v18 = "incorrectly released";
    goto LABEL_42;
  }

  if ((*(a1 + 321) & 1) == 0)
  {
    v18 = "finalized before it was finished";
    goto LABEL_42;
  }

  if ((*(a1 + 322) & 1) == 0)
  {
    v18 = "finalized before it was closed";
LABEL_42:
    sub_24052046C(a1, v18, v3, v4, v5, v6, v7, v8, v19);
  }

  if (*(a1 + 244) != -1)
  {
    v20 = *(a1 + 8);
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s without closing data fd\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

  if (*(a1 + 248) != -1)
  {
    v21 = *(a1 + 8);
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s without closing rsrc fd\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

  if (*(a1 + 256))
  {
    v22 = *(a1 + 8);
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s that is still locked\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

  if (*(a1 + 368))
  {
    v23 = *(a1 + 8);
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s that is still has a curBuffer\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    v9 = *(a1 + 368);
    if (*(a1 + 376) == 1)
    {
      --v9;
    }

    sub_240524CA0(v9);
  }

  if (*(a1 + 384))
  {
    v24 = *(a1 + 8);
    sub_24051EB50(@"%s:%d: Error: freed StreamCompressor for %s that is still has a compressionBuffer\n", v2, v3, v4, v5, v6, v7, v8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    sub_240524CA0(*(a1 + 384));
  }

  sub_240524CA0(*(a1 + 336));
  sub_240524CA0(*(a1 + 352));
  v10 = *(a1 + 400);
  if (v10)
  {
    if (*(a1 + 288))
    {
      v11 = 0;
      do
      {
        sub_240524CA0(*(*(a1 + 400) + 8 * v11++));
      }

      while (v11 < *(a1 + 288));
      v10 = *(a1 + 400);
    }

    free(v10);
  }

  v12 = *(a1 + 408);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 408) = 0;
  v13 = *(a1 + 8);
  if (v13)
  {
    free(v13);
  }

  *(a1 + 8) = 0;
  for (i = 176; i != 216; i += 8)
  {
    v15 = *(a1 + i);
    if (v15)
    {
      dispatch_release(v15);
    }

    *(a1 + i) = 0;
  }

  v16 = *(a1 + 216);
  if (v16)
  {
    dispatch_release(v16);
  }

  *(a1 + 216) = 0;
  v17 = *(a1 + 224);
  if (v17)
  {
    dispatch_release(v17);
  }

  free(a1);
}

atomic_ullong *sub_240522120(uint64_t a1, atomic_ullong *a2)
{
  result = a2;
  atomic_fetch_add_explicit(a2, 1uLL, memory_order_relaxed);
  return result;
}

void sub_24052213C(void *a1)
{
  v1 = a1[20];
  v2 = a1[27];
  v3 = a1[24];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = sub_2405221B8;
  v4[3] = &unk_278CA9310;
  v4[4] = a1;
  sub_240520A3C(v1, v2, v3, v4);
}

void sub_2405221B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  sub_240522240(v8, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8[20];
  v11 = v8[26];
  v10 = v8[27];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = sub_2405224F4;
  v12[3] = &unk_278CA92F0;
  v12[4] = v8;
  sub_240520A3C(v9, v10, v11, v12);
}

void sub_240522240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 324) == 1)
  {
    v34 = v11;
    v35 = v10;
    v36 = v8;
    v37 = v9;
    v13 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 328), &v13, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v13)
    {
      if (*(*(a1 + 160) + 12) == 1)
      {
        v14 = v26;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 0x40000000;
        v15 = &unk_278CA93D0;
        v16 = sub_2405225FC;
      }

      else
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 0x40000000;
        v25[2] = sub_240522670;
        v25[3] = &unk_278CA93F0;
        v25[4] = a1;
        v28 = MEMORY[0x277D85DD0];
        v29 = 1107296256;
        v30 = sub_240520E1C;
        v31 = &unk_28525D638;
        v32 = v25;
        v33 = a1;
        sub_240520244(a1, 3u, 0, &v28, a5, a6, a7, a8);
        *(a1 + 304) = 1;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 0x40000000;
        v27[2] = sub_240522C44;
        v27[3] = &unk_278CA9350;
        v27[4] = a1;
        v28 = MEMORY[0x277D85DD0];
        v29 = 1107296256;
        v30 = sub_240520E1C;
        v31 = &unk_28525D638;
        v32 = v27;
        v33 = a1;
        sub_240520244(a1, 3u, 0, &v28, v17, v18, v19, v20);
        if (*(a1 + 368))
        {
          *(a1 + 312) = *(a1 + 272) - *(a1 + 360);
          sub_240524CA0(*(a1 + 384));
          *(a1 + 384) = 0;
          *(a1 + 392) = 0;
        }

        v14 = v24;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 0x40000000;
        v15 = &unk_278CA9450;
        v16 = sub_2405226BC;
      }

      v14[2] = v16;
      v14[3] = v15;
      v14[4] = a1;
      dispatch_group_enter(*(a1 + 216));
      v21 = *(a1 + 160);
      v22 = *(a1 + 224);
      v23 = *(a1 + 192);
      v28 = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_2405209F0;
      v31 = &unk_28525D5D8;
      v32 = v14;
      v33 = a1;
      sub_240520A3C(v21, v22, v23, &v28);
    }
  }
}

uint64_t sub_2405224F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_2405216F0(v1, 3);
  dispatch_group_leave(**(v1 + 160));
  *(v1 + 321) = 1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v5 = sub_2405225E0;
  v6 = &unk_278CA92D0;
  v7 = v1;
  if (qword_27E4B5968 != -1)
  {
    dispatch_once(&qword_27E4B5968, &unk_28525D718);
  }

  v2 = qword_27E4B5960;
  pthread_setspecific(qword_27E4B5960, v1);
  v5(v4);
  return pthread_setspecific(v2, 0);
}

void sub_2405225E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (atomic_fetch_add_explicit(v1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) == 1)
  {
    sub_240521ED8(v1);
  }
}

void *sub_2405225FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 292))
  {
    v2 = 0;
    do
    {
      sub_240524CA0(*(*(v1 + 400) + 8 * v2));
      *(*(v1 + 400) + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 292));
  }

  v3 = *(v1 + 368);
  if (v3)
  {
    sub_240524CA0((v3 - 1));
    *(v1 + 368) = 0;
  }

  result = *(v1 + 384);
  if (result)
  {
    result = sub_240524CA0(result);
    *(v1 + 384) = 0;
  }

  return result;
}

uint64_t sub_240522670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 244);
  v3 = *(v1 + 264);
  v5[0] = 0x300000002;
  v5[1] = 0;
  v5[2] = v3;
  v5[3] = 0;
  return fcntl(v2, 42, v5);
}

void sub_2405226BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (*(v8 + 292))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(v8 + 160);
      if (*(v11 + 12))
      {
        v12 = (v8 + 240);
      }

      else
      {
        v12 = (v11 + 8);
      }

      if (*v12)
      {
        sub_240520C44(v8, *v12);
        sub_24052109C(v8, 3, v21, v22, v23, v24, v25, v26);
        return;
      }

      v13 = *(*(v8 + 400) + 8 * v9);
      if (*(v8 + 264) - v10 >= 0x10000)
      {
        v14 = 0x10000;
      }

      else
      {
        v14 = *(v8 + 264) - v10;
      }

      v15 = *(*(v8 + 408) + 4 * v9);
      if (*v13 == *(v11 + 32))
      {
        if (v15 != v14 + 1)
        {
          __assert_rtn("decompressIfNecessary_block_invoke_3", "StreamCompressor.cpp", 1406, "bufSz == uncmpSize + 1");
        }

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 0x40000000;
        v32[2] = sub_240522990;
        v32[3] = &unk_278CA9410;
        v32[4] = v8;
        v32[5] = v13;
        v33 = v14;
        v34 = v10;
        v35 = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_240520E1C;
        v38 = &unk_28525D638;
        v39 = v32;
        v40 = v8;
        v16 = &v35;
        v17 = v8;
        v18 = 3;
      }

      else
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 0x40000000;
        v27[2] = sub_2405229DC;
        v27[3] = &unk_278CA9430;
        v27[4] = v8;
        v27[5] = v13;
        v28 = v15;
        v29 = v14;
        v30 = v10;
        v31 = v9;
        v19 = sub_240524AFC(v14, 0);
        if (!v19)
        {
          v20 = *(*(v8 + 160) + 56);
          v35 = MEMORY[0x277D85DD0];
          v36 = 1107296256;
          v37 = sub_2405208EC;
          v38 = &unk_28525D5A8;
          v41 = v20;
          v42 = v14;
          v39 = v27;
          v40 = v8;
          v16 = &v35;
          v17 = v8;
          v18 = 2;
          goto LABEL_16;
        }

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 1107296256;
        v43[2] = sub_240520870;
        v43[3] = &unk_28525D578;
        v43[4] = v27;
        v43[5] = v19;
        v16 = v43;
        v17 = v8;
        v18 = 2;
      }

      v20 = 0;
LABEL_16:
      sub_240520244(v17, v18, v20, v16, a5, a6, a7, a8);
      *(*(v8 + 400) + 8 * v9) = 0;
      v10 += v14;
      ++v9;
    }

    while (v9 < *(v8 + 292));
  }
}

void *sub_240522990(uint64_t a1)
{
  sub_240521CA0(*(a1 + 32), *(*(a1 + 32) + 244), (*(a1 + 40) + 1), *(a1 + 48), *(a1 + 52));
  v2 = *(a1 + 40);

  return sub_240524CA0(v2);
}

void sub_2405229DC(uint64_t a1, uint8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(*(v12 + 160) + 24);
  v15 = *(a1 + 48);
  v14 = *(a1 + 52);
  if (v13 <= 773)
  {
    if (v13 == 460)
    {
      v16 = 0;
      goto LABEL_12;
    }

    if (v13 == 767)
    {
      v16 = 517;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v13)
    {
      case 1535:
        v16 = 1794;
        goto LABEL_12;
      case 1279:
        v16 = 2049;
        goto LABEL_12;
      case 774:
        v16 = 2304;
LABEL_12:
        v17 = v13 == 767;
        v18 = v13 == 767;
        if (v17)
        {
          v19 = v15 - 2;
        }

        else
        {
          v19 = v15;
        }

        v20 = sub_240523D98(v16, (v11 + 2 * v18), v19, a2, v14, 2);
        goto LABEL_16;
    }
  }

  v31 = *(*(v12 + 160) + 24);
  sub_24051EB50(@"%s:%d: Error: unknown compression scheme %llu\n", a2, a3, a4, v14, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
  v20 = 0;
LABEL_16:
  sub_240524CA0(*(a1 + 40));
  if (v20 == *(a1 + 52))
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 1107296256;
    v33[2] = sub_240522BF4;
    v33[3] = &unk_28525D668;
    v33[5] = v12;
    v33[6] = a2;
    v28 = *(a1 + 56);
    v34 = v20;
    v35 = v28;
    v33[4] = a3;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 1107296256;
    v36[2] = sub_240520E1C;
    v36[3] = &unk_28525D638;
    v36[4] = v33;
    v36[5] = v12;
    sub_240520244(v12, 3u, 0, v36, v24, v25, v26, v27);
  }

  else
  {
    v30 = *(a1 + 60);
    v32 = *(v12 + 8);
    sub_24051EB50(@"%s:%d: Error: chunk %d of %s decompressed to %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    sub_240520C44(v12, 0x16u);
    v29 = *(a3 + 16);

    v29(a3);
  }
}

uint64_t sub_240522BF4(uint64_t a1)
{
  sub_240521CA0(*(a1 + 40), *(*(a1 + 40) + 244), *(a1 + 48), *(a1 + 56), *(a1 + 60));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t CreateStreamCompressor(int a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v149 = *MEMORY[0x277D85DE8];
  if (!a4 || !a5)
  {
    goto LABEL_69;
  }

  v11 = rindex(a2, 47);
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = a2;
  }

  if (*v12 == 46 && v12[1] == 95)
  {
    goto LABEL_68;
  }

  v143 = 0;
  if ((a5 - 536870913) < 0xFFFFFFFFE0004000)
  {
    goto LABEL_19;
  }

  v13 = *(a4 + 80);
  if (!v13)
  {
    goto LABEL_19;
  }

  LOBYTE(__b.f_bsize) = 0;
  v14 = sub_24051FDA8(a2, a3, &__b);
  v15 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v14);
  v16 = v15;
  LOBYTE(v147.st_dev) = 1;
  v143 = 0;
  f_bsize = __b.f_bsize;
  if (*v13 && !sub_24051FE8C(v15, *v13, __b.f_bsize & 1, &v147, &v143))
  {
    v19 = *MEMORY[0x277D85DF8];
    v20 = "Failed to apply user rules.\n";
    v21 = 28;
LABEL_17:
    fwrite(v20, v21, 1uLL, v19);
    if (v16)
    {
      CFRelease(v16);
    }

    goto LABEL_19;
  }

  if (!sub_24051FE8C(v16, v13[1], f_bsize & 1, &v147, &v143))
  {
    v19 = *MEMORY[0x277D85DF8];
    v20 = "Failed to apply system rules.\n";
    v21 = 30;
    goto LABEL_17;
  }

  CFRelease(v16);
  if (v147.st_dev)
  {
    v18 = 0;
    goto LABEL_21;
  }

LABEL_19:
  if (*(a4 + 12))
  {
LABEL_68:
    v5 = 0;
    goto LABEL_69;
  }

  v18 = 1;
LABEL_21:
  v22 = calloc(1uLL, 0x1A8uLL);
  v5 = v22;
  if (!v22)
  {
    goto LABEL_69;
  }

  *v22 = 1;
  v23 = v143;
  *(v22 + 59) = -208193560;
  *(v22 + 42) = -208193560;
  *(v22 + 244) = -1;
  v22[322] = 1;
  *(v22 + 1) = strdup(a2);
  *(v5 + 264) = a5;
  *(v5 + 160) = a4;
  *(v5 + 304) = v18;
  *(v5 + 280) = v23;
  dispatch_group_enter(*a4);
  if (!*(a4 + 64) || *(a4 + 72) && (v24 = sub_24051FDA8(*(v5 + 8), a3, &__b), (v25 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v24)) != 0) && (v26 = v25, v27 = CFSetContainsValue(*(a4 + 72), v25), CFRelease(v26), v27))
  {
    *(v5 + 320) = 1;
  }

  v28 = *(*(v5 + 160) + 40);
  v29 = MEMORY[0x277D85CD8];
  v30 = dispatch_queue_create(0, MEMORY[0x277D85CD8]);
  dispatch_set_target_queue(v30, v28);
  *(v5 + 176) = v30;
  v31 = *(*(v5 + 160) + 40);
  v32 = dispatch_queue_create(0, 0);
  dispatch_set_target_queue(v32, v31);
  *(v5 + 184) = v32;
  v33 = *(*(v5 + 160) + 40);
  v34 = dispatch_queue_create(0, v29);
  dispatch_set_target_queue(v34, v33);
  *(v5 + 192) = v34;
  v35 = *(*(v5 + 160) + 40);
  v36 = dispatch_queue_create(0, 0);
  dispatch_set_target_queue(v36, v35);
  *(v5 + 200) = v36;
  v37 = *(*(v5 + 160) + 48);
  v38 = dispatch_queue_create(0, 0);
  dispatch_set_target_queue(v38, v37);
  *(v5 + 208) = v38;
  *(v5 + 216) = dispatch_group_create();
  *(v5 + 224) = dispatch_group_create();
  if (fstat(a1, (v5 + 16)) == -1)
  {
    v42 = *__error();
    v52 = *(v5 + 8);
    v53 = __error();
    strerror(*v53);
    sub_24051EB50(@"%s:%d: fstat %s: %s\n", v54, v55, v56, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    goto LABEL_67;
  }

  if (qword_27E4B5970 != -1)
  {
    dispatch_once(&qword_27E4B5970, &unk_28525D738);
  }

  v39 = qword_27E4B5978;
  dispatch_semaphore_wait(qword_27E4B5978, 0xFFFFFFFFFFFFFFFFLL);
  if ((*(v5 + 304) & 1) == 0)
  {
    dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
    *(v5 + 252) = 1;
  }

  if (write(a1, 0, 0))
  {
    if (*__error() == 9)
    {
      memset(&__b, 170, 0x400uLL);
      if (fcntl(a1, 50, &__b) != -1)
      {
        v40 = *(v5 + 8);
        v145[0] = MEMORY[0x277D85DD0];
        v145[1] = 0x40000000;
        v145[2] = sub_240522130;
        v145[3] = &unk_278CA9330;
        v145[4] = &__b;
        v41 = sub_24051ECE0(-1, &__b, v40, (v5 + 323), v145);
        *(v5 + 244) = v41;
        if (v41 == -1)
        {
          v42 = *__error();
          v43 = *(v5 + 8);
          v44 = __error();
          strerror(*v44);
          sub_24051EB50(@"%s:%d: open %s (%s): %s\n", v45, v46, v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
          goto LABEL_49;
        }

LABEL_39:
        if (*(v5 + 252) != 1 || *(*(v5 + 160) + 15) != 1 || *(v5 + 248) != -1)
        {
          goto LABEL_61;
        }

        memset(&__b, 170, 0x400uLL);
        v62.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v62.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v147.st_blksize = v62;
        *v147.st_qspare = v62;
        v147.st_birthtimespec = v62;
        *&v147.st_size = v62;
        v147.st_mtimespec = v62;
        v147.st_ctimespec = v62;
        *&v147.st_uid = v62;
        v147.st_atimespec = v62;
        *v146.st_qspare = v62;
        *&v147.st_dev = v62;
        *&v146.st_size = v62;
        *&v146.st_blksize = v62;
        v146.st_ctimespec = v62;
        v146.st_birthtimespec = v62;
        v146.st_mtimespec = v62;
        *&v146.st_uid = v62;
        v146.st_atimespec = v62;
        *&v146.st_dev = v62;
        if (fcntl(*(v5 + 244), 50, &__b))
        {
          v42 = *__error();
          v63 = __error();
          strerror(*v63);
          sub_24051EB50(@"%s:%d: fcntl F_GETPATH %s: %s\n", v64, v65, v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
        }

        else
        {
          snprintf(&__b, 0x400uLL, "%s%s", &__b, "/..namedfork/rsrc");
          v100 = open(&__b, 770);
          *(v5 + 248) = v100;
          if (v100 != -1)
          {
            if (fstat(*(v5 + 244), &v146) || fstat(*(v5 + 248), &v147) || v146.st_ino == v147.st_ino)
            {
              goto LABEL_61;
            }

            close(*(v5 + 248));
            *(v5 + 248) = -1;
            v42 = 35;
LABEL_45:
            sub_240520C44(v5, v42);
LABEL_50:
            v98 = *(v5 + 244);
            if (v98 != -1)
            {
              close(v98);
            }

            *(v5 + 244) = -1;
            v99 = *(v5 + 248);
            if (v99 != -1)
            {
              close(v99);
            }

            *(v5 + 248) = -1;
            if (*(v5 + 252) == 1)
            {
              dispatch_semaphore_signal(v39);
            }

            dispatch_semaphore_signal(v39);
            goto LABEL_67;
          }

          v42 = *__error();
          v134 = *(v5 + 8);
          v135 = __error();
          strerror(*v135);
          sub_24051EB50(@"%s:%d: open %s (%s): %s\n", v136, v137, v138, v139, v140, v141, v142, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
        }

        if (!v42)
        {
          goto LABEL_61;
        }

        goto LABEL_45;
      }

      v42 = *__error();
      v89 = *(v5 + 8);
      v90 = __error();
      strerror(*v90);
      sub_24051EB50(@"%s:%d: fcntl %s: %s\n", v91, v92, v93, v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    }

    else
    {
      v42 = *__error();
      v71 = *(v5 + 8);
      v72 = __error();
      strerror(*v72);
      sub_24051EB50(@"%s:%d: write %s: %s\n", v73, v74, v75, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    }
  }

  else
  {
    v61 = dup(a1);
    *(v5 + 244) = v61;
    if (v61 != -1)
    {
      goto LABEL_39;
    }

    v42 = *__error();
    v80 = *(v5 + 8);
    v81 = __error();
    strerror(*v81);
    sub_24051EB50(@"%s:%d: dup %s: %s\n", v82, v83, v84, v85, v86, v87, v88, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  }

LABEL_49:
  if (v42)
  {
    goto LABEL_50;
  }

LABEL_61:
  *(v5 + 322) = 0;
  *(v5 + 253) = 0;
  v101 = *(v5 + 244);
  if (v101 == -1)
  {
    v42 = 22;
    goto LABEL_67;
  }

  memset(&__b, 170, sizeof(__b));
  if (fstatfs(v101, &__b) != -1)
  {
    if ((__b.f_flags & 0x80) != 0)
    {
      *(v5 + 253) = 1;
    }

    goto LABEL_70;
  }

  v42 = *__error();
  v102 = *(v5 + 8);
  v103 = __error();
  strerror(*v103);
  sub_24051EB50(@"%s:%d: fstatfs %s: %s\n", v104, v105, v106, v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
  if (v42)
  {
LABEL_67:
    sub_240520C44(v5, v42);
    sub_24052109C(v5, 3, v111, v112, v113, v114, v115, v116);
    sub_24052213C(v5);
    goto LABEL_68;
  }

LABEL_70:
  v119 = *(v5 + 24);
  __b.f_bsize = *(v5 + 16);
  *&__b.f_iosize = v119;
  v120 = CFDataCreate(0, &__b, 12);
  os_unfair_lock_lock(&unk_27E4B5950);
  Mutable = qword_27E4B5958;
  if (!qword_27E4B5958)
  {
    *&__b.f_bsize = 0;
    __b.f_blocks = sub_240522120;
    __b.f_bavail = 0;
    __b.f_files = 0;
    __b.f_bfree = sub_240521EBC;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], &__b);
    qword_27E4B5958 = Mutable;
  }

  CFDictionarySetValue(Mutable, v120, v5);
  os_unfair_lock_unlock(&unk_27E4B5950);
  CFRelease(v120);
  if (*(v5 + 304) == 1)
  {
    v144[0] = MEMORY[0x277D85DD0];
    v144[1] = 0x40000000;
    v144[2] = sub_240521E70;
    v144[3] = &unk_278CA92B0;
    v144[4] = v5;
    *&__b.f_bsize = MEMORY[0x277D85DD0];
    __b.f_blocks = 1107296256;
    __b.f_bfree = sub_240520E1C;
    __b.f_bavail = &unk_28525D638;
    __b.f_files = v144;
    __b.f_ffree = v5;
    sub_240520244(v5, 3u, 0, &__b, v122, v123, v124, v125);
  }

  else
  {
    v126 = *(v5 + 264);
    v127 = (v126 + 0xFFFF) >> 16;
    *(v5 + 288) = v127;
    *(v5 + 400) = calloc(v127, 8uLL);
    *(v5 + 408) = calloc(*(v5 + 288), 4uLL);
    v128 = *(v5 + 288);
    if (*(*(v5 + 160) + 28) == 0x20000)
    {
      v129 = 8 * v128 + 264;
      *(v5 + 332) = v129;
      *(v5 + 336) = sub_240524AFC(v129, 1);
      v130 = *(v5 + 332) + 50;
    }

    else
    {
      v131 = 4 * v128 + 4;
      *(v5 + 344) = v131;
      *(v5 + 352) = sub_240524AFC(v131, 1);
      v130 = *(v5 + 344);
    }

    if (*(*(v5 + 160) + 24) == 460)
    {
      v132 = -1;
    }

    else
    {
      v133 = (1374389535 * (*(a4 + 20) * ((v126 + 4095) >> 12))) >> 32;
      v132 = ((v133 << 7) & 0xFFFFF000) - v130;
      if (v132 <= 0xECA)
      {
        v132 = 3786;
      }

      if (((v133 << 7) & 0xFFFFF000) == 0)
      {
        v132 = 3786;
      }
    }

    *(v5 + 296) = v132;
  }

  sub_240521DCC(v5);
LABEL_69:
  v117 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t WriteToStreamCompressor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v12 = 22;
    goto LABEL_53;
  }

  if (*(a1 + 322) == 1)
  {
    sub_24052046C(a1, "written to after it was closed", a3, a4, a5, a6, a7, a8, v44);
  }

  v9 = *(a1 + 160);
  v10 = *(v9 + 12);
  v11 = (v9 + 8);
  if (v10)
  {
    v11 = (a1 + 240);
  }

  v12 = *v11;
  if (*v11)
  {
LABEL_53:
    *__error() = v12;
    return -1;
  }

  v13 = a3;
  if (!a3)
  {
    return 0;
  }

  if ((*(a1 + 272) + a3) > *(a1 + 264))
  {
    v45 = *(a1 + 272) + a3;
    sub_24051EB50(@"%s:%d: Error: wrote %llu bytes to file of size %llu\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
    v12 = 22;
    goto LABEL_52;
  }

  v15 = a2;
  if (v10 && (*(a1 + 324) & 1) != 0)
  {
    v12 = 28;
    goto LABEL_53;
  }

  v14 = 0;
  do
  {
    sub_240522240(a1, a2, a3, a4, a5, a6, a7, a8);
    v16 = *(a1 + 360);
    v17 = (*(a1 + 364) - v16);
    if (v13 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13;
    }

    memcpy((*(a1 + 368) + v16), v15, v18);
    v19 = v18 + *(a1 + 360);
    *(a1 + 360) = v19;
    *(a1 + 272) += v18;
    if (*(a1 + 364) == v19)
    {
      v20 = *(a1 + 368);
      if (!v20)
      {
        __assert_rtn("emitCurBuffer", "StreamCompressor.cpp", 540, "curBuffer");
      }

      if (*(a1 + 304) == 1)
      {
        v21 = v20 - *(a1 + 376);
        v22 = *(a1 + 312);
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 0x40000000;
        v52[2] = sub_240520DD4;
        v52[3] = &unk_278CA9270;
        v52[4] = a1;
        v52[5] = v20;
        v53 = v19;
        v52[6] = v22;
        v52[7] = v21;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 1107296256;
        v54[2] = sub_240520E1C;
        v54[3] = &unk_28525D638;
        v54[4] = v52;
        v54[5] = a1;
        sub_240520244(a1, 3u, 0, v54, a5, a6, a7, a8);
        *(a1 + 312) += v19;
LABEL_47:
        ++*(a1 + 416);
        *(a1 + 384) = 0;
        *(a1 + 392) = 0;
        *(a1 + 360) = 0;
        *(a1 + 368) = 0;
        sub_240521DCC(a1);
        goto LABEL_48;
      }

      if (*(a1 + 320))
      {
LABEL_46:
        v31 = *(a1 + 416);
        v32 = *(a1 + 384);
        v33 = *(a1 + 392);
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 0x40000000;
        v48[2] = sub_240520E98;
        v48[3] = &unk_278CA9290;
        v48[4] = a1;
        v48[5] = v20;
        v49 = v31;
        v50 = v19;
        v48[6] = v32;
        v51 = v33;
        sub_240520244(a1, 0, 0, v48, a5, a6, a7, a8);
        goto LABEL_47;
      }

      v23 = *(*(a1 + 160) + 64);
      if (v19 < 0x1C || v23 == 0)
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 8);
      v26 = *v20;
      if (*v20 == -1095041334)
      {
        v28 = bswap32(v20[1]);
        v29 = bswap32(v20[4]);
      }

      else
      {
        v27 = *(a1 + 368);
        if (v26 != -889275714)
        {
LABEL_35:
          if ((v26 + 17958194) < 2)
          {
            v30 = v27[3];
          }

          else
          {
            if (v26 != -822415874 && v26 != -805638658)
            {
              goto LABEL_45;
            }

            v30 = bswap32(v27[3]);
          }

          if (v30)
          {
            if (v30 < 0x20)
            {
              if ((v23 >> v30))
              {
                goto LABEL_44;
              }
            }

            else
            {
              v47 = *(a1 + 8);
              sub_24051EB50(@"%s:%d: Error: file type of %s is out of range\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
            }
          }

LABEL_45:
          *(a1 + 320) = 1;
          goto LABEL_46;
        }

        v28 = v20[1];
        v29 = v20[4];
      }

      if (v28 > 0x13)
      {
LABEL_44:
        *(a1 + 324) = 1;
        goto LABEL_45;
      }

      if (v29 + 28 > v19)
      {
        v46 = *(a1 + 8);
        sub_24051EB50(@"%s:%d: Error: the first mach header of %s is not in the first %zu bytes, assuming we need to skip it\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressorQueue.c");
        goto LABEL_44;
      }

      v27 = (v20 + v29);
      v26 = *v27;
      goto LABEL_35;
    }

LABEL_48:
    v14 += v18;
    v15 += v18;
    v13 -= v18;
  }

  while (v13);
  v34 = *(a1 + 160);
  v35 = *(v34 + 12);
  v36 = (v34 + 8);
  if (v35)
  {
    v36 = (a1 + 240);
  }

  v12 = *v36;
  if (*v36)
  {
LABEL_52:
    sub_240520C44(a1, v12);
    sub_24052109C(a1, 3, v37, v38, v39, v40, v41, v42);
    goto LABEL_53;
  }

  return v14;
}

uint64_t CloseStreamCompressor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = *(a1 + 160);
    if (*(a1 + 322) == 1)
    {
      sub_24052046C(a1, "double-closed", a3, a4, a5, a6, a7, a8, v30);
    }

    *(a1 + 322) = 1;
    v10 = (a1 + 240);
    if (!*(v9 + 12))
    {
      v10 = (v9 + 8);
    }

    v11 = *v10;
    if (*(a1 + 272) != *(a1 + 264) && v11 == 0)
    {
      if (*(v9 + 12) && (*(a1 + 324) & 1) != 0)
      {
        goto LABEL_14;
      }

      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36 = v14;
      v37 = v14;
      v34 = v14;
      v35 = v14;
      *v33 = v14;
      backtrace(v33, 10);
      v31 = *(a1 + 272);
      v32 = *(a1 + 264);
      sub_24051EB50(@"%s:%d: %p %p %p %p %p %p %p %p %p %p: Error: wrote %llu bytes but expected %llu bytes\n", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/StreamCompressor.cpp");
      v11 = 22;
    }

    else if (!v11)
    {
LABEL_14:
      sub_24052213C(a1);
      v13 = 0;
LABEL_17:
      DrainStreamCompressorQueue(v9);
      goto LABEL_18;
    }

    sub_240520C44(a1, v11);
    sub_24052109C(a1, 3, v22, v23, v24, v25, v26, v27);
    sub_24052213C(a1);
    *__error() = v11;
    v13 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  *__error() = 22;
  v13 = 0xFFFFFFFFLL;
LABEL_18:
  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_240523CD0(int a1, int *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a1 - 15) <= 0xFFFFFFF1)
  {
    sub_24051EB50(@"%s:%d: Error: type %d out of range\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    goto LABEL_8;
  }

  v10 = &dword_240525DCC[3 * a1];
  if (!*v10 || !v10[1])
  {
    sub_24051EB50(@"%s:%d: Error: unknown compressor %d\n", a2, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
LABEL_8:
    result = 0;
    v10 = dword_240525DCC;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  result = 1;
  if (a2)
  {
LABEL_9:
    *a2 = *v10;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v10[1];
  }

  return result;
}

size_t sub_240523D98(size_t algorithm, const uint8_t *a2, unsigned int a3, uint8_t *a4, unsigned int a5, int a6)
{
  v6 = algorithm;
  if (algorithm)
  {
    v12 = compression_encode_scratch_buffer_size(algorithm);
    if (v12)
    {
      v13 = malloc(v12);
      if (!v13)
      {
        return 0;
      }
    }

    else
    {
      v13 = 0;
    }

    if (a6 == 1)
    {
      v14 = compression_encode_buffer(a4, a5, a2, a3, v13, v6);
    }

    else
    {
      v14 = compression_decode_buffer(a4, a5, a2, a3, v13, v6);
    }

    v6 = v14;
    if (v13)
    {
      free(v13);
    }
  }

  return v6;
}

int *sub_240523E4C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = a2;
  sub_240523CD0(*(*(a2 + 16) + 8), a1 + 2, a1 + 3, a4, a5, a6, a7, a8);
  v16 = a1[3];
  if (v16 == 196608 || v16 == 0x20000)
  {
    v17 = *(*(*a1 + 16) + 12) + 0xFFFFLL;
    if (HIWORD(v17))
    {
      __assert_rtn("CompressedFile", "ChunkCompression.cpp", 247, "numChunks <= UINT32_MAX");
    }

    a1[4] = v17 >> 16;
  }

  else if (v16 == 0x10000)
  {
    a1[4] = 1;
  }

  else
  {
    v19 = *(*a1 + 8);
    v20 = a1[3];
    sub_24051EB50(@"%s:%d: %s: unknown chunking scheme %llu\n", v9, v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
  }

  return a1;
}

uint64_t sub_240523F28(uint64_t **a1, void *value, size_t size, uint64_t position, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = **a1;
  if (v12)
  {
    v43 = 0;
    v13 = (*(v12 + 16))(v12, position, size, value, &v43);
    *a5 = v13;
    if (v13)
    {
      v40 = (*a1)[1];
      sub_24051EB50(@"%s:%d: %s: readRscData: (%llu, %zu), returned error [%d]", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
      return 0;
    }

    if (v43 != size)
    {
      v41 = (*a1)[1];
      sub_24051EB50(@"%s:%d: %s: readRscData: (%llu, %zu), returned size [%lu]\n", v14, v15, v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
      *a5 = 5;
      return 0;
    }

    return 1;
  }

  if (position < 0x100000000)
  {
    v23 = getxattr(v11[1], "com.apple.ResourceFork", value, size, position, 32);
    if (v23 == -1)
    {
      *a5 = *__error();
      v31 = (*a1)[1];
      v32 = __error();
      strerror(*v32);
      sub_24051EB50(@"%s:%d: %s: fgetxattr(%llu,%zu): %s\n", v33, v34, v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
      return 0;
    }

    if (v23 == size)
    {
      return 1;
    }

    v42 = (*a1)[1];
    sub_24051EB50(@"%s:%d: %s: fgetxattr(%llu,%zu) returned %zu\n", v24, v25, v26, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    result = 0;
    v22 = 5;
  }

  else
  {
    sub_24051EB50(@"%s:%d: %s: position=%lld is too big\n", value, size, value, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    result = 0;
    v22 = 22;
  }

  *a5 = v22;
  return result;
}

void *sub_2405240FC(void *result, size_t __size)
{
  if (*(result + 8) < __size)
  {
    v2 = __size;
    v3 = result;
    v4 = result[3];
    if (v4)
    {
      free(v4);
    }

    result = malloc(v2);
    v3[3] = result;
    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t sub_24052414C(_DWORD *a1, uint64_t a2, uint64_t __size, uint64_t a4, uint64_t a5, size_t *a6, uint64_t a7, uint64_t a8)
{
  value[1] = *MEMORY[0x277D85DE8];
  v77 = 0;
  if (a1[4] <= a2)
  {
    v64 = *(*a1 + 8);
    sub_24051EB50(@"%s:%d: %s: attempting to read chunk %u from file with %u chunks\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    goto LABEL_8;
  }

  v11 = a4;
  v13 = a1[3];
  if (v13 == 196608)
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    if ((sub_240523F28(a1, value, 8uLL, 4 * a2, &v77, a6, a7, a8) & 1) == 0)
    {
      goto LABEL_23;
    }

    v28 = (HIDWORD(value[0]) - LODWORD(value[0]));
    if (HIDWORD(value[0]) <= LODWORD(value[0]))
    {
      v66 = *(*a1 + 8);
      sub_24051EB50(@"%s:%d: %s: resource fork offsets are out of order (offsets[1] (%u) <= offsets[0] (%u)) \n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
      v18 = 0;
      result = 22;
      goto LABEL_24;
    }

    sub_2405240FC(a1, (HIDWORD(value[0]) - LODWORD(value[0])));
    v29 = *(a1 + 3);
    if (v29)
    {
      v30 = sub_240523F28(a1, v29, v28, LODWORD(value[0]), &v77, v24, v25, v26);
      if (v30)
      {
        v18 = v28;
      }

      else
      {
        v18 = 0;
      }

      if (v30)
      {
        result = 0;
      }

      else
      {
        result = v77;
      }

      goto LABEL_24;
    }

    v71 = *(*a1 + 8);
    goto LABEL_65;
  }

  if (v13 == 0x20000)
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    if ((sub_240523F28(a1, value, 8uLL, 8 * a2 + 264, &v77, a6, a7, a8) & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_2405240FC(a1, HIDWORD(value[0]));
    v27 = *(a1 + 3);
    if (v27)
    {
      if (sub_240523F28(a1, v27, HIDWORD(value[0]), LODWORD(value[0]) + 260, &v77, v24, v25, v26))
      {
        result = 0;
        v18 = HIDWORD(value[0]);
LABEL_24:
        if (result)
        {
          goto LABEL_9;
        }

        v16 = *(a1 + 3);
        goto LABEL_26;
      }

LABEL_23:
      v18 = 0;
      result = v77;
      goto LABEL_24;
    }

    v67 = *(*a1 + 8);
LABEL_65:
    sub_24051EB50(@"%s:%d: %s: allocating buffer of size %u failed\n", 0, v21, v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    v18 = 0;
    result = 12;
    goto LABEL_24;
  }

  if (v13 != 0x10000)
  {
    v65 = *(*a1 + 8);
    sub_24051EB50(@"%s:%d: %s: unknown chunking scheme %llu\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    goto LABEL_8;
  }

  v14 = *a1;
  v15 = *(*a1 + 16);
  v17 = *v15;
  v16 = v15 + 5;
  *(a1 + 3) = v16;
  v18 = v17 - 16;
  if (v17 > 0x10)
  {
LABEL_26:
    v31 = a1[2];
    if (*v16 == v31)
    {
      v32 = v18 - 1;
      if (v32)
      {
        v33 = 0;
        v34 = 0;
        v35 = v16 + 1;
        do
        {
          v36 = a5 + 16 * v33;
          v37 = *v36;
          v38 = *(v36 + 8);
          if (v38 >= v32)
          {
            v39 = v32;
          }

          else
          {
            v39 = v38;
          }

          if (v37)
          {
            memcpy(v37, v35, v39);
          }

          v34 += v39;
          if (v33 + 1 >= v11)
          {
            break;
          }

          v35 += v39;
          v33 = 1;
          v32 -= v39;
        }

        while (v32);
      }

      else
      {
        v34 = 0;
      }

      goto LABEL_47;
    }

    *a6 = 0;
    if (v31 > 1278)
    {
      if (v31 == 1279)
      {
        v41 = COMPRESSION_LZFSE;
      }

      else
      {
        if (v31 != 1535)
        {
          goto LABEL_49;
        }

        v41 = COMPRESSION_LZBITMAP;
      }

      if (*(a1 + 7))
      {
        v40 = 0;
        goto LABEL_57;
      }
    }

    else
    {
      if (v31 != 767)
      {
        if (v31 == 774)
        {
          v40 = 0;
          v41 = 2304;
LABEL_57:
          if (v11 == 1)
          {
            v42 = compression_decode_buffer(*a5, *(a5 + 8), &v16[v40], v18 - v40, *(a1 + 7), v41);
            if (v42)
            {
              v50 = v42;
              result = 0;
              *a6 = v50;
              goto LABEL_9;
            }

            v74 = *(*a1 + 8);
            goto LABEL_78;
          }

          if (__size >= 0x100000000)
          {
            v69 = *(*a1 + 8);
            sub_24051EB50(@"%s:%d: %s: vecTotal=%lld is too big for compression algorithm 0x%x\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
            goto LABEL_8;
          }

          v51 = a1[12];
          v52 = *(a1 + 5);
          if (v51 < __size)
          {
            if (v52)
            {
              free(v52);
            }

            v52 = malloc(__size);
            *(a1 + 5) = v52;
            a1[12] = __size;
            v51 = __size;
          }

          if (v52)
          {
            v53 = compression_decode_buffer(v52, v51, (*(a1 + 3) + v40), v18 - v40, *(a1 + 7), v41);
            if (v53)
            {
              v54 = v53;
              v55 = HIDWORD(v53);
              if (HIDWORD(v53))
              {
                v72 = *(*a1 + 8);
                sub_24051EB50(@"%s:%d: %s: decmpSize=%zu is too big\n", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
                goto LABEL_8;
              }

              v34 = 0;
              v56 = *(a1 + 5);
              v57 = 1;
              do
              {
                v58 = a5 + 16 * v55;
                v59 = *v58;
                v60 = *(v58 + 8);
                if (v60 >= v54)
                {
                  v61 = v54;
                }

                else
                {
                  v61 = v60;
                }

                if (v59)
                {
                  memcpy(v59, v56, v61);
                }

                v34 += v61;
                v54 -= v61;
                v56 += v61;
                v62 = v57 & (v54 != 0);
                v55 = 1;
                v57 = 0;
              }

              while ((v62 & 1) != 0);
LABEL_47:
              result = 0;
              *a6 = v34;
              goto LABEL_9;
            }

            v76 = *(*a1 + 8);
LABEL_78:
            sub_24051EB50(@"%s:%d: %s: decode failed for compression algorithm 0x%x\n", v43, v44, v45, v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
            goto LABEL_8;
          }

          v75 = *(*a1 + 8);
          sub_24051EB50(@"%s:%d: %s: allocating buffer of size %llu failed for compression algorithm 0x%x\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
LABEL_63:
          result = 12;
          goto LABEL_9;
        }

LABEL_49:
        v68 = *(*a1 + 8);
        sub_24051EB50(@"%s:%d: %s: unknown compression scheme %llu\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
        goto LABEL_8;
      }

      if (*(a1 + 7))
      {
        if (v18 < 2 || (*v16 & 0xF) != 8)
        {
          v73 = *(*a1 + 8);
          sub_24051EB50(@"%s:%d: %s: invalid zlib header\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
          goto LABEL_8;
        }

        v40 = 2;
        v41 = COMPRESSION_ZLIB;
        goto LABEL_57;
      }
    }

    v70 = *(*a1 + 8);
    sub_24051EB50(@"%s:%d: %s: workbuffer allocation failed\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    goto LABEL_63;
  }

  v63 = v14[1];
  sub_24051EB50(@"%s:%d: %s: decmpfs xattr size (%u) should be greater than decmpfs disk header size (%zu)\n", a2, __size, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
LABEL_8:
  result = 22;
LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_240524720(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8 = 22;
  if (!a4 || !a5)
  {
    return v8;
  }

  v12 = *(*(a1 + 16) + 12);
  if (v12 <= a2)
  {
    v8 = 0;
    *a6 = 0;
    return v8;
  }

  if (((a3 + a2) >> 64))
  {
    sub_24051EB50(@"%s:%d: add overflow: offset %llu, totalSize %llu\n", a1, a3, a4, a5, a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    return v8;
  }

  v13 = a4;
  if (v12 >= a3 + a2)
  {
    v14 = a3;
  }

  else
  {
    v14 = v12 - a2;
  }

  v64 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v62 = v15;
  *v63 = v15;
  v60 = v15;
  *v61 = v15;
  sub_240523E4C(&v60, a1, a3, a4, a5, a6, a7, a8);
  v61[1] = 0;
  LODWORD(v62[0]) = 0;
  v62[1] = 0;
  LODWORD(v63[0]) = 0;
  v63[1] = 0;
  v64 = 0;
  if (SDWORD2(v60) <= 773)
  {
    if (DWORD2(v60) == 460)
    {
      goto LABEL_23;
    }

    if (DWORD2(v60) != 767)
    {
      goto LABEL_22;
    }

    v23 = COMPRESSION_ZLIB;
  }

  else
  {
    switch(DWORD2(v60))
    {
      case 0x5FF:
        v23 = COMPRESSION_LZBITMAP;
        break;
      case 0x4FF:
        v23 = COMPRESSION_LZFSE;
        break;
      case 0x306:
        v23 = 2304;
        break;
      default:
LABEL_22:
        v57 = *(v60 + 8);
        sub_24051EB50(@"%s:%d: %s: unknown compression scheme %llu\n", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
        goto LABEL_23;
    }
  }

  v24 = compression_decode_scratch_buffer_size(v23);
  if (v24)
  {
    v25 = v24;
    v63[1] = malloc(v24);
    v64 = v25;
  }

LABEL_23:
  v26 = calloc(v13 + 1, 0x10uLL);
  if (!v26)
  {
    sub_24051EB50(@"%s:%d: allocation of %zu bytes failed\n", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    v8 = 12;
    goto LABEL_73;
  }

  v34 = v26;
  if (!a2)
  {
    v35 = 0;
    v36 = 0;
LABEL_31:
    v38 = 0;
    v37 = 0x10000;
    goto LABEL_32;
  }

  if (HIWORD(a2))
  {
    sub_24051EB50(@"%s:%d: invalid offset: %llu\n", v27, v28, v29, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ChunkCompression.cpp");
    goto LABEL_72;
  }

  v36 = a2 >> 16;
  v35 = a2;
  if (!a2)
  {
    goto LABEL_31;
  }

  *v26 = 0;
  v26[1] = a2;
  v37 = 0x10000 - a2;
  v38 = 1;
LABEL_32:
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v35;
  v58 = v35;
  v59 = v35;
  while (1)
  {
    v43 = &a5[2 * v40];
    v44 = *v43;
    v45 = v43[1] - v41;
    if (v45 >= v37)
    {
      v45 = v37;
    }

    if (v45 >= v14)
    {
      v45 = v14;
    }

    v46 = (v34 + 16 * v38);
    if (v44)
    {
      v47 = v44 + v41;
    }

    else
    {
      v47 = 0;
    }

    *v46 = v47;
    v46[1] = v45;
    v14 -= v45;
    if (v45 + v41 == v43[1])
    {
      ++v40;
      v41 = 0;
    }

    else
    {
      v41 += v45;
    }

    v48 = v37 == v45 || v14 == 0;
    if (!v48 && v40 != v13)
    {
      goto LABEL_63;
    }

    v50 = v45 + v42;
    v51 = v38 + 1;
    while (1)
    {
      v52 = v34 + 16 * v51;
      if (*(v52 - 16))
      {
        break;
      }

      v50 -= *(v52 - 8);
      v48 = v51 == 1;
      v51 = 1;
      if (v48)
      {
        goto LABEL_63;
      }
    }

    v65 = 0;
    if (v13 != 1 || !v59 || v51 != 2 || *v34 || (v53 = *(v34 + 24) + *(v34 + 8), v53 > a5[1]))
    {
      v54 = sub_24052414C(&v60, v36, v50, v51, v34, &v65, v32, v33);
      if (v54)
      {
        break;
      }

      goto LABEL_62;
    }

    *v34 = *a5;
    *(v34 + 8) = v53;
    v54 = sub_24052414C(&v60, v36, v50, 1, v34, &v65, v32, v33);
    if (v54)
    {
      break;
    }

    memmove(*v34, (*v34 + v59), *(v34 + 8) - v59);
    v59 = 0;
LABEL_62:
    v39 += v65;
LABEL_63:
    v38 = 0;
    v42 = 0;
    v36 = (v36 + 1);
    if (v14)
    {
      v55 = v40 == v13;
    }

    else
    {
      v55 = 1;
    }

    v37 = 0x10000;
    if (v55)
    {
      free(v34);
      v8 = 0;
      *a6 = v39 - v58;
      goto LABEL_73;
    }
  }

  v8 = v54;
LABEL_72:
  free(v34);
LABEL_73:
  if (HIDWORD(v60) != 0x10000 && v61[1])
  {
    free(v61[1]);
  }

  if (v62[1])
  {
    free(v62[1]);
  }

  if (v63[1])
  {
    free(v63[1]);
  }

  return v8;
}

void *sub_240524AFC(unsigned int a1, int a2)
{
  if (a2)
  {
    if (qword_27E4B5980 != -1)
    {
      dispatch_once(&qword_27E4B5980, &unk_28525D758);
    }

    dispatch_semaphore_wait(qword_27E4B5988, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (qword_27E4B5980 != -1)
    {
      dispatch_once(&qword_27E4B5980, &unk_28525D758);
    }

    if (dispatch_semaphore_wait(qword_27E4B5988, 0))
    {
      return 0;
    }
  }

  return malloc(a1);
}

dispatch_semaphore_t sub_240524BAC()
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v12 = 8;
  *v14 = 0x1800000006;
  if (sysctl(v14, 2u, &v13, &v12, 0, 0) == -1)
  {
    v2 = __error();
    strerror(*v2);
    sub_24051EB50(@"%s:%d: sysctl: %s\n", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c");
    v13 = 0;
    goto LABEL_7;
  }

  v0 = v13;
  if (!(v13 >> 31))
  {
LABEL_7:
    v1 = 8194;
    goto LABEL_8;
  }

  v13 -= 0x80000000;
  if (v0 - 0x80000000 >= 0x20020000)
  {
    v1 = ((v0 - 0x80000000) >> 16);
  }

  else
  {
    v1 = 8194;
  }

LABEL_8:
  result = dispatch_semaphore_create(v1);
  qword_27E4B5988 = result;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240524CA0(void *result)
{
  if (result)
  {
    free(result);
    if (qword_27E4B5980 != -1)
    {
      dispatch_once(&qword_27E4B5980, &unk_28525D758);
    }

    v1 = qword_27E4B5988;

    return dispatch_semaphore_signal(v1);
  }

  return result;
}

int *sub_240524D00()
{
  v0 = getenv("AFSC_MAX_FDS");
  v1 = v0;
  if (v0)
  {
    v2 = atoi(v0);
    sub_24051EB50(@"%s:%d: Error: using max fds override of %d\n", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c");
  }

  else
  {
    v2 = 96;
  }

  v51.rlim_cur = 0;
  v51.rlim_max = 0;
  if (getrlimit(8, &v51) == -1)
  {
    v43 = __error();
    strerror(*v43);
    return sub_24051EB50(@"%s:%d: getrlimit: %s\n", v44, v45, v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c");
  }

  else
  {
    v10 = v2;
    rlim_cur = v51.rlim_cur;
    if (v51.rlim_max >= 0x2800)
    {
      rlim_max = 10240;
    }

    else
    {
      rlim_max = v51.rlim_max;
    }

    if (v51.rlim_cur >= rlim_max)
    {
      v13 = rlim_max;
    }

    else
    {
      v13 = v51.rlim_cur;
    }

    v14 = v13 + v10;
    if (v13 + v10 >= rlim_max)
    {
      v14 = rlim_max;
    }

    v51.rlim_cur = v14;
    if (setrlimit(8, &v51) == -1)
    {
      v15 = __error();
      strerror(*v15);
      sub_24051EB50(@"%s:%d: setrlimit(RLIMIT_NOFILE.rlim_cur = %lld): %s\n", v16, v17, v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c");
    }

    if (getrlimit(8, &v51) == -1)
    {
      v30 = __error();
      strerror(*v30);
      sub_24051EB50(@"%s:%d: getrlimit(RLIMIT_NOFILE): %s\n", v31, v32, v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c");
    }

    v38 = v51.rlim_cur;
    if (v51.rlim_cur >= rlim_max)
    {
      v38 = rlim_max;
    }

    v39 = v38 - v13;
    if (v38 - v13 <= 0xA)
    {
      v39 = 10;
    }

    if (rlim_cur >= v38)
    {
      v40 = 10;
    }

    else
    {
      v40 = v39;
    }

    if (v40 >= v10)
    {
      v41 = v10;
    }

    else
    {
      v41 = v40;
    }

    if (v1)
    {
      if (v40 < v10)
      {
        sub_24051EB50(@"%s:%d: Error: could not use desired max fds of %d, using %llu instead\n", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/ThrottlingAllocator.c");
      }
    }

    result = dispatch_semaphore_create(v41);
    qword_27E4B5978 = result;
  }

  return result;
}

uint64_t type5_handler_function(uint64_t a1)
{
  v24 = 0x34F2326416E94937;
  v2 = guarded_open_np();
  if (v2 == -1)
  {
    v15 = __error();
    v16 = strerror(*v15);
    syslog(3, "afsc open: %s", v16);
    return 0;
  }

  v3 = v2;
  v4 = v2;
  while (1)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x4800000000;
    memset(v23, 0, sizeof(v23));
    if (read(v3, v23, 0x30uLL) != 48)
    {
      v5 = __error();
      v6 = strerror(*v5);
      syslog(3, "read request from %d: %s", v4, v6);
    }

    v7 = v21[4];
    if (v7 != 2)
    {
      break;
    }

    (*(a1 + 8))(v21[5], v21[6]);
    if (write(v3, v21 + 3, 0x30uLL) != 48)
    {
      v13 = __error();
      v14 = strerror(*v13);
      syslog(3, "send response to %d: %s", v3, v14);
    }

LABEL_10:
    _Block_object_dispose(&v20, 8);
  }

  if (v7 == 1)
  {
    v8 = *a1;
    v9 = v21[5];
    v10 = v21[6];
    v11 = v21[7];
    v12 = v21[8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2405250D0;
    v18[3] = &unk_28525D778;
    v18[4] = &v20;
    v19 = v3;
    v8(v9, v10, v11, v12, v18);
    goto LABEL_10;
  }

  syslog(3, "unknown request type from %d: %lld\n", v3, v7);
  _Block_object_dispose(&v20, 8);
  return 0;
}

void sub_2405250D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 40) = a2;
  *(*(*(a1 + 32) + 8) + 48) = a4;
  *(*(*(a1 + 32) + 8) + 56) = a3;
  if (write(*(a1 + 40), (*(*(a1 + 32) + 8) + 24), 0x30uLL) != 48)
  {
    v5 = *(a1 + 40);
    v6 = __error();
    v7 = strerror(*v6);
    syslog(3, "send response to %d: %s", v5, v7);
  }
}

uint64_t VolumeSupportsCompression(const char *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (qword_27E4B5990 != -1)
  {
    dispatch_once(&qword_27E4B5990, &unk_28525D7A8);
  }

  memset(__b, 170, sizeof(__b));
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v35.st_dev = v2;
  *&v35.st_uid = v2;
  v35.st_atimespec = v2;
  v35.st_mtimespec = v2;
  v35.st_ctimespec = v2;
  v35.st_birthtimespec = v2;
  *&v35.st_size = v2;
  *&v35.st_blksize = v2;
  *v35.st_qspare = v2;
  if (!realpath_DARWIN_EXTSN(a1, __b))
  {
    memset(&v37, 170, sizeof(v37));
    if (statfs(a1, &v37))
    {
      v4 = __error();
      strerror(*v4);
LABEL_21:
      sub_24051EB50(@"%s:%d: statfs %s: %s\n", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c");
      goto LABEL_25;
    }

    __strlcpy_chk();
LABEL_17:
    v32 = 20;
    v33 = 0;
    v34 = 0;
    v35.st_dev = 5;
    *&v35.st_mode = xmmword_240525D40;
    v35.st_gid = 0;
    if (getattrlist(__b, &v35, &v32, 0x14uLL, 0))
    {
      if (*__error() != 22)
      {
        v22 = __error();
        strerror(*v22);
        sub_24051EB50(@"%s:%d: getattrlist %s: %s\n", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c");
        goto LABEL_25;
      }

      bzero(&v37, 0x878uLL);
      if (statfs(a1, &v37))
      {
        v21 = __error();
        strerror(*v21);
        goto LABEL_21;
      }

      if (*v37.f_fstypename != 7562856)
      {
        goto LABEL_25;
      }
    }

    else if ((v33 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    result = 1;
    goto LABEL_26;
  }

  if (lstat(__b, &v35) != -1)
  {
    st_dev = v35.st_dev;
    if (v35.st_dev == dword_27E4B5910)
    {
      *__b = 47;
    }

    else
    {
      for (i = &__b[strlen(__b) - 1]; i > __b; --i)
      {
        if (*i == 47)
        {
          *i = 0;
          if (lstat(__b, &v35) == -1)
          {
            goto LABEL_9;
          }

          if (v35.st_dev != st_dev)
          {
            *i = 47;
            goto LABEL_17;
          }
        }
      }
    }

    goto LABEL_17;
  }

LABEL_9:
  v12 = __error();
  strerror(*v12);
  sub_24051EB50(@"%s:%d: lstat %s: %s\n", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c");
LABEL_25:
  result = 0;
LABEL_26:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

int *sub_240525458()
{
  v0.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v0.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v0;
  *v10.st_qspare = v0;
  v10.st_birthtimespec = v0;
  *&v10.st_size = v0;
  v10.st_mtimespec = v0;
  v10.st_ctimespec = v0;
  *&v10.st_uid = v0;
  v10.st_atimespec = v0;
  *&v10.st_dev = v0;
  result = stat("/", &v10);
  if (result == -1)
  {
    v2 = __error();
    strerror(*v2);
    result = sub_24051EB50(@"%s:%d: stat /: %s\n", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleFSCompression/Common/pathUtils.c");
  }

  dword_27E4B5910 = v10.st_dev;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}