uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v129 = v15;
  v17 = v16;
  v19 = v18;
  v124 = v20;
  v125 = v21;
  v112 = v22;
  v23 = v12;
  v146[96] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v128 = v14;
  v24 = v14 >> 2;
  v111 = v14 + a10 - 1;
  v113 = v111 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v132 = v23;
  if (*(v23 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = (v27 & 0xD00) == 0 || v27 == 768;
  v29 = v27 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v123 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v122 = result;
  if (v24 <= v113)
  {
    v121 = v129 + a9 - 1;
    if (v129 >> 3 <= v121 >> 3)
    {
      result = v23;
      v131 = (v19 - 1) >> 3;
      v110 = (v17 - 1) >> 2;
      v107 = v19 - 1;
      v115 = (v19 - 1) & 7;
      v108 = ((v17 - 1) & 3) + 1;
      v109 = (v17 - 1) & 3;
      v114 = 2 * a11;
      v33 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v34 = vcgt_u32(v33, 0xF00000007);
      v120 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v33, 0xFFFFFFFDFFFFFFFELL), -1))))))), v34);
      v119 = v34;
      v106 = 8 * v26 * v25;
      do
      {
        v35 = (4 * v24) | 3;
        if (4 * v24 <= v128)
        {
          v36 = v128;
        }

        else
        {
          v36 = 4 * v24;
        }

        if (v111 < v35)
        {
          v35 = v111;
        }

        v127 = 4 * v24;
        v118 = v36 - 4 * v24;
        v37 = v35 - v36;
        v38 = v37 + 1;
        v39 = v37 != v109;
        v117 = v38;
        v40 = v38 != 4;
        v41 = v129 >> 3;
        v42 = v108;
        if (v24 != v110)
        {
          v42 = 4;
        }

        v130 = v42;
        if (v24 != v110)
        {
          v39 = v40;
        }

        v116 = v39;
        v126 = v112 + (v36 - v128) * a11;
        v43 = v129;
        do
        {
          v48 = 8 * v41;
          v49 = 8 * (v41 + 1) - 1;
          if (8 * v41 <= v43)
          {
            v50 = v43;
          }

          else
          {
            v50 = 8 * v41;
          }

          if (v121 < v49)
          {
            v49 = v129 + a9 - 1;
          }

          v51 = v49 - v50;
          v52 = v51 + 1;
          if (v41 == v131)
          {
            v53 = v115 + 1;
          }

          else
          {
            v53 = 8;
          }

          v54 = 1;
          if (v127 >= v128 && v48 >= v43)
          {
            v55 = v51 != v115;
            if (v41 != v131)
            {
              v55 = v52 != 8;
            }

            v54 = v55 || v116;
          }

          if (v122)
          {
            v76 = 0;
            v77 = v106 >> (*(result + 57) != 0);
            v78 = 1;
            if (v77 <= 63)
            {
              if (v77 > 15)
              {
                if (v77 == 16)
                {
                  v78 = 0;
                  v79 = 64;
                  v76 = 128;
                }

                else
                {
                  v79 = 0;
                  if (v77 == 32)
                  {
                    v78 = 0;
                    v76 = 64;
                    v79 = 64;
                  }
                }
              }

              else if (v77 == 4)
              {
                v78 = 0;
                v79 = 128;
                v76 = 256;
              }

              else
              {
                v79 = 0;
                if (v77 == 8)
                {
                  v78 = 0;
                  v76 = 128;
                  v79 = 128;
                }
              }
            }

            else if (v77 <= 255)
            {
              if (v77 == 64)
              {
                v78 = 0;
                v79 = 32;
                v76 = 64;
              }

              else
              {
                v79 = 0;
                if (v77 == 128)
                {
                  v78 = 0;
                  v76 = 32;
                  v79 = 32;
                }
              }
            }

            else if (v77 == 256)
            {
              v78 = 0;
              v79 = 16;
              v76 = 32;
            }

            else if (v77 == 512)
            {
              v78 = 0;
              v76 = 16;
              v79 = 16;
            }

            else
            {
              v79 = 0;
              if (v77 == 1024)
              {
                v78 = 0;
                v79 = 8;
                v76 = 16;
              }
            }

            v94 = (v76 >> 3) - 1;
            v95 = (v79 >> 2) - 1;
            if ((v78 & 1) != 0 || (v96 = 32 - __clz(~(-1 << -__clz(v94))), v97 = 32 - __clz(~(-1 << -__clz(v95))), !(v97 | v96)))
            {
              v105 = 0;
            }

            else
            {
              v98 = 0;
              v99 = 0;
              v100 = v41 & v94;
              v101 = v24 & v95;
              v102 = v97 != 0;
              v103 = v96 != 0;
              v104 = 1;
              do
              {
                --v97;
                if (v102)
                {
                  v99 |= (v104 & v101) << v98++;
                }

                else
                {
                  v97 = 0;
                }

                --v96;
                if (v103)
                {
                  v99 |= (v104 & v100) << v98++;
                }

                else
                {
                  v96 = 0;
                }

                v104 *= 2;
                --v98;
                v103 = v96 != 0;
                v102 = v97 != 0;
              }

              while (v96 | v97);
              v105 = v99 << 10;
              result = v132;
            }

            v63 = v105 + ((v48 / v76 + v127 / v79 * ((v76 + v107) / v76)) << 14);
          }

          else if (v120)
          {
            v56 = 0;
            v57 = 0;
            v58 = 1;
            v60 = v119.i8[0];
            v59 = v119.i8[4];
            v61 = v120.i32[0];
            v62 = v120.i32[1];
            do
            {
              --v61;
              if (v60)
              {
                v57 |= (v58 & v24) << v56++;
              }

              else
              {
                v61 = 0;
              }

              --v62;
              if (v59)
              {
                v57 |= (v58 & v41) << v56++;
              }

              else
              {
                v62 = 0;
              }

              v58 *= 2;
              --v56;
              v59 = v62 != 0;
              v60 = v61 != 0;
            }

            while (v62 | v61);
            v63 = v57 << 10;
          }

          else
          {
            v63 = 0;
          }

          v64 = *(result + 128) >> (*(result + 144) + a12);
          if (v64 <= 1)
          {
            v64 = 1;
          }

          v65 = v64 + 7;
          if (v65 < 0x10)
          {
            v66 = 0;
          }

          else
          {
            v66 = 32 - __clz(~(-1 << -__clz((v65 >> 3) - 1)));
          }

          v67 = *(result + 132) >> (*(result + 144) + a12);
          if (v67 <= 1)
          {
            v67 = 1;
          }

          v68 = v67 + 3;
          if (v68 < 8)
          {
            v69 = 0;
            if (!v66)
            {
LABEL_81:
              v75 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v69 = 32 - __clz(~(-1 << -__clz((v68 >> 2) - 1)));
            if (!(v69 | v66))
            {
              goto LABEL_81;
            }
          }

          v70 = 0;
          v71 = 0;
          v72 = v66 != 0;
          v73 = v69 != 0;
          v74 = 1;
          do
          {
            --v66;
            if (v72)
            {
              v71 |= (v74 & v41) << v70++;
            }

            else
            {
              v66 = 0;
            }

            --v69;
            if (v73)
            {
              v71 |= (v74 & v24) << v70++;
            }

            else
            {
              v69 = 0;
            }

            v74 *= 2;
            --v70;
            v73 = v69 != 0;
            v72 = v66 != 0;
          }

          while (v69 | v66);
          v75 = 8 * v71;
LABEL_82:
          v80 = (v124 + v63);
          if (v123)
          {
            v81 = v52;
            memcpy(__dst, (v124 + v63), sizeof(__dst));
            v52 = v81;
            result = v132;
            v80 = __dst;
          }

          v82 = (v125 + v75);
          v83 = v126 + ((v50 - v43) << 6);
          if (!(v54 & 1 | (v53 < 8u)) && v130 > 3)
          {
            v44 = *(*(result + 208) + 52);
            v45 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v83, a11, v80, *v82, v44)];
            v46 = v45 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v83 + v114, a11, v45, v82[1], v44);
            v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v83 + 256, a11, v46, v82[2], v44);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v83 + v114 + 256, a11, v46 + v47, v82[3], v44);
LABEL_29:
            v43 = v129;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v80;
          v140 = v53;
          v141 = v130;
          v136 = v118;
          v137 = v50 - v48;
          block[6] = v82;
          v134 = v83;
          v135 = a11;
          v138 = v117;
          v139 = v52;
          if (v54)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v84 = *(*(result + 208) + 52);
          v85 = &v80[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v143, 512, v80, *v82, v84)];
          v86 = v85 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v145, 512, v85, v82[1], v84);
          v87 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v144, 512, v86, v82[2], v84);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v146, 512, v86 + v87, v82[3], v84);
          v88 = v138;
          v43 = v129;
          if (v138)
          {
            v89 = 0;
            v90 = &v143[512 * v136 + 64 * v137];
            v91 = v139;
            do
            {
              if (v91)
              {
                v92 = 0;
                v93 = v134 + v135 * v89;
                do
                {
                  *(v93 + v92) = v90[v92];
                  ++v92;
                  v91 = v139;
                }

                while (v139 << 6 > v92);
                v88 = v138;
              }

              ++v89;
              v90 += 512;
            }

            while (v89 < v88);
          }

LABEL_30:
          v28 = v41++ == v121 >> 3;
          result = v132;
        }

        while (!v28);
        v28 = v24++ == v113;
      }

      while (!v28);
    }
  }

  return result;
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v251 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v222 = a8;
  v17 = a8 >> 2;
  v204 = a8 + a10 - 1;
  v206 = v204 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v217 = v24;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  if (v17 <= v206)
  {
    v215 = a7 + a9 - 1;
    if (a7 >> 3 <= v215 >> 3)
    {
      v224 = (a5 - 1) >> 3;
      v201 = a5 - 1;
      v208 = (a5 - 1) & 7;
      v202 = (a6 - 1) & 3;
      v203 = (a6 - 1) >> 2;
      v207 = 2 * a11;
      v25 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v26.i8 = vcgt_u32(v25, 0xF00000007);
      *v27.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v25, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v26.i8);
      v213 = v27.i64[0];
      v214 = v27.i32[0] | v27.i32[1];
      v212 = v26.i64[0];
      v200 = 8 * v19 * v18;
      do
      {
        v28 = (4 * v17) | 3;
        if (4 * v17 <= v222)
        {
          v29 = v222;
        }

        else
        {
          v29 = 4 * v17;
        }

        if (v204 < v28)
        {
          v28 = v204;
        }

        v221 = 4 * v17;
        v211 = v29 - 4 * v17;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v202;
        v210 = v31;
        v33 = v31 != 4;
        v34 = a7 >> 3;
        v35 = v202 + 1;
        if (v17 != v203)
        {
          v35 = 4;
        }

        v223 = v35;
        if (v17 != v203)
        {
          v32 = v33;
        }

        v209 = v32;
        v220 = a2 + (v29 - v222) * a11;
        do
        {
          v37 = 8 * v34;
          v38 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= a7)
          {
            v39 = a7;
          }

          else
          {
            v39 = 8 * v34;
          }

          if (v215 < v38)
          {
            v38 = a7 + a9 - 1;
          }

          v40 = v38 - v39;
          v41 = v38 - v39 + 1;
          if (v34 == v224)
          {
            v42 = v208 + 1;
          }

          else
          {
            v42 = 8;
          }

          v43 = 1;
          if (v221 >= v222 && v37 >= a7)
          {
            v44 = v40 != v208;
            if (v34 != v224)
            {
              v44 = v41 != 8;
            }

            v43 = v44 || v209;
          }

          if (isLevelTiled)
          {
            v65 = 0;
            v66 = v200 >> (*(a1 + 57) != 0);
            v67 = 1;
            if (v66 <= 63)
            {
              if (v66 > 15)
              {
                if (v66 == 16)
                {
                  v67 = 0;
                  v68 = 64;
                  v65 = 128;
                }

                else
                {
                  v68 = 0;
                  if (v66 == 32)
                  {
                    v67 = 0;
                    v65 = 64;
                    v68 = 64;
                  }
                }
              }

              else if (v66 == 4)
              {
                v67 = 0;
                v68 = 128;
                v65 = 256;
              }

              else
              {
                v68 = 0;
                if (v66 == 8)
                {
                  v67 = 0;
                  v65 = 128;
                  v68 = 128;
                }
              }
            }

            else if (v66 <= 255)
            {
              if (v66 == 64)
              {
                v67 = 0;
                v68 = 32;
                v65 = 64;
              }

              else
              {
                v68 = 0;
                if (v66 == 128)
                {
                  v67 = 0;
                  v65 = 32;
                  v68 = 32;
                }
              }
            }

            else if (v66 == 256)
            {
              v67 = 0;
              v68 = 16;
              v65 = 32;
            }

            else if (v66 == 512)
            {
              v67 = 0;
              v65 = 16;
              v68 = 16;
            }

            else
            {
              v68 = 0;
              if (v66 == 1024)
              {
                v67 = 0;
                v68 = 8;
                v65 = 16;
              }
            }

            v188 = (v65 >> 3) - 1;
            v189 = (v68 >> 2) - 1;
            if ((v67 & 1) != 0 || (v190 = 32 - __clz(~(-1 << -__clz(v188))), v191 = 32 - __clz(~(-1 << -__clz(v189))), !(v191 | v190)))
            {
              v199 = 0;
            }

            else
            {
              v192 = 0;
              v193 = 0;
              v194 = v34 & v188;
              v195 = v17 & v189;
              v196 = v191 != 0;
              v197 = v190 != 0;
              v198 = 1;
              do
              {
                --v191;
                if (v196)
                {
                  v193 |= (v198 & v195) << v192++;
                }

                else
                {
                  v191 = 0;
                }

                --v190;
                if (v197)
                {
                  v193 |= (v198 & v194) << v192++;
                }

                else
                {
                  v190 = 0;
                }

                v198 *= 2;
                --v192;
                v197 = v190 != 0;
                v196 = v191 != 0;
              }

              while (v190 | v191);
              v199 = v193 << 7;
            }

            v52 = v199 + ((v37 / v65 + v221 / v68 * ((v65 + v201) / v65)) << 14);
          }

          else if (v214)
          {
            v45 = 0;
            v46 = 0;
            v47 = 1;
            v49 = v212;
            v48 = BYTE4(v212);
            v50 = v213;
            v51 = HIDWORD(v213);
            do
            {
              --v50;
              if (v49)
              {
                v46 |= (v47 & v17) << v45++;
              }

              else
              {
                v50 = 0;
              }

              --v51;
              if (v48)
              {
                v46 |= (v47 & v34) << v45++;
              }

              else
              {
                v51 = 0;
              }

              v47 *= 2;
              --v45;
              v48 = v51 != 0;
              v49 = v50 != 0;
            }

            while (v51 | v50);
            v52 = v46 << 7;
          }

          else
          {
            v52 = 0;
          }

          v53 = *(a1 + 128) >> (*(a1 + 144) + a12);
          if (v53 <= 1)
          {
            v53 = 1;
          }

          v54 = v53 + 7;
          if (v54 < 0x10)
          {
            v55 = 0;
          }

          else
          {
            v55 = 32 - __clz(~(-1 << -__clz((v54 >> 3) - 1)));
          }

          v56 = *(a1 + 132) >> (*(a1 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 3;
          if (v57 < 8)
          {
            v58 = 0;
            if (!v55)
            {
LABEL_81:
              v64 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 2) - 1)));
            if (!(v58 | v55))
            {
              goto LABEL_81;
            }
          }

          v59 = 0;
          v60 = 0;
          v61 = v55 != 0;
          v62 = v58 != 0;
          v63 = 1;
          do
          {
            --v55;
            if (v61)
            {
              v60 |= (v63 & v34) << v59++;
            }

            else
            {
              v55 = 0;
            }

            --v58;
            if (v62)
            {
              v60 |= (v63 & v17) << v59++;
            }

            else
            {
              v58 = 0;
            }

            v63 *= 2;
            --v59;
            v62 = v58 != 0;
            v61 = v55 != 0;
          }

          while (v58 | v55);
          v64 = 8 * v60;
LABEL_82:
          v69 = (a3 + v52);
          if (v217)
          {
            v70 = v69[13];
            v234[12] = v69[12];
            v234[13] = v70;
            v71 = v69[15];
            v234[14] = v69[14];
            v234[15] = v71;
            v72 = v69[9];
            v234[8] = v69[8];
            v234[9] = v72;
            v73 = v69[11];
            v234[10] = v69[10];
            v234[11] = v73;
            v74 = v69[5];
            v234[4] = v69[4];
            v234[5] = v74;
            v75 = v69[7];
            v234[6] = v69[6];
            v234[7] = v75;
            v76 = v69[1];
            v234[0] = *v69;
            v234[1] = v76;
            v27 = v69[2];
            v26 = v69[3];
            v69 = v234;
            v234[2] = v27;
            v234[3] = v26;
          }

          v77 = (a4 + v64);
          v78 = (v220 + 8 * (v39 - a7));
          if (!(v43 & 1 | (v42 < 8u)) && v223 > 3)
          {
            v79 = *(a1 + 208);
            v80 = *(v79 + 52);
            v81 = *v77;
            if (*v77)
            {
              if (v81 < 0xF0)
              {
                if (v81 == 31)
                {
                  v27.i64[0] = v69->i64[0];
                  v26.i64[0] = v69->i64[1];
                  v88 = v69[1].i64[0];
                  v89 = v69[1].i64[1];
                  v78->i64[0] = v69->i64[0];
                  v78->i64[1] = v26.i64[0];
                  v90 = (v78->i64 + a11);
                  *v90 = v88;
                  v90[1] = v89;
                  v82 = 32;
                }

                else if (v81 == 96)
                {
                  v27 = vld1q_dup_s8(v69->i8);
                  *v78 = v27;
                  *(v78 + a11) = v27;
                  v82 = 1;
                }

                else
                {
                  v82 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v220 + 8 * (v39 - a7)), a11, v69, v81, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v220 + 8 * (v39 - a7)), a11, v69, v81, *(v79 + 52)).n128_u64[0];
                v82 = 16;
              }
            }

            else
            {
              v82 = 0;
              v78->i64[0] = 0;
              v78->i64[1] = 0;
              v87 = (v78->i64 + a11);
              *v87 = 0;
              v87[1] = 0;
            }

            v91 = v69->u64 + v82;
            v92 = v78 + 1;
            v93 = v77[1];
            if (v77[1])
            {
              if (v93 < 0xF0)
              {
                if (v93 == 31)
                {
                  v27.i64[0] = *v91;
                  v26.i64[0] = *(v91 + 8);
                  v96 = *(v91 + 16);
                  v97 = *(v91 + 24);
                  v78[1].i64[0] = *v91;
                  v78[1].i64[1] = v26.i64[0];
                  v98 = (v92->i64 + a11);
                  *v98 = v96;
                  v98[1] = v97;
                  v94 = 32;
                }

                else if (v93 == 96)
                {
                  v27 = vld1q_dup_s8(v91);
                  *v92 = v27;
                  *(v92 + a11) = v27;
                  v94 = 1;
                }

                else
                {
                  v94 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v92, a11, v91, v93, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v92, a11, v91, v93, v80).n128_u64[0];
                v94 = 16;
              }
            }

            else
            {
              v94 = 0;
              v92->i64[0] = 0;
              v78[1].i64[1] = 0;
              v95 = (v92->i64 + a11);
              *v95 = 0;
              v95[1] = 0;
            }

            v99 = v91 + v94;
            v100 = (v78 + v207);
            v101 = v77[2];
            if (v77[2])
            {
              if (v101 < 0xF0)
              {
                if (v101 == 31)
                {
                  v27.i64[0] = *v99;
                  v26.i64[0] = *(v99 + 8);
                  v104 = *(v99 + 16);
                  v105 = *(v99 + 24);
                  v100->i64[0] = *v99;
                  v100->i64[1] = v26.i64[0];
                  v106 = (v100->i64 + a11);
                  *v106 = v104;
                  v106[1] = v105;
                  v102 = 32;
                }

                else if (v101 == 96)
                {
                  v27 = vld1q_dup_s8(v99);
                  *v100 = v27;
                  *(v100 + a11) = v27;
                  v102 = 1;
                }

                else
                {
                  v102 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v78 + v207), a11, v99, v101, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v78->i8[v207], a11, v99, v101, v80).n128_u64[0];
                v102 = 16;
              }
            }

            else
            {
              v102 = 0;
              v100->i64[0] = 0;
              v100->i64[1] = 0;
              v103 = (v100->i64 + a11);
              *v103 = 0;
              v103[1] = 0;
            }

            v107 = v99 + v102;
            v108 = v100 + 1;
            v109 = v77[3];
            if (v77[3])
            {
              if (v109 < 0xF0)
              {
                if (v109 == 31)
                {
                  v27.i64[0] = *v107;
                  v26.i64[0] = *(v107 + 8);
                  v112 = *(v107 + 16);
                  v113 = *(v107 + 24);
                  v100[1].i64[0] = *v107;
                  v100[1].i64[1] = v26.i64[0];
                  v114 = (v108->i64 + a11);
                  *v114 = v112;
                  v114[1] = v113;
                  v110 = 32;
                }

                else if (v109 == 96)
                {
                  v27 = vld1q_dup_s8(v107);
                  *v108 = v27;
                  *(v108 + a11) = v27;
                  v110 = 1;
                }

                else
                {
                  v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v108, a11, v107, v109, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v108, a11, v107, v109, v80).n128_u64[0];
                v110 = 16;
              }
            }

            else
            {
              v110 = 0;
              v108->i64[0] = 0;
              v100[1].i64[1] = 0;
              v111 = (v108->i64 + a11);
              *v111 = 0;
              v111[1] = 0;
            }

            v115 = v107 + v110;
            v116 = v78 + 2;
            v117 = v77[4];
            if (v77[4])
            {
              if (v117 < 0xF0)
              {
                if (v117 == 31)
                {
                  v27.i64[0] = *v115;
                  v26.i64[0] = *(v115 + 8);
                  v120 = *(v115 + 16);
                  v121 = *(v115 + 24);
                  v78[2].i64[0] = *v115;
                  v78[2].i64[1] = v26.i64[0];
                  v122 = (v116->i64 + a11);
                  *v122 = v120;
                  v122[1] = v121;
                  v118 = 32;
                }

                else if (v117 == 96)
                {
                  v27 = vld1q_dup_s8(v115);
                  *v116 = v27;
                  *(v116 + a11) = v27;
                  v118 = 1;
                }

                else
                {
                  v118 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v116, a11, v115, v117, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v116, a11, v115, v117, v80).n128_u64[0];
                v118 = 16;
              }
            }

            else
            {
              v118 = 0;
              v116->i64[0] = 0;
              v78[2].i64[1] = 0;
              v119 = (v116->i64 + a11);
              *v119 = 0;
              v119[1] = 0;
            }

            v123 = v115 + v118;
            v124 = v78 + 3;
            v125 = v77[5];
            if (v77[5])
            {
              if (v125 < 0xF0)
              {
                if (v125 == 31)
                {
                  v27.i64[0] = *v123;
                  v26.i64[0] = *(v123 + 8);
                  v128 = *(v123 + 16);
                  v129 = *(v123 + 24);
                  v78[3].i64[0] = *v123;
                  v78[3].i64[1] = v26.i64[0];
                  v130 = (v124->i64 + a11);
                  *v130 = v128;
                  v130[1] = v129;
                  v126 = 32;
                }

                else if (v125 == 96)
                {
                  v27 = vld1q_dup_s8(v123);
                  *v124 = v27;
                  *(v124 + a11) = v27;
                  v126 = 1;
                }

                else
                {
                  v126 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v124, a11, v123, v125, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v124, a11, v123, v125, v80).n128_u64[0];
                v126 = 16;
              }
            }

            else
            {
              v126 = 0;
              v124->i64[0] = 0;
              v78[3].i64[1] = 0;
              v127 = (v124->i64 + a11);
              *v127 = 0;
              v127[1] = 0;
            }

            v131 = v123 + v126;
            v132 = v100 + 2;
            v133 = v77[6];
            if (v77[6])
            {
              if (v133 < 0xF0)
              {
                if (v133 == 31)
                {
                  v27.i64[0] = *v131;
                  v26.i64[0] = *(v131 + 8);
                  v136 = *(v131 + 16);
                  v137 = *(v131 + 24);
                  v100[2].i64[0] = *v131;
                  v100[2].i64[1] = v26.i64[0];
                  v138 = (v132->i64 + a11);
                  *v138 = v136;
                  v138[1] = v137;
                  v134 = 32;
                }

                else if (v133 == 96)
                {
                  v27 = vld1q_dup_s8(v131);
                  *v132 = v27;
                  *(v132 + a11) = v27;
                  v134 = 1;
                }

                else
                {
                  v134 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v132, a11, v131, v133, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v132, a11, v131, v133, v80).n128_u64[0];
                v134 = 16;
              }
            }

            else
            {
              v134 = 0;
              v132->i64[0] = 0;
              v100[2].i64[1] = 0;
              v135 = (v132->i64 + a11);
              *v135 = 0;
              v135[1] = 0;
            }

            v139 = v100 + 3;
            v140 = v77[7];
            if (v77[7])
            {
              v141 = v131 + v134;
              if (v140 < 0xF0)
              {
                if (v140 == 31)
                {
                  v27.i64[0] = *v141;
                  v26.i64[0] = *(v141 + 8);
                  v143 = *(v141 + 16);
                  v144 = *(v141 + 24);
                  v100[3].i64[0] = *v141;
                  v100[3].i64[1] = v26.i64[0];
                  v145 = (v139->i64 + a11);
                  *v145 = v143;
                  v145[1] = v144;
                }

                else if (v140 == 96)
                {
                  v27 = vld1q_dup_s8(v141);
                  *v139 = v27;
                  *(v139 + a11) = v27;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v139, a11, v141, v140, *v27.i64, *v26.i8);
                }
              }

              else
              {
                v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v139, a11, v141, v140, v80).n128_u64[0];
              }
            }

            else
            {
              v139->i64[0] = 0;
              v100[3].i64[1] = 0;
              v142 = (v139->i64 + a11);
              *v142 = 0;
              v142[1] = 0;
            }

            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = a1;
          block[5] = v69;
          v232 = v42;
          v233 = v223;
          v228 = v211;
          v229 = v39 - v37;
          block[6] = a4 + v64;
          v226 = v220 + 8 * (v39 - a7);
          v227 = a11;
          v230 = v210;
          v231 = v41;
          if (v43)
          {
            dispatch_sync(*(*(a1 + 8) + 16552), block);
LABEL_29:
            v36 = v34 + 1;
            goto LABEL_30;
          }

          v83 = *(a1 + 208);
          v84 = *(v83 + 52);
          v85 = *v77;
          if (*v77)
          {
            if (v85 < 0xF0)
            {
              if (v85 == 31)
              {
                v27.i64[0] = v69->i64[0];
                v26.i64[0] = v69->i64[1];
                v146 = v69[1].i64[0];
                v147 = v69[1].i64[1];
                v235.i64[0] = v69->i64[0];
                v235.i64[1] = v26.i64[0];
                v239.i64[0] = v146;
                v239.i64[1] = v147;
                v86 = 32;
              }

              else if (v85 == 96)
              {
                v27 = vld1q_dup_s8(v69->i8);
                v235 = v27;
                v239 = v27;
                v86 = 1;
              }

              else
              {
                v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v235, 64, v69, v85, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v235, 64, v69, v85, *(v83 + 52)).n128_u64[0];
              v86 = 16;
            }
          }

          else
          {
            v86 = 0;
            v235 = 0uLL;
            v239 = 0uLL;
          }

          v148 = v69->u64 + v86;
          v149 = v77[1];
          if (v77[1])
          {
            if (v149 < 0xF0)
            {
              if (v149 == 31)
              {
                v27.i64[0] = *v148;
                v26.i64[0] = *(v148 + 8);
                v151 = *(v148 + 16);
                v152 = *(v148 + 24);
                v236.i64[0] = *v148;
                v236.i64[1] = v26.i64[0];
                v240.i64[0] = v151;
                v240.i64[1] = v152;
                v150 = 32;
              }

              else if (v149 == 96)
              {
                v27 = vld1q_dup_s8(v148);
                v236 = v27;
                v240 = v27;
                v150 = 1;
              }

              else
              {
                v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v236, 64, v148, v149, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v236, 64, v148, v149, v84).n128_u64[0];
              v150 = 16;
            }
          }

          else
          {
            v150 = 0;
            v236 = 0uLL;
            v240 = 0uLL;
          }

          v153 = v148 + v150;
          v154 = v77[2];
          if (v77[2])
          {
            if (v154 < 0xF0)
            {
              if (v154 == 31)
              {
                v27.i64[0] = *v153;
                v26.i64[0] = *(v153 + 8);
                v156 = *(v153 + 16);
                v157 = *(v153 + 24);
                v243.i64[0] = *v153;
                v243.i64[1] = v26.i64[0];
                v247.i64[0] = v156;
                v247.i64[1] = v157;
                v155 = 32;
              }

              else if (v154 == 96)
              {
                v27 = vld1q_dup_s8(v153);
                v243 = v27;
                v247 = v27;
                v155 = 1;
              }

              else
              {
                v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v243, 64, v153, v154, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v243, 64, v153, v154, v84).n128_u64[0];
              v155 = 16;
            }
          }

          else
          {
            v155 = 0;
            v243 = 0uLL;
            v247 = 0uLL;
          }

          v158 = v153 + v155;
          v159 = v77[3];
          if (v77[3])
          {
            if (v159 < 0xF0)
            {
              if (v159 == 31)
              {
                v27.i64[0] = *v158;
                v26.i64[0] = *(v158 + 8);
                v161 = *(v158 + 16);
                v162 = *(v158 + 24);
                v244.i64[0] = *v158;
                v244.i64[1] = v26.i64[0];
                v248.i64[0] = v161;
                v248.i64[1] = v162;
                v160 = 32;
              }

              else if (v159 == 96)
              {
                v27 = vld1q_dup_s8(v158);
                v244 = v27;
                v248 = v27;
                v160 = 1;
              }

              else
              {
                v160 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v244, 64, v158, v159, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v244, 64, v158, v159, v84).n128_u64[0];
              v160 = 16;
            }
          }

          else
          {
            v160 = 0;
            v244 = 0uLL;
            v248 = 0uLL;
          }

          v163 = v158 + v160;
          v164 = v77[4];
          if (v77[4])
          {
            if (v164 < 0xF0)
            {
              if (v164 == 31)
              {
                v27.i64[0] = *v163;
                v26.i64[0] = *(v163 + 8);
                v166 = *(v163 + 16);
                v167 = *(v163 + 24);
                v237.i64[0] = *v163;
                v237.i64[1] = v26.i64[0];
                v241.i64[0] = v166;
                v241.i64[1] = v167;
                v165 = 32;
              }

              else if (v164 == 96)
              {
                v27 = vld1q_dup_s8(v163);
                v237 = v27;
                v241 = v27;
                v165 = 1;
              }

              else
              {
                v165 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v237, 64, v163, v164, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v237, 64, v163, v164, v84).n128_u64[0];
              v165 = 16;
            }
          }

          else
          {
            v165 = 0;
            v237 = 0uLL;
            v241 = 0uLL;
          }

          v168 = v163 + v165;
          v169 = v77[5];
          if (v77[5])
          {
            if (v169 < 0xF0)
            {
              if (v169 == 31)
              {
                v27.i64[0] = *v168;
                v26.i64[0] = *(v168 + 8);
                v171 = *(v168 + 16);
                v172 = *(v168 + 24);
                v238.i64[0] = *v168;
                v238.i64[1] = v26.i64[0];
                v242.i64[0] = v171;
                v242.i64[1] = v172;
                v170 = 32;
              }

              else if (v169 == 96)
              {
                v27 = vld1q_dup_s8(v168);
                v238 = v27;
                v242 = v27;
                v170 = 1;
              }

              else
              {
                v170 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v238, 64, v168, v169, *v27.i64, *v26.i8);
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v238, 64, v168, v169, v84).n128_u64[0];
              v170 = 16;
            }
          }

          else
          {
            v170 = 0;
            v238 = 0uLL;
            v242 = 0uLL;
          }

          v173 = v168 + v170;
          v174 = v77[6];
          if (v77[6])
          {
            if (v174 < 0xF0)
            {
              if (v174 == 31)
              {
                v27.i64[0] = *v173;
                v26.i64[0] = *(v173 + 8);
                v177 = *(v173 + 16);
                v178 = *(v173 + 24);
                v245.i64[0] = *v173;
                v245.i64[1] = v26.i64[0];
                v249.i64[0] = v177;
                v249.i64[1] = v178;
                v175 = 32;
                v176 = v77[7];
                if (!v77[7])
                {
                  goto LABEL_231;
                }
              }

              else if (v174 == 96)
              {
                v27 = vld1q_dup_s8(v173);
                v245 = v27;
                v249 = v27;
                v175 = 1;
                v176 = v77[7];
                if (!v77[7])
                {
                  goto LABEL_231;
                }
              }

              else
              {
                v175 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v245, 64, v173, v174, *v27.i64, *v26.i8);
                v176 = v77[7];
                if (!v77[7])
                {
LABEL_231:
                  v246 = 0uLL;
                  v250 = 0uLL;
                  goto LABEL_233;
                }
              }
            }

            else
            {
              v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v245, 64, v173, v174, v84).n128_u64[0];
              v175 = 16;
              v176 = v77[7];
              if (!v77[7])
              {
                goto LABEL_231;
              }
            }
          }

          else
          {
            v175 = 0;
            v245 = 0uLL;
            v249 = 0uLL;
            v176 = v77[7];
            if (!v77[7])
            {
              goto LABEL_231;
            }
          }

          v179 = v173 + v175;
          if (v176 < 0xF0)
          {
            if (v176 == 31)
            {
              v27.i64[0] = *v179;
              v26.i64[0] = *(v179 + 8);
              v180 = *(v179 + 16);
              v181 = *(v179 + 24);
              v246.i64[0] = *v179;
              v246.i64[1] = v26.i64[0];
              v250.i64[0] = v180;
              v250.i64[1] = v181;
            }

            else if (v176 == 96)
            {
              v27 = vld1q_dup_s8(v179);
              v246 = v27;
              v250 = v27;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 64, v179, v176, *v27.i64, *v26.i8);
            }
          }

          else
          {
            v27.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v246, 64, v179, v176, v84).n128_u64[0];
          }

LABEL_233:
          v36 = v34 + 1;
          v182 = v230;
          if (v230)
          {
            v183 = 0;
            v184 = &v235.i8[64 * v228 + 8 * v229];
            v185 = v231;
            do
            {
              if (v185)
              {
                v186 = 0;
                v187 = v226 + v227 * v183;
                do
                {
                  *(v187 + v186) = v184[v186];
                  ++v186;
                  v185 = v231;
                }

                while (8 * v231 > v186);
                v182 = v230;
              }

              ++v183;
              v184 += 64;
            }

            while (v183 < v182);
          }

LABEL_30:
          v21 = v34 == v215 >> 3;
          v34 = v36;
        }

        while (!v21);
        v21 = v17++ == v206;
      }

      while (!v21);
    }
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v155[40] = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v133 = a8;
  v16 = a8 >> 2;
  v116 = a8 + a10 - 1;
  v118 = v116 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v137 = a1;
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v128 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v127 = result;
  if (v16 <= v118)
  {
    v126 = a7 + a9 - 1;
    if (a7 >> 3 <= v126 >> 3)
    {
      result = a1;
      v25 = a11;
      v136 = (a5 - 1) >> 3;
      v113 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v114 = (a6 - 1) & 3;
      v115 = (a6 - 1) >> 2;
      v119 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v124 = v27;
      v112 = 8 * v18 * v17;
      do
      {
        v28 = (4 * v16) | 3;
        if (4 * v16 <= v133)
        {
          v29 = v133;
        }

        else
        {
          v29 = 4 * v16;
        }

        if (v116 < v28)
        {
          v28 = v116;
        }

        v132 = 4 * v16;
        v123 = v29 - 4 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v114;
        v122 = v31;
        v33 = v31 != 4;
        v34 = a7 >> 3;
        v35 = v114 + 1;
        if (v16 != v115)
        {
          v35 = 4;
        }

        v135 = v35;
        if (v16 != v115)
        {
          v32 = v33;
        }

        v121 = v32;
        v131 = a2 + (v29 - v133) * v25;
        v36 = a7;
        do
        {
          v46 = 8 * v34;
          v47 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= v36)
          {
            v48 = v36;
          }

          else
          {
            v48 = 8 * v34;
          }

          if (v126 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v34 == v136)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v132 >= v133 && v46 >= v36)
          {
            v53 = v49 != v120;
            if (v34 != v136)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (v127)
          {
            v74 = 0;
            v75 = v112 >> (*(result + 57) != 0);
            v76 = 1;
            if (v75 <= 63)
            {
              if (v75 > 15)
              {
                if (v75 == 16)
                {
                  v76 = 0;
                  v77 = 64;
                  v74 = 128;
                }

                else
                {
                  v77 = 0;
                  if (v75 == 32)
                  {
                    v76 = 0;
                    v74 = 64;
                    v77 = 64;
                  }
                }
              }

              else if (v75 == 4)
              {
                v76 = 0;
                v77 = 128;
                v74 = 256;
              }

              else
              {
                v77 = 0;
                if (v75 == 8)
                {
                  v76 = 0;
                  v74 = 128;
                  v77 = 128;
                }
              }
            }

            else if (v75 <= 255)
            {
              if (v75 == 64)
              {
                v76 = 0;
                v77 = 32;
                v74 = 64;
              }

              else
              {
                v77 = 0;
                if (v75 == 128)
                {
                  v76 = 0;
                  v74 = 32;
                  v77 = 32;
                }
              }
            }

            else if (v75 == 256)
            {
              v76 = 0;
              v77 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v74 = 16;
              v77 = 16;
            }

            else
            {
              v77 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v77 = 8;
                v74 = 16;
              }
            }

            v100 = (v74 >> 3) - 1;
            v101 = (v77 >> 2) - 1;
            if ((v76 & 1) != 0 || (v102 = 32 - __clz(~(-1 << -__clz(v100))), v103 = 32 - __clz(~(-1 << -__clz(v101))), !(v103 | v102)))
            {
              v111 = 0;
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = v34 & v100;
              v107 = v16 & v101;
              v108 = v103 != 0;
              v109 = v102 != 0;
              v110 = 1;
              do
              {
                --v103;
                if (v108)
                {
                  v105 |= (v110 & v107) << v104++;
                }

                else
                {
                  v103 = 0;
                }

                --v102;
                if (v109)
                {
                  v105 |= (v110 & v106) << v104++;
                }

                else
                {
                  v102 = 0;
                }

                v110 *= 2;
                --v104;
                v109 = v102 != 0;
                v108 = v103 != 0;
              }

              while (v102 | v103);
              v111 = v105 << 9;
              result = v137;
            }

            v61 = v111 + ((v46 / v74 + v132 / v77 * ((v74 + v113) / v74)) << 14);
          }

          else if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v124.i8[0];
            v57 = v124.i8[4];
            v59 = v125.i32[0];
            v60 = v125.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v16) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v34) << v54++;
              }

              else
              {
                v60 = 0;
              }

              v56 *= 2;
              --v54;
              v57 = v60 != 0;
              v58 = v59 != 0;
            }

            while (v60 | v59);
            v61 = v55 << 9;
          }

          else
          {
            v61 = 0;
          }

          v62 = *(result + 128) >> (*(result + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(result + 132) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 3;
          if (v66 < 8)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_81:
              v73 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 2) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_81;
            }
          }

          v68 = 0;
          v69 = 0;
          v70 = v64 != 0;
          v71 = v67 != 0;
          v72 = 1;
          do
          {
            --v64;
            if (v70)
            {
              v69 |= (v72 & v34) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v16) << v68++;
            }

            else
            {
              v67 = 0;
            }

            v72 *= 2;
            --v68;
            v71 = v67 != 0;
            v70 = v64 != 0;
          }

          while (v67 | v64);
          v73 = 8 * v69;
LABEL_82:
          v78 = (a3 + v61);
          if (v128)
          {
            v79 = v50;
            v80 = v25;
            v81 = v51;
            v82 = v48;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v48 = v82;
            v46 = 8 * v34;
            v51 = v81;
            v25 = v80;
            v50 = v79;
            result = v137;
            v78 = __dst;
          }

          v84 = (a4 + v73);
          v85 = v131 + 32 * (v48 - v36);
          if (!(v52 & 1 | (v51 < 8u)) && v135 > 3)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v78[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v131 + 32 * (v48 - v36), v25, v78, *v84, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + 64, v25, v38, v84[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + v119, v25, v39, v84[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + v119 + 64, v25, v40, v84[3], v37);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + 128, v25, v41, v84[4], v37);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + 192, v25, v42, v84[5], v37);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + v119 + 128, v25, v43, v84[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + v119 + 192, v25, v43 + v44, v84[7], v37);
LABEL_29:
            v36 = a7;
            v45 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v78;
          v145 = v51;
          v146 = v135;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v131 + 32 * (v48 - v36);
          v140 = v25;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v86 = *(*(result + 208) + 52);
          v87 = &v78[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v148, 256, v78, *v84, v86)];
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v149, 256, v87, v84[1], v86);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v152, 256, v88, v84[2], v86);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v153, 256, v89, v84[3], v86);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v150, 256, v90, v84[4], v86);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v151, 256, v91, v84[5], v86);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(&v154, 256, v92, v84[6], v86);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v155, 256, v92 + v93, v84[7], v86);
          v94 = v143;
          v36 = a7;
          v45 = v34 + 1;
          if (v143)
          {
            v95 = 0;
            v96 = &v148[256 * v141 + 32 * v142];
            v97 = v144;
            do
            {
              if (v97)
              {
                v98 = 0;
                v99 = v139 + v140 * v95;
                do
                {
                  *(v99 + v98) = v96[v98];
                  ++v98;
                  v97 = v144;
                }

                while (32 * v144 > v98);
                v94 = v143;
              }

              ++v95;
              v96 += 256;
            }

            while (v95 < v94);
          }

LABEL_30:
          v20 = v34 == v126 >> 3;
          v34 = v45;
          result = v137;
        }

        while (!v20);
        v20 = v16++ == v118;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v400 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v321 = a8;
  v16 = a8 >> 2;
  v304 = a8 + a10 - 1;
  v306 = v304 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v325 = a1;
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v316 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v315 = result;
  v25 = a7;
  if (v16 <= v306)
  {
    v314 = a7 + a9 - 1;
    if (a7 >> 3 <= v314 >> 3)
    {
      result = a1;
      v26 = a11;
      v323 = (a5 - 1) >> 3;
      v301 = a5 - 1;
      v308 = (a5 - 1) & 7;
      v302 = (a6 - 1) & 3;
      v303 = (a6 - 1) >> 2;
      v307 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v313 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v312 = v28;
      v300 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v321)
        {
          v30 = v321;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v304 < v29)
        {
          v29 = v304;
        }

        v320 = 4 * v16;
        v311 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v302;
        v310 = v32;
        v34 = v32 != 4;
        v35 = a7 >> 3;
        v36 = v302 + 1;
        if (v16 != v303)
        {
          v36 = 4;
        }

        v322 = v36;
        if (v16 != v303)
        {
          v33 = v34;
        }

        v309 = v33;
        v319 = a2 + (v30 - v321) * v26;
        do
        {
          v39 = 8 * v35;
          v40 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= v25)
          {
            v41 = v25;
          }

          else
          {
            v41 = 8 * v35;
          }

          if (v314 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v35 == v323)
          {
            v44 = v308 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v320 >= v321 && v39 >= v25)
          {
            v46 = v42 != v308;
            if (v35 != v323)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v309;
          }

          if (v315)
          {
            v67 = 0;
            v68 = v300 >> (*(result + 57) != 0);
            v69 = 1;
            if (v68 <= 63)
            {
              if (v68 > 15)
              {
                if (v68 == 16)
                {
                  v69 = 0;
                  v70 = 64;
                  v67 = 128;
                }

                else
                {
                  v70 = 0;
                  if (v68 == 32)
                  {
                    v69 = 0;
                    v67 = 64;
                    v70 = 64;
                  }
                }
              }

              else if (v68 == 4)
              {
                v69 = 0;
                v70 = 128;
                v67 = 256;
              }

              else
              {
                v70 = 0;
                if (v68 == 8)
                {
                  v69 = 0;
                  v67 = 128;
                  v70 = 128;
                }
              }
            }

            else if (v68 <= 255)
            {
              if (v68 == 64)
              {
                v69 = 0;
                v70 = 32;
                v67 = 64;
              }

              else
              {
                v70 = 0;
                if (v68 == 128)
                {
                  v69 = 0;
                  v67 = 32;
                  v70 = 32;
                }
              }
            }

            else if (v68 == 256)
            {
              v69 = 0;
              v70 = 16;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v69 = 0;
              v67 = 16;
              v70 = 16;
            }

            else
            {
              v70 = 0;
              if (v68 == 1024)
              {
                v69 = 0;
                v70 = 8;
                v67 = 16;
              }
            }

            v288 = (v67 >> 3) - 1;
            v289 = (v70 >> 2) - 1;
            if ((v69 & 1) != 0 || (v290 = 32 - __clz(~(-1 << -__clz(v288))), v291 = 32 - __clz(~(-1 << -__clz(v289))), !(v291 | v290)))
            {
              v299 = 0;
            }

            else
            {
              v292 = 0;
              v293 = 0;
              v294 = v35 & v288;
              v295 = v16 & v289;
              v296 = v291 != 0;
              v297 = v290 != 0;
              v298 = 1;
              do
              {
                --v291;
                if (v296)
                {
                  v293 |= (v298 & v295) << v292++;
                }

                else
                {
                  v291 = 0;
                }

                --v290;
                if (v297)
                {
                  v293 |= (v298 & v294) << v292++;
                }

                else
                {
                  v290 = 0;
                }

                v298 *= 2;
                --v292;
                v297 = v290 != 0;
                v296 = v291 != 0;
              }

              while (v290 | v291);
              v299 = v293 << 9;
              result = v325;
            }

            v54 = v299 + ((v39 / v67 + v320 / v70 * ((v67 + v301) / v67)) << 14);
          }

          else if (v313)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v312.i8[0];
            v51 = v312.i8[4];
            v52 = v313.i32[0];
            v53 = v313.i32[1];
            do
            {
              --v52;
              if (v50)
              {
                v48 |= (v49 & v16) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v51)
              {
                v48 |= (v49 & v35) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v51 = v53 != 0;
              v50 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

          v55 = *(result + 128) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
          }

          v58 = *(result + 132) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 3;
          if (v59 < 8)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_82:
              v66 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 2) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_82;
            }
          }

          v61 = 0;
          v62 = 0;
          v63 = v57 != 0;
          v64 = v60 != 0;
          v65 = 1;
          do
          {
            --v57;
            if (v63)
            {
              v62 |= (v65 & v35) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v16) << v61++;
            }

            else
            {
              v60 = 0;
            }

            v65 *= 2;
            --v61;
            v64 = v60 != 0;
            v63 = v57 != 0;
          }

          while (v60 | v57);
          v66 = 8 * v62;
LABEL_83:
          v71 = (a3 + v54);
          if (v316)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v325;
            v25 = a7;
            v71 = __dst;
          }

          v72 = (a4 + v66);
          v73 = (v319 + 32 * (v41 - v25));
          if (!(v45 & 1 | (v44 < 8u)) && v322 > 3)
          {
            v74 = *(result + 208);
            v75 = *(v74 + 52);
            v76 = *v72;
            if (*v72)
            {
              v26 = a11;
              if (v76 < 0xF0)
              {
                if (v76 == 127)
                {
                  v86 = v71[1];
                  v87 = v71[2];
                  v88 = v71[3];
                  v89 = v71[4];
                  v90 = v71[5];
                  v91 = v71[6];
                  v92 = v71[7];
                  *v73 = *v71;
                  v73[1] = v86;
                  v93 = &v73->i8[a11];
                  v73[2] = v87;
                  v73[3] = v88;
                  *v93 = v89;
                  *(v93 + 1) = v90;
                  v94 = &v73[2].i8[a11];
                  *v94 = v91;
                  *(v94 + 1) = v92;
                  v77 = 128;
                }

                else if (v76 == 3)
                {
                  v83 = vld1q_dup_f32(v71->i32);
                  *v73 = v83;
                  v73[1] = v83;
                  v73[2] = v83;
                  v73[3] = v83;
                  v84 = &v73->i8[a11];
                  *v84 = v83;
                  v84[1] = v83;
                  v84[2] = v83;
                  v84[3] = v83;
                  v77 = 4;
                }

                else
                {
                  v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v319 + 32 * (v41 - v25)), a11, v71, v76);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v319 + 32 * (v41 - v25)), a11, v71, v76, *(v74 + 52));
                v77 = 64;
              }
            }

            else
            {
              v77 = 0;
              v73[2] = 0u;
              v73[3] = 0u;
              *v73 = 0u;
              v73[1] = 0u;
              v26 = a11;
              v82 = &v73->i8[a11];
              *(v82 + 2) = 0u;
              *(v82 + 3) = 0u;
              *v82 = 0u;
              *(v82 + 1) = 0u;
            }

            v95 = v71->i64 + v77;
            v96 = v73 + 4;
            v97 = v72[1];
            if (v72[1])
            {
              if (v97 < 0xF0)
              {
                if (v97 == 127)
                {
                  v102 = *(v95 + 16);
                  v103 = *(v95 + 32);
                  v104 = *(v95 + 48);
                  v105 = *(v95 + 64);
                  v106 = *(v95 + 80);
                  v107 = *(v95 + 96);
                  v108 = *(v95 + 112);
                  *v96 = *v95;
                  v73[5] = v102;
                  v109 = &v96->i8[v26];
                  v73[6] = v103;
                  v73[7] = v104;
                  *v109 = v105;
                  *(v109 + 1) = v106;
                  v109 += 32;
                  *v109 = v107;
                  *(v109 + 1) = v108;
                  v98 = 128;
                }

                else if (v97 == 3)
                {
                  v100 = vld1q_dup_f32(v95);
                  v73[4] = v100;
                  v73[5] = v100;
                  v73[6] = v100;
                  v73[7] = v100;
                  v101 = &v96->i8[v26];
                  *v101 = v100;
                  v101[1] = v100;
                  v101[2] = v100;
                  v101[3] = v100;
                  v98 = 4;
                }

                else
                {
                  v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v96, v26, v95, v97);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v96, v26, v95, v97, v75);
                v98 = 64;
              }
            }

            else
            {
              v98 = 0;
              v73[6] = 0u;
              v73[7] = 0u;
              *v96 = 0u;
              v73[5] = 0u;
              v99 = &v96->i8[v26];
              *(v99 + 2) = 0u;
              *(v99 + 3) = 0u;
              *v99 = 0u;
              *(v99 + 1) = 0u;
            }

            v110 = v95 + v98;
            v111 = (v73 + v307);
            v112 = v72[2];
            if (v72[2])
            {
              if (v112 < 0xF0)
              {
                if (v112 == 127)
                {
                  v117 = *(v110 + 16);
                  v118 = *(v110 + 32);
                  v119 = *(v110 + 48);
                  v120 = *(v110 + 64);
                  v121 = *(v110 + 80);
                  v122 = *(v110 + 96);
                  v123 = *(v110 + 112);
                  *v111 = *v110;
                  v111[1] = v117;
                  v124 = &v111->i8[v26];
                  v111[2] = v118;
                  v111[3] = v119;
                  *v124 = v120;
                  *(v124 + 1) = v121;
                  v125 = &v111[2].i8[v26];
                  *v125 = v122;
                  *(v125 + 1) = v123;
                  v113 = 128;
                }

                else if (v112 == 3)
                {
                  v115 = vld1q_dup_f32(v110);
                  *v111 = v115;
                  v111[1] = v115;
                  v111[2] = v115;
                  v111[3] = v115;
                  v116 = &v111->i8[v26];
                  *v116 = v115;
                  v116[1] = v115;
                  v116[2] = v115;
                  v116[3] = v115;
                  v113 = 4;
                }

                else
                {
                  v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v307), v26, v110, v112);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v73->i8[v307], v26, v110, v112, v75);
                v113 = 64;
              }
            }

            else
            {
              v113 = 0;
              v111[2] = 0u;
              v111[3] = 0u;
              *v111 = 0u;
              v111[1] = 0u;
              v114 = &v111->i8[v26];
              *(v114 + 2) = 0u;
              *(v114 + 3) = 0u;
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v126 = v110 + v113;
            v127 = v111 + 4;
            v128 = v72[3];
            if (v72[3])
            {
              if (v128 < 0xF0)
              {
                if (v128 == 127)
                {
                  v133 = *(v126 + 16);
                  v134 = *(v126 + 32);
                  v135 = *(v126 + 48);
                  v136 = *(v126 + 64);
                  v137 = *(v126 + 80);
                  v138 = *(v126 + 96);
                  v139 = *(v126 + 112);
                  *v127 = *v126;
                  v111[5] = v133;
                  v140 = &v127->i8[v26];
                  v111[6] = v134;
                  v111[7] = v135;
                  *v140 = v136;
                  *(v140 + 1) = v137;
                  v140 += 32;
                  *v140 = v138;
                  *(v140 + 1) = v139;
                  v129 = 128;
                }

                else if (v128 == 3)
                {
                  v131 = vld1q_dup_f32(v126);
                  v111[4] = v131;
                  v111[5] = v131;
                  v111[6] = v131;
                  v111[7] = v131;
                  v132 = &v127->i8[v26];
                  *v132 = v131;
                  v132[1] = v131;
                  v132[2] = v131;
                  v132[3] = v131;
                  v129 = 4;
                }

                else
                {
                  v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v127, v26, v126, v128);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v127, v26, v126, v128, v75);
                v129 = 64;
              }
            }

            else
            {
              v129 = 0;
              v111[6] = 0u;
              v111[7] = 0u;
              *v127 = 0u;
              v111[5] = 0u;
              v130 = &v127->i8[v26];
              *(v130 + 2) = 0u;
              *(v130 + 3) = 0u;
              *v130 = 0u;
              *(v130 + 1) = 0u;
            }

            v141 = v126 + v129;
            v142 = v73 + 8;
            v143 = v72[4];
            if (v72[4])
            {
              if (v143 < 0xF0)
              {
                if (v143 == 127)
                {
                  v148 = *(v141 + 16);
                  v149 = *(v141 + 32);
                  v150 = *(v141 + 48);
                  v151 = *(v141 + 64);
                  v152 = *(v141 + 80);
                  v153 = *(v141 + 96);
                  v154 = *(v141 + 112);
                  *v142 = *v141;
                  v73[9] = v148;
                  v155 = &v142->i8[v26];
                  v73[10] = v149;
                  v73[11] = v150;
                  *v155 = v151;
                  *(v155 + 1) = v152;
                  v155 += 32;
                  *v155 = v153;
                  *(v155 + 1) = v154;
                  v144 = 128;
                }

                else if (v143 == 3)
                {
                  v146 = vld1q_dup_f32(v141);
                  v73[8] = v146;
                  v73[9] = v146;
                  v73[10] = v146;
                  v73[11] = v146;
                  v147 = &v142->i8[v26];
                  *v147 = v146;
                  v147[1] = v146;
                  v147[2] = v146;
                  v147[3] = v146;
                  v144 = 4;
                }

                else
                {
                  v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v142, v26, v141, v143);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v142, v26, v141, v143, v75);
                v144 = 64;
              }
            }

            else
            {
              v144 = 0;
              v73[10] = 0u;
              v73[11] = 0u;
              *v142 = 0u;
              v73[9] = 0u;
              v145 = &v142->i8[v26];
              *(v145 + 2) = 0u;
              *(v145 + 3) = 0u;
              *v145 = 0u;
              *(v145 + 1) = 0u;
            }

            v156 = v141 + v144;
            v157 = v73 + 12;
            v158 = v72[5];
            if (v72[5])
            {
              if (v158 < 0xF0)
              {
                if (v158 == 127)
                {
                  v163 = *(v156 + 16);
                  v164 = *(v156 + 32);
                  v165 = *(v156 + 48);
                  v166 = *(v156 + 64);
                  v167 = *(v156 + 80);
                  v168 = *(v156 + 96);
                  v169 = *(v156 + 112);
                  *v157 = *v156;
                  v73[13] = v163;
                  v170 = &v157->i8[v26];
                  v73[14] = v164;
                  v73[15] = v165;
                  *v170 = v166;
                  *(v170 + 1) = v167;
                  v170 += 32;
                  *v170 = v168;
                  *(v170 + 1) = v169;
                  v159 = 128;
                }

                else if (v158 == 3)
                {
                  v161 = vld1q_dup_f32(v156);
                  v73[12] = v161;
                  v73[13] = v161;
                  v73[14] = v161;
                  v73[15] = v161;
                  v162 = &v157->i8[v26];
                  *v162 = v161;
                  v162[1] = v161;
                  v162[2] = v161;
                  v162[3] = v161;
                  v159 = 4;
                }

                else
                {
                  v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v157, v26, v156, v158);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v157, v26, v156, v158, v75);
                v159 = 64;
              }
            }

            else
            {
              v159 = 0;
              v73[14] = 0u;
              v73[15] = 0u;
              *v157 = 0u;
              v73[13] = 0u;
              v160 = &v157->i8[v26];
              *(v160 + 2) = 0u;
              *(v160 + 3) = 0u;
              *v160 = 0u;
              *(v160 + 1) = 0u;
            }

            v171 = v156 + v159;
            v172 = v111 + 8;
            v173 = v72[6];
            if (v72[6])
            {
              if (v173 < 0xF0)
              {
                if (v173 == 127)
                {
                  v178 = *(v171 + 16);
                  v179 = *(v171 + 32);
                  v180 = *(v171 + 48);
                  v181 = *(v171 + 64);
                  v182 = *(v171 + 80);
                  v183 = *(v171 + 96);
                  v184 = *(v171 + 112);
                  *v172 = *v171;
                  v111[9] = v178;
                  v185 = &v172->i8[v26];
                  v111[10] = v179;
                  v111[11] = v180;
                  *v185 = v181;
                  *(v185 + 1) = v182;
                  v185 += 32;
                  *v185 = v183;
                  *(v185 + 1) = v184;
                  v174 = 128;
                }

                else if (v173 == 3)
                {
                  v176 = vld1q_dup_f32(v171);
                  v111[8] = v176;
                  v111[9] = v176;
                  v111[10] = v176;
                  v111[11] = v176;
                  v177 = &v172->i8[v26];
                  *v177 = v176;
                  v177[1] = v176;
                  v177[2] = v176;
                  v177[3] = v176;
                  v174 = 4;
                }

                else
                {
                  v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v172, v26, v156 + v159, v173);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v172, v26, v156 + v159, v173, v75);
                v174 = 64;
              }
            }

            else
            {
              v174 = 0;
              v111[10] = 0u;
              v111[11] = 0u;
              *v172 = 0u;
              v111[9] = 0u;
              v175 = &v172->i8[v26];
              *(v175 + 2) = 0u;
              *(v175 + 3) = 0u;
              *v175 = 0u;
              *(v175 + 1) = 0u;
            }

            v186 = v111 + 12;
            v187 = v72[7];
            if (v72[7])
            {
              v188 = v171 + v174;
              if (v187 < 0xF0)
              {
                if (v187 == 127)
                {
                  v191 = *(v188 + 16);
                  v192 = *(v188 + 32);
                  v193 = *(v188 + 48);
                  v194 = *(v188 + 64);
                  v195 = *(v188 + 80);
                  v196 = *(v188 + 96);
                  v197 = *(v188 + 112);
                  *v186 = *v188;
                  v111[13] = v191;
                  v198 = &v186->i8[v26];
                  v111[14] = v192;
                  v111[15] = v193;
                  *v198 = v194;
                  *(v198 + 1) = v195;
                  v198 += 32;
                  *v198 = v196;
                  *(v198 + 1) = v197;
                }

                else if (v187 == 3)
                {
                  v189 = vld1q_dup_f32(v188);
                  v111[12] = v189;
                  v111[13] = v189;
                  v111[14] = v189;
                  v111[15] = v189;
                  v190 = &v186->i8[v26];
                  *v190 = v189;
                  v190[1] = v189;
                  v190[2] = v189;
                  v190[3] = v189;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v186, v26, v188, v187);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v186, v26, v188, v187, v75);
              }
            }

            else
            {
              v111[14] = 0u;
              v111[15] = 0u;
              *v186 = 0u;
              v111[13] = 0u;
              v37 = &v186->i8[v26];
              *(v37 + 2) = 0u;
              *(v37 + 3) = 0u;
              *v37 = 0u;
              *(v37 + 1) = 0u;
            }

            v25 = a7;
            result = v325;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v333 = v44;
          v334 = v322;
          v329 = v311;
          v330 = v41 - v39;
          block[6] = v72;
          v327 = v319 + 32 * (v41 - v25);
          v26 = a11;
          v328 = a11;
          v331 = v310;
          v332 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v325;
            v25 = a7;
LABEL_30:
            v38 = v35 + 1;
            goto LABEL_31;
          }

          v78 = *(result + 208);
          v79 = *(v78 + 52);
          v80 = *v72;
          if (*v72)
          {
            if (v80 < 0xF0)
            {
              if (v80 == 127)
              {
                v199 = v71[1];
                v200 = v71[2];
                v201 = v71[3];
                v202 = v71[4];
                v203 = v71[5];
                v204 = v71[6];
                v205 = v71[7];
                v336 = *v71;
                v337 = v199;
                v338 = v200;
                v339 = v201;
                v352 = v202;
                v353 = v203;
                v354 = v204;
                v355 = v205;
                v81 = 128;
              }

              else if (v80 == 3)
              {
                v85 = vld1q_dup_f32(v71->i32);
                v336 = v85;
                v337 = v85;
                v338 = v85;
                v339 = v85;
                v352 = v85;
                v353 = v85;
                v354 = v85;
                v355 = v85;
                v81 = 4;
              }

              else
              {
                v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v336, 256, v71, v80);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v336, 256, v71, v80, *(v78 + 52));
              v81 = 64;
            }
          }

          else
          {
            v81 = 0;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v206 = v71->i64 + v81;
          v207 = v72[1];
          if (v72[1])
          {
            if (v207 < 0xF0)
            {
              if (v207 == 127)
              {
                v210 = *(v206 + 16);
                v211 = *(v206 + 32);
                v212 = *(v206 + 48);
                v213 = *(v206 + 64);
                v214 = *(v206 + 80);
                v215 = *(v206 + 96);
                v216 = *(v206 + 112);
                v340 = *v206;
                v341 = v210;
                v342 = v211;
                v343 = v212;
                v356 = v213;
                v357 = v214;
                v358 = v215;
                v359 = v216;
                v208 = 128;
              }

              else if (v207 == 3)
              {
                v209 = vld1q_dup_f32(v206);
                v340 = v209;
                v341 = v209;
                v342 = v209;
                v343 = v209;
                v356 = v209;
                v357 = v209;
                v358 = v209;
                v359 = v209;
                v208 = 4;
              }

              else
              {
                v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v340, 256, v206, v207);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v340, 256, v206, v207, v79);
              v208 = 64;
            }
          }

          else
          {
            v208 = 0;
            v342 = 0u;
            v343 = 0u;
            v340 = 0u;
            v341 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
          }

          v217 = v206 + v208;
          v218 = v72[2];
          if (v72[2])
          {
            if (v218 < 0xF0)
            {
              if (v218 == 127)
              {
                v221 = *(v217 + 16);
                v222 = *(v217 + 32);
                v223 = *(v217 + 48);
                v224 = *(v217 + 64);
                v225 = *(v217 + 80);
                v226 = *(v217 + 96);
                v227 = *(v217 + 112);
                v368 = *v217;
                v369 = v221;
                v370 = v222;
                v371 = v223;
                v384 = v224;
                v385 = v225;
                v386 = v226;
                v387 = v227;
                v219 = 128;
              }

              else if (v218 == 3)
              {
                v220 = vld1q_dup_f32(v217);
                v368 = v220;
                v369 = v220;
                v370 = v220;
                v371 = v220;
                v384 = v220;
                v385 = v220;
                v386 = v220;
                v387 = v220;
                v219 = 4;
              }

              else
              {
                v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v368, 256, v217, v218);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v368, 256, v217, v218, v79);
              v219 = 64;
            }
          }

          else
          {
            v219 = 0;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
          }

          v228 = v217 + v219;
          v229 = v72[3];
          if (v72[3])
          {
            if (v229 < 0xF0)
            {
              if (v229 == 127)
              {
                v232 = *(v228 + 16);
                v233 = *(v228 + 32);
                v234 = *(v228 + 48);
                v235 = *(v228 + 64);
                v236 = *(v228 + 80);
                v237 = *(v228 + 96);
                v238 = *(v228 + 112);
                v372 = *v228;
                v373 = v232;
                v374 = v233;
                v375 = v234;
                v388 = v235;
                v389 = v236;
                v390 = v237;
                v391 = v238;
                v230 = 128;
              }

              else if (v229 == 3)
              {
                v231 = vld1q_dup_f32(v228);
                v372 = v231;
                v373 = v231;
                v374 = v231;
                v375 = v231;
                v388 = v231;
                v389 = v231;
                v390 = v231;
                v391 = v231;
                v230 = 4;
              }

              else
              {
                v230 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v372, 256, v228, v229);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v372, 256, v228, v229, v79);
              v230 = 64;
            }
          }

          else
          {
            v230 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
          }

          v239 = v228 + v230;
          v240 = v72[4];
          if (v72[4])
          {
            if (v240 < 0xF0)
            {
              if (v240 == 127)
              {
                v243 = *(v239 + 16);
                v244 = *(v239 + 32);
                v245 = *(v239 + 48);
                v246 = *(v239 + 64);
                v247 = *(v239 + 80);
                v248 = *(v239 + 96);
                v249 = *(v239 + 112);
                v344 = *v239;
                v345 = v243;
                v346 = v244;
                v347 = v245;
                v360 = v246;
                v361 = v247;
                v362 = v248;
                v363 = v249;
                v241 = 128;
              }

              else if (v240 == 3)
              {
                v242 = vld1q_dup_f32(v239);
                v344 = v242;
                v345 = v242;
                v346 = v242;
                v347 = v242;
                v360 = v242;
                v361 = v242;
                v362 = v242;
                v363 = v242;
                v241 = 4;
              }

              else
              {
                v241 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v344, 256, v239, v240);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v344, 256, v239, v240, v79);
              v241 = 64;
            }
          }

          else
          {
            v241 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v250 = v239 + v241;
          v251 = v72[5];
          if (v72[5])
          {
            if (v251 < 0xF0)
            {
              if (v251 == 127)
              {
                v254 = *(v250 + 16);
                v255 = *(v250 + 32);
                v256 = *(v250 + 48);
                v257 = *(v250 + 64);
                v258 = *(v250 + 80);
                v259 = *(v250 + 96);
                v260 = *(v250 + 112);
                v348 = *v250;
                v349 = v254;
                v350 = v255;
                v351 = v256;
                v364 = v257;
                v365 = v258;
                v366 = v259;
                v367 = v260;
                v252 = 128;
              }

              else if (v251 == 3)
              {
                v253 = vld1q_dup_f32(v250);
                v348 = v253;
                v349 = v253;
                v350 = v253;
                v351 = v253;
                v364 = v253;
                v365 = v253;
                v366 = v253;
                v367 = v253;
                v252 = 4;
              }

              else
              {
                v252 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v348, 256, v250, v251);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v348, 256, v250, v251, v79);
              v252 = 64;
            }
          }

          else
          {
            v252 = 0;
            v350 = 0u;
            v351 = 0u;
            v348 = 0u;
            v349 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
          }

          v261 = v250 + v252;
          v262 = v72[6];
          if (v72[6])
          {
            if (v262 < 0xF0)
            {
              if (v262 == 127)
              {
                v266 = *(v261 + 16);
                v267 = *(v261 + 32);
                v268 = *(v261 + 48);
                v269 = *(v261 + 64);
                v270 = *(v261 + 80);
                v271 = *(v261 + 96);
                v272 = *(v261 + 112);
                v376 = *v261;
                v377 = v266;
                v378 = v267;
                v379 = v268;
                v392 = v269;
                v393 = v270;
                v394 = v271;
                v395 = v272;
                v263 = 128;
                v264 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_232;
                }
              }

              else if (v262 == 3)
              {
                v265 = vld1q_dup_f32(v261);
                v376 = v265;
                v377 = v265;
                v378 = v265;
                v379 = v265;
                v392 = v265;
                v393 = v265;
                v394 = v265;
                v395 = v265;
                v263 = 4;
                v264 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v263 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v376, 256, v261, v262);
                v264 = v72[7];
                if (!v72[7])
                {
LABEL_232:
                  v382 = 0u;
                  v383 = 0u;
                  v380 = 0u;
                  v381 = 0u;
                  v396 = 0u;
                  v397 = 0u;
                  v398 = 0u;
                  v399 = 0u;
                  goto LABEL_234;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v376, 256, v261, v262, v79);
              v263 = 64;
              v264 = v72[7];
              if (!v72[7])
              {
                goto LABEL_232;
              }
            }
          }

          else
          {
            v263 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v264 = v72[7];
            if (!v72[7])
            {
              goto LABEL_232;
            }
          }

          v273 = v261 + v263;
          if (v264 < 0xF0)
          {
            if (v264 == 127)
            {
              v275 = *(v273 + 16);
              v276 = *(v273 + 32);
              v277 = *(v273 + 48);
              v278 = *(v273 + 64);
              v279 = *(v273 + 80);
              v280 = *(v273 + 96);
              v281 = *(v273 + 112);
              v380 = *v273;
              v381 = v275;
              v382 = v276;
              v383 = v277;
              v396 = v278;
              v397 = v279;
              v398 = v280;
              v399 = v281;
            }

            else if (v264 == 3)
            {
              v274 = vld1q_dup_f32(v273);
              v380 = v274;
              v381 = v274;
              v382 = v274;
              v383 = v274;
              v396 = v274;
              v397 = v274;
              v398 = v274;
              v399 = v274;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v380, 256, v273, v264);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v380, 256, v273, v264, v79);
          }

LABEL_234:
          result = v325;
          v38 = v35 + 1;
          v282 = v331;
          v25 = a7;
          if (v331)
          {
            v283 = 0;
            v284 = &v336 + 16 * v329 + 2 * v330;
            v285 = v332;
            do
            {
              if (v285)
              {
                v286 = 0;
                v287 = v327 + v328 * v283;
                do
                {
                  *(v287 + v286) = v284->i8[v286];
                  ++v286;
                  v285 = v332;
                }

                while (32 * v332 > v286);
                v282 = v331;
              }

              ++v283;
              v284 += 16;
            }

            while (v283 < v282);
          }

LABEL_31:
          v20 = v35 == v314 >> 3;
          v35 = v38;
        }

        while (!v20);
        v20 = v16++ == v306;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v257 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v211 = a8;
  v17 = a8 >> 2;
  v192 = a8 + a10 - 1;
  v194 = v192 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v214 = a1;
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v206 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v205 = result;
  if (v17 <= v194)
  {
    v204 = a7 + a9 - 1;
    v191 = a7 >> 3;
    if (a7 >> 3 <= v204 >> 3)
    {
      result = a1;
      v26 = a11;
      v213 = (a5 - 1) >> 3;
      v188 = a5 - 1;
      v196 = (a5 - 1) & 7;
      v189 = (a6 - 1) & 3;
      v190 = (a6 - 1) >> 2;
      v195 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v28.i8 = vcgt_u32(v27, 0xF00000007);
      v29.i64[0] = -1;
      v30.i64[0] = 0x2000000020;
      *v31.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v28.i8);
      v201 = v31.i64[0];
      v202 = v31.i32[0] | v31.i32[1];
      v200 = v28.i64[0];
      v187 = 8 * v19 * v18;
      v203 = a7;
      do
      {
        v32 = (4 * v17) | 3;
        if (4 * v17 <= v211)
        {
          v33 = v211;
        }

        else
        {
          v33 = 4 * v17;
        }

        if (v192 < v32)
        {
          v32 = v192;
        }

        v210 = 4 * v17;
        v199 = v33 - 4 * v17;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v189;
        v198 = v35;
        v37 = v35 != 4;
        v38 = v191;
        v39 = v189 + 1;
        if (v17 != v190)
        {
          v39 = 4;
        }

        v212 = v39;
        if (v17 != v190)
        {
          v36 = v37;
        }

        v197 = v36;
        v209 = a2 + (v33 - v211) * v26;
        do
        {
          v41 = 8 * v38;
          v42 = 8 * (v38 + 1) - 1;
          if (8 * v38 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 8 * v38;
          }

          if (v204 < v42)
          {
            v42 = v204;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v38 == v213)
          {
            v46 = v196 + 1;
          }

          else
          {
            v46 = 8;
          }

          v47 = 1;
          if (v210 >= v211 && v41 >= a7)
          {
            v48 = v44 != v196;
            if (v38 != v213)
            {
              v48 = v45 != 8;
            }

            v47 = v48 || v197;
          }

          if (v205)
          {
            v69 = 0;
            v70 = v187 >> (*(result + 57) != 0);
            v71 = 1;
            if (v70 <= 63)
            {
              if (v70 > 15)
              {
                if (v70 == 16)
                {
                  v71 = 0;
                  v72 = 64;
                  v69 = 128;
                }

                else
                {
                  v72 = 0;
                  if (v70 == 32)
                  {
                    v71 = 0;
                    v69 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v70 == 4)
              {
                v71 = 0;
                v72 = 128;
                v69 = 256;
              }

              else
              {
                v72 = 0;
                if (v70 == 8)
                {
                  v71 = 0;
                  v69 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v70 <= 255)
            {
              if (v70 == 64)
              {
                v71 = 0;
                v72 = 32;
                v69 = 64;
              }

              else
              {
                v72 = 0;
                if (v70 == 128)
                {
                  v71 = 0;
                  v69 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v70 == 256)
            {
              v71 = 0;
              v72 = 16;
              v69 = 32;
            }

            else if (v70 == 512)
            {
              v71 = 0;
              v69 = 16;
              v72 = 16;
            }

            else
            {
              v72 = 0;
              if (v70 == 1024)
              {
                v71 = 0;
                v72 = 8;
                v69 = 16;
              }
            }

            v175 = (v69 >> 3) - 1;
            v176 = (v72 >> 2) - 1;
            if ((v71 & 1) != 0 || (v177 = 32 - __clz(~(-1 << -__clz(v175))), v178 = 32 - __clz(~(-1 << -__clz(v176))), !(v178 | v177)))
            {
              v186 = 0;
            }

            else
            {
              v179 = 0;
              v180 = 0;
              v181 = v38 & v175;
              v182 = v17 & v176;
              v183 = v178 != 0;
              v184 = v177 != 0;
              v185 = 1;
              do
              {
                --v178;
                if (v183)
                {
                  v180 |= (v185 & v182) << v179++;
                }

                else
                {
                  v178 = 0;
                }

                --v177;
                if (v184)
                {
                  v180 |= (v185 & v181) << v179++;
                }

                else
                {
                  v177 = 0;
                }

                v185 *= 2;
                --v179;
                v184 = v177 != 0;
                v183 = v178 != 0;
              }

              while (v177 | v178);
              v186 = v180 << 8;
              result = v214;
            }

            v56 = v186 + ((v41 / v69 + v210 / v72 * ((v69 + v188) / v69)) << 14);
          }

          else if (v202)
          {
            v49 = 0;
            v50 = 0;
            v51 = 1;
            v53 = v200;
            v52 = BYTE4(v200);
            v54 = v201;
            v55 = HIDWORD(v201);
            do
            {
              --v54;
              if (v53)
              {
                v50 |= (v51 & v17) << v49++;
              }

              else
              {
                v54 = 0;
              }

              --v55;
              if (v52)
              {
                v50 |= (v51 & v38) << v49++;
              }

              else
              {
                v55 = 0;
              }

              v51 *= 2;
              --v49;
              v52 = v55 != 0;
              v53 = v54 != 0;
            }

            while (v55 | v54);
            v56 = v50 << 8;
          }

          else
          {
            v56 = 0;
          }

          v57 = *(result + 128) >> (*(result + 144) + a12);
          if (v57 <= 1)
          {
            v57 = 1;
          }

          v58 = v57 + 7;
          if (v58 < 0x10)
          {
            v59 = 0;
          }

          else
          {
            v59 = 32 - __clz(~(-1 << -__clz((v58 >> 3) - 1)));
          }

          v60 = *(result + 132) >> (*(result + 144) + a12);
          if (v60 <= 1)
          {
            v60 = 1;
          }

          v61 = v60 + 3;
          if (v61 < 8)
          {
            v62 = 0;
            if (!v59)
            {
LABEL_81:
              v68 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v62 = 32 - __clz(~(-1 << -__clz((v61 >> 2) - 1)));
            if (!(v62 | v59))
            {
              goto LABEL_81;
            }
          }

          v63 = 0;
          v64 = 0;
          v65 = v59 != 0;
          v66 = v62 != 0;
          v67 = 1;
          do
          {
            --v59;
            if (v65)
            {
              v64 |= (v67 & v38) << v63++;
            }

            else
            {
              v59 = 0;
            }

            --v62;
            if (v66)
            {
              v64 |= (v67 & v17) << v63++;
            }

            else
            {
              v62 = 0;
            }

            v67 *= 2;
            --v63;
            v66 = v62 != 0;
            v65 = v59 != 0;
          }

          while (v62 | v59);
          v68 = 8 * v64;
LABEL_82:
          v73 = (a3 + v56);
          if (v206)
          {
            memcpy(__dst, v73, sizeof(__dst));
            result = v214;
            v73 = __dst;
          }

          v74 = (a4 + v68);
          v75 = (v209 + 16 * (v43 - a7));
          if (!(v47 & 1 | (v46 < 8u)) && v212 > 3)
          {
            v76 = *(result + 208);
            v77 = *(v76 + 52);
            v78 = *v74;
            if (*v74)
            {
              v26 = a11;
              if (v78 < 0xF0)
              {
                if (v78 == 63)
                {
                  v79 = *v73;
                  v28 = v73[1];
                  v29 = v73[2];
                  v30 = v73[3];
                  *v75 = *v73;
                  v75[1] = v28;
                  v88 = (v75 + a11);
                  *v88 = v29;
                  v88[1] = v30;
                  v80 = 64;
                }

                else if (v78 == 1)
                {
                  v79 = vld1q_dup_s16(v73->i16);
                  *v75 = v79;
                  v75[1] = v79;
                  v87 = (v75 + a11);
                  *v87 = v79;
                  v87[1] = v79;
                  v80 = 2;
                }

                else
                {
                  v80 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v75, a11, v73, v78, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v79.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v75, a11, v73, v78, *(v76 + 52)).u64[0];
                v80 = 32;
              }
            }

            else
            {
              v80 = 0;
              v79.i64[0] = 0;
              *v75 = 0u;
              v75[1] = 0u;
              v26 = a11;
              v86 = &v75->i8[a11];
              *v86 = 0u;
              *(v86 + 1) = 0u;
            }

            v89 = v73->u64 + v80;
            v90 = v75 + 2;
            v91 = v74[1];
            if (v74[1])
            {
              if (v91 < 0xF0)
              {
                if (v91 == 63)
                {
                  v92 = *v89;
                  v28 = *(v89 + 16);
                  v29 = *(v89 + 32);
                  v30 = *(v89 + 48);
                  v75[2] = *v89;
                  v75[3] = v28;
                  v96 = &v90->i8[v26];
                  *v96 = v29;
                  *(v96 + 1) = v30;
                  v93 = 64;
                }

                else if (v91 == 1)
                {
                  v92 = vld1q_dup_s16(v89);
                  v75[2] = v92;
                  v75[3] = v92;
                  v95 = (v90 + v26);
                  *v95 = v92;
                  v95[1] = v92;
                  v93 = 2;
                }

                else
                {
                  v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v90, v26, v89, v91, *v79.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v92.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v90, v26, v89, v91, v77).u64[0];
                v93 = 32;
              }
            }

            else
            {
              v93 = 0;
              v92.i64[0] = 0;
              *v90 = 0u;
              v75[3] = 0u;
              v94 = &v90->i8[v26];
              *v94 = 0u;
              *(v94 + 1) = 0u;
            }

            v97 = v89 + v93;
            v98 = (v75 + v195);
            v99 = v74[2];
            if (v74[2])
            {
              if (v99 < 0xF0)
              {
                if (v99 == 63)
                {
                  v100 = *v97;
                  v28 = *(v97 + 16);
                  v29 = *(v97 + 32);
                  v30 = *(v97 + 48);
                  *v98 = *v97;
                  v98[1] = v28;
                  v104 = (v98 + v26);
                  *v104 = v29;
                  v104[1] = v30;
                  v101 = 64;
                }

                else if (v99 == 1)
                {
                  v100 = vld1q_dup_s16(v97);
                  *v98 = v100;
                  v98[1] = v100;
                  v103 = (v98 + v26);
                  *v103 = v100;
                  v103[1] = v100;
                  v101 = 2;
                }

                else
                {
                  v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v75 + v195), v26, v97, v99, *v92.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v100.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v75 + v195), v26, v97, v99, v77).u64[0];
                v101 = 32;
              }
            }

            else
            {
              v101 = 0;
              v100.i64[0] = 0;
              *v98 = 0u;
              v98[1] = 0u;
              v102 = &v98->i8[v26];
              *v102 = 0u;
              *(v102 + 1) = 0u;
            }

            v105 = v97 + v101;
            v106 = v98 + 2;
            v107 = v74[3];
            if (v74[3])
            {
              if (v107 < 0xF0)
              {
                if (v107 == 63)
                {
                  v108 = *v105;
                  v28 = *(v105 + 16);
                  v29 = *(v105 + 32);
                  v30 = *(v105 + 48);
                  v98[2] = *v105;
                  v98[3] = v28;
                  v112 = &v106->i8[v26];
                  *v112 = v29;
                  *(v112 + 1) = v30;
                  v109 = 64;
                }

                else if (v107 == 1)
                {
                  v108 = vld1q_dup_s16(v105);
                  v98[2] = v108;
                  v98[3] = v108;
                  v111 = (v106 + v26);
                  *v111 = v108;
                  v111[1] = v108;
                  v109 = 2;
                }

                else
                {
                  v109 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v106, v26, v105, v107, *v100.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v108.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v106, v26, v105, v107, v77).u64[0];
                v109 = 32;
              }
            }

            else
            {
              v109 = 0;
              v108.i64[0] = 0;
              *v106 = 0u;
              v98[3] = 0u;
              v110 = &v106->i8[v26];
              *v110 = 0u;
              *(v110 + 1) = 0u;
            }

            v113 = v105 + v109;
            v114 = v75 + 4;
            v115 = v74[4];
            if (v74[4])
            {
              if (v115 < 0xF0)
              {
                if (v115 == 63)
                {
                  v116 = *v113;
                  v28 = *(v113 + 16);
                  v29 = *(v113 + 32);
                  v30 = *(v113 + 48);
                  v75[4] = *v113;
                  v75[5] = v28;
                  v120 = &v114->i8[v26];
                  *v120 = v29;
                  *(v120 + 1) = v30;
                  v117 = 64;
                }

                else if (v115 == 1)
                {
                  v116 = vld1q_dup_s16(v113);
                  v75[4] = v116;
                  v75[5] = v116;
                  v119 = (v114 + v26);
                  *v119 = v116;
                  v119[1] = v116;
                  v117 = 2;
                }

                else
                {
                  v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v114, v26, v113, v115, *v108.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v116.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v114, v26, v113, v115, v77).u64[0];
                v117 = 32;
              }
            }

            else
            {
              v117 = 0;
              v116.i64[0] = 0;
              *v114 = 0u;
              v75[5] = 0u;
              v118 = &v114->i8[v26];
              *v118 = 0u;
              *(v118 + 1) = 0u;
            }

            v121 = v113 + v117;
            v122 = v75 + 6;
            v123 = v74[5];
            if (v74[5])
            {
              if (v123 < 0xF0)
              {
                if (v123 == 63)
                {
                  v124 = *v121;
                  v28 = *(v121 + 16);
                  v29 = *(v121 + 32);
                  v30 = *(v121 + 48);
                  v75[6] = *v121;
                  v75[7] = v28;
                  v128 = &v122->i8[v26];
                  *v128 = v29;
                  *(v128 + 1) = v30;
                  v125 = 64;
                }

                else if (v123 == 1)
                {
                  v124 = vld1q_dup_s16(v121);
                  v75[6] = v124;
                  v75[7] = v124;
                  v127 = (v122 + v26);
                  *v127 = v124;
                  v127[1] = v124;
                  v125 = 2;
                }

                else
                {
                  v125 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v122, v26, v121, v123, *v116.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v124.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v122, v26, v121, v123, v77).u64[0];
                v125 = 32;
              }
            }

            else
            {
              v125 = 0;
              v124.i64[0] = 0;
              *v122 = 0u;
              v75[7] = 0u;
              v126 = &v122->i8[v26];
              *v126 = 0u;
              *(v126 + 1) = 0u;
            }

            v129 = v121 + v125;
            v130 = v98 + 4;
            v131 = v74[6];
            if (v74[6])
            {
              if (v131 < 0xF0)
              {
                if (v131 == 63)
                {
                  v132 = *v129;
                  v28 = *(v129 + 16);
                  v29 = *(v129 + 32);
                  v30 = *(v129 + 48);
                  v98[4] = *v129;
                  v98[5] = v28;
                  v136 = &v130->i8[v26];
                  *v136 = v29;
                  *(v136 + 1) = v30;
                  v133 = 64;
                }

                else if (v131 == 1)
                {
                  v132 = vld1q_dup_s16(v129);
                  v98[4] = v132;
                  v98[5] = v132;
                  v135 = (v130 + v26);
                  *v135 = v132;
                  v135[1] = v132;
                  v133 = 2;
                }

                else
                {
                  v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v130, v26, v121 + v125, v131, *v124.i64, *v28.i64, *v29.i64, *v30.i8);
                }
              }

              else
              {
                v132.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v130, v26, v121 + v125, v131, v77).u64[0];
                v133 = 32;
              }
            }

            else
            {
              v133 = 0;
              v132.i64[0] = 0;
              *v130 = 0u;
              v98[5] = 0u;
              v134 = &v130->i8[v26];
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v137 = v98 + 6;
            v138 = v74[7];
            if (v74[7])
            {
              v139 = v129 + v133;
              if (v138 >= 0xF0)
              {
                v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v137, v26, v139, v138, v77).u64[0];
                goto LABEL_161;
              }

              a7 = v203;
              if (v138 == 63)
              {
                v31 = *v139;
                v28 = *(v139 + 16);
                v29 = *(v139 + 32);
                v30 = *(v139 + 48);
                v98[6] = *v139;
                v98[7] = v28;
                v142 = &v137->i8[v26];
                *v142 = v29;
                *(v142 + 1) = v30;
              }

              else if (v138 == 1)
              {
                v31 = vld1q_dup_s16(v139);
                v98[6] = v31;
                v98[7] = v31;
                v141 = (v137 + v26);
                *v141 = v31;
                v141[1] = v31;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v137, v26, v139, v138, *v132.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v31.i64[0] = 0;
              *v137 = 0u;
              v98[7] = 0u;
              v140 = &v137->i8[v26];
              *v140 = 0u;
              *(v140 + 1) = 0u;
LABEL_161:
              a7 = v203;
            }

            result = v214;
LABEL_29:
            v40 = v38 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v73;
          v222 = v46;
          v223 = v212;
          v218 = v199;
          v219 = v43 - v41;
          block[6] = v74;
          v216 = v75;
          v26 = a11;
          v217 = a11;
          v220 = v198;
          v221 = v45;
          if (v47)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v214;
            a7 = v203;
            goto LABEL_29;
          }

          v81 = *(result + 208);
          v82 = *(v81 + 52);
          v83 = *v74;
          a7 = v203;
          if (*v74)
          {
            if (v83 < 0xF0)
            {
              if (v83 == 63)
              {
                v84 = *v73;
                v28 = v73[1];
                v29 = v73[2];
                v30 = v73[3];
                v225 = *v73;
                v226 = v28;
                v233 = v29;
                v234 = v30;
                v85 = 64;
              }

              else if (v83 == 1)
              {
                v84 = vld1q_dup_s16(v73->i16);
                v225 = v84;
                v226 = v84;
                v233 = v84;
                v234 = v84;
                v85 = 2;
              }

              else
              {
                v85 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v225, 128, v73, v83, *v31.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v84.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v225, 128, v73, v83, *(v81 + 52)).u64[0];
              v85 = 32;
            }
          }

          else
          {
            v85 = 0;
            v84.i64[0] = 0;
            v225 = 0u;
            v226 = 0u;
            v233 = 0u;
            v234 = 0u;
          }

          v143 = v73->u64 + v85;
          v144 = v74[1];
          if (v74[1])
          {
            if (v144 < 0xF0)
            {
              if (v144 == 63)
              {
                v145 = *v143;
                v28 = *(v143 + 16);
                v29 = *(v143 + 32);
                v30 = *(v143 + 48);
                v227 = *v143;
                v228 = v28;
                v235 = v29;
                v236 = v30;
                v146 = 64;
              }

              else if (v144 == 1)
              {
                v145 = vld1q_dup_s16(v143);
                v227 = v145;
                v228 = v145;
                v235 = v145;
                v236 = v145;
                v146 = 2;
              }

              else
              {
                v146 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v227, 128, v143, v144, *v84.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v145.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v227, 128, v143, v144, v82).u64[0];
              v146 = 32;
            }
          }

          else
          {
            v146 = 0;
            v145.i64[0] = 0;
            v227 = 0u;
            v228 = 0u;
            v235 = 0u;
            v236 = 0u;
          }

          v147 = v143 + v146;
          v148 = v74[2];
          if (v74[2])
          {
            if (v148 < 0xF0)
            {
              if (v148 == 63)
              {
                v149 = *v147;
                v28 = *(v147 + 16);
                v29 = *(v147 + 32);
                v30 = *(v147 + 48);
                v241 = *v147;
                v242 = v28;
                v249 = v29;
                v250 = v30;
                v150 = 64;
              }

              else if (v148 == 1)
              {
                v149 = vld1q_dup_s16(v147);
                v241 = v149;
                v242 = v149;
                v249 = v149;
                v250 = v149;
                v150 = 2;
              }

              else
              {
                v150 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v241, 128, v147, v148, *v145.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v149.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v241, 128, v147, v148, v82).u64[0];
              v150 = 32;
            }
          }

          else
          {
            v150 = 0;
            v149.i64[0] = 0;
            v241 = 0u;
            v242 = 0u;
            v249 = 0u;
            v250 = 0u;
          }

          v151 = v147 + v150;
          v152 = v74[3];
          if (v74[3])
          {
            if (v152 < 0xF0)
            {
              if (v152 == 63)
              {
                v153 = *v151;
                v28 = *(v151 + 16);
                v29 = *(v151 + 32);
                v30 = *(v151 + 48);
                v243 = *v151;
                v244 = v28;
                v251 = v29;
                v252 = v30;
                v154 = 64;
              }

              else if (v152 == 1)
              {
                v153 = vld1q_dup_s16(v151);
                v243 = v153;
                v244 = v153;
                v251 = v153;
                v252 = v153;
                v154 = 2;
              }

              else
              {
                v154 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v243, 128, v151, v152, *v149.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v153.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v243, 128, v151, v152, v82).u64[0];
              v154 = 32;
            }
          }

          else
          {
            v154 = 0;
            v153.i64[0] = 0;
            v243 = 0u;
            v244 = 0u;
            v251 = 0u;
            v252 = 0u;
          }

          v155 = v151 + v154;
          v156 = v74[4];
          if (v74[4])
          {
            if (v156 < 0xF0)
            {
              if (v156 == 63)
              {
                v157 = *v155;
                v28 = *(v155 + 16);
                v29 = *(v155 + 32);
                v30 = *(v155 + 48);
                v229 = *v155;
                v230 = v28;
                v237 = v29;
                v238 = v30;
                v158 = 64;
              }

              else if (v156 == 1)
              {
                v157 = vld1q_dup_s16(v155);
                v229 = v157;
                v230 = v157;
                v237 = v157;
                v238 = v157;
                v158 = 2;
              }

              else
              {
                v158 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v229, 128, v155, v156, *v153.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v157.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v229, 128, v155, v156, v82).u64[0];
              v158 = 32;
            }
          }

          else
          {
            v158 = 0;
            v157.i64[0] = 0;
            v229 = 0u;
            v230 = 0u;
            v237 = 0u;
            v238 = 0u;
          }

          v159 = v155 + v158;
          v160 = v74[5];
          if (v74[5])
          {
            if (v160 < 0xF0)
            {
              if (v160 == 63)
              {
                v161 = *v159;
                v28 = *(v159 + 16);
                v29 = *(v159 + 32);
                v30 = *(v159 + 48);
                v231 = *v159;
                v232 = v28;
                v239 = v29;
                v240 = v30;
                v162 = 64;
              }

              else if (v160 == 1)
              {
                v161 = vld1q_dup_s16(v159);
                v231 = v161;
                v232 = v161;
                v239 = v161;
                v240 = v161;
                v162 = 2;
              }

              else
              {
                v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v231, 128, v159, v160, *v157.i64, *v28.i64, *v29.i64, *v30.i8);
              }
            }

            else
            {
              v161.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v231, 128, v159, v160, v82).u64[0];
              v162 = 32;
            }
          }

          else
          {
            v162 = 0;
            v161.i64[0] = 0;
            v231 = 0u;
            v232 = 0u;
            v239 = 0u;
            v240 = 0u;
          }

          v163 = v159 + v162;
          v164 = v74[6];
          if (v74[6])
          {
            if (v164 < 0xF0)
            {
              if (v164 == 63)
              {
                v165 = *v163;
                v28 = *(v163 + 16);
                v29 = *(v163 + 32);
                v30 = *(v163 + 48);
                v245 = *v163;
                v246 = v28;
                v253 = v29;
                v254 = v30;
                v166 = 64;
                v167 = v74[7];
                if (!v74[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v164 == 1)
              {
                v165 = vld1q_dup_s16(v163);
                v245 = v165;
                v246 = v165;
                v253 = v165;
                v254 = v165;
                v166 = 2;
                v167 = v74[7];
                if (!v74[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v166 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v245, 128, v163, v164, *v161.i64, *v28.i64, *v29.i64, *v30.i8);
                v167 = v74[7];
                if (!v74[7])
                {
LABEL_218:
                  v31.i64[0] = 0;
                  v247 = 0u;
                  v248 = 0u;
                  v255 = 0u;
                  v256 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              v165.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v245, 128, v163, v164, v82).u64[0];
              v166 = 32;
              v167 = v74[7];
              if (!v74[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v166 = 0;
            v165.i64[0] = 0;
            v245 = 0u;
            v246 = 0u;
            v253 = 0u;
            v254 = 0u;
            v167 = v74[7];
            if (!v74[7])
            {
              goto LABEL_218;
            }
          }

          v168 = v163 + v166;
          if (v167 < 0xF0)
          {
            if (v167 == 63)
            {
              v31 = *v168;
              v28 = *(v168 + 16);
              v29 = *(v168 + 32);
              v30 = *(v168 + 48);
              v247 = *v168;
              v248 = v28;
              v255 = v29;
              v256 = v30;
            }

            else if (v167 == 1)
            {
              v31 = vld1q_dup_s16(v168);
              v247 = v31;
              v248 = v31;
              v255 = v31;
              v256 = v31;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v247, 128, v168, v167, *v165.i64, *v28.i64, *v29.i64, *v30.i8);
            }
          }

          else
          {
            v31.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v247, 128, v168, v167, v82).u64[0];
          }

LABEL_235:
          result = v214;
          v40 = v38 + 1;
          v169 = v220;
          if (v220)
          {
            v170 = 0;
            v171 = &v225 + 8 * v218 + v219;
            v172 = v221;
            do
            {
              if (v172)
              {
                v173 = 0;
                v174 = v216->i64 + v217 * v170;
                do
                {
                  *(v174 + v173) = v171->i8[v173];
                  ++v173;
                  v172 = v221;
                }

                while (16 * v221 > v173);
                v169 = v220;
              }

              ++v170;
              v171 += 8;
            }

            while (v170 < v169);
          }

LABEL_30:
          v21 = v38 == v204 >> 3;
          v38 = v40;
        }

        while (!v21);
        v21 = v17++ == v194;
      }

      while (!v21);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v156 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v133 = a8;
  v16 = a8 >> 2;
  v116 = a8 + a10 - 1;
  v118 = v116 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v137 = a1;
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v128 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v127 = result;
  if (v16 <= v118)
  {
    v126 = a7 + a9 - 1;
    if (a7 >> 3 <= v126 >> 3)
    {
      result = a1;
      v25 = a11;
      v136 = (a5 - 1) >> 3;
      v113 = a5 - 1;
      v120 = (a5 - 1) & 7;
      v114 = (a6 - 1) & 3;
      v115 = (a6 - 1) >> 2;
      v119 = 2 * a11;
      v26 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v27 = vcgt_u32(v26, 0xF00000007);
      v125 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v26, 0xFFFFFFFDFFFFFFFELL), -1))))))), v27);
      v124 = v27;
      v112 = 8 * v18 * v17;
      do
      {
        v28 = (4 * v16) | 3;
        if (4 * v16 <= v133)
        {
          v29 = v133;
        }

        else
        {
          v29 = 4 * v16;
        }

        if (v116 < v28)
        {
          v28 = v116;
        }

        v132 = 4 * v16;
        v123 = v29 - 4 * v16;
        v30 = v28 - v29;
        v31 = v30 + 1;
        v32 = v30 != v114;
        v122 = v31;
        v33 = v31 != 4;
        v34 = a7 >> 3;
        v35 = v114 + 1;
        if (v16 != v115)
        {
          v35 = 4;
        }

        v135 = v35;
        if (v16 != v115)
        {
          v32 = v33;
        }

        v121 = v32;
        v131 = a2 + (v29 - v133) * v25;
        v36 = a7;
        do
        {
          v46 = 8 * v34;
          v47 = 8 * (v34 + 1) - 1;
          if (8 * v34 <= v36)
          {
            v48 = v36;
          }

          else
          {
            v48 = 8 * v34;
          }

          if (v126 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v34 == v136)
          {
            v51 = v120 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v132 >= v133 && v46 >= v36)
          {
            v53 = v49 != v120;
            if (v34 != v136)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v121;
          }

          if (v127)
          {
            v74 = 0;
            v75 = v112 >> (*(result + 57) != 0);
            v76 = 1;
            if (v75 <= 63)
            {
              if (v75 > 15)
              {
                if (v75 == 16)
                {
                  v76 = 0;
                  v77 = 64;
                  v74 = 128;
                }

                else
                {
                  v77 = 0;
                  if (v75 == 32)
                  {
                    v76 = 0;
                    v74 = 64;
                    v77 = 64;
                  }
                }
              }

              else if (v75 == 4)
              {
                v76 = 0;
                v77 = 128;
                v74 = 256;
              }

              else
              {
                v77 = 0;
                if (v75 == 8)
                {
                  v76 = 0;
                  v74 = 128;
                  v77 = 128;
                }
              }
            }

            else if (v75 <= 255)
            {
              if (v75 == 64)
              {
                v76 = 0;
                v77 = 32;
                v74 = 64;
              }

              else
              {
                v77 = 0;
                if (v75 == 128)
                {
                  v76 = 0;
                  v74 = 32;
                  v77 = 32;
                }
              }
            }

            else if (v75 == 256)
            {
              v76 = 0;
              v77 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v74 = 16;
              v77 = 16;
            }

            else
            {
              v77 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v77 = 8;
                v74 = 16;
              }
            }

            v100 = (v74 >> 3) - 1;
            v101 = (v77 >> 2) - 1;
            if ((v76 & 1) != 0 || (v102 = 32 - __clz(~(-1 << -__clz(v100))), v103 = 32 - __clz(~(-1 << -__clz(v101))), !(v103 | v102)))
            {
              v111 = 0;
            }

            else
            {
              v104 = 0;
              v105 = 0;
              v106 = v34 & v100;
              v107 = v16 & v101;
              v108 = v103 != 0;
              v109 = v102 != 0;
              v110 = 1;
              do
              {
                --v103;
                if (v108)
                {
                  v105 |= (v110 & v107) << v104++;
                }

                else
                {
                  v103 = 0;
                }

                --v102;
                if (v109)
                {
                  v105 |= (v110 & v106) << v104++;
                }

                else
                {
                  v102 = 0;
                }

                v110 *= 2;
                --v104;
                v109 = v102 != 0;
                v108 = v103 != 0;
              }

              while (v102 | v103);
              v111 = v105 << 9;
              result = v137;
            }

            v61 = v111 + ((v46 / v74 + v132 / v77 * ((v74 + v113) / v74)) << 14);
          }

          else if (v125)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v124.i8[0];
            v57 = v124.i8[4];
            v59 = v125.i32[0];
            v60 = v125.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v16) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v34) << v54++;
              }

              else
              {
                v60 = 0;
              }

              v56 *= 2;
              --v54;
              v57 = v60 != 0;
              v58 = v59 != 0;
            }

            while (v60 | v59);
            v61 = v55 << 9;
          }

          else
          {
            v61 = 0;
          }

          v62 = *(result + 128) >> (*(result + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(result + 132) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 3;
          if (v66 < 8)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_81:
              v73 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 2) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_81;
            }
          }

          v68 = 0;
          v69 = 0;
          v70 = v64 != 0;
          v71 = v67 != 0;
          v72 = 1;
          do
          {
            --v64;
            if (v70)
            {
              v69 |= (v72 & v34) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v16) << v68++;
            }

            else
            {
              v67 = 0;
            }

            v72 *= 2;
            --v68;
            v71 = v67 != 0;
            v70 = v64 != 0;
          }

          while (v67 | v64);
          v73 = 8 * v69;
LABEL_82:
          v78 = (a3 + v61);
          if (v128)
          {
            v79 = v50;
            v80 = v25;
            v81 = v51;
            v82 = v48;
            v83 = v52;
            memcpy(__dst, (a3 + v61), sizeof(__dst));
            v52 = v83;
            v48 = v82;
            v46 = 8 * v34;
            v51 = v81;
            v25 = v80;
            v50 = v79;
            result = v137;
            v78 = __dst;
          }

          v84 = (a4 + v73);
          v85 = (v131 + 32 * (v48 - v36));
          if (!(v52 & 1 | (v51 < 8u)) && v135 > 3)
          {
            v37 = *(*(result + 208) + 52);
            v38 = &v78[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v131 + 32 * (v48 - v36)), v25, v78, *v84, v37)];
            v39 = v38 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + 4, v25, v38, v84[1], v37);
            v40 = v39 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v85 + v119), v25, v39, v84[2], v37);
            v41 = v40 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v85 + v119 + 64), v25, v40, v84[3], v37);
            v42 = v41 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + 8, v25, v41, v84[4], v37);
            v43 = v42 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v85 + 12, v25, v42, v84[5], v37);
            v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v85 + v119 + 128), v25, v43, v84[6], v37);
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock((v85 + v119 + 192), v25, v43 + v44, v84[7], v37);
LABEL_29:
            v36 = a7;
            v45 = v34 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v78;
          v145 = v51;
          v146 = v135;
          v141 = v123;
          v142 = v48 - v46;
          block[6] = v84;
          v139 = v131 + 32 * (v48 - v36);
          v140 = v25;
          v143 = v122;
          v144 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            goto LABEL_29;
          }

          v86 = *(*(result + 208) + 52);
          v87 = &v78[AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v148, 256, v78, *v84, v86)];
          v88 = v87 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v149, 256, v87, v84[1], v86);
          v89 = v88 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v152, 256, v88, v84[2], v86);
          v90 = v89 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v153, 256, v89, v84[3], v86);
          v91 = v90 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v150, 256, v90, v84[4], v86);
          v92 = v91 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v151, 256, v91, v84[5], v86);
          v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v154, 256, v92, v84[6], v86);
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(v155, 256, v92 + v93, v84[7], v86);
          v94 = v143;
          v36 = a7;
          v45 = v34 + 1;
          if (v143)
          {
            v95 = 0;
            v96 = &v148[16 * v141 + 2 * v142];
            v97 = v144;
            do
            {
              if (v97)
              {
                v98 = 0;
                v99 = v139 + v140 * v95;
                do
                {
                  *(v99 + v98) = v96->i8[v98];
                  ++v98;
                  v97 = v144;
                }

                while (32 * v144 > v98);
                v94 = v143;
              }

              ++v95;
              v96 += 16;
            }

            while (v95 < v94);
          }

LABEL_30:
          v20 = v34 == v126 >> 3;
          v34 = v45;
          result = v137;
        }

        while (!v20);
        v20 = v16++ == v118;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v400 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v321 = a8;
  v16 = a8 >> 2;
  v304 = a8 + a10 - 1;
  v306 = v304 >> 2;
  v17 = *(*(a1 + 208) + 88);
  v18 = *(a1 + 112);
  v325 = a1;
  if (*(a1 + 168))
  {
    v19 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v19 = 0;
  }

  v20 = (v19 & 0xD00) == 0 || v19 == 768;
  v21 = v19 & 0xE00;
  v23 = !v20 && v21 != 1024;
  v316 = v23;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v315 = result;
  v25 = a7;
  if (v16 <= v306)
  {
    v314 = a7 + a9 - 1;
    if (a7 >> 3 <= v314 >> 3)
    {
      result = a1;
      v26 = a11;
      v323 = (a5 - 1) >> 3;
      v301 = a5 - 1;
      v308 = (a5 - 1) & 7;
      v302 = (a6 - 1) & 3;
      v303 = (a6 - 1) >> 2;
      v307 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      v28 = vcgt_u32(v27, 0xF00000007);
      v313 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), v28);
      v312 = v28;
      v300 = 8 * v18 * v17;
      do
      {
        v29 = (4 * v16) | 3;
        if (4 * v16 <= v321)
        {
          v30 = v321;
        }

        else
        {
          v30 = 4 * v16;
        }

        if (v304 < v29)
        {
          v29 = v304;
        }

        v320 = 4 * v16;
        v311 = v30 - 4 * v16;
        v31 = v29 - v30;
        v32 = v31 + 1;
        v33 = v31 != v302;
        v310 = v32;
        v34 = v32 != 4;
        v35 = a7 >> 3;
        v36 = v302 + 1;
        if (v16 != v303)
        {
          v36 = 4;
        }

        v322 = v36;
        if (v16 != v303)
        {
          v33 = v34;
        }

        v309 = v33;
        v319 = a2 + (v30 - v321) * v26;
        do
        {
          v39 = 8 * v35;
          v40 = 8 * (v35 + 1) - 1;
          if (8 * v35 <= v25)
          {
            v41 = v25;
          }

          else
          {
            v41 = 8 * v35;
          }

          if (v314 < v40)
          {
            v40 = a7 + a9 - 1;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v35 == v323)
          {
            v44 = v308 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v320 >= v321 && v39 >= v25)
          {
            v46 = v42 != v308;
            if (v35 != v323)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v309;
          }

          if (v315)
          {
            v67 = 0;
            v68 = v300 >> (*(result + 57) != 0);
            v69 = 1;
            if (v68 <= 63)
            {
              if (v68 > 15)
              {
                if (v68 == 16)
                {
                  v69 = 0;
                  v70 = 64;
                  v67 = 128;
                }

                else
                {
                  v70 = 0;
                  if (v68 == 32)
                  {
                    v69 = 0;
                    v67 = 64;
                    v70 = 64;
                  }
                }
              }

              else if (v68 == 4)
              {
                v69 = 0;
                v70 = 128;
                v67 = 256;
              }

              else
              {
                v70 = 0;
                if (v68 == 8)
                {
                  v69 = 0;
                  v67 = 128;
                  v70 = 128;
                }
              }
            }

            else if (v68 <= 255)
            {
              if (v68 == 64)
              {
                v69 = 0;
                v70 = 32;
                v67 = 64;
              }

              else
              {
                v70 = 0;
                if (v68 == 128)
                {
                  v69 = 0;
                  v67 = 32;
                  v70 = 32;
                }
              }
            }

            else if (v68 == 256)
            {
              v69 = 0;
              v70 = 16;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v69 = 0;
              v67 = 16;
              v70 = 16;
            }

            else
            {
              v70 = 0;
              if (v68 == 1024)
              {
                v69 = 0;
                v70 = 8;
                v67 = 16;
              }
            }

            v288 = (v67 >> 3) - 1;
            v289 = (v70 >> 2) - 1;
            if ((v69 & 1) != 0 || (v290 = 32 - __clz(~(-1 << -__clz(v288))), v291 = 32 - __clz(~(-1 << -__clz(v289))), !(v291 | v290)))
            {
              v299 = 0;
            }

            else
            {
              v292 = 0;
              v293 = 0;
              v294 = v35 & v288;
              v295 = v16 & v289;
              v296 = v291 != 0;
              v297 = v290 != 0;
              v298 = 1;
              do
              {
                --v291;
                if (v296)
                {
                  v293 |= (v298 & v295) << v292++;
                }

                else
                {
                  v291 = 0;
                }

                --v290;
                if (v297)
                {
                  v293 |= (v298 & v294) << v292++;
                }

                else
                {
                  v290 = 0;
                }

                v298 *= 2;
                --v292;
                v297 = v290 != 0;
                v296 = v291 != 0;
              }

              while (v290 | v291);
              v299 = v293 << 9;
              result = v325;
            }

            v54 = v299 + ((v39 / v67 + v320 / v70 * ((v67 + v301) / v67)) << 14);
          }

          else if (v313)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v50 = v312.i8[0];
            v51 = v312.i8[4];
            v52 = v313.i32[0];
            v53 = v313.i32[1];
            do
            {
              --v52;
              if (v50)
              {
                v48 |= (v49 & v16) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v51)
              {
                v48 |= (v49 & v35) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v51 = v53 != 0;
              v50 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 9;
          }

          else
          {
            v54 = 0;
          }

          v55 = *(result + 128) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
          }

          v58 = *(result + 132) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 3;
          if (v59 < 8)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_82:
              v66 = 0;
              goto LABEL_83;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 2) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_82;
            }
          }

          v61 = 0;
          v62 = 0;
          v63 = v57 != 0;
          v64 = v60 != 0;
          v65 = 1;
          do
          {
            --v57;
            if (v63)
            {
              v62 |= (v65 & v35) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v16) << v61++;
            }

            else
            {
              v60 = 0;
            }

            v65 *= 2;
            --v61;
            v64 = v60 != 0;
            v63 = v57 != 0;
          }

          while (v60 | v57);
          v66 = 8 * v62;
LABEL_83:
          v71 = (a3 + v54);
          if (v316)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v325;
            v25 = a7;
            v71 = __dst;
          }

          v72 = (a4 + v66);
          v73 = (v319 + 32 * (v41 - v25));
          if (!(v45 & 1 | (v44 < 8u)) && v322 > 3)
          {
            v74 = *(result + 208);
            v75 = *(v74 + 52);
            v76 = *v72;
            if (*v72)
            {
              v26 = a11;
              if (v76 < 0xF0)
              {
                if (v76 == 127)
                {
                  v86 = v71[1];
                  v87 = v71[2];
                  v88 = v71[3];
                  v89 = v71[4];
                  v90 = v71[5];
                  v91 = v71[6];
                  v92 = v71[7];
                  *v73 = *v71;
                  v73[1] = v86;
                  v93 = &v73->i8[a11];
                  v73[2] = v87;
                  v73[3] = v88;
                  *v93 = v89;
                  *(v93 + 1) = v90;
                  v94 = &v73[2].i8[a11];
                  *v94 = v91;
                  *(v94 + 1) = v92;
                  v77 = 128;
                }

                else if (v76 == 3)
                {
                  v83 = vld1q_dup_f32(v71->i32);
                  *v73 = v83;
                  v73[1] = v83;
                  v73[2] = v83;
                  v73[3] = v83;
                  v84 = &v73->i8[a11];
                  *v84 = v83;
                  v84[1] = v83;
                  v84[2] = v83;
                  v84[3] = v83;
                  v77 = 4;
                }

                else
                {
                  v77 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v319 + 32 * (v41 - v25)), a11, v71, v76);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v319 + 32 * (v41 - v25)), a11, v71, v76, *(v74 + 52));
                v77 = 64;
              }
            }

            else
            {
              v77 = 0;
              v73[2] = 0u;
              v73[3] = 0u;
              *v73 = 0u;
              v73[1] = 0u;
              v26 = a11;
              v82 = &v73->i8[a11];
              *(v82 + 2) = 0u;
              *(v82 + 3) = 0u;
              *v82 = 0u;
              *(v82 + 1) = 0u;
            }

            v95 = v71->i64 + v77;
            v96 = v73 + 4;
            v97 = v72[1];
            if (v72[1])
            {
              if (v97 < 0xF0)
              {
                if (v97 == 127)
                {
                  v102 = *(v95 + 16);
                  v103 = *(v95 + 32);
                  v104 = *(v95 + 48);
                  v105 = *(v95 + 64);
                  v106 = *(v95 + 80);
                  v107 = *(v95 + 96);
                  v108 = *(v95 + 112);
                  *v96 = *v95;
                  v73[5] = v102;
                  v109 = &v96->i8[v26];
                  v73[6] = v103;
                  v73[7] = v104;
                  *v109 = v105;
                  *(v109 + 1) = v106;
                  v109 += 32;
                  *v109 = v107;
                  *(v109 + 1) = v108;
                  v98 = 128;
                }

                else if (v97 == 3)
                {
                  v100 = vld1q_dup_f32(v95);
                  v73[4] = v100;
                  v73[5] = v100;
                  v73[6] = v100;
                  v73[7] = v100;
                  v101 = &v96->i8[v26];
                  *v101 = v100;
                  v101[1] = v100;
                  v101[2] = v100;
                  v101[3] = v100;
                  v98 = 4;
                }

                else
                {
                  v98 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v96, v26, v95, v97);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v96->i32, v26, v95, v97, v75);
                v98 = 64;
              }
            }

            else
            {
              v98 = 0;
              v73[6] = 0u;
              v73[7] = 0u;
              *v96 = 0u;
              v73[5] = 0u;
              v99 = &v96->i8[v26];
              *(v99 + 2) = 0u;
              *(v99 + 3) = 0u;
              *v99 = 0u;
              *(v99 + 1) = 0u;
            }

            v110 = v95 + v98;
            v111 = (v73 + v307);
            v112 = v72[2];
            if (v72[2])
            {
              if (v112 < 0xF0)
              {
                if (v112 == 127)
                {
                  v117 = *(v110 + 16);
                  v118 = *(v110 + 32);
                  v119 = *(v110 + 48);
                  v120 = *(v110 + 64);
                  v121 = *(v110 + 80);
                  v122 = *(v110 + 96);
                  v123 = *(v110 + 112);
                  *v111 = *v110;
                  v111[1] = v117;
                  v124 = &v111->i8[v26];
                  v111[2] = v118;
                  v111[3] = v119;
                  *v124 = v120;
                  *(v124 + 1) = v121;
                  v125 = &v111[2].i8[v26];
                  *v125 = v122;
                  *(v125 + 1) = v123;
                  v113 = 128;
                }

                else if (v112 == 3)
                {
                  v115 = vld1q_dup_f32(v110);
                  *v111 = v115;
                  v111[1] = v115;
                  v111[2] = v115;
                  v111[3] = v115;
                  v116 = &v111->i8[v26];
                  *v116 = v115;
                  v116[1] = v115;
                  v116[2] = v115;
                  v116[3] = v115;
                  v113 = 4;
                }

                else
                {
                  v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v307), v26, v110, v112);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v73->i32 + v307), v26, v110, v112, v75);
                v113 = 64;
              }
            }

            else
            {
              v113 = 0;
              v111[2] = 0u;
              v111[3] = 0u;
              *v111 = 0u;
              v111[1] = 0u;
              v114 = &v111->i8[v26];
              *(v114 + 2) = 0u;
              *(v114 + 3) = 0u;
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v126 = v110 + v113;
            v127 = v111 + 4;
            v128 = v72[3];
            if (v72[3])
            {
              if (v128 < 0xF0)
              {
                if (v128 == 127)
                {
                  v133 = *(v126 + 16);
                  v134 = *(v126 + 32);
                  v135 = *(v126 + 48);
                  v136 = *(v126 + 64);
                  v137 = *(v126 + 80);
                  v138 = *(v126 + 96);
                  v139 = *(v126 + 112);
                  *v127 = *v126;
                  v111[5] = v133;
                  v140 = &v127->i8[v26];
                  v111[6] = v134;
                  v111[7] = v135;
                  *v140 = v136;
                  *(v140 + 1) = v137;
                  v140 += 32;
                  *v140 = v138;
                  *(v140 + 1) = v139;
                  v129 = 128;
                }

                else if (v128 == 3)
                {
                  v131 = vld1q_dup_f32(v126);
                  v111[4] = v131;
                  v111[5] = v131;
                  v111[6] = v131;
                  v111[7] = v131;
                  v132 = &v127->i8[v26];
                  *v132 = v131;
                  v132[1] = v131;
                  v132[2] = v131;
                  v132[3] = v131;
                  v129 = 4;
                }

                else
                {
                  v129 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v127, v26, v126, v128);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v127->i32, v26, v126, v128, v75);
                v129 = 64;
              }
            }

            else
            {
              v129 = 0;
              v111[6] = 0u;
              v111[7] = 0u;
              *v127 = 0u;
              v111[5] = 0u;
              v130 = &v127->i8[v26];
              *(v130 + 2) = 0u;
              *(v130 + 3) = 0u;
              *v130 = 0u;
              *(v130 + 1) = 0u;
            }

            v141 = v126 + v129;
            v142 = v73 + 8;
            v143 = v72[4];
            if (v72[4])
            {
              if (v143 < 0xF0)
              {
                if (v143 == 127)
                {
                  v148 = *(v141 + 16);
                  v149 = *(v141 + 32);
                  v150 = *(v141 + 48);
                  v151 = *(v141 + 64);
                  v152 = *(v141 + 80);
                  v153 = *(v141 + 96);
                  v154 = *(v141 + 112);
                  *v142 = *v141;
                  v73[9] = v148;
                  v155 = &v142->i8[v26];
                  v73[10] = v149;
                  v73[11] = v150;
                  *v155 = v151;
                  *(v155 + 1) = v152;
                  v155 += 32;
                  *v155 = v153;
                  *(v155 + 1) = v154;
                  v144 = 128;
                }

                else if (v143 == 3)
                {
                  v146 = vld1q_dup_f32(v141);
                  v73[8] = v146;
                  v73[9] = v146;
                  v73[10] = v146;
                  v73[11] = v146;
                  v147 = &v142->i8[v26];
                  *v147 = v146;
                  v147[1] = v146;
                  v147[2] = v146;
                  v147[3] = v146;
                  v144 = 4;
                }

                else
                {
                  v144 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v142, v26, v141, v143);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v142->i32, v26, v141, v143, v75);
                v144 = 64;
              }
            }

            else
            {
              v144 = 0;
              v73[10] = 0u;
              v73[11] = 0u;
              *v142 = 0u;
              v73[9] = 0u;
              v145 = &v142->i8[v26];
              *(v145 + 2) = 0u;
              *(v145 + 3) = 0u;
              *v145 = 0u;
              *(v145 + 1) = 0u;
            }

            v156 = v141 + v144;
            v157 = v73 + 12;
            v158 = v72[5];
            if (v72[5])
            {
              if (v158 < 0xF0)
              {
                if (v158 == 127)
                {
                  v163 = *(v156 + 16);
                  v164 = *(v156 + 32);
                  v165 = *(v156 + 48);
                  v166 = *(v156 + 64);
                  v167 = *(v156 + 80);
                  v168 = *(v156 + 96);
                  v169 = *(v156 + 112);
                  *v157 = *v156;
                  v73[13] = v163;
                  v170 = &v157->i8[v26];
                  v73[14] = v164;
                  v73[15] = v165;
                  *v170 = v166;
                  *(v170 + 1) = v167;
                  v170 += 32;
                  *v170 = v168;
                  *(v170 + 1) = v169;
                  v159 = 128;
                }

                else if (v158 == 3)
                {
                  v161 = vld1q_dup_f32(v156);
                  v73[12] = v161;
                  v73[13] = v161;
                  v73[14] = v161;
                  v73[15] = v161;
                  v162 = &v157->i8[v26];
                  *v162 = v161;
                  v162[1] = v161;
                  v162[2] = v161;
                  v162[3] = v161;
                  v159 = 4;
                }

                else
                {
                  v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v157, v26, v156, v158);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v157->i32, v26, v156, v158, v75);
                v159 = 64;
              }
            }

            else
            {
              v159 = 0;
              v73[14] = 0u;
              v73[15] = 0u;
              *v157 = 0u;
              v73[13] = 0u;
              v160 = &v157->i8[v26];
              *(v160 + 2) = 0u;
              *(v160 + 3) = 0u;
              *v160 = 0u;
              *(v160 + 1) = 0u;
            }

            v171 = v156 + v159;
            v172 = v111 + 8;
            v173 = v72[6];
            if (v72[6])
            {
              if (v173 < 0xF0)
              {
                if (v173 == 127)
                {
                  v178 = *(v171 + 16);
                  v179 = *(v171 + 32);
                  v180 = *(v171 + 48);
                  v181 = *(v171 + 64);
                  v182 = *(v171 + 80);
                  v183 = *(v171 + 96);
                  v184 = *(v171 + 112);
                  *v172 = *v171;
                  v111[9] = v178;
                  v185 = &v172->i8[v26];
                  v111[10] = v179;
                  v111[11] = v180;
                  *v185 = v181;
                  *(v185 + 1) = v182;
                  v185 += 32;
                  *v185 = v183;
                  *(v185 + 1) = v184;
                  v174 = 128;
                }

                else if (v173 == 3)
                {
                  v176 = vld1q_dup_f32(v171);
                  v111[8] = v176;
                  v111[9] = v176;
                  v111[10] = v176;
                  v111[11] = v176;
                  v177 = &v172->i8[v26];
                  *v177 = v176;
                  v177[1] = v176;
                  v177[2] = v176;
                  v177[3] = v176;
                  v174 = 4;
                }

                else
                {
                  v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v172, v26, v156 + v159, v173);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v172->i32, v26, v156 + v159, v173, v75);
                v174 = 64;
              }
            }

            else
            {
              v174 = 0;
              v111[10] = 0u;
              v111[11] = 0u;
              *v172 = 0u;
              v111[9] = 0u;
              v175 = &v172->i8[v26];
              *(v175 + 2) = 0u;
              *(v175 + 3) = 0u;
              *v175 = 0u;
              *(v175 + 1) = 0u;
            }

            v186 = v111 + 12;
            v187 = v72[7];
            if (v72[7])
            {
              v188 = v171 + v174;
              if (v187 < 0xF0)
              {
                if (v187 == 127)
                {
                  v191 = *(v188 + 16);
                  v192 = *(v188 + 32);
                  v193 = *(v188 + 48);
                  v194 = *(v188 + 64);
                  v195 = *(v188 + 80);
                  v196 = *(v188 + 96);
                  v197 = *(v188 + 112);
                  *v186 = *v188;
                  v111[13] = v191;
                  v198 = &v186->i8[v26];
                  v111[14] = v192;
                  v111[15] = v193;
                  *v198 = v194;
                  *(v198 + 1) = v195;
                  v198 += 32;
                  *v198 = v196;
                  *(v198 + 1) = v197;
                }

                else if (v187 == 3)
                {
                  v189 = vld1q_dup_f32(v188);
                  v111[12] = v189;
                  v111[13] = v189;
                  v111[14] = v189;
                  v111[15] = v189;
                  v190 = &v186->i8[v26];
                  *v190 = v189;
                  v190[1] = v189;
                  v190[2] = v189;
                  v190[3] = v189;
                }

                else
                {
                  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v186, v26, v188, v187);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v186->i32, v26, v188, v187, v75);
              }
            }

            else
            {
              v111[14] = 0u;
              v111[15] = 0u;
              *v186 = 0u;
              v111[13] = 0u;
              v37 = &v186->i8[v26];
              *(v37 + 2) = 0u;
              *(v37 + 3) = 0u;
              *v37 = 0u;
              *(v37 + 1) = 0u;
            }

            v25 = a7;
            result = v325;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v333 = v44;
          v334 = v322;
          v329 = v311;
          v330 = v41 - v39;
          block[6] = v72;
          v327 = v319 + 32 * (v41 - v25);
          v26 = a11;
          v328 = a11;
          v331 = v310;
          v332 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v325;
            v25 = a7;
LABEL_30:
            v38 = v35 + 1;
            goto LABEL_31;
          }

          v78 = *(result + 208);
          v79 = *(v78 + 52);
          v80 = *v72;
          if (*v72)
          {
            if (v80 < 0xF0)
            {
              if (v80 == 127)
              {
                v199 = v71[1];
                v200 = v71[2];
                v201 = v71[3];
                v202 = v71[4];
                v203 = v71[5];
                v204 = v71[6];
                v205 = v71[7];
                v336 = *v71;
                v337 = v199;
                v338 = v200;
                v339 = v201;
                v352 = v202;
                v353 = v203;
                v354 = v204;
                v355 = v205;
                v81 = 128;
              }

              else if (v80 == 3)
              {
                v85 = vld1q_dup_f32(v71->i32);
                v336 = v85;
                v337 = v85;
                v338 = v85;
                v339 = v85;
                v352 = v85;
                v353 = v85;
                v354 = v85;
                v355 = v85;
                v81 = 4;
              }

              else
              {
                v81 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v336, 256, v71, v80);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v336.i32, 256, v71, v80, *(v78 + 52));
              v81 = 64;
            }
          }

          else
          {
            v81 = 0;
            v339 = 0u;
            v338 = 0u;
            v337 = 0u;
            v336 = 0u;
            v352 = 0u;
            v353 = 0u;
            v354 = 0u;
            v355 = 0u;
          }

          v206 = v71->i64 + v81;
          v207 = v72[1];
          if (v72[1])
          {
            if (v207 < 0xF0)
            {
              if (v207 == 127)
              {
                v210 = *(v206 + 16);
                v211 = *(v206 + 32);
                v212 = *(v206 + 48);
                v213 = *(v206 + 64);
                v214 = *(v206 + 80);
                v215 = *(v206 + 96);
                v216 = *(v206 + 112);
                v340 = *v206;
                v341 = v210;
                v342 = v211;
                v343 = v212;
                v356 = v213;
                v357 = v214;
                v358 = v215;
                v359 = v216;
                v208 = 128;
              }

              else if (v207 == 3)
              {
                v209 = vld1q_dup_f32(v206);
                v340 = v209;
                v341 = v209;
                v342 = v209;
                v343 = v209;
                v356 = v209;
                v357 = v209;
                v358 = v209;
                v359 = v209;
                v208 = 4;
              }

              else
              {
                v208 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v340, 256, v206, v207);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v340.i32, 256, v206, v207, v79);
              v208 = 64;
            }
          }

          else
          {
            v208 = 0;
            v342 = 0u;
            v343 = 0u;
            v340 = 0u;
            v341 = 0u;
            v356 = 0u;
            v357 = 0u;
            v358 = 0u;
            v359 = 0u;
          }

          v217 = v206 + v208;
          v218 = v72[2];
          if (v72[2])
          {
            if (v218 < 0xF0)
            {
              if (v218 == 127)
              {
                v221 = *(v217 + 16);
                v222 = *(v217 + 32);
                v223 = *(v217 + 48);
                v224 = *(v217 + 64);
                v225 = *(v217 + 80);
                v226 = *(v217 + 96);
                v227 = *(v217 + 112);
                v368 = *v217;
                v369 = v221;
                v370 = v222;
                v371 = v223;
                v384 = v224;
                v385 = v225;
                v386 = v226;
                v387 = v227;
                v219 = 128;
              }

              else if (v218 == 3)
              {
                v220 = vld1q_dup_f32(v217);
                v368 = v220;
                v369 = v220;
                v370 = v220;
                v371 = v220;
                v384 = v220;
                v385 = v220;
                v386 = v220;
                v387 = v220;
                v219 = 4;
              }

              else
              {
                v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v368, 256, v217, v218);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v368.i32, 256, v217, v218, v79);
              v219 = 64;
            }
          }

          else
          {
            v219 = 0;
            v370 = 0u;
            v371 = 0u;
            v368 = 0u;
            v369 = 0u;
            v384 = 0u;
            v385 = 0u;
            v386 = 0u;
            v387 = 0u;
          }

          v228 = v217 + v219;
          v229 = v72[3];
          if (v72[3])
          {
            if (v229 < 0xF0)
            {
              if (v229 == 127)
              {
                v232 = *(v228 + 16);
                v233 = *(v228 + 32);
                v234 = *(v228 + 48);
                v235 = *(v228 + 64);
                v236 = *(v228 + 80);
                v237 = *(v228 + 96);
                v238 = *(v228 + 112);
                v372 = *v228;
                v373 = v232;
                v374 = v233;
                v375 = v234;
                v388 = v235;
                v389 = v236;
                v390 = v237;
                v391 = v238;
                v230 = 128;
              }

              else if (v229 == 3)
              {
                v231 = vld1q_dup_f32(v228);
                v372 = v231;
                v373 = v231;
                v374 = v231;
                v375 = v231;
                v388 = v231;
                v389 = v231;
                v390 = v231;
                v391 = v231;
                v230 = 4;
              }

              else
              {
                v230 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v372, 256, v228, v229);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v372.i32, 256, v228, v229, v79);
              v230 = 64;
            }
          }

          else
          {
            v230 = 0;
            v374 = 0u;
            v375 = 0u;
            v372 = 0u;
            v373 = 0u;
            v388 = 0u;
            v389 = 0u;
            v390 = 0u;
            v391 = 0u;
          }

          v239 = v228 + v230;
          v240 = v72[4];
          if (v72[4])
          {
            if (v240 < 0xF0)
            {
              if (v240 == 127)
              {
                v243 = *(v239 + 16);
                v244 = *(v239 + 32);
                v245 = *(v239 + 48);
                v246 = *(v239 + 64);
                v247 = *(v239 + 80);
                v248 = *(v239 + 96);
                v249 = *(v239 + 112);
                v344 = *v239;
                v345 = v243;
                v346 = v244;
                v347 = v245;
                v360 = v246;
                v361 = v247;
                v362 = v248;
                v363 = v249;
                v241 = 128;
              }

              else if (v240 == 3)
              {
                v242 = vld1q_dup_f32(v239);
                v344 = v242;
                v345 = v242;
                v346 = v242;
                v347 = v242;
                v360 = v242;
                v361 = v242;
                v362 = v242;
                v363 = v242;
                v241 = 4;
              }

              else
              {
                v241 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v344, 256, v239, v240);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v344.i32, 256, v239, v240, v79);
              v241 = 64;
            }
          }

          else
          {
            v241 = 0;
            v346 = 0u;
            v347 = 0u;
            v344 = 0u;
            v345 = 0u;
            v360 = 0u;
            v361 = 0u;
            v362 = 0u;
            v363 = 0u;
          }

          v250 = v239 + v241;
          v251 = v72[5];
          if (v72[5])
          {
            if (v251 < 0xF0)
            {
              if (v251 == 127)
              {
                v254 = *(v250 + 16);
                v255 = *(v250 + 32);
                v256 = *(v250 + 48);
                v257 = *(v250 + 64);
                v258 = *(v250 + 80);
                v259 = *(v250 + 96);
                v260 = *(v250 + 112);
                v348 = *v250;
                v349 = v254;
                v350 = v255;
                v351 = v256;
                v364 = v257;
                v365 = v258;
                v366 = v259;
                v367 = v260;
                v252 = 128;
              }

              else if (v251 == 3)
              {
                v253 = vld1q_dup_f32(v250);
                v348 = v253;
                v349 = v253;
                v350 = v253;
                v351 = v253;
                v364 = v253;
                v365 = v253;
                v366 = v253;
                v367 = v253;
                v252 = 4;
              }

              else
              {
                v252 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v348, 256, v250, v251);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v348.i32, 256, v250, v251, v79);
              v252 = 64;
            }
          }

          else
          {
            v252 = 0;
            v350 = 0u;
            v351 = 0u;
            v348 = 0u;
            v349 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v367 = 0u;
          }

          v261 = v250 + v252;
          v262 = v72[6];
          if (v72[6])
          {
            if (v262 < 0xF0)
            {
              if (v262 == 127)
              {
                v266 = *(v261 + 16);
                v267 = *(v261 + 32);
                v268 = *(v261 + 48);
                v269 = *(v261 + 64);
                v270 = *(v261 + 80);
                v271 = *(v261 + 96);
                v272 = *(v261 + 112);
                v376 = *v261;
                v377 = v266;
                v378 = v267;
                v379 = v268;
                v392 = v269;
                v393 = v270;
                v394 = v271;
                v395 = v272;
                v263 = 128;
                v264 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_232;
                }
              }

              else if (v262 == 3)
              {
                v265 = vld1q_dup_f32(v261);
                v376 = v265;
                v377 = v265;
                v378 = v265;
                v379 = v265;
                v392 = v265;
                v393 = v265;
                v394 = v265;
                v395 = v265;
                v263 = 4;
                v264 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_232;
                }
              }

              else
              {
                v263 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v376, 256, v261, v262);
                v264 = v72[7];
                if (!v72[7])
                {
LABEL_232:
                  v382 = 0u;
                  v383 = 0u;
                  v380 = 0u;
                  v381 = 0u;
                  v396 = 0u;
                  v397 = 0u;
                  v398 = 0u;
                  v399 = 0u;
                  goto LABEL_234;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v376.i32, 256, v261, v262, v79);
              v263 = 64;
              v264 = v72[7];
              if (!v72[7])
              {
                goto LABEL_232;
              }
            }
          }

          else
          {
            v263 = 0;
            v378 = 0u;
            v379 = 0u;
            v376 = 0u;
            v377 = 0u;
            v392 = 0u;
            v393 = 0u;
            v394 = 0u;
            v395 = 0u;
            v264 = v72[7];
            if (!v72[7])
            {
              goto LABEL_232;
            }
          }

          v273 = v261 + v263;
          if (v264 < 0xF0)
          {
            if (v264 == 127)
            {
              v275 = *(v273 + 16);
              v276 = *(v273 + 32);
              v277 = *(v273 + 48);
              v278 = *(v273 + 64);
              v279 = *(v273 + 80);
              v280 = *(v273 + 96);
              v281 = *(v273 + 112);
              v380 = *v273;
              v381 = v275;
              v382 = v276;
              v383 = v277;
              v396 = v278;
              v397 = v279;
              v398 = v280;
              v399 = v281;
            }

            else if (v264 == 3)
            {
              v274 = vld1q_dup_f32(v273);
              v380 = v274;
              v381 = v274;
              v382 = v274;
              v383 = v274;
              v396 = v274;
              v397 = v274;
              v398 = v274;
              v399 = v274;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v380, 256, v273, v264);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v380.i32, 256, v273, v264, v79);
          }

LABEL_234:
          result = v325;
          v38 = v35 + 1;
          v282 = v331;
          v25 = a7;
          if (v331)
          {
            v283 = 0;
            v284 = &v336 + 16 * v329 + 2 * v330;
            v285 = v332;
            do
            {
              if (v285)
              {
                v286 = 0;
                v287 = v327 + v328 * v283;
                do
                {
                  *(v287 + v286) = v284->i8[v286];
                  ++v286;
                  v285 = v332;
                }

                while (32 * v332 > v286);
                v282 = v331;
              }

              ++v283;
              v284 += 16;
            }

            while (v283 < v282);
          }

LABEL_31:
          v20 = v35 == v314 >> 3;
          v35 = v38;
        }

        while (!v20);
        v20 = v16++ == v306;
      }

      while (!v20);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v208 = v15;
  v17 = v16;
  v19 = v18;
  v203 = v20;
  v204 = v21;
  v191 = v22;
  v23 = v12;
  v350 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v207 = v14;
  v24 = v14 >> 2;
  v190 = v14 + a10 - 1;
  v192 = v190 >> 2;
  v25 = *(*(v23 + 208) + 88);
  v26 = *(v23 + 112);
  v211 = v23;
  if (*(v23 + 168))
  {
    v27 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = (v27 & 0xD00) == 0 || v27 == 768;
  v29 = v27 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v202 = v31;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v23, *(v23 + 144) + a12);
  v201 = result;
  if (v24 <= v192)
  {
    v200 = v208 + a9 - 1;
    if (v208 >> 3 <= v200 >> 3)
    {
      result = v23;
      v33 = a11;
      v210 = (v19 - 1) >> 3;
      v187 = v19 - 1;
      v194 = (v19 - 1) & 7;
      v188 = (v17 - 1) & 3;
      v189 = (v17 - 1) >> 2;
      v193 = 2 * a11;
      v34 = vadd_s32(__PAIR64__(v19, v17), 0x700000003);
      v35 = vcgt_u32(v34, 0xF00000007);
      v199 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFDFFFFFFFELL), -1))))))), v35);
      v198 = v35;
      v186 = 8 * v26 * v25;
      do
      {
        v36 = (4 * v24) | 3;
        if (4 * v24 <= v207)
        {
          v37 = v207;
        }

        else
        {
          v37 = 4 * v24;
        }

        if (v190 < v36)
        {
          v36 = v190;
        }

        v206 = 4 * v24;
        v197 = v37 - 4 * v24;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v188;
        v196 = v39;
        v41 = v39 != 4;
        v42 = v208 >> 3;
        v43 = v188 + 1;
        if (v24 != v189)
        {
          v43 = 4;
        }

        v209 = v43;
        if (v24 != v189)
        {
          v40 = v41;
        }

        v195 = v40;
        v205 = v191 + (v37 - v207) * v33;
        v44 = v208;
        do
        {
          v46 = 8 * v42;
          v47 = 8 * (v42 + 1) - 1;
          if (8 * v42 <= v44)
          {
            v48 = v44;
          }

          else
          {
            v48 = 8 * v42;
          }

          if (v200 < v47)
          {
            v47 = v208 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v210)
          {
            v51 = v194 + 1;
          }

          else
          {
            v51 = 8;
          }

          v52 = 1;
          if (v206 >= v207 && v46 >= v44)
          {
            v53 = v49 != v194;
            if (v42 != v210)
            {
              v53 = v50 != 8;
            }

            v52 = v53 || v195;
          }

          if (v201)
          {
            v74 = 0;
            v75 = v186 >> (*(result + 57) != 0);
            v76 = 1;
            if (v75 <= 63)
            {
              if (v75 > 15)
              {
                if (v75 == 16)
                {
                  v76 = 0;
                  v77 = 64;
                  v74 = 128;
                }

                else
                {
                  v77 = 0;
                  if (v75 == 32)
                  {
                    v76 = 0;
                    v74 = 64;
                    v77 = 64;
                  }
                }
              }

              else if (v75 == 4)
              {
                v76 = 0;
                v77 = 128;
                v74 = 256;
              }

              else
              {
                v77 = 0;
                if (v75 == 8)
                {
                  v76 = 0;
                  v74 = 128;
                  v77 = 128;
                }
              }
            }

            else if (v75 <= 255)
            {
              if (v75 == 64)
              {
                v76 = 0;
                v77 = 32;
                v74 = 64;
              }

              else
              {
                v77 = 0;
                if (v75 == 128)
                {
                  v76 = 0;
                  v74 = 32;
                  v77 = 32;
                }
              }
            }

            else if (v75 == 256)
            {
              v76 = 0;
              v77 = 16;
              v74 = 32;
            }

            else if (v75 == 512)
            {
              v76 = 0;
              v74 = 16;
              v77 = 16;
            }

            else
            {
              v77 = 0;
              if (v75 == 1024)
              {
                v76 = 0;
                v77 = 8;
                v74 = 16;
              }
            }

            v174 = (v74 >> 3) - 1;
            v175 = (v77 >> 2) - 1;
            if ((v76 & 1) != 0 || (v176 = 32 - __clz(~(-1 << -__clz(v174))), v177 = 32 - __clz(~(-1 << -__clz(v175))), !(v177 | v176)))
            {
              v185 = 0;
            }

            else
            {
              v178 = 0;
              v179 = 0;
              v180 = v42 & v174;
              v181 = v24 & v175;
              v182 = v177 != 0;
              v183 = v176 != 0;
              v184 = 1;
              do
              {
                --v177;
                if (v182)
                {
                  v179 |= (v184 & v181) << v178++;
                }

                else
                {
                  v177 = 0;
                }

                --v176;
                if (v183)
                {
                  v179 |= (v184 & v180) << v178++;
                }

                else
                {
                  v176 = 0;
                }

                v184 *= 2;
                --v178;
                v183 = v176 != 0;
                v182 = v177 != 0;
              }

              while (v176 | v177);
              v185 = v179 << 10;
              result = v211;
            }

            v61 = v185 + ((v46 / v74 + v206 / v77 * ((v74 + v187) / v74)) << 14);
          }

          else if (v199)
          {
            v54 = 0;
            v55 = 0;
            v56 = 1;
            v58 = v198.i8[0];
            v57 = v198.i8[4];
            v59 = v199.i32[0];
            v60 = v199.i32[1];
            do
            {
              --v59;
              if (v58)
              {
                v55 |= (v56 & v24) << v54++;
              }

              else
              {
                v59 = 0;
              }

              --v60;
              if (v57)
              {
                v55 |= (v56 & v42) << v54++;
              }

              else
              {
                v60 = 0;
              }

              v56 *= 2;
              --v54;
              v57 = v60 != 0;
              v58 = v59 != 0;
            }

            while (v60 | v59);
            v61 = v55 << 10;
          }

          else
          {
            v61 = 0;
          }

          v62 = *(result + 128) >> (*(result + 144) + a12);
          if (v62 <= 1)
          {
            v62 = 1;
          }

          v63 = v62 + 7;
          if (v63 < 0x10)
          {
            v64 = 0;
          }

          else
          {
            v64 = 32 - __clz(~(-1 << -__clz((v63 >> 3) - 1)));
          }

          v65 = *(result + 132) >> (*(result + 144) + a12);
          if (v65 <= 1)
          {
            v65 = 1;
          }

          v66 = v65 + 3;
          if (v66 < 8)
          {
            v67 = 0;
            if (!v64)
            {
LABEL_81:
              v73 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v67 = 32 - __clz(~(-1 << -__clz((v66 >> 2) - 1)));
            if (!(v67 | v64))
            {
              goto LABEL_81;
            }
          }

          v68 = 0;
          v69 = 0;
          v70 = v64 != 0;
          v71 = v67 != 0;
          v72 = 1;
          do
          {
            --v64;
            if (v70)
            {
              v69 |= (v72 & v42) << v68++;
            }

            else
            {
              v64 = 0;
            }

            --v67;
            if (v71)
            {
              v69 |= (v72 & v24) << v68++;
            }

            else
            {
              v67 = 0;
            }

            v72 *= 2;
            --v68;
            v71 = v67 != 0;
            v70 = v64 != 0;
          }

          while (v67 | v64);
          v73 = 8 * v69;
LABEL_82:
          v78 = (v203 + v61);
          if (v202)
          {
            memcpy(__dst, v78, sizeof(__dst));
            result = v211;
            v78 = __dst;
          }

          v79 = (v204 + v73);
          v80 = v205 + ((v48 - v44) << 6);
          if (!(v52 & 1 | (v51 < 8u)) && v209 > 3)
          {
            v81 = *(result + 208);
            v82 = *(v81 + 52);
            v83 = *v79;
            if (*v79)
            {
              v33 = a11;
              if (v83 < 0xF0)
              {
                if (v83 == 7)
                {
                  v90 = vld1q_dup_f64(v78);
                  *v80 = v90;
                  *(v80 + 16) = v90;
                  *(v80 + 32) = v90;
                  *(v80 + 48) = v90;
                  *(v80 + 64) = v90;
                  *(v80 + 80) = v90;
                  *(v80 + 96) = v90;
                  *(v80 + 112) = v90;
                  v91 = (v80 + a11);
                  *v91 = v90;
                  v91[1] = v90;
                  v91[2] = v90;
                  v91[3] = v90;
                  v91[4] = v90;
                  v91[5] = v90;
                  v91[6] = v90;
                  v91[7] = v90;
                  v84 = 8;
                }

                else
                {
                  v84 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v80, a11, v78, v83);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v80, a11, v78, v83, *(v81 + 52));
                v84 = 128;
              }
            }

            else
            {
              v84 = 0;
              *(v80 + 96) = 0u;
              *(v80 + 112) = 0u;
              *(v80 + 64) = 0u;
              *(v80 + 80) = 0u;
              *(v80 + 32) = 0u;
              *(v80 + 48) = 0u;
              *v80 = 0u;
              *(v80 + 16) = 0u;
              v33 = a11;
              v89 = (v80 + a11);
              v89[6] = 0u;
              v89[7] = 0u;
              v89[4] = 0u;
              v89[5] = 0u;
              v89[2] = 0u;
              v89[3] = 0u;
              *v89 = 0u;
              v89[1] = 0u;
            }

            v93 = &v78[v84];
            v94 = (v80 + 128);
            v95 = v79[1];
            if (v79[1])
            {
              if (v95 < 0xF0)
              {
                if (v95 == 7)
                {
                  v98 = vld1q_dup_f64(v93);
                  *(v80 + 128) = v98;
                  *(v80 + 144) = v98;
                  *(v80 + 160) = v98;
                  *(v80 + 176) = v98;
                  *(v80 + 192) = v98;
                  *(v80 + 208) = v98;
                  *(v80 + 224) = v98;
                  *(v80 + 240) = v98;
                  v99 = (v94 + v33);
                  *v99 = v98;
                  v99[1] = v98;
                  v99[2] = v98;
                  v99[3] = v98;
                  v99[4] = v98;
                  v99[5] = v98;
                  v99[6] = v98;
                  v99[7] = v98;
                  v96 = 8;
                }

                else
                {
                  v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v94, v33, v93, v95);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v94, v33, v93, v95, v82);
                v96 = 128;
              }
            }

            else
            {
              v96 = 0;
              *(v80 + 224) = 0u;
              *(v80 + 240) = 0u;
              *(v80 + 192) = 0u;
              *(v80 + 208) = 0u;
              *(v80 + 160) = 0u;
              *(v80 + 176) = 0u;
              *v94 = 0u;
              *(v80 + 144) = 0u;
              v97 = (v94->n128_u64 + v33);
              v97[6] = 0u;
              v97[7] = 0u;
              v97[4] = 0u;
              v97[5] = 0u;
              v97[2] = 0u;
              v97[3] = 0u;
              *v97 = 0u;
              v97[1] = 0u;
            }

            v100 = (v93 + v96);
            v101 = (v80 + v193);
            v102 = v79[2];
            if (v79[2])
            {
              if (v102 < 0xF0)
              {
                if (v102 == 7)
                {
                  v105 = vld1q_dup_f64(v100);
                  *v101 = v105;
                  v101[1] = v105;
                  v101[2] = v105;
                  v101[3] = v105;
                  v101[4] = v105;
                  v101[5] = v105;
                  v101[6] = v105;
                  v101[7] = v105;
                  v106 = (v101 + v33);
                  *v106 = v105;
                  v106[1] = v105;
                  v106[2] = v105;
                  v106[3] = v105;
                  v106[4] = v105;
                  v106[5] = v105;
                  v106[6] = v105;
                  v106[7] = v105;
                  v103 = 8;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v80 + v193, v33, v100, v102);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock((v80 + v193), v33, v100, v102, v82);
                v103 = 128;
              }
            }

            else
            {
              v103 = 0;
              v101[6] = 0u;
              v101[7] = 0u;
              v101[4] = 0u;
              v101[5] = 0u;
              v101[2] = 0u;
              v101[3] = 0u;
              *v101 = 0u;
              v101[1] = 0u;
              v104 = (v101->n128_u64 + v33);
              v104[6] = 0u;
              v104[7] = 0u;
              v104[4] = 0u;
              v104[5] = 0u;
              v104[2] = 0u;
              v104[3] = 0u;
              *v104 = 0u;
              v104[1] = 0u;
            }

            v107 = (v100 + v103);
            v108 = v101 + 8;
            v109 = v79[3];
            if (v79[3])
            {
              if (v109 < 0xF0)
              {
                if (v109 == 7)
                {
                  v112 = vld1q_dup_f64(v107);
                  v101[8] = v112;
                  v101[9] = v112;
                  v101[10] = v112;
                  v101[11] = v112;
                  v101[12] = v112;
                  v101[13] = v112;
                  v101[14] = v112;
                  v101[15] = v112;
                  v113 = (v108 + v33);
                  *v113 = v112;
                  v113[1] = v112;
                  v113[2] = v112;
                  v113[3] = v112;
                  v113[4] = v112;
                  v113[5] = v112;
                  v113[6] = v112;
                  v113[7] = v112;
                  v110 = 8;
                }

                else
                {
                  v110 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v108, v33, v107, v109);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v108, v33, v107, v109, v82);
                v110 = 128;
              }
            }

            else
            {
              v110 = 0;
              v101[14] = 0u;
              v101[15] = 0u;
              v101[12] = 0u;
              v101[13] = 0u;
              v101[10] = 0u;
              v101[11] = 0u;
              *v108 = 0u;
              v101[9] = 0u;
              v111 = (v108->n128_u64 + v33);
              v111[6] = 0u;
              v111[7] = 0u;
              v111[4] = 0u;
              v111[5] = 0u;
              v111[2] = 0u;
              v111[3] = 0u;
              *v111 = 0u;
              v111[1] = 0u;
            }

            v114 = (v107 + v110);
            v115 = (v80 + 256);
            v116 = v79[4];
            if (v79[4])
            {
              if (v116 < 0xF0)
              {
                if (v116 == 7)
                {
                  v119 = vld1q_dup_f64(v114);
                  *(v80 + 256) = v119;
                  *(v80 + 272) = v119;
                  *(v80 + 288) = v119;
                  *(v80 + 304) = v119;
                  *(v80 + 320) = v119;
                  *(v80 + 336) = v119;
                  *(v80 + 352) = v119;
                  *(v80 + 368) = v119;
                  v120 = (v115 + v33);
                  *v120 = v119;
                  v120[1] = v119;
                  v120[2] = v119;
                  v120[3] = v119;
                  v120[4] = v119;
                  v120[5] = v119;
                  v120[6] = v119;
                  v120[7] = v119;
                  v117 = 8;
                }

                else
                {
                  v117 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v115, v33, v114, v116);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v115, v33, v114, v116, v82);
                v117 = 128;
              }
            }

            else
            {
              v117 = 0;
              *(v80 + 352) = 0u;
              *(v80 + 368) = 0u;
              *(v80 + 320) = 0u;
              *(v80 + 336) = 0u;
              *(v80 + 288) = 0u;
              *(v80 + 304) = 0u;
              *v115 = 0u;
              *(v80 + 272) = 0u;
              v118 = (v115->n128_u64 + v33);
              v118[6] = 0u;
              v118[7] = 0u;
              v118[4] = 0u;
              v118[5] = 0u;
              v118[2] = 0u;
              v118[3] = 0u;
              *v118 = 0u;
              v118[1] = 0u;
            }

            v121 = (v114 + v117);
            v122 = (v80 + 384);
            v123 = v79[5];
            if (v79[5])
            {
              if (v123 < 0xF0)
              {
                if (v123 == 7)
                {
                  v126 = vld1q_dup_f64(v121);
                  *(v80 + 384) = v126;
                  *(v80 + 400) = v126;
                  *(v80 + 416) = v126;
                  *(v80 + 432) = v126;
                  *(v80 + 448) = v126;
                  *(v80 + 464) = v126;
                  *(v80 + 480) = v126;
                  *(v80 + 496) = v126;
                  v127 = (v122 + v33);
                  *v127 = v126;
                  v127[1] = v126;
                  v127[2] = v126;
                  v127[3] = v126;
                  v127[4] = v126;
                  v127[5] = v126;
                  v124 = 8;
                  v127[6] = v126;
                  v127[7] = v126;
                }

                else
                {
                  v124 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v122, v33, v121, v123);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v122, v33, v121, v123, v82);
                v124 = 128;
              }
            }

            else
            {
              v124 = 0;
              *(v80 + 480) = 0u;
              *(v80 + 496) = 0u;
              *(v80 + 448) = 0u;
              *(v80 + 464) = 0u;
              *(v80 + 416) = 0u;
              *(v80 + 432) = 0u;
              *v122 = 0u;
              *(v80 + 400) = 0u;
              v125 = (v122->n128_u64 + v33);
              v125[6] = 0u;
              v125[7] = 0u;
              v125[4] = 0u;
              v125[5] = 0u;
              v125[2] = 0u;
              v125[3] = 0u;
              *v125 = 0u;
              v125[1] = 0u;
            }

            v128 = (v121 + v124);
            v129 = v101 + 16;
            v130 = v79[6];
            if (v79[6])
            {
              if (v130 < 0xF0)
              {
                if (v130 == 7)
                {
                  v133 = vld1q_dup_f64(v128);
                  v101[16] = v133;
                  v101[17] = v133;
                  v101[18] = v133;
                  v101[19] = v133;
                  v101[20] = v133;
                  v101[21] = v133;
                  v101[22] = v133;
                  v101[23] = v133;
                  v134 = (v129 + v33);
                  *v134 = v133;
                  v134[1] = v133;
                  v134[2] = v133;
                  v134[3] = v133;
                  v134[4] = v133;
                  v134[5] = v133;
                  v134[6] = v133;
                  v134[7] = v133;
                  v131 = 8;
                }

                else
                {
                  v131 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v129, v33, v121 + v124, v130);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v129, v33, v121 + v124, v130, v82);
                v131 = 128;
              }
            }

            else
            {
              v131 = 0;
              v101[22] = 0u;
              v101[23] = 0u;
              v101[20] = 0u;
              v101[21] = 0u;
              v101[18] = 0u;
              v101[19] = 0u;
              *v129 = 0u;
              v101[17] = 0u;
              v132 = (v129->n128_u64 + v33);
              v132[6] = 0u;
              v132[7] = 0u;
              v132[4] = 0u;
              v132[5] = 0u;
              v132[2] = 0u;
              v132[3] = 0u;
              *v132 = 0u;
              v132[1] = 0u;
            }

            v135 = v101 + 24;
            v136 = v79[7];
            if (v79[7])
            {
              v137 = (v128 + v131);
              if (v136 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v135, v33, v137, v136, v82);
                goto LABEL_146;
              }

              v44 = v208;
              if (v136 == 7)
              {
                v139 = vld1q_dup_f64(v137);
                v101[24] = v139;
                v101[25] = v139;
                v101[26] = v139;
                v101[27] = v139;
                v101[28] = v139;
                v101[29] = v139;
                v101[30] = v139;
                v101[31] = v139;
                v140 = (v135 + v33);
                *v140 = v139;
                v140[1] = v139;
                v140[2] = v139;
                v140[3] = v139;
                v140[4] = v139;
                v140[5] = v139;
                v140[6] = v139;
                v140[7] = v139;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v135, v33, v137, v136);
              }
            }

            else
            {
              v101[30] = 0u;
              v101[31] = 0u;
              v101[28] = 0u;
              v101[29] = 0u;
              v101[26] = 0u;
              v101[27] = 0u;
              *v135 = 0u;
              v101[25] = 0u;
              v138 = (v135->n128_u64 + v33);
              v138[6] = 0u;
              v138[7] = 0u;
              v138[4] = 0u;
              v138[5] = 0u;
              v138[2] = 0u;
              v138[3] = 0u;
              *v138 = 0u;
              v138[1] = 0u;
LABEL_146:
              v44 = v208;
            }

            result = v211;
LABEL_29:
            v45 = v42 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v78;
          v219 = v51;
          v220 = v209;
          v215 = v197;
          v216 = v48 - v46;
          block[6] = v79;
          v213 = v80;
          v33 = a11;
          v214 = a11;
          v217 = v196;
          v218 = v50;
          if (v52)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v211;
            v44 = v208;
            goto LABEL_29;
          }

          v85 = *(result + 208);
          v86 = *(v85 + 52);
          v87 = *v79;
          if (*v79)
          {
            if (v87 < 0xF0)
            {
              if (v87 == 7)
              {
                v92 = vld1q_dup_f64(v78);
                v222 = v92;
                v223 = v92;
                v224 = v92;
                v225 = v92;
                v226 = v92;
                v227 = v92;
                v228 = v92;
                v229 = v92;
                v254 = v92;
                v255 = v92;
                v256 = v92;
                v257 = v92;
                v258 = v92;
                v259 = v92;
                v88 = 8;
                v260 = v92;
                v261 = v92;
              }

              else
              {
                v88 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v222, 512, v78, v87);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v222, 512, v78, v87, *(v85 + 52));
              v88 = 128;
            }
          }

          else
          {
            v88 = 0;
            v229 = 0u;
            v228 = 0u;
            v227 = 0u;
            v226 = 0u;
            v225 = 0u;
            v224 = 0u;
            v223 = 0u;
            v222 = 0u;
            v254 = 0u;
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            v258 = 0u;
            v259 = 0u;
            v260 = 0u;
            v261 = 0u;
          }

          v141 = &v78[v88];
          v142 = v79[1];
          if (v79[1])
          {
            if (v142 < 0xF0)
            {
              if (v142 == 7)
              {
                v144 = vld1q_dup_f64(v141);
                v230 = v144;
                v231 = v144;
                v232 = v144;
                v233 = v144;
                v234 = v144;
                v235 = v144;
                v236 = v144;
                v237 = v144;
                v262 = v144;
                v263 = v144;
                v264 = v144;
                v265 = v144;
                v266 = v144;
                v267 = v144;
                v143 = 8;
                v268 = v144;
                v269 = v144;
              }

              else
              {
                v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v230, 512, v141, v142);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v230, 512, v141, v142, v86);
              v143 = 128;
            }
          }

          else
          {
            v143 = 0;
            v236 = 0u;
            v237 = 0u;
            v234 = 0u;
            v235 = 0u;
            v232 = 0u;
            v233 = 0u;
            v230 = 0u;
            v231 = 0u;
            v262 = 0u;
            v263 = 0u;
            v264 = 0u;
            v265 = 0u;
            v266 = 0u;
            v267 = 0u;
            v268 = 0u;
            v269 = 0u;
          }

          v145 = (v141 + v143);
          v146 = v79[2];
          if (v79[2])
          {
            if (v146 < 0xF0)
            {
              if (v146 == 7)
              {
                v148 = vld1q_dup_f64(v145);
                v286 = v148;
                v287 = v148;
                v288 = v148;
                v289 = v148;
                v290 = v148;
                v291 = v148;
                v292 = v148;
                v293 = v148;
                v318 = v148;
                v319 = v148;
                v320 = v148;
                v321 = v148;
                v322 = v148;
                v323 = v148;
                v324 = v148;
                v147 = 8;
                v325 = v148;
              }

              else
              {
                v147 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v286, 512, v145, v146);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v286, 512, v145, v146, v86);
              v147 = 128;
            }
          }

          else
          {
            v147 = 0;
            v292 = 0u;
            v293 = 0u;
            v290 = 0u;
            v291 = 0u;
            v288 = 0u;
            v289 = 0u;
            v286 = 0u;
            v287 = 0u;
            v318 = 0u;
            v319 = 0u;
            v320 = 0u;
            v321 = 0u;
            v322 = 0u;
            v323 = 0u;
            v324 = 0u;
            v325 = 0u;
          }

          v149 = (v145 + v147);
          v150 = v79[3];
          if (v79[3])
          {
            if (v150 < 0xF0)
            {
              if (v150 == 7)
              {
                v152 = vld1q_dup_f64(v149);
                v294 = v152;
                v295 = v152;
                v296 = v152;
                v297 = v152;
                v298 = v152;
                v299 = v152;
                v300 = v152;
                v301 = v152;
                v326 = v152;
                v327 = v152;
                v328 = v152;
                v329 = v152;
                v330 = v152;
                v331 = v152;
                v332 = v152;
                v151 = 8;
                v333 = v152;
              }

              else
              {
                v151 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v294, 512, v149, v150);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v294, 512, v149, v150, v86);
              v151 = 128;
            }
          }

          else
          {
            v151 = 0;
            v300 = 0u;
            v301 = 0u;
            v298 = 0u;
            v299 = 0u;
            v296 = 0u;
            v297 = 0u;
            v294 = 0u;
            v295 = 0u;
            v326 = 0u;
            v327 = 0u;
            v328 = 0u;
            v329 = 0u;
            v330 = 0u;
            v331 = 0u;
            v332 = 0u;
            v333 = 0u;
          }

          v153 = (v149 + v151);
          v154 = v79[4];
          if (v79[4])
          {
            if (v154 < 0xF0)
            {
              if (v154 == 7)
              {
                v156 = vld1q_dup_f64(v153);
                v238 = v156;
                v239 = v156;
                v240 = v156;
                v241 = v156;
                v242 = v156;
                v243 = v156;
                v244 = v156;
                v245 = v156;
                v270 = v156;
                v271 = v156;
                v272 = v156;
                v273 = v156;
                v274 = v156;
                v275 = v156;
                v155 = 8;
                v276 = v156;
                v277 = v156;
              }

              else
              {
                v155 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v238, 512, v153, v154);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v238, 512, v153, v154, v86);
              v155 = 128;
            }
          }

          else
          {
            v155 = 0;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v240 = 0u;
            v241 = 0u;
            v238 = 0u;
            v239 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
            v273 = 0u;
            v274 = 0u;
            v275 = 0u;
            v276 = 0u;
            v277 = 0u;
          }

          v157 = (v153 + v155);
          v158 = v79[5];
          if (v79[5])
          {
            if (v158 < 0xF0)
            {
              if (v158 == 7)
              {
                v160 = vld1q_dup_f64(v157);
                v246 = v160;
                v247 = v160;
                v248 = v160;
                v249 = v160;
                v250 = v160;
                v251 = v160;
                v252 = v160;
                v253 = v160;
                v278 = v160;
                v279 = v160;
                v280 = v160;
                v281 = v160;
                v282 = v160;
                v283 = v160;
                v159 = 8;
                v284 = v160;
                v285 = v160;
              }

              else
              {
                v159 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v246, 512, v157, v158);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v246, 512, v157, v158, v86);
              v159 = 128;
            }
          }

          else
          {
            v159 = 0;
            v252 = 0u;
            v253 = 0u;
            v250 = 0u;
            v251 = 0u;
            v248 = 0u;
            v249 = 0u;
            v246 = 0u;
            v247 = 0u;
            v278 = 0u;
            v279 = 0u;
            v280 = 0u;
            v281 = 0u;
            v282 = 0u;
            v283 = 0u;
            v284 = 0u;
            v285 = 0u;
          }

          v161 = (v157 + v159);
          v162 = v79[6];
          if (v79[6])
          {
            if (v162 < 0xF0)
            {
              if (v162 == 7)
              {
                v166 = vld1q_dup_f64(v161);
                v302 = v166;
                v303 = v166;
                v304 = v166;
                v305 = v166;
                v306 = v166;
                v307 = v166;
                v308 = v166;
                v309 = v166;
                v334 = v166;
                v335 = v166;
                v336 = v166;
                v337 = v166;
                v338 = v166;
                v339 = v166;
                v340 = v166;
                v163 = 8;
                v341 = v166;
                v164 = v79[7];
                if (!v79[7])
                {
                  goto LABEL_190;
                }
              }

              else
              {
                v163 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v302, 512, v161, v162);
                v164 = v79[7];
                if (!v79[7])
                {
LABEL_190:
                  v316 = 0u;
                  v317 = 0u;
                  v314 = 0u;
                  v315 = 0u;
                  v312 = 0u;
                  v313 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                  v342 = 0u;
                  v343 = 0u;
                  v344 = 0u;
                  v345 = 0u;
                  v346 = 0u;
                  v347 = 0u;
                  v348 = 0u;
                  v349 = 0u;
                  v44 = v208;
                  goto LABEL_202;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v302, 512, v161, v162, v86);
              v163 = 128;
              v164 = v79[7];
              if (!v79[7])
              {
                goto LABEL_190;
              }
            }
          }

          else
          {
            v163 = 0;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            v304 = 0u;
            v305 = 0u;
            v302 = 0u;
            v303 = 0u;
            v334 = 0u;
            v335 = 0u;
            v336 = 0u;
            v337 = 0u;
            v338 = 0u;
            v339 = 0u;
            v340 = 0u;
            v341 = 0u;
            v164 = v79[7];
            if (!v79[7])
            {
              goto LABEL_190;
            }
          }

          v165 = (v161 + v163);
          if (v164 < 0xF0)
          {
            v44 = v208;
            if (v164 == 7)
            {
              v167 = vld1q_dup_f64(v165);
              v310 = v167;
              v311 = v167;
              v312 = v167;
              v313 = v167;
              v314 = v167;
              v315 = v167;
              v316 = v167;
              v317 = v167;
              v342 = v167;
              v343 = v167;
              v344 = v167;
              v345 = v167;
              v346 = v167;
              v347 = v167;
              v348 = v167;
              v349 = v167;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v310, 512, v165, v164);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v310, 512, v165, v164, v86);
            v44 = v208;
          }

LABEL_202:
          result = v211;
          v45 = v42 + 1;
          v168 = v217;
          if (v217)
          {
            v169 = 0;
            v170 = &v222 + 32 * v215 + 4 * v216;
            v171 = v218;
            do
            {
              if (v171)
              {
                v172 = 0;
                v173 = v213 + v214 * v169;
                do
                {
                  *(v173 + v172) = v170->n128_u8[v172];
                  ++v172;
                  v171 = v218;
                }

                while (v218 << 6 > v172);
                v168 = v217;
              }

              ++v169;
              v170 += 32;
            }

            while (v169 < v168);
          }

LABEL_30:
          v28 = v42 == v200 >> 3;
          v42 = v45;
        }

        while (!v28);
        v28 = v24++ == v192;
      }

      while (!v28);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v287 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v241 = a8;
  v17 = a8 >> 2;
  v222 = a8 + a10 - 1;
  v224 = v222 >> 2;
  v18 = *(*(a1 + 208) + 88);
  v19 = *(a1 + 112);
  v244 = a1;
  if (*(a1 + 168))
  {
    v20 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v20 = 0;
  }

  v21 = (v20 & 0xD00) == 0 || v20 == 768;
  v22 = v20 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v236 = v24;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, *(a1 + 144) + a12);
  v235 = result;
  if (v17 <= v224)
  {
    v234 = a7 + a9 - 1;
    v221 = a7 >> 3;
    if (a7 >> 3 <= v234 >> 3)
    {
      result = a1;
      v26 = a11;
      v243 = (a5 - 1) >> 3;
      v218 = a5 - 1;
      v226 = (a5 - 1) & 7;
      v219 = (a6 - 1) & 3;
      v220 = (a6 - 1) >> 2;
      v225 = 2 * a11;
      v27 = vadd_s32(__PAIR64__(a5, a6), 0x700000003);
      *v28.i8 = vcgt_u32(v27, 0xF00000007);
      *v29.i8 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v27, 0xFFFFFFFDFFFFFFFELL), -1))))))), *v28.i8);
      v231 = v29.i64[0];
      v232 = v29.i32[0] | v29.i32[1];
      v230 = v28.i64[0];
      v217 = 8 * v19 * v18;
      v233 = a7;
      do
      {
        v30 = (4 * v17) | 3;
        if (4 * v17 <= v241)
        {
          v31 = v241;
        }

        else
        {
          v31 = 4 * v17;
        }

        if (v222 < v30)
        {
          v30 = v222;
        }

        v240 = 4 * v17;
        v229 = v31 - 4 * v17;
        v32 = v30 - v31;
        v33 = v32 + 1;
        v34 = v32 != v219;
        v228 = v33;
        v35 = v33 != 4;
        v36 = v221;
        v37 = v219 + 1;
        if (v17 != v220)
        {
          v37 = 4;
        }

        v242 = v37;
        if (v17 != v220)
        {
          v34 = v35;
        }

        v227 = v34;
        v239 = a2 + (v31 - v241) * v26;
        do
        {
          v39 = 8 * v36;
          v40 = 8 * (v36 + 1) - 1;
          if (8 * v36 <= a7)
          {
            v41 = a7;
          }

          else
          {
            v41 = 8 * v36;
          }

          if (v234 < v40)
          {
            v40 = v234;
          }

          v42 = v40 - v41;
          v43 = v42 + 1;
          if (v36 == v243)
          {
            v44 = v226 + 1;
          }

          else
          {
            v44 = 8;
          }

          v45 = 1;
          if (v240 >= v241 && v39 >= a7)
          {
            v46 = v42 != v226;
            if (v36 != v243)
            {
              v46 = v43 != 8;
            }

            v45 = v46 || v227;
          }

          if (v235)
          {
            v67 = 0;
            v68 = v217 >> (*(result + 57) != 0);
            v69 = 1;
            if (v68 <= 63)
            {
              if (v68 > 15)
              {
                if (v68 == 16)
                {
                  v69 = 0;
                  v70 = 64;
                  v67 = 128;
                }

                else
                {
                  v70 = 0;
                  if (v68 == 32)
                  {
                    v69 = 0;
                    v67 = 64;
                    v70 = 64;
                  }
                }
              }

              else if (v68 == 4)
              {
                v69 = 0;
                v70 = 128;
                v67 = 256;
              }

              else
              {
                v70 = 0;
                if (v68 == 8)
                {
                  v69 = 0;
                  v67 = 128;
                  v70 = 128;
                }
              }
            }

            else if (v68 <= 255)
            {
              if (v68 == 64)
              {
                v69 = 0;
                v70 = 32;
                v67 = 64;
              }

              else
              {
                v70 = 0;
                if (v68 == 128)
                {
                  v69 = 0;
                  v67 = 32;
                  v70 = 32;
                }
              }
            }

            else if (v68 == 256)
            {
              v69 = 0;
              v70 = 16;
              v67 = 32;
            }

            else if (v68 == 512)
            {
              v69 = 0;
              v67 = 16;
              v70 = 16;
            }

            else
            {
              v70 = 0;
              if (v68 == 1024)
              {
                v69 = 0;
                v70 = 8;
                v67 = 16;
              }
            }

            v205 = (v67 >> 3) - 1;
            v206 = (v70 >> 2) - 1;
            if ((v69 & 1) != 0 || (v207 = 32 - __clz(~(-1 << -__clz(v205))), v208 = 32 - __clz(~(-1 << -__clz(v206))), !(v208 | v207)))
            {
              v216 = 0;
            }

            else
            {
              v209 = 0;
              v210 = 0;
              v211 = v36 & v205;
              v212 = v17 & v206;
              v213 = v208 != 0;
              v214 = v207 != 0;
              v215 = 1;
              do
              {
                --v208;
                if (v213)
                {
                  v210 |= (v215 & v212) << v209++;
                }

                else
                {
                  v208 = 0;
                }

                --v207;
                if (v214)
                {
                  v210 |= (v215 & v211) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v215 *= 2;
                --v209;
                v214 = v207 != 0;
                v213 = v208 != 0;
              }

              while (v207 | v208);
              v216 = v210 << 8;
              result = v244;
            }

            v54 = v216 + ((v39 / v67 + v240 / v70 * ((v67 + v218) / v67)) << 14);
          }

          else if (v232)
          {
            v47 = 0;
            v48 = 0;
            v49 = 1;
            v51 = v230;
            v50 = BYTE4(v230);
            v52 = v231;
            v53 = HIDWORD(v231);
            do
            {
              --v52;
              if (v51)
              {
                v48 |= (v49 & v17) << v47++;
              }

              else
              {
                v52 = 0;
              }

              --v53;
              if (v50)
              {
                v48 |= (v49 & v36) << v47++;
              }

              else
              {
                v53 = 0;
              }

              v49 *= 2;
              --v47;
              v50 = v53 != 0;
              v51 = v52 != 0;
            }

            while (v53 | v52);
            v54 = v48 << 8;
          }

          else
          {
            v54 = 0;
          }

          v55 = *(result + 128) >> (*(result + 144) + a12);
          if (v55 <= 1)
          {
            v55 = 1;
          }

          v56 = v55 + 7;
          if (v56 < 0x10)
          {
            v57 = 0;
          }

          else
          {
            v57 = 32 - __clz(~(-1 << -__clz((v56 >> 3) - 1)));
          }

          v58 = *(result + 132) >> (*(result + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 3;
          if (v59 < 8)
          {
            v60 = 0;
            if (!v57)
            {
LABEL_81:
              v66 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 2) - 1)));
            if (!(v60 | v57))
            {
              goto LABEL_81;
            }
          }

          v61 = 0;
          v62 = 0;
          v63 = v57 != 0;
          v64 = v60 != 0;
          v65 = 1;
          do
          {
            --v57;
            if (v63)
            {
              v62 |= (v65 & v36) << v61++;
            }

            else
            {
              v57 = 0;
            }

            --v60;
            if (v64)
            {
              v62 |= (v65 & v17) << v61++;
            }

            else
            {
              v60 = 0;
            }

            v65 *= 2;
            --v61;
            v64 = v60 != 0;
            v63 = v57 != 0;
          }

          while (v60 | v57);
          v66 = 8 * v62;
LABEL_82:
          v71 = (a3 + v54);
          if (v236)
          {
            memcpy(__dst, v71, sizeof(__dst));
            result = v244;
            v71 = __dst;
          }

          v72 = (a4 + v66);
          v73 = (v239 + 16 * (v41 - a7));
          if (!(v45 & 1 | (v44 < 8u)) && v242 > 3)
          {
            v74 = *(result + 208);
            v75 = *(v74 + 52);
            v76 = *v72;
            if (*v72)
            {
              v26 = a11;
              if (v76 < 0xF0)
              {
                if (v76 == 63)
                {
                  v77 = *v71;
                  v28 = v71[1];
                  v86 = v71[2];
                  v87 = v71[3];
                  *v73 = *v71;
                  v73[1] = v28;
                  v88 = (v73 + a11);
                  *v88 = v86;
                  v88[1] = v87;
                  v78 = 64;
                }

                else if (v76 == 1)
                {
                  v77 = vld1q_dup_s16(v71->i16);
                  *v73 = v77;
                  v73[1] = v77;
                  v85 = (v73 + a11);
                  *v85 = v77;
                  v85[1] = v77;
                  v78 = 2;
                }

                else
                {
                  v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v73, a11, v71, v76, *v29.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v73, a11, v71, v76, *(v74 + 52));
                v78 = 32;
              }
            }

            else
            {
              v78 = 0;
              v77.i64[0] = 0;
              *v73 = 0u;
              v73[1] = 0u;
              v26 = a11;
              v84 = &v73->i8[a11];
              *v84 = 0u;
              *(v84 + 1) = 0u;
            }

            v89 = v71->i64 + v78;
            v90 = v73 + 2;
            v91 = v72[1];
            if (v72[1])
            {
              if (v91 < 0xF0)
              {
                if (v91 == 63)
                {
                  v92 = *v89;
                  v28 = *(v89 + 16);
                  v96 = *(v89 + 32);
                  v97 = *(v89 + 48);
                  v73[2] = *v89;
                  v73[3] = v28;
                  v98 = &v90->i8[v26];
                  *v98 = v96;
                  *(v98 + 1) = v97;
                  v93 = 64;
                }

                else if (v91 == 1)
                {
                  v92 = vld1q_dup_s16(v89);
                  v73[2] = v92;
                  v73[3] = v92;
                  v95 = &v90->i8[v26];
                  *v95 = v92;
                  v95[1] = v92;
                  v93 = 2;
                }

                else
                {
                  v93 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v90, v26, v89, v91, *v77.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v90, v26, v89, v91, v75);
                v93 = 32;
              }
            }

            else
            {
              v93 = 0;
              v92.i64[0] = 0;
              *v90 = 0u;
              v73[3] = 0u;
              v94 = &v90->i8[v26];
              *v94 = 0u;
              *(v94 + 1) = 0u;
            }

            v99 = v89 + v93;
            v100 = (v73 + v225);
            v101 = v72[2];
            if (v72[2])
            {
              if (v101 < 0xF0)
              {
                if (v101 == 63)
                {
                  v102 = *v99;
                  v28 = *(v99 + 16);
                  v106 = *(v99 + 32);
                  v107 = *(v99 + 48);
                  *v100 = *v99;
                  v100[1] = v28;
                  v108 = &v100->i8[v26];
                  *v108 = v106;
                  *(v108 + 1) = v107;
                  v103 = 64;
                }

                else if (v101 == 1)
                {
                  v102 = vld1q_dup_s16(v99);
                  *v100 = v102;
                  v100[1] = v102;
                  v105 = &v100->i8[v26];
                  *v105 = v102;
                  v105[1] = v102;
                  v103 = 2;
                }

                else
                {
                  v103 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock((v73 + v225), v26, v99, v101, *v92.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v73->i16[v225 / 2], v26, v99, v101, v75);
                v103 = 32;
              }
            }

            else
            {
              v103 = 0;
              v102.i64[0] = 0;
              *v100 = 0u;
              v100[1] = 0u;
              v104 = &v100->i8[v26];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v109 = v99 + v103;
            v110 = v100 + 2;
            v111 = v72[3];
            if (v72[3])
            {
              if (v111 < 0xF0)
              {
                if (v111 == 63)
                {
                  v112 = *v109;
                  v28 = *(v109 + 16);
                  v116 = *(v109 + 32);
                  v117 = *(v109 + 48);
                  v100[2] = *v109;
                  v100[3] = v28;
                  v118 = &v110->i8[v26];
                  *v118 = v116;
                  *(v118 + 1) = v117;
                  v113 = 64;
                }

                else if (v111 == 1)
                {
                  v112 = vld1q_dup_s16(v109);
                  v100[2] = v112;
                  v100[3] = v112;
                  v115 = &v110->i8[v26];
                  *v115 = v112;
                  v115[1] = v112;
                  v113 = 2;
                }

                else
                {
                  v113 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v110, v26, v109, v111, *v102.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v110, v26, v109, v111, v75);
                v113 = 32;
              }
            }

            else
            {
              v113 = 0;
              v112.i64[0] = 0;
              *v110 = 0u;
              v100[3] = 0u;
              v114 = &v110->i8[v26];
              *v114 = 0u;
              *(v114 + 1) = 0u;
            }

            v119 = v109 + v113;
            v120 = v73 + 4;
            v121 = v72[4];
            if (v72[4])
            {
              if (v121 < 0xF0)
              {
                if (v121 == 63)
                {
                  v122 = *v119;
                  v28 = *(v119 + 16);
                  v126 = *(v119 + 32);
                  v127 = *(v119 + 48);
                  v73[4] = *v119;
                  v73[5] = v28;
                  v128 = &v120->i8[v26];
                  *v128 = v126;
                  *(v128 + 1) = v127;
                  v123 = 64;
                }

                else if (v121 == 1)
                {
                  v122 = vld1q_dup_s16(v119);
                  v73[4] = v122;
                  v73[5] = v122;
                  v125 = &v120->i8[v26];
                  *v125 = v122;
                  v125[1] = v122;
                  v123 = 2;
                }

                else
                {
                  v123 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v120, v26, v119, v121, *v112.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v120, v26, v119, v121, v75);
                v123 = 32;
              }
            }

            else
            {
              v123 = 0;
              v122.i64[0] = 0;
              *v120 = 0u;
              v73[5] = 0u;
              v124 = &v120->i8[v26];
              *v124 = 0u;
              *(v124 + 1) = 0u;
            }

            v129 = v119 + v123;
            v130 = v73 + 6;
            v131 = v72[5];
            if (v72[5])
            {
              if (v131 < 0xF0)
              {
                if (v131 == 63)
                {
                  v132 = *v129;
                  v28 = *(v129 + 16);
                  v136 = *(v129 + 32);
                  v137 = *(v129 + 48);
                  v73[6] = *v129;
                  v73[7] = v28;
                  v138 = &v130->i8[v26];
                  *v138 = v136;
                  *(v138 + 1) = v137;
                  v133 = 64;
                }

                else if (v131 == 1)
                {
                  v132 = vld1q_dup_s16(v129);
                  v73[6] = v132;
                  v73[7] = v132;
                  v135 = &v130->i8[v26];
                  *v135 = v132;
                  v135[1] = v132;
                  v133 = 2;
                }

                else
                {
                  v133 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v130, v26, v129, v131, *v122.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v130, v26, v129, v131, v75);
                v133 = 32;
              }
            }

            else
            {
              v133 = 0;
              v132.i64[0] = 0;
              *v130 = 0u;
              v73[7] = 0u;
              v134 = &v130->i8[v26];
              *v134 = 0u;
              *(v134 + 1) = 0u;
            }

            v139 = v129 + v133;
            v140 = v100 + 4;
            v141 = v72[6];
            if (v72[6])
            {
              if (v141 < 0xF0)
              {
                if (v141 == 63)
                {
                  v142 = *v139;
                  v28 = *(v139 + 16);
                  v146 = *(v139 + 32);
                  v147 = *(v139 + 48);
                  v100[4] = *v139;
                  v100[5] = v28;
                  v148 = &v140->i8[v26];
                  *v148 = v146;
                  *(v148 + 1) = v147;
                  v143 = 64;
                }

                else if (v141 == 1)
                {
                  v142 = vld1q_dup_s16(v139);
                  v100[4] = v142;
                  v100[5] = v142;
                  v145 = &v140->i8[v26];
                  *v145 = v142;
                  v145[1] = v142;
                  v143 = 2;
                }

                else
                {
                  v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v140, v26, v129 + v133, v141, *v132.i8, *v28.i8);
                }
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v140, v26, v129 + v133, v141, v75);
                v143 = 32;
              }
            }

            else
            {
              v143 = 0;
              v142.i64[0] = 0;
              *v140 = 0u;
              v100[5] = 0u;
              v144 = &v140->i8[v26];
              *v144 = 0u;
              *(v144 + 1) = 0u;
            }

            v149 = v100 + 6;
            v150 = v72[7];
            if (v72[7])
            {
              v151 = v139 + v143;
              if (v150 >= 0xF0)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v149, v26, v151, v150, v75);
                goto LABEL_161;
              }

              a7 = v233;
              if (v150 == 63)
              {
                v29 = *v151;
                v28 = *(v151 + 16);
                v154 = *(v151 + 32);
                v155 = *(v151 + 48);
                v100[6] = *v151;
                v100[7] = v28;
                v156 = &v149->i8[v26];
                *v156 = v154;
                *(v156 + 1) = v155;
              }

              else if (v150 == 1)
              {
                v29 = vld1q_dup_s16(v151);
                v100[6] = v29;
                v100[7] = v29;
                v153 = (v149 + v26);
                *v153 = v29;
                v153[1] = v29;
              }

              else
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v149, v26, v151, v150, *v142.i8, *v28.i8);
              }
            }

            else
            {
              v29.i64[0] = 0;
              *v149 = 0u;
              v100[7] = 0u;
              v152 = &v149->i8[v26];
              *v152 = 0u;
              *(v152 + 1) = 0u;
LABEL_161:
              a7 = v233;
            }

            result = v244;
LABEL_29:
            v38 = v36 + 1;
            goto LABEL_30;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          block[5] = v71;
          v252 = v44;
          v253 = v242;
          v248 = v229;
          v249 = v41 - v39;
          block[6] = v72;
          v246 = v73;
          v26 = a11;
          v247 = a11;
          v250 = v228;
          v251 = v43;
          if (v45)
          {
            dispatch_sync(*(*(result + 8) + 16552), block);
            result = v244;
            a7 = v233;
            goto LABEL_29;
          }

          v79 = *(result + 208);
          v80 = *(v79 + 52);
          v81 = *v72;
          a7 = v233;
          if (*v72)
          {
            if (v81 < 0xF0)
            {
              if (v81 == 63)
              {
                v82 = *v71;
                v28 = v71[1];
                v157 = v71[2];
                v158 = v71[3];
                v255 = *v71;
                v256 = v28;
                v263 = v157;
                v264 = v158;
                v83 = 64;
              }

              else if (v81 == 1)
              {
                v82 = vld1q_dup_s16(v71->i16);
                v255 = v82;
                v256 = v82;
                v263 = v82;
                v264 = v82;
                v83 = 2;
              }

              else
              {
                v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v255, 128, v71, v81, *v29.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v255, 128, v71, v81, *(v79 + 52));
              v83 = 32;
            }
          }

          else
          {
            v83 = 0;
            v82.i64[0] = 0;
            v255 = 0u;
            v256 = 0u;
            v263 = 0u;
            v264 = 0u;
          }

          v159 = v71->i64 + v83;
          v160 = v72[1];
          if (v72[1])
          {
            if (v160 < 0xF0)
            {
              if (v160 == 63)
              {
                v161 = *v159;
                v28 = *(v159 + 16);
                v163 = *(v159 + 32);
                v164 = *(v159 + 48);
                v257 = *v159;
                v258 = v28;
                v265 = v163;
                v266 = v164;
                v162 = 64;
              }

              else if (v160 == 1)
              {
                v161 = vld1q_dup_s16(v159);
                v257 = v161;
                v258 = v161;
                v265 = v161;
                v266 = v161;
                v162 = 2;
              }

              else
              {
                v162 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v257, 128, v159, v160, *v82.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v257, 128, v159, v160, v80);
              v162 = 32;
            }
          }

          else
          {
            v162 = 0;
            v161.i64[0] = 0;
            v257 = 0u;
            v258 = 0u;
            v265 = 0u;
            v266 = 0u;
          }

          v165 = v159 + v162;
          v166 = v72[2];
          if (v72[2])
          {
            if (v166 < 0xF0)
            {
              if (v166 == 63)
              {
                v167 = *v165;
                v28 = *(v165 + 16);
                v169 = *(v165 + 32);
                v170 = *(v165 + 48);
                v271 = *v165;
                v272 = v28;
                v279 = v169;
                v280 = v170;
                v168 = 64;
              }

              else if (v166 == 1)
              {
                v167 = vld1q_dup_s16(v165);
                v271 = v167;
                v272 = v167;
                v279 = v167;
                v280 = v167;
                v168 = 2;
              }

              else
              {
                v168 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v271, 128, v165, v166, *v161.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v271, 128, v165, v166, v80);
              v168 = 32;
            }
          }

          else
          {
            v168 = 0;
            v167.i64[0] = 0;
            v271 = 0u;
            v272 = 0u;
            v279 = 0u;
            v280 = 0u;
          }

          v171 = v165 + v168;
          v172 = v72[3];
          if (v72[3])
          {
            if (v172 < 0xF0)
            {
              if (v172 == 63)
              {
                v173 = *v171;
                v28 = *(v171 + 16);
                v175 = *(v171 + 32);
                v176 = *(v171 + 48);
                v273 = *v171;
                v274 = v28;
                v281 = v175;
                v282 = v176;
                v174 = 64;
              }

              else if (v172 == 1)
              {
                v173 = vld1q_dup_s16(v171);
                v273 = v173;
                v274 = v173;
                v281 = v173;
                v282 = v173;
                v174 = 2;
              }

              else
              {
                v174 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v273, 128, v171, v172, *v167.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v273, 128, v171, v172, v80);
              v174 = 32;
            }
          }

          else
          {
            v174 = 0;
            v173.i64[0] = 0;
            v273 = 0u;
            v274 = 0u;
            v281 = 0u;
            v282 = 0u;
          }

          v177 = v171 + v174;
          v178 = v72[4];
          if (v72[4])
          {
            if (v178 < 0xF0)
            {
              if (v178 == 63)
              {
                v179 = *v177;
                v28 = *(v177 + 16);
                v181 = *(v177 + 32);
                v182 = *(v177 + 48);
                v259 = *v177;
                v260 = v28;
                v267 = v181;
                v268 = v182;
                v180 = 64;
              }

              else if (v178 == 1)
              {
                v179 = vld1q_dup_s16(v177);
                v259 = v179;
                v260 = v179;
                v267 = v179;
                v268 = v179;
                v180 = 2;
              }

              else
              {
                v180 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v259, 128, v177, v178, *v173.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v259, 128, v177, v178, v80);
              v180 = 32;
            }
          }

          else
          {
            v180 = 0;
            v179.i64[0] = 0;
            v259 = 0u;
            v260 = 0u;
            v267 = 0u;
            v268 = 0u;
          }

          v183 = v177 + v180;
          v184 = v72[5];
          if (v72[5])
          {
            if (v184 < 0xF0)
            {
              if (v184 == 63)
              {
                v185 = *v183;
                v28 = *(v183 + 16);
                v187 = *(v183 + 32);
                v188 = *(v183 + 48);
                v261 = *v183;
                v262 = v28;
                v269 = v187;
                v270 = v188;
                v186 = 64;
              }

              else if (v184 == 1)
              {
                v185 = vld1q_dup_s16(v183);
                v261 = v185;
                v262 = v185;
                v269 = v185;
                v270 = v185;
                v186 = 2;
              }

              else
              {
                v186 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v261, 128, v183, v184, *v179.i8, *v28.i8);
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v261, 128, v183, v184, v80);
              v186 = 32;
            }
          }

          else
          {
            v186 = 0;
            v185.i64[0] = 0;
            v261 = 0u;
            v262 = 0u;
            v269 = 0u;
            v270 = 0u;
          }

          v189 = v183 + v186;
          v190 = v72[6];
          if (v72[6])
          {
            if (v190 < 0xF0)
            {
              if (v190 == 63)
              {
                v191 = *v189;
                v28 = *(v189 + 16);
                v195 = *(v189 + 32);
                v196 = *(v189 + 48);
                v275 = *v189;
                v276 = v28;
                v283 = v195;
                v284 = v196;
                v192 = 64;
                v193 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else if (v190 == 1)
              {
                v191 = vld1q_dup_s16(v189);
                v275 = v191;
                v276 = v191;
                v283 = v191;
                v284 = v191;
                v192 = 2;
                v193 = v72[7];
                if (!v72[7])
                {
                  goto LABEL_218;
                }
              }

              else
              {
                v192 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v275, 128, v189, v190, *v185.i8, *v28.i8);
                v193 = v72[7];
                if (!v72[7])
                {
LABEL_218:
                  v29.i64[0] = 0;
                  v277 = 0u;
                  v278 = 0u;
                  v285 = 0u;
                  v286 = 0u;
                  goto LABEL_235;
                }
              }
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v275, 128, v189, v190, v80);
              v192 = 32;
              v193 = v72[7];
              if (!v72[7])
              {
                goto LABEL_218;
              }
            }
          }

          else
          {
            v192 = 0;
            v191.i64[0] = 0;
            v275 = 0u;
            v276 = 0u;
            v283 = 0u;
            v284 = 0u;
            v193 = v72[7];
            if (!v72[7])
            {
              goto LABEL_218;
            }
          }

          v194 = v189 + v192;
          if (v193 < 0xF0)
          {
            if (v193 == 63)
            {
              v29 = *v194;
              v28 = *(v194 + 16);
              v197 = *(v194 + 32);
              v198 = *(v194 + 48);
              v277 = *v194;
              v278 = v28;
              v285 = v197;
              v286 = v198;
            }

            else if (v193 == 1)
            {
              v29 = vld1q_dup_s16(v194);
              v277 = v29;
              v278 = v29;
              v285 = v29;
              v286 = v29;
            }

            else
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(&v277, 128, v194, v193, *v191.i8, *v28.i8);
            }
          }

          else
          {
            AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(&v277, 128, v194, v193, v80);
          }

LABEL_235:
          result = v244;
          v38 = v36 + 1;
          v199 = v250;
          if (v250)
          {
            v200 = 0;
            v201 = &v255 + 8 * v248 + v249;
            v202 = v251;
            do
            {
              if (v202)
              {
                v203 = 0;
                v204 = v246->i64 + v247 * v200;
                do
                {
                  *(v204 + v203) = v201->i8[v203];
                  ++v203;
                  v202 = v251;
                }

                while (16 * v251 > v203);
                v199 = v250;
              }

              ++v200;
              v201 += 8;
            }

            while (v200 < v199);
          }

LABEL_30:
          v21 = v36 == v234 >> 3;
          v36 = v38;
        }

        while (!v21);
        v21 = v17++ == v224;
      }

      while (!v21);
    }
  }

  return result;
}