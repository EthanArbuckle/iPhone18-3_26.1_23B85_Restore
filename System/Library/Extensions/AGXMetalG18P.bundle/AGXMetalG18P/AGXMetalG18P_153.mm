void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v447 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v369 = a8;
  v16 = a1;
  v349 = a8 + a10 - 1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v348 = v349 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v364 = v24;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v363 = 0;
LABEL_32:
      v360 = v26 - 4;
      v352 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v346 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v363 = v31 >= v25;
    goto LABEL_32;
  }

  v363 = 0;
  v346 = 0;
  v352 = 0;
  v360 = 0;
LABEL_33:
  if (v18 <= v348)
  {
    v362 = a7 + a9 - 1;
    if (a7 >> 4 <= v362 >> 4)
    {
      v33 = a11;
      v372 = v19 >> 4;
      v356 = v19 & 0xF;
      v361 = (v19 & 0xF) + 1;
      v344 = v20 & 7;
      v345 = v20 >> 3;
      v355 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v351 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v350 = v35;
      v370 = a1;
      v353 = 3 * a11;
      v354 = 2 * a11;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v369)
        {
          v37 = v369;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v349 < v36)
        {
          v36 = v349;
        }

        v359 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v344;
        v358 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v344 + 1;
        if (v18 != v345)
        {
          v43 = 8;
        }

        v371 = v43;
        if (v18 != v345)
        {
          v40 = v41;
        }

        v357 = v40;
        v44 = v18 & ~(-1 << v352);
        v367 = a2 + (v37 - v369) * v33;
        v45 = a7;
        do
        {
          v46 = 16 * v42;
          v47 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 16 * v42;
          }

          if (v362 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v372)
          {
            v51 = v361;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v369 && v46 >= v45)
          {
            v53 = v49 != v356;
            if (v42 != v372)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v357;
          }

          if (v363)
          {
            if (v360 | v352)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v352 != 0;
              v58 = v360 != 0;
              v59 = v352;
              v60 = v360;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v44 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v42 & ~(-1 << v360) & v56) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v56 *= 2;
                --v54;
                v58 = v60 != 0;
                v57 = v59 != 0;
              }

              while (v60 | v59);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(v16 + 336) * ((v42 >> v360) + (v18 >> v352) * v346);
          }

          else if (v351)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v350.i8[0];
            v66 = v350.i8[4];
            v67 = v351.i32[0];
            v68 = v351.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v66 = v68 != 0;
              v65 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_106:
              v81 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_106;
            }
          }

          v76 = 0;
          v77 = 0;
          v78 = v72 != 0;
          v79 = v75 != 0;
          v80 = 1;
          do
          {
            --v72;
            if (v78)
            {
              v77 |= (v80 & v42) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v18) << v76++;
            }

            else
            {
              v75 = 0;
            }

            v80 *= 2;
            --v76;
            v79 = v75 != 0;
            v78 = v72 != 0;
          }

          while (v75 | v72);
          v81 = 8 * v77;
LABEL_107:
          v82 = (a3 + v69);
          if (v364)
          {
            v83 = v44;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v44 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v367 + 8 * (v48 - v45);
          if (v52 & 1 | (v51 < 0x10u) || v371 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v370;
            block[5] = v82;
            v380 = v51;
            v381 = v371;
            v376 = v359;
            v377 = v48 - v46;
            block[6] = v86;
            v374 = v87;
            v33 = a11;
            v375 = a11;
            v378 = v358;
            v379 = v50;
            if (v52)
            {
              dispatch_sync(*(*(v370 + 8) + 16552), block);
              v45 = a7;
              v16 = v370;
              goto LABEL_49;
            }

            v95 = *v86;
            if (v95 == 127)
            {
              v255 = v82[1];
              v256 = v82[2];
              v257 = v82[3];
              v258 = v82[4];
              v259 = v82[5];
              v260 = v82[6];
              v261 = v82[7];
              v383 = *v82;
              v384 = v256;
              v391 = v255;
              v392 = v257;
              v399 = v258;
              v400 = v260;
              v407 = v259;
              v408 = v261;
              v96 = 128;
            }

            else if (v95 == 3)
            {
              v254 = vld1q_dup_f32(v82->f32);
              v383 = v254;
              v384 = v254;
              v391 = v254;
              v392 = v254;
              v399 = v254;
              v400 = v254;
              v407 = v254;
              v408 = v254;
              v96 = 4;
            }

            else if (*v86)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v383, 128, v82, v95);
            }

            else
            {
              v96 = 0;
              v384 = 0u;
              v383 = 0u;
              v391 = 0u;
              v392 = 0u;
              v399 = 0u;
              v400 = 0u;
              v407 = 0u;
              v408 = 0u;
            }

            v262 = v82 + v96;
            v263 = v86[1];
            if (v263 == 127)
            {
              v266 = *(v262 + 16);
              v267 = *(v262 + 32);
              v268 = *(v262 + 48);
              v269 = *(v262 + 64);
              v270 = *(v262 + 80);
              v271 = *(v262 + 96);
              v272 = *(v262 + 112);
              v385 = *v262;
              v386 = v267;
              v393 = v266;
              v394 = v268;
              v401 = v269;
              v402 = v271;
              v409 = v270;
              v410 = v272;
              v264 = 128;
            }

            else if (v263 == 3)
            {
              v265 = vld1q_dup_f32(v262);
              v385 = v265;
              v386 = v265;
              v393 = v265;
              v394 = v265;
              v401 = v265;
              v402 = v265;
              v409 = v265;
              v410 = v265;
              v264 = 4;
            }

            else if (v86[1])
            {
              v264 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v385, 128, v262, v263);
            }

            else
            {
              v264 = 0;
              v385 = 0u;
              v386 = 0u;
              v393 = 0u;
              v394 = 0u;
              v401 = 0u;
              v402 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v273 = v262 + v264;
            v274 = v86[2];
            if (v274 == 127)
            {
              v277 = *(v273 + 16);
              v278 = *(v273 + 32);
              v279 = *(v273 + 48);
              v280 = *(v273 + 64);
              v281 = *(v273 + 80);
              v282 = *(v273 + 96);
              v283 = *(v273 + 112);
              v415 = *v273;
              v416 = v278;
              v423 = v277;
              v424 = v279;
              v431 = v280;
              v432 = v282;
              v439 = v281;
              v440 = v283;
              v275 = 128;
            }

            else if (v274 == 3)
            {
              v276 = vld1q_dup_f32(v273);
              v415 = v276;
              v416 = v276;
              v423 = v276;
              v424 = v276;
              v431 = v276;
              v432 = v276;
              v439 = v276;
              v440 = v276;
              v275 = 4;
            }

            else if (v86[2])
            {
              v275 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 128, v273, v274);
            }

            else
            {
              v275 = 0;
              v415 = 0u;
              v416 = 0u;
              v423 = 0u;
              v424 = 0u;
              v431 = 0u;
              v432 = 0u;
              v439 = 0u;
              v440 = 0u;
            }

            v284 = v273 + v275;
            v285 = v86[3];
            if (v285 == 127)
            {
              v288 = *(v284 + 16);
              v289 = *(v284 + 32);
              v290 = *(v284 + 48);
              v291 = *(v284 + 64);
              v292 = *(v284 + 80);
              v293 = *(v284 + 96);
              v294 = *(v284 + 112);
              v417 = *v284;
              v418 = v289;
              v425 = v288;
              v426 = v290;
              v433 = v291;
              v434 = v293;
              v441 = v292;
              v442 = v294;
              v286 = 128;
            }

            else if (v285 == 3)
            {
              v287 = vld1q_dup_f32(v284);
              v417 = v287;
              v418 = v287;
              v425 = v287;
              v426 = v287;
              v433 = v287;
              v434 = v287;
              v441 = v287;
              v442 = v287;
              v286 = 4;
            }

            else if (v86[3])
            {
              v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v417, 128, v284, v285);
            }

            else
            {
              v286 = 0;
              v417 = 0u;
              v418 = 0u;
              v425 = 0u;
              v426 = 0u;
              v433 = 0u;
              v434 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v295 = v284 + v286;
            v296 = v86[4];
            if (v296 == 127)
            {
              v299 = *(v295 + 16);
              v300 = *(v295 + 32);
              v301 = *(v295 + 48);
              v302 = *(v295 + 64);
              v303 = *(v295 + 80);
              v304 = *(v295 + 96);
              v305 = *(v295 + 112);
              v387 = *v295;
              v388 = v300;
              v395 = v299;
              v396 = v301;
              v403 = v302;
              v404 = v304;
              v411 = v303;
              v412 = v305;
              v297 = 128;
            }

            else if (v296 == 3)
            {
              v298 = vld1q_dup_f32(v295);
              v387 = v298;
              v388 = v298;
              v395 = v298;
              v396 = v298;
              v403 = v298;
              v404 = v298;
              v411 = v298;
              v412 = v298;
              v297 = 4;
            }

            else if (v86[4])
            {
              v297 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v295, v296);
            }

            else
            {
              v297 = 0;
              v387 = 0u;
              v388 = 0u;
              v395 = 0u;
              v396 = 0u;
              v403 = 0u;
              v404 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v306 = v295 + v297;
            v307 = v86[5];
            if (v307 == 127)
            {
              v310 = *(v306 + 16);
              v311 = *(v306 + 32);
              v312 = *(v306 + 48);
              v313 = *(v306 + 64);
              v314 = *(v306 + 80);
              v315 = *(v306 + 96);
              v316 = *(v306 + 112);
              v389 = *v306;
              v390 = v311;
              v397 = v310;
              v398 = v312;
              v405 = v313;
              v406 = v315;
              v413 = v314;
              v414 = v316;
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v389 = v309;
              v390 = v309;
              v397 = v309;
              v398 = v309;
              v405 = v309;
              v406 = v309;
              v413 = v309;
              v414 = v309;
              v308 = 4;
            }

            else if (v86[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v389, 128, v306, v307);
            }

            else
            {
              v308 = 0;
              v389 = 0u;
              v390 = 0u;
              v397 = 0u;
              v398 = 0u;
              v405 = 0u;
              v406 = 0u;
              v413 = 0u;
              v414 = 0u;
            }

            v317 = v306 + v308;
            v318 = v86[6];
            if (v318 == 127)
            {
              v321 = *(v317 + 16);
              v322 = *(v317 + 32);
              v323 = *(v317 + 48);
              v324 = *(v317 + 64);
              v325 = *(v317 + 80);
              v326 = *(v317 + 96);
              v327 = *(v317 + 112);
              v419 = *v317;
              v420 = v322;
              v427 = v321;
              v428 = v323;
              v435 = v324;
              v436 = v326;
              v443 = v325;
              v444 = v327;
              v319 = 128;
            }

            else if (v318 == 3)
            {
              v320 = vld1q_dup_f32(v317);
              v419 = v320;
              v420 = v320;
              v427 = v320;
              v428 = v320;
              v435 = v320;
              v436 = v320;
              v443 = v320;
              v444 = v320;
              v319 = 4;
            }

            else if (v86[6])
            {
              v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 128, v317, v318);
            }

            else
            {
              v319 = 0;
              v419 = 0u;
              v420 = 0u;
              v427 = 0u;
              v428 = 0u;
              v435 = 0u;
              v436 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v328 = v317 + v319;
            v329 = v86[7];
            if (v329 == 127)
            {
              v332 = *(v328 + 16);
              v333 = *(v328 + 32);
              v334 = *(v328 + 48);
              v335 = *(v328 + 80);
              v336 = *(v328 + 96);
              v337 = *(v328 + 112);
              v338 = *(v328 + 64);
              v421 = *v328;
              v422 = v333;
              v429 = v332;
              v430 = v334;
              v437 = v338;
              v438 = v336;
              v445 = v335;
              v446 = v337;
              v45 = a7;
              v16 = v370;
              v330 = v378;
              if (!v378)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v329 == 3)
              {
                v331 = vld1q_dup_f32(v328);
                v421 = v331;
                v422 = v331;
                v429 = v331;
                v430 = v331;
                v437 = v331;
                v438 = v331;
                v445 = v331;
                v446 = v331;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else if (v329)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v421, 128, v328, v329);
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v421 = 0u;
                v422 = 0u;
                v429 = 0u;
                v430 = 0u;
                v437 = 0u;
                v438 = 0u;
                v445 = 0u;
                v446 = 0u;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }
            }

            v339 = 0;
            v340 = &v383.i8[128 * v376 + 8 * v377];
            v341 = v379;
            do
            {
              if (v341)
              {
                v342 = 0;
                v343 = v374 + v375 * v339;
                do
                {
                  *(v343 + v342) = v340[v342];
                  ++v342;
                  v341 = v379;
                }

                while (8 * v379 > v342);
                v330 = v378;
              }

              ++v339;
              v340 += 128;
            }

            while (v339 < v330);
          }

          else
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v101 = v82[1];
              v102 = v82[2];
              v103 = v82[3];
              v104 = v82[5];
              v105 = v82[6];
              v106 = v82[7];
              v107 = v82[4];
              v89 = 2 * a11;
              *v87 = *v82;
              *(v87 + 16) = v102;
              v108 = (v87 + v354);
              v33 = a11;
              v109 = (v87 + a11);
              *v109 = v101;
              v109[1] = v103;
              *v108 = v107;
              v108[1] = v105;
              v110 = (v87 + v354 + a11);
              *v110 = v104;
              v110[1] = v106;
              v91 = 128;
              v90 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 3)
              {
                v97 = vld1q_dup_f32(v82->f32);
                *v87 = v97;
                *(v87 + 16) = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v99 = (v87 + v354);
                *v99 = v97;
                v99[1] = v97;
                v100 = (v87 + v353);
                *v100 = v97;
                v100[1] = v97;
                v91 = 4;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v92 = (v87 + a11);
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87 + v354);
                *v93 = 0u;
                v93[1] = 0u;
                v94 = (v87 + v353);
                *v94 = 0u;
                v94[1] = 0u;
              }
            }

            v111 = v82 + v91;
            v112 = (v87 + 32);
            v113 = v86[1];
            if (v113 == 127)
            {
              v122 = *(v111 + 16);
              v123 = *(v111 + 32);
              v124 = *(v111 + 48);
              v125 = *(v111 + 80);
              v126 = *(v111 + 96);
              v127 = *(v111 + 112);
              v128 = *(v111 + 64);
              *v112 = *v111;
              *(v87 + 48) = v123;
              v129 = &v112->i8[v89];
              v130 = &v112->i8[v33];
              *v130 = v122;
              *(v130 + 1) = v124;
              *v129 = v128;
              *(v129 + 1) = v126;
              v131 = &v112->i8[v89 + v33];
              *v131 = v125;
              *(v131 + 1) = v127;
              v114 = 128;
            }

            else if (v113 == 3)
            {
              v118 = vld1q_dup_f32(v111);
              *(v87 + 32) = v118;
              *(v87 + 48) = v118;
              v119 = &v112->i8[v33];
              *v119 = v118;
              v119[1] = v118;
              v120 = &v112->i8[v89];
              *v120 = v118;
              v120[1] = v118;
              v121 = &v112->i8[v90];
              *v121 = v118;
              v121[1] = v118;
              v114 = 4;
            }

            else if (v86[1])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
            }

            else
            {
              v114 = 0;
              *v112 = 0u;
              *(v87 + 48) = 0u;
              v115 = &v112->i8[v33];
              *v115 = 0u;
              *(v115 + 1) = 0u;
              v116 = &v112->i8[v89];
              *v116 = 0u;
              *(v116 + 1) = 0u;
              v117 = &v112->i8[v90];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v132 = v111 + v114;
            v133 = (v87 + v355);
            v134 = v86[2];
            if (v134 == 127)
            {
              v143 = *(v132 + 16);
              v144 = *(v132 + 32);
              v145 = *(v132 + 48);
              v146 = *(v132 + 80);
              v147 = *(v132 + 96);
              v148 = *(v132 + 112);
              v149 = *(v132 + 64);
              *v133 = *v132;
              v133[1] = v144;
              v150 = &v133->i8[v89];
              v151 = &v133->i8[v33];
              *v151 = v143;
              *(v151 + 1) = v145;
              *v150 = v149;
              *(v150 + 1) = v147;
              v152 = &v133->i8[v89 + v33];
              *v152 = v146;
              *(v152 + 1) = v148;
              v135 = 128;
            }

            else if (v134 == 3)
            {
              v139 = vld1q_dup_f32(v132);
              *v133 = v139;
              v133[1] = v139;
              v140 = &v133->i8[v33];
              *v140 = v139;
              v140[1] = v139;
              v141 = &v133->i8[v89];
              *v141 = v139;
              v141[1] = v139;
              v142 = &v133->i8[v90];
              *v142 = v139;
              v142[1] = v139;
              v135 = 4;
            }

            else if (v86[2])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v355), v33, v132, v134);
            }

            else
            {
              v135 = 0;
              *v133 = 0u;
              v133[1] = 0u;
              v136 = &v133->i8[v33];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v133->i8[v89];
              *v137 = 0u;
              *(v137 + 1) = 0u;
              v138 = &v133->i8[v90];
              *v138 = 0u;
              *(v138 + 1) = 0u;
            }

            v153 = v132 + v135;
            v154 = v133 + 2;
            v155 = v86[3];
            if (v155 == 127)
            {
              v164 = *(v153 + 16);
              v165 = *(v153 + 32);
              v166 = *(v153 + 48);
              v167 = *(v153 + 80);
              v168 = *(v153 + 96);
              v169 = *(v153 + 112);
              v170 = *(v153 + 64);
              *v154 = *v153;
              v133[3] = v165;
              v171 = &v154->i8[v89];
              v172 = &v154->i8[v33];
              *v172 = v164;
              *(v172 + 1) = v166;
              *v171 = v170;
              *(v171 + 1) = v168;
              v173 = &v154->i8[v89 + v33];
              *v173 = v167;
              *(v173 + 1) = v169;
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v133[2] = v160;
              v133[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v89];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v90];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v86[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v133[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v89];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v90];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v174 = v153 + v156;
            v175 = (v87 + 64);
            v176 = v86[4];
            if (v176 == 127)
            {
              v185 = *(v174 + 16);
              v186 = *(v174 + 32);
              v187 = *(v174 + 48);
              v188 = *(v174 + 80);
              v189 = *(v174 + 96);
              v190 = *(v174 + 112);
              v191 = *(v174 + 64);
              *v175 = *v174;
              *(v87 + 80) = v186;
              v192 = &v175->i8[v89];
              v193 = &v175->i8[v33];
              *v193 = v185;
              *(v193 + 1) = v187;
              *v192 = v191;
              *(v192 + 1) = v189;
              v194 = &v175->i8[v89 + v33];
              *v194 = v188;
              *(v194 + 1) = v190;
              v177 = 128;
            }

            else if (v176 == 3)
            {
              v181 = vld1q_dup_f32(v174);
              *(v87 + 64) = v181;
              *(v87 + 80) = v181;
              v182 = &v175->i8[v33];
              *v182 = v181;
              v182[1] = v181;
              v183 = &v175->i8[v89];
              *v183 = v181;
              v183[1] = v181;
              v184 = &v175->i8[v90];
              *v184 = v181;
              v184[1] = v181;
              v177 = 4;
            }

            else if (v86[4])
            {
              v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v33, v174, v176);
            }

            else
            {
              v177 = 0;
              *v175 = 0u;
              *(v87 + 80) = 0u;
              v178 = &v175->i8[v33];
              *v178 = 0u;
              *(v178 + 1) = 0u;
              v179 = &v175->i8[v89];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v175->i8[v90];
              *v180 = 0u;
              *(v180 + 1) = 0u;
            }

            v195 = v174 + v177;
            v196 = (v87 + 96);
            v197 = v86[5];
            if (v197 == 127)
            {
              v206 = *(v195 + 16);
              v207 = *(v195 + 32);
              v208 = *(v195 + 48);
              v209 = *(v195 + 80);
              v210 = *(v195 + 96);
              v211 = *(v195 + 112);
              v212 = *(v195 + 64);
              *v196 = *v195;
              *(v87 + 112) = v207;
              v213 = &v196->i8[v89];
              v214 = &v196->i8[v33];
              *v214 = v206;
              *(v214 + 1) = v208;
              *v213 = v212;
              *(v213 + 1) = v210;
              v215 = &v196->i8[v89 + v33];
              *v215 = v209;
              *(v215 + 1) = v211;
              v198 = 128;
            }

            else if (v197 == 3)
            {
              v202 = vld1q_dup_f32(v195);
              *(v87 + 96) = v202;
              *(v87 + 112) = v202;
              v203 = &v196->i8[v33];
              *v203 = v202;
              v203[1] = v202;
              v204 = &v196->i8[v89];
              *v204 = v202;
              v204[1] = v202;
              v205 = &v196->i8[v90];
              *v205 = v202;
              v205[1] = v202;
              v198 = 4;
            }

            else if (v86[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              *v196 = 0u;
              *(v87 + 112) = 0u;
              v199 = &v196->i8[v33];
              *v199 = 0u;
              *(v199 + 1) = 0u;
              v200 = &v196->i8[v89];
              *v200 = 0u;
              *(v200 + 1) = 0u;
              v201 = &v196->i8[v90];
              *v201 = 0u;
              *(v201 + 1) = 0u;
            }

            v216 = v195 + v198;
            v217 = v133 + 4;
            v218 = v86[6];
            if (v218 == 127)
            {
              v227 = *(v216 + 16);
              v228 = *(v216 + 32);
              v229 = *(v216 + 48);
              v230 = *(v216 + 80);
              v231 = *(v216 + 96);
              v232 = *(v216 + 112);
              v233 = *(v216 + 64);
              *v217 = *v216;
              v133[5] = v228;
              v234 = &v217->i8[v89];
              v235 = &v217->i8[v33];
              *v235 = v227;
              *(v235 + 1) = v229;
              *v234 = v233;
              *(v234 + 1) = v231;
              v236 = &v217->i8[v89 + v33];
              *v236 = v230;
              *(v236 + 1) = v232;
              v219 = 128;
            }

            else if (v218 == 3)
            {
              v223 = vld1q_dup_f32(v216);
              v133[4] = v223;
              v133[5] = v223;
              v224 = &v217->i8[v33];
              *v224 = v223;
              v224[1] = v223;
              v225 = &v217->i8[v89];
              *v225 = v223;
              v225[1] = v223;
              v226 = &v217->i8[v90];
              *v226 = v223;
              v226[1] = v223;
              v219 = 4;
            }

            else if (v86[6])
            {
              v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v217, v33, v195 + v198, v218);
            }

            else
            {
              v219 = 0;
              *v217 = 0u;
              v133[5] = 0u;
              v220 = &v217->i8[v33];
              *v220 = 0u;
              *(v220 + 1) = 0u;
              v221 = &v217->i8[v89];
              *v221 = 0u;
              *(v221 + 1) = 0u;
              v222 = &v217->i8[v90];
              *v222 = 0u;
              *(v222 + 1) = 0u;
            }

            v237 = v216 + v219;
            v238 = v133 + 6;
            v239 = v86[7];
            if (v239 == 127)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              *v238 = *v237;
              v133[7] = v245;
              v251 = &v238->i8[v89];
              v252 = &v238->i8[v33];
              *v252 = v244;
              *(v252 + 1) = v246;
              *v251 = v247;
              *(v251 + 1) = v249;
              v253 = &v238->i8[v89 + v33];
              *v253 = v248;
              *(v253 + 1) = v250;
              v45 = a7;
              v16 = v370;
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v239 == 3)
              {
                v240 = vld1q_dup_f32(v237);
                v133[6] = v240;
                v133[7] = v240;
                goto LABEL_170;
              }

              if (!v239)
              {
                v240 = 0uLL;
                *v238 = 0u;
                v133[7] = 0u;
LABEL_170:
                v241 = &v238->i8[v33];
                *v241 = v240;
                v241[1] = v240;
                v242 = &v238->i8[v89];
                *v242 = v240;
                v242[1] = v240;
                v243 = &v238->i8[v90];
                *v243 = v240;
                v243[1] = v240;
                goto LABEL_49;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v33, v237, v239);
            }
          }

LABEL_49:
          v21 = v42++ == v362 >> 4;
        }

        while (!v21);
        v21 = v18++ == v348;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
          }

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
            if (!v58)
            {
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = v58 != 0;
          v65 = v61 != 0;
          v66 = 1;
          do
          {
            --v58;
            if (v64)
            {
              v63 |= (v66 & v38) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v18) << v62++;
            }

            else
            {
              v61 = 0;
            }

            v66 *= 2;
            --v62;
            v65 = v61 != 0;
            v64 = v58 != 0;
          }

          while (v61 | v58);
          v67 = 8 * v63;
LABEL_81:
          v73 = (a3 + v55);
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
          }

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
            if (!v58)
            {
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = v58 != 0;
          v65 = v61 != 0;
          v66 = 1;
          do
          {
            --v58;
            if (v64)
            {
              v63 |= (v66 & v38) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v18) << v62++;
            }

            else
            {
              v61 = 0;
            }

            v66 *= 2;
            --v62;
            v65 = v61 != 0;
            v64 = v58 != 0;
          }

          while (v61 | v58);
          v67 = 8 * v63;
LABEL_81:
          v73 = (a3 + v55);
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v447 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v369 = a8;
  v16 = a1;
  v349 = a8 + a10 - 1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v348 = v349 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v364 = v24;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v363 = 0;
LABEL_32:
      v360 = v26 - 4;
      v352 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v346 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v363 = v31 >= v25;
    goto LABEL_32;
  }

  v363 = 0;
  v346 = 0;
  v352 = 0;
  v360 = 0;
LABEL_33:
  if (v18 <= v348)
  {
    v362 = a7 + a9 - 1;
    if (a7 >> 4 <= v362 >> 4)
    {
      v33 = a11;
      v372 = v19 >> 4;
      v356 = v19 & 0xF;
      v361 = (v19 & 0xF) + 1;
      v344 = v20 & 7;
      v345 = v20 >> 3;
      v355 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v351 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v350 = v35;
      v370 = a1;
      v353 = 3 * a11;
      v354 = 2 * a11;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v369)
        {
          v37 = v369;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v349 < v36)
        {
          v36 = v349;
        }

        v359 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v344;
        v358 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v344 + 1;
        if (v18 != v345)
        {
          v43 = 8;
        }

        v371 = v43;
        if (v18 != v345)
        {
          v40 = v41;
        }

        v357 = v40;
        v44 = v18 & ~(-1 << v352);
        v367 = a2 + (v37 - v369) * v33;
        v45 = a7;
        do
        {
          v46 = 16 * v42;
          v47 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 16 * v42;
          }

          if (v362 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v372)
          {
            v51 = v361;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v369 && v46 >= v45)
          {
            v53 = v49 != v356;
            if (v42 != v372)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v357;
          }

          if (v363)
          {
            if (v360 | v352)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v352 != 0;
              v58 = v360 != 0;
              v59 = v352;
              v60 = v360;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v44 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v42 & ~(-1 << v360) & v56) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v56 *= 2;
                --v54;
                v58 = v60 != 0;
                v57 = v59 != 0;
              }

              while (v60 | v59);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(v16 + 336) * ((v42 >> v360) + (v18 >> v352) * v346);
          }

          else if (v351)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v350.i8[0];
            v66 = v350.i8[4];
            v67 = v351.i32[0];
            v68 = v351.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v66 = v68 != 0;
              v65 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_106:
              v81 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_106;
            }
          }

          v76 = 0;
          v77 = 0;
          v78 = v72 != 0;
          v79 = v75 != 0;
          v80 = 1;
          do
          {
            --v72;
            if (v78)
            {
              v77 |= (v80 & v42) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v18) << v76++;
            }

            else
            {
              v75 = 0;
            }

            v80 *= 2;
            --v76;
            v79 = v75 != 0;
            v78 = v72 != 0;
          }

          while (v75 | v72);
          v81 = 8 * v77;
LABEL_107:
          v82 = (a3 + v69);
          if (v364)
          {
            v83 = v44;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v44 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v367 + 8 * (v48 - v45);
          if (v52 & 1 | (v51 < 0x10u) || v371 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v370;
            block[5] = v82;
            v380 = v51;
            v381 = v371;
            v376 = v359;
            v377 = v48 - v46;
            block[6] = v86;
            v374 = v87;
            v33 = a11;
            v375 = a11;
            v378 = v358;
            v379 = v50;
            if (v52)
            {
              dispatch_sync(*(*(v370 + 8) + 16552), block);
              v45 = a7;
              v16 = v370;
              goto LABEL_49;
            }

            v95 = *v86;
            if (v95 == 127)
            {
              v255 = v82[1];
              v256 = v82[2];
              v257 = v82[3];
              v258 = v82[4];
              v259 = v82[5];
              v260 = v82[6];
              v261 = v82[7];
              v383 = *v82;
              v384 = v256;
              v391 = v255;
              v392 = v257;
              v399 = v258;
              v400 = v260;
              v407 = v259;
              v408 = v261;
              v96 = 128;
            }

            else if (v95 == 3)
            {
              v254 = vld1q_dup_f32(v82->f32);
              v383 = v254;
              v384 = v254;
              v391 = v254;
              v392 = v254;
              v399 = v254;
              v400 = v254;
              v407 = v254;
              v408 = v254;
              v96 = 4;
            }

            else if (*v86)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v383, 128, v82, v95);
            }

            else
            {
              v96 = 0;
              v384 = 0u;
              v383 = 0u;
              v391 = 0u;
              v392 = 0u;
              v399 = 0u;
              v400 = 0u;
              v407 = 0u;
              v408 = 0u;
            }

            v262 = v82 + v96;
            v263 = v86[1];
            if (v263 == 127)
            {
              v266 = *(v262 + 16);
              v267 = *(v262 + 32);
              v268 = *(v262 + 48);
              v269 = *(v262 + 64);
              v270 = *(v262 + 80);
              v271 = *(v262 + 96);
              v272 = *(v262 + 112);
              v385 = *v262;
              v386 = v267;
              v393 = v266;
              v394 = v268;
              v401 = v269;
              v402 = v271;
              v409 = v270;
              v410 = v272;
              v264 = 128;
            }

            else if (v263 == 3)
            {
              v265 = vld1q_dup_f32(v262);
              v385 = v265;
              v386 = v265;
              v393 = v265;
              v394 = v265;
              v401 = v265;
              v402 = v265;
              v409 = v265;
              v410 = v265;
              v264 = 4;
            }

            else if (v86[1])
            {
              v264 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v385, 128, v262, v263);
            }

            else
            {
              v264 = 0;
              v385 = 0u;
              v386 = 0u;
              v393 = 0u;
              v394 = 0u;
              v401 = 0u;
              v402 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v273 = v262 + v264;
            v274 = v86[2];
            if (v274 == 127)
            {
              v277 = *(v273 + 16);
              v278 = *(v273 + 32);
              v279 = *(v273 + 48);
              v280 = *(v273 + 64);
              v281 = *(v273 + 80);
              v282 = *(v273 + 96);
              v283 = *(v273 + 112);
              v415 = *v273;
              v416 = v278;
              v423 = v277;
              v424 = v279;
              v431 = v280;
              v432 = v282;
              v439 = v281;
              v440 = v283;
              v275 = 128;
            }

            else if (v274 == 3)
            {
              v276 = vld1q_dup_f32(v273);
              v415 = v276;
              v416 = v276;
              v423 = v276;
              v424 = v276;
              v431 = v276;
              v432 = v276;
              v439 = v276;
              v440 = v276;
              v275 = 4;
            }

            else if (v86[2])
            {
              v275 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 128, v273, v274);
            }

            else
            {
              v275 = 0;
              v415 = 0u;
              v416 = 0u;
              v423 = 0u;
              v424 = 0u;
              v431 = 0u;
              v432 = 0u;
              v439 = 0u;
              v440 = 0u;
            }

            v284 = v273 + v275;
            v285 = v86[3];
            if (v285 == 127)
            {
              v288 = *(v284 + 16);
              v289 = *(v284 + 32);
              v290 = *(v284 + 48);
              v291 = *(v284 + 64);
              v292 = *(v284 + 80);
              v293 = *(v284 + 96);
              v294 = *(v284 + 112);
              v417 = *v284;
              v418 = v289;
              v425 = v288;
              v426 = v290;
              v433 = v291;
              v434 = v293;
              v441 = v292;
              v442 = v294;
              v286 = 128;
            }

            else if (v285 == 3)
            {
              v287 = vld1q_dup_f32(v284);
              v417 = v287;
              v418 = v287;
              v425 = v287;
              v426 = v287;
              v433 = v287;
              v434 = v287;
              v441 = v287;
              v442 = v287;
              v286 = 4;
            }

            else if (v86[3])
            {
              v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v417, 128, v284, v285);
            }

            else
            {
              v286 = 0;
              v417 = 0u;
              v418 = 0u;
              v425 = 0u;
              v426 = 0u;
              v433 = 0u;
              v434 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v295 = v284 + v286;
            v296 = v86[4];
            if (v296 == 127)
            {
              v299 = *(v295 + 16);
              v300 = *(v295 + 32);
              v301 = *(v295 + 48);
              v302 = *(v295 + 64);
              v303 = *(v295 + 80);
              v304 = *(v295 + 96);
              v305 = *(v295 + 112);
              v387 = *v295;
              v388 = v300;
              v395 = v299;
              v396 = v301;
              v403 = v302;
              v404 = v304;
              v411 = v303;
              v412 = v305;
              v297 = 128;
            }

            else if (v296 == 3)
            {
              v298 = vld1q_dup_f32(v295);
              v387 = v298;
              v388 = v298;
              v395 = v298;
              v396 = v298;
              v403 = v298;
              v404 = v298;
              v411 = v298;
              v412 = v298;
              v297 = 4;
            }

            else if (v86[4])
            {
              v297 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v295, v296);
            }

            else
            {
              v297 = 0;
              v387 = 0u;
              v388 = 0u;
              v395 = 0u;
              v396 = 0u;
              v403 = 0u;
              v404 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v306 = v295 + v297;
            v307 = v86[5];
            if (v307 == 127)
            {
              v310 = *(v306 + 16);
              v311 = *(v306 + 32);
              v312 = *(v306 + 48);
              v313 = *(v306 + 64);
              v314 = *(v306 + 80);
              v315 = *(v306 + 96);
              v316 = *(v306 + 112);
              v389 = *v306;
              v390 = v311;
              v397 = v310;
              v398 = v312;
              v405 = v313;
              v406 = v315;
              v413 = v314;
              v414 = v316;
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v389 = v309;
              v390 = v309;
              v397 = v309;
              v398 = v309;
              v405 = v309;
              v406 = v309;
              v413 = v309;
              v414 = v309;
              v308 = 4;
            }

            else if (v86[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v389, 128, v306, v307);
            }

            else
            {
              v308 = 0;
              v389 = 0u;
              v390 = 0u;
              v397 = 0u;
              v398 = 0u;
              v405 = 0u;
              v406 = 0u;
              v413 = 0u;
              v414 = 0u;
            }

            v317 = v306 + v308;
            v318 = v86[6];
            if (v318 == 127)
            {
              v321 = *(v317 + 16);
              v322 = *(v317 + 32);
              v323 = *(v317 + 48);
              v324 = *(v317 + 64);
              v325 = *(v317 + 80);
              v326 = *(v317 + 96);
              v327 = *(v317 + 112);
              v419 = *v317;
              v420 = v322;
              v427 = v321;
              v428 = v323;
              v435 = v324;
              v436 = v326;
              v443 = v325;
              v444 = v327;
              v319 = 128;
            }

            else if (v318 == 3)
            {
              v320 = vld1q_dup_f32(v317);
              v419 = v320;
              v420 = v320;
              v427 = v320;
              v428 = v320;
              v435 = v320;
              v436 = v320;
              v443 = v320;
              v444 = v320;
              v319 = 4;
            }

            else if (v86[6])
            {
              v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 128, v317, v318);
            }

            else
            {
              v319 = 0;
              v419 = 0u;
              v420 = 0u;
              v427 = 0u;
              v428 = 0u;
              v435 = 0u;
              v436 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v328 = v317 + v319;
            v329 = v86[7];
            if (v329 == 127)
            {
              v332 = *(v328 + 16);
              v333 = *(v328 + 32);
              v334 = *(v328 + 48);
              v335 = *(v328 + 80);
              v336 = *(v328 + 96);
              v337 = *(v328 + 112);
              v338 = *(v328 + 64);
              v421 = *v328;
              v422 = v333;
              v429 = v332;
              v430 = v334;
              v437 = v338;
              v438 = v336;
              v445 = v335;
              v446 = v337;
              v45 = a7;
              v16 = v370;
              v330 = v378;
              if (!v378)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v329 == 3)
              {
                v331 = vld1q_dup_f32(v328);
                v421 = v331;
                v422 = v331;
                v429 = v331;
                v430 = v331;
                v437 = v331;
                v438 = v331;
                v445 = v331;
                v446 = v331;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else if (v329)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v421, 128, v328, v329);
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v421 = 0u;
                v422 = 0u;
                v429 = 0u;
                v430 = 0u;
                v437 = 0u;
                v438 = 0u;
                v445 = 0u;
                v446 = 0u;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }
            }

            v339 = 0;
            v340 = &v383.i8[128 * v376 + 8 * v377];
            v341 = v379;
            do
            {
              if (v341)
              {
                v342 = 0;
                v343 = v374 + v375 * v339;
                do
                {
                  *(v343 + v342) = v340[v342];
                  ++v342;
                  v341 = v379;
                }

                while (8 * v379 > v342);
                v330 = v378;
              }

              ++v339;
              v340 += 128;
            }

            while (v339 < v330);
          }

          else
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v101 = v82[1];
              v102 = v82[2];
              v103 = v82[3];
              v104 = v82[5];
              v105 = v82[6];
              v106 = v82[7];
              v107 = v82[4];
              v89 = 2 * a11;
              *v87 = *v82;
              *(v87 + 16) = v102;
              v108 = (v87 + v354);
              v33 = a11;
              v109 = (v87 + a11);
              *v109 = v101;
              v109[1] = v103;
              *v108 = v107;
              v108[1] = v105;
              v110 = (v87 + v354 + a11);
              *v110 = v104;
              v110[1] = v106;
              v91 = 128;
              v90 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 3)
              {
                v97 = vld1q_dup_f32(v82->f32);
                *v87 = v97;
                *(v87 + 16) = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v99 = (v87 + v354);
                *v99 = v97;
                v99[1] = v97;
                v100 = (v87 + v353);
                *v100 = v97;
                v100[1] = v97;
                v91 = 4;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v92 = (v87 + a11);
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87 + v354);
                *v93 = 0u;
                v93[1] = 0u;
                v94 = (v87 + v353);
                *v94 = 0u;
                v94[1] = 0u;
              }
            }

            v111 = v82 + v91;
            v112 = (v87 + 32);
            v113 = v86[1];
            if (v113 == 127)
            {
              v122 = *(v111 + 16);
              v123 = *(v111 + 32);
              v124 = *(v111 + 48);
              v125 = *(v111 + 80);
              v126 = *(v111 + 96);
              v127 = *(v111 + 112);
              v128 = *(v111 + 64);
              *v112 = *v111;
              *(v87 + 48) = v123;
              v129 = &v112->i8[v89];
              v130 = &v112->i8[v33];
              *v130 = v122;
              *(v130 + 1) = v124;
              *v129 = v128;
              *(v129 + 1) = v126;
              v131 = &v112->i8[v89 + v33];
              *v131 = v125;
              *(v131 + 1) = v127;
              v114 = 128;
            }

            else if (v113 == 3)
            {
              v118 = vld1q_dup_f32(v111);
              *(v87 + 32) = v118;
              *(v87 + 48) = v118;
              v119 = &v112->i8[v33];
              *v119 = v118;
              v119[1] = v118;
              v120 = &v112->i8[v89];
              *v120 = v118;
              v120[1] = v118;
              v121 = &v112->i8[v90];
              *v121 = v118;
              v121[1] = v118;
              v114 = 4;
            }

            else if (v86[1])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
            }

            else
            {
              v114 = 0;
              *v112 = 0u;
              *(v87 + 48) = 0u;
              v115 = &v112->i8[v33];
              *v115 = 0u;
              *(v115 + 1) = 0u;
              v116 = &v112->i8[v89];
              *v116 = 0u;
              *(v116 + 1) = 0u;
              v117 = &v112->i8[v90];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v132 = v111 + v114;
            v133 = (v87 + v355);
            v134 = v86[2];
            if (v134 == 127)
            {
              v143 = *(v132 + 16);
              v144 = *(v132 + 32);
              v145 = *(v132 + 48);
              v146 = *(v132 + 80);
              v147 = *(v132 + 96);
              v148 = *(v132 + 112);
              v149 = *(v132 + 64);
              *v133 = *v132;
              v133[1] = v144;
              v150 = &v133->i8[v89];
              v151 = &v133->i8[v33];
              *v151 = v143;
              *(v151 + 1) = v145;
              *v150 = v149;
              *(v150 + 1) = v147;
              v152 = &v133->i8[v89 + v33];
              *v152 = v146;
              *(v152 + 1) = v148;
              v135 = 128;
            }

            else if (v134 == 3)
            {
              v139 = vld1q_dup_f32(v132);
              *v133 = v139;
              v133[1] = v139;
              v140 = &v133->i8[v33];
              *v140 = v139;
              v140[1] = v139;
              v141 = &v133->i8[v89];
              *v141 = v139;
              v141[1] = v139;
              v142 = &v133->i8[v90];
              *v142 = v139;
              v142[1] = v139;
              v135 = 4;
            }

            else if (v86[2])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v355), v33, v132, v134);
            }

            else
            {
              v135 = 0;
              *v133 = 0u;
              v133[1] = 0u;
              v136 = &v133->i8[v33];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v133->i8[v89];
              *v137 = 0u;
              *(v137 + 1) = 0u;
              v138 = &v133->i8[v90];
              *v138 = 0u;
              *(v138 + 1) = 0u;
            }

            v153 = v132 + v135;
            v154 = v133 + 2;
            v155 = v86[3];
            if (v155 == 127)
            {
              v164 = *(v153 + 16);
              v165 = *(v153 + 32);
              v166 = *(v153 + 48);
              v167 = *(v153 + 80);
              v168 = *(v153 + 96);
              v169 = *(v153 + 112);
              v170 = *(v153 + 64);
              *v154 = *v153;
              v133[3] = v165;
              v171 = &v154->i8[v89];
              v172 = &v154->i8[v33];
              *v172 = v164;
              *(v172 + 1) = v166;
              *v171 = v170;
              *(v171 + 1) = v168;
              v173 = &v154->i8[v89 + v33];
              *v173 = v167;
              *(v173 + 1) = v169;
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v133[2] = v160;
              v133[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v89];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v90];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v86[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v133[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v89];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v90];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v174 = v153 + v156;
            v175 = (v87 + 64);
            v176 = v86[4];
            if (v176 == 127)
            {
              v185 = *(v174 + 16);
              v186 = *(v174 + 32);
              v187 = *(v174 + 48);
              v188 = *(v174 + 80);
              v189 = *(v174 + 96);
              v190 = *(v174 + 112);
              v191 = *(v174 + 64);
              *v175 = *v174;
              *(v87 + 80) = v186;
              v192 = &v175->i8[v89];
              v193 = &v175->i8[v33];
              *v193 = v185;
              *(v193 + 1) = v187;
              *v192 = v191;
              *(v192 + 1) = v189;
              v194 = &v175->i8[v89 + v33];
              *v194 = v188;
              *(v194 + 1) = v190;
              v177 = 128;
            }

            else if (v176 == 3)
            {
              v181 = vld1q_dup_f32(v174);
              *(v87 + 64) = v181;
              *(v87 + 80) = v181;
              v182 = &v175->i8[v33];
              *v182 = v181;
              v182[1] = v181;
              v183 = &v175->i8[v89];
              *v183 = v181;
              v183[1] = v181;
              v184 = &v175->i8[v90];
              *v184 = v181;
              v184[1] = v181;
              v177 = 4;
            }

            else if (v86[4])
            {
              v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v33, v174, v176);
            }

            else
            {
              v177 = 0;
              *v175 = 0u;
              *(v87 + 80) = 0u;
              v178 = &v175->i8[v33];
              *v178 = 0u;
              *(v178 + 1) = 0u;
              v179 = &v175->i8[v89];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v175->i8[v90];
              *v180 = 0u;
              *(v180 + 1) = 0u;
            }

            v195 = v174 + v177;
            v196 = (v87 + 96);
            v197 = v86[5];
            if (v197 == 127)
            {
              v206 = *(v195 + 16);
              v207 = *(v195 + 32);
              v208 = *(v195 + 48);
              v209 = *(v195 + 80);
              v210 = *(v195 + 96);
              v211 = *(v195 + 112);
              v212 = *(v195 + 64);
              *v196 = *v195;
              *(v87 + 112) = v207;
              v213 = &v196->i8[v89];
              v214 = &v196->i8[v33];
              *v214 = v206;
              *(v214 + 1) = v208;
              *v213 = v212;
              *(v213 + 1) = v210;
              v215 = &v196->i8[v89 + v33];
              *v215 = v209;
              *(v215 + 1) = v211;
              v198 = 128;
            }

            else if (v197 == 3)
            {
              v202 = vld1q_dup_f32(v195);
              *(v87 + 96) = v202;
              *(v87 + 112) = v202;
              v203 = &v196->i8[v33];
              *v203 = v202;
              v203[1] = v202;
              v204 = &v196->i8[v89];
              *v204 = v202;
              v204[1] = v202;
              v205 = &v196->i8[v90];
              *v205 = v202;
              v205[1] = v202;
              v198 = 4;
            }

            else if (v86[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              *v196 = 0u;
              *(v87 + 112) = 0u;
              v199 = &v196->i8[v33];
              *v199 = 0u;
              *(v199 + 1) = 0u;
              v200 = &v196->i8[v89];
              *v200 = 0u;
              *(v200 + 1) = 0u;
              v201 = &v196->i8[v90];
              *v201 = 0u;
              *(v201 + 1) = 0u;
            }

            v216 = v195 + v198;
            v217 = v133 + 4;
            v218 = v86[6];
            if (v218 == 127)
            {
              v227 = *(v216 + 16);
              v228 = *(v216 + 32);
              v229 = *(v216 + 48);
              v230 = *(v216 + 80);
              v231 = *(v216 + 96);
              v232 = *(v216 + 112);
              v233 = *(v216 + 64);
              *v217 = *v216;
              v133[5] = v228;
              v234 = &v217->i8[v89];
              v235 = &v217->i8[v33];
              *v235 = v227;
              *(v235 + 1) = v229;
              *v234 = v233;
              *(v234 + 1) = v231;
              v236 = &v217->i8[v89 + v33];
              *v236 = v230;
              *(v236 + 1) = v232;
              v219 = 128;
            }

            else if (v218 == 3)
            {
              v223 = vld1q_dup_f32(v216);
              v133[4] = v223;
              v133[5] = v223;
              v224 = &v217->i8[v33];
              *v224 = v223;
              v224[1] = v223;
              v225 = &v217->i8[v89];
              *v225 = v223;
              v225[1] = v223;
              v226 = &v217->i8[v90];
              *v226 = v223;
              v226[1] = v223;
              v219 = 4;
            }

            else if (v86[6])
            {
              v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v217, v33, v195 + v198, v218);
            }

            else
            {
              v219 = 0;
              *v217 = 0u;
              v133[5] = 0u;
              v220 = &v217->i8[v33];
              *v220 = 0u;
              *(v220 + 1) = 0u;
              v221 = &v217->i8[v89];
              *v221 = 0u;
              *(v221 + 1) = 0u;
              v222 = &v217->i8[v90];
              *v222 = 0u;
              *(v222 + 1) = 0u;
            }

            v237 = v216 + v219;
            v238 = v133 + 6;
            v239 = v86[7];
            if (v239 == 127)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              *v238 = *v237;
              v133[7] = v245;
              v251 = &v238->i8[v89];
              v252 = &v238->i8[v33];
              *v252 = v244;
              *(v252 + 1) = v246;
              *v251 = v247;
              *(v251 + 1) = v249;
              v253 = &v238->i8[v89 + v33];
              *v253 = v248;
              *(v253 + 1) = v250;
              v45 = a7;
              v16 = v370;
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v239 == 3)
              {
                v240 = vld1q_dup_f32(v237);
                v133[6] = v240;
                v133[7] = v240;
                goto LABEL_170;
              }

              if (!v239)
              {
                v240 = 0uLL;
                *v238 = 0u;
                v133[7] = 0u;
LABEL_170:
                v241 = &v238->i8[v33];
                *v241 = v240;
                v241[1] = v240;
                v242 = &v238->i8[v89];
                *v242 = v240;
                v242[1] = v240;
                v243 = &v238->i8[v90];
                *v243 = v240;
                v243[1] = v240;
                goto LABEL_49;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v33, v237, v239);
            }
          }

LABEL_49:
          v21 = v42++ == v362 >> 4;
        }

        while (!v21);
        v21 = v18++ == v348;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v447 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v369 = a8;
  v16 = a1;
  v349 = a8 + a10 - 1;
  if (*(a1 + 168))
  {
    v17 = IOSurfaceGetCacheMode() & 0xF00;
  }

  else
  {
    v17 = 0;
  }

  v18 = a8 >> 3;
  v19 = a5 - 1;
  v20 = a6 - 1;
  v348 = v349 >> 3;
  v21 = (v17 & 0xD00) == 0 || v17 == 768;
  v22 = v17 & 0xE00;
  v24 = !v21 && v22 != 1024;
  v364 = v24;
  if (*(a1 + 232) == 1)
  {
    v25 = *(a1 + 273);
    v26 = *(a1 + 272);
    v27 = __clz(v19);
    if (1 << v25 >= a6 || a5 >> v26)
    {
      if (!(a6 >> v25) && 1 << v26 < a5)
      {
        if (a6 < 2)
        {
          v30 = 0;
        }

        else
        {
          v30 = __clz(~(-1 << -__clz(v20))) | 0xFFFFFFE0;
        }

        v26 += v25 + v30;
        v25 = -v30;
      }
    }

    else
    {
      v28 = 32 - __clz(~(-1 << -v27));
      v29 = v26 + v25;
      if (a5 < 2)
      {
        v28 = 0;
      }

      v25 = v29 - v28;
      v26 = v28;
    }

    if (a5 < 2)
    {
      if (v26)
      {
        goto LABEL_27;
      }
    }

    else if (32 - __clz(~(-1 << -v27)) < v26)
    {
LABEL_27:
      v363 = 0;
LABEL_32:
      v360 = v26 - 4;
      v352 = v25 - 3;
      v32 = -1 << *(*(a1 + 208) + 48);
      v346 = (((~v32 + a5) & v32) + ~(-1 << v26)) >> v26;
      goto LABEL_33;
    }

    if (a6 < 2)
    {
      v31 = 0;
    }

    else
    {
      v31 = 32 - __clz(~(-1 << -__clz(v20)));
    }

    v363 = v31 >= v25;
    goto LABEL_32;
  }

  v363 = 0;
  v346 = 0;
  v352 = 0;
  v360 = 0;
LABEL_33:
  if (v18 <= v348)
  {
    v362 = a7 + a9 - 1;
    if (a7 >> 4 <= v362 >> 4)
    {
      v33 = a11;
      v372 = v19 >> 4;
      v356 = v19 & 0xF;
      v361 = (v19 & 0xF) + 1;
      v344 = v20 & 7;
      v345 = v20 >> 3;
      v355 = 4 * a11;
      v34 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v35 = vcgt_u32(v34, 0x1F0000000FLL);
      v351 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v34, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v35);
      v350 = v35;
      v370 = a1;
      v353 = 3 * a11;
      v354 = 2 * a11;
      do
      {
        v36 = (8 * v18) | 7;
        if (8 * v18 <= v369)
        {
          v37 = v369;
        }

        else
        {
          v37 = 8 * v18;
        }

        if (v349 < v36)
        {
          v36 = v349;
        }

        v359 = v37 - 8 * v18;
        v38 = v36 - v37;
        v39 = v38 + 1;
        v40 = v38 != v344;
        v358 = v39;
        v41 = v39 != 8;
        v42 = a7 >> 4;
        v43 = v344 + 1;
        if (v18 != v345)
        {
          v43 = 8;
        }

        v371 = v43;
        if (v18 != v345)
        {
          v40 = v41;
        }

        v357 = v40;
        v44 = v18 & ~(-1 << v352);
        v367 = a2 + (v37 - v369) * v33;
        v45 = a7;
        do
        {
          v46 = 16 * v42;
          v47 = 16 * (v42 + 1) - 1;
          if (16 * v42 <= v45)
          {
            v48 = v45;
          }

          else
          {
            v48 = 16 * v42;
          }

          if (v362 < v47)
          {
            v47 = a7 + a9 - 1;
          }

          v49 = v47 - v48;
          v50 = v49 + 1;
          if (v42 == v372)
          {
            v51 = v361;
          }

          else
          {
            v51 = 16;
          }

          v52 = 1;
          if (8 * v18 >= v369 && v46 >= v45)
          {
            v53 = v49 != v356;
            if (v42 != v372)
            {
              v53 = v50 != 16;
            }

            v52 = v53 || v357;
          }

          if (v363)
          {
            if (v360 | v352)
            {
              v54 = 0;
              v55 = 0;
              v56 = 1;
              v57 = v352 != 0;
              v58 = v360 != 0;
              v59 = v352;
              v60 = v360;
              do
              {
                --v59;
                if (v57)
                {
                  v55 |= (v44 & v56) << v54++;
                }

                else
                {
                  v59 = 0;
                }

                --v60;
                if (v58)
                {
                  v55 |= (v42 & ~(-1 << v360) & v56) << v54++;
                }

                else
                {
                  v60 = 0;
                }

                v56 *= 2;
                --v54;
                v58 = v60 != 0;
                v57 = v59 != 0;
              }

              while (v60 | v59);
              v61 = v55 << 10;
            }

            else
            {
              v61 = 0;
            }

            v69 = v61 + *(v16 + 336) * ((v42 >> v360) + (v18 >> v352) * v346);
          }

          else if (v351)
          {
            v62 = 0;
            v63 = 0;
            v64 = 1;
            v65 = v350.i8[0];
            v66 = v350.i8[4];
            v67 = v351.i32[0];
            v68 = v351.i32[1];
            do
            {
              --v67;
              if (v65)
              {
                v63 |= (v64 & v18) << v62++;
              }

              else
              {
                v67 = 0;
              }

              --v68;
              if (v66)
              {
                v63 |= (v64 & v42) << v62++;
              }

              else
              {
                v68 = 0;
              }

              v64 *= 2;
              --v62;
              v66 = v68 != 0;
              v65 = v67 != 0;
            }

            while (v68 | v67);
            v69 = v63 << 10;
          }

          else
          {
            v69 = 0;
          }

          v70 = *(v16 + 128) >> (*(v16 + 144) + a12);
          if (v70 <= 1)
          {
            v70 = 1;
          }

          v71 = v70 + 15;
          if (v71 < 0x20)
          {
            v72 = 0;
          }

          else
          {
            v72 = 32 - __clz(~(-1 << -__clz((v71 >> 4) - 1)));
          }

          v73 = *(v16 + 132) >> (*(v16 + 144) + a12);
          if (v73 <= 1)
          {
            v73 = 1;
          }

          v74 = v73 + 7;
          if (v74 < 0x10)
          {
            v75 = 0;
            if (!v72)
            {
LABEL_106:
              v81 = 0;
              goto LABEL_107;
            }
          }

          else
          {
            v75 = 32 - __clz(~(-1 << -__clz((v74 >> 3) - 1)));
            if (!(v75 | v72))
            {
              goto LABEL_106;
            }
          }

          v76 = 0;
          v77 = 0;
          v78 = v72 != 0;
          v79 = v75 != 0;
          v80 = 1;
          do
          {
            --v72;
            if (v78)
            {
              v77 |= (v80 & v42) << v76++;
            }

            else
            {
              v72 = 0;
            }

            --v75;
            if (v79)
            {
              v77 |= (v80 & v18) << v76++;
            }

            else
            {
              v75 = 0;
            }

            v80 *= 2;
            --v76;
            v79 = v75 != 0;
            v78 = v72 != 0;
          }

          while (v75 | v72);
          v81 = 8 * v77;
LABEL_107:
          v82 = (a3 + v69);
          if (v364)
          {
            v83 = v44;
            v84 = v50;
            v85 = v52;
            memcpy(__dst, (a3 + v69), sizeof(__dst));
            v52 = v85;
            v50 = v84;
            v44 = v83;
            v82 = __dst;
          }

          v86 = (a4 + v81);
          v87 = v367 + 8 * (v48 - v45);
          if (v52 & 1 | (v51 < 0x10u) || v371 <= 7)
          {
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 3221225472;
            block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
            block[3] = &__block_descriptor_90_e5_v8__0l;
            block[4] = v370;
            block[5] = v82;
            v380 = v51;
            v381 = v371;
            v376 = v359;
            v377 = v48 - v46;
            block[6] = v86;
            v374 = v87;
            v33 = a11;
            v375 = a11;
            v378 = v358;
            v379 = v50;
            if (v52)
            {
              dispatch_sync(*(*(v370 + 8) + 16552), block);
              v45 = a7;
              v16 = v370;
              goto LABEL_49;
            }

            v95 = *v86;
            if (v95 == 127)
            {
              v255 = v82[1];
              v256 = v82[2];
              v257 = v82[3];
              v258 = v82[4];
              v259 = v82[5];
              v260 = v82[6];
              v261 = v82[7];
              v383 = *v82;
              v384 = v256;
              v391 = v255;
              v392 = v257;
              v399 = v258;
              v400 = v260;
              v407 = v259;
              v408 = v261;
              v96 = 128;
            }

            else if (v95 == 3)
            {
              v254 = vld1q_dup_f32(v82->f32);
              v383 = v254;
              v384 = v254;
              v391 = v254;
              v392 = v254;
              v399 = v254;
              v400 = v254;
              v407 = v254;
              v408 = v254;
              v96 = 4;
            }

            else if (*v86)
            {
              v96 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v383, 128, v82, v95);
            }

            else
            {
              v96 = 0;
              v384 = 0u;
              v383 = 0u;
              v391 = 0u;
              v392 = 0u;
              v399 = 0u;
              v400 = 0u;
              v407 = 0u;
              v408 = 0u;
            }

            v262 = v82 + v96;
            v263 = v86[1];
            if (v263 == 127)
            {
              v266 = *(v262 + 16);
              v267 = *(v262 + 32);
              v268 = *(v262 + 48);
              v269 = *(v262 + 64);
              v270 = *(v262 + 80);
              v271 = *(v262 + 96);
              v272 = *(v262 + 112);
              v385 = *v262;
              v386 = v267;
              v393 = v266;
              v394 = v268;
              v401 = v269;
              v402 = v271;
              v409 = v270;
              v410 = v272;
              v264 = 128;
            }

            else if (v263 == 3)
            {
              v265 = vld1q_dup_f32(v262);
              v385 = v265;
              v386 = v265;
              v393 = v265;
              v394 = v265;
              v401 = v265;
              v402 = v265;
              v409 = v265;
              v410 = v265;
              v264 = 4;
            }

            else if (v86[1])
            {
              v264 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v385, 128, v262, v263);
            }

            else
            {
              v264 = 0;
              v385 = 0u;
              v386 = 0u;
              v393 = 0u;
              v394 = 0u;
              v401 = 0u;
              v402 = 0u;
              v409 = 0u;
              v410 = 0u;
            }

            v273 = v262 + v264;
            v274 = v86[2];
            if (v274 == 127)
            {
              v277 = *(v273 + 16);
              v278 = *(v273 + 32);
              v279 = *(v273 + 48);
              v280 = *(v273 + 64);
              v281 = *(v273 + 80);
              v282 = *(v273 + 96);
              v283 = *(v273 + 112);
              v415 = *v273;
              v416 = v278;
              v423 = v277;
              v424 = v279;
              v431 = v280;
              v432 = v282;
              v439 = v281;
              v440 = v283;
              v275 = 128;
            }

            else if (v274 == 3)
            {
              v276 = vld1q_dup_f32(v273);
              v415 = v276;
              v416 = v276;
              v423 = v276;
              v424 = v276;
              v431 = v276;
              v432 = v276;
              v439 = v276;
              v440 = v276;
              v275 = 4;
            }

            else if (v86[2])
            {
              v275 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v415, 128, v273, v274);
            }

            else
            {
              v275 = 0;
              v415 = 0u;
              v416 = 0u;
              v423 = 0u;
              v424 = 0u;
              v431 = 0u;
              v432 = 0u;
              v439 = 0u;
              v440 = 0u;
            }

            v284 = v273 + v275;
            v285 = v86[3];
            if (v285 == 127)
            {
              v288 = *(v284 + 16);
              v289 = *(v284 + 32);
              v290 = *(v284 + 48);
              v291 = *(v284 + 64);
              v292 = *(v284 + 80);
              v293 = *(v284 + 96);
              v294 = *(v284 + 112);
              v417 = *v284;
              v418 = v289;
              v425 = v288;
              v426 = v290;
              v433 = v291;
              v434 = v293;
              v441 = v292;
              v442 = v294;
              v286 = 128;
            }

            else if (v285 == 3)
            {
              v287 = vld1q_dup_f32(v284);
              v417 = v287;
              v418 = v287;
              v425 = v287;
              v426 = v287;
              v433 = v287;
              v434 = v287;
              v441 = v287;
              v442 = v287;
              v286 = 4;
            }

            else if (v86[3])
            {
              v286 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v417, 128, v284, v285);
            }

            else
            {
              v286 = 0;
              v417 = 0u;
              v418 = 0u;
              v425 = 0u;
              v426 = 0u;
              v433 = 0u;
              v434 = 0u;
              v441 = 0u;
              v442 = 0u;
            }

            v295 = v284 + v286;
            v296 = v86[4];
            if (v296 == 127)
            {
              v299 = *(v295 + 16);
              v300 = *(v295 + 32);
              v301 = *(v295 + 48);
              v302 = *(v295 + 64);
              v303 = *(v295 + 80);
              v304 = *(v295 + 96);
              v305 = *(v295 + 112);
              v387 = *v295;
              v388 = v300;
              v395 = v299;
              v396 = v301;
              v403 = v302;
              v404 = v304;
              v411 = v303;
              v412 = v305;
              v297 = 128;
            }

            else if (v296 == 3)
            {
              v298 = vld1q_dup_f32(v295);
              v387 = v298;
              v388 = v298;
              v395 = v298;
              v396 = v298;
              v403 = v298;
              v404 = v298;
              v411 = v298;
              v412 = v298;
              v297 = 4;
            }

            else if (v86[4])
            {
              v297 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v387, 128, v295, v296);
            }

            else
            {
              v297 = 0;
              v387 = 0u;
              v388 = 0u;
              v395 = 0u;
              v396 = 0u;
              v403 = 0u;
              v404 = 0u;
              v411 = 0u;
              v412 = 0u;
            }

            v306 = v295 + v297;
            v307 = v86[5];
            if (v307 == 127)
            {
              v310 = *(v306 + 16);
              v311 = *(v306 + 32);
              v312 = *(v306 + 48);
              v313 = *(v306 + 64);
              v314 = *(v306 + 80);
              v315 = *(v306 + 96);
              v316 = *(v306 + 112);
              v389 = *v306;
              v390 = v311;
              v397 = v310;
              v398 = v312;
              v405 = v313;
              v406 = v315;
              v413 = v314;
              v414 = v316;
              v308 = 128;
            }

            else if (v307 == 3)
            {
              v309 = vld1q_dup_f32(v306);
              v389 = v309;
              v390 = v309;
              v397 = v309;
              v398 = v309;
              v405 = v309;
              v406 = v309;
              v413 = v309;
              v414 = v309;
              v308 = 4;
            }

            else if (v86[5])
            {
              v308 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v389, 128, v306, v307);
            }

            else
            {
              v308 = 0;
              v389 = 0u;
              v390 = 0u;
              v397 = 0u;
              v398 = 0u;
              v405 = 0u;
              v406 = 0u;
              v413 = 0u;
              v414 = 0u;
            }

            v317 = v306 + v308;
            v318 = v86[6];
            if (v318 == 127)
            {
              v321 = *(v317 + 16);
              v322 = *(v317 + 32);
              v323 = *(v317 + 48);
              v324 = *(v317 + 64);
              v325 = *(v317 + 80);
              v326 = *(v317 + 96);
              v327 = *(v317 + 112);
              v419 = *v317;
              v420 = v322;
              v427 = v321;
              v428 = v323;
              v435 = v324;
              v436 = v326;
              v443 = v325;
              v444 = v327;
              v319 = 128;
            }

            else if (v318 == 3)
            {
              v320 = vld1q_dup_f32(v317);
              v419 = v320;
              v420 = v320;
              v427 = v320;
              v428 = v320;
              v435 = v320;
              v436 = v320;
              v443 = v320;
              v444 = v320;
              v319 = 4;
            }

            else if (v86[6])
            {
              v319 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v419, 128, v317, v318);
            }

            else
            {
              v319 = 0;
              v419 = 0u;
              v420 = 0u;
              v427 = 0u;
              v428 = 0u;
              v435 = 0u;
              v436 = 0u;
              v443 = 0u;
              v444 = 0u;
            }

            v328 = v317 + v319;
            v329 = v86[7];
            if (v329 == 127)
            {
              v332 = *(v328 + 16);
              v333 = *(v328 + 32);
              v334 = *(v328 + 48);
              v335 = *(v328 + 80);
              v336 = *(v328 + 96);
              v337 = *(v328 + 112);
              v338 = *(v328 + 64);
              v421 = *v328;
              v422 = v333;
              v429 = v332;
              v430 = v334;
              v437 = v338;
              v438 = v336;
              v445 = v335;
              v446 = v337;
              v45 = a7;
              v16 = v370;
              v330 = v378;
              if (!v378)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v329 == 3)
              {
                v331 = vld1q_dup_f32(v328);
                v421 = v331;
                v422 = v331;
                v429 = v331;
                v430 = v331;
                v437 = v331;
                v438 = v331;
                v445 = v331;
                v446 = v331;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else if (v329)
              {
                AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v421, 128, v328, v329);
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v421 = 0u;
                v422 = 0u;
                v429 = 0u;
                v430 = 0u;
                v437 = 0u;
                v438 = 0u;
                v445 = 0u;
                v446 = 0u;
                v330 = v378;
                if (!v378)
                {
                  goto LABEL_49;
                }
              }
            }

            v339 = 0;
            v340 = &v383.i8[128 * v376 + 8 * v377];
            v341 = v379;
            do
            {
              if (v341)
              {
                v342 = 0;
                v343 = v374 + v375 * v339;
                do
                {
                  *(v343 + v342) = v340[v342];
                  ++v342;
                  v341 = v379;
                }

                while (8 * v379 > v342);
                v330 = v378;
              }

              ++v339;
              v340 += 128;
            }

            while (v339 < v330);
          }

          else
          {
            v88 = *v86;
            if (v88 == 127)
            {
              v101 = v82[1];
              v102 = v82[2];
              v103 = v82[3];
              v104 = v82[5];
              v105 = v82[6];
              v106 = v82[7];
              v107 = v82[4];
              v89 = 2 * a11;
              *v87 = *v82;
              *(v87 + 16) = v102;
              v108 = (v87 + v354);
              v33 = a11;
              v109 = (v87 + a11);
              *v109 = v101;
              v109[1] = v103;
              *v108 = v107;
              v108[1] = v105;
              v110 = (v87 + v354 + a11);
              *v110 = v104;
              v110[1] = v106;
              v91 = 128;
              v90 = 3 * a11;
            }

            else
            {
              v33 = a11;
              v90 = 3 * a11;
              v89 = 2 * a11;
              if (v88 == 3)
              {
                v97 = vld1q_dup_f32(v82->f32);
                *v87 = v97;
                *(v87 + 16) = v97;
                v98 = (v87 + a11);
                *v98 = v97;
                v98[1] = v97;
                v99 = (v87 + v354);
                *v99 = v97;
                v99[1] = v97;
                v100 = (v87 + v353);
                *v100 = v97;
                v100[1] = v97;
                v91 = 4;
              }

              else if (*v86)
              {
                v91 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v87, a11, v82, v88);
              }

              else
              {
                v91 = 0;
                *v87 = 0u;
                *(v87 + 16) = 0u;
                v92 = (v87 + a11);
                *v92 = 0u;
                v92[1] = 0u;
                v93 = (v87 + v354);
                *v93 = 0u;
                v93[1] = 0u;
                v94 = (v87 + v353);
                *v94 = 0u;
                v94[1] = 0u;
              }
            }

            v111 = v82 + v91;
            v112 = (v87 + 32);
            v113 = v86[1];
            if (v113 == 127)
            {
              v122 = *(v111 + 16);
              v123 = *(v111 + 32);
              v124 = *(v111 + 48);
              v125 = *(v111 + 80);
              v126 = *(v111 + 96);
              v127 = *(v111 + 112);
              v128 = *(v111 + 64);
              *v112 = *v111;
              *(v87 + 48) = v123;
              v129 = &v112->i8[v89];
              v130 = &v112->i8[v33];
              *v130 = v122;
              *(v130 + 1) = v124;
              *v129 = v128;
              *(v129 + 1) = v126;
              v131 = &v112->i8[v89 + v33];
              *v131 = v125;
              *(v131 + 1) = v127;
              v114 = 128;
            }

            else if (v113 == 3)
            {
              v118 = vld1q_dup_f32(v111);
              *(v87 + 32) = v118;
              *(v87 + 48) = v118;
              v119 = &v112->i8[v33];
              *v119 = v118;
              v119[1] = v118;
              v120 = &v112->i8[v89];
              *v120 = v118;
              v120[1] = v118;
              v121 = &v112->i8[v90];
              *v121 = v118;
              v121[1] = v118;
              v114 = 4;
            }

            else if (v86[1])
            {
              v114 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v112, v33, v111, v113);
            }

            else
            {
              v114 = 0;
              *v112 = 0u;
              *(v87 + 48) = 0u;
              v115 = &v112->i8[v33];
              *v115 = 0u;
              *(v115 + 1) = 0u;
              v116 = &v112->i8[v89];
              *v116 = 0u;
              *(v116 + 1) = 0u;
              v117 = &v112->i8[v90];
              *v117 = 0u;
              *(v117 + 1) = 0u;
            }

            v132 = v111 + v114;
            v133 = (v87 + v355);
            v134 = v86[2];
            if (v134 == 127)
            {
              v143 = *(v132 + 16);
              v144 = *(v132 + 32);
              v145 = *(v132 + 48);
              v146 = *(v132 + 80);
              v147 = *(v132 + 96);
              v148 = *(v132 + 112);
              v149 = *(v132 + 64);
              *v133 = *v132;
              v133[1] = v144;
              v150 = &v133->i8[v89];
              v151 = &v133->i8[v33];
              *v151 = v143;
              *(v151 + 1) = v145;
              *v150 = v149;
              *(v150 + 1) = v147;
              v152 = &v133->i8[v89 + v33];
              *v152 = v146;
              *(v152 + 1) = v148;
              v135 = 128;
            }

            else if (v134 == 3)
            {
              v139 = vld1q_dup_f32(v132);
              *v133 = v139;
              v133[1] = v139;
              v140 = &v133->i8[v33];
              *v140 = v139;
              v140[1] = v139;
              v141 = &v133->i8[v89];
              *v141 = v139;
              v141[1] = v139;
              v142 = &v133->i8[v90];
              *v142 = v139;
              v142[1] = v139;
              v135 = 4;
            }

            else if (v86[2])
            {
              v135 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v87 + v355), v33, v132, v134);
            }

            else
            {
              v135 = 0;
              *v133 = 0u;
              v133[1] = 0u;
              v136 = &v133->i8[v33];
              *v136 = 0u;
              *(v136 + 1) = 0u;
              v137 = &v133->i8[v89];
              *v137 = 0u;
              *(v137 + 1) = 0u;
              v138 = &v133->i8[v90];
              *v138 = 0u;
              *(v138 + 1) = 0u;
            }

            v153 = v132 + v135;
            v154 = v133 + 2;
            v155 = v86[3];
            if (v155 == 127)
            {
              v164 = *(v153 + 16);
              v165 = *(v153 + 32);
              v166 = *(v153 + 48);
              v167 = *(v153 + 80);
              v168 = *(v153 + 96);
              v169 = *(v153 + 112);
              v170 = *(v153 + 64);
              *v154 = *v153;
              v133[3] = v165;
              v171 = &v154->i8[v89];
              v172 = &v154->i8[v33];
              *v172 = v164;
              *(v172 + 1) = v166;
              *v171 = v170;
              *(v171 + 1) = v168;
              v173 = &v154->i8[v89 + v33];
              *v173 = v167;
              *(v173 + 1) = v169;
              v156 = 128;
            }

            else if (v155 == 3)
            {
              v160 = vld1q_dup_f32(v153);
              v133[2] = v160;
              v133[3] = v160;
              v161 = &v154->i8[v33];
              *v161 = v160;
              v161[1] = v160;
              v162 = &v154->i8[v89];
              *v162 = v160;
              v162[1] = v160;
              v163 = &v154->i8[v90];
              *v163 = v160;
              v163[1] = v160;
              v156 = 4;
            }

            else if (v86[3])
            {
              v156 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v154, v33, v153, v155);
            }

            else
            {
              v156 = 0;
              *v154 = 0u;
              v133[3] = 0u;
              v157 = &v154->i8[v33];
              *v157 = 0u;
              *(v157 + 1) = 0u;
              v158 = &v154->i8[v89];
              *v158 = 0u;
              *(v158 + 1) = 0u;
              v159 = &v154->i8[v90];
              *v159 = 0u;
              *(v159 + 1) = 0u;
            }

            v174 = v153 + v156;
            v175 = (v87 + 64);
            v176 = v86[4];
            if (v176 == 127)
            {
              v185 = *(v174 + 16);
              v186 = *(v174 + 32);
              v187 = *(v174 + 48);
              v188 = *(v174 + 80);
              v189 = *(v174 + 96);
              v190 = *(v174 + 112);
              v191 = *(v174 + 64);
              *v175 = *v174;
              *(v87 + 80) = v186;
              v192 = &v175->i8[v89];
              v193 = &v175->i8[v33];
              *v193 = v185;
              *(v193 + 1) = v187;
              *v192 = v191;
              *(v192 + 1) = v189;
              v194 = &v175->i8[v89 + v33];
              *v194 = v188;
              *(v194 + 1) = v190;
              v177 = 128;
            }

            else if (v176 == 3)
            {
              v181 = vld1q_dup_f32(v174);
              *(v87 + 64) = v181;
              *(v87 + 80) = v181;
              v182 = &v175->i8[v33];
              *v182 = v181;
              v182[1] = v181;
              v183 = &v175->i8[v89];
              *v183 = v181;
              v183[1] = v181;
              v184 = &v175->i8[v90];
              *v184 = v181;
              v184[1] = v181;
              v177 = 4;
            }

            else if (v86[4])
            {
              v177 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v175, v33, v174, v176);
            }

            else
            {
              v177 = 0;
              *v175 = 0u;
              *(v87 + 80) = 0u;
              v178 = &v175->i8[v33];
              *v178 = 0u;
              *(v178 + 1) = 0u;
              v179 = &v175->i8[v89];
              *v179 = 0u;
              *(v179 + 1) = 0u;
              v180 = &v175->i8[v90];
              *v180 = 0u;
              *(v180 + 1) = 0u;
            }

            v195 = v174 + v177;
            v196 = (v87 + 96);
            v197 = v86[5];
            if (v197 == 127)
            {
              v206 = *(v195 + 16);
              v207 = *(v195 + 32);
              v208 = *(v195 + 48);
              v209 = *(v195 + 80);
              v210 = *(v195 + 96);
              v211 = *(v195 + 112);
              v212 = *(v195 + 64);
              *v196 = *v195;
              *(v87 + 112) = v207;
              v213 = &v196->i8[v89];
              v214 = &v196->i8[v33];
              *v214 = v206;
              *(v214 + 1) = v208;
              *v213 = v212;
              *(v213 + 1) = v210;
              v215 = &v196->i8[v89 + v33];
              *v215 = v209;
              *(v215 + 1) = v211;
              v198 = 128;
            }

            else if (v197 == 3)
            {
              v202 = vld1q_dup_f32(v195);
              *(v87 + 96) = v202;
              *(v87 + 112) = v202;
              v203 = &v196->i8[v33];
              *v203 = v202;
              v203[1] = v202;
              v204 = &v196->i8[v89];
              *v204 = v202;
              v204[1] = v202;
              v205 = &v196->i8[v90];
              *v205 = v202;
              v205[1] = v202;
              v198 = 4;
            }

            else if (v86[5])
            {
              v198 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v196, v33, v195, v197);
            }

            else
            {
              v198 = 0;
              *v196 = 0u;
              *(v87 + 112) = 0u;
              v199 = &v196->i8[v33];
              *v199 = 0u;
              *(v199 + 1) = 0u;
              v200 = &v196->i8[v89];
              *v200 = 0u;
              *(v200 + 1) = 0u;
              v201 = &v196->i8[v90];
              *v201 = 0u;
              *(v201 + 1) = 0u;
            }

            v216 = v195 + v198;
            v217 = v133 + 4;
            v218 = v86[6];
            if (v218 == 127)
            {
              v227 = *(v216 + 16);
              v228 = *(v216 + 32);
              v229 = *(v216 + 48);
              v230 = *(v216 + 80);
              v231 = *(v216 + 96);
              v232 = *(v216 + 112);
              v233 = *(v216 + 64);
              *v217 = *v216;
              v133[5] = v228;
              v234 = &v217->i8[v89];
              v235 = &v217->i8[v33];
              *v235 = v227;
              *(v235 + 1) = v229;
              *v234 = v233;
              *(v234 + 1) = v231;
              v236 = &v217->i8[v89 + v33];
              *v236 = v230;
              *(v236 + 1) = v232;
              v219 = 128;
            }

            else if (v218 == 3)
            {
              v223 = vld1q_dup_f32(v216);
              v133[4] = v223;
              v133[5] = v223;
              v224 = &v217->i8[v33];
              *v224 = v223;
              v224[1] = v223;
              v225 = &v217->i8[v89];
              *v225 = v223;
              v225[1] = v223;
              v226 = &v217->i8[v90];
              *v226 = v223;
              v226[1] = v223;
              v219 = 4;
            }

            else if (v86[6])
            {
              v219 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v217, v33, v195 + v198, v218);
            }

            else
            {
              v219 = 0;
              *v217 = 0u;
              v133[5] = 0u;
              v220 = &v217->i8[v33];
              *v220 = 0u;
              *(v220 + 1) = 0u;
              v221 = &v217->i8[v89];
              *v221 = 0u;
              *(v221 + 1) = 0u;
              v222 = &v217->i8[v90];
              *v222 = 0u;
              *(v222 + 1) = 0u;
            }

            v237 = v216 + v219;
            v238 = v133 + 6;
            v239 = v86[7];
            if (v239 == 127)
            {
              v244 = *(v237 + 16);
              v245 = *(v237 + 32);
              v246 = *(v237 + 48);
              v247 = *(v237 + 64);
              v248 = *(v237 + 80);
              v249 = *(v237 + 96);
              v250 = *(v237 + 112);
              *v238 = *v237;
              v133[7] = v245;
              v251 = &v238->i8[v89];
              v252 = &v238->i8[v33];
              *v252 = v244;
              *(v252 + 1) = v246;
              *v251 = v247;
              *(v251 + 1) = v249;
              v253 = &v238->i8[v89 + v33];
              *v253 = v248;
              *(v253 + 1) = v250;
              v45 = a7;
              v16 = v370;
            }

            else
            {
              v45 = a7;
              v16 = v370;
              if (v239 == 3)
              {
                v240 = vld1q_dup_f32(v237);
                v133[6] = v240;
                v133[7] = v240;
                goto LABEL_170;
              }

              if (!v239)
              {
                v240 = 0uLL;
                *v238 = 0u;
                v133[7] = 0u;
LABEL_170:
                v241 = &v238->i8[v33];
                *v241 = v240;
                v241[1] = v240;
                v242 = &v238->i8[v89];
                *v242 = v240;
                v242[1] = v240;
                v243 = &v238->i8[v90];
                *v243 = v240;
                v243[1] = v240;
                goto LABEL_49;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v238, v33, v237, v239);
            }
          }

LABEL_49:
          v21 = v42++ == v362 >> 4;
        }

        while (!v21);
        v21 = v18++ == v348;
      }

      while (!v21);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
          }

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
            if (!v58)
            {
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = v58 != 0;
          v65 = v61 != 0;
          v66 = 1;
          do
          {
            --v58;
            if (v64)
            {
              v63 |= (v66 & v38) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v18) << v62++;
            }

            else
            {
              v61 = 0;
            }

            v66 *= 2;
            --v62;
            v65 = v61 != 0;
            v64 = v58 != 0;
          }

          while (v61 | v58);
          v67 = 8 * v63;
LABEL_81:
          v73 = (a3 + v55);
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,true,(AGXHardwareTextureMemoryOrder)2>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, int a12)
{
  v446 = *MEMORY[0x29EDCA608];
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v17 = a1;
  v368 = a8;
  v18 = a8 >> 3;
  v348 = a8 + a10 - 1;
  v350 = v348 >> 3;
  v19 = *(*(v17 + 208) + 88);
  v20 = *(v17 + 112);
  v371 = v17;
  if (*(v17 + 168))
  {
    CacheMode = IOSurfaceGetCacheMode();
    v17 = v371;
    v22 = CacheMode & 0xF00;
  }

  else
  {
    v22 = 0;
  }

  v23 = (v22 & 0xD00) == 0 || v22 == 768;
  v24 = v22 & 0xE00;
  v26 = !v23 && v24 != 1024;
  v363 = v26;
  isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v17, *(v17 + 144) + a12);
  v28 = v371;
  v362 = isLevelTiled;
  if (v18 <= v350)
  {
    v361 = a7 + a9 - 1;
    v347 = a7 >> 4;
    if (a7 >> 4 <= v361 >> 4)
    {
      v29 = a11;
      v370 = (a5 - 1) >> 4;
      v344 = a5 - 1;
      v354 = (a5 - 1) & 0xF;
      v345 = (a6 - 1) & 7;
      v346 = (a6 - 1) >> 3;
      v353 = 4 * a11;
      v30 = vadd_s32(__PAIR64__(a5, a6), 0xF00000007);
      v31 = vcgt_u32(v30, 0x1F0000000FLL);
      v359 = vand_s8(vsub_s32(0x2000000020, vclz_s32(vmvn_s8(vshl_u32(-1, vsub_s32(0x2000000020, vclz_s32(vadd_s32(vshl_u32(v30, 0xFFFFFFFCFFFFFFFDLL), -1))))))), v31);
      v358 = v31;
      v343 = 8 * v20 * v19;
      v360 = a7;
      v351 = 3 * a11;
      v352 = 2 * a11;
      do
      {
        v32 = (8 * v18) | 7;
        if (8 * v18 <= v368)
        {
          v33 = v368;
        }

        else
        {
          v33 = 8 * v18;
        }

        if (v348 < v32)
        {
          v32 = v348;
        }

        v367 = 8 * v18;
        v357 = v33 - 8 * v18;
        v34 = v32 - v33;
        v35 = v34 + 1;
        v36 = v34 != v345;
        v356 = v35;
        v37 = v35 != 8;
        v38 = v347;
        v39 = v345 + 1;
        if (v18 != v346)
        {
          v39 = 8;
        }

        v369 = v39;
        if (v18 != v346)
        {
          v36 = v37;
        }

        v355 = v36;
        v366 = a2 + (v33 - v368) * v29;
        do
        {
          v40 = 16 * v38;
          v41 = 16 * (v38 + 1) - 1;
          if (16 * v38 <= a7)
          {
            v42 = a7;
          }

          else
          {
            v42 = 16 * v38;
          }

          if (v361 < v41)
          {
            v41 = v361;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v38 == v370)
          {
            v45 = v354 + 1;
          }

          else
          {
            v45 = 16;
          }

          v46 = 1;
          if (v367 >= v368 && v40 >= a7)
          {
            v47 = v43 != v354;
            if (v38 != v370)
            {
              v47 = v44 != 16;
            }

            v46 = v47 || v355;
          }

          if (v362)
          {
            v68 = 0;
            v69 = v343 >> (*(v28 + 57) != 0);
            v70 = 1;
            if (v69 <= 63)
            {
              if (v69 > 15)
              {
                if (v69 == 16)
                {
                  v70 = 0;
                  v71 = 0;
                  v72 = 64;
                  v68 = 128;
                }

                else
                {
                  v71 = 1;
                  v72 = 0;
                  if (v69 == 32)
                  {
                    v70 = 0;
                    v71 = 0;
                    v68 = 64;
                    v72 = 64;
                  }
                }
              }

              else if (v69 == 4)
              {
                v70 = 0;
                v71 = 0;
                v72 = 128;
                v68 = 256;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 8)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 128;
                  v72 = 128;
                }
              }
            }

            else if (v69 <= 255)
            {
              if (v69 == 64)
              {
                v70 = 0;
                v71 = 0;
                v72 = 32;
                v68 = 64;
              }

              else
              {
                v71 = 1;
                v72 = 0;
                if (v69 == 128)
                {
                  v70 = 0;
                  v71 = 0;
                  v68 = 32;
                  v72 = 32;
                }
              }
            }

            else if (v69 == 256)
            {
              v70 = 0;
              v71 = 0;
              v72 = 16;
              v68 = 32;
            }

            else if (v69 == 512)
            {
              v71 = 0;
              v68 = 16;
              v72 = 16;
            }

            else
            {
              v71 = 1;
              v72 = 0;
              if (v69 == 1024)
              {
                v72 = 8;
                v68 = 16;
              }
            }

            v331 = (v68 >> 4) - 1;
            if (v70)
            {
              v332 = 0;
            }

            else
            {
              v332 = 32 - __clz(~(-1 << -__clz(v331)));
            }

            v333 = (v72 >> 3) - 1;
            if (v71)
            {
              v334 = 0;
              if (v332)
              {
                goto LABEL_226;
              }
            }

            else
            {
              v334 = 32 - __clz(~(-1 << -__clz(v333)));
              if (v334 | v332)
              {
LABEL_226:
                v335 = 0;
                v336 = 0;
                v337 = v38 & v331;
                v338 = v18 & v333;
                v339 = v334 != 0;
                v340 = v332 != 0;
                v341 = 1;
                do
                {
                  --v334;
                  if (v339)
                  {
                    v336 |= (v341 & v338) << v335++;
                  }

                  else
                  {
                    v334 = 0;
                  }

                  --v332;
                  if (v340)
                  {
                    v336 |= (v341 & v337) << v335++;
                  }

                  else
                  {
                    v332 = 0;
                  }

                  v341 *= 2;
                  --v335;
                  v340 = v332 != 0;
                  v339 = v334 != 0;
                }

                while (v332 | v334);
                v342 = v336 << 10;
                goto LABEL_238;
              }
            }

            v342 = 0;
LABEL_238:
            v55 = v342 + ((v40 / v68 + v367 / v72 * ((v68 + v344) / v68)) << 14);
            goto LABEL_55;
          }

          if (v359)
          {
            v48 = 0;
            v49 = 0;
            v50 = 1;
            v51 = v358.i8[0];
            v52 = v358.i8[4];
            v53 = v359.i32[0];
            v54 = v359.i32[1];
            do
            {
              --v53;
              if (v51)
              {
                v49 |= (v50 & v18) << v48++;
              }

              else
              {
                v53 = 0;
              }

              --v54;
              if (v52)
              {
                v49 |= (v50 & v38) << v48++;
              }

              else
              {
                v54 = 0;
              }

              v50 *= 2;
              --v48;
              v52 = v54 != 0;
              v51 = v53 != 0;
            }

            while (v54 | v53);
            v55 = v49 << 10;
          }

          else
          {
            v55 = 0;
          }

LABEL_55:
          v56 = *(v28 + 128) >> (*(v28 + 144) + a12);
          if (v56 <= 1)
          {
            v56 = 1;
          }

          v57 = v56 + 15;
          if (v57 < 0x20)
          {
            v58 = 0;
          }

          else
          {
            v58 = 32 - __clz(~(-1 << -__clz((v57 >> 4) - 1)));
          }

          v59 = *(v28 + 132) >> (*(v28 + 144) + a12);
          if (v59 <= 1)
          {
            v59 = 1;
          }

          v60 = v59 + 7;
          if (v60 < 0x10)
          {
            v61 = 0;
            if (!v58)
            {
LABEL_80:
              v67 = 0;
              goto LABEL_81;
            }
          }

          else
          {
            v61 = 32 - __clz(~(-1 << -__clz((v60 >> 3) - 1)));
            if (!(v61 | v58))
            {
              goto LABEL_80;
            }
          }

          v62 = 0;
          v63 = 0;
          v64 = v58 != 0;
          v65 = v61 != 0;
          v66 = 1;
          do
          {
            --v58;
            if (v64)
            {
              v63 |= (v66 & v38) << v62++;
            }

            else
            {
              v58 = 0;
            }

            --v61;
            if (v65)
            {
              v63 |= (v66 & v18) << v62++;
            }

            else
            {
              v61 = 0;
            }

            v66 *= 2;
            --v62;
            v65 = v61 != 0;
            v64 = v58 != 0;
          }

          while (v61 | v58);
          v67 = 8 * v63;
LABEL_81:
          v73 = (a3 + v55);
          if (v363)
          {
            memcpy(__dst, v73, sizeof(__dst));
            v28 = v371;
            v73 = __dst;
          }

          v74 = (a4 + v67);
          v75 = v366 + 8 * (v42 - a7);
          if (!(v46 & 1 | (v45 < 0x10u)) && v369 > 7)
          {
            v76 = *v74;
            if (v76 == 127)
            {
              v88 = v73[1];
              v89 = v73[2];
              v90 = v73[3];
              v91 = v73[5];
              v92 = v73[6];
              v93 = v73[7];
              v94 = v73[4];
              v77 = 2 * a11;
              *v75 = *v73;
              *(v75 + 16) = v89;
              v95 = (v75 + v352);
              v29 = a11;
              v96 = (v75 + a11);
              *v96 = v88;
              v96[1] = v90;
              *v95 = v94;
              v95[1] = v92;
              v97 = (v75 + v352 + a11);
              *v97 = v91;
              v97[1] = v93;
              v78 = 128;
            }

            else
            {
              v29 = a11;
              v77 = 2 * a11;
              if (v76 == 3)
              {
                v84 = vld1q_dup_f32(v73->f32);
                *v75 = v84;
                *(v75 + 16) = v84;
                v85 = (v75 + a11);
                *v85 = v84;
                v85[1] = v84;
                v86 = (v75 + v352);
                *v86 = v84;
                v86[1] = v84;
                v87 = (v75 + v351);
                *v87 = v84;
                v87[1] = v84;
                v78 = 4;
              }

              else if (*v74)
              {
                v78 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v75, a11, v73, v76);
              }

              else
              {
                v78 = 0;
                *v75 = 0u;
                *(v75 + 16) = 0u;
                v79 = (v75 + a11);
                *v79 = 0u;
                v79[1] = 0u;
                v80 = (v75 + v352);
                *v80 = 0u;
                v80[1] = 0u;
                v81 = (v75 + v351);
                *v81 = 0u;
                v81[1] = 0u;
              }
            }

            v98 = v73 + v78;
            v99 = (v75 + 32);
            v100 = v74[1];
            if (v100 == 127)
            {
              v109 = *(v98 + 16);
              v110 = *(v98 + 32);
              v111 = *(v98 + 48);
              v112 = *(v98 + 80);
              v113 = *(v98 + 96);
              v114 = *(v98 + 112);
              v115 = *(v98 + 64);
              *v99 = *v98;
              *(v75 + 48) = v110;
              v116 = &v99->i8[v77];
              v117 = &v99->i8[v29];
              *v117 = v109;
              *(v117 + 1) = v111;
              *v116 = v115;
              *(v116 + 1) = v113;
              v118 = &v99->i8[v77 + v29];
              *v118 = v112;
              *(v118 + 1) = v114;
              v101 = 128;
            }

            else if (v100 == 3)
            {
              v105 = vld1q_dup_f32(v98);
              *(v75 + 32) = v105;
              *(v75 + 48) = v105;
              v106 = &v99->i8[v29];
              *v106 = v105;
              v106[1] = v105;
              v107 = &v99->i8[v77];
              *v107 = v105;
              v107[1] = v105;
              v108 = &v99->i8[v351];
              *v108 = v105;
              v108[1] = v105;
              v101 = 4;
            }

            else if (v74[1])
            {
              v101 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v99, v29, v98, v100);
            }

            else
            {
              v101 = 0;
              *v99 = 0u;
              *(v75 + 48) = 0u;
              v102 = &v99->i8[v29];
              *v102 = 0u;
              *(v102 + 1) = 0u;
              v103 = &v99->i8[v77];
              *v103 = 0u;
              *(v103 + 1) = 0u;
              v104 = &v99->i8[v351];
              *v104 = 0u;
              *(v104 + 1) = 0u;
            }

            v119 = v98 + v101;
            v120 = (v75 + v353);
            v121 = v74[2];
            if (v121 == 127)
            {
              v130 = *(v119 + 16);
              v131 = *(v119 + 32);
              v132 = *(v119 + 48);
              v133 = *(v119 + 80);
              v134 = *(v119 + 96);
              v135 = *(v119 + 112);
              v136 = *(v119 + 64);
              *v120 = *v119;
              v120[1] = v131;
              v137 = &v120->i8[v77];
              v138 = &v120->i8[v29];
              *v138 = v130;
              *(v138 + 1) = v132;
              *v137 = v136;
              *(v137 + 1) = v134;
              v139 = &v120->i8[v77 + v29];
              *v139 = v133;
              *(v139 + 1) = v135;
              v122 = 128;
            }

            else if (v121 == 3)
            {
              v126 = vld1q_dup_f32(v119);
              *v120 = v126;
              v120[1] = v126;
              v127 = &v120->i8[v29];
              *v127 = v126;
              v127[1] = v126;
              v128 = &v120->i8[v77];
              *v128 = v126;
              v128[1] = v126;
              v129 = &v120->i8[v351];
              *v129 = v126;
              v129[1] = v126;
              v122 = 4;
            }

            else if (v74[2])
            {
              v122 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((v75 + v353), v29, v119, v121);
            }

            else
            {
              v122 = 0;
              *v120 = 0u;
              v120[1] = 0u;
              v123 = &v120->i8[v29];
              *v123 = 0u;
              *(v123 + 1) = 0u;
              v124 = &v120->i8[v77];
              *v124 = 0u;
              *(v124 + 1) = 0u;
              v125 = &v120->i8[v351];
              *v125 = 0u;
              *(v125 + 1) = 0u;
            }

            v140 = v119 + v122;
            v141 = v120 + 2;
            v142 = v74[3];
            if (v142 == 127)
            {
              v151 = *(v140 + 16);
              v152 = *(v140 + 32);
              v153 = *(v140 + 48);
              v154 = *(v140 + 80);
              v155 = *(v140 + 96);
              v156 = *(v140 + 112);
              v157 = *(v140 + 64);
              *v141 = *v140;
              v120[3] = v152;
              v158 = &v141->i8[v77];
              v159 = &v141->i8[v29];
              *v159 = v151;
              *(v159 + 1) = v153;
              *v158 = v157;
              *(v158 + 1) = v155;
              v160 = &v141->i8[v77 + v29];
              *v160 = v154;
              *(v160 + 1) = v156;
              v143 = 128;
            }

            else if (v142 == 3)
            {
              v147 = vld1q_dup_f32(v140);
              v120[2] = v147;
              v120[3] = v147;
              v148 = &v141->i8[v29];
              *v148 = v147;
              v148[1] = v147;
              v149 = &v141->i8[v77];
              *v149 = v147;
              v149[1] = v147;
              v150 = &v141->i8[v351];
              *v150 = v147;
              v150[1] = v147;
              v143 = 4;
            }

            else if (v74[3])
            {
              v143 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v141, v29, v140, v142);
            }

            else
            {
              v143 = 0;
              *v141 = 0u;
              v120[3] = 0u;
              v144 = &v141->i8[v29];
              *v144 = 0u;
              *(v144 + 1) = 0u;
              v145 = &v141->i8[v77];
              *v145 = 0u;
              *(v145 + 1) = 0u;
              v146 = &v141->i8[v351];
              *v146 = 0u;
              *(v146 + 1) = 0u;
            }

            v161 = v140 + v143;
            v162 = (v75 + 64);
            v163 = v74[4];
            if (v163 == 127)
            {
              v172 = *(v161 + 16);
              v173 = *(v161 + 32);
              v174 = *(v161 + 48);
              v175 = *(v161 + 80);
              v176 = *(v161 + 96);
              v177 = *(v161 + 112);
              v178 = *(v161 + 64);
              *v162 = *v161;
              *(v75 + 80) = v173;
              v179 = &v162->i8[v77];
              v180 = &v162->i8[v29];
              *v180 = v172;
              *(v180 + 1) = v174;
              *v179 = v178;
              *(v179 + 1) = v176;
              v181 = &v162->i8[v77 + v29];
              *v181 = v175;
              *(v181 + 1) = v177;
              v164 = 128;
            }

            else if (v163 == 3)
            {
              v168 = vld1q_dup_f32(v161);
              *(v75 + 64) = v168;
              *(v75 + 80) = v168;
              v169 = &v162->i8[v29];
              *v169 = v168;
              v169[1] = v168;
              v170 = &v162->i8[v77];
              *v170 = v168;
              v170[1] = v168;
              v171 = &v162->i8[v351];
              *v171 = v168;
              v171[1] = v168;
              v164 = 4;
            }

            else if (v74[4])
            {
              v164 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v162, v29, v161, v163);
            }

            else
            {
              v164 = 0;
              *v162 = 0u;
              *(v75 + 80) = 0u;
              v165 = &v162->i8[v29];
              *v165 = 0u;
              *(v165 + 1) = 0u;
              v166 = &v162->i8[v77];
              *v166 = 0u;
              *(v166 + 1) = 0u;
              v167 = &v162->i8[v351];
              *v167 = 0u;
              *(v167 + 1) = 0u;
            }

            v182 = v161 + v164;
            v183 = (v75 + 96);
            v184 = v74[5];
            if (v184 == 127)
            {
              v193 = *(v182 + 16);
              v194 = *(v182 + 32);
              v195 = *(v182 + 48);
              v196 = *(v182 + 80);
              v197 = *(v182 + 96);
              v198 = *(v182 + 112);
              v199 = *(v182 + 64);
              *v183 = *v182;
              *(v75 + 112) = v194;
              v200 = &v183->i8[v77];
              v201 = &v183->i8[v29];
              *v201 = v193;
              *(v201 + 1) = v195;
              *v200 = v199;
              *(v200 + 1) = v197;
              v202 = &v183->i8[v77 + v29];
              *v202 = v196;
              *(v202 + 1) = v198;
              v185 = 128;
            }

            else if (v184 == 3)
            {
              v189 = vld1q_dup_f32(v182);
              *(v75 + 96) = v189;
              *(v75 + 112) = v189;
              v190 = &v183->i8[v29];
              *v190 = v189;
              v190[1] = v189;
              v191 = &v183->i8[v77];
              *v191 = v189;
              v191[1] = v189;
              v192 = &v183->i8[v351];
              *v192 = v189;
              v192[1] = v189;
              v185 = 4;
            }

            else if (v74[5])
            {
              v185 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v183, v29, v182, v184);
            }

            else
            {
              v185 = 0;
              *v183 = 0u;
              *(v75 + 112) = 0u;
              v186 = &v183->i8[v29];
              *v186 = 0u;
              *(v186 + 1) = 0u;
              v187 = &v183->i8[v77];
              *v187 = 0u;
              *(v187 + 1) = 0u;
              v188 = &v183->i8[v351];
              *v188 = 0u;
              *(v188 + 1) = 0u;
            }

            a7 = v360;
            v203 = v182 + v185;
            v204 = v120 + 4;
            v205 = v74[6];
            if (v205 == 127)
            {
              v214 = *(v203 + 16);
              v215 = *(v203 + 32);
              v216 = *(v203 + 48);
              v217 = *(v203 + 80);
              v218 = *(v203 + 96);
              v219 = *(v203 + 112);
              v220 = *(v203 + 64);
              *v204 = *v203;
              v120[5] = v215;
              v221 = &v204->i8[v77];
              v222 = &v204->i8[v29];
              *v222 = v214;
              *(v222 + 1) = v216;
              *v221 = v220;
              *(v221 + 1) = v218;
              v223 = &v204->i8[v77 + v29];
              *v223 = v217;
              *(v223 + 1) = v219;
              v206 = 128;
            }

            else if (v205 == 3)
            {
              v210 = vld1q_dup_f32(v203);
              v120[4] = v210;
              v120[5] = v210;
              v211 = &v204->i8[v29];
              *v211 = v210;
              v211[1] = v210;
              v212 = &v204->i8[v77];
              *v212 = v210;
              v212[1] = v210;
              v213 = &v204->i8[v351];
              *v213 = v210;
              v213[1] = v210;
              v206 = 4;
            }

            else if (v74[6])
            {
              v206 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v204, v29, v203, v205);
            }

            else
            {
              v206 = 0;
              *v204 = 0u;
              v120[5] = 0u;
              v207 = &v204->i8[v29];
              *v207 = 0u;
              *(v207 + 1) = 0u;
              v208 = &v204->i8[v77];
              *v208 = 0u;
              *(v208 + 1) = 0u;
              v209 = &v204->i8[v351];
              *v209 = 0u;
              *(v209 + 1) = 0u;
            }

            v224 = v203 + v206;
            v225 = v120 + 6;
            v226 = v74[7];
            if (v226 == 127)
            {
              v231 = *(v224 + 16);
              v232 = *(v224 + 32);
              v233 = *(v224 + 48);
              v234 = *(v224 + 64);
              v235 = *(v224 + 80);
              v236 = *(v224 + 96);
              v237 = *(v224 + 112);
              *v225 = *v224;
              v120[7] = v232;
              v238 = &v225->i8[v77];
              v239 = &v225->i8[v29];
              *v239 = v231;
              *(v239 + 1) = v233;
              *v238 = v234;
              *(v238 + 1) = v236;
              v240 = &v225->i8[v77 + v29];
              *v240 = v235;
              *(v240 + 1) = v237;
            }

            else if (v226 == 3)
            {
              v227 = vld1q_dup_f32(v224);
              v120[6] = v227;
              v120[7] = v227;
LABEL_144:
              v228 = &v225->i8[v29];
              *v228 = v227;
              v228[1] = v227;
              v229 = &v225->i8[v77];
              *v229 = v227;
              v229[1] = v227;
              v230 = &v225->i8[v351];
              *v230 = v227;
              v230[1] = v227;
            }

            else
            {
              if (!v74[7])
              {
                v227 = 0uLL;
                *v225 = 0u;
                v120[7] = 0u;
                goto LABEL_144;
              }

              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v225, v29, v224, v226);
            }

            v28 = v371;
            goto LABEL_29;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v28;
          block[5] = v73;
          v379 = v45;
          v380 = v369;
          v375 = v357;
          v376 = v42 - v40;
          block[6] = v74;
          v373 = v75;
          v29 = a11;
          v374 = a11;
          v377 = v356;
          v378 = v44;
          if (v46)
          {
            dispatch_sync(*(*(v28 + 8) + 16552), block);
            v28 = v371;
            a7 = v360;
          }

          else
          {
            v82 = *v74;
            a7 = v360;
            if (v82 == 127)
            {
              v242 = v73[1];
              v243 = v73[2];
              v244 = v73[3];
              v245 = v73[4];
              v246 = v73[5];
              v247 = v73[6];
              v248 = v73[7];
              v382 = *v73;
              v383 = v243;
              v390 = v242;
              v391 = v244;
              v398 = v245;
              v399 = v247;
              v406 = v246;
              v407 = v248;
              v83 = 128;
            }

            else if (v82 == 3)
            {
              v241 = vld1q_dup_f32(v73->f32);
              v382 = v241;
              v383 = v241;
              v390 = v241;
              v391 = v241;
              v398 = v241;
              v399 = v241;
              v406 = v241;
              v407 = v241;
              v83 = 4;
            }

            else if (*v74)
            {
              v83 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v382, 128, v73, v82);
            }

            else
            {
              v83 = 0;
              v383 = 0u;
              v382 = 0u;
              v390 = 0u;
              v391 = 0u;
              v398 = 0u;
              v399 = 0u;
              v406 = 0u;
              v407 = 0u;
            }

            v249 = v73 + v83;
            v250 = v74[1];
            if (v250 == 127)
            {
              v253 = *(v249 + 16);
              v254 = *(v249 + 32);
              v255 = *(v249 + 48);
              v256 = *(v249 + 64);
              v257 = *(v249 + 80);
              v258 = *(v249 + 96);
              v259 = *(v249 + 112);
              v384 = *v249;
              v385 = v254;
              v392 = v253;
              v393 = v255;
              v400 = v256;
              v401 = v258;
              v408 = v257;
              v409 = v259;
              v251 = 128;
            }

            else if (v250 == 3)
            {
              v252 = vld1q_dup_f32(v249);
              v384 = v252;
              v385 = v252;
              v392 = v252;
              v393 = v252;
              v400 = v252;
              v401 = v252;
              v408 = v252;
              v409 = v252;
              v251 = 4;
            }

            else if (v74[1])
            {
              v251 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v384, 128, v249, v250);
            }

            else
            {
              v251 = 0;
              v384 = 0u;
              v385 = 0u;
              v392 = 0u;
              v393 = 0u;
              v400 = 0u;
              v401 = 0u;
              v408 = 0u;
              v409 = 0u;
            }

            v260 = v249 + v251;
            v261 = v74[2];
            if (v261 == 127)
            {
              v264 = *(v260 + 16);
              v265 = *(v260 + 32);
              v266 = *(v260 + 48);
              v267 = *(v260 + 64);
              v268 = *(v260 + 80);
              v269 = *(v260 + 96);
              v270 = *(v260 + 112);
              v414 = *v260;
              v415 = v265;
              v422 = v264;
              v423 = v266;
              v430 = v267;
              v431 = v269;
              v438 = v268;
              v439 = v270;
              v262 = 128;
            }

            else if (v261 == 3)
            {
              v263 = vld1q_dup_f32(v260);
              v414 = v263;
              v415 = v263;
              v422 = v263;
              v423 = v263;
              v430 = v263;
              v431 = v263;
              v438 = v263;
              v439 = v263;
              v262 = 4;
            }

            else if (v74[2])
            {
              v262 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v414, 128, v260, v261);
            }

            else
            {
              v262 = 0;
              v414 = 0u;
              v415 = 0u;
              v422 = 0u;
              v423 = 0u;
              v430 = 0u;
              v431 = 0u;
              v438 = 0u;
              v439 = 0u;
            }

            v271 = v260 + v262;
            v272 = v74[3];
            if (v272 == 127)
            {
              v275 = *(v271 + 16);
              v276 = *(v271 + 32);
              v277 = *(v271 + 48);
              v278 = *(v271 + 64);
              v279 = *(v271 + 80);
              v280 = *(v271 + 96);
              v281 = *(v271 + 112);
              v416 = *v271;
              v417 = v276;
              v424 = v275;
              v425 = v277;
              v432 = v278;
              v433 = v280;
              v440 = v279;
              v441 = v281;
              v273 = 128;
            }

            else if (v272 == 3)
            {
              v274 = vld1q_dup_f32(v271);
              v416 = v274;
              v417 = v274;
              v424 = v274;
              v425 = v274;
              v432 = v274;
              v433 = v274;
              v440 = v274;
              v441 = v274;
              v273 = 4;
            }

            else if (v74[3])
            {
              v273 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v416, 128, v271, v272);
            }

            else
            {
              v273 = 0;
              v416 = 0u;
              v417 = 0u;
              v424 = 0u;
              v425 = 0u;
              v432 = 0u;
              v433 = 0u;
              v440 = 0u;
              v441 = 0u;
            }

            v282 = v271 + v273;
            v283 = v74[4];
            if (v283 == 127)
            {
              v286 = *(v282 + 16);
              v287 = *(v282 + 32);
              v288 = *(v282 + 48);
              v289 = *(v282 + 64);
              v290 = *(v282 + 80);
              v291 = *(v282 + 96);
              v292 = *(v282 + 112);
              v386 = *v282;
              v387 = v287;
              v394 = v286;
              v395 = v288;
              v402 = v289;
              v403 = v291;
              v410 = v290;
              v411 = v292;
              v284 = 128;
            }

            else if (v283 == 3)
            {
              v285 = vld1q_dup_f32(v282);
              v386 = v285;
              v387 = v285;
              v394 = v285;
              v395 = v285;
              v402 = v285;
              v403 = v285;
              v410 = v285;
              v411 = v285;
              v284 = 4;
            }

            else if (v74[4])
            {
              v284 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v386, 128, v282, v283);
            }

            else
            {
              v284 = 0;
              v386 = 0u;
              v387 = 0u;
              v394 = 0u;
              v395 = 0u;
              v402 = 0u;
              v403 = 0u;
              v410 = 0u;
              v411 = 0u;
            }

            v293 = v282 + v284;
            v294 = v74[5];
            if (v294 == 127)
            {
              v297 = *(v293 + 16);
              v298 = *(v293 + 32);
              v299 = *(v293 + 48);
              v300 = *(v293 + 64);
              v301 = *(v293 + 80);
              v302 = *(v293 + 96);
              v303 = *(v293 + 112);
              v388 = *v293;
              v389 = v298;
              v396 = v297;
              v397 = v299;
              v404 = v300;
              v405 = v302;
              v412 = v301;
              v413 = v303;
              v295 = 128;
            }

            else if (v294 == 3)
            {
              v296 = vld1q_dup_f32(v293);
              v388 = v296;
              v389 = v296;
              v396 = v296;
              v397 = v296;
              v404 = v296;
              v405 = v296;
              v412 = v296;
              v413 = v296;
              v295 = 4;
            }

            else if (v74[5])
            {
              v295 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v388, 128, v293, v294);
            }

            else
            {
              v295 = 0;
              v388 = 0u;
              v389 = 0u;
              v396 = 0u;
              v397 = 0u;
              v404 = 0u;
              v405 = 0u;
              v412 = 0u;
              v413 = 0u;
            }

            v304 = v293 + v295;
            v305 = v74[6];
            if (v305 == 127)
            {
              v308 = *(v304 + 16);
              v309 = *(v304 + 32);
              v310 = *(v304 + 48);
              v311 = *(v304 + 64);
              v312 = *(v304 + 80);
              v313 = *(v304 + 96);
              v314 = *(v304 + 112);
              v418 = *v304;
              v419 = v309;
              v426 = v308;
              v427 = v310;
              v434 = v311;
              v435 = v313;
              v442 = v312;
              v443 = v314;
              v306 = 128;
            }

            else if (v305 == 3)
            {
              v307 = vld1q_dup_f32(v304);
              v418 = v307;
              v419 = v307;
              v426 = v307;
              v427 = v307;
              v434 = v307;
              v435 = v307;
              v442 = v307;
              v443 = v307;
              v306 = 4;
            }

            else if (v74[6])
            {
              v306 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v418, 128, v304, v305);
            }

            else
            {
              v306 = 0;
              v418 = 0u;
              v419 = 0u;
              v426 = 0u;
              v427 = 0u;
              v434 = 0u;
              v435 = 0u;
              v442 = 0u;
              v443 = 0u;
            }

            v315 = v304 + v306;
            v316 = v74[7];
            if (v316 == 127)
            {
              v318 = *(v315 + 16);
              v319 = *(v315 + 32);
              v320 = *(v315 + 48);
              v321 = *(v315 + 80);
              v322 = *(v315 + 96);
              v323 = *(v315 + 112);
              v324 = *(v315 + 64);
              v420 = *v315;
              v421 = v319;
              v428 = v318;
              v429 = v320;
              v436 = v324;
              v437 = v322;
              v444 = v321;
              v445 = v323;
            }

            else if (v316 == 3)
            {
              v317 = vld1q_dup_f32(v315);
              v420 = v317;
              v421 = v317;
              v428 = v317;
              v429 = v317;
              v436 = v317;
              v437 = v317;
              v444 = v317;
              v445 = v317;
            }

            else if (v74[7])
            {
              AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(&v420, 128, v315, v316);
            }

            else
            {
              v420 = 0u;
              v421 = 0u;
              v428 = 0u;
              v429 = 0u;
              v436 = 0u;
              v437 = 0u;
              v444 = 0u;
              v445 = 0u;
            }

            v325 = v377;
            v28 = v371;
            if (v377)
            {
              v326 = 0;
              v327 = &v382.i8[128 * v375 + 8 * v376];
              v328 = v378;
              do
              {
                if (v328)
                {
                  v329 = 0;
                  v330 = v373 + v374 * v326;
                  do
                  {
                    *(v330 + v329) = v327[v329];
                    ++v329;
                    v328 = v378;
                  }

                  while (8 * v378 > v329);
                  v325 = v377;
                }

                ++v326;
                v327 += 128;
              }

              while (v326 < v325);
            }
          }

LABEL_29:
          v23 = v38++ == v361 >> 4;
        }

        while (!v23);
        v23 = v18++ == v350;
      }

      while (!v23);
    }
  }
}