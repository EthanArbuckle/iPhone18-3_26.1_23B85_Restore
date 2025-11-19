uint64_t gliSetInteger(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v135 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 10004;
  }

  v4 = a1 + 28652;
  if (*(a1 + 29792) != 878944803)
  {
    return 10004;
  }

  if (!a3)
  {
    return 10014;
  }

  if (a2 == 1962)
  {
    v7 = 0;
    *(a1 + 29000) = *a3;
    return v7;
  }

  if (*(a1 + 27648))
  {
    (*(a1 + 27752))(a1);
  }

  v7 = 0;
  if (a2 > 927)
  {
    if (a2 <= 1401)
    {
      switch(a2)
      {
        case 973:
          v7 = 0;
          v58 = (v4 + 3841);
          v59 = *(v4 + 3841) & 0xFEFF | ((*a3 != 0) << 8);
          goto LABEL_200;
        case 974:
          v7 = 0;
          v63 = (v4 + 3841);
          v64 = *(v4 + 3841) & 0xFF7F | ((*a3 != 0) << 7);
          goto LABEL_167;
        case 975:
          v7 = 0;
          v63 = (v4 + 3841);
          v64 = *(v4 + 3841) & 0xFFBF | ((*a3 != 0) << 6);
          goto LABEL_167;
        case 976:
        case 981:
        case 983:
        case 984:
        case 985:
        case 987:
        case 988:
        case 991:
        case 994:
        case 996:
          goto LABEL_294;
        case 977:
          v7 = 0;
          v58 = (v4 + 3841);
          v59 = *(v4 + 3841) & 0xFFDF | (32 * (*a3 != 0));
          goto LABEL_200;
        case 978:
          v7 = 0;
          v63 = (v4 + 3841);
          v64 = *(v4 + 3841) & 0xFBFF | ((*a3 != 0) << 10);
          goto LABEL_167;
        case 979:
          v7 = 0;
          v63 = (v4 + 3841);
          v64 = *(v4 + 3841) & 0xF7FF | ((*a3 != 0) << 11);
          goto LABEL_167;
        case 980:
          v7 = 0;
          v63 = (v4 + 3841);
          v64 = *(v4 + 3841) & 0xEFFF | ((*a3 != 0) << 12);
LABEL_167:
          *v63 = v64;
          goto LABEL_294;
        case 982:
          v7 = 0;
          v58 = (v4 + 3841);
          v59 = *(v4 + 3841) & 0xFFEF | (16 * (*a3 != 0));
          goto LABEL_200;
        case 986:
          v7 = 0;
          v58 = (v4 + 3841);
          v59 = *(v4 + 3841) & 0xFFF7 | (8 * (*a3 != 0));
          goto LABEL_200;
        case 989:
          v60 = *a3;
          *(v4 + 3841) = *(v4 + 3841) & 0xFFFB | (4 * (*a3 != 0));
          v61 = *(a1 + 28984);
          if (!*(v61 + 816))
          {
            v61 = *(a1 + 28976);
          }

          v7 = 0;
          if (*(a1 + 27648))
          {
            if (v60)
            {
              v62 = glGetError_NoSync;
            }

            else
            {
              v62 = glGetError_ExecThread;
            }
          }

          else
          {
            v62 = glGetError_Exec;
          }

          *(v61 + 816) = v62;
          return v7;
        case 990:
          v7 = 0;
          v58 = (v4 + 3841);
          v59 = *(v4 + 3841) & 0xFFFD | (2 * (*a3 != 0));
          goto LABEL_200;
        case 992:
        case 993:
          v44 = *a3;
          v45 = *(v4 + 3841) & 0xFFFE;
          if (*a3)
          {
            ++v45;
          }

          *(v4 + 3841) = v45;
          v46 = *(a1 + 27648);
          v47 = *(a1 + 28984);
          v48 = *(a1 + 28976);
          if (v47[301])
          {
            v49 = *(a1 + 28984);
          }

          else
          {
            v49 = *(a1 + 28976);
          }

          if (v44)
          {
            if (v46)
            {
              *(v49 + 2408) = glTexImage2D_FlushExecThread;
              if (v47[307])
              {
                v50 = v47;
              }

              else
              {
                v50 = v48;
              }

              v50[307] = glTexSubImage2D_FlushExecThread;
              if (v47[380])
              {
                v51 = v47;
              }

              else
              {
                v51 = v48;
              }

              v51[380] = glCompressedTexImage2D_FlushExecThread;
              if (v47[383])
              {
                v52 = v47;
              }

              else
              {
                v52 = v48;
              }

              v52[383] = glCompressedTexSubImage2D_FlushExecThread;
              if (a2 != 993)
              {
                v7 = 0;
                if (!v47[12])
                {
                  v47 = v48;
                }

                v53 = glClearColor_FlushExecThread;
LABEL_317:
                v47[12] = v53;
                return v7;
              }
            }

            else
            {
              *(v49 + 2408) = glTexImage2D_FlushExec;
              if (v47[307])
              {
                v94 = v47;
              }

              else
              {
                v94 = v48;
              }

              v94[307] = glTexSubImage2D_FlushExec;
              if (v47[380])
              {
                v95 = v47;
              }

              else
              {
                v95 = v48;
              }

              v95[380] = glCompressedTexImage2D_FlushExec;
              if (v47[383])
              {
                v96 = v47;
              }

              else
              {
                v96 = v48;
              }

              v96[383] = glCompressedTexSubImage2D_FlushExec;
              if (a2 != 993)
              {
                v7 = 0;
                if (!v47[12])
                {
                  v47 = v48;
                }

                v53 = glClearColor_FlushExec;
                goto LABEL_317;
              }
            }
          }

          else if (v46)
          {
            *(v49 + 2408) = glTexImage2D_PackThread;
            if (v47[307])
            {
              v80 = v47;
            }

            else
            {
              v80 = v48;
            }

            v80[307] = glTexSubImage2D_PackThread;
            if (v47[380])
            {
              v81 = v47;
            }

            else
            {
              v81 = v48;
            }

            v81[380] = glCompressedTexImage2D_PackThread;
            if (v47[383])
            {
              v82 = v47;
            }

            else
            {
              v82 = v48;
            }

            v82[383] = glCompressedTexSubImage2D_PackThread;
            if (a2 != 993)
            {
              v7 = 0;
              if (!v47[12])
              {
                v47 = v48;
              }

              v53 = glClearColor_Comp;
              goto LABEL_317;
            }
          }

          else
          {
            *(v49 + 2408) = glTexImage2D_Exec;
            if (v47[307])
            {
              v105 = v47;
            }

            else
            {
              v105 = v48;
            }

            v105[307] = glTexSubImage2D_Exec;
            if (v47[380])
            {
              v106 = v47;
            }

            else
            {
              v106 = v48;
            }

            v106[380] = glCompressedTexImage2D_Exec;
            if (v47[383])
            {
              v107 = v47;
            }

            else
            {
              v107 = v48;
            }

            v107[383] = glCompressedTexSubImage2D_Exec;
            if (a2 != 993)
            {
              v7 = 0;
              if (!v47[12])
              {
                v47 = v48;
              }

              v53 = glClearColor_Exec;
              goto LABEL_317;
            }
          }

          break;
        case 995:
          v7 = 0;
          v65 = *(a1 + 19296);
          v66 = *(v65 + 344) & 0xFE;
          if (*a3)
          {
            ++v66;
          }

          *(v65 + 344) = v66;
          return v7;
        case 997:
        case 998:
        case 999:
          v129 = 0;
          v10 = *a3;
          v9 = a3[1];
          v11 = a3[2];
          v127 = a3[3];
          buffer = a3[4];
          v12 = v9 == 34067;
          if (v9 == 34067)
          {
            v13 = 34069;
          }

          else
          {
            v13 = a3[1];
          }

          v14 = 6;
          if (!v12)
          {
            v14 = 1;
          }

          v124 = v14;
          if (a2 == 997 || v11 != 6402)
          {
            v15 = gleCheckTexImage2DArgs(a1, v13, 0, v11, v127, buffer, 0, 32993, 33639, &v129);
          }

          else
          {
            v15 = gleCheckTexImage2DArgs(a1, v13, 0, 6402, v127, buffer, 0, 6402, 5125, &v129);
          }

          v56 = v15;
          if (!v15)
          {
            return 10008;
          }

          v57 = *(v15 + 768);
          if ((v57 & 0x1C00) == 0x400)
          {
            goto LABEL_222;
          }

          if ((*(v15 + 768) & 0x1C00) != 0)
          {
            if ((*(v15 + 768) & 0x1800) != 0)
            {
              goto LABEL_288;
            }
          }

          else
          {
            *(v15 + 768) = v57 | 0x400;
          }

LABEL_222:
          if ((*(a1 + 1672 * *(v4 + 3847) + 34176) & 0x7F00) == 0x400)
          {
            *(v15 + 784) = gle_io_data(v10);
          }

          *(v56 + 780) = v10;
          if (a2 == 997)
          {
            v83 = a3[6];
          }

          else
          {
            LOWORD(v83) = 4352;
          }

          *(v56 + 774) = v83;
          v84 = vdupq_n_s64(v124 - 1);
          v85 = vmovn_s64(vcgeq_u64(v84, xmmword_23A102AE0));
          if (vuzp1_s8(vuzp1_s16(v85, *v84.i8), *v84.i8).u8[0])
          {
            *(v56 + 560) = v11;
          }

          if (vuzp1_s8(vuzp1_s16(v85, *&v84), *&v84).i8[1])
          {
            *(v56 + 590) = v11;
          }

          if (vuzp1_s8(vuzp1_s16(*&v84, vmovn_s64(vcgeq_u64(v84, xmmword_23A102AF0))), *&v84).i8[2])
          {
            *(v56 + 620) = v11;
            *(v56 + 650) = v11;
          }

          v86 = vmovn_s64(vcgeq_u64(v84, xmmword_23A103650));
          if (vuzp1_s8(*&v84, vuzp1_s16(v86, *&v84)).i32[1])
          {
            *(v56 + 680) = v11;
          }

          if (vuzp1_s8(*&v84, vuzp1_s16(v86, *&v84)).i8[5])
          {
            *(v56 + 710) = v11;
          }

          v87 = vmovn_s64(vcgeq_u64(v84, xmmword_23A103640));
          if (vuzp1_s8(*&v87, vuzp1_s16(v87, v87)).i8[6])
          {
            *(v56 + 740) = v11;
          }

          v88 = vuzp1_s16(v87, v87);
          if (vuzp1_s8(v88, v88).i8[7])
          {
            *(v56 + 770) = v11;
          }

          v89 = gleStandardizeIntegerFormat(0x1908u);
          gfxReqToBase();
          v90 = 0;
          *(v56 + 968) = 65539;
          v91 = v56 + 1032;
          do
          {
            v133 = 0;
            *buf = 0u;
            v132 = 0u;
            if (*(v91 + 11) & 0x20 | gfxEvaluateTextureForGeometryChange() & 1)
            {
              (*(*(a1 + 29496) + 272))(*(a1 + 29464), 1, 0, *(v56 + 8 * *(v4 + 3848)));
            }

            gleCreateSurfaceLevel(a1, v91, v127, buffer, v89, 5121);
            gfxUpdateTextureForGeometryChange();
            gfxUpdatePluginTextureLevelGeometry();
            if (a2 == 997)
            {
              v92 = a3[7];
              if (v92)
              {
                gleGenSurfaceMipmaps(a1, v56, v90, v92, *(v56 + 898) & 1);
              }
            }

            v91 += 480;
            ++v90;
          }

          while (v124 != v90);
          v7 = 0;
          *(a1 + 1524) |= 1 << (*(a1 + 23768) & 0xF);
          *v4 = 0;
          *(a1 + 1548) |= 0x22000u;
          return v7;
        default:
          if (a2 == 928)
          {
            v7 = 0;
            v41 = *(a1 + 19296);
            v42 = *(v41 + 344) & 0xFD | (2 * (*a3 != 0));
          }

          else
          {
            if (a2 != 929)
            {
              goto LABEL_294;
            }

            v7 = 0;
            v41 = *(a1 + 19296);
            v42 = *(v41 + 344) & 0xFB | (4 * (*a3 != 0));
          }

          goto LABEL_198;
      }

      return 0;
    }

    if (a2 > 1618)
    {
      if (a2 > 1701)
      {
        if (a2 <= 1703)
        {
          v7 = 0;
          if (a2 == 1702)
          {
            *(v4 + 1136) = *a3;
          }

          else
          {
            *(v4 + 1128) = *a3;
          }

          return v7;
        }

        if (a2 == 1704)
        {
          v7 = 0;
          *(v4 + 1132) = *a3;
          return v7;
        }

        if (a2 == 1706)
        {
          v7 = 0;
          *(v4 + 1137) = *a3;
          return v7;
        }
      }

      else
      {
        if (a2 > 1620)
        {
          if (a2 == 1621)
          {
            v7 = 0;
            v23 = *(v4 + 3843) & 0xFB | (4 * (*a3 != 0));
          }

          else
          {
            if (a2 != 1622)
            {
              goto LABEL_294;
            }

            v7 = 0;
            v23 = *(v4 + 3843) & 0xF7 | (8 * (*a3 != 0));
          }
        }

        else if (a2 == 1619)
        {
          v7 = 0;
          v23 = *(v4 + 3843) & 0xFE;
          if (*a3)
          {
            ++v23;
          }
        }

        else
        {
          v7 = 0;
          v23 = *(v4 + 3843) & 0xFD | (2 * (*a3 != 0));
        }

        *(v4 + 3843) = v23;
      }

LABEL_294:
      if (*(v4 + 3844))
      {
        v101 = 0;
        v102 = (a1 + 32512);
        do
        {
          v103 = (*(v102[206] + 1248))(*v102, a2, a3);
          if (v7)
          {
            v104 = 1;
          }

          else
          {
            v104 = v103 == 0;
          }

          if (v104)
          {
            v7 = v7;
          }

          else
          {
            v7 = v103;
          }

          ++v101;
          v102 += 209;
        }

        while (v101 < *(v4 + 3844));
      }

      return v7;
    }

    if (a2 > 1612)
    {
      if (a2 <= 1614)
      {
        if (a2 == 1613)
        {
          v74 = *a3;
          v73 = a3[1];
          os_unfair_lock_lock((*(a1 + 19296) + 324));
          ShaderObjectNamed = gleCreateShaderObjectNamed(a1, v74, v73);
        }

        else
        {
          v27 = *a3;
          os_unfair_lock_lock((*(a1 + 19296) + 324));
          ShaderObjectNamed = gleCreateProgramObjectNamed(a1, v27);
        }

        goto LABEL_338;
      }

      if (a2 != 1615)
      {
        if (a2 == 1618)
        {
          v7 = 0;
          *(v4 + 3841) = *(v4 + 3841) & 0x7FFF | ((*a3 != 0) << 15);
        }

        goto LABEL_294;
      }

      if (*a3 - 2500 > 2)
      {
        return 10010;
      }

      v75 = gleReserveVertexArray(a1, a3[1]) == 0;
LABEL_339:
      if (v75)
      {
        return 10008;
      }

      else
      {
        return 0;
      }
    }

    if (a2 == 1402)
    {
      v7 = 0;
      *(v4 + 3851) = *a3 != 0;
      goto LABEL_294;
    }

    if (a2 != 1501)
    {
      if (a2 != 1612)
      {
        goto LABEL_294;
      }

      v38 = *a3;
      v39 = a3[1];
      v7 = 10010;
      if (*a3 <= 1607)
      {
        if (v38 <= 1604)
        {
          if (v38 == 1600)
          {
            v110 = *(a1 + 19296) + 72;
          }

          else
          {
            if (v38 != 1602)
            {
              return v7;
            }

            v110 = *(a1 + 19296) + 104;
          }
        }

        else if (v38 == 1605)
        {
          v110 = *(a1 + 19296) + 264;
        }

        else
        {
          if (v38 == 1606)
          {
            v97 = 25904;
          }

          else
          {
            if (v38 != 1607)
            {
              return v7;
            }

            v97 = 25872;
          }

          v110 = a1 + v97;
        }
      }

      else
      {
        if (v38 > 1610)
        {
          switch(v38)
          {
            case 1611:
              os_unfair_lock_lock((*(a1 + 19296) + 324));
              SamplerHashObject = gleCreateSamplerHashObject(a1, v39);
              v109 = *(a1 + 19296) + 232;
              break;
            case 1616:
              v112 = a3[2];
              v111 = a3[3];
              os_unfair_lock_lock((*(a1 + 19296) + 324));
              ProgramPipelineHashObject = gleFenceSync(a1, v39, v112, v111);
LABEL_334:
              SamplerHashObject = ProgramPipelineHashObject;
LABEL_344:
              os_unfair_lock_unlock((*(a1 + 19296) + 324));
              v75 = SamplerHashObject == 0;
              goto LABEL_339;
            case 1617:
              os_unfair_lock_lock((*(a1 + 19296) + 324));
              SamplerHashObject = gleCreateTransformFeedbackObject(a1, v39);
              v109 = a1 + 26400;
              break;
            default:
              return v7;
          }

          gleAddHashNameAndObject(a1, v109, SamplerHashObject);
          goto LABEL_344;
        }

        switch(v38)
        {
          case 1608:
            v110 = *(a1 + 19296) + 8;
            break;
          case 1609:
            v110 = *(a1 + 19296) + 40;
            break;
          case 1610:
            os_unfair_lock_lock((*(a1 + 19296) + 324));
            ProgramPipelineHashObject = gleCreateProgramPipelineHashObject(a1, v39);
            goto LABEL_334;
          default:
            return v7;
        }
      }

      os_unfair_lock_lock((*(a1 + 19296) + 324));
      ShaderObjectNamed = gleAddHashName(v110, v39);
LABEL_338:
      v113 = ShaderObjectNamed;
      os_unfair_lock_unlock((*(a1 + 19296) + 324));
      v75 = v113 == 0;
      goto LABEL_339;
    }

    v7 = 0;
    v58 = (v4 + 3841);
    v59 = *(v4 + 3841) & 0xDFFF | ((*a3 != 0) << 13);
LABEL_200:
    *v58 = v59;
    return v7;
  }

  if (a2 > 379)
  {
    if (a2 <= 665)
    {
      if (a2 <= 600)
      {
        if ((a2 - 380) <= 0xC && ((1 << (a2 - 124)) & 0x1111) != 0)
        {
          return v7;
        }

        goto LABEL_294;
      }

      if (a2 <= 607)
      {
        if ((a2 - 601) < 2)
        {
          if (*(v4 + 3844))
          {
            v16 = 0;
            LODWORD(v7) = 0;
            v17 = (a1 + 32512);
            do
            {
              v18 = (*(v17[206] + 1248))(*v17, a2, a3);
              if (v7)
              {
                v19 = 1;
              }

              else
              {
                v19 = v18 == 0;
              }

              if (v19)
              {
                v7 = v7;
              }

              else
              {
                v7 = v18;
              }

              ++v16;
              v17 += 209;
            }

            while (v16 < *(v4 + 3844));
            return v7;
          }

          return 0;
        }

        if (a2 != 607)
        {
          goto LABEL_294;
        }

        v20 = *(*(a1 + 29496) + 192);
        v21 = *(a1 + 29464);
        v22 = 607;
        goto LABEL_146;
      }

      if (a2 != 608)
      {
        if (a2 == 610)
        {
          v7 = 0;
          *(v4 + 1138) = *a3;
        }

        goto LABEL_294;
      }

      if (*a3 >= 5 || ((0x17u >> *a3) & 1) == 0)
      {
        return 10008;
      }

LABEL_293:
      v7 = 0;
      goto LABEL_294;
    }

    if (a2 <= 702)
    {
      if ((a2 - 666) < 2)
      {
        v7 = 0;
        *v4 = 0;
        *(a1 + 1532) |= 0x80000000;
        goto LABEL_294;
      }

      if (a2 == 701)
      {
        v7 = 0;
        *(v4 + 3840) = *a3;
        goto LABEL_294;
      }

      if (a2 != 702)
      {
        goto LABEL_294;
      }

      if (*a3 == 8)
      {
        *buf = 1;
        v24 = a1;
        v25 = 1622;
      }

      else
      {
        if (*a3 != 7)
        {
          goto LABEL_293;
        }

        *buf = 1;
        v24 = a1;
        v25 = 1621;
      }

      gliSetInteger(v24, v25, buf);
      goto LABEL_293;
    }

    if (a2 > 920)
    {
      if (a2 == 921)
      {
        if (*a3 == 36161)
        {
          v71 = *(a1 + 28952);
          if (!v71)
          {
            return 0;
          }

          v72 = v71 + 40;
        }

        else
        {
          v72 = gleLookUpTexture(a1, *a3);
          if (!v72)
          {
            return 0;
          }
        }

        v7 = 0;
        v93 = *(v72 + 792) & 0xFE;
        if (a3[1])
        {
          ++v93;
        }

        *(v72 + 792) = v93;
        return v7;
      }

      if (a2 == 927)
      {
        v43 = *a3;
        if (*a3)
        {
          v43 = (*(*(a1 + 29032) + 564) >> 10) & 0x10;
        }

        v7 = 0;
        v41 = *(a1 + 19296);
        v42 = *(v41 + 344) & 0xEF | v43;
LABEL_198:
        *(v41 + 344) = v42;
        return v7;
      }

      goto LABEL_294;
    }

    if (a2 == 703)
    {
      if (*(v4 + 3844))
      {
        v67 = 0;
        LODWORD(v7) = 0;
        v68 = (a1 + 32512);
        do
        {
          v69 = (*(v68[206] + 1248))(*v68, 703, a3);
          if (v7)
          {
            v70 = 1;
          }

          else
          {
            v70 = v69 == 0;
          }

          if (v70)
          {
            v7 = v7;
          }

          else
          {
            v7 = v69;
          }

          ++v67;
          v68 += 209;
        }

        while (v67 < *(v4 + 3844));
        goto LABEL_294;
      }

      goto LABEL_293;
    }

    if (a2 != 910)
    {
      goto LABEL_294;
    }

    v129 = 0;
    v30 = *a3;
    v29 = a3[1];
    v32 = a3[2];
    v31 = a3[3];
    v33 = a3[4];
    v34 = a3[5];
    v35 = a3[7];
    v36 = a3[8];
    if (v29 == 3553)
    {
      v128 = a3[6];
      v37 = gleCheckTexImage2DArgs(a1, 3553, 0, v32, v31, v33, 0, v34, v128, &v129);
      if (!v37)
      {
        return 10008;
      }
    }

    else
    {
      if (v29 != 36161)
      {
        return 10008;
      }

      v128 = a3[6];
      if (!gleCheckRenderbufferStorageArgs(a1, 36161, 0, v32, v31, v33))
      {
        return 10008;
      }

      v37 = *(a1 + 28952) + 40;
    }

    v98 = *(v37 + 768);
    if ((v98 & 0x1C00) != 0x800)
    {
      if ((*(v37 + 768) & 0x1C00) != 0)
      {
LABEL_288:
        if (!*(v4 + 1180))
        {
          *(v4 + 1180) = 1282;
        }

        return 10007;
      }

      *(v37 + 768) = v98 | 0x800;
    }

    if ((v35 >> 24) > 4u)
    {
      return 10008;
    }

    gleTextureReleaseIOSurfaces(*(a1 + 19296), v37);
    buffera = IOSurfaceLookup(v30);
    if (!buffera)
    {
      return 10008;
    }

    planeIndex = *&v35 & 0xFFFFFFLL;
    if ((v35 & 0xFFFFFF) != 0 && IOSurfaceGetPlaneCount(buffera) <= planeIndex)
    {
LABEL_353:
      gleTextureReleaseIOSurfaces(*(a1 + 19296), v37);
      CFRelease(buffera);
      return 10008;
    }

    if ((v36 & 4) != 0)
    {
LABEL_355:
      *(v37 + 780) = v30;
      *(v37 + 1024) = buffera;
      *(v37 + 1016) = v35;
      *(v37 + 1018) = v35 >> 24;
      if (IOSurfaceIsTiled())
      {
        v36 |= 8u;
      }

      *(v37 + 868) = v36;
      Width = IOSurfaceGetWidth(buffera);
      v115 = IOSurfaceGetHeight(buffera) * Width;
      *(v37 + 872) = (*MEMORY[0x277D85FA0] + v115 * IOSurfaceGetBytesPerElement(buffera) - 1) & -*MEMORY[0x277D85FA0];
      *(v37 + 864) = v36;
      *(v37 + 816) = buffera;
      *(v37 + 848) = v36;
      if (v128 == 5126)
      {
        if (v32 == 6408)
        {
          v32 = 34836;
        }

        else if (v32 == 6407)
        {
          v32 = 34837;
        }

        else
        {
          v32 = v32;
        }
      }

      v116 = gleStandardizeIntegerFormat(v34);
      v117 = v116;
      *(v37 + 560) = gleSizedInternalFormat(a1, v37, v32, v116, v128, 0, 0);
      *(v37 + 968) = 65539;
      v133 = 0;
      *buf = 0u;
      v132 = 0u;
      if (*(v37 + 1043) & 0x20 | gfxEvaluateTextureForGeometryChange() & 1)
      {
        (*(*(a1 + 29496) + 272))(*(a1 + 29464), 1, 0, *(v37 + 8 * *(v4 + 3848)));
      }

      gleCreateIOSurfaceLevel(a1, v37 + 1032, v31, v33, 1, v117, v128);
      gfxUpdateTextureForGeometryChange();
      gfxUpdatePluginTextureLevelGeometry();
      (*(*(a1 + 29448) + 328))(*(a1 + 29024), *(v37 + 8 * *(v4 + 3847)));
      *v4 = 0;
      *(a1 + 1548) |= 0x22000u;
      gleDirtyTextureObjectCurrentBindPointsGeom(a1, v37);
      return 0;
    }

    v122 = gfxPixelBytes();
    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(buffera, planeIndex);
    if (IOSurfaceAllowsPixelSizeCasting(buffera) || (BytesPerElementOfPlane = IOSurfaceGetBytesPerElementOfPlane(buffera, planeIndex), v120 = BytesPerElementOfPlane / IOSurfaceGetElementWidthOfPlane(buffera, planeIndex), v120 == v122))
    {
      if (BytesPerRowOfPlane >= v122 * v31 || v34 == 35429)
      {
        goto LABEL_352;
      }

      if (v34 - 35430 <= 0xE)
      {
        v99 = 1 << (v34 - 102);
        v100 = 32383;
        goto LABEL_349;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        ID = IOSurfaceGetID(buffera);
        *buf = 67110400;
        *&buf[4] = ID;
        *&buf[8] = 1024;
        *&buf[10] = v122;
        *&buf[14] = 1024;
        LODWORD(v132) = v34;
        WORD2(v132) = 1024;
        *(&v132 + 6) = v128;
        WORD5(v132) = 1024;
        HIDWORD(v132) = v120;
        v133 = 1024;
        v134 = v35 & 0xFFFFFF;
        _os_log_error_impl(&dword_23A041000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "TexImageIOSurface2D, IOSurface %08x pixel size (%d) for format %04x, type %04x doesn't match bytes per element/elementwidth (%d) of plane %d\n", buf, 0x26u);
      }

      if (v34 - 35429 <= 0xF)
      {
        v99 = 1 << (v34 - 101);
        v100 = 64767;
LABEL_349:
        if ((v99 & v100) != 0)
        {
          goto LABEL_352;
        }
      }
    }

    if (v34 - 37875 > 0x1D || ((1 << (v34 + 13)) & 0x3800073F) == 0)
    {
      goto LABEL_353;
    }

LABEL_352:
    if (IOSurfaceGetHeightOfPlane(buffera, planeIndex) < (v33 << ((v35 >> 24) != 0)))
    {
      goto LABEL_353;
    }

    goto LABEL_355;
  }

  if (a2 > 312)
  {
    v26 = (a2 - 316);
    if (v26 <= 0x3A)
    {
      if (((1 << (a2 - 60)) & 0x440444400000000) != 0)
      {
        return v7;
      }

      if (a2 == 316)
      {
        v7 = 0;
        v58 = (v4 + 3841);
        v59 = *(v4 + 3841) & 0xFDFF | ((*a3 != 0) << 9);
        goto LABEL_200;
      }

      if (v26 == 6)
      {
        gleFreeOrphans(a1);
        return 0;
      }
    }

    if (a2 == 313)
    {
      v76 = *a3;
      if (*a3 != (*(a1 + 27648) != 0))
      {
        if (v76)
        {
          if (v76 != 1)
          {
            return 10019;
          }

          v129 = 8;
          *v130 = 0x300000006;
          *buf = 0;
          sysctl(v130, 2u, buf, &v129, 0, 0);
          if (*buf < 2uLL)
          {
            return 10019;
          }

          glFinish_Exec(a1, v77, v78, v79);
          if (gleCreateCmdBufMachine(a1))
          {
            return 10019;
          }
        }

        else
        {
          gleDestroyCmdBufMachine(a1);
        }

        gliInitDispatchTable(a1);
      }

      return 0;
    }

    if (a2 != 315)
    {
      goto LABEL_294;
    }

    v54 = *a3 & ~(*a3 >> 31);
    if (*(v4 + 1116) != v54)
    {
      *(v4 + 1116) = v54;
      if (*(a1 + 27648))
      {
        dispatch_release(*(a1 + 27728));
        v55 = *(v4 + 1116);
        *(a1 + 27740) = v55;
        v7 = 0;
        *(a1 + 27728) = dispatch_semaphore_create(v55);
        goto LABEL_294;
      }
    }

    goto LABEL_293;
  }

  if (a2 > 305)
  {
    switch(a2)
    {
      case 0x132:
        v7 = 0;
        *(v4 + 3827) = *a3 != 0;
        break;
      case 0x133:
        return v7;
      case 0x134:
        gleReclaimContextResources(a1);
        return 0;
    }

    goto LABEL_294;
  }

  if (a2 == 221)
  {
    *(v4 + 3825) = *a3 != 0;
    gliUpdateDispatchState(a1, 0);
    gleUpdateSwapControl(a1);
    return 0;
  }

  if (a2 == 228)
  {
    v7 = 0;
    *(v4 + 1120) = *a3;
    return v7;
  }

  if (a2 != 300)
  {
    goto LABEL_294;
  }

  v20 = *(*(a1 + 29496) + 192);
  v21 = *(a1 + 29464);
  v22 = 300;
LABEL_146:

  return v20(v21, v22, a3);
}

float glGetIntegerv_Exec(uint64_t a1, int a2, _DWORD *a3, double a4, double a5, double a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v24 = 0;
  memset(v26, 0, sizeof(v26));
  State = gleGetState(a1, a2, v26, &v24, &v25, 0.0, a5, a6);
  if (State == -2)
  {
    if (!*(a1 + 29832))
    {
      v10 = 1282;
      goto LABEL_7;
    }
  }

  else if (State == -1)
  {
    if (!*(a1 + 29832))
    {
      v10 = 1280;
LABEL_7:
      *(a1 + 29832) = v10;
    }
  }

  else if (v24 == 5124)
  {
    if (State >= 1)
    {
      v11 = State;
      v12 = v26;
      do
      {
        v13 = *v12++;
        *a3++ = v13;
        --v11;
      }

      while (v11);
    }
  }

  else if (v25)
  {
    if (State >= 1)
    {
      v14 = State;
      v15 = v26;
      v9 = 1.0;
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (v16 <= 1.0)
        {
          v18 = v17;
        }

        else
        {
          v18 = 1.0;
        }

        if (v17 >= -1.0)
        {
          v19 = v18;
        }

        else
        {
          v19 = -1.0;
        }

        *a3++ = (v19 * 2147483520.0) + (v19 * 127.999985);
        --v14;
      }

      while (v14);
    }
  }

  else if (State >= 1)
  {
    v20 = State;
    v21 = v26;
    do
    {
      v22 = *v21++;
      *&v9 = round(v22);
      *a3++ = *&v9;
      --v20;
    }

    while (v20);
  }

  return *&v9;
}

uint64_t gleGetState(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, _BYTE *a5, double a6, double a7, double a8)
{
  v119[3] = *MEMORY[0x277D85DE8];
  v13 = a1 + 29672;
  v14 = (a1 + 23768);
  v15 = a1 + 17572;
  v16 = (a1 + 12516);
  *a4 = 5124;
  *a5 = 0;
  if (a2 > 3407)
  {
    if (a2 > 33901)
    {
      if (a2 > 34876)
      {
        if (a2 <= 36005)
        {
          if (a2 > 34963)
          {
            if (a2 == 34964)
            {
              ClampedStencilValue = *(a1 + 19312);
              if (!ClampedStencilValue)
              {
                goto LABEL_212;
              }

              goto LABEL_211;
            }

            if (a2 == 34965)
            {
              v30 = *(a1 + 26384);
              if (v30)
              {
                ClampedStencilValue = *(v30 + 1232);
                if (!ClampedStencilValue)
                {
                  goto LABEL_212;
                }
              }

              else
              {
                ClampedStencilValue = *(a1 + 19320);
                if (!ClampedStencilValue)
                {
                  goto LABEL_212;
                }
              }

              goto LABEL_211;
            }
          }

          else
          {
            if (a2 == 34877)
            {
              ClampedStencilValue = *(a1 + 15018);
              goto LABEL_212;
            }

            if (a2 == 34921)
            {
              goto LABEL_72;
            }
          }
        }

        else if (a2 <= 36009)
        {
          if (a2 == 36006)
          {
            ClampedStencilValue = *(a1 + 28960);
            if (!ClampedStencilValue)
            {
              goto LABEL_212;
            }

            goto LABEL_211;
          }

          if (a2 == 36007)
          {
            ClampedStencilValue = *(a1 + 28952);
            if (!ClampedStencilValue)
            {
              goto LABEL_212;
            }

            goto LABEL_211;
          }
        }

        else
        {
          switch(a2)
          {
            case 36010:
              ClampedStencilValue = *(a1 + 28968);
              if (!ClampedStencilValue)
              {
                goto LABEL_212;
              }

              goto LABEL_211;
            case 36063:
              ClampedStencilValue = *(*(a1 + 29480) + 22);
              goto LABEL_212;
            case 36183:
              ClampedStencilValue = *(*(a1 + 29480) + 170);
LABEL_212:
              *a3 = ClampedStencilValue;
              return 1;
          }
        }

        goto LABEL_196;
      }

      if (a2 > 34046)
      {
        if (a2 > 34465)
        {
          if (a2 == 34466)
          {
            *a3 = 0;
            v37 = (*(*(a1 + 29480) + 580) >> 2) & 4;
            *a3 = v37;
            v38 = *(a1 + 32501);
            if (v38 == 4)
            {
              *a3 = v37 | 0xA;
              v38 = *(a1 + 32501);
              if (v38 == 4)
              {
                if ((*(*(a1 + 29480) + 576) & 0x20) == 0)
                {
                  return 1;
                }

                v37 += 38;
                *a3 = v37;
                v38 = *(a1 + 32501);
              }

              else
              {
                v37 |= 0xAuLL;
              }
            }

            if (v38 != 2)
            {
              return 1;
            }

            ClampedStencilValue = v37 + 10;
            goto LABEL_212;
          }

          if (a2 == 34467)
          {
            if ((*(*(a1 + 29480) + 580) & 0x10) != 0)
            {
              *a3 = xmmword_23A103C20;
              *(a3 + 16) = xmmword_23A103C30;
              v29 = 4;
            }

            else
            {
              v29 = 0;
            }

            v52 = *(a1 + 32501);
            if (v52 == 4)
            {
              v53 = (a3 + 8 * v29);
              *v53 = xmmword_23A103C40;
              *(a3 + 8 * (v29 | 2)) = xmmword_23A103C50;
              v53[2] = xmmword_23A103C60;
              v53[3] = xmmword_23A103C70;
              result = v29 | 0xA;
              *(a3 + 8 * (v29 | 8)) = xmmword_23A103C80;
              v52 = *(v13 + 2829);
              if (v52 == 4)
              {
                if ((*(*(a1 + 29480) + 576) & 0x20) == 0)
                {
                  return result;
                }

                v54 = a3 + 8 * result;
                *v54 = 37808;
                *(v54 + 8) = xmmword_23A103C90;
                *(v54 + 24) = xmmword_23A103CA0;
                *(v54 + 40) = xmmword_23A103CB0;
                *(v54 + 56) = xmmword_23A103CC0;
                *(v54 + 72) = xmmword_23A103CD0;
                *(v54 + 88) = xmmword_23A103CE0;
                *(v54 + 104) = xmmword_23A103CF0;
                *(v54 + 120) = xmmword_23A103D00;
                *(v54 + 136) = xmmword_23A103D10;
                *(v54 + 152) = xmmword_23A103D20;
                *(v54 + 168) = xmmword_23A103D30;
                *(v54 + 184) = xmmword_23A103D40;
                *(v54 + 200) = xmmword_23A103D50;
                v29 = (v29 + 38);
                *(v54 + 216) = 37853;
                v52 = *(v13 + 2829);
              }

              else
              {
                v29 = v29 | 0xA;
              }
            }

            if (v52 != 2)
            {
              return v29;
            }

            v58 = 0;
            result = (v29 + 10);
            v59 = a3 + 8 * v29;
            v60 = xmmword_23A102AE0;
            v61 = vdupq_n_s64(0x8B90uLL);
            v62 = vdupq_n_s64(2uLL);
            do
            {
              *(v59 + v58) = vorrq_s8(v60, v61);
              v60 = vaddq_s64(v60, v62);
              v58 += 16;
            }

            while (v58 != 80);
            return result;
          }

          goto LABEL_196;
        }

        if (a2 != 34047)
        {
          if (a2 == 34229)
          {
            ClampedStencilValue = *(a1 + 26384);
            if (ClampedStencilValue)
            {
              goto LABEL_211;
            }

            goto LABEL_660;
          }

          goto LABEL_196;
        }

        v28 = *(*(a1 + 29480) + 144);
      }

      else
      {
        if (a2 <= 34023)
        {
          if (a2 == 33902)
          {
            *a3 = *(*(a1 + 29480) + 80);
            v35 = *(*(a1 + 29480) + 84);
LABEL_140:
            v34 = v35;
            goto LABEL_141;
          }

          if (a2 == 34016)
          {
            v19 = *v14;
            goto LABEL_34;
          }

          goto LABEL_196;
        }

        if (a2 == 34024)
        {
          ClampedStencilValue = *(a1 + 29480);
          if ((*(ClampedStencilValue + 569) & 2) == 0)
          {
            goto LABEL_660;
          }

          v36 = *(ClampedStencilValue + 4);
          LODWORD(ClampedStencilValue) = *(ClampedStencilValue + 8);
          if (v36 < ClampedStencilValue)
          {
            LODWORD(ClampedStencilValue) = v36;
          }

          goto LABEL_147;
        }

        if (a2 != 34045)
        {
          goto LABEL_196;
        }

        v28 = *(*(a1 + 29480) + 148);
      }

      ClampedStencilValue = v28;
      goto LABEL_212;
    }

    if (a2 <= 32935)
    {
      if (a2 > 32823)
      {
        if (a2 > 32925)
        {
          if (a2 == 32926)
          {
            ClampedStencilValue = *(a1 + 17681);
            goto LABEL_212;
          }

          if (a2 == 32928)
          {
            ClampedStencilValue = *(a1 + 17683);
            goto LABEL_212;
          }
        }

        else
        {
          if (a2 == 32824)
          {
            v18 = *(a1 + 15516);
            goto LABEL_165;
          }

          if (a2 == 32873)
          {
            ClampedStencilValue = *(a1 + 88 * *v14 + 20800);
            goto LABEL_211;
          }
        }
      }

      else if (a2 > 32776)
      {
        if (a2 == 32777)
        {
          ClampedStencilValue = *(a1 + 15016);
          goto LABEL_212;
        }

        if (a2 == 32823)
        {
          ClampedStencilValue = *(a1 + 15537);
          goto LABEL_212;
        }
      }

      else
      {
        if (a2 == 3408)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 20);
          goto LABEL_212;
        }

        if (a2 == 10752)
        {
          v18 = *(a1 + 15520);
          goto LABEL_165;
        }
      }

      goto LABEL_196;
    }

    if (a2 <= 32967)
    {
      if (a2 <= 32937)
      {
        if (a2 == 32936)
        {
          v39 = *(a1 + 28960);
          if (!v39)
          {
            ClampedStencilValue = *(*(a1 + 29480) + 58);
            goto LABEL_212;
          }

          if (*(v39 + 478))
          {
            result = 1;
            *a3 = 1;
            return result;
          }

          goto LABEL_660;
        }

        v20 = *(a1 + 28960);
        if (!v20)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 59);
          goto LABEL_212;
        }

        v21 = 10;
        while (!*(v20 + 40))
        {
          v20 += 16;
          if (!--v21)
          {
            goto LABEL_660;
          }
        }

        v55 = *(v20 + 300);
        v56 = *(v20 + 304);
        v57 = *(v20 + 40) + 8 * *(a1 + 32500);
        LODWORD(v119[0]) = 0;
        (*(*(a1 + 29496) + 376))(*(a1 + 29464), *(v57 + 40), v55, v56, 36011, v119);
        goto LABEL_219;
      }

      if (a2 == 32938)
      {
        v18 = *(a1 + 17672);
        goto LABEL_165;
      }

      if (a2 == 32939)
      {
        ClampedStencilValue = *(a1 + 17684);
        goto LABEL_212;
      }

      goto LABEL_196;
    }

    if (a2 > 32969)
    {
      if (a2 == 32970)
      {
        ClampedStencilValue = *(a1 + 15014);
        goto LABEL_212;
      }

      if (a2 == 32971)
      {
        ClampedStencilValue = *(a1 + 15012);
        goto LABEL_212;
      }

      goto LABEL_196;
    }

    if (a2 != 32968)
    {
LABEL_78:
      ClampedStencilValue = *(a1 + 15008);
      goto LABEL_212;
    }

LABEL_138:
    ClampedStencilValue = *(a1 + 15010);
    goto LABEL_212;
  }

  if (a2 > 2966)
  {
    if (a2 > 3088)
    {
      if (a2 > 3332)
      {
        if (a2 > 3378)
        {
          if (a2 == 3379)
          {
            ClampedStencilValue = *(*(a1 + 29480) + 160);
            goto LABEL_212;
          }

          if (a2 == 3386)
          {
            *a3 = *(*(a1 + 29480) + 4);
            v34 = *(*(a1 + 29480) + 8);
LABEL_141:
            *(a3 + 8) = v34;
            return 2;
          }
        }

        else
        {
          if (a2 == 3333)
          {
            ClampedStencilValue = *(a1 + 18476);
            goto LABEL_212;
          }

          if (a2 == 3378)
          {
            ClampedStencilValue = 6;
            if (*(a1 + 32501) - 3 < 2)
            {
              ClampedStencilValue = 8;
            }

            goto LABEL_212;
          }
        }

        goto LABEL_196;
      }

      if (a2 <= 3106)
      {
        if (a2 == 3089)
        {
          ClampedStencilValue = *(a1 + 15556);
          goto LABEL_212;
        }

        if (a2 == 3106)
        {
          if ((*(a1 + 29803) & 0x10) != 0)
          {
            gleUpdateAnyDrawBuffersFloat(a1, a6, a7, a8);
          }

          v23 = *v13;
          if (!v16[2662])
          {
            *a3 = v23;
            *(a3 + 8) = *(v13 + 4);
            *(a3 + 16) = *(v13 + 8);
            v25 = *(v13 + 12);
            goto LABEL_216;
          }

          *a3 = fminf(fmaxf(v23, *(a1 + 288)), *(a1 + 292));
          *(a3 + 8) = fminf(fmaxf(*(v13 + 4), *(a1 + 288)), *(a1 + 292));
          *(a3 + 16) = fminf(fmaxf(*(v13 + 8), *(a1 + 288)), *(a1 + 292));
          v24 = *(v13 + 12);
          goto LABEL_56;
        }

        goto LABEL_196;
      }

      if (a2 != 3107)
      {
        if (a2 == 3317)
        {
          ClampedStencilValue = *(a1 + 18512);
          goto LABEL_212;
        }

        goto LABEL_196;
      }

      *a3 = *(a1 + 15336) & 1;
      *(a3 + 8) = *(a1 + 15337) & 1;
      *(a3 + 16) = *(a1 + 15338) & 1;
      v33 = *(a1 + 15339) & 1;
    }

    else if (a2 > 3039)
    {
      if (a2 <= 3041)
      {
        if (a2 != 3040)
        {
          goto LABEL_78;
        }

        goto LABEL_138;
      }

      if (a2 == 3042)
      {
        LOBYTE(v22) = *(a1 + 15120);
        goto LABEL_187;
      }

      if (a2 != 3088)
      {
        goto LABEL_196;
      }

      *a3 = *(a1 + 15560);
      *(a3 + 8) = *(a1 + 15564);
      *(a3 + 16) = *(a1 + 15568);
      v33 = *(a1 + 15572);
    }

    else
    {
      if (a2 <= 2977)
      {
        if (a2 == 2967)
        {
          v40 = *(a1 + 16 * (*(a1 + 29776) - 1028) + 15600);
          goto LABEL_167;
        }

        if (a2 == 2968)
        {
          ClampedStencilValue = *(a1 + 4 * (*(a1 + 29776) - 1028) + 15324);
          goto LABEL_212;
        }

        goto LABEL_196;
      }

      if (a2 != 2978)
      {
        if (a2 == 3024)
        {
          ClampedStencilValue = *(a1 + 15224);
          goto LABEL_212;
        }

        goto LABEL_196;
      }

      v41 = vcvt_s32_f32(vadd_f32(*(a1 + 9312), vbsl_s8(vcgez_f32(*(a1 + 9312)), 0x3F0000003F000000, 0xBF000000BF000000)));
      *&v42 = v41.i32[0];
      *(&v42 + 1) = v41.i32[1];
      v43 = v42;
      v44 = vcvt_f32_s32(*(*(a1 + 29480) + 4));
      v45 = vbsl_s8(vcgt_f32(*(a1 + 9320), v44), v44, *(a1 + 9320));
      v46 = vmvn_s8(vcgez_f32(v45));
      if (v46.i8[0])
      {
        v47 = -0.5;
      }

      else
      {
        v47 = 0.5;
      }

      v48 = v45.f32[0] + v47;
      *a3 = v43;
      if (v46.i8[4])
      {
        v49 = -0.5;
      }

      else
      {
        v49 = 0.5;
      }

      v33 = (v45.f32[1] + v49);
      *(a3 + 16) = v48;
    }

    *(a3 + 24) = v33;
    return 4;
  }

  if (a2 <= 2931)
  {
    if (a2 > 2927)
    {
      if (a2 > 2929)
      {
        if (a2 == 2930)
        {
          ClampedStencilValue = *(a1 + 15340);
          goto LABEL_212;
        }

        v31 = *(a1 + 15128);
        goto LABEL_125;
      }

      if (a2 != 2928)
      {
        ClampedStencilValue = *(a1 + 15204);
        goto LABEL_212;
      }

      *a3 = *(a1 + 9280);
      *(a3 + 8) = *(a1 + 9288);
      *a4 = 5130;
      *a5 = 1;
      return 2;
    }

    if (a2 > 2884)
    {
      if (a2 == 2885)
      {
        ClampedStencilValue = *(a1 + 15530);
        goto LABEL_212;
      }

      if (a2 == 2886)
      {
        ClampedStencilValue = *(a1 + 15528);
        goto LABEL_212;
      }
    }

    else
    {
      if (a2 == 2849)
      {
        v18 = *(a1 + 15304);
        goto LABEL_165;
      }

      if (a2 == 2884)
      {
        ClampedStencilValue = *(a1 + 15534);
        goto LABEL_212;
      }
    }

    goto LABEL_196;
  }

  if (a2 > 2962)
  {
    if (a2 > 2964)
    {
      v26 = a1 + 16 * (*(a1 + 29776) - 1028);
      if (a2 == 2965)
      {
        v27 = 15608;
      }

      else
      {
        v27 = 15610;
      }
    }

    else
    {
      if (a2 == 2963)
      {
        ClampedStencilValue = *(a1 + 16 * (*(a1 + 29776) - 1028) + 15596);
        goto LABEL_212;
      }

      v26 = a1 + 16 * (*(a1 + 29776) - 1028);
      v27 = 15606;
    }

    goto LABEL_189;
  }

  if (a2 > 2960)
  {
    if (a2 == 2961)
    {
      ClampedStencilValue = *(a1 + 15172);
      goto LABEL_212;
    }

    v26 = a1 + 16 * (*(a1 + 29776) - 1028);
    v27 = 15604;
    goto LABEL_189;
  }

  if (a2 == 2932)
  {
    ClampedStencilValue = *(a1 + 15200);
    goto LABEL_212;
  }

  if (a2 == 2960)
  {
    v22 = *(a1 + 15644);
LABEL_187:
    ClampedStencilValue = v22 & 1;
    goto LABEL_212;
  }

LABEL_196:
  v50 = *(a1 + 32501);
  if ((v50 - 2) > 2)
  {
    goto LABEL_454;
  }

  if (a2 > 3413)
  {
    if (a2 <= 33169)
    {
      if (a2 == 3414)
      {
        v68 = *(a1 + 28960);
        if (!v68)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 56);
          goto LABEL_212;
        }

        v69 = *(v68 + 168);
        if (!v69)
        {
          goto LABEL_660;
        }

        v70 = *(v68 + 428);
        v71 = *(v68 + 432);
        v72 = v69 + 8 * *(a1 + 32500);
        LODWORD(v119[0]) = 0;
        (*(*(a1 + 29496) + 376))(*(a1 + 29464), *(v72 + 40), v70, v71, 34890, v119);
      }

      else
      {
        if (a2 != 3415)
        {
          goto LABEL_250;
        }

        v63 = *(a1 + 28960);
        if (!v63)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 57);
          goto LABEL_212;
        }

        v64 = *(v63 + 184);
        if (!v64)
        {
          goto LABEL_660;
        }

        v65 = *(v63 + 444);
        v66 = *(v63 + 448);
        v67 = v64 + 8 * *(a1 + 32500);
        LODWORD(v119[0]) = 0;
        (*(*(a1 + 29496) + 376))(*(a1 + 29464), *(v67 + 40), v65, v66, 35057, v119);
      }

LABEL_219:
      ClampedStencilValue = SLODWORD(v119[0]);
      goto LABEL_212;
    }

    if (a2 == 33170)
    {
      ClampedStencilValue = *(a1 + 15296);
      goto LABEL_212;
    }

    if (a2 != 33901)
    {
      goto LABEL_250;
    }

    *a3 = *(*(a1 + 29480) + 60);
    v35 = *(*(a1 + 29480) + 64);
    goto LABEL_140;
  }

  if (a2 > 3411)
  {
    if (a2 == 3412)
    {
      if (!*(a1 + 28960))
      {
        ClampedStencilValue = *(*(a1 + 29480) + 50);
        goto LABEL_212;
      }

      v51 = 32862;
    }

    else
    {
      if (!*(a1 + 28960))
      {
        ClampedStencilValue = *(*(a1 + 29480) + 51);
        goto LABEL_212;
      }

      v51 = 32863;
    }

    goto LABEL_248;
  }

  if (a2 == 3410)
  {
    if (!*(a1 + 28960))
    {
      ClampedStencilValue = *(*(a1 + 29480) + 48);
      goto LABEL_212;
    }

    v51 = 32860;
LABEL_248:
    gleGetAttachmentsParameters(a1, v51, a3);
    return 1;
  }

  if (a2 == 3411)
  {
    if (!*(a1 + 28960))
    {
      ClampedStencilValue = *(*(a1 + 29480) + 49);
      goto LABEL_212;
    }

    v51 = 32861;
    goto LABEL_248;
  }

LABEL_250:
  if (v50 == 2)
  {
    if (a2 >= 12288)
    {
      if (a2 > 32924)
      {
        switch(a2)
        {
          case 33064:
            v18 = *(a1 + 15356);
            goto LABEL_165;
          case 32927:
            ClampedStencilValue = *(a1 + 17682);
            goto LABEL_212;
          case 32925:
            ClampedStencilValue = *(a1 + 17680);
            goto LABEL_212;
        }
      }

      else if ((a2 - 12288) < 6)
      {
        v73 = *v15;
LABEL_526:
        ClampedStencilValue = (v73 >> a2) & 1;
        goto LABEL_212;
      }

      goto LABEL_454;
    }

    if (a2 <= 2849)
    {
      if (a2 == 2833)
      {
        v18 = *(a1 + 15344);
        goto LABEL_165;
      }

      if (a2 != 2834)
      {
        if (a2 == 2848)
        {
          ClampedStencilValue = *(a1 + 15315);
          goto LABEL_212;
        }

        goto LABEL_454;
      }

      *a3 = *(*(a1 + 29480) + 68);
      v76 = *(*(a1 + 29480) + 72);
    }

    else
    {
      if (a2 > 3057)
      {
        if (a2 == 3058)
        {
          ClampedStencilValue = *(a1 + 15319);
          goto LABEL_212;
        }

        if (a2 == 3154)
        {
          ClampedStencilValue = *(a1 + 15288);
          goto LABEL_212;
        }

        goto LABEL_454;
      }

      if (a2 != 2850)
      {
        if (a2 == 3056)
        {
          ClampedStencilValue = *(a1 + 15316);
          goto LABEL_212;
        }

        goto LABEL_454;
      }

      *a3 = *(*(a1 + 29480) + 88);
      v76 = *(*(a1 + 29480) + 92);
    }

    *(a3 + 8) = v76;
    *a4 = 5130;
    return 2;
  }

  if (a2 > 35659)
  {
    if (a2 <= 36002)
    {
      if (a2 > 35722)
      {
        if (a2 == 35723)
        {
          ClampedStencilValue = *(a1 + 15300);
          goto LABEL_212;
        }

        if (a2 == 35725)
        {
          ClampedStencilValue = *(a1 + 24768);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }
      }

      else
      {
        if (a2 == 35660)
        {
          v75 = *(a1 + 29480);
LABEL_314:
          ClampedStencilValue = *(v75 + 156);
          goto LABEL_212;
        }

        if (a2 == 35661)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 154);
          goto LABEL_212;
        }
      }

      goto LABEL_325;
    }

    if (a2 > 36004)
    {
      if (a2 == 36005)
      {
        ClampedStencilValue = *(a1 + 15332);
        goto LABEL_212;
      }

      if (a2 == 37137)
      {
        ClampedStencilValue = -1;
        goto LABEL_212;
      }

      goto LABEL_325;
    }

    if (a2 != 36003)
    {
      ClampedStencilValue = *(a1 + 15628);
      goto LABEL_212;
    }

    v40 = *(a1 + 15632);
LABEL_167:
    ClampedStencilValue = gleGetClampedStencilValue(a1, v40);
    goto LABEL_212;
  }

  if (a2 > 34816)
  {
    if (a2 <= 34818)
    {
      if (a2 == 34817)
      {
        ClampedStencilValue = *(a1 + 15638);
      }

      else
      {
        ClampedStencilValue = *(a1 + 15640);
      }

      goto LABEL_212;
    }

    if (a2 == 34819)
    {
      ClampedStencilValue = *(a1 + 15642);
      goto LABEL_212;
    }

    if (a2 == 34930)
    {
      ClampedStencilValue = *(*(a1 + 29480) + 175);
      goto LABEL_212;
    }

    goto LABEL_325;
  }

  if (a2 > 34075)
  {
    if (a2 == 34076)
    {
      ClampedStencilValue = *(*(a1 + 29480) + 168);
      goto LABEL_212;
    }

    if (a2 == 34816)
    {
      ClampedStencilValue = *(a1 + 15636);
      goto LABEL_212;
    }

    goto LABEL_325;
  }

  if (a2 == 32773)
  {
    if ((*(a1 + 29803) & 0x10) != 0)
    {
      gleUpdateAnyDrawBuffersFloat(a1, a6, a7, a8);
    }

    v74 = *(v13 + 16);
    if (!v16[2662])
    {
      *a3 = v74;
      *(a3 + 8) = *(v13 + 20);
      *(a3 + 16) = *(v13 + 24);
      v25 = *(v13 + 28);
      goto LABEL_216;
    }

    *a3 = fminf(fmaxf(v74, *(a1 + 288)), *(a1 + 292));
    *(a3 + 8) = fminf(fmaxf(*(v13 + 20), *(a1 + 288)), *(a1 + 292));
    *(a3 + 16) = fminf(fmaxf(*(v13 + 24), *(a1 + 288)), *(a1 + 292));
    v24 = *(v13 + 28);
LABEL_56:
    v25 = fminf(fmaxf(v24, *(a1 + 288)), *(a1 + 292));
    goto LABEL_216;
  }

  if (a2 == 34068)
  {
    ClampedStencilValue = *(a1 + 88 * *v14 + 20776);
    goto LABEL_211;
  }

LABEL_325:
  if (v50 != 4)
  {
    v50 = 3;
    if (a2 <= 36345)
    {
      if (a2 != 33370)
      {
        if (a2 == 36344)
        {
          return 0;
        }

        v78 = 36345;
LABEL_352:
        if (a2 == v78)
        {
          goto LABEL_660;
        }

        goto LABEL_454;
      }

LABEL_370:
      ClampedStencilValue = *(a1 + 24776);
      if (!ClampedStencilValue)
      {
        goto LABEL_212;
      }

      goto LABEL_211;
    }

    if (a2 <= 36347)
    {
      goto LABEL_338;
    }

    goto LABEL_410;
  }

  result = 0;
  if (a2 <= 35052)
  {
    if (a2 <= 34814)
    {
      if (a2 <= 32877)
      {
        if (a2 <= 3329)
        {
          if (a2 > 3314)
          {
            if (a2 == 3315)
            {
              ClampedStencilValue = *(v15 + 928);
              goto LABEL_212;
            }

            if (a2 == 3316)
            {
              ClampedStencilValue = *(v15 + 932);
              goto LABEL_212;
            }
          }

          else
          {
            if (a2 == 3074)
            {
              v114 = *(a1 + 28968);
              if (v114)
              {
                ClampedStencilValue = *(v114 + 516);
              }

              else
              {
                ClampedStencilValue = *(v13 + 172);
              }

              goto LABEL_212;
            }

            if (a2 == 3314)
            {
              ClampedStencilValue = *(v15 + 912);
              goto LABEL_212;
            }
          }
        }

        else
        {
          if (a2 <= 3331)
          {
            if (a2 == 3330)
            {
              ClampedStencilValue = *(v15 + 876);
            }

            else
            {
              ClampedStencilValue = *(v15 + 892);
            }

            goto LABEL_212;
          }

          switch(a2)
          {
            case 3332:
              ClampedStencilValue = *(v15 + 896);
              goto LABEL_212;
            case 32874:
              ClampedStencilValue = *(a1 + 88 * *v14 + 20784);
              goto LABEL_211;
            case 32877:
              ClampedStencilValue = *(v15 + 936);
              goto LABEL_212;
          }
        }

        goto LABEL_454;
      }

      if (a2 <= 33306)
      {
        if (a2 > 32999)
        {
          if (a2 == 33000)
          {
            ClampedStencilValue = 0xFFFFFLL;
            goto LABEL_212;
          }

          if (a2 == 33001)
          {
            ClampedStencilValue = 150000;
            goto LABEL_212;
          }
        }

        else
        {
          if (a2 == 32878)
          {
            ClampedStencilValue = *(v15 + 920);
            goto LABEL_212;
          }

          if (a2 == 32883)
          {
            ClampedStencilValue = *(*(a1 + 29480) + 164);
            goto LABEL_212;
          }
        }

        goto LABEL_454;
      }

      if (a2 <= 33308)
      {
        if (a2 == 33307)
        {
          gleDeriveVersion(a1);
          v87 = *(v13 + 2734);
        }

        else
        {
          gleDeriveVersion(a1);
          v87 = *(v13 + 2736);
        }

        ClampedStencilValue = v87 - 48;
        goto LABEL_212;
      }

      if (a2 != 33309)
      {
        if (a2 != 33370)
        {
          v78 = 34814;
          goto LABEL_352;
        }

        goto LABEL_370;
      }

      memset(v119, 0, 24);
      gleGetFilteredExtensions(a1, v119);
      LODWORD(ClampedStencilValue) = 0;
      v115 = 244;
      v116 = &word_278B46A64;
      do
      {
        if ((*(v116 - 1) & 0x110) == 0x10)
        {
          v117 = *v116;
          if (v117 == -1 || ((*(v119 + (v117 >> 5)) >> v117) & 1) != 0)
          {
            LODWORD(ClampedStencilValue) = ClampedStencilValue + 1;
          }
        }

        v116 += 8;
        --v115;
      }

      while (v115);
LABEL_147:
      ClampedStencilValue = ClampedStencilValue;
      goto LABEL_212;
    }

    if (a2 <= 34856)
    {
      v82 = (a2 - 34853);
      if (v82 >= 4)
      {
        if (a2 == 34815)
        {
          return result;
        }

        if (a2 == 34852)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 21);
          goto LABEL_212;
        }

        goto LABEL_454;
      }

      v83 = *(a1 + 28960);
      if (v83)
      {
        v81 = v83 + 2 * v82;
        goto LABEL_388;
      }

      v26 = a1 + 2 * v82;
      v27 = 29836;
    }

    else
    {
      if ((a2 - 34857) >= 0xC)
      {
        goto LABEL_454;
      }

      v79 = (a2 - 34853);
      if (v79 > 7)
      {
        goto LABEL_660;
      }

      v80 = *(a1 + 28960);
      if (v80)
      {
        v81 = v80 + 2 * v79;
LABEL_388:
        ClampedStencilValue = *(v81 + 500);
        goto LABEL_212;
      }

      v26 = a1 + 2 * v79;
      v27 = 15180;
    }

LABEL_189:
    ClampedStencilValue = *(v26 + v27);
    goto LABEL_212;
  }

  if (a2 > 35967)
  {
    if (a2 <= 36347)
    {
      if (a2 <= 35982)
      {
        if (a2 > 35977)
        {
          if (a2 == 35978)
          {
            ClampedStencilValue = *(*(a1 + 29480) + 488);
            goto LABEL_212;
          }

          if (a2 == 35979)
          {
            ClampedStencilValue = *(*(a1 + 29480) + 480);
            goto LABEL_212;
          }
        }

        else
        {
          if (a2 == 35968)
          {
            ClampedStencilValue = *(*(a1 + 29480) + 484);
            goto LABEL_212;
          }

          if (a2 == 35977)
          {
            ClampedStencilValue = *(v15 + 412);
            goto LABEL_212;
          }
        }

        goto LABEL_454;
      }

      if (a2 <= 36344)
      {
        if (a2 == 35983)
        {
          ClampedStencilValue = *(a1 + 19352);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 36344)
        {
          return result;
        }

        goto LABEL_454;
      }

      if (a2 == 36345)
      {
        goto LABEL_660;
      }

LABEL_338:
      if (a2 == 36346)
      {
        result = 1;
        *a3 = 1;
        return result;
      }

      v77 = *(*(a1 + 29480) + 344);
      goto LABEL_414;
    }

    if (a2 > 36388)
    {
      if (a2 <= 36662)
      {
        if (a2 == 36389)
        {
          ClampedStencilValue = *(a1 + 26432);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 36662)
        {
          ClampedStencilValue = *(a1 + 19368);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }
      }

      else
      {
        if (a2 == 36663)
        {
          ClampedStencilValue = *(a1 + 19376);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }

        if (a2 == 37154 || a2 == 37157)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 348);
          goto LABEL_212;
        }
      }

      goto LABEL_454;
    }

    if (a2 > 36386)
    {
      if (a2 == 36387)
      {
        ClampedStencilValue = *(*(a1 + 26432) + 41);
      }

      else
      {
        ClampedStencilValue = *(*(a1 + 26432) + 42) != -1;
      }

      goto LABEL_212;
    }

LABEL_410:
    if (a2 == 36348)
    {
      v77 = *(*(a1 + 29480) + 448);
    }

    else
    {
      if (a2 != 36349)
      {
        goto LABEL_454;
      }

      v77 = *(*(a1 + 29480) + 332);
    }

LABEL_414:
    ClampedStencilValue = v77 >> 2;
    goto LABEL_212;
  }

  if (a2 > 35373)
  {
    if (a2 <= 35378)
    {
      if (a2 <= 35375)
      {
        if (a2 == 35374)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 446);
        }

        else
        {
          ClampedStencilValue = *(*(a1 + 29480) + 506);
        }

        goto LABEL_212;
      }

      if (a2 == 35376)
      {
        ClampedStencilValue = *(*(a1 + 29480) + 452);
        goto LABEL_212;
      }

      if (a2 != 35377)
      {
        goto LABEL_454;
      }

      v84 = *(a1 + 29480);
      v85 = *(v84 + 452) * *(v84 + 352);
      v86 = *(v84 + 344);
    }

    else
    {
      if (a2 > 35656)
      {
        switch(a2)
        {
          case 35657:
            ClampedStencilValue = *(*(a1 + 29480) + 332);
            goto LABEL_212;
          case 35658:
            ClampedStencilValue = *(*(a1 + 29480) + 344);
            goto LABEL_212;
          case 35869:
            ClampedStencilValue = *(a1 + 88 * *v14 + 20816);
            goto LABEL_211;
        }

        goto LABEL_454;
      }

      if (a2 != 35379)
      {
        if (a2 == 35380)
        {
          ClampedStencilValue = *(*(a1 + 29480) + 504);
          goto LABEL_212;
        }

        goto LABEL_454;
      }

      v118 = *(a1 + 29480);
      v85 = *(v118 + 452) * *(v118 + 334);
      v86 = *(v118 + 332);
    }

    ClampedStencilValue = v86 + (v85 >> 2);
    goto LABEL_212;
  }

  if (a2 <= 35076)
  {
    if (a2 > 35070)
    {
      if (a2 == 35071)
      {
        ClampedStencilValue = *(*(a1 + 29480) + 162);
        goto LABEL_212;
      }

      if (a2 == 35076)
      {
        ClampedStencilValue = *(*(a1 + 29480) + 428);
        goto LABEL_212;
      }
    }

    else
    {
      if (a2 == 35053)
      {
        ClampedStencilValue = *(a1 + 19328);
        if (!ClampedStencilValue)
        {
          goto LABEL_212;
        }

        goto LABEL_211;
      }

      if (a2 == 35055)
      {
        ClampedStencilValue = *(a1 + 19336);
        if (!ClampedStencilValue)
        {
          goto LABEL_212;
        }

        goto LABEL_211;
      }
    }
  }

  else if (a2 <= 35367)
  {
    if (a2 == 35077)
    {
      ClampedStencilValue = *(*(a1 + 29480) + 432);
      goto LABEL_212;
    }

    if (a2 == 35097)
    {
      ClampedStencilValue = *(a1 + 8 * *v14 + 23936);
      if (ClampedStencilValue)
      {
        goto LABEL_211;
      }

      goto LABEL_660;
    }
  }

  else
  {
    switch(a2)
    {
      case 35368:
        ClampedStencilValue = *(a1 + 19344);
        if (!ClampedStencilValue)
        {
          goto LABEL_212;
        }

        goto LABEL_211;
      case 35371:
        ClampedStencilValue = *(*(a1 + 29480) + 352);
        goto LABEL_212;
      case 35373:
        ClampedStencilValue = *(*(a1 + 29480) + 334);
        goto LABEL_212;
    }
  }

LABEL_454:
  if (a2 >> 1 == 17869 && (v50 - 2) <= 2)
  {
    if (*(a1 + 28968))
    {
      os_unfair_lock_lock((*(a1 + 19296) + 324));
      if (gleCheckFramebufferStatus(a1, *(a1 + 28968) + 40) == 36053)
      {
        gleUpdateReadFramebufferStateInline_0(a1, v88, v89, v90);
        v91 = *(a1 + 28968) + 560;
        if (a2 == 35739)
        {
          v92 = *(v91 + 88 * *(v13 + 2827) + 84);
        }

        else
        {
          v92 = *(v91 + 88 * *(v13 + 2827) + 86);
          *a3 = v92;
          if (v92 == 36193 && *(v13 + 2829) == 4)
          {
            v92 = 5131;
          }
        }

        *a3 = v92;
      }

      else if (!*(v13 + 160))
      {
        *(v13 + 160) = 1286;
      }

      os_unfair_lock_unlock((*(a1 + 19296) + 324));
    }

    else if (!*(v13 + 160))
    {
      *(v13 + 160) = 1286;
    }

    return 1;
  }

  if (a2 == 35659 && v50 == 4)
  {
    ClampedStencilValue = *(*(a1 + 29480) + 448);
    goto LABEL_212;
  }

  if (v50 == 4)
  {
    if (a2 != 35410)
    {
      if (a2 == 36201)
      {
        ClampedStencilValue = *(v15 + 144);
        goto LABEL_212;
      }

      if (a2 == 36203)
      {
        ClampedStencilValue = 0xFFFFFFFFLL;
        goto LABEL_212;
      }

      return 0xFFFFFFFFLL;
    }

LABEL_474:
    ClampedStencilValue = *(*(a1 + 29480) + 337);
    goto LABEL_212;
  }

  if ((v50 - 3) <= 1)
  {
    if (a2 != 35410)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_474;
  }

  result = 0xFFFFFFFFLL;
  if (a2 > 32883)
  {
    if (a2 <= 34474)
    {
      if (a2 <= 33061)
      {
        switch(a2)
        {
          case 32884:
            ClampedStencilValue = (*(*(a1 + 26384) + 904) >> 16) & 1;
            goto LABEL_212;
          case 32885:
            ClampedStencilValue = (*(*(a1 + 26384) + 904) >> 17) & 1;
            goto LABEL_212;
          case 32886:
            ClampedStencilValue = (*(*(a1 + 26384) + 904) >> 18) & 1;
            goto LABEL_212;
          case 32888:
            ClampedStencilValue = (*(*(a1 + 26384) + 904) >> v14[1] >> 24) & 1;
            goto LABEL_212;
          case 32890:
            ClampedStencilValue = *(*(a1 + 26384) + 158);
            goto LABEL_212;
          case 32891:
            v75 = *(a1 + 26384);
            goto LABEL_314;
          case 32892:
            ClampedStencilValue = *(*(a1 + 26384) + 152);
            goto LABEL_212;
          case 32894:
            v95 = *(*(a1 + 26384) + 180);
            goto LABEL_685;
          case 32895:
            ClampedStencilValue = *(*(a1 + 26384) + 176);
            goto LABEL_212;
          case 32897:
            ClampedStencilValue = *(*(a1 + 26384) + 206);
            if (ClampedStencilValue == 5)
            {
              ClampedStencilValue = 32993;
            }

            goto LABEL_212;
          case 32898:
            v95 = *(*(a1 + 26384) + 204);
            goto LABEL_685;
          case 32899:
            ClampedStencilValue = *(*(a1 + 26384) + 200);
            goto LABEL_212;
          case 32904:
            ClampedStencilValue = *(*(a1 + 26384) + 24 * v14[1] + 350);
            goto LABEL_212;
          case 32905:
            ClampedStencilValue = *(*(a1 + 26384) + 24 * v14[1] + 348);
            goto LABEL_212;
          case 32906:
            ClampedStencilValue = *(*(a1 + 26384) + 24 * v14[1] + 344);
            goto LABEL_212;
          default:
            return result;
        }

        return result;
      }

      if (a2 <= 34057)
      {
        if (a2 > 33064)
        {
          if (a2 != 33065)
          {
            if (a2 != 34017)
            {
              if (a2 == 34018)
              {
                ClampedStencilValue = *(*(a1 + 29480) + 152);
                goto LABEL_212;
              }

              return result;
            }

            v19 = v14[1];
LABEL_34:
            ClampedStencilValue = v19 + 33984;
            goto LABEL_212;
          }

          *a3 = *(a1 + 15360);
          *(a3 + 8) = *(a1 + 15364);
          *(a3 + 16) = *(a1 + 15368);
          *a4 = 5130;
          return 3;
        }

        if (a2 == 33062)
        {
          v18 = *(a1 + 15348);
        }

        else
        {
          if (a2 != 33063)
          {
            return result;
          }

          v18 = *(a1 + 15352);
        }

        goto LABEL_165;
      }

      if (a2 > 34471)
      {
        if (a2 != 34472)
        {
          if (a2 != 34473)
          {
            ClampedStencilValue = *(*(a1 + 26384) + 248);
            goto LABEL_212;
          }

          v95 = *(*(a1 + 26384) + 252);
          goto LABEL_685;
        }

        *a3 = *(a1 + 8496);
        *(a3 + 8) = *(a1 + 8500);
        *(a3 + 16) = *(a1 + 8504);
        v25 = *(a1 + 8508);
        goto LABEL_216;
      }

      if (a2 != 34058)
      {
        if (a2 != 34468)
        {
          return result;
        }

LABEL_611:
        ClampedStencilValue = 4;
        goto LABEL_212;
      }

      v100 = 9680;
      goto LABEL_696;
    }

    if (a2 <= 34966)
    {
      if (a2 <= 34882)
      {
        if (a2 <= 34593)
        {
          if (a2 == 34475)
          {
            ClampedStencilValue = *(*(a1 + 26384) + 254);
            goto LABEL_212;
          }

          if (a2 == 34477)
          {
            ClampedStencilValue = (*(*(a1 + 26384) + 904) >> 20) & 1;
            goto LABEL_212;
          }

          return result;
        }

        if ((a2 - 34594) < 2)
        {
          v101 = a1 + ((a2 - 34588) << 6);
          v102 = 9360;
        }

        else
        {
          if (a2 != 34880)
          {
            if (a2 == 34882)
            {
              ClampedStencilValue = 11;
              goto LABEL_212;
            }

            return result;
          }

          v101 = a1 + (*(v15 + 2923) << 6);
          v102 = 9680;
        }

LABEL_699:
        v113 = (v101 + v102);
        goto LABEL_700;
      }

      if (a2 <= 34887)
      {
        if (a2 == 34883)
        {
          ClampedStencilValue = *(v15 + 2923);
          goto LABEL_212;
        }

        if (a2 == 34886)
        {
          ClampedStencilValue = *(*(a1 + 26384) + 326);
          goto LABEL_212;
        }

        if (a2 != 34887)
        {
          return result;
        }

        v95 = *(*(a1 + 26384) + 324);
LABEL_685:
        ClampedStencilValue = v95 & 0xFFFFFFFFFFFFDFFFLL;
        goto LABEL_212;
      }

      if (a2 == 34888)
      {
        ClampedStencilValue = *(*(a1 + 26384) + 320);
        goto LABEL_212;
      }

      if (a2 == 34913)
      {
        ClampedStencilValue = v16[2861];
        goto LABEL_212;
      }

      if (a2 != 34966)
      {
        return result;
      }

      ClampedStencilValue = *(*(a1 + 26384) + 1240);
      if (!ClampedStencilValue)
      {
        goto LABEL_212;
      }

LABEL_211:
      ClampedStencilValue = *(ClampedStencilValue + 16);
      goto LABEL_212;
    }

    if (a2 <= 35212)
    {
      if (a2 > 34973)
      {
        if (a2 != 34974)
        {
          if (a2 == 35210)
          {
            ClampedStencilValue = *(*(a1 + 26384) + 300);
            goto LABEL_212;
          }

          if (a2 == 35211)
          {
            ClampedStencilValue = *(*(a1 + 26384) + 296);
            goto LABEL_212;
          }

          return result;
        }

        ClampedStencilValue = *(*(a1 + 26384) + 1272);
        if (!ClampedStencilValue)
        {
          goto LABEL_212;
        }
      }

      else
      {
        switch(a2)
        {
          case 34967:
            ClampedStencilValue = *(*(a1 + 26384) + 1248);
            if (!ClampedStencilValue)
            {
              goto LABEL_212;
            }

            break;
          case 34968:
            ClampedStencilValue = *(*(a1 + 26384) + 1256);
            if (!ClampedStencilValue)
            {
              goto LABEL_212;
            }

            break;
          case 34970:
            ClampedStencilValue = *(*(a1 + 26384) + 8 * v14[1] + 1304);
            if (!ClampedStencilValue)
            {
              goto LABEL_212;
            }

            break;
          default:
            return result;
        }
      }

      goto LABEL_211;
    }

    if (a2 > 35739)
    {
      switch(a2)
      {
        case 35740:
          ClampedStencilValue = (*(*(a1 + 26384) + 904) >> 22) & 1;
          goto LABEL_212;
        case 35742:
          ClampedStencilValue = *(*(a1 + 26384) + 1296);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          break;
        case 35743:
          ClampedStencilValue = *(*(a1 + 26384) + 1288);
          if (!ClampedStencilValue)
          {
            goto LABEL_212;
          }

          break;
        default:
          return result;
      }

      goto LABEL_211;
    }

    if (a2 == 35213)
    {
      gleGetMatrixd((a1 + 9616), a3);
      for (i = 0; i != 128; i += 8)
      {
        v106 = *(a3 + i);
        *(a3 + i) = v106;
        result = 16;
      }

      return result;
    }

    if (a2 == 35214)
    {
      gleGetMatrixd((a1 + 9552), a3);
      for (j = 0; j != 128; j += 8)
      {
        v111 = *(a3 + j);
        *(a3 + j) = v111;
        result = 16;
      }

      return result;
    }

    if (a2 != 35215)
    {
      return result;
    }

    v96 = *v14;
    if (v96 <= 7)
    {
      gleGetMatrixd((a1 + (v96 << 6) + 10384), a3);
      for (k = 0; k != 128; k += 8)
      {
        v98 = *(a3 + k);
        *(a3 + k) = v98;
        result = 16;
      }

      return result;
    }

    return 4294967294;
  }

  if (a2 <= 2983)
  {
    if (a2 <= 2914)
    {
      if (a2 <= 2897)
      {
        if (a2 > 2818)
        {
          if (a2 != 2819)
          {
            if (a2 == 2832)
            {
              ClampedStencilValue = v16[2860];
              goto LABEL_212;
            }

            if (a2 == 2896)
            {
              ClampedStencilValue = v16[2374];
              goto LABEL_212;
            }

            return result;
          }

          v103 = *v14;
          if (v103 <= 7)
          {
            v104 = (a1 + 16 * v103);
            *a3 = v104[2140];
            *(a3 + 8) = v104[2141];
            *(a3 + 16) = v104[2142];
            *(a3 + 24) = v104[2143];
            *a4 = 5130;
            return 4;
          }

          return 4294967294;
        }

        if (a2 != 2816)
        {
          if (a2 != 2818)
          {
            return result;
          }

          *a3 = *(a1 + 8448);
          *(a3 + 8) = *(a1 + 8452);
          *(a3 + 16) = *(a1 + 8456);
          *a4 = 5130;
          *a5 = 1;
          return 3;
        }

        *a3 = *(a1 + 8464);
        *(a3 + 8) = *(a1 + 8468);
        *(a3 + 16) = *(a1 + 8472);
        v25 = *(a1 + 8476);
        goto LABEL_216;
      }

      if (a2 <= 2902)
      {
        if (a2 == 2898)
        {
          ClampedStencilValue = v16[2376];
          goto LABEL_212;
        }

        if (a2 != 2899)
        {
          if (a2 == 2900)
          {
            ClampedStencilValue = *(a1 + 15592);
            goto LABEL_212;
          }

          return result;
        }

        *a3 = *(a1 + 12528);
        *(a3 + 8) = *(a1 + 12532);
        *(a3 + 16) = *(a1 + 12536);
        v25 = *(a1 + 12540);
LABEL_216:
        *(a3 + 24) = v25;
        *a4 = 5130;
        *a5 = 1;
        return 4;
      }

      if (a2 == 2903)
      {
        ClampedStencilValue = v16[2375];
        goto LABEL_212;
      }

      if (a2 == 2912)
      {
        ClampedStencilValue = v16[2766];
        goto LABEL_212;
      }

      if (a2 != 2914)
      {
        return result;
      }

      v18 = *(a1 + 15244);
LABEL_165:
      *a3 = v18;
      *a4 = 5130;
      return 1;
    }

    if (a2 <= 2976)
    {
      if (a2 > 2916)
      {
        if (a2 == 2917)
        {
          ClampedStencilValue = *(v16 + 1380);
          goto LABEL_212;
        }

        if (a2 != 2918)
        {
          if (a2 == 2976)
          {
            v99 = *(v15 + 2912);
            if ((v99 - 5) >= 0xB)
            {
              switch(v99)
              {
                case 2:
                  ClampedStencilValue = 6144;
                  break;
                case 3:
                  ClampedStencilValue = 5889;
                  break;
                case 4:
                  ClampedStencilValue = 5888;
                  break;
                default:
                  ClampedStencilValue = 5890;
                  break;
              }
            }

            else
            {
              ClampedStencilValue = 34880;
            }

            goto LABEL_212;
          }

          return result;
        }

        *a3 = *(a1 + 15228);
        *(a3 + 8) = *(a1 + 15232);
        *(a3 + 16) = *(a1 + 15236);
        v25 = *(a1 + 15240);
        goto LABEL_216;
      }

      if (a2 == 2915)
      {
        v18 = *(a1 + 15248);
      }

      else
      {
        v18 = *(a1 + 15252);
      }

      goto LABEL_165;
    }

    if (a2 <= 2980)
    {
      if (a2 == 2977)
      {
        ClampedStencilValue = *v16;
        goto LABEL_212;
      }

      if (a2 == 2979)
      {
        v94 = *(v15 + 2444);
      }

      else
      {
        v94 = *(v15 + 2440);
      }

      goto LABEL_689;
    }

    if (a2 == 2981)
    {
      v107 = *v14;
      if (v107 > 7)
      {
        return 4294967294;
      }

      v94 = *(a1 + 4 * v107 + 20064);
LABEL_689:
      ClampedStencilValue = v94 + 1;
      goto LABEL_212;
    }

    if (a2 != 2982)
    {
      v100 = 9552;
LABEL_696:
      v113 = (a1 + v100);
LABEL_700:
      gleGetMatrixd(v113, a3);
      *a4 = 5130;
      return 16;
    }

LABEL_594:
    v100 = 9616;
    goto LABEL_696;
  }

  if (a2 <= 3552)
  {
    if (a2 > 3152)
    {
      if (a2 <= 3381)
      {
        switch(a2)
        {
          case 3153:
            ClampedStencilValue = *(v16 + 1385);
            goto LABEL_212;
          case 3156:
            ClampedStencilValue = *(v16 + 1388);
            goto LABEL_212;
          case 3377:
            ClampedStencilValue = 8;
            goto LABEL_212;
        }

        return result;
      }

      if (a2 != 3382)
      {
        if (a2 == 3384)
        {
          if (v50 == 2)
          {
            ClampedStencilValue = 2;
            goto LABEL_212;
          }
        }

        else
        {
          if (a2 != 3385)
          {
            return result;
          }

          if (v50 == 2)
          {
            goto LABEL_611;
          }
        }

        ClampedStencilValue = 10;
        goto LABEL_212;
      }

      if (v50 != 2)
      {
        ClampedStencilValue = 32;
        goto LABEL_212;
      }

LABEL_72:
      ClampedStencilValue = 16;
      goto LABEL_212;
    }

    if (a2 <= 3008)
    {
      if (a2 != 2984)
      {
        if (a2 == 3008)
        {
          ClampedStencilValue = v16[2490];
          goto LABEL_212;
        }

        return result;
      }

      v112 = *v14;
      if (v112 <= 7)
      {
        v101 = a1 + (v112 << 6);
        v102 = 10384;
        goto LABEL_699;
      }

      return 4294967294;
    }

    if (a2 == 3009)
    {
      ClampedStencilValue = *(v16 + 1244);
      goto LABEL_212;
    }

    if (a2 != 3010)
    {
      if (a2 == 3152)
      {
        ClampedStencilValue = *(v16 + 1384);
        goto LABEL_212;
      }

      return result;
    }

    if ((*(v13 + 131) & 0x10) != 0)
    {
      gleUpdateAnyDrawBuffersFloat(a1, a6, a7, a8);
    }

    v109 = *(v13 + 32);
    if (v16[2662])
    {
      v109 = fminf(fmaxf(v109, *(a1 + 288)), *(a1 + 292));
    }

    v31 = v109;
LABEL_125:
    *a3 = v31;
    *a4 = 5130;
    result = 1;
    *a5 = 1;
    return result;
  }

  if (a2 < 0x4000)
  {
    if (a2 != 3553)
    {
      if (a2 != 5888)
      {
        return result;
      }

      goto LABEL_594;
    }

    v108 = *v14;
    if (v108 < 8)
    {
      ClampedStencilValue = (*(a1 + 76 * v108 + 15684) >> 3) & 1;
      goto LABEL_212;
    }

    if (!*(v13 + 160))
    {
      *(v13 + 160) = 1282;
    }

LABEL_660:
    *a3 = 0;
    return 1;
  }

  if ((a2 - 0x4000) < 8)
  {
    v73 = *(a1 + 14880);
    goto LABEL_526;
  }

  if (a2 == 32826)
  {
    ClampedStencilValue = v16[1];
    goto LABEL_212;
  }

  return result;
}

uint64_t gliQueryRendererInfo(void *a1, int a2)
{
  if (!a1)
  {
    return 10014;
  }

  *a1 = 0;
  Devices = gfxGetDevices();
  if (!Devices)
  {
    return 10015;
  }

  v5 = Devices;
  LODWORD(Devices) = 0;
  do
  {
    if ((*(v5 + 20) & a2) != 0)
    {
      Devices = (Devices + 1);
    }

    else
    {
      Devices = Devices;
    }

    v5 = *v5;
  }

  while (v5);
  if (!Devices)
  {
    return 0;
  }

  v6 = malloc_type_calloc(Devices, 0x88uLL, 0x8B91BE10uLL);
  if (!v6)
  {
    abort();
  }

  v7 = v6;
  v8 = gfxGetDevices();
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      if ((*(v9 + 20) & a2) != 0)
      {
        v11 = &v7[136 * v10];
        v12 = (*(*(v9 + 8) + 1080))(*(v9 + 24), v11);
        if (v12)
        {
          v14 = v12;
          free(v7);
          v7 = 0;
          goto LABEL_23;
        }

        *v11 = v11 + 136;
        *(v11 + 2) |= 0x20000u;
        ++v10;
      }

      v9 = *v9;
      if (!v9)
      {
        v13 = v10;
        goto LABEL_21;
      }
    }
  }

  v13 = 0;
LABEL_21:
  v14 = 0;
  *&v7[136 * v13 - 136] = 0;
LABEL_23:
  *a1 = v7;
  return v14;
}

uint64_t gliDestroyRendererInfo(void *a1)
{
  if (!a1)
  {
    return 10014;
  }

  free(a1);
  return 0;
}

uint64_t gliAttachDrawableWithOptions(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = a1 + 28652;
  if (*(a1 + 27648))
  {
    (*(a1 + 27752))(a1);
  }

  if (*(v10 + 1140) != 878944803)
  {
    return 10004;
  }

  if ((a2 == 0) == (a3 != 0))
  {
    return 10005;
  }

  if (*(a1 + 28992))
  {
    gleFallbackForceEnd(a1);
  }

  if ((a4 & 0x80000000) != 0 || *(v10 + 3844) <= a4)
  {
    return 10008;
  }

  *(v10 + 3846) = a4;
  v11 = *(v10 + 3847);
  if (v11 != a4)
  {
    (*(*(a1 + 29448) + 240))(*(a1 + 29016));
  }

  v12 = (*(*(a1 + 32512 + 1672 * a4 + 1648) + 1184))(*(a1 + 32512 + 1672 * a4), a2, a3, a5, a1 + 29632);
  v13 = v12;
  if (v12 <= 3 && *(v10 + 3847) != a4)
  {
    v16 = 1;
LABEL_34:
    v15 = 1;
    goto LABEL_35;
  }

  if (v12 > 2)
  {
    v16 = 0;
    v15 = 0;
    if (v12 == 3)
    {
LABEL_35:
      v14 = 1;
      goto LABEL_36;
    }

    if (v12 != 10016)
    {
      goto LABEL_45;
    }

    if (!a2)
    {
      v13 = 10016;
      goto LABEL_45;
    }

    v17 = *(v10 + 3845);
    v13 = 10016;
    if (v17 == 255 || v17 == a4)
    {
      goto LABEL_45;
    }

    if (v11 == a4)
    {
      (*(*(a1 + 29448) + 240))(*(a1 + 29016));
    }

    v18 = (*(*(a1 + 32512 + 1672 * v17 + 1648) + 1184))(*(a1 + 32512 + 1672 * v17), a2, a3, a5, a1 + 29632);
    v13 = v18;
    if (v18 > 3 || v17 == *(v10 + 3847))
    {
      if (v18 < 2)
      {
        v14 = 0;
        v22 = v17;
        v15 = 0;
        v16 = 0;
LABEL_57:
        a4 = v22;
        goto LABEL_36;
      }

      if (v18 == 3)
      {
        v22 = v17;
        v16 = 0;
        v15 = 0;
        goto LABEL_56;
      }

      v16 = 0;
      if (v18 != 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v16 = 1;
    }

    v22 = v17;
    v15 = 1;
LABEL_56:
    v14 = 1;
    goto LABEL_57;
  }

  if (v12 < 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_36:
    *v10 = 0;
    *(v10 + 1148) |= 0xC0000000;
    if (v16)
    {
      *(a1 + 1520) = vorrq_s8(*(a1 + 1520), xmmword_23A103710);
      *(a1 + 1536) = vorrq_s8(*(a1 + 1536), xmmword_23A103720);
      *(v10 + 1148) |= 0xDE3C0478;
      *(a1 + 28648) = 0;
      *(v10 + 28) = 0;
      *(v10 + 30) = 0;
      gleSwitchPlugin(a1, a4);
    }

    if (v15)
    {
      gleUpdatePluginConfig(a1);
    }

    if (*(a1 + 28960))
    {
      v19 = 0;
    }

    else
    {
      v19 = *(*(a1 + 29032) + 41);
    }

    v13 = 0;
    *(v10 + 3831) = v19;
    *(a1 + 29008) = a3;
    goto LABEL_46;
  }

  v16 = 0;
  if (v12 == 2)
  {
    goto LABEL_34;
  }

LABEL_45:
  LOWORD(a2) = 0;
  v14 = 0;
  *(a1 + 29008) = 0;
LABEL_46:
  *(v10 + 1176) = a2;
  gliUpdateDispatchState(a1, v14);
  if (!*(a1 + 28960) && *(v10 + 3825) && *(a1 + 29008))
  {
    *(v10 + 3818) = *(v10 + 3831);
    v21 = *(v10 + 3821);
    *(v10 + 3819) = v21;
    *(v10 + 3820) |= v21;
  }

  else
  {
    *(v10 + 3818) = 0;
  }

  return v13;
}

uint64_t gleUpdateDispatchCodeChange(unint64_t a1, char a2, unsigned int a3)
{
  v4 = a1 + 28652;
  if ((a2 & 4) != 0)
  {
    v6 = 0;
    *(a1 + 32482) = 0;
  }

  else
  {
    v5 = *(a1 + 32497);
    if (v5 == 255 || v5 == *(a1 + 32499))
    {
      a2 = 0;
      *(a1 + 32482) = 1;
      v6 = 1282;
    }

    else
    {
      v32 = *(a1 + 28960);
      if (v32)
      {
        v33 = *(v32 + 474);
        v34 = *(v32 + 476);
      }

      else
      {
        v33 = *(a1 + 29632);
        v34 = *(a1 + 29636);
      }

      v51[0] = v33;
      v51[1] = v34;
      v35 = (*(*(a1 + 1672 * v5 + 34160) + 1184))(*(a1 + 1672 * v5 + 32512), 92, v51, 0, 0);
      a2 = 0;
      if (v35 <= 3)
      {
        a2 = gleFallbackBegin(a1, a3);
      }

      v6 = 0;
    }
  }

  v7 = *(v4 + 3829);
  if ((a2 & 1) == v7)
  {
    if (v7 != *(*(a1 + 29032) + 101) && !*(a1 + 2276))
    {
      *(v4 + 1182) = 0;
      *(a1 + 2276) = 1;
      *v4 = 0;
      *(a1 + 1544) |= 0x40000000u;
    }
  }

  else
  {
    v8 = (a1 + 17985);
    if (a2)
    {
      *(v4 + 3829) = 1;
    }

    else
    {
      *(v4 + 3829) = 0;
      if (*(a1 + 2276) != 1)
      {
        *(v4 + 1182) = 0;
        *(a1 + 2276) = 1;
      }

      *v4 = 0;
      *(a1 + 1544) |= 0x40000000u;
    }

    gleUpdateContextStateData(a1, 0);
    v9 = *(v4 + 3829);
    v10 = v9 != *(*(a1 + 29032) + 101);
    v11 = v9 == 0;
    v12 = *(v4 + 1144) & 0xFFFFFFBE;
    if (!v11)
    {
      ++v12;
    }

    *(v4 + 1144) = v12 | (v10 << 6);
    gleSetColorMaterialEnable(a1);
    gleUpdateDrawArraysFuncs(a1);
    gleSelectVertexSubmitFunc(a1);
    gleSelectPrimitiveFunc(a1);
    v13 = *(a1 + 17986);
    if (*(v4 + 3829))
    {
      if (v13 == 0xFFFF && !*v8)
      {
        v36 = *(a1 + 26432);
        LODWORD(v37) = *(v36 + 42);
        if (v37 != 0xFFFF && !*(v36 + 41))
        {
          v38 = (a1 + 33584);
          v39 = *(v4 + 3844);
          if (*(v4 + 3844))
          {
            v40 = (v39 + 1) & 0x1FE;
            v41 = xmmword_23A102AE0;
            v42 = vdupq_n_s64(v39 - 1);
            v43 = vdupq_n_s64(2uLL);
            v44 = (a1 + 33584);
            do
            {
              v45 = vmovn_s64(vcgeq_u64(v42, v41));
              if (v45.i8[0])
              {
                *v44 = 0;
              }

              if (v45.i8[4])
              {
                v44[209] = 0;
              }

              v41 = vaddq_s64(v41, v43);
              v44 += 418;
              v40 -= 2;
            }

            while (v40);
            v37 = *(v36 + 42);
          }

          *(a1 + 17986) = v37;
          *v4 = 0;
          *(a1 + 1524) |= 0x40000000u;
          (*(*(a1 + 29496) + 168))(*(a1 + 29464), 0);
          v46 = *(v4 + 3844);
          if (*(v4 + 3844))
          {
            v47 = *(a1 + 26432);
            v48 = 40;
            do
            {
              *v38 = *(*(v47 + 160) + v48);
              v48 += 8;
              v38 += 209;
              --v46;
            }

            while (v46);
          }
        }
      }

      v14 = *(a1 + 26432);
      *v8 = *(v14 + 41);
      v15 = *(v14 + 42);
      *(a1 + 17986) = v15;
      if (v15 != 0xFFFF && !*(v14 + 41))
      {
        v16 = *(a1 + 24768);
        if (!v16)
        {
          v17 = *(a1 + 24776);
          if (v17)
          {
            v18 = v17 + 40;
            v19 = 3;
            while (1)
            {
              v16 = *(v18 + 8 * v19);
              if (v16)
              {
                break;
              }

              if (--v19 == -1)
              {
                goto LABEL_27;
              }
            }
          }

          else
          {
LABEL_27:
            v16 = 0;
          }
        }

        for (i = 0; i != 5; ++i)
        {
          if ((*(v16 + 3724) >> i))
          {
            v21 = *(*(a1 + 26432) + 8 * i + 128);
            if (*(v21 + 165))
            {
              if (!*(v21 + 192))
              {
                gfxWaitBufferOnDevices();
              }
            }
          }
        }

        *v4 = 0;
        *(a1 + 1524) |= 0x40000000u;
        (*(*(a1 + 29496) + 168))(*(a1 + 29464), 0);
      }
    }

    else if (v13 != 0xFFFF)
    {
      v22 = *(a1 + 24768);
      if (!v22)
      {
        v22 = *(a1 + 24776);
        if (v22)
        {
          v49 = v22 + 40;
          v50 = 3;
          while (1)
          {
            v22 = *(v49 + 8 * v50);
            if (v22)
            {
              break;
            }

            if (--v50 == -1)
            {
              v22 = 0;
              break;
            }
          }
        }
      }

      v23 = 0;
      *v8 = 1;
      *(a1 + 17986) = -1;
      do
      {
        if ((*(v22 + 3724) >> v23))
        {
          v24 = *(*(a1 + 26432) + 8 * v23 + 128);
          v25 = *(a1 + 29024);
          *(v24 + 167) = 0;
          *(v24 + 192) = v25;
          v26 = *(a1 + 26384);
          if (v26)
          {
            *(v26 + 1216) = 0;
          }
        }

        ++v23;
      }

      while (v23 != 5);
      *v4 = 0;
      *(a1 + 1524) |= 0x40000000u;
      (*(*(a1 + 29496) + 168))(*(a1 + 29464), 0);
      gleResetTransformFeedbackBufferCachePointers(a1);
    }

    v27 = *(a1 + 25960);
    if (*(v4 + 3829))
    {
      if (v27)
      {
        gleRestartPluginQuery(a1, v27 + 40);
      }

      v28 = *(a1 + 25968);
      if (v28)
      {
        gleRestartPluginQuery(a1, v28 + 40);
      }
    }

    else
    {
      if (v27 && *(v27 + 232))
      {
        gleSynchronizePluginQuery(a1, v27 + 40);
      }

      v29 = *(a1 + 25968);
      if (v29 && *(v29 + 232))
      {
        gleSynchronizePluginQuery(a1, v29 + 40);
      }
    }
  }

  return v6;
}

uint64_t glScissor_Exec(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return glScissorArrayv_Core(a1, 0, 1, v6);
}

uint64_t glViewport_Exec(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v7 = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return glViewportArrayv_Core(a1, 0, 1, v6);
}

float glGetFloatv_Exec(uint64_t a1, int a2, float *a3, double a4, double a5, double a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 0;
  memset(v19, 0, sizeof(v19));
  State = gleGetState(a1, a2, v19, &v17, &v18, 0.0, a5, a6);
  if (State == -2)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v10 = 1282;
    goto LABEL_7;
  }

  if (State == -1)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v10 = 1280;
LABEL_7:
    *(a1 + 29832) = v10;
    return result;
  }

  if (v17 == 5124)
  {
    if (State >= 1)
    {
      v11 = State;
      v12 = v19;
      do
      {
        v13 = *v12++;
        result = v13;
        *a3++ = v13;
        --v11;
      }

      while (v11);
    }
  }

  else if (State >= 1)
  {
    v14 = State;
    v15 = v19;
    do
    {
      v16 = *v15++;
      result = v16;
      *a3++ = result;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t glGetString_Exec(uint64_t a1, int a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 28672);
  if (a2 > 7939)
  {
    if (a2 > 35357)
    {
      if (a2 == 35358)
      {
        v4 = a1 + 31894;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        gleGetFilteredExtensions(a1, &v35);
        if (v3[3829] - 2 > 2)
        {
          v9 = 0;
        }

        else
        {
          v9 = dword_23A102BC8[(v3[3829] - 2)];
        }

        v12 = 0;
        v13 = v3 + 3222;
        do
        {
          v14 = &(&gleExtensionTable)[2 * v12];
          if ((v14[1] & v9) != 0 && (v14[1] & 0x100) != 0)
          {
            v16 = *(v14 + 6);
            if (v16 == -1 || ((*(&v35 + (v16 >> 5)) >> v16) & 1) != 0)
            {
              v17 = *v14;
              v18 = **v14;
              if (v18)
              {
                v19 = (v17 + 1);
                do
                {
                  *v13++ = v18;
                  v20 = *v19++;
                  LOBYTE(v18) = v20;
                }

                while (v20);
              }

              *v13++ = 32;
            }
          }

          ++v12;
        }

        while (v12 != 244);
        *v13 = 0;
      }

      else
      {
        if (a2 != 35724 || *(a1 + 32501) == 2)
        {
          goto LABEL_17;
        }

        gleDeriveVersion(a1);
        v21 = v3[3829];
        v22 = &off_278B46998;
        v23 = 7;
        while (1)
        {
          if (*(v22 - 2) == v21)
          {
            v24 = *(v22 - 1);
            if (!v24)
            {
              break;
            }

            v25 = strlen(*(v22 - 1));
            if (!memcmp((a1 + 32406), v24, v25))
            {
              break;
            }
          }

          v22 += 3;
          if (!--v23)
          {
            return 0;
          }
        }

        return *v22;
      }

      return v4;
    }

    if (a2 != 7940)
    {
      if (a2 == 34932)
      {
        return *(a1 + 24192);
      }

      goto LABEL_17;
    }
  }

  else if ((a2 - 7936) >= 2)
  {
    if (a2 != 7938)
    {
      if (a2 == 7939)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        gleGetFilteredExtensions(a1, &v35);
        v4 = (v3 + 1174);
        if (v3[3829] - 2 > 2)
        {
          v5 = 1;
        }

        else
        {
          v5 = dword_23A102BC8[(v3[3829] - 2)];
        }

        v26 = 0;
        v27 = v3 + 1174;
        while (1)
        {
          v28 = &(&gleExtensionTable)[2 * v26];
          if ((v28[1] & v5) != 0 && (v28[1] & 0x100) == 0)
          {
            v30 = *(v28 + 6);
            if (v30 == -1)
            {
              v31 = *v28;
LABEL_59:
              v32 = *v31;
              if (*v31)
              {
                v33 = (v31 + 1);
                do
                {
                  *v27++ = v32;
                  v34 = *v33++;
                  v32 = v34;
                }

                while (v34);
              }

              *v27++ = 32;
              goto LABEL_63;
            }

            if ((*(&v35 + (v30 >> 5)) >> v30))
            {
              v31 = *v28;
              if (v30 == 1 && (*(*(a1 + 19296) + 344) & 2) != 0)
              {
                v31 = "GL_IMG_texture_format_BGRA8888";
              }

              goto LABEL_59;
            }
          }

LABEL_63:
          if (++v26 == 244)
          {
            *v27 = 0;
            return v4;
          }
        }
      }

LABEL_17:
      if (!*(a1 + 29832))
      {
        v4 = 0;
        *(a1 + 29832) = 1280;
        return v4;
      }

      return 0;
    }

    gleDeriveVersion(a1);
    v10 = (*(*(a1 + 29496) + 176))(*(*(a1 + 1672 * v3[3828] + 34168) + 24), 7938);
    v4 = a1 + 32410;
    if (v3[3829] == 2)
    {
      v11 = "OpenGL ES-CM ";
    }

    else
    {
      v11 = "OpenGL ES ";
    }

    snprintf_l((a1 + 32410), 0x3CuLL, 0, "%s%s %s", v11, (a1 + 32406), v10);
    return v4;
  }

  v6 = *(*(a1 + 29496) + 176);
  v7 = *(*(a1 + 1672 * *(a1 + 32500) + 34168) + 24);

  return v6(v7);
}

uint64_t glActiveTexture_Exec(uint64_t result, int a2)
{
  if (a2 - 33984 < 0 || a2 - 33984 >= *(*(result + 29480) + 154))
  {
    if (!*(result + 29832))
    {
      *(result + 29832) = 1280;
    }
  }

  else
  {
    *(result + 23768) = a2 + 31552;
    if ((*(result + 20484) & 0xFFFFFFF8) == 0x10)
    {
      *(result + 20484) = a2 - 33968;
      return gleUpdateMatrixMode(result);
    }
  }

  return result;
}

void glGenTextures_Exec(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 19296) + 324));
    v6 = gleGenHashNames(*(a1 + 19296) + 72, a2);
    os_unfair_lock_unlock((*(a1 + 19296) + 324));
    if (v6)
    {
      v7 = a2 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = (a2 + 3) & 0xFFFFFFFC;
      v9 = vdupq_n_s64(a2 - 1);
      v10 = xmmword_23A102AF0;
      v11 = xmmword_23A102AE0;
      v12 = (a3 + 8);
      v13 = vdupq_n_s64(4uLL);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v9, v11));
        if (vuzp1_s16(v14, *v9.i8).u8[0])
        {
          *(v12 - 2) = v6;
        }

        if (vuzp1_s16(v14, *&v9).i8[2])
        {
          *(v12 - 1) = v6 + 1;
        }

        if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
        {
          *v12 = v6 + 2;
          v12[1] = v6 + 3;
        }

        v10 = vaddq_s64(v10, v13);
        v11 = vaddq_s64(v11, v13);
        v6 += 4;
        v12 += 4;
        v8 -= 4;
      }

      while (v8);
    }
  }
}

uint64_t gleGenHashNames(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    v8 = gfxLibAlloc();
    *v8 = 0;
LABEL_8:
    v6 = 1;
    *(v8 + 8) = 1;
    *(v8 + 12) = a2;
    *(a1 + 16) = v8;
    return v6;
  }

  v5 = *(v4 + 2);
  if (v5 != a2 + 1)
  {
    if (v5 > a2)
    {
      v8 = gfxLibAlloc();
      *v8 = v4;
      goto LABEL_8;
    }

    while (1)
    {
      v9 = *(v4 + 3);
      v6 = v9 + v5;
      v10 = v6 + a2;
      if (__CFADD__(v6, a2))
      {
        break;
      }

      v11 = v4;
      v4 = *v4;
      if (!v4 || (v5 = *(v4 + 2), v10 < v5))
      {
        *(v11 + 3) = v9 + a2;
        return v6;
      }

      if (v10 == v5)
      {
        *(v11 + 3) = v9 + a2 + *(v4 + 3);
        *v11 = *v4;
        MEMORY[0x23EE831E0](v4);
        return v6;
      }
    }

    return 0;
  }

  v6 = 1;
  v7 = *(v4 + 3) + a2;
  *(v4 + 2) = 1;
  *(v4 + 3) = v7;
  return v6;
}

void glBindTexture_Exec(uint64_t a1, int a2, int a3)
{
  v5 = (a1 + 29832);
  if (a2 > 35863)
  {
    if (a2 == 35866 && (*(a1 + 32501) & 0xFE) != 2)
    {
      v6 = 5;
      goto LABEL_19;
    }
  }

  else if (a2 > 34036)
  {
    if (a2 == 34067 && *(a1 + 32501) != 2)
    {
      v6 = 0;
      goto LABEL_19;
    }
  }

  else if (a2 != 3552)
  {
    if (a2 == 3553)
    {
      v6 = 3;
      goto LABEL_19;
    }

    if (a2 == 32879 && (*(a1 + 32501) & 0xFE) != 2)
    {
      v6 = 1;
LABEL_19:
      os_unfair_lock_lock((*(a1 + 19296) + 324));
      gleBindTexture(a1, v6, a3, *(a1 + 23768));
      v7 = (*(a1 + 19296) + 324);

      os_unfair_lock_unlock(v7);
      return;
    }
  }

  if (!*v5)
  {
    *v5 = 1280;
  }
}

void gleBindTexture(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  v7 = a1 + 28652;
  if (a3)
  {
    v9 = *(a1 + 19296);
    v10 = gleLookupHashObject(v9 + 72, a3);
    if (v10)
    {
      v11 = v10;
      if ((v10[101] & 0xE3FF) != a2)
      {
        if (!*(v7 + 1180))
        {
          *(v7 + 1180) = 1282;
        }

        return;
      }
    }

    else
    {
      TextureObject = gleCreateTextureObject(*(a1 + 19296), a2, a3);
      v11 = TextureObject;
      if (*(v7 + 3849) == 4)
      {
        *(TextureObject + 461) = 6403;
      }

      gleAddHashNameAndObject(a1, v9 + 72, TextureObject);
    }
  }

  else
  {
    v11 = *(a1 + 8 * a2 + 23592);
  }

  ++*(v11 + 5);
  v13 = a1 + 88 * a4 + 8 * a2;
  v14 = *(v13 + 20776);
  v15 = *(v14 + 20) - 1;
  *(v14 + 20) = v15;
  if (!v15)
  {
    gleUnbindTextureObject(a1, v14);
    gleFreeTextureObject(*(a1 + 19296), v14);
  }

  *(v13 + 20776) = v11;
  v16 = v11[72];
  if (!v16 || v16 == *(a1 + 29024))
  {
    v17 = *(v7 + 1172);
    v18 = *(*(a1 + 19296) + 4);
    if (v17 != v18)
    {
      v19 = *(a1 + 28960);
      v20 = *(a1 + 28968);
      if (*(a1 + 28960) != 0)
      {
        if (v19 && *(v19 + 556) != v17)
        {
          *v7 = 0;
          *(v7 + 1148) |= 0x50000000u;
        }

        if (v20 && *(v20 + 556) != v17)
        {
          *(v7 + 1148) |= 0x82000000;
        }

        if (v19 && *(v19 + 556) != v18)
        {
          if (v19 == v20)
          {
            v21 = 3;
          }

          else
          {
            v21 = 2;
          }

          gleUpdateFBODirtyStateForTexStampChange(a1, (v19 + 40), v21);
          *(v19 + 556) = *(*(a1 + 19296) + 4);
        }

        if (v20 != v19 && v20 && *(v20 + 556) != *(*(a1 + 19296) + 4))
        {
          gleUpdateFBODirtyStateForTexStampChange(a1, (v20 + 40), 1);
          *(v20 + 556) = *(*(a1 + 19296) + 4);
        }
      }

      gleUpdateCtxDirtyStateForTexStampChange(a1);
      *(v7 + 1172) = *(*(a1 + 19296) + 4);
    }
  }

  else
  {
    gleSynchronizePluginTextureLevels(a1, (v11 + 5));
  }

  if (a2 == 7)
  {
    v22 = v11[71];
    if (v22)
    {
      v23 = *(v22 + 192);
      if (v23)
      {
        if (v23 != *(a1 + 29024))
        {
          gleSynchronizePluginBufferStorage(a1, v22 + 40);
          if (*(v7 + 3844))
          {
            v24 = 0;
            v25 = v11 + 156;
            do
            {
              *v25 |= 8u;
              v25 += 24;
              ++v24;
            }

            while (v24 < *(v7 + 3844));
          }
        }
      }

      v26 = *(v7 + 3844);
      if (*(v7 + 3844))
      {
        v27 = 0;
        v28 = (v22 + 304);
        v29 = v11 + 156;
        do
        {
          v30 = *v28;
          v28 += 2;
          if (v30)
          {
            *v29 |= 8u;
            v26 = *(v7 + 3844);
          }

          ++v27;
          v29 += 24;
        }

        while (v27 < v26);
      }

      v31 = *(a1 + 23776) | (1 << a4);
    }

    else
    {
      v31 = *(a1 + 23776) & ~(1 << a4);
    }

    *(a1 + 23776) = v31;
  }

  if (((*(a1 + 8 * (a4 >> 4) + 14976) >> (4 * (a4 & 0xF))) & 0xF) == a2)
  {
    v32 = 1 << (a4 & 0xF);
    *(a1 + 1524) |= v32;
    *(a1 + 1536) |= v32;
    v33 = *(a1 + 1548) | 0x8000000;
  }

  else
  {
    v33 = *(a1 + 1548);
  }

  *v7 = 0;
  *(a1 + 1548) = v33 | 0x22000;
}

uint64_t *gleLookupHashObject(uint64_t a1, int a2)
{
  v2 = *(a1 + 24) & a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 8 * v2);
  if (!v4)
  {
    return 0;
  }

  if (*(v4 + 16) == a2)
  {
    return *(v3 + 8 * v2);
  }

  result = *(v3 + 8 * v2);
  while (1)
  {
    v6 = result;
    result = *result;
    if (!result)
    {
      break;
    }

    if (*(result + 4) == a2)
    {
      *v6 = *result;
      *result = v4;
      *(v3 + 8 * v2) = result;
      return result;
    }
  }

  return result;
}

uint64_t gleAddHashNameAndObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = gleAddHashName(a2, *(a3 + 16));
  gleAddHashObject(a2, a3);
  return v5;
}

uint64_t gleAddHashObject(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4 <= 0xFFFE && *(result + 28) > v4)
  {
    v5 = *(result + 8);
    result = gfxLibCalloc();
    if (result)
    {
      v6 = result;
      v7 = 0;
      v8 = (2 * v4) | 1;
      do
      {
        v9 = *(v5 + 8 * v7);
        if (v9)
        {
          do
          {
            v10 = v9[2] & v8;
            v11 = *v9;
            *v9 = *(result + 8 * v10);
            *(result + 8 * v10) = v9;
            v9 = v11;
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v4 + 1);
      *(v3 + 24) = v8;
      result = MEMORY[0x23EE831E0](v5);
      *(v3 + 8) = v6;
      LODWORD(v4) = (2 * v4) | 1;
    }
  }

  v12 = *(a2 + 16) & v4;
  v13 = *(v3 + 8);
  *a2 = *(v13 + 8 * v12);
  *(v13 + 8 * v12) = a2;
  ++*(v3 + 28);
  return result;
}

uint64_t glPixelStorei_Exec(uint64_t result, int a2, unsigned int a3)
{
  v3 = (result + 29832);
  if (a2 == 3333)
  {
    if (a3 <= 8 && ((1 << a3) & 0x116) != 0)
    {
      *(result + 18476) = a3;
      return result;
    }

    goto LABEL_40;
  }

  if (a2 == 3317)
  {
    if (a3 <= 8 && ((1 << a3) & 0x116) != 0)
    {
      *(result + 18512) = a3;
      return result;
    }

    goto LABEL_40;
  }

  if ((*(result + 32501) & 0xFE) != 2)
  {
    if (a2 > 3330)
    {
      if (a2 > 32876)
      {
        if (a2 == 32877)
        {
          if ((a3 & 0x80000000) == 0)
          {
            *(result + 18508) = a3;
            return result;
          }
        }

        else
        {
          if (a2 != 32878)
          {
            goto LABEL_10;
          }

          if ((a3 & 0x80000000) == 0)
          {
            *(result + 18492) = a3;
            return result;
          }
        }
      }

      else if (a2 == 3331)
      {
        if ((a3 & 0x80000000) == 0)
        {
          *(result + 18464) = a3;
          return result;
        }
      }

      else
      {
        if (a2 != 3332)
        {
          goto LABEL_10;
        }

        if ((a3 & 0x80000000) == 0)
        {
          *(result + 18468) = a3;
          return result;
        }
      }
    }

    else if (a2 > 3315)
    {
      if (a2 == 3316)
      {
        if ((a3 & 0x80000000) == 0)
        {
          *(result + 18504) = a3;
          return result;
        }
      }

      else
      {
        if (a2 != 3330)
        {
          goto LABEL_10;
        }

        if ((a3 & 0x80000000) == 0)
        {
          *(result + 18448) = a3;
          return result;
        }
      }
    }

    else if (a2 == 3314)
    {
      if ((a3 & 0x80000000) == 0)
      {
        *(result + 18484) = a3;
        return result;
      }
    }

    else
    {
      if (a2 != 3315)
      {
        goto LABEL_10;
      }

      if ((a3 & 0x80000000) == 0)
      {
        *(result + 18500) = a3;
        return result;
      }
    }

LABEL_40:
    if (!*v3)
    {
      v4 = 1281;
      goto LABEL_42;
    }

    return result;
  }

LABEL_10:
  if (!*v3)
  {
    v4 = 1280;
LABEL_42:
    *v3 = v4;
  }

  return result;
}

void glTexParameterI_Exec(uint64_t a1, int a2)
{
  v8 = OUTLINED_FUNCTION_16(a1, a2);
  if (!v8)
  {
    goto LABEL_86;
  }

  v9 = v8;
  if (!(!v7 & v6))
  {
    switch(v4)
    {
      case 36418:
        OUTLINED_FUNCTION_1_3();
        if (v7)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_9_1();
        v10 = 0;
        switch(v11)
        {
          case 0:
            break;
          case 1:
            v10 = 1;
            break;
          case 2:
            v10 = 2;
            break;
          case 3:
            v10 = 3;
            break;
          default:
            v10 = 4;
            break;
        }

        v56 = *(v9 + 896);
        if ((v56 & 7) == v10)
        {
          return;
        }

        LODWORD(v3) = 0;
        v53 = v56 & 0xFFF8 | v10;
        break;
      case 36419:
        OUTLINED_FUNCTION_1_3();
        if (v7)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_9_1();
        v22 = 0;
        switch(v23)
        {
          case 0:
            break;
          case 1:
            v22 = 1;
            break;
          case 2:
            v22 = 2;
            break;
          case 3:
            v22 = 3;
            break;
          default:
            v22 = 4;
            break;
        }

        v54 = *(v9 + 896);
        if (((v54 >> 3) & 7) == v22)
        {
          return;
        }

        LODWORD(v3) = 0;
        v53 = v54 & 0xFFC7 | (8 * v22);
        break;
      case 36420:
        OUTLINED_FUNCTION_1_3();
        if (v7)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_9_1();
        v40 = 0;
        switch(v41)
        {
          case 0:
            break;
          case 1:
            v40 = 1;
            break;
          case 2:
            v40 = 2;
            break;
          case 3:
            v40 = 3;
            break;
          default:
            v40 = 4;
            break;
        }

        v55 = *(v9 + 896);
        if (((v55 >> 6) & 7) == v40)
        {
          return;
        }

        LODWORD(v3) = 0;
        v53 = v55 & 0xFE3F | (v40 << 6);
        break;
      case 36421:
        OUTLINED_FUNCTION_1_3();
        if (v7)
        {
          goto LABEL_86;
        }

        OUTLINED_FUNCTION_9_1();
        v15 = 0;
        switch(v16)
        {
          case 0:
            break;
          case 1:
            v15 = 1;
            break;
          case 2:
            v15 = 2;
            break;
          case 3:
            v15 = 3;
            break;
          default:
            v15 = 4;
            break;
        }

        v52 = *(v9 + 896);
        if (((v52 >> 9) & 7) == v15)
        {
          return;
        }

        LODWORD(v3) = 0;
        v53 = v52 & 0xF1FF | (v15 << 9);
        break;
      case 36422:
        goto LABEL_86;
      default:
        JUMPOUT(0);
    }

    *(v9 + 896) = v53;
LABEL_94:
    OUTLINED_FUNCTION_8_1();
LABEL_95:
    v37 = OUTLINED_FUNCTION_0_7();
    v39 = v3;
    goto LABEL_96;
  }

  switch(v4)
  {
    case 4100:
      goto LABEL_86;
    case 10495:
      *(v8 + 792) = (4 * (*v3 & 1)) | *(v8 + 792) & 0xFB;
      return;
    case 32882:
      OUTLINED_FUNCTION_1_3();
      if (!v17)
      {
        OUTLINED_FUNCTION_11_1();
        if (v7 || (v18 - 34626) < 2)
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_15();
        if (v7)
        {
          goto LABEL_124;
        }

        OUTLINED_FUNCTION_14_0();
        if (v7)
        {
          goto LABEL_47;
        }

        OUTLINED_FUNCTION_13_0();
        if (v7)
        {
LABEL_124:
          v21 = *(v9 + 557) & 0xBF;
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_12_1();
        if (v7)
        {
LABEL_47:
          OUTLINED_FUNCTION_6_2();
          if (!v7)
          {
            v21 = *(v9 + 557) | 0x40;
LABEL_49:
            *(v9 + 557) = v21;
            if (v20 == *(v9 + 924))
            {
              return;
            }

            *(v9 + 924) = v20;
            goto LABEL_90;
          }

          goto LABEL_86;
        }
      }

      goto LABEL_86;
    case 32959:
      v36 = fminf(fmaxf(*v3, *(v2 + 288)), *(v2 + 292));
      if (*(v8 + 892) == v36)
      {
        return;
      }

      *(v8 + 892) = v36;
      OUTLINED_FUNCTION_8_1();
      goto LABEL_72;
    case 33169:
      v25 = *v3;
      if (*(v5 + 3849) - 3 < 2 || v25 >= 2)
      {
        goto LABEL_86;
      }

      if (v25 == (*(v8 + 898) & 1))
      {
        return;
      }

      if (v25)
      {
        OUTLINED_FUNCTION_26();
      }

      OUTLINED_FUNCTION_24();
      v27 = OUTLINED_FUNCTION_7_1();
      gleEvaluateTextureParameterChange(v27, v28, v29, v30, v31, v32);
LABEL_72:
      v37 = OUTLINED_FUNCTION_0_7();
      v39 = 0;
LABEL_96:

      gleDirtyTextureObjectCurrentBindPointsData(v37, v38, v39);
      return;
    case 34046:
      v51 = *v3;
      if (*v3 > 0)
      {
        if (*(v8 + 928) == v51)
        {
          return;
        }

        *(v8 + 928) = v51;
        goto LABEL_90;
      }

      if (*(v5 + 1180))
      {
        return;
      }

      v44 = 1281;
LABEL_88:
      *(v5 + 1180) = v44;
      return;
    case 34049:
      goto LABEL_86;
    case 34230:
      if ((*v3 != 0) != ((*(v8 + 898) & 2) == 0))
      {
        return;
      }

      OUTLINED_FUNCTION_24();
      v45 = OUTLINED_FUNCTION_7_1();
      gleEvaluateTextureParameterChange(v45, v46, v47, v48, v49, v50);
      LODWORD(v3) = 0;
      goto LABEL_95;
    case 34236:
      OUTLINED_FUNCTION_22();
      if (!v42)
      {
        if (v43 == *(v9 + 552))
        {
          return;
        }

        LODWORD(v3) = 0;
        *(v9 + 552) = v43;
        goto LABEL_94;
      }

      goto LABEL_86;
    case 34892:
      OUTLINED_FUNCTION_10_1();
      if (!v12)
      {
        OUTLINED_FUNCTION_27();
        if ((v13 & 0x10) != 0)
        {
          v14 = *v3;
          if (!*v3 || v14 == 34894)
          {
            if (v14 == *(v9 + 918))
            {
              return;
            }

            *(v9 + 918) = v14;
LABEL_90:
            if (*(v5 + 3844))
            {
              do
              {
                OUTLINED_FUNCTION_20();
              }

              while (!v7);
            }

            LODWORD(v3) = 1;
            goto LABEL_94;
          }
        }
      }

      goto LABEL_86;
    case 34893:
      OUTLINED_FUNCTION_10_1();
      if (!v33)
      {
        OUTLINED_FUNCTION_27();
        if ((v34 & 0x10) != 0)
        {
          v35 = *v3;
          if ((*v3 & 0xFFFFFFF8) == 0x200)
          {
            if (v35 == *(v9 + 916))
            {
              return;
            }

            *(v9 + 916) = v35;
            goto LABEL_90;
          }
        }
      }

      goto LABEL_86;
    case 35400:
      goto LABEL_86;
    case 35455:
      v24 = *v3;
      if (*v3 < 2)
      {
        if (v24 == ((*(v8 + 898) >> 2) & 1))
        {
          return;
        }

        OUTLINED_FUNCTION_29(v24);
        goto LABEL_94;
      }

      goto LABEL_86;
  }

  if (v4 != 35741 || (OUTLINED_FUNCTION_10_1(), !v7))
  {
LABEL_86:
    if (*(v5 + 1180))
    {
      return;
    }

    v44 = 1280;
    goto LABEL_88;
  }

  if (*(v9 + 740) != *v3 || *(v9 + 744) != v3[1] || *(v9 + 748) != v3[2] || *(v9 + 752) != v3[3])
  {
    *(v9 + 740) = *v3;
    *(v9 + 744) = v3[1];
    *(v9 + 748) = v3[2];
    *(v9 + 752) = v3[3];
  }
}

uint64_t gleLookUpNonProxyTexture(uint64_t a1, int a2)
{
  result = 0;
  v4 = a1 + 20776;
  if (a2 <= 34068)
  {
    if (a2 == 3553)
    {
      v5 = (v4 + 88 * *(a1 + 23768) + 24);
      return *v5 + 40;
    }

    if (a2 == 32879)
    {
      if ((*(a1 + 32501) & 0xFE) == 2)
      {
        return 0;
      }

      v5 = (v4 + 88 * *(a1 + 23768) + 8);
      return *v5 + 40;
    }
  }

  else
  {
    if ((a2 - 34069) < 6)
    {
      if (*(a1 + 32501) == 2)
      {
        return 0;
      }

      v5 = (v4 + 88 * *(a1 + 23768));
      return *v5 + 40;
    }

    if (a2 == 35866)
    {
      if ((*(a1 + 32501) & 0xFE) == 2)
      {
        return 0;
      }

      v5 = (v4 + 88 * *(a1 + 23768) + 40);
      return *v5 + 40;
    }
  }

  return result;
}

uint64_t glTexImage2D_Exec(uint64_t result, int a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, int a7, unsigned int a8, unsigned int a9, uint64_t a10)
{
  v10 = a8;
  v15 = result;
  v16 = a10;
  v17 = result + 18504;
  v74 = result + 28652;
  if (!a10 && *(result + 18518))
  {
    if (*(result + 29832))
    {
      return result;
    }

    v23 = 1281;
LABEL_17:
    *(v74 + 1180) = v23;
    return result;
  }

  if (*(result + 32501) == 3 && ((a4 & 0xFFFFFFFD) == 0x8C40 || (a8 | 2) == 0x8C42))
  {
    if (a4 != a8)
    {
      if (*(result + 29832))
      {
        return result;
      }

LABEL_16:
      v23 = 1282;
      goto LABEL_17;
    }

    if (a8 == 35904)
    {
      v10 = 6407;
    }

    else
    {
      v10 = 6408;
    }
  }

  v75 = 0;
  result = gleCheckTexImage2DArgs(result, a2, a3, a4, a5, a6, a7, v10, a9, &v75);
  if (result)
  {
    v18 = result;
    if (!*(result + 770))
    {
      v71 = a5;
      v19 = *(v15 + 19336);
      v68 = v19;
      v69 = v17;
      if (v19)
      {
        v20 = gleOffsetLimitStorage((v15 + 18484), v71, a6, v75, a10);
        v21 = v19;
        v22 = v71;
        result = gleHandleUnpackBufferInEngineNoSync(v15, v21, v20, (BYTE4(v75) & 0x1F) + 1, a10);
        v16 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v22 = v71;
      }

      if (*(v74 + 3851))
      {
        result = mach_absolute_time();
      }

      else
      {
        result = 0;
      }

      v24 = *(v18 + 768);
      if ((v24 & 0x1C00) == 0x1000)
      {
        goto LABEL_28;
      }

      if ((*(v18 + 768) & 0x1C00) == 0)
      {
        *(v18 + 768) = v24 | 0x1000;
        goto LABEL_28;
      }

      if ((*(v18 + 768) & 0xC00) == 0)
      {
LABEL_28:
        v67 = result;
        v25 = gleStandardizeIntegerFormat(v10);
        if ((*(v15 + 1540) & 4) != 0)
        {
          MatrixIdentifier = gleGenerateMatrixIdentifier(v15, v15 + 9488, v26, v27, v28);
          v29 = *(v69 + 648) & 0xFFFFFEFF | ((MatrixIdentifier != -1074791426) << 8);
          *(v69 + 648) = v29;
          *(v74 + 1080) = MatrixIdentifier;
        }

        else
        {
          v29 = *(v69 + 648);
        }

        v31 = v22;
        v32 = a6;
        if ((v29 & 6) != 0)
        {
          if ((v29 & 2) != 0)
          {
            v31 = v22;
            v32 = a6;
            if (*(v69 + 352) != 32790)
            {
              goto LABEL_39;
            }

            v33 = 18876;
            v34 = 18872;
          }

          else
          {
            v31 = v22;
            v32 = a6;
            if ((v29 & 4) == 0)
            {
              goto LABEL_39;
            }

            v31 = v22;
            v32 = a6;
            if (*(v69 + 424) != 32790)
            {
              goto LABEL_39;
            }

            v33 = 18948;
            v34 = 18944;
          }

          v31 = v22 - *(v15 + v34) + 1;
          v32 = a6 - *(v15 + v33) + 1;
        }

LABEL_39:
        if (v32)
        {
          v35 = v31;
        }

        else
        {
          v35 = 0;
        }

        if (v32)
        {
          v36 = a7;
        }

        else
        {
          v36 = 0;
        }

        if ((a2 - 34069) >= 6)
        {
          v37 = 0;
        }

        else
        {
          v37 = (a2 - 34069);
        }

        v38 = v18 + 480 * v37 + 32 * a3 + 1032;
        LOWORD(v61) = 256;
        v39 = gleEvaluateTextureImageChange(v15, v18, v38, v37, a3, v35, v32, 1, v36, a4, v25, a9, v61, v16);
        if (!v35)
        {
          result = 0;
          v51 = v74;
          goto LABEL_92;
        }

        if (!v16 || (v40 = *(v18 + 768), (v40 & 0x100) != 0) || !*(*(v15 + 29032) + 174) || (v41 = v35, a9 == 6656) && (*v69 & 7) != 0 || (*(v18 + 480 * v37 + 32 * a3 + 1043) & 1) != 0 || *(v18 + 976) > a3 || *(v18 + 978) < a3 || ((*(v18 + 2 * v37 + 984) >> a3) & 1) == 0)
        {
          v51 = v74;
          if (v68 && *(v68 + 192))
          {
            v55 = v39;
            gleSynchronizeBufferOnCurrentDevicesForRead(v15, v68 + 40);
            v39 = v55;
          }

          v42 = 1;
          v56 = v71;
          if (!v16)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v70 = v25;
          v42 = 1;
          if ((*(v18 + 898) & 1) != 0 && *(v18 + 884) == a3 && (v40 & 0xF) != 2)
          {
            v43 = v39;
            gleGenerateEmptyMipmaps(v15, v18, v37, a3, *(v18 + 975), 0, 0);
            v39 = v43;
            v42 = 0;
          }

          v66 = v39;
          v44 = *(v15 + 8 * *(v15 + 23768) + 23936);
          if (v44)
          {
            v45 = (v44 + 198);
          }

          else
          {
            v45 = (v18 + 926);
          }

          v46 = (*v45 & 1) == 0;
          v47 = *(v18 + 982);
          v48 = (v47 >> 15);
          v49 = (((v47 >> 13) & 1) - 1) & (v47 >> 15);
          v50 = v70;
          *(v18 + 968) = v70;
          *(v18 + 970) = a9;
          if (v68)
          {
            v63 = v46;
            v64 = (((v47 >> 13) & 1) - 1) & (v47 >> 15);
            v65 = v47 >> 15;
            result = (*(*(v15 + 29448) + 368))(*(v15 + 29016), *(v18 + 8 * *(v74 + 3847)), v37, a3);
            if (result)
            {
LABEL_70:
              v51 = v74;
              v39 = v66;
              *(v18 + 536) = *(v15 + 29024);
              *(v38 + 11) |= 0x40u;
              if ((v42 & 1) == 0)
              {
                v52 = *(v18 + 975);
                v53 = a3;
                if (v52 > a3)
                {
                  v54 = (32 * a3 + 480 * v37 + v18 + 1075);
                  do
                  {
                    *v54 |= 0x40u;
                    v54 += 32;
                    ++v53;
                  }

                  while (v53 < v52);
                }
              }

              goto LABEL_92;
            }

            v50 = v70;
            v49 = v64;
            v48 = v65;
            v46 = v63;
            if (*(v68 + 192))
            {
              gleSynchronizeBufferOnCurrentDevicesForRead(v15, v68 + 40);
              v46 = v63;
              v49 = v64;
              v48 = v65;
            }
          }

          result = (*(*(v15 + 29448) + 368))(*(v15 + 29016), *(v18 + 8 * *(v74 + 3847)), v37, a3, v48, v49, 0, v41, v32 | 0x100000000, __PAIR64__(a9, v50), v16, 0, 0, v46);
          if (result)
          {
            goto LABEL_70;
          }

          v51 = v74;
          v39 = v66;
          v56 = v71;
        }

        if ((*(v18 + 768) & 0x100) == 0)
        {
          v57 = v39;
          if ((*(v18 + 480 * v37 + 32 * a3 + 1043) & 1) != 0 || gfxAllocateTextureLevel())
          {
            LOBYTE(v62) = 1;
            gleTextureImagePut(v15, v18, v38, 0, 0, 0, v56, a6, 1, v75, v62, v15 + 18484, v16);
            *(v18 + 968) = *(v18 + 480 * v37 + 32 * a3 + 1048);
            *(v38 + 11) |= 0x10u;
            v51 = v74;
            *(v18 + 2 * v37 + 996) |= *(v18 + 2 * v37 + 984) & (1 << a3);
            v58 = v18 + 24 * *(v74 + 3847);
            *(v58 + 116) |= 4u;
            *(v58 + 2 * v37 + 104) |= 1 << a3;
          }

          else if (!*(v51 + 1180))
          {
            *(v51 + 1180) = 1285;
          }

          v39 = v57;
          goto LABEL_85;
        }

LABEL_84:
        *(v18 + 968) = 65538;
LABEL_85:
        if ((*(v18 + 480 * v37 + 32 * a3 + 1056) || (*(v18 + 768) & 0x100) != 0) && (*(v18 + 898) & 1) != 0 && *(v18 + 884) == a3)
        {
          v59 = v39;
          result = gleGenMipmaps(v15, v18, v37, a3, 1, v42);
          v39 = v59;
        }

        else
        {
          result = 0;
        }

LABEL_92:
        if ((v39 & 0xC0000001) != 0)
        {
          if (v39 < 0)
          {
            v60 = 134356992;
          }

          else
          {
            v60 = 139264;
          }

          *v51 = 0;
          *(v15 + 1548) |= v60;
        }

        else if (result == 1)
        {
          goto LABEL_99;
        }

        result = gleDirtyTextureLevelCurrentBindPointsGeom(v15, v18, v38);
LABEL_99:
        if (*(v51 + 3851))
        {
          result = mach_absolute_time();
          *(v15 + 19168) += result - v67;
        }

        return result;
      }

      if (*(v74 + 1180))
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  return result;
}

uint64_t gleLookUpTexture2D(uint64_t a1, int a2)
{
  v2 = a1 + 20776;
  if ((a2 - 34069) >= 6)
  {
    if (a2 == 3553)
    {
      v3 = (v2 + 88 * *(a1 + 23768) + 24);
      return *v3 + 40;
    }
  }

  else if (*(a1 + 32501) != 2)
  {
    v3 = (v2 + 88 * *(a1 + 23768));
    return *v3 + 40;
  }

  return 0;
}

uint64_t gleCheckTexImageArgs(uint64_t a1, unsigned int a2, int a3, int a4, unint64_t a5, int a6, int a7)
{
  v7 = a5;
  v8 = a1 + 28672;
  if ((a5 & 0x800000000000000) == 0)
  {
    v9 = *(a1 + 29832);
    if (*(a1 + 29832))
    {
      return 0;
    }

    if ((a5 & 0x4000000000000000) != 0)
    {
      v10 = 1282;
    }

    else
    {
      v10 = 1280;
    }

    goto LABEL_7;
  }

  if (a2 >= 0xF || a6)
  {
    v9 = *(a1 + 29832);
    if (*(a1 + 29832))
    {
      return 0;
    }

    v10 = 1281;
LABEL_7:
    *(v8 + 1160) = v10;
    return v9;
  }

  if (a3 > 35447)
  {
    switch(a3)
    {
      case 35448:
        v11 = *(a1 + 32501);
        if (a4 == 6403 && v11 == 4)
        {
          return 1;
        }

        goto LABEL_39;
      case 35904:
        v11 = *(a1 + 32501);
        if (v11 != 2 && v11 != 4 && (*(*(a1 + 29032) + 577) & 0x20) != 0)
        {
          v12 = 6407;
LABEL_29:
          if (a4 == v12)
          {
            return 1;
          }

          goto LABEL_39;
        }

LABEL_49:
        v9 = *(a1 + 29832);
        if (*(a1 + 29832))
        {
          return 0;
        }

        v10 = 1280;
        goto LABEL_7;
      case 35906:
        v11 = *(a1 + 32501);
        if (v11 != 2 && v11 != 4 && (*(*(a1 + 29032) + 577) & 0x20) != 0)
        {
          v12 = 6408;
          goto LABEL_29;
        }

        goto LABEL_49;
    }

LABEL_38:
    LOBYTE(v11) = *(a1 + 32501);
LABEL_39:
    if (a3 != a4 && (v11 & 0xFE) == 2)
    {
      goto LABEL_51;
    }

    v14 = 0;
    if (!gleCheckTexFormatArgs(a1, a3, a4, a5, a7, &v14))
    {
      return 0;
    }

    if (v14 != v7 >> 31)
    {
LABEL_51:
      v9 = *(v8 + 1160);
      if (*(v8 + 1160))
      {
        return 0;
      }

      v10 = 1282;
      goto LABEL_7;
    }

    return 1;
  }

  if (a3 != 6407)
  {
    if (a3 == 6408)
    {
      if (a4 == 32993)
      {
        return 1;
      }

      v11 = *(a1 + 32501);
      if ((a4 - 37903) <= 1 && (v11 - 3) < 2)
      {
        return 1;
      }

      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v11 = *(a1 + 32501);
  if ((v11 - 3) > 1)
  {
    goto LABEL_39;
  }

  v9 = 1;
  if (((a4 - 35429) > 0xF || ((1 << (a4 - 101)) & 0xFCFF) == 0) && ((a4 - 37875) > 0x1B || ((1 << (a4 + 13)) & 0x800073F) == 0) && a4 != 35359)
  {
    goto LABEL_39;
  }

  return v9;
}

uint64_t gleCreateTextureLevel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, char a8, unsigned int a9, unsigned int a10, uint64_t a11)
{
  v11 = a6;
  v12 = a5;
  if ((*(a3 + 11) & 0x40) != 0)
  {
    ++*(*(result + 19296) + 316);
  }

  if (a5 && a6 && a7)
  {
    if (!*(a2 + 554))
    {
      *(a2 + 554) = 1;
      v15 = *(a2 + 552);
      *(a2 + 880) = v15;
      if (v15 == 34237 && *(a2 + 776) == 0.0)
      {
        *(a2 + 880) = -31298;
      }
    }

    *(a3 + 4) = a5;
    *(a3 + 6) = a6;
    *(a3 + 8) = a7;
    *(a3 + 10) = a8;
    if (*(a2 + 769))
    {
      *(a3 + 11) = 32;
      *(a3 + 16) = a9;
      *(a3 + 18) = a10;
      *(a3 + 12) = 0;
      *a3 = 0;
      *(a3 + 24) = 0;
    }

    else
    {
      if (a9 == 6400 || !a11 || !*(result + 18518) || *(result + 18516) || (*(result + 19152) & 0x1FF) != 0 || (*(result + 19160) & 0xFF0FF1) != 0)
      {
        goto LABEL_27;
      }

      v20 = 0;
      v21 = 0;
      if ((*(a2 + 982) & 0x1800) == 0x1000)
      {
        v16 = 4;
      }

      else
      {
        v16 = 3;
        if ((*(a2 + 982) & 0x2000) != 0)
        {
          if ((*(a2 + 982) & 0x600) != 0)
          {
            v16 = 4;
          }

          else
          {
            v16 = 3;
          }
        }
      }

      result = glePixelPackSettings(result, a9, a10, a5, a6, (result + 18484), &v21 + 1, &v21, &v20 + 1, &v20, v16);
      v17 = HIDWORD(v20);
      v18 = HIDWORD(v20) / HIDWORD(v21);
      if (HIDWORD(v20) % HIDWORD(v21))
      {
LABEL_27:
        *(a3 + 11) = 32;
        *(a3 + 12) = v12;
        *(a3 + 14) = v11;
        *(a3 + 24) = 0;

        return gleTexLevelStorage(a4, a9, a10, (a3 + 16), (a3 + 18));
      }

      else
      {
        v19 = v21 + a11;
        *(a3 + 11) = 33;
        *(a3 + 14) = v20 / v17;
        *(a3 + 24) = v19;
        *(a3 + 16) = a9;
        *(a3 + 18) = a10;
        if (!a10)
        {
          LOWORD(v18) = v12;
        }

        *(a3 + 12) = v18;
      }
    }
  }

  else
  {
    *(a3 + 24) = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t glTexSubImage2D_Exec(uint64_t a1, int a2, uint64_t a3, unsigned int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, uint64_t a10)
{
  v16 = a1 + 29732;
  v53 = 0;
  if (*(a1 + 32501) == 3)
  {
    result = gleLookUpNonProxyTexture2D(a1, a2);
    if (result)
    {
      v18 = a2 - 34069;
      if ((a2 - 34069) >= 6)
      {
        v18 = 0;
      }

      if ((v19 = *(result + 30 * v18 + 2 * a3 + 560), a8 != 35904) && v19 == 35905 || a8 != 35906 && v19 == 35907)
      {
        if (!*(v16 + 100))
        {
          *(v16 + 100) = 1282;
        }

        return result;
      }
    }

    if (a8 == 35906)
    {
      v20 = 6408;
    }

    else
    {
      v20 = a8;
    }

    if (a8 == 35904)
    {
      a8 = 6407;
    }

    else
    {
      a8 = v20;
    }
  }

  v50 = a5;
  result = gleCheckTexSubImage2DArgs(a1, a2, a3, a4, a5, a6, a7, a8, a9, &v53);
  if (result)
  {
    v21 = result;
    if (!*(result + 770))
    {
      v22 = a10;
      v23 = *(a1 + 19336);
      if (!v23 || (v49 = result, v24 = gleOffsetLimitStorage((a1 + 18484), a6, a7, v53, a10), v21 = v49, result = gleHandleUnpackBufferInEngineNoSync(a1, v23, v24, (BYTE4(v53) & 0x1F) + 1, a10), (v22 = result) != 0))
      {
        if (a6 && a7)
        {
          v48 = v22;
          if (*(v16 + 2771))
          {
            v47 = mach_absolute_time();
          }

          else
          {
            v47 = 0;
          }

          v25 = gleStandardizeIntegerFormat(a8);
          if ((*(a1 + 1540) & 4) != 0)
          {
            MatrixIdentifier = gleGenerateMatrixIdentifier(a1, a1 + 9488, v26, v27, v28);
            *(a1 + 19152) = *(a1 + 19152) & 0xFFFFFEFF | ((MatrixIdentifier != -1074791426) << 8);
            *v16 = MatrixIdentifier;
          }

          if ((a2 - 34069) >= 6)
          {
            v30 = 0;
          }

          else
          {
            v30 = (a2 - 34069);
          }

          v31 = a9 == 6656 && (*(a1 + 18504) & 7) != 0 || checkFastPath(a1, v21 + 480 * v30 + 32 * a3 + 1032, a4, v50, 0, a6, a7, v53, v48, 2) == 0;
          if (!*(v21 + 536) && (*(v21 + 768) & 0x800) == 0)
          {
            gfxWaitTextureOnDevices();
          }

          if (v31 || *(v21 + 976) > a3 || *(v21 + 978) < a3 || ((1 << a3) & *(v21 + 2 * v30 + 984)) == 0)
          {
            if (v23 && *(v23 + 192))
            {
              gleSynchronizeBufferOnCurrentDevicesForRead(a1, v23 + 40);
            }

            v35 = 0;
          }

          else
          {
            v32 = *(a1 + 8 * *(a1 + 23768) + 23936);
            if (v32)
            {
              v33 = (v32 + 198);
            }

            else
            {
              v33 = (v21 + 926);
            }

            v34 = *v33;
            if ((*(v21 + 898) & 1) != 0 && *(v21 + 884) == a3 && (*(v21 + 768) & 0xF) != 2)
            {
              v43 = *v33;
              gleGenerateEmptyMipmaps(a1, v21, v30, a3, *(v21 + 975), 0, 0);
              v34 = v43;
              v46 = 0;
              v35 = 1;
            }

            else
            {
              v35 = 0;
              v46 = 1;
            }

            v36 = (v34 & 1) == 0;
            *(v21 + 968) = v25;
            *(v21 + 970) = a9;
            if (v23)
            {
              v45 = (v34 & 1) == 0;
              result = (*(*(a1 + 29448) + 368))(*(a1 + 29016), *(v21 + 8 * *(v16 + 2767)), v30, a3, a4, v50, 0, a6, a7 | 0x100000000, __PAIR64__(a9, v25), v48, 0, *(v23 + 40 + 8 * *(v16 + 2767)), v36);
              if (result)
              {
                goto LABEL_55;
              }

              v36 = v45;
              if (*(v23 + 192))
              {
                gleSynchronizeBufferOnCurrentDevicesForRead(a1, v23 + 40);
                v36 = v45;
              }
            }

            result = (*(*(a1 + 29448) + 368))(*(a1 + 29016), *(v21 + 8 * *(v16 + 2767)), v30, a3, a4, v50, 0, a6, a7 | 0x100000000, __PAIR64__(a9, v25), v48, 0, 0, v36);
            if (result)
            {
LABEL_55:
              if ((*(v21 + 768) & 0x800) == 0)
              {
                *(v21 + 536) = *(a1 + 29024);
                v37 = *(v21 + 480 * v30 + 32 * a3 + 1043);
                if ((v37 & 0x10) != 0)
                {
                  v38 = v46;
                  if ((*(v21 + 480 * v30 + 32 * a3 + 1043) & 9) == 0)
                  {
                    result = gfxFreeTextureLevel();
                    v37 = *(v21 + 480 * v30 + 32 * a3 + 1043);
                  }

                  v37 &= ~0x10u;
                  *(v21 + 2 * v30 + 996) &= ~(1 << a3);
                }

                else
                {
                  v38 = v46;
                }

                *(v21 + 480 * v30 + 32 * a3 + 1043) = v37 | 0x40;
                if ((v38 & 1) == 0)
                {
                  v41 = *(v21 + 975);
                  if (v41 > a3)
                  {
                    v42 = (32 * a3 + 480 * v30 + v21 + 1075);
                    do
                    {
                      *v42 |= 0x40u;
                      v42 += 32;
                      LODWORD(a3) = a3 + 1;
                    }

                    while (a3 < v41);
                  }
                }
              }

LABEL_80:
              if (*(v16 + 2771))
              {
                result = mach_absolute_time();
                *(a1 + 19168) += result - v47;
              }

              return result;
            }
          }

          v39 = *(v21 + 480 * v30 + 32 * a3 + 1043);
          if ((v39 & 0x40) != 0)
          {
            gleSynchronizeTextureLevelOnCurrentDevices(a1, v21);
          }

          else if ((*(v21 + 480 * v30 + 32 * a3 + 1043) & 0x10) == 0)
          {
            if (!*(v21 + 480 * v30 + 32 * a3 + 1056))
            {
              if (!gfxAllocateTextureLevel())
              {
                if (!*(v16 + 100))
                {
                  *(v16 + 100) = 1285;
                }

                goto LABEL_69;
              }

              v39 = *(v21 + 480 * v30 + 32 * a3 + 1043);
            }

            *(v21 + 480 * v30 + 32 * a3 + 1043) = v39 | 0x10;
          }

LABEL_69:
          gfxModifyPluginTextureLevel();
          if ((*(v21 + 768) & 0x800) == 0)
          {
            (*(*(a1 + 29496) + 280))(*(a1 + 29464), 1, 0, *(v21 + 8 * *(v16 + 2768)));
          }

          if ((*(v21 + 480 * v30 + 32 * a3 + 1043) & 0x10) != 0)
          {
            if ((*(v21 + 982) & 0x600) != 0)
            {
              v40 = *(v21 + 480 * v30 + 32 * a3 + 1042);
            }

            else
            {
              v40 = 0;
            }

            LOBYTE(v44) = 1;
            gleTextureImagePut(a1, v21, v21 + 480 * v30 + 32 * a3 + 1032, *(v21 + 480 * v30 + 32 * a3 + 1042) + a4, v40 + v50, 0, a6, a7, 1, v53, v44, a1 + 18484, v48);
          }

          if ((*(v21 + 898) & 1) == 0 || *(v21 + 884) != a3 || (result = gleGenMipmaps(a1, v21, v30, a3, 1, v35 == 0), !result))
          {
            result = gleDirtyTextureLevelCurrentBindPointsData(a1, v21, v21 + 480 * v30 + 32 * a3 + 1032);
          }

          goto LABEL_80;
        }
      }
    }
  }

  return result;
}

uint64_t gleCheckTexSubImage2DArgs(uint64_t a1, int a2, unsigned int a3, int a4, int a5, int a6, int a7, int a8, int a9, unint64_t *a10)
{
  v15 = gleLookUpNonProxyTexture2D(a1, a2);
  v16 = glePixelStorageFromFormatType(a1, a8, a9);
  *a10 = v16;
  if (!v15)
  {
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v23 = 1280;
      goto LABEL_34;
    }

    return 0;
  }

  v17 = v16;
  if (a8 == 35359 && ((a6 & 1) != 0 || a3 || (a4 & 1) != 0 || (*(v15 + 768) & 0xF) == 0))
  {
    goto LABEL_31;
  }

  v18 = *(v15 + 772);
  v19 = v18 == 6402 || v18 == 34041;
  v20 = v19;
  v21 = a8 == 6402 || a8 == 34041;
  v22 = !v21;
  if (v22 == v20)
  {
    goto LABEL_31;
  }

  if ((v16 & 0x800000000000000) == 0)
  {
    if (!*(a1 + 29832))
    {
      v15 = 0;
      if ((v16 & 0x4000000000000000) != 0)
      {
        v36 = 1282;
      }

      else
      {
        v36 = 1280;
      }

      goto LABEL_83;
    }

    return 0;
  }

  if (a3 >= 0xF || a2 == 34037 && a3)
  {
LABEL_24:
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v23 = 1281;
LABEL_34:
      *(a1 + 29832) = v23;
      return v15;
    }

    return 0;
  }

  v24 = a2 - 34069;
  if ((a2 - 34069) >= 6)
  {
    v24 = 0;
  }

  v25 = a3;
  v26 = v15 + 480 * v24 + 32 * a3;
  if ((*(v26 + 1043) & 0x20) == 0)
  {
    goto LABEL_31;
  }

  v40 = 0;
  v28 = *(v15 + 30 * v24 + 2 * v25 + 560);
  if (v28 == 32856 && *(v26 + 1048) != a8 || (a8 == 35359 || a8 == 34233) && *(v26 + 1050) != a9)
  {
    goto LABEL_88;
  }

  if (!gleCheckTexFormatArgs(a1, v28, a8, v16, 1, &v40))
  {
    return 0;
  }

  if (v40 != v17 >> 31)
  {
LABEL_88:
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v36 = 1282;
LABEL_83:
      *(a1 + 29832) = v36;
      return v15;
    }

    return 0;
  }

  v29 = a7;
  if (*(v26 + 1050))
  {
    goto LABEL_44;
  }

  if ((a6 & 3) != 0 && a5 | a4 && a6 + a4 != *(v26 + 1036))
  {
LABEL_31:
    if (!*(a1 + 29832))
    {
      v15 = 0;
      v23 = 1282;
      goto LABEL_34;
    }

    return 0;
  }

  if ((a7 & 3) != 0)
  {
    if (a5 | a4)
    {
      v33 = a7 + a5 == *(v26 + 1038);
    }

    else
    {
      v33 = 1;
    }

    v34 = v33;
    if ((a4 & 3) != 0 || (v34 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((a4 & 3) != 0)
  {
    goto LABEL_31;
  }

  if ((a5 & 3) != 0)
  {
    goto LABEL_31;
  }

LABEL_44:
  v30 = *(a1 + 19152);
  if ((v30 & 6) != 0)
  {
    if ((v30 & 2) != 0)
    {
      if (*(a1 + 18856) == 32790)
      {
        v31 = 18876;
        v32 = 18872;
        goto LABEL_64;
      }
    }

    else if ((v30 & 4) != 0 && *(a1 + 18928) == 32790)
    {
      v31 = 18948;
      v32 = 18944;
LABEL_64:
      a6 = a6 - *(a1 + v32) + 1;
      v29 = a7 - *(a1 + v31) + 1;
    }
  }

  if (a6 < 0)
  {
    goto LABEL_24;
  }

  v35 = *(v26 + 1042);
  if (-v35 > a4 || a6 + a4 > *(v26 + 1036) + v35)
  {
    goto LABEL_24;
  }

  if (a2 == 35864)
  {
    if ((v29 | a5) < 0 || v29 + a5 > *(v26 + 1038))
    {
      goto LABEL_24;
    }
  }

  else if (v29 < 0 || -v35 > a5 || v29 + a5 > *(v26 + 1038) + v35)
  {
    goto LABEL_24;
  }

  return v15;
}

uint64_t gleLookUpNonProxyTexture2D(uint64_t a1, int a2)
{
  v2 = a1 + 20776;
  if ((a2 - 34069) >= 6)
  {
    if (a2 == 3553)
    {
      v3 = (v2 + 88 * *(a1 + 23768) + 24);
      return *v3 + 40;
    }
  }

  else if (*(a1 + 32501) != 2)
  {
    v3 = (v2 + 88 * *(a1 + 23768));
    return *v3 + 40;
  }

  return 0;
}

uint64_t checkFastPath(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, unint64_t a8, uint64_t a9, char a10)
{
  if ((*(a2 + 11) & 1) == 0)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v18 = glePixelBytes(*(a2 + 16), *(a2 + 18));
  v22 = gleRowBytes(*(a2 + 16), *(a2 + 18), *(a2 + 12));
  v19 = *(a2 + 24) + (a3 + (a4 + *(a2 + 14) * a5) * *(a2 + 12)) * v18;
  glePixelStorageSettings(a1, a8, a6, a7, (a1 + 18484), &v24, &v23 + 1, &v24 + 1, &v23, a10);
  result = 0;
  if (a9 + HIDWORD(v23) != v19 || HIDWORD(v24) != v22)
  {
    return 1;
  }

  return result;
}

uint64_t glMatrixMode_Exec(uint64_t result, int a2)
{
  if (a2 <= 34879)
  {
    if (a2 > 34057)
    {
      if ((a2 - 34594) < 2)
      {
        v2 = -34588;
        goto LABEL_11;
      }

      if (a2 == 34058)
      {
        v3 = 5;
        goto LABEL_12;
      }
    }

    else
    {
      switch(a2)
      {
        case 5888:
          v3 = 4;
          goto LABEL_12;
        case 5889:
          v3 = 3;
          goto LABEL_12;
        case 5890:
          v3 = *(result + 23768) + 16;
LABEL_12:
          *(result + 20484) = v3;
          return gleUpdateMatrixMode(result);
      }
    }
  }

  else
  {
    if ((a2 - 35008) < 8)
    {
      v2 = -35000;
LABEL_11:
      v3 = a2 + v2;
      goto LABEL_12;
    }

    if (a2 == 34880)
    {
      v3 = *(result + 20495) + 5;
      goto LABEL_12;
    }
  }

  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

uint64_t glLoadIdentity_Exec(uint64_t result)
{
  v1 = (result + 28652);
  v2 = result + 20484;
  if (*(result + 20484) < 24)
  {
    v3 = result;
    v4 = *(result + 19976);
    result = gleMakeIdentityMatrix(v4);
    v5 = *(v2 + 4);
    *(v3 + 1528) |= v5;
    *v1 = 0;
    *(v3 + 1540) |= v5;
    if ((v5 & 0xFFFFFC & *(v3 + 2216)) != 0)
    {
      v6 = *(v3 + 19984);
      *v6 = *v4;
      v6[1] = v4[1];
      v6[2] = v4[2];
      v6[3] = v4[3];
      v1[269] = -1074791426;
      v7 = *(v3 + 1544) & ~(v5 & 0xFFFFFC);
      v5 &= 0xFF000003;
    }

    else
    {
      v7 = *(v3 + 1544);
    }

    *v1 = 0;
    *(v3 + 1544) = v7 | v5;
  }

  else if (!*(result + 29832))
  {
    *(result + 29832) = 1282;
  }

  return result;
}

int8x8_t glOrtho_Exec(uint64_t a1, int8x8_t result, double a3, double a4, double a5, double a6, double a7)
{
  if (*(a1 + 20484) >= 24)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v13 = 1282;
LABEL_16:
    *(a1 + 29832) = v13;
    return result;
  }

  v7 = a3 - *&result;
  v8 = -v7;
  if (v7 >= 0.0)
  {
    v8 = a3 - *&result;
  }

  if (v8 >= 0.000005)
  {
    v9 = a5 - a4;
    v10 = -v9;
    if (v9 >= 0.0)
    {
      v10 = a5 - a4;
    }

    if (v10 >= 0.000005)
    {
      v11 = a6 - a7;
      v12 = -v11;
      if (v11 >= 0.0)
      {
        v12 = a6 - a7;
      }

      if (v12 >= 0.000005)
      {
        v14 = *(a1 + 19976);
        v15 = 1.0 / v7;
        v16 = 1.0 / v9;
        v17 = -((*&result + a3) * v15);
        v18 = -((a4 + a5) * v16);
        v19 = (a6 + a7) * (1.0 / v11);
        v20 = *v14;
        v21 = v14[1];
        *v14 = vmulq_n_f32(*v14, v15 + v15);
        v14[1] = vmulq_n_f32(v21, v16 + v16);
        v22 = v14[2];
        v23 = vaddq_f32(v14[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v21, v18), v20, v17), v22, v19));
        v14[2] = vmulq_n_f32(v22, (1.0 / v11) + (1.0 / v11));
        v14[3] = v23;
        v24 = *(a1 + 20488);
        *(a1 + 1528) |= v24;
        *(a1 + 28652) = 0;
        result = vorr_s8(*(a1 + 1540), vdup_n_s32(v24));
        *(a1 + 1540) = *&result;
        return result;
      }
    }
  }

  if (!*(a1 + 29832))
  {
    v13 = 1281;
    goto LABEL_16;
  }

  return result;
}

uint64_t glEnable_Exec(uint64_t result, int a2)
{
  v2 = *(result + 19304) + 32 * ((a2 + 7) ^ BYTE1(a2));
  do
  {
    if (*v2 == a2)
    {
      return (*(v2 + 8))();
    }

    v2 = *(v2 + 16);
  }

  while (v2);
  if (!*(result + 29832))
  {
    *(result + 29832) = 1280;
  }

  return result;
}

void *gleSetVertexSubmitFunc(uint64_t a1, uint64_t a2, float32_t a3, float a4, float32_t a5, float32_t a6)
{
  gleGetVertexSubmitFuncObjectAndKey(a1, 0, 0, 0, (a1 + 26248));
  *(a1 + 26152) = gleLLVMSubmitFunc;
  *(a1 + 26160) = gleLLVMSubmitFunc;
  if ((*(a1 + 28660) & 0x80000000) == 0)
  {
    *(a1 + 26136) = gleLLVMSubmitFunc;
  }

  v13 = *(a1 + 26248);
  *v12.i32 = a4;

  return gleRunVertexSubmitImmediate(a1, a2, 0, 0, 0, v13, a3, v12, a5, a6);
}

uint64_t gleClipPoly(uint64_t result, char *a2, int a3, int a4, char *a5, _DWORD *a6, int a7)
{
  v7 = a2;
  v8 = result;
  v9 = &a2[8 * a3];
  if (a7)
  {
    if (a3 < 1)
    {
      goto LABEL_8;
    }

    v10 = 0;
    v11 = 255;
    v12 = a2;
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 3);
      v11 &= v14;
      v10 |= v14;
    }

    while (v12 < v9);
    if (!v10)
    {
LABEL_8:
      *a6 = -1;
      return result;
    }

    if (v11)
    {
      *a6 = 0;
      return result;
    }
  }

  else
  {
    v10 = a4;
  }

  LODWORD(v15) = 0;
  v16 = *(result + 26008);
  v17 = 1;
  v18 = a5;
  do
  {
    if ((v17 & v10) != 0)
    {
      *v9 = *v7;
      v19 = v18;
      if (v7 < v9)
      {
        v20 = v7;
        do
        {
          v21 = *v20;
          v23 = v20[1];
          ++v20;
          v22 = v23;
          if ((*(v21 + 3) & v17) != 0)
          {
            if ((*(v22 + 3) & v17) == 0)
            {
              if (!*(v21 + 1) || v21 == *v7)
              {
                v24 = v16 + 640;
              }

              else
              {
                v24 = v16;
                v16 = v21;
              }

              result = (*(v8 + 27896))(v8, v21, v22, v16, v17);
              v10 |= result;
              *v19 = v16;
              v19 += 8;
LABEL_28:
              v16 = v24;
            }
          }

          else
          {
            *v19 = v21;
            if ((*(v22 + 3) & v17) != 0)
            {
              if (*(v22 + 1) && v22 == *v7)
              {
                v24 = v16;
                v16 = v22;
              }

              else
              {
                v24 = v16 + 640;
              }

              result = (*(v8 + 27896))(v8, v22);
              v10 |= result;
              *(v16 + 1) = 2;
              *(v19 + 1) = v16;
              v19 += 16;
              goto LABEL_28;
            }

            v19 += 8;
          }
        }

        while (v20 < v9);
      }

      v15 = (v19 - v18) >> 3;
      if (v15 <= 2)
      {
        *a6 = 0;
        return result;
      }

      v9 = &v18[(v19 - v18) & 0x3FFFFFFF8];
      v25 = v18;
      v18 = v7;
      v7 = v25;
    }

    else
    {
      v25 = v7;
    }

    v26 = v17 >= 0x11;
    v17 *= 2;
  }

  while (!v26);
  v27 = a5;
  if (v25 != a5 && v15 >= 1)
  {
    v28 = v15;
    do
    {
      v29 = *v25++;
      *v27 = v29;
      v27 += 8;
      --v28;
    }

    while (v28);
  }

  *a6 = v15;
  *(v8 + 26008) = v16;
  return result;
}

uint64_t gleSetClipInterpFunc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  gleBuildInterpolateFunc(a1, 1);
  v10 = *(a1 + 27896);

  return v10(a1, a2, a3, a4, a5);
}

uint64_t gleBuildInterpolateFunc(uint64_t result, int a2)
{
  v2 = (result + 24756);
  if (*(result + 14890))
  {
    v3 = *(result + 1452) != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0;
  if (*(result + 15205))
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  v7 = *(result + 29830);
  if (v7 == 7170)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    goto LABEL_83;
  }

  if (v7 != 7169)
  {
    LODWORD(v8) = 0;
    v9 = 0;
    if (v7 != 7168)
    {
      goto LABEL_45;
    }

    v10 = *(result + 19216);
    v8 = *(result + 19224);
    v9 = HIDWORD(v8);
    v11 = *(result + 24864);
    if ((v11 & 0xFFFFFFE8) == 8)
    {
      v12 = *(result + 24768);
      if (!v12)
      {
        v12 = *(*(result + 24776) + 64);
      }

      v4 = (*(v12 + 2824) | v10) & 0xC0 | v10 & 0x6000000 | 0x800;
      if (!*(result + 24480))
      {
LABEL_26:
        if ((v11 & 1) == 0 && !*v2)
        {
          if (a2 != 2 && *(result + 14890))
          {
            if ((*(*(result + 29032) + 120) & 0x10) != 0 && *(result + 15284) == 4353)
            {
              v6 |= 8u;
            }

            if (a2 == 1)
            {
              v6 |= 0x10u;
            }

            if (*(result + 14892))
            {
              v13 = 13312;
            }

            else
            {
              v13 = 5120;
            }

            v6 |= v13;
            v14 = v8 & 0xFFFFFFFB;
            v15 = (v8 & 0xFFFFFFFBFFFFFFFBLL) >> 32;
            v8 &= 0xFFFFFFF3FFFFFFF3;
            if (*(result + 19233))
            {
              v9 = HIDWORD(v8);
            }

            else
            {
              v9 = v15;
            }

            if (!*(result + 19233))
            {
              LODWORD(v8) = v14;
            }

            v4 &= 0x1FFFFFFu;
            if (!v3)
            {
              goto LABEL_83;
            }

LABEL_78:
            v22 = 0x8000000000;
            if ((v6 & 8) == 0)
            {
              v22 = 0x8000000080;
            }

            v23 = 128;
            if (*(result + 15592) != 7424)
            {
              v23 = v22;
            }

            v8 = v23 | v8 | (v9 << 32);
            v9 = HIDWORD(v8);
            goto LABEL_83;
          }

LABEL_45:
          if (*(result + 14890))
          {
            goto LABEL_77;
          }

          goto LABEL_67;
        }
      }
    }

    else
    {
      v4 = v10 & 0x60008C0;
      if (!*(result + 24480))
      {
        goto LABEL_26;
      }
    }

    if (a2 != 2 && *(result + 17701))
    {
      v16 = (v8 >> 1) & 0x200000002 | v8;
      v8 = (v4 & 0x2000000) != 0 ? v16 : v8;
      v9 = (v4 & 0x2000000) != 0 ? HIDWORD(v16) : v9;
      if ((v4 & 0x4000000) != 0)
      {
        v8 |= (2 * (v8 | (v9 << 32))) & 0x1000000010 | (v9 << 32);
        v9 = HIDWORD(v8);
      }
    }

    if ((v11 & 0xFFFFFFEC) == 4)
    {
      v17 = *(result + 24768);
      if (!v17)
      {
        v17 = *(*(result + 24776) + 56);
      }

      v18 = (v17 + 2120);
    }

    else
    {
      if ((v11 & 0xFFFFFFEF) != 1)
      {
        v3 = 0;
        goto LABEL_67;
      }

      v19 = *(result + 24768);
      if (!v19)
      {
        v19 = *(*(result + 24776) + 40);
      }

      v18 = (v19 + 712);
    }

    v3 = 0;
    v4 |= *v18 & 0xC0;
LABEL_67:
    if ((v4 & 0x2000000) != 0 && *(result + 17702) != 0)
    {
      v6 |= 0x60000u;
    }

    if ((v4 & 0x4000000) != 0 && *(result + 17703) != 0)
    {
      v6 |= 0x180000u;
    }

LABEL_77:
    v4 &= 0x1FFFFFFu;
    if (!v3)
    {
      goto LABEL_83;
    }

    goto LABEL_78;
  }

  if (*(result + 24480) || *v2 || (*(result + 24864) & 1) != 0)
  {
    v3 = 0;
    v4 = 0x2000000;
    v9 = 260;
    LODWORD(v8) = 260;
    goto LABEL_67;
  }

  if (a2 == 2)
  {
    LODWORD(v8) = 260;
    v4 = 0x2000000;
    v9 = 260;
    goto LABEL_45;
  }

  v29 = v6 | 0x400;
  if (!*(result + 14890))
  {
    v4 = 0x2000000;
    v9 = 260;
    v6 |= 0x400u;
    LODWORD(v8) = 260;
    goto LABEL_67;
  }

  v30 = v6 | 0x410;
  if (a2 != 1)
  {
    v30 = v29;
  }

  if (*(result + 14892))
  {
    v31 = 12288;
  }

  else
  {
    v31 = 4096;
  }

  v6 = v31 | v30;
  v9 = 260;
  LODWORD(v8) = 260;
  v4 = 0;
  if (v3)
  {
    goto LABEL_78;
  }

LABEL_83:
  v24 = *(result + 15592);
  if (v8 & 4 | (v9 << 32) & 0x400000004)
  {
    v25 = v8 | 4;
  }

  else
  {
    v25 = v8;
  }

  if (v8 & 4 | (v9 << 32) & 0x400000004)
  {
    v26 = v9 & 0xFFFFFFFB;
  }

  else
  {
    v26 = v9;
  }

  if (((v25 | (v26 << 32)) & 0x800000008) != 0)
  {
    LODWORD(v25) = v25 | 8;
    LODWORD(v26) = v26 & 0xFFFFFFF7;
  }

  v27 = v24 == 7425;
  if (v24 == 7425)
  {
    v28 = v9;
  }

  else
  {
    LODWORD(v8) = v25;
    v28 = v26;
  }

  if (v27)
  {
    v6 |= 2u;
  }

  if (a2 == 2)
  {
    *(result + 27912) = gleLLVMVecCopyFlatVaryings;
    *(result + 27920) = gleLLVMVecCopyFlatVaryings;
    *(result + 28000) = v6;
    *(result + 28004) = v4;
    *(result + 28008) = 0;
    *(result + 28012) = v8;
    *(result + 28016) = v28;
  }

  else if (a2)
  {
    *(result + 27896) = gleLLVMVecInterpolateClip;
    *(result + 27904) = gleLLVMVecInterpolateClip;
    *(result + 27980) = v6;
    *(result + 27984) = v4;
    *(result + 27988) = 0;
    *(result + 27992) = v8;
    *(result + 27996) = v28;
  }

  else
  {
    *(result + 27880) = gleLLVMVecInterpolateEye;
    *(result + 27888) = gleLLVMVecInterpolateEye;
    *(result + 27960) = v6;
    *(result + 27964) = v4;
    *(result + 27968) = 0;
    *(result + 27972) = v8;
    *(result + 27976) = v28;
  }

  return result;
}

uint64_t gliDestroyContext(uint64_t a1)
{
  if (!a1)
  {
    return 10004;
  }

  v2 = a1 + 28672;
  if (*(a1 + 29792) != 878944803)
  {
    return 10004;
  }

  if (*(a1 + 27648))
  {
    (*(a1 + 27752))(a1);
  }

  v3 = gleTerminateContext(a1);
  gfxClearSyncObjectsInHash();
  if (*(v2 + 3824))
  {
    v4 = 0;
    v5 = (a1 + 32512);
    do
    {
      v6 = (*(v5[206] + 1176))(*v5);
      if (v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v6;
      }

      ++v4;
      v5 += 209;
    }

    while (v4 < *(v2 + 3824));
  }

  gfxReleaseSharedStateAndHash();
  os_unfair_lock_lock(&gl_list_lock);
  v7 = 0;
  v8 = *(v2 + 3829);
  v9 = &gl_list[v8];
  v10 = v9;
  do
  {
    v11 = v7;
    v7 = *v10;
    v10 = (*v10 + 29512);
    if (v7)
    {
      v12 = v7 == a1;
    }

    else
    {
      v12 = 1;
    }
  }

  while (!v12);
  v13 = *(a1 + 29512);
  if (v11)
  {
    *(v11 + 29512) = v13;
    if (*v9)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v9 = v13;
  if (!v13)
  {
LABEL_19:
    gleDestroyEnableHashTable(v8);
  }

LABEL_20:
  os_unfair_lock_unlock(&gl_list_lock);
  for (i = 2222; i != 2227; ++i)
  {
    free(*(a1 + 8 * i));
  }

  free(a1);
  return v3;
}

uint64_t gleTerminateContext(uint64_t a1)
{
  if (*(a1 + 27648))
  {
    gleDestroyCmdBufMachine(a1);
  }

  gleFreeOrphans(a1);
  gleFreeVertexMachine(a1);
  gleFreePixelMap(a1);
  gleFreeMaterials(a1);
  gleFreeAllAttrib(a1);
  gleFreeQueryMachine(a1);
  gleFreeCtxHashMachine(a1, a1 + 25872, gleFreeFenceObject);
  gleFreeVertexArrayState(a1);
  gleFreeCtxHashMachine(a1, a1 + 26352, gleFreeCtxVertexArrayHashObject);
  gleFreeBufferState(a1);
  gleFreeSamplerState(a1);
  gleFreeTransformFeedbackState(a1);
  gleLLVMFree(a1);
  gleFreeShaderProgramState(a1);
  gleFreeProgramPipelineState(a1);
  gleFreePipelineProgramState(a1);
  gleReclaimDrawCopyPixelResources(a1);
  gleReclaimBitmapResources(a1);
  gleReclaimAccumResources(a1);
  gleFreeFramebufferState(a1);
  gleFreeTextureState(a1);
  gleClearTextures(a1);
  gleCleanUpDerivedState(a1);
  free(*(a1 + 19288));
  free(*(a1 + 29520));
  free(*(a1 + 17816));
  glgDestroyProcessor();
  free(*(a1 + 18792));
  free(*(a1 + 18864));
  free(*(a1 + 18936));
  free(*(a1 + 19008));
  gleCleanUpGLDState(a1 + 2272);
  return 0;
}

void gleFreeOrphans(void *a1)
{
  v2 = a1[3618];
  if (v2)
  {
    v3 = a1[3613];
    if (v3 != a1 + 3611)
    {
      do
      {
        gleFreeOrphan(a1, v3);
        v3 = a1[3613];
      }

      while (v3 != a1 + 3611);
      v2 = a1[3618];
    }

    free(v2);
    a1[3618] = 0;
    v4 = a1[3610];
    if (v4)
    {
      free(v4);
      a1[3610] = 0;
    }
  }
}

double gleFreeVertexMachine(uint64_t a1)
{
  v2 = *(a1 + 26000);
  if (v2)
  {
    v3 = (a1 + 26000);
    free((v2 - 1280));
    *(a1 + 26032) = 0;
    result = 0.0;
    *v3 = 0u;
    *(a1 + 26016) = 0u;
    *(a1 + 26088) = 0u;
  }

  if (*(a1 + 26104))
  {
    v5 = *(a1 + 26056);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 26104) = 0;
    *(a1 + 26080) = 0;
    result = 0.0;
    *(a1 + 26112) = 0;
    *(a1 + 26056) = 0;
    *(a1 + 26064) = 0;
  }

  return result;
}

void gleFreePixelMap(void *a1)
{
  v2 = a1[2321];
  if (v2 != &gle_default_pix_map_i)
  {
    free(v2);
    a1[2321] = &gle_default_pix_map_i;
  }

  v3 = a1[2330];
  if (v3 != &gle_default_pix_map_i)
  {
    free(v3);
    a1[2330] = &gle_default_pix_map_i;
  }

  v4 = a1[2322];
  if (v4 != &gle_default_pix_map_f)
  {
    free(v4);
    a1[2322] = &gle_default_pix_map_f;
  }

  v5 = a1[2323];
  if (v5 != &gle_default_pix_map_f)
  {
    free(v5);
    a1[2323] = &gle_default_pix_map_f;
  }

  v6 = a1[2324];
  if (v6 != &gle_default_pix_map_f)
  {
    free(v6);
    a1[2324] = &gle_default_pix_map_f;
  }

  v7 = a1[2325];
  if (v7 != &gle_default_pix_map_f)
  {
    free(v7);
    a1[2325] = &gle_default_pix_map_f;
  }

  v8 = a1[2326];
  if (v8 != &gle_default_pix_map_f)
  {
    free(v8);
    a1[2326] = &gle_default_pix_map_f;
  }

  v9 = a1[2327];
  if (v9 != &gle_default_pix_map_f)
  {
    free(v9);
    a1[2327] = &gle_default_pix_map_f;
  }

  v10 = a1[2328];
  if (v10 != &gle_default_pix_map_f)
  {
    free(v10);
    a1[2328] = &gle_default_pix_map_f;
  }

  v11 = a1[2329];
  if (v11 != &gle_default_pix_map_f)
  {
    free(v11);
    a1[2329] = &gle_default_pix_map_f;
  }
}

void *gleFreeMaterials(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 1424;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v3 + 8 * v2);
    v7 = v6[64];
    if (v7)
    {
      do
      {
        v8 = v7;
        free(v6);
        v7 = v8[64];
        v6 = v8;
      }

      while (v7);
    }

    else
    {
      v8 = *(v3 + 8 * v2);
    }

    v4 = 0;
    *(v3 + 8 * v2) = v8;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  result = *(a1 + 1440);
  if (result)
  {
    do
    {
      v10 = result[64];
      free(result);
      result = v10;
    }

    while (v10);
  }

  *(a1 + 1440) = 0;
  return result;
}

double gleFreeAllAttrib(uint64_t a1)
{
  v2 = a1 + 20480;
  v3 = a1 + 20496;
  v4 = *(a1 + 20768);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; *(v3 + 8 * i++) = 0)
    {
      v6 = *(v3 + 8 * i);
      if (v6)
      {
        do
        {
          v7 = v6[1018];
          free(v6);
          v6 = v7;
        }

        while (v7);
        v4 = *(v2 + 288);
      }
    }
  }

  v8 = *(v2 + 292);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = a1 + 20632;
    do
    {
      v11 = *(v10 + 8 * v9);
      if (v11)
      {
        do
        {
          v12 = v11[121];
          free(v11);
          v11 = v12;
        }

        while (v12);
        v8 = *(v2 + 292);
      }

      *(v10 + 8 * v9++) = 0;
    }

    while (v9 < v8);
  }

  *(a1 + 20624) = v3;
  result = 0.0;
  *(a1 + 20768) = 0;
  *(a1 + 20760) = a1 + 20632;
  return result;
}

uint64_t gleFreeQueryMachine(void *a1)
{
  v2 = a1[3242];
  if (v2)
  {
    v3 = *(v2 + 20) - 1;
    *(v2 + 20) = v3;
    if (!v3)
    {
      gleFreeQueryObject(a1, v2);
    }

    a1[3242] = 0;
  }

  v4 = a1[3243];
  if (v4)
  {
    v5 = *(v4 + 20) - 1;
    *(v4 + 20) = v5;
    if (!v5)
    {
      gleFreeQueryObject(a1, v4);
    }

    a1[3243] = 0;
  }

  v6 = a1[3245];
  if (v6)
  {
    v7 = *(v6 + 20) - 1;
    *(v6 + 20) = v7;
    if (!v7)
    {
      gleFreeQueryObject(a1, v6);
    }

    a1[3245] = 0;
  }

  v8 = a1[3246];
  if (v8)
  {
    v9 = *(v8 + 20) - 1;
    *(v8 + 20) = v9;
    if (!v9)
    {
      gleFreeQueryObject(a1, v8);
    }

    a1[3246] = 0;
  }

  return gleFreeCtxHashMachine(a1, (a1 + 3238), gleFreeQueryObject);
}

void gleFreeVertexArrayState(uint64_t *a1)
{
  v1 = a1[3298];
  if (v1)
  {
    os_unfair_lock_lock((a1[2412] + 324));
    if (*(v1 + 16))
    {
      v3 = *(v1 + 20) - 1;
      *(v1 + 20) = v3;
      if (!v3)
      {
        gleFreeVertexArrayHashObject(a1[2412], v1);
      }
    }

    v4 = a1[3299];
    if (v4)
    {
      gleFreeVertexArrayHashObject(a1[2412], v4);
    }

    v5 = (a1[2412] + 324);

    os_unfair_lock_unlock(v5);
  }
}

void gleFreeBufferState(void *a1)
{
  os_unfair_lock_lock((a1[2412] + 324));
  v2 = a1[3288];
  if (v2)
  {
    v3 = *(v2 + 20) - 1;
    *(v2 + 20) = v3;
    if (!v3)
    {
      gleUnbindAndFreeBufferObject(a1, v2);
    }
  }

  v4 = a1[2414];
  if (v4)
  {
    v5 = *(v4 + 20) - 1;
    *(v4 + 20) = v5;
    if (!v5)
    {
      gleUnbindAndFreeBufferObject(a1, v4);
    }
  }

  v6 = a1[2415];
  if (v6)
  {
    v7 = *(v6 + 20) - 1;
    *(v6 + 20) = v7;
    if (!v7)
    {
      gleUnbindAndFreeBufferObject(a1, v6);
    }
  }

  v8 = a1[2416];
  if (v8)
  {
    v9 = *(v8 + 20) - 1;
    *(v8 + 20) = v9;
    if (!v9)
    {
      gleUnbindAndFreeBufferObject(a1, v8);
    }
  }

  v10 = a1[2417];
  if (v10)
  {
    v11 = *(v10 + 20) - 1;
    *(v10 + 20) = v11;
    if (!v11)
    {
      gleUnbindAndFreeBufferObject(a1, v10);
    }
  }

  v12 = a1[2418];
  if (v12)
  {
    v13 = *(v12 + 20) - 1;
    *(v12 + 20) = v13;
    if (!v13)
    {
      gleUnbindAndFreeBufferObject(a1, v12);
    }
  }

  v14 = a1[2419];
  if (v14)
  {
    v15 = *(v14 + 20) - 1;
    *(v14 + 20) = v15;
    if (!v15)
    {
      gleUnbindAndFreeBufferObject(a1, v14);
    }
  }

  v16 = a1[2420];
  if (v16)
  {
    v17 = *(v16 + 20) - 1;
    *(v16 + 20) = v17;
    if (!v17)
    {
      gleUnbindAndFreeBufferObject(a1, v16);
    }
  }

  v18 = a1[2421];
  if (v18)
  {
    v19 = *(v18 + 20) - 1;
    *(v18 + 20) = v19;
    if (!v19)
    {
      gleUnbindAndFreeBufferObject(a1, v18);
    }
  }

  v20 = a1[2422];
  if (v20)
  {
    v21 = *(v20 + 20) - 1;
    *(v20 + 20) = v21;
    if (!v21)
    {
      gleUnbindAndFreeBufferObject(a1, v20);
    }
  }

  v22 = (a1[2412] + 324);

  os_unfair_lock_unlock(v22);
}

void gleFreePipelineProgramState(uint64_t a1)
{
  v1 = a1;
  v2 = (a1 + 32496);
  v3 = *(a1 + 24192);
  if (v3)
  {
    free(v3);
    *(v1 + 24192) = 0;
  }

  v4 = 0;
  v5 = v1 + 24600;
  v6 = v1 + 24520;
  v37 = (v1 + 32512);
  v7 = v2 + 976;
  v8 = vdupq_n_s64(2uLL);
  v40 = v8;
  do
  {
    if (*(v5 + 8 * v4))
    {
      cvmHashObjectRelease();
      v8 = v40;
      *(v1 + 24632 + 8 * v4) = 0;
      *(v5 + 8 * v4) = 0;
    }

    v9 = *v2;
    if (*v2)
    {
      v10 = (v9 + 1) & 0x1FE;
      v11 = vdupq_n_s64(v9 - 1);
      v12 = v7;
      v13 = xmmword_23A102AE0;
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v11, v13));
        if (v14.i8[0])
        {
          *v12 = 0;
        }

        if (v14.i8[4])
        {
          v12[209] = 0;
        }

        v13 = vaddq_s64(v13, v8);
        v12 += 418;
        v10 -= 2;
      }

      while (v10);
    }

    ++v4;
    ++v7;
  }

  while (v4 != 4);
  v15 = 0;
  v16 = v1 + 24560;
  v41 = v1 + 24480;
  v17 = v1 + 24400;
  v18 = v1 + 24440;
  v19 = vdupq_n_s64(2uLL);
  v20 = v2 + 936;
  v38 = v1 + 24520;
  v39 = v1;
  v42 = v19;
  do
  {
    if (*(v6 + 8 * v15))
    {
      v21 = (v41 + 8 * v15);
      if (*(v16 + 8 * v15))
      {
        cvmHashObjectRelease();
        *(v16 + 8 * v15) = 0;
      }

      else
      {
        if (!*v21)
        {
LABEL_21:
          cvmDestroyHashMachine();
          *(v6 + 8 * v15) = 0;
          v19 = v42;
          goto LABEL_22;
        }

        gleDestroyStateProgram(v1, *v21);
      }

      *v21 = 0;
      goto LABEL_21;
    }

LABEL_22:
    v22 = *(v17 + 8 * v15);
    if (v22 && *(v22 + 16))
    {
      v23 = v18;
      v24 = v17;
      v25 = v16;
      os_unfair_lock_lock((*(v1 + 19296) + 324));
      v26 = *(v22 + 20) - 1;
      *(v22 + 20) = v26;
      if (v26)
      {
        if (*v2)
        {
          v27 = 0;
          v28 = v22 + 40;
          v29 = v37;
          do
          {
            (*(v29[206] + 1648))(*v29, *(v28 + 8 * v27++));
            v29 += 209;
          }

          while (v27 < *v2);
        }
      }

      else
      {
        gleUnbindAndFreePipelineProgramObject(v1, v22);
      }

      v1 = v39;
      os_unfair_lock_unlock((*(v39 + 19296) + 324));
      v16 = v25;
      v17 = v24;
      v18 = v23;
      v6 = v38;
      v19 = v42;
    }

    v30 = *(v18 + 8 * v15);
    if (v30)
    {
      gleUnbindAndFreePipelineProgramObject(v1, v30);
      v19 = v42;
    }

    v31 = *v2;
    if (*v2)
    {
      v32 = (v31 + 1) & 0x1FE;
      v33 = vdupq_n_s64(v31 - 1);
      v34 = v20;
      v35 = xmmword_23A102AE0;
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v33, v35));
        if (v36.i8[0])
        {
          *v34 = 0;
        }

        if (v36.i8[4])
        {
          v34[209] = 0;
        }

        v35 = vaddq_s64(v35, v19);
        v34 += 418;
        v32 -= 2;
      }

      while (v32);
    }

    ++v15;
    ++v20;
  }

  while (v15 != 5);
}

void gleFreePipelineProgramObject(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 168);
  if (v4)
  {
    free(v4);
    *(a2 + 168) = 0;
  }

  *(a2 + 176) = 0;
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  if (*(a2 + 466) == 4)
  {
    *(a2 + 4412) = 0;
    *(a2 + 4416) = 0;
  }

  else if (!*(a2 + 466) && *(a2 + 4408))
  {
    MEMORY[0x23EE82AD0]();
    *(a2 + 4408) = 0;
  }

  if (*(a2 + 472))
  {
    MEMORY[0x23EE82AD0]();
    *(a2 + 472) = 0;
  }

  v5 = *(a2 + 504);
  if (v5)
  {
    free(v5);
    *(a2 + 504) = 0;
  }

  free(*(a2 + 480));
  *(a2 + 480) = 0;
  free(*(a2 + 520));
  *(a2 + 520) = 0;
  free(*(a2 + 144));
  *(a2 + 144) = 0;
  if (*(a1 + 320))
  {
    v6 = 0;
    v7 = a2 + 40;
    v8 = a1 + 360;
    do
    {
      (*(*v8 + 1656))(*(v8 - 8), *(v7 + 8 * v6));
      *(v7 + 8 * v6++) = 0;
      v8 += 32;
    }

    while (v6 < *(a1 + 320));
  }

  free(a2);
}

void gleFreeFramebufferState(uint64_t *a1)
{
  v2 = a1[3620];
  v3 = a1[3621];
  v4 = a1[3619];
  if (v2)
  {
    os_unfair_lock_lock((a1[2412] + 324));
    v5 = *(v2 + 20) - 1;
    *(v2 + 20) = v5;
    if (!v5)
    {
      gleFreeFramebufferObject(a1[2412], v2);
    }

    os_unfair_lock_unlock((a1[2412] + 324));
  }

  if (v3)
  {
    os_unfair_lock_lock((a1[2412] + 324));
    v6 = *(v3 + 20) - 1;
    *(v3 + 20) = v6;
    if (!v6)
    {
      gleFreeFramebufferObject(a1[2412], v3);
    }

    os_unfair_lock_unlock((a1[2412] + 324));
  }

  if (v4)
  {
    os_unfair_lock_lock((a1[2412] + 324));
    v7 = *(v4 + 20) - 1;
    *(v4 + 20) = v7;
    if (!v7)
    {
      gleUnbindAndFreeTextureObject(a1, v4);
    }

    v8 = (a1[2412] + 324);

    os_unfair_lock_unlock(v8);
  }
}

void gleFreeTextureState(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 20776;
  do
  {
    for (i = 0; i != 88; i += 8)
    {
      v5 = *(v3 + i);
      if (v5 && *(v5 + 16))
      {
        os_unfair_lock_lock((*(a1 + 19296) + 324));
        v6 = *(v5 + 20) - 1;
        *(v5 + 20) = v6;
        if (!v6)
        {
          gleUnbindTextureObject(a1, v5);
          gleFreeTextureObject(*(a1 + 19296), v5);
        }

        os_unfair_lock_unlock((*(a1 + 19296) + 324));
      }
    }

    ++v2;
    v3 += 88;
  }

  while (v2 != 32);
  v7 = -48;
  do
  {
    v8 = *(a1 + v7 + 18744);
    if (v8)
    {
      free(v8);
      *(a1 + v7 + 18744) = 0;
    }

    v7 += 16;
  }

  while (v7);
  v9 = -88;
  do
  {
    v10 = *(a1 + v9 + 23680);
    if (v10)
    {
      gleUnbindTextureObject(a1, *(a1 + v9 + 23680));
      gleFreeTextureObject(*(a1 + 19296), v10);
    }

    v11 = *(a1 + v9 + 23768);
    if (v11)
    {
      gleUnbindTextureObject(a1, *(a1 + v9 + 23768));
      gleFreeTextureObject(*(a1 + 19296), v11);
    }

    v9 += 8;
  }

  while (v9);
}

uint64_t gleIterateHashMachineObjects(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, void *))
{
  v5 = result;
  v6 = 0;
  v7 = (*(result + 24) + 1);
  do
  {
    for (i = *(*(v5 + 8) + 8 * v6); i; i = *i)
    {
      result = a3(a2, i);
    }

    ++v6;
  }

  while (v6 != v7);
  return result;
}

void glDeleteTextures_Exec(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    if (!*(a1 + 29832))
    {
      *(a1 + 29832) = 1281;
    }
  }

  else if (a2)
  {
    v6 = *(a1 + 19296);
    os_unfair_lock_lock(v6 + 81);
    v7 = 0;
    v8 = *(a1 + 28960);
    v9 = v8 != 0;
    v10 = (v8 + 40);
    if (!v8)
    {
      v10 = 0;
    }

    v28 = v10;
    v11 = *(a1 + 28968);
    v30 = *(a1 + 28960);
    v12 = v11 != v8 && v11 != 0;
    v13 = (v11 + 40);
    if (!v12)
    {
      v13 = 0;
    }

    v27 = v13;
    v14 = *a3;
    v29 = v12;
    v31 = v9 || v12;
    v15 = a2;
    v16 = *a3;
    do
    {
      if (a3[v7])
      {
        v17 = 0;
        v18 = a1 + 20776;
        do
        {
          v19 = 0;
          while (*(*(v18 + 8 * v19) + 16) != a3[v7])
          {
            if (++v19 == 11)
            {
              goto LABEL_15;
            }
          }

          gleBindTexture(a1, v19, 0, v17);
LABEL_15:
          ++v17;
          v18 += 88;
        }

        while (v17 != 32);
        if (v31)
        {
          v20 = gleLookupHashObject(&v6[18], a3[v7]);
          if (v20)
          {
            v21 = v20;
            if (v30)
            {
              v22 = 0;
              v23 = v28;
              do
              {
                if (v21 == *v23)
                {
                  gleFramebufferTexture(a1, *(a1 + 28960) + 40, v22, 0, 0, 0, 0, 0, 0);
                }

                ++v22;
                v23 += 2;
              }

              while (v22 != 10);
            }

            if (v29)
            {
              v24 = 0;
              v25 = v27;
              do
              {
                if (v21 == *v25)
                {
                  gleFramebufferTexture(a1, *(a1 + 28968) + 40, v24, 0, 0, 0, 0, 0, 0);
                }

                ++v24;
                v25 += 2;
              }

              while (v24 != 10);
            }
          }
        }

        if (a3[v7] != v16)
        {
          gleUnbindDeleteHashNamesAndObjects(a1, &v6[18], gleUnbindTextureObject, v14, v16 - v14);
          v16 = a3[v7];
          v14 = v16;
        }
      }

      else
      {
        gleUnbindDeleteHashNamesAndObjects(a1, &v6[18], gleUnbindTextureObject, v14, v16 - v14);
        if (v7 + 1 >= v15)
        {
          goto LABEL_34;
        }

        v14 = a3[v7 + 1];
        v16 = v14 - 1;
      }

      ++v7;
      ++v16;
    }

    while (v7 != v15);
    gleUnbindDeleteHashNamesAndObjects(a1, &v6[18], gleUnbindTextureObject, v14, v16 - v14);
LABEL_34:
    v26 = (*(a1 + 19296) + 324);

    os_unfair_lock_unlock(v26);
  }
}

uint64_t *gleRemoveHashObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 8) + 8 * (*(a1 + 24) & a2));
  result = *v3;
  if (*v3)
  {
    while (*(result + 4) != a2)
    {
      v3 = result;
      result = *result;
      if (!result)
      {
        return result;
      }
    }

    --*(a1 + 28);
    *v3 = *result;
  }

  return result;
}

void gleDestroyEnableHashTable(int a1)
{
  os_unfair_lock_lock(&gle_enable_hash_table_lock);
  v2 = gle_enable_hash_table[a1];
  if (v2)
  {
    gle_enable_hash_table[a1] = 0;
    os_unfair_lock_unlock(&gle_enable_hash_table_lock);
    for (i = 16; i != 8208; i += 32)
    {
      v4 = *&v2[i];
      if (v4)
      {
        gleFreeEnableHashObject(v4);
      }
    }

    free(v2);
  }

  else
  {

    os_unfair_lock_unlock(&gle_enable_hash_table_lock);
  }
}

void gleFreeEnableHashObject(void *a1)
{
  if (a1[2])
  {
    gleFreeEnableHashObject();
  }

  free(a1);
}

uint64_t glTestObjectAPPLE_Exec(uint64_t a1, int a2, int a3)
{
  if (a2 <= 35337)
  {
    switch(a2)
    {
      case 5890:
        v3 = 1;
        return gleTestObject(a1, v3, a3, 1);
      case 32884:
        v3 = 2;
        return gleTestObject(a1, v3, a3, 1);
      case 34227:
        v3 = 3;
        return gleTestObject(a1, v3, a3, 1);
    }

LABEL_12:
    v4 = *(a1 + 29832);
    if (*(a1 + 29832))
    {
      return 0;
    }

    *(a1 + 29832) = 1280;
    return v4;
  }

  if (a2 != 35338)
  {
    if (a2 == 35339)
    {
      v3 = 0;
      return gleTestObject(a1, v3, a3, 1);
    }

    if (a2 == 36161)
    {
      v3 = 4;
      return gleTestObject(a1, v3, a3, 1);
    }

    goto LABEL_12;
  }

  return 1;
}

unint64_t gleTestObject(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1 + 28672;
  result = 1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      result = gleLookupHashObject(*(a1 + 19296) + 72, a3);
      if (!result)
      {
        goto LABEL_47;
      }

      v12 = *(v6 + 3824);
      if (!*(v6 + 3824))
      {
        return 1;
      }

      v13 = 0;
      v14 = (a1 + 32512);
      v15 = (result + 40);
      LOBYTE(result) = 1;
      do
      {
        if (result)
        {
          result = (*(v14[206] + 1320))(*v14, 1, 0, a4, v15[v13]) != 0;
          v12 = *(v6 + 3824);
        }

        else
        {
          result = 0;
        }

        ++v13;
        v14 += 209;
      }

      while (v13 < v12);
    }

    else
    {
      result = gleLookupHashObject(a1 + 25872, a3);
      if (!result)
      {
        goto LABEL_47;
      }

      v24 = *(v6 + 3824);
      if (!*(v6 + 3824))
      {
        return 1;
      }

      v25 = 0;
      v26 = (a1 + 32512);
      v27 = (result + 40);
      LOBYTE(result) = 1;
      do
      {
        if (result)
        {
          result = (*(v26[206] + 1320))(*v26, 0, 0, a4, v27[v25]) != 0;
          v24 = *(v6 + 3824);
        }

        else
        {
          result = 0;
        }

        ++v25;
        v26 += 209;
      }

      while (v25 < v24);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        result = gleLookupHashObject(a1 + 26352, a3);
        if (!result)
        {
          goto LABEL_47;
        }

        v16 = *(v6 + 3824);
        if (!*(v6 + 3824))
        {
          return 1;
        }

        v17 = 0;
        v18 = (a1 + 32512);
        v19 = (result + 40);
        LOBYTE(result) = 1;
        do
        {
          if (result)
          {
            result = (*(v18[206] + 1320))(*v18, 2, 0, a4, v19[v17]) != 0;
            v16 = *(v6 + 3824);
          }

          else
          {
            result = 0;
          }

          ++v17;
          v18 += 209;
        }

        while (v17 < v16);
        break;
      case 3:
        result = gleLookupHashObject(*(a1 + 19296) + 264, a3);
        if (!result)
        {
          goto LABEL_47;
        }

        v20 = *(v6 + 3824);
        if (!*(v6 + 3824))
        {
          return 1;
        }

        v21 = 0;
        v22 = (a1 + 32512);
        v23 = (result + 40);
        LOBYTE(result) = 1;
        do
        {
          if (result)
          {
            result = (*(v22[206] + 1320))(*v22, 3, 0, a4, v23[v21]) != 0;
            v20 = *(v6 + 3824);
          }

          else
          {
            result = 0;
          }

          ++v21;
          v22 += 209;
        }

        while (v21 < v20);
        break;
      case 4:
        result = gleLookupHashObject(*(a1 + 19296) + 40, a3);
        if (result)
        {
          v8 = *(v6 + 3824);
          if (*(v6 + 3824))
          {
            v9 = 0;
            v10 = (a1 + 32512);
            v11 = (result + 40);
            LOBYTE(result) = 1;
            do
            {
              if (result)
              {
                result = (*(v10[206] + 1320))(*v10, 1, 0, a4, v11[v9]) != 0;
                v8 = *(v6 + 3824);
              }

              else
              {
                result = 0;
              }

              ++v9;
              v10 += 209;
            }

            while (v9 < v8);
            return result;
          }

          return 1;
        }

LABEL_47:
        if (!*(v6 + 1160))
        {
          *(v6 + 1160) = 1282;
        }

        return 1;
      default:
        return result;
    }
  }

  return result;
}

int8x8_t glFrustum_Exec(uint64_t a1, int8x8_t result, double a3, double a4, double a5, double a6, double a7)
{
  if (*(a1 + 20484) >= 24)
  {
    if (*(a1 + 29832))
    {
      return result;
    }

    v13 = 1282;
LABEL_18:
    *(a1 + 29832) = v13;
    return result;
  }

  if (a6 > 0.0 && a7 > 0.0)
  {
    v7 = a3 - *&result;
    v8 = -v7;
    if (v7 >= 0.0)
    {
      v8 = a3 - *&result;
    }

    if (v8 >= 0.000005)
    {
      v9 = a5 - a4;
      v10 = -v9;
      if (v9 >= 0.0)
      {
        v10 = a5 - a4;
      }

      if (v10 >= 0.000005)
      {
        v11 = a6 - a7;
        v12 = -v11;
        if (v11 >= 0.0)
        {
          v12 = a6 - a7;
        }

        if (v12 >= 0.000005)
        {
          v14 = *(a1 + 19976);
          v15 = 1.0 / v7;
          v16 = 1.0 / v9;
          v17 = 1.0 / v11;
          v18 = a6 + a6;
          v19 = v15 * v18;
          v20 = (*&result + a3) * v15;
          v21 = (a4 + a5) * v16;
          v22 = (a6 + a7) * v17;
          v23 = v18 * a7 * v17;
          v25 = *v14;
          v24 = v14[1];
          v26 = vmulq_n_f32(v24, v16 * v18);
          v27 = v14[2];
          v14[2] = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, v21), *v14, v20), v27, v22), v14[3]);
          v14[3] = vmulq_n_f32(v27, v23);
          *v14 = vmulq_n_f32(v25, v19);
          v14[1] = v26;
          v28 = *(a1 + 20488);
          *(a1 + 1528) |= v28;
          *(a1 + 28652) = 0;
          result = vorr_s8(*(a1 + 1540), vdup_n_s32(v28));
          *(a1 + 1540) = *&result;
          return result;
        }
      }
    }
  }

  if (!*(a1 + 29832))
  {
    v13 = 1281;
    goto LABEL_18;
  }

  return result;
}

_DWORD *gleSetEnable_TEXTURE_2D(_DWORD *result, uint64_t a2, int a3)
{
  v3 = *(result + 11884);
  if (v3 >= 8)
  {
    if (!*(result + 14916))
    {
      *(result + 14916) = 1282;
    }
  }

  else
  {
    v4 = &result[19 * *(result + 11884)];
    v5 = v4[3921];
    v6 = v5 & 0xFFFFFFF7 | (8 * a3);
    if (v5 != v6)
    {
      v4[3921] = v6;
      return gleUpdateTextureParams(result, v3);
    }
  }

  return result;
}

uint64_t glTexEnvf_Exec(uint64_t result, int a2, int a3, double a4)
{
  v4 = (result + 28652);
  v5 = *(result + 23768);
  if (a2 == 8960)
  {
    if (v5 >= 8)
    {
      goto LABEL_13;
    }

    if (a3 > 34183)
    {
      if (a3 <= 34192)
      {
        if (a3 > 34185)
        {
          if (a3 == 34186)
          {
            v9 = *&a4;
            if ((*&a4 - 34166) >= 3 && v9 != 5890)
            {
              goto LABEL_115;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15706;
          }

          else
          {
            if (a3 != 34192)
            {
              goto LABEL_115;
            }

            v9 = *&a4;
            if ((*&a4 & 0xFFFFFFFC) != 0x300)
            {
              goto LABEL_115;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15708;
          }
        }

        else if (a3 == 34184)
        {
          v9 = *&a4;
          if ((*&a4 - 34166) >= 3 && v9 != 5890)
          {
            goto LABEL_115;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15702;
        }

        else
        {
          v9 = *&a4;
          if ((*&a4 - 34166) >= 3 && v9 != 5890)
          {
            goto LABEL_115;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15704;
        }
      }

      else if (a3 <= 34199)
      {
        if (a3 == 34193)
        {
          v9 = *&a4;
          if ((*&a4 & 0xFFFFFFFC) != 0x300)
          {
            goto LABEL_115;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15710;
        }

        else
        {
          if (a3 != 34194)
          {
            goto LABEL_115;
          }

          v9 = *&a4;
          if ((*&a4 & 0xFFFFFFFC) != 0x300)
          {
            goto LABEL_115;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15712;
        }
      }

      else
      {
        switch(a3)
        {
          case 34200:
            v9 = *&a4;
            if ((*&a4 & 0xFFFFFFFE) != 0x302)
            {
              goto LABEL_115;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15714;
            break;
          case 34201:
            v9 = *&a4;
            if ((*&a4 & 0xFFFFFFFE) != 0x302)
            {
              goto LABEL_115;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15716;
            break;
          case 34202:
            v9 = *&a4;
            if ((*&a4 & 0xFFFFFFFE) != 0x302)
            {
              goto LABEL_115;
            }

            v10 = result + 76 * *(result + 23768);
            v11 = 15718;
            break;
          default:
            goto LABEL_115;
        }
      }

      goto LABEL_113;
    }

    if (a3 > 34162)
    {
      if (a3 > 34176)
      {
        if (a3 == 34177)
        {
          v9 = *&a4;
          if ((*&a4 - 34166) >= 3 && v9 != 5890)
          {
            goto LABEL_115;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15698;
        }

        else
        {
          if (a3 != 34178)
          {
            goto LABEL_115;
          }

          v9 = *&a4;
          if ((*&a4 - 34166) >= 3 && v9 != 5890)
          {
            goto LABEL_115;
          }

          v10 = result + 76 * *(result + 23768);
          v11 = 15700;
        }

        goto LABEL_113;
      }

      if (a3 != 34163)
      {
        if (a3 != 34176)
        {
          goto LABEL_115;
        }

        v9 = *&a4;
        if ((*&a4 - 34166) >= 3 && v9 != 5890)
        {
          goto LABEL_115;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15696;
        goto LABEL_113;
      }

      if (*&a4 == 4.0 || *&a4 == 1.0 || *&a4 == 2.0)
      {
        *(result + 76 * *(result + 23768) + 15720) = LODWORD(a4);
        goto LABEL_114;
      }

LABEL_86:
      if (!*(result + 29832))
      {
        *(result + 29832) = 1281;
      }

      goto LABEL_114;
    }

    if (a3 <= 34160)
    {
      if (a3 != 3356)
      {
        if (a3 != 8704)
        {
          goto LABEL_115;
        }

        v9 = *&a4;
        if (*&a4 > 8447)
        {
          if ((v9 - 8448) >= 2)
          {
            v18 = 34160;
LABEL_107:
            if (v9 != v18)
            {
              goto LABEL_115;
            }
          }
        }

        else if (v9 != 260 && v9 != 3042)
        {
          v18 = 7681;
          goto LABEL_107;
        }

        v10 = result + 76 * *(result + 23768);
        v11 = 15688;
        goto LABEL_113;
      }

      if (*&a4 == 4.0 || *&a4 == 1.0 || *&a4 == 2.0)
      {
        *(result + 76 * *(result + 23768) + 15724) = LODWORD(a4);
LABEL_114:
        *v4 = 0;
        *(result + 1548) |= 0x20000u;
        return result;
      }

      goto LABEL_86;
    }

    if (a3 != 34161)
    {
      v9 = *&a4;
      if (*&a4 > 34022)
      {
        if ((v9 - 34164) >= 2)
        {
          v19 = 34023;
LABEL_111:
          if (v9 != v19)
          {
            goto LABEL_115;
          }
        }
      }

      else if (v9 != 260 && v9 != 7681)
      {
        v19 = 8448;
        goto LABEL_111;
      }

      v10 = result + 76 * *(result + 23768);
      v11 = 15694;
      goto LABEL_113;
    }

    v9 = *&a4;
    if (*&a4 > 34022)
    {
      if ((v9 - 34164) >= 2 && (v9 - 34478) >= 2)
      {
        v20 = 34023;
LABEL_102:
        if (v9 != v20)
        {
          goto LABEL_115;
        }
      }
    }

    else if (v9 != 260 && v9 != 7681)
    {
      v20 = 8448;
      goto LABEL_102;
    }

    v10 = result + 76 * *(result + 23768);
    v11 = 15692;
LABEL_113:
    *(v10 + v11) = v9;
    goto LABEL_114;
  }

  if (a2 != 34048)
  {
    if (a2 == 34913 && a3 == 34914)
    {
      if (v5 < 8)
      {
        if (*&a4 < 2)
        {
          v6 = 1 << v5;
          if (*&a4 == 1)
          {
            v7 = *(result + 15384) | v6;
          }

          else
          {
            v7 = *(result + 15384) & ~v6;
          }

          *(result + 15384) = v7;
          *v4 = 0;
          *(result + 1520) |= 0x400000u;
          return result;
        }

        goto LABEL_115;
      }

LABEL_13:
      if (*(result + 29832))
      {
        return result;
      }

      v8 = 1282;
      goto LABEL_118;
    }

LABEL_115:
    if (*(result + 29832))
    {
      return result;
    }

    v8 = 1280;
LABEL_118:
    *(result + 29832) = v8;
    return result;
  }

  if (a3 != 34049)
  {
    goto LABEL_115;
  }

  *(result + 4 * v5 + 16260) = LODWORD(a4);
  *(result + 76 * v5 + 15668) = vdupq_lane_s32(*&a4, 0);
  if ((*(*(result + 29032) + 26) & 0x2000) != 0)
  {
    v12 = *(result + 19248);
    if (v12)
    {
      v13 = *(v12 + 2 * v5 + 3752);
      if (v13 <= 0x3FF)
      {
        *(result + ((v13 >> 3) & 0x1FFC) + 1552) |= 1 << v13;
        *v4 = 0;
        *(result + 1532) |= 0x800000u;
      }
    }

    v14 = *(result + 19272);
    if (v14)
    {
      v15 = *(v14 + 2 * v5 + 3752);
      if (v15 <= 0x3FF)
      {
        *(result + ((v15 >> 3) & 0x1FFC) + 1936) |= 1 << v15;
        *v4 = 0;
        *(result + 1532) |= 0x4000000u;
      }
    }

    v16 = *(result + 19280);
    if (v16)
    {
      v17 = *(v16 + 2 * v5 + 3752);
      if (v17 <= 0x3FF)
      {
        *(result + ((v17 >> 3) & 0x1FFC) + 2064) |= 1 << v17;
        *v4 = 0;
        *(result + 1532) |= 0x8000000u;
      }
    }
  }

  else
  {
    *v4 = 0;
    *(result + 1536) |= 0x10000 << (v5 & 7);
  }

  return result;
}