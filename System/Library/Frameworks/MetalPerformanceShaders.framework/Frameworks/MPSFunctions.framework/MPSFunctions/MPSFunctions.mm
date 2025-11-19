BOOL sub_239926ED8(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (*(*a1 + 16))(a1);
  v6 = *a3;
  v7 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v8 = *a2;
  v9 = *a2;
  *v9 = 0x1000000;
  *a2 = v9 + 1;
  *a3 = v7;
  if (v7 < 4)
  {
    return 0;
  }

  v8[1] = bswap32(v5);
  *a2 = v8 + 2;
  *a3 = v6 - 8;
  return v6 > 3;
}

unint64_t sub_239926F88(unsigned int **a1, unint64_t *a2, uint64_t *a3)
{
  v129 = *MEMORY[0x277D85DE8];
  v7 = *a2 - 8;
  if (*a2 < 8)
  {
    goto LABEL_2;
  }

  v10 = a2;
  v11 = a1;
  v13 = (*a1)[1];
  v12 = *a1 + 2;
  v14 = bswap32(**a1);
  *a1 = v12;
  *a2 = v7;
  if (v14 >= 2)
  {
    v15 = sub_239931A78("Could not decompress stage. File format too new.");
LABEL_7:
    v17 = v15;
    result = 0;
    *a3 = v17;
    goto LABEL_8;
  }

  v16 = bswap32(v13);
  if ((v16 - 6) <= 0xFFFFFFFA)
  {
    v15 = sub_239931A78("Could not decompress stage. Unknown type.");
    goto LABEL_7;
  }

  if (v16 > 2)
  {
    if (v16 != 3)
    {
      if (v16 == 4)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (v16 != 1)
  {
    operator new();
  }

  if (v7 > 3)
  {
    v19 = bswap32(*v12);
    if (v19 >= 5)
    {
      if (a3)
      {
        v15 = sub_239931A78("Error: file corrupted at TRC stage");
        goto LABEL_7;
      }

      goto LABEL_2;
    }

    result = malloc_type_malloc(84 * v19 + 32, 0x10A10400956659AuLL);
    if (!result)
    {
      goto LABEL_8;
    }

    v23 = &unk_284C6AA58;
    v24 = result & 0xFFFFFFFFFFFFLL | 0x8300000000000000;
    *result = &unk_284C6AA58;
    *(result + 8) = 0;
    v25 = *v11;
    v26 = *v10;
    v122 = result;
    if (*v10 <= 3)
    {
      *v11 = v25 + v26;
      *v10 = 0;
      if (!a3)
      {
        goto LABEL_124;
      }

      v111 = a3;
      v112 = sub_239931A78("File truncated: unable to read TRC ");
    }

    else
    {
      v28 = *v25;
      v27 = *v25;
      *v11 = v25 + 1;
      *v10 = v26 - 4;
      v29 = bswap32(v28);
      if (v29 < 5)
      {
        *(result + 16) = v29;
        *(result + 24) = result + 32;
        if (!v27)
        {
          goto LABEL_8;
        }

        v119 = a3;
        v120 = v11;
        v30 = 0;
        if (v29 <= 1)
        {
          LODWORD(v29) = 1;
        }

        v31 = 84 * v29;
        v32 = 1;
        v121 = v10;
        while (1)
        {
          v33 = *(result + 24);
          v34 = *v11;
          v35 = *v10;
          if (*v10 <= 3)
          {
            break;
          }

          v38 = bswap32(*v34);
          if ((v32 & 1) == 0)
          {
            v37 = (v34 + v35);
            *v11 = v34 + v35;
            *v10 = 0;
            *(v33 + v30 + 60) = v38;
            if (v38 >= 8)
            {
LABEL_121:
              if (v119)
              {
                v109 = sub_239931A78("File corrupted: unknown property in TRC ");
                goto LABEL_123;
              }

              goto LABEL_124;
            }

            v36 = 0;
LABEL_42:
            v40 = 0;
            v39 = (v37 + v36);
            *v10 = 0;
            *(v33 + v30 + 64) = 0;
LABEL_43:
            v44 = 0;
            v43 = (v39 + v40);
            *v11 = v43;
            v45 = v33 + v30;
            *(v45 + 68) = 0;
            *(v45 + 72) = 0;
LABEL_44:
            v46 = (v43 + v44);
            v47 = v33 + v30;
            *(v47 + 76) = 0;
            *(v47 + 80) = 0;
LABEL_45:
            v48 = 0;
LABEL_46:
            v49 = 0;
            v50 = 0;
            v51 = (v46 + v48);
LABEL_47:
            v32 = 0;
            *v11 = v51 + v50;
            *v10 = 0;
            goto LABEL_48;
          }

          v37 = v34 + 1;
          v36 = v35 - 4;
          *v11 = v34 + 1;
          *v10 = v35 - 4;
          *(v33 + v30 + 60) = v38;
          if (v38 >= 8)
          {
            goto LABEL_121;
          }

          if (v36 <= 3)
          {
            goto LABEL_42;
          }

          v39 = v34 + 2;
          v40 = v35 - 8;
          *(v33 + v30 + 64) = bswap32(v34[1]);
          if (v35 - 8 <= 3)
          {
            goto LABEL_43;
          }

          v41 = bswap32(*v39);
          *(v33 + v30 + 72) = v41;
          v42 = *&v41;
          if ((v35 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
          {
            v43 = (v34 + v35);
            *v11 = v34 + v35;
            *v10 = 0;
            *(v33 + v30 + 68) = 0;
            if (v42 < 0.0)
            {
              goto LABEL_125;
            }

            v44 = 0;
            goto LABEL_44;
          }

          v60 = COERCE_FLOAT(bswap32(v34[3]));
          v43 = v34 + 4;
          v44 = v35 - 16;
          *v11 = v34 + 4;
          *v10 = v35 - 16;
          *(v33 + v30 + 68) = v60;
          if (v42 < v60)
          {
LABEL_125:
            if (v119)
            {
              v109 = sub_239931A78("File corrupted: TRC input range invalid");
              goto LABEL_123;
            }

LABEL_124:
            exception = __cxa_allocate_exception(4uLL);
            *exception = -1;
            __cxa_throw(exception, MEMORY[0x277D827C0], 0);
          }

          if (v44 <= 3)
          {
            goto LABEL_44;
          }

          v61 = bswap32(*v43);
          v62 = v33 + v30;
          *(v33 + v30 + 80) = v61;
          v63 = *&v61;
          if ((v35 & 0xFFFFFFFFFFFFFFFCLL) == 0x14)
          {
            v46 = (v34 + v35);
            *v11 = v34 + v35;
            *v10 = 0;
            *(v62 + 76) = 0;
            if (v63 < 0.0)
            {
              goto LABEL_132;
            }

            goto LABEL_45;
          }

          v64 = COERCE_FLOAT(bswap32(v34[5]));
          v46 = v34 + 6;
          v48 = v35 - 24;
          *v11 = v34 + 6;
          *v10 = v35 - 24;
          *(v62 + 76) = v64;
          if (v63 < v64)
          {
LABEL_132:
            if (v119)
            {
              v109 = sub_239931A78("File corrupted: TRC output range invalid");
LABEL_123:
              *v119 = v109;
            }

            goto LABEL_124;
          }

          if (v48 <= 3)
          {
            goto LABEL_46;
          }

          v49 = bswap32(v34[6]);
          v50 = v35 - 28;
          if (v35 - 28 <= 3)
          {
            v51 = v34 + 7;
            goto LABEL_47;
          }

          v65 = v34[7];
          v66 = v35 - 32;
          *v11 = v34 + 8;
          *v10 = v35 - 32;
          if (v49 > 6 || bswap32(v65) > 1)
          {
            v32 = 0;
          }

          else
          {
            v118 = v31;
            v124 = v30;
            if (v49 - 3 < 4)
            {
              goto LABEL_62;
            }

            if (v49)
            {
              if (v49 != 1)
              {
                goto LABEL_78;
              }

LABEL_62:
              if (v66 <= 3)
              {
                v24 = 0;
                v67 = 0;
                v68 = (v34 + v35);
                goto LABEL_70;
              }

              v24 = bswap32(v34[8]);
              v67 = v35 - 36;
              if (v35 - 36 > 3)
              {
                v20 = bswap32(v34[9]);
                v69 = v35 - 40;
                if (v35 - 40 <= 3)
                {
                  v70 = v34 + 10;
                  goto LABEL_71;
                }

                v71 = v35 - 44;
                LODWORD(v125) = bswap32(v34[10]);
                if (v35 - 44 <= 3)
                {
                  v72 = v34 + 11;
                  goto LABEL_72;
                }

                v73 = v35 - 48;
                HIDWORD(v125) = bswap32(v34[11]);
                if (v35 - 48 <= 3)
                {
                  v74 = v34 + 12;
                  goto LABEL_73;
                }

                v4 = bswap32(v34[12]);
                v75 = v35 - 52;
                if (v35 - 52 <= 3)
                {
                  v76 = v34 + 13;
                  goto LABEL_74;
                }

                v6 = bswap32(v34[13]);
                v77 = v35 - 56;
                if (v35 - 56 <= 3)
                {
                  v78 = v34 + 14;
                  goto LABEL_75;
                }

                v3 = bswap32(v34[14]);
                v79 = v35 - 60;
                if (v35 - 60 <= 3)
                {
                  v80 = v34 + 15;
                  goto LABEL_76;
                }

                v21 = bswap32(v34[15]);
                v82 = v34 + 16;
                v81 = v35 - 64;
              }

              else
              {
                v68 = v34 + 9;
LABEL_70:
                v20 = 0;
                v69 = 0;
                v70 = (v68 + v67);
LABEL_71:
                v71 = 0;
                v72 = (v70 + v69);
                LODWORD(v125) = 0;
LABEL_72:
                v73 = 0;
                v74 = (v72 + v71);
                HIDWORD(v125) = 0;
LABEL_73:
                v75 = 0;
                v4 = 0;
                v76 = (v74 + v73);
LABEL_74:
                v77 = 0;
                v6 = 0;
                v78 = (v76 + v75);
LABEL_75:
                v79 = 0;
                v3 = 0;
                v80 = (v78 + v77);
LABEL_76:
                v32 = 0;
                v21 = 0;
                v81 = 0;
                v82 = (v80 + v79);
              }

              *v11 = v82;
              *v10 = v81;
              v5 = v125;
LABEL_78:
              result = v122;
              goto LABEL_48;
            }

            if (v66 <= 3)
            {
              v83 = 0;
              v116 = 0;
              v84 = (v34 + v35);
LABEL_86:
              v85 = 0;
              v115 = 0;
              v86 = (v84 + v83);
LABEL_87:
              v117 = 0;
              v87 = 0;
              v88 = 0;
              v89 = (v86 + v85);
LABEL_88:
              v90 = 0;
              v114 = 0;
              v91 = v117;
              v92 = (v89 + v87);
              v117 = v88;
LABEL_89:
              v93 = 0;
              v113 = 0;
              v94 = v117;
              v95 = (v92 + v90);
              v117 = v91;
LABEL_90:
              v96 = 0;
              v97 = 0;
              v98 = v117;
              v99 = (v95 + v93);
              v117 = v94;
LABEL_91:
              v100 = 0;
              v101 = 0;
              v102 = 0;
              v103 = (v99 + v96);
              v104 = v117;
              v117 = v98;
              goto LABEL_92;
            }

            v116 = bswap32(v34[8]);
            v84 = v34 + 9;
            v83 = v35 - 36;
            *v11 = v34 + 9;
            *v10 = v35 - 36;
            if (v35 - 36 <= 3)
            {
              goto LABEL_86;
            }

            v115 = bswap32(v34[9]);
            v86 = v34 + 10;
            v85 = v35 - 40;
            *v11 = v34 + 10;
            *v10 = v35 - 40;
            if (v35 - 40 < 4)
            {
              goto LABEL_87;
            }

            v108 = bswap32(v34[10]);
            v89 = v34 + 11;
            v87 = v35 - 44;
            *v11 = v34 + 11;
            *v10 = v35 - 44;
            v117 = v108;
            if (v108 <= 0x100000)
            {
              if (v87 <= 3)
              {
                v88 = v108;
                goto LABEL_88;
              }

              v114 = bswap32(v34[11]);
              v90 = v35 - 48;
              if (v35 - 48 <= 3)
              {
                v92 = v34 + 12;
                v91 = v117;
                goto LABEL_89;
              }

              v113 = bswap32(v34[12]);
              v93 = v35 - 52;
              if (v35 - 52 <= 3)
              {
                v95 = v34 + 13;
                v94 = v117;
                goto LABEL_90;
              }

              v97 = bswap32(v34[13]);
              v96 = v35 - 56;
              if (v35 - 56 <= 3)
              {
                v99 = v34 + 14;
                v98 = v117;
                goto LABEL_91;
              }

              v101 = bswap32(v34[14]);
              v103 = v34 + 15;
              v102 = v35 - 60;
              v100 = v32 != 0;
              v104 = v117;
LABEL_92:
              *v11 = v103;
              *v10 = v102;
              v105 = 4 * v104;
              v106 = malloc_type_malloc(4 * v104, 0x100004052888210uLL);
              v5 = v106;
              if (v106)
              {
                v107 = *v10;
                if (*v10 >= v105)
                {
                  src.data = *v11;
                  src.height = 1;
                  src.width = v104;
                  src.rowBytes = 4 * v104;
                  dest.data = v106;
                  dest.height = 1;
                  dest.width = v104;
                  dest.rowBytes = 4 * v104;
                  vImagePermuteChannels_ARGB8888(&src, &dest, byte_239935510, 0);
                  *v11 = *v11 + v105;
                  *v10 -= v105;
                }

                v20 = 0;
                v49 = 0;
                v32 = v107 >= v105 && v100;
              }

              else
              {
                v32 = 0;
                v20 = 0;
                v49 = 0;
              }

              result = v122;
              v30 = v124;
              v24 = v117;
              v31 = v118;
              v23 = v115;
              v22 = v116;
              v6 = v113;
              v4 = v114;
              v3 = v97;
              v21 = v101;
              goto LABEL_48;
            }

            v32 = 0;
            v20 = 0;
            v49 = 0;
            result = v122;
            v24 = v108;
            v23 = v115;
            v22 = v116;
          }

LABEL_48:
          v52 = v33 + v30;
          *v52 = v49;
          *(v52 + 4) = v24;
          *(v52 + 8) = v20;
          *(v52 + 12) = v5;
          *(v52 + 20) = v4;
          *(v52 + 24) = v6;
          *(v52 + 28) = v3;
          *(v52 + 32) = v21;
          *(v52 + 36) = v23;
          *(v52 + 40) = v22;
          *(v52 + 44) = v128;
          if (!v49)
          {
            v53 = v5;
            v5 = v22;
            v54 = v23;
            v55 = v24;
            v56 = v20;
            v57 = v21;
            v58 = v32;
            v123 = v30;
            v59 = v31;
            free(v53);
            v31 = v59;
            result = v122;
            v30 = v123;
            v32 = v58;
            v21 = v57;
            v11 = v120;
            v10 = v121;
            v20 = v56;
            v24 = v55;
            v23 = v54;
            v22 = v5;
          }

          v30 += 84;
          if (v31 == v30)
          {
            goto LABEL_8;
          }
        }

        v36 = 0;
        v37 = (v34 + v35);
        *(v33 + v30 + 60) = 0;
        goto LABEL_42;
      }

      if (!a3)
      {
        goto LABEL_124;
      }

      v111 = a3;
      v112 = sub_239931A78("File corrupted: unable to create TRC ");
    }

    *v111 = v112;
    goto LABEL_124;
  }

  if (a3)
  {
    v15 = sub_239931A78("Error: file truncated at TRC stage");
    goto LABEL_7;
  }

LABEL_2:
  result = 0;
LABEL_8:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2399287AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    free(a18);
    __cxa_end_catch();
    JUMPOUT(0x239926FC8);
  }

  _Unwind_Resume(exception_object);
}

id sub_239928850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = 4;
  while (*v2 || !*(v2 + 12))
  {
    v3 += 84;
    v2 += 84;
    if (!--v1)
    {
      return 0;
    }
  }

  v5 = objc_opt_new();
  objc_msgSend_setTextureType_(v5, v6, 0, v7);
  objc_msgSend_setPixelFormat_(v5, v8, 55, v9);
  objc_msgSend_setWidth_(v5, v10, *(*(a1 + 24) + v3), v11);
  objc_msgSend_setCpuCacheMode_(v5, v12, 0, v13);
  objc_msgSend_setHazardTrackingMode_(v5, v14, 1, v15);
  objc_msgSend_setUsage_(v5, v16, 1, v17);

  return v5;
}

void *sub_239928934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_284C6AA58;
  a1[1] = 0;
  v8 = a4 & ~(a4 >> 63);
  a1[2] = v8;
  a1[3] = a1 + 4;
  if (a4 >= 1)
  {
    if (!off_27DF853E0)
    {
      *v75 = "CGColorTRCGetFunction";
      *&v75[8] = &off_27DF853E0;
      if (qword_27DF853F0 == -1)
      {
        if (!off_27DF853E0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        dispatch_once_f(&qword_27DF853F0, v75, sub_239931094);
        if (!off_27DF853E0)
        {
          goto LABEL_119;
        }
      }
    }

    if (!off_27DF853C0)
    {
      *v75 = "CGColorFunctionGetProperties";
      *&v75[8] = &off_27DF853C0;
      if (qword_27DF853F8 == -1)
      {
        if (!off_27DF853C0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        dispatch_once_f(&qword_27DF853F8, v75, sub_2399310CC);
        if (!off_27DF853C0)
        {
          goto LABEL_119;
        }
      }
    }

    if (!off_27DF853E8)
    {
      *v75 = "CGColorTRCGetGammaID";
      *&v75[8] = &off_27DF853E8;
      if (qword_27DF85400 == -1)
      {
        if (!off_27DF853E8)
        {
          goto LABEL_119;
        }
      }

      else
      {
        dispatch_once_f(&qword_27DF85400, v75, sub_239931104);
        if (!off_27DF853E8)
        {
          goto LABEL_119;
        }
      }
    }

    if (!off_27DF853B0)
    {
      *v75 = "CGColorFunctionGetInputRange";
      *&v75[8] = &off_27DF853B0;
      if (qword_27DF85408 == -1)
      {
        if (!off_27DF853B0)
        {
          goto LABEL_119;
        }
      }

      else
      {
        dispatch_once_f(&qword_27DF85408, v75, sub_23993113C);
        if (!off_27DF853B0)
        {
          goto LABEL_119;
        }
      }
    }

    if (off_27DF853B8)
    {
LABEL_17:
      v8 = a1[2];
      goto LABEL_18;
    }

    *v75 = "CGColorFunctionGetOutputRange";
    *&v75[8] = &off_27DF853B8;
    if (qword_27DF85410 == -1)
    {
      if (off_27DF853B8)
      {
        goto LABEL_17;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF85410, v75, sub_239931174);
      if (off_27DF853B8)
      {
        goto LABEL_17;
      }
    }

LABEL_119:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

LABEL_18:
  if (v8)
  {
    v9 = 0;
    v10 = vneg_f32(0x3F0000003FLL);
    while (1)
    {
      v12 = *(a5 + 8 * v9);
      v13 = a1[3];
      v14 = off_27DF853E0;
      if (!off_27DF853E0)
      {
        context[0] = "CGColorTRCGetFunction";
        context[1] = &off_27DF853E0;
        if (qword_27DF853F0 != -1)
        {
          dispatch_once_f(&qword_27DF853F0, context, sub_239931094);
        }

        v14 = off_27DF853E0;
      }

      (v14)(v75, *(*(a2 + 52) + 8 * v12));
      v15 = v13 + 84 * v9;
      if (*v75 > 4)
      {
        break;
      }

      if (*v75 > 1)
      {
        if (*v75 == 2)
        {
          *v15 = 1;
          *(v15 + 8) = *&v75[8];
          *(v15 + 16) = 0;
          *(v15 + 20) = -*&v75[12] / *&v75[8];
          *(v15 + 24) = *&v75[16];
          *(v15 + 28) = *&v75[16];
          goto LABEL_54;
        }

        if (*v75 == 3)
        {
          *v15 = 1;
          *(v15 + 8) = *&v75[8];
          *(v15 + 16) = *&v75[16];
          v17 = *&v76;
          goto LABEL_53;
        }

        v16 = 1;
        goto LABEL_56;
      }

      if (*v75)
      {
        if (*v75 != 1)
        {
          goto LABEL_58;
        }

        *v15 = 1;
        *(v15 + 8) = *&v75[8];
        *(v15 + 16) = 0;
        v17 = -*&v75[12] / *&v75[8];
LABEL_53:
        *(v15 + 20) = v17;
        *(v15 + 24) = 0;
LABEL_54:
        *(v15 + 32) = 0;
        *(v15 + 4) = *&v75[4];
        goto LABEL_58;
      }

      *v15 = 1;
      *(v15 + 8) = xmmword_2399353D0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      v18 = *&v75[4];
      *(v15 + 4) = *&v75[4];
      if (v18 == 1.0)
      {
        *(v15 + 20) = 2139095040;
      }

LABEL_58:
      v24 = off_27DF853C0;
      if (!off_27DF853C0)
      {
        *v75 = "CGColorFunctionGetProperties";
        *&v75[8] = &off_27DF853C0;
        if (qword_27DF853F8 != -1)
        {
          dispatch_once_f(&qword_27DF853F8, v75, sub_2399310CC);
        }

        v24 = off_27DF853C0;
      }

      *(a1[3] + 84 * v9 + 60) = v24(*(*(a2 + 52) + 8 * v12));
      v25 = off_27DF853E8;
      if (!off_27DF853E8)
      {
        *v75 = "CGColorTRCGetGammaID";
        *&v75[8] = &off_27DF853E8;
        if (qword_27DF85400 != -1)
        {
          dispatch_once_f(&qword_27DF85400, v75, sub_239931104);
        }

        v25 = off_27DF853E8;
      }

      *(a1[3] + 84 * v9 + 64) = v25(*(*(a2 + 52) + 8 * v12));
      v26 = off_27DF853B0;
      if (!off_27DF853B0)
      {
        *v75 = "CGColorFunctionGetInputRange";
        *&v75[8] = &off_27DF853B0;
        if (qword_27DF85408 != -1)
        {
          dispatch_once_f(&qword_27DF85408, v75, sub_23993113C);
        }

        v26 = off_27DF853B0;
      }

      v27 = v26(*(*(a2 + 52) + 8 * v12));
      v28 = a1[3] + 84 * v9;
      *(v28 + 68) = v27;
      *(v28 + 72) = v29;
      v30 = off_27DF853B8;
      if (!off_27DF853B8)
      {
        *v75 = "CGColorFunctionGetOutputRange";
        *&v75[8] = &off_27DF853B8;
        if (qword_27DF85410 != -1)
        {
          dispatch_once_f(&qword_27DF85410, v75, sub_239931174);
        }

        v30 = off_27DF853B8;
      }

      v31 = v30(*(*(a2 + 52) + 8 * v12));
      v33 = a1[3] + 84 * v9;
      *(v33 + 76) = v31;
      *(v33 + 80) = v32;
      v34 = *(v33 + 60);
      v35 = *(v33 + 68);
      if ((~v34 & 5) == 0 && v35 >= 0.0)
      {
        v34 &= ~1u;
        *(v33 + 60) = v34;
      }

      v36 = *(v33 + 72);
      v37 = (v35 <= -1.1755e-38) & (v34 >> 2) & (v36 >= 3.4028e38);
      if (v37)
      {
        v34 &= ~4u;
      }

      v38 = (v31 <= -1.1755e-38) & (v34 >> 1) & (v32 >= 3.4028e38);
      if (v38)
      {
        v34 &= ~2u;
      }

      if (v37 & 1) != 0 || (v38)
      {
        *(v33 + 60) = v34;
      }

      if ((v34 & 4) == 0 || *v33 != 1)
      {
        goto LABEL_22;
      }

      v39 = *(v33 + 20);
      if (v36 < v39)
      {
        v11 = 2139095040;
      }

      else
      {
        if (v35 < v39)
        {
          goto LABEL_22;
        }

        v11 = 2143289344;
      }

      *(v33 + 20) = v11;
LABEL_22:
      if (++v9 >= a1[2])
      {
        return a1;
      }
    }

    if (*v75 > 6)
    {
      switch(*v75)
      {
        case 7:
          v16 = 4;
          break;
        case 8:
          v16 = 6;
          break;
        case 9:
          *v15 = 5;
          goto LABEL_57;
        default:
          goto LABEL_58;
      }

LABEL_56:
      *v15 = v16;
LABEL_57:
      v23 = *&v75[4];
      *(v15 + 20) = v76;
      *(v15 + 4) = v23;
      goto LABEL_58;
    }

    if (*v75 != 5)
    {
      v16 = 3;
      goto LABEL_56;
    }

    *v15 = 0;
    v19 = *&v75[4];
    *(v15 + 4) = *&v75[4];
    *(v15 + 20) = v76;
    *(v15 + 12) = 0;
    if (!*&v75[12])
    {
      *(v15 + 36) = v10;
      goto LABEL_58;
    }

    if (v19 < 3)
    {
      if (malloc_type_malloc(4 * *&v75[4], 0x100004052888210uLL))
      {
        memcpy(*(v15 + 12), *&v75[12], 4 * *(v15 + 4));
        goto LABEL_96;
      }
    }

    else
    {
      v20 = (*&v75[12] + 4);
      v21 = **&v75[12] + (*(*&v75[12] + 4) / (v19 - 1));
      v22 = v19 - 2;
      while (*v20 == v21)
      {
        ++v20;
        if (!--v22)
        {
          goto LABEL_93;
        }
      }

      if (v22)
      {
        goto LABEL_96;
      }

LABEL_93:
      v40 = malloc_type_malloc(8uLL, 0x100004052888210uLL);
      if (v40)
      {
        *(v15 + 4) = 2;
        *(v15 + 12) = v40;
        *v40 = **&v75[12];
        v40[1] = *(*&v75[12] + 4 * *&v75[4] - 4);
        goto LABEL_96;
      }
    }

    *(v15 + 4) = 0;
LABEL_96:
    v41 = *(v15 + 12);
    *(v15 + 36) = v10;
    if (v41)
    {
      memcpy(v41, *&v75[12], 4 * *(v15 + 4));
      v42 = *(v15 + 12);
      v43 = *(v15 + 4);
      if (v43 >= 0x10)
      {
        v45.i64[0] = 0x7F0000007FLL;
        v45.i64[1] = 0x7F0000007FLL;
        v46 = vnegq_f32(v45);
        v53 = 16;
        v50.i64[0] = 0x7F0000007FLL;
        v50.i64[1] = 0x7F0000007FLL;
        v51.i64[0] = 0x7F0000007FLL;
        v51.i64[1] = 0x7F0000007FLL;
        v52.i64[0] = 0x7F0000007FLL;
        v52.i64[1] = 0x7F0000007FLL;
        v47 = v46;
        v48 = v46;
        v49 = v46;
        do
        {
          v55 = v42[2];
          v54 = v42[3];
          v57 = *v42;
          v56 = v42[1];
          v42 += 4;
          v45 = vmaxnmq_f32(v57, v45);
          v50 = vmaxnmq_f32(v56, v50);
          v51 = vmaxnmq_f32(v55, v51);
          v52 = vmaxnmq_f32(v54, v52);
          v46 = vminnmq_f32(v57, v46);
          v47 = vminnmq_f32(v56, v47);
          v48 = vminnmq_f32(v55, v48);
          v49 = vminnmq_f32(v54, v49);
          v53 += 16;
        }

        while (v53 <= v43);
        v44 = v43 & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v44 = 0;
        v45.i64[0] = 0x7F0000007FLL;
        v45.i64[1] = 0x7F0000007FLL;
        v46 = vnegq_f32(v45);
        v47 = v46;
        v48 = v46;
        v49 = v46;
        v50.i64[0] = 0x7F0000007FLL;
        v50.i64[1] = 0x7F0000007FLL;
        v51.i64[0] = 0x7F0000007FLL;
        v51.i64[1] = 0x7F0000007FLL;
        v52.i64[0] = 0x7F0000007FLL;
        v52.i64[1] = 0x7F0000007FLL;
      }

      v58 = vmaxnmq_f32(vmaxnmq_f32(v45, v51), vmaxnmq_f32(v50, v52));
      v59 = vminnmq_f32(vminnmq_f32(v46, v48), vminnmq_f32(v47, v49));
      if ((v44 | 4) <= v43)
      {
        do
        {
          v61 = *v42++;
          v58 = vmaxnmq_f32(v61, v58);
          v59 = vminnmq_f32(v61, v59);
          v60 = v44 + 4;
          v62 = v44 + 8;
          v44 += 4;
        }

        while (v62 <= v43);
      }

      else
      {
        v60 = v44;
      }

      v63 = vmaxnm_f32(*v58.f32, *&vextq_s8(v58, v58, 8uLL));
      v64 = vminnm_f32(*v59.f32, *&vextq_s8(v59, v59, 8uLL));
      v65 = vcgt_f32(vzip2_s32(v64, v63), vzip1_s32(v64, v63));
      v66 = vext_s8(v64, v63, 4uLL);
      v64.i32[1] = v63.i32[1];
      v67 = vbsl_s8(v65, v64, v66);
      v68 = v43 > v60;
      v69 = v43 - v60;
      if (v68)
      {
        do
        {
          v70 = v42->i32[0];
          v42 = (v42 + 4);
          v63.i32[0] = v70;
          v71 = vcgt_f32(v67, vdup_lane_s32(v63, 0));
          v72 = __PAIR64__(v67.u32[1], v70);
          v67.i32[1] = v70;
          v67 = vbsl_s8(v71, v72, v67);
          --v69;
        }

        while (v69);
      }

      *(v15 + 36) = v67;
    }

    goto LABEL_58;
  }

  return a1;
}

uint64_t sub_239929290(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = 24 * v2 + 12;
  if (v2)
  {
    v4 = (*(a1 + 24) + 4);
    do
    {
      v6 = *(v4 - 1);
      if ((v6 - 3) < 4)
      {
        goto LABEL_3;
      }

      if (!v6)
      {
        v5 = 4 * *v4 + 36;
        goto LABEL_4;
      }

      if (v6 == 1)
      {
LABEL_3:
        v5 = 40;
      }

      else
      {
        v5 = 8;
      }

LABEL_4:
      result += v5;
      v4 = (v4 + 84);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_239929300(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = (*(*a1 + 16))(a1);
  v7 = *a3;
  v8 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v9 = *a2;
  v10 = *a2;
  *v10 = 0x1000000;
  *a2 = v10 + 1;
  *a3 = v8;
  if (v8 < 4)
  {
    return 0;
  }

  v9[1] = bswap32(v6);
  *a2 = v9 + 2;
  *a3 = v7 - 8;
  v11 = *(v5 + 16);
  if (v7 - 8 > 3)
  {
    v15 = bswap32(v11);
    v16 = v9 + 3;
    v9[2] = v15;
    *a2 = v9 + 3;
    v17 = v7 - 12;
    *a3 = v7 - 12;
    if (!*(v5 + 16))
    {
      v12 = 1;
      v13 = 1;
      return v12 & v13;
    }

    v18 = 0;
    v19 = 1;
    v51 = a3;
    v52 = v5;
    v50 = a2;
    while (1)
    {
      v20 = *(v5 + 24);
      if (v17 <= 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        goto LABEL_20;
      }

      v21 = v20 + v18;
      *v16 = bswap32(*(v20 + v18 + 60));
      v22 = v16 + 1;
      *a2 = v16 + 1;
      v23 = v17 - 4;
      *a3 = v17 - 4;
      if (v17 - 4 < 4 || (v22 = v16 + 2, v16[1] = bswap32(*(v21 + 64)), *a2 = v16 + 2, v23 = v17 - 8, *a3 = v17 - 8, v17 - 8 < 4))
      {
        v27 = 0;
        v26 = 0;
        v25 = 0;
        v16 = v22;
        v17 = v23;
        goto LABEL_20;
      }

      v16[2] = bswap32(*(v20 + v18 + 72));
      *a2 = v16 + 3;
      *a3 = v17 - 12;
      if (v17 - 12 < 4)
      {
        v27 = 0;
        v25 = 0;
        v26 = 1;
        v16 += 3;
        v17 -= 12;
        goto LABEL_20;
      }

      v16[3] = bswap32(*(v21 + 68));
      *a2 = v16 + 4;
      *a3 = v17 - 16;
      if (v17 - 16 < 4)
      {
        break;
      }

      v16[4] = bswap32(*(v20 + v18 + 80));
      *a2 = v16 + 5;
      *a3 = v17 - 20;
      if (v17 - 20 <= 3)
      {
        v27 = 1;
        v16 += 5;
        v17 -= 20;
        v26 = 1;
        v25 = 1;
LABEL_20:
        v28 = 0;
        v24 = *(v20 + v18);
        v29 = 0;
        if (v24 - 3 < 4)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v16[5] = bswap32(*(v20 + v18 + 76));
      *a2 = v16 + 6;
      *a3 = v17 - 24;
      v24 = *(v20 + v18);
      if (v17 - 24 < 4)
      {
        v25 = 1;
        v17 -= 24;
        v16 += 6;
      }

      else
      {
        v16[6] = bswap32(v24);
        *a2 = v16 + 7;
        *a3 = v17 - 28;
        if (v17 - 28 >= 4)
        {
          v16[7] = 0x1000000;
          v16 += 8;
          *a2 = v16;
          v17 -= 32;
          v25 = 1;
          *a3 = v17;
          v26 = 1;
          v27 = 1;
          v28 = 1;
          v29 = 1;
          if (v24 - 3 < 4)
          {
            goto LABEL_23;
          }

          goto LABEL_21;
        }

        v17 -= 28;
        v16 += 7;
        v25 = 1;
      }

      v26 = 1;
      v27 = 1;
      v28 = 1;
      v29 = 0;
      if (v24 - 3 < 4)
      {
        goto LABEL_23;
      }

LABEL_21:
      if (!v24)
      {
        v36 = v20 + v18;
        v37 = v17 - 4;
        if (v17 < 4)
        {
          v41 = 0;
          v42 = 0;
          v43 = *(v36 + 4);
          v44 = 4 * v43;
          if (v17 < 4 * v43)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        *v16 = bswap32(*(v36 + 40));
        *a2 = v16 + 1;
        *a3 = v37;
        if (v37 < 4)
        {
          v41 = 0;
          v42 = 0;
          v17 -= 4;
          ++v16;
          v43 = *(v36 + 4);
          v44 = 4 * v43;
          if (v37 < 4 * v43)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }

        v38 = v16 + 2;
        v16[1] = bswap32(*(v20 + v18 + 36));
        *a2 = v16 + 2;
        v39 = v17 - 8;
        *a3 = v17 - 8;
        if (v17 - 8 < 4)
        {
          goto LABEL_57;
        }

        v38 = v16 + 3;
        v16[2] = bswap32(*(v36 + 4));
        *a2 = v16 + 3;
        v39 = v17 - 12;
        *a3 = v17 - 12;
        if (v17 - 12 < 4)
        {
          goto LABEL_57;
        }

        v38 = v16 + 4;
        v16[3] = bswap32(*(v20 + v18 + 20));
        *a2 = v16 + 4;
        v39 = v17 - 16;
        *a3 = v17 - 16;
        if (v17 - 16 < 4 || (v38 = v16 + 5, v16[4] = bswap32(*(v20 + v18 + 24)), *a2 = v16 + 5, v39 = v17 - 20, *a3 = v17 - 20, v17 - 20 < 4))
        {
LABEL_57:
          v41 = 0;
          v42 = 0;
          v17 = v39;
          v16 = v38;
          v43 = *(v36 + 4);
          v44 = 4 * v43;
          if (v39 >= 4 * v43)
          {
            goto LABEL_50;
          }
        }

        else
        {
          v16[5] = bswap32(*(v20 + v18 + 28));
          *a2 = v16 + 6;
          v40 = v17 - 24;
          *a3 = v17 - 24;
          if (v17 - 24 >= 4)
          {
            v16[6] = bswap32(*(v20 + v18 + 32));
            v16 += 7;
            *a2 = v16;
            v17 -= 28;
            *a3 = v17;
            v41 = 1;
            v42 = 1;
            v43 = *(v36 + 4);
            v44 = 4 * v43;
            if (v17 < 4 * v43)
            {
              goto LABEL_53;
            }

LABEL_50:
            src.data = *(v20 + v18 + 12);
            src.height = 1;
            src.width = v43;
            src.rowBytes = v44;
            dest.data = v16;
            dest.height = 1;
            dest.width = v43;
            dest.rowBytes = v44;
            v53 = v42;
            v45 = v27;
            v46 = v26;
            v47 = v28;
            vImagePermuteChannels_ARGB8888(&src, &dest, byte_239935510, 0);
            v42 = v53;
            v28 = v47;
            v26 = v46;
            a3 = v51;
            v5 = v52;
            v27 = v45;
            a2 = v50;
            v16 = (v44 + *v50);
            *v50 = v16;
            v48 = *v51 - v44;
            *v51 = v48;
LABEL_54:
            v49 = v41 & v42;
            if (v17 < v44)
            {
              v49 = 0;
            }

            v29 &= v49;
            v17 = v48;
            goto LABEL_37;
          }

          v41 = 0;
          v42 = 1;
          v17 -= 24;
          v16 += 6;
          v43 = *(v36 + 4);
          v44 = 4 * v43;
          if (v40 >= 4 * v43)
          {
            goto LABEL_50;
          }
        }

LABEL_53:
        v48 = v17;
        goto LABEL_54;
      }

      if (v24 == 1)
      {
LABEL_23:
        v30 = v17 - 4;
        if (v17 >= 4)
        {
          *v16 = bswap32(*(v20 + v18 + 4));
          *a2 = v16 + 1;
          *a3 = v30;
          if (v30 < 4)
          {
            v34 = 0;
            v35 = 0;
            v17 -= 4;
            ++v16;
            goto LABEL_36;
          }

          v31 = v16 + 2;
          v16[1] = bswap32(*(v20 + v18 + 8));
          *a2 = v16 + 2;
          v32 = v17 - 8;
          *a3 = v17 - 8;
          if (v17 - 8 < 4)
          {
            goto LABEL_34;
          }

          v31 = v16 + 3;
          v16[2] = bswap32(*(v20 + v18 + 12));
          *a2 = v16 + 3;
          v32 = v17 - 12;
          *a3 = v17 - 12;
          if (v17 - 12 < 4)
          {
            goto LABEL_34;
          }

          v31 = v16 + 4;
          v16[3] = bswap32(*(v20 + v18 + 16));
          *a2 = v16 + 4;
          v32 = v17 - 16;
          *a3 = v17 - 16;
          if (v17 - 16 < 4)
          {
            goto LABEL_34;
          }

          v31 = v16 + 5;
          v16[4] = bswap32(*(v20 + v18 + 20));
          *a2 = v16 + 5;
          v32 = v17 - 20;
          *a3 = v17 - 20;
          if (v17 - 20 < 4 || (v31 = v16 + 6, v16[5] = bswap32(*(v20 + v18 + 24)), *a2 = v16 + 6, v32 = v17 - 24, *a3 = v17 - 24, v17 - 24 < 4))
          {
LABEL_34:
            v34 = 0;
            v35 = 0;
          }

          else
          {
            v33 = v20 + v18;
            v31 = v16 + 7;
            v16[6] = bswap32(*(v33 + 28));
            *a2 = v16 + 7;
            v32 = v17 - 28;
            *a3 = v17 - 28;
            if (v17 - 28 >= 4)
            {
              v16[7] = bswap32(*(v33 + 32));
              v16 += 8;
              *a2 = v16;
              v17 -= 32;
              *a3 = v17;
              v34 = 1;
              v35 = 1;
LABEL_36:
              v29 &= v34 & v35;
              goto LABEL_37;
            }

            v34 = 0;
            v35 = 1;
          }

          v17 = v32;
          v16 = v31;
          goto LABEL_36;
        }

        v34 = 0;
        v35 = 0;
        goto LABEL_36;
      }

LABEL_37:
      v12 = v28 & v25 & v27 & v26 & v29;
      v13 = v19 >= *(v5 + 16);
      if (v19 < *(v5 + 16))
      {
        ++v19;
        v18 += 84;
        if (v12)
        {
          continue;
        }
      }

      return v12 & v13;
    }

    v25 = 0;
    v27 = 1;
    v16 += 4;
    v17 -= 16;
    v26 = 1;
    goto LABEL_20;
  }

  v12 = 0;
  v13 = v11 == 0;
  return v12 & v13;
}

uint64_t sub_239929A3C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_239929E3C(a2, "\t\tTRC Stage %p:\n", a3, a4, a5, a6, a7, a8, a1);
  if (*(a1 + 16))
  {
    v17 = 0;
    v18 = 76;
    do
    {
      sub_239929E3C(a2, "\t\t\tChannel %lu:\n", v11, v12, v13, v14, v15, v16, v17);
      v49 = *(a1 + 24);
      v50 = *(v49 + v18 - 76);
      if (v50 > 3)
      {
        switch(v50)
        {
          case 4:
            v60 = v49 + v18;
            v102 = *(v60 - 52);
            v108 = *(v60 - 64);
            v90 = *(v60 - 60);
            v96 = *(v60 - 56);
            v78 = *(v60 - 48);
            v83 = *(v60 - 68);
            sub_239929E3C(a2, "\t\t\t\tInverse PQ EOTF:    result = sign_reflect(Inv_PQ_EOTF(x), x)\n\t\t\t\t                    Y = (|x| * %f) ^ %f\n\t\t\t\t                    Y = (%f + %f * Y) / (1 + %f * Y))\n\t\t\t\t                    Inv_PQ_EOTF(x) = Y ^ %f\n", v43, v44, v45, v46, v47, v48, SLOBYTE(v78));
            break;
          case 5:
            v64 = v49 + v18;
            v97 = *(v64 - 64);
            v103 = *(v64 - 60);
            v85 = *(v64 - 56);
            v91 = *(v64 - 68);
            v80 = *(v64 - 52);
            sub_239929E3C(a2, "\t\t\t\tHLG OETF:    result = sign_reflect( HLG_EOTF(x), x)\n\t\t\t\t             Y = |x * %f|\n\t\t\t\t             HLG_EOTF(x) = (Y <= %f) sqrt(3*Y) : %f * log(12*Y - %f) + %f\n", v43, v44, v45, v46, v47, v48, SLOBYTE(v80));
            break;
          case 6:
            v58 = v49 + v18;
            v106 = *(v58 - 64);
            v111 = *(v58 - 52);
            v94 = *(v58 - 60);
            v100 = *(v58 - 68);
            v88 = *(v58 - 56);
            v77 = *(v58 - 48);
            sub_239929E3C(a2, "\t\t\t\tInverse HLG OETF:  result = sign_reflect(Inv_HLG_OETF(x), x)\n\t\t\t\t                   Y = MAX( 0, %f + (1 - %f)|x|)\n\t\t\t\t                   Inv_HLG_OETF(x) = (Y > 0.5) ? %f * e ^[(Y - %f) / %f + %f] :\n\t\t\t\t                                                 Y * Y * %f\n", v43, v44, v45, v46, v47, v48, SLOBYTE(v77));
            break;
          default:
LABEL_16:
            sub_239929E3C(a2, "\t\t\t\t<Unhandled TRC format %u>\n", v43, v44, v45, v46, v47, v48, *(v49 + v18 - 76));
            break;
        }
      }

      else if (v50)
      {
        if (v50 == 1)
        {
          v61 = v49 + v18;
          v62 = *(v49 + v18 - 56);
          v63 = v49 + v18;
          if (v62 == INFINITY)
          {
            v79 = *(v63 - 60);
            v84 = *(v63 - 48);
            sub_239929E3C(a2, "\t\t\t\tY = %f * x + %f\n", v43, v44, v45, v46, v47, v48, SLOBYTE(v79));
          }

          else
          {
            v109 = *(v63 - 60);
            v113 = *(v63 - 48);
            v98 = *(v61 - 72);
            v104 = *(v63 - 52);
            v86 = *(v63 - 68);
            v92 = *(v63 - 64);
            v81 = v62;
            sub_239929E3C(a2, "\t\t\t\tx >= %10f: Y = (%f * x + %f)^%f + %f\n\t\t\t\t           else: Y = %f * x + %f\n", v43, v44, v45, v46, v47, v48, SLOBYTE(v81));
          }
        }

        else
        {
          if (v50 != 3)
          {
            goto LABEL_16;
          }

          v51 = v49 + v18;
          v105 = *(v51 - 68);
          v110 = *(v51 - 64);
          v93 = *(v51 - 56);
          v99 = *(v51 - 52);
          v87 = *(v51 - 60);
          v75 = *(v51 - 48);
          sub_239929E3C(a2, "\t\t\t\tPQ EOTF:    result = sign_reflect(PQ_EOTF(x), x)\n\t\t\t\tPQ_EOTF(x)= %f * [MAX(|x|^%f - %f, 0) / (%f - %f * |x|^%f)] ^ %f\n", v43, v44, v45, v46, v47, v48, SLOBYTE(v75));
        }
      }

      else
      {
        v59 = v49 + v18;
        v107 = *(v59 - 44);
        v112 = *(v59 - 48);
        v95 = *(v59 - 52);
        v101 = *(v59 - 56);
        v82 = *(v59 - 40);
        v89 = *(v59 - 36);
        sub_239929E3C(a2, "\t\t\t\tTable:       %lu entries, range: [%f, %f]\n\t\t\t\tabove one:   %f + %f * x\n\t\t\t\tbelow zero:  %f + %f * x\n", v43, v44, v45, v46, v47, v48, *(v59 - 72));
      }

      sub_239929E3C(a2, "\t\t\t\tGammaID:      ", v52, v53, v54, v55, v56, v57, v76);
      v71 = *(*(a1 + 24) + v18 - 12);
      if (v71 >= 0x10)
      {
        sub_239929E3C(a2, "<invalid CGGammaID>%s", v65, v66, v67, v68, v69, v70, "\n");
      }

      else
      {
        sub_239929E3C(a2, "%s%s", v65, v66, v67, v68, v69, v70, off_278AAAB88[v71]);
      }

      sub_239929E3C(a2, "\t\t\t\tProperties:   ", v19, v20, v21, v22, v23, v24, v72);
      sub_239929E68(a2, *(*(a1 + 24) + v18 - 16), v25, v26, v27, v28, v29, v30);
      sub_239929E3C(a2, "\t\t\t\tInput clamp:  ", v31, v32, v33, v34, v35, v36, v73);
      sub_239931904(a2, (*(a1 + 24) + v18 - 8));
      sub_239929E3C(a2, "\t\t\t\tOutput clamp: ", v37, v38, v39, v40, v41, v42, v74);
      result = sub_239931904(a2, (*(a1 + 24) + v18));
      ++v17;
      v18 += 84;
    }

    while (v17 < *(a1 + 16));
  }

  return result;
}

uint64_t sub_239929E68(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v11 = "<none>%s";
    return sub_239929E3C(a1, v11, a3, a4, a5, a6, a7, a8, "\n");
  }

  v9 = a2;
  if ((a2 & 1) == 0)
  {
    if ((a2 & 2) == 0)
    {
      v10 = 0;
      if ((a2 & 4) == 0)
      {
        goto LABEL_20;
      }

LABEL_14:
      if (v10)
      {
        v14 = " | %s";
      }

      else
      {
        v14 = "%s";
      }

      ++v10;
      goto LABEL_19;
    }

    v10 = 1;
    v13 = "%s";
LABEL_13:
    sub_239929E3C(a1, v13, a3, a4, a5, a6, a7, a8, "kCGColorFunctionOutputClamp");
    if ((v9 & 4) == 0)
    {
LABEL_20:
      if ((v9 & 8) == 0)
      {
        v11 = "%s";
        if ((v9 & 0x10) == 0)
        {
          return sub_239929E3C(a1, v11, a3, a4, a5, a6, a7, a8, "\n");
        }

        goto LABEL_22;
      }

      if (v10)
      {
        v12 = " | %s";
      }

      else
      {
        v12 = "%s";
      }

      goto LABEL_30;
    }

    goto LABEL_14;
  }

  sub_239929E3C(a1, "%s", a3, a4, a5, a6, a7, a8, "kCGColorFunctionSignedReflectionTRC");
  if ((v9 & 2) != 0)
  {
    v10 = 2;
    v13 = " | %s";
    goto LABEL_13;
  }

  if ((v9 & 4) != 0)
  {
    v10 = 2;
    v14 = " | %s";
LABEL_19:
    sub_239929E3C(a1, v14, a3, a4, a5, a6, a7, a8, "kCGColorFunctionInputClamp");
    goto LABEL_20;
  }

  if ((v9 & 8) == 0)
  {
    goto LABEL_31;
  }

  v12 = " | %s";
LABEL_30:
  sub_239929E3C(a1, v12, a3, a4, a5, a6, a7, a8, "kCGColorMatrixOnlyFirstChannelInput");
LABEL_31:
  v10 = 1;
  v11 = "%s";
  if ((v9 & 0x10) == 0)
  {
    return sub_239929E3C(a1, v11, a3, a4, a5, a6, a7, a8, "\n");
  }

LABEL_22:
  if (v10)
  {
    v15 = " | %s";
  }

  else
  {
    v15 = "%s";
  }

  sub_239929E3C(a1, v15, a3, a4, a5, a6, a7, a8, "kCGColorMatrixOnlyFirstChannelOutput");
  v11 = "%s";
  return sub_239929E3C(a1, v11, a3, a4, a5, a6, a7, a8, "\n");
}

void *sub_239929FEC(void *a1)
{
  *a1 = &unk_284C6AA58;
  v2 = a1[2];
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = a1[3];
      if (!*(v5 + v3))
      {
        free(*(v5 + v3 + 12));
        v2 = a1[2];
      }

      v3 += 84;
    }
  }

  return a1;
}

void sub_23992A078(void *a1)
{
  *a1 = &unk_284C6AA58;
  v2 = a1[2];
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = a1[3];
      if (!*(v5 + v3))
      {
        free(*(v5 + v3 + 12));
        v2 = a1[2];
      }

      v3 += 84;
    }
  }

  JUMPOUT(0x23EE7B550);
}

BOOL sub_23992A124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char *a6, uint64_t *a7)
{
  if (!a7)
  {
    v14 = objc_opt_new();
    if (!v14)
    {
      return 0;
    }

LABEL_5:
    v17 = v14;
    v90 = (*(*(a1 + 24) + 84 * a3 + 60) & 4) != 0;
    objc_msgSend_setConstantValue_type_atIndex_(v14, v15, &v90, 53, 0);
    v90 = (*(*(a1 + 24) + 84 * a3 + 60) & 2) != 0;
    objc_msgSend_setConstantValue_type_atIndex_(v17, v18, &v90, 53, 1);
    v90 = *(*(a1 + 24) + 84 * a3 + 60) & 1;
    objc_msgSend_setConstantValue_type_atIndex_(v17, v19, &v90, 53, 4);
    objc_msgSend_setConstantValue_type_atIndex_(v17, v20, *(a1 + 24) + 84 * a3 + 68, 4, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v17, v21, *(a1 + 24) + 84 * a3 + 76, 4, 3);
    v25 = 0;
    v26 = (*(a1 + 24) + 84 * a3);
    v27 = *v26;
    if (*v26 > 3)
    {
      switch(v27)
      {
        case 4:
          objc_msgSend_setConstantValue_type_atIndex_(v17, v22, (v26 + 2), 3, 5);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v52, (v26 + 3), 3, 6);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v53, (v26 + 4), 3, 7);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v54, (v26 + 5), 3, 8);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v55, (v26 + 6), 3, 9);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v56, (v26 + 7), 3, 10);
          v25 = "MPSFColorConversion_ApplyPQInvEOTF";
          v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v57, v58, v59);
          v16 = v36 != 0;
          if (!v36)
          {
            goto LABEL_19;
          }

          break;
        case 5:
          objc_msgSend_setConstantValue_type_atIndex_(v17, v22, (v26 + 2), 3, 5);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v83, (v26 + 3), 3, 6);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v84, (v26 + 4), 3, 7);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v85, (v26 + 5), 3, 8);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v86, (v26 + 6), 3, 9);
          v25 = "MPSFColorConversion_ApplyHLGOETF";
          v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v87, v88, v89);
          v16 = v36 != 0;
          if (!v36)
          {
            goto LABEL_19;
          }

          break;
        case 6:
          objc_msgSend_setConstantValue_type_atIndex_(v17, v22, (v26 + 2), 3, 5);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v38, (v26 + 3), 3, 6);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v39, (v26 + 4), 3, 7);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v40, (v26 + 5), 3, 8);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v41, (v26 + 6), 3, 9);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v42, (v26 + 7), 3, 10);
          v25 = "MPSFColorConversion_ApplyHLGInvOETF";
          v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v43, v44, v45);
          v16 = v36 != 0;
          if (!v36)
          {
LABEL_19:
            if (a7)
            {
              *a7 = sub_239931A78("Memory allocation failed. Could not make new MTLFunctionDescriptor object.");
            }

            goto LABEL_25;
          }

          break;
        default:
LABEL_22:
          v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v22, v23, v24);
          v16 = v36 != 0;
          if (!v36)
          {
            goto LABEL_19;
          }

          break;
      }
    }

    else
    {
      if (v27)
      {
        if (v27 == 1)
        {
          objc_msgSend_setConstantValue_type_atIndex_(v17, v22, (v26 + 2), 3, 5);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v60, (v26 + 3), 3, 6);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v61, (v26 + 4), 3, 7);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v62, (v26 + 5), 3, 8);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v63, (v26 + 6), 3, 9);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v64, (v26 + 7), 3, 10);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v65, (v26 + 1), 3, 12);
          v25 = "MPSFColorConversion_ApplyParametricTRC";
        }

        else if (v27 == 3)
        {
          objc_msgSend_setConstantValue_type_atIndex_(v17, v22, (v26 + 2), 3, 5);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v28, (v26 + 3), 3, 6);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v29, (v26 + 4), 3, 7);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v30, (v26 + 5), 3, 8);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v31, (v26 + 6), 3, 9);
          objc_msgSend_setConstantValue_type_atIndex_(v17, v32, (v26 + 7), 3, 10);
          v25 = "MPSFColorConversion_ApplyPQEOTF";
          v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v33, v34, v35);
          v16 = v36 != 0;
          if (!v36)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

        goto LABEL_22;
      }

      objc_msgSend_setConstantValue_type_atIndex_(v17, v22, (v26 + 8), 3, 27);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v46, (v26 + 7), 3, 28);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v47, (v26 + 6), 3, 29);
      objc_msgSend_setConstantValue_type_atIndex_(v17, v48, (v26 + 5), 3, 30);
      v25 = "MPSFColorConversion_ApplyTableTRC";
      v36 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v49, v50, v51);
      v16 = v36 != 0;
      if (!v36)
      {
        goto LABEL_19;
      }
    }

LABEL_23:
    v66 = v36;
    v67 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v37, v25, 4);
    objc_msgSend_setName_(v66, v68, v67, v69);
    snprintf(a6, 0xFFuLL, "%s_stage%lu_chan%lu", v25, a2, a3);
    v71 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v70, a6, 4);
    objc_msgSend_setSpecializedName_(v66, v72, v71, v73);
    objc_msgSend_setConstantValues_(v66, v74, v17, v75);
    objc_msgSend_setOptions_(v66, v76, 0, v77);

    v79 = objc_msgSend_newFunctionWithDescriptor_error_(a4, v78, v66, a7);
    if (v79)
    {
      v17 = v79;
      objc_msgSend_addObject_(a5, v80, v79, v81);
LABEL_25:

      return v16;
    }

    return 0;
  }

  *a7 = 0;
  v14 = objc_opt_new();
  if (v14)
  {
    goto LABEL_5;
  }

  v16 = 0;
  *a7 = sub_239931A78("Memory allocation failed. Could not make new MTLFunctionConstantValues object.");
  return v16;
}

uint64_t sub_23992A700(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t *a9)
{
  v11 = a4;
  if (a9)
  {
    *a9 = 0;
  }

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"MPSFColorConversion_ExtractChannel%lu", a4, a3);
  result = objc_msgSend_newFunctionWithName_(a8, v16, v15, v17);
  if (result)
  {
    v26 = result;
    sub_239929E3C(a2, "\t\t\tNODE(temp_stage%lu_chan%lu) : FUNCTION( MPSFColorConversion_ExtractChannel%lu), %s;\n", v20, v21, v22, v23, v24, v25, v11);
    objc_msgSend_addObject_(a7, v27, v26, v28);

    if (*(a1 + 16) <= a3 || *(*(a1 + 24) + 84 * a3))
    {
      return sub_239929E3C(a2, "\t\t\tNODE(result_stage%lu_chan%lu) : FUNCTION( %s), NODE(temp_stage%lu_chan%lu);\n", v29, v30, v31, v32, v33, v34, v11);
    }

    else
    {
      return sub_239929E3C(a2, "\t\t\tNODE(result_stage%lu_chan%lu) : FUNCTION( %s), NODE(temp_stage%lu_chan%lu), NODE(tex1d_1);\n", v29, v30, v31, v32, v33, v34, v11);
    }
  }

  else if (a9)
  {
    v35 = objc_msgSend_cStringUsingEncoding_(v15, v19, 4, v21);
    result = sub_239931A78("Failed to find metallib function of name %s\n", v35);
    *a9 = result;
  }

  return result;
}

uint64_t sub_23992A844(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v57 = *MEMORY[0x277D85DE8];
  v55 = 0;
  if (!*(a1 + 16) || (v15 = *(a1 + 24), (*(v15 + 60) & 7) == 0) && *v15 == 1 && *(v15 + 4) == 1.0 && *(v15 + 8) == 1.0 && *(v15 + 12) == 0.0 && *(v15 + 16) == 1.0 && *(v15 + 24) == 0.0 && *(v15 + 28) == 0.0)
  {
    v16 = objc_msgSend_newFunctionWithName_(a8, a2, @"MPSFColorConversion_DoNothing_float", a4);
    if (!v16)
    {
      goto LABEL_51;
    }

    v19 = v16;
    objc_msgSend_addObject_(a7, v17, v16, v18);

    strncpy(__dst, "MPSFColorConversion_DoNothing_float", 0x100uLL);
  }

  else if (!sub_23992A124(a1, a3, 0, a8, a7, __dst, &v55))
  {
    goto LABEL_56;
  }

  sub_23992A700(a1, a2, 0, a3, __dst, a5, a7, a8, &v55);
  result = v55;
  if (v55)
  {
    goto LABEL_57;
  }

  if (*(a1 + 16) < 2uLL || (v23 = *(a1 + 24), (*(v23 + 144) & 7) == 0) && *(v23 + 84) == 1 && *(v23 + 88) == 1.0 && *(v23 + 92) == 1.0 && *(v23 + 96) == 0.0 && *(v23 + 100) == 1.0 && *(v23 + 108) == 0.0 && *(v23 + 112) == 0.0)
  {
    v24 = objc_msgSend_newFunctionWithName_(a8, v20, @"MPSFColorConversion_DoNothing_float", v21);
    if (!v24)
    {
      goto LABEL_51;
    }

    v27 = v24;
    objc_msgSend_addObject_(a7, v25, v24, v26);

    strncpy(__dst, "MPSFColorConversion_DoNothing_float", 0x100uLL);
  }

  else if (!sub_23992A124(a1, a3, 1, a8, a7, __dst, &v55))
  {
    goto LABEL_56;
  }

  sub_23992A700(a1, a2, 1uLL, a3, __dst, a5, a7, a8, &v55);
  result = v55;
  if (v55)
  {
    goto LABEL_57;
  }

  if (*(a1 + 16) < 3uLL || (v30 = *(a1 + 24), (*(v30 + 228) & 7) == 0) && *(v30 + 168) == 1 && *(v30 + 172) == 1.0 && *(v30 + 176) == 1.0 && *(v30 + 180) == 0.0 && *(v30 + 184) == 1.0 && *(v30 + 192) == 0.0 && *(v30 + 196) == 0.0)
  {
    v31 = objc_msgSend_newFunctionWithName_(a8, v28, @"MPSFColorConversion_DoNothing_float", v29);
    if (!v31)
    {
      goto LABEL_51;
    }

    v34 = v31;
    objc_msgSend_addObject_(a7, v32, v31, v33);

    strncpy(__dst, "MPSFColorConversion_DoNothing_float", 0x100uLL);
  }

  else if (!sub_23992A124(a1, a3, 2, a8, a7, __dst, &v55))
  {
    goto LABEL_56;
  }

  sub_23992A700(a1, a2, 2uLL, a3, __dst, a5, a7, a8, &v55);
  result = v55;
  if (v55)
  {
    goto LABEL_57;
  }

  if (*(a1 + 16) < 4uLL || (v37 = *(a1 + 24), (*(v37 + 312) & 7) == 0) && *(v37 + 252) == 1 && *(v37 + 256) == 1.0 && *(v37 + 260) == 1.0 && *(v37 + 264) == 0.0 && *(v37 + 268) == 1.0 && *(v37 + 276) == 0.0 && *(v37 + 280) == 0.0)
  {
    v38 = objc_msgSend_newFunctionWithName_(a8, v35, @"MPSFColorConversion_DoNothing_float", v36);
    if (v38)
    {
      v41 = v38;
      objc_msgSend_addObject_(a7, v39, v38, v40);

      strncpy(__dst, "MPSFColorConversion_DoNothing_float", 0x100uLL);
      goto LABEL_53;
    }

LABEL_51:
    result = sub_239931A78("Could not find kernel function: MPSFColorConversion_DoNothing_float\n");
    goto LABEL_57;
  }

  if (!sub_23992A124(a1, a3, 3, a8, a7, __dst, &v55))
  {
LABEL_56:
    result = v55;
    goto LABEL_57;
  }

LABEL_53:
  sub_23992A700(a1, a2, 3uLL, a3, __dst, a5, a7, a8, &v55);
  result = v55;
  if (!v55)
  {
    v44 = objc_msgSend_newFunctionWithName_(a8, v42, @"MPSFColorConversion_MakePixel", v43);
    if (v44)
    {
      v51 = v44;
      sub_239929E3C(a2, "\t\t%s : FUNCTION( MPSFColorConversion_MakePixel), NODE(result_stage%lu_chan0), NODE(result_stage%lu_chan1), NODE(result_stage%lu_chan2), NODE(result_stage%lu_chan3);\n", v45, v46, v47, v48, v49, v50, a6);
      objc_msgSend_addObject_(a7, v52, v51, v53);
    }

    goto LABEL_56;
  }

LABEL_57:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23992AD68(uint64_t a1, uint64_t *a2, float *a3, char a4, float *a5, uint64_t a6, float a7, float a8)
{
  v8 = *(a1 + 24);
  v9 = v8 + 84 * a6;
  if (a7 == 0.0)
  {
    v10 = *a3;
    v11 = a3[1];
    if (*a3 <= a8)
    {
      v10 = a8;
    }

    v12.f64[0] = 2.84809454e-306;
    v12.f64[1] = 2.84809454e-306;
    *(v9 + 68) = vnegq_f64(v12);
    if (v10 >= v11)
    {
      v10 = v11;
    }

    *(v9 + 60) &= 0xFFFFFFF8;
    v18 = LODWORD(v10);
    result = 1;
    *v9 = 1;
    *(v9 + 4) = 1065353216;
    *(v9 + 12) = v18;
    *(v9 + 20) = 2139095040;
    *(v9 + 28) = v10;
    *(v9 + 32) = 0;
  }

  else
  {
    v18 = __PAIR64__(LODWORD(a8), LODWORD(a7));
    result = sub_23992AE94(v8 + 84 * a6, &v18, *a5, a5[1]);
    if (result)
    {
      v16 = *a2;
      *(v9 + 68) = *a2;
      v17 = *(v9 + 60) | a4 & 5;
      *(v9 + 60) = v17;
      if (*&v16 == -3.4028e38 && *(&v16 + 1) == 3.4028e38)
      {
        *(v9 + 60) = v17 & 0xFFFFFFFB;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_23992AE94(uint64_t a1, float *a2, float a3, float a4)
{
  v4 = *a1;
  if (*a1 > 3)
  {
    if (v4 == 4)
    {
      if (a3 >= 0.0 && a2[1] == 0.0)
      {
        *(a1 + 28) = *a2 * *(a1 + 28);
        return 1;
      }
    }

    else if (v4 == 6 && a3 >= 0.0 && a2[1] == 0.0)
    {
      *(a1 + 24) = *a2 * *(a1 + 24);
    }

    return 0;
  }

  if (!v4)
  {
    if (a3 < 1.0 || a4 >= 0.0)
    {
      if (*(a1 + 4) != 2)
      {
        return 0;
      }

      v20 = *(a1 + 12);
      v21 = v20[1] - *v20;
      v22 = a2[1];
      v23 = *v20 + (v21 * v22);
      v24 = *a2 * v21;
      if (*a2 == 0.0)
      {
        v24 = 0.0;
        v23 = *v20 + v22;
      }

      *v20 = v23;
      *(*(a1 + 12) + 4) = v24 + v23;
      v16 = *a2;
      v15 = a2[1];
      if (*a2 == 0.0)
      {
LABEL_19:
        v17 = v15 + *(a1 + 32);
        *(a1 + 28) = 0;
        *(a1 + 32) = v17;
        v19 = *a2;
        v18 = a2[1];
        if (*a2 == 0.0)
        {
LABEL_20:
          *(a1 + 20) = 0;
          *(a1 + 24) = v18 + *(a1 + 24);
          return 1;
        }

LABEL_30:
        v27 = *(a1 + 20);
        v28 = *(a1 + 24) + (v27 * v18);
        *(a1 + 20) = v19 * v27;
        *(a1 + 24) = v28;
        return 1;
      }
    }

    else
    {
      v16 = *a2;
      v15 = a2[1];
      if (*a2 == 0.0)
      {
        goto LABEL_19;
      }
    }

    v25 = *(a1 + 28);
    v26 = *(a1 + 32);
    *(a1 + 28) = v16 * v25;
    *(a1 + 32) = v26 + (v25 * v15);
    v19 = *a2;
    v18 = a2[1];
    if (*a2 == 0.0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  if (v4 != 1)
  {
    return 0;
  }

  v5 = *(a1 + 20);
  v6 = a2[1];
  v7 = (v5 - v6) / *a2;
  v8 = v6 < v5;
  v9 = INFINITY;
  if (!v8)
  {
    v9 = NAN;
  }

  if (*a2 != 0.0)
  {
    v9 = v7;
  }

  *(a1 + 20) = v9;
  v10 = a2[1];
  if (*a2 == 0.0)
  {
    v11 = v10 + *(a1 + 12);
    *(a1 + 8) = 0;
    *(a1 + 12) = v11;
    v13 = *a2;
    v12 = a2[1];
    if (*a2 == 0.0)
    {
LABEL_10:
      *(a1 + 16) = 0;
      *(a1 + 28) = v12 + *(a1 + 28);
      return 1;
    }
  }

  else
  {
    v29 = *(a1 + 8);
    v30 = *(a1 + 12);
    *(a1 + 8) = *a2 * v29;
    *(a1 + 12) = v30 + (v29 * v10);
    v13 = *a2;
    v12 = a2[1];
    if (*a2 == 0.0)
    {
      goto LABEL_10;
    }
  }

  v31 = *(a1 + 16);
  *(a1 + 28) = *(a1 + 28) + (v31 * v12);
  *(a1 + 16) = v13 * v31;
  return 1;
}

uint64_t sub_23992B0BC(uint64_t a1, float *__pattern4, uint64_t a3)
{
  v6 = *(a1 + 24) + 84 * a3;
  v7 = *(v6 + 60);
  v8 = &v147;
  if ((v7 & 4) != 0)
  {
    v11 = *__pattern4;
    v12 = *(v6 + 68);
    if (v12 > *__pattern4 || (v12 = *(v6 + 72), v12 < v11))
    {
      v9 = 1;
      *__pattern4 = v12;
      v10 = __pattern4[1];
      v13 = *(v6 + 68);
      if (v13 > v10)
      {
        goto LABEL_230;
      }
    }

    else
    {
      v9 = 0;
      *__pattern4 = v11;
      v10 = __pattern4[1];
      v13 = *(v6 + 68);
      if (v13 > v10)
      {
        goto LABEL_230;
      }
    }

    v13 = *(v6 + 72);
    if (v13 >= v10)
    {
LABEL_7:
      __pattern4[1] = v10;
      goto LABEL_8;
    }

LABEL_230:
    v9 = 1;
    v10 = v13;
    goto LABEL_7;
  }

  v9 = 0;
  v10 = __pattern4[1];
LABEL_8:
  memset_pattern4(&__b, __pattern4, 0x40uLL);
  __pattern4a = 1065353216;
  memset_pattern4(&v150, &__pattern4a, 0x40uLL);
  __b.f32[1] = v10;
  if ((v7 & 1) == 0 || v10 >= 0.0 == __b.f32[0] >= 0.0)
  {
    v15 = 1;
    v16 = 2;
    v17 = *v6;
    if (*v6 > 3)
    {
      goto LABEL_19;
    }

LABEL_37:
    if (!v17)
    {
      v80 = 0;
      for (i = 0; i != v16; ++i)
      {
        while (1)
        {
          v82 = __b.f32[i];
          v83 = (v6 + 20);
          v84 = (v6 + 24);
          if (v82 > 1.0)
          {
            break;
          }

          v83 = (v6 + 28);
          v84 = (v6 + 32);
          if (v82 < 0.0)
          {
            break;
          }

          v80 = 1;
          v85 = v16 - 1 == i++;
          if (v85)
          {
            goto LABEL_134;
          }
        }

        __b.f32[i] = *v84 + (*v83 * v82);
      }

      if ((v80 & 1) == 0)
      {
        goto LABEL_201;
      }

LABEL_134:
      *v8 = *(v6 + 36);
      v104 = *(v6 + 40);
      goto LABEL_188;
    }

    if (v17 != 1)
    {
      if (v17 == 3)
      {
        v27 = __b.f32[0] >= 0.0;
        if (__b.f32[1] >= 0.0)
        {
          ++v27;
        }

        if (v147 < 0.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 + 1;
        }

        if (!v15)
        {
          v27 = v28;
        }

        if (v27)
        {
          v29 = v27 >= v16;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          ++v16;
          *v8 = 0.0;
        }

        v31 = *(v6 + 16);
        v30 = *(v6 + 20);
        v33 = *(v6 + 8);
        v32 = *(v6 + 12);
        v35 = *(v6 + 24);
        v34 = *(v6 + 28);
        v36 = __b.f32[0];
        v37 = powf(fabsf(__b.f32[0]), v33);
        v38 = v37 - v31;
        if ((v37 - v31) < 0.0)
        {
          v38 = 0.0;
        }

        v39 = powf(v38 / (v30 - (v35 * v37)), v32);
        if (v36 >= 0.0)
        {
          v40 = v34;
        }

        else
        {
          v40 = -v34;
        }

        __b.f32[0] = v40 * v39;
        v41 = __b.f32[1];
        v42 = powf(fabsf(__b.f32[1]), v33);
        v43 = v42 - v31;
        if ((v42 - v31) < 0.0)
        {
          v43 = 0.0;
        }

        v44 = powf(v43 / (v30 - (v35 * v42)), v32);
        v45 = v41 >= 0.0 ? v34 : -v34;
        __b.f32[1] = v45 * v44;
        if (v16 != 2)
        {
          v46 = -v35;
          v47 = v147;
          v48 = powf(fabsf(v147), v33);
          v49 = v48 - v31;
          if ((v48 - v31) < 0.0)
          {
            v49 = 0.0;
          }

          v50 = powf(v49 / (v30 + (v46 * v48)), v32);
          v51 = v47 >= 0.0 ? v34 : -v34;
          v147 = v51 * v50;
          if (v16 != 3)
          {
            v52 = v148;
            v53 = powf(fabsf(v148), v33);
            v54 = v53 - v31;
            if ((v53 - v31) < 0.0)
            {
              v54 = 0.0;
            }

            v55 = powf(v54 / (v30 + (v46 * v53)), v32);
            if (v52 >= 0.0)
            {
              v56 = v34;
            }

            else
            {
              v56 = -v34;
            }

            v57 = v56 * v55;
            goto LABEL_200;
          }
        }
      }

      goto LABEL_201;
    }

    v95 = *(v6 + 20);
    v96 = __b.f32[0] >= v95;
    if (__b.f32[1] >= v95)
    {
      ++v96;
    }

    if (v147 < v95)
    {
      v97 = v96;
    }

    else
    {
      v97 = v96 + 1;
    }

    if (v15)
    {
      v98 = v96;
    }

    else
    {
      v98 = v97;
    }

    if (__b.f32[0] >= v95)
    {
      v116 = *(v6 + 8);
      v115 = *(v6 + 12);
      if (v116 != 0.0)
      {
        v115 = v115 + (__b.f32[0] * v116);
      }

      __b.f32[0] = powf(v115, *(v6 + 4)) + *(v6 + 24);
      v101 = __b.f32[1];
      if (__b.f32[1] >= v95)
      {
LABEL_129:
        v103 = *(v6 + 8);
        v102 = *(v6 + 12);
        if (v103 != 0.0)
        {
          v102 = v102 + (v101 * v103);
        }

        __b.f32[1] = powf(v102, *(v6 + 4)) + *(v6 + 24);
        if (v15)
        {
          goto LABEL_180;
        }

        goto LABEL_162;
      }
    }

    else
    {
      v99 = *(v6 + 16);
      v85 = v99 == 0.0;
      v100 = *(v6 + 28) + (__b.f32[0] * v99);
      if (v85)
      {
        v100 = *(v6 + 28);
      }

      __b.f32[0] = v100;
      v101 = __b.f32[1];
      if (__b.f32[1] >= v95)
      {
        goto LABEL_129;
      }
    }

    v117 = *(v6 + 16);
    v85 = v117 == 0.0;
    v118 = *(v6 + 28) + (v101 * v117);
    if (v85)
    {
      v118 = *(v6 + 28);
    }

    __b.f32[1] = v118;
    if (v15)
    {
      goto LABEL_180;
    }

LABEL_162:
    if (v147 >= v95)
    {
      v128 = *(v6 + 8);
      v127 = *(v6 + 12);
      if (v128 != 0.0)
      {
        v127 = v127 + (v147 * v128);
      }

      v120 = powf(v127, *(v6 + 4)) + *(v6 + 24);
    }

    else
    {
      v119 = *(v6 + 16);
      v120 = *(v6 + 28);
      if (v119 != 0.0)
      {
        v120 = v120 + (v147 * v119);
      }
    }

    v147 = v120;
LABEL_180:
    if (v98)
    {
      v129 = v98 >= v16;
    }

    else
    {
      v129 = 1;
    }

    if (v129)
    {
      goto LABEL_201;
    }

    v131 = *(v6 + 8);
    v130 = *(v6 + 12);
    if (v131 != 0.0)
    {
      v130 = v130 + (v95 * v131);
    }

    *v8 = *(v6 + 24) + powf(v130, *(v6 + 4));
    v132 = *(v6 + 16);
    v104 = *(v6 + 28);
    if (v132 != 0.0)
    {
      v104 = v104 + (v95 * v132);
    }

LABEL_188:
    v133 = &__b + v16;
    v16 += 2;
    v133[1] = v104;
    goto LABEL_201;
  }

  if (__b.f32[0] < 0.0)
  {
    __b.f32[0] = -__b.f32[0];
    v150.i32[0] = -1082130432;
  }

  if (v10 < 0.0)
  {
    __b.f32[1] = -v10;
    v150.i32[1] = -1082130432;
  }

  v8 = &v148;
  v147 = 0.0;
  v143 = 0.0;
  v144 = -*__pattern4;
  v14 = v9 | 2;
  if (sub_23992BC50(v6, v7 & 0xFE, &v143, &v142))
  {
    v143 = *__pattern4;
    v144 = 0.0;
    if (v142.f32[1] == 0.0)
    {
      if (sub_23992BC50((*(a1 + 24) + 84 * a3), v7 & 0xFE, &v143, &v141))
      {
        v14 = v9 | (2 * (v142.f32[0] != v141.f32[0]));
      }
    }
  }

  v15 = 0;
  v16 = 3;
  v9 = v14;
  v17 = *v6;
  if (*v6 <= 3)
  {
    goto LABEL_37;
  }

LABEL_19:
  switch(v17)
  {
    case 4:
      v58 = __b.f32[0] >= 0.0;
      if (__b.f32[1] >= 0.0)
      {
        ++v58;
      }

      if (v147 < 0.0)
      {
        v59 = v58;
      }

      else
      {
        v59 = v58 + 1;
      }

      if (!v15)
      {
        v58 = v59;
      }

      if (v58)
      {
        v60 = v58 >= v16;
      }

      else
      {
        v60 = 1;
      }

      if (!v60)
      {
        ++v16;
        *v8 = 0.0;
      }

      v61 = *(v6 + 16);
      v62 = *(v6 + 20);
      v63 = *(v6 + 24);
      v64 = *(v6 + 28);
      v66 = *(v6 + 8);
      v65 = *(v6 + 12);
      v67 = __b.f32[0];
      v68 = powf(v64 * fabsf(__b.f32[0]), v66);
      v69 = powf((v61 + (v62 * v68)) / ((v63 * v68) + 1.0), v65);
      if (v67 < 0.0)
      {
        v69 = -v69;
      }

      __b.f32[0] = v69;
      v70 = __b.f32[1];
      v71 = powf(v64 * fabsf(__b.f32[1]), v66);
      v72 = powf((v61 + (v62 * v71)) / ((v63 * v71) + 1.0), v65);
      if (v70 < 0.0)
      {
        v72 = -v72;
      }

      __b.f32[1] = v72;
      if (v16 != 2)
      {
        v73 = v147;
        v74 = powf(v64 * fabsf(v147), v66);
        v75 = powf((v61 + (v62 * v74)) / ((v63 * v74) + 1.0), v65);
        if (v73 < 0.0)
        {
          v75 = -v75;
        }

        v147 = v75;
        if (v16 != 3)
        {
          v76 = v148;
          v77 = powf(v64 * fabsf(v148), v66);
          v57 = powf((v61 + (v62 * v77)) / ((v63 * v77) + 1.0), v65);
          v78 = -v57;
          v79 = v76 < 0.0;
          goto LABEL_198;
        }
      }

      break;
    case 5:
      v86 = *(v6 + 20);
      v87 = *(v6 + 24);
      v88 = v86 / v87;
      v89 = __b.f32[0] >= (v86 / v87);
      if (__b.f32[1] >= (v86 / v87))
      {
        ++v89;
      }

      if (v147 < v88)
      {
        v90 = v89;
      }

      else
      {
        v90 = v89 + 1;
      }

      if (!v15)
      {
        v89 = v90;
      }

      if (v89)
      {
        v91 = v89 >= v16;
      }

      else
      {
        v91 = 1;
      }

      if (!v91)
      {
        ++v16;
        *v8 = v88;
      }

      v92 = __b.f32[0];
      v93 = fabsf(v87 * __b.f32[0]);
      if (v93 <= v86)
      {
        v94 = sqrtf(v93 * 3.0);
      }

      else
      {
        v94 = *(v6 + 16) + logf(-(*(v6 + 12) - (v93 * 12.0)));
      }

      if (v92 < 0.0)
      {
        v94 = -v94;
      }

      __b.f32[0] = v94;
      v112 = __b.f32[1];
      v113 = fabsf(v87 * __b.f32[1]);
      if (v113 <= v86)
      {
        v121 = sqrtf(v113 * 3.0);
        if (__b.f32[1] < 0.0)
        {
          v121 = -v121;
        }

        __b.f32[1] = v121;
        if (v16 == 2)
        {
          break;
        }
      }

      else
      {
        v114 = *(v6 + 16) + logf(-(*(v6 + 12) - (v113 * 12.0)));
        if (v112 < 0.0)
        {
          v114 = -v114;
        }

        __b.f32[1] = v114;
        if (v16 == 2)
        {
          break;
        }
      }

      v122 = v147;
      v123 = fabsf(v87 * v147);
      if (v123 <= v86)
      {
        v124 = sqrtf(v123 * 3.0);
      }

      else
      {
        v124 = *(v6 + 16) + logf(-(*(v6 + 12) - (v123 * 12.0)));
      }

      if (v122 < 0.0)
      {
        v124 = -v124;
      }

      v147 = v124;
      if (v16 != 3)
      {
        v125 = v148;
        v134 = fabsf(v87 * v148);
        if (v134 <= v86)
        {
          v57 = sqrtf(v134 * 3.0);
        }

        else
        {
          v57 = *(v6 + 16) + logf(-(*(v6 + 12) - (v134 * 12.0)));
        }

LABEL_197:
        v78 = -v57;
        v79 = v125 < 0.0;
LABEL_198:
        if (v79)
        {
          v57 = v78;
        }

LABEL_200:
        v148 = v57;
      }

      break;
    case 6:
      v18 = *(v6 + 28);
      v19 = 1.0 - v18;
      v20 = (0.5 - v18) / (1.0 - v18);
      v21 = __b.f32[0] >= v20;
      if (__b.f32[1] >= v20)
      {
        ++v21;
      }

      if (v147 < v20)
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 + 1;
      }

      if (!v15)
      {
        v21 = v22;
      }

      if (v21)
      {
        v23 = v21 >= v16;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        ++v16;
        *v8 = v20;
      }

      v24 = __b.f32[0];
      v25 = fmaxf(v18 + (v19 * fabsf(__b.f32[0])), 0.0);
      if (v25 <= 0.5)
      {
        v26 = (v25 * v25) * *(v6 + 24);
      }

      else
      {
        v26 = *(v6 + 20) * (*(v6 + 12) + expf((v25 - *(v6 + 16)) / *(v6 + 8)));
      }

      if (v24 < 0.0)
      {
        v26 = -v26;
      }

      __b.f32[0] = v26;
      v105 = __b.f32[1];
      v106 = fmaxf(v18 + (v19 * fabsf(__b.f32[1])), 0.0);
      if (v106 > 0.5)
      {
        v107 = *(v6 + 20) * (*(v6 + 12) + expf((v106 - *(v6 + 16)) / *(v6 + 8)));
        if (v105 < 0.0)
        {
          v107 = -v107;
        }

        __b.f32[1] = v107;
        if (v16 == 2)
        {
          break;
        }

        goto LABEL_146;
      }

      v108 = (v106 * v106) * *(v6 + 24);
      if (__b.f32[1] < 0.0)
      {
        v108 = -v108;
      }

      __b.f32[1] = v108;
      if (v16 != 2)
      {
LABEL_146:
        v109 = v147;
        v110 = fmaxf(v18 + (v19 * fabsf(v147)), 0.0);
        if (v110 <= 0.5)
        {
          v111 = (v110 * v110) * *(v6 + 24);
        }

        else
        {
          v111 = *(v6 + 20) * (*(v6 + 12) + expf((v110 - *(v6 + 16)) / *(v6 + 8)));
        }

        if (v109 < 0.0)
        {
          v111 = -v111;
        }

        v147 = v111;
        if (v16 == 3)
        {
          break;
        }

        v125 = v148;
        v126 = fmaxf(v18 + (v19 * fabsf(v148)), 0.0);
        if (v126 <= 0.5)
        {
          v57 = (v126 * v126) * *(v6 + 24);
        }

        else
        {
          v57 = *(v6 + 20) * (*(v6 + 12) + expf((v126 - *(v6 + 16)) / *(v6 + 8)));
        }

        goto LABEL_197;
      }

      break;
    default:
      break;
  }

LABEL_201:
  v135 = vmul_f32(__b, v150);
  if (v135.f32[0] >= v135.f32[1])
  {
    v136 = v135.f32[1];
  }

  else
  {
    v136 = v135.f32[0];
  }

  if (v135.f32[0] < v135.f32[1])
  {
    v135.f32[0] = v135.f32[1];
  }

  *__pattern4 = v136;
  __pattern4[1] = v135.f32[0];
  if (v16 > 2)
  {
    if ((v147 * v151) < v136)
    {
      v136 = v147 * v151;
    }

    if ((v147 * v151) >= v135.f32[0])
    {
      v135.f32[0] = v147 * v151;
    }

    if (v16 != 3)
    {
      if ((v148 * v152) < v136)
      {
        v136 = v148 * v152;
      }

      if ((v148 * v152) >= v135.f32[0])
      {
        v135.f32[0] = v148 * v152;
      }

      if (v16 != 4)
      {
        if ((v149 * v153) < v136)
        {
          v136 = v149 * v153;
        }

        if ((v149 * v153) >= v135.f32[0])
        {
          v135.f32[0] = v149 * v153;
        }
      }
    }

    *__pattern4 = v136;
    __pattern4[1] = v135.f32[0];
  }

  if ((*(v6 + 60) & 2) != 0)
  {
    v137 = *(v6 + 76);
    if (v137 > v136 || (v137 = *(v6 + 80), v137 < v136))
    {
      v138 = 4;
      *__pattern4 = v137;
      v139 = *(v6 + 76);
      if (v139 > v135.f32[0])
      {
        goto LABEL_232;
      }
    }

    else
    {
      v138 = 0;
      *__pattern4 = v136;
      v139 = *(v6 + 76);
      if (v139 > v135.f32[0])
      {
        goto LABEL_232;
      }
    }

    v139 = *(v6 + 80);
    if (v139 >= v135.f32[0])
    {
LABEL_227:
      __pattern4[1] = v135.f32[0];
      return v138 | v9;
    }

LABEL_232:
    v138 = 4;
    v135.f32[0] = v139;
    goto LABEL_227;
  }

  return v9;
}

uint64_t sub_23992BC50(int *a1, char a2, float *a3, float32x2_t *a4)
{
  if (a4)
  {
    *a4 = vneg_f32(0x3F0000003FLL);
    v4 = a4 + 1;
    v5 = *a1;
    if (*a1)
    {
      goto LABEL_3;
    }

LABEL_14:
    v13 = a3[1];
    if (v13 < 0.0)
    {
      a4->i32[0] = a1[7];
      v14 = *(a1 + 8);
      *v4 = v14;
      if ((a2 & 1) == 0)
      {
        return 1;
      }

      v11 = -v14;
LABEL_45:
      *v4 = v11;
      return 1;
    }

    if (*a3 > 1.0)
    {
      a4->i32[0] = a1[5];
      v11 = *(a1 + 6);
      goto LABEL_45;
    }

    if (*(a1 + 1) == 2)
    {
      if (*a3 >= 0.0)
      {
        goto LABEL_37;
      }

      v17 = *(a1 + 8);
      if (a2)
      {
        v17 = -v17;
      }

      v18 = *(a1 + 3);
      if (v17 == *v18 && (v17 + *(a1 + 7)) == v18[1])
      {
LABEL_37:
        if (v13 <= 1.0)
        {
          v24 = *(a1 + 3);
          v21 = *v24;
          v23 = v24[1];
        }

        else
        {
          v19 = *(a1 + 6);
          v20 = *(a1 + 3);
          v21 = *v20;
          if (v19 != *v20)
          {
            return 0;
          }

          v22 = v19 + *(a1 + 5);
          v23 = v20[1];
          if (v22 != v23)
          {
            return 0;
          }
        }

        a4->f32[0] = v23 - v21;
        v11 = **(a1 + 3);
        goto LABEL_45;
      }
    }

    return 0;
  }

  a4 = &v26;
  v4 = &v25;
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (LODWORD(v5) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 5);
  v7 = a3[1];
  if (v6 == INFINITY || v7 < v6)
  {
    v9 = *(a1 + 4);
    v10 = 7;
LABEL_10:
    v11 = *&a1[v10];
    v12 = v9;
LABEL_11:
    if ((a2 & 1) == 0 || *a3 >= 0.0 || v11 == 0.0)
    {
      goto LABEL_12;
    }

    if (v7 < 0.0)
    {
      v11 = -v11;
      a4->f32[0] = v12;
      goto LABEL_45;
    }

    return 0;
  }

  if (*(a1 + 1) != 1.0)
  {
    return 0;
  }

  v9 = *(a1 + 2);
  if (*a3 >= v6)
  {
    v10 = 3;
    goto LABEL_10;
  }

  v12 = *(a1 + 4);
  if (v9 != v12)
  {
    return 0;
  }

  v11 = *(a1 + 7);
  v15 = *(a1 + 3) + *(a1 + 6);
  if (v15 == v11)
  {
    goto LABEL_11;
  }

  result = 0;
  if ((a2 & 1) != 0 && v6 == 0.0)
  {
    v11 = -v11;
    if (v15 == v11)
    {
LABEL_12:
      a4->f32[0] = v12;
      goto LABEL_45;
    }
  }

  return result;
}

__n128 sub_23992BE48(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v8 = 0;
    do
    {
      v10 = v4;
      v11 = result;
      v9 = (a2 + 4 * (v8 & 3));
      __pattern4 = v9[4];
      v15 = *v9;
      *a3 |= sub_23992B0BC(a1, &__pattern4, v8);
      v12 = v10;
      *(&v12 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = __pattern4;
      v4 = v12;
      v13 = v11;
      *(&v13 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v15;
      result = v13;
      ++v8;
    }

    while (v8 < *(a1 + 16));
  }

  return result;
}

uint64_t sub_23992BF18(void *a1, uint64_t *a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  *a2 = 0;
  if (v6)
  {
    v7 = (*(*v6 + 16))(v6);
    if (v7 == 2)
    {
      LODWORD(v84) = 0;
      v89[0] = 0;
      if (a1[2])
      {
        v33 = 0;
        v81 = 0;
        v34 = 0;
        v35 = (v6 + 48);
        v36 = -1;
        __asm { FMOV            V9.2S, #1.0 }

        do
        {
          v39 = a3 + (v34 & 3);
          v88.i32[0] = v39[4];
          v88.i32[1] = *v39;
          __pattern4 = v88;
          v40 = sub_23992B0BC(a1, &__pattern4, v34);
          v41 = __pattern4.f32[0];
          v39[4] = __pattern4.i32[0];
          v42 = __pattern4.f32[1];
          *v39 = __pattern4.i32[1];
          if ((~v40 & 6) != 0)
          {
            if ((*(v6 + 80) & 4) == 0)
            {
              goto LABEL_42;
            }

            v43 = 3;
            if ((*(v6 + 80) & 8) != 0)
            {
              v43 = 1;
            }

            if (v43 <= v34 || v41 >= *(v6 + 64) && v42 <= *(v6 + 68))
            {
LABEL_42:
              if (v40)
              {
                *(&v84 + v34) = 1;
                v36 = v34;
              }

              if (sub_23992BC50((a1[3] + v33), *(a1[3] + v33 + 60), &v88, &v86) && v34 < *(v6 + 84))
              {
                v44 = v86;
                *(v6 + 28) = *(v6 + 28) + (*(v35 - 8) * v86.f32[1]);
                *(v6 + 44) = *(v6 + 44) + (*(v35 - 4) * v44.f32[1]);
                *(v6 + 60) = *(v6 + 60) + (*v35 * v44.f32[1]);
                *(v35 - 8) = v44.f32[0] * *(v35 - 8);
                *(v35 - 4) = v44.f32[0] * *(v35 - 4);
                *v35 = v44.f32[0] * *v35;
                v85 = 0x3F80000000000000;
                v45 = a1[3] + v33;
                *v45 = 1;
                *(v45 + 4) = _D9;
                *(v45 + 12) = v85;
                *(v45 + 20) = xmmword_2399353E0;
                v46 = a1[3] + v33;
                *(v46 + 60) &= 0xFFFFFFFC;
                *(v46 + 76) = -2.84809454e-306;
                *(v89 + v34) = 1;
                ++v81;
              }
            }
          }

          ++v34;
          v38 = a1[2];
          v33 += 84;
          ++v35;
        }

        while (v34 < v38);
        if (v36 == -1)
        {
          if (v81 != v38)
          {
            return 0;
          }
        }

        else
        {
          if (v38)
          {
            v50 = 0;
            v51 = 0;
            v53 = *a3;
            v52 = a3[1];
            do
            {
              if (*(&v84 + v51))
              {
                if (*(v89 + v51) != 1)
                {
                  goto LABEL_63;
                }

                v54 = a1[3];
                v55 = v54 + v50;
                v56 = *(v54 + v50 + 68);
                v57 = v54 + 84 * v36;
                v59 = *(v57 + 68);
                v58 = v57 + 68;
                if (v56 != v59 || *(v55 + 72) != *(v58 + 4))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v60 = a1[3] + 84 * v36;
                v62 = *(v60 + 68);
                v61 = v60 + 68;
                v83 = v52;
                if (v62 > *(&v83 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3))))
                {
                  goto LABEL_63;
                }

                v63 = *(v61 + 4);
                v82 = v53;
                if (v63 < *(&v82 & 0xFFFFFFFFFFFFFFF3 | (4 * (v51 & 3))))
                {
                  goto LABEL_63;
                }
              }

              ++v51;
              v50 += 84;
            }

            while (v38 != v51);
            if (v81 != v38)
            {
              return 0;
            }
          }

          else
          {
            v51 = 0;
LABEL_63:
            _ZF = v51 == v38;
            v64 = v81;
            if (!_ZF)
            {
              v64 = 0;
            }

            if (v64 != v38)
            {
              return 0;
            }
          }

          v65 = *(a1[3] + 84 * v36 + 68);
          *(v6 + 64) = v65;
          if (*&v65 > -3.4028e38 || *(&v65 + 1) < 3.4028e38)
          {
            *(v6 + 80) |= 4u;
          }

          v67 = a1[2];
          if (v67)
          {
            v68 = a1[3];
            v69 = 0;
            v70 = v67 - 1;
            if (v67 == 1)
            {
              goto LABEL_74;
            }

            v73 = !is_mul_ok(v70, 0x54uLL);
            v74 = 84 * v70;
            if (v68 + 60 + v74 < (v68 + 60))
            {
              goto LABEL_74;
            }

            if (v73)
            {
              goto LABEL_74;
            }

            if (v68 + 68 + v74 < (v68 + 68))
            {
              goto LABEL_74;
            }

            if (v73)
            {
              goto LABEL_74;
            }

            if (v68 + 72 + v74 < (v68 + 72))
            {
              goto LABEL_74;
            }

            if (v73)
            {
              goto LABEL_74;
            }

            v69 = v67 & 0xFFFFFFFFFFFFFFFELL;
            v75 = v68 + 144;
            v76 = -2.84809454e-306;
            v77 = v67 & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v78 = *v75 & 0xFFFFFFFB;
              *(v75 - 84) &= ~4u;
              *v75 = v78;
              *(v75 - 76) = v76;
              *(v75 + 8) = v76;
              v75 += 168;
              v77 -= 2;
            }

            while (v77);
            if (v67 != v69)
            {
LABEL_74:
              v71 = v67 - v69;
              v72 = v68 + 84 * v69 + 60;
              do
              {
                *v72 &= ~4u;
                *(v72 + 8) = -2.84809454e-306;
                v72 += 84;
                --v71;
              }

              while (v71);
            }
          }
        }
      }

      (*(*a1 + 8))(a1);
      *v4 = v6;
      return 1;
    }

    if (v7 != 1)
    {
      v88.i32[0] = 0;
      *&v47 = (*(*a1 + 64))(a1, a3, &v88);
      result = 0;
      *a3 = v47;
      a3[1] = v49;
      return result;
    }
  }

  if (!a1[2])
  {
    goto LABEL_31;
  }

  v79 = v4;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11.f64[0] = 2.84809454e-306;
  v11.f64[1] = 2.84809454e-306;
  v80 = vnegq_f64(v11);
  __asm { FMOV            V13.2S, #1.0 }

  do
  {
    v19 = a3 + (v10 & 3);
    v88.i32[0] = v19[4];
    v88.i32[1] = *v19;
    __pattern4 = v88;
    v20 = sub_23992B0BC(a1, &__pattern4, v10);
    v19[4] = __pattern4.i32[0];
    v21 = __pattern4.f32[1];
    *v19 = __pattern4.i32[1];
    if (v20 > 3)
    {
      goto LABEL_8;
    }

    v22 = v20;
    v23 = __pattern4.f32[0];
    v86 = __pattern4;
    if (v6 && v10 < *(v6 + 16))
    {
      sub_23992B0BC(v6, &v86, v10);
    }

    if (!sub_23992BC50((a1[3] + v8), *(a1[3] + v8 + 60), &v88, &v85))
    {
      if (!v6)
      {
        goto LABEL_8;
      }

LABEL_19:
      (*(*v6 + 24))(v6);
      goto LABEL_8;
    }

    if (v21 == v23)
    {
      if (v6 && v10 < (*(*v6 + 24))(v6))
      {
        v25 = v86.i32[0];
        v84 = v86.u32[0];
        v26 = *(v6 + 24) + v8;
        *v26 = 1;
        *(v26 + 4) = 1065353216;
        *(v26 + 12) = v84;
        *(v26 + 20) = 2139095040;
        *(v26 + 28) = v25;
        *(v26 + 32) = 0;
        v27 = *(v6 + 24) + v8;
        *(v27 + 60) &= 0xFFFFFFF8;
        *(v27 + 68) = v80;
        v84 = 0x3F80000000000000;
        v28 = a1[3] + v8;
        *v28 = 1;
        *(v28 + 4) = _D13;
        *(v28 + 12) = v84;
        *(v28 + 20) = xmmword_2399353E0;
        ++v9;
      }

      else
      {
        v84 = LODWORD(v21);
        v16 = a1[3] + v8;
        *v16 = 1;
        *(v16 + 4) = 1065353216;
        *(v16 + 12) = v84;
        *(v16 + 20) = 2139095040;
        *(v16 + 28) = v21;
        *(v16 + 32) = 0;
      }

      v17 = a1[3] + v8;
      *(v17 + 60) &= 0xFFFFFFF8;
      *(v17 + 68) = v80;
    }

    else if (!v6 && (v24.n128_u32[0] = v85.i32[0], v85.f32[0] == 1.0) && (v24.n128_u32[0] = v85.u32[1], v85.f32[1] == 0.0))
    {
      if (!v22)
      {
        ++v9;
      }
    }

    else if (v6 && v10 < (*(*v6 + 24))(v6, v24))
    {
      if (!sub_23992AE94(*(v6 + 24) + v8, &v85, v23, v21))
      {
        goto LABEL_19;
      }

      v84 = 0x3F80000000000000;
      v29 = a1[3] + v8;
      *v29 = 1;
      *(v29 + 4) = _D13;
      *(v29 + 12) = v84;
      *(v29 + 20) = xmmword_2399353E0;
      v30 = a1[3] + v8;
      v31 = *(v6 + 24) + v8;
      *(v31 + 60) |= *(v30 + 60) & 5;
      *(v30 + 60) &= 0xFFFFFFF8;
      *(v31 + 68) = *(v30 + 68);
      v32 = a1[3] + v8;
      *(v32 + 76) = -2.84809454e-306;
      *(v32 + 68) = 0x7F7FFFFFFF7FFFFFLL;
      ++v9;
    }

LABEL_8:
    ++v10;
    v18 = a1[2];
    v8 += 84;
  }

  while (v10 < v18);
  v4 = v79;
  if (v9 == v18)
  {
LABEL_31:
    *v4 = a1[1];
    (*(*a1 + 8))(a1);
    return 1;
  }

  return 0;
}

void sub_23992C7AC(void *a1, __int128 *a2)
{
  v20 = a2[1];
  v21 = *a2;
  v24 = 0;
  *&v4 = (*(*a1 + 64))(a1);
  *a2 = v4;
  a2[1] = v5;
  if (v24)
  {
    v6 = -1;
  }

  else
  {
    v6 = -5;
  }

  if ((v24 & 2) == 0)
  {
    v6 &= ~1u;
  }

  if ((v24 & 4) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFD;
  }

  if (a1[2])
  {
    v8 = 0;
    for (i = 72; ; i += 84)
    {
      v10 = a1[3];
      v11 = *(v10 + i - 12) & v7;
      *(v10 + i - 12) = v11;
      if (*(v10 + i - 72) == 1)
      {
        break;
      }

LABEL_11:
      if (++v8 >= a1[2])
      {
        return;
      }
    }

    v22 = v20;
    v12 = *(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
    v23 = v21;
    v13 = *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
    if ((v11 & 4) != 0)
    {
      if (*(v10 + i - 4) >= v12)
      {
        v12 = *(v10 + i - 4);
      }

      if (*(v10 + i) < v13)
      {
        v13 = *(v10 + i);
      }
    }

    if (v11)
    {
      v17 = fabsf(v12);
      if (v13 >= 0.0)
      {
        if (v17 < v13)
        {
          v17 = v13;
        }

        if (v12 < 0.0)
        {
          v12 = 0.0;
        }

        else
        {
          v17 = v13;
        }

        v15 = v10 + i;
        v16 = *(v10 + i - 52);
        if (v17 <= v16)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v12 = fabsf(v13);
        v15 = v10 + i;
        v16 = *(v10 + i - 52);
        if (v17 <= v16)
        {
LABEL_31:
          v18 = 2139095040;
          goto LABEL_32;
        }
      }
    }

    else
    {
      v14 = v13;
      v15 = v10 + i;
      v16 = *(v10 + i - 52);
      if (v14 <= v16)
      {
        goto LABEL_31;
      }
    }

    if (v12 < v16)
    {
LABEL_33:
      if (*(v10 + i - 64) == *(v10 + i - 56) && *(v10 + i - 68) == 1.0)
      {
        v19 = v10 + i;
        if (*(v19 - 44) == (*(v19 - 48) + *(v19 - 60)))
        {
          *(v19 - 52) = 2139095040;
        }
      }

      goto LABEL_11;
    }

    v18 = 2143289344;
LABEL_32:
    *(v15 - 52) = v18;
    v10 = a1[3];
    goto LABEL_33;
  }
}

void *sub_23992C98C(uint64_t a1)
{
  v6 = malloc_type_malloc(84 * *(a1 + 16) + 32, 0x10A10400956659AuLL);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 16);
    *v6 = &unk_284C6AA58;
    v6[1] = 0;
    v6[2] = v8;
    v6[3] = v6 + 4;
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v12 = *(a1 + 24);
        v13 = v12 + v9;
        v14 = v7[3];
        v15 = v14 + v9;
        *(v15 + 60) = *(v12 + v9 + 60);
        *(v15 + 68) = *(v12 + v9 + 68);
        *(v15 + 76) = *(v12 + v9 + 76);
        v16 = *(v12 + v9);
        if ((v16 - 3) < 4)
        {
          goto LABEL_6;
        }

        if (v16)
        {
          if (v16 != 1)
          {
            v15 = v14 + v9;
            goto LABEL_7;
          }

LABEL_6:
          v2 = *(v13 + 4);
          v1 = *(v13 + 12);
          v3 = *(v13 + 20);
          v4 = *(v13 + 28);
LABEL_7:
          *v15 = v16;
          *(v15 + 4) = v2;
          *(v15 + 12) = v1;
          *(v15 + 20) = v3;
          *(v15 + 28) = v4;
          ++v10;
          v9 += 84;
          if (v10 >= *(a1 + 16))
          {
            return v7;
          }
        }

        else
        {
          v2 = *(v12 + v9 + 4);
          v3 = *(v12 + v9 + 20);
          v4 = *(v12 + v9 + 28);
          v1 = malloc_type_malloc(4 * v2, 0x100004052888210uLL);
          v11 = v14 + v9;
          *v11 = 0;
          *(v11 + 4) = v2;
          *(v11 + 12) = v1;
          *(v11 + 20) = v3;
          *(v11 + 28) = v4;
          free(v1);
          ++v10;
          v9 += 84;
          if (v10 >= *(a1 + 16))
          {
            return v7;
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_23992CB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_284C6AC48;
  *(a1 + 8) = 0;
  if (!off_27DF853C8)
  {
    *&v21[0] = "CGColorMatrixGetMatrix";
    *(&v21[0] + 1) = &off_27DF853C8;
    if (qword_27DF85418 == -1)
    {
      if (!off_27DF853C8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF85418, v21, sub_2399311AC);
      if (!off_27DF853C8)
      {
        goto LABEL_57;
      }
    }
  }

  if (!off_27DF853B0)
  {
    *&v21[0] = "CGColorFunctionGetInputRange";
    *(&v21[0] + 1) = &off_27DF853B0;
    if (qword_27DF85408 == -1)
    {
      if (!off_27DF853B0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF85408, v21, sub_23993113C);
      if (!off_27DF853B0)
      {
        goto LABEL_57;
      }
    }
  }

  if (!off_27DF853B8)
  {
    *&v21[0] = "CGColorFunctionGetOutputRange";
    *(&v21[0] + 1) = &off_27DF853B8;
    if (qword_27DF85410 == -1)
    {
      if (!off_27DF853B8)
      {
        goto LABEL_57;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF85410, v21, sub_239931174);
      if (!off_27DF853B8)
      {
        goto LABEL_57;
      }
    }
  }

  if (off_27DF853C0)
  {
    goto LABEL_13;
  }

  *&v21[0] = "CGColorFunctionGetProperties";
  *(&v21[0] + 1) = &off_27DF853C0;
  if (qword_27DF853F8 == -1)
  {
    if (off_27DF853C0)
    {
      goto LABEL_13;
    }

LABEL_57:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  dispatch_once_f(&qword_27DF853F8, v21, sub_2399310CC);
  if (!off_27DF853C0)
  {
    goto LABEL_57;
  }

LABEL_13:
  v7 = off_27DF853C8;
  if (!off_27DF853C8)
  {
    *&v21[0] = "CGColorMatrixGetMatrix";
    *(&v21[0] + 1) = &off_27DF853C8;
    if (qword_27DF85418 != -1)
    {
      dispatch_once_f(&qword_27DF85418, v21, sub_2399311AC);
    }

    v7 = off_27DF853C8;
  }

  (v7)(v21, *(*(a2 + 60) + 8 * a4));
  v8 = v21[2];
  *(a1 + 32) = v21[1];
  *(a1 + 48) = v8;
  *(a1 + 16) = v21[0];
  if (off_27DF853B0)
  {
    *(a1 + 64) = off_27DF853B0(*(*(a2 + 60) + 8 * a4));
    *(a1 + 68) = v9;
    v10 = off_27DF853B8;
    if (off_27DF853B8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *&v21[0] = "CGColorFunctionGetInputRange";
    *(&v21[0] + 1) = &off_27DF853B0;
    if (qword_27DF85408 != -1)
    {
      dispatch_once_f(&qword_27DF85408, v21, sub_23993113C);
    }

    *(a1 + 64) = off_27DF853B0(*(*(a2 + 60) + 8 * a4));
    *(a1 + 68) = v13;
    v10 = off_27DF853B8;
    if (off_27DF853B8)
    {
LABEL_19:
      *(a1 + 72) = v10(*(*(a2 + 60) + 8 * a4));
      *(a1 + 76) = v11;
      v12 = off_27DF853C0;
      if (off_27DF853C0)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  *&v21[0] = "CGColorFunctionGetOutputRange";
  *(&v21[0] + 1) = &off_27DF853B8;
  if (qword_27DF85410 != -1)
  {
    dispatch_once_f(&qword_27DF85410, v21, sub_239931174);
  }

  *(a1 + 72) = off_27DF853B8(*(*(a2 + 60) + 8 * a4));
  *(a1 + 76) = v14;
  v12 = off_27DF853C0;
  if (!off_27DF853C0)
  {
LABEL_27:
    *&v21[0] = "CGColorFunctionGetProperties";
    *(&v21[0] + 1) = &off_27DF853C0;
    if (qword_27DF853F8 != -1)
    {
      dispatch_once_f(&qword_27DF853F8, v21, sub_2399310CC);
    }

    v12 = off_27DF853C0;
  }

LABEL_30:
  v15 = v12(*(*(a2 + 60) + 8 * a4));
  if ((v15 & 8) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  if ((v15 & 0x10) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  *(a1 + 84) = v16;
  *(a1 + 88) = v17;
  if ((v15 & 8) == 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_38;
    }

LABEL_41:
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    v18 = v15 & 0xFFFFFFFE;
    *(a1 + 80) = v15 & 0xFFFFFFFE;
    if ((v15 & 4) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  *(a1 + 52) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  if ((v15 & 0x10) != 0)
  {
    goto LABEL_41;
  }

LABEL_38:
  v18 = v15 & 0xFFFFFFFE;
  *(a1 + 80) = v15 & 0xFFFFFFFE;
  if ((v15 & 4) == 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if (*(a1 + 64) <= -1.1755e-38 && *(a1 + 68) >= 3.4028e38)
  {
    v18 = v15 & 0xFFFFFFFA;
    *(a1 + 80) = v15 & 0xFFFFFFFA;
  }

LABEL_45:
  if ((v18 & 2) != 0 && *(a1 + 72) <= -1.1755e-38 && *(a1 + 76) >= 3.4028e38)
  {
    *(a1 + 80) = v18 & 0xFFFFFFFC;
  }

  return a1;
}

uint64_t sub_23992CFA0(float32x4_t *a1, void *a2, _OWORD *a3)
{
  v82 = 0;
  v6 = a1->i64[1];
  *&v7 = (*(a1->i64[0] + 64))(a1, a3, &v82);
  *a3 = v7;
  a3[1] = v8;
  f32 = a1[1].f32;
  v10 = vaddvq_s32(vorrq_s8(vorrq_s8(vandq_s8(vceqzq_f32(a1[2]), xmmword_239935400), vandq_s8(vceqzq_f32(a1[1]), xmmword_2399353F0)), vandq_s8(vceqzq_f32(a1[3]), xmmword_239935410)));
  if ((v10 & 0x777) == 0x666)
  {
    v11 = a1[5].u32[2];
    if (v11)
    {
      v12 = &a1[1].f32[3];
      while (*(v12 - 3) == 1.0 && *v12 == 0.0)
      {
        v12 += 4;
        if (!--v11)
        {
          goto LABEL_7;
        }
      }

      v13 = 0;
      v14 = 1;
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
LABEL_7:
      v13 = 0;
      v14 = 2;
      if (!v6)
      {
        return 0;
      }
    }

    goto LABEL_24;
  }

  if ((~v10 & 0x356) != 0)
  {
    v13 = 0;
    v14 = 0;
    if (!v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

  v15 = a1[5].u32[1];
  if (v15 != a1[5].i32[2])
  {
    goto LABEL_23;
  }

  if (v15)
  {
    v16 = &a1[1].f32[3];
    while (*f32 == 1.0 && *v16 == 0.0)
    {
      v16 += 4;
      f32 += 5;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }

LABEL_23:
    v14 = 3;
    v13 = 1;
    if (!v6)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (!v82)
  {
    goto LABEL_46;
  }

  v13 = 0;
  v14 = 4;
  if (!v6)
  {
    return 0;
  }

LABEL_24:
  v81 = 0;
  (*(*v6 + 64))(v6, a3, &v81);
  v17 = (*(*v6 + 16))(v6);
  if (v17 != 1)
  {
    if (v17 == 2 && (((v82 >> 2) | (v81 >> 1) | v81) & 1) == 0)
    {
      v18 = a1[1];
      v19 = a1[2];
      v20 = a1[3];
      v21.i64[0] = 0;
      v21.i32[2] = 0;
      v21.i32[3] = HIDWORD(*v6[2].f32);
      v22.i64[0] = 0;
      v22.i32[2] = 0;
      v23.i64[0] = 0;
      v23.i32[2] = 0;
      v23.i32[3] = HIDWORD(*v6[4].f32);
      v22.i32[3] = HIDWORD(*v6[6].f32);
      v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v23, v18, COERCE_FLOAT(*v6[4].f32)), v19, v6[4], 1), v20, *v6[4].f32, 2);
      v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v22, v18, COERCE_FLOAT(*v6[6].f32)), v19, v6[6], 1), v20, *v6[6].f32, 2);
      a1[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v21, v18, COERCE_FLOAT(*v6[2].f32)), v19, v6[2], 1), v20, *v6[2].f32, 2);
      a1[2] = v24;
      a1[3] = v25;
      v26 = a1[5].i32[0] & 0xFFFFFFEF | v6[10].i32[0] & 2;
      a1[5].i32[0] = v26;
      a1[5].i32[0] = v6[10].i32[0] & 0x10 | v26;
      *&a1[4].u32[2] = v6[9];
      *&a1->u32[2] = v6[1];
      (*(*v6 + 8))(v6);
      *a2 = a1;
      return 1;
    }

    return 0;
  }

  v27 = a1[5].u32[2];
  if (*&v6[2] < v27)
  {
    return 0;
  }

  if ((v14 - 1) >= 3)
  {
    if (v14 != 4)
    {
      return 0;
    }

    if (v27)
    {
      if ((((v82 >> 2) | (v81 >> 1) | v81) & 1) == 0)
      {
        v40 = 0;
        v41 = 1;
        do
        {
          v42 = a1[5].u32[0];
          v43 = a3 + (v40 & 3);
          v79 = v43[4];
          v80 = *v43;
          v41 &= (*(*v6 + 104))(v6, a1 + 4, &a1[4].i64[1], v42, &v79, v40++, 1.0, 0.0);
        }

        while (v40 < a1[5].u32[2]);
        if (!v41)
        {
          return 0;
        }
      }
    }

LABEL_46:
    *a2 = v6;
    (*(a1->i64[0] + 8))(a1);
    return 1;
  }

  if (((v82 >> 2) | (v81 >> 1) | v81))
  {
    return 0;
  }

  if (!v27)
  {
    v39 = 0;
LABEL_56:
    if (v13)
    {
      (*(a1->i64[0] + 8))(a1);
    }

    else
    {
      v50 = 0;
      v51 = v39 - 1;
      if (v39 <= 1)
      {
        v52 = 1;
      }

      else
      {
        v52 = v39;
      }

      v53 = 84 * v52;
      v54.i64[0] = 0x7F0000007FLL;
      v54.i64[1] = 0x7F0000007FLL;
      v55 = vnegq_f32(v54);
      v56.i64[0] = 0x3400000034000000;
      v56.i64[1] = 0x3400000034000000;
      v76 = v55;
      v78 = vextq_s8(0, 0, 0xCuLL);
      while (v53 != v50 + 84)
      {
        v62 = v6[3];
        v63 = **&v62;
        if (**&v62 != *(*&v62 + v50 + 84))
        {
          return 0;
        }

        result = 0;
        if (v63 > 3)
        {
          if (v63 == 4 || v63 == 5)
          {
            v57 = *(*&v62 + 20);
            v58 = *(*&v62 + 4);
            v58.i32[0] = 0;
            v57.i32[3] = 0;
            v59 = *(*&v62 + v50 + 104);
            v60 = *(*&v62 + v50 + 88);
            v60.i32[0] = 0;
            v59.i32[3] = 0;
            v61 = vandq_s8(vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(v58), vabsq_f32(v60)), v55), v56), vandq_s8(vabdq_f32(v58, v60), vorrq_s8(vceqq_f32(v60, v60), vceqq_f32(v58, v58)))), vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(v57), vabsq_f32(v59)), v55), v56), vandq_s8(vabdq_f32(v57, v59), vorrq_s8(vceqq_f32(v59, v59), vceqq_f32(v57, v57)))));
          }

          else
          {
            if (v63 != 6)
            {
              return result;
            }

            v66 = *(*&v62 + 4);
            v67.i64[1] = v78.i64[1];
            v68.i64[1] = v78.i64[1];
            v68.i64[0] = *(*&v62 + 20);
            v66.i32[0] = 0;
            v69 = *(*&v62 + v50 + 88);
            v69.i32[0] = 0;
            v67.i64[0] = *(*&v62 + v50 + 104);
            v61 = vandq_s8(vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(v66), vabsq_f32(v69)), v55), v56), vandq_s8(vabdq_f32(v66, v69), vorrq_s8(vceqq_f32(v69, v69), vceqq_f32(v66, v66)))), vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(v68), vabsq_f32(v67)), v55), v56), vandq_s8(vabdq_f32(v68, v67), vorrq_s8(vceqq_f32(v67, v67), vceqq_f32(v68, v68)))));
          }
        }

        else if (v63)
        {
          if (v63 != 1 && v63 != 3)
          {
            return result;
          }

          v64 = *(*&v62 + 20);
          v64.i32[3] = 0;
          v65 = *(*&v62 + v50 + 104);
          v65.i32[3] = 0;
          v61 = vandq_s8(vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(*(*&v62 + 4)), vabsq_f32(*(*&v62 + v50 + 88))), v55), v56), vandq_s8(vabdq_f32(*(*&v62 + 4), *(*&v62 + v50 + 88)), vorrq_s8(vceqq_f32(*(*&v62 + v50 + 88), *(*&v62 + v50 + 88)), vceqq_f32(*(*&v62 + 4), *(*&v62 + 4))))), vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(v64), vabsq_f32(v65)), v55), v56), vandq_s8(vabdq_f32(v64, v65), vorrq_s8(vceqq_f32(v65, v65), vceqq_f32(v64, v64)))));
        }

        else
        {
          v70 = *(*&v62 + 4);
          if (v70 != *(*&v62 + v50 + 88) || memcmp(*(*&v62 + 12), *(*&v62 + v50 + 96), 4 * v70))
          {
            return 0;
          }

          v55 = v76;
          v56.i64[0] = 0x3400000034000000;
          v56.i64[1] = 0x3400000034000000;
          v61 = vcgeq_f32(vmulq_f32(vandq_s8(vminnmq_f32(vabsq_f32(*(*&v62 + 20)), vabsq_f32(*(*&v62 + v50 + 104))), v76), v56), vandq_s8(vabdq_f32(*(*&v62 + 20), *(*&v62 + v50 + 104)), vorrq_s8(vceqq_f32(*(*&v62 + v50 + 104), *(*&v62 + v50 + 104)), vceqq_f32(*(*&v62 + 20), *(*&v62 + 20)))));
        }

        result = 0;
        v50 += 84;
        if ((vminvq_u32(v61) & 0x80000000) == 0)
        {
          return result;
        }
      }

      if (v39 >= 2)
      {
        v71 = v6[3];
        v72 = *&v71 + 92;
        while (*(v72 - 8) != 1 || *v72 != 1.0)
        {
          v72 += 84;
          if (!--v51)
          {
            goto LABEL_86;
          }
        }

        v73 = *(v72 - 4);
        *(*&v71 + 20) = *(v72 + 12);
        *(*&v71 + 4) = v73;
      }

LABEL_86:
      v74 = a1[5].u32[1];
      v75 = v6[1];
      v6[1] = a1;
      v6[2] = v74;
      a1->i64[1] = v75;
    }

    *a2 = v6;
    return 1;
  }

  v28 = 0;
  if ((v13 & 1) == 0)
  {
    v44 = 1;
LABEL_49:
    v77 = v44;
    v45 = &a1[v28 + 1].f32[3];
    do
    {
      v46 = *(v45 - 3);
      v47 = *v45;
      v48 = a1[5].u32[0];
      v49 = a3 + (v28 & 3);
      v79 = v49[4];
      v80 = *v49;
      result = (*(*v6 + 104))(v6, a1 + 4, &a1[4].i64[1], v48, &v79, v28, v46, v47);
      if (!result)
      {
        v44 = 0;
        if (++v28 < a1[5].u32[2])
        {
          goto LABEL_49;
        }

        return result;
      }

      *(v45 - 3) = 1.0;
      *v45 = 0.0;
      v45 += 4;
      ++v28;
      v39 = a1[5].u32[2];
    }

    while (v28 < v39);
LABEL_55:
    if ((v77 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_56;
  }

  v29 = &a1[1].i8[12];
  v30 = a1 + 1;
  v31 = 1;
  do
  {
    v77 = v31;
    v32 = &v29[16 * v28];
    v33 = &v30->f32[5 * v28];
    while (1)
    {
      v34 = *v33;
      v35 = *v32;
      v36 = a1[5].u32[0];
      v37 = a3 + (v28 & 3);
      v79 = v37[4];
      v80 = *v37;
      result = (*(*v6 + 104))(v6, a1 + 4, &a1[4].i64[1], v36, &v79, v28, v34, v35);
      if (!result)
      {
        break;
      }

      *v33 = 1.0;
      v33 += 5;
      *v32 = 0.0;
      v32 += 4;
      ++v28;
      v39 = a1[5].u32[2];
      if (v28 >= v39)
      {
        goto LABEL_55;
      }
    }

    v31 = 0;
    ++v28;
    v30 = a1 + 1;
    v29 = &a1[1].i8[12];
  }

  while (v28 < a1[5].u32[2]);
  return result;
}

uint64_t sub_23992D84C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_239929E3C(a2, "\t\tMatrix Stage %p:\n", a3, a4, a5, a6, a7, a8, a1);
  sub_239929E3C(a2, "\t\t\tProperties:   ", v10, v11, v12, v13, v14, v15, v42);
  sub_239929E68(a2, *(a1 + 80), v16, v17, v18, v19, v20, v21);
  sub_239929E3C(a2, "\t\t\tInput clamp:  ", v22, v23, v24, v25, v26, v27, v43);
  sub_239931904(a2, (a1 + 64));
  sub_239929E3C(a2, "\t\t\tOutput clamp: ", v28, v29, v30, v31, v32, v33, v44);
  sub_239931904(a2, (a1 + 72));
  v34 = *(a1 + 16);
  v54 = *(a1 + 56);
  v55 = *(a1 + 60);
  v52 = *(a1 + 48);
  v53 = *(a1 + 52);
  v50 = *(a1 + 40);
  v51 = *(a1 + 44);
  v48 = *(a1 + 32);
  v49 = *(a1 + 36);
  v46 = *(a1 + 24);
  v47 = *(a1 + 28);
  v45 = *(a1 + 20);
  return sub_239929E3C(a2, "\t\t\tMatrix: {%10.14f, %10.14f, %10.14f, %10.14f}\n\t\t\t        {%10.14f, %10.14f, %10.14f, %10.14f}\n\t\t\t        {%10.14f, %10.14f, %10.14f, %10.14f}\n", v35, v36, v37, v38, v39, v40, SLOBYTE(v34));
}

uint64_t sub_23992D968(float32x4_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v67 = *MEMORY[0x277D85DE8];
  v14 = objc_opt_new();
  if (v14)
  {
    v16 = v14;
    v65 = (a1[5].i8[0] & 4) != 0;
    objc_msgSend_setConstantValue_type_atIndex_(v14, v15, &v65, 53, 0);
    v65 = (a1[5].i8[0] & 2) != 0;
    objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v65, 53, 1);
    v65 = a1[5].i8[0] & 1;
    objc_msgSend_setConstantValue_type_atIndex_(v16, v18, &v65, 53, 4);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v19, &a1[4], 4, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v20, &a1[4].i64[1], 4, 3);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v21, a1[5].i64 + 4, 29, 32);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v22, &a1[5].i64[1], 29, 33);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v23, &a1[1], 3, 34);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v24, a1[1].i64 + 4, 3, 35);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v25, &a1[1].i64[1], 3, 36);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v26, &a1[1].i64[1] + 4, 3, 37);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v27, &a1[2], 3, 38);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v28, a1[2].i64 + 4, 3, 39);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v29, &a1[2].i64[1], 3, 40);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v30, &a1[2].i64[1] + 4, 3, 41);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v31, &a1[3], 3, 42);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v32, a1[3].i64 + 4, 3, 43);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v33, &a1[3].i64[1], 3, 44);
    objc_msgSend_setConstantValue_type_atIndex_(v16, v34, &a1[3].i64[1] + 4, 3, 45);
    v38 = "MPSFColorConversion_ApplyMatrix";
    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(a1[2], xmmword_239935420), vceqq_f32(a1[1], xmmword_239935420)), vceqq_f32(a1[3], xmmword_239935420))) & 0x80000000) != 0 && (a1[5].i8[0] & 6) == 0)
    {
      v38 = "MPSFColorConversion_ConvertGrayToRGB";
    }

    v39 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v35, v36, v37);
    v41 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v40, v38, 4);
    objc_msgSend_setName_(v39, v42, v41, v43);
    snprintf(__str, 0x100uLL, "%s_%lu", v38, a3);
    v45 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v44, __str, 4);
    objc_msgSend_setSpecializedName_(v39, v46, v45, v47);
    objc_msgSend_setConstantValues_(v39, v48, v16, v49);

    v64 = 0;
    v51 = objc_msgSend_newFunctionWithDescriptor_error_(a8, v50, v39, &v64);
    if (v51)
    {
      v58 = v51;
      sub_239929E3C(a2, "\t\t%s : FUNCTION( %s), %s;\n", v52, v53, v54, v55, v56, v57, a6);
      objc_msgSend_addObject_(a7, v59, v58, v60);
    }

    result = v64;
    v62 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v63 = *MEMORY[0x277D85DE8];

    return sub_239931A78("Memory error. Could not allocate a new MTLFunctionConstantValues object\n");
  }

  return result;
}

int8x16_t sub_23992DD00(uint64_t a1, int8x16_t *a2, char *a3, int32x4_t a4, int32x4_t a5)
{
  a4.i32[0] = 0;
  v5 = *a2;
  a5.i32[0] = *(a1 + 80) & 8;
  v6 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a5, a4), 0), xmmword_239935440, xmmword_239935430);
  v7 = vmvnq_s8(v6);
  v8.i64[0] = 0x3F0000003FLL;
  v8.i64[1] = 0x3F0000003FLL;
  v9 = vnegq_f32(v8);
  v10 = vbslq_s8(v6, v9, a2[1]);
  v11 = vbslq_s8(v6, v9, *a2);
  if ((*(a1 + 80) & 4) != 0)
  {
    v12 = (a1 + 64);
    v13 = (a1 + 68);
    v14 = vld1q_dup_f32(v13);
    v15 = *a3;
    v16 = ((vmaxvq_u32(vcgtq_f32(v11, v14)) & 0x80000000) != 0) | *a3;
    *a3 = *a3 & 0xFE | v16 & 1;
    v17 = vld1q_dup_f32(v13);
    v18 = vld1q_dup_f32(v12);
    v11 = vminnmq_f32(v11, v17);
    *a3 = v15 & 0xFE | v16 & 1 | ((vmaxvq_u32(vcgtq_f32(v18, v10)) & 0x80000000) != 0);
    v5 = vld1q_dup_f32(v12);
    v10 = vmaxnmq_f32(v10, v5);
  }

  v5.i32[0] = 0;
  v19.i64[0] = 0x80000000800000;
  v19.i64[1] = 0x80000000800000;
  v20 = vmaxnmq_f32(v11, v19);
  v21 = vmaxnmq_f32(v10, v19);
  v22 = vnegq_f32(v19);
  v23 = vminnmq_f32(v20, v22);
  v24 = vminnmq_f32(v21, v22);
  v25 = vandq_s8(v23, v7);
  v26 = vandq_s8(v24, v7);
  result.i32[1] = 0;
  result.i64[1] = 0;
  v28 = vorrq_s8(vandq_s8(veorq_s8(v6, xmmword_239935430), v24), v23.u32[0]);
  v29 = vbicq_s8(v24, v6);
  v30 = vbslq_s8(xmmword_239935460, v29, v25);
  v31 = vbslq_s8(xmmword_239935450, v29, v25);
  v32.i64[0] = 0xFFFFFFFF00000000;
  v32.i64[1] = 0xFFFFFFFF00000000;
  v33 = vbslq_s8(xmmword_239935470, v29, v25);
  v34 = vbslq_s8(v32, v29, v25);
  v35 = vorrq_s8(v24.u32[0], vandq_s8(v25, xmmword_239935480));
  v25.i32[3] = 0;
  v36 = *(a1 + 16);
  v37 = *(a1 + 32);
  v38 = *(a1 + 48);
  v39 = vzip1q_s32(v36, v38);
  v40 = vzip2q_s32(v36, v38);
  v41 = vzip1q_s32(v37, 0);
  v42 = vzip2q_s32(v37, 0);
  v43 = vzip1q_s32(v39, v41);
  v44 = vzip2q_s32(v39, v41);
  v45 = vzip1q_s32(v40, v42);
  v46 = vzip2q_s32(v40, v42);
  v47 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v28.f32[0]), v44, *v28.f32, 1), v45, v28, 2);
  v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v26.f32[0]), v44, *v26.f32, 1), v45, v26, 2);
  v49 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v31.f32[0]), v44, *v31.f32, 1), v45, v31, 2);
  v50 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v30.f32[0]), v44, *v30.f32, 1), v45, v30, 2);
  v51 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v34.f32[0]), v44, *v34.f32, 1), v45, v34, 2);
  v52 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v33.f32[0]), v44, *v33.f32, 1), v45, v33, 2);
  v53 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v35.f32[0]), v44, *v35.f32, 1), v45, v35, 2);
  v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmlaq_n_f32(v46, v43, v25.f32[0]), v44, *v25.f32, 1), v45, v25, 2);
  v55 = vminnmq_f32(v53, vminnmq_f32(v51, vminnmq_f32(v52, vminnmq_f32(v49, vminnmq_f32(v50, vminnmq_f32(v47, v48))))));
  v56 = vmaxnmq_f32(v54, vmaxnmq_f32(v53, vmaxnmq_f32(v51, vmaxnmq_f32(v52, vmaxnmq_f32(v49, vmaxnmq_f32(v50, vmaxnmq_f32(v47, v48)))))));
  v57 = vminnmq_f32(v54, v55);
  v58 = *(a1 + 80) & 0x10;
  v55.i32[0] = v58;
  v59 = vmovl_s16(vbsl_s8(vdup_lane_s32(vceq_s32(*v55.f32, *v5.f32), 0), 0xFFFF000000000000, -65536));
  v60 = vbslq_s8(v59, v9, v57);
  v61 = vbslq_s8(v59, v9, v56);
  if ((*(a1 + 80) & 2) != 0)
  {
    v62 = (a1 + 72);
    v63 = (a1 + 76);
    v64 = vld1q_dup_f32(v63);
    v65 = *a3;
    v66 = (v65 >> 2) & 1;
    if ((vmaxvq_u32(vcgtq_f32(v61, v64)) & 0x80000000) != 0)
    {
      v66 = 1;
    }

    if (v66)
    {
      v67 = 4;
    }

    else
    {
      v67 = 0;
    }

    v68 = v65 & 0xFB;
    *a3 = v67 | v68;
    v69 = vld1q_dup_f32(v63);
    v61 = vminnmq_f32(v61, v69);
    v70 = vld1q_dup_f32(v62);
    if ((vmaxvq_u32(vcgtq_f32(v70, v60)) & 0x80000000) == 0)
    {
      v71 = v67;
    }

    else
    {
      v71 = 4;
    }

    *a3 = v71 | v68;
    v56 = vld1q_dup_f32(v62);
    v58 = *(a1 + 80) & 0x10;
  }

  v56.i32[0] = 0;
  v57.i32[0] = v58;
  result.i32[0] = v61.i32[0];
  result.i64[0] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v57, v56), 0), v61, result).u64[0];
  result.i32[3] = a2->i32[3];
  v72 = a2[1].i32[3];
  return result;
}

double sub_23992E00C(uint64_t a1, _OWORD *a2)
{
  v8 = 0;
  *&v4 = (*(*a1 + 64))(a1, a2, &v8);
  *a2 = v4;
  a2[1] = v5;
  v6 = v8;
  if (v8)
  {
    if ((v8 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 80) &= ~4u;
    *&v4 = -2.84809454e-306;
    *(a1 + 64) = -2.84809454e-306;
    if ((v6 & 2) != 0)
    {
LABEL_3:
      if ((v6 & 4) != 0)
      {
        return *&v4;
      }

      goto LABEL_7;
    }
  }

  *(a1 + 80) &= ~1u;
  if ((v6 & 4) != 0)
  {
    return *&v4;
  }

LABEL_7:
  *(a1 + 80) &= ~2u;
  *&v4 = -2.84809454e-306;
  *(a1 + 72) = -2.84809454e-306;
  return *&v4;
}

BOOL sub_23992E148(unsigned int *a1, void *a2, unint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *a3;
  v8 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v9 = *a2;
  v10 = *a2;
  *v10 = 0x1000000;
  *a2 = v10 + 1;
  *a3 = v8;
  if (v8 < 4)
  {
    return 0;
  }

  v9[1] = bswap32(v6);
  *a2 = v9 + 2;
  v11 = v7 - 8;
  *a3 = v7 - 8;
  if (v7 - 8 < 4)
  {
    return 0;
  }

  v12 = v9 + 3;
  v9[2] = 0x1000000;
  *a2 = v9 + 3;
  v13 = v7 - 12;
  *a3 = v13;
  if (v13 >= 0x30)
  {
    *&src.height = xmmword_2399353C0;
    src.rowBytes = 48;
    v16.data = v9 + 3;
    *&v16.height = xmmword_2399353C0;
    v16.rowBytes = 48;
    src.data = a1 + 4;
    vImagePermuteChannels_ARGB8888(&src, &v16, byte_239935510, 0);
    v12 = (*a2 + 48);
    *a2 = v12;
    v13 = *a3 - 48;
    *a3 = v13;
  }

  v14 = v13 - 4;
  if (v13 < 4)
  {
    return 0;
  }

  *v12 = bswap32(a1[17]);
  *a2 = v12 + 1;
  *a3 = v14;
  if (v14 < 4)
  {
    return 0;
  }

  v12[1] = bswap32(a1[16]);
  *a2 = v12 + 2;
  *a3 = v13 - 8;
  if (v13 - 8 < 4)
  {
    return 0;
  }

  v12[2] = bswap32(a1[19]);
  *a2 = v12 + 3;
  *a3 = v13 - 12;
  if (v13 - 12 < 4)
  {
    return 0;
  }

  v12[3] = bswap32(a1[18]);
  *a2 = v12 + 4;
  *a3 = v13 - 16;
  if (v13 - 16 < 4)
  {
    return 0;
  }

  v12[4] = bswap32(a1[20]);
  *a2 = v12 + 5;
  *a3 = v13 - 20;
  if (v13 - 20 < 4)
  {
    return 0;
  }

  v12[5] = bswap32(a1[21]);
  *a2 = v12 + 6;
  *a3 = v13 - 24;
  if (v13 - 24 < 4)
  {
    return 0;
  }

  v12[6] = bswap32(a1[22]);
  *a2 = v12 + 7;
  *a3 = v13 - 28;
  return v11 > 0x33;
}

void sub_23992E3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_284C6AAE0;
  *(a1 + 8) = 0;
  if (!off_27DF853D0)
  {
    *&v55[0] = "CGColorNxMTransformGetTransform";
    *(&v55[0] + 1) = &off_27DF853D0;
    if (qword_27DF85218 == -1)
    {
      if (!off_27DF853D0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF85218, v55, sub_2399311E4);
      if (!off_27DF853D0)
      {
        goto LABEL_83;
      }
    }
  }

  if (!off_27DF853C0)
  {
    *&v55[0] = "CGColorFunctionGetProperties";
    *(&v55[0] + 1) = &off_27DF853C0;
    if (qword_27DF853F8 == -1)
    {
      if (!off_27DF853C0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF853F8, v55, sub_2399310CC);
      if (!off_27DF853C0)
      {
        goto LABEL_83;
      }
    }
  }

  if (!off_27DF853B0)
  {
    *&v55[0] = "CGColorFunctionGetInputRange";
    *(&v55[0] + 1) = &off_27DF853B0;
    if (qword_27DF85408 == -1)
    {
      if (!off_27DF853B0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once_f(&qword_27DF85408, v55, sub_23993113C);
      if (!off_27DF853B0)
      {
        goto LABEL_83;
      }
    }
  }

  if (off_27DF853B8)
  {
    goto LABEL_13;
  }

  *&v55[0] = "CGColorFunctionGetOutputRange";
  *(&v55[0] + 1) = &off_27DF853B8;
  if (qword_27DF85410 == -1)
  {
    if (off_27DF853B8)
    {
      goto LABEL_13;
    }

LABEL_83:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x277D827C0], 0);
  }

  dispatch_once_f(&qword_27DF85410, v55, sub_239931174);
  if (!off_27DF853B8)
  {
    goto LABEL_83;
  }

LABEL_13:
  memset(v55, 0, 36);
  v7 = off_27DF853D0;
  if (!off_27DF853D0)
  {
    context = "CGColorNxMTransformGetTransform";
    v57 = &off_27DF853D0;
    if (qword_27DF85218 != -1)
    {
      dispatch_once_f(&qword_27DF85218, &context, sub_2399311E4);
    }

    v7 = off_27DF853D0;
  }

  (v7)(v55, *(*(a2 + 68) + 8 * a4));
  *(a1 + 136) = v55[0];
  *(a1 + 120) = *(v55 + 4);
  if (off_27DF853C0)
  {
    *(a1 + 112) = off_27DF853C0(*(*(a2 + 68) + 8 * a4));
    v8 = off_27DF853B0;
    if (off_27DF853B0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    context = "CGColorFunctionGetProperties";
    v57 = &off_27DF853C0;
    if (qword_27DF853F8 != -1)
    {
      dispatch_once_f(&qword_27DF853F8, &context, sub_2399310CC);
    }

    *(a1 + 112) = off_27DF853C0(*(*(a2 + 68) + 8 * a4));
    v8 = off_27DF853B0;
    if (off_27DF853B0)
    {
LABEL_19:
      *(a1 + 96) = v8(*(*(a2 + 68) + 8 * a4));
      *(a1 + 100) = v9;
      v10 = off_27DF853B8;
      if (off_27DF853B8)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }
  }

  context = "CGColorFunctionGetInputRange";
  v57 = &off_27DF853B0;
  if (qword_27DF85408 != -1)
  {
    dispatch_once_f(&qword_27DF85408, &context, sub_23993113C);
  }

  *(a1 + 96) = off_27DF853B0(*(*(a2 + 68) + 8 * a4));
  *(a1 + 100) = v11;
  v10 = off_27DF853B8;
  if (!off_27DF853B8)
  {
LABEL_27:
    context = "CGColorFunctionGetOutputRange";
    v57 = &off_27DF853B8;
    if (qword_27DF85410 != -1)
    {
      dispatch_once_f(&qword_27DF85410, &context, sub_239931174);
    }

    v10 = off_27DF853B8;
  }

LABEL_30:
  v12 = v10(*(*(a2 + 68) + 8 * a4));
  *(a1 + 104) = v12;
  *(a1 + 108) = v13;
  v14 = *(a1 + 112);
  v15 = *(a1 + 96);
  if ((~v14 & 5) == 0 && v15 >= 0.0)
  {
    v14 &= ~1u;
    *(a1 + 112) = v14;
  }

  v16 = *(a1 + 100);
  v17 = (v15 <= -1.1755e-38) & (v14 >> 2) & (v16 >= 3.4028e38);
  if (v17)
  {
    v14 &= ~4u;
  }

  v18 = (v12 <= -1.1755e-38) & (v14 >> 1) & (v13 >= 3.4028e38);
  if (v18)
  {
    v14 &= ~2u;
  }

  if (v17 & 1) != 0 || (v18)
  {
    *(a1 + 112) = v14;
    v19 = *(a1 + 136);
    if (v19 > 6)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v19 = *(a1 + 136);
    if (v19 > 6)
    {
LABEL_40:
      if (v19 == 9)
      {
        v22 = *(&v55[1] + 12);
        *(a1 + 16) = **(&v55[1] + 12);
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 16);
        *(a1 + 80) = *(v22 + 64);
        *(a1 + 48) = v24;
        *(a1 + 64) = v23;
        *(a1 + 32) = v25;
        return;
      }

      if (v19 == 8 || v19 == 7)
      {
        v20 = *(*(&v55[1] + 12) + 16);
        *(a1 + 16) = **(&v55[1] + 12);
        *(a1 + 32) = v20;
        return;
      }

      goto LABEL_84;
    }
  }

  if ((v19 - 3) >= 4)
  {
    if (v19 >= 3)
    {
LABEL_84:
      __break(1u);
      return;
    }

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v26 = *(&v55[1] + 4);
  v27 = *(v55 + 4);
  v28 = vcgtq_s32(xmmword_239935490, vdupq_n_s32(DWORD1(v55[0])));
  v29 = vcvtq_f32_s32(vsubq_s32(vbicq_s8(vdupq_n_s32(DWORD1(v55[1])), v28), v28));
  *(a1 + 16) = v29;
  *(a1 + 40) = v26;
  if (v27 == 4)
  {
    *(a1 + 112) = v14 | 4;
    v30 = 0.0;
    if (v15 >= 0.0)
    {
      v30 = v15;
    }

    *(a1 + 96) = v30;
    *(a1 + 100) = fminf(v16, 1.0);
  }

  v31 = *(v55 + 12);
  if (*(v55 + 12) == 3)
  {
    v31 = 4;
  }

  v32 = vmaxnmq_f32(v29, 0);
  v33.i64[0] = 0x4F0000004F000000;
  v33.i64[1] = 0x4F0000004F000000;
  v34 = vcgtq_f32(v32, v33);
  v35 = vcvtq_s32_f32(vsubq_f32(v32, vandq_s8(v33, v34)));
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  v36 = vaddq_s32(vandq_s8(v34, v33), v35);
  v37 = v36.u32[0] * v36.u32[1] * v36.u32[2] * v36.u32[3];
  v38 = v31 * byte_239935514[v19] * v37;
  v39 = malloc_type_malloc(v38, 0x1000040BDFB0063uLL);
  *(a1 + 32) = v39;
  if (v39)
  {
    if (((*(a1 + 128) == 3) & ~v21) != 0)
    {
      if ((0x33uLL >> v19))
      {
        if (v37)
        {
          v40.i32[0] = 0;
          v45 = *(&v55[1] + 12);
          v41.i32[0] = *(a1 + 136);
          v46 = vbsl_s8(vdup_lane_s32(vceq_s32(v41, v40), 0), 0xFFFF000000000000, 0x3C00000000000000);
          do
          {
            v47 = *v45;
            v45 = (v45 + 6);
            v48 = v47;
            HIWORD(v48) = v46.i16[3];
            *v39++ = v48;
            --v37;
          }

          while (v37);
        }
      }

      else if (v37)
      {
        v42 = *(&v55[1] + 12);
        do
        {
          v43 = *v42;
          v42 = (v42 + 12);
          v44 = v43;
          HIDWORD(v44) = 1065353216;
          *v39 = v44;
          v39 += 2;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      memcpy(v39, *(&v55[1] + 12), v38);
    }
  }

  v49 = *(a1 + 136);
  v50 = v49 > 4;
  v51 = (1 << v49) & 0x19;
  if (!v50 && v51 != 0)
  {
    v53 = *(a1 + 112);
    if ((v53 & 2) != 0 && *(a1 + 104) <= 0.0 && *(a1 + 108) >= 1.0)
    {
      *(a1 + 112) = v53 & 0xFFFFFFFD;
      *(a1 + 104) = -2.84809454e-306;
    }
  }
}

uint64_t sub_23992EA78(uint64_t result)
{
  *result = &unk_284C6AAE0;
  if (!*(result + 136))
  {
    v1 = result;
    free(*(result + 32));
    return v1;
  }

  return result;
}

void sub_23992EAD4(uint64_t a1)
{
  *a1 = &unk_284C6AAE0;
  if (*(a1 + 136))
  {
  }

  else
  {
    free(*(a1 + 32));
  }

  JUMPOUT(0x23EE7B550);
}

id sub_23992EB68(float32x4_t *a1)
{
  if (a1[8].i32[2])
  {
    return 0;
  }

  v3 = objc_opt_new();
  objc_msgSend_setTextureType_(v3, v4, 7, v5);
  v8 = a1[8].i64[0];
  v9 = 110;
  if (v8 == 2)
  {
    v9 = 60;
  }

  if (v8 == 1)
  {
    objc_msgSend_setPixelFormat_(v3, v6, 20, v7);
  }

  else
  {
    objc_msgSend_setPixelFormat_(v3, v6, v9, v7);
  }

  v12 = a1[1];
  v13.i64[0] = 0x4F0000004F000000;
  v13.i64[1] = 0x4F0000004F000000;
  v14 = vcgtq_f32(v12, v13);
  v15 = vcvtq_s32_f32(vsubq_f32(v12, vandq_s8(v13, v14)));
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  v16 = vaddq_s32(vandq_s8(v14, v13), v15);
  v16.i32[2] *= v16.i32[3];
  v16.i32[3] = 1;
  v17 = vrev64q_s32(v16);
  v18 = vextq_s8(v17, v17, 0xCuLL);
  v19 = a1[7].u64[1];
  if (v19 < 3)
  {
    v18 = vextq_s8(v18, v18, 4uLL);
    if (v19 != 2)
    {
      v17.i64[0] = 0;
      v20 = vextq_s8(v18, v18, 4uLL);
      v14.i64[0] = a1[7].i64[1];
      v18 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v14, v17).i64[0], 0), vextq_s8(v20, v20, 4uLL), v20);
    }
  }

  objc_msgSend_setWidth_(v3, v10, v18.u32[0], v11, *&v18);
  objc_msgSend_setHeight_(v3, v21, v27, v22);
  objc_msgSend_setDepth_(v3, v23, v28, v24);
  objc_msgSend_setUsage_(v3, v25, 1, v26);
  return v3;
}

uint64_t sub_23992ECAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v128 = *MEMORY[0x277D85DE8];
  v15 = *(a1 + 136);
  v16 = objc_opt_new();
  v18 = v16;
  if (!v15)
  {
    if (v16)
    {
      v125 = (*(a1 + 112) & 4) != 0;
      objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v125, 53, 0);
      v125 = (*(a1 + 112) & 2) != 0;
      objc_msgSend_setConstantValue_type_atIndex_(v18, v32, &v125, 53, 1);
      v125 = *(a1 + 112) & 1;
      objc_msgSend_setConstantValue_type_atIndex_(v18, v33, &v125, 53, 4);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v34, a1 + 96, 4, 2);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v35, a1 + 104, 4, 3);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v36, a1 + 16, 6, 48);
      v124 = *(a1 + 128);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v37, &v124, 33, 47);
      v123 = *(a1 + 120);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v38, &v123, 33, 46);
      v39 = *(a1 + 120);
      v43 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v40, v41, v42);
      if (v43)
      {
        v45 = v43;
        if (v39 == 4)
        {
          v46 = "MPSFColorConversion_LUT4D";
          v47 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v44, "MPSFColorConversion_LUT4D", 4);
        }

        else
        {
          v46 = "MPSFColorConversion_LUT3D";
          v47 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v44, "MPSFColorConversion_LUT3D", 4);
        }

        objc_msgSend_setName_(v45, v48, v47, v49);
        snprintf(__str, 0xFFuLL, "%s_%lu", v46, a3);
        v51 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v50, __str, 4);
        objc_msgSend_setSpecializedName_(v45, v52, v51, v53);
        objc_msgSend_setConstantValues_(v45, v54, v18, v55);
        objc_msgSend_setOptions_(v45, v56, 0, v57);

        v126 = 0;
        v59 = objc_msgSend_newFunctionWithDescriptor_error_(a8, v58, v45, &v126);
        if (v59)
        {
          v62 = v59;
          objc_msgSend_addObject_(a7, v60, v59, v61);

          v122 = *a4;
          sub_239929E3C(a2, "\t\t%s : FUNCTION( %s), %s, NODE(tex3d_%lu);\n", v63, v64, v65, v66, v67, v68, a6);
          result = 0;
          ++*a4;
          v70 = *MEMORY[0x277D85DE8];
          return result;
        }

LABEL_21:
        result = v126;
        v101 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_23;
    }

LABEL_15:
    v71 = *MEMORY[0x277D85DE8];

    return sub_239931A78("Memory error. Could not allocate a new MTLFunctionConstantValues object\n");
  }

  if (!v16)
  {
    goto LABEL_15;
  }

  LOBYTE(v124) = (*(a1 + 112) & 4) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v16, v17, &v124, 53, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v18, v19, a1 + 96, 4, 2);
  LOBYTE(v124) = (*(a1 + 112) & 2) != 0;
  objc_msgSend_setConstantValue_type_atIndex_(v18, v20, &v124, 53, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v18, v21, a1 + 104, 4, 3);
  v23 = *(a1 + 136);
  switch(v23)
  {
    case 9:
      objc_msgSend_setConstantValue_type_atIndex_(v18, v22, a1 + 16, 3, 53);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v102, a1 + 20, 3, 54);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v103, a1 + 24, 3, 55);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v104, a1 + 28, 3, 56);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v105, a1 + 32, 3, 57);
      v107 = *(a1 + 52);
      v106 = a1 + 52;
      *v108.i32 = v107;
      v109.f64[0] = -(v107 + 2.0);
      v109.f64[1] = v107 + 1.0;
      *&v108.i32[1] = 1.0 - v107;
      *__str = vcvt_hight_f32_f64(v108, vmlaq_n_f64(v109, xmmword_2399354B0, *(v106 - 8)));
      objc_msgSend_setConstantValue_type_atIndex_(v18, v110, __str, 6, 52);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v111, v106 - 16, 3, 58);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v112, v106 - 12, 3, 59);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v113, v106, 3, 60);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v114, v106 + 4, 3, 61);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v115, v106 - 4, 3, 62);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v116, v106 + 20, 6, 63);
      v26 = "MPSFColorConversion_PQ_ToneMapping";
      v30 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v117, v118, v119);
      if (v30)
      {
LABEL_19:
        v77 = v30;
        v78 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v31, v26, 4);
        objc_msgSend_setName_(v77, v79, v78, v80);
        snprintf(__str, 0xFFuLL, "%s_%lu", v26, a3);
        v82 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v81, __str, 4);
        objc_msgSend_setSpecializedName_(v77, v83, v82, v84);
        objc_msgSend_setConstantValues_(v77, v85, v18, v86);
        objc_msgSend_setOptions_(v77, v87, 0, v88);

        v126 = 0;
        v90 = objc_msgSend_newFunctionWithDescriptor_error_(a8, v89, v77, &v126);
        if (v90)
        {
          v93 = v90;
          objc_msgSend_addObject_(a7, v91, v90, v92);

          sub_239929E3C(a2, "\t\t%s : FUNCTION(%s), %s;\n", v94, v95, v96, v97, v98, v99, a6);
          result = 0;
          v100 = *MEMORY[0x277D85DE8];
          return result;
        }

        goto LABEL_21;
      }

LABEL_23:

      result = sub_239931A78("Memory allocation failed. Could not make new MTLFunctionDescriptor object.");
      v120 = *MEMORY[0x277D85DE8];
      return result;
    case 8:
      objc_msgSend_setConstantValue_type_atIndex_(v18, v22, a1 + 24, 6, 49);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v72, a1 + 16, 3, 50);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v73, a1 + 20, 3, 51);
      v26 = "MPSFColorConversion_HLGSceneReferredMapping";
      v30 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v74, v75, v76);
      if (v30)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    case 7:
      objc_msgSend_setConstantValue_type_atIndex_(v18, v22, a1 + 24, 6, 49);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v24, a1 + 16, 3, 50);
      objc_msgSend_setConstantValue_type_atIndex_(v18, v25, a1 + 20, 3, 51);
      v26 = "MPSFColorConversion_HLGLuminanceScaling";
      v30 = objc_msgSend_functionDescriptor(MEMORY[0x277CD6D78], v27, v28, v29);
      if (!v30)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
  }

  result = sub_239931A78("Internal error: unrecognized / mishandled CGColorNxMTransformFormat at stage %lu", a3);
  v121 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23992F364(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_239929E3C(a2, "\t\tNxM Stage %p:\n", a3, a4, a5, a6, a7, a8, a1);
  sub_239929E3C(a2, "\t\t\tInput Channels:  %lu\n", v11, v12, v13, v14, v15, v16, *(a1 + 120));
  sub_239929E3C(a2, "\t\t\tOutput Channels: %lu\n", v17, v18, v19, v20, v21, v22, *(a1 + 128));
  sub_239929E3C(a2, "\t\t\tProperties:      ", v23, v24, v25, v26, v27, v28, v174);
  sub_239929E68(a2, *(a1 + 112), v29, v30, v31, v32, v33, v34);
  sub_239929E3C(a2, "\t\t\tInput clamp:     ", v35, v36, v37, v38, v39, v40, v175);
  sub_239931904(a2, (a1 + 96));
  sub_239929E3C(a2, "\t\t\tOutput clamp:    ", v41, v42, v43, v44, v45, v46, v176);
  sub_239931904(a2, (a1 + 104));
  v53 = *(a1 + 136);
  if (v53 > 7)
  {
    if (v53 == 8)
    {
      v54 = "\t\t\tHLG Scene Referred mapping:\n";
      goto LABEL_13;
    }

    if (v53 == 9)
    {
      sub_239929E3C(a2, "\t\t\tPQ Tone Mapping:\n", v47, v48, v49, v50, v51, v52, v177);
      v55 = *(a1 + 72);
      v195 = *(a1 + 80);
      v197 = *(a1 + 84);
      v193 = *(a1 + 76);
      sub_239929E3C(a2, "\t\t\t\tluminance coeffs: {%f, %f, %f, %f}\n", v56, v57, v58, v59, v60, v61, SLOBYTE(v55));
      sub_239929E3C(a2, "\t\t\t\tEETF:\n", v62, v63, v64, v65, v66, v67, v178);
      v179 = *(a1 + 36);
      sub_239929E3C(a2, "\t\t\t\t\tmaster peak Inv:  %f\n", v68, v69, v70, v71, v72, v73, SLOBYTE(v179));
      v180 = *(a1 + 40);
      sub_239929E3C(a2, "\t\t\t\t\tmaster block Inv: %f\n", v74, v75, v76, v77, v78, v79, SLOBYTE(v180));
      v181 = *(a1 + 44);
      sub_239929E3C(a2, "\t\t\t\t\tMax luminance:    %f\n", v80, v81, v82, v83, v84, v85, SLOBYTE(v181));
      v182 = *(a1 + 48);
      sub_239929E3C(a2, "\t\t\t\t\tMin luminance:    %f\n", v86, v87, v88, v89, v90, v91, SLOBYTE(v182));
      v183 = *(a1 + 52);
      sub_239929E3C(a2, "\t\t\t\t\tKnee Start:       %f\n", v92, v93, v94, v95, v96, v97, SLOBYTE(v183));
      v184 = *(a1 + 56);
      sub_239929E3C(a2, "\t\t\t\t\tKnee Start Scale: %f\n", v98, v99, v100, v101, v102, v103, SLOBYTE(v184));
      sub_239929E3C(a2, "\t\t\t\tEOTF:\n", v104, v105, v106, v107, v108, v109, v185);
      v186 = *(a1 + 16);
      sub_239929E3C(a2, "\t\t\t\t\tm1:               %f\n", v110, v111, v112, v113, v114, v115, SLOBYTE(v186));
      v187 = *(a1 + 20);
      sub_239929E3C(a2, "\t\t\t\t\tm2:               %f\n", v116, v117, v118, v119, v120, v121, SLOBYTE(v187));
      v188 = *(a1 + 24);
      sub_239929E3C(a2, "\t\t\t\t\tc1:               %f\n", v122, v123, v124, v125, v126, v127, SLOBYTE(v188));
      v189 = *(a1 + 28);
      sub_239929E3C(a2, "\t\t\t\t\tc2:               %f\n", v128, v129, v130, v131, v132, v133, SLOBYTE(v189));
      v190 = *(a1 + 32);
      sub_239929E3C(a2, "\t\t\t\t\tc3:               %f\n", v134, v135, v136, v137, v138, v139, SLOBYTE(v190));
      v140 = *(a1 + 44);
      v141 = *(a1 + 52);
      return sub_239929E3C(a2, "\t\t\t\tSpline coeffs:        {%f, %f, %f, %f}\n", v142, v143, v144, v145, v146, v147, SLOBYTE(v141));
    }
  }

  else
  {
    if (!v53)
    {
      v199 = COERCE_FLOAT(HIDWORD(*(a1 + 16)));
      sub_239929E3C(a2, "\t\t\t%lu-D LUT: %u x %u x %u x %u\n", v47, v48, v49, v50, v51, v52, *(a1 + 120));
      return sub_239929E3C(a2, "\t\t\toriginal dimension: %lu\n", v149, v150, v151, v152, v153, v154, *(a1 + 40));
    }

    if (v53 == 7)
    {
      v54 = "\t\t\tHLG Luminance Scaling:\n";
LABEL_13:
      sub_239929E3C(a2, v54, v47, v48, v49, v50, v51, v52, v177);
      v155 = *(a1 + 24);
      v196 = *(a1 + 32);
      v198 = *(a1 + 36);
      v194 = *(a1 + 28);
      sub_239929E3C(a2, "\t\t\t\tluminance coeffs: {%f, %f, %f, %f}\n", v156, v157, v158, v159, v160, v161, SLOBYTE(v155));
      v191 = *(a1 + 16);
      sub_239929E3C(a2, "\t\t\t\tluminance gamma:  %f\n", v162, v163, v164, v165, v166, v167, SLOBYTE(v191));
      v192 = *(a1 + 20);
      return sub_239929E3C(a2, "\t\t\t\tluminance gain:   %f\n", v168, v169, v170, v171, v172, v173, SLOBYTE(v192));
    }
  }

  return sub_239929E3C(a2, "\t\t\t type <internal error: unhandled type)\n", v47, v48, v49, v50, v51, v52, a9);
}

double sub_23992F764(uint64_t a1, _OWORD *a2, char *a3)
{
  v3 = 0;
  v5 = *a2;
  v4 = *(a2 + 1);
  v6 = *(a1 + 136);
  if (v6 > 6)
  {
    if (v6 == 7)
    {
      v31 = *a3;
      if ((*(a1 + 112) & 4) != 0)
      {
        v32 = (a1 + 96);
        v33 = (a1 + 100);
        v34 = vld1q_dup_f32(v33);
        v35 = ((vmaxvq_u32(vcgtq_f32(v5, v34)) & 0x80000000) != 0) | v31;
        *a3 = v31 & 0xFE | v35 & 1;
        v36 = vld1q_dup_f32(v33);
        v5 = vminnmq_f32(v5, v36);
        v37 = vld1q_dup_f32(v32);
        v38 = v31 & 0xFE | v35 & 1 | ((vmaxvq_u32(vcgtq_f32(v37, v4)) & 0x80000000) != 0);
        *a3 = v38;
        v39 = vld1q_dup_f32(v32);
        v4 = vmaxnmq_f32(v4, v39);
        v31 = v38;
      }

      v40 = (v31 >> 1) & 1;
      if ((vmaxvq_u32(vcgtq_f32(xmmword_2399354C0, v4)) & 0x80000000) != 0)
      {
        v40 = 1;
      }

      if (v40)
      {
        v41 = 2;
      }

      else
      {
        v41 = 0;
      }

      v42 = v41 | v31 & 0xFD;
      *a3 = v42;
      if ((*(a1 + 112) & 2) != 0)
      {
        v43 = (a1 + 108);
        v44 = vld1q_dup_f32(v43);
        v45 = (a1 + 104);
        v46 = (v31 >> 2) & 1;
        if ((vmaxvq_u32(vcgtq_f32(v5, v44)) & 0x80000000) != 0)
        {
          v46 = 1;
        }

        if (v46)
        {
          v47 = 4;
        }

        else
        {
          v47 = 0;
        }

        v48 = v42 & 0xFB;
        *a3 = v47 | v48;
        v49 = vld1q_dup_f32(v43);
        v79 = vminnmq_f32(v5, v49);
        v50 = vld1q_dup_f32(v45);
        if ((vmaxvq_u32(vcgtq_f32(v50, v4)) & 0x80000000) == 0)
        {
          v51 = v47;
        }

        else
        {
          v51 = 4;
        }

        *a3 = v51 | v48;
        v52 = vld1q_dup_f32(v45);
        v4 = vmaxnmq_f32(v4, v52);
        v20 = sub_23992FC40;
        goto LABEL_45;
      }

      v3 = sub_23992FC40;
      v79 = v5;
    }

    else
    {
      v79 = *a2;
      if (v6 == 8)
      {
        *a3 |= ((vmaxvq_u32(vcgtq_f32(v5, xmmword_2399354D0)) | vmaxvq_u32(vcgtq_f32(xmmword_2399354C0, v4))) & 0x80000000) != 0;
        v20 = sub_23992FCD8;
        goto LABEL_45;
      }

      if (v6 == 9)
      {
        v20 = sub_23992FEA0;
LABEL_45:
        v3 = v20;
      }
    }

LABEL_46:
    v80 = v4;
    *v54.i64 = (v3)(a1 + 16, v4);
    v55.i64[0] = 0x7F0000007FLL;
    v55.i64[1] = 0x7F0000007FLL;
    v56 = v80;
    v56.i32[0] = 0;
    v72 = vmaxnmq_f32(v54, v55);
    *v57.i64 = (v3)(a1 + 16, vorrq_s8(v56, v79.u32[0]));
    v73 = vmaxnmq_f32(v57, v72);
    v58 = v80;
    v58.i32[1] = 0;
    v59.i32[0] = 0;
    v59.i32[3] = 0;
    *(v59.i64 + 4) = v79.u32[1];
    *v60.i64 = (v3)(a1 + 16, vorrq_s8(v58, v59));
    v74 = vmaxnmq_f32(v60, v73);
    *v61.i64 = (v3)(a1 + 16, *v79.i64);
    v75 = vmaxnmq_f32(v61, v74);
    v62 = v80;
    v62.i32[2] = 0;
    v63.i64[0] = 0;
    v63.i64[1] = v79.u32[2];
    *v64.i64 = (v3)(a1 + 16, vorrq_s8(v62, v63));
    v76 = vmaxnmq_f32(v64, v75);
    *v65.i64 = (v3)(a1 + 16, vorrq_s8(vtrn2q_s32(vrev64q_s32(0), v80), vtrn2q_s32(vrev64q_s32(v79), 0)));
    v77 = vmaxnmq_f32(v65, v76);
    v65.i32[2] = 0;
    v66 = v79;
    v65.i64[0] = v80.u32[0];
    v65.i32[3] = v80.i32[3];
    v66.i32[3] = 0;
    v71 = v66;
    v66.i32[0] = 0;
    *v67.i64 = (v3)(a1 + 16, vorrq_s8(v65, v66));
    v78 = vmaxnmq_f32(v67, v77);
    v68.i64[0] = 0;
    v68.i32[2] = 0;
    v68.i32[3] = v80.i32[3];
    *_Q0.i64 = (v3)(a1 + 16, vorrq_s8(v68, v71));
    v69 = *(a1 + 120);
    if (v69 <= *(a1 + 128))
    {
      v69 = *(a1 + 128);
    }

    _Q0.i64[0] = vbslq_s8(vcgtq_s32(vdupq_n_s32(v69), xmmword_2399354E0), vmaxnmq_f32(_Q0, v78), v79).u64[0];
    return *_Q0.i64;
  }

  if (v6 >= 7)
  {
    v79 = *a2;
    goto LABEL_46;
  }

  if ((*(a1 + 112) & 4) != 0)
  {
    v8 = (a1 + 100);
    v9 = vld1q_dup_f32(v8);
    v10 = *a3;
    LOBYTE(v8) = ((vmaxvq_u32(vcgtq_f32(v5, v9)) & 0x80000000) != 0) | *a3;
    *a3 = *a3 & 0xFE | v8 & 1;
    v7 = (a1 + 96);
    v11 = vld1q_dup_f32(v7);
    *a3 = v10 & 0xFE | v8 & 1 | ((vmaxvq_u32(vcgtq_f32(v11, v4)) & 0x80000000) != 0);
    v6 = *(a1 + 136);
  }

  v12 = v6 > 4;
  v13 = (1 << v6) & 0x19;
  if (v12 || v13 == 0)
  {
    v15.i64[0] = 0x7F0000007FLL;
    v15.i64[1] = 0x7F0000007FLL;
    _Q0 = vnegq_f32(v15);
    if ((*(a1 + 112) & 2) == 0)
    {
      return *_Q0.i64;
    }
  }

  else
  {
    v15 = 0uLL;
    __asm { FMOV            V0.4S, #1.0 }

    if ((*(a1 + 112) & 2) == 0)
    {
      return *_Q0.i64;
    }
  }

  v21 = (a1 + 104);
  v22 = (a1 + 108);
  v23 = vld1q_dup_f32(v22);
  v24 = *a3;
  v25 = (v24 >> 2) & 1;
  if ((vmaxvq_u32(vcgtq_f32(_Q0, v23)) & 0x80000000) != 0)
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = 4;
  }

  else
  {
    v26 = 0;
  }

  v27 = v24 & 0xFB;
  *a3 = v26 | v27;
  v28 = vld1q_dup_f32(v22);
  _Q0.i64[0] = vminnmq_f32(_Q0, v28).u64[0];
  v29 = vld1q_dup_f32(v21);
  if ((vmaxvq_u32(vcgtq_f32(v29, v15)) & 0x80000000) == 0)
  {
    v30 = v26;
  }

  else
  {
    v30 = 4;
  }

  *a3 = v30 | v27;
  vld1q_dup_f32(v21);
  return *_Q0.i64;
}

__n128 sub_23992FC40(uint64_t a1, float32x4_t _Q0)
{
  v15 = _Q0;
  v2 = *(a1 + 8);
  _S2 = *(a1 + 16);
  v4 = vmuls_lane_f32(*(a1 + 12), *_Q0.f32, 1);
  __asm { FMLA            S6, S2, V0.S[2] }

  if (_Q0.f32[0] >= _Q0.f32[1])
  {
    v10 = _Q0.f32[0];
  }

  else
  {
    v10 = _Q0.f32[1];
  }

  if (v10 < _Q0.f32[2])
  {
    v10 = _Q0.f32[2];
  }

  v11 = _S6 + (*(a1 + 20) * v10);
  v12 = fabsf(v11);
  if (v12 < 1.1755e-38)
  {
    v12 = 1.1755e-38;
  }

  if (v11 >= 0.0)
  {
    v13 = *(a1 + 4);
  }

  else
  {
    v13 = -*(a1 + 4);
  }

  result.n128_u64[0] = vmulq_n_f32(v15, v13 * powf(v12, *a1)).u64[0];
  result.n128_u32[3] = v15.u32[3];
  return result;
}

double sub_23992FCD8(uint64_t a1, float32x4_t a2)
{
  v3 = *(a1 + 12);
  v5 = *(a1 + 16);
  v4 = *(a1 + 20);
  v6 = *(a1 + 96);
  v33 = v4;
  v34 = *(a1 + 8);
  if ((v6 & 4) != 0)
  {
    v7 = *(a1 + 104);
    if (v7)
    {
      v8 = 0;
      v10 = *(a1 + 80);
      v9 = *(a1 + 84);
      do
      {
        v11 = (&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
        v38 = a2;
        v12 = *v11;
        if (*v11 < v10)
        {
          v12 = v10;
        }

        *v11 = v12;
        if (v12 >= v9)
        {
          v12 = v9;
        }

        v39 = v38;
        *(&v39 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v12;
        a2 = v39;
        ++v8;
      }

      while (v7 != v8);
    }
  }

  v14 = *a1;
  v13 = *(a1 + 4);
  v15 = v13 * a2.f32[0];
  v16 = vmuls_lane_f32(v13, *a2.f32, 1);
  v35 = a2.u32[3];
  v17 = vmuls_lane_f32(v13, a2, 2);
  v18 = powf(v13 * a2.f32[0], *a1);
  v19 = powf(v16, v14);
  v20 = powf(v17, v14);
  if (v18 >= v19)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  if (v21 < v20)
  {
    v21 = v20;
  }

  v22 = (((v3 * v19) + (v34 * v18)) + (v5 * v20)) + (v33 * v21);
  if (v22 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    if (v15 >= v16)
    {
      v23 = v15;
    }

    else
    {
      v23 = v16;
    }

    if (v23 < v17)
    {
      v23 = v17;
    }

    v24 = ((((v3 * v16) + (v15 * v34)) + (v17 * v5)) + (v23 * v33)) / v22;
  }

  HIDWORD(v25) = v35;
  *&v25 = v18 * v24;
  *(&v25 + 1) = v19 * v24;
  *(&v25 + 2) = v20 * v24;
  if ((v6 & 2) != 0)
  {
    v26 = *(a1 + 112);
    if (v26)
    {
      v27 = 0;
      v28 = *(a1 + 88);
      v29 = *(a1 + 92);
      do
      {
        v30 = (&v36 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3)));
        v36 = v25;
        v31 = *v30;
        if (*v30 < v28)
        {
          v31 = v28;
        }

        *v30 = v31;
        if (v31 >= v29)
        {
          v31 = v29;
        }

        v37 = v36;
        *(&v37 & 0xFFFFFFFFFFFFFFF3 | (4 * (v27 & 3))) = v31;
        v25 = v37;
        ++v27;
      }

      while (v26 != v27);
    }
  }

  return *&v25;
}

void sub_23992FEA0(uint64_t a1, __n128 _Q0)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 60);
  _S1 = *(a1 + 64);
  __asm { FMLA            S10, S1, V0.S[2] }

  if (_S10 != 0.0)
  {
    v11 = *a1;
    v12 = powf(_S10 / 10000.0, *a1);
    v13 = *(a1 + 12);
    v14 = *(a1 + 16);
    v15 = *(a1 + 4);
    v16 = *(a1 + 8);
    v17 = powf((v16 + (v13 * v12)) / ((v14 * v12) + 1.0), v15);
    v18 = *(a1 + 24);
    v19 = v17 - v18;
    v20 = *(a1 + 20) - v18;
    v21 = v19 / v20;
    v22 = *(a1 + 36);
    if (v21 >= v22)
    {
      v23 = (v21 - v22) * *(a1 + 40);
      v21 = (((1.0 - v22) * (v23 - ((v23 * (v23 + v23)) - ((v23 * v23) * v23)))) + ((1.0 - ((v23 * (v23 * 3.0)) - ((v23 * (v23 + v23)) * v23))) * v22)) + (((v23 * (v23 * 3.0)) + ((v23 * (v23 * -2.0)) * v23)) * *(a1 + 28));
    }

    if (v21 >= 0.0)
    {
      if (v21 < 1.0)
      {
        v21 = v21 + (((1.0 - v21) * ((1.0 - v21) * ((1.0 - v21) * *(a1 + 32)))) * (1.0 - v21));
      }
    }

    else
    {
      v21 = *(a1 + 32);
    }

    v24 = powf(v18 + (v21 * v20), 1.0 / v15);
    v25 = v24 - v16;
    if ((v24 - v16) < 0.0)
    {
      v25 = 0.0;
    }

    powf(v25 / (v13 - (v14 * v24)), 1.0 / v11);
  }
}

uint64_t sub_23993004C(float32x4_t *a1)
{
  v1 = a1[8].i32[2];
  v2 = 8;
  v3 = 36;
  if (v1 > 6)
  {
    if (v1 == 9)
    {
      v3 = 108;
    }

    if (v1 == 8)
    {
      v3 = 60;
    }

    if (v1 == 7)
    {
      v3 = 60;
    }

    return v3 + 8;
  }

  else
  {
    if (v1 < 7)
    {
      v4 = a1[8].i64[0];
      if (v4 == 3)
      {
        v4 = 4;
      }

      v5 = vmaxnmq_f32(vrndpq_f32(a1[1]), 0);
      v6.i64[0] = 0x4F0000004F000000;
      v6.i64[1] = 0x4F0000004F000000;
      v7 = vcgtq_f32(v5, v6);
      v8 = vcvtq_s32_f32(vsubq_f32(v5, vandq_s8(v6, v7)));
      v6.i64[0] = 0x8000000080000000;
      v6.i64[1] = 0x8000000080000000;
      v9 = vaddq_s32(vandq_s8(v7, v6), v8);
      v2 = v4 * byte_239935514[v1] * v9.u32[1] * v9.u32[0] * v9.u32[2] * v9.u32[3] + 8;
      v3 = 56;
    }

    return v2 + v3;
  }
}

uint64_t sub_23993012C(uint64_t a1, void *a2, unint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *a3;
  v8 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v9 = *a2;
  v10 = *a2;
  *v10 = 0x1000000;
  *a2 = v10 + 1;
  *a3 = v8;
  if (v8 < 4)
  {
    return 0;
  }

  v11 = bswap32(v6);
  v12 = v9 + 2;
  v9[1] = v11;
  *a2 = v9 + 2;
  v13 = v7 - 8;
  *a3 = v7 - 8;
  if (v7 - 8 <= 3)
  {
    v14 = (a1 + 136);
    goto LABEL_14;
  }

  v12 = v9 + 3;
  v9[2] = 0x1000000;
  *a2 = v9 + 3;
  v13 = v7 - 12;
  *a3 = v7 - 12;
  v14 = (a1 + 136);
  if (v7 - 12 <= 3)
  {
LABEL_14:
    v15 = (a1 + 16);
    goto LABEL_15;
  }

  v12 = v9 + 4;
  v9[3] = bswap32(*(a1 + 136));
  *a2 = v9 + 4;
  v13 = v7 - 16;
  *a3 = v7 - 16;
  v15 = (a1 + 16);
  if (v7 - 16 >= 4)
  {
    v12 = v9 + 5;
    v9[4] = bswap32(*(a1 + 100));
    *a2 = v9 + 5;
    v13 = v7 - 20;
    *a3 = v7 - 20;
    if (v7 - 20 >= 4)
    {
      v12 = v9 + 6;
      v9[5] = bswap32(*(a1 + 96));
      *a2 = v9 + 6;
      v13 = v7 - 24;
      *a3 = v7 - 24;
      if (v7 - 24 >= 4)
      {
        v12 = v9 + 7;
        v9[6] = bswap32(*(a1 + 108));
        *a2 = v9 + 7;
        v13 = v7 - 28;
        *a3 = v7 - 28;
        if (v7 - 28 >= 4)
        {
          v12 = v9 + 8;
          v9[7] = bswap32(*(a1 + 104));
          *a2 = v9 + 8;
          v13 = v7 - 32;
          *a3 = v7 - 32;
          if (v7 - 32 >= 4)
          {
            v12 = v9 + 9;
            v9[8] = bswap32(*(a1 + 112));
            *a2 = v9 + 9;
            v13 = v7 - 36;
            *a3 = v7 - 36;
            if (v7 - 36 > 3)
            {
              v12 = v9 + 10;
              v9[9] = bswap32(*(a1 + 120));
              *a2 = v9 + 10;
              v13 = v7 - 40;
              *a3 = v7 - 40;
              v16 = *(a1 + 128);
              v17 = v16;
              if (v7 - 40 < 4)
              {
                v18 = 0;
              }

              else
              {
                v12 = v9 + 11;
                v9[10] = bswap32(v16);
                *a2 = v9 + 11;
                v13 = v7 - 44;
                *a3 = v7 - 44;
                v18 = 1;
              }

              v19 = v18 & 1;
              v20 = *v14;
              if (v20 > 6)
              {
                goto LABEL_52;
              }

LABEL_16:
              if (v20 >= 7)
              {
                return v19;
              }

              v21 = v13 - 4;
              if (v13 >= 4)
              {
                *v12 = bswap32(v15->i32[0]);
                *a2 = v12 + 1;
                *a3 = v21;
                if (v21 < 4)
                {
                  v24 = 0;
                  v25 = 0;
                  ++v12;
                  v13 -= 4;
                  goto LABEL_27;
                }

                v22 = v12 + 2;
                v12[1] = bswap32(*(a1 + 20));
                *a2 = v12 + 2;
                v23 = v13 - 8;
                *a3 = v13 - 8;
                if (v13 - 8 < 4 || (v22 = v12 + 3, v12[2] = bswap32(*(a1 + 24)), *a2 = v12 + 3, v23 = v13 - 12, *a3 = v13 - 12, v13 - 12 < 4))
                {
                  v24 = 0;
                  v25 = 0;
                }

                else
                {
                  v22 = v12 + 4;
                  v12[3] = bswap32(*(a1 + 28));
                  *a2 = v12 + 4;
                  v23 = v13 - 16;
                  *a3 = v13 - 16;
                  if (v13 - 16 >= 4)
                  {
                    v12[4] = bswap32(*(a1 + 40));
                    v12 += 5;
                    *a2 = v12;
                    v13 -= 20;
                    *a3 = v13;
                    v20 = *(a1 + 136);
                    v24 = 1;
                    v25 = 1;
LABEL_27:
                    v26 = v19 & v24 & v25;
                    if (v20 >= 10)
                    {
                      v27 = 10;
                    }

                    else
                    {
                      v27 = v20;
                    }

                    v28 = byte_239935514[v27];
                    v29 = vmaxnmq_f32(vrndpq_f32(*v15), 0);
                    v30.i64[0] = 0x4F0000004F000000;
                    v30.i64[1] = 0x4F0000004F000000;
                    v31 = vcgtq_f32(v29, v30);
                    v32 = vcvtq_s32_f32(vsubq_f32(v29, vandq_s8(v30, v31)));
                    v30.i64[0] = 0x8000000080000000;
                    v30.i64[1] = 0x8000000080000000;
                    v33 = vaddq_s32(vandq_s8(v31, v30), v32);
                    v34 = v16 == 3;
                    v35 = 4;
                    if (!v34)
                    {
                      v35 = v17;
                    }

                    v36 = v35 * v33.u32[1] * v33.u32[0] * v33.u32[2] * v33.u32[3];
                    switch(v28)
                    {
                      case 1:
                        if (v13 >= v36)
                        {
                          memcpy(v12, *(a1 + 32), v35 * v33.u32[1] * v33.u32[0] * v33.u32[2] * v33.u32[3]);
                          *a2 += v36;
                          *a3 -= v36;
                        }

                        v39 = v13 >= v36;
                        goto LABEL_46;
                      case 4:
                        v37 = 4 * v36;
                        if (v13 >= 4 * v36)
                        {
                          src.data = *(a1 + 32);
                          src.height = 1;
                          src.width = v35 * v33.u32[1] * v33.u32[0] * v33.u32[2] * v33.u32[3];
                          src.rowBytes = 4 * v36;
                          v45.data = v12;
                          v45.height = 1;
                          v45.width = src.width;
                          v45.rowBytes = 4 * v36;
                          vImagePermuteChannels_ARGB8888(&src, &v45, byte_239935510, 0);
                          goto LABEL_41;
                        }

LABEL_42:
                        v39 = v13 >= v37;
LABEL_46:
                        if (v39)
                        {
                          return v26;
                        }

                        else
                        {
                          return 0;
                        }

                      case 2:
                        v37 = 2 * v36;
                        if (v13 >= 2 * v36)
                        {
                          src.data = *(a1 + 32);
                          src.height = 1;
                          src.width = v35 * v33.u32[1] * v33.u32[0] * v33.u32[2] * v33.u32[3];
                          src.rowBytes = 2 * v36;
                          v45.data = v12;
                          v45.height = 1;
                          v45.width = src.width;
                          v45.rowBytes = 2 * v36;
                          vImageByteSwap_Planar16U(&src, &v45, 0);
LABEL_41:
                          *a2 += v37;
                          *a3 -= v37;
                          goto LABEL_42;
                        }

                        goto LABEL_42;
                    }

                    return 0;
                  }

                  v24 = 0;
                  v25 = 1;
                }

                v12 = v22;
                v13 = v23;
                goto LABEL_27;
              }

              v24 = 0;
              v25 = 0;
              goto LABEL_27;
            }
          }
        }
      }
    }
  }

LABEL_15:
  v16 = *(a1 + 128);
  v17 = v16;
  v19 = 0;
  v20 = *v14;
  if (v20 <= 6)
  {
    goto LABEL_16;
  }

LABEL_52:
  if (v20 == 9)
  {
    v43 = v13 - 4;
    if (v13 >= 4)
    {
      *v12 = bswap32(v15->i32[0]);
      *a2 = v12 + 1;
      *a3 = v43;
      if (v43 >= 4)
      {
        v12[1] = bswap32(*(a1 + 20));
        *a2 = v12 + 2;
        *a3 = v13 - 8;
        if (v13 - 8 >= 4)
        {
          v12[2] = bswap32(*(a1 + 24));
          *a2 = v12 + 3;
          *a3 = v13 - 12;
          if (v13 - 12 >= 4)
          {
            v12[3] = bswap32(*(a1 + 28));
            *a2 = v12 + 4;
            *a3 = v13 - 16;
            if (v13 - 16 >= 4)
            {
              v12[4] = bswap32(*(a1 + 32));
              *a2 = v12 + 5;
              *a3 = v13 - 20;
              if (v13 - 20 >= 4)
              {
                v12[5] = bswap32(*(a1 + 36));
                *a2 = v12 + 6;
                *a3 = v13 - 24;
                if (v13 - 24 >= 4)
                {
                  v12[6] = bswap32(*(a1 + 40));
                  *a2 = v12 + 7;
                  *a3 = v13 - 28;
                  if (v13 - 28 >= 4)
                  {
                    v12[7] = bswap32(*(a1 + 64));
                    *a2 = v12 + 8;
                    *a3 = v13 - 32;
                    if (v13 - 32 >= 4)
                    {
                      v12[8] = bswap32(*(a1 + 68));
                      *a2 = v12 + 9;
                      *a3 = v13 - 36;
                      if (v13 - 36 >= 4)
                      {
                        v12[9] = bswap32(*(a1 + 44));
                        *a2 = v12 + 10;
                        *a3 = v13 - 40;
                        if (v13 - 40 >= 4)
                        {
                          v12[10] = bswap32(*(a1 + 48));
                          *a2 = v12 + 11;
                          *a3 = v13 - 44;
                          if (v13 - 44 >= 4)
                          {
                            v12[11] = bswap32(*(a1 + 52));
                            *a2 = v12 + 12;
                            *a3 = v13 - 48;
                            if (v13 - 48 >= 4)
                            {
                              v12[12] = bswap32(*(a1 + 56));
                              *a2 = v12 + 13;
                              *a3 = v13 - 52;
                              if (v13 - 52 >= 4)
                              {
                                v12[13] = bswap32(*(a1 + 72));
                                *a2 = v12 + 14;
                                *a3 = v13 - 56;
                                if (v13 - 56 >= 4)
                                {
                                  v12[14] = bswap32(*(a1 + 76));
                                  *a2 = v12 + 15;
                                  *a3 = v13 - 60;
                                  if (v13 - 60 >= 4)
                                  {
                                    v12[15] = bswap32(*(a1 + 80));
                                    *a2 = v12 + 16;
                                    *a3 = v13 - 64;
                                    if (v13 - 64 >= 4)
                                    {
                                      v12[16] = bswap32(*(a1 + 84));
                                      *a2 = v12 + 17;
                                      v41 = v13 - 68;
                                      goto LABEL_62;
                                    }

LABEL_83:
                                    v42 = 0;
                                    goto LABEL_84;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_81:
    v42 = 0;
    v44 = 0;
    return v19 & v42 & v44;
  }

  if (v20 == 8 || v20 == 7)
  {
    v40 = v13 - 4;
    if (v13 >= 4)
    {
      *v12 = bswap32(v15->i32[0]);
      *a2 = v12 + 1;
      *a3 = v40;
      if (v40 >= 4)
      {
        v12[1] = bswap32(*(a1 + 20));
        *a2 = v12 + 2;
        *a3 = v13 - 8;
        if (v13 - 8 >= 4)
        {
          v12[2] = bswap32(*(a1 + 24));
          *a2 = v12 + 3;
          *a3 = v13 - 12;
          if (v13 - 12 >= 4)
          {
            v12[3] = bswap32(*(a1 + 28));
            *a2 = v12 + 4;
            *a3 = v13 - 16;
            if (v13 - 16 >= 4)
            {
              v12[4] = bswap32(*(a1 + 32));
              *a2 = v12 + 5;
              *a3 = v13 - 20;
              if (v13 - 20 >= 4)
              {
                v12[5] = bswap32(*(a1 + 36));
                *a2 = v12 + 6;
                v41 = v13 - 24;
LABEL_62:
                *a3 = v41;
                v42 = 1;
LABEL_84:
                v44 = 1;
                return v19 & v42 & v44;
              }

              goto LABEL_83;
            }
          }
        }
      }
    }

    goto LABEL_81;
  }

  return v19;
}

uint64_t sub_239930AA0(void *a1)
{
  MEMORY[0x23EE7B550](v1, 0x10B3C40053673A5);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t sub_239930B1C(uint64_t a1, char *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v12 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "MPSFColorConversion_ConvertGrayToRGB", 4);
  if (v12)
  {
    v15 = objc_msgSend_newFunctionWithName_(a8, v13, v12, v14);
    if (v15)
    {
      v18 = v15;
      objc_msgSend_addObject_(a7, v16, v15, v17);

      sub_239929E3C(a2, "\t\t\tNODE(in%lu) : FUNCTION( %s), %s\n", v19, v20, v21, v22, v23, v24, a3);
      return 0;
    }

    else
    {
      return sub_239931A78("Unable to find function %s in MTLLibrary\n", "MPSFColorConversion_ConvertGrayToRGB");
    }
  }

  else
  {

    return sub_239931A78("Could not build node: out of memory");
  }
}

double sub_239930C1C(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v3 = *a2;
  DWORD1(v3) = *a2;
  return *&v3;
}

uint64_t sub_239930C70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v12 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], a2, "MPSFColorConversion_SetAlphaToOne", 4);
  if (v12)
  {
    v15 = objc_msgSend_newFunctionWithName_(a8, v13, v12, v14);
    if (v15)
    {
      v18 = v15;
      objc_msgSend_addObject_(a7, v16, v15, v17);

      sub_239929E3C(a2, "\t\t\t%s : FUNCTION( %s), %s;\n", v19, v20, v21, v22, v23, v24, a6);
      return 0;
    }

    else
    {
      return sub_239931A78("Unable to find function %s in MTLLibrary\n", "MPSFColorConversion_SetAlphaToOne");
    }
  }

  else
  {

    return sub_239931A78("Could not build node. Out of memory.");
  }
}

__n128 sub_239930D70(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a2 + 12) == 1.0 && *(a2 + 28) == 1.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  *a3 = v4 | *a3 & 0xFB;
  result = *a2;
  v6 = *(a2 + 16);
  return result;
}

uint64_t sub_239930DB4(unsigned int *a1, void *a2, unint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = *a3;
  v8 = *a3 - 4;
  if (*a3 < 4)
  {
    return 0;
  }

  v9 = *a2;
  v10 = *a2;
  *v10 = 0x1000000;
  *a2 = v10 + 1;
  *a3 = v8;
  if (v8 < 4)
  {
    return 0;
  }

  v9[1] = bswap32(v6);
  *a2 = v9 + 2;
  *a3 = v7 - 8;
  if (v7 - 8 < 4)
  {
    return 0;
  }

  v9[2] = bswap32(a1[4]);
  *a2 = v9 + 3;
  *a3 = v7 - 12;
  return 1;
}

uint64_t sub_239930E88(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  *&v4 = (*(*a1 + 64))(a1, a3, &v7);
  *a3 = v4;
  a3[1] = v5;
  return 0;
}

void sub_239930EE8(uint64_t a1, _OWORD *a2)
{
  v5 = 0;
  *&v3 = (*(*a1 + 64))(a1, a2, &v5);
  *a2 = v3;
  a2[1] = v4;
}

void *sub_239931094(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_2399310CC(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_239931104(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_23993113C(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_239931174(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_2399311AC(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_2399311E4(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_2399312D8(void *a1)
{
  MEMORY[0x23EE7B550](v2, 0x1080C4098BBCF0FLL);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  v1[1] = 0;
  objc_msgSend_dealloc(v1, v4, v5, v6);
  return 0;
}

id sub_2399314C0(uint64_t a1, void *a2, void *a3)
{
  *(*(a1 + 32) + 16) = a2;
  result = a3;
  *(*(a1 + 32) + 24) = result;
  v6 = *(*(a1 + 32) + 8);
  if (v6)
  {
    result = dispatch_semaphore_signal(*(v6 + 16));
    if (atomic_fetch_add((v6 + 8), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (*v6 != -1)
      {
        dispatch_once_f(v6, v6, sub_239931640);
      }

      JUMPOUT(0x23EE7B550);
    }
  }

  return result;
}

void sub_23993166C(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 16), 0xFFFFFFFFFFFFFFFFLL);

  *(a1 + 16) = 0;
}

uint64_t sub_2399316A4()
{
  if (qword_27DF85428 != -1)
  {
    dispatch_once_f(&qword_27DF85428, &qword_27DF85420, sub_239931700);
  }

  return qword_27DF85420;
}

void *sub_239931700(void *a1)
{
  result = dlopen("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics", 261);
  *a1 = result;
  return result;
}

uint64_t sub_239931734(uint64_t ***a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = *a1;
    do
    {
      v3 += *(v4 + 2);
      ++v2;
      v4 = *v4;
    }

    while (v4);
    if (v2 == 1)
    {
      v5 = *a1 + 2;
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
  if (!result)
  {
    return result;
  }

  v5 = result;
  v10 = (result + v3);
  *v10 = 0;
  for (i = *a1; i; i = *i)
  {
    v12 = *(i + 2);
    v10 -= v12;
    memcpy(v10, i + 2, v12);
  }

LABEL_6:
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  result = objc_msgSend_initWithCString_encoding_(v6, v7, v5, 4);
  if (v2 >= 2)
  {
    v9 = result;
    free(v5);
    return v9;
  }

  return result;
}

uint64_t sub_23993181C(uint64_t *a1, char *__format, va_list a3)
{
  v5 = vsnprintf(0, 0, __format, a3);
  result = *a1;
  if (*a1)
  {
    v7 = *(result + 8);
    v8 = *(result + 12);
    if ((v5 & ~(v5 >> 31)) <= v8 - v7)
    {
LABEL_8:
      result = vsnprintf((result + v7 + 16), v8 - v7, __format, a3);
      v9 = *a1;
      v10 = *(*a1 + 12);
      v11 = *(*a1 + 8) + (result & ~(result >> 31));
      *(*a1 + 8) = v11;
      if (v11 >= v10)
      {
        v11 = v10;
      }

      *(v9 + 8) = v11;
      return result;
    }
  }

  if (v5 <= 16368)
  {
    v8 = 16368;
  }

  else
  {
    v8 = v5;
  }

  result = malloc_type_malloc((v8 + 17), 0x1020040EDED9539uLL);
  if (result)
  {
    v7 = 0;
    *result = 0;
    *(result + 8) = 0;
    *(result + 12) = v8;
    *result = *a1;
    *a1 = result;
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_239931904(uint64_t *a1, float *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (fabsf(*a2) == 3.4028e38)
  {
    snprintf(__str, 0x100uLL, "%sFLT_MAX");
  }

  else if ((*a2 + *a2) == truncf(*a2 + *a2))
  {
    snprintf(__str, 0x100uLL, "%.1f");
  }

  else
  {
    snprintf(__str, 0x100uLL, "%10.14f");
  }

  v4 = a2[1];
  if (fabsf(v4) == 3.4028e38)
  {
    snprintf(v13, 0x100uLL, "%sFLT_MAX");
  }

  else if ((v4 + v4) == truncf(v4 + v4))
  {
    snprintf(v13, 0x100uLL, "%.1f");
  }

  else
  {
    snprintf(v13, 0x100uLL, "%10.14f");
  }

  result = sub_239929E3C(a1, "[%s, %s]%s", v5, v6, v7, v8, v9, v10, __str);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239931A78(char *__format, ...)
{
  va_start(va, __format);
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = vsnprintf(0, 0, __format, va);
  v3 = (v2 & ~(v2 >> 31)) + 1;
  v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    vsnprintf(v4, v3, __format, va);
    v6 = MEMORY[0x277CBEAC0];
    v20[0] = @"MPSFunction failed.";
    v20[1] = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v7, v5, 4);
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v20, 2);
    v10 = *MEMORY[0x277CCA470];
    v19[0] = *MEMORY[0x277CCA450];
    v19[1] = v10;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v19, 2);
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_(v6, v13, v9, v12);
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v15, *MEMORY[0x277CD6A08], -1, v14);
    free(v5);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_239931D30()
{
  v10 = *MEMORY[0x277D85DE8];
  dladdr(sub_239931D30, &v8);
  result = dirname_r(v8.dli_fname, __s1);
  if (result)
  {
    v1 = strnlen(__s1, 0x400uLL);
    v2 = v1;
    if (v1 <= 0x400)
    {
      v3 = 1024 - v1;
    }

    else
    {
      v3 = 0;
    }

    if (&v10 == stpncpy(&__s1[v1], "/default.metallib", v3) || stat(__s1, &v7) && (&v10 == stpncpy(&__s1[v2], "/Resources/default.metallib", v3) || stat(__s1, &v7)))
    {
      result = 0;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    result = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v4, __s1, 4);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239932298(uint64_t a1)
{
  v2 = objc_opt_new();
  v5 = objc_msgSend_newDAGUsingFunctionList_(*(a1 + 32), v3, v2, v4);
  v20 = 0;
  v9 = objc_msgSend_allObjects(v2, v6, v7, v8);
  v11 = objc_msgSend_newLibraryWithDAG_functions_error_(*(a1 + 40), v10, v5, v9, &v20);

  if (v11)
  {
    v15 = objc_opt_new();
    objc_msgSend_setName_(v15, v16, *(a1 + 48), v17);
    objc_msgSend_buildAsync_withLibrary_(*(a1 + 32), v18, v15, v11);
  }

  else
  {
    v19 = objc_msgSend_completionHandler(*(*(a1 + 32) + 40), v12, v13, v14);
    (*(v19 + 16))(v19, 0, v20);
  }
}

uint64_t sub_2399329B4(void *a1)
{
  MEMORY[0x23EE7B550](v1, 0x10A1C400FDD7196);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t sub_239933218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v9[0] = v5;
  *(v9 + 12) = *(a2 + 60);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return objc_msgSend_addTRCStage_stage_count_trcIndices_error_(*(a1 + 32), a2, v8, a3, a4, a5, *(a1 + 40));
}

uint64_t sub_239933268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v9[0] = v5;
  *(v9 + 12) = *(a2 + 60);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return objc_msgSend_addMatrixStage_stage_index_(v4, a2, v8, a3, a4);
}

uint64_t sub_2399332B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v8[0] = v4;
  *(v8 + 12) = *(a2 + 60);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return objc_msgSend_addNxMStage_stage_index_error_(*(a1 + 32), a2, v7, a3, a4, *(a1 + 40));
}

uint64_t sub_239933E14(uint64_t result, uint64_t a2, void *a3, void *a4, uint64_t a5, __n128 a6, __n128 a7)
{
  if (result)
  {
    v11 = result;
    v21 = 0;
    v19 = a6;
    v20 = a7;
    if ((*(*result + 40))(result, &v21, &v19))
    {
LABEL_5:
      v15 = (a2 + 8);
      if (!a2)
      {
        v15 = a3;
      }

      *v15 = v21;
      if (a4)
      {
        v16 = objc_msgSend_debugDescription(a4, v12, v13, v14);
        NSLog(&cfstr_Optimization.isa, v16);
      }

      return 1;
    }

    else
    {
      while (1)
      {
        result = sub_239933E14(v11[1], v11, a3, a4, a5 + 1, v19, v20);
        if (!result)
        {
          break;
        }

        v19 = a6;
        v20 = a7;
        if ((*(*v11 + 40))(v11, &v21, &v19))
        {
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

void sub_239934244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  while (1)
  {
    v15 = a14;
    if (!a14)
    {
      break;
    }

    a14 = *a14;
    free(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_239934B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  while (1)
  {
    v18 = a17;
    if (!a17)
    {
      break;
    }

    a17 = *a17;
    free(v18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239934C08(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_239934C40(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void *sub_239934C78(uint64_t a1)
{
  result = sub_2399316A4();
  if (result)
  {
    result = dlsym(result, *a1);
    **(a1 + 8) = result;
  }

  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}