uint64_t readboot()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  if ((*(v1 + 32))(*(v1 + 24), __buf, 4096, 0) == 4096)
  {
    v9 = *(v2 + 64);
    if (v9 >= 1 && pwrite(v9, __buf, 0x1000uLL, 0) != 4096)
    {
      v10 = *__error();
      v126 = fsck_ctx;
      v127 = qword_100059E30;
      fsck_print(&v126, 6, "Failed to shadow offset 0, length 0x%x (errno: %d)", v11, v12, v13, v14, v15, 4096);
    }

    if ((__buf[0] & 0xFD) == 0xE9)
    {
      v3[28] = 0;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 3) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 1) = 0u;
      *(v3 + 2) = 0u;
      *v3 = 0u;
      v3[18] = -1;
      v16 = v103;
      v17 = __buf[11] | (v103 << 8);
      v18 = v104;
      *v3 = v17;
      v3[1] = v18;
      v19 = v106;
      v3[2] = v105;
      v3[3] = v19;
      v20 = v107;
      v21 = v108;
      v22 = v109;
      v3[4] = v107;
      v3[5] = v22;
      v23 = v110;
      v24 = v111;
      v3[6] = v110;
      v3[7] = v24;
      v3[8] = v112;
      v3[9] = v21;
      v25.i32[1] = HIDWORD(v113);
      *(v3 + 5) = v113;
      v3[22] = v23;
      v3[25] = v17 * v18;
      if (v16 < 2 || v17 > 0x1000 || (v25.i32[0] = v17, v26 = vcnt_s8(v25), v26.i16[0] = vaddlv_u8(v26), v26.i32[0] >= 2u))
      {
        v126 = fsck_ctx;
        v127 = qword_100059E30;
        v95 = v17;
        v31 = "Invalid sector size: %u\n";
      }

      else
      {
        if (v18)
        {
          v26.i32[0] = v18;
          v27 = vcnt_s8(v26);
          v27.i16[0] = vaddlv_u8(v27);
          if (v27.i32[0] < 2u)
          {
            v28 = v3[17];
            if (v20)
            {
              if ((v28 & 1) == 0)
              {
                v29 = 0;
                goto LABEL_14;
              }
            }

            else
            {
              v3[17] = v28 | 1;
            }

            v3[22] = v114;
            if (v115 < 0)
            {
              v3[18] = v115 & 0xF;
            }

            if (v116)
            {
              v126 = fsck_ctx;
              v127 = qword_100059E30;
              v95 = HIBYTE(v116);
              v31 = "Unknown filesystem version: %x.%x\n";
              goto LABEL_25;
            }

            v35 = v117;
            v36 = v118;
            v37 = v119;
            v3[12] = v118;
            v3[13] = v37;
            v3[14] = v35;
            v38 = (*(v2 + 32))(*(v2 + 24), &v126, v17, (v36 * v17));
            v40 = *v3;
            if (v38 != v40)
            {
              v54 = __error();
              strerror(*v54);
              v98 = fsck_ctx;
              v99 = qword_100059E30;
              v55 = "could not read fsinfo block";
              goto LABEL_39;
            }

            v41 = v38;
            v42 = *(v2 + 64);
            if (v42 >= 1)
            {
              v43 = pwrite(v42, &v126, v41, v3[12] * v40);
              v44 = *v3;
              if (v43 != v44)
              {
                v45 = v3[12] * v44;
                v46 = *__error();
                v98 = fsck_ctx;
                v99 = qword_100059E30;
                fsck_print(&v98, 6, "Failed to shadow offset 0x%x, length 0x%x (errno %d)", v47, v48, v49, v50, v51, v45);
              }
            }

            if (v126 == 1096897106 && v128 == 1631679090 && (v39.i32[0] = v130, v52 = vmovl_u8(v39).u64[0], vuzp1_s8(v52, v52).u32[0] == -1437270016))
            {
              v29 = 0;
            }

            else
            {
              v98 = fsck_ctx;
              v99 = qword_100059E30;
              fsck_print(&v98, 6, "Warning: Invalid signature in fsinfo block\n", v4, v5, v6, v7, v8, v95);
              v98 = fsck_ctx;
              v99 = qword_100059E30;
              if (!fsck_ask(&v98, 0, "fix", v56, v57, v58, v59, v60, v96))
              {
                v3[12] = 0;
                v29 = 8;
                goto LABEL_14;
              }

              LODWORD(v126) = 1096897106;
              v128 = 1631679090;
              v130 = -1437270016;
              v131 = -1437270016;
              if ((*(v2 + 40))(*(v2 + 24), &v126, *v3, v3[12] * *v3) != *v3)
              {
                v66 = __error();
                strerror(*v66);
                v98 = fsck_ctx;
                v99 = qword_100059E30;
                v55 = "Unable to write FSInfo";
                goto LABEL_39;
              }

              v29 = 1;
            }

            if (v3[12])
            {
              *(v3 + 15) = v129;
            }

LABEL_14:
            v30 = v3[3] * v3[22];
            if ((v30 & 0xFFFFFFFF00000000) != 0)
            {
              v98 = fsck_ctx;
              v99 = qword_100059E30;
              v31 = "Invalid boot->FATs or boot->FATsecs\n";
LABEL_50:
              v33 = &v98;
              goto LABEL_26;
            }

            v3[24] = (*v3 + 32 * v3[4] - 1) / *v3 + v30 + v3[2];
            v53 = v3[9];
            if (v53)
            {
              v3[11] = 0;
            }

            else
            {
              v53 = v3[11];
              if (!v53)
              {
                v3[21] = 0;
                if (v120 == 41 && v121 | (v122 << 32) | (v123 << 40) | (v124 << 48) | (v125 << 54))
                {
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  v78 = "Warning: Encountered special FAT where total sector location is 64bit. Not Supported \n";
                }

                else
                {
                  v101 = 0;
                  v100 = 0;
                  __strlcpy_chk();
                  v101 = 0;
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  v95 = &v100;
                  v78 = "Warning: OEMName: %s\n";
                }

                fsck_print(&v98, 6, v78, v4, v5, v6, v7, v8, v95);
LABEL_47:
                v61 = v3[21];
                if (!v61 || (v62 = v3[24], v61 < v62))
                {
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  v95 = v61;
                  v31 = "Filesystem has invalid NumSectors %u\n";
                  goto LABEL_50;
                }

                v63 = (v61 - v62) / v3[1];
                v64 = v63 + 2;
                v3[20] = v63 + 2;
                if (v3[17])
                {
                  v65 = 0xFFFFFFF;
                }

                else if (v64 >= 0xFF7)
                {
                  if (v64 >= 0xFFF8)
                  {
                    v98 = fsck_ctx;
                    v99 = qword_100059E30;
                    v95 = v63;
                    v31 = "Filesystem too big (%u clusters) for non-FAT32 partition\n";
                    goto LABEL_50;
                  }

                  v65 = 0xFFFF;
                }

                else
                {
                  v65 = 4095;
                }

                v3[19] = v65;
                v67 = *(v2 + 64);
                v68 = *v3;
                if (v67 >= 1)
                {
                  v69 = ftruncate(v67, v68 * v61);
                  v68 = *v3;
                  if (v69)
                  {
                    v70 = v68 * v3[9];
                    v71 = *__error();
                    v98 = fsck_ctx;
                    v99 = qword_100059E30;
                    fsck_print(&v98, 6, "Failed to truncate shadow file to size 0x%x (errno %d)", v72, v73, v74, v75, v76, v70);
                    v68 = *v3;
                  }
                }

                v77 = v3[22] * v68;
                if ((v77 & 0xFFFFFFFF00000000) != 0)
                {
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  v31 = "Invalid boot->FATsecs or boot->BytesPerSec\n";
                  goto LABEL_50;
                }

                v79 = v3[19];
                if (v79 == 0xFFFF)
                {
                  v80 = v77 >> 1;
                }

                else if (v79 == 0xFFFFFFF)
                {
                  v80 = v77 >> 2;
                }

                else
                {
                  if ((v77 & 0x80000000) != 0)
                  {
                    v98 = fsck_ctx;
                    v99 = qword_100059E30;
                    v31 = "Invalid boot->FATsecs or boot->BytesPerSec for FAT12\n";
                    goto LABEL_50;
                  }

                  v80 = 2 * v77 / 3u;
                }

                v3[23] = v80;
                v81 = v3[20];
                if (v80 < v81)
                {
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  fsck_print(&v98, 6, "Warning: FAT size too small, %u entries won't fit into %u sectors\n", v4, v5, v6, v7, v8, v81);
                  v3[20] = v3[23];
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  if (fsck_ask(&v98, 0, "Fix total sectors", v82, v83, v84, v85, v86, v97))
                  {
                    v92 = v3[24] + (v3[20] - 2) * v3[1];
                    v3[21] = v92;
                    if (v3[9])
                    {
                      v3[9] = v92;
                      v108 = v92;
                    }

                    else
                    {
                      v3[11] = v92;
                      HIDWORD(v113) = v92;
                    }

                    if ((*(v2 + 40))(*(v2 + 24), __buf, *v3, 0) == *v3)
                    {
                      v29 = v29 | 1;
                      goto LABEL_85;
                    }

                    v94 = __error();
                    strerror(*v94);
                    v98 = fsck_ctx;
                    v99 = qword_100059E30;
                    v55 = "could not write boot sector";
LABEL_39:
                    v95 = v55;
                    v31 = "%s (%s)\n";
                    goto LABEL_50;
                  }

                  v93 = v3[23] - 2;
                  v98 = fsck_ctx;
                  v99 = qword_100059E30;
                  fsck_print(&v98, 6, "Warning: Continuing, assuming %u clusters\n", v87, v88, v89, v90, v91, v93);
                }

LABEL_85:
                v3[27] = 0;
                return v29;
              }
            }

            v3[21] = v53;
            goto LABEL_47;
          }
        }

        v126 = fsck_ctx;
        v127 = qword_100059E30;
        v95 = v18;
        v31 = "Invalid sectors per cluster: %u\n";
      }
    }

    else
    {
      v126 = fsck_ctx;
      v127 = qword_100059E30;
      v95 = __buf[0];
      v31 = "Invalid BS_jmpBoot in boot block: %02x%02x%02x\n";
    }
  }

  else
  {
    v32 = __error();
    strerror(*v32);
    v126 = fsck_ctx;
    v127 = qword_100059E30;
    v95 = "could not read boot block";
    v31 = "%s (%s)\n";
  }

LABEL_25:
  v33 = &v126;
LABEL_26:
  fsck_print(v33, 2, v31, v4, v5, v6, v7, v8, v95);
  return 16;
}

uint64_t writefsinfo()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = (*v0 * v0[12]);
  v5 = (*(v1 + 32))(*(v1 + 24), v18);
  if (v5 == *v3)
  {
    v6 = v3[16];
    v19 = v3[15];
    v20 = v6;
    if ((*(v2 + 40))(*(v2 + 24), v18, v5, v4) == *v3)
    {
      return 0;
    }

    v15 = __error();
    strerror(*v15);
    v16 = fsck_ctx;
    v17 = qword_100059E30;
    v14 = "Unable to write FSInfo";
  }

  else
  {
    v8 = __error();
    strerror(*v8);
    v16 = fsck_ctx;
    v17 = qword_100059E30;
    v14 = "could not read fsinfo block";
  }

  fsck_print(&v16, 2, "%s (%s)\n", v9, v10, v11, v12, v13, v14);
  return 16;
}

uint64_t checkfilesys(char *a1, void *a2)
{
  v3 = a1;
  if (a2 && *a2 && (v4 = a2[1]) != 0)
  {
    v5 = a2[2];
    v152 = 0;
    v151 = 0;
    v150 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v142 = -1;
    if (v5)
    {
      v6 = 1;
      v4("Check device: Checking parameters", 1, 3, &v152);
      if (!v3)
      {
LABEL_16:
        v15 = 0;
        LOBYTE(v16) = 0;
        v17 = 8;
        v18 = 1;
LABEL_17:
        v19 = 1;
        goto LABEL_58;
      }
    }

    else
    {
      v6 = 0;
      if (!a1)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = 0;
    v152 = 0;
    v151 = 0;
    v150 = 0;
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v142 = -1;
    if (!a1)
    {
      goto LABEL_16;
    }
  }

  v7 = fsck_fd();
  if ((v7 & 0x80000000) == 0)
  {
    v8 = fsck_fd();
    v142 = v8;
    goto LABEL_26;
  }

  if (!strncmp(v3, "/dev/disk", 9uLL))
  {
    if (snprintf(__str, 0x40uLL, "/dev/r%s", v3 + 5) <= 0x3F)
    {
      v20 = a2[7];
      if (v20)
      {
        asprintf(&v151, "%s/shadow-r%s", v20, v3 + 5);
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (strncmp(v3, "disk", 4uLL))
    {
      if (!strncmp(v3, "/dev/fd/", 8uLL))
      {
        __endptr[0] = 0;
        v9 = strtol(v3 + 8, __endptr, 10);
        v142 = v9;
        if (*__endptr[0])
        {
          *v133 = fsck_ctx;
          *&v134 = qword_100059E30;
          fsck_print(v133, 2, "Invalid file descriptor path: %s", v10, v11, v12, v13, v14, v3);
          goto LABEL_16;
        }

        if (a2[7])
        {
          asprintf(&v151, "%s/shadow-%d", a2[7], v9);
        }
      }

      goto LABEL_25;
    }

    if (snprintf(__str, 0x40uLL, "/dev/r%s", v3) <= 0x3F)
    {
      v21 = a2[7];
      if (v21)
      {
        asprintf(&v151, "%s/shadow-r%s", v21, v3);
      }

LABEL_24:
      v3 = __str;
    }
  }

LABEL_25:
  v8 = v142;
LABEL_26:
  v19 = v7 >> 31;
  v22 = ++v152;
  if ((v8 & 0x80000000) == 0)
  {
    if (!a2[3])
    {
      a2[3] = &v142;
    }

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    *v133 = 0u;
    if ((a2[6])())
    {
      v23 = __error();
      strerror(*v23);
      *__endptr = fsck_ctx;
      v132 = qword_100059E30;
      fsck_print(__endptr, 2, "%s (%s)\n", v24, v25, v26, v27, v28, "Cannot stat");
      v15 = 0;
LABEL_57:
      LOBYTE(v16) = 0;
      v17 = 8;
      v18 = 1;
      goto LABEL_58;
    }

    v22 = v152;
  }

  v152 = v22 + 1;
  v29 = fsck_alwaysno() || fsck_quick();
  fsck_set_rdonly(v29);
  if (!fsck_preen())
  {
    *v133 = fsck_ctx;
    *&v134 = qword_100059E30;
    fsck_print(v133, 6, "** %s", v30, v31, v32, v33, v34, v3);
  }

  ++v152;
  if (v6)
  {
    (a2[2])("Check device: Checking parameters", *a2);
    v152 = 0;
    v15 = 1;
    (a2[1])("Check device: open file", 1, 3, &v152, *a2);
  }

  else
  {
    v15 = 0;
  }

  if ((v142 & 0x80000000) == 0)
  {
    ++v152;
    goto LABEL_52;
  }

  if (a2[3])
  {
    ++v152;
  }

  else
  {
    if (fsck_rdonly())
    {
      v41 = open(v3, 0, 0);
    }

    else
    {
      v41 = open(v3, 34, 0);
    }

    v142 = v41;
    ++v152;
    v19 = 1;
    if ((v41 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  if (!a2[3] && !fsck_rdonly())
  {
    v127 = 0;
    v142 = open(v3, 0);
    if (v142 < 0)
    {
      if (fsck_preen())
      {
LABEL_174:
        v19 = 1;
        fsck_set_rdonly(1);
        goto LABEL_54;
      }

      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      v40 = "\n";
    }

    else
    {
      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      v40 = "Warning: (NO WRITE)\n";
    }

    fsck_print(v133, 6, v40, v35, v36, v37, v38, v39, 0);
    goto LABEL_174;
  }

LABEL_52:
  if (!fsck_preen())
  {
    *v133 = fsck_ctx;
    *&v134 = qword_100059E30;
    fsck_print(v133, 6, "\n", v42, v43, v44, v45, v46, v127);
  }

LABEL_54:
  ++v152;
  v47 = a2[3];
  if (!v47 && v142 < 0)
  {
    v48 = __error();
    strerror(*v48);
    *v133 = fsck_ctx;
    *&v134 = qword_100059E30;
    fsck_print(v133, 2, "%s (%s)\n", v49, v50, v51, v52, v53, "Can't open\n");
    goto LABEL_57;
  }

  if (!v47)
  {
    a2[3] = &v142;
  }

  if (v151)
  {
    v63 = open(v151, 3586);
    *(a2 + 16) = v63;
    if (v63 < 0)
    {
      if (*__error() == 17)
      {
        v64 = 1;
        while (1)
        {
          v65 = *(a2 + 16);
          if (v65 != -1)
          {
            break;
          }

          v133[0] = 0;
          v66 = v64 + 1;
          asprintf(v133, "%s-%d", v151, v64);
          *(a2 + 16) = open(v133[0], 3586);
          free(v133[0]);
          v64 = v66;
          if (v66 == 200)
          {
            goto LABEL_88;
          }
        }
      }

      else
      {
LABEL_88:
        v65 = *(a2 + 16);
      }

      if (v65 < 0)
      {
        v67 = v151;
        v68 = *__error();
        *v133 = fsck_ctx;
        *&v134 = qword_100059E30;
        fsck_print(v133, 3, "Failed to open shadow file at %s (%d)\n", v69, v70, v71, v72, v73, v67);
      }
    }
  }

  ++v152;
  if (v6)
  {
    (a2[2])(off_1000505B0[v15], *a2);
    v152 = 0;
    (a2[1])(off_1000505B0[++v15], 2, 1, &v152, *a2);
  }

  v74 = readboot();
  if ((v74 & 0x10) != 0)
  {
    if (v19)
    {
      close(v142);
      v17 = 201;
      v18 = 1;
      v19 = 1;
    }

    else
    {
      v17 = 201;
      v18 = 1;
    }

    LOBYTE(v16) = v74;
    goto LABEL_58;
  }

  ++v152;
  if (v6)
  {
    (a2[2])(off_1000505B0[v15], *a2);
    v152 = 0;
    if (fsck_quick())
    {
      (a2[1])(off_1000505B0[++v15], 19, 1, &v152, *a2);
LABEL_100:
      if (HIDWORD(v147) != 4095)
      {
        if (isdirty(&v143, DWORD2(v147) & ~(SDWORD2(v147) >> 31), a2))
        {
          *v133 = fsck_ctx;
          *&v134 = qword_100059E30;
          fsck_print(v133, 6, "Warning: FILESYSTEM DIRTY; SKIPPING CHECKS\n", v122, v123, v124, v125, v126, v127);
          v17 = 200;
        }

        else
        {
          *v133 = fsck_ctx;
          *&v134 = qword_100059E30;
          fsck_print(v133, 6, "Warning: FILESYSTEM CLEAN; SKIPPING CHECKS\n", v122, v123, v124, v125, v126, v127);
          v17 = 0;
        }

        if (v19)
        {
          close(v142);
        }

        if (!v6)
        {
          LOBYTE(v16) = v74;
          goto LABEL_67;
        }

        (a2[2])(off_1000505B0[v15], *a2);
        v15 += 2;
        v152 = 0;
        v18 = 1;
        LOBYTE(v16) = v74;
        goto LABEL_59;
      }

      fsck_set_rdonly(1);
      fsck_set_alwaysno(1);
      fsck_set_alwaysyes(0);
      fsck_set_quick(1);
      if (v6)
      {
        (a2[2])(off_1000505B0[v15], *a2);
        v152 = 0;
        ++v15;
      }

      goto LABEL_107;
    }

    ++v15;
  }

  else if (fsck_quick())
  {
    goto LABEL_100;
  }

  ++v15;
LABEL_107:
  v18 = 1;
  v129 = 3;
  v75 = 1;
  v130 = 3;
  while (1)
  {
    if (v6)
    {
      if (fsck_quick())
      {
        v76 = 58;
      }

      else
      {
        v76 = 77;
      }

      (a2[1])(off_1000505B0[v15], v76, 6, &v152, *a2);
    }

    DWORD2(v149) = 0;
    v150 = 0;
    if (!fsck_preen() && !fsck_quiet())
    {
      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      fsck_print(v133, 6, "** Phase 1 - Preparing FAT\n", v77, v78, v79, v80, v81, v127);
    }

    ++v152;
    v82 = fat_init(&v143, a2);
    v16 = v82 | v74;
    if ((v82 & 0x10) != 0)
    {
      break;
    }

    ++v152;
    if (!fsck_preen() && !fsck_quiet())
    {
      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      fsck_print(v133, 6, "** Phase 2 - Checking Directories\n", v83, v84, v85, v86, v87, v127);
    }

    v88 = resetDosDirSection(&v143, a2);
    v16 |= v88;
    if ((v88 & 0x10) != 0)
    {
      v18 = 0;
      v17 = 203;
      goto LABEL_58;
    }

    ++v152;
    v89 = v142;
    v90 = fsck_rdonly();
    v95 = handleDirTree(v89, &v143, v90, a2, v91, v92, v93, v94);
    v16 |= v95;
    if ((v95 & 0x10) != 0)
    {
      v18 = 0;
      v17 = 204;
      goto LABEL_58;
    }

    if (!fsck_preen() && !fsck_quiet())
    {
      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      fsck_print(v133, 6, "** Phase 3 - Checking for Orphan Clusters\n", v98, v99, v100, v101, v102, v127);
    }

    ++v152;
    v16 |= fat_free_unused(a2, v96, v97, v98, v99, v100, v101, v102);
    if ((v16 & 0x10) != 0)
    {
      v18 = 0;
      v17 = 205;
      goto LABEL_58;
    }

    if (fsck_quick())
    {
      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      if (v16)
      {
        v108 = "FILESYSTEM DIRTY\n";
      }

      else
      {
        v108 = "FILESYSTEM CLEAN\n";
      }

      fsck_print(v133, 6, v108, v103, v104, v105, v106, v107, v127);
    }

    *v133 = fsck_ctx;
    *&v134 = qword_100059E30;
    if (v150)
    {
      fsck_print(v133, 6, "Warning: %d files, %lld KiB free (%d clusters), %lld KiB bad (%d clusters)\n", v103, v104, v105, v106, v107, DWORD2(v149));
    }

    else
    {
      fsck_print(v133, 6, "Warning: %d files, %lld KiB free (%d clusters)\n", v103, v104, v105, v106, v107, DWORD2(v149));
    }

    if (v16 && (v16 & 0x28) == 0x20)
    {
      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      if (!fsck_ask(v133, 1, "MARK FILE SYSTEM CLEAN", v109, v110, v111, v112, v113, v127))
      {
        v16 &= 0xFFFFFFC7;
      }

      *v133 = fsck_ctx;
      *&v134 = qword_100059E30;
      if ((v16 & 0x20) != 0)
      {
        fsck_print(v133, 6, "Warning: MARKING FILE SYSTEM CLEAN\n", v114, v115, v116, v117, v118, v128);
        v16 |= fat_mark_clean(a2);
      }

      else
      {
        fsck_print(v133, 6, "Warning: \n***** FILE SYSTEM IS LEFT MARKED AS DIRTY *****\n", v114, v115, v116, v117, v118, v128);
      }
    }

    ++v152;
    v119 = fat_flush(a2);
    ++v152;
    v16 |= v119;
    if (v16)
    {
      if (fsck_rdonly())
      {
        v18 = 0;
        v17 = 206;
        goto LABEL_58;
      }

      if ((v16 & 0x10) != 0)
      {
        v18 = 0;
        v74 = 0;
        v120 = __OFSUB__(v75--, 1);
        if (!((v75 < 0) ^ v120 | (v75 == 0)))
        {
          continue;
        }
      }

      if ((v16 & 8) != 0)
      {
        v18 = 0;
        v74 = 0;
        v121 = v130-- <= 1;
        if (!v121)
        {
          continue;
        }
      }

      if ((v16 & 0x40) != 0)
      {
        v18 = 0;
        v74 = 0;
        v121 = v129-- <= 1;
        if (!v121)
        {
          continue;
        }
      }
    }

    v18 = 0;
    if ((v16 & 0x18) != 0)
    {
      v17 = 207;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_58;
  }

  if (v19)
  {
    close(v142);
    v17 = 202;
    goto LABEL_17;
  }

  v17 = 202;
LABEL_58:
  if (v6)
  {
LABEL_59:
    if (!fsck_quick() || HIDWORD(v147) == 4095)
    {
      v54 = off_100050580;
      if (!v17)
      {
        v54 = off_1000505B0;
      }

      (a2[2])(v54[v15++], *a2);
    }

    v152 = 0;
    (a2[1])(off_1000505B0[v15], 19, 1, &v152, *a2);
  }

  if ((v18 & 1) == 0)
  {
    finishDosDirSection();
  }

LABEL_67:
  ++v152;
  fat_uninit();
  freeUseMap();
  if (v19)
  {
    close(v142);
  }

  v60 = a2[7];
  if (v60)
  {
    free(v60);
  }

  if (v151)
  {
    free(v151);
  }

  v61 = *(a2 + 16);
  if (v61 >= 1)
  {
    close(v61);
  }

  if ((v16 & 6) != 0)
  {
    *v133 = fsck_ctx;
    *&v134 = qword_100059E30;
    fsck_print(v133, 6, "Warning: \n***** FILE SYSTEM WAS MODIFIED *****\n", v55, v56, v57, v58, v59, v127);
  }

  if (v6)
  {
    (a2[2])(off_1000505B0[v15], *a2);
  }

  return v17;
}

uint64_t CONV_UTF8ToUnistr255(unsigned __int8 *a1, uint64_t a2, _WORD *a3, int a4)
{
  v5 = a3 + 1;
  if (!a2)
  {
    result = 0;
    LODWORD(v10) = a3 + 2;
    goto LABEL_95;
  }

  v6 = a2;
  v8 = 0;
  v9 = 2;
  v10 = a3 + 1;
  do
  {
    v11 = a1;
    while (1)
    {
      v13 = *a1++;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_91;
      }

      if (v9 > 511)
      {
LABEL_94:
        result = 63;
        goto LABEL_95;
      }

      --v6;
      if ((v12 & 0x80) == 0)
      {
        v42 = a4;
        v43 = v8;
        if ((a4 & 0x20) == 0 && v12 != 47)
        {
          goto LABEL_45;
        }

        if (v6)
        {
          goto LABEL_36;
        }

        if (v12 == 32)
        {
          v27 = -4056;
        }

        else
        {
          if (v12 != 46)
          {
LABEL_36:
            if (v12 > 0x1F)
            {
              v27 = word_10003BC46[v12];
            }

            else
            {
              v27 = v12 | 0xF000;
            }

            goto LABEL_44;
          }

          v27 = -4055;
        }

LABEL_44:
        LOWORD(v12) = v27;
        goto LABEL_45;
      }

      v14 = utf_extrabytes[v12 >> 3];
      if ((v14 & 0x80000000) != 0 || v6 < v14)
      {
        goto LABEL_27;
      }

      v6 -= v14;
      if (v14 == 1)
      {
        v24 = *a1;
        if ((v24 & 0xC0) == 0x80)
        {
          v23 = v24 + (v12 << 6) - 12416;
          if (v23 >= 0x80)
          {
            v28 = 2;
            goto LABEL_53;
          }
        }

        goto LABEL_27;
      }

      if (utf_extrabytes[v12 >> 3] == 2)
      {
        break;
      }

      if (utf_extrabytes[v12 >> 3] != 3)
      {
        LODWORD(v10) = a3 + v9;
        result = 22;
        goto LABEL_95;
      }

      v15 = *a1;
      if ((v15 & 0xC0) == 0x80)
      {
        v16 = v11[2];
        if ((v16 & 0xC0) == 0x80)
        {
          v17 = v11[3];
          if ((v17 & 0xC0) == 0x80)
          {
            v18 = v17 + (((v15 << 6) + (v12 << 12) + v16) << 6) - 63512704;
            if (!(v18 >> 20))
            {
              *v10 = (v18 >> 10) | 0xD800;
              v10 = (v5 + v9);
              if (v9 >= 510)
              {
                goto LABEL_94;
              }

              a1 = v11 + 4;
              *v10 = v18 & 0x3FF | 0xDC00;
              v19 = 4;
              goto LABEL_31;
            }
          }
        }
      }

LABEL_27:
      v10 = (a3 + v9);
      if (v9 > 507)
      {
        goto LABEL_94;
      }

      v25 = hexdigits[v12 >> 4];
      v26 = hexdigits[v12 & 0xF];
      *v10 = 37;
      if (v14 <= 0)
      {
        v14 = 0;
      }

      v6 += v14;
      v10[1] = v25;
      v10[2] = v26;
      v19 = 6;
LABEL_31:
      v9 += v19;
      v10 = (a3 + v9);
      v11 = a1;
      if (!v6)
      {
        goto LABEL_91;
      }
    }

    v20 = *a1;
    if ((v20 & 0xC0) != 0x80)
    {
      goto LABEL_27;
    }

    v21 = v11[2];
    if ((v21 & 0xC0) != 0x80)
    {
      goto LABEL_27;
    }

    v22 = (v20 << 6) + (v12 << 12) + v21;
    v23 = v22 - 925824;
    if ((v22 - 925824) < 0x800 || v23 >> 11 >= 0x1B && (v23 < 0xE000 || (v22 & 0x3FFFFE) == 0xF207E))
    {
      goto LABEL_27;
    }

    v28 = 3;
LABEL_53:
    v42 = a4;
    v43 = v8;
    if (v9 == 2)
    {
      goto LABEL_80;
    }

    v41 = v28;
    if (!sub_100002B28(v23))
    {
      v28 = v41;
      goto LABEL_80;
    }

    v29 = *(a3 + v9 - 2);
    if ((v23 - 4449) > 0x61u)
    {
      if ((v23 - 12443) < 0xD265u)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if ((v23 >> 1) <= 0x8BAu && (v29 - 4352) <= 0x12u)
      {
        v30 = 588 * v29 + 28 * v23 - 18076;
LABEL_77:
        v28 = v41;
        goto LABEL_78;
      }

      if ((v23 >> 3) >= 0x235u && ((v29 + 21504) >> 2) <= 0xAE8u)
      {
        HIDWORD(v34) = -1840706560 - 1227133513 * v29;
        LODWORD(v34) = HIDWORD(v34);
        if ((v34 >> 2) <= 0x9249249)
        {
          v30 = v23 + v29 - 4519;
          goto LABEL_77;
        }

LABEL_76:
        v30 = 0;
        goto LABEL_77;
      }
    }

    v31 = &unk_10003C0C8;
    v32 = &unk_10003C268;
    while (2)
    {
      v33 = &v31[8 * ((v32 - v31) >> 4)];
      if (*v33 > v23)
      {
        v32 = v33 - 2;
        goto LABEL_66;
      }

      if (*v33 < v23)
      {
        v31 = v33 + 2;
LABEL_66:
        if (v31 > v32)
        {
          goto LABEL_76;
        }

        continue;
      }

      break;
    }

    v35 = v33[1];
    if (!v35)
    {
      goto LABEL_76;
    }

    v36 = &unk_10003C270 + 4 * v35;
    v28 = v41;
    if (*v36 <= v29)
    {
      v37 = &v36[4 * HIWORD(v35) - 4];
      if (*v37 >= v29)
      {
        while (1)
        {
          v38 = &v36[4 * ((v37 - v36) >> 3)];
          v39 = *v38;
          if (v39 <= v29)
          {
            if (v39 >= v29)
            {
              v30 = v38[1];
              goto LABEL_78;
            }

            v36 = (v38 + 2);
          }

          else
          {
            v37 = v38 - 2;
          }

          v30 = 0;
          if (v36 > v37)
          {
            goto LABEL_78;
          }
        }
      }
    }

    v30 = 0;
LABEL_78:
    if (v30)
    {
      v9 -= 2;
      v23 = v30;
    }

LABEL_80:
    a1 = &v11[v28];
    if (v23 == 9216)
    {
      LOWORD(v12) = 0;
    }

    else
    {
      LOWORD(v12) = v23;
    }

LABEL_45:
    if (sub_100002B28(v12))
    {
      v8 = v43 + 1;
    }

    else
    {
      if (v43 >= 2)
      {
        sub_100002B80((a3 + v9 + -2 * v43), v43);
      }

      v8 = 0;
    }

    *(a3 + v9) = v12;
    v9 += 2;
    v10 = (a3 + v9);
    a4 = v42;
  }

  while (v6);
LABEL_91:
  if (v8 >= 2)
  {
    sub_100002B80(&v10[-v8], v8);
  }

  result = 0;
LABEL_95:
  *a3 = (v10 - v5) >> 1;
  return result;
}

uint64_t sub_100002B28(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = byte_10003BD46[a1 >> 8];
  if (!byte_10003BD46[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (byte_10003BD46[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

_WORD *sub_100002B80(_WORD *result, unsigned int a2)
{
  do
  {
    if (byte_10003D0C4[*result >> 8])
    {
      v2 = byte_10003D0C4[256 * byte_10003D0C4[*result >> 8] + *result];
    }

    else
    {
      v2 = 0;
    }

    if (a2 < 2)
    {
      break;
    }

    v3 = 0;
    v4 = result + 1;
    do
    {
      v5 = *v4;
      v6 = byte_10003D0C4[v5 >> 8];
      if (byte_10003D0C4[v5 >> 8])
      {
        LODWORD(v6) = byte_10003D0C4[256 * v6 + *v4];
      }

      if (v2 > v6)
      {
        v7 = *(v4 - 1);
        *(v4 - 1) = v5;
        *v4 = v7;
        v3 = 1;
      }

      ++v4;
      v2 = v6;
    }

    while (v4 < &result[a2]);
  }

  while (v3);
  return result;
}

unint64_t CONV_Unistr255ToUTF8(unint64_t result, _BYTE *a2)
{
  v3 = *result;
  if (*result)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (result + 2);
    v8 = a2;
    while (1)
    {
      --v3;
      if (v4 < 1)
      {
        v10 = *v7++;
        result = v10;
        if (v10 >= 0xC0uLL)
        {
          v11 = byte_10003E5C4[result >> 8];
          if (byte_10003E5C4[result >> 8])
          {
            if (v11 == 255 || ((byte_10003E5C4[32 * v11 + 224 + (result >> 3)] >> (result & 7)) & 1) != 0)
            {
              v12 = result + 21504;
              if ((result + 21504) > 0x2BA4u)
              {
                v4 = sub_1000032A0(result, &v21) - 1;
                result = v21;
              }

              else
              {
                v13 = (result + 21504) % 0x1Cu;
                result = ((28533 * (result + 21504)) >> 24) | 0x1100;
                v21 = ((28533 * v12) >> 24) | 0x1100;
                v22[0] = v12 % 0x24Cu / 0x1C + 4449;
                if (v12 % 0x1Cu)
                {
                  v22[1] = v13 + 4519;
                  v4 = 2;
                }

                else
                {
                  v4 = 1;
                }
              }

              v3 += v4;
              v5 = v22;
            }
          }
        }
      }

      else
      {
        v9 = *v5++;
        result = v9;
        --v4;
      }

      if (result)
      {
        v14 = result;
      }

      else
      {
        v14 = 9216;
      }

      if (result == 47)
      {
        v14 = 95;
      }

      if (v14 > 0x7F)
      {
        if (v14 > 0x7FF)
        {
          if (v14 > 0xFFFD)
          {
            goto LABEL_46;
          }

          if (v14 >> 10 != 54 || v3 == 0)
          {
            if ((v14 & 0xFFC0) != 0xF000 || (v14 & 0x3F) >= 0x2B)
            {
              v19 = v14 >> 6;
              v20 = (v14 >> 12) | 0xFFFFFFE0;
LABEL_41:
              v8 = &a2[v6];
              if (v6 > 762)
              {
                goto LABEL_46;
              }

              *v8 = v20;
              v8[1] = v19 & 0x3F | 0x80;
              v6 += 3;
              v8[2] = v14 & 0x3F | 0x80;
              goto LABEL_43;
            }

            if (v6 > 764)
            {
              goto LABEL_46;
            }

            ++v6;
            *v8 = byte_1000406EC[v14 & 0x3F];
          }

          else
          {
            v16 = *v7;
            if ((v16 & 0xFC00) != 0xDC00)
            {
              v19 = v14 >> 6;
              LOBYTE(v20) = -19;
              goto LABEL_41;
            }

            if (v6 >= 762)
            {
              v8 = &a2[v6];
              goto LABEL_46;
            }

            v17 = v16 + (v14 << 10) - 56613888;
            --v3;
            ++v7;
            v18 = &a2[v6];
            *v8 = (v17 >> 18) | 0xF0;
            v18[1] = (v17 >> 12) & 0x3F | 0x80;
            v18[2] = (v17 >> 6) & 0x3F | 0x80;
            v6 += 4;
            v8[3] = v16 & 0x3F | 0x80;
          }
        }

        else
        {
          if (v6 > 763)
          {
            goto LABEL_46;
          }

          *v8 = (v14 >> 6) | 0xC0;
          v6 += 2;
          v8[1] = v14 & 0x3F | 0x80;
        }
      }

      else
      {
        if (v6 > 764)
        {
          goto LABEL_46;
        }

        ++v6;
        *v8 = v14;
      }

LABEL_43:
      v8 = &a2[v6];
      if (!v3)
      {
        goto LABEL_46;
      }
    }
  }

  v8 = a2;
LABEL_46:
  *v8 = 0;
  return result;
}

_WORD *CONV_Unistr255ToLowerCase(_WORD *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result + 1;
    do
    {
      v3 = *v2;
      if (v3 <= 0xFF)
      {
        *v2 = byte_100059B94[v3];
      }

      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t CONV_UTF8ToLowerCase(char *a1, _BYTE *a2)
{
  result = 22;
  if (a1 && a2)
  {
    v5 = malloc_type_malloc(0x200uLL, 0x10000407EBBDD04uLL);
    if (v5)
    {
      v6 = v5;
      v7 = strlen(a1);
      CONV_UTF8ToUnistr255(a1, v7, v6, 32);
      v8 = *v6;
      if (*v6)
      {
        v9 = v6 + 1;
        do
        {
          v10 = *v9;
          if (v10 <= 0xFF)
          {
            *v9 = byte_100059B94[v10];
          }

          ++v9;
          --v8;
        }

        while (v8);
      }

      CONV_Unistr255ToUTF8(v6, a2);
      free(v6);
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

_WORD *CONV_ConvertToFSM(_WORD *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = (v1 - 1);
    v3 = result + 1;
    v4 = result + 1;
    for (i = v2; !i; --i)
    {
      v7 = v3[v2];
      if (v7 == 46)
      {
        v3[v2] = -4055;
      }

      else
      {
        if (v7 != 32)
        {
          break;
        }

        v3[v2] = -4056;
      }

LABEL_10:
      ++v4;
      if (!--v1)
      {
        return result;
      }
    }

    v6 = *v4;
    if (v6 <= 0x7F)
    {
      *v4 = word_10003BC46[v6];
    }

    goto LABEL_10;
  }

  return result;
}

char *CONV_DuplicateName(char *result, char *__s)
{
  *result = 0;
  if (__s)
  {
    v3 = result;
    v4 = strlen(__s);
    result = malloc_type_malloc((v4 + 1), 0xCB359747uLL);
    *v3 = result;
    if (result)
    {

      return strcpy(result, __s);
    }
  }

  return result;
}

uint64_t CONV_LabelUTF8ToUTF16LocalEncoding(char *a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  v4 = strnlen(a1, 0x40uLL);
  if (v4 > 0x3F)
  {
    return 22;
  }

  memset(v14, 0, sizeof(v14));
  result = CONV_UTF8ToUnistr255(a1, v4, v14, 32);
  if (!result)
  {
    v6 = LOWORD(v14[0]);
    if (LOWORD(v14[0]) > 0xBu)
    {
      return 22;
    }

    memset(a2, 32, 11);
    if (v6)
    {
      v7 = 2;
      v8 = v6;
      do
      {
        v9 = *(v14 + v7);
        if (v9 <= 0xFF)
        {
          *(v14 + v7) = byte_100059B94[v9];
        }

        v7 += 2;
        --v8;
      }

      while (v8);
      v10 = 0;
      do
      {
        v11 = *(v14 + v10 + 1);
        if (v11 == 32)
        {
          v12 = 32;
        }

        else
        {
          v13 = msdosfs_unicode2dos(v11);
          if (v13 < 3)
          {
            return 22;
          }

          v12 = v13;
          LODWORD(v6) = LOWORD(v14[0]);
        }

        result = 0;
        *(a2 + v10++) = v12;
      }

      while (v10 < v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000032A0(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &unk_10003E904;
  v4 = &unk_10003F828;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &unk_10003F82C + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&unk_10003F82C + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = sub_1000032A0(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}

uint64_t resetDosDirSection(uint64_t a1, uint64_t a2)
{
  v4 = 32 * *(a1 + 16);
  v5 = *a1 * *(a1 + 4);
  if (v4 <= v5)
  {
    v4 = *a1 * *(a1 + 4);
  }

  qword_100059E88 = malloc_type_malloc(v4, 0x670E7BCAuLL);
  if (!qword_100059E88)
  {
    goto LABEL_18;
  }

  qword_100059E90 = malloc_type_malloc(v5, 0x2A6F26ADuLL);
  if (!qword_100059E90)
  {
    goto LABEL_18;
  }

  v11 = qword_100059E98;
  if (qword_100059E98)
  {
    qword_100059E98 = *(qword_100059E98 + 8);
    goto LABEL_8;
  }

  v11 = malloc_type_malloc(0x148uLL, 0x1020040DB0A7303uLL);
  if (!v11)
  {
    rootDir = 0;
LABEL_18:
    v21 = __error();
    strerror(*v21);
    v32 = fsck_ctx;
    v33 = qword_100059E30;
    fsck_print(&v32, 2, "%s (%s)\n", v22, v23, v24, v25, v26, "No space for directory");
    return 16;
  }

LABEL_8:
  rootDir = v11;
  *v11 = 0u;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[14] = 0u;
  v11[15] = 0u;
  v11[16] = 0u;
  v11[17] = 0u;
  v11[18] = 0u;
  v11[19] = 0u;
  *(v11 + 40) = 0;
  if ((*(a1 + 68) & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 56);
  if (v13 < 2 || v13 >= *(a1 + 80))
  {
    v32 = fsck_ctx;
    v33 = qword_100059E30;
    fsck_print(&v32, 2, "Root directory starts with cluster out of range(%u)\n", v6, v7, v8, v9, v10, v13);
    return 16;
  }

  v14 = fat_get(v13, a2);
  v20 = 0;
  if ((v14 & 0x80000000) != 0)
  {
    if (v14 + 10 >= 2)
    {
      if (v14 != -286331154)
      {
        goto LABEL_31;
      }

      return 16;
    }

    goto LABEL_23;
  }

  if (v14 == 1)
  {
LABEL_23:
    if (v14 < 0xFFFFFFF6)
    {
      goto LABEL_26;
    }

    v28 = rsrvdcltype(v14);
    v32 = fsck_ctx;
    v33 = qword_100059E30;
    v31 = v28;
    v27 = "Warning: Root directory starts with cluster marked %s\n";
LABEL_25:
    fsck_print(&v32, 6, v27, v15, v16, v17, v18, v19, v31);
LABEL_26:
    v32 = fsck_ctx;
    v33 = qword_100059E30;
    if (fsck_ask(&v32, 1, "Fix", v15, v16, v17, v18, v19, v31))
    {
      v29 = fat_set(*(a1 + 56), 0xFFFFFFFFLL, a2);
      if (v29)
      {
        v20 = v29;
      }

      else
      {
        v20 = 4;
      }

      markFree(*(a1 + 56));
      goto LABEL_31;
    }

    return 16;
  }

  if (!v14)
  {
    v32 = fsck_ctx;
    v33 = qword_100059E30;
    v27 = "Warning: Root directory starts with free cluster\n";
    goto LABEL_25;
  }

LABEL_31:
  v30 = rootDir;
  *(rootDir + 300) = *(a1 + 56);
  return sub_100003648(a1, v30, a2) | v20;
}

uint64_t sub_100003648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 300);
  if (v6 < 2)
  {
    v8 = 0;
    v7 = 0;
LABEL_12:
    if (v6 != 0 && v6 < 0xFFFFFFF6)
    {
      if (v6 < 2 || v6 >= *(a1 + 80))
      {
        v31 = sub_1000056B0(a2);
        v32 = *(a2 + 300);
        v39 = fsck_ctx;
        v40 = qword_100059E30;
        fsck_print(&v39, 6, "Warning: %s: Cluster chain starting at %u continues with cluster out of range (%u)\n", v33, v34, v35, v36, v37, v31);
      }

      else
      {
        v24 = sub_1000056B0(a2);
        v25 = *(a2 + 300);
        v39 = fsck_ctx;
        v40 = qword_100059E30;
        fsck_print(&v39, 6, "Warning: %s: Cluster chain starting at %u is cross-linked at cluster %u\n", v26, v27, v28, v29, v30, v24);
      }
    }

    else
    {
      v12 = sub_1000056B0(a2);
      v13 = *(a2 + 300);
      rsrvdcltype(v6);
      v39 = fsck_ctx;
      v40 = qword_100059E30;
      fsck_print(&v39, 6, "Warning: %s: Cluster chain starting at %u ends with cluster marked %s\n", v14, v15, v16, v17, v18, v12);
    }

    v39 = fsck_ctx;
    v40 = qword_100059E30;
    LODWORD(result) = fsck_ask(&v39, 1, "Truncate", v19, v20, v21, v22, v23, v38);
    if (result)
    {
      LODWORD(result) = fat_set(v8, 0xFFFFFFFFLL, a3);
      if (result)
      {
        LODWORD(v9) = -286331154;
      }

      else
      {
        LODWORD(v9) = -1;
      }
    }

    else
    {
      LODWORD(v9) = v6;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = v6;
      if (v6 >= *(a1 + 80) || isUsed(v6))
      {
        break;
      }

      v10 = fat_get(v6, a3);
      if ((v10 & 0xFFFFFFFE) == 0xFFFFFFF6)
      {
        LODWORD(v6) = v10;
        goto LABEL_12;
      }

      markUsed(v6);
      ++v7;
      v6 = fat_get(v6, a3);
      v8 = v9;
      if (v6 <= 1)
      {
        goto LABEL_12;
      }
    }

    if (v6 <= 0xFFFFFFF7)
    {
      goto LABEL_12;
    }

    LODWORD(result) = 0;
  }

  *(a2 + 304) = v9;
  *(a2 + 312) = *(a1 + 100) * v7;
  if (v9 == -286331154)
  {
    return 16;
  }

  else
  {
    return result;
  }
}

void finishDosDirSection()
{
  v0 = pendingDirectories;
  if (pendingDirectories)
  {
    v1 = qword_10005A2A8;
    do
    {
      v2 = v1;
      v1 = v0;
      v0 = *(v0 + 8);
      *(v1 + 8) = v2;
    }

    while (v0);
    qword_10005A2A8 = v1;
  }

  pendingDirectories = 0;
  v3 = rootDir;
  if (rootDir)
  {
    v4 = qword_100059E98;
    do
    {
      v5 = v3[2];
      if (v5)
      {
        v3[2] = 0;
      }

      else
      {
        v5 = v3[1];
        if (!v5)
        {
          v5 = *v3;
        }

        v3[1] = v4;
        qword_100059E98 = v3;
        v4 = v3;
      }

      v3 = v5;
    }

    while (v5);
  }

  rootDir = 0;
  free(qword_100059E88);
  free(qword_100059E90);
  qword_100059E88 = 0;
  qword_100059E90 = 0;
}

uint64_t handleDirTree(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1000039D0(a2, rootDir, a3, a4, a5, a6, a7, a8);
  if ((v11 & 0x10) != 0)
  {
    return 16;
  }

  v16 = v11;
  while (1)
  {
    v17 = pendingDirectories;
    if (!pendingDirectories)
    {
      break;
    }

    v18 = *pendingDirectories;
    v19 = *(pendingDirectories + 8);
    *(pendingDirectories + 8) = qword_10005A2A8;
    qword_10005A2A8 = v17;
    pendingDirectories = v19;
    v16 = sub_1000039D0(a2, v18, a3, a4, v12, v13, v14, v15) | v16;
    if ((v16 & 0x10) != 0)
    {
      return 16;
    }
  }

  return v16;
}

uint64_t sub_1000039D0(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  memset(__src, 0, 328);
  v10 = *(a2 + 300);
  if (*a2 && (v10 < 2 || v10 >= a1[20]))
  {
    v336 = fsck_ctx;
    v337 = qword_100059E30;
    fsck_print(&v336, 3, "%s: Start cluster (%u) out of range; ignoring\n", a4, a5, a6, a7, a8, "readDosDirSection");
    return 0;
  }

  v11 = 0;
  v327 = 0;
  v12 = 0;
  v320 = 0;
  v334 = 0;
  v13 = 0xFFFFFFFFLL;
  v14 = 0xFFFFFFFFLL;
  v15 = -1;
  v321 = -1;
  v323 = a1;
  while (1)
  {
    v329 = v10;
    v325 = v15;
    v330 = v11;
    if ((a1[17] & 1) != 0 || *a2)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = a1;
      v19 = *a1 * v17;
      v20 = v18[24] + v17 * (v10 - 2);
    }

    else
    {
      v284 = a1;
      v19 = 32 * a1[4];
      v20 = v284[2] + v284[22] * v284[3];
      v16 = *v284;
    }

    v21 = v16 * v20;
    if ((*(v8 + 32))(*(v8 + 24), qword_100059E88, v19, v21) != v19)
    {
      v285 = __error();
      strerror(*v285);
      v336 = fsck_ctx;
      v337 = qword_100059E30;
      v291 = "Unable to read directory";
      goto LABEL_352;
    }

    v27 = *(v8 + 64);
    if (v27 >= 1 && pwrite(v27, qword_100059E88, v19, v21) != v19)
    {
      v28 = *__error();
      v336 = fsck_ctx;
      v337 = qword_100059E30;
      fsck_print(&v336, 6, "Failed to shadow at offset 0x%llx, length 0x%x (errno %d)", v29, v30, v31, v32, v33, v21);
    }

    v326 = v12;
    v34 = v19 / 32;
    v324 = v19 / 32;
    if (v19 >= 32)
    {
      v35 = 0;
      v36 = qword_100059E88;
      v313 = qword_100059E88;
      v37 = qword_100059E88;
      v322 = v21;
      while (1)
      {
        v38 = *(a2 + 320);
        if ((v38 & 2) != 0)
        {
          goto LABEL_75;
        }

        if (*v37 != 229)
        {
          if (*v37)
          {
            if ((v38 & 1) == 0)
            {
              goto LABEL_62;
            }

            v39 = sub_1000056B0(a2);
            v336 = fsck_ctx;
            v337 = qword_100059E30;
            fsck_print(&v336, 6, "Warning: %s has entries after end of directory\n", v40, v41, v42, v43, v44, v39);
            v336 = fsck_ctx;
            v337 = qword_100059E30;
            if (fsck_ask(&v336, 1, "Truncate", v45, v46, v47, v48, v49, v303))
            {
              v50 = *(a2 + 320) | 2;
              *(a2 + 320) = v50;
            }

            else
            {
              v336 = fsck_ctx;
              v337 = qword_100059E30;
              v51 = fsck_ask(&v336, 0, "Extend", v22, v23, v24, v25, v26, v302);
              v50 = *(a2 + 320);
              if (v51)
              {
                *(a2 + 320) = v50 & 0xFFFFFFFE;
                result = sub_100005778(v323, v325, &v326[-qword_100059E88], v329, &v37[-qword_100059E88], 1, v8);
                if (result == 16)
                {
                  return result;
                }

                if (v325 == v329)
                {
                  v53 = v326;
                }

                else
                {
                  v53 = qword_100059E88;
                }

                v14 = v14;
                if (v53 < v37)
                {
                  v54 = 0;
                  v55 = v313 + 32 * v35;
                  if (v55 <= v53 + 32)
                  {
                    v55 = v53 + 32;
                  }

                  v56 = vdupq_n_s64((v55 + ~v53) >> 5);
                  if (v36 <= v53 + 32)
                  {
                    v57 = v53 + 32;
                  }

                  else
                  {
                    v57 = v36;
                  }

                  v58 = (((~v53 + v57) >> 5) + 16) & 0xFFFFFFFFFFFFFF0;
                  v59 = (v53 + 256);
                  do
                  {
                    v60 = vdupq_n_s64(v54);
                    v61 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040790)));
                    if (vuzp1_s8(vuzp1_s16(v61, *v56.i8), *v56.i8).u8[0])
                    {
                      *(v59 - 256) = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(v61, *&v56), *&v56).i8[1])
                    {
                      *(v59 - 224) = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040780)))), *&v56).i8[2])
                    {
                      *(v59 - 192) = -27;
                      *(v59 - 160) = -27;
                    }

                    v62 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040770)));
                    if (vuzp1_s8(*&v56, vuzp1_s16(v62, *&v56)).i32[1])
                    {
                      *(v59 - 128) = -27;
                    }

                    if (vuzp1_s8(*&v56, vuzp1_s16(v62, *&v56)).i8[5])
                    {
                      *(v59 - 96) = -27;
                    }

                    if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040760))))).i8[6])
                    {
                      *(v59 - 64) = -27;
                      *(v59 - 32) = -27;
                    }

                    v63 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040750)));
                    if (vuzp1_s8(vuzp1_s16(v63, *v56.i8), *v56.i8).u8[0])
                    {
                      *v59 = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(v63, *&v56), *&v56).i8[1])
                    {
                      v59[32] = -27;
                    }

                    if (vuzp1_s8(vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040740)))), *&v56).i8[2])
                    {
                      v59[64] = -27;
                      v59[96] = -27;
                    }

                    v64 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040730)));
                    if (vuzp1_s8(*&v56, vuzp1_s16(v64, *&v56)).i32[1])
                    {
                      v59[128] = -27;
                    }

                    if (vuzp1_s8(*&v56, vuzp1_s16(v64, *&v56)).i8[5])
                    {
                      v59[160] = -27;
                    }

                    if (vuzp1_s8(*&v56, vuzp1_s16(*&v56, vmovn_s64(vcgeq_u64(v56, vorrq_s8(v60, xmmword_100040720))))).i8[6])
                    {
                      v59[192] = -27;
                      v59[224] = -27;
                    }

                    v54 += 16;
                    v59 += 512;
                  }

                  while (v58 != v54);
                }

                v334 |= 0x8002u;
                v50 = *(a2 + 320);
              }
            }

            v34 = v324;
            v21 = v322;
            if ((v50 & 2) == 0)
            {
              v326 = 0;
              v334 |= 8 * (v50 & 1);
LABEL_62:
              if (v37[11] == 15)
              {
                v65 = *v37;
                if ((*v37 & 0x40) != 0)
                {
                  v73 = v327;
                  v74 = v321 != -1 && v327 == 0;
                  if (v74)
                  {
                    v73 = v330;
                  }

                  v327 = v73;
                  xmmword_10005A390 = 0u;
                  unk_10005A3A0 = 0u;
                  if (v74)
                  {
                    v14 = v13;
                  }

                  else
                  {
                    v14 = v14;
                  }

                  xmmword_10005A370 = 0uLL;
                  unk_10005A380 = 0uLL;
                  xmmword_10005A350 = 0uLL;
                  unk_10005A360 = 0uLL;
                  xmmword_10005A330 = 0uLL;
                  unk_10005A340 = 0uLL;
                  xmmword_10005A310 = 0uLL;
                  unk_10005A320 = 0uLL;
                  xmmword_10005A2F0 = 0uLL;
                  unk_10005A300 = 0uLL;
                  xmmword_10005A2D0 = 0uLL;
                  unk_10005A2E0 = 0uLL;
                  xmmword_10005A2B0 = 0uLL;
                  unk_10005A2C0 = 0uLL;
                  v321 = v37[13];
                  v330 = v37;
                  v13 = v329;
                  v65 = *v37;
                }

                else if (v321 != v37[13] || v320 != (v65 & 0x1F))
                {
                  v66 = v327;
                  if (v327)
                  {
                    v67 = v14;
                  }

                  else
                  {
                    v66 = v330;
                    v67 = v13;
                  }

                  v68 = v66 == 0;
                  if (!v66)
                  {
                    v66 = v37;
                  }

                  v327 = v66;
                  if (v68)
                  {
                    v14 = v329;
                  }

                  else
                  {
                    v14 = v67;
                  }

                  v330 = 0;
                }

                v75 = v65 & 0x1F;
                if ((v65 & 0x1F) != 0)
                {
                  v320 = v75 - 1;
                  v76 = 13 * (v75 - 1);
                  if (v75 > 0x14)
                  {
LABEL_137:
                    v93 = v76;
LABEL_138:
                    if (v93 >= 256)
                    {
                      v336 = fsck_ctx;
                      v337 = qword_100059E30;
                      fsck_print(&v336, 6, "Warning: long filename too long\n", v22, v23, v24, v25, v26, v302);
                      v101 = v327;
                      v102 = v327 == 0;
                      if (!v327)
                      {
                        v101 = v330;
                      }

                      v327 = v101;
                      if (v102)
                      {
                        v14 = v13;
                      }

                      else
                      {
                        v14 = v14;
                      }

                      v330 = 0;
                    }
                  }

                  else
                  {
                    v77 = 0;
                    v78 = &xmmword_10005A2B0 + v76 + 2;
                    while (1)
                    {
                      v79 = v76;
                      v80 = v78;
                      v81 = &v37[v77];
                      v82 = v37[v77 + 1];
                      if (!v82 && !v81[2])
                      {
                        break;
                      }

                      v83 = v77 + 1;
                      ++v76;
                      *(&xmmword_10005A2B0 + v79) = v82;
                      if (v81[2])
                      {
                        v82 = 63;
                      }

                      *(&xmmword_10005A2B0 + v79) = v82;
                      v77 += 2;
                      if (v83 <= 8)
                      {
                        v78 = v80 + 1;
                        if (v79 < 0xFF)
                        {
                          continue;
                        }
                      }

                      if ((v77 - 1) < 9 || v79 > 0xFE)
                      {
                        goto LABEL_137;
                      }

                      v84 = 0;
                      while (1)
                      {
                        v85 = v76;
                        v86 = v80;
                        v87 = &v37[v84];
                        v88 = v37[v84 + 14];
                        if (!v88 && !v87[15])
                        {
                          goto LABEL_145;
                        }

                        v89 = v84 + 14;
                        ++v76;
                        *(&xmmword_10005A2B0 + v85) = v88;
                        if (v87[15])
                        {
                          v88 = 63;
                        }

                        *(&xmmword_10005A2B0 + v85) = v88;
                        v84 += 2;
                        if (v89 <= 0x17)
                        {
                          v80 = v86 + 1;
                          if (v85 < 0xFF)
                          {
                            continue;
                          }
                        }

                        if ((v84 + 12) < 0x18 || v85 > 0xFE)
                        {
                          goto LABEL_137;
                        }

                        v90 = 0;
                        while (1)
                        {
                          v91 = &v37[v90];
                          v92 = v37[v90 + 28];
                          if (!v92 && !v91[29])
                          {
                            goto LABEL_145;
                          }

                          v93 = v76 + 1;
                          *v86 = v92;
                          if (v91[29])
                          {
                            v92 = 63;
                          }

                          *v86++ = v92;
                          if ((v90 + 28) <= 0x1D)
                          {
                            v90 += 2;
                            v94 = v76++ >= 0xFF;
                            if (!v94)
                            {
                              continue;
                            }
                          }

                          goto LABEL_138;
                        }
                      }
                    }
                  }

LABEL_145:
                  if (!*(v37 + 13))
                  {
                    goto LABEL_309;
                  }

                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  fsck_print(&v336, 6, "Warning: long filename record cluster start != 0\n", v22, v23, v24, v25, v26, v302);
                  v103 = v327;
                  v104 = v327 == 0;
                  if (!v327)
                  {
                    v103 = v330;
                  }

                  v327 = v103;
                  if (v104)
                  {
                    v14 = v329;
                  }

                  else
                  {
                    v14 = v14;
                  }
                }

                else
                {
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  fsck_print(&v336, 6, "Warning: long file name is not available\n", v22, v23, v24, v25, v26, v302);
                  v320 = 0;
                  v105 = v327;
                  v106 = v327 == 0;
                  if (!v327)
                  {
                    v105 = v330;
                  }

                  v327 = v105;
                  if (v106)
                  {
                    v14 = v13;
                  }

                  else
                  {
                    v14 = v14;
                  }
                }

                v330 = 0;
                goto LABEL_309;
              }

              v69 = 0;
              memset(__src, 0, 328);
              DWORD2(__src[18]) = v37[11];
              do
              {
                *(&__src[1] + v69 + 8) = v37[v69];
                ++v69;
              }

              while (v69 != 8);
              LOBYTE(__src[2]) = 0;
              v70 = 31;
              while (*(__src + v70) == 32)
              {
                *(__src + v70) = 0;
                v71 = v70 - 23;
                --v70;
                if (v71 <= 1)
                {
                  v72 = 0;
                  goto LABEL_85;
                }
              }

              v72 = v70 - 23;
LABEL_85:
              if (BYTE8(__src[1]) == 5)
              {
                BYTE8(__src[1]) = -27;
              }

              if ((BYTE8(__src[18]) & 8) != 0)
              {
                if (v330 | v327)
                {
                  v95 = v14;
                  if (v327)
                  {
                    v96 = v327;
                  }

                  else
                  {
                    v96 = v330;
                  }

                  v97 = v13;
                  if (v327)
                  {
                    v13 = v95;
                  }

                  else
                  {
                    v13 = v13;
                  }

                  v98 = sub_1000056B0(a2);
                  v99 = v96;
                  v14 = v95;
                  v21 = v322;
                  v100 = v13;
                  v13 = v97;
                  v330 = 0;
                  v327 = 0;
                  v334 |= sub_100005BDC(v323, v99, v37, v100, v329, v329, v98, 2, 0, v8);
                  goto LABEL_309;
                }

LABEL_308:
                v330 = 0;
                v327 = 0;
LABEL_309:
                v34 = v324;
                goto LABEL_76;
              }

              if (v37[8] != 32)
              {
                *(&__src[1] + v72++ + 8) = 46;
              }

              v107 = v327;
              v108 = v330;
              v109 = v72;
              v110 = v72 + 1;
              v111 = 24;
              v112 = __src + v72;
              do
              {
                v113 = v110;
                v112[v111] = v37[v111 - 16];
                ++v111;
                ++v110;
              }

              while (v111 != 27);
              *(&__src[1] + v109 + 11) = 0;
              do
              {
                if (*(&__src[1] + --v113 + 8) != 32)
                {
                  break;
                }

                *(&__src[1] + v113 + 8) = 0;
              }

              while (v113 > 0);
              if (v330)
              {
                v114 = 0;
                v115 = 0;
                do
                {
                  v115 = v37[v114++] + ((v115 >> 1) | (v115 << 7));
                }

                while (v114 != 11);
                if (v321 != v115)
                {
                  if (v327)
                  {
                    v14 = v14;
                  }

                  else
                  {
                    v107 = v330;
                    v14 = v13;
                  }

                  v108 = 0;
                }
              }

              v116 = v8;
              v117 = *(v37 + 13);
              HIDWORD(__src[18]) = v117;
              if (v323[19] == 0xFFFFFFF)
              {
                HIDWORD(__src[18]) = (v37[21] << 24) | (v37[20] << 16) | v117;
              }

              DWORD1(__src[19]) = *(v37 + 7);
              if (v108)
              {
                v118 = v13;
                v119 = v108;
                __strlcpy_chk();
                v108 = v119;
                v13 = v118;
                LOBYTE(xmmword_10005A2B0) = 0;
                v321 = -1;
              }

              v120 = *(a2 + 16);
              *&__src[0] = a2;
              *(&__src[0] + 1) = v120;
              if (v107)
              {
                v328 = v107;
                if (v108)
                {
                  v121 = v108;
                }

                else
                {
                  v121 = v37;
                }

                v315 = v121;
                if (v108)
                {
                  v122 = v13;
                }

                else
                {
                  v122 = v329;
                }

                v331 = v122;
                v123 = v108;
                v124 = sub_1000056B0(__src);
                v125 = sub_100005BDC(v323, v328, v315, v14, v331, v329, v124, 0, 0, v116);
                v334 |= v125;
                if ((v334 & 0x10) != 0)
                {
                  return 16;
                }

                if (v123)
                {
                  if (v13 == v329)
                  {
                    v21 = v322;
                    v8 = a4;
                    if (v123 == qword_100059E88)
                    {
                      goto LABEL_209;
                    }

LABEL_206:
                    v334 |= (v125 << 14) & 0x8000;
                  }

                  else
                  {
                    v21 = v322;
                    v8 = a4;
                  }
                }

                else
                {
                  v8 = a4;
                  v21 = v322;
                  if (v37 != qword_100059E88)
                  {
                    goto LABEL_206;
                  }
                }
              }

              else
              {
                v8 = v116;
                if (v108)
                {
                  v21 = v322;
                  if (!a3)
                  {
                    v126 = *(&__src[2] + 5) == 0x3030322E73666E2ELL && *(&__src[2] + 13) == 12597;
                    if (v126 && (BYTE8(__src[18]) & 0x10) == 0)
                    {
                      v127 = v108;
                      v128 = sub_1000056B0(__src);
                      v129 = sub_100005BDC(v323, v127, (v37 + 32), v13, v329, v329, v128, 3, 1, v8);
                      v130 = v129 | v334;
                      if (((v129 | v334) & 0x10) != 0)
                      {
                        return 16;
                      }

                      v327 = 0;
                      if (v13 == v329 && (v129 & 2) != 0 && v127 != qword_100059E88)
                      {
                        v130 |= 0x8000u;
                      }

                      v334 = v130;
                      v330 = 0;
                      v14 = v14;
                      goto LABEL_309;
                    }
                  }
                }

                else
                {
                  v21 = v322;
                }
              }

LABEL_209:
              if (WORD4(__src[1]) == 46 || !(WORD4(__src[1]) ^ 0x2E2E | BYTE10(__src[1])))
              {
                goto LABEL_231;
              }

              if (HIDWORD(__src[18]) == 1)
              {
                goto LABEL_218;
              }

              if (!HIDWORD(__src[18]))
              {
                if (BYTE8(__src[18]) & 0x10 | DWORD1(__src[19]))
                {
                  v133 = sub_1000056B0(__src);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  fsck_print(&v336, 6, "Warning: %s has no clusters\n", v134, v135, v136, v137, v138, v133);
                  goto LABEL_219;
                }

LABEL_228:
                if (HIDWORD(__src[18]) >= 2 && HIDWORD(__src[18]) < v323[20])
                {
                  v334 |= sub_100003648(v323, __src, v8);
                  if ((v334 & 0x10) != 0)
                  {
                    return 16;
                  }
                }

LABEL_231:
                v156 = DWORD1(__src[19]);
                if ((BYTE8(__src[18]) & 0x10) != 0)
                {
                  if (DWORD1(__src[19]))
                  {
                    v157 = sub_1000056B0(__src);
                    v336 = fsck_ctx;
                    v337 = qword_100059E30;
                    fsck_print(&v336, 6, "Warning: Directory %s has size != 0\n", v158, v159, v160, v161, v162, v157);
                    v336 = fsck_ctx;
                    v337 = qword_100059E30;
                    if (fsck_ask(&v336, 1, "Correct", v163, v164, v165, v166, v167, v305))
                    {
                      *(v37 + 7) = 0;
                      DWORD1(__src[19]) = 0;
                      v334 |= 0x8002u;
                    }

                    else
                    {
                      v334 |= 8u;
                    }

                    v14 = v14;
                  }

                  goto LABEL_238;
                }

LABEL_259:
                v94 = *(&__src[19] + 1) >= v156;
                v198 = *(&__src[19] + 1) - v156;
                if (!v94)
                {
                  v199 = sub_1000056B0(__src);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  fsck_print(&v336, 6, "Warning: size of %s is %u, should at most be %llu\n", v200, v201, v202, v203, v204, v199);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  if (fsck_ask(&v336, 1, "Truncate", v205, v206, v207, v208, v209, v307))
                  {
                    DWORD1(__src[19]) = DWORD2(__src[19]);
                    *(v37 + 7) = DWORD2(__src[19]);
                    v210 = 2;
                    goto LABEL_277;
                  }

LABEL_276:
                  v210 = 8;
LABEL_277:
                  v34 = v324;
LABEL_278:
                  v334 |= v210 | (v210 << 14) & 0x8000;
                  v8 = a4;
LABEL_279:
                  v330 = 0;
                  v327 = 0;
                  ++v323[26];
                  goto LABEL_76;
                }

                if (v198 < v323[25])
                {
                  v210 = 0;
                  goto LABEL_277;
                }

                v226 = sub_1000056B0(__src);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                fsck_print(&v336, 6, "Warning: %s has too many clusters allocated (logical=%u, physical=%llu)\n", v227, v228, v229, v230, v231, v226);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                if (!fsck_ask(&v336, 1, "Drop superfluous clusters", v232, v233, v234, v235, v236, v309))
                {
                  goto LABEL_276;
                }

                v318 = v14;
                if (DWORD1(__src[19]))
                {
                  v333 = v13;
                  v237 = 0;
                  v238 = HIDWORD(__src[18]);
                  while (1)
                  {
                    v237 += v323[25];
                    v239 = DWORD1(__src[19]);
                    v240 = fat_get(v238, a4);
                    v241 = v240;
                    if (v237 >= v239)
                    {
                      break;
                    }

                    v238 = v240;
                    if (v240 == -286331154)
                    {
                      goto LABEL_298;
                    }
                  }

                  if (v240 == -286331154 || fat_set(v238, 0xFFFFFFFFLL, a4))
                  {
                    goto LABEL_298;
                  }

                  v210 = 4;
                  v13 = v333;
                }

                else
                {
                  v237 = 0;
                  *(v37 + 13) = 0;
                  *(v37 + 10) = 0;
                  v210 = 6;
                  v241 = HIDWORD(__src[18]);
                }

                v34 = v324;
                if (v237 >= *(&__src[19] + 1))
                {
                  v14 = v318;
                  goto LABEL_278;
                }

                v333 = v13;
                while (1)
                {
                  v255 = fat_get(v241, a4);
                  if (v255 == -286331154)
                  {
                    break;
                  }

                  v256 = v255;
                  if (fat_set(v241, 0, a4))
                  {
                    break;
                  }

                  v237 += v323[25];
                  v241 = v256;
                  if (v237 >= *(&__src[19] + 1))
                  {
                    goto LABEL_299;
                  }
                }

LABEL_298:
                v210 = 16;
LABEL_299:
                v13 = v333;
                v14 = v318;
                goto LABEL_277;
              }

              if (HIDWORD(__src[18]) >= v323[20])
              {
LABEL_218:
                v150 = sub_1000056B0(__src);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                fsck_print(&v336, 6, "Warning: %s starts with cluster out of range (%u)\n", v151, v152, v153, v154, v155, v150);
              }

              else if (isUsed(HIDWORD(__src[18])))
              {
                v144 = sub_1000056B0(__src);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                fsck_print(&v336, 6, "Warning: %s starts with cross-linked cluster (%u)\n", v145, v146, v147, v148, v149, v144);
              }

              else
              {
                v319 = v14;
                v257 = fat_get(HIDWORD(__src[18]), v8);
                if (v257)
                {
                  v258 = v257;
                  if (v257 == -286331154)
                  {
                    return 16;
                  }

                  if ((v257 & 0xFFFFFFFE) != 0xFFFFFFF6)
                  {
                    v14 = v319;
                    goto LABEL_228;
                  }

                  v259 = sub_1000056B0(__src);
                  rsrvdcltype(v258);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  fsck_print(&v336, 6, "Warning: %s starts with cluster marked %s\n", v260, v261, v262, v263, v264, v259);
                }

                else
                {
                  v278 = sub_1000056B0(__src);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  fsck_print(&v336, 6, "Warning: %s starts with free cluster\n", v279, v280, v281, v282, v283, v278);
                }

                v14 = v319;
              }

LABEL_219:
              if ((BYTE8(__src[18]) & 0x10) != 0)
              {
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                v330 = 0;
                v327 = 0;
                if (fsck_ask(&v336, 0, "Remove", v139, v140, v141, v142, v143, v304))
                {
                  *v37 = -27;
                  v334 |= 0x8002u;
                }

                else
                {
                  v334 |= 8u;
                }

                goto LABEL_309;
              }

              v336 = fsck_ctx;
              v337 = qword_100059E30;
              if (!fsck_ask(&v336, 1, "Truncate", v139, v140, v141, v142, v143, v304))
              {
                v334 |= 8u;
                goto LABEL_228;
              }

              *(v37 + 15) = 0;
              *(v37 + 26) = 0;
              if (v323[19] == 0xFFFFFFF)
              {
                *(v37 + 10) = 0;
              }

              HIDWORD(__src[18]) = 0;
              DWORD1(__src[19]) = 0;
              v334 |= 0x8002u;
              if ((BYTE8(__src[18]) & 0x10) == 0)
              {
                v156 = 0;
                goto LABEL_259;
              }

LABEL_238:
              if (WORD4(__src[1]) == 46)
              {
                if (HIDWORD(__src[18]) != *(a2 + 300))
                {
                  v317 = v14;
                  v211 = v13;
                  v212 = v21;
                  v213 = v8;
                  v214 = sub_1000056B0(a2);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  if (!fsck_ask(&v336, 1, "Correct", v220, v221, v222, v223, v224, v308))
                  {
                    goto LABEL_310;
                  }

                  v225 = a2;
LABEL_267:
                  HIDWORD(__src[18]) = *(v225 + 300);
                  *(v37 + 13) = WORD6(__src[18]);
                  v34 = v324;
                  v8 = v213;
                  if (v323[19] == 0xFFFFFFF)
                  {
                    *(v37 + 10) = HIWORD(__src[18]);
                  }

                  goto LABEL_269;
                }

                goto LABEL_308;
              }

              if (!(WORD4(__src[1]) ^ 0x2E2E | BYTE10(__src[1])))
              {
                v242 = *a2;
                if (*a2)
                {
                  if (*v242)
                  {
                    if (HIDWORD(__src[18]) != *(v242 + 300))
                    {
                      v317 = v14;
                      v211 = v13;
                      v212 = v21;
                      v213 = v8;
                      v243 = sub_1000056B0(a2);
                      v336 = fsck_ctx;
                      v337 = qword_100059E30;
                      v336 = fsck_ctx;
                      v337 = qword_100059E30;
                      if (!fsck_ask(&v336, 1, "Correct", v249, v250, v251, v252, v253, v310))
                      {
                        goto LABEL_310;
                      }

                      v225 = *a2;
                      goto LABEL_267;
                    }
                  }

                  else if (HIDWORD(__src[18]))
                  {
                    v317 = v14;
                    v211 = v13;
                    v212 = v21;
                    v213 = v8;
                    v265 = sub_1000056B0(a2);
                    v336 = fsck_ctx;
                    v337 = qword_100059E30;
                    v336 = fsck_ctx;
                    v337 = qword_100059E30;
                    if (fsck_ask(&v336, 1, "Correct", v271, v272, v273, v274, v275, v311))
                    {
                      HIDWORD(__src[18]) = 0;
                      *(v37 + 13) = 0;
                      v34 = v324;
                      if (v323[19] == 0xFFFFFFF)
                      {
                        *(v37 + 10) = 0;
                      }

LABEL_269:
                      v330 = 0;
                      v327 = 0;
                      v334 |= 0x8002u;
LABEL_311:
                      v21 = v212;
                      v13 = v211;
                      v14 = v317;
                      goto LABEL_76;
                    }

LABEL_310:
                    v330 = 0;
                    v327 = 0;
                    v334 |= 8u;
                    v34 = v324;
                    v8 = v213;
                    goto LABEL_311;
                  }
                }

                goto LABEL_308;
              }

              v316 = v14;
              v168 = malloc_type_malloc(*v323, 0x2D8BE58CuLL);
              if (!v168)
              {
                v299 = __error();
                strerror(*v299);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                v291 = "No memory for subdirectory buffer";
                goto LABEL_352;
              }

              v169 = v168;
              v332 = v13;
              v170 = (v323[24] + (HIDWORD(__src[18]) - 2) * v323[1]) * *v323;
              v171 = (*(v8 + 32))(*(v8 + 24), v168);
              if (v171 != *v323)
              {
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                fsck_print(&v336, 2, "Unable to read cluster %u", v172, v173, v174, v175, v176, HIDWORD(__src[18]));
                free(v169);
                return 16;
              }

              v177 = v171;
              v178 = *(v8 + 64);
              if (v178 >= 1 && pwrite(v178, v169, v177, v170) != *v323)
              {
                v179 = *__error();
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                fsck_print(&v336, 6, "Failed to shadow at offset 0x%llx, length 0x%x (errno %d)", v180, v181, v182, v183, v184, v170);
              }

              v185 = *v169 == 0x202020202020202ELL && *(v169 + 3) == 0x2020202020202020;
              v21 = v322;
              if (v185 && (v169[4] == 0x2020202020202E2ELL ? (v186 = *(v169 + 35) == 0x2020202020202020) : (v186 = 0), v186 && (*(v169 + 11) & 0x10) != 0 && (*(v169 + 43) & 0x10) != 0))
              {
                free(v169);
                v13 = v332;
              }

              else
              {
                free(v169);
                v187 = sub_1000056B0(__src);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                fsck_print(&v336, 6, "Warning: Item %s does not appear to be a subdirectory\n", v188, v189, v190, v191, v192, v187);
                v336 = fsck_ctx;
                v337 = qword_100059E30;
                v13 = v332;
                if (fsck_ask(&v336, 0, "Correct", v193, v194, v195, v196, v197, v306))
                {
                  v37[11] &= ~0x10u;
                  DWORD2(__src[18]) &= ~0x10u;
                  v334 |= 0x8002u;
                  v156 = DWORD1(__src[19]);
                  v14 = v316;
                  goto LABEL_259;
                }

                v334 |= 8u;
              }

              v254 = qword_100059E98;
              if (qword_100059E98)
              {
                qword_100059E98 = *(qword_100059E98 + 8);
              }

              else
              {
                v254 = malloc_type_malloc(0x148uLL, 0x1020040DB0A7303uLL);
                if (!v254)
                {
                  v300 = __error();
                  strerror(*v300);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  v291 = "No space for directory";
                  goto LABEL_352;
                }
              }

              memcpy(v254, __src, 0x148uLL);
              *(a2 + 16) = v254;
              v276 = qword_10005A2A8;
              if (qword_10005A2A8)
              {
                qword_10005A2A8 = *(qword_10005A2A8 + 8);
                v21 = v322;
              }

              else
              {
                v276 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
                v21 = v322;
                if (!v276)
                {
                  v301 = __error();
                  strerror(*v301);
                  v336 = fsck_ctx;
                  v337 = qword_100059E30;
                  v291 = "No space for todo list";
                  goto LABEL_352;
                }
              }

              v277 = pendingDirectories;
              *v276 = v254;
              v276[1] = v277;
              pendingDirectories = v276;
              v14 = v316;
              v34 = v324;
              goto LABEL_279;
            }

LABEL_75:
            *v37 = 0;
            v334 |= 0x8002u;
            goto LABEL_76;
          }

          *(a2 + 320) = v38 | 1;
          v326 = v37;
          v325 = v329;
        }

LABEL_76:
        ++v35;
        v37 += 32;
        v36 += 32;
        if (v35 == v34)
        {
          goto LABEL_324;
        }
      }
    }

    v37 = qword_100059E88;
LABEL_324:
    v12 = v326;
    if ((v334 & 0x8000) != 0)
    {
      if ((*(v8 + 40))(*(v8 + 24), qword_100059E88, 32 * v34, v21) != 32 * v34)
      {
        goto LABEL_351;
      }

      v334 &= ~0x8000u;
    }

    a1 = v323;
    if ((v323[17] & 1) == 0 && !*a2)
    {
      break;
    }

    v10 = fat_get(v329, v8);
    if (v10 < 2)
    {
      goto LABEL_337;
    }

    v11 = v330;
    if (v10 < v323[20])
    {
      v15 = v325;
      if (v10 != *(a2 + 304))
      {
        continue;
      }
    }

    goto LABEL_338;
  }

  v10 = v329;
LABEL_337:
  v11 = v330;
LABEL_338:
  if (v10 == -286331154)
  {
    v292 = v334 | 0x10;
  }

  else
  {
    v292 = v334;
  }

  if (!(v327 | v11))
  {
    return v292 & 0xFFFF7FFF;
  }

  if (v327)
  {
    v293 = v327;
  }

  else
  {
    v293 = v11;
  }

  if (v327)
  {
    v14 = v14;
  }

  else
  {
    v14 = v13;
  }

  v294 = sub_1000056B0(a2);
  v295 = sub_100005BDC(v323, v293, v37, v14, v329, v329, v294, 1, 0, v8);
  v296 = v21;
  v297 = v295;
  if ((*(v8 + 40))(*(v8 + 24), qword_100059E88, 32 * v324, v296) == 32 * v324)
  {
    v292 |= v297;
    return v292 & 0xFFFF7FFF;
  }

LABEL_351:
  v298 = __error();
  strerror(*v298);
  v336 = fsck_ctx;
  v337 = qword_100059E30;
  v291 = "Unable to write directory";
LABEL_352:
  fsck_print(&v336, 2, "%s (%s)\n", v286, v287, v288, v289, v290, v291);
  return 16;
}

__int16 *sub_1000056B0(uint64_t *a1)
{
  if (rootDir == a1)
  {
    v5 = &word_100059EA0;
    word_100059EA0 = 47;
  }

  else
  {
    v1 = a1;
    v2 = &byte_10005A2A0;
    byte_10005A2A0 = 0;
    while (1)
    {
      v3 = *(v1 + 37) ? v1 + 37 : (v1 + 3);
      v4 = strlen(v3);
      v5 = &v2[-v4];
      if (&v2[-v4] <= &word_100059EA0 + 1)
      {
        break;
      }

      memcpy(&v2[-v4], v3, v4);
      *(v5 - 1) = 47;
      v2 = v5 - 1;
      v1 = *v1;
      if (!v1)
      {
        return v5;
      }
    }

    *(v2 - 1) = 63;
    return (v2 - 1);
  }

  return v5;
}

uint64_t sub_100005778(unsigned int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a2 >= 2)
  {
    v9 = a2;
    v11 = (*a1 * a1[1]);
    v12 = qword_100059E90;
    v13 = qword_100059E90 + v11;
    v14 = qword_100059E90 + a3;
    while (1)
    {
      if (v9 >= a1[20])
      {
        return 0;
      }

      if (v9 == a4)
      {
        if (a6)
        {
          return 0;
        }

        v13 = v12 + a5;
      }

      v15 = *a1 * (a1[24] + a1[1] * (v9 - 2));
      if ((*(a7 + 32))(*(a7 + 24)) != v11)
      {
        break;
      }

      v16 = *(a7 + 64);
      if (v16 >= 1 && pwrite(v16, qword_100059E90, v11, v15) != v11)
      {
        v17 = *__error();
        v46 = fsck_ctx;
        v47 = qword_100059E30;
        fsck_print(&v46, 6, "Failed to shadow at offset 0x%llx, length 0x%x (errno %d)", v18, v19, v20, v21, v22, v15);
      }

      if (v14 < v13)
      {
        v23 = 0;
        v24 = v14 + 32;
        if (v13 > v14 + 32)
        {
          v24 = v13;
        }

        v25 = (v24 + ~v14) >> 5;
        v26 = vdupq_n_s64(v25);
        v27 = (v25 + 16) & 0xFFFFFFFFFFFFFF0;
        v28 = (v14 + 256);
        do
        {
          v29 = vdupq_n_s64(v23);
          v30 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040790)));
          if (vuzp1_s8(vuzp1_s16(v30, *v26.i8), *v26.i8).u8[0])
          {
            *(v28 - 256) = -27;
          }

          if (vuzp1_s8(vuzp1_s16(v30, *&v26), *&v26).i8[1])
          {
            *(v28 - 224) = -27;
          }

          if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040780)))), *&v26).i8[2])
          {
            *(v28 - 192) = -27;
            *(v28 - 160) = -27;
          }

          v31 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040770)));
          if (vuzp1_s8(*&v26, vuzp1_s16(v31, *&v26)).i32[1])
          {
            *(v28 - 128) = -27;
          }

          if (vuzp1_s8(*&v26, vuzp1_s16(v31, *&v26)).i8[5])
          {
            *(v28 - 96) = -27;
          }

          if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040760))))).i8[6])
          {
            *(v28 - 64) = -27;
            *(v28 - 32) = -27;
          }

          v32 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040750)));
          if (vuzp1_s8(vuzp1_s16(v32, *v26.i8), *v26.i8).u8[0])
          {
            *v28 = -27;
          }

          if (vuzp1_s8(vuzp1_s16(v32, *&v26), *&v26).i8[1])
          {
            v28[32] = -27;
          }

          if (vuzp1_s8(vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040740)))), *&v26).i8[2])
          {
            v28[64] = -27;
            v28[96] = -27;
          }

          v33 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040730)));
          if (vuzp1_s8(*&v26, vuzp1_s16(v33, *&v26)).i32[1])
          {
            v28[128] = -27;
          }

          if (vuzp1_s8(*&v26, vuzp1_s16(v33, *&v26)).i8[5])
          {
            v28[160] = -27;
          }

          if (vuzp1_s8(*&v26, vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v29, xmmword_100040720))))).i8[6])
          {
            v28[192] = -27;
            v28[224] = -27;
          }

          v23 += 16;
          v28 += 512;
        }

        while (v27 != v23);
      }

      if ((*(a7 + 40))(*(a7 + 24), qword_100059E90, v11, v15) != v11)
      {
        v43 = __error();
        strerror(*v43);
        v46 = fsck_ctx;
        v47 = qword_100059E30;
        v42 = "Unable to write directory";
        goto LABEL_47;
      }

      if (v9 == a4)
      {
        return 0;
      }

      v34 = fat_get(v9, a7);
      if (v34 == -286331154)
      {
        return 16;
      }

      v9 = v34;
      v12 = qword_100059E90;
      v14 = qword_100059E90;
      if (v34 <= 1)
      {
        return 0;
      }
    }

    v36 = __error();
    strerror(*v36);
    v46 = fsck_ctx;
    v47 = qword_100059E30;
    v42 = "Unable to read directory";
LABEL_47:
    fsck_print(&v46, 2, "%s (%s)\n", v37, v38, v39, v40, v41, v42);
    return 16;
  }

  return 0;
}

uint64_t sub_100005BDC(unsigned int *a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v10 = a6;
  v11 = a5;
  if (a8 > 1)
  {
    v36 = fsck_ctx;
    v37 = qword_100059E30;
    if (a8 == 2)
    {
      v21 = "Warning: Invalid long filename entry for volume label\n";
    }

    else
    {
      v21 = "Warning: Remove unlinked file entry\n";
    }

    fsck_print(&v36, 6, v21, a4, a5, a6, a7, a8, v34);
  }

  else
  {
    v36 = fsck_ctx;
    v37 = qword_100059E30;
    if (a8)
    {
      fsck_print(&v36, 6, "Warning: Invalid long filename entry at end of directory %s\n", a4, a5, a6, a7, a8, a7);
    }

    else
    {
      fsck_print(&v36, 6, "Warning: Invalid long filename entry for %s\n", a4, a5, a6, a7, a8, a7);
    }
  }

  if (!a9)
  {
    v36 = fsck_ctx;
    v37 = qword_100059E30;
    if (!fsck_ask(&v36, 0, "Remove", v16, v17, v18, v19, v20, v35))
    {
      return 8;
    }
  }

  if (a4 != v10)
  {
    result = sub_100005778(a1, a4, a2 - qword_100059E88, v11, a3 - qword_100059E88, v11 == v10, a10);
    if (result == 16)
    {
      return result;
    }

    a2 = qword_100059E88;
  }

  result = 2;
  if (v11 == v10 && a2 < a3)
  {
    v23 = 0;
    v24 = a2 + 32;
    if (a3 > a2 + 32)
    {
      v24 = a3;
    }

    v25 = (v24 + ~a2) >> 5;
    v26 = (v25 + 16) & 0xFFFFFFFFFFFFFF0;
    v27 = vdupq_n_s64(v25);
    v28 = (a2 + 256);
    do
    {
      v29 = vdupq_n_s64(v23);
      v30 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040790)));
      if (vuzp1_s8(vuzp1_s16(v30, *v27.i8), *v27.i8).u8[0])
      {
        *(v28 - 256) = -27;
      }

      if (vuzp1_s8(vuzp1_s16(v30, *&v27), *&v27).i8[1])
      {
        *(v28 - 224) = -27;
      }

      if (vuzp1_s8(vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040780)))), *&v27).i8[2])
      {
        *(v28 - 192) = -27;
        *(v28 - 160) = -27;
      }

      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040770)));
      if (vuzp1_s8(*&v27, vuzp1_s16(v31, *&v27)).i32[1])
      {
        *(v28 - 128) = -27;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(v31, *&v27)).i8[5])
      {
        *(v28 - 96) = -27;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040760))))).i8[6])
      {
        *(v28 - 64) = -27;
        *(v28 - 32) = -27;
      }

      v32 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040750)));
      if (vuzp1_s8(vuzp1_s16(v32, *v27.i8), *v27.i8).u8[0])
      {
        *v28 = -27;
      }

      if (vuzp1_s8(vuzp1_s16(v32, *&v27), *&v27).i8[1])
      {
        v28[32] = -27;
      }

      if (vuzp1_s8(vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040740)))), *&v27).i8[2])
      {
        v28[64] = -27;
        v28[96] = -27;
      }

      v33 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040730)));
      if (vuzp1_s8(*&v27, vuzp1_s16(v33, *&v27)).i32[1])
      {
        v28[128] = -27;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(v33, *&v27)).i8[5])
      {
        v28[160] = -27;
      }

      if (vuzp1_s8(*&v27, vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_100040720))))).i8[6])
      {
        v28[192] = -27;
        v28[224] = -27;
      }

      v23 += 16;
      v28 += 512;
    }

    while (v26 != v23);
    return 2;
  }

  return result;
}

void sub_10000661C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006668(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100006680(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_10000720C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose((v40 - 248), 8);
  _Block_object_dispose((v40 - 200), 8);
  _Block_object_dispose((v40 - 168), 8);
  _Block_object_dispose((v40 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007260(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100007278(uint64_t a1, void *a2, const void *a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    memcpy((*(*(a1 + 40) + 8) + 32), a3, 0x200uLL);
  }
}

uint64_t sub_100007300(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    if ([v6 code] != 2 || (objc_msgSend(*(a1 + 32), "isIncomplete") & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return _objc_release_x1();
}

uint64_t sub_1000073B0(void *a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, void *a6)
{
  v10 = a2;
  v11 = a6;
  if (v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D4F8();
    }
  }

  else if (a3 == 2 && *(*(a1[4] + 8) + 32) == *a5)
  {
    CONV_Unistr255ToLowerCase(a5);
    if (!memcmp(a5 + 1, (*(a1[4] + 8) + 34), 2 * *(*(a1[4] + 8) + 32)))
    {
      *(*(a1[5] + 8) + 24) = 1;
      objc_storeStrong((*(a1[6] + 8) + 40), a6);
    }
  }

  return 1;
}

BOOL sub_100007498(uint64_t a1, void *a2, int a3, uint64_t a4, unsigned __int16 *a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D574();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    if (a3 == 2 && *(*(*(a1 + 40) + 8) + 32) == *a5)
    {
      CONV_Unistr255ToLowerCase(a5);
      if (!memcmp(a5 + 1, (*(*(a1 + 40) + 8) + 34), 2 * *(*(*(a1 + 40) + 8) + 32)))
      {
        v16 = 1;
        *(*(*(a1 + 48) + 8) + 24) = 1;
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a6);
        goto LABEL_13;
      }
    }

    if (!*(a1 + 64))
    {
      v16 = a3 == 1;
      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002D5F0((a1 + 64));
    }

    v13 = fs_errorForPOSIXError();
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  v16 = 1;
LABEL_13:

  return v16;
}

void sub_100007730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007748(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a2;
  v13 = a6;
  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D68C();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    if (a3 == 1)
    {
      goto LABEL_6;
    }

    if (a3 != 2 || ([*(a1 + 32) insertDirEntryNamedUtf16:a5 offsetInDir:a4], v15 = objc_claimAutoreleasedReturnValue(), v16 = *(*(a1 + 40) + 8), v17 = *(v16 + 40), *(v16 + 40) = v15, v17, !*(*(*(a1 + 40) + 8) + 40)))
    {
      a3 = 0;
      goto LABEL_6;
    }

    v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      sub_10002D708(v18, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  a3 = 1;
LABEL_6:

  return a3;
}

void sub_100007D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 176), 8);
  _Block_object_dispose((v37 - 144), 8);
  _Unwind_Resume(a1);
}

BOOL sub_100007D94(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002D988(a1);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
LABEL_5:
    v13 = 1;
    goto LABEL_6;
  }

  if (a3 == 1)
  {
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 24);
    if (!v18)
    {
      *(*(*(a1 + 56) + 8) + 24) = a4;
      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 24);
    }

    *(v17 + 24) = v18 + 1;
    goto LABEL_5;
  }

  if (a3)
  {
    v13 = 0;
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 24);
    if (!v16)
    {
      *(*(*(a1 + 56) + 8) + 24) = a4;
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 24);
    }

    *(v15 + 24) = v16 + 1;
    v13 = *(*(*(a1 + 48) + 8) + 24) == *(a1 + 64);
  }

LABEL_6:

  return v13;
}

void sub_100007EE8(void *a1, void *a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  if (v9)
  {
    v10 = v9;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v9 = v10;
  }

  else
  {
    if (!*(*(a1[5] + 8) + 24))
    {
      *(*(a1[6] + 8) + 24) = a1[9];
    }

    *(*(a1[7] + 8) + 24) = a3;
    *(*(a1[8] + 8) + 24) = a5;
  }
}

void sub_100008678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&STACK[0x318], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose((v34 - 168), 8);
  _Unwind_Resume(a1);
}

void sub_1000086F0(uint64_t a1, void *a2, const void *a3)
{
  v6 = a2;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    memcpy((*(*(a1 + 40) + 8) + 32), a3, 0x200uLL);
  }
}

void sub_100008778(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_1000087F4(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_100008880(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100008D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100008D58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, void *a6)
{
  v11 = a2;
  v12 = a6;
  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E024();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    if (a3 == 1)
    {
      goto LABEL_6;
    }

    if (a3 != 2 || *a5 < 3u && (bzero(__s, 0x2FEuLL), CONV_Unistr255ToUTF8(a5, __s), [Utilities isDotOrDotDot:__s length:strlen(__s)]))
    {
      a3 = 0;
      goto LABEL_6;
    }

    v14 = fs_errorForPOSIXError();
    v15 = *(*(a1 + 32) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  a3 = 1;
LABEL_6:

  return a3;
}

void sub_100009040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000907C(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v8 = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E0A0(v8);
    }
  }

  else
  {
    if (a3 == 1)
    {
      v9 = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_5;
    }

    if (a3 != 2)
    {
      v9 = 0;
      goto LABEL_5;
    }

    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 24);
    if (v12 != *(a1 + 64))
    {
      v9 = 0;
      *(v11 + 24) = v12 + 1;
      goto LABEL_5;
    }

    *(*(*(a1 + 48) + 8) + 24) = a4;
  }

  v9 = 1;
LABEL_5:

  return v9;
}

void sub_100009514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100009540(void *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E22C();
    }

    (*(a1[4] + 16))();
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

uint64_t sub_100009728@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void sub_100009738(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t sub_10000AF38@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 1024;
  *(result + 14) = a2;
  return result;
}

void sub_10000B6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000B740(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000B758(uint64_t a1, void *a2, int a3, int a4)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v9 = a2;
  v8 = [*(a1 + 32) systemInfo];
  *(*(*(a1 + 48) + 8) + 24) = [v8 bytesPerCluster] * a3;

  *(*(*(a1 + 56) + 8) + 24) = a4;
}

void sub_10000BE40(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10000BE9C(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  *(*(*(a1 + 40) + 8) + 24) += a3;
  v8 = [*(a1 + 32) systemInfo];
  *(*(*(a1 + 48) + 8) + 24) = [v8 bytesPerCluster] * a3;

  *(*(*(a1 + 56) + 8) + 24) = a4;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

void sub_10000BF44(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_10000C1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

size_t sub_10000C21C(size_t result, char a2, id a3)
{
  *(*(*(result + 32) + 8) + 24) = a2;
  if (a3)
  {
    v3 = result;
    result = strlen([a3 UTF8String]);
    *(*(*(v3 + 40) + 8) + 24) = result;
  }

  return result;
}

void sub_10000C600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void sub_10000C640(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_10000C8F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000C9A4;
  v6[3] = &unk_100050890;
  v5 = *(a1 + 72);
  v7 = *(a1 + 64);
  [v1 createItemNamed:v2 type:v5 inDirectory:v3 attributes:v4 content:0 replyHandler:v6];
}

void sub_10000D654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a70, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v70 - 232), 8);
  _Block_object_dispose((v70 - 200), 8);
  _Block_object_dispose((v70 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10000D6E0(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F1C4();
  }
}

void sub_10000D72C(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F248();
    }
  }

  else if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void sub_10000D7C4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    if ([v7 code] != 2)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_10000D860(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v9 = a2;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if (*(a1 + 56) == a5)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *(*(*(a1 + 48) + 8) + 24) = a5;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002F2CC((a1 + 56), a5);
    }

    v10 = fs_errorForPOSIXError();
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_10000D934(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_10000D9B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) createFATItemWithParent:*(a1 + 40) name:*(a1 + 48) dirEntryData:a3];
    v10 = *(*(a1 + 64) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10000DA3C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F36C();
  }
}

void sub_10000DA88(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000DE4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000DF00;
  v6[3] = &unk_100050890;
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  [v1 createItemNamed:v2 type:3 inDirectory:v3 attributes:v4 content:v5 replyHandler:v6];
}

void sub_10000E13C(uint64_t a1)
{
  v108 = 0;
  v109 = &v108;
  v110 = 0x2020000000;
  v2 = *(a1 + 72);
  v111 = v2;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = HIDWORD(v2);
  v3 = *(a1 + 32);
  v4 = v3 != 0;
  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_10000B740;
  v90 = sub_10000B750;
  v91 = 0;
  v5 = [*(a1 + 40) isRoot];
  v6 = v109;
  if (v5 && !v3)
  {
    v7 = *(v109 + 6);
    if ((v7 | 2) == 2)
    {
      v8 = 0;
      *(v93 + 24) = v7 == 0;
      *(v97 + 24) = 1;
    }

    else
    {
      v8 = v7 - 4;
    }

    *(v6 + 6) = v8;
    *(v101 + 6) = 4;
  }

  v9 = *(v6 + 6);
  if (v9 % [*(a1 + 40) dirEntrySize])
  {
    v10 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002F4F8(buf, *(v109 + 6), [*(a1 + 40) dirEntrySize]);
    }

    v11 = fs_errorForPOSIXError();
    v12 = v87[5];
    v87[5] = v11;
  }

  if ([*(a1 + 40) dirVersion] == *(a1 + 80) || (v93[3] & 1) != 0 || (v97[3] & 1) != 0)
  {
    if (v87[5])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002F5E4();
      }

      v13 = [NSError errorWithDomain:FSKitErrorDomain code:4506 userInfo:0];
      v14 = v87[5];
      v87[5] = v13;
    }
  }

  else
  {
    v21 = v87;
    v22 = v87[5];
    if (v22)
    {
      v23 = v22;
      v24 = v21[5];
      v21[5] = v23;
    }

    else
    {
      v35 = [*(a1 + 40) verifyCookieOffset:*(v109 + 6)];
      v24 = v87[5];
      v87[5] = v35;
    }

    if (v87[5])
    {
      v72 = 0;
      v73 = &v72;
      v74 = 0x2020000000;
      LOBYTE(v75) = 0;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10002F560();
      }

      [*(a1 + 48) adjustCookieIndex:v105 + 3 dirItem:*(a1 + 40) provideAttributes:v3 != 0];
      v36 = *(a1 + 40);
      v37 = *(v105 + 6);
      v78[0] = _NSConcreteStackBlock;
      v78[1] = 3221225472;
      v78[2] = sub_10000E9E4;
      v78[3] = &unk_100050A30;
      v80 = &v86;
      v81 = &v108;
      v82 = &v72;
      v38 = v36;
      v85 = v3 != 0;
      v79 = v38;
      v83 = &v92;
      v84 = &v96;
      [v38 getDirEntryOffsetByIndex:v37 replyHandler:v78];
      if (v87[5] || *(v73 + 24) == 1)
      {
        (*(*(a1 + 64) + 16))();

        _Block_object_dispose(&v72, 8);
        goto LABEL_33;
      }

      _Block_object_dispose(&v72, 8);
    }
  }

  if (v87[5])
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = sub_10000B740;
    v76 = sub_10000B750;
    v77 = 0;
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = sub_10000B740;
    v70 = sub_10000B750;
    v71 = 0;
    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    if (*(v93 + 24) == 1 && (++*(v105 + 6), v15 = *(a1 + 56), +[FSFileName nameWithCString:](FSFileName, "nameWithCString:", "."), v16 = objc_claimAutoreleasedReturnValue(), v17 = [*(a1 + 40) getFileID], LOBYTE(v15) = objc_msgSend(v15, "packEntryWithName:itemType:itemID:nextCookie:attributes:", v16, 2, v17, (*(v105 + 6) << 32) | 2, 0), v16, (v15 & 1) == 0))
    {
      v25 = *(a1 + 64);
      v26 = [*(a1 + 40) dirVersion];
      (*(v25 + 16))(v25, v26, v87[5]);
    }

    else
    {
      if (*(v97 + 24) == 1)
      {
        v18 = [[FSFileName alloc] initWithCString:".."];
        v19 = v73[5];
        v73[5] = v18;

        v63[3] = 2;
        if ([*(a1 + 40) isRoot])
        {
          v20 = [*(a1 + 48) getNextAvailableFileID];
          v59[3] = v20;
        }

        else
        {
          v27 = [*(a1 + 40) parentDir];
          v28 = [v27 getFileID];
          v59[3] = v28;
        }
      }

      v56[0] = 0;
      v56[1] = v56;
      v56[2] = 0x3032000000;
      v56[3] = sub_10000B740;
      v56[4] = sub_10000B750;
      v57 = [NSMutableData dataWithLength:766];
      v29 = *(a1 + 40);
      v30 = *(v109 + 6);
      v40 = _NSConcreteStackBlock;
      v41 = 3221225472;
      v42 = sub_10000EAB8;
      v43 = &unk_100050A80;
      v47 = &v86;
      v48 = &v72;
      v49 = &v100;
      v50 = &v104;
      v44 = *(a1 + 56);
      v51 = &v62;
      v52 = &v58;
      v53 = &v66;
      v54 = v56;
      v55 = v4;
      v39 = *(a1 + 40);
      v31 = v39.i64[0];
      v45 = vextq_s8(v39, v39, 8uLL);
      v46 = *(a1 + 32);
      [v29 iterateFromOffset:v30 options:0 replyHandler:&v40];
      v32 = v73[5];
      if (v32)
      {
        [*(a1 + 56) packEntryWithName:v32 itemType:v63[3] itemID:v59[3] nextCookie:0 attributes:v67[5]];
      }

      v33 = *(a1 + 64);
      v34 = [*(a1 + 40) dirVersion];
      (*(v33 + 16))(v33, v34, v87[5]);

      _Block_object_dispose(v56, 8);
    }

    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v62, 8);
    _Block_object_dispose(&v66, 8);

    _Block_object_dispose(&v72, 8);
  }

LABEL_33:
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);
  _Block_object_dispose(&v100, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
}

void sub_10000E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 256), 8);
  _Block_object_dispose((v65 - 224), 8);
  _Block_object_dispose((v65 - 192), 8);
  _Block_object_dispose((v65 - 160), 8);
  _Block_object_dispose((v65 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10000E9E4(uint64_t a1, void *a2, int a3, char a4)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *(*(*(a1 + 48) + 8) + 24) = a3;
  *(*(*(a1 + 56) + 8) + 24) = a4;
  if ([*(a1 + 32) isRoot])
  {
    if ((*(a1 + 80) & 1) == 0)
    {
      v8 = *(*(*(a1 + 48) + 8) + 24);
      if ((v8 | 2) == 2)
      {
        *(*(*(a1 + 64) + 8) + 24) = v8 == 0;
        *(*(*(a1 + 72) + 8) + 24) = 1;
      }
    }
  }
}

uint64_t sub_10000EAB8(uint64_t a1, void *a2, uint64_t a3, int a4, unint64_t a5, void *a6)
{
  v12 = a2;
  v13 = a6;
  if (v12)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F668(v12);
    }

    goto LABEL_4;
  }

  if (a3 == 1)
  {
    goto LABEL_20;
  }

  if (a3 != 2)
  {
LABEL_19:
    a3 = 0;
    goto LABEL_20;
  }

  if (!*(*(*(a1 + 72) + 8) + 40) || (v14 = *(*(*(a1 + 80) + 8) + 24), ++*(*(*(a1 + 88) + 8) + 24), v15 = [*(a1 + 32) packEntryWithName:*(*(*(a1 + 72) + 8) + 40) itemType:*(*(*(a1 + 96) + 8) + 24) itemID:*(*(*(a1 + 104) + 8) + 24) nextCookie:(v14 + a4) | (*(*(*(a1 + 88) + 8) + 24) << 32) attributes:*(*(*(a1 + 112) + 8) + 40)], v16 = *(*(a1 + 72) + 8), v17 = *(v16 + 40), *(v16 + 40) = 0, v17, v15))
  {
    CONV_Unistr255ToUTF8(a5, [*(*(*(a1 + 120) + 8) + 40) mutableBytes]);
    v18 = [[FSFileName alloc] initWithCString:{objc_msgSend(*(*(*(a1 + 120) + 8) + 40), "mutableBytes")}];
    v19 = v18;
    if (!v18)
    {
      goto LABEL_18;
    }

    v20 = [v18 data];
    v21 = [v20 length];

    if (!v21)
    {
      goto LABEL_18;
    }

    if (*(a1 + 128) == 1)
    {
      v22 = [v19 data];
      v23 = [v22 bytes];
      v24 = [v19 data];
      v25 = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v23, [v24 length]);

      if (v25)
      {
LABEL_18:

        goto LABEL_19;
      }

      v26 = [*(a1 + 40) createFATItemWithParent:*(a1 + 48) name:v19 dirEntryData:v13];
      v27 = [v26 getAttributes:*(a1 + 56)];
      v28 = *(*(a1 + 112) + 8);
      v29 = *(v28 + 40);
      *(v28 + 40) = v27;

      *(*(*(a1 + 96) + 8) + 24) = [*(*(*(a1 + 112) + 8) + 40) type];
    }

    else if ([v13 type] == 2)
    {
      *(*(*(a1 + 96) + 8) + 24) = 2;
    }

    else
    {
      v30 = *(a1 + 40);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10000EDF8;
      v34[3] = &unk_100050A58;
      v34[4] = *(a1 + 96);
      [v30 isSymLink:v13 replyHandler:v34];
    }

    v31 = *(*(a1 + 72) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v19;
    v19 = v19;

    *(*(*(a1 + 104) + 8) + 24) = [*(a1 + 40) getFileID:v13];
    goto LABEL_18;
  }

LABEL_4:
  a3 = 1;
LABEL_20:

  return a3;
}

uint64_t sub_10000EDF8(uint64_t result, int a2)
{
  v2 = 3;
  if (!a2)
  {
    v2 = 1;
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

void sub_10000EF5C(uint64_t a1)
{
  v2 = [*(a1 + 32) getAttributes:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_10000F1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000F1E8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if ([*(*(*(a1 + 56) + 8) + 40) isDeleted])
    {
      v2 = *(a1 + 48);
LABEL_9:
      v29 = fs_errorForPOSIXError();
      (*(v2 + 16))(v2, 0, 0, v29);

      return;
    }

    v5 = [*(a1 + 32) data];
    v6 = [v5 bytes];
    v7 = [*(a1 + 32) data];
    v8 = +[Utilities isDotOrDotDot:length:](Utilities, "isDotOrDotDot:length:", v6, [v7 length]);

    if (v8)
    {
      v2 = *(a1 + 48);
      goto LABEL_9;
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_10000B740;
    v52 = sub_10000B750;
    v53 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v9 = [*(a1 + 40) nameCachePool];
    v10 = *(*(*(a1 + 56) + 8) + 40);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10000F704;
    v43[3] = &unk_100050920;
    v43[4] = &v48;
    v43[5] = &v44;
    [v9 getNameCacheForDir:v10 cachedOnly:0 replyHandler:v43];

    if (v49[5])
    {
      if (*(v45 + 24) == 1)
      {
        v11 = [*(*(*(a1 + 56) + 8) + 40) fillNameCache:?];
        v12 = *(*(a1 + 64) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        if (*(*(*(a1 + 64) + 8) + 40))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10002F804(a1 + 64);
          }

          v14 = *(*(a1 + 64) + 8);
          v15 = *(v14 + 40);
          *(v14 + 40) = 0;
        }
      }
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_10000B740;
    v41 = sub_10000B750;
    v42 = 0;
    v16 = *(a1 + 56);
    v17 = *(*(v16 + 8) + 40);
    v18 = v49[5];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000F79C;
    v32[3] = &unk_100050AF8;
    v34 = *(a1 + 64);
    v35 = &v37;
    v36 = v16;
    *v30 = *(a1 + 32);
    v33 = vextq_s8(*v30, *v30, 8uLL);
    [v17 lookupDirEntryNamed:v30[0] dirNameCache:v18 lookupOffset:0 replyHandler:v32];
    if (v49[5])
    {
      v19 = [*(a1 + 40) nameCachePool];
      [v19 doneWithNameCacheForDir:*(*(*(a1 + 56) + 8) + 40)];
    }

    if (v38[5])
    {
      v20 = [*(a1 + 40) itemCache];
      v21 = v38[5];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10000F830;
      v31[3] = &unk_1000509E0;
      v31[4] = *(a1 + 64);
      v31[5] = &v37;
      [v20 insertItem:v21 replyHandler:v31];

      v22 = *(a1 + 64);
      if (v38[5])
      {
LABEL_26:
        v27 = *(a1 + 32);
        v28 = *(*(v22 + 8) + 40);
        (*(*(a1 + 48) + 16))();

        _Block_object_dispose(&v37, 8);
        _Block_object_dispose(&v44, 8);
        _Block_object_dispose(&v48, 8);

        return;
      }
    }

    else
    {
      v22 = *(a1 + 64);
    }

    if (!*(*(v22 + 8) + 40))
    {
      v23 = fs_errorForPOSIXError();
      v24 = *(*(a1 + 64) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v26 = v38[5];
      v22 = *(a1 + 64);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F894();
  }

  v3 = *(a1 + 48);
  v4 = fs_errorForPOSIXError();
  (*(v3 + 16))(v3, 0, 0, v4);
}

void sub_10000F6CC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10000F704(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002F918();
    }
  }

  else if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *(*(*(a1 + 40) + 8) + 24) = a4;
  }
}

void sub_10000F79C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 48) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) createFATItemWithParent:*(*(*(a1 + 64) + 8) + 40) name:*(a1 + 40) dirEntryData:a3];
    v10 = *(*(a1 + 56) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10000F830(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_10000F9A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v10 = [(FATItem *)FileItem dynamicCast:v7];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 entryData];
      v13 = [v12 getSize];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000FAE0;
      v15[3] = &unk_100050B48;
      v14 = *(a1 + 32);
      v16 = *(a1 + 40);
      [v11 fetchFileExtentsFrom:0 to:v13 usingBlocks:v14 replyHandler:v15];
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000FAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002F99C(a1);
  }
}

void sub_10000FEA4(uint64_t a1)
{
  v2 = [*(a1 + 32) systemInfo];
  v3 = [v2 bytesPerSector] + 1066;
  v4 = [*(a1 + 32) systemInfo];
  v5 = v3 / [v4 bytesPerSector];
  v6 = [*(a1 + 32) systemInfo];
  v7 = v5 * [v6 bytesPerSector];

  v8 = [[NSMutableData alloc] initWithLength:v7];
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = v7;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000B740;
  v32 = sub_10000B750;
  v33 = 0;
  v9 = [*(a1 + 32) fatManager];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000101DC;
  v22[3] = &unk_100050B98;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v24 = &v28;
  v25 = v34;
  v22[4] = v10;
  v26 = v36;
  v12 = v8;
  v23 = v12;
  v27 = v35;
  [v9 iterateClusterChainOfItem:v11 replyHandler:v22];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10000B740;
  v20 = sub_10000B750;
  v21 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100010378;
  v15[3] = &unk_100050840;
  v15[4] = &v28;
  v15[5] = &v16;
  [SymLinkItem verifyAndGetLink:v12 replyHandler:v15];
  v13 = *(a1 + 48);
  v14 = [FSFileName nameWithString:v17[5]];
  (*(v13 + 16))(v13, v14, v29[5]);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
}

void sub_10001018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 192), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000101DC(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    v9 = [*(a1 + 32) systemInfo];
    v10 = [v9 bytesPerCluster] * a4;

    v11 = *(*(*(a1 + 64) + 8) + 24);
    if (v10 < v11)
    {
      v11 = v10;
    }

    *(*(*(a1 + 56) + 8) + 24) = v11;
    v12 = [*(a1 + 32) resource];
    v13 = [*(a1 + 40) mutableBytes];
    v14 = *(*(*(a1 + 72) + 8) + 24);
    v15 = [*(a1 + 32) systemInfo];
    v16 = +[Utilities syncMetaReadFromDevice:into:startingAt:length:](Utilities, "syncMetaReadFromDevice:into:startingAt:length:", v12, &v13[v14], [v15 offsetForCluster:a3], *(*(*(a1 + 56) + 8) + 24));
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      *(*(*(a1 + 72) + 8) + 24) += *(*(*(a1 + 56) + 8) + 24);
      *(*(*(a1 + 64) + 8) + 24) -= *(*(*(a1 + 56) + 8) + 24);
      v19 = *(*(*(a1 + 64) + 8) + 24) < 1;
      goto LABEL_7;
    }
  }

  v19 = 1;
LABEL_7:

  return v19;
}

void sub_100010378(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_100010524(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) reclaim:0];
  (*(v1 + 16))(v1, v2);
}

void sub_10001095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100010980(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010A98;
  block[3] = &unk_100050C80;
  v3 = *(a1 + 32);
  v9 = *(a1 + 64);
  v4 = v9;
  v14 = v9;
  v15 = *(a1 + 80);
  *&v5 = v3;
  *(&v5 + 1) = *(a1 + 40);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v12 = v10;
  v13 = v8;
  dispatch_sync(v2, block);
}

void sub_100010A98(uint64_t a1)
{
  v2 = [*(a1 + 32) entryData];
  v3 = [v2 type];

  if (v3 != 2)
  {
LABEL_7:
    v12 = [*(a1 + 40) fatManager];
    [v12 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050BE0];

    v13 = *(*(*(a1 + 72) + 8) + 40);
    if (v13)
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100010F80;
      v42[3] = &unk_100050C08;
      v43 = *(a1 + 64);
      [v13 purgeMetaBlocksFromCache:v42];
    }

    v14 = [*(a1 + 48) markDirEntriesAsDeletedAndUpdateMtime:*(a1 + 32)];
    v15 = *(*(a1 + 80) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = sub_10000B740;
      v40 = sub_10000B750;
      v41 = 0;
      v17 = [*(a1 + 40) nameCachePool];
      v18 = *(a1 + 48);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_100010FE4;
      v35[3] = &unk_100050C30;
      v35[4] = &v36;
      [v17 getNameCacheForDir:v18 cachedOnly:1 replyHandler:v35];

      v19 = v37[5];
      if (v19)
      {
        v20 = [*(a1 + 56) data];
        v21 = [v20 bytes];
        v22 = [*(a1 + 56) data];
        v23 = [v22 length];
        v24 = [*(a1 + 32) entryData];
        [v19 removeDirEntryNamed:v21 ofLength:v23 offsetInDir:{objc_msgSend(v24, "firstEntryOffsetInDir")}];

        v25 = [*(a1 + 40) nameCachePool];
        [v25 doneWithNameCacheForDir:*(a1 + 48)];
      }

      v26 = [*(a1 + 40) itemCache];
      [v26 removeItem:*(a1 + 32)];

      [*(a1 + 48) setDirVersion:{objc_msgSend(*(a1 + 48), "dirVersion") + 1}];
      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v27 = [*(a1 + 48) volume];
        v28 = [v27 fatManager];
        v29 = [*(*(*(a1 + 72) + 8) + 40) numberOfClusters];
        v30 = *(*(*(a1 + 72) + 8) + 40);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100010FF8;
        v34[3] = &unk_100050C58;
        v34[4] = *(a1 + 80);
        [v28 freeClusters:v29 ofItem:v30 replyHandler:v34];
      }

      [*(a1 + 32) setDeleted];
      v31 = *(*(*(a1 + 80) + 8) + 40);
      (*(*(a1 + 64) + 16))();
      _Block_object_dispose(&v36, 8);
    }

    return;
  }

  v4 = [(FATItem *)DirItem dynamicCast:*(a1 + 32)];
  v5 = *(*(a1 + 72) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(*(a1 + 72) + 8) + 40);
  if (v7)
  {
    v8 = [v7 checkIfEmpty];
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 80) + 8) + 40))
    {
      v11 = *(*(a1 + 64) + 16);

      v11();
      return;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FD44();
  }

  v32 = *(a1 + 64);
  v33 = fs_errorForPOSIXError();
  (*(v32 + 16))(v32, v33);
}

void sub_100010F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010F34(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FDC8();
  }
}

void sub_100010F80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10002FE4C();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_10001176C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000117A0(uint64_t a1)
{
  v2 = [*(*(*(a1 + 112) + 8) + 40) entryData];
  v115 = 0;
  v116 = &v115;
  v117 = 0x3032000000;
  v118 = sub_10000B740;
  v119 = sub_10000B750;
  v120 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x3032000000;
  v112 = sub_10000B740;
  v113 = sub_10000B750;
  v114 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2020000000;
  v108 = 0;
  v102 = 0;
  v103[0] = &v102;
  v103[1] = 0x3032000000;
  v103[2] = sub_10000B740;
  v103[3] = sub_10000B750;
  v104 = 0;
  if ([v2 type] != 2 || (objc_msgSend(*(a1 + 32), "parentDir"), v3 = objc_claimAutoreleasedReturnValue(), +[FATItem dynamicCast:](DirItem, "dynamicCast:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
LABEL_5:
    v8 = [*(a1 + 40) fatManager];
    [v8 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050CA0];

    v9 = [*(a1 + 40) getAttrRequestForNewDirEntry];
    v77 = [*(*(*(a1 + 112) + 8) + 40) getAttributes:v9];
    v96 = 0;
    v97 = &v96;
    v98 = 0x3032000000;
    v99 = sub_10000B740;
    v100 = sub_10000B750;
    v101 = 0;
    v90 = 0;
    v91 = &v90;
    v92 = 0x3032000000;
    v93 = sub_10000B740;
    v94 = sub_10000B750;
    v95 = 0;
    v10 = [*(a1 + 40) nameCachePool];
    v11 = *(a1 + 32);
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10001267C;
    v89[3] = &unk_100050C30;
    v89[4] = &v90;
    [v10 getNameCacheForDir:v11 cachedOnly:1 replyHandler:v89];

    if (*(a1 + 48) && !*(a1 + 56))
    {
      v12 = *(a1 + 64);
      v13 = v91[5];
      v84[0] = _NSConcreteStackBlock;
      v84[1] = 3221225472;
      v84[2] = sub_100012690;
      v84[3] = &unk_100050998;
      v14 = *(a1 + 120);
      v87 = &v102;
      v88 = v14;
      v75 = *(a1 + 32);
      v15 = v75.i64[0];
      v85 = vextq_s8(v75, v75, 8uLL);
      v86 = *(a1 + 64);
      [v15 lookupDirEntryNamed:v12 dirNameCache:v13 lookupOffset:0 replyHandler:v84];
      v16 = *(v103[0] + 40);
      if (v16)
      {
        if ([v16 code] != 2)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100030060(v103);
          }

          v31 = 0;
          v21 = 0;
          v4 = 0;
          goto LABEL_54;
        }

        v17 = *(v103[0] + 40);
        *(v103[0] + 40) = 0;
      }
    }

    v18 = *(*(*(a1 + 120) + 8) + 40);
    if (!v18)
    {
      v21 = 0;
      v4 = 0;
      goto LABEL_19;
    }

    v4 = [v18 entryData];
    v19 = [v2 type];
    if (v19 != [v4 type])
    {
      if ([v2 type] == 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030168();
        }

        goto LABEL_53;
      }

      if ([v4 type] == 2)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000300E4();
        }

        goto LABEL_53;
      }
    }

    if ([v4 type] != 2)
    {
      v21 = 0;
LABEL_29:
      [*(a1 + 32) setDirVersion:{objc_msgSend(*(a1 + 32), "dirVersion") + 1}];
      v29 = [*(a1 + 32) markDirEntriesAsDeletedAndUpdateMtime:*(*(*(a1 + 120) + 8) + 40)];
      v30 = *(v103[0] + 40);
      *(v103[0] + 40) = v29;

      if (*(v103[0] + 40))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030270(v103);
        }

        goto LABEL_42;
      }

      [*(*(a1 + 40) + 80) removeItem:*(*(*(a1 + 120) + 8) + 40)];
      v35 = v91[5];
      if (v35)
      {
        v36 = [*(a1 + 64) data];
        v76 = [v36 bytes];
        v37 = [*(a1 + 64) data];
        v38 = [v37 length];
        v39 = [*(*(*(a1 + 120) + 8) + 40) entryData];
        [v35 removeDirEntryNamed:v76 ofLength:v38 offsetInDir:{objc_msgSend(v39, "firstEntryOffsetInDir")}];
      }

      v40 = *(*(*(a1 + 120) + 8) + 40);
      if (*(a1 + 56))
      {
        [v40 setDeleted];
      }

      else if ([v40 firstCluster])
      {
        v67 = [*(a1 + 32) volume];
        v68 = [v67 fatManager];
        v69 = [*(*(*(a1 + 120) + 8) + 40) numberOfClusters];
        v70 = *(*(*(a1 + 120) + 8) + 40);
        v83[0] = _NSConcreteStackBlock;
        v83[1] = 3221225472;
        v83[2] = sub_10001271C;
        v83[3] = &unk_100050C58;
        v83[4] = &v102;
        [v68 freeClusters:v69 ofItem:v70 replyHandler:v83];

        if (*(v103[0] + 40))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_1000302F4(v103);
          }

          goto LABEL_42;
        }
      }

LABEL_19:
      v24 = [(FATItem *)SymLinkItem dynamicCast:*(a1 + 48)];

      v25 = *(a1 + 32);
      v26 = *(a1 + 64);
      if (v24)
      {
        v27 = 3;
      }

      else
      {
        v27 = [v2 type];
      }

      v32 = [*(*(*(a1 + 112) + 8) + 40) firstCluster];
      v82[0] = _NSConcreteStackBlock;
      v82[1] = 3221225472;
      v82[2] = sub_10001272C;
      v82[3] = &unk_100050970;
      v82[4] = &v102;
      v82[5] = &v105;
      [v25 createNewDirEntryNamed:v26 type:v27 attributes:v77 firstDataCluster:v32 replyHandler:v82];
      if (*(v103[0] + 40))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000303FC(v103);
        }
      }

      else
      {
        [*(*(a1 + 40) + 80) removeItem:*(*(*(a1 + 112) + 8) + 40)];
        v33 = *(a1 + 32);
        v34 = *(a1 + 64);
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_1000127A8;
        v81[3] = &unk_100050778;
        v81[4] = &v102;
        v81[5] = &v115;
        [v33 lookupDirEntryNamed:v34 dirNameCache:0 lookupOffset:v106 + 3 replyHandler:v81];
        if (!*(v103[0] + 40))
        {
          [*(*(*(a1 + 112) + 8) + 40) setName:*(a1 + 64)];
          [*(*(*(a1 + 112) + 8) + 40) setParentDir:*(a1 + 32)];
          v46 = v91[5];
          if (v46)
          {
            v47 = [*(a1 + 64) data];
            v48 = [v47 bytes];
            v49 = [*(a1 + 64) data];
            v50 = [v49 length];
            v51 = [v46 insertDirEntryNamed:v48 ofLength:v50 offsetInDir:{objc_msgSend(v116[5], "firstEntryOffsetInDir")}];

            v52 = [*(a1 + 40) nameCachePool];
            [v52 doneWithNameCacheForDir:*(a1 + 32)];

            v53 = v91[5];
            v91[5] = 0;
          }

          v54 = [*(a1 + 40) nameCachePool];
          v55 = *(a1 + 72);
          v80[0] = _NSConcreteStackBlock;
          v80[1] = 3221225472;
          v80[2] = sub_10001282C;
          v80[3] = &unk_100050C30;
          v80[4] = &v96;
          [v54 getNameCacheForDir:v55 cachedOnly:1 replyHandler:v80];

          v56 = [*(a1 + 72) markDirEntriesAsDeletedAndUpdateMtime:*(*(*(a1 + 112) + 8) + 40)];
          v57 = *(v103[0] + 40);
          *(v103[0] + 40) = v56;

          if (*(v103[0] + 40) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100030504(v103);
          }

          v58 = v97[5];
          if (v58)
          {
            v59 = [*(a1 + 80) data];
            v74 = [v59 bytes];
            v60 = [*(a1 + 80) data];
            v61 = [v60 length];
            v62 = [*(*(*(a1 + 112) + 8) + 40) entryData];
            [v58 removeDirEntryNamed:v74 ofLength:v61 offsetInDir:{objc_msgSend(v62, "firstEntryOffsetInDir")}];

            v63 = [*(a1 + 40) nameCachePool];
            [v63 doneWithNameCacheForDir:*(a1 + 72)];
          }

          [*(*(*(a1 + 112) + 8) + 40) setEntryData:v116[5]];
          v64 = *(*(a1 + 40) + 80);
          v65 = *(*(*(a1 + 112) + 8) + 40);
          v79[0] = _NSConcreteStackBlock;
          v79[1] = 3221225472;
          v79[2] = sub_100012840;
          v79[3] = &unk_100050CC8;
          v79[4] = &v102;
          [v64 insertItem:v65 replyHandler:v79];
          if ([v2 type] != 2 || *(a1 + 88) == *(a1 + 96))
          {
            v31 = 0;
          }

          else
          {
            v31 = [(FATItem *)DirItem dynamicCast:*(*(*(a1 + 112) + 8) + 40)];
            v66 = [[FSFileName alloc] initWithCString:".."];
            v78[0] = _NSConcreteStackBlock;
            v78[1] = 3221225472;
            v78[2] = sub_1000128A0;
            v78[3] = &unk_100050778;
            v78[4] = &v102;
            v78[5] = &v109;
            [v31 lookupDirEntryNamed:v66 dirNameCache:0 lookupOffset:0 replyHandler:v78];

            if (*(v103[0] + 40))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_100030588(v103);
              }
            }

            else
            {
              v71 = v110[5];
              v72 = [*(a1 + 32) firstCluster];
              v73 = [*(a1 + 40) systemInfo];
              [v71 setFirstCluster:v72 fileSystemInfo:v73];
            }
          }

          [*(a1 + 72) setDirVersion:{objc_msgSend(*(a1 + 72), "dirVersion") + 1}];
          goto LABEL_54;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030480(v103);
        }
      }

      goto LABEL_42;
    }

    v20 = [(FATItem *)DirItem dynamicCast:*(*(*(a1 + 120) + 8) + 40)];
    v21 = v20;
    if (v20)
    {
      v22 = [v20 checkIfEmpty];
      v23 = *(v103[0] + 40);
      *(v103[0] + 40) = v22;

      if (*(v103[0] + 40))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000301EC(v103);
        }

LABEL_42:
        v31 = 0;
LABEL_54:
        if (v91[5])
        {
          v43 = [*(a1 + 40) nameCachePool];
          [v43 doneWithNameCacheForDir:*(a1 + 32)];
        }

        v44 = *(a1 + 64);
        v45 = *(v103[0] + 40);
        (*(*(a1 + 104) + 16))();
        _Block_object_dispose(&v90, 8);

        _Block_object_dispose(&v96, 8);
        goto LABEL_57;
      }

      goto LABEL_29;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030378();
    }

LABEL_53:
    v41 = fs_errorForPOSIXError();
    v42 = *(v103[0] + 40);
    *(v103[0] + 40) = v41;

    v31 = 0;
    v21 = 0;
    goto LABEL_54;
  }

  while (1)
  {
    v5 = [v4 firstCluster];
    if (v5 == [*(*(*(a1 + 112) + 8) + 40) firstCluster])
    {
      break;
    }

    v6 = [v4 parentDir];
    v7 = [(FATItem *)DirItem dynamicCast:v6];

    v4 = v7;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002FFDC();
  }

  v28 = *(a1 + 104);
  v21 = fs_errorForPOSIXError();
  (*(v28 + 16))(v28, 0, v21);
LABEL_57:

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v109, 8);

  _Block_object_dispose(&v115, 8);
}

void sub_1000125C4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100012630(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003060C();
  }
}

void sub_100012690(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 56) + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [*(a1 + 32) createFATItemWithParent:*(a1 + 40) name:*(a1 + 48) dirEntryData:a3];
    v10 = *(*(a1 + 64) + 8);
    v8 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_10001272C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v6 = v7;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

void sub_1000127A8(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100012840(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v5 = v6;
  }
}

void sub_1000128A0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_100012924(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000129D4;
  v3[3] = &unk_100050D40;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);
}

void sub_1000129D4(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012AAC;
    block[3] = &unk_100050D18;
    v6 = *(a1 + 32);
    dispatch_sync(v3, block);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_100012ABC(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012B70;
  block[3] = &unk_100050D68;
  v7 = *(a1 + 56);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_sync(v2, block);
}

void sub_100012B70(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) queue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100012C20;
  v3[3] = &unk_100050D40;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_sync(v2, v3);
}

void sub_100012C20(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    v3 = [v2 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012CF8;
    block[3] = &unk_100050D18;
    v6 = *(a1 + 32);
    dispatch_sync(v3, block);
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void sub_100012E38(uint64_t a1)
{
  v8 = objc_alloc_init(FSItemGetAttributesRequest);
  if ([Utilities containsReadOnlyAttributes:*(a1 + 32)])
  {
    v2 = *(a1 + 56);
    v3 = fs_errorForPOSIXError();
    v4 = *(v2 + 16);
    v5 = v2;
LABEL_5:
    v4(v5, 0, v3);
    goto LABEL_6;
  }

  v6 = [*(a1 + 40) fatManager];
  [v6 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050DB0];

  v7 = [*(a1 + 48) setAttributes:*(a1 + 32)];
  if (v7)
  {
    v3 = v7;
    v5 = *(a1 + 56);
    v4 = *(v5 + 16);
    goto LABEL_5;
  }

  [v8 setWantedAttributes:0x3FFFLL];
  v3 = [*(a1 + 48) getAttributes:v8];
  (*(*(a1 + 56) + 16))(*(a1 + 56), v3, 0);
LABEL_6:
}

void sub_100012F50(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030714();
  }
}

void sub_100013048(uint64_t a1)
{
  v2 = [*(a1 + 32) sync];
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030798();
  }

  v3 = [*(a1 + 32) systemInfo];
  if ([v3 type])
  {
    v4 = [*(a1 + 32) systemInfo];
    v5 = [v4 dirtyBitValue];

    if (v5 != 1)
    {
      v6 = v2;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = *(a1 + 48);
  v8 = [*(a1 + 32) resource];
  v9 = v8;
  if ((v7 & 2) != 0)
  {
    v15 = v2;
    v10 = &v15;
    [v8 asynchronousMetadataFlushWithError:&v15];
  }

  else
  {
    v14 = v2;
    v10 = &v14;
    [v8 metadataFlushWithError:&v14];
  }

  v6 = *v10;

  if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003081C(v6, (a1 + 48));
  }

LABEL_14:
  if (![*(a1 + 32) getNumberOfPreallocatedFiles] && !objc_msgSend(*(a1 + 32), "getNumberOfOpenUnlinkedFiles"))
  {
    v11 = [*(a1 + 32) fatManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013234;
    v12[3] = &unk_100050C08;
    v13 = *(a1 + 40);
    [v11 setDirtyBitValue:0 forceWriteToDisk:0 replyHandler:v12];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_100013234(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1000134C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000135A0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) systemInfo];
  v4 = [v3 type];

  if (v4)
  {
    v5 = [*v2 systemInfo];
    v6 = [v5 dirtyBitValue];

    if (v6)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100030ADC(v2);
      }
    }

    else
    {
      v7 = [*(a1 + 32) fatManager];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000136C4;
      v9[3] = &unk_100050C08;
      v10 = *(a1 + 40);
      [v7 setDirtyBitValue:0 forceWriteToDisk:1 replyHandler:v9];
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000136C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030BA4();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100013960(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100013A18;
  v7[3] = &unk_100050C08;
  v8 = *(a1 + 48);
  [v5 blockmapOffset:v1 length:v2 flags:v3 operationID:v4 packer:v6 replyHandler:v7];
}

void sub_100013A18(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030CAC();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100013BE8(void *a1)
{
  v2 = a1[7];
  v3 = a1[8];
  v5 = a1[4];
  v4 = a1[5];
  if (v4)
  {
    v6 = [v4 code];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 completeIOAtOffset:v2 length:v3 status:v6 flags:a1[9] operationID:a1[10]];
  (*(a1[6] + 16))();
}

void sub_100013FC8(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10000B740;
  v17 = sub_10000B750;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000B740;
  v11 = sub_10000B750;
  v12 = 0;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) data];
  v4 = [*(a1 + 32) rootItem];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100014174;
  v6[3] = &unk_100050EE0;
  v6[4] = &v7;
  v6[5] = &v13;
  [v2 setVolumeLabel:v3 rootDir:v4 replyHandler:v6];

  v5 = *(a1 + 48);
  if (v8[5])
  {
    (*(v5 + 16))(v5, 0);
  }

  else
  {
    (*(v5 + 16))(v5, v14[5]);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

void sub_100014150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100014174(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_100014374(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = a1[7];
    v7 = a1[4];
    v8 = a1[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001442C;
    v9[3] = &unk_100050F00;
    v9[4] = v6;
    v9[5] = a2;
    [v7 fetchFileExtentsFrom:v6 to:v6 + a2 usingBlocks:v8 replyHandler:v9];
  }

  (*(a1[6] + 16))();
}

void sub_10001442C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030DB4(a1);
  }
}

void sub_1000145F8(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10000B740;
  v13 = sub_10000B750;
  v14 = 0;
  v2 = [*(a1 + 32) fatManager];
  [v2 setDirtyBitValue:1 forceWriteToDisk:0 replyHandler:&stru_100050F48];

  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = (*(a1 + 64) & 4) == 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000147B8;
  v8[3] = &unk_100050970;
  v8[4] = &v9;
  v8[5] = &v15;
  [v3 preallocate:v4 allowPartial:v5 mustBeContig:0 replyHandler:v8];
  v6 = v16[3];
  v7 = v10[5];
  (*(*(a1 + 48) + 16))();
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

void sub_100014748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10001476C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100030F68();
  }
}

void sub_1000147B8(uint64_t a1, void *a2, uint64_t a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_10001493C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) reclaim:1];
  (*(v1 + 16))(v1, v2);
}

void sub_1000151C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000151E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000151FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100031070();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_10001526C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000310F4();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_100015988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000159B8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031548();
  }
}

void sub_100015A04(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000315CC();
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_100015F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100015F84(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10003186C();
  }
}

uint64_t sub_100015FD0(uint64_t result, int a2)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_100016484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000164CC(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

uint64_t fat_init(_DWORD *a1, uint64_t a2)
{
  fat_uninit();
  qword_10005A3B0 = a1;
  v9 = a1[19];
  v10 = sub_100016F3C;
  v11 = sub_100016E84;
  if (v9 != 4095)
  {
    if (v9 == 0xFFFFFFF)
    {
      v10 = sub_100017298;
      v11 = sub_1000171E0;
    }

    else
    {
      if (v9 != 0xFFFF)
      {
        v63 = fsck_ctx;
        v64 = qword_100059E30;
        fsck_print(&v63, 2, "Unknown cluster mask (0x%08X)\n", v4, v5, v6, v7, v8, v9);
        return 16;
      }

      v10 = sub_1000170F4;
      v11 = sub_100017054;
    }
  }

  fat_get = v11;
  fat_set = v10;
  if (initUseMap(a1))
  {
    return 16;
  }

  if (fsck_maxmem())
  {
    v17 = (fsck_maxmem() - qword_10005A3B8) >> 16;
  }

  else
  {
    v17 = (*a1 * a1[22] + 0xFFFF) >> 16;
  }

  qword_10005A3C0 = v17;
  if (!v17)
  {
    if (qword_10005A3E0)
    {
      free(qword_10005A3E0);
    }

    qword_10005A3E0 = 0;
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    v32 = "Calculated zero cache blocks\n";
    goto LABEL_32;
  }

  qword_10005A3C8 = malloc_type_calloc(v17, 0x20uLL, 0x10300409F66AF54uLL);
  if (!qword_10005A3C8)
  {
    if (qword_10005A3E0)
    {
      free(qword_10005A3E0);
    }

    qword_10005A3E0 = 0;
    v33 = __error();
    strerror(*v33);
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    v34 = "No memory for FAT cache headers\n";
    goto LABEL_31;
  }

  v18 = malloc_type_calloc(qword_10005A3C0, 0x10000uLL, 0x3F72BAD1uLL);
  qword_10005A3D0 = v18;
  if (!v18)
  {
    free(qword_10005A3C8);
    qword_10005A3C8 = 0;
    if (qword_10005A3E0)
    {
      free(qword_10005A3E0);
    }

    qword_10005A3E0 = 0;
    v35 = __error();
    strerror(*v35);
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    v34 = "No memory for FAT cache buffers\n";
LABEL_31:
    v60 = v34;
    v32 = "%s (%s)\n";
LABEL_32:
    fsck_print(&v63, 2, v32, v12, v13, v14, v15, v16, v60);
    return 16;
  }

  v19 = qword_10005A3C0;
  v20 = qword_10005A3C8;
  if (qword_10005A3C0)
  {
    v21 = qword_10005A3C8 + 32;
    do
    {
      *(v21 - 32) = -2;
      *(v21 - 16) = v18;
      if (v19 != 1)
      {
        *(v21 - 24) = v21;
      }

      v21 += 32;
      v18 += 0x10000;
      --v19;
    }

    while (v19);
  }

  qword_10005A3D8 = v20;
  v22 = fat_get(0, a2);
  if (v22 == -286331154)
  {
    return 16;
  }

  v28 = a1[19];
  v29 = v28 & v22;
  v30 = (a1[5] - 256) & v28;
  if (v29 == v30)
  {
    v31 = 0;
  }

  else
  {
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    fsck_print(&v63, 6, "Warning: FAT[0] is incorrect (is 0x%X; should be 0x%X)\n", v23, v24, v25, v26, v27, v29);
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    if (fsck_ask(&v63, 1, "Correct", v38, v39, v40, v41, v42, v61))
    {
      v43 = fat_set(0, v30, a2);
      v31 = v43 ? v43 : 4;
    }

    else
    {
      v31 = 8;
    }
  }

  v44 = fat_get(1, a2);
  if (v44 == -286331154)
  {
    return 16;
  }

  v50 = v44;
  v51 = a1[19];
  v52 = ~(v44 >> 10) & 0x20 | v31;
  if (v51 != 0xFFFF)
  {
    v52 = v31;
  }

  if (v51 == 0xFFFFFFF)
  {
    v36 = ~(v44 >> 22) & 0x20 | v31;
  }

  else
  {
    v36 = v52;
  }

  if (v51 == 4095)
  {
    v53 = 4095;
  }

  else
  {
    v53 = v51 >> 2;
  }

  if ((v53 & v44) < (v53 & 0x3FFFFFF8u))
  {
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    fsck_print(&v63, 6, "Warning: FAT[1] is incorrect\n", v45, v46, v47, v48, v49, v60);
    v63 = fsck_ctx;
    v64 = qword_100059E30;
    if (fsck_ask(&v63, 1, "Correct", v54, v55, v56, v57, v58, v62))
    {
      v59 = fat_set(1, v53 | v50, a2);
      if (v59)
      {
        return v59 | v36;
      }

      else
      {
        return v36 | 4;
      }
    }

    else
    {
      return v36 | 8;
    }
  }

  return v36;
}

void fat_uninit()
{
  if (qword_10005A3C8)
  {
    free(qword_10005A3C8);
    qword_10005A3C8 = 0;
  }

  if (qword_10005A3D0)
  {
    free(qword_10005A3D0);
    qword_10005A3D0 = 0;
  }

  if (qword_10005A3E0)
  {
    free(qword_10005A3E0);
  }

  qword_10005A3E0 = 0;
}

uint64_t sub_100016E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = 4008636142;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v16 = fsck_ctx;
    v17 = qword_100059E30;
    fsck_print(&v16, 3, "fat12_get: invalid cluster (%u)\n", a4, a5, a6, a7, a8, a1);
  }

  else
  {
    v10 = a1 + (a1 >> 1);
    v11 = sub_100017C34(v10, a2);
    if (v11)
    {
      v12 = *(*(v11 + 16) + v10);
      v13 = v12 >> 4;
      v14 = v12 & 0xFFF;
      if (v8)
      {
        v14 = v13;
      }

      if (v14 <= 0xFF5)
      {
        return v14;
      }

      else
      {
        return v14 | 0xFFFFF000;
      }
    }
  }

  return v9;
}

uint64_t sub_100016F3C(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v20 = fsck_ctx;
    v21 = qword_100059E30;
    fsck_print(&v20, 3, "fat16_set: invalid cluster (%u)\n", a4, a5, a6, a7, a8, a1);
  }

  else
  {
    v10 = a1 + (a1 >> 1);
    v11 = sub_100017C34(v10, a3);
    if (v11)
    {
      v12 = (*(v11 + 16) + v10);
      if (v8)
      {
        v13 = *v12 & 0xF | (16 * (a2 & 0xFFF));
      }

      else
      {
        v13 = a2 & 0xFFF | ((((v12[1] & 0xF0) >> 4) & 0xF) << 12);
      }

      *v12 = v13;
      v15 = 1 << v8;
      v16 = *(qword_10005A3E0 + 4 * (v8 >> 5));
      v17 = v16 & (1 << v8);
      if (v13)
      {
        if (!v17)
        {
          v18 = v16 | v15;
LABEL_13:
          *(qword_10005A3E0 + 4 * (v8 >> 5)) = v18;
        }
      }

      else if (v17)
      {
        v18 = v16 & ~v15;
        goto LABEL_13;
      }

      v14 = 0;
      *v11 |= 1u;
      return v14;
    }
  }

  return 16;
}

uint64_t sub_100017054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 4008636142;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v13 = fsck_ctx;
    v14 = qword_100059E30;
    fsck_print(&v13, 3, "fat16_get: invalid cluster (%u)\n", a4, a5, a6, a7, a8, a1);
  }

  else
  {
    v9 = 2 * a1;
    v10 = sub_100017C34(2 * a1, a2);
    if (v10)
    {
      v11 = *(*(v10 + 16) + (v9 & 0xFFFE));
      if (v11 <= 0xFFF5)
      {
        return *(*(v10 + 16) + (v9 & 0xFFFE));
      }

      else
      {
        return v11 | 0xFFFF0000;
      }
    }
  }

  return v8;
}

uint64_t sub_1000170F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v18 = fsck_ctx;
    v19 = qword_100059E30;
    fsck_print(&v18, 3, "fat16_set: invalid cluster (%u)\n", a4, a5, a6, a7, a8, a1);
  }

  else
  {
    v10 = 2 * a1;
    v11 = sub_100017C34(2 * a1, a3);
    if (v11)
    {
      *(*(v11 + 16) + (v10 & 0xFFFE)) = a2;
      v12 = 1 << v8;
      v13 = *(qword_10005A3E0 + 4 * (v8 >> 5));
      v14 = v13 & (1 << v8);
      if (a2)
      {
        if (!v14)
        {
          v15 = v13 | v12;
LABEL_10:
          *(qword_10005A3E0 + 4 * (v8 >> 5)) = v15;
        }
      }

      else if (v14)
      {
        v15 = v13 & ~v12;
        goto LABEL_10;
      }

      v16 = 0;
      *v11 |= 1u;
      return v16;
    }
  }

  return 16;
}

uint64_t sub_1000171E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 4008636142;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v13 = fsck_ctx;
    v14 = qword_100059E30;
    fsck_print(&v13, 3, "fat32_get: invalid cluster (%u)\n", a4, a5, a6, a7, a8, a1);
  }

  else
  {
    v9 = 4 * a1;
    v10 = sub_100017C34(4 * a1, a2);
    if (v10)
    {
      v11 = (*(*(v10 + 16) + (v9 & 0xFFFC)) | (*(*(v10 + 16) + (v9 & 0xFFFC) + 2) << 16)) & 0xF0FFFFFF | ((*(*(v10 + 16) + (v9 & 0xFFFC) + 3) & 0xF) << 24);
      if (v11 <= 0xFFFFFF5)
      {
        return v11;
      }

      else
      {
        return v11 | 0xF0000000;
      }
    }
  }

  return v8;
}

uint64_t sub_100017298(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (*(qword_10005A3B0 + 80) <= a1)
  {
    v19 = fsck_ctx;
    v20 = qword_100059E30;
    fsck_print(&v19, 3, "fat32_set: invalid cluster (%u)\n", a4, a5, a6, a7, a8, a1);
  }

  else
  {
    v10 = 4 * a1;
    v11 = sub_100017C34(4 * a1, a3);
    if (v11)
    {
      v12 = *(v11 + 16) + (v10 & 0xFFFC);
      *v12 = a2;
      *(v12 + 2) = BYTE2(a2);
      *(v12 + 3) = *(v12 + 3) & 0xF0 | HIBYTE(a2) & 0xF;
      v13 = 1 << v8;
      v14 = *(qword_10005A3E0 + 4 * (v8 >> 5));
      v15 = v14 & (1 << v8);
      if (a2)
      {
        if (!v15)
        {
          v16 = v14 | v13;
LABEL_10:
          *(qword_10005A3E0 + 4 * (v8 >> 5)) = v16;
        }
      }

      else if (v15)
      {
        v16 = v14 & ~v13;
        goto LABEL_10;
      }

      v17 = 0;
      *v11 |= 1u;
      return v17;
    }
  }

  return 16;
}

BOOL initUseMap(uint64_t a1)
{
  v1 = *(a1 + 80) + 31;
  if (qword_10005A3E0)
  {
    free(qword_10005A3E0);
  }

  qword_10005A3B8 = (v1 & 0xFFFFFFE0) >> 3;
  if (fsck_maxmem() && (v2 = fsck_maxmem(), v3 = qword_10005A3B8, v2 < qword_10005A3B8 + 0x10000))
  {
    fsck_maxmem();
    v11 = fsck_ctx;
    v12 = qword_100059E30;
    fsck_print(&v11, 2, "Cannot allocate %zd bytes for usemap (maxmem=%zd, clusters=%d)\nmaxmem must be at least %zd\n", v4, v5, v6, v7, v8, v3);
    v9 = 0;
  }

  else
  {
    v9 = malloc_type_calloc(v1 >> 5, 4uLL, 0x100004052888210uLL);
  }

  qword_10005A3E0 = v9;
  return v9 == 0;
}

void freeUseMap()
{
  if (qword_10005A3E0)
  {
    free(qword_10005A3E0);
  }

  qword_10005A3E0 = 0;
}

uint64_t fat_flush(uint64_t a1)
{
  v1 = qword_10005A3C0;
  if (!qword_10005A3C0)
  {
    return 0;
  }

  v3 = 0;
  v4 = &unk_10005A000;
  v5 = *(qword_10005A3B0 + 72) & ~(*(qword_10005A3B0 + 72) >> 31);
  v6 = qword_10005A3C8;
  while (1)
  {
    v7 = (v6 + 32 * v3);
    v8 = *v7;
    if (v8)
    {
      break;
    }

LABEL_13:
    if (v1 <= ++v3)
    {
      return 0;
    }
  }

  v9 = v7[6];
  if (!v9)
  {
LABEL_12:
    *(v6 + 32 * v3) &= ~1u;
    v1 = qword_10005A3C0;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = v4;
  v12 = v5;
  v13 = ((*(v4[118] + 8) + *(v4[118] + 88) * v5) * *v4[118]) + ((v8 << 15) & 0x7FFF0000);
  while (1)
  {
    v14 = v9 >= 0x4000 ? 0x4000 : v9;
    if ((*(a1 + 40))(*(a1 + 24), *(qword_10005A3C8 + 32 * v3 + 16) + v10, v14, v13 + v10) != v14)
    {
      break;
    }

    v10 += v14;
    v9 -= v14;
    if (!v9)
    {
      v6 = qword_10005A3C8;
      v4 = v11;
      v5 = v12;
      goto LABEL_12;
    }
  }

  v16 = __error();
  strerror(*v16);
  v22 = fsck_ctx;
  v23 = qword_100059E30;
  fsck_print(&v22, 2, "%s (%s)\n", v17, v18, v19, v20, v21, "Unable to write FAT");
  return 16;
}

uint64_t fat_free_unused(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(qword_10005A3B0 + 80) < 3u)
  {
LABEL_19:
    v20 = 0;
    goto LABEL_20;
  }

  v9 = 0;
  v10 = 0;
  v11 = 2;
  do
  {
    v12 = fat_get(v11, a1);
    if (v12 == -286331154)
    {
      break;
    }

    if (((*(qword_10005A3E0 + 4 * (v11 >> 5)) >> v11) & 1) == 0)
    {
      if (v12 == -9)
      {
        v19 = 112;
      }

      else
      {
        if (v12)
        {
          if (!v10)
          {
            v32 = fsck_ctx;
            v33 = qword_100059E30;
            fsck_print(&v32, 6, "Warning: Found orphan cluster(s)\n", a4, a5, a6, a7, a8, v29);
            v32 = fsck_ctx;
            v33 = qword_100059E30;
            v9 = fsck_ask(&v32, 1, "Fix", v13, v14, v15, v16, v17, v30);
          }

          v10 = (v10 + 1);
          if (!v9)
          {
            goto LABEL_14;
          }

          v18 = fat_set(v11, 0, a1);
          if (v18)
          {
            v20 = v18;
            if (!v10)
            {
              goto LABEL_20;
            }

LABEL_18:
            v32 = fsck_ctx;
            v33 = qword_100059E30;
            fsck_print(&v32, 6, "Warning: Marked %u clusters as free\n", a4, a5, a6, a7, a8, v10);
            v20 = v20 | 4;
            goto LABEL_20;
          }
        }

        v19 = 108;
      }

      ++*(qword_10005A3B0 + v19);
    }

LABEL_14:
    v11 = (v11 + 1);
  }

  while (v11 < *(qword_10005A3B0 + 80));
  if (!v10)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    LODWORD(v20) = 0;
    goto LABEL_18;
  }

  v32 = fsck_ctx;
  v33 = qword_100059E30;
  fsck_print(&v32, 6, "Warning: Found %u orphaned clusters\n", a4, a5, a6, a7, a8, v10);
  v20 = 8;
LABEL_20:
  if (*(qword_10005A3B0 + 48))
  {
    v21 = *(qword_10005A3B0 + 60);
    v22 = *(qword_10005A3B0 + 108);
    if (v21 != v22)
    {
      v32 = fsck_ctx;
      v33 = qword_100059E30;
      if (v21 == -1)
      {
        fsck_print(&v32, 6, "Warning: Free space in FSInfo block is unset (should be %d)\n", a4, a5, a6, a7, a8, v22);
      }

      else
      {
        fsck_print(&v32, 6, "Warning: Free space in FSInfo block (%d) not correct (%d)\n", a4, a5, a6, a7, a8, v21);
      }

      v32 = fsck_ctx;
      v33 = qword_100059E30;
      if (fsck_ask(&v32, 1, "Fix", v23, v24, v25, v26, v27, v31))
      {
        *(qword_10005A3B0 + 60) = *(qword_10005A3B0 + 108);
        return writefsinfo() | v20;
      }
    }
  }

  return v20;
}

uint64_t isdirty(unsigned int *a1, int a2, uint64_t a3)
{
  if (a1[19] != 4095)
  {
    v6 = malloc_type_malloc(*a1, 0xE1FCEED2uLL);
    if (v6)
    {
      v7 = v6;
      v8 = *a1;
      if (v8)
      {
        v9 = 0;
        v10 = v8 * (a1[2] + a1[22] * a2);
        while (1)
        {
          v11 = v8 >= 0x4000 ? 0x4000 : v8;
          if ((*(a3 + 32))(*(a3 + 24), &v7[v9], v11, v9 + v10) != v11)
          {
            break;
          }

          v12 = *(a3 + 64);
          if (v12 >= 1 && pwrite(v12, &v7[v9], v11, v9 + v10) != v11)
          {
            v13 = *__error();
            v34 = fsck_ctx;
            v35 = qword_100059E30;
            fsck_print(&v34, 6, "Failed to shadow at offset 0x%llx, length 0x%zx (errno %d)", v14, v15, v16, v17, v18, v9 + v10);
          }

          v9 += v11;
          v8 -= v11;
          if (!v8)
          {
            goto LABEL_13;
          }
        }

        v27 = __error();
        strerror(*v27);
        v34 = fsck_ctx;
        v35 = qword_100059E30;
        fsck_print(&v34, 2, "%s (%s)\n", v28, v29, v30, v31, v32, "Unable to read FAT");
      }

      else
      {
LABEL_13:
        v19 = a1[19];
        if (v19 == 0xFFFF)
        {
          v20 = v7[3] >= 0;
          goto LABEL_21;
        }

        if (v19 == 0xFFFFFFF)
        {
          v20 = (v7[7] & 8) == 0;
LABEL_21:
          free(v7);
          return v20;
        }
      }

      v20 = 1;
      goto LABEL_21;
    }

    v21 = __error();
    strerror(*v21);
    v34 = fsck_ctx;
    v35 = qword_100059E30;
    fsck_print(&v34, 2, "%s (%s)\n", v22, v23, v24, v25, v26, "No space for FAT sector");
  }

  return 1;
}

uint64_t fat_mark_clean(uint64_t a1)
{
  if (*(qword_10005A3B0 + 76) == 4095)
  {
    return 0;
  }

  v3 = fat_get(1, a1);
  if (v3 == -286331154)
  {
    return 8;
  }

  if (*(qword_10005A3B0 + 76) == 0xFFFF)
  {
    v4 = 0x8000;
  }

  else
  {
    v4 = 0x8000000;
  }

  v5 = fat_set;

  return v5(1, v4 | v3, a1);
}

const char *rsrvdcltype(unsigned int a1)
{
  v1 = "reserved";
  v2 = "as EOF";
  if (a1 == -9)
  {
    v2 = "bad";
  }

  if (a1 >= 0xFFFFFFF7)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "free";
  }
}

uint64_t markUsed(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 5;
  result = 1;
  v4 = 1 << v1;
  v5 = *(qword_10005A3E0 + 4 * v2);
  if ((v5 & v4) == 0)
  {
    result = 0;
    *(qword_10005A3E0 + 4 * v2) = v5 | v4;
  }

  return result;
}

uint64_t markFree(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 5;
  result = 1;
  v4 = 1 << v1;
  v5 = *(qword_10005A3E0 + 4 * v2);
  if ((v5 & v4) != 0)
  {
    result = 0;
    *(qword_10005A3E0 + 4 * v2) = v5 & ~v4;
  }

  return result;
}

uint64_t sub_100017C34(unsigned int a1, uint64_t a2)
{
  v3 = 0;
  v4 = HIWORD(a1);
  v5 = *(qword_10005A3B0 + 88);
  v6 = *qword_10005A3B0 * v5;
  v7 = a1 & 0xFFFF0000;
  v8 = v6 - (a1 & 0xFFFF0000);
  if (v8 >= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v8;
  }

  v10 = qword_10005A3D8;
  do
  {
    v11 = v10;
    v12 = v3;
    v13 = *v10;
    if (v4 == v13 >> 1)
    {
      goto LABEL_27;
    }

    v10 = *(v10 + 1);
    v3 = v11;
  }

  while (v10);
  v14 = *(qword_10005A3B0 + 72) & ~(*(qword_10005A3B0 + 72) >> 31);
  if (v13)
  {
    v15 = *(v11 + 24);
    if (v15)
    {
      v40 = *qword_10005A3B0 * v5;
      v41 = a1 & 0xFFFF0000;
      v16 = 0;
      v39 = *(qword_10005A3B0 + 72) & ~(*(qword_10005A3B0 + 72) >> 31);
      v17 = ((*(qword_10005A3B0 + 8) + v14 * v5) * *qword_10005A3B0) + ((v13 << 15) & 0x7FFF0000);
      while (1)
      {
        v18 = v15 >= 0x4000 ? 0x4000 : v15;
        if ((*(a2 + 40))(*(a2 + 24), *(v11 + 16) + v16, v18, v17 + v16) != v18)
        {
          break;
        }

        v16 += v18;
        v15 -= v18;
        if (!v15)
        {
          LODWORD(v13) = *v11;
          v6 = v40;
          v7 = v41;
          v14 = v39;
          goto LABEL_16;
        }
      }

      v37 = __error();
      strerror(*v37);
      v42 = fsck_ctx;
      v43 = qword_100059E30;
      v36 = "Unable to write FAT";
      goto LABEL_33;
    }

LABEL_16:
    *v11 = v13 & 0xFFFFFFFE;
  }

  *v11 = 2 * v4;
  *(v11 + 24) = v9;
  if (v6 != v7)
  {
    v19 = 0;
    v20 = ((*(qword_10005A3B0 + 8) + *(qword_10005A3B0 + 88) * v14) * *qword_10005A3B0) + v7;
    while (1)
    {
      v21 = v9 >= 0x4000 ? 0x4000 : v9;
      if ((*(a2 + 32))(*(a2 + 24), *(v11 + 16) + v19, v21, v20 + v19) != v21)
      {
        break;
      }

      v22 = *(a2 + 64);
      if (v22 >= 1 && pwrite(v22, (*(v11 + 16) + v19), v21, v20 + v19) != v21)
      {
        v23 = *__error();
        v42 = fsck_ctx;
        v43 = qword_100059E30;
        fsck_print(&v42, 6, "Failed to shadow at offset 0x%llx, length 0x%zx (errno %d)", v24, v25, v26, v27, v28, v20 + v19);
      }

      v19 += v21;
      v9 -= v21;
      if (!v9)
      {
        goto LABEL_27;
      }
    }

    v30 = __error();
    strerror(*v30);
    v42 = fsck_ctx;
    v43 = qword_100059E30;
    v36 = "Unable to read FAT";
LABEL_33:
    fsck_print(&v42, 2, "%s (%s)\n", v31, v32, v33, v34, v35, v36);
    return 0;
  }

LABEL_27:
  v29 = qword_10005A3D8;
  if (v11 != qword_10005A3D8)
  {
    if (v12)
    {
      *(v12 + 8) = *(v11 + 8);
    }

    *(v11 + 8) = v29;
    qword_10005A3D8 = v11;
  }

  return v11;
}

void sub_100018310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v12 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100018358(void *a1, void *a2, int a3, int a4)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(a1[4] + 8) + 40), a2);
    v8 = v9;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a4;
    *(*(a1[6] + 8) + 24) = a3;
  }
}

void sub_1000193B4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031DC8();
  }
}

void sub_100019400(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031E4C();
  }
}

void sub_10001944C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031ED0();
  }
}

void sub_100019498(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031E4C();
  }
}

void sub_1000194E4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100031F54(v2);
  }
}

void sub_100019FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100019FD4(void *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100032174();
    }

    (*(a1[4] + 16))();
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *(*(a1[6] + 8) + 24) = a4;
  }
}

void sub_10001AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

void *sub_10001AD90(void *result, int a2, int a3)
{
  *(*(result[4] + 8) + 24) += a2;
  if (*(*(result[5] + 8) + 24) == 1)
  {
    *(*(result[6] + 8) + 24) = a3;
    *(*(result[5] + 8) + 24) = 0;
  }

  return result;
}

void sub_10001B6CC(uint64_t a1)
{
  v86 = -[FATBlock initWithOffset:andLength:]([FATBlock alloc], "initWithOffset:andLength:", 0, [*(a1 + 32) rwSize]);
  v2 = -[FATBlock initWithOffset:andLength:]([FATBlock alloc], "initWithOffset:andLength:", 0, [*(a1 + 32) rwSize]);
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = 0;
  v104 = 0;
  v105[0] = &v104;
  v105[1] = 0x2020000000;
  v106 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = sub_10001C128;
  v102 = sub_10001C138;
  v103 = 0;
  v85 = *(a1 + 48);
  v3 = [*(a1 + 32) fsInfo];
  v4 = [v3 freeClusters] < v85;

  if (v4)
  {
    if (*(a1 + 56) != 1 || ([*(a1 + 32) fsInfo], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "freeClusters") == 0, v5, v6))
    {
      v11 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v77 = *(a1 + 56);
        v78 = [*(a1 + 32) fsInfo];
        v79 = [v78 freeClusters];
        *buf = 136315906;
        v120 = "[FATManager allocateClusters:searchFromCluster:allowPartial:zeroFill:mustBeContig:replyHandler:]_block_invoke";
        v121 = 1024;
        v122 = v77;
        v123 = 1024;
        *v124 = v85;
        *&v124[4] = 2048;
        *&v124[6] = v79;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: (allowPartial = %d) %u clusters requested,but only %llu are available. Returning ENOSPC.", buf, 0x22u);
      }

      v12 = *(a1 + 40);
      v13 = fs_errorForPOSIXError();
      (*(v12 + 16))(v12, v13, 0, 0, 0);

      goto LABEL_44;
    }

    v7 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v80 = [*(a1 + 32) fsInfo];
      v81 = [v80 freeClusters];
      v82 = [*(a1 + 32) fsInfo];
      v83 = [v82 freeClusters];
      *buf = 136315906;
      v120 = "[FATManager allocateClusters:searchFromCluster:allowPartial:zeroFill:mustBeContig:replyHandler:]_block_invoke";
      v121 = 1024;
      v122 = v85;
      v123 = 2048;
      *v124 = v81;
      *&v124[8] = 2048;
      *&v124[10] = v83;
      _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: (allowPartial = true) %u clusters requested,but only %llu are available. Will try to allocate %llu clusters.", buf, 0x26u);
    }

    v8 = [*(a1 + 32) fsInfo];
    v9 = [v8 freeClusters];

    LODWORD(v85) = v9;
  }

  if (v85)
  {
    v10 = *(a1 + 52);
    if (v10)
    {
      *(v105[0] + 24) = v10;
    }

    else
    {
      v14 = [*(a1 + 32) fsInfo];
      v15 = [v14 firstFreeCluster];
      v16 = [*(a1 + 32) fsInfo];
      v17 = [v16 maxValidCluster] > v15;

      if (v17)
      {
        v18 = [*(a1 + 32) fsInfo];
        v19 = [v18 firstFreeCluster];
        *(v105[0] + 24) = v19;
      }
    }

    v20 = 0;
    v84 = v89;
    do
    {
      v21 = *(a1 + 32);
      v22 = *(v105[0] + 24);
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_10001C140;
      v97[3] = &unk_1000510F0;
      v97[4] = &v98;
      v97[5] = &v104;
      [v21 findNextFreeCluster:v22 replyHandler:{v97, v84}];
      if (v99[5])
      {
        break;
      }

      v23 = [*(a1 + 32) getRWOffsetForClusterEntry:*(v105[0] + 24)];
      [(FATBlock *)v2 setStartOffset:v23];
      v24 = [(FATBlock *)v2 data];
      v25 = v24 == 0;

      if (!v25)
      {
        v26 = [(FATBlock *)v2 data];
        v27 = v26;
        [v26 mutableBytes];
      }

      v28 = *(a1 + 32);
      v29 = [(FATBlock *)v2 data];
      v30 = v29;
      v31 = [v28 syncMetaReadFromFAT:objc_msgSend(v29 startingAt:{"mutableBytes"), v23}];
      v32 = v99[5];
      v99[5] = v31;

      v33 = [*(a1 + 32) getRWOffsetForClusterEntry:v20];
      if (v20)
      {
        v34 = v33;
        if (v33 == v23)
        {
          v35 = v2;

          v86 = v35;
          [(FATBlock *)v35 data];
        }

        else
        {
          [(FATBlock *)v86 setStartOffset:v33];
          v36 = *(a1 + 32);
          v37 = [(FATBlock *)v86 data];
          v38 = v37;
          v39 = [v36 syncMetaReadFromFAT:objc_msgSend(v37 startingAt:{"mutableBytes"), v34}];
          v40 = v99[5];
          v99[5] = v39;

          if (v99[5])
          {
            break;
          }

          [(FATBlock *)v86 data];
        }
        v41 = ;
        v42 = v41;
        v43 = [v41 mutableBytes];
        v44 = [*(a1 + 32) getOffsetForClusterEntry:v20];

        v45 = [(FATBlock *)v2 data];
        v46 = v45;
        v47 = [v45 mutableBytes];
        v48 = [*(a1 + 32) getOffsetForClusterEntry:*(v105[0] + 24)];

        v49 = [*(a1 + 32) fsOps];
        LODWORD(v48) = [v49 getNextClusterFromEntryForCluster:*(v105[0] + 24) entry:&v47[v48 - v23]];

        if (v48)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10003239C(v105);
          }

          goto LABEL_36;
        }

        v50 = [*(a1 + 32) fsOps];
        v51 = *(v105[0] + 24);
        v52 = [*(a1 + 32) fsInfo];
        [v50 setFatEntryForCluster:v20 entry:&v43[v44 - v34] withValue:{objc_msgSend(v52, "FATMask") & v51}];

        v53 = *(a1 + 32);
        v54 = [(FATBlock *)v86 data];
        v55 = v54;
        v56 = [v53 metaWriteToFATs:objc_msgSend(v54 startingAt:{"mutableBytes"), v34}];
        v57 = v99[5];
        v99[5] = v56;

        if (v99[5])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
          {
            sub_10003243C();
          }

LABEL_36:
          v67 = fs_errorForPOSIXError();
          v68 = v99[5];
          v99[5] = v67;

          break;
        }
      }

      v58 = *(a1 + 32);
      v59 = [(FATBlock *)v2 data];
      v60 = v59;
      v61 = [v59 mutableBytes];
      v62 = (v85 - *(v108 + 6));
      v63 = *(v105[0] + 24);
      v64 = *(a1 + 57);
      v88[0] = _NSConcreteStackBlock;
      v88[1] = 3221225472;
      v89[0] = sub_10001C1A0;
      v89[1] = &unk_100051118;
      v91 = *(a1 + 40);
      v92 = &v115;
      v93 = &v104;
      v94 = &v107;
      v95 = &v111;
      v89[2] = *(a1 + 32);
      v90 = v2;
      v96 = v23;
      [v58 allocateClustersInBlock:v61 numClusters:v62 startingAtCluster:v63 startOffset:v23 mustBeContig:v64 replyHandler:v88];

      v20 = *(v112 + 6);
      v65 = (v20 + 1);
      *(v105[0] + 24) = v65;
      v66 = [*(a1 + 32) fsInfo];
      LODWORD(v65) = [v66 maxValidCluster] < v65;

      if (v65)
      {
        *(v105[0] + 24) = 2;
      }
    }

    while (*(v108 + 6) < v85);
    if (!v99[5])
    {
      if (!*(a1 + 52) || (v69 = *(v105[0] + 24), [*(a1 + 32) fsInfo], v70 = objc_claimAutoreleasedReturnValue(), v71 = v69 > objc_msgSend(v70, "firstFreeCluster"), v70, v71))
      {
        v72 = *(a1 + 32);
        v73 = *(v105[0] + 24);
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10001C2F8;
        v87[3] = &unk_100051140;
        v87[4] = v72;
        [v72 findNextFreeCluster:v73 replyHandler:v87];
      }
    }

    if (!v99[5])
    {
      v74 = *(v116 + 6);
      v75 = *(v112 + 6);
      v76 = *(v108 + 6);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

LABEL_44:
  _Block_object_dispose(&v98, 8);

  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
}

void sub_10001C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 256), 8);
  _Block_object_dispose((v43 - 224), 8);
  _Block_object_dispose((v43 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001C128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001C140(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = a3;
}

void sub_10001C1A0(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v7 = a2;
  if (v7)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (a3)
  {
    v8 = *(*(a1 + 56) + 8);
    if (!*(v8 + 24))
    {
      *(v8 + 24) = *(*(*(a1 + 64) + 8) + 24);
    }

    *(*(*(a1 + 72) + 8) + 24) += a3;
    *(*(*(a1 + 80) + 8) + 24) = a4;
    v9 = [*(a1 + 32) fsInfo];
    [v9 setFreeClusters:{objc_msgSend(v9, "freeClusters") - a3}];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) data];
    v12 = [v10 syncMetaWriteToFATs:objc_msgSend(v11 startingAt:{"mutableBytes"), *(a1 + 88)}];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000324C0();
    }

    v13 = *(a1 + 48);
    v14 = fs_errorForPOSIXError();
    (*(v13 + 16))(v13, v14, 0, 0, 0);
  }
}

void sub_10001C2F8(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v6 = [*(a1 + 32) fsInfo];
  v8 = v6;
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  [v6 setFirstFreeCluster:v7];
}

void sub_10001C660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001C678(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = a2;
  if (a5)
  {
    if ([*(a1 + 32) numberOfClusters])
    {
      v9 = [*(a1 + 40) getRWOffsetForClusterEntry:{objc_msgSend(*(a1 + 32), "lastCluster")}];
      v10 = [*(a1 + 40) syncMetaReadFromFAT:objc_msgSend(*(a1 + 48) startingAt:{"mutableBytes"), v9}];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
        goto LABEL_5;
      }

      v13 = [*(a1 + 48) mutableBytes];
      v14 = ([*(a1 + 40) getOffsetForClusterEntry:{objc_msgSend(*(a1 + 32), "lastCluster")}] + v13 - v9);
      v15 = [*(a1 + 40) fsOps];
      v16 = [*(a1 + 32) lastCluster];
      v17 = [*(a1 + 40) fsInfo];
      [v15 setFatEntryForCluster:v16 entry:v14 withValue:{objc_msgSend(v17, "FATMask") & a3}];

      v18 = [*(a1 + 40) metaWriteToFATs:objc_msgSend(*(a1 + 48) startingAt:{"mutableBytes"), v9}];
      v19 = *(*(a1 + 64) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      if (*(*(*(a1 + 64) + 8) + 40))
      {
LABEL_5:
        v21 = *(*(a1 + 56) + 16);
        goto LABEL_9;
      }
    }

    else
    {
      [*(a1 + 32) setFirstCluster:a3];
    }

    [*(a1 + 32) setLastCluster:a4];
    [*(a1 + 32) setFirstClusterIndexInLastAllocation:{objc_msgSend(*(a1 + 32), "numberOfClusters")}];
    [*(a1 + 32) setFirstClusterInLastAllocation:a3];
    [*(a1 + 32) setNumberOfClusters:{objc_msgSend(*(a1 + 32), "numberOfClusters") + a5}];
  }

  v21 = *(*(a1 + 56) + 16);
LABEL_9:
  v21();
}

void sub_10001C988(uint64_t a1)
{
  v2 = [[NSMutableData alloc] initWithLength:{objc_msgSend(*(a1 + 32), "rwSize")}];
  v3 = [*(a1 + 40) firstCluster];
  v4 = *(a1 + 56);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1000325C8();
    }

    goto LABEL_13;
  }

  v5 = v3;
  v6 = v4 <= [*(a1 + 40) numberOfClusters] && v5 >= 2;
  if (!v6 || ([*(a1 + 32) fsInfo], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "maxValidCluster"), v7, v8 < v5))
  {
LABEL_13:
    v14 = *(a1 + 48);
LABEL_14:
    v15 = fs_errorForPOSIXError();
    (*(v14 + 16))(v14, v15);

    goto LABEL_15;
  }

  if (!v2)
  {
    v14 = *(a1 + 48);
    goto LABEL_14;
  }

  v9 = [*(a1 + 40) numberOfClusters];
  if (v9 == *(a1 + 56))
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v56 = 0;
    v13 = 0;
LABEL_26:
    if (v10 == [*(a1 + 40) numberOfClusters])
    {
      v5 = [*(a1 + 40) firstCluster];
      v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
      v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
      v24 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
      if (v24)
      {
        goto LABEL_32;
      }
    }

    if (v11 != [*(a1 + 32) getRWOffsetForClusterEntry:v5])
    {
      v27 = [*(a1 + 40) numberOfClusters];
      v26 = *(a1 + 56);
      if (v13 != v27 + ~v26)
      {
        goto LABEL_33;
      }

      v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
      v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
      v24 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
      if (v24)
      {
LABEL_32:
        v28 = v24;
        (*(*(a1 + 48) + 16))();

        goto LABEL_15;
      }
    }

    v26 = *(a1 + 56);
LABEL_33:
    v29 = 0;
    if (v26)
    {
      *&v25 = 136315906;
      v55 = v25;
      v57 = v2;
      do
      {
        v30 = [*(a1 + 32) fsInfo];
        v31 = [v30 maxValidCluster];

        if (v31 < v5)
        {
          break;
        }

        if (v12 >= v11)
        {
          v32 = v5;
          while (1)
          {
            v33 = v12 - v11;
            if (v12 - v11 >= [*(a1 + 32) rwSize])
            {
              break;
            }

            if (v29 >= *(a1 + 56))
            {
              break;
            }

            v34 = [*(a1 + 32) fsInfo];
            v35 = [v34 maxValidCluster];

            if (v35 < v32)
            {
              break;
            }

            v36 = [v2 mutableBytes];
            v37 = [*(a1 + 32) fsOps];
            v5 = [v37 getNextClusterFromEntryForCluster:v32 entry:&v36[v33]];

            if (!v5)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v44 = [*(a1 + 40) firstCluster];
                v45 = [*(a1 + 40) lastCluster];
                v46 = [*(a1 + 40) numberOfClusters];
                *buf = 136316162;
                v60 = "[FATManager freeClusters:ofItem:replyHandler:]_block_invoke";
                v61 = 1024;
                v62 = v32;
                v63 = 1024;
                v64 = v44;
                v65 = 1024;
                v66 = v45;
                v67 = 1024;
                v68 = v46;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: cluster %u is free where it should be in use. Item stats [%u, %u, %u]", buf, 0x24u);
              }

              goto LABEL_50;
            }

            v58 = [*(a1 + 32) isEOFCluster:v5];
            [*(a1 + 32) fsOps];
            v39 = v38 = v29;
            v40 = [*(a1 + 32) fsInfo];
            [v40 FATMask];
            v41 = &v36[v33];
            v42 = v32;
            [v39 setFatEntryForCluster:v32 entry:v41 withValue:0];

            v43 = [*(a1 + 32) fsInfo];
            [v43 setFreeClusters:{objc_msgSend(v43, "freeClusters") + 1}];

            v29 = v38 + 1;
            if (v58 && v29 != *(a1 + 56))
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v49 = *(a1 + 56);
                *buf = v55;
                v60 = "[FATManager freeClusters:ofItem:replyHandler:]_block_invoke";
                v61 = 1024;
                v32 = v42;
                v62 = v42;
                v63 = 1024;
                v64 = v38 + 1;
                v65 = 1024;
                v66 = v49;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: %u freed clusters %u, should have freed %u, got EOF", buf, 0x1Eu);
                v2 = v57;
              }

              else
              {
                v2 = v57;
                v32 = v42;
              }

LABEL_50:
              fs_errorForPOSIXError();

              break;
            }

            v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
            v32 = v5;
            v2 = v57;
            if (v12 < v11)
            {
              goto LABEL_52;
            }
          }

          v5 = v32;
        }

LABEL_52:
        v47 = [*(a1 + 32) metaWriteToFATs:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
        if (v47)
        {
LABEL_70:
          v54 = v47;
          (*(*(a1 + 48) + 16))();

          goto LABEL_15;
        }

        v48 = *(a1 + 56);
        if (v29 < v48)
        {
          v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
          v47 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
          if (v47)
          {
            goto LABEL_70;
          }

          v48 = *(a1 + 56);
        }
      }

      while (v29 < v48);
    }

    v50 = [*(a1 + 32) fsInfo];
    if ([v50 maxValidCluster] >= v5)
    {
    }

    else
    {
      v51 = [*(a1 + 32) isEOFCluster:v5];

      if ((v51 & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100032544();
      }
    }

    if (v56)
    {
      [*(a1 + 40) setLastCluster:?];
    }

    v53 = *(a1 + 56);
    if (v53 == [*(a1 + 40) numberOfClusters])
    {
      [*(a1 + 40) setLastCluster:0];
      [*(a1 + 40) setFirstCluster:0];
    }

    [*(a1 + 40) setFirstClusterInLastAllocation:0];
    [*(a1 + 40) setFirstClusterIndexInLastAllocation:0];
    [*(a1 + 40) setNumberOfClusters:{objc_msgSend(*(a1 + 40), "numberOfClusters") - v29}];
    (*(*(a1 + 48) + 16))();
    goto LABEL_15;
  }

  v13 = 0;
  v56 = 0;
  while (1)
  {
    v11 = [*(a1 + 32) getRWOffsetForClusterEntry:v5];
    v16 = [*(a1 + 32) syncMetaReadFromFAT:objc_msgSend(v2 startingAt:{"mutableBytes"), v11}];
    if (v16)
    {
      break;
    }

    v12 = [*(a1 + 32) getOffsetForClusterEntry:v5];
    v17 = v12 - v11;
    if (v12 - v11 < [*(a1 + 32) rwSize])
    {
      while (1)
      {
        v18 = [v2 mutableBytes];
        v19 = [*(a1 + 32) fsOps];
        v20 = [v19 getNextClusterFromEntryForCluster:v5 entry:&v18[v17]];

        if (v13 == [*(a1 + 40) numberOfClusters] + ~*(a1 + 56))
        {
          break;
        }

        ++v13;
        v12 = [*(a1 + 32) getOffsetForClusterEntry:v20];
        v17 = v12 - v11;
        v5 = v20;
        if (v12 - v11 >= [*(a1 + 32) rwSize])
        {
          goto LABEL_24;
        }
      }

      v21 = [*(a1 + 32) fsOps];
      v22 = [*(a1 + 32) fsInfo];
      [v21 setFatEntryForCluster:v5 entry:&v18[v17] withValue:{objc_msgSend(v22, "FATMask")}];

      ++v13;
      v12 = [*(a1 + 32) getOffsetForClusterEntry:v20];
      v56 = v5;
LABEL_24:
      v5 = v20;
    }

    v23 = [*(a1 + 40) numberOfClusters];
    v10 = *(a1 + 56);
    if (v13 >= v23 - v10)
    {
      goto LABEL_26;
    }
  }

  v52 = v16;
  (*(*(a1 + 48) + 16))();

LABEL_15:
}

void sub_10001D270(uint64_t a1)
{
  v22 = -[FATBlock initWithOffset:andLength:]([FATBlock alloc], "initWithOffset:andLength:", 0, [*(a1 + 32) rwSize]);
  v2 = *(a1 + 48);
  if ([*(a1 + 32) isEOFCluster:0])
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    v3 = 0;
    while (v3 < *(a1 + 52))
    {
      v5 = [*(a1 + 32) getRWOffsetForClusterEntry:v2];
      v6 = *(a1 + 32);
      v7 = [(FATBlock *)v22 data];
      v8 = [v6 syncMetaReadFromFAT:objc_msgSend(v7 startingAt:{"mutableBytes"), v5}];

      if (v8)
      {
        (*(*(a1 + 40) + 16))();

        goto LABEL_15;
      }

      for (i = ([*(a1 + 32) getOffsetForClusterEntry:v2] - v5); i < objc_msgSend(*(a1 + 32), "rwSize"); v2 = v4)
      {
        if ([*(a1 + 32) isEOFCluster:v4])
        {
          break;
        }

        if (v3 >= *(a1 + 52))
        {
          break;
        }

        v10 = [(FATBlock *)v22 data];
        v11 = [v10 mutableBytes];

        v12 = [*(a1 + 32) fsOps];
        v4 = [v12 getNextClusterFromEntryForCluster:v2 entry:&i[v11]];

        v13 = [*(a1 + 32) fsOps];
        v14 = [*(a1 + 32) fsInfo];
        [v14 FATMask];
        [v13 setFatEntryForCluster:v2 entry:&i[v11] withValue:0];

        ++v3;
        v15 = [*(a1 + 32) fsInfo];
        [v15 setFreeClusters:{objc_msgSend(v15, "freeClusters") + 1}];

        i = ([*(a1 + 32) getOffsetForClusterEntry:v4] - v5);
      }

      v16 = *(a1 + 32);
      v17 = [(FATBlock *)v22 data];
      v18 = [v16 metaWriteToFATs:objc_msgSend(v17 startingAt:{"mutableBytes"), v5}];

      if ([*(a1 + 32) isEOFCluster:v4])
      {
        break;
      }
    }
  }

  v19 = *(a1 + 52);
  v20 = *(a1 + 40);
  if (v3 == v19)
  {
    (*(v20 + 16))(v20, 0);
  }

  else
  {
    v21 = fs_errorForPOSIXError();
    (*(v20 + 16))(v20, v21);
  }

LABEL_15:
}

void sub_10001D8CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001D95C;
  v3[3] = &unk_100051208;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 fatIterator:v1 replyHandler:v3];
}

void sub_10001DAD0(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = [(FATItem *)DirItem dynamicCast:*(a1 + 32)];
  v3 = v2;
  if (v2 && [v2 isFat1216RootDir])
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([*(a1 + 32) firstCluster])
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) firstCluster];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001DC94;
      v10[3] = &unk_100051258;
      v11 = *(a1 + 48);
      v12 = &v18;
      v13 = &v14;
      [v4 fatIterator:v5 replyHandler:v10];
      v6 = *(v15 + 6);
      v7 = *(v19 + 6);
      (*(*(a1 + 48) + 16))();
      v8 = v11;
    }

    else
    {
      v9 = *(a1 + 48);
      v8 = fs_errorForPOSIXError();
      (*(v9 + 16))(v9, v8, 0, 0);
    }
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_10001DC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DC94(void *a1, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v5 = a1[4];
    (*(a1[4] + 16))();
    return 1;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) += a4;
    *(*(a1[6] + 8) + 24) = a3 + a4 - 1;
  }

  return result;
}

void sub_10001DDD8(uint64_t a1)
{
  v2 = [(FATItem *)DirItem dynamicCast:*(a1 + 32)];
  v3 = v2;
  if (v2 && [v2 isFat1216RootDir])
  {
    (*(*(a1 + 48) + 16))();
  }

  else if ([*(a1 + 32) firstCluster])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) firstCluster];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001DF0C;
    v8[3] = &unk_100051208;
    v9 = *(a1 + 48);
    [v4 fatIterator:v5 replyHandler:v8];
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = fs_errorForPOSIXError();
    (*(v6 + 16))(v6, v7, 0, 0);
  }
}

void sub_10001DFD0(uint64_t a1)
{
  v2 = [FATBlock alloc];
  v3 = *(a1 + 32);
  v4 = [v3 fsOps];
  v5 = -[FATBlock initWithOffset:andLength:](v2, "initWithOffset:andLength:", [v3 getRWOffsetForClusterEntry:{objc_msgSend(v4, "getDirtyBitCluster")}], objc_msgSend(*(a1 + 32), "rwSize"));

  v6 = *(a1 + 32);
  v7 = [(FATBlock *)v5 data];
  v8 = [v6 syncMetaReadFromFAT:objc_msgSend(v7 startingAt:{"mutableBytes"), -[FATBlock startOffset](v5, "startOffset")}];

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000326D0();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = [(FATBlock *)v5 data];
    v10 = [v9 mutableBytes];
    v11 = *(a1 + 32);
    v12 = [v11 fsOps];
    v13 = [v11 getOffsetForCluster:objc_msgSend(v12 inFatBlock:{"getDirtyBitCluster"), v5}];

    v14 = *(a1 + 40);
    v15 = [*(a1 + 32) fsOps];
    (*(v14 + 16))(v14, 0, [v15 getDirtyBitValueForEntry:&v13[v10]]);
  }
}

void sub_10001E23C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) fsInfo];
  v4 = [v3 type];

  if (v4)
  {
    v5 = [*(a1 + 32) fsInfo];
    v6 = [v5 dirtyBitValue];
    v7 = *(a1 + 49);

    if (v6 == v7)
    {
      if (!v2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = *(a1 + 49);
      v9 = [*(a1 + 32) fsInfo];
      [v9 setDirtyBitValue:v8];
    }

    v10 = [FATBlock alloc];
    v11 = *(a1 + 32);
    v12 = [v11 fsOps];
    v13 = -[FATBlock initWithOffset:andLength:](v10, "initWithOffset:andLength:", [v11 getRWOffsetForClusterEntry:{objc_msgSend(v12, "getDirtyBitCluster")}], objc_msgSend(*(a1 + 32), "rwSize"));

    v14 = *(a1 + 32);
    v15 = [(FATBlock *)v13 data];
    v16 = [v14 syncMetaReadFromFAT:objc_msgSend(v15 startingAt:{"mutableBytes"), -[FATBlock startOffset](v13, "startOffset")}];

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100032754();
      }

LABEL_12:
      (*(*(a1 + 40) + 16))();

      return;
    }

    v17 = [(FATBlock *)v13 data];
    v18 = [v17 mutableBytes];
    v19 = *(a1 + 32);
    v20 = [v19 fsOps];
    v21 = [v19 getOffsetForCluster:objc_msgSend(v20 inFatBlock:{"getDirtyBitCluster"), v13}];

    v22 = [*(a1 + 32) fsOps];
    [v22 applyDirtyBitValueToEntry:&v21[v18] newValue:*(a1 + 49)];

    v23 = *(a1 + 32);
    v24 = [(FATBlock *)v13 data];
    v16 = [v23 syncMetaWriteToFATs:objc_msgSend(v24 startingAt:{"mutableBytes"), -[FATBlock startOffset](v13, "startOffset")}];

    if (v16)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000327D8();
      }

      goto LABEL_12;
    }

    v25 = *(a1 + 49);
    v26 = [*(a1 + 32) fsInfo];
    [v26 setDirtyBitValueOnDisk:v25];
  }

LABEL_14:
  v27 = *(*(a1 + 40) + 16);

  v27();
}

void sub_10001E848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E87C(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *(*(*(result + 40) + 8) + 24) = a3;
  }

  return result;
}

uint64_t format(uint64_t a1, int *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3 && *a3 && a3[1] && a3[2] != 0;
  v12 = *(a2 + 1);
  v13 = *(a2 + 6);
  v221 = 0;
  v14 = *a2;
  v15 = *(a2 + 34);
  v16 = *(a2 + 20);
  v220.tv_sec = 0;
  *&v220.tv_usec = 0;
  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  *size = 0u;
  v216 = 0u;
  v214 = 0;
  tv_sec = 0;
  if (v11)
  {
    (a3[1])("Format device: Checking parameters", 10, 10, &v221, *a3);
  }

  v17 = v15 & 0xF000;
  if (v17 != 0x2000)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 6, "warning: %s is not a character device\n", a4, a5, a6, a7, a8, v12);
  }

  v219 = 0;
  v217 = 0u;
  v218 = 0u;
  *size = 0u;
  v216 = 0u;
  v18 = *(a1 + 24);
  if (v18)
  {
    v19 = getstdfmt(v18, size);
    if (v20)
    {
LABEL_39:
      v33 = 0;
      goto LABEL_40;
    }

    HIDWORD(v217) = DWORD1(v216);
    LODWORD(v218) = HIDWORD(v216);
    DWORD1(v216) = 0;
    HIDWORD(v216) = 0;
  }

  v21 = *(a1 + 60);
  if (v21)
  {
    DWORD1(v217) = *(a1 + 60);
  }

  v22 = *(a1 + 92);
  if (v22)
  {
    LODWORD(v217) = *(a1 + 92);
  }

  if (v11)
  {
    ++v221;
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    LODWORD(size[0]) = *(a1 + 40);
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    HIDWORD(v217) = *(a1 + 88);
  }

  v25 = *(a1 + 112);
  if (v25)
  {
    DWORD2(v217) = *(a1 + 80);
  }

  if (!*(a1 + 24) && (!v21 || !v22 || !v23 || !v24 || !v25))
  {
    v26 = *(a2 + 11);
    v232 = *(a2 + 10);
    v233 = v26;
    v234 = *(a2 + 12);
    v27 = *(a2 + 7);
    v228 = *(a2 + 6);
    v229 = v27;
    v28 = *(a2 + 9);
    v230 = *(a2 + 8);
    v231 = v28;
    v29 = *(a2 + 3);
    v224 = *(a2 + 2);
    v225 = v29;
    v30 = *(a2 + 5);
    v226 = *(a2 + 4);
    v227 = v30;
    v31 = *(a2 + 1);
    *__str = *a2;
    v223 = v31;
    if (getdiskinfo(__str, v25, size))
    {
      goto LABEL_39;
    }
  }

  if (v11)
  {
    ++v221;
  }

  if ((size[0] & (LODWORD(size[0]) - 1)) != 0)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    v194 = LODWORD(size[0]);
    v32 = "bytes/sector (%u) is not a power of 2";
LABEL_38:
    newfs_print(__str, 3, v32, a4, a5, a6, a7, a8, v194);
    goto LABEL_39;
  }

  if (LODWORD(size[0]) <= 0x7F)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 3, "bytes/sector (%u) is too small; minimum is %u", a4, a5, a6, a7, a8, LODWORD(size[0]));
    goto LABEL_39;
  }

  if (LODWORD(size[0]) > 0x1000)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 3, "bytes/sector (%u) is too large; maximum is %u", a4, a5, a6, a7, a8, LODWORD(size[0]));
    goto LABEL_39;
  }

  v37 = *(a1 + 96);
  if ((v37 & (v37 - 1)) != 0)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 3, "physical bytes/sector (%u) is not a power of 2", a4, a5, a6, a7, a8, v37);
    goto LABEL_39;
  }

  if (v11)
  {
    ++v221;
  }

  if (v37)
  {
    if (v37 < LODWORD(size[0]))
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "physical bytes/sector (%u) is less than logical bytes/sector (%u)", a4, a5, a6, a7, a8, v37);
      goto LABEL_39;
    }
  }

  else
  {
    v38 = a2[4];
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    if (v38 == -1)
    {
      newfs_print(__str, 6, "Physical block size wasn't initialized, because of ioctl(DKIOCGETPHYSICALBLOCKSIZE) not being supported\n", a4, a5, a6, a7, a8, v194);
      LODWORD(v38) = size[0];
    }

    else
    {
      newfs_print(__str, 6, "%u bytes per physical sector\n", a4, a5, a6, a7, a8, v38);
    }

    *(a1 + 96) = v38;
  }

  if (v11)
  {
    ++v221;
  }

  v39 = *(a1 + 32);
  v214 = v39;
  if (v39 == 32)
  {
    if (*(a1 + 56))
    {
      v40 = 101;
LABEL_70:
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "-%c is not a legal FAT%s option", a4, a5, a6, a7, a8, v40);
      goto LABEL_39;
    }

    goto LABEL_74;
  }

  if (!v39)
  {
    if (*(a1 + 24))
    {
      v214 = 12;
      goto LABEL_66;
    }

    if (*(a1 + 56) || !*(a1 + 64) && !*(a1 + 68))
    {
      goto LABEL_66;
    }

    v214 = 32;
LABEL_74:
    if (*(a1 + 24))
    {
      LODWORD(v216) = 0;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*(a1 + 64))
  {
    v40 = 105;
    goto LABEL_70;
  }

  if (*(a1 + 68))
  {
    v40 = 107;
    goto LABEL_70;
  }

LABEL_76:
  v41 = *(a1 + 48);
  if (v41)
  {
    if ((v41 & (v41 - 1)) != 0)
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "block size (%u) is not a power of 2", a4, a5, a6, a7, a8, v41);
      goto LABEL_39;
    }

    if (v41 < LODWORD(size[0]))
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "block size (%u) is too small; minimum is %u", a4, a5, a6, a7, a8, v41);
      goto LABEL_39;
    }

    if (v41 > LODWORD(size[0]) << 7)
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "block size (%u) is too large; maximum is %u", a4, a5, a6, a7, a8, v41);
      goto LABEL_39;
    }

    HIDWORD(size[0]) = v41 / LODWORD(size[0]);
  }

  v42 = *(a1 + 52);
  if (v42)
  {
    if ((v42 & (v42 - 1)) != 0)
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "sectors/cluster (%u) is not a power of 2", a4, a5, a6, a7, a8, v42);
      goto LABEL_39;
    }

    HIDWORD(size[0]) = *(a1 + 52);
  }

  if (*(a1 + 84))
  {
    LODWORD(size[1]) = *(a1 + 84);
  }

  if (v11)
  {
    ++v221;
  }

  v43 = *(a1 + 76);
  if (v43)
  {
    if (v43 >= 0x11)
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "number of FATs (%u) is too large; maximum is %u", a4, a5, a6, a7, a8, v43);
      LODWORD(v43) = *(a1 + 76);
    }

    HIDWORD(size[1]) = v43;
  }

  if (*(a1 + 56))
  {
    LODWORD(v216) = *(a1 + 56);
  }

  if (*(a1 + 108))
  {
    v44 = *(a1 + 72);
    if (v44 <= 0xEF)
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "illegal media descriptor (%#x)", a4, a5, a6, a7, a8, v44);
      goto LABEL_39;
    }

    DWORD2(v216) = *(a1 + 72);
  }

  if (*(a1 + 44))
  {
    LODWORD(v218) = *(a1 + 44);
  }

  if (*(a1 + 64))
  {
    DWORD2(v218) = *(a1 + 64);
  }

  if (*(a1 + 68))
  {
    HIDWORD(v218) = *(a1 + 68);
  }

  v45 = *a1;
  if (*a1)
  {
    if (v17 != 0x8000 || v16 % LODWORD(size[0]) || v16 < LODWORD(size[0]) || v16 > (0xFFFF * LODWORD(size[0])))
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      newfs_print(__str, 3, "%s: inappropriate file type or format", a4, a5, a6, a7, a8, v45);
      goto LABEL_39;
    }

    v46 = v16 / LODWORD(size[0]);
  }

  else
  {
    v46 = 1;
    v45 = v13;
  }

  if (!HIDWORD(size[1]))
  {
    HIDWORD(size[1]) = 2;
  }

  if (v11)
  {
    ++v221;
    sd_card_set_defaults(v12, &v214, size);
    ++v221;
  }

  else
  {
    sd_card_set_defaults(v12, &v214, size);
  }

  v47 = HIDWORD(size[0]);
  if (!HIDWORD(size[0]))
  {
    v52 = HIDWORD(v217) * LODWORD(size[0]);
    v53 = v52 >> 10;
    v54 = __PAIR64__(v214, v214) >> 2;
    if (v54 > 3)
    {
      if (v54 == 4)
      {
        goto LABEL_174;
      }

      if (v54 != 8)
      {
        goto LABEL_149;
      }
    }

    else
    {
      if (v54)
      {
        if (v54 == 3)
        {
          goto LABEL_136;
        }

LABEL_149:
        *__str = newfs_ctx;
        *&v223 = qword_100059E78;
        newfs_print(__str, 3, "Invalid FAT type: %d", a4, a5, a6, a7, a8, v214);
        goto LABEL_39;
      }

      if (LODWORD(size[0]) == 512 && HIDWORD(v217) <= 0x20D0)
      {
        v214 = 12;
LABEL_153:
        if (LODWORD(size[1]))
        {
          v59 = size[1];
        }

        else
        {
          v59 = v46;
        }

        v60 = v216;
        if (!v216)
        {
          v60 = 512;
        }

        if (v60 % (LODWORD(size[0]) >> 5))
        {
          v61 = v60 / (LODWORD(size[0]) >> 5) + 1;
        }

        else
        {
          v61 = v60 / (LODWORD(size[0]) >> 5);
        }

        v62 = HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (2 * LODWORD(size[0]))) + v61;
        v63 = size[0];
        do
        {
          v47 = v63 / LODWORD(size[0]);
          v48 = 12;
          if (v59 + 4085 * (v63 / LODWORD(size[0])) + v62 >= HIDWORD(v217))
          {
            break;
          }

          v64 = v63 > 0x4000;
          v63 *= 2;
        }

        while (!v64);
LABEL_182:
        HIDWORD(size[0]) = v47;
        if (v47)
        {
          goto LABEL_183;
        }

LABEL_201:
        *__str = newfs_ctx;
        *&v223 = qword_100059E78;
        newfs_print(__str, 3, "FAT%d is impossible with %u sectors", a4, a5, a6, a7, a8, v48);
        goto LABEL_39;
      }

      if (LODWORD(size[0]) != 512 && HIDWORD(v217) <= 0x1068)
      {
        v214 = 12;
LABEL_136:
        if (LODWORD(size[0]) > 0x8000)
        {
          v48 = 12;
          goto LABEL_201;
        }

        goto LABEL_153;
      }

      if (v52 <= 0x200003FF)
      {
        v214 = 16;
LABEL_174:
        v66 = 0;
        do
        {
          v67 = &fat16Sizes + 16 * v66++;
        }

        while (v53 > *v67);
        v57 = *(v67 + 2);
        if (v57)
        {
          v48 = 16;
          goto LABEL_178;
        }

        *__str = newfs_ctx;
        *&v223 = qword_100059E78;
        v65 = 16;
        goto LABEL_279;
      }

      v214 = 32;
    }

    v55 = 0;
    do
    {
      v56 = &fat32Sizes + 16 * v55++;
    }

    while (v53 > *v56);
    v57 = *(v56 + 2);
    if (v57)
    {
      v48 = 32;
LABEL_178:
      if (v57 <= LODWORD(size[0]))
      {
        v68 = size[0];
      }

      else
      {
        v68 = v57;
      }

      v47 = v68 / LODWORD(size[0]);
      goto LABEL_182;
    }

    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    v65 = 32;
LABEL_279:
    newfs_print(__str, 3, "FAT%d is impossible for disk size of %lluKiB", a4, a5, a6, a7, a8, v65);
    goto LABEL_39;
  }

  LODWORD(v48) = v214;
  if (!v214)
  {
    v49 = size[1];
    if (!LODWORD(size[1]))
    {
      v49 = v46;
    }

    if (v216)
    {
      v50 = v216;
    }

    else
    {
      v50 = 512;
    }

    if (v50 % (LODWORD(size[0]) >> 5))
    {
      v51 = v50 / (LODWORD(size[0]) >> 5) + 1;
    }

    else
    {
      v51 = v50 / (LODWORD(size[0]) >> 5);
    }

    if (HIDWORD(size[1]) + HIDWORD(size[1]) * (0x2FE5u / (4 * LODWORD(size[0]))) + v49 + (4085 * HIDWORD(size[0])) + v51 <= HIDWORD(v217))
    {
      if (0x1FFECu / LODWORD(size[0]) * LODWORD(size[0]) == 131052)
      {
        v58 = 0x1FFECu / LODWORD(size[0]);
      }

      else
      {
        v58 = 0x1FFECu / LODWORD(size[0]) + 1;
      }

      if (v49 + v58 * HIDWORD(size[1]) + (65525 * HIDWORD(size[0])) + v51 <= HIDWORD(v217))
      {
        LODWORD(v48) = 32;
      }

      else
      {
        LODWORD(v48) = 16;
      }
    }

    else
    {
      LODWORD(v48) = 12;
    }

    v214 = v48;
  }

LABEL_183:
  if (v11)
  {
    v221 += 3;
  }

  v69 = v46;
  if (v48 == 32)
  {
    v70 = DWORD2(v218);
    if (DWORD2(v218))
    {
      v71 = HIDWORD(v218);
    }

    else
    {
      if (v46 == 0xFFFF || (v71 = HIDWORD(v218), v46 == HIDWORD(v218)))
      {
        *__str = newfs_ctx;
        *&v223 = qword_100059E78;
        v32 = "no room for info sector";
        goto LABEL_38;
      }

      DWORD2(v218) = v46;
      v70 = v46;
    }

    if (v46 > v70 || v70 == 0xFFFF)
    {
      v73 = v46;
    }

    else
    {
      v73 = v70 + 1;
    }

    if (v71 != 0xFFFF)
    {
      if (v71)
      {
        if (v71 == v70)
        {
          *__str = newfs_ctx;
          *&v223 = qword_100059E78;
          v32 = "backup sector would overwrite info sector";
          goto LABEL_38;
        }
      }

      else
      {
        if (v73 == 0xFFFF)
        {
          *__str = newfs_ctx;
          *&v223 = qword_100059E78;
          v32 = "no room for backup sector";
          goto LABEL_38;
        }

        if (v73 <= 6)
        {
          v71 = 6;
        }

        else
        {
          v71 = v73;
        }

        HIDWORD(v218) = v71;
      }
    }

    if (v73 > v71 || v71 == 0xFFFF)
    {
      v69 = v73;
    }

    else
    {
      v69 = v71 + 1;
    }
  }

  v75 = size[1];
  if (LODWORD(size[1]))
  {
    if (LODWORD(size[1]) < v69)
    {
      *__str = newfs_ctx;
      *&v223 = qword_100059E78;
      v32 = "too few reserved sectors";
      goto LABEL_38;
    }
  }

  else
  {
    if (v69 <= 0x20)
    {
      v75 = 32;
    }

    else
    {
      v75 = v69;
    }

    if (v48 != 32)
    {
      v75 = v69;
    }

    LODWORD(size[1]) = v75;
  }

  v76 = v216;
  if (v48 != 32 && !v216)
  {
    v76 = 512;
    LODWORD(v216) = 512;
  }

  v77 = v218;
  if (v76 % (LODWORD(size[0]) >> 5))
  {
    v78 = v76 / (LODWORD(size[0]) >> 5) + 1;
  }

  else
  {
    v78 = v76 / (LODWORD(size[0]) >> 5);
  }

  if (v48 != 32 && v218 >= 0x10000)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    v32 = "too many sectors/FAT for FAT12/16";
    goto LABEL_38;
  }

  v79 = (v75 + v78);
  if (v218 <= 1)
  {
    v80 = 1;
  }

  else
  {
    v80 = v218;
  }

  if (v79 + HIDWORD(size[1]) * v80 > HIDWORD(v217))
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    v32 = "meta data exceeds file system size";
    goto LABEL_38;
  }

  v204 = v78;
  v206 = v46;
  v207 = v79 + HIDWORD(size[1]) * v80;
  v81 = (HIDWORD(v217) - v207);
  v82 = 2 * LODWORD(size[0]);
  v83 = v48 >> 2;
  v84 = 2 * LODWORD(size[0]) * v81 / (HIDWORD(size[1]) * v83 + 2 * LODWORD(size[0]) * v47);
  if (v48 == 16)
  {
    v85 = 65524;
  }

  else
  {
    v85 = 268435445;
  }

  if (v48 == 12)
  {
    v86 = 4084;
  }

  else
  {
    v86 = v85;
  }

  v209 = v86;
  if (v86 <= v84)
  {
    v89 = v85 | 2;
    if (v48 == 12)
    {
      v89 = 4086;
    }

    v90 = v89 * v83 % v82;
    v87 = (v86 | 2) * v83;
    if (v90)
    {
      goto LABEL_246;
    }
  }

  else
  {
    v87 = (v84 + 2) * v83;
    if (v87 % v82)
    {
LABEL_246:
      v88 = v87 / v82 + 1;
      goto LABEL_251;
    }
  }

  v88 = v87 / v82;
LABEL_251:
  if (!v218)
  {
    LODWORD(v218) = v88;
    v91 = *(a1 + 96);
    v77 = v88;
    if (v91 > LODWORD(size[0]))
    {
      v77 = v88;
      if (v88 % (v91 / LODWORD(size[0])))
      {
        v77 = v91 / LODWORD(size[0]) + v88 - v88 % (v91 / LODWORD(size[0]));
        LODWORD(v218) = v77;
      }
    }

    v207 += (v77 - 1) * HIDWORD(size[1]);
    LODWORD(v81) = HIDWORD(v217) - v207;
  }

  v92 = (2 * LODWORD(size[0]) * v77 / v83) - 2;
  v93 = v81 / v47;
  if (v93 > v92)
  {
    v94 = v79 + v77 * HIDWORD(size[1]) + v92 * v47;
    HIDWORD(v217) = v94;
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 6, "warning: sectors/FAT limits sectors to %u, clusters to %u\n", a4, a5, a6, a7, a8, v94);
    v77 = v218;
    v93 = v92;
  }

  if (v77 < v88)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 6, "warning: sectors/FAT limits file system to %u clusters\n", a4, a5, a6, a7, a8, v93);
  }

  if (v48 == 16)
  {
    v95 = 4085;
  }

  else
  {
    v95 = 65525;
  }

  if (v48 == 12)
  {
    v95 = 1;
  }

  if (v93 < v95)
  {
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 3, "%u clusters too few clusters for FAT%u, need %u", a4, a5, a6, a7, a8, v93);
    goto LABEL_39;
  }

  if (v93 > v209)
  {
    LODWORD(v93) = v209;
    HIDWORD(v217) = v207 + HIDWORD(size[0]) + HIDWORD(size[0]) * v209 - 1;
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 6, "warning: FAT type limits file system to %u sectors\n", a4, a5, a6, a7, a8, HIDWORD(v217));
  }

  v201 = v93 - 1;
  *__str = newfs_ctx;
  *&v223 = qword_100059E78;
  newfs_print(__str, 6, "%s: %u sector%s in %u FAT%u cluster%s (%u bytes/cluster)\n", a4, a5, a6, a7, a8, v12);
  if (!DWORD2(v216))
  {
    if (DWORD2(v217))
    {
      v103 = 248;
    }

    else
    {
      v103 = 240;
    }

    DWORD2(v216) = v103;
  }

  if (v48 == 32)
  {
    DWORD1(v218) = 2;
    if (HIDWORD(v217) < 0x10000)
    {
      DWORD1(v216) = HIDWORD(v217);
    }

    HIDWORD(v216) = 0;
    v104 = (&v216 + 4);
  }

  else
  {
    v104 = &v218;
    if (!HIWORD(HIDWORD(v217)))
    {
      DWORD1(v216) = HIDWORD(v217);
      HIDWORD(v217) = 0;
    }

    HIDWORD(v216) = v218;
  }

  *v104 = 0;
  if (v11)
  {
    v221 = 10;
    (a3[2])("Format device: Checking parameters", *a3);
    print_bpb(size, v105, v106, v107, v108, v109, v110, v111);
    if (*(a1 + 100))
    {
      v34 = 0;
      v35 = off_100051308;
      v33 = 1;
      goto LABEL_42;
    }

    v221 = 0;
    v33 = 1;
    (a3[1])("Format device: Wiping file system", 10, 1, &v221, *a3);
  }

  else
  {
    print_bpb(size, v96, v97, v98, v99, v100, v101, v102);
    v33 = 0;
    v34 = 0;
    if (*(a1 + 100))
    {
      return v34;
    }
  }

  gettimeofday(&v220, 0);
  tv_sec = v220.tv_sec;
  v199 = localtime(&tv_sec);
  __src = malloc_type_malloc(0x20000uLL, 0x6E36B54BuLL);
  if (__src && (__dst = malloc_type_malloc(LODWORD(size[0]), 0xDDC8FA22uLL)) != 0)
  {
    v112 = v218;
    if (HIDWORD(v216))
    {
      v112 = HIDWORD(v216);
    }

    v113 = LODWORD(size[1]) + v112 * HIDWORD(size[1]);
    v114 = v204;
    if (v48 == 32)
    {
      v114 = HIDWORD(size[0]);
    }

    v197 = v113;
    v200 = v113 + v114;
    if (*(&newfs_ctx + 1))
    {
      *__str = v14;
      *&__str[4] = 0;
      *&__str[8] = LODWORD(size[0]);
      LODWORD(v223) = 0;
      DWORD1(v223) = v113 + v114;
      v115 = (*(&newfs_ctx + 1))(qword_100059E78, __str);
      if (v115)
      {
        v34 = v115;
        *__str = newfs_ctx;
        *&v223 = qword_100059E78;
        newfs_print(__str, 3, "Encountered errors trying to wipe resource", v116, v117, v118, v119, v120, v195);
        if (!v11)
        {
          return v34;
        }

        goto LABEL_41;
      }
    }

    if (v11)
    {
      v221 = 1;
      (a3[2])(off_100051308[v33], *a3);
      v221 = 0;
      (a3[1])(off_100051308[++v33], 80, (v200 + 2), &v221, *a3);
    }

    if (v200)
    {
      v208 = 0;
      v210 = 0;
      v205 = 0;
      v128 = __src;
      while (1)
      {
        v129 = v214;
        v130 = HIDWORD(v218);
        if (*a1)
        {
          v131 = HIDWORD(v218) == 0xFFFF;
        }

        else
        {
          v131 = 1;
        }

        v133 = v131 || v214 != 32;
        if (v206 > HIDWORD(v218) || v210 < HIDWORD(v218))
        {
          v133 = 1;
        }

        v135 = v133 == 0;
        if (v133)
        {
          v130 = 0;
        }

        v136 = v208;
        if (v135)
        {
          v136 = 0;
        }

        v208 = v136;
        if (*a1 && v210 - v130 < v206)
        {
          v137 = (a3[4])(a3[3], v128, LODWORD(size[0]), v136);
          if (v137 == -1)
          {
            goto LABEL_430;
          }

          v143 = size[0];
          if (v137 != LODWORD(size[0]))
          {
            v211 = newfs_ctx;
            v212 = qword_100059E78;
            v196 = v45;
            v193 = "%s: can't read sector %u";
            goto LABEL_431;
          }
        }

        else
        {
          v144 = size[0];
          bzero(v128, LODWORD(size[0]));
          v143 = v144;
        }

        if (v210 && (v129 != 32 || HIDWORD(v218) == 0xFFFF || v210 != HIDWORD(v218)))
        {
          if (v129 == 32 && DWORD2(v218) != 0xFFFF && (v210 == DWORD2(v218) || HIDWORD(v218) != 0xFFFF && v210 == DWORD2(v218) + HIDWORD(v218)))
          {
            *&__src[v205] = 1096897106;
            *(v128 + 484) = 1631679090;
            *(v128 + 488) = v201;
            v151 = DWORD1(v218) + 1;
            *(v128 + 492) = WORD2(v218) + 1;
            *(v128 + 494) = BYTE2(v151);
            *(v128 + 495) = HIBYTE(v151);
            *(v128 + 510) = 85;
            LOBYTE(v151) = -86;
            v152 = 511;
            goto LABEL_377;
          }

          if (v210 < LODWORD(size[1]) || v210 >= v197)
          {
            goto LABEL_434;
          }

          v168 = HIDWORD(v216);
          if (!HIDWORD(v216))
          {
            v168 = v218;
          }

          if ((v210 - LODWORD(size[1])) % v168)
          {
LABEL_434:
            if (v210 == v197)
            {
              v169 = *(a1 + 8);
              if (v169)
              {
                if (*v169)
                {
                  mklabel(v128, v169);
                  *(v128 + 11) = 40;
                  *(v128 + 22) = (32 * v199->i16[2]) | (v199[1].i16[0] << 11) | (v199->i32[0] >> 1);
                  v170 = vadd_s32(vshl_u32(v199[2], 0x900000005), 0xFFFF600000000020);
                  v171 = v199[1].i32[1] | v170.i32[0] | v170.i32[1];
                  *(v128 + 24) = v171;
                  v151 = v171 >> 8;
                  v152 = 25;
LABEL_377:
                  *(v128 + v152) = v151;
                }
              }
            }

LABEL_378:
            v167 = LODWORD(size[0]);
            goto LABEL_379;
          }

          __src[v205] = BYTE8(v216);
          if (v129 == 32)
          {
            v173 = 3;
          }

          else
          {
            v173 = 2;
          }

          v174 = v173 * v129;
          if (v174 <= 0xF)
          {
            goto LABEL_378;
          }

          v175 = v174 >> 3;
          v176 = v175 + 14;
          v177 = vdupq_n_s64(v175 - 2);
          if (v129 == 32)
          {
            v178 = 15;
          }

          else
          {
            v178 = -1;
          }

          v179 = -(v176 & 0x3FFFFFF0);
          v180 = (v128 + 8);
          v181 = 16;
          do
          {
            v182 = vdupq_n_s64(v181 - 16);
            v183 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040790)));
            if (vuzp1_s8(vuzp1_s16(v183, *v177.i8), *v177.i8).u8[0])
            {
              *(v180 - 7) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v183, *&v177), *&v177).i8[1])
            {
              *(v180 - 6) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040780)))), *&v177).i8[2])
            {
              *(v180 - 5) = v178;
              *(v180 - 4) = -1;
            }

            v184 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040770)));
            if (vuzp1_s8(*&v177, vuzp1_s16(v184, *&v177)).i32[1])
            {
              *(v180 - 3) = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(v184, *&v177)).i8[5])
            {
              *(v180 - 2) = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040760))))).i8[6])
            {
              *(v180 - 1) = v178;
              *v180 = -1;
            }

            v185 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040750)));
            if (vuzp1_s8(vuzp1_s16(v185, *v177.i8), *v177.i8).u8[0])
            {
              v180[1] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v185, *&v177), *&v177).i8[1])
            {
              v180[2] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040740)))), *&v177).i8[2])
            {
              v180[3] = v178;
              v180[4] = -1;
            }

            v186 = vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040730)));
            if (vuzp1_s8(*&v177, vuzp1_s16(v186, *&v177)).i32[1])
            {
              v180[5] = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(v186, *&v177)).i8[5])
            {
              v180[6] = -1;
            }

            if (vuzp1_s8(*&v177, vuzp1_s16(*&v177, vmovn_s64(vcgeq_u64(v177, vorrq_s8(v182, xmmword_100040720))))).i8[6])
            {
              v180[7] = v178;
              v180[8] = -1;
            }

            v181 += 16;
            v180 += 16;
          }

          while (v179 + v181 != 16);
        }

        else
        {
          *(v128 + 11) = v143;
          v145 = size[1];
          *(v128 + 13) = BYTE4(size[0]);
          *(v128 + 14) = v145;
          v146 = v216;
          *(v128 + 16) = BYTE4(size[1]);
          *(v128 + 17) = v146;
          *(v128 + 19) = WORD2(v216);
          *(v128 + 21) = BYTE8(v216);
          *(v128 + 22) = WORD6(v216);
          *(v128 + 24) = v217;
          *(v128 + 26) = WORD2(v217);
          *(v128 + 28) = *(&v217 + 1);
          if (v129 == 32)
          {
            v147 = WORD1(v218);
            *(v128 + 36) = v218;
            *(v128 + 38) = v147;
            *(v128 + 40) = 0;
            *(v128 + 44) = DWORD1(v218);
            *(v128 + 48) = WORD4(v218);
            *(v128 + 50) = WORD6(v218);
            v148 = 64;
          }

          else
          {
            v148 = 36;
          }

          v202 = v148;
          v149 = v128 + v148;
          *v149 = v219;
          *(v149 + 2) = 41;
          if (*(a1 + 104))
          {
            v150 = *(a1 + 36);
          }

          else
          {
            v150 = (v199[2].i32[1] + (v199->i32[1] | (v199[1].i32[0] << 8)) + 1900) | ((((v220.tv_usec / 10) | (v199->i32[0] << 8)) + (((v199[2].i32[0] << 8) + 256) | v199[1].i32[1])) << 16);
          }

          *(v149 + 3) = v150;
          if (*(a1 + 8))
          {
            v153 = *(a1 + 8);
          }

          else
          {
            v153 = "NO NAME";
          }

          mklabel(v149 + 7, v153);
          v154 = __str;
          snprintf(__str, 0x400uLL, "FAT%u", v129);
          for (i = 0; i != 8; ++i)
          {
            v156 = *v154;
            if (*v154)
            {
              ++v154;
            }

            if (v156)
            {
              v157 = v156;
            }

            else
            {
              v157 = 32;
            }

            *(v149 + 18 + i) = v157;
          }

          v158 = *a1;
          if (!*a1)
          {
            __src[v205] = -21;
            *(v128 + 1) = v202 | 0x18;
            *(v128 + 2) = -112;
            v159 = *(a1 + 16);
            if (!v159)
            {
              v159 = "BSD  4.4";
            }

            do
            {
              v160 = *v159;
              if (*v159)
              {
                ++v159;
              }

              if (v160)
              {
                v161 = v160;
              }

              else
              {
                v161 = 32;
              }

              *(v128 + 3 + v158++) = v161;
            }

            while (v158 != 8);
            v162 = v128 + v202;
            v163 = xmmword_100059B00;
            *(v162 + 42) = unk_100059B10;
            *(v162 + 26) = v163;
            v164 = xmmword_100059B20;
            v165 = unk_100059B30;
            v166 = xmmword_100059B40;
            *(v162 + 106) = dword_100059B50;
            *(v162 + 90) = v166;
            *(v162 + 74) = v165;
            *(v162 + 58) = v164;
            *(v128 + 510) = -21931;
          }
        }

        v167 = LODWORD(size[0]);
        if (!v210)
        {
          memcpy(__dst, __src, LODWORD(size[0]));
          __memset_chk();
        }

LABEL_379:
        v205 += v167;
        if (v205 >= 0x20000)
        {
          v172 = (a3[5])(a3[3], __src, 0x20000, v208);
          if (v172 != 0x20000)
          {
            if (v172 != -1)
            {
              v211 = newfs_ctx;
              v212 = qword_100059E78;
              v196 = v12;
              v193 = "%s: can't write sector %u";
              goto LABEL_431;
            }

            goto LABEL_430;
          }

          v205 = 0;
          v208 += 0x20000;
        }

        ++v221;
        v128 = &__src[v205];
        if (++v210 == v200)
        {
          if (!v205)
          {
            break;
          }

          v187 = (a3[5])(a3[3], __src, v205, v208);
          if (v187 != -1 && v187 == v205)
          {
            break;
          }

LABEL_430:
          v191 = __error();
          v192 = strerror(*v191);
          v211 = newfs_ctx;
          v212 = qword_100059E78;
          v196 = v192;
          v193 = "%s: %s";
          goto LABEL_431;
        }
      }
    }

    ++v221;
    v188 = (a3[5])(a3[3], __dst, LODWORD(size[0]), 0);
    if (v188 == -1)
    {
      v189 = __error();
      v190 = strerror(*v189);
      v211 = newfs_ctx;
      v212 = qword_100059E78;
      v196 = v190;
      v193 = "%s: write: %s";
    }

    else
    {
      if (v188 == LODWORD(size[0]))
      {
        v34 = 0;
        ++v221;
        if (!v11)
        {
          return v34;
        }

        v35 = off_100051308;
        goto LABEL_42;
      }

      v211 = newfs_ctx;
      v212 = qword_100059E78;
      v196 = v12;
      v193 = "%s: can't write boot sector";
    }

LABEL_431:
    newfs_print(&v211, 3, v193, v138, v139, v140, v141, v142, v196);
  }

  else
  {
    v121 = __error();
    v122 = strerror(*v121);
    *__str = newfs_ctx;
    *&v223 = qword_100059E78;
    newfs_print(__str, 3, v122, v123, v124, v125, v126, v127, 0);
  }

LABEL_40:
  v34 = 1;
  if (v11)
  {
LABEL_41:
    v35 = off_1000512F0;
LABEL_42:
    (a3[2])(v35[v33], *a3, v19);
  }

  return v34;
}