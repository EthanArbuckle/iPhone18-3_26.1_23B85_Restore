@interface ADNormals
+ (int64_t)normalsFromDepth:(__CVBuffer *)a3 focalLength:(float)a4 principalPoint:(CGPoint)a5 normalsOutput:(__CVBuffer *)a6 withHelperBuffer:(id)a7;
@end

@implementation ADNormals

+ (int64_t)normalsFromDepth:(__CVBuffer *)a3 focalLength:(float)a4 principalPoint:(CGPoint)a5 normalsOutput:(__CVBuffer *)a6 withHelperBuffer:(id)a7
{
  y = a5.y;
  x = a5.x;
  v402 = *&a4;
  v11 = a7;
  v12 = -22953;
  if (a3 && a6)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v14 = CVPixelBufferGetPixelFormatType(a6);
    if (v14 == 1380411457)
    {
      v12 = -22956;
      if (PixelFormatType > 1751410031)
      {
        if (PixelFormatType == 1751411059)
        {
          v61 = v11;
          Width = CVPixelBufferGetWidth(a3);
          Height = CVPixelBufferGetHeight(a3);
          v64 = CVPixelBufferGetWidth(a6);
          v65 = CVPixelBufferGetHeight(a6);
          v12 = -22953;
          if (Width != v64 || Height != v65)
          {
            goto LABEL_207;
          }

          if (!v61)
          {
            operator new();
          }

          v67 = v61 + 1;
          v66 = v61[1];
          v166 = (v61[2] - v66) >> 4;
          if (Height * Width <= v166)
          {
            if (Height * Width < v166)
            {
              v61[2] = v66 + 16 * Height * Width;
            }
          }

          else
          {
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v67, Height * Width - v166);
          }

          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a6, 0);
          BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
          v401 = CVPixelBufferGetBytesPerRow(a6);
          BaseAddress = CVPixelBufferGetBaseAddress(a3);
          v169 = CVPixelBufferGetBaseAddress(a6);
          DataSize = CVPixelBufferGetDataSize(a6);
          bzero(v169, DataSize);
          if (Height)
          {
            if (Width)
            {
              LODWORD(v172) = 0;
              v173 = 0;
              v174 = vdup_lane_s32(v402, 0);
              do
              {
                v175 = 0;
                v172 = v172;
                do
                {
                  _H3 = *&BaseAddress[2 * v175];
                  __asm { FCVT            S3, H3 }

                  v179 = 1.0 / _S3;
                  *&v171 = v175 - x;
                  v176 = v173 - y;
                  *(&v171 + 1) = v176;
                  *&v171 = vdiv_f32(vmul_n_f32(*&v171, v179), v174);
                  *(&v171 + 2) = v179;
                  *(*v67 + 16 * v172) = v171;
                  ++v175;
                  ++v172;
                }

                while (Width != v175);
                ++v173;
                BaseAddress += 2 * (BytesPerRow >> 1);
              }

              while (v173 != Height);
            }

            v180 = Height - 1;
            if (Height - 1 < 2)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v180 = -1;
          }

          if (Width - 1 >= 2)
          {
            v365 = 16 * Width + 16;
            v366 = 8 * (v401 >> 3);
            v367 = Width - 2;
            v368 = 16 - 16 * Width;
            v369 = Width - 3;
            v370 = 1;
            v371.i64[0] = 0xC0000000C0000000;
            v371.i64[1] = 0xC0000000C0000000;
            v372.i64[0] = 0x4000000040000000;
            v372.i64[1] = 0x4000000040000000;
            v373.i64[0] = 0x3E0000003E000000;
            v373.i64[1] = 0x3E0000003E000000;
            do
            {
              v374 = Width + 1;
              v375 = v365 + 16 * v374;
              v376 = v368 + 16 * v374;
              v377 = 16 * v374 + 16;
              v378 = v369 + v374;
              v379 = v367;
              v380 = v366 + 8;
              do
              {
                v381 = (*v67 + v376);
                v382 = v381[-2];
                v383 = (*v67 + v375);
                v384 = v383[-2];
                v385 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v381, v382), v371, *(*v67 + v377 - 32)), v372, *(*v67 + v377)), v384), *v383), v373);
                v386 = vmulq_f32(vaddq_f32(*v383, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v384, v382), v371, v381[-1]), v372, v383[-1]), *v381)), v373);
                _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v386, v386), v386, 0xCuLL), vnegq_f32(v385)), v386, vextq_s8(vuzp1q_s32(v385, v385), v385, 0xCuLL));
                v388 = vmulq_f32(_Q5, _Q5);
                *&v389 = v388.f32[1] + (v388.f32[2] + v388.f32[0]);
                v390 = vrsqrte_f32(v389);
                v391 = vmul_f32(v390, vrsqrts_f32(v389, vmul_f32(v390, v390)));
                v392 = vmulq_n_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), vmul_f32(v391, vrsqrts_f32(v389, vmul_f32(v391, v391))).f32[0]);
                _Q5.i32[0] = v392.i32[2];
                __asm { FCVT            H5, S5 }

                v392.i32[0] = vcvt_f16_f32(v392).u32[0];
                v392.i16[2] = _Q5.i16[0];
                v392.i16[3] = COERCE_UNSIGNED_INT(1.0);
                *&v169[v380] = v392.i64[0];
                v375 += 16;
                v380 += 8;
                v376 += 16;
                v377 += 16;
                --v379;
              }

              while (v379);
              LODWORD(Width) = v378 + 2;
              ++v370;
              v169 += v366;
            }

            while (v370 != v180);
          }

          goto LABEL_206;
        }

        if (PixelFormatType == 1751410032)
        {
          v395 = v11;
          v35 = CVPixelBufferGetWidth(a3);
          v36 = CVPixelBufferGetHeight(a3);
          v37 = CVPixelBufferGetWidth(a6);
          v38 = CVPixelBufferGetHeight(a6);
          v12 = -22953;
          if (v35 != v37 || v36 != v38)
          {
            goto LABEL_207;
          }

          if (!v395)
          {
            operator new();
          }

          v40 = v395 + 1;
          v39 = v395[1];
          v138 = (v395[2] - v39) >> 4;
          if (v36 * v35 <= v138)
          {
            if (v36 * v35 < v138)
            {
              v395[2] = v39 + 16 * v36 * v35;
            }
          }

          else
          {
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v40, v36 * v35 - v138);
          }

          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a6, 0);
          v139 = CVPixelBufferGetBytesPerRow(a3);
          v140 = CVPixelBufferGetBytesPerRow(a6);
          v141 = CVPixelBufferGetBaseAddress(a3);
          v142 = CVPixelBufferGetBaseAddress(a6);
          v143 = CVPixelBufferGetDataSize(a6);
          bzero(v142, v143);
          if (v36)
          {
            if (v35)
            {
              LODWORD(v145) = 0;
              v146 = 0;
              v147 = vdup_lane_s32(v402, 0);
              do
              {
                v148 = 0;
                v145 = v145;
                do
                {
                  _H2 = *&v141[2 * v148];
                  __asm { FCVT            S2, H2 }

                  *&v144 = v148 - x;
                  v149 = v146 - y;
                  *(&v144 + 1) = v149;
                  *&v144 = vdiv_f32(vmul_n_f32(*&v144, _S2), v147);
                  *(&v144 + 2) = _S2;
                  *(*v40 + 16 * v145) = v144;
                  ++v148;
                  ++v145;
                }

                while (v35 != v148);
                ++v146;
                v141 += 2 * (v139 >> 1);
              }

              while (v146 != v36);
            }

            v152 = v36 - 1;
            if (v36 - 1 < 2)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v152 = -1;
          }

          if (v35 - 1 >= 2)
          {
            v309 = 16 * v35 + 16;
            v310 = 8 * (v140 >> 3);
            v311 = v35 - 2;
            v312 = 16 - 16 * v35;
            v313 = v35 - 3;
            v314 = 1;
            v315.i64[0] = 0xC0000000C0000000;
            v315.i64[1] = 0xC0000000C0000000;
            v316.i64[0] = 0x4000000040000000;
            v316.i64[1] = 0x4000000040000000;
            v317.i64[0] = 0x3E0000003E000000;
            v317.i64[1] = 0x3E0000003E000000;
            do
            {
              v318 = v35 + 1;
              v319 = v309 + 16 * v318;
              v320 = v312 + 16 * v318;
              v321 = 16 * v318 + 16;
              v322 = v313 + v318;
              v323 = v311;
              v324 = v310 + 8;
              do
              {
                v325 = (*v40 + v320);
                v326 = v325[-2];
                v327 = (*v40 + v319);
                v328 = v327[-2];
                v329 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v325, v326), v315, *(*v40 + v321 - 32)), v316, *(*v40 + v321)), v328), *v327), v317);
                v330 = vmulq_f32(vaddq_f32(*v327, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v328, v326), v315, v325[-1]), v316, v327[-1]), *v325)), v317);
                _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v330, v330), v330, 0xCuLL), vnegq_f32(v329)), v330, vextq_s8(vuzp1q_s32(v329, v329), v329, 0xCuLL));
                v332 = vmulq_f32(_Q5, _Q5);
                *&v333 = v332.f32[1] + (v332.f32[2] + v332.f32[0]);
                v334 = vrsqrte_f32(v333);
                v335 = vmul_f32(v334, vrsqrts_f32(v333, vmul_f32(v334, v334)));
                v336 = vmulq_n_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), vmul_f32(v335, vrsqrts_f32(v333, vmul_f32(v335, v335))).f32[0]);
                _Q5.i32[0] = v336.i32[2];
                __asm { FCVT            H5, S5 }

                v336.i32[0] = vcvt_f16_f32(v336).u32[0];
                v336.i16[2] = _Q5.i16[0];
                v336.i16[3] = COERCE_UNSIGNED_INT(1.0);
                *&v142[v324] = v336.i64[0];
                v319 += 16;
                v324 += 8;
                v320 += 16;
                v321 += 16;
                --v323;
              }

              while (v323);
              LODWORD(v35) = v322 + 2;
              ++v314;
              v142 += v310;
            }

            while (v314 != v152);
          }

          goto LABEL_206;
        }
      }

      else
      {
        if (PixelFormatType == 1717855600)
        {
          v396 = v11;
          v55 = CVPixelBufferGetWidth(a3);
          v56 = CVPixelBufferGetHeight(a3);
          v57 = CVPixelBufferGetWidth(a6);
          v58 = CVPixelBufferGetHeight(a6);
          v12 = -22953;
          if (v55 != v57 || v56 != v58)
          {
            goto LABEL_207;
          }

          if (!v396)
          {
            operator new();
          }

          v60 = v396 + 1;
          v59 = v396[1];
          v153 = (v396[2] - v59) >> 4;
          if (v56 * v55 <= v153)
          {
            if (v56 * v55 < v153)
            {
              v396[2] = v59 + 16 * v56 * v55;
            }
          }

          else
          {
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v60, v56 * v55 - v153);
          }

          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a6, 0);
          v154 = CVPixelBufferGetBytesPerRow(a3);
          v155 = CVPixelBufferGetBytesPerRow(a6);
          v156 = CVPixelBufferGetBaseAddress(a3);
          v157 = CVPixelBufferGetBaseAddress(a6);
          v158 = CVPixelBufferGetDataSize(a6);
          bzero(v157, v158);
          if (v56)
          {
            if (v55)
            {
              LODWORD(v160) = 0;
              v161 = 0;
              v162 = vdup_lane_s32(v402, 0);
              do
              {
                v163 = 0;
                v160 = v160;
                do
                {
                  *&v159 = v163 - x;
                  v164 = v161 - y;
                  *(&v159 + 1) = v164;
                  *&v159 = vdiv_f32(vmul_n_f32(*&v159, v156[v163]), v162);
                  *(&v159 + 2) = v156[v163];
                  *(*v60 + 16 * v160) = v159;
                  ++v163;
                  ++v160;
                }

                while (v55 != v163);
                ++v161;
                v156 += v154 >> 2;
              }

              while (v161 != v56);
            }

            v165 = v56 - 1;
            if (v56 - 1 < 2)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v165 = -1;
          }

          if (v55 - 1 >= 2)
          {
            v337 = 16 * v55 + 16;
            v338 = 8 * (v155 >> 3);
            v339 = v55 - 2;
            v340 = 16 - 16 * v55;
            v341 = v55 - 3;
            v342 = 1;
            v343.i64[0] = 0xC0000000C0000000;
            v343.i64[1] = 0xC0000000C0000000;
            v344.i64[0] = 0x4000000040000000;
            v344.i64[1] = 0x4000000040000000;
            v345.i64[0] = 0x3E0000003E000000;
            v345.i64[1] = 0x3E0000003E000000;
            do
            {
              v346 = v55 + 1;
              v347 = v337 + 16 * v346;
              v348 = v340 + 16 * v346;
              v349 = 16 * v346 + 16;
              v350 = v341 + v346;
              v351 = v339;
              v352 = v338 + 8;
              do
              {
                v353 = (*v60 + v348);
                v354 = v353[-2];
                v355 = (*v60 + v347);
                v356 = v355[-2];
                v357 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v353, v354), v343, *(*v60 + v349 - 32)), v344, *(*v60 + v349)), v356), *v355), v345);
                v358 = vmulq_f32(vaddq_f32(*v355, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v356, v354), v343, v353[-1]), v344, v355[-1]), *v353)), v345);
                _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v358, v358), v358, 0xCuLL), vnegq_f32(v357)), v358, vextq_s8(vuzp1q_s32(v357, v357), v357, 0xCuLL));
                v360 = vmulq_f32(_Q5, _Q5);
                *&v361 = v360.f32[1] + (v360.f32[2] + v360.f32[0]);
                v362 = vrsqrte_f32(v361);
                v363 = vmul_f32(v362, vrsqrts_f32(v361, vmul_f32(v362, v362)));
                v364 = vmulq_n_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), vmul_f32(v363, vrsqrts_f32(v361, vmul_f32(v363, v363))).f32[0]);
                _Q5.i32[0] = v364.i32[2];
                __asm { FCVT            H5, S5 }

                v364.i32[0] = vcvt_f16_f32(v364).u32[0];
                v364.i16[2] = _Q5.i16[0];
                v364.i16[3] = COERCE_UNSIGNED_INT(1.0);
                *&v157[v352] = v364.i64[0];
                v347 += 16;
                v352 += 8;
                v348 += 16;
                v349 += 16;
                --v351;
              }

              while (v351);
              LODWORD(v55) = v350 + 2;
              ++v342;
              v157 += v338;
            }

            while (v342 != v165);
          }

          goto LABEL_206;
        }

        if (PixelFormatType == 1717856627)
        {
          v394 = v11;
          v22 = CVPixelBufferGetWidth(a3);
          v23 = CVPixelBufferGetHeight(a3);
          v24 = CVPixelBufferGetWidth(a6);
          v25 = CVPixelBufferGetHeight(a6);
          v12 = -22953;
          if (v22 != v24 || v23 != v25)
          {
            goto LABEL_207;
          }

          if (!v394)
          {
            operator new();
          }

          v27 = v394 + 1;
          v26 = v394[1];
          v125 = (v394[2] - v26) >> 4;
          if (v23 * v22 <= v125)
          {
            if (v23 * v22 < v125)
            {
              v394[2] = v26 + 16 * v23 * v22;
            }
          }

          else
          {
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v27, v23 * v22 - v125);
          }

          CVPixelBufferLockBaseAddress(a3, 1uLL);
          CVPixelBufferLockBaseAddress(a6, 0);
          v126 = CVPixelBufferGetBytesPerRow(a3);
          v127 = CVPixelBufferGetBytesPerRow(a6);
          v128 = CVPixelBufferGetBaseAddress(a3);
          v129 = CVPixelBufferGetBaseAddress(a6);
          v130 = CVPixelBufferGetDataSize(a6);
          bzero(v129, v130);
          if (v23)
          {
            if (v22)
            {
              LODWORD(v132) = 0;
              v133 = 0;
              v134 = vdup_lane_s32(v402, 0);
              do
              {
                v135 = 0;
                v132 = v132;
                do
                {
                  *&v131 = v135 - x;
                  v136 = v133 - y;
                  *(&v131 + 1) = v136;
                  *&v131 = vdiv_f32(vmul_n_f32(*&v131, 1.0 / v128[v135]), v134);
                  *(&v131 + 2) = 1.0 / v128[v135];
                  *(*v27 + 16 * v132) = v131;
                  ++v135;
                  ++v132;
                }

                while (v22 != v135);
                ++v133;
                v128 += v126 >> 2;
              }

              while (v133 != v23);
            }

            v137 = v23 - 1;
            if (v23 - 1 < 2)
            {
              goto LABEL_206;
            }
          }

          else
          {
            v137 = -1;
          }

          if (v22 - 1 >= 2)
          {
            v281 = 16 * v22 + 16;
            v282 = 8 * (v127 >> 3);
            v283 = v22 - 2;
            v284 = 16 - 16 * v22;
            v285 = v22 - 3;
            v286 = 1;
            v287.i64[0] = 0xC0000000C0000000;
            v287.i64[1] = 0xC0000000C0000000;
            v288.i64[0] = 0x4000000040000000;
            v288.i64[1] = 0x4000000040000000;
            v289.i64[0] = 0x3E0000003E000000;
            v289.i64[1] = 0x3E0000003E000000;
            do
            {
              v290 = v22 + 1;
              v291 = v281 + 16 * v290;
              v292 = v284 + 16 * v290;
              v293 = 16 * v290 + 16;
              v294 = v285 + v290;
              v295 = v283;
              v296 = v282 + 8;
              do
              {
                v297 = (*v27 + v292);
                v298 = v297[-2];
                v299 = (*v27 + v291);
                v300 = v299[-2];
                v301 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v297, v298), v287, *(*v27 + v293 - 32)), v288, *(*v27 + v293)), v300), *v299), v289);
                v302 = vmulq_f32(vaddq_f32(*v299, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v300, v298), v287, v297[-1]), v288, v299[-1]), *v297)), v289);
                _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v302, v302), v302, 0xCuLL), vnegq_f32(v301)), v302, vextq_s8(vuzp1q_s32(v301, v301), v301, 0xCuLL));
                v304 = vmulq_f32(_Q5, _Q5);
                *&v305 = v304.f32[1] + (v304.f32[2] + v304.f32[0]);
                v306 = vrsqrte_f32(v305);
                v307 = vmul_f32(v306, vrsqrts_f32(v305, vmul_f32(v306, v306)));
                v308 = vmulq_n_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), vmul_f32(v307, vrsqrts_f32(v305, vmul_f32(v307, v307))).f32[0]);
                _Q5.i32[0] = v308.i32[2];
                __asm { FCVT            H5, S5 }

                v308.i32[0] = vcvt_f16_f32(v308).u32[0];
                v308.i16[2] = _Q5.i16[0];
                v308.i16[3] = COERCE_UNSIGNED_INT(1.0);
                *&v129[v296] = v308.i64[0];
                v291 += 16;
                v296 += 8;
                v292 += 16;
                v293 += 16;
                --v295;
              }

              while (v295);
              LODWORD(v22) = v294 + 2;
              ++v286;
              v129 += v282;
            }

            while (v286 != v137);
          }

          goto LABEL_206;
        }
      }
    }

    else
    {
      v12 = -22956;
      if (v14 == 1380410945)
      {
        if (PixelFormatType > 1751410031)
        {
          if (PixelFormatType == 1751410032)
          {
            v48 = v11;
            v49 = CVPixelBufferGetWidth(a3);
            v50 = CVPixelBufferGetHeight(a3);
            v51 = CVPixelBufferGetWidth(a6);
            v52 = CVPixelBufferGetHeight(a6);
            v12 = -22953;
            if (v49 != v51 || v50 != v52)
            {
              goto LABEL_207;
            }

            if (!v48)
            {
              operator new();
            }

            v54 = v48 + 1;
            v53 = v48[1];
            v111 = (v48[2] - v53) >> 4;
            if (v50 * v49 <= v111)
            {
              if (v50 * v49 < v111)
              {
                v48[2] = v53 + 16 * v50 * v49;
              }
            }

            else
            {
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v54, v50 * v49 - v111);
            }

            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a6, 0);
            v112 = CVPixelBufferGetBytesPerRow(a3);
            v400 = CVPixelBufferGetBytesPerRow(a6);
            v113 = CVPixelBufferGetBaseAddress(a3);
            v114 = CVPixelBufferGetBaseAddress(a6);
            v115 = CVPixelBufferGetDataSize(a6);
            bzero(v114, v115);
            if (v50)
            {
              if (v49)
              {
                LODWORD(v117) = 0;
                v118 = 0;
                v119 = vdup_lane_s32(v402, 0);
                do
                {
                  v120 = 0;
                  v117 = v117;
                  do
                  {
                    _H2 = *&v113[2 * v120];
                    __asm { FCVT            S2, H2 }

                    *&v116 = v120 - x;
                    v121 = v118 - y;
                    *(&v116 + 1) = v121;
                    *&v116 = vdiv_f32(vmul_n_f32(*&v116, _S2), v119);
                    *(&v116 + 2) = _S2;
                    *(*v54 + 16 * v117) = v116;
                    ++v120;
                    ++v117;
                  }

                  while (v49 != v120);
                  ++v118;
                  v113 += 2 * (v112 >> 1);
                }

                while (v118 != v50);
              }

              v124 = v50 - 1;
              if (v50 - 1 < 2)
              {
                goto LABEL_206;
              }
            }

            else
            {
              v124 = -1;
            }

            if (v49 - 1 >= 2)
            {
              v256 = 16 * v49 + 16;
              v257 = 16 * (v400 >> 4);
              v258 = v49 - 2;
              v259 = 16 - 16 * v49;
              v260 = v49 - 3;
              v261 = 1;
              v262.i64[0] = 0xC0000000C0000000;
              v262.i64[1] = 0xC0000000C0000000;
              v263.i64[0] = 0x4000000040000000;
              v263.i64[1] = 0x4000000040000000;
              v264.i64[0] = 0x3E0000003E000000;
              v264.i64[1] = 0x3E0000003E000000;
              do
              {
                v265 = v49 + 1;
                v266 = v256 + 16 * v265;
                v267 = v259 + 16 * v265;
                v268 = 16 * v265 + 16;
                v269 = v260 + v265;
                v270 = v258;
                v271 = v257 + 16;
                do
                {
                  v272 = (*v54 + v267);
                  v273 = v272[-2];
                  v274 = (*v54 + v266);
                  v275 = v274[-2];
                  v276 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v272, v273), v262, *(*v54 + v268 - 32)), v263, *(*v54 + v268)), v275), *v274), v264);
                  v277 = vmulq_f32(vaddq_f32(*v274, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v275, v273), v262, v272[-1]), v263, v274[-1]), *v272)), v264);
                  v278 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v277, v277), v277, 0xCuLL), vnegq_f32(v276)), v277, vextq_s8(vuzp1q_s32(v276, v276), v276, 0xCuLL));
                  v279 = vmulq_f32(v278, v278);
                  v276.f32[0] = v279.f32[1] + (v279.f32[2] + v279.f32[0]);
                  *v279.f32 = vrsqrte_f32(v276.u32[0]);
                  *v279.f32 = vmul_f32(*v279.f32, vrsqrts_f32(v276.u32[0], vmul_f32(*v279.f32, *v279.f32)));
                  v280 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v278, v278), v278, 0xCuLL), vmul_f32(*v279.f32, vrsqrts_f32(v276.u32[0], vmul_f32(*v279.f32, *v279.f32))).f32[0]);
                  v280.i32[3] = 1.0;
                  *&v114[v271] = v280;
                  v266 += 16;
                  v271 += 16;
                  v267 += 16;
                  v268 += 16;
                  --v270;
                }

                while (v270);
                LODWORD(v49) = v269 + 2;
                ++v261;
                v114 += v257;
              }

              while (v261 != v124);
            }

            goto LABEL_206;
          }

          if (PixelFormatType == 1751411059)
          {
            v28 = v11;
            v29 = CVPixelBufferGetWidth(a3);
            v30 = CVPixelBufferGetHeight(a3);
            v31 = CVPixelBufferGetWidth(a6);
            v32 = CVPixelBufferGetHeight(a6);
            v12 = -22953;
            if (v29 != v31 || v30 != v32)
            {
              goto LABEL_207;
            }

            if (!v28)
            {
              operator new();
            }

            v34 = v28 + 1;
            v33 = v28[1];
            v80 = (v28[2] - v33) >> 4;
            if (v30 * v29 <= v80)
            {
              if (v30 * v29 < v80)
              {
                v28[2] = v33 + 16 * v30 * v29;
              }
            }

            else
            {
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v34, v30 * v29 - v80);
            }

            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a6, 0);
            v81 = CVPixelBufferGetBytesPerRow(a3);
            v398 = CVPixelBufferGetBytesPerRow(a6);
            v82 = CVPixelBufferGetBaseAddress(a3);
            v83 = CVPixelBufferGetBaseAddress(a6);
            v84 = CVPixelBufferGetDataSize(a6);
            bzero(v83, v84);
            if (v30)
            {
              if (v29)
              {
                LODWORD(v86) = 0;
                v87 = 0;
                v88 = vdup_lane_s32(v402, 0);
                do
                {
                  v89 = 0;
                  v86 = v86;
                  do
                  {
                    _H3 = *&v82[2 * v89];
                    __asm { FCVT            S3, H3 }

                    v97 = 1.0 / _S3;
                    *&v85 = v89 - x;
                    v90 = v87 - y;
                    *(&v85 + 1) = v90;
                    *&v85 = vdiv_f32(vmul_n_f32(*&v85, v97), v88);
                    *(&v85 + 2) = v97;
                    *(*v34 + 16 * v86) = v85;
                    ++v89;
                    ++v86;
                  }

                  while (v29 != v89);
                  ++v87;
                  v82 += 2 * (v81 >> 1);
                }

                while (v87 != v30);
              }

              v98 = v30 - 1;
              if (v30 - 1 < 2)
              {
                goto LABEL_206;
              }
            }

            else
            {
              v98 = -1;
            }

            if (v29 - 1 >= 2)
            {
              v206 = 16 * v29 + 16;
              v207 = 16 * (v398 >> 4);
              v208 = v29 - 2;
              v209 = 16 - 16 * v29;
              v210 = v29 - 3;
              v211 = 1;
              v212.i64[0] = 0xC0000000C0000000;
              v212.i64[1] = 0xC0000000C0000000;
              v213.i64[0] = 0x4000000040000000;
              v213.i64[1] = 0x4000000040000000;
              v214.i64[0] = 0x3E0000003E000000;
              v214.i64[1] = 0x3E0000003E000000;
              do
              {
                v215 = v29 + 1;
                v216 = v206 + 16 * v215;
                v217 = v209 + 16 * v215;
                v218 = 16 * v215 + 16;
                v219 = v210 + v215;
                v220 = v208;
                v221 = v207 + 16;
                do
                {
                  v222 = (*v34 + v217);
                  v223 = v222[-2];
                  v224 = (*v34 + v216);
                  v225 = v224[-2];
                  v226 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v222, v223), v212, *(*v34 + v218 - 32)), v213, *(*v34 + v218)), v225), *v224), v214);
                  v227 = vmulq_f32(vaddq_f32(*v224, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v225, v223), v212, v222[-1]), v213, v224[-1]), *v222)), v214);
                  v228 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v227, v227), v227, 0xCuLL), vnegq_f32(v226)), v227, vextq_s8(vuzp1q_s32(v226, v226), v226, 0xCuLL));
                  v229 = vmulq_f32(v228, v228);
                  v226.f32[0] = v229.f32[1] + (v229.f32[2] + v229.f32[0]);
                  *v229.f32 = vrsqrte_f32(v226.u32[0]);
                  *v229.f32 = vmul_f32(*v229.f32, vrsqrts_f32(v226.u32[0], vmul_f32(*v229.f32, *v229.f32)));
                  v230 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v228, v228), v228, 0xCuLL), vmul_f32(*v229.f32, vrsqrts_f32(v226.u32[0], vmul_f32(*v229.f32, *v229.f32))).f32[0]);
                  v230.i32[3] = 1.0;
                  *&v83[v221] = v230;
                  v216 += 16;
                  v221 += 16;
                  v217 += 16;
                  v218 += 16;
                  --v220;
                }

                while (v220);
                LODWORD(v29) = v219 + 2;
                ++v211;
                v83 += v207;
              }

              while (v211 != v98);
            }

            goto LABEL_206;
          }
        }

        else
        {
          if (PixelFormatType == 1717855600)
          {
            v41 = v11;
            v42 = CVPixelBufferGetWidth(a3);
            v43 = CVPixelBufferGetHeight(a3);
            v44 = CVPixelBufferGetWidth(a6);
            v45 = CVPixelBufferGetHeight(a6);
            v12 = -22953;
            if (v42 != v44 || v43 != v45)
            {
              goto LABEL_207;
            }

            if (!v41)
            {
              operator new();
            }

            v47 = v41 + 1;
            v46 = v41[1];
            v99 = (v41[2] - v46) >> 4;
            if (v43 * v42 <= v99)
            {
              if (v43 * v42 < v99)
              {
                v41[2] = v46 + 16 * v43 * v42;
              }
            }

            else
            {
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v47, v43 * v42 - v99);
            }

            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a6, 0);
            v100 = CVPixelBufferGetBytesPerRow(a3);
            v399 = CVPixelBufferGetBytesPerRow(a6);
            v101 = CVPixelBufferGetBaseAddress(a3);
            v102 = CVPixelBufferGetBaseAddress(a6);
            v103 = CVPixelBufferGetDataSize(a6);
            bzero(v102, v103);
            if (v43)
            {
              if (v42)
              {
                LODWORD(v105) = 0;
                v106 = 0;
                v107 = vdup_lane_s32(v402, 0);
                do
                {
                  v108 = 0;
                  v105 = v105;
                  do
                  {
                    *&v104 = v108 - x;
                    v109 = v106 - y;
                    *(&v104 + 1) = v109;
                    *&v104 = vdiv_f32(vmul_n_f32(*&v104, v101[v108]), v107);
                    *(&v104 + 2) = v101[v108];
                    *(*v47 + 16 * v105) = v104;
                    ++v108;
                    ++v105;
                  }

                  while (v42 != v108);
                  ++v106;
                  v101 += v100 >> 2;
                }

                while (v106 != v43);
              }

              v110 = v43 - 1;
              if (v43 - 1 < 2)
              {
                goto LABEL_206;
              }
            }

            else
            {
              v110 = -1;
            }

            if (v42 - 1 >= 2)
            {
              v231 = 16 * v42 + 16;
              v232 = 16 * (v399 >> 4);
              v233 = v42 - 2;
              v234 = 16 - 16 * v42;
              v235 = v42 - 3;
              v236 = 1;
              v237.i64[0] = 0xC0000000C0000000;
              v237.i64[1] = 0xC0000000C0000000;
              v238.i64[0] = 0x4000000040000000;
              v238.i64[1] = 0x4000000040000000;
              v239.i64[0] = 0x3E0000003E000000;
              v239.i64[1] = 0x3E0000003E000000;
              do
              {
                v240 = v42 + 1;
                v241 = v231 + 16 * v240;
                v242 = v234 + 16 * v240;
                v243 = 16 * v240 + 16;
                v244 = v235 + v240;
                v245 = v233;
                v246 = v232 + 16;
                do
                {
                  v247 = (*v47 + v242);
                  v248 = v247[-2];
                  v249 = (*v47 + v241);
                  v250 = v249[-2];
                  v251 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v247, v248), v237, *(*v47 + v243 - 32)), v238, *(*v47 + v243)), v250), *v249), v239);
                  v252 = vmulq_f32(vaddq_f32(*v249, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v250, v248), v237, v247[-1]), v238, v249[-1]), *v247)), v239);
                  v253 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v252, v252), v252, 0xCuLL), vnegq_f32(v251)), v252, vextq_s8(vuzp1q_s32(v251, v251), v251, 0xCuLL));
                  v254 = vmulq_f32(v253, v253);
                  v251.f32[0] = v254.f32[1] + (v254.f32[2] + v254.f32[0]);
                  *v254.f32 = vrsqrte_f32(v251.u32[0]);
                  *v254.f32 = vmul_f32(*v254.f32, vrsqrts_f32(v251.u32[0], vmul_f32(*v254.f32, *v254.f32)));
                  v255 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v253, v253), v253, 0xCuLL), vmul_f32(*v254.f32, vrsqrts_f32(v251.u32[0], vmul_f32(*v254.f32, *v254.f32))).f32[0]);
                  v255.i32[3] = 1.0;
                  *&v102[v246] = v255;
                  v241 += 16;
                  v246 += 16;
                  v242 += 16;
                  v243 += 16;
                  --v245;
                }

                while (v245);
                LODWORD(v42) = v244 + 2;
                ++v236;
                v102 += v232;
              }

              while (v236 != v110);
            }

            goto LABEL_206;
          }

          if (PixelFormatType == 1717856627)
          {
            v15 = v11;
            v16 = CVPixelBufferGetWidth(a3);
            v17 = CVPixelBufferGetHeight(a3);
            v18 = CVPixelBufferGetWidth(a6);
            v19 = CVPixelBufferGetHeight(a6);
            v12 = -22953;
            if (v16 != v18 || v17 != v19)
            {
              goto LABEL_207;
            }

            if (!v15)
            {
              operator new();
            }

            v21 = v15 + 1;
            v20 = v15[1];
            v68 = (v15[2] - v20) >> 4;
            if (v17 * v16 <= v68)
            {
              if (v17 * v16 < v68)
              {
                v15[2] = v20 + 16 * v17 * v16;
              }
            }

            else
            {
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE8__appendEm(v21, v17 * v16 - v68);
            }

            CVPixelBufferLockBaseAddress(a3, 1uLL);
            CVPixelBufferLockBaseAddress(a6, 0);
            v69 = CVPixelBufferGetBytesPerRow(a3);
            v397 = CVPixelBufferGetBytesPerRow(a6);
            v70 = CVPixelBufferGetBaseAddress(a3);
            v71 = CVPixelBufferGetBaseAddress(a6);
            v72 = CVPixelBufferGetDataSize(a6);
            bzero(v71, v72);
            if (v17)
            {
              if (v16)
              {
                LODWORD(v74) = 0;
                v75 = 0;
                v76 = vdup_lane_s32(v402, 0);
                do
                {
                  v77 = 0;
                  v74 = v74;
                  do
                  {
                    *&v73 = v77 - x;
                    v78 = v75 - y;
                    *(&v73 + 1) = v78;
                    *&v73 = vdiv_f32(vmul_n_f32(*&v73, 1.0 / v70[v77]), v76);
                    *(&v73 + 2) = 1.0 / v70[v77];
                    *(*v21 + 16 * v74) = v73;
                    ++v77;
                    ++v74;
                  }

                  while (v16 != v77);
                  ++v75;
                  v70 += v69 >> 2;
                }

                while (v75 != v17);
              }

              v79 = v17 - 1;
              if (v17 - 1 < 2)
              {
                goto LABEL_206;
              }
            }

            else
            {
              v79 = -1;
            }

            if (v16 - 1 >= 2)
            {
              v181 = 16 * v16 + 16;
              v182 = 16 * (v397 >> 4);
              v183 = v16 - 2;
              v184 = 16 - 16 * v16;
              v185 = v16 - 3;
              v186 = 1;
              v187.i64[0] = 0xC0000000C0000000;
              v187.i64[1] = 0xC0000000C0000000;
              v188.i64[0] = 0x4000000040000000;
              v188.i64[1] = 0x4000000040000000;
              v189.i64[0] = 0x3E0000003E000000;
              v189.i64[1] = 0x3E0000003E000000;
              do
              {
                v190 = v16 + 1;
                v191 = v181 + 16 * v190;
                v192 = v184 + 16 * v190;
                v193 = 16 * v190 + 16;
                v194 = v185 + v190;
                v195 = v183;
                v196 = v182 + 16;
                do
                {
                  v197 = (*v21 + v192);
                  v198 = v197[-2];
                  v199 = (*v21 + v191);
                  v200 = v199[-2];
                  v201 = vmulq_f32(vaddq_f32(vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(*v197, v198), v187, *(*v21 + v193 - 32)), v188, *(*v21 + v193)), v200), *v199), v189);
                  v202 = vmulq_f32(vaddq_f32(*v199, vsubq_f32(vmlaq_f32(vmlaq_f32(vsubq_f32(v200, v198), v187, v197[-1]), v188, v199[-1]), *v197)), v189);
                  v203 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v202, v202), v202, 0xCuLL), vnegq_f32(v201)), v202, vextq_s8(vuzp1q_s32(v201, v201), v201, 0xCuLL));
                  v204 = vmulq_f32(v203, v203);
                  v201.f32[0] = v204.f32[1] + (v204.f32[2] + v204.f32[0]);
                  *v204.f32 = vrsqrte_f32(v201.u32[0]);
                  *v204.f32 = vmul_f32(*v204.f32, vrsqrts_f32(v201.u32[0], vmul_f32(*v204.f32, *v204.f32)));
                  v205 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v203, v203), v203, 0xCuLL), vmul_f32(*v204.f32, vrsqrts_f32(v201.u32[0], vmul_f32(*v204.f32, *v204.f32))).f32[0]);
                  v205.i32[3] = 1.0;
                  *&v71[v196] = v205;
                  v191 += 16;
                  v196 += 16;
                  v192 += 16;
                  v193 += 16;
                  --v195;
                }

                while (v195);
                LODWORD(v16) = v194 + 2;
                ++v186;
                v71 += v182;
              }

              while (v186 != v79);
            }

LABEL_206:
            CVPixelBufferUnlockBaseAddress(a3, 1uLL);
            CVPixelBufferUnlockBaseAddress(a6, 0);
            v12 = 0;
LABEL_207:
          }
        }
      }
    }
  }

  return v12;
}

@end