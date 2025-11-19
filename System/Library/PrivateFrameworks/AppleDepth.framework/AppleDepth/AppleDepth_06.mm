void sub_2403E95C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__CVBuffer *PixelBufferUtils::errorsPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3, int a4)
{
  v5 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(this);
  if (Width != CVPixelBufferGetWidth(a2))
  {
    return 0;
  }

  Height = CVPixelBufferGetHeight(this);
  if (Height != CVPixelBufferGetHeight(a2))
  {
    return 0;
  }

  v11 = CVPixelBufferGetPixelFormatType(this);
  v12 = CVPixelBufferGetWidth(this);
  v13 = CVPixelBufferGetHeight(this);
  pixelBufferOut.data = 0;
  v14 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v14, v12, v13, v11, BufferAttributes, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  CVPixelBufferLockBaseAddress(data, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v17 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  memset(&v257, 0, sizeof(v257));
  PixelBufferUtils::asVImageBuffer(a2, *v17, &v257);
  memset(&v256, 0, sizeof(v256));
  v209 = data;
  PixelBufferUtils::asVImageBuffer(data, *v17, &v256);
  pixelBuffer = this;
  v208 = a2;
  if (v11 > 1278226535)
  {
    if (v11 <= 1717855599)
    {
      if (v11 <= 1380410944)
      {
        if (v11 != 1278226536)
        {
          v20 = 1380401729;
          goto LABEL_17;
        }

        goto LABEL_36;
      }

      if (v11 == 1380410945)
      {
        calcDiffsRaw<float>(&pixelBufferOut, v257.data, v257.rowBytes, v256.data, v256.rowBytes, v5, a4);
        goto LABEL_110;
      }

      v27 = 1647392359;
      goto LABEL_35;
    }

    if (v11 > 1751410031)
    {
      if (v11 == 1751410032)
      {
        goto LABEL_36;
      }

      v27 = 1751411059;
LABEL_35:
      if (v11 == v27)
      {
LABEL_36:
        v28 = pixelBufferOut.height;
        if (!pixelBufferOut.height)
        {
          goto LABEL_110;
        }

        v29 = pixelBufferOut.width;
        if (!pixelBufferOut.width)
        {
          goto LABEL_110;
        }

        rowBytes = v257.rowBytes;
        v31 = pixelBufferOut.data;
        v32 = pixelBufferOut.rowBytes;
        v34 = v256.rowBytes;
        v33 = v257.data;
        v35 = a4;
        v36 = v256.data;
        v199 = v256.data + 2 * pixelBufferOut.width;
        v195 = v257.data + 2 * pixelBufferOut.width;
        v197 = pixelBufferOut.data + 2 * pixelBufferOut.width;
        if (LODWORD(pixelBufferOut.width))
        {
          _ZF = (pixelBufferOut.width - 1) >> 32 == 0;
        }

        else
        {
          _ZF = 0;
        }

        v38 = !_ZF;
        v203 = v38;
        v201 = pixelBufferOut.width & 0x1FFFFFFF8;
        v193 = pixelBufferOut.height;
        v194 = 2 * (pixelBufferOut.width & 0x1FFFFFFF8);
        v192 = pixelBufferOut.data;
        v205 = pixelBufferOut.rowBytes;
        v217 = v257.rowBytes;
        v220 = v257.data;
        v213 = v256.rowBytes;
        v215 = v256.data;
        if (v5)
        {
          v39 = 0;
          v222 = vdupq_n_s64(0x3BC79CA10C924223uLL);
          v40 = pixelBufferOut.data;
          v41 = v257.data;
          v42 = v256.data;
          while (1)
          {
            v43 = &v36[v34 * v39];
            v44 = &v31[v32 * v39];
            v45 = rowBytes * v39;
            v46 = &v33[v45];
            v210 = v41;
            if (v29 < 8 || (v203 & 1) != 0)
            {
              v47 = 0;
            }

            else
            {
              v47 = 0;
              v60 = &v199[v34 * v39];
              v62 = v43 < &v195[v45] && v46 < v60;
              v63 = v44 >= v60 || v43 >= &v197[v32 * v39];
              if (v63 && !v62)
              {
                v46 += v194;
                v191 = v40;
                v64 = v40;
                v65 = v41;
                v66 = v42;
                v67 = v29 & 0x1FFFFFFF8;
                do
                {
                  v68 = *v64++;
                  v69 = vcvtq_f32_f16(*v68.i8);
                  v70 = vcvt_hight_f32_f16(v68);
                  v71 = *v65++;
                  v72 = vcvtq_f32_f16(*v71.i8);
                  v73 = vcvt_hight_f32_f16(v71);
                  v74 = vdivq_f32(vsubq_f32(v72, v69), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v72.f32), v222)), vaddq_f64(vcvt_hight_f64_f32(v72), v222)));
                  v75 = vdivq_f32(vsubq_f32(v73, v70), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v73.f32), v222)), vaddq_f64(vcvt_hight_f64_f32(v73), v222)));
                  v250 = vcvt_hight_f64_f32(v75);
                  __x = vcvt_hight_f64_f32(v74);
                  v246 = vcvtq_f64_f32(*v75.f32);
                  v234 = vcvtq_f64_f32(*v74.f32);
                  v238 = pow(v234.f64[0], v35);
                  v234.f64[0] = pow(v234.f64[1], v35);
                  v231 = pow(__x.f64[0], v35);
                  v228 = pow(__x.f64[1], v35);
                  __x.f64[0] = pow(v246.f64[0], v35);
                  v246.f64[0] = pow(v246.f64[1], v35);
                  v225 = pow(v250.f64[0], v35);
                  v76 = pow(v250.f64[1], v35);
                  v77.f64[0] = v231;
                  v77.f64[1] = v228;
                  v78.f64[0] = v238;
                  v78.f64[1] = v234.f64[0];
                  v79.f64[0] = v225;
                  v79.f64[1] = v76;
                  v80.f64[0] = __x.f64[0];
                  v80.f64[1] = v246.f64[0];
                  *v66++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v78), v77)), vcvt_hight_f32_f64(vcvt_f32_f64(v80), v79)));
                  v67 -= 8;
                }

                while (v67);
                v31 = v192;
                v28 = v193;
                v40 = v191;
                if (v29 == v201)
                {
                  goto LABEL_51;
                }

                v44 += v194;
                v43 = (v43 + v194);
                v47 = v29 & 0xFFFFFFF8;
              }
            }

            v48 = v47 + 1;
            do
            {
              v49 = *v44;
              v44 += 2;
              _H0 = v49;
              __asm { FCVT            S0, H0 }

              v54 = *v46;
              v46 += 2;
              _H1 = v54;
              __asm
              {
                FCVT            S2, H1
                FCVT            D1, H1
              }

              *&_D1 = _D1 + 1.0e-20;
              _S0 = pow(((_S2 - _S0) / *&_D1), v35);
              __asm { FCVT            H0, S0 }

              *v43++ = fabsl(*&_S0);
              v59 = v29 > v48++;
            }

            while (v59);
LABEL_51:
            ++v39;
            v34 = v213;
            v42 = (v42 + v213);
            rowBytes = v217;
            v33 = v220;
            v41 = (v210 + v217);
            v32 = v205;
            v40 = (v40 + v205);
            v36 = v215;
            if (v28 <= v39)
            {
              goto LABEL_110;
            }
          }
        }

        v156 = 0;
        v157 = pixelBufferOut.data;
        v158 = v257.data;
        v159 = v256.data;
        while (1)
        {
          v160 = &v36[v34 * v156];
          v161 = &v31[v32 * v156];
          v162 = rowBytes * v156;
          v163 = &v33[v162];
          v224 = v157;
          v212 = v158;
          if (v29 < 8 || (v203 & 1) != 0)
          {
            v164 = 0;
          }

          else
          {
            v164 = 0;
            v173 = &v199[v34 * v156];
            v175 = v160 < &v195[v162] && v163 < v173;
            v176 = v161 >= v173 || v160 >= &v197[v32 * v156];
            if (v176 && !v175)
            {
              v163 += v194;
              v177 = v158;
              v178 = v159;
              v179 = v29 & 0x1FFFFFFF8;
              do
              {
                v180 = *v157++;
                v181 = vcvt_hight_f32_f16(v180);
                v182 = vcvtq_f32_f16(*v180.i8);
                v183 = *v177++;
                v184 = vsubq_f32(vcvtq_f32_f16(*v183.i8), v182);
                v185 = vsubq_f32(vcvt_hight_f32_f16(v183), v181);
                v253 = vcvt_hight_f64_f32(v185);
                __xc = vcvt_hight_f64_f32(v184);
                v249 = vcvtq_f64_f32(*v185.f32);
                v237 = vcvtq_f64_f32(*v184.f32);
                v241 = pow(v237.f64[0], v35);
                v237.f64[0] = pow(v237.f64[1], v35);
                v233 = pow(__xc.f64[0], v35);
                v230 = pow(__xc.f64[1], v35);
                __xc.f64[0] = pow(v249.f64[0], v35);
                v249.f64[0] = pow(v249.f64[1], v35);
                v227 = pow(v253.f64[0], v35);
                v186 = pow(v253.f64[1], v35);
                v187.f64[0] = v233;
                v187.f64[1] = v230;
                v188.f64[0] = v241;
                v188.f64[1] = v237.f64[0];
                v189.f64[0] = v227;
                v189.f64[1] = v186;
                v190.f64[0] = __xc.f64[0];
                v190.f64[1] = v249.f64[0];
                *v178++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v188), v187)), vcvt_hight_f32_f64(vcvt_f32_f64(v190), v189)));
                v179 -= 8;
              }

              while (v179);
              v31 = v192;
              v28 = v193;
              v32 = v205;
              if (v29 == v201)
              {
                goto LABEL_141;
              }

              v161 += v194;
              v160 = (v160 + v194);
              v164 = v29 & 0xFFFFFFF8;
            }
          }

          v165 = v164 + 1;
          do
          {
            v166 = *v161;
            v161 += 2;
            _H0 = v166;
            __asm { FCVT            S0, H0 }

            v169 = *v163;
            v163 += 2;
            _H1 = v169;
            __asm { FCVT            S1, H1 }

            _S0 = pow((_S1 - _S0), v35);
            __asm { FCVT            H0, S0 }

            *v160++ = fabsl(*&_S0);
            v59 = v29 > v165++;
          }

          while (v59);
LABEL_141:
          ++v156;
          v34 = v213;
          v159 = (v159 + v213);
          rowBytes = v217;
          v33 = v220;
          v158 = (v212 + v217);
          v157 = (v224 + v32);
          v36 = v215;
          if (v28 <= v156)
          {
            goto LABEL_110;
          }
        }
      }

LABEL_105:
      PixelBufferUtils::pixelFormatAsString(v11, v254);
      if (v255 >= 0)
      {
        v124 = v254;
      }

      else
      {
        v124 = v254[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "errorsPixelBuffer", 2556, v11, v124);
      if (v255 < 0)
      {
        operator delete(v254[0]);
      }

      goto LABEL_110;
    }

    if (v11 == 1717855600)
    {
      goto LABEL_70;
    }

    v22 = 1717856627;
    goto LABEL_29;
  }

  if (v11 <= 875704437)
  {
    if (v11 == 32)
    {
LABEL_26:
      calcDiffsRaw<unsigned char>(&pixelBufferOut, &v257, &v256, v5, a4, 4, v18, v19);
      goto LABEL_110;
    }

    if (v11 == 843264104)
    {
      calcDiffsRaw<half>(&pixelBufferOut, v257.data, v257.rowBytes, v256.data, v256.rowBytes, v5, a4);
      goto LABEL_110;
    }

    if (v11 != 875704422)
    {
      goto LABEL_105;
    }
  }

  else
  {
    if (v11 > 1278226487)
    {
      if (v11 == 1278226488)
      {
        calcDiffsRaw<unsigned char>(&pixelBufferOut, &v257, &v256, v5, a4, 1, v18, v19);
LABEL_70:
        v81 = pixelBufferOut.height;
        if (!pixelBufferOut.height)
        {
          goto LABEL_110;
        }

        v82 = pixelBufferOut.width;
        if (!pixelBufferOut.width)
        {
          goto LABEL_110;
        }

        v83 = v257.rowBytes;
        v84 = pixelBufferOut.data;
        v85 = pixelBufferOut.rowBytes;
        v87 = v256.rowBytes;
        v86 = v257.data;
        v88 = a4;
        v89 = v256.data;
        v211 = v256.data + 4 * pixelBufferOut.width;
        v204 = v257.data + 4 * pixelBufferOut.width;
        v206 = pixelBufferOut.data + 4 * pixelBufferOut.width;
        if (LODWORD(pixelBufferOut.width))
        {
          v90 = (pixelBufferOut.width - 1) >> 32 == 0;
        }

        else
        {
          v90 = 0;
        }

        v91 = !v90;
        v216 = v91;
        v214 = pixelBufferOut.width & 0x1FFFFFFFCLL;
        v200 = pixelBufferOut.height;
        v202 = 4 * (pixelBufferOut.width & 0x1FFFFFFFCLL);
        v198 = pixelBufferOut.data;
        v232 = pixelBufferOut.rowBytes;
        v229 = v257.data;
        v226 = v257.rowBytes;
        v221 = v256.rowBytes;
        v223 = v256.data;
        if (v5)
        {
          v92 = 0;
          v235 = vdupq_n_s64(0x3BC79CA10C924223uLL);
          v93 = pixelBufferOut.data;
          v94 = v257.data;
          v95 = v256.data;
          while (1)
          {
            v96 = &v89[v87 * v92];
            v97 = v85 * v92;
            v98 = &v84[v97];
            v99 = v83 * v92;
            v100 = &v86[v99];
            v218 = v94;
            if (v82 < 4 || (v216 & 1) != 0)
            {
              v101 = 0;
            }

            else
            {
              v101 = 0;
              v108 = &v211[v87 * v92];
              v109 = &v206[v97];
              v111 = v96 < &v204[v99] && v100 < v108;
              v112 = v98 >= v108 || v96 >= v109;
              if (v112 && !v111)
              {
                v100 = (v100 + v202);
                v196 = v93;
                v113 = v93;
                v114 = v94;
                v115 = v95;
                v116 = v82 & 0x1FFFFFFFCLL;
                do
                {
                  v117 = *v113++;
                  v118 = v117;
                  v119 = *v114++;
                  v120 = vdivq_f32(vsubq_f32(v119, v118), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v119.f32), v235)), vaddq_f64(vcvt_hight_f64_f32(v119), v235)));
                  v251 = vcvt_hight_f64_f32(v120);
                  __xa = vcvtq_f64_f32(*v120.f32);
                  v247 = pow(__xa.f64[0], v88);
                  __xa.f64[0] = pow(__xa.f64[1], v88);
                  v239 = pow(v251.f64[0], v88);
                  v121 = pow(v251.f64[1], v88);
                  v122.f64[0] = v239;
                  v122.f64[1] = v121;
                  v123.f64[0] = v247;
                  v123.f64[1] = __xa.f64[0];
                  *v115++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v123), v122));
                  v116 -= 4;
                }

                while (v116);
                v84 = v198;
                v81 = v200;
                v93 = v196;
                if (v82 == v214)
                {
                  goto LABEL_85;
                }

                v98 = (v98 + v202);
                v96 = (v96 + v202);
                v101 = v82 & 0xFFFFFFFC;
              }
            }

            v102 = v101 + 1;
            do
            {
              v103 = *v98++;
              v104 = v103;
              v105 = *v100++;
              v106 = v105 + 1.0e-20;
              v107 = pow(((v105 - v104) / v106), v88);
              *v96++ = fabsf(v107);
              v59 = v82 > v102++;
            }

            while (v59);
LABEL_85:
            ++v92;
            v87 = v221;
            v95 = (v95 + v221);
            v83 = v226;
            v94 = (v218 + v226);
            v85 = v232;
            v93 = (v93 + v232);
            v86 = v229;
            v89 = v223;
            if (v81 <= v92)
            {
              goto LABEL_110;
            }
          }
        }

        v125 = 0;
        v126 = pixelBufferOut.data;
        v127 = v257.data;
        v128 = v256.data;
        while (1)
        {
          v129 = &v89[v87 * v125];
          v130 = v85 * v125;
          v131 = &v84[v130];
          v132 = v83 * v125;
          v133 = &v86[v132];
          v236 = v127;
          if (v82 < 4 || (v216 & 1) != 0)
          {
            v134 = 0;
          }

          else
          {
            v134 = 0;
            v140 = &v211[v87 * v125];
            v141 = &v206[v130];
            v143 = v129 < &v204[v132] && v133 < v140;
            v144 = v131 >= v140 || v129 >= v141;
            if (v144 && !v143)
            {
              v133 = (v133 + v202);
              v219 = v126;
              v145 = v126;
              v146 = v127;
              v147 = v128;
              v148 = v82 & 0x1FFFFFFFCLL;
              do
              {
                v149 = *v145++;
                v150 = v149;
                v151 = *v146++;
                v152 = vsubq_f32(v151, v150);
                v252 = vcvt_hight_f64_f32(v152);
                __xb = vcvtq_f64_f32(*v152.f32);
                v248 = pow(__xb.f64[0], v88);
                __xb.f64[0] = pow(__xb.f64[1], v88);
                v240 = pow(v252.f64[0], v88);
                v153 = pow(v252.f64[1], v88);
                v154.f64[0] = v240;
                v154.f64[1] = v153;
                v155.f64[0] = v248;
                v155.f64[1] = __xb.f64[0];
                *v147++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v155), v154));
                v148 -= 4;
              }

              while (v148);
              v84 = v198;
              v81 = v200;
              v126 = v219;
              if (v82 == v214)
              {
                goto LABEL_117;
              }

              v131 = (v131 + v202);
              v129 = (v129 + v202);
              v134 = v82 & 0xFFFFFFFC;
            }
          }

          v135 = v134 + 1;
          do
          {
            v136 = *v131++;
            v137 = v136;
            v138 = *v133++;
            v139 = pow((v138 - v137), v88);
            *v129++ = fabsf(v139);
            v59 = v82 > v135++;
          }

          while (v59);
LABEL_117:
          ++v125;
          v87 = v221;
          v89 = v223;
          v128 = (v128 + v221);
          v83 = v226;
          v127 = (v236 + v226);
          v85 = v232;
          v126 = (v126 + v232);
          v86 = v229;
          if (v81 <= v125)
          {
            goto LABEL_110;
          }
        }
      }

      v22 = 1278226534;
LABEL_29:
      if (v11 != v22)
      {
        goto LABEL_105;
      }

      goto LABEL_70;
    }

    if (v11 != 875704438)
    {
      v20 = 1111970369;
LABEL_17:
      if (v11 != v20)
      {
        goto LABEL_105;
      }

      goto LABEL_26;
    }
  }

  PixelBufferUtils::asVImageBuffer(this, 0, *v17, &pixelBufferOut);
  PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &v257);
  calcDiffsRaw<unsigned char>(&pixelBufferOut, &v257, &v256, v5, a4, 1, v23, v24);
  PixelBufferUtils::asVImageBuffer(this, 1, *v17, &pixelBufferOut);
  PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &v257);
  calcDiffsRaw<unsigned char>(&pixelBufferOut, &v257, &v256, v5, a4, 2, v25, v26);
LABEL_110:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v208, 1uLL);
  CVPixelBufferUnlockBaseAddress(v209, 0);
  return v209;
}

void sub_2403EA3B8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 209) < 0)
  {
    operator delete(*(v1 - 232));
  }

  _Unwind_Resume(exception_object);
}

void calcDiffsRaw<unsigned char>(void *a1, void *a2, void *a3, char a4, int a5, uint64_t a6, float a7, float a8)
{
  v8 = a1[1];
  if (v8)
  {
    v13 = a5;
    v14 = a1[2];
    LODWORD(v15) = 0;
    if (a4)
    {
      do
      {
        v16 = v15;
        if (v14 * a6)
        {
          v17 = 0;
          v18 = *a1 + a1[3] * v15;
          v19 = *a2 + a2[3] * v15;
          v20 = *a3 + a3[3] * v15;
          do
          {
            LOBYTE(a7) = *(v18 + v17);
            v21 = *(v19 + v17);
            v22 = v21 + 1.0e-20;
            v23 = pow(((v21 - LODWORD(a7)) / v22), v13);
            a7 = fabsf(v23);
            *(v20 + v17++) = a7;
            v14 = a1[2];
          }

          while (v14 * a6 > v17);
          v8 = a1[1];
        }

        v15 = (v16 + 1);
      }

      while (v8 > v15);
    }

    else
    {
      do
      {
        v24 = v15;
        if (v14 * a6)
        {
          v25 = 0;
          v26 = *a1 + a1[3] * v15;
          v27 = *a2 + a2[3] * v15;
          v28 = *a3 + a3[3] * v15;
          do
          {
            LOBYTE(a7) = *(v26 + v25);
            LOBYTE(a8) = *(v27 + v25);
            v29 = pow((LODWORD(a8) - LODWORD(a7)), v13);
            a7 = fabsf(v29);
            *(v28 + v25++) = a7;
            v14 = a1[2];
          }

          while (v14 * a6 > v25);
          v8 = a1[1];
        }

        v15 = (v24 + 1);
      }

      while (v8 > v15);
    }
  }
}

void calcDiffsRaw<half>(float16x8_t **a1, float16x8_t *a2, uint64_t a3, float16x8_t *a4, uint64_t a5, char a6, int a7)
{
  v137 = a1[1];
  if (!v137)
  {
    return;
  }

  v7 = a1[2];
  v8 = 2 * v7;
  if (!(2 * v7))
  {
    return;
  }

  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = *a1;
  v14 = a1[3];
  v15 = a7;
  v129 = v14;
  if (a6)
  {
    v16 = 0;
    v17 = 4 * v7;
    v121 = a4->i64 + v17;
    v118 = a2->i64 + v17;
    v119 = v13->i64 + v17;
    if (v8)
    {
      _ZF = (v8 - 1) >> 32 == 0;
    }

    else
    {
      _ZF = 0;
    }

    v19 = !_ZF;
    v127 = v19;
    v117 = 2 * (v8 & 0x1FFFFFFF8);
    v138 = vdupq_n_s64(0x3BC79CA10C924223uLL);
    v20 = *a1;
    v21 = a2;
    v22 = a4;
    while (1)
    {
      v23 = (v10->i16 + v16 * v9);
      v24 = v14 * v16;
      v25 = (v13->i16 + v14 * v16);
      v26 = v16 * v11;
      v27 = (v12->i16 + v16 * v11);
      v133 = v20;
      v135 = v16;
      v130 = v22;
      v132 = v21;
      if (v8 < 8 || (v127 & 1) != 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v41 = v121 + v16 * v9;
        v42 = v119 + v24;
        v44 = v23 < v118 + v26 && v27 < v41;
        v45 = v25 >= v41 || v23 >= v42;
        if (v45 && !v44)
        {
          v27 = (v27 + v117);
          v46 = v20;
          v47 = v21;
          v48 = v22;
          v49 = v8 & 0x1FFFFFFF8;
          do
          {
            v50 = *v46++;
            v51 = vcvtq_f32_f16(*v50.i8);
            v52 = vcvt_hight_f32_f16(v50);
            v53 = *v47++;
            v54 = vcvtq_f32_f16(*v53.i8);
            v55 = vcvt_hight_f32_f16(v53);
            v56 = vdivq_f32(vsubq_f32(v54, v51), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v54.f32), v138)), vaddq_f64(vcvt_hight_f64_f32(v54), v138)));
            v57 = vdivq_f32(vsubq_f32(v55, v52), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v55.f32), v138)), vaddq_f64(vcvt_hight_f64_f32(v55), v138)));
            v152 = vcvtq_f64_f32(*v57.f32);
            v154 = vcvt_hight_f64_f32(v57);
            v150 = vcvt_hight_f64_f32(v56);
            v146 = vcvtq_f64_f32(*v56.f32);
            v148 = pow(v146.f64[0], v15);
            v146.f64[0] = pow(v146.f64[1], v15);
            v144 = pow(v150.f64[0], v15);
            v142 = pow(v150.f64[1], v15);
            v150.f64[0] = pow(v152.f64[0], v15);
            v152.f64[0] = pow(v152.f64[1], v15);
            v140 = pow(v154.f64[0], v15);
            v58 = pow(v154.f64[1], v15);
            v59.f64[0] = v144;
            v59.f64[1] = v142;
            v60.f64[0] = v148;
            v60.f64[1] = v146.f64[0];
            v61.f64[0] = v140;
            v61.f64[1] = v58;
            v62.f64[0] = v150.f64[0];
            v62.f64[1] = v152.f64[0];
            *v48++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v60), v59)), vcvt_hight_f32_f64(vcvt_f32_f64(v62), v61)));
            v49 -= 8;
          }

          while (v49);
          v9 = a5;
          v10 = a4;
          v11 = a3;
          if (v8 == (v8 & 0x1FFFFFFF8))
          {
            goto LABEL_16;
          }

          v25 = (v25 + v117);
          v23 = (v23 + v117);
          v28 = v8 & 0xFFFFFFF8;
        }
      }

      v29 = v28 + 1;
      do
      {
        v30 = *v25++;
        _H0 = v30;
        __asm { FCVT            S0, H0 }

        v35 = *v27++;
        _H1 = v35;
        __asm
        {
          FCVT            S2, H1
          FCVT            D1, H1
        }

        *&_D1 = _D1 + 1.0e-20;
        _S0 = pow(((_S2 - _S0) / *&_D1), v15);
        __asm { FCVT            H0, S0 }

        *v23++ = fabsl(*&_S0);
        v40 = v8 > v29++;
      }

      while (v40);
LABEL_16:
      v16 = v135 + 1;
      v22 = (v130 + v9);
      v21 = (v132 + v11);
      v14 = v129;
      v20 = (v133 + v129);
      if (v137 <= (v135 + 1))
      {
        return;
      }
    }
  }

  if (v8 <= 7)
  {
    v63 = 0;
    do
    {
      v64 = 0;
      do
      {
        _H0 = v13->i16[v64];
        __asm { FCVT            S0, H0 }

        _H1 = v12->i16[v64];
        __asm { FCVT            S1, H1 }

        _S0 = pow((_S1 - _S0), v15);
        __asm { FCVT            H0, S0 }

        *&v10->i16[v64++] = fabsl(*&_S0);
      }

      while (v8 > v64);
      ++v63;
      v13 = (v13 + v14);
      v12 = (v12 + v11);
      v10 = (v10 + v9);
    }

    while (v137 > v63);
    return;
  }

  if (v8)
  {
    v70 = (v8 - 1) >> 32 == 0;
  }

  else
  {
    v70 = 0;
  }

  if (v70)
  {
    v78 = 0;
    v79 = 4 * v7;
    v131 = a4->i64 + v79;
    v128 = v13->i64 + v79;
    v125 = a2->i64 + v79;
    v120 = 2 * (v8 & 0x1FFFFFFF8);
    v80 = *a1;
    v81 = a2;
    v82 = a4;
    while (1)
    {
      v83 = 0;
      v84 = (v10->i16 + v78 * v9);
      v85 = v131 + v78 * v9;
      v86 = v14 * v78;
      v87 = v11;
      v88 = (v13->i16 + v14 * v78);
      v89 = v78 * v87;
      v90 = (v12->i16 + v89);
      v92 = v84 < v125 + v89 && v90 < v85;
      v93 = v88 >= v85 || v84 >= v128 + v86;
      v139 = v80;
      v134 = v82;
      v136 = v81;
      if (v93 && !v92)
      {
        v122 = v78;
        v90 = (v90 + v120);
        v94 = v80;
        v95 = v81;
        v96 = v82;
        v97 = v8 & 0x1FFFFFFF8;
        do
        {
          v98 = *v94++;
          v99 = vcvt_hight_f32_f16(v98);
          v100 = vcvtq_f32_f16(*v98.i8);
          v101 = *v95++;
          v102 = vsubq_f32(vcvtq_f32_f16(*v101.i8), v100);
          v103 = vsubq_f32(vcvt_hight_f32_f16(v101), v99);
          v153 = vcvtq_f64_f32(*v103.f32);
          v155 = vcvt_hight_f64_f32(v103);
          v151 = vcvt_hight_f64_f32(v102);
          v147 = vcvtq_f64_f32(*v102.f32);
          v149 = pow(v147.f64[0], v15);
          v147.f64[0] = pow(v147.f64[1], v15);
          v145 = pow(v151.f64[0], v15);
          v143 = pow(v151.f64[1], v15);
          v151.f64[0] = pow(v153.f64[0], v15);
          v153.f64[0] = pow(v153.f64[1], v15);
          v141 = pow(v155.f64[0], v15);
          v104 = pow(v155.f64[1], v15);
          v105.f64[0] = v145;
          v105.f64[1] = v143;
          v106.f64[0] = v149;
          v106.f64[1] = v147.f64[0];
          v107.f64[0] = v141;
          v107.f64[1] = v104;
          v108.f64[0] = v151.f64[0];
          v108.f64[1] = v153.f64[0];
          *v96++ = vabsq_f16(vcvt_hight_f16_f32(vcvt_f16_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v106), v105)), vcvt_hight_f32_f64(vcvt_f32_f64(v108), v107)));
          v97 -= 8;
        }

        while (v97);
        v10 = a4;
        v9 = a5;
        v78 = v122;
        if (v8 == (v8 & 0x1FFFFFFF8))
        {
          goto LABEL_50;
        }

        v88 = (v88 + v120);
        v84 = (v84 + v120);
        v83 = v8 & 0xFFFFFFF8;
      }

      v109 = v83 + 1;
      do
      {
        v110 = *v88++;
        _H0 = v110;
        __asm { FCVT            S0, H0 }

        v113 = *v90++;
        _H1 = v113;
        __asm { FCVT            S1, H1 }

        _S0 = pow((_S1 - _S0), v15);
        __asm { FCVT            H0, S0 }

        *v84++ = fabsl(*&_S0);
        v40 = v8 > v109++;
      }

      while (v40);
LABEL_50:
      ++v78;
      v82 = (v134 + v9);
      v11 = a3;
      v81 = (v136 + a3);
      v14 = v129;
      v80 = (v139 + v129);
      if (v137 <= v78)
      {
        return;
      }
    }
  }

  v71 = 0;
  do
  {
    v72 = 0;
    do
    {
      _H0 = v13->i16[v72];
      __asm { FCVT            S0, H0 }

      _H1 = v12->i16[v72];
      __asm { FCVT            S1, H1 }

      _S0 = pow((_S1 - _S0), v15);
      __asm { FCVT            H0, S0 }

      *&v10->i16[v72++] = fabsl(*&_S0);
    }

    while (v8 > v72);
    ++v71;
    v13 = (v13 + v14);
    v12 = (v12 + v11);
    v10 = (v10 + v9);
  }

  while (v137 > v71);
}

void calcDiffsRaw<float>(float32x4_t **a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, char a6, int a7)
{
  v104 = a1[1];
  v105 = a2;
  if (!v104)
  {
    return;
  }

  v7 = a1[2];
  v8 = 4 * v7;
  if (!(4 * v7))
  {
    return;
  }

  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = *a1;
  v13 = a1[3];
  v14 = a7;
  v103 = v13;
  if (a6)
  {
    v15 = 0;
    v16 = v7;
    v17 = &a4[v16];
    v91 = &v12[v16];
    f32 = a2[v16].f32;
    if (v8)
    {
      v18 = (v8 - 1) >> 32 == 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
    v94 = v19;
    v87 = 4 * (v8 & 0x1FFFFFFFCLL);
    v106 = vdupq_n_s64(0x3BC79CA10C924223uLL);
    v20 = *a1;
    v21 = a2;
    v22 = a4;
    v86 = v17;
    while (1)
    {
      v23 = (v10->f32 + v15 * v9);
      v24 = v13 * v15;
      v25 = (v12->f32 + v13 * v15);
      v26 = v15 * v11;
      v27 = (v105->f32 + v15 * v11);
      v99 = v21;
      v101 = v20;
      v97 = v22;
      if (v94)
      {
        v28 = 0;
      }

      else
      {
        v28 = 0;
        v36 = v91 + v24;
        v37 = v17 + v15 * v9;
        v39 = v23 < (f32 + v26) && v27 < v37;
        v40 = v25 >= v37 || v23 >= v36;
        if (v40 && !v39)
        {
          v41 = v8 & 0x1FFFFFFFCLL;
          v27 = (v27 + v87);
          v42 = v20;
          v43 = v21;
          do
          {
            v44 = *v42++;
            v45 = v44;
            v46 = *v43++;
            v47 = vdivq_f32(vsubq_f32(v46, v45), vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vcvtq_f64_f32(*v46.f32), v106)), vaddq_f64(vcvt_hight_f64_f32(v46), v106)));
            v114 = vcvt_hight_f64_f32(v47);
            v110 = vcvtq_f64_f32(*v47.f32);
            v112 = pow(v110.f64[0], v14);
            v110.f64[0] = pow(v110.f64[1], v14);
            v108 = pow(v114.f64[0], v14);
            v48 = pow(v114.f64[1], v14);
            v49.f64[0] = v108;
            v49.f64[1] = v48;
            v50.f64[0] = v112;
            v50.f64[1] = v110.f64[0];
            *v22++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v50), v49));
            v41 -= 4;
          }

          while (v41);
          v10 = a4;
          v9 = a5;
          v17 = v86;
          if (v8 == (v8 & 0x1FFFFFFFCLL))
          {
            goto LABEL_11;
          }

          v25 = (v25 + v87);
          v23 = (v23 + v87);
          v28 = v8;
        }
      }

      v29 = v28 + 1;
      do
      {
        v30 = *v25++;
        v31 = v30;
        v32 = *v27++;
        v33 = v32 + 1.0e-20;
        v34 = pow(((v32 - v31) / v33), v14);
        *v23++ = fabsf(v34);
        v35 = v8 > v29++;
      }

      while (v35);
LABEL_11:
      ++v15;
      v11 = a3;
      v22 = (v97 + v9);
      v21 = (v99 + a3);
      v13 = v103;
      v20 = (v103 + v101);
      if (v104 <= v15)
      {
        return;
      }
    }
  }

  if (v8)
  {
    v51 = (v8 - 1) >> 32 == 0;
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
    v55 = 0;
    v56 = v7;
    v57 = &a4[v56];
    v98 = &v12[v56];
    v95 = a2[v56].f32;
    v88 = &a4[v56];
    v90 = 4 * (v8 & 0x1FFFFFFFCLL);
    v58 = *a1;
    v59 = a2;
    v60 = a4;
    while (1)
    {
      v61 = 0;
      v62 = (v10->f32 + v55 * v9);
      v63 = v57 + v55 * v9;
      v64 = v13 * v55;
      v65 = (v12->f32 + v64);
      v66 = v55 * v11;
      v67 = (v105->f32 + v55 * v11);
      v69 = v62 < (v95 + v66) && v67 < v63;
      v70 = v65 >= v63 || v62 >= (v98->f32 + v64);
      v107 = v58;
      v100 = v60;
      v102 = v59;
      if (v70 && !v69)
      {
        v71 = v8 & 0x1FFFFFFFCLL;
        v67 = (v67 + v90);
        v72 = v59;
        v73 = v60;
        do
        {
          v74 = *v58++;
          v75 = v74;
          v76 = *v72++;
          v77 = vsubq_f32(v76, v75);
          v115 = vcvt_hight_f64_f32(v77);
          v111 = vcvtq_f64_f32(*v77.f32);
          v113 = pow(v111.f64[0], v14);
          v111.f64[0] = pow(v111.f64[1], v14);
          v109 = pow(v115.f64[0], v14);
          v78 = pow(v115.f64[1], v14);
          v79.f64[0] = v109;
          v79.f64[1] = v78;
          v80.f64[0] = v113;
          v80.f64[1] = v111.f64[0];
          *v73++ = vabsq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v80), v79));
          v71 -= 4;
        }

        while (v71);
        v10 = a4;
        v9 = a5;
        v57 = v88;
        if (v8 == (v8 & 0x1FFFFFFFCLL))
        {
          goto LABEL_43;
        }

        v65 = (v65 + v90);
        v62 = (v62 + v90);
        v61 = v8;
      }

      v81 = v61 + 1;
      do
      {
        v82 = *v65++;
        v83 = v82;
        v84 = *v67++;
        v85 = pow((v84 - v83), v14);
        *v62++ = fabsf(v85);
        v35 = v8 > v81++;
      }

      while (v35);
LABEL_43:
      ++v55;
      v60 = (v100 + v9);
      v11 = a3;
      v59 = (v102 + a3);
      v13 = v103;
      v58 = (v103 + v107);
      if (v104 <= v55)
      {
        return;
      }
    }
  }

  v52 = 0;
  do
  {
    v53 = 0;
    do
    {
      v54 = pow((v105->f32[v53] - v12->f32[v53]), v14);
      v10->f32[v53++] = fabsf(v54);
    }

    while (v8 > v53);
    ++v52;
    v12 = (v103 + v12);
    v105 = (v105 + v11);
    v10 = (v10 + v9);
  }

  while (v104 > v52);
}

uint64_t PixelBufferUtils::scaleConvertRotatePixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, CGRect a4, CVPixelBufferRef *a5, __CVBuffer **a6, __CVBuffer **a7)
{
  v67 = pixelBuffer;
  v68 = this;
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a2;
  v63 = a7;
  v65 = 0;
  texture = 0;
  if (a5)
  {
    p_texture = a5;
  }

  else
  {
    p_texture = &texture;
  }

  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v16 = &v65;
  }

  v17 = CVPixelBufferGetWidth(pixelBuffer);
  v18 = CVPixelBufferGetHeight(pixelBuffer);
  v19 = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v20 = CVPixelBufferGetPixelFormatType(this);
  v64 = v12;
  if ((v12 & 0xFFFFFFFD) == 1)
  {
    v21 = v17;
  }

  else
  {
    v21 = v18;
  }

  if ((v12 & 0xFFFFFFFD) == 1)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  v23 = CVPixelBufferGetWidth(this);
  v24 = CVPixelBufferGetHeight(this);
  v25 = CVPixelBufferGetPixelFormatType(this);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  v75 = CGRectIntegral(v70);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  if (!CGRectEqualToRect(v71, v75))
  {
    NSLog(&cfstr_SDErrorCropDim.isa, "scaleConvertRotatePixelBuffer", 2663);
    return 0xFFFFFFFFLL;
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  if (CGRectIsEmpty(v72))
  {
    x = 0.0;
    y = 0.0;
    width = v23;
    height = v24;
  }

  v76.origin.x = 0.0;
  v76.origin.y = 0.0;
  v73.origin.x = x;
  v73.origin.y = y;
  v73.size.width = width;
  v73.size.height = height;
  v76.size.width = v23;
  v76.size.height = v24;
  v26 = !CGRectEqualToRect(v73, v76);
  if (v22 != v23)
  {
    v26 = 1;
  }

  if (v21 != v24)
  {
    v26 = 1;
  }

  v27 = v19;
  if (v20 == v19 && !v64 && !v26)
  {
    return PixelBufferUtils::copyPixelBuffer(pixelBuffer, this, v63);
  }

  v29 = v63;
  v30 = p_texture;
  v31 = v16;
  v32 = a6;
  if ((v26 & v63) != 1)
  {
    goto LABEL_41;
  }

  if (v25 <= 1751410031)
  {
    if (v25 > 1717855599)
    {
      if (v25 == 1717855600)
      {
        goto LABEL_41;
      }

      v33 = 1717856627;
    }

    else
    {
      if (v25 == 825306677)
      {
        goto LABEL_41;
      }

      v33 = 825437747;
    }
  }

  else if (v25 <= 1919365989)
  {
    if (v25 == 1751410032)
    {
      goto LABEL_41;
    }

    v33 = 1751411059;
  }

  else
  {
    if (v25 == 1919365990 || v25 == 1919365992)
    {
      goto LABEL_41;
    }

    v33 = 1932996149;
  }

  if (v25 == v33)
  {
    goto LABEL_41;
  }

  v35 = 0;
  if (v19 <= 1751410031)
  {
    if (v19 > 1717855599)
    {
      if (v19 == 1717855600)
      {
        goto LABEL_41;
      }

      v60 = 1717856627;
    }

    else
    {
      if (v19 == 825306677)
      {
        goto LABEL_41;
      }

      v60 = 825437747;
    }

LABEL_108:
    v34 = p_texture;
    if (v19 != v60)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  if (v19 <= 1919365989)
  {
    if (v19 == 1751410032)
    {
      goto LABEL_41;
    }

    v60 = 1751411059;
    goto LABEL_108;
  }

  if (v19 != 1919365990 && v19 != 1932996149)
  {
    v60 = 1919365992;
    goto LABEL_108;
  }

LABEL_41:
  if (v26)
  {
    v34 = p_texture;
  }

  else
  {
    v34 = &v68;
  }

  if (v20 == v19)
  {
    p_texture = v34;
  }

  else
  {
    p_texture = v31;
  }

  v35 = v20 != v19;
LABEL_48:
  if (v64)
  {
    v36 = v31;
  }

  else
  {
    v36 = &v67;
  }

  v37 = !v35;
  if (v64)
  {
    v38 = !v26;
  }

  else
  {
    v38 = 1;
  }

  if ((v38 & v37) != 0)
  {
    v39 = v36;
  }

  else
  {
    v39 = v30;
  }

  pixelFormatType = v27;
  if (v26)
  {
    v40 = *v39;
    if (!*v39)
    {
      if (v35)
      {
        v41 = v20;
      }

      else
      {
        v41 = v27;
      }

      pixelBufferOut = 0;
      v42 = p_texture;
      v43 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      v45 = v43;
      p_texture = v42;
      v46 = v41;
      v29 = v63;
      if (CVPixelBufferCreate(v45, v22, v21, v46, BufferAttributes, &pixelBufferOut))
      {
        v40 = 0;
      }

      else
      {
        v40 = pixelBufferOut;
      }

      *v39 = v40;
    }

    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    result = PixelBufferUtils::cropAndScalePixelBuffer(this, v40, v29, v74, *MEMORY[0x277CBF3A0]);
  }

  else
  {
    result = 0;
  }

  if (result)
  {
    v47 = 1;
  }

  else
  {
    v47 = v37;
  }

  if ((v47 & 1) == 0)
  {
    v48 = *v34;
    if (!*v36)
    {
      v50 = p_texture;
      v51 = *v34;
      v52 = v29;
      v53 = CVPixelBufferGetWidth(v48);
      v54 = CVPixelBufferGetHeight(v51);
      pixelBufferOut = 0;
      v55 = *MEMORY[0x277CBECE8];
      v56 = getBufferAttributes();
      if (CVPixelBufferCreate(v55, v53, v54, pixelFormatType, v56, &pixelBufferOut))
      {
        v57 = 0;
      }

      else
      {
        v57 = pixelBufferOut;
      }

      if (PixelBufferUtils::convertPixelBufferFormat(v51, v57, v52))
      {
        CVPixelBufferRelease(v57);
        v57 = 0;
      }

      p_texture = v50;
      *v36 = v57;
      if (v57)
      {
        result = 0;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }

      LODWORD(v29) = v63;
      if (!v64)
      {
        goto LABEL_91;
      }

      goto LABEL_75;
    }

    result = PixelBufferUtils::convertPixelBufferFormat(v48, *v36, v29);
  }

  if (v64)
  {
LABEL_75:
    if (!result)
    {
      v49 = *p_texture;
      if (v67)
      {
        result = PixelBufferUtils::rotatePixelBuffer(v49, v67, v64, v29);
      }

      else if (PixelBufferUtils::createRotatedPixelBuffer(v49, v64, v29))
      {
        result = 0;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }
    }
  }

LABEL_91:
  if (!a5)
  {
    v58 = result;
    CVPixelBufferRelease(texture);
    result = v58;
  }

  if (!v32)
  {
    v59 = result;
    CVPixelBufferRelease(v65);
    return v59;
  }

  return result;
}

CVPixelBufferRef PixelBufferUtils::pixelBufferFromCGImage(PixelBufferUtils *this, CGImage *a2)
{
  v2 = a2;
  v26[3] = *MEMORY[0x277D85DE8];
  ColorSpace = CGImageGetColorSpace(this);
  BitsPerComponent = CGImageGetBitsPerComponent(this);
  BitmapInfo = CGImageGetBitmapInfo(this);
  Name = CGColorSpaceGetName(ColorSpace);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGColorSpaceGetName(DeviceRGB);
  if (!Name)
  {
    Name = v9;
    ColorSpace = DeviceRGB;
  }

  if (CFEqual(Name, v9))
  {
    BitmapInfo = 6;
    v10 = 32;
    ColorSpace = DeviceRGB;
  }

  else
  {
    v11 = *MEMORY[0x277CBF4B8];
    if (CFEqual(Name, *MEMORY[0x277CBF4B8]))
    {
      v12 = BitsPerComponent == 8;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || CFEqual(Name, *MEMORY[0x277CBF3E0]) || CFEqual(Name, *MEMORY[0x277CBF488]))
    {
      BitmapInfo = 6;
    }

    else
    {
      if (CFEqual(Name, v11) && BitsPerComponent == 32)
      {
        BitmapInfo = 257;
        v10 = 1380410945;
        goto LABEL_13;
      }

      if (!CFEqual(Name, *MEMORY[0x277CBF460]))
      {
        if (CFEqual(Name, *MEMORY[0x277CBF448]))
        {
          v10 = 1278226488;
          if (BitsPerComponent == 8)
          {
            goto LABEL_13;
          }

          v10 = 1278226534;
          if (BitsPerComponent == 16)
          {
            v10 = 1647392359;
            goto LABEL_13;
          }

          if (BitsPerComponent == 32)
          {
            goto LABEL_13;
          }

          NSLog(&cfstr_SDErrorThisCon.isa, "pixelBufferFromCGImage", 2857);
        }

        else
        {
          NSLog(&cfstr_SDErrorThisCon.isa, "pixelBufferFromCGImage", 2863);
        }

        return 0;
      }

      BitmapInfo = 2;
    }

    v10 = 32;
  }

LABEL_13:
  if (v2 == 1061109567)
  {
    v13 = v10;
  }

  else
  {
    v13 = v2;
  }

  Width = CGImageGetWidth(this);
  Height = CGImageGetHeight(this);
  v16 = *MEMORY[0x277CC4D68];
  v25[0] = *MEMORY[0x277CC4D70];
  v25[1] = v16;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = MEMORY[0x277CBEC38];
  v25[2] = *MEMORY[0x277CC4DE8];
  v26[2] = MEMORY[0x277CBEC10];
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, v13, v17, &pixelBufferOut))
  {
    NSLog(&cfstr_SDErrorCouldNo.isa, "pixelBufferFromCGImage", 2887);
    CGColorSpaceRelease(DeviceRGB);
    v18 = 0;
  }

  else
  {
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v21 = CGBitmapContextCreate(BaseAddress, Width, Height, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
    v22 = v21;
    if (v21)
    {
      v27.size.width = Width;
      v27.size.height = Height;
      v27.origin.x = 0.0;
      v27.origin.y = 0.0;
      CGContextDrawImage(v21, v27, this);
      CGContextRelease(v22);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    }

    else
    {
      NSLog(&cfstr_SDErrorCouldNo_0.isa, "pixelBufferFromCGImage", 2909);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      CVPixelBufferRelease(pixelBufferOut);
      pixelBufferOut = 0;
    }

    CGColorSpaceRelease(DeviceRGB);
    v18 = pixelBufferOut;
  }

  return v18;
}

void PixelBufferUtils::pixelBufferToImageFile(PixelBufferUtils *this, PixelBufferUtils *a2, const __CFString *a3, const __CFString *a4)
{
  v6 = PixelBufferUtils::pixelBufferToCGImage(a2, a2);
  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  url = [v7 fileURLWithPath:v8];
  if (!a3)
  {
    a3 = @"public.png";
  }

  v9 = CGImageDestinationCreateWithURL(url, a3, 1uLL, 0);
  CGImageDestinationAddImage(v9, v6, 0);
  CGImageDestinationFinalize(v9);
  CFRelease(v9);
  CGImageRelease(v6);
}

CGImageRef PixelBufferUtils::pixelBufferToCGImage(PixelBufferUtils *this, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v5 = CVPixelBufferGetWidth(this);
  v6 = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v7, v5, v6, 0x20u, BufferAttributes, &pixelBufferOut))
  {
    v9 = 0;
  }

  else
  {
    v9 = pixelBufferOut;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(this, v9, 0))
  {
    CVPixelBufferRelease(v9);
    v9 = 0;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(v9, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v9);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
  v13 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 6u);
  CFRelease(DeviceRGB);
  Image = CGBitmapContextCreateImage(v13);
  CVPixelBufferUnlockBaseAddress(v9, 1uLL);
  CGContextRelease(v13);
  CVPixelBufferRelease(v9);
  return Image;
}

uint64_t PixelBufferUtils::pixelBufferFromRawFileWithBuffer(PixelBufferUtils *this, NSData *a2, __CVBuffer *a3)
{
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4];
  v7 = v5;
  if (v5)
  {
    v8 = PixelBufferUtils::pixelBufferFromData(v5, a2, v6);
  }

  else
  {
    NSLog(&cfstr_SDErrorFailedR.isa, "pixelBufferFromRawFileWithBuffer", 3029);
    v8 = 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t PixelBufferUtils::pixelBufferFromData(PixelBufferUtils *this, NSData *a2, __CVBuffer *a3)
{
  v4 = this;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, 0);
  v7 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  if (v7)
  {
    v54 = v4;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v11);
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, v11);
      v13 += WidthOfPlane * v14 * CVPixelBufferGetHeightOfPlane(a2, v11);
      v12 += CVPixelBufferGetBytesPerRowOfPlane(a2, v11++);
    }

    while (v7 != v11);
    v16 = [(PixelBufferUtils *)v54 length];
    if (v16 == v13 || [(PixelBufferUtils *)v54 length]== v12)
    {
      v17 = [(PixelBufferUtils *)v54 bytes];
      v55 = CVPixelBufferGetPixelFormatType(a2);
      PlaneCount = CVPixelBufferGetPlaneCount(a2);
      CVPixelBufferLockBaseAddress(a2, 0);
      if (PlaneCount)
      {
        if (v16 == v13)
        {
          for (i = 0; i != PlaneCount; ++i)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, i);
            v21 = PixelBufferUtils::pixelSizeForPixelFormat(v55, i);
            v22 = CVPixelBufferGetWidthOfPlane(a2, i);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, i);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, i);
            v25 = v22 * v21;
            if (HeightOfPlane)
            {
              v26 = BytesPerRowOfPlane;
              v27 = v17;
              v28 = HeightOfPlane;
              do
              {
                memcpy(BaseAddressOfPlane, v27, v25);
                BaseAddressOfPlane += v26;
                v27 += v25;
                --v28;
              }

              while (v28);
            }

            v17 += v25 * HeightOfPlane;
          }
        }

        else
        {
          for (j = 0; j != PlaneCount; ++j)
          {
            v44 = CVPixelBufferGetBaseAddressOfPlane(a2, j);
            v45 = PixelBufferUtils::pixelSizeForPixelFormat(v55, j);
            v46 = CVPixelBufferGetWidthOfPlane(a2, j);
            v47 = CVPixelBufferGetHeightOfPlane(a2, j);
            v48 = CVPixelBufferGetBytesPerRowOfPlane(a2, j);
            v49 = v46 * v45;
            if (v47)
            {
              v50 = v48;
              v51 = 0;
              v52 = v47;
              do
              {
                memcpy(&v44[v51], (v17 + v51), v49);
                v51 += v50;
                --v52;
              }

              while (v52);
            }

            v17 += v49 * v47;
          }
        }
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      v42 = 0;
    }

    else
    {
      NSLog(&cfstr_SDErrorDataSiz.isa, "pixelBufferFromData", 3080);
      v42 = 0xFFFFFFFFLL;
    }

    v4 = v54;
  }

  else
  {
    v29 = BytesPerRow;
    v30 = [(PixelBufferUtils *)v4 length];
    v31 = Width * v6 * Height;
    if (v30 == v31 || [(PixelBufferUtils *)v4 length]== v29 * Height)
    {
      v32 = [(PixelBufferUtils *)v4 bytes];
      v33 = CVPixelBufferGetPixelFormatType(a2);
      v34 = CVPixelBufferGetWidth(a2);
      v35 = CVPixelBufferGetHeight(a2);
      v36 = CVPixelBufferGetBytesPerRow(a2);
      v37 = PixelBufferUtils::pixelSizeForPixelFormat(v33, 0);
      v38 = v37 * v34;
      if (v30 == v31)
      {
        v39 = v37 * v34;
      }

      else
      {
        v39 = v36;
      }

      CVPixelBufferLockBaseAddress(a2, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(a2);
      if (v35)
      {
        v41 = BaseAddress;
        do
        {
          memcpy(v41, v32, v38);
          v41 += v36;
          v32 += v39;
          --v35;
        }

        while (v35);
      }

      CVPixelBufferUnlockBaseAddress(a2, 0);
      v42 = 0;
    }

    else
    {
      NSLog(&cfstr_SDErrorDataSiz.isa, "pixelBufferFromData", 3056);
      v42 = 0xFFFFFFFFLL;
    }
  }

  return v42;
}

__CVBuffer *PixelBufferUtils::pixelBufferFromRawFile(PixelBufferUtils *this, unint64_t a2, size_t a3, OSType a4)
{
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v9 = v8;
  if (a4 == 1061109567)
  {
    v10 = [v8 pathExtension];
    v11 = [v10 UTF8String];
    a4 = PixelBufferUtils::pixelFormatFromFileExtension(v11, v12);

    if (!a4)
    {
      NSLog(&cfstr_SDErrorCannotR.isa, "pixelBufferFromRawFile", 3103);
      goto LABEL_23;
    }
  }

  if (!a2 || !a3)
  {
    if (a3 | a2)
    {
      NSLog(&cfstr_SDErrorBadDime.isa, "pixelBufferFromRawFile", 3112);
      goto LABEL_23;
    }

    v16 = [v9 stringByDeletingPathExtension];
    v17 = [v16 pathExtension];

    if ([v17 isEqualToString:&stru_285231EA0])
    {
      NSLog(&cfstr_SDErrorDidNotF.isa, "pixelBufferFromRawFile", 3119);
    }

    else
    {
      v18 = [v17 lowercaseString];
      v19 = [v18 componentsSeparatedByString:@"x"];

      if ([v19 count] == 2)
      {
        a3 = [v19 objectAtIndexedSubscript:0];
        LODWORD(a2) = [a3 intValue];

        v20 = [v19 objectAtIndexedSubscript:1];
        LODWORD(a3) = [v20 intValue];

        v21 = 3136;
        v22 = @"%s:%d - ERROR - did not find dimensions in file name - width/height ill formatted";
        if (a2 && a3)
        {
          a2 = a2;
          a3 = a3;

          goto LABEL_5;
        }
      }

      else
      {
        v21 = 3125;
        v22 = @"%s:%d - ERROR - did not find dimensions in file name - extension ill formatted";
      }

      NSLog(&v22->isa, "pixelBufferFromRawFile", v21);
    }

    goto LABEL_23;
  }

LABEL_5:
  pixelBufferOut = 0;
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], a2, a3, a4, BufferAttributes, &pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  if (PixelBufferUtils::pixelBufferFromRawFileWithBuffer(this, v15, v14))
  {
    CVPixelBufferRelease(v15);
LABEL_23:
    v15 = 0;
  }

  return v15;
}

void PixelBufferUtils::pixelBufferToRawFile(PixelBufferUtils *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  if (!pixelBuffer)
  {
    return;
  }

  v3 = pixelBuffer;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  isPixelFormatCompressed = PixelBufferUtils::isPixelFormatCompressed(PixelFormatType);
  if (isPixelFormatCompressed)
  {
    v6 = PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelFormatType);
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v3);
    pixelBufferOut.__r_.__value_.__r.__words[0] = 0;
    v9 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    v11 = CVPixelBufferCreate(v9, Width, Height, v6, BufferAttributes, &pixelBufferOut);
    v12 = pixelBufferOut.__r_.__value_.__r.__words[0];
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = pixelBufferOut.__r_.__value_.__r.__words[0];
    }

    if (PixelBufferUtils::convertPixelBufferFormat(v3, v13, 1))
    {
      CVPixelBufferRelease(v13);
LABEL_8:
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, &pixelBufferOut);
      if ((pixelBufferOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_pixelBufferOut = &pixelBufferOut;
      }

      else
      {
        p_pixelBufferOut = pixelBufferOut.__r_.__value_.__r.__words[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "pixelBufferToRawFile", 3167, PixelFormatType, p_pixelBufferOut);
      goto LABEL_203;
    }

    v3 = v12;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  v15 = strlen(this);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    operator new();
  }

  *(&pixelBufferOut.__r_.__value_.__s + 23) = v15;
  if (v15)
  {
    memcpy(&pixelBufferOut, this, v15);
  }

  pixelBufferOut.__r_.__value_.__s.__data_[v16] = 0;
  v17 = MEMORY[0x277CBEBC0];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  v19 = [v17 fileURLWithPath:v18];
  v20 = [v19 pathExtension];
  v21 = [v20 isEqualToString:&stru_285231EA0];

  if (!v21)
  {
    goto LABEL_181;
  }

  std::string::append(&pixelBufferOut, ".", 1uLL);
  v22 = CVPixelBufferGetWidth(v3);
  v23 = CVPixelBufferGetHeight(v3);
  std::to_string(&v87, v22);
  v24 = std::string::append(&v87, "x", 1uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v88.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v88.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v86, v23);
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = &v86;
  }

  else
  {
    v26 = v86.__r_.__value_.__r.__words[0];
  }

  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v86.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v88, v26, size);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v90 = v28->__r_.__value_.__r.__words[2];
  *__p = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v88.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_65:
    operator delete(v88.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_66:
    operator delete(v87.__r_.__value_.__l.__data_);
    goto LABEL_29;
  }

  operator delete(v86.__r_.__value_.__l.__data_);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_65;
  }

LABEL_28:
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_66;
  }

LABEL_29:
  if (v90 >= 0)
  {
    v30 = __p;
  }

  else
  {
    v30 = __p[0];
  }

  if (v90 >= 0)
  {
    v31 = HIBYTE(v90);
  }

  else
  {
    v31 = __p[1];
  }

  std::string::append(&pixelBufferOut, v30, v31);
  std::string::append(&pixelBufferOut, ".", 1uLL);
  v32 = CVPixelBufferGetPixelFormatType(v3);
  PixelBufferUtils::pixelFormatAsString(v32, &v88);
  v33 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v36 = v88.__r_.__value_.__l.__size_;
  v35 = v88.__r_.__value_.__r.__words[0];
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v88;
  }

  else
  {
    v37 = v88.__r_.__value_.__r.__words[0];
  }

  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v88.__r_.__value_.__l.__size_;
  }

  if (!v38)
  {
    goto LABEL_106;
  }

  v39 = v37;
  if (v38 < 8)
  {
LABEL_210:
    v83 = (v37 + v38);
    do
    {
      if (v39->__r_.__value_.__s.__data_[0] == 47)
      {
        v39->__r_.__value_.__s.__data_[0] = 58;
      }

      v39 = (v39 + 1);
    }

    while (v39 != v83);
    goto LABEL_105;
  }

  if (v38 < 0x10)
  {
    v40 = 0;
    goto LABEL_45;
  }

  v40 = v38 & 0xFFFFFFFFFFFFFFF0;
  v45 = &v37->__r_.__value_.__s.__data_[7];
  v46.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
  v46.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
  v47 = v38 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v48 = vceqq_s8(*(v45 - 7), v46);
    if (v48.i8[0])
    {
      *(v45 - 7) = 58;
      if ((v48.i8[1] & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else if ((v48.i8[1] & 1) == 0)
    {
LABEL_73:
      if (v48.i8[2])
      {
        goto LABEL_74;
      }

      goto LABEL_90;
    }

    *(v45 - 6) = 58;
    if (v48.i8[2])
    {
LABEL_74:
      *(v45 - 5) = 58;
      if ((v48.i8[3] & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_91;
    }

LABEL_90:
    if ((v48.i8[3] & 1) == 0)
    {
LABEL_75:
      if (v48.i8[4])
      {
        goto LABEL_76;
      }

      goto LABEL_92;
    }

LABEL_91:
    *(v45 - 4) = 58;
    if (v48.i8[4])
    {
LABEL_76:
      *(v45 - 3) = 58;
      if ((v48.i8[5] & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_93;
    }

LABEL_92:
    if ((v48.i8[5] & 1) == 0)
    {
LABEL_77:
      if (v48.i8[6])
      {
        goto LABEL_78;
      }

      goto LABEL_94;
    }

LABEL_93:
    *(v45 - 2) = 58;
    if (v48.i8[6])
    {
LABEL_78:
      *(v45 - 1) = 58;
      if ((v48.i8[7] & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_95;
    }

LABEL_94:
    if ((v48.i8[7] & 1) == 0)
    {
LABEL_79:
      if (v48.i8[8])
      {
        goto LABEL_80;
      }

      goto LABEL_96;
    }

LABEL_95:
    *v45 = 58;
    if (v48.i8[8])
    {
LABEL_80:
      v45[1] = 58;
      if ((v48.i8[9] & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_97;
    }

LABEL_96:
    if ((v48.i8[9] & 1) == 0)
    {
LABEL_81:
      if (v48.i8[10])
      {
        goto LABEL_82;
      }

      goto LABEL_98;
    }

LABEL_97:
    v45[2] = 58;
    if (v48.i8[10])
    {
LABEL_82:
      v45[3] = 58;
      if ((v48.i8[11] & 1) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_99;
    }

LABEL_98:
    if ((v48.i8[11] & 1) == 0)
    {
LABEL_83:
      if (v48.i8[12])
      {
        goto LABEL_84;
      }

      goto LABEL_100;
    }

LABEL_99:
    v45[4] = 58;
    if (v48.i8[12])
    {
LABEL_84:
      v45[5] = 58;
      if ((v48.i8[13] & 1) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_101;
    }

LABEL_100:
    if ((v48.i8[13] & 1) == 0)
    {
LABEL_85:
      if ((v48.i8[14] & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

LABEL_101:
    v45[6] = 58;
    if ((v48.i8[14] & 1) == 0)
    {
LABEL_102:
      if ((v48.i8[15] & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_103;
    }

LABEL_86:
    v45[7] = 58;
    if ((v48.i8[15] & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_103:
    v45[8] = 58;
LABEL_70:
    v45 += 16;
    v47 -= 16;
  }

  while (v47);
  if (v38 == v40)
  {
    goto LABEL_105;
  }

  if ((v38 & 8) == 0)
  {
    v39 = (v37 + v40);
    goto LABEL_210;
  }

LABEL_45:
  v41 = v38 & 0xFFFFFFFFFFFFFFF8;
  v42 = v40 - (v38 & 0xFFFFFFFFFFFFFFF8);
  v43 = &v37->__r_.__value_.__s.__data_[v40 + 3];
  while (2)
  {
    v44 = vceq_s8(*(v43 - 3), 0x2F2F2F2F2F2F2F2FLL);
    if (v44.i8[0])
    {
      *(v43 - 3) = 58;
      if ((v44.i8[1] & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_57:
      *(v43 - 2) = 58;
      if ((v44.i8[2] & 1) == 0)
      {
        goto LABEL_58;
      }

LABEL_50:
      *(v43 - 1) = 58;
      if ((v44.i8[3] & 1) == 0)
      {
        goto LABEL_51;
      }

LABEL_59:
      *v43 = 58;
      if ((v44.i8[4] & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_52:
      v43[1] = 58;
      if ((v44.i8[5] & 1) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      v43[2] = 58;
      if ((v44.i8[6] & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_54:
      v43[3] = 58;
      if (v44.i8[7])
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v44.i8[1])
      {
        goto LABEL_57;
      }

LABEL_49:
      if (v44.i8[2])
      {
        goto LABEL_50;
      }

LABEL_58:
      if (v44.i8[3])
      {
        goto LABEL_59;
      }

LABEL_51:
      if (v44.i8[4])
      {
        goto LABEL_52;
      }

LABEL_60:
      if (v44.i8[5])
      {
        goto LABEL_61;
      }

LABEL_53:
      if (v44.i8[6])
      {
        goto LABEL_54;
      }

LABEL_62:
      if (v44.i8[7])
      {
LABEL_63:
        v43[4] = 58;
      }
    }

    v43 += 8;
    v42 += 8;
    if (v42)
    {
      continue;
    }

    break;
  }

  if (v38 != v41)
  {
    v39 = (v37 + v41);
    goto LABEL_210;
  }

LABEL_105:
  v33 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v36 = v88.__r_.__value_.__l.__size_;
  v35 = v88.__r_.__value_.__r.__words[0];
  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
LABEL_106:
  if ((v34 & 0x80u) == 0)
  {
    v49 = &v88;
  }

  else
  {
    v49 = v35;
  }

  if ((v34 & 0x80u) != 0)
  {
    v33 = v36;
  }

  if (!v33)
  {
    goto LABEL_173;
  }

  v50 = v49;
  if (v33 < 8)
  {
LABEL_216:
    v84 = (v49 + v33);
    do
    {
      if (v50->__r_.__value_.__s.__data_[0] == 46)
      {
        v50->__r_.__value_.__s.__data_[0] = 95;
      }

      v50 = (v50 + 1);
    }

    while (v50 != v84);
    goto LABEL_172;
  }

  if (v33 < 0x10)
  {
    v51 = 0;
    goto LABEL_115;
  }

  v51 = v33 & 0xFFFFFFFFFFFFFFF0;
  v56 = &v49->__r_.__value_.__s.__data_[7];
  v57.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v57.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v58 = v33 & 0xFFFFFFFFFFFFFFF0;
  while (2)
  {
    v59 = vceqq_s8(*(v56 - 7), v57);
    if (v59.i8[0])
    {
      *(v56 - 7) = 95;
      if ((v59.i8[1] & 1) == 0)
      {
        goto LABEL_140;
      }

LABEL_156:
      *(v56 - 6) = 95;
      if ((v59.i8[2] & 1) == 0)
      {
        goto LABEL_157;
      }

LABEL_141:
      *(v56 - 5) = 95;
      if ((v59.i8[3] & 1) == 0)
      {
        goto LABEL_142;
      }

LABEL_158:
      *(v56 - 4) = 95;
      if ((v59.i8[4] & 1) == 0)
      {
        goto LABEL_159;
      }

LABEL_143:
      *(v56 - 3) = 95;
      if ((v59.i8[5] & 1) == 0)
      {
        goto LABEL_144;
      }

LABEL_160:
      *(v56 - 2) = 95;
      if ((v59.i8[6] & 1) == 0)
      {
        goto LABEL_161;
      }

LABEL_145:
      *(v56 - 1) = 95;
      if ((v59.i8[7] & 1) == 0)
      {
        goto LABEL_146;
      }

LABEL_162:
      *v56 = 95;
      if ((v59.i8[8] & 1) == 0)
      {
        goto LABEL_163;
      }

LABEL_147:
      v56[1] = 95;
      if ((v59.i8[9] & 1) == 0)
      {
        goto LABEL_148;
      }

LABEL_164:
      v56[2] = 95;
      if ((v59.i8[10] & 1) == 0)
      {
        goto LABEL_165;
      }

LABEL_149:
      v56[3] = 95;
      if ((v59.i8[11] & 1) == 0)
      {
        goto LABEL_150;
      }

LABEL_166:
      v56[4] = 95;
      if ((v59.i8[12] & 1) == 0)
      {
        goto LABEL_167;
      }

LABEL_151:
      v56[5] = 95;
      if ((v59.i8[13] & 1) == 0)
      {
        goto LABEL_152;
      }

LABEL_168:
      v56[6] = 95;
      if ((v59.i8[14] & 1) == 0)
      {
        goto LABEL_169;
      }

LABEL_153:
      v56[7] = 95;
      if (v59.i8[15])
      {
        goto LABEL_170;
      }
    }

    else
    {
      if (v59.i8[1])
      {
        goto LABEL_156;
      }

LABEL_140:
      if (v59.i8[2])
      {
        goto LABEL_141;
      }

LABEL_157:
      if (v59.i8[3])
      {
        goto LABEL_158;
      }

LABEL_142:
      if (v59.i8[4])
      {
        goto LABEL_143;
      }

LABEL_159:
      if (v59.i8[5])
      {
        goto LABEL_160;
      }

LABEL_144:
      if (v59.i8[6])
      {
        goto LABEL_145;
      }

LABEL_161:
      if (v59.i8[7])
      {
        goto LABEL_162;
      }

LABEL_146:
      if (v59.i8[8])
      {
        goto LABEL_147;
      }

LABEL_163:
      if (v59.i8[9])
      {
        goto LABEL_164;
      }

LABEL_148:
      if (v59.i8[10])
      {
        goto LABEL_149;
      }

LABEL_165:
      if (v59.i8[11])
      {
        goto LABEL_166;
      }

LABEL_150:
      if (v59.i8[12])
      {
        goto LABEL_151;
      }

LABEL_167:
      if (v59.i8[13])
      {
        goto LABEL_168;
      }

LABEL_152:
      if (v59.i8[14])
      {
        goto LABEL_153;
      }

LABEL_169:
      if (v59.i8[15])
      {
LABEL_170:
        v56[8] = 95;
      }
    }

    v56 += 16;
    v58 -= 16;
    if (v58)
    {
      continue;
    }

    break;
  }

  if (v33 == v51)
  {
    goto LABEL_172;
  }

  if ((v33 & 8) == 0)
  {
    v50 = (v49 + v51);
    goto LABEL_216;
  }

LABEL_115:
  v52 = v33 & 0xFFFFFFFFFFFFFFF8;
  v53 = v51 - (v33 & 0xFFFFFFFFFFFFFFF8);
  v54 = &v49->__r_.__value_.__s.__data_[v51 + 3];
  while (2)
  {
    v55 = vceq_s8(*(v54 - 3), 0x2E2E2E2E2E2E2E2ELL);
    if (v55.i8[0])
    {
      *(v54 - 3) = 95;
      if ((v55.i8[1] & 1) == 0)
      {
        goto LABEL_119;
      }

LABEL_127:
      *(v54 - 2) = 95;
      if ((v55.i8[2] & 1) == 0)
      {
        goto LABEL_128;
      }

LABEL_120:
      *(v54 - 1) = 95;
      if ((v55.i8[3] & 1) == 0)
      {
        goto LABEL_121;
      }

LABEL_129:
      *v54 = 95;
      if ((v55.i8[4] & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_122:
      v54[1] = 95;
      if ((v55.i8[5] & 1) == 0)
      {
        goto LABEL_123;
      }

LABEL_131:
      v54[2] = 95;
      if ((v55.i8[6] & 1) == 0)
      {
        goto LABEL_132;
      }

LABEL_124:
      v54[3] = 95;
      if (v55.i8[7])
      {
        goto LABEL_133;
      }
    }

    else
    {
      if (v55.i8[1])
      {
        goto LABEL_127;
      }

LABEL_119:
      if (v55.i8[2])
      {
        goto LABEL_120;
      }

LABEL_128:
      if (v55.i8[3])
      {
        goto LABEL_129;
      }

LABEL_121:
      if (v55.i8[4])
      {
        goto LABEL_122;
      }

LABEL_130:
      if (v55.i8[5])
      {
        goto LABEL_131;
      }

LABEL_123:
      if (v55.i8[6])
      {
        goto LABEL_124;
      }

LABEL_132:
      if (v55.i8[7])
      {
LABEL_133:
        v54[4] = 95;
      }
    }

    v54 += 8;
    v53 += 8;
    if (v53)
    {
      continue;
    }

    break;
  }

  if (v33 != v52)
  {
    v50 = (v49 + v52);
    goto LABEL_216;
  }

LABEL_172:
  v34 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  v36 = v88.__r_.__value_.__l.__size_;
  v35 = v88.__r_.__value_.__r.__words[0];
LABEL_173:
  if ((v34 & 0x80u) == 0)
  {
    v60 = &v88;
  }

  else
  {
    v60 = v35;
  }

  if ((v34 & 0x80u) == 0)
  {
    v61 = v34;
  }

  else
  {
    v61 = v36;
  }

  std::string::append(&pixelBufferOut, v60, v61);
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
    if (SHIBYTE(v90) < 0)
    {
      goto LABEL_207;
    }
  }

  else
  {
    if ((SHIBYTE(v90) & 0x80000000) == 0)
    {
      goto LABEL_181;
    }

LABEL_207:
    operator delete(__p[0]);
  }

LABEL_181:
  if ((pixelBufferOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = &pixelBufferOut;
  }

  else
  {
    v62 = pixelBufferOut.__r_.__value_.__r.__words[0];
  }

  v63 = fopen(v62, "wb");
  if (v63)
  {
    if (CVPixelBufferGetPlaneCount(v3))
    {
      CVPixelBufferLockBaseAddress(v3, 1uLL);
      v64 = CVPixelBufferGetPixelFormatType(v3);
      PlaneCount = CVPixelBufferGetPlaneCount(v3);
      if (PlaneCount)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          v67 = PixelBufferUtils::pixelSizeForPixelFormat(v64, i);
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v3, i);
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v3, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v3, i);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v3, i);
          if (HeightOfPlane)
          {
            v72 = BaseAddressOfPlane;
            do
            {
              fwrite(v72, v67, WidthOfPlane, v63);
              v72 += BytesPerRowOfPlane;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
          }
        }
      }
    }

    else
    {
      CVPixelBufferLockBaseAddress(v3, 1uLL);
      v76 = CVPixelBufferGetPixelFormatType(v3);
      v77 = PixelBufferUtils::pixelSizeForPixelFormat(v76, 0);
      v78 = CVPixelBufferGetHeight(v3);
      v79 = CVPixelBufferGetWidth(v3);
      BytesPerRow = CVPixelBufferGetBytesPerRow(v3);
      BaseAddress = CVPixelBufferGetBaseAddress(v3);
      if (v78)
      {
        v82 = BaseAddress;
        do
        {
          fwrite(v82, v77, v79, v63);
          v82 += BytesPerRow;
          --v78;
        }

        while (v78);
      }
    }

    CVPixelBufferUnlockBaseAddress(v3, 1uLL);
  }

  else
  {
    if ((pixelBufferOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &pixelBufferOut;
    }

    else
    {
      v73 = pixelBufferOut.__r_.__value_.__r.__words[0];
    }

    v74 = __error();
    v75 = strerror(*v74);
    NSLog(&cfstr_SDErrorFailedO.isa, "pixelBufferToRawFile", 3192, v73, v75);
  }

  fclose(v63);
  if (isPixelFormatCompressed)
  {
    CVPixelBufferRelease(v3);
  }

LABEL_203:
  if (SHIBYTE(pixelBufferOut.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pixelBufferOut.__r_.__value_.__l.__data_);
  }
}

void sub_2403ECF4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 89) < 0)
  {
    operator delete(*(v39 - 112));
  }

  _Unwind_Resume(exception_object);
}

PixelBufferUtils *PixelBufferUtils::pixelBufferToData(PixelBufferUtils *this, __CVBuffer *a2)
{
  if (!this)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_29;
  }

  v2 = this;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  isPixelFormatCompressed = PixelBufferUtils::isPixelFormatCompressed(PixelFormatType);
  if (isPixelFormatCompressed)
  {
    v4 = PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelFormatType);
    Width = CVPixelBufferGetWidth(v2);
    Height = CVPixelBufferGetHeight(v2);
    pixelBufferOut[0] = 0;
    v7 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    v9 = CVPixelBufferCreate(v7, Width, Height, v4, BufferAttributes, pixelBufferOut);
    v10 = pixelBufferOut[0];
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = pixelBufferOut[0];
    }

    if (PixelBufferUtils::convertPixelBufferFormat(v2, v11, 1))
    {
      CVPixelBufferRelease(v11);
      goto LABEL_8;
    }

    v2 = v10;
    if (!v11)
    {
LABEL_8:
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, pixelBufferOut);
      if (v40 >= 0)
      {
        v12 = pixelBufferOut;
      }

      else
      {
        v12 = pixelBufferOut[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "pixelBufferToData", 3278, PixelFormatType, v12);
      if (v40 < 0)
      {
        operator delete(pixelBufferOut[0]);
      }

      goto LABEL_13;
    }
  }

  if (CVPixelBufferGetPlaneCount(v2))
  {
    v38 = [MEMORY[0x277CBEB28] data];
    CVPixelBufferLockBaseAddress(v2, 1uLL);
    v37 = CVPixelBufferGetPixelFormatType(v2);
    PlaneCount = CVPixelBufferGetPlaneCount(v2);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        v16 = PixelBufferUtils::pixelSizeForPixelFormat(v37, i);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v2, i);
        WidthOfPlane = CVPixelBufferGetWidthOfPlane(v2, i);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v2, i);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v2, i);
        v21 = [MEMORY[0x277CBEB28] dataWithLength:HeightOfPlane * v16 * WidthOfPlane];
        v22 = [v21 mutableBytes];
        if (HeightOfPlane)
        {
          v23 = v22;
          v24 = WidthOfPlane * v16;
          do
          {
            memcpy(v23, BaseAddressOfPlane, v24);
            v23 += v24;
            BaseAddressOfPlane += BytesPerRowOfPlane;
            --HeightOfPlane;
          }

          while (HeightOfPlane);
        }

        [(PixelBufferUtils *)v38 appendData:v21];
      }
    }

    CVPixelBufferUnlockBaseAddress(v2, 1uLL);
    v13 = v38;
    if (!isPixelFormatCompressed)
    {
      goto LABEL_29;
    }

LABEL_28:
    CVPixelBufferRelease(v2);
    goto LABEL_29;
  }

  CVPixelBufferLockBaseAddress(v2, 1uLL);
  v25 = CVPixelBufferGetPixelFormatType(v2);
  v26 = PixelBufferUtils::pixelSizeForPixelFormat(v25, 0);
  v27 = CVPixelBufferGetHeight(v2);
  v28 = CVPixelBufferGetWidth(v2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
  BaseAddress = CVPixelBufferGetBaseAddress(v2);
  v31 = v28 * v26;
  v32 = [MEMORY[0x277CBEB28] dataWithLength:v31 * v27];
  v33 = [v32 mutableBytes];
  if (v27)
  {
    v34 = v33;
    do
    {
      memcpy(v34, BaseAddress, v31);
      v34 += v31;
      BaseAddress += BytesPerRow;
      --v27;
    }

    while (v27);
  }

  CVPixelBufferUnlockBaseAddress(v2, 1uLL);
  v13 = v32;
  if (isPixelFormatCompressed)
  {
    goto LABEL_28;
  }

LABEL_29:

  return v13;
}

void sub_2403ED3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef PixelBufferUtils::pixelBufferFromImageFile(PixelBufferUtils *this, CGImage *a2)
{
  if (this)
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v5 = [v3 fileURLWithPath:v4];

    v6 = CGImageSourceCreateWithURL(v5, 0);
    v7 = v6;
    if (v6)
    {
      if (CGImageSourceGetCount(v6))
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
        v9 = PixelBufferUtils::pixelBufferFromCGImage(ImageAtIndex, a2);
        CGImageRelease(ImageAtIndex);
        CFRelease(v7);
LABEL_8:

        return v9;
      }

      CFRelease(v7);
    }

    v9 = 0;
    goto LABEL_8;
  }

  return 0;
}

__CVBuffer *PixelBufferUtils::blacken(__CVBuffer *this, __CVBuffer *a2)
{
  if (this)
  {
    v2 = this;
    PlaneCount = CVPixelBufferGetPlaneCount(this);
    CVPixelBufferLockBaseAddress(v2, 0);
    if (PlaneCount)
    {
      for (i = 0; i != PlaneCount; ++i)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v2, i);
        v6 = CVPixelBufferGetHeightOfPlane(v2, i) * BytesPerRowOfPlane;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v2, i);
        bzero(BaseAddressOfPlane, v6);
      }
    }

    else
    {
      DataSize = CVPixelBufferGetDataSize(v2);
      BaseAddress = CVPixelBufferGetBaseAddress(v2);
      bzero(BaseAddress, DataSize);
    }

    return CVPixelBufferUnlockBaseAddress(v2, 0);
  }

  return this;
}

float PixelBufferUtils::getTurboColor(PixelBufferUtils *this, float a2, float *a3, float *a4, float *a5)
{
  v5 = (a2 * 255.0);
  if (v5 + 1 < 0xFF)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 255;
  }

  v7 = -((a2 * 255.0) - (a2 * 255.0));
  *this = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v5] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v6] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v5]) * v7);
  *a3 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v5] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v6] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v5]) * v7);
  result = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v5] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v6] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v5]) * v7);
  *a4 = result;
  return result;
}

float *PixelBufferUtils::getJetColor(float *this, float a2, float *a3, float *a4, float *a5)
{
  *this = 1.5 - fabsf((a2 * 4.0) + -3.0);
  *a3 = 1.5 - fabsf((a2 * 4.0) + -2.0);
  *a4 = 1.5 - fabsf((a2 * 4.0) + -1.0);
  v5 = 0.0;
  if (*this <= 1.0)
  {
    v6 = *this;
  }

  else
  {
    v6 = 1.0;
  }

  if (*this >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  *this = v7;
  if (*a3 <= 1.0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 1.0;
  }

  if (*a3 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  *a3 = v9;
  if (*a4 >= 0.0)
  {
    v5 = 1.0;
    if (*a4 <= 1.0)
    {
      v5 = *a4;
    }
  }

  *a4 = v5;
  return this;
}

uint64_t PixelBufferUtils::colorizedDepthPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, int a3, float a4, float a5, uint64_t a6, __CVBuffer *a7, __CVBuffer *a8)
{
  _S8 = a5;
  v13 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 0);
  memset(&v138, 0, sizeof(v138));
  v16 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(this, *MEMORY[0x277CBF3A0], &v138);
  memset(&v137, 0, sizeof(v137));
  PixelBufferUtils::asVImageBuffer(a7, *v16, &v137);
  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType > 1751410031)
    {
      if (PixelFormatType != 1751410032 && PixelFormatType != 1751411059)
      {
        if (PixelFormatType != 1932996149)
        {
          goto LABEL_158;
        }

        goto LABEL_26;
      }

LABEL_12:
      v18 = *&v138.data;
      if (v13)
      {
        if (!v138.height)
        {
          goto LABEL_155;
        }

        width = v138.width;
        if (!v138.width)
        {
          goto LABEL_155;
        }

        v20 = 0;
        _H0 = *v138.data;
        __asm { FCVT            S8, H0 }

        a4 = _S8;
        do
        {
          v26 = (v138.data + v138.rowBytes * v20);
          v27 = 1;
          do
          {
            v28 = *v26++;
            _H0 = v28;
            __asm { FCVT            S0, H0 }

            if (_S8 > _S0)
            {
              _S8 = _S0;
            }

            if (a4 < _S0)
            {
              a4 = _S0;
            }

            v31 = v138.width > v27++;
          }

          while (v31);
          ++v20;
        }

        while (v138.height > v20);
      }

      else
      {
        if (!v138.height)
        {
          goto LABEL_155;
        }

        width = v138.width;
      }

      if (width)
      {
        v73 = 0;
        v74 = a4 - _S8;
        rowBytes = v137.rowBytes;
        v76 = v137.data + 1;
        v77 = v138.rowBytes;
        do
        {
          v78 = (v18 + v77 * v73);
          v79 = 1;
          v80 = v76;
          if (a6)
          {
            do
            {
              _H3 = *v78;
              __asm { FCVT            S4, H3 }

              if (a3 && _S4 == 0.0)
              {
                v88 = 0;
              }

              else
              {
                v81 = (_S4 - _S8) / v74;
                if (v81 <= 1.0)
                {
                  v82 = (_S4 - _S8) / v74;
                }

                else
                {
                  v82 = 1.0;
                }

                v83 = v82 * 255.0;
                if (v81 >= 0.0)
                {
                  v84 = v83;
                }

                else
                {
                  v84 = 0.0;
                }

                v85 = (a6 + 12 * v84);
                v86 = *v85;
                v87 = v85[1];
                *(v80 - 1) = (v85[2] * 255.0);
                *v80 = (v87 * 255.0);
                v80[1] = (v86 * 255.0);
                v88 = -1;
              }

              v80[2] = v88;
              ++v78;
              v31 = width > v79++;
              v80 += 4;
            }

            while (v31);
          }

          else
          {
            do
            {
              _H3 = *v78;
              __asm { FCVT            S4, H3 }

              if (a3 && _S4 == 0.0)
              {
                v95 = 0;
              }

              else
              {
                v91 = (_S4 - _S8) / v74;
                if (v91 <= 1.0)
                {
                  v92 = (_S4 - _S8) / v74;
                }

                else
                {
                  v92 = 1.0;
                }

                if (v91 >= 0.0)
                {
                  v93 = v92;
                }

                else
                {
                  v93 = 0.0;
                }

                v94 = (v93 * 255.0);
                v95 = -1;
                if (v94 + 1 < 0xFF)
                {
                  v96 = v94 + 1;
                }

                else
                {
                  v96 = 255;
                }

                v97 = -((v93 * 255.0) - (v93 * 255.0));
                v98 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v94] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v96] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v94]) * v97);
                v99 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v94];
                v100 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v96] - v99;
                v101 = ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v94] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v96] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v94]) * v97)) * 255.0);
                *(v80 - 1) = ((v99 + (v100 * v97)) * 255.0);
                *v80 = v101;
                v80[1] = (v98 * 255.0);
              }

              v80[2] = v95;
              ++v78;
              v31 = width > v79++;
              v80 += 4;
            }

            while (v31);
          }

          ++v73;
          v76 += rowBytes;
        }

        while (*(&v18 + 1) > v73);
      }

      goto LABEL_155;
    }

    if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
    {
      v66 = *&v138.data;
      if (v13)
      {
        if (!v138.height)
        {
          goto LABEL_155;
        }

        v67 = v138.width;
        if (!v138.width)
        {
          goto LABEL_155;
        }

        v68 = 0;
        _S8 = *v138.data;
        a4 = *v138.data;
        do
        {
          v69 = (v138.data + v138.rowBytes * v68);
          v70 = 1;
          do
          {
            v71 = *v69++;
            v72 = v71;
            if (v71 < _S8)
            {
              _S8 = v72;
            }

            if (a4 < v72)
            {
              a4 = v72;
            }

            v31 = v138.width > v70++;
          }

          while (v31);
          ++v68;
        }

        while (v138.height > v68);
      }

      else
      {
        if (!v138.height)
        {
          goto LABEL_155;
        }

        v67 = v138.width;
      }

      if (v67)
      {
        v104 = 0;
        v105 = a4 - _S8;
        v106 = v137.rowBytes;
        v107 = v137.data + 1;
        v108 = v138.rowBytes;
        do
        {
          v109 = (v66 + v108 * v104);
          v110 = 1;
          v111 = v107;
          if (a6)
          {
            do
            {
              v120 = *v109;
              if (a3 && v120 == 0.0)
              {
                v119 = 0;
              }

              else
              {
                v112 = (v120 - _S8) / v105;
                if (v112 <= 1.0)
                {
                  v113 = v112;
                }

                else
                {
                  v113 = 1.0;
                }

                v114 = v113 * 255.0;
                if (v112 >= 0.0)
                {
                  v115 = v114;
                }

                else
                {
                  v115 = 0.0;
                }

                v116 = (a6 + 12 * v115);
                v117 = *v116;
                v118 = v116[1];
                *(v111 - 1) = (v116[2] * 255.0);
                *v111 = (v118 * 255.0);
                v111[1] = (v117 * 255.0);
                v119 = -1;
              }

              v111[2] = v119;
              ++v109;
              v31 = v67 > v110++;
              v111 += 4;
            }

            while (v31);
          }

          else
          {
            do
            {
              v132 = *v109;
              if (a3 && v132 == 0.0)
              {
                v125 = 0;
              }

              else
              {
                v121 = (v132 - _S8) / v105;
                if (v121 <= 1.0)
                {
                  v122 = v121;
                }

                else
                {
                  v122 = 1.0;
                }

                if (v121 >= 0.0)
                {
                  v123 = v122;
                }

                else
                {
                  v123 = 0.0;
                }

                v124 = (v123 * 255.0);
                v125 = -1;
                if (v124 + 1 < 0xFF)
                {
                  v126 = v124 + 1;
                }

                else
                {
                  v126 = 255;
                }

                v127 = -((v123 * 255.0) - (v123 * 255.0));
                v128 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v124] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v126] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v124]) * v127);
                v129 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v124];
                v130 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v126] - v129;
                v131 = ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v124] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v126] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v124]) * v127)) * 255.0);
                *(v111 - 1) = ((v129 + (v130 * v127)) * 255.0);
                *v111 = v131;
                v111[1] = (v128 * 255.0);
              }

              v111[2] = v125;
              ++v109;
              v31 = v67 > v110++;
              v111 += 4;
            }

            while (v31);
          }

          ++v104;
          v107 += v106;
        }

        while (*(&v66 + 1) > v104);
      }

      goto LABEL_155;
    }

LABEL_158:
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v136 >= 0)
    {
      v134 = __p;
    }

    else
    {
      v134 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "colorizedDepthPixelBuffer", 3516, PixelFormatType, v134);
    if (v136 < 0)
    {
      operator delete(__p[0]);
    }

    CVPixelBufferUnlockBaseAddress(a7, 0);
    return 0xFFFFFFFFLL;
  }

  if (PixelFormatType <= 1278226535)
  {
    if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
    {
      goto LABEL_26;
    }

    goto LABEL_158;
  }

  if (PixelFormatType == 1278226536)
  {
    goto LABEL_12;
  }

  if (PixelFormatType != 1278226742 && PixelFormatType != 1647392359)
  {
    goto LABEL_158;
  }

LABEL_26:
  v32 = *&v138.data;
  if (v13)
  {
    if (v138.height)
    {
      v33 = v138.width;
      if (v138.width)
      {
        v34 = 0;
        LOWORD(v17) = *v138.data;
        _S8 = v17;
        a4 = v17;
        do
        {
          v35 = (v138.data + v138.rowBytes * v34);
          v36 = 1;
          do
          {
            v37 = *v35++;
            v38 = v37;
            if (_S8 > v37)
            {
              _S8 = v38;
            }

            if (a4 < v38)
            {
              a4 = v38;
            }

            v31 = v138.width > v36++;
          }

          while (v31);
          ++v34;
        }

        while (v138.height > v34);
        goto LABEL_40;
      }
    }
  }

  else if (v138.height)
  {
    v33 = v138.width;
    if (v138.width)
    {
LABEL_40:
      v39 = 0;
      v40 = a4 - _S8;
      v41 = v137.rowBytes;
      v42 = v137.data + 1;
      v43 = v138.rowBytes;
      v44 = 1;
      do
      {
        if (v44)
        {
          v45 = (v32 + v43 * v39);
          v46 = 1;
          v47 = v42;
          if (a6)
          {
            do
            {
              LODWORD(v54) = *v45;
              if (!a3 || *v45)
              {
                v48 = (v54 - _S8) / v40;
                if (v48 <= 1.0)
                {
                  v49 = (v54 - _S8) / v40;
                }

                else
                {
                  v49 = 1.0;
                }

                v50 = v49 * 255.0;
                if (v48 >= 0.0)
                {
                  v51 = v50;
                }

                else
                {
                  v51 = 0.0;
                }

                v54 = (a6 + 12 * v51);
                v52 = *v54;
                v53 = v54[1];
                *(v47 - 1) = (v54[2] * 255.0);
                *v47 = (v53 * 255.0);
                v47[1] = (v52 * 255.0);
                LOBYTE(v54) = -1;
              }

              v47[2] = v54;
              ++v45;
              v31 = v33 > v46++;
              v47 += 4;
            }

            while (v31);
          }

          else
          {
            do
            {
              v59 = *v45;
              if (!a3 || *v45)
              {
                v55 = (v59 - _S8) / v40;
                if (v55 <= 1.0)
                {
                  v56 = (v59 - _S8) / v40;
                }

                else
                {
                  v56 = 1.0;
                }

                if (v55 >= 0.0)
                {
                  v57 = v56;
                }

                else
                {
                  v57 = 0.0;
                }

                v58 = (v57 * 255.0);
                LOBYTE(v59) = -1;
                if (v58 + 1 < 0xFF)
                {
                  v60 = v58 + 1;
                }

                else
                {
                  v60 = 255;
                }

                v61 = -((v57 * 255.0) - (v57 * 255.0));
                v62 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v58] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v60] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::redMap[v58]) * v61);
                v63 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v58];
                v64 = PixelBufferUtils::getTurboColor(float,float &,float &,float &)::blueMap[v60] - v63;
                v65 = ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v58] + ((PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v60] - PixelBufferUtils::getTurboColor(float,float &,float &,float &)::greenMap[v58]) * v61)) * 255.0);
                *(v47 - 1) = ((v63 + (v64 * v61)) * 255.0);
                *v47 = v65;
                v47[1] = (v62 * 255.0);
              }

              v47[2] = v59;
              ++v45;
              v31 = v33 > v46++;
              v47 += 4;
            }

            while (v31);
          }

          v44 = v33;
        }

        ++v39;
        v42 += v41;
      }

      while (*(&v32 + 1) > v39);
    }
  }

LABEL_155:
  CVPixelBufferUnlockBaseAddress(this, 1uLL);
  if (a7)
  {
    CVPixelBufferUnlockBaseAddress(a7, 0);
  }

  return 0;
}

void sub_2403EDFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CVPixelBufferRef PixelBufferUtils::createColorizedDepthPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer **a3, float a4, float a5, uint64_t a6, __CVBuffer *a7, __CVBuffer *a8, float a9)
{
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v19 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v19, Width, Height, 0x42475241u, BufferAttributes, &pixelBufferOut))
  {
    v22 = 0;
  }

  else
  {
    v22 = pixelBufferOut;
  }

  texture = v22;
  if (PixelBufferUtils::colorizedDepthPixelBuffer(this, a2, a3, a5, a4, a6, v22, v21))
  {
    CVPixelBufferRelease(v22);
    v22 = 0;
    texture = 0;
  }

  if (a7)
  {
    v23 = CVPixelBufferGetWidth(a7);
    v24 = CVPixelBufferGetHeight(a7);
    pixelBufferOut = 0;
    v25 = getBufferAttributes();
    if (CVPixelBufferCreate(v19, v23, v24, 0x42475241u, v25, &pixelBufferOut))
    {
      v26 = 0;
    }

    else
    {
      v26 = pixelBufferOut;
    }

    if (PixelBufferUtils::convertPixelBufferFormat(a7, v26, 0))
    {
      CVPixelBufferRelease(v26);
    }

    else if (v26)
    {
      *&v27 = a9;
      v31 = PixelBufferUtils::alphaBlend(v26, v22, &texture, v27, a3);
      CVPixelBufferRelease(v26);
      if (v31)
      {
        return texture;
      }

      goto LABEL_13;
    }

    CVPixelBufferRelease(v22);
    texture = 0;
    *&v28 = a9;
    v29 = PixelBufferUtils::alphaBlend(0, 0, &texture, v28, a3);
    CVPixelBufferRelease(0);
    if ((v29 & 1) == 0)
    {
LABEL_13:
      CVPixelBufferRelease(texture);
      return 0;
    }
  }

  return texture;
}

uint64_t PixelBufferUtils::alphaBlend(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer **a3, double a4, __CVBuffer **a5)
{
  v5 = a5;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  v12 = CVPixelBufferGetPixelFormatType(a2);
  v13 = CVPixelBufferGetWidth(a2);
  v14 = CVPixelBufferGetHeight(a2);
  if (PixelFormatType == v12 && Width == v13 && Height == v14)
  {
    v15 = *a3;
    if (!*a3)
    {
      v16 = CVPixelBufferGetWidth(this);
      v17 = CVPixelBufferGetHeight(this);
      pixelBufferOut[0] = 0;
      v18 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      if (CVPixelBufferCreate(v18, v16, v17, PixelFormatType, BufferAttributes, pixelBufferOut))
      {
        v15 = 0;
      }

      else
      {
        v15 = pixelBufferOut[0];
      }

      *a3 = v15;
    }

    v292 = v15;
    pixelBuffer = a2;
    if (PixelFormatType <= 1380401728)
    {
      if (PixelFormatType > 875704437)
      {
        if (PixelFormatType > 1111970368)
        {
          if (PixelFormatType != 1111970369)
          {
            if (PixelFormatType != 1278226534)
            {
              if (PixelFormatType != 1278226536)
              {
                goto LABEL_299;
              }

LABEL_68:
              v62 = CVPixelBufferGetWidth(this);
              v63 = CVPixelBufferGetHeight(this);
              CVPixelBufferLockBaseAddress(v15, 0);
              CVPixelBufferLockBaseAddress(this, 1uLL);
              CVPixelBufferLockBaseAddress(a2, 1uLL);
              BytesPerRow = CVPixelBufferGetBytesPerRow(this);
              v65 = CVPixelBufferGetBytesPerRow(a2);
              v66 = CVPixelBufferGetBytesPerRow(v15);
              BaseAddress = CVPixelBufferGetBaseAddress(this);
              v68 = CVPixelBufferGetBaseAddress(a2);
              v69 = CVPixelBufferGetBaseAddress(v15);
              v70 = CVPixelBufferGetPixelFormatType(this);
              v71 = PixelBufferUtils::componentsPerPixelForPixelFormat(v70, 0);
              v72 = v71 * v62;
              if (v5)
              {
                if (v63 && v72)
                {
                  for (i = 0; i != v63; ++i)
                  {
                    v74 = BaseAddress + i * BytesPerRow;
                    v75 = v68 + i * v65;
                    v76 = v71 * v62;
                    v77 = &v69[i * v66];
                    do
                    {
                      __asm { FCMP            H1, #0 }

                      if (_ZF)
                      {
                        _H1 = *v74;
                      }

                      else
                      {
                        __asm { FCVT            S1, H1 }

                        _H2 = *v74;
                        __asm { FCVT            S2, H2 }

                        _S1 = ((1.0 - *&a4) * _S1) + (_S2 * *&a4);
                        __asm { FCVT            H1, S1 }
                      }

                      *v77 = _H1;
                      v77 += 2;
                      v74 += 2;
                      v75 += 2;
                      --v76;
                    }

                    while (v76);
                  }
                }

                goto LABEL_297;
              }

              if (v63 && v72)
              {
                v86 = 0;
                v87 = 1.0 - *&a4;
                v88 = &v69[2 * v72 + v66 * (v63 - 1)];
                v91 = v69 < BaseAddress + 2 * v72 + BytesPerRow * (v63 - 1) && BaseAddress < v88 || ((v66 | BytesPerRow) & 0x8000000000000000) != 0;
                v94 = v69 < v68 + 2 * v72 + v65 * (v63 - 1) && v68 < v88 || ((v66 | v65) & 0x8000000000000000) != 0 || v91;
                v95 = 2 * (v72 & 0xFFFFFFFFFFFFFFF8);
                v96 = vdupq_lane_s32(*&a4, 0);
                v97 = (v69 + 8);
                v98 = BaseAddress + 1;
                v99 = v68 + 1;
                do
                {
                  v100 = BaseAddress + v86 * BytesPerRow;
                  v101 = v68 + v86 * v65;
                  v102 = &v69[v86 * v66];
                  if (v72 < 8 || (v94 & 1) != 0)
                  {
                    v103 = 0;
                  }

                  else
                  {
                    v101 += v95;
                    v112 = v99;
                    v113 = v98;
                    v114 = v97;
                    v115 = v72 & 0xFFFFFFFFFFFFFFF8;
                    do
                    {
                      v116 = vcvt_f16_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_f16(*v112), v87), v96, vcvtq_f32_f16(*v113)));
                      v114[-1] = vcvt_f16_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_f16(v112[-1]), v87), v96, vcvtq_f32_f16(v113[-1])));
                      *v114 = v116;
                      v114 += 2;
                      v113 += 2;
                      v112 += 2;
                      v115 -= 8;
                    }

                    while (v115);
                    if (v72 == (v72 & 0xFFFFFFFFFFFFFFF8))
                    {
                      goto LABEL_99;
                    }

                    v102 += v95;
                    v100 += v95;
                    v103 = v72 & 0xFFFFFFFFFFFFFFF8;
                  }

                  v104 = v72 - v103;
                  do
                  {
                    v105 = *v100;
                    v100 += 2;
                    _H2 = v105;
                    __asm { FCVT            S2, H2 }

                    v108 = *v101;
                    v101 += 2;
                    _H3 = v108;
                    __asm { FCVT            S3, H3 }

                    _S2 = (v87 * _S3) + (_S2 * *&a4);
                    __asm { FCVT            H2, S2 }

                    *v102 = LOWORD(_S2);
                    v102 += 2;
                    --v104;
                  }

                  while (v104);
LABEL_99:
                  ++v86;
                  v97 = (v97 + v66);
                  v98 = (v98 + BytesPerRow);
                  v99 = (v99 + v65);
                }

                while (v86 != v63);
              }

LABEL_297:
              v20 = 1;
              CVPixelBufferUnlockBaseAddress(this, 1uLL);
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
              CVPixelBufferUnlockBaseAddress(v292, 0);
              return v20;
            }

            goto LABEL_196;
          }

          goto LABEL_113;
        }

        if (PixelFormatType != 875704438)
        {
          v23 = 1094862674;
          goto LABEL_112;
        }

        goto LABEL_113;
      }

      if (PixelFormatType > 843264103)
      {
        if (PixelFormatType == 843264104)
        {
          goto LABEL_68;
        }

        v23 = 875704422;
LABEL_112:
        if (PixelFormatType == v23)
        {
          goto LABEL_113;
        }

LABEL_299:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, pixelBufferOut);
        if (v296 >= 0)
        {
          v291 = pixelBufferOut;
        }

        else
        {
          v291 = pixelBufferOut[0];
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "alphaBlend", 4246, PixelFormatType, v291, v15, a2);
        if (v296 < 0)
        {
          operator delete(pixelBufferOut[0]);
        }

        return 0;
      }

      if (PixelFormatType == 32)
      {
LABEL_113:
        v117 = CVPixelBufferGetWidth(this);
        v118 = CVPixelBufferGetHeight(this);
        CVPixelBufferLockBaseAddress(v15, 0);
        CVPixelBufferLockBaseAddress(this, 1uLL);
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        v119 = CVPixelBufferGetBytesPerRow(this);
        v120 = CVPixelBufferGetBytesPerRow(a2);
        v121 = CVPixelBufferGetBytesPerRow(v15);
        v122 = CVPixelBufferGetBaseAddress(this);
        v123 = CVPixelBufferGetBaseAddress(a2);
        v124 = CVPixelBufferGetBaseAddress(v15);
        v125 = CVPixelBufferGetPixelFormatType(this);
        v126 = PixelBufferUtils::componentsPerPixelForPixelFormat(v125, 0) * v117;
        if (v5)
        {
          if (!v118 || !v126)
          {
            goto LABEL_297;
          }

          v131 = 0;
          *v127.i32 = 1.0 - *&a4;
          v132 = &v124[v126 + v121 * (v118 - 1)];
          v135 = v124 < &v123->i8[v126 + v120 * (v118 - 1)] && v123 < v132 || ((v121 | v120) & 0x8000000000000000) != 0;
          v138 = v124 < &v122->i8[v126 + v119 * (v118 - 1)] && v122 < v132 || ((v121 | v119) & 0x8000000000000000) != 0 || v135;
          v139 = v126 & 0xFFFFFFFFFFFFFFF0;
          v140 = vdupq_lane_s32(*&a4, 0);
          v141 = v126 & 0xFFFFFFFFFFFFFFFCLL;
          v142 = v124;
          v143 = v123;
          v144 = v122;
          while (1)
          {
            v145 = &v122->i8[v131 * v119];
            v146 = &v123->i8[v131 * v120];
            v147 = &v124[v131 * v121];
            if (v126 < 4 || (v138 & 1) != 0)
            {
              v148 = 0;
              goto LABEL_139;
            }

            if (v126 >= 0x10)
            {
              v152 = v142;
              v153 = v143;
              v154 = v144;
              v155 = v126 & 0xFFFFFFFFFFFFFFF0;
              do
              {
                v156 = *v153++;
                v157 = v156;
                v158 = vceqzq_s8(v156);
                v159 = *v154++;
                v130.i32[1] = v159.i32[1];
                v297.val[3] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v157, xmmword_240407010)), *v127.i32), v140, vcvtq_f32_u32(vqtbl1q_s8(v159, xmmword_240407010))));
                v297.val[2] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v157, xmmword_240407000)), *v127.i32), v140, vcvtq_f32_u32(vqtbl1q_s8(v159, xmmword_240407000))));
                v297.val[1] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v157, xmmword_240407030)), *v127.i32), v140, vcvtq_f32_u32(vqtbl1q_s8(v159, xmmword_240407030))));
                v297.val[0] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v157, xmmword_240407020)), *v127.i32), v140, vcvtq_f32_u32(vqtbl1q_s8(v159, xmmword_240407020))));
                v128 = vbslq_s8(v158, v159, vqtbl4q_s8(v297, xmmword_240407040));
                *v152++ = v128;
                v155 -= 16;
              }

              while (v155);
              if (v126 == v139)
              {
                goto LABEL_135;
              }

              v151 = v126 & 0xFFFFFFFFFFFFFFF0;
              if ((v126 & 0xC) == 0)
              {
                v145 += v139;
                v146 += v139;
                v147 += v139;
                v148 = v126 & 0xFFFFFFFFFFFFFFF0;
LABEL_139:
                v149 = v126 - v148;
                do
                {
                  v150 = *v145;
                  if (*v146)
                  {
                    v150 = ((*v127.i32 * *v146) + (v150 * *&a4));
                  }

                  *v147++ = v150;
                  ++v145;
                  ++v146;
                  --v149;
                }

                while (v149);
                goto LABEL_135;
              }
            }

            else
            {
              v151 = 0;
            }

            v146 += v141;
            do
            {
              v128.i32[0] = *(v143->i32 + v151);
              v160 = vmovl_u8(*v128.i8).u64[0];
              v130.i32[0] = *(v144->i32 + v151);
              v130 = vmovl_u8(v130).u64[0];
              *v128.i8 = vuzp1_s8(vbsl_s8(vceqz_s16(v160), v130, vmovn_s32(vcvtq_s32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(v160)), *v127.i32), v140, vcvtq_f32_u32(vmovl_u16(v130)))))), v127);
              *(v142->i32 + v151) = v128.i32[0];
              v151 += 4;
            }

            while (v141 != v151);
            if (v126 != v141)
            {
              v147 += v141;
              v145 += v141;
              v148 = v126 & 0xFFFFFFFFFFFFFFFCLL;
              goto LABEL_139;
            }

LABEL_135:
            ++v131;
            v144 = (v144 + v119);
            v143 = (v143 + v120);
            v142 = (v142 + v121);
            if (v131 == v118)
            {
              goto LABEL_297;
            }
          }
        }

        if (!v118 || !v126)
        {
          goto LABEL_297;
        }

        v161 = 0;
        *v127.i32 = 1.0 - *&a4;
        v162 = &v124[v126 + v121 * (v118 - 1)];
        v165 = v124 < &v122->i8[v126 + v119 * (v118 - 1)] && v122 < v162 || ((v121 | v119) & 0x8000000000000000) != 0;
        v168 = v124 < &v123->i8[v126 + v120 * (v118 - 1)] && v123 < v162 || ((v121 | v120) & 0x8000000000000000) != 0 || v165;
        v169 = v126 & 0xFFFFFFFFFFFFFFF0;
        v170 = vdupq_lane_s32(*&a4, 0);
        v171 = v126 & 0xFFFFFFFFFFFFFFFCLL;
        v172 = v124;
        v173 = v123;
        v174 = v122;
        while (1)
        {
          v175 = &v122->i8[v161 * v119];
          v176 = &v123->i8[v161 * v120];
          v177 = &v124[v161 * v121];
          if (v126 < 4 || (v168 & 1) != 0)
          {
            v178 = 0;
            goto LABEL_179;
          }

          if (v126 >= 0x10)
          {
            v184 = v172;
            v185 = v173;
            v186 = v174;
            v187 = v126 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v188 = *v186++;
              v189 = vcvtq_f32_u32(vqtbl1q_s8(v188, xmmword_240407010));
              v190 = vcvtq_f32_u32(vqtbl1q_s8(v188, xmmword_240407000));
              v191 = vcvtq_f32_u32(vqtbl1q_s8(v188, xmmword_240407030));
              v129 = vcvtq_f32_u32(vqtbl1q_s8(v188, xmmword_240407020));
              v192 = *v185++;
              v298.val[3] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v192, xmmword_240407010)), *v127.i32), v170, v189));
              v298.val[2] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v192, xmmword_240407000)), *v127.i32), v170, v190));
              v298.val[1] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v192, xmmword_240407030)), *v127.i32), v170, v191));
              v298.val[0] = vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vqtbl1q_s8(v192, xmmword_240407020)), *v127.i32), v170, v129));
              v128 = vqtbl4q_s8(v298, xmmword_240407040);
              *v184++ = v128;
              v187 -= 16;
            }

            while (v187);
            if (v126 == v169)
            {
              goto LABEL_175;
            }

            v183 = v126 & 0xFFFFFFFFFFFFFFF0;
            if ((v126 & 0xC) == 0)
            {
              v175 += v169;
              v176 += v169;
              v177 += v169;
              v178 = v126 & 0xFFFFFFFFFFFFFFF0;
              goto LABEL_179;
            }
          }

          else
          {
            v183 = 0;
          }

          v176 += v171;
          do
          {
            v128.i32[0] = *(v174->i32 + v183);
            v129.i32[0] = *(v173->i32 + v183);
            v129 = vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v129.f32))), *v127.i32), v170, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v128.i8))));
            *v128.i8 = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(v129)), v127);
            *(v172->i32 + v183) = v128.i32[0];
            v183 += 4;
          }

          while (v171 != v183);
          if (v126 == v171)
          {
            goto LABEL_175;
          }

          v177 += v171;
          v175 += v171;
          v178 = v126 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_179:
          v179 = v126 - v178;
          do
          {
            v180 = *v175++;
            v181 = v180;
            v182 = *v176++;
            *v177++ = ((*v127.i32 * v182) + (v181 * *&a4));
            --v179;
          }

          while (v179);
LABEL_175:
          ++v161;
          v174 = (v174 + v119);
          v173 = (v173 + v120);
          v172 = (v172 + v121);
          if (v161 == v118)
          {
            goto LABEL_297;
          }
        }
      }

      v22 = 825437747;
      goto LABEL_33;
    }

    if (PixelFormatType <= 1717855599)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType == 1380411457)
        {
          goto LABEL_68;
        }

        v22 = 1647392359;
LABEL_33:
        if (PixelFormatType != v22)
        {
          goto LABEL_299;
        }

        v24 = CVPixelBufferGetWidth(this);
        v25 = CVPixelBufferGetHeight(this);
        CVPixelBufferLockBaseAddress(v15, 0);
        CVPixelBufferLockBaseAddress(this, 1uLL);
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        v26 = CVPixelBufferGetBytesPerRow(this);
        v27 = CVPixelBufferGetBytesPerRow(a2);
        v28 = CVPixelBufferGetBytesPerRow(v15);
        v29 = CVPixelBufferGetBaseAddress(this);
        v30 = CVPixelBufferGetBaseAddress(a2);
        v31 = CVPixelBufferGetBaseAddress(v15);
        v32 = CVPixelBufferGetPixelFormatType(this);
        v33 = PixelBufferUtils::componentsPerPixelForPixelFormat(v32, 0) * v24;
        if (v5)
        {
          if (!v25 || !v33)
          {
            goto LABEL_297;
          }

          v34 = 0;
          v35 = 1.0 - *&a4;
          v36 = v31 + 2 * v33 + v28 * (v25 - 1);
          v39 = v31 < (v30 + 2 * v33 + v27 * (v25 - 1)) && v30 < v36 || ((v28 | v27) & 0x8000000000000000) != 0;
          v42 = v31 < (v29 + 2 * v33 + v26 * (v25 - 1)) && v29 < v36 || ((v28 | v26) & 0x8000000000000000) != 0 || v39;
          v43 = 2 * (v33 & 0xFFFFFFFFFFFFFFF8);
          v44 = vdupq_lane_s32(*&a4, 0);
          v45 = v31;
          v46 = v30;
          v47 = v29;
          while (1)
          {
            v48 = &v29->i8[v34 * v26];
            v49 = &v30->i8[v34 * v27];
            v50 = &v31->i8[v34 * v28];
            if (v33 < 8 || (v42 & 1) != 0)
            {
              break;
            }

            v49 += v43;
            v54 = v45;
            v55 = v46;
            v56 = v47;
            v57 = v33 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v58 = *v55++;
              v59 = v58;
              v60 = vceqzq_s16(v58);
              v61 = *v56++;
              *v54++ = vbslq_s8(v60, v61, vuzp1q_s16(vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v59.i8)), v35), v44, vcvtq_f32_u32(vmovl_u16(*v61.i8)))), vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v59)), v35), v44, vcvtq_f32_u32(vmovl_high_u16(v61))))));
              v57 -= 8;
            }

            while (v57);
            if (v33 != (v33 & 0xFFFFFFFFFFFFFFF8))
            {
              v50 += v43;
              v48 += v43;
              v51 = v33 & 0xFFFFFFFFFFFFFFF8;
LABEL_60:
              v52 = v33 - v51;
              do
              {
                v53 = *v48;
                if (*v49)
                {
                  v53 = ((v35 * *v49) + (v53 * *&a4));
                }

                *v50 = v53;
                v50 += 2;
                v48 += 2;
                v49 += 2;
                --v52;
              }

              while (v52);
            }

            ++v34;
            v47 = (v47 + v26);
            v46 = (v46 + v27);
            v45 = (v45 + v28);
            if (v34 == v25)
            {
              goto LABEL_297;
            }
          }

          v51 = 0;
          goto LABEL_60;
        }

        if (!v25 || !v33)
        {
          goto LABEL_297;
        }

        v260 = 0;
        v261 = 1.0 - *&a4;
        v262 = v31 + 2 * v33 + v28 * (v25 - 1);
        v265 = v31 < (v29 + 2 * v33 + v26 * (v25 - 1)) && v29 < v262 || ((v28 | v26) & 0x8000000000000000) != 0;
        v268 = v31 < (v30 + 2 * v33 + v27 * (v25 - 1)) && v30 < v262 || ((v28 | v27) & 0x8000000000000000) != 0 || v265;
        v269 = 2 * (v33 & 0xFFFFFFFFFFFFFFF8);
        v270 = vdupq_lane_s32(*&a4, 0);
        v271 = v31;
        v272 = v30;
        v273 = v29;
        while (1)
        {
          v274 = &v29->i8[v260 * v26];
          v275 = &v30->i8[v260 * v27];
          v276 = &v31->i8[v260 * v28];
          if (v33 < 8 || (v268 & 1) != 0)
          {
            v277 = 0;
          }

          else
          {
            v275 += v269;
            v282 = v271;
            v283 = v272;
            v284 = v273;
            v285 = v33 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v286 = *v284++;
              v287 = vcvtq_f32_u32(vmovl_high_u16(v286));
              v288 = vcvtq_f32_u32(vmovl_u16(*v286.i8));
              v289 = *v283++;
              *v282++ = vuzp1q_s16(vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v289.i8)), v261), v270, v288)), vcvtq_u32_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v289)), v261), v270, v287)));
              v285 -= 8;
            }

            while (v285);
            if (v33 == (v33 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_286;
            }

            v276 += v269;
            v274 += v269;
            v277 = v33 & 0xFFFFFFFFFFFFFFF8;
          }

          v278 = v33 - v277;
          do
          {
            v279 = *v274;
            v274 += 2;
            v280 = v279;
            v281 = *v275;
            v275 += 2;
            *v276 = ((v261 * v281) + (v280 * *&a4));
            v276 += 2;
            --v278;
          }

          while (v278);
LABEL_286:
          ++v260;
          v273 = (v273 + v26);
          v272 = (v272 + v27);
          v271 = (v271 + v28);
          if (v260 == v25)
          {
            goto LABEL_297;
          }
        }
      }

      if (PixelFormatType == 1380401729)
      {
        goto LABEL_113;
      }

      v21 = 1380410945;
    }

    else if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType == 1717855600)
      {
        goto LABEL_196;
      }

      v21 = 1717856627;
    }

    else
    {
      if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
      {
        goto LABEL_68;
      }

      v21 = 1919365990;
    }

    if (PixelFormatType != v21)
    {
      goto LABEL_299;
    }

LABEL_196:
    v193 = CVPixelBufferGetWidth(this);
    v194 = CVPixelBufferGetHeight(this);
    CVPixelBufferLockBaseAddress(v15, 0);
    CVPixelBufferLockBaseAddress(this, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    v195 = CVPixelBufferGetBytesPerRow(this);
    v196 = CVPixelBufferGetBytesPerRow(a2);
    v197 = CVPixelBufferGetBytesPerRow(v15);
    v198 = CVPixelBufferGetBaseAddress(this);
    v199 = CVPixelBufferGetBaseAddress(a2);
    v200 = CVPixelBufferGetBaseAddress(v15);
    v201 = CVPixelBufferGetPixelFormatType(this);
    v202 = PixelBufferUtils::componentsPerPixelForPixelFormat(v201, 0) * v193;
    if (v5)
    {
      if (!v194 || !v202)
      {
        goto LABEL_297;
      }

      v203 = 0;
      v204 = 1.0 - *&a4;
      v205 = &v200[4 * v202 + v197 * (v194 - 1)];
      v208 = v200 < &v199->i8[4 * v202 + v196 * (v194 - 1)] && v199 < v205 || ((v197 | v196) & 0x8000000000000000) != 0;
      v211 = v200 < &v198->i8[4 * v202 + v195 * (v194 - 1)] && v198 < v205 || ((v197 | v195) & 0x8000000000000000) != 0 || v208;
      v212 = 4 * (v202 & 0xFFFFFFFFFFFFFFF8);
      v213 = vdupq_lane_s32(*&a4, 0);
      v214 = (v200 + 16);
      v215 = v198 + 1;
      v216 = v199 + 1;
      while (1)
      {
        v217 = (v198->i32 + v203 * v195);
        v218 = (v199->f32 + v203 * v196);
        v219 = &v200[v203 * v197];
        if (v202 < 8 || (v211 & 1) != 0)
        {
          break;
        }

        v218 = (v218 + v212);
        v228 = v216;
        v229 = v215;
        v230 = v214;
        v231 = v202 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v232 = vbslq_s8(vceqzq_f32(*v228), *v229, vmlaq_f32(vmulq_n_f32(*v228, v204), v213, *v229));
          v230[-1] = vbslq_s8(vceqzq_f32(v228[-1]), v229[-1], vmlaq_f32(vmulq_n_f32(v228[-1], v204), v213, v229[-1]));
          *v230 = v232;
          v230 += 2;
          v229 += 2;
          v228 += 2;
          v231 -= 8;
        }

        while (v231);
        if (v202 != (v202 & 0xFFFFFFFFFFFFFFF8))
        {
          v219 = (v219 + v212);
          v217 = (v217 + v212);
          v220 = v202 & 0xFFFFFFFFFFFFFFF8;
LABEL_222:
          v221 = v202 - v220;
          do
          {
            v222 = *v218++;
            v223 = v222;
            v224 = *v217++;
            v225 = v224;
            v226 = (v204 * v223) + (v224 * *&a4);
            if (v223 == 0.0)
            {
              v227 = v225;
            }

            else
            {
              v227 = v226;
            }

            *v219++ = v227;
            --v221;
          }

          while (v221);
        }

        ++v203;
        v214 = (v214 + v197);
        v215 = (v215 + v195);
        v216 = (v216 + v196);
        if (v203 == v194)
        {
          goto LABEL_297;
        }
      }

      v220 = 0;
      goto LABEL_222;
    }

    if (!v194 || !v202)
    {
      goto LABEL_297;
    }

    v233 = 0;
    v234 = 1.0 - *&a4;
    v235 = &v200[4 * v202 + v197 * (v194 - 1)];
    v238 = v200 < &v198->i8[4 * v202 + v195 * (v194 - 1)] && v198 < v235 || ((v197 | v195) & 0x8000000000000000) != 0;
    v241 = v200 < &v199->i8[4 * v202 + v196 * (v194 - 1)] && v199 < v235 || ((v197 | v196) & 0x8000000000000000) != 0 || v238;
    v242 = 4 * (v202 & 0xFFFFFFFFFFFFFFF8);
    v243 = vdupq_lane_s32(*&a4, 0);
    v244 = (v200 + 16);
    v245 = &v198[1];
    v246 = v199 + 1;
    while (1)
    {
      v247 = (v198->i32 + v233 * v195);
      v248 = (v199->f32 + v233 * v196);
      v249 = &v200[v233 * v197];
      if (v202 < 8 || (v241 & 1) != 0)
      {
        v250 = 0;
      }

      else
      {
        v248 = (v248 + v242);
        v255 = v246;
        v256 = v245;
        v257 = v244;
        v258 = v202 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v259 = vmlaq_f32(vmulq_n_f32(*v255, v234), v243, *v256);
          v257[-1] = vmlaq_f32(vmulq_n_f32(v255[-1], v234), v243, v256[-1]);
          *v257 = v259;
          v257 += 2;
          v256 += 2;
          v255 += 2;
          v258 -= 8;
        }

        while (v258);
        if (v202 == (v202 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_253;
        }

        v249 = (v249 + v242);
        v247 = (v247 + v242);
        v250 = v202 & 0xFFFFFFFFFFFFFFF8;
      }

      v251 = v202 - v250;
      do
      {
        v252 = *v247++;
        v253 = v252;
        v254 = *v248++;
        *v249++ = (v234 * v254) + (v253 * *&a4);
        --v251;
      }

      while (v251);
LABEL_253:
      ++v233;
      v244 = (v244 + v197);
      v245 = (v245 + v195);
      v246 = (v246 + v196);
      if (v233 == v194)
      {
        goto LABEL_297;
      }
    }
  }

  NSLog(&cfstr_SDErrorCannotA.isa, "alphaBlend", 4195);
  return 0;
}

void sub_2403EF350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PixelBufferUtils::colorizePointCloudOnPixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, unint64_t a3, const CGPoint *a4, const float *a5, float a6, float a7, float a8)
{
  if (a8 <= 0.0)
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
  }

  operator new[]();
}

void sub_2403EF610(_Unwind_Exception *a1)
{
  MEMORY[0x245CBFC90](v5, v1);
  MEMORY[0x245CBFC90](v4, v1);
  MEMORY[0x245CBFC90](v3, v1);
  MEMORY[0x245CBFC90](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t PixelBufferUtils::addCirclesToPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, float a3, uint64_t a4, CGPoint *a5, float *a6, float *a7, float *a8, const float *a9)
{
  if (!this || !a4 || (v9 = a5) == 0 || (v10 = a6) == 0 || (v11 = a7) == 0 || (v12 = a8) == 0)
  {
    NSLog(&cfstr_SDErrorCannotA_2.isa, a2, a4, a5, a6, a7, a8, a9, "addCirclesToPixelBuffer", 4330);
    return 0;
  }

  v13 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  if (PixelFormatType != 1111970369)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v40 >= 0)
    {
      v37 = __p;
    }

    else
    {
      v37 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "addCirclesToPixelBuffer", 4340, PixelFormatType, v37);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v19 = Height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(this, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v23 = CGBitmapContextCreate(BaseAddress, Width, v19, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
  if (v13)
  {
    v24 = v19;
    v25 = (a4 + 8);
    do
    {
      v26 = *(v25 - 1);
      v27 = v24 - *v25;
      v28 = *v9++;
      v29 = v28;
      v30 = *v10++;
      v31 = v30;
      v32 = *v11++;
      v33 = v32;
      v34 = *v12++;
      GenericRGB = CGColorCreateGenericRGB(v29, v31, v33, v34);
      CGContextSetFillColorWithColor(v23, GenericRGB);
      v41.origin.x = (v26 - a3);
      v41.origin.y = (v27 - a3);
      v41.size.width = (a3 + a3);
      v41.size.height = v41.size.width;
      CGContextFillEllipseInRect(v23, v41);
      CFRelease(GenericRGB);
      v25 += 2;
      v13 = (v13 - 1);
    }

    while (v13);
  }

  CVPixelBufferUnlockBaseAddress(this, 0);
  CFRelease(DeviceRGB);
  CGContextRelease(v23);
  return 1;
}

void sub_2403EF89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::createColorizedPointCloud(PixelBufferUtils *this, unint64_t a2, const CGPoint *a3, const float *a4, size_t a5, const float *a6, float a7, float a8, float a9)
{
  pixelBufferOut = 0;
  v18 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v21 = CVPixelBufferCreate(v18, a4, a5, 0x42475241u, BufferAttributes, &pixelBufferOut);
  result = 0;
  v23 = pixelBufferOut;
  if (v21)
  {
    v24 = 1;
  }

  else
  {
    v24 = pixelBufferOut == 0;
  }

  if (!v24)
  {
    PixelBufferUtils::blacken(pixelBufferOut, v20);
    PixelBufferUtils::colorizePointCloudOnPixelBuffer(v23, this, a2, a3, a6, a7, a8, a9);
  }

  return result;
}

__CVBuffer *PixelBufferUtils::createPixelBufferCopy(PixelBufferUtils *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v8 = 0;
  }

  else
  {
    v8 = pixelBufferOut;
  }

  v9 = CVPixelBufferGetPixelFormatType(this);
  if (v9 != CVPixelBufferGetPixelFormatType(v8) || copyPixelBufferVImage(v8, *MEMORY[0x277CBF348], this, *MEMORY[0x277CBF3A0]))
  {
    CVPixelBufferRelease(v8);
    return 0;
  }

  return v8;
}

CVPixelBufferRef PixelBufferUtils::asPixelBuffer(unint64_t this, size_t a2, PixelBufferUtils *a3, char *a4, void *a5)
{
  planeWidth[3] = *MEMORY[0x277D85DE8];
  if (PixelBufferUtils::planeCountForPixelFormat(a3))
  {
    v25 = 0;
    v9 = PixelBufferUtils::planeCountForPixelFormat(a3);
    if ((v9 - 4) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v12 = v9;
      planeWidth[1] = this;
      planeWidth[2] = this;
      planeHeight[1] = a2;
      planeHeight[2] = a2;
      v27[1] = this;
      v27[2] = this;
      planeBaseAddress[1] = 0;
      planeBaseAddress[2] = 0;
      planeBaseAddress[0] = a4;
      v13 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a3, 0);
      v14 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a3, 0);
      v15 = PixelBufferUtils::pixelSizeForPixelFormat(a3, 0) / v13 * this;
      v27[0] = v15;
      v24 = a2;
      planeWidth[0] = this / v13;
      v16 = a2 / v14;
      planeHeight[0] = a2 / v14;
      if (v12 != 1)
      {
        v17 = 1;
        do
        {
          v18 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a3, v17);
          v19 = v12;
          v20 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a3, v17);
          v21 = v27[v17] * (PixelBufferUtils::pixelSizeForPixelFormat(a3, v17) / v18);
          v27[v17] = v21;
          planeWidth[v17] /= v18;
          a4 += v16 * v15;
          v16 = planeHeight[v17] / v20;
          v12 = v19;
          planeHeight[v17] = v16;
          planeBaseAddress[v17++] = a4;
          v15 = v21;
        }

        while (v19 != v17);
      }

      v22 = *MEMORY[0x277CBECE8];
      BufferAttributes = getBufferAttributes();
      CVPixelBufferCreateWithPlanarBytes(v22, this, v24, a3, 0, 0, v12, planeBaseAddress, planeWidth, planeHeight, v27, 0, 0, BufferAttributes, &v25);
      return v25;
    }

    else
    {
      NSLog(&cfstr_SDErrorOnlyUpT.isa, "asPixelBufferMultiPlane", 3707);
      return 0;
    }
  }

  else
  {
    planeWidth[0] = 0;
    v11 = PixelBufferUtils::pixelSizeForPixelFormat(a3, 0);
    CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], this, a2, a3, a4, v11 * this, 0, 0, 0, planeWidth);
    return planeWidth[0];
  }
}

void PixelBufferUtils::inPlaceColorScaling(PixelBufferUtils *this, __CVBuffer *a2, float a3, float a4, int a5)
{
  v45 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v9 = PixelFormatType;
  if (PixelFormatType <= 1380401728)
  {
    if (PixelFormatType <= 875704437)
    {
      if (PixelFormatType > 825437746)
      {
        if (PixelFormatType != 825437747)
        {
          if (PixelFormatType != 843264104)
          {
            if (PixelFormatType != 875704422)
            {
              goto LABEL_85;
            }

            goto LABEL_77;
          }

          goto LABEL_65;
        }

        goto LABEL_25;
      }

      if (PixelFormatType != 32)
      {
        v11 = 825306677;
LABEL_24:
        if (PixelFormatType == v11)
        {
LABEL_25:
          CVPixelBufferLockBaseAddress(this, 0);
          v46 = CVPixelBufferGetPixelFormatType(this);
          PlaneCount = CVPixelBufferGetPlaneCount(this);
          v13 = PlaneCount;
          v14 = 0;
          v15 = 0;
          if (PlaneCount <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = PlaneCount;
          }

          v17 = MEMORY[0x277CBF3A0];
          do
          {
            if (v13)
            {
              PixelBufferUtils::asVImageBuffer(this, v14, *v17, &__p);
            }

            else
            {
              PixelBufferUtils::asVImageBuffer(this, *v17, &__p);
              v14 = 0;
            }

            data = __p.data;
            height = __p.height;
            width = __p.width;
            rowBytes = __p.rowBytes;
            v22 = PixelBufferUtils::componentsPerPixelForPixelFormat(v46, v14);
            if (height)
            {
              v24 = width * v22;
              if (width * v22)
              {
                if (v45)
                {
                  for (i = 0; i != height; ++i)
                  {
                    v26 = 0;
                    do
                    {
                      if (v26 % v22 != 0x7FFFFFFF)
                      {
                        LOWORD(v23) = *&data[2 * v26];
                        v23 = a4 + (LODWORD(v23) * a3);
                        *&data[2 * v26] = v23;
                      }

                      ++v26;
                    }

                    while (v24 != v26);
                    data += rowBytes;
                  }
                }

                else
                {
                  for (j = 0; j != height; ++j)
                  {
                    v28 = 0;
                    do
                    {
                      if (v28 % v22 != 0x7FFFFFFF)
                      {
                        LOWORD(v23) = *&data[2 * v28];
                        v23 = (LODWORD(v23) + a4) * a3;
                        *&data[2 * v28] = v23;
                      }

                      ++v28;
                    }

                    while (v24 != v28);
                    data += rowBytes;
                  }
                }
              }
            }

            v14 = ++v15;
          }

          while (v16 > v15);

          CVPixelBufferUnlockBaseAddress(this, 0);
          return;
        }

LABEL_85:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
        if ((__p.width & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.data;
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "inPlaceColorScaling", 3957, v9, p_p);
        if (SHIBYTE(__p.width) < 0)
        {
          operator delete(__p.data);
        }

        return;
      }

      goto LABEL_59;
    }

    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 875704438)
      {
LABEL_77:
        v40 = this;
        v41 = a3;
        v42 = a4;
        v43 = v45;
        v34 = 0x7FFFFFFF;
        goto LABEL_78;
      }

      if (PixelFormatType != 1094862674)
      {
        goto LABEL_85;
      }

LABEL_59:
      if (a5)
      {
        v34 = 0x7FFFFFFF;
      }

      else
      {
        v34 = 0;
      }

LABEL_76:
      v40 = this;
      v41 = a3;
      v42 = a4;
      v43 = v45;
LABEL_78:

      scaleColorsRawInPlace<unsigned char>(v40, v43, v34, v41, v42);
      return;
    }

    if (PixelFormatType != 1111970369)
    {
      if (PixelFormatType != 1278226534)
      {
        v10 = 1278226536;
        goto LABEL_64;
      }

      goto LABEL_69;
    }

    goto LABEL_73;
  }

  if (PixelFormatType > 1717856626)
  {
    if (PixelFormatType <= 1751411058)
    {
      if (PixelFormatType != 1717856627)
      {
        v10 = 1751410032;
LABEL_64:
        if (PixelFormatType != v10)
        {
          goto LABEL_85;
        }

LABEL_65:
        v35 = this;
        v36 = a3;
        v37 = a4;
        v38 = v45;
        v39 = 0x7FFFFFFF;
LABEL_66:

        scaleColorsRawInPlace<half>(v35, v38, v39, v36, v37);
        return;
      }
    }

    else
    {
      if (PixelFormatType == 1751411059)
      {
        goto LABEL_65;
      }

      if (PixelFormatType != 1919365990)
      {
        v11 = 1932996149;
        goto LABEL_24;
      }
    }

    goto LABEL_69;
  }

  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType == 1380411457)
    {
      if (a5)
      {
        v39 = 0x7FFFFFFF;
      }

      else
      {
        v39 = 3;
      }

      v35 = this;
      v36 = a3;
      v37 = a4;
      v38 = v45;
      goto LABEL_66;
    }

    if (PixelFormatType == 1647392359)
    {
      goto LABEL_25;
    }

    if (PixelFormatType != 1717855600)
    {
      goto LABEL_85;
    }

LABEL_69:
    v30 = this;
    v31 = a3;
    v32 = a4;
    v33 = v45;
    v29 = 0x7FFFFFFF;
    goto LABEL_70;
  }

  if (PixelFormatType == 1380401729)
  {
LABEL_73:
    if (a5)
    {
      v34 = 0x7FFFFFFF;
    }

    else
    {
      v34 = 3;
    }

    goto LABEL_76;
  }

  if (PixelFormatType != 1380410945)
  {
    goto LABEL_85;
  }

  if (a5)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = 3;
  }

  v30 = this;
  v31 = a3;
  v32 = a4;
  v33 = v45;
LABEL_70:

  scaleColorsRawInPlace<float>(v30, v33, v29, v31, v32);
}

void sub_2403F0248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t scaleColorsRawInPlace<float>(__CVBuffer *a1, char a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v10 = PlaneCount;
  v11 = 0;
  v12 = 0;
  if (PlaneCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = PlaneCount;
  }

  v27 = v13;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    if (v10)
    {
      PixelBufferUtils::asVImageBuffer(a1, v11, *v14, &v29);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(a1, *v14, &v29);
      v11 = 0;
    }

    data = v29.data;
    height = v29.height;
    width = v29.width;
    rowBytes = v29.rowBytes;
    v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v11);
    if (height)
    {
      v20 = width * v19;
      if (width * v19)
      {
        if (a2)
        {
          for (i = 0; i != height; ++i)
          {
            v22 = 0;
            do
            {
              if (v22 % v19 != a3)
              {
                data[v22] = a5 + (data[v22] * a4);
              }

              ++v22;
            }

            while (v20 != v22);
            data = (data + rowBytes);
          }
        }

        else
        {
          for (j = 0; j != height; ++j)
          {
            v24 = 0;
            do
            {
              if (v24 % v19 != a3)
              {
                data[v24] = (data[v24] + a5) * a4;
              }

              ++v24;
            }

            while (v20 != v24);
            data = (data + rowBytes);
          }
        }
      }
    }

    v11 = ++v12;
  }

  while (v27 > v12);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t scaleColorsRawInPlace<half>(__CVBuffer *a1, char a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v10 = PlaneCount;
  v11 = 0;
  v12 = 0;
  if (PlaneCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = PlaneCount;
  }

  v37 = v13;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    if (v10)
    {
      PixelBufferUtils::asVImageBuffer(a1, v11, *v14, &v39);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(a1, *v14, &v39);
      v11 = 0;
    }

    data = v39.data;
    height = v39.height;
    width = v39.width;
    rowBytes = v39.rowBytes;
    v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v11);
    if (height)
    {
      v20 = width * v19;
      if (width * v19)
      {
        if (a2)
        {
          for (i = 0; i != height; ++i)
          {
            v22 = 0;
            do
            {
              if (v22 % v19 != a3)
              {
                _H0 = *&data[2 * v22];
                __asm { FCVT            S0, H0 }

                _S0 = a5 + (_S0 * a4);
                __asm { FCVT            H0, S0 }

                *&data[2 * v22] = LOWORD(_S0);
              }

              ++v22;
            }

            while (v20 != v22);
            data += rowBytes;
          }
        }

        else
        {
          for (j = 0; j != height; ++j)
          {
            v31 = 0;
            do
            {
              if (v31 % v19 != a3)
              {
                _H0 = *&data[2 * v31];
                __asm { FCVT            S0, H0 }

                _S0 = (_S0 + a5) * a4;
                __asm { FCVT            H0, S0 }

                *&data[2 * v31] = LOWORD(_S0);
              }

              ++v31;
            }

            while (v20 != v31);
            data += rowBytes;
          }
        }
      }
    }

    v11 = ++v12;
  }

  while (v37 > v12);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t scaleColorsRawInPlace<unsigned char>(__CVBuffer *a1, char a2, int a3, float a4, float a5)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  v10 = PlaneCount;
  v11 = 0;
  v12 = 0;
  if (PlaneCount <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = PlaneCount;
  }

  v28 = v13;
  v14 = MEMORY[0x277CBF3A0];
  do
  {
    if (v10)
    {
      PixelBufferUtils::asVImageBuffer(a1, v11, *v14, &v30);
    }

    else
    {
      PixelBufferUtils::asVImageBuffer(a1, *v14, &v30);
      v11 = 0;
    }

    data = v30.data;
    height = v30.height;
    width = v30.width;
    rowBytes = v30.rowBytes;
    v19 = PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, v11);
    if (height)
    {
      v21 = width * v19;
      if (width * v19)
      {
        if (a2)
        {
          for (i = 0; i != height; ++i)
          {
            v23 = 0;
            do
            {
              if (v23 % v19 != a3)
              {
                LOBYTE(v20) = data[v23];
                v20 = a5 + (LODWORD(v20) * a4);
                data[v23] = v20;
              }

              ++v23;
            }

            while (v21 != v23);
            data += rowBytes;
          }
        }

        else
        {
          for (j = 0; j != height; ++j)
          {
            v25 = 0;
            do
            {
              if (v25 % v19 != a3)
              {
                LOBYTE(v20) = data[v25];
                v20 = (LODWORD(v20) + a5) * a4;
                data[v25] = v20;
              }

              ++v25;
            }

            while (v21 != v25);
            data += rowBytes;
          }
        }
      }
    }

    v11 = ++v12;
  }

  while (v28 > v12);

  return CVPixelBufferUnlockBaseAddress(a1, 0);
}

uint64_t PixelBufferUtils::rotationAngleAndMirroringFromExifOrientation(PixelBufferUtils *this, BOOL *a2, BOOL *a3)
{
  if (this <= 4)
  {
    if (this == 4)
    {
      v11 = 180;
    }

    else
    {
      v11 = 0;
    }

    v12 = this == 4;
    if (this == 3)
    {
      v13 = 180;
    }

    else
    {
      v13 = v11;
    }

    if (this == 3)
    {
      v12 = 0;
    }

    v14 = this == 2;
    if (this == 2)
    {
      result = 0;
    }

    else
    {
      result = v13;
    }

    v5 = v14 || v12;
    if (a2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (this == 8)
    {
      v3 = 270;
    }

    else
    {
      v3 = 0;
    }

    if (this == 7)
    {
      v4 = 90;
    }

    else
    {
      v4 = v3;
    }

    v5 = this == 7;
    if (this == 6)
    {
      v6 = 90;
    }

    else
    {
      v6 = 0;
    }

    if (this == 5)
    {
      v7 = 270;
    }

    else
    {
      v7 = v6;
    }

    v8 = this == 5;
    v9 = this <= 6;
    if (this <= 6)
    {
      result = v7;
    }

    else
    {
      result = v4;
    }

    if (v9)
    {
      v5 = v8;
    }

    if (a2)
    {
LABEL_21:
      *a2 = v5;
    }
  }

  return result;
}

uint64_t PixelBufferUtils::rotationBetweenOrientations(PixelBufferUtils *this, int a2, CGImagePropertyOrientation a3)
{
  if (this <= 4)
  {
    if (this == 4)
    {
      v10 = -180;
    }

    else
    {
      v10 = 0;
    }

    v11 = this == 4;
    if (this == 3)
    {
      v7 = -180;
    }

    else
    {
      v7 = v10;
    }

    if (this == 3)
    {
      v11 = 0;
    }

    if (this == 2)
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v8 = v11;
    }

    if (a2 > 4)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (this == 8)
    {
      v3 = -270;
    }

    else
    {
      v3 = 0;
    }

    if (this == 7)
    {
      v4 = -90;
    }

    else
    {
      v4 = v3;
    }

    if (this == 6)
    {
      v5 = -90;
    }

    else
    {
      v5 = 0;
    }

    if (this == 5)
    {
      v6 = -270;
    }

    else
    {
      v6 = v5;
    }

    if (this <= 6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (this <= 6)
    {
      v8 = this == 5;
    }

    else
    {
      v8 = this == 7;
    }

    if (a2 > 4)
    {
LABEL_21:
      if (a2 <= 6)
      {
        if (a2 == 5)
        {
          v9 = 270;
          if (!v8)
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          v9 = 90;
          if (v8)
          {
            return 0xFFFFFFFFLL;
          }
        }

        goto LABEL_55;
      }

      if (a2 == 7)
      {
        v9 = 90;
        if (!v8)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_55;
      }

      if (a2 == 8)
      {
        v9 = 270;
      }

      else
      {
        v9 = 0;
      }

LABEL_46:
      if (v8)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_55;
    }
  }

  if (a2 == 2)
  {
    v9 = 0;
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_55;
  }

  if (a2 != 3)
  {
    v9 = 0;
    if (a2 == 4)
    {
      v9 = 180;
      if (!v8)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_55;
    }

    goto LABEL_46;
  }

  v9 = 180;
  if (v8)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_55:
  v12 = v9 + v7;
  if (v12 <= 0xFFFFFE97)
  {
    result = v12;
  }

  else
  {
    result = v12 + 360;
  }

  if (result > 179)
  {
    if (result == 180)
    {
      return 2;
    }

    if (result == 270)
    {
      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  if (result)
  {
    if (result == 90)
    {
      return 3;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

__CVBuffer *PixelBufferUtils::savePlyFromDepthBuffer(__CVBuffer *this, __CVBuffer *a2, const char *a3, float a4, CGPoint a5, float a6, float a7, float a8)
{
  if (this)
  {
    v8 = this;
    CVPixelBufferGetWidth(this);
    CVPixelBufferGetHeight(v8);
    CVPixelBufferLockBaseAddress(v8, 1uLL);
    CVPixelBufferGetBytesPerRow(v8);
    CVPixelBufferGetBaseAddress(v8);
    operator new[]();
  }

  return this;
}

uint64_t PixelBufferUtils::addTextToPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, const char *a3, CGPoint a4)
{
  v34[3] = *MEMORY[0x277D85DE8];
  if (!this || !a2)
  {
    NSLog(&cfstr_SDErrorCannotA_0.isa, a2, a3, a4.x, a4.y, "addTextToPixelBuffer", 4261);
    return 0;
  }

  y = a4.y;
  x = a4.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  if (PixelFormatType != 32 && PixelFormatType != 1111970369)
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if (__p.c >= 0.0)
    {
      a = COERCE_DOUBLE(&__p);
    }

    else
    {
      a = __p.a;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "addTextToPixelBuffer", 4271, PixelFormatType, *&a);
    if (SHIBYTE(__p.c) < 0)
    {
      operator delete(*&__p.a);
    }

    return 0;
  }

  v12 = Height;
  if (x > Width || y > v12)
  {
    NSLog(&cfstr_SDErrorCannotA_1.isa, "addTextToPixelBuffer", 4277);
    return 0;
  }

  v16 = Height;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CVPixelBufferLockBaseAddress(this, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  v20 = CGBitmapContextCreate(BaseAddress, Width, v16, 8uLL, BytesPerRow, DeviceRGB, 6u);
  v21 = *(MEMORY[0x277CBF2C0] + 16);
  *&__p.a = *MEMORY[0x277CBF2C0];
  *&__p.c = v21;
  *&__p.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(v20, &__p);
  CGContextSetTextDrawingMode(v20, kCGTextFill);
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v23 = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  v24 = CTFontCreateWithName(@"Courier", a3, 0);
  {
    {
      v31 = *MEMORY[0x277CC49C0];
      v33[0] = *MEMORY[0x277CC4838];
      v33[1] = v31;
      v34[0] = v24;
      v34[1] = GenericRGB;
      v33[2] = *MEMORY[0x277CC4820];
      v34[2] = v23;
      PixelBufferUtils::addTextToPixelBuffer(__CVBuffer *,char const*,unsigned long,CGPoint)::stringAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
    }
  }

  v25 = objc_alloc(MEMORY[0x277CCA898]);
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  v27 = [v25 initWithString:v26 attributes:{PixelBufferUtils::addTextToPixelBuffer(__CVBuffer *, char const*, unsigned long, CGPoint)::stringAttributes}];

  v28 = CTLineCreateWithAttributedString(v27);
  v29 = x;
  v30 = v12 - y;
  CGContextSetTextPosition(v20, v29, v30);
  CTLineDraw(v28, v20);
  CVPixelBufferUnlockBaseAddress(this, 0);
  CFRelease(DeviceRGB);
  CGContextRelease(v20);
  CFRelease(GenericRGB);
  CFRelease(v23);
  CFRelease(v24);

  return 1;
}

uint64_t PixelBufferUtilsSession::PixelBufferUtilsSession(uint64_t a1, int a2, signed int a3, int a4, int a5, double a6, double a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13, CGFloat a14, CGFloat a15, CGFloat a16, CGFloat a17)
{
  v23 = a13;
  v24 = a12;
  v25 = a11;
  v26 = a10;
  v27 = a9;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a6;
  *(a1 + 32) = a7;
  *(a1 + 40) = a2;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a3;
  *(a1 + 72) = a10;
  *(a1 + 80) = a11;
  *(a1 + 88) = a12;
  *(a1 + 96) = a13;
  *(a1 + 104) = a14;
  *(a1 + 112) = a15;
  *(a1 + 120) = a16;
  *(a1 + 128) = a17;
  *(a1 + 136) = a4;
  *(a1 + 140) = a5;
  v48.origin.x = a10;
  v48.origin.y = a11;
  v48.size.width = a12;
  v48.size.height = a13;
  if (CGRectIsEmpty(v48))
  {
    v26 = 0.0;
    v25 = 0.0;
    v24 = a6;
    v23 = a7;
  }

  if (a2 == a3 && a6 == a8 && a7 == v27)
  {
    v33 = (a5 | a4) == 0;
    if (v24 == a6 && v23 == a7)
    {
      if (!(a5 | a4))
      {
        LOBYTE(v34) = 1;
        goto LABEL_37;
      }

      v34 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v33 = (a5 | a4) == 0;
  }

  if (a2 <= 1751410031)
  {
    if (a2 > 1717855599)
    {
      if (a2 == 1717855600 || a2 == 1717856627)
      {
        goto LABEL_53;
      }
    }

    else if (a2 == 825306677 || a2 == 825437747)
    {
      goto LABEL_53;
    }
  }

  else if (a2 <= 1919365989)
  {
    if (a2 == 1751410032 || a2 == 1751411059)
    {
      goto LABEL_53;
    }
  }

  else if (a2 == 1919365990 || a2 == 1919365992 || a2 == 1932996149)
  {
    goto LABEL_53;
  }

  if (a3 <= 1751410031)
  {
    if (a3 > 1717855599)
    {
      if (a3 != 1717855600)
      {
        v36 = 1717856627;
        goto LABEL_52;
      }
    }

    else if (a3 != 825306677)
    {
      v36 = 825437747;
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (a3 <= 1919365989)
  {
    if (a3 != 1751410032)
    {
      v36 = 1751411059;
      goto LABEL_52;
    }

LABEL_53:
    NSLog(&cfstr_SDErrorTransfe.isa, "PixelBufferUtilsSession", 4410);
    return a1;
  }

  if (a3 == 1919365990 || a3 == 1919365992)
  {
    goto LABEL_53;
  }

  v36 = 1932996149;
LABEL_52:
  if (a3 == v36)
  {
    goto LABEL_53;
  }

  v34 = 1;
  if (v33)
  {
    goto LABEL_37;
  }

LABEL_10:
  if (a3 > 1717856626)
  {
    if (a3 > 1919365989)
    {
      if (a3 == 1919365990 || a3 == 1932996149)
      {
        goto LABEL_60;
      }

      v35 = 1919365992;
      goto LABEL_59;
    }

    if (a3 != 1717856627)
    {
      v35 = 1751411059;
      goto LABEL_59;
    }

LABEL_60:
    NSLog(&cfstr_SDErrorRotatio.isa, "PixelBufferUtilsSession", 4416);
    return a1;
  }

  if (a3 > 1380410944)
  {
    if (a3 == 1380410945)
    {
      goto LABEL_60;
    }

    v35 = 1380411457;
  }

  else
  {
    if (a3 == 825306677)
    {
      goto LABEL_60;
    }

    v35 = 825437747;
  }

LABEL_59:
  if (a3 == v35)
  {
    goto LABEL_60;
  }

  if (!v34)
  {
    goto LABEL_39;
  }

  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v39 = v27;
  }

  else
  {
    v39 = a8;
  }

  if ((a4 & 0xFFFFFFFD) == 1)
  {
    v27 = a8;
  }

  pixelBufferOut = 0;
  v40 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  v42 = CVPixelBufferCreate(v40, v39, v27, a3, BufferAttributes, &pixelBufferOut);
  v43 = pixelBufferOut;
  if (v42)
  {
    v43 = 0;
  }

  *a1 = v43;
  if (!v43)
  {
    NSLog(&cfstr_SDErrorFailedA.isa, "PixelBufferUtilsSession", 4440);
    return a1;
  }

  LOBYTE(v34) = 0;
LABEL_37:
  v49.origin.x = v26;
  v49.origin.y = v25;
  v49.size.width = v24;
  v49.size.height = v23;
  v50.origin.x = a14;
  v50.origin.y = a15;
  v50.size.width = a16;
  v50.size.height = a17;
  VTTransferSession = createVTTransferSession(v49, v50);
  *(a1 + 8) = VTTransferSession;
  if (!VTTransferSession)
  {
    CVPixelBufferRelease(*a1);
    *a1 = 0;
    return a1;
  }

  if ((v34 & 1) == 0)
  {
LABEL_39:
    if (a5)
    {
      NSLog(&cfstr_SDErrorReflect.isa, "createVTRotationSession", 895);
    }

    else
    {
      pixelBufferOut = 0;
      v44 = VTImageRotationSessionCreate();
      v45 = pixelBufferOut;
      if (!v44)
      {
        *(a1 + 16) = pixelBufferOut;
        if (v45)
        {
          return a1;
        }

        goto LABEL_76;
      }

      MEMORY[0x245CBF880](pixelBufferOut);
      CFRelease(pixelBufferOut);
      NSLog(&cfstr_SDErrorUnableT_2.isa, "createVTRotationSession", 916);
    }

    *(a1 + 16) = 0;
LABEL_76:
    CVPixelBufferRelease(*a1);
    *a1 = 0;
    v46 = *(a1 + 8);
    if (v46)
    {
      VTPixelTransferSessionInvalidate(v46);
      CFRelease(*(a1 + 8));
    }

    *(a1 + 8) = 0;
  }

  return a1;
}

{
  return PixelBufferUtilsSession::PixelBufferUtilsSession(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

void PixelBufferUtilsSession::~PixelBufferUtilsSession(PixelBufferUtilsSession *this)
{
  CVPixelBufferRelease(this->var0);
  this->var0 = 0;
  if (this->var2)
  {
    MEMORY[0x245CBF880]();
    CFRelease(this->var2);
  }

  this->var2 = 0;
  var1 = this->var1;
  if (var1)
  {
    VTPixelTransferSessionInvalidate(var1);
    CFRelease(this->var1);
  }

  this->var1 = 0;
}

{
  CVPixelBufferRelease(this->var0);
  this->var0 = 0;
  if (this->var2)
  {
    MEMORY[0x245CBF880]();
    CFRelease(this->var2);
  }

  this->var2 = 0;
  var1 = this->var1;
  if (var1)
  {
    VTPixelTransferSessionInvalidate(var1);
    CFRelease(this->var1);
  }

  this->var1 = 0;
}

CVPixelBufferRef PixelBufferUtilsSession::createOutputPixelBuffer(PixelBufferUtilsSession *this)
{
  width = this->var5.width;
  height = this->var5.height;
  var6 = this->var6;
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v4, width, height, var6, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

BOOL PixelBufferUtilsSession::verifyInput(PixelBufferUtilsSession *this, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0;
  }

  var4 = this->var4;
  width = this->var3.width;
  height = this->var3.height;
  return width == CVPixelBufferGetWidth(pixelBuffer) && height == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == var4;
}

BOOL PixelBufferUtilsSession::verifyOutput(PixelBufferUtilsSession *this, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0;
  }

  var6 = this->var6;
  width = this->var5.width;
  height = this->var5.height;
  return width == CVPixelBufferGetWidth(pixelBuffer) && height == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == var6;
}

BOOL PixelBufferUtilsSession::setScalingMode(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (a2 == 1)
    {
      v3 = *MEMORY[0x277CE28B0];
      v4 = MEMORY[0x277CE2A70];
      return VTSessionSetProperty(v2, v3, *v4) == 0;
    }

    if (!a2)
    {
      v3 = *MEMORY[0x277CE28B0];
      v4 = MEMORY[0x277CE2A78];
      return VTSessionSetProperty(v2, v3, *v4) == 0;
    }

    NSLog(&cfstr_SDErrorUnknown.isa, "setScalingMode", 4514);
  }

  else
  {
    NSLog(&cfstr_SDErrorSession.isa, "setScalingMode", 4504);
  }

  return 0;
}

uint64_t PixelBufferUtilsSession::setHardwareAcceleration(PixelBufferUtilsSession *this, int a2)
{
  var1 = this->var1;
  v5 = MEMORY[0x277CBED28];
  v6 = MEMORY[0x277CBED10];
  if (var1)
  {
    v7 = (a2 ? MEMORY[0x277CBED28] : MEMORY[0x277CBED10]);
    if (VTSessionSetProperty(var1, *MEMORY[0x277CE2880], *v7))
    {
      NSLog(&cfstr_SDErrorFailedS.isa, "setHardwareAcceleration", 4530);
      return 0;
    }
  }

  var2 = this->var2;
  if (var2)
  {
    v9 = (a2 ? v5 : v6);
    if (VTSessionSetProperty(var2, *MEMORY[0x277CE27F8], *v9))
    {
      NSLog(&cfstr_SDErrorFailedS_0.isa, "setHardwareAcceleration", 4542);
      return 0;
    }
  }

  return 1;
}

uint64_t PixelBufferUtilsSession::run(PixelBufferUtilsSession *this, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  if (!pixelBuffer || (var4 = this->var4, width = this->var3.width, height = this->var3.height, width != CVPixelBufferGetWidth(pixelBuffer)) || height != CVPixelBufferGetHeight(pixelBuffer) || CVPixelBufferGetPixelFormatType(pixelBuffer) != var4 || !a3 || (var6 = this->var6, v11 = this->var5.width, v10 = this->var5.height, v11 != CVPixelBufferGetWidth(a3)) || v10 != CVPixelBufferGetHeight(a3) || CVPixelBufferGetPixelFormatType(a3) != var6)
  {
    NSLog(&cfstr_SDErrorProvide.isa, "run", 4560);
    return 0;
  }

  var1 = this->var1;
  if (this->var0)
  {
    var0 = this->var0;
  }

  else
  {
    var0 = pixelBuffer;
  }

  if (!var1)
  {
    var2 = this->var2;
    if (!var2 || !MEMORY[0x245CBF890](var2, var0, a3))
    {
      return 1;
    }

LABEL_24:
    NSLog(&cfstr_SDErrorRotatio_0.isa, "run", 4604);
    return 0;
  }

  if (this->var0)
  {
    v14 = this->var0;
  }

  else
  {
    v14 = a3;
  }

  v15 = VTPixelTransferSessionTransferImage(var1, pixelBuffer, v14);
  v16 = this->var2;
  if (v16)
  {
    v17 = MEMORY[0x245CBF890](v16, var0, a3);
    if (!v15)
    {
      if (!v17)
      {
        return 1;
      }

      goto LABEL_24;
    }

LABEL_26:
    NSLog(&cfstr_SDErrorPixelTr.isa, "run", 4598);
    return 0;
  }

  if (v15)
  {
    goto LABEL_26;
  }

  return 1;
}

uint64_t PixelBufferUtilsSession::updateCrop(PixelBufferUtilsSession *this, CGRect a2)
{
  if (!this->var1)
  {
    NSLog(&cfstr_SDErrorCannotU.isa, a2.origin.x, a2.origin.y, a2.size.width, a2.size.height, "updateCrop", 4616);
    return 0;
  }

  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (CGRectEqualToRect(a2, this->var7))
  {
    return 1;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (CGRectIsEmpty(v14))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v15);
  }

  v9 = VTSessionSetProperty(this->var1, *MEMORY[0x277CE28B8], DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v9)
  {
    NSLog(&cfstr_SDErrorPixelbu.isa, v10, v11, v12, v13, "updateCrop", 4638);
    return 0;
  }

  this->var7.origin.x = x;
  this->var7.origin.y = y;
  result = 1;
  this->var7.size.width = width;
  this->var7.size.height = height;
  return result;
}

uint64_t PixelBufferUtilsSession::copySession(PixelBufferUtilsSession *this, PixelBufferUtilsSession *a2)
{
  if (this)
  {
    operator new();
  }

  NSLog(&cfstr_SDErrorCannotC.isa, a2, "copySession", 4687);
  return 0;
}

uint64_t PixelBufferUtilsTiledView::TileConfig::TileConfig(uint64_t this)
{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

{
  *(this + 8) = 0;
  *this = 0;
  return this;
}

uint64_t PixelBufferUtilsTiledView::TileConfig::TileConfig(uint64_t this, char a2, float a3, float a4)
{
  *this = a4;
  *(this + 4) = a3;
  *(this + 8) = a2;
  return this;
}

{
  *this = a4;
  *(this + 4) = a3;
  *(this + 8) = a2;
  return this;
}

int32x2_t PixelBufferUtilsTiledView::TileConfig::TileConfig(PixelBufferUtilsTiledView::TileConfig *this, int32x2_t *a2)
{
  v2 = a2[1].i8[0];
  result = vrev64_s32(*a2);
  *this = result;
  *(this + 8) = v2;
  return result;
}

{
  v2 = a2[1].i8[0];
  result = vrev64_s32(*a2);
  *this = result;
  *(this + 8) = v2;
  return result;
}

PixelBufferUtils *PixelBufferUtilsTiledView::render(PixelBufferUtilsTiledView *this, __CVBuffer **a2, uint64_t a3, __CVBuffer *a4, __CVBuffer *a5, char *a6)
{
  var2 = this->var2;
  var4 = this->var4;
  if (var4 * var2 != a3)
  {
    NSLog(&cfstr_SDErrorUnableT.isa, "render", 4747);
    return 0;
  }

  var5 = this->var5;
  if (var5)
  {
    v10 = 1;
  }

  else
  {
    v10 = (a5 | a6) == 0;
  }

  if (!v10)
  {
    NSLog(&cfstr_SDErrorUnableT_0.isa, "render", 4753);
    return 0;
  }

  v11 = MEMORY[0x277CBECE8];
  v12 = MEMORY[0x277CBF3A0];
  if (a4)
  {
    var6 = this->var6;
    if (!var6)
    {
      var1 = this->var1;
      var3 = this->var3;
      pixelBufferOut.data = 0;
      v16 = *MEMORY[0x277CBECE8];
      v17 = a4;
      BufferAttributes = getBufferAttributes();
      v19 = CVPixelBufferCreate(v16, var1, var3, 0x42475241u, BufferAttributes, &pixelBufferOut);
      a4 = v17;
      if (v19)
      {
        var6 = 0;
      }

      else
      {
        var6 = pixelBufferOut.data;
      }

      this->var6 = var6;
    }

    PixelBufferUtils::scaleConvertRotatePixelBuffer(a4, 0, var6, *v12, 0, 0, 1);
    var2 = this->var2;
    var4 = this->var4;
    var5 = this->var5;
  }

  v20 = var2 * this->var1;
  v21 = var5 + var4 * this->var3;
  pixelBufferOut.data = 0;
  v22 = *v11;
  v23 = getBufferAttributes();
  allocator = v22;
  v60 = v20;
  if (CVPixelBufferCreate(v22, v20, v21, 0x42475241u, v23, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  CVPixelBufferLockBaseAddress(data, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v62 = data;
  PixelBufferUtils::asVImageBuffer(data, *v12, &pixelBufferOut);
  v25 = this->var5;
  if (v25 && pixelBufferOut.rowBytes * v25 >= 4)
  {
    memset_pattern16(pixelBufferOut.data, &unk_2404070C0, (pixelBufferOut.rowBytes * v25) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v26 = v25 * 0.15;
  v61 = (v25 * 0.8);
  v27 = this->var2;
  v28 = this->var4;
  if (v28 * v27)
  {
    v29 = 0;
    v30 = 1;
    v31 = pixelBufferOut.data;
    rowBytes = pixelBufferOut.rowBytes;
    do
    {
      v33 = a2[v29];
      if (v33)
      {
        Width = CVPixelBufferGetWidth(a2[v29]);
        Height = CVPixelBufferGetHeight(v33);
        v36 = this->var2;
        v37 = this->var3;
        v38 = this->var1;
        v39 = v29 / v36;
        v40 = v29 % v36 * v38;
        v41 = this->var5 + v39 * v37;
        v42 = v37;
        v43 = Height;
        v44 = v37 / Height;
        v45 = v38;
        v46 = Width;
        v47 = v38 / Width;
        if (v44 != v47)
        {
          if (v44 < v47)
          {
            v40 += (v38 - ((v46 / v43) * v45)) >> 1;
            v38 = ((v46 / v43) * v45);
          }

          else
          {
            v41 += (v37 - ((v43 / v46) * v42)) >> 1;
            v37 = ((v43 / v46) * v42);
          }
        }

        texture = 0;
        CVPixelBufferCreateWithBytes(allocator, v38, v37, 0x42475241u, &v31[4 * v40 + rowBytes * v41], rowBytes, 0, 0, 0, &texture);
        v48 = (this->var0 + 12 * v29);
        v49 = *(v48 + 8);
        v50 = *v48;
        v51 = v48[1];
        PixelFormatType = CVPixelBufferGetPixelFormatType(v33);
        v71.width = v38;
        v71.height = v37;
        CroppedAndScaledPixelBuffer = PixelBufferUtils::createCroppedAndScaledPixelBuffer(v33, 0, *v12, v71);
        v55 = CroppedAndScaledPixelBuffer;
        if (PixelFormatType == 1717855600 || PixelFormatType == 1751411059 || PixelFormatType == 1751410032)
        {
          if (!PixelBufferUtils::colorizedDepthPixelBuffer(CroppedAndScaledPixelBuffer, 0, v49, v51, v50, 0, texture, v54))
          {
            if (v49)
            {
              LODWORD(v56) = 0.5;
              if ((PixelBufferUtils::alphaBlend(this->var6, texture, &texture, v56, 1) & 1) == 0)
              {
                NSLog(&cfstr_SDErrorFailedC.isa, "render", 4849);
              }
            }
          }
        }

        else
        {
          PixelBufferUtils::convertPixelBufferFormat(CroppedAndScaledPixelBuffer, texture, 0);
        }

        CVPixelBufferRelease(v55);
        CVPixelBufferRelease(texture);
        v27 = this->var2;
        v28 = this->var4;
      }

      v29 = v30++;
    }

    while (v28 * v27 > v29);
  }

  v58 = v26;
  v57 = v62;
  if (a5)
  {
    v69.x = v58;
    v69.y = (this->var5 - v58);
    PixelBufferUtils::addTextToPixelBuffer(v62, a5, v61, v69);
  }

  if (a6)
  {
    v70.x = v60 + (strlen(a6) * v61) * -0.6 - v58;
    v70.y = (this->var5 - v58);
    PixelBufferUtils::addTextToPixelBuffer(v62, a6, v61, v70);
  }

  CVPixelBufferUnlockBaseAddress(v62, 0);
  return v57;
}

void PixelBufferUtilsTiledView::~PixelBufferUtilsTiledView(PixelBufferUtilsTiledView *this)
{
  CVPixelBufferRelease(this->var6);
  if (this->var0)
  {
    MEMORY[0x245CBFC90](this->var0, 0x1000C8005A209FELL);
  }
}

{
  CVPixelBufferRelease(this->var6);
  if (this->var0)
  {
    MEMORY[0x245CBFC90](this->var0, 0x1000C8005A209FELL);
  }
}

CVPixelBufferPoolRef PixelBufferUtils::createPixelBufferPool(PixelBufferUtils *this, CGSize a2, uint64_t a3)
{
  height = a2.height;
  width = a2.width;
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CC4D60];
  v15[0] = *MEMORY[0x277CC4DE8];
  v15[1] = v6;
  v16[0] = MEMORY[0x277CBEC10];
  v16[1] = &unk_28524A950;
  v15[2] = *MEMORY[0x277CC4E30];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:this];
  v16[2] = v7;
  v15[3] = *MEMORY[0x277CC4EC8];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
  v16[3] = v8;
  v15[4] = *MEMORY[0x277CC4DD8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
  v16[4] = v9;
  v15[5] = *MEMORY[0x277CC4E50];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v16[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];

  poolOut = 0;
  v12 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v11, &poolOut);
  CFRelease(v11);
  if (!v12)
  {
    return poolOut;
  }

  NSLog(&cfstr_SDErrorFailedC_0.isa, "createPixelBufferPool", 4900, v12);
  return 0;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_2403F50E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADPCEDisparityColorExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403F60E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_2403F6FA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2403F7644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v8 = v6;

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403F7D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  MEMORY[0x245CBFC90](v26, 0x1000C80FA0F61DDLL);

  _Unwind_Resume(a1);
}

void sub_2403F87AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403F889C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void *fmincon_spg(void (*a1)(void, void, void, void), void (*a2)(void, void, void), uint64_t a3, uint64_t a4, unsigned int a5, float64x2_t *a6, float64x2_t *a7, double *a8, void *a9, uint64_t a10)
{
  v12 = 0;
  v14 = a9;
  v13 = a10;
  v336[8] = *MEMORY[0x277D85DE8];
  v307 = 0;
  memset(v333, 0, sizeof(v333));
  v332 = 0u;
  v15 = &defaultSPGConfig;
  memset(__src, 0, sizeof(__src));
  if (a8)
  {
    v15 = a8;
  }

  v16 = 0.0;
  v306 = 0;
  if (a5 - 11 < 0xFFFFFFF6)
  {
    v17 = 0;
    v300 = 0.0;
    goto LABEL_237;
  }

  v301 = *(v15 + 2);
  v17 = 0;
  v300 = 0.0;
  if ((v301 - 11) < 0xFFFFFFF6)
  {
    goto LABEL_237;
  }

  v21 = 0;
  v22 = *(v15 + 14);
  v23 = v15[5];
  v295 = v15[6];
  v24 = *v15;
  v25 = v15[2];
  v26 = v15[3];
  v27 = a5;
  v293 = v15[4];
  do
  {
    v28 = *(a4 + v21 * 8);
    if (v28 >= a7->f64[v21])
    {
      v28 = a7->f64[v21];
    }

    if (v28 <= a6->f64[v21])
    {
      v28 = a6->f64[v21];
    }

    *(&v333[-1] + v21 * 8) = v28;
    ++v21;
  }

  while (a5 != v21);
  v308 = 0.0;
  v302 = v15[8];
  a1(&v332, a3, &v308, v329);
  v16 = v308;
  __memcpy_chk();
  if (v301 < 1)
  {
    goto LABEL_39;
  }

  v31 = vdupq_n_s64(v301 - 1);
  v32 = vmovn_s64(vcgeq_u64(v31, xmmword_240406DC0));
  if (v32.i8[0])
  {
    v327 = v16;
  }

  v33 = (v301 + 1) & 0x1E;
  if (v32.i8[4])
  {
    *v328 = v16;
  }

  if (v33 == 2)
  {
    goto LABEL_39;
  }

  v34 = vmovn_s64(vcgtq_u64(v31, xmmword_240407050));
  if (v34.i8[0])
  {
    *&v328[1] = v16;
    if ((v34.i8[4] & 1) == 0)
    {
LABEL_19:
      if (v33 == 4)
      {
        goto LABEL_39;
      }

      goto LABEL_23;
    }
  }

  else if ((v34.i8[4] & 1) == 0)
  {
    goto LABEL_19;
  }

  *&v328[2] = v16;
  if (v33 == 4)
  {
    goto LABEL_39;
  }

LABEL_23:
  v35 = vmovn_s64(vcgtq_u64(v31, xmmword_240407060));
  if ((v35.i8[0] & 1) == 0)
  {
    if ((v35.i8[4] & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_28:
    *&v328[4] = v16;
    if (v33 == 6)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  *&v328[3] = v16;
  if (v35.i8[4])
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v33 == 6)
  {
    goto LABEL_39;
  }

LABEL_29:
  v36 = vmovn_s64(vcgtq_u64(v31, xmmword_240407070));
  if (v36.i8[0])
  {
    *&v328[5] = v16;
    if ((v36.i8[4] & 1) == 0)
    {
LABEL_31:
      if (v33 == 8)
      {
        goto LABEL_39;
      }

LABEL_35:
      v37 = vmovn_s64(vcgtq_u64(v31, xmmword_240407080));
      if (v37.i8[0])
      {
        *&v328[7] = v16;
      }

      if (v37.i8[4])
      {
        *&v328[8] = v16;
      }

      goto LABEL_39;
    }
  }

  else if ((v36.i8[4] & 1) == 0)
  {
    goto LABEL_31;
  }

  *&v328[6] = v16;
  if (v33 != 8)
  {
    goto LABEL_35;
  }

LABEL_39:
  if (v22 < 1)
  {
    v12 = 0;
    v300 = v16;
    goto LABEL_236;
  }

  v38 = a7;
  v12 = 0;
  v39 = a6;
  v40 = a5 & 0xC;
  v299 = a5 - 1;
  v297 = v299 & 0xFFFFFFFFFFFFFFFCLL;
  v296 = v39;
  v294 = v39 + 1;
  v300 = v16;
LABEL_42:
  v305 = 0.0;
  if (a5 < 1)
  {
    goto LABEL_114;
  }

  v41 = v333;
  v42 = v330;
  v43 = v336;
  v44 = v27 & 0xC;
  if (a5 < 4)
  {
    v45 = 0;
LABEL_47:
    v47 = a5 - v45;
    v48 = 8 * v45;
    v49 = &v334[v45];
    v50 = &v329[v48];
    v51 = (&v333[-1] + v48);
    do
    {
      v52 = *v51++;
      v53 = v52;
      v54 = *v50++;
      *v49++ = v53 - v54;
      --v47;
    }

    while (v47);
    goto LABEL_49;
  }

  do
  {
    v46 = vsubq_f64(*v41, *v42);
    v43[-1] = vsubq_f64(v41[-1], v42[-1]);
    *v43 = v46;
    v43 += 2;
    v42 += 2;
    v41 += 2;
    v44 -= 4;
  }

  while (v44);
  v45 = a5 & 0xC;
  if (v40 != a5)
  {
    goto LABEL_47;
  }

LABEL_49:
  if (a5 >= 4)
  {
    v56 = v336;
    v57 = a7 + 1;
    v58 = v294;
    v59 = v27 & 0xC;
    do
    {
      v60 = vbslq_s8(vcgtq_f64(v57[-1], v56[-1]), v56[-1], v57[-1]);
      v61 = vbslq_s8(vcgtq_f64(*v57, *v56), *v56, *v57);
      v62 = v58[-1];
      v30 = vcgtq_f64(v60, v62);
      v63 = vbslq_s8(vcgtq_f64(v61, *v58), v61, *v58);
      v56[-1] = vbslq_s8(v30, v60, v62);
      *v56 = v63;
      v58 += 2;
      v57 += 2;
      v56 += 2;
      v59 -= 4;
    }

    while (v59);
    v55 = a5 & 0xC;
    if (v40 == a5)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v55 = 0;
  }

  v64 = a5 - v55;
  v65 = v55;
  v66 = &v296->f64[v55];
  v67 = &v38->f64[v65];
  v68 = &v334[v65];
  do
  {
    v69 = *v68;
    v70 = *v67++;
    v71 = v70;
    v72 = *v68 < v70;
    v73 = *v66++;
    v74 = v73;
    if (!v72)
    {
      v69 = v71;
    }

    if (v69 <= v74)
    {
      v69 = v74;
    }

    *v68++ = v69;
    --v64;
  }

  while (v64);
LABEL_60:
  if (a5 < 4)
  {
    v75 = 0;
LABEL_65:
    v80 = a5 - v75;
    v81 = v75;
    v82 = &v333[-1] + v75;
    v83 = &v334[v81];
    do
    {
      v84 = *v82++;
      *v83 = *v83 - v84;
      ++v83;
      --v80;
    }

    while (v80);
    goto LABEL_67;
  }

  v76 = v336;
  v77 = v333;
  v78 = v27 & 0xC;
  do
  {
    v79 = vsubq_f64(*v76, *v77);
    v76[-1] = vsubq_f64(v76[-1], v77[-1]);
    *v76 = v79;
    v77 += 2;
    v76 += 2;
    v78 -= 4;
  }

  while (v78);
  v75 = a5 & 0xC;
  if (v40 != a5)
  {
    goto LABEL_65;
  }

LABEL_67:
  if (a5 < 4)
  {
    v85 = 0;
    v86 = v302;
    goto LABEL_72;
  }

  v87 = v336;
  v88 = v27 & 0xC;
  do
  {
    v89 = v87[-1];
    v30 = vnegq_f64(v89);
    v90 = vbslq_s8(vcltzq_f64(*v87), vnegq_f64(*v87), *v87);
    v87[-1] = vbslq_s8(vcltzq_f64(v89), v30, v89);
    *v87 = v90;
    v87 += 2;
    v88 -= 4;
  }

  while (v88);
  v85 = a5 & 0xC;
  v86 = v302;
  if (v40 != a5)
  {
LABEL_72:
    v91 = a5 - v85;
    v92 = &v334[v85];
    do
    {
      v93 = *v92;
      if (*v92 < 0.0)
      {
        v93 = -*v92;
      }

      *v92++ = v93;
      --v91;
    }

    while (v91);
  }

  v94 = *v334;
  if (a5 != 1)
  {
    v95 = &v335;
    v96 = a5 - 1;
    do
    {
      v97 = *v95++;
      v98 = v97;
      if (v97 > v94)
      {
        v94 = v98;
      }

      --v96;
    }

    while (v96);
  }

  if (v94 > v295)
  {
    if (a5 > 3)
    {
      v100 = v330;
      v101 = v322;
      v102 = v27 & 0xC;
      do
      {
        v103 = vmulq_n_f64(*v100, v86);
        v101[-1] = vmulq_n_f64(v100[-1], v86);
        *v101 = v103;
        v101 += 2;
        v100 += 2;
        v102 -= 4;
      }

      while (v102);
      v99 = a5 & 0xC;
      if (v40 == a5)
      {
LABEL_89:
        if (a5 >= 4)
        {
          v111 = v322;
          v110 = v333;
          v112 = v27 & 0xC;
          do
          {
            v113 = vsubq_f64(*v110, *v111);
            v111[-1] = vsubq_f64(v110[-1], v111[-1]);
            *v111 = v113;
            v111 += 2;
            v110 += 2;
            v112 -= 4;
          }

          while (v112);
          v109 = a5 & 0xC;
          if (v40 == a5)
          {
LABEL_96:
            if (a5 >= 4)
            {
              v120 = v322;
              v121 = a7 + 1;
              v122 = v294;
              v123 = v27 & 0xC;
              do
              {
                v124 = vbslq_s8(vcgtq_f64(v121[-1], v120[-1]), v120[-1], v121[-1]);
                v125 = vbslq_s8(vcgtq_f64(*v121, *v120), *v120, *v121);
                v126 = v122[-1];
                v30 = vcgtq_f64(v124, v126);
                v127 = vbslq_s8(vcgtq_f64(v125, *v122), v125, *v122);
                v120[-1] = vbslq_s8(v30, v124, v126);
                *v120 = v127;
                v122 += 2;
                v121 += 2;
                v120 += 2;
                v123 -= 4;
              }

              while (v123);
              v119 = a5 & 0xC;
              if (v40 == a5)
              {
LABEL_107:
                if (a5 < 4)
                {
                  v138 = 0;
LABEL_112:
                  v143 = a5 - v138;
                  v144 = 8 * v138;
                  v145 = &v333[-1] + v138;
                  v146 = &v321[v144 + 56];
                  do
                  {
                    v147 = *v145++;
                    *v146 = *v146 - v147;
                    ++v146;
                    --v143;
                  }

                  while (v143);
                  goto LABEL_114;
                }

                v139 = v322;
                v140 = v333;
                v141 = v27 & 0xC;
                do
                {
                  v142 = vsubq_f64(*v139, *v140);
                  v139[-1] = vsubq_f64(v139[-1], v140[-1]);
                  *v139 = v142;
                  v140 += 2;
                  v139 += 2;
                  v141 -= 4;
                }

                while (v141);
                v138 = a5 & 0xC;
                if (v40 != a5)
                {
                  goto LABEL_112;
                }

LABEL_114:
                v148 = v327;
                if (v301 > 1)
                {
                  v149 = v328;
                  v150 = v301 - 1;
                  do
                  {
                    v151 = *v149++;
                    v152 = v151;
                    if (v151 > v148)
                    {
                      v148 = v152;
                    }

                    --v150;
                  }

                  while (v150);
                }

                if (a5 < 1)
                {
                  v154 = v12;
                  v155 = 0;
LABEL_139:
                  v175 = 0;
                  v30.i64[0] = 1.0;
                  while (1)
                  {
                    v304 = 0.0;
                    if (a5 < 1)
                    {
                      goto LABEL_155;
                    }

                    if (a5 < 4)
                    {
                      break;
                    }

                    v177 = v322;
                    v178 = v336;
                    v179 = v27 & 0xC;
                    do
                    {
                      v180 = vmulq_n_f64(*v177, *v30.i64);
                      v178[-1] = vmulq_n_f64(v177[-1], *v30.i64);
                      *v178 = v180;
                      v178 += 2;
                      v177 += 2;
                      v179 -= 4;
                    }

                    while (v179);
                    v176 = a5 & 0xC;
                    if (v40 != a5)
                    {
                      goto LABEL_146;
                    }

LABEL_148:
                    if (a5 < 4)
                    {
                      v186 = 0;
LABEL_153:
                      v192 = a5 - v186;
                      v193 = v186;
                      v194 = &v309[v186];
                      v195 = &v334[v193];
                      v196 = (&v333[-1] + v193 * 8);
                      do
                      {
                        v197 = *v196++;
                        v198 = v197;
                        v199 = *v195++;
                        *v194++ = v198 + v199;
                        --v192;
                      }

                      while (v192);
                      goto LABEL_155;
                    }

                    v187 = v333;
                    v188 = v336;
                    v189 = &v310;
                    v190 = v27 & 0xC;
                    do
                    {
                      v191 = vaddq_f64(*v187, *v188);
                      v189[-1] = vaddq_f64(v187[-1], v188[-1]);
                      *v189 = v191;
                      v189 += 2;
                      v188 += 2;
                      v187 += 2;
                      v190 -= 4;
                    }

                    while (v190);
                    v186 = a5 & 0xC;
                    if (v40 != a5)
                    {
                      goto LABEL_153;
                    }

LABEL_155:
                    v303 = v30;
                    a2(v309, a3, &v304);
                    v30 = v303;
                    v200.n128_f64[0] = v304;
                    if (v304 > v148 + v24 * *v303.i64 * v10)
                    {
                      v200.n128_f64[0] = v10 * (*v303.i64 * *v303.i64 * -0.5) / (v304 - v308 - *v303.i64 * v10);
                      v201 = v200.n128_f64[0] > v26 * *v303.i64 || v25 > v200.n128_f64[0];
                      *v30.i64 = v201 ? *v303.i64 * 0.5 : v10 * (*v303.i64 * *v303.i64 * -0.5) / (v304 - v308 - *v303.i64 * v10);
                      if (++v175 != 1000)
                      {
                        continue;
                      }
                    }

                    if (a5 < 1)
                    {
                      (a1)(v325, a3, &v305, v323, v200);
                      v202 = v154;
                      if (v155)
                      {
                        goto LABEL_202;
                      }
                    }

                    else
                    {
                      v202 = v154;
                      if (a5 < 4)
                      {
                        v203 = 0;
                        goto LABEL_171;
                      }

                      v205 = v322;
                      v206 = v326;
                      v207 = v27 & 0xC;
                      do
                      {
                        v208 = vmulq_n_f64(*v205, *v30.i64);
                        v206[-1] = vmulq_n_f64(v205[-1], *v30.i64);
                        *v206 = v208;
                        v206 += 2;
                        v205 += 2;
                        v207 -= 4;
                      }

                      while (v207);
                      v203 = a5 & 0xC;
                      if (v40 != a5)
                      {
LABEL_171:
                        v209 = a5 - v203;
                        v210 = 8 * v203;
                        v211 = &v325[8 * v203];
                        v212 = &v321[v210 + 56];
                        do
                        {
                          v213 = *v212++;
                          *v211++ = *v30.i64 * v213;
                          --v209;
                        }

                        while (v209);
                      }

                      if (a5 < 4)
                      {
                        v214 = 0;
                        goto LABEL_178;
                      }

                      v215 = v326;
                      v216 = v333;
                      v217 = v27 & 0xC;
                      do
                      {
                        v218 = vaddq_f64(*v215, *v216);
                        v215[-1] = vaddq_f64(v215[-1], v216[-1]);
                        *v215 = v218;
                        v216 += 2;
                        v215 += 2;
                        v217 -= 4;
                      }

                      while (v217);
                      v214 = a5 & 0xC;
                      if (v40 != a5)
                      {
LABEL_178:
                        v219 = a5 - v214;
                        v220 = 8 * v214;
                        v221 = &v333[-1] + v214;
                        v222 = &v325[v220];
                        do
                        {
                          v223 = *v221++;
                          *v222 = *v222 + v223;
                          ++v222;
                          --v219;
                        }

                        while (v219);
                      }

                      a1(v325, a3, &v305, v323);
                      if (a5 < 4)
                      {
                        v224 = 0;
                        goto LABEL_185;
                      }

                      v226 = v318;
                      v225 = v326;
                      v227 = v333;
                      v228 = v27 & 0xC;
                      do
                      {
                        v229 = vsubq_f64(*v225, *v227);
                        v226[-1] = vsubq_f64(v225[-1], v227[-1]);
                        *v226 = v229;
                        v226 += 2;
                        v227 += 2;
                        v225 += 2;
                        v228 -= 4;
                      }

                      while (v228);
                      v224 = a5 & 0xC;
                      if (v40 != a5)
                      {
LABEL_185:
                        v230 = a5 - v224;
                        v231 = 8 * v224;
                        v232 = &v317[8 * v224 + 64];
                        v233 = (&v333[-1] + v231);
                        v234 = &v325[v231];
                        do
                        {
                          v235 = *v234++;
                          v236 = v235;
                          v237 = *v233++;
                          *v232++ = v236 - v237;
                          --v230;
                        }

                        while (v230);
                      }

                      if (a5 < 4)
                      {
                        v238 = 0;
                        goto LABEL_192;
                      }

                      v239 = &v324;
                      v240 = v330;
                      v241 = v317;
                      v242 = v27 & 0xC;
                      do
                      {
                        v243 = vsubq_f64(*v239, *v240);
                        v241[-1] = vsubq_f64(v239[-1], v240[-1]);
                        *v241 = v243;
                        v241 += 2;
                        v240 += 2;
                        v239 += 2;
                        v242 -= 4;
                      }

                      while (v242);
                      v238 = a5 & 0xC;
                      if (v40 != a5)
                      {
LABEL_192:
                        v244 = a5 - v238;
                        v245 = 8 * v238;
                        v246 = &v316[8 * v238 + 56];
                        v247 = &v329[v245];
                        v248 = &v323[v245];
                        do
                        {
                          v249 = *v248++;
                          v250 = v249;
                          v251 = *v247++;
                          *v246++ = v250 - v251;
                          --v244;
                        }

                        while (v244);
                      }

                      if (a5 < 4)
                      {
                        v252 = 0;
                        goto LABEL_199;
                      }

                      v253 = v318;
                      v254 = v317;
                      v255 = &v312;
                      v256 = v27 & 0xC;
                      do
                      {
                        v257 = vmulq_f64(*v253, *v254);
                        v255[-1] = vmulq_f64(v253[-1], v254[-1]);
                        *v255 = v257;
                        v255 += 2;
                        v254 += 2;
                        v253 += 2;
                        v256 -= 4;
                      }

                      while (v256);
                      v252 = a5 & 0xC;
                      if (v40 != a5)
                      {
LABEL_199:
                        v258 = a5 - v252;
                        v259 = 8 * v252;
                        v260 = &v311[v252];
                        v261 = &v316[v259 + 56];
                        v262 = &v317[v259 + 64];
                        do
                        {
                          v263 = *v262++;
                          v264 = v263;
                          v265 = *v261++;
                          *v260++ = v264 * v265;
                          --v258;
                        }

                        while (v258);
                      }

                      v204 = v311[0];
                      if (v155)
                      {
LABEL_202:
                        if (v299 < 4)
                        {
                          v266 = 1;
                          goto LABEL_207;
                        }

                        v267 = &v313;
                        v268 = (a5 - 1) & 0xFFFFFFFFFFFFFFFCLL;
                        do
                        {
                          v204 = v204 + *(v267 - 2) + *(v267 - 1) + *v267 + v267[1];
                          v267 += 4;
                          v268 -= 4;
                        }

                        while (v268);
                        v266 = v297 | 1;
                        if (v299 != v297)
                        {
LABEL_207:
                          v269 = a5 - v266;
                          v270 = &v311[v266];
                          do
                          {
                            v271 = *v270++;
                            v204 = v204 + v271;
                            --v269;
                          }

                          while (v269);
                        }
                      }
                    }

                    v272 = v23;
                    if (v204 > 0.0)
                    {
                      if (a5 >= 1)
                      {
                        if (a5 < 4)
                        {
                          v273 = 0;
                          goto LABEL_216;
                        }

                        v274 = v318;
                        v275 = &v315;
                        v276 = v27 & 0xC;
                        do
                        {
                          v277 = vmulq_f64(*v274, *v274);
                          v275[-1] = vmulq_f64(v274[-1], v274[-1]);
                          *v275 = v277;
                          v275 += 2;
                          v274 += 2;
                          v276 -= 4;
                        }

                        while (v276);
                        v273 = a5 & 0xC;
                        if (v40 != a5)
                        {
LABEL_216:
                          v278 = a5 - v273;
                          v279 = 8 * v273;
                          v280 = &v314[v273];
                          v281 = &v317[v279 + 64];
                          do
                          {
                            v282 = *v281++;
                            *v280++ = v282 * v282;
                            --v278;
                          }

                          while (v278);
                        }

                        v272 = v314[0];
                      }

                      if (v155)
                      {
                        if (v299 < 4)
                        {
                          v283 = 1;
                          goto LABEL_225;
                        }

                        v284 = v316;
                        v285 = (a5 - 1) & 0xFFFFFFFFFFFFFFFCLL;
                        do
                        {
                          v272 = v272 + *(v284 - 2) + *(v284 - 1) + *v284 + v284[1];
                          v284 += 4;
                          v285 -= 4;
                        }

                        while (v285);
                        v283 = v297 | 1;
                        if (v299 != v297)
                        {
LABEL_225:
                          v286 = a5 - v283;
                          v287 = &v314[v283];
                          do
                          {
                            v288 = *v287++;
                            v272 = v272 + v288;
                            --v286;
                          }

                          while (v286);
                        }
                      }

                      v289 = v272 / v204;
                      if (v289 >= v23)
                      {
                        v289 = v23;
                      }

                      v272 = v293;
                      if (v293 <= v289)
                      {
                        v272 = v289;
                      }
                    }

                    v302 = v272;
                    v290 = v202 + 1;
                    __memcpy_chk();
                    v291 = v305;
                    v308 = v305;
                    v12 = v290;
                    __memcpy_chk();
                    *&v328[v290 % v301 - 1] = v291;
                    if (v291 < v300)
                    {
                      __memcpy_chk();
                      v300 = v291;
                    }

                    v38 = a7;
                    if (v290 == v22)
                    {
                      v12 = v22;
                      v14 = a9;
                      v13 = a10;
                      goto LABEL_236;
                    }

                    goto LABEL_42;
                  }

                  v176 = 0;
LABEL_146:
                  v181 = a5 - v176;
                  v182 = 8 * v176;
                  v183 = &v334[v176];
                  v184 = &v321[v182 + 56];
                  do
                  {
                    v185 = *v184++;
                    *v183++ = *v30.i64 * v185;
                    --v181;
                  }

                  while (v181);
                  goto LABEL_148;
                }

                if (a5 >= 4)
                {
                  v156 = v330;
                  v157 = v322;
                  v158 = &v320;
                  v159 = v27 & 0xC;
                  do
                  {
                    v160 = vmulq_f64(*v156, *v157);
                    v158[-1] = vmulq_f64(v156[-1], v157[-1]);
                    *v158 = v160;
                    v158 += 2;
                    v157 += 2;
                    v156 += 2;
                    v159 -= 4;
                  }

                  while (v159);
                  v153 = a5 & 0xC;
                  if (v40 == a5)
                  {
LABEL_128:
                    v10 = v319[0];
                    if (a5 == 1)
                    {
                      v154 = v12;
                      v155 = 0;
                      goto LABEL_139;
                    }

                    if (a5 >= 5)
                    {
                      v170 = v321;
                      v171 = (a5 - 1) & 0xFFFFFFFFFFFFFFFCLL;
                      do
                      {
                        v10 = v10 + *(v170 - 2) + *(v170 - 1) + *v170 + v170[1];
                        v170 += 4;
                        v171 -= 4;
                      }

                      while (v171);
                      if (v299 == v297)
                      {
                        goto LABEL_138;
                      }

                      v169 = v297 | 1;
                    }

                    else
                    {
                      v169 = 1;
                    }

                    v172 = a5 - v169;
                    v173 = &v319[v169];
                    do
                    {
                      v174 = *v173++;
                      v10 = v10 + v174;
                      --v172;
                    }

                    while (v172);
LABEL_138:
                    v154 = v12;
                    v155 = 1;
                    goto LABEL_139;
                  }
                }

                else
                {
                  v153 = 0;
                }

                v161 = a5 - v153;
                v162 = 8 * v153;
                v163 = &v319[v153];
                v164 = &v321[v162 + 56];
                v165 = &v329[v162];
                do
                {
                  v166 = *v165++;
                  v167 = v166;
                  v168 = *v164++;
                  *v163++ = v167 * v168;
                  --v161;
                }

                while (v161);
                goto LABEL_128;
              }
            }

            else
            {
              v119 = 0;
            }

            v128 = a5 - v119;
            v129 = v119;
            v130 = &v296->f64[v119];
            v131 = &v38->f64[v129];
            v132 = &v321[v129 * 8 + 56];
            do
            {
              v133 = *v132;
              v134 = *v131++;
              v135 = v134;
              v72 = *v132 < v134;
              v136 = *v130++;
              v137 = v136;
              if (!v72)
              {
                v133 = v135;
              }

              if (v133 <= v137)
              {
                v133 = v137;
              }

              *v132++ = v133;
              --v128;
            }

            while (v128);
            goto LABEL_107;
          }
        }

        else
        {
          v109 = 0;
        }

        v114 = a5 - v109;
        v115 = 8 * v109;
        v116 = &v321[8 * v109 + 56];
        v117 = (&v333[-1] + v115);
        do
        {
          v118 = *v117++;
          *v116 = v118 - *v116;
          ++v116;
          --v114;
        }

        while (v114);
        goto LABEL_96;
      }
    }

    else
    {
      v99 = 0;
    }

    v104 = a5 - v99;
    v105 = 8 * v99;
    v106 = &v321[8 * v99 + 56];
    v107 = &v329[v105];
    do
    {
      v108 = *v107++;
      *v106++ = v86 * v108;
      --v104;
    }

    while (v104);
    goto LABEL_89;
  }

  v14 = a9;
  v13 = a10;
LABEL_236:
  v17 = v12 < v22;
LABEL_237:
  result = memcpy(v14, __src, 8 * a5);
  if (v13)
  {
    *v13 = v12;
    *(v13 + 4) = v17;
    *(v13 + 5) = v306;
    *(v13 + 7) = v307;
    *(v13 + 8) = v16;
    *(v13 + 16) = v300;
  }

  return result;
}

void sub_2403F9CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CVPixelBufferARCWrapper;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2403FAB68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2403FBD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, id obj, void *a23, void *a24)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2403FC178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  objc_sync_exit(v20);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a18);
  _Unwind_Resume(a1);
}

void sub_2403FC5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  objc_sync_exit(v21);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(&a18);
  _Unwind_Resume(a1);
}

void sub_2403FCBFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  InstrumentsTraceGuard::~InstrumentsTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_2403FCDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = ADJasperPearlInFieldCalibrationExecutor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void GMC_RansacFitFundMatrix(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    operator new[]();
  }

  if (*(a2 + 20))
  {
    operator new[]();
  }

  Algo::Normalize2DPts();
}

void sub_2403FE080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  MatrixNxPts<3u,double>::~MatrixNxPts(&a35);
  MatrixNxPts<1u,unsigned int>::~MatrixNxPts(v55 - 152);
  a41 = a16;
  if (a42 && a44 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  a52 = a17;
  if (a53 && a55 == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  *(v55 - 232) = a18;
  if (*(v55 - 224) && *(v55 - 208) == 1)
  {
    MEMORY[0x245CBFC90]();
  }

  *(v55 - 192) = a19;
  if (*(v55 - 184))
  {
    if (*(v55 - 168) == 1)
    {
      MEMORY[0x245CBFC90]();
    }
  }

  _Unwind_Resume(a1);
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
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

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x282204398](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}