void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion3D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, int a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v19 = a17;
  v21 = a15;
  v20 = a16;
  v22 = a13;
  v23 = a11;
  v24 = a12;
  v25 = a10;
  v27 = *(a1 + 57);
  v28 = *(a1 + 32);
  if (v27 == 3)
  {
    switch(v28)
    {
      case 1:
        if (*(a1 + 396) != 1)
        {
          CompressionCodecConfig = getCompressionCodecConfig(*(a1 + 56));
          v31 = a17;
          if (a12)
          {
            if (CompressionCodecConfig == 3)
            {
              v32 = a10;
              v33 = a11;
              v34 = a13;
              v35 = a15;
              v36 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v35, a3, a4 + a9 * v36, a5, a6, a7, a8, v32, v33, v34, v31);
                v32 = a10;
                v33 = a11;
                v34 = a13;
                v35 = a15;
                v36 = a16;
                v31 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 10:
        if (*(a1 + 396) != 1)
        {
          v261 = getCompressionCodecConfig(*(a1 + 56));
          v262 = a17;
          if (a12)
          {
            if (v261 == 3)
            {
              v263 = a10;
              v264 = a11;
              v265 = a13;
              v266 = a15;
              v267 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v266, a3, a4 + a9 * v267, a5, a6, a7, a8, v263, v264, v265, v262);
                v263 = a10;
                v264 = a11;
                v265 = a13;
                v266 = a15;
                v267 = a16;
                v262 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 11:
        if (*(a1 + 396) != 1)
        {
          v254 = getCompressionCodecConfig(*(a1 + 56));
          v255 = a17;
          if (a12)
          {
            if (v254 == 3)
            {
              v256 = a10;
              v257 = a11;
              v258 = a13;
              v259 = a15;
              v260 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v259, a3, a4 + a9 * v260, a5, a6, a7, a8, v256, v257, v258, v255);
                v256 = a10;
                v257 = a11;
                v258 = a13;
                v259 = a15;
                v260 = a16;
                v255 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 12:
        if (*(a1 + 396) != 1)
        {
          v240 = getCompressionCodecConfig(*(a1 + 56));
          v241 = a17;
          if (a12)
          {
            if (v240 == 3)
            {
              v242 = a10;
              v243 = a11;
              v244 = a13;
              v245 = a15;
              v246 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v245, a3, a4 + a9 * v246, a5, a6, a7, a8, v242, v243, v244, v241);
                v242 = a10;
                v243 = a11;
                v244 = a13;
                v245 = a15;
                v246 = a16;
                v241 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 13:
        if (*(a1 + 396) != 1)
        {
          v310 = getCompressionCodecConfig(*(a1 + 56));
          v311 = a17;
          if (a12)
          {
            if (v310 == 3)
            {
              v312 = a10;
              v313 = a11;
              v314 = a13;
              v315 = a15;
              v316 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v315, a3, a4 + a9 * v316, a5, a6, a7, a8, v312, v313, v314, v311);
                v312 = a10;
                v313 = a11;
                v314 = a13;
                v315 = a15;
                v316 = a16;
                v311 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 14:
        if (*(a1 + 396) != 1)
        {
          v247 = getCompressionCodecConfig(*(a1 + 56));
          v248 = a17;
          if (a12)
          {
            if (v247 == 3)
            {
              v249 = a10;
              v250 = a11;
              v251 = a13;
              v252 = a15;
              v253 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v252, a3, a4 + a9 * v253, a5, a6, a7, a8, v249, v250, v251, v248);
                v249 = a10;
                v250 = a11;
                v251 = a13;
                v252 = a15;
                v253 = a16;
                v248 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 20:
        if (*(a1 + 396) != 1)
        {
          v163 = getCompressionCodecConfig(*(a1 + 56));
          v164 = a17;
          if (a12)
          {
            if (v163 == 3)
            {
              v165 = a10;
              v166 = a11;
              v167 = a13;
              v168 = a15;
              v169 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v168, a3, a4 + a9 * v169, a5, a6, a7, a8, v165, v166, v167, v164);
                v165 = a10;
                v166 = a11;
                v167 = a13;
                v168 = a15;
                v169 = a16;
                v164 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 22:
        if (*(a1 + 396) != 1)
        {
          v170 = getCompressionCodecConfig(*(a1 + 56));
          v171 = a17;
          if (a12)
          {
            if (v170 == 3)
            {
              v172 = a10;
              v173 = a11;
              v174 = a13;
              v175 = a15;
              v176 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v175, a3, a4 + a9 * v176, a5, a6, a7, a8, v172, v173, v174, v171);
                v172 = a10;
                v173 = a11;
                v174 = a13;
                v175 = a15;
                v176 = a16;
                v171 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 23:
        if (*(a1 + 396) != 1)
        {
          v219 = getCompressionCodecConfig(*(a1 + 56));
          v220 = a17;
          if (a12)
          {
            if (v219 == 3)
            {
              v221 = a10;
              v222 = a11;
              v223 = a13;
              v224 = a15;
              v225 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v224, a3, a4 + a9 * v225, a5, a6, a7, a8, v221, v222, v223, v220);
                v221 = a10;
                v222 = a11;
                v223 = a13;
                v224 = a15;
                v225 = a16;
                v220 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 24:
        if (*(a1 + 396) != 1)
        {
          v198 = getCompressionCodecConfig(*(a1 + 56));
          v199 = a17;
          if (a12)
          {
            if (v198 == 3)
            {
              v200 = a10;
              v201 = a11;
              v202 = a13;
              v203 = a15;
              v204 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v203, a3, a4 + a9 * v204, a5, a6, a7, a8, v200, v201, v202, v199);
                v200 = a10;
                v201 = a11;
                v202 = a13;
                v203 = a15;
                v204 = a16;
                v199 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 25:
        if (*(a1 + 396) != 1)
        {
          v324 = getCompressionCodecConfig(*(a1 + 56));
          v325 = a17;
          if (a12)
          {
            if (v324 == 3)
            {
              v326 = a10;
              v327 = a11;
              v328 = a13;
              v329 = a15;
              v330 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v329, a3, a4 + a9 * v330, a5, a6, a7, a8, v326, v327, v328, v325);
                v326 = a10;
                v327 = a11;
                v328 = a13;
                v329 = a15;
                v330 = a16;
                v325 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 30:
        if (*(a1 + 396) != 1)
        {
          v135 = getCompressionCodecConfig(*(a1 + 56));
          v136 = a17;
          if (a12)
          {
            if (v135 == 3)
            {
              v137 = a10;
              v138 = a11;
              v139 = a13;
              v140 = a15;
              v141 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v140, a3, a4 + a9 * v141, a5, a6, a7, a8, v137, v138, v139, v136);
                v137 = a10;
                v138 = a11;
                v139 = a13;
                v140 = a15;
                v141 = a16;
                v136 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 31:
        if (*(a1 + 396) != 1)
        {
          v128 = getCompressionCodecConfig(*(a1 + 56));
          v129 = a17;
          if (a12)
          {
            if (v128 == 3)
            {
              v130 = a10;
              v131 = a11;
              v132 = a13;
              v133 = a15;
              v134 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v133, a3, a4 + a9 * v134, a5, a6, a7, a8, v130, v131, v132, v129);
                v130 = a10;
                v131 = a11;
                v132 = a13;
                v133 = a15;
                v134 = a16;
                v129 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 32:
        if (*(a1 + 396) != 1)
        {
          v345 = getCompressionCodecConfig(*(a1 + 56));
          v346 = a17;
          if (a12)
          {
            if (v345 == 3)
            {
              v347 = a10;
              v348 = a11;
              v349 = a13;
              v350 = a15;
              v351 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v350, a3, a4 + a9 * v351, a5, a6, a7, a8, v347, v348, v349, v346);
                v347 = a10;
                v348 = a11;
                v349 = a13;
                v350 = a15;
                v351 = a16;
                v346 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 33:
        if (*(a1 + 396) != 1)
        {
          v226 = getCompressionCodecConfig(*(a1 + 56));
          v227 = a17;
          if (a12)
          {
            if (v226 == 3)
            {
              v228 = a10;
              v229 = a11;
              v230 = a13;
              v231 = a15;
              v232 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v231, a3, a4 + a9 * v232, a5, a6, a7, a8, v228, v229, v230, v227);
                v228 = a10;
                v229 = a11;
                v230 = a13;
                v231 = a15;
                v232 = a16;
                v227 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 34:
        if (*(a1 + 396) != 1)
        {
          v233 = getCompressionCodecConfig(*(a1 + 56));
          v234 = a17;
          if (a12)
          {
            if (v233 == 3)
            {
              v235 = a10;
              v236 = a11;
              v237 = a13;
              v238 = a15;
              v239 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v238, a3, a4 + a9 * v239, a5, a6, a7, a8, v235, v236, v237, v234);
                v235 = a10;
                v236 = a11;
                v237 = a13;
                v238 = a15;
                v239 = a16;
                v234 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 53:
        if (*(a1 + 396) != 1)
        {
          v331 = getCompressionCodecConfig(*(a1 + 56));
          v332 = a17;
          if (a12)
          {
            if (v331 == 3)
            {
              v333 = a10;
              v334 = a11;
              v335 = a13;
              v336 = a15;
              v337 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v336, a3, a4 + a9 * v337, a5, a6, a7, a8, v333, v334, v335, v332);
                v333 = a10;
                v334 = a11;
                v335 = a13;
                v336 = a15;
                v337 = a16;
                v332 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 54:
        if (*(a1 + 396) != 1)
        {
          v289 = getCompressionCodecConfig(*(a1 + 56));
          v290 = a17;
          if (a12)
          {
            if (v289 == 3)
            {
              v291 = a10;
              v292 = a11;
              v293 = a13;
              v294 = a15;
              v295 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v294, a3, a4 + a9 * v295, a5, a6, a7, a8, v291, v292, v293, v290);
                v291 = a10;
                v292 = a11;
                v293 = a13;
                v294 = a15;
                v295 = a16;
                v290 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 55:
        if (*(a1 + 396) != 1)
        {
          v380 = getCompressionCodecConfig(*(a1 + 56));
          v381 = a17;
          if (a12)
          {
            if (v380 == 3)
            {
              v382 = a10;
              v383 = a11;
              v384 = a13;
              v385 = a15;
              v386 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v385, a3, a4 + a9 * v386, a5, a6, a7, a8, v382, v383, v384, v381);
                v382 = a10;
                v383 = a11;
                v384 = a13;
                v385 = a15;
                v386 = a16;
                v381 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 60:
        if (*(a1 + 396) != 1)
        {
          v177 = getCompressionCodecConfig(*(a1 + 56));
          v178 = a17;
          if (a12)
          {
            if (v177 == 3)
            {
              v179 = a10;
              v180 = a11;
              v181 = a13;
              v182 = a15;
              v183 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v182, a3, a4 + a9 * v183, a5, a6, a7, a8, v179, v180, v181, v178);
                v179 = a10;
                v180 = a11;
                v181 = a13;
                v182 = a15;
                v183 = a16;
                v178 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 62:
        if (*(a1 + 396) != 1)
        {
          v359 = getCompressionCodecConfig(*(a1 + 56));
          v360 = a17;
          if (a12)
          {
            if (v359 == 3)
            {
              v361 = a10;
              v362 = a11;
              v363 = a13;
              v364 = a15;
              v365 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v364, a3, a4 + a9 * v365, a5, a6, a7, a8, v361, v362, v363, v360);
                v361 = a10;
                v362 = a11;
                v363 = a13;
                v364 = a15;
                v365 = a16;
                v360 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 63:
        if (*(a1 + 396) != 1)
        {
          v100 = getCompressionCodecConfig(*(a1 + 56));
          v101 = a17;
          if (a12)
          {
            if (v100 == 3)
            {
              v102 = a10;
              v103 = a11;
              v104 = a13;
              v105 = a15;
              v106 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v105, a3, a4 + a9 * v106, a5, a6, a7, a8, v102, v103, v104, v101);
                v102 = a10;
                v103 = a11;
                v104 = a13;
                v105 = a15;
                v106 = a16;
                v101 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 64:
        if (*(a1 + 396) != 1)
        {
          v156 = getCompressionCodecConfig(*(a1 + 56));
          v157 = a17;
          if (a12)
          {
            if (v156 == 3)
            {
              v158 = a10;
              v159 = a11;
              v160 = a13;
              v161 = a15;
              v162 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v161, a3, a4 + a9 * v162, a5, a6, a7, a8, v158, v159, v160, v157);
                v158 = a10;
                v159 = a11;
                v160 = a13;
                v161 = a15;
                v162 = a16;
                v157 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 65:
        if (*(a1 + 396) != 1)
        {
          v114 = getCompressionCodecConfig(*(a1 + 56));
          v115 = a17;
          if (a12)
          {
            if (v114 == 3)
            {
              v116 = a10;
              v117 = a11;
              v118 = a13;
              v119 = a15;
              v120 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v119, a3, a4 + a9 * v120, a5, a6, a7, a8, v116, v117, v118, v115);
                v116 = a10;
                v117 = a11;
                v118 = a13;
                v119 = a15;
                v120 = a16;
                v115 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 70:
        if (*(a1 + 396) != 1)
        {
          v205 = getCompressionCodecConfig(*(a1 + 56));
          v206 = a17;
          if (a12)
          {
            if (v205 == 3)
            {
              v207 = a10;
              v208 = a11;
              v209 = a13;
              v210 = a15;
              v211 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v210, a3, a4 + a9 * v211, a5, a6, a7, a8, v207, v208, v209, v206);
                v207 = a10;
                v208 = a11;
                v209 = a13;
                v210 = a15;
                v211 = a16;
                v206 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 71:
        if (*(a1 + 396) != 1)
        {
          v107 = getCompressionCodecConfig(*(a1 + 56));
          v108 = a17;
          if (a12)
          {
            if (v107 == 3)
            {
              v109 = a10;
              v110 = a11;
              v111 = a13;
              v112 = a15;
              v113 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v112, a3, a4 + a9 * v113, a5, a6, a7, a8, v109, v110, v111, v108);
                v109 = a10;
                v110 = a11;
                v111 = a13;
                v112 = a15;
                v113 = a16;
                v108 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 72:
        if (*(a1 + 396) != 1)
        {
          v401 = getCompressionCodecConfig(*(a1 + 56));
          v402 = a17;
          if (a12)
          {
            if (v401 == 3)
            {
              v403 = a10;
              v404 = a11;
              v405 = a13;
              v406 = a15;
              v407 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v406, a3, a4 + a9 * v407, a5, a6, a7, a8, v403, v404, v405, v402);
                v403 = a10;
                v404 = a11;
                v405 = a13;
                v406 = a15;
                v407 = a16;
                v402 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 73:
        if (*(a1 + 396) != 1)
        {
          v394 = getCompressionCodecConfig(*(a1 + 56));
          v395 = a17;
          if (a12)
          {
            if (v394 == 3)
            {
              v396 = a10;
              v397 = a11;
              v398 = a13;
              v399 = a15;
              v400 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v399, a3, a4 + a9 * v400, a5, a6, a7, a8, v396, v397, v398, v395);
                v396 = a10;
                v397 = a11;
                v398 = a13;
                v399 = a15;
                v400 = a16;
                v395 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 74:
        if (*(a1 + 396) != 1)
        {
          v142 = getCompressionCodecConfig(*(a1 + 56));
          v143 = a17;
          if (a12)
          {
            if (v142 == 3)
            {
              v144 = a10;
              v145 = a11;
              v146 = a13;
              v147 = a15;
              v148 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v147, a3, a4 + a9 * v148, a5, a6, a7, a8, v144, v145, v146, v143);
                v144 = a10;
                v145 = a11;
                v146 = a13;
                v147 = a15;
                v148 = a16;
                v143 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 80:
        if (*(a1 + 396) != 1)
        {
          v184 = getCompressionCodecConfig(*(a1 + 56));
          v185 = a17;
          if (a12)
          {
            if (v184 == 3)
            {
              v186 = a10;
              v187 = a11;
              v188 = a13;
              v189 = a15;
              v190 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v189, a3, a4 + a9 * v190, a5, a6, a7, a8, v186, v187, v188, v185);
                v186 = a10;
                v187 = a11;
                v188 = a13;
                v189 = a15;
                v190 = a16;
                v185 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 81:
        if (*(a1 + 396) != 1)
        {
          v268 = getCompressionCodecConfig(*(a1 + 56));
          v269 = a17;
          if (a12)
          {
            if (v268 == 3)
            {
              v270 = a10;
              v271 = a11;
              v272 = a13;
              v273 = a15;
              v274 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v273, a3, a4 + a9 * v274, a5, a6, a7, a8, v270, v271, v272, v269);
                v270 = a10;
                v271 = a11;
                v272 = a13;
                v273 = a15;
                v274 = a16;
                v269 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 84:
        if (*(a1 + 396) != 1)
        {
          v191 = getCompressionCodecConfig(*(a1 + 56));
          v192 = a17;
          if (a12)
          {
            if (v191 == 3)
            {
              v193 = a10;
              v194 = a11;
              v195 = a13;
              v196 = a15;
              v197 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v196, a3, a4 + a9 * v197, a5, a6, a7, a8, v193, v194, v195, v192);
                v193 = a10;
                v194 = a11;
                v195 = a13;
                v196 = a15;
                v197 = a16;
                v192 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 85:
        if (*(a1 + 396) != 1)
        {
          v422 = getCompressionCodecConfig(*(a1 + 56));
          v423 = a17;
          if (a12)
          {
            if (v422 == 3)
            {
              v424 = a10;
              v425 = a11;
              v426 = a13;
              v427 = a15;
              v428 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v427, a3, a4 + a9 * v428, a5, a6, a7, a8, v424, v425, v426, v423);
                v424 = a10;
                v425 = a11;
                v426 = a13;
                v427 = a15;
                v428 = a16;
                v423 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 90:
        if (*(a1 + 396) != 1)
        {
          v121 = getCompressionCodecConfig(*(a1 + 56));
          v122 = a17;
          if (a12)
          {
            if (v121 == 3)
            {
              v123 = a10;
              v124 = a11;
              v125 = a13;
              v126 = a15;
              v127 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v126, a3, a4 + a9 * v127, a5, a6, a7, a8, v123, v124, v125, v122);
                v123 = a10;
                v124 = a11;
                v125 = a13;
                v126 = a15;
                v127 = a16;
                v122 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 91:
        if (*(a1 + 396) != 1)
        {
          v338 = getCompressionCodecConfig(*(a1 + 56));
          v339 = a17;
          if (a12)
          {
            if (v338 == 3)
            {
              v340 = a10;
              v341 = a11;
              v342 = a13;
              v343 = a15;
              v344 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v343, a3, a4 + a9 * v344, a5, a6, a7, a8, v340, v341, v342, v339);
                v340 = a10;
                v341 = a11;
                v342 = a13;
                v343 = a15;
                v344 = a16;
                v339 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 94:
        if (*(a1 + 396) != 1)
        {
          v415 = getCompressionCodecConfig(*(a1 + 56));
          v416 = a17;
          if (a12)
          {
            if (v415 == 3)
            {
              v417 = a10;
              v418 = a11;
              v419 = a13;
              v420 = a15;
              v421 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v420, a3, a4 + a9 * v421, a5, a6, a7, a8, v417, v418, v419, v416);
                v417 = a10;
                v418 = a11;
                v419 = a13;
                v420 = a15;
                v421 = a16;
                v416 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 103:
        if (*(a1 + 396) != 1)
        {
          v86 = getCompressionCodecConfig(*(a1 + 56));
          v87 = a17;
          if (a12)
          {
            if (v86 == 3)
            {
              v88 = a10;
              v89 = a11;
              v90 = a13;
              v91 = a15;
              v92 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v91, a3, a4 + a9 * v92, a5, a6, a7, a8, v88, v89, v90, v87);
                v88 = a10;
                v89 = a11;
                v90 = a13;
                v91 = a15;
                v92 = a16;
                v87 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 104:
        if (*(a1 + 396) != 1)
        {
          v282 = getCompressionCodecConfig(*(a1 + 56));
          v283 = a17;
          if (a12)
          {
            if (v282 == 3)
            {
              v284 = a10;
              v285 = a11;
              v286 = a13;
              v287 = a15;
              v288 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v287, a3, a4 + a9 * v288, a5, a6, a7, a8, v284, v285, v286, v283);
                v284 = a10;
                v285 = a11;
                v286 = a13;
                v287 = a15;
                v288 = a16;
                v283 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 105:
        if (*(a1 + 396) != 1)
        {
          v79 = getCompressionCodecConfig(*(a1 + 56));
          v80 = a17;
          if (a12)
          {
            if (v79 == 3)
            {
              v81 = a10;
              v82 = a11;
              v83 = a13;
              v84 = a15;
              v85 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v84, a3, a4 + a9 * v85, a5, a6, a7, a8, v81, v82, v83, v80);
                v81 = a10;
                v82 = a11;
                v83 = a13;
                v84 = a15;
                v85 = a16;
                v80 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 110:
        if (*(a1 + 396) != 1)
        {
          v65 = getCompressionCodecConfig(*(a1 + 56));
          v66 = a17;
          if (a12)
          {
            if (v65 == 3)
            {
              v67 = a10;
              v68 = a11;
              v69 = a13;
              v70 = a15;
              v71 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v70, a3, a4 + a9 * v71, a5, a6, a7, a8, v67, v68, v69, v66);
                v67 = a10;
                v68 = a11;
                v69 = a13;
                v70 = a15;
                v71 = a16;
                v66 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 112:
        if (*(a1 + 396) != 1)
        {
          v149 = getCompressionCodecConfig(*(a1 + 56));
          v150 = a17;
          if (a12)
          {
            if (v149 == 3)
            {
              v151 = a10;
              v152 = a11;
              v153 = a13;
              v154 = a15;
              v155 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v154, a3, a4 + a9 * v155, a5, a6, a7, a8, v151, v152, v153, v150);
                v151 = a10;
                v152 = a11;
                v153 = a13;
                v154 = a15;
                v155 = a16;
                v150 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 113:
        if (*(a1 + 396) != 1)
        {
          v212 = getCompressionCodecConfig(*(a1 + 56));
          v213 = a17;
          if (a12)
          {
            if (v212 == 3)
            {
              v214 = a10;
              v215 = a11;
              v216 = a13;
              v217 = a15;
              v218 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v217, a3, a4 + a9 * v218, a5, a6, a7, a8, v214, v215, v216, v213);
                v214 = a10;
                v215 = a11;
                v216 = a13;
                v217 = a15;
                v218 = a16;
                v213 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 114:
        if (*(a1 + 396) != 1)
        {
          v352 = getCompressionCodecConfig(*(a1 + 56));
          v353 = a17;
          if (a12)
          {
            if (v352 == 3)
            {
              v354 = a10;
              v355 = a11;
              v356 = a13;
              v357 = a15;
              v358 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v357, a3, a4 + a9 * v358, a5, a6, a7, a8, v354, v355, v356, v353);
                v354 = a10;
                v355 = a11;
                v356 = a13;
                v357 = a15;
                v358 = a16;
                v353 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 115:
        if (*(a1 + 396) != 1)
        {
          v436 = getCompressionCodecConfig(*(a1 + 56));
          v437 = a17;
          if (a12)
          {
            if (v436 == 3)
            {
              v438 = a10;
              v439 = a11;
              v440 = a13;
              v441 = a15;
              v442 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v441, a3, a4 + a9 * v442, a5, a6, a7, a8, v438, v439, v440, v437);
                v438 = a10;
                v439 = a11;
                v440 = a13;
                v441 = a15;
                v442 = a16;
                v437 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 123:
        if (*(a1 + 396) != 1)
        {
          v93 = getCompressionCodecConfig(*(a1 + 56));
          v94 = a17;
          if (a12)
          {
            if (v93 == 3)
            {
              v95 = a10;
              v96 = a11;
              v97 = a13;
              v98 = a15;
              v99 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v98, a3, a4 + a9 * v99, a5, a6, a7, a8, v95, v96, v97, v94);
                v95 = a10;
                v96 = a11;
                v97 = a13;
                v98 = a15;
                v99 = a16;
                v94 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 124:
        if (*(a1 + 396) != 1)
        {
          v275 = getCompressionCodecConfig(*(a1 + 56));
          v276 = a17;
          if (a12)
          {
            if (v275 == 3)
            {
              v277 = a10;
              v278 = a11;
              v279 = a13;
              v280 = a15;
              v281 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v280, a3, a4 + a9 * v281, a5, a6, a7, a8, v277, v278, v279, v276);
                v277 = a10;
                v278 = a11;
                v279 = a13;
                v280 = a15;
                v281 = a16;
                v276 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 125:
        if (*(a1 + 396) != 1)
        {
          v303 = getCompressionCodecConfig(*(a1 + 56));
          v304 = a17;
          if (a12)
          {
            if (v303 == 3)
            {
              v305 = a10;
              v306 = a11;
              v307 = a13;
              v308 = a15;
              v309 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v308, a3, a4 + a9 * v309, a5, a6, a7, a8, v305, v306, v307, v304);
                v305 = a10;
                v306 = a11;
                v307 = a13;
                v308 = a15;
                v309 = a16;
                v304 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 300:
        if (*(a1 + 396) != 1)
        {
          v429 = getCompressionCodecConfig(*(a1 + 56));
          v430 = a17;
          if (a12)
          {
            if (v429 == 3)
            {
              v431 = a10;
              v432 = a11;
              v433 = a13;
              v434 = a15;
              v435 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v434, a3, a4 + a9 * v435, a5, a6, a7, a8, v431, v432, v433, v430);
                v431 = a10;
                v432 = a11;
                v433 = a13;
                v434 = a15;
                v435 = a16;
                v430 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 301:
        if (*(a1 + 396) != 1)
        {
          v296 = getCompressionCodecConfig(*(a1 + 56));
          v297 = a17;
          if (a12)
          {
            if (v296 == 3)
            {
              v298 = a10;
              v299 = a11;
              v300 = a13;
              v301 = a15;
              v302 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v301, a3, a4 + a9 * v302, a5, a6, a7, a8, v298, v299, v300, v297);
                v298 = a10;
                v299 = a11;
                v300 = a13;
                v301 = a15;
                v302 = a16;
                v297 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 302:
        if (*(a1 + 396) != 1)
        {
          v72 = getCompressionCodecConfig(*(a1 + 56));
          v73 = a17;
          if (a12)
          {
            if (v72 == 3)
            {
              v74 = a10;
              v75 = a11;
              v76 = a13;
              v77 = a15;
              v78 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v77, a3, a4 + a9 * v78, a5, a6, a7, a8, v74, v75, v76, v73);
                v74 = a10;
                v75 = a11;
                v76 = a13;
                v77 = a15;
                v78 = a16;
                v73 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 303:
        if (*(a1 + 396) != 1)
        {
          v44 = getCompressionCodecConfig(*(a1 + 56));
          v45 = a17;
          if (a12)
          {
            if (v44 == 3)
            {
              v46 = a10;
              v47 = a11;
              v48 = a13;
              v49 = a15;
              v50 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v49, a3, a4 + a9 * v50, a5, a6, a7, a8, v46, v47, v48, v45);
                v46 = a10;
                v47 = a11;
                v48 = a13;
                v49 = a15;
                v50 = a16;
                v45 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 304:
        if (*(a1 + 396) != 1)
        {
          v443 = getCompressionCodecConfig(*(a1 + 56));
          v444 = a17;
          if (a12)
          {
            if (v443 == 3)
            {
              v445 = a10;
              v446 = a11;
              v447 = a13;
              v448 = a15;
              v449 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v448, a3, a4 + a9 * v449, a5, a6, a7, a8, v445, v446, v447, v444);
                v445 = a10;
                v446 = a11;
                v447 = a13;
                v448 = a15;
                v449 = a16;
                v444 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 313:
        if (*(a1 + 396) != 1)
        {
          v408 = getCompressionCodecConfig(*(a1 + 56));
          v409 = a17;
          if (a12)
          {
            if (v408 == 3)
            {
              v410 = a10;
              v411 = a11;
              v412 = a13;
              v413 = a15;
              v414 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v413, a3, a4 + a9 * v414, a5, a6, a7, a8, v410, v411, v412, v409);
                v410 = a10;
                v411 = a11;
                v412 = a13;
                v413 = a15;
                v414 = a16;
                v409 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 314:
        if (*(a1 + 396) != 1)
        {
          v58 = getCompressionCodecConfig(*(a1 + 56));
          v59 = a17;
          if (a12)
          {
            if (v58 == 3)
            {
              v60 = a10;
              v61 = a11;
              v62 = a13;
              v63 = a15;
              v64 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v63, a3, a4 + a9 * v64, a5, a6, a7, a8, v60, v61, v62, v59);
                v60 = a10;
                v61 = a11;
                v62 = a13;
                v63 = a15;
                v64 = a16;
                v59 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 315:
        if (*(a1 + 396) != 1)
        {
          v317 = getCompressionCodecConfig(*(a1 + 56));
          v318 = a17;
          if (a12)
          {
            if (v317 == 3)
            {
              v319 = a10;
              v320 = a11;
              v321 = a13;
              v322 = a15;
              v323 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v322, a3, a4 + a9 * v323, a5, a6, a7, a8, v319, v320, v321, v318);
                v319 = a10;
                v320 = a11;
                v321 = a13;
                v322 = a15;
                v323 = a16;
                v318 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 323:
        if (*(a1 + 396) != 1)
        {
          v366 = getCompressionCodecConfig(*(a1 + 56));
          v367 = a17;
          if (a12)
          {
            if (v366 == 3)
            {
              v368 = a10;
              v369 = a11;
              v370 = a13;
              v371 = a15;
              v372 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v371, a3, a4 + a9 * v372, a5, a6, a7, a8, v368, v369, v370, v367);
                v368 = a10;
                v369 = a11;
                v370 = a13;
                v371 = a15;
                v372 = a16;
                v367 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 324:
        if (*(a1 + 396) != 1)
        {
          v51 = getCompressionCodecConfig(*(a1 + 56));
          v52 = a17;
          if (a12)
          {
            if (v51 == 3)
            {
              v53 = a10;
              v54 = a11;
              v55 = a13;
              v56 = a15;
              v57 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v56, a3, a4 + a9 * v57, a5, a6, a7, a8, v53, v54, v55, v52);
                v53 = a10;
                v54 = a11;
                v55 = a13;
                v56 = a15;
                v57 = a16;
                v52 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 325:
        if (*(a1 + 396) != 1)
        {
          v387 = getCompressionCodecConfig(*(a1 + 56));
          v388 = a17;
          if (a12)
          {
            if (v387 == 3)
            {
              v389 = a10;
              v390 = a11;
              v391 = a13;
              v392 = a15;
              v393 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v392, a3, a4 + a9 * v393, a5, a6, a7, a8, v389, v390, v391, v388);
                v389 = a10;
                v390 = a11;
                v391 = a13;
                v392 = a15;
                v393 = a16;
                v388 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 554:
        if (*(a1 + 396) != 1)
        {
          v373 = getCompressionCodecConfig(*(a1 + 56));
          v374 = a17;
          if (a12)
          {
            if (v373 == 3)
            {
              v375 = a10;
              v376 = a11;
              v377 = a13;
              v378 = a15;
              v379 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v378, a3, a4 + a9 * v379, a5, a6, a7, a8, v375, v376, v377, v374);
                v375 = a10;
                v376 = a11;
                v377 = a13;
                v378 = a15;
                v379 = a16;
                v374 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      case 555:
        if (*(a1 + 396) != 1)
        {
          v450 = getCompressionCodecConfig(*(a1 + 56));
          v451 = a17;
          if (a12)
          {
            if (v450 == 3)
            {
              v452 = a10;
              v453 = a11;
              v454 = a13;
              v455 = a15;
              v456 = a16;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v455, a3, a4 + a9 * v456, a5, a6, a7, a8, v452, v453, v454, v451);
                v452 = a10;
                v453 = a11;
                v454 = a13;
                v455 = a15;
                v456 = a16;
                v451 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        break;
      default:
        return;
    }
  }

  else if (v27 == 1)
  {
    if (v28 <= 637)
    {
      if (v28 == 552)
      {
        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }

      else if (v28 == 553)
      {
        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        if (v28 != 637 || *(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }
    }

    else
    {
      if (v28 <= 639)
      {
        if (v28 != 638)
        {
          if (*(a1 + 396) == 1)
          {
            return;
          }

          v29 = *(a1 + 57);
          if (v29 == 1)
          {
            if (a12)
            {
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
                v25 = a10;
                v23 = a11;
                v22 = a13;
                v21 = a15;
                v20 = a16;
                v19 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }

            return;
          }

          goto LABEL_58;
        }

        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 == 1)
        {
          if (a12)
          {
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
              v25 = a10;
              v23 = a11;
              v22 = a13;
              v21 = a15;
              v20 = a16;
              v19 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }

          return;
        }

LABEL_58:
        {
          getCompressionCodecConfig(AGXTextureCompressionSettings)::losslessCodecConfig = 1;
        }

        return;
      }

      if (v28 == 640)
      {
        if (*(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }

      else
      {
        if (v28 != 641 || *(a1 + 396) == 1)
        {
          return;
        }

        v29 = *(a1 + 57);
        if (v29 != 1)
        {
          goto LABEL_58;
        }

        if (a12)
        {
          do
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v21, a3, a4 + a9 * v20, a5, a6, a7, a8, v25, v23, v22, v19);
            v25 = a10;
            v23 = a11;
            v22 = a13;
            v21 = a15;
            v20 = a16;
            v19 = a17;
            ++a9;
            a3 += a14;
            --v24;
          }

          while (v24);
        }
      }
    }
  }

  else
  {
    switch(v28)
    {
      case 1:
        v2600 = *(a1 + 396);
        v37 = getCompressionCodecConfig(*(a1 + 56));
        if (v2600 == 1)
        {
          if (v37 == 4)
          {
            v2120 = a17;
            if (a12)
            {
              v2121 = a16;
              v2122 = a15;
              v2123 = a13;
              v2124 = a11;
              v2125 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2122, a3, a4 + a9 * v2121, a5, a6, a7, a8, v2125, v2124, v2123, v2120);
                v2125 = a10;
                v2124 = a11;
                v2123 = a13;
                v2122 = a15;
                v2121 = a16;
                v2120 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v38 = a17;
            if (!v37 && a12)
            {
              v39 = a16;
              v40 = a15;
              v41 = a13;
              v42 = a11;
              v43 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v40, a3, a4 + a9 * v39, a5, a6, a7, a8, v43, v42, v41, v38);
                v43 = a10;
                v42 = a11;
                v41 = a13;
                v40 = a15;
                v39 = a16;
                v38 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v37 == 4)
        {
          v2126 = a17;
          if (a12)
          {
            v2127 = a16;
            v2128 = a15;
            v2129 = a13;
            v2130 = a11;
            v2131 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2128, a3, a4 + a9 * v2127, a5, a6, a7, a8, v2131, v2130, v2129, v2126);
              v2131 = a10;
              v2130 = a11;
              v2129 = a13;
              v2128 = a15;
              v2127 = a16;
              v2126 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1328 = a17;
          if (!v37 && a12)
          {
            v1329 = a16;
            v1330 = a15;
            v1331 = a13;
            v1332 = a11;
            v1333 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1330, a3, a4 + a9 * v1329, a5, a6, a7, a8, v1333, v1332, v1331, v1328);
              v1333 = a10;
              v1332 = a11;
              v1331 = a13;
              v1330 = a15;
              v1329 = a16;
              v1328 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 10:
        v2650 = *(a1 + 396);
        v800 = getCompressionCodecConfig(*(a1 + 56));
        if (v2650 == 1)
        {
          if (v800 == 4)
          {
            v2168 = a17;
            if (a12)
            {
              v2169 = a16;
              v2170 = a15;
              v2171 = a13;
              v2172 = a11;
              v2173 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2170, a3, a4 + a9 * v2169, a5, a6, a7, a8, v2173, v2172, v2171, v2168);
                v2173 = a10;
                v2172 = a11;
                v2171 = a13;
                v2170 = a15;
                v2169 = a16;
                v2168 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v801 = a17;
            if (!v800 && a12)
            {
              v802 = a16;
              v803 = a15;
              v804 = a13;
              v805 = a11;
              v806 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v803, a3, a4 + a9 * v802, a5, a6, a7, a8, v806, v805, v804, v801);
                v806 = a10;
                v805 = a11;
                v804 = a13;
                v803 = a15;
                v802 = a16;
                v801 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v800 == 4)
        {
          v2174 = a17;
          if (a12)
          {
            v2175 = a16;
            v2176 = a15;
            v2177 = a13;
            v2178 = a11;
            v2179 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2176, a3, a4 + a9 * v2175, a5, a6, a7, a8, v2179, v2178, v2177, v2174);
              v2179 = a10;
              v2178 = a11;
              v2177 = a13;
              v2176 = a15;
              v2175 = a16;
              v2174 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1352 = a17;
          if (!v800 && a12)
          {
            v1353 = a16;
            v1354 = a15;
            v1355 = a13;
            v1356 = a11;
            v1357 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1354, a3, a4 + a9 * v1353, a5, a6, a7, a8, v1357, v1356, v1355, v1352);
              v1357 = a10;
              v1356 = a11;
              v1355 = a13;
              v1354 = a15;
              v1353 = a16;
              v1352 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 11:
        v2651 = *(a1 + 396);
        v807 = getCompressionCodecConfig(*(a1 + 56));
        if (v2651 == 1)
        {
          if (v807 == 4)
          {
            v2180 = a17;
            if (a12)
            {
              v2181 = a16;
              v2182 = a15;
              v2183 = a13;
              v2184 = a11;
              v2185 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2182, a3, a4 + a9 * v2181, a5, a6, a7, a8, v2185, v2184, v2183, v2180);
                v2185 = a10;
                v2184 = a11;
                v2183 = a13;
                v2182 = a15;
                v2181 = a16;
                v2180 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v808 = a17;
            if (!v807 && a12)
            {
              v809 = a16;
              v810 = a15;
              v811 = a13;
              v812 = a11;
              v813 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v810, a3, a4 + a9 * v809, a5, a6, a7, a8, v813, v812, v811, v808);
                v813 = a10;
                v812 = a11;
                v811 = a13;
                v810 = a15;
                v809 = a16;
                v808 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v807 == 4)
        {
          v2186 = a17;
          if (a12)
          {
            v2187 = a16;
            v2188 = a15;
            v2189 = a13;
            v2190 = a11;
            v2191 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2188, a3, a4 + a9 * v2187, a5, a6, a7, a8, v2191, v2190, v2189, v2186);
              v2191 = a10;
              v2190 = a11;
              v2189 = a13;
              v2188 = a15;
              v2187 = a16;
              v2186 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1358 = a17;
          if (!v807 && a12)
          {
            v1359 = a16;
            v1360 = a15;
            v1361 = a13;
            v1362 = a11;
            v1363 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1360, a3, a4 + a9 * v1359, a5, a6, a7, a8, v1363, v1362, v1361, v1358);
              v1363 = a10;
              v1362 = a11;
              v1361 = a13;
              v1360 = a15;
              v1359 = a16;
              v1358 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 12:
        v2640 = *(a1 + 396);
        v730 = getCompressionCodecConfig(*(a1 + 56));
        if (v2640 == 1)
        {
          if (v730 == 4)
          {
            v2036 = a17;
            if (a12)
            {
              v2037 = a16;
              v2038 = a15;
              v2039 = a13;
              v2040 = a11;
              v2041 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2038, a3, a4 + a9 * v2037, a5, a6, a7, a8, v2041, v2040, v2039, v2036);
                v2041 = a10;
                v2040 = a11;
                v2039 = a13;
                v2038 = a15;
                v2037 = a16;
                v2036 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v731 = a17;
            if (!v730 && a12)
            {
              v732 = a16;
              v733 = a15;
              v734 = a13;
              v735 = a11;
              v736 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v733, a3, a4 + a9 * v732, a5, a6, a7, a8, v736, v735, v734, v731);
                v736 = a10;
                v735 = a11;
                v734 = a13;
                v733 = a15;
                v732 = a16;
                v731 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v730 == 4)
        {
          v2042 = a17;
          if (a12)
          {
            v2043 = a16;
            v2044 = a15;
            v2045 = a13;
            v2046 = a11;
            v2047 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2044, a3, a4 + a9 * v2043, a5, a6, a7, a8, v2047, v2046, v2045, v2042);
              v2047 = a10;
              v2046 = a11;
              v2045 = a13;
              v2044 = a15;
              v2043 = a16;
              v2042 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1286 = a17;
          if (!v730 && a12)
          {
            v1287 = a16;
            v1288 = a15;
            v1289 = a13;
            v1290 = a11;
            v1291 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1288, a3, a4 + a9 * v1287, a5, a6, a7, a8, v1291, v1290, v1289, v1286);
              v1291 = a10;
              v1290 = a11;
              v1289 = a13;
              v1288 = a15;
              v1287 = a16;
              v1286 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 13:
        v2644 = *(a1 + 396);
        v758 = getCompressionCodecConfig(*(a1 + 56));
        if (v2644 == 1)
        {
          if (v758 == 4)
          {
            v2084 = a17;
            if (a12)
            {
              v2085 = a16;
              v2086 = a15;
              v2087 = a13;
              v2088 = a11;
              v2089 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2086, a3, a4 + a9 * v2085, a5, a6, a7, a8, v2089, v2088, v2087, v2084);
                v2089 = a10;
                v2088 = a11;
                v2087 = a13;
                v2086 = a15;
                v2085 = a16;
                v2084 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v759 = a17;
            if (!v758 && a12)
            {
              v760 = a16;
              v761 = a15;
              v762 = a13;
              v763 = a11;
              v764 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v761, a3, a4 + a9 * v760, a5, a6, a7, a8, v764, v763, v762, v759);
                v764 = a10;
                v763 = a11;
                v762 = a13;
                v761 = a15;
                v760 = a16;
                v759 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v758 == 4)
        {
          v2090 = a17;
          if (a12)
          {
            v2091 = a16;
            v2092 = a15;
            v2093 = a13;
            v2094 = a11;
            v2095 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2092, a3, a4 + a9 * v2091, a5, a6, a7, a8, v2095, v2094, v2093, v2090);
              v2095 = a10;
              v2094 = a11;
              v2093 = a13;
              v2092 = a15;
              v2091 = a16;
              v2090 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1310 = a17;
          if (!v758 && a12)
          {
            v1311 = a16;
            v1312 = a15;
            v1313 = a13;
            v1314 = a11;
            v1315 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1312, a3, a4 + a9 * v1311, a5, a6, a7, a8, v1315, v1314, v1313, v1310);
              v1315 = a10;
              v1314 = a11;
              v1313 = a13;
              v1312 = a15;
              v1311 = a16;
              v1310 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 14:
        v2637 = *(a1 + 396);
        v709 = getCompressionCodecConfig(*(a1 + 56));
        if (v2637 == 1)
        {
          if (v709 == 4)
          {
            v2000 = a17;
            if (a12)
            {
              v2001 = a16;
              v2002 = a15;
              v2003 = a13;
              v2004 = a11;
              v2005 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2002, a3, a4 + a9 * v2001, a5, a6, a7, a8, v2005, v2004, v2003, v2000);
                v2005 = a10;
                v2004 = a11;
                v2003 = a13;
                v2002 = a15;
                v2001 = a16;
                v2000 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v710 = a17;
            if (!v709 && a12)
            {
              v711 = a16;
              v712 = a15;
              v713 = a13;
              v714 = a11;
              v715 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v712, a3, a4 + a9 * v711, a5, a6, a7, a8, v715, v714, v713, v710);
                v715 = a10;
                v714 = a11;
                v713 = a13;
                v712 = a15;
                v711 = a16;
                v710 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v709 == 4)
        {
          v2006 = a17;
          if (a12)
          {
            v2007 = a16;
            v2008 = a15;
            v2009 = a13;
            v2010 = a11;
            v2011 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2008, a3, a4 + a9 * v2007, a5, a6, a7, a8, v2011, v2010, v2009, v2006);
              v2011 = a10;
              v2010 = a11;
              v2009 = a13;
              v2008 = a15;
              v2007 = a16;
              v2006 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1268 = a17;
          if (!v709 && a12)
          {
            v1269 = a16;
            v1270 = a15;
            v1271 = a13;
            v1272 = a11;
            v1273 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1270, a3, a4 + a9 * v1269, a5, a6, a7, a8, v1273, v1272, v1271, v1268);
              v1273 = a10;
              v1272 = a11;
              v1271 = a13;
              v1270 = a15;
              v1269 = a16;
              v1268 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 20:
        v2638 = *(a1 + 396);
        v716 = getCompressionCodecConfig(*(a1 + 56));
        if (v2638 == 1)
        {
          if (v716 == 4)
          {
            v2012 = a17;
            if (a12)
            {
              v2013 = a16;
              v2014 = a15;
              v2015 = a13;
              v2016 = a11;
              v2017 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2014, a3, a4 + a9 * v2013, a5, a6, a7, a8, v2017, v2016, v2015, v2012);
                v2017 = a10;
                v2016 = a11;
                v2015 = a13;
                v2014 = a15;
                v2013 = a16;
                v2012 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v717 = a17;
            if (!v716 && a12)
            {
              v718 = a16;
              v719 = a15;
              v720 = a13;
              v721 = a11;
              v722 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v719, a3, a4 + a9 * v718, a5, a6, a7, a8, v722, v721, v720, v717);
                v722 = a10;
                v721 = a11;
                v720 = a13;
                v719 = a15;
                v718 = a16;
                v717 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v716 == 4)
        {
          v2018 = a17;
          if (a12)
          {
            v2019 = a16;
            v2020 = a15;
            v2021 = a13;
            v2022 = a11;
            v2023 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2020, a3, a4 + a9 * v2019, a5, a6, a7, a8, v2023, v2022, v2021, v2018);
              v2023 = a10;
              v2022 = a11;
              v2021 = a13;
              v2020 = a15;
              v2019 = a16;
              v2018 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1274 = a17;
          if (!v716 && a12)
          {
            v1275 = a16;
            v1276 = a15;
            v1277 = a13;
            v1278 = a11;
            v1279 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1276, a3, a4 + a9 * v1275, a5, a6, a7, a8, v1279, v1278, v1277, v1274);
              v1279 = a10;
              v1278 = a11;
              v1277 = a13;
              v1276 = a15;
              v1275 = a16;
              v1274 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 22:
        v2632 = *(a1 + 396);
        v674 = getCompressionCodecConfig(*(a1 + 56));
        if (v2632 == 1)
        {
          if (v674 == 4)
          {
            v1940 = a17;
            if (a12)
            {
              v1941 = a16;
              v1942 = a15;
              v1943 = a13;
              v1944 = a11;
              v1945 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1942, a3, a4 + a9 * v1941, a5, a6, a7, a8, v1945, v1944, v1943, v1940);
                v1945 = a10;
                v1944 = a11;
                v1943 = a13;
                v1942 = a15;
                v1941 = a16;
                v1940 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v675 = a17;
            if (!v674 && a12)
            {
              v676 = a16;
              v677 = a15;
              v678 = a13;
              v679 = a11;
              v680 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v677, a3, a4 + a9 * v676, a5, a6, a7, a8, v680, v679, v678, v675);
                v680 = a10;
                v679 = a11;
                v678 = a13;
                v677 = a15;
                v676 = a16;
                v675 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v674 == 4)
        {
          v1946 = a17;
          if (a12)
          {
            v1947 = a16;
            v1948 = a15;
            v1949 = a13;
            v1950 = a11;
            v1951 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1948, a3, a4 + a9 * v1947, a5, a6, a7, a8, v1951, v1950, v1949, v1946);
              v1951 = a10;
              v1950 = a11;
              v1949 = a13;
              v1948 = a15;
              v1947 = a16;
              v1946 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1238 = a17;
          if (!v674 && a12)
          {
            v1239 = a16;
            v1240 = a15;
            v1241 = a13;
            v1242 = a11;
            v1243 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1240, a3, a4 + a9 * v1239, a5, a6, a7, a8, v1243, v1242, v1241, v1238);
              v1243 = a10;
              v1242 = a11;
              v1241 = a13;
              v1240 = a15;
              v1239 = a16;
              v1238 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 23:
        v2636 = *(a1 + 396);
        v702 = getCompressionCodecConfig(*(a1 + 56));
        if (v2636 == 1)
        {
          if (v702 == 4)
          {
            v1988 = a17;
            if (a12)
            {
              v1989 = a16;
              v1990 = a15;
              v1991 = a13;
              v1992 = a11;
              v1993 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1990, a3, a4 + a9 * v1989, a5, a6, a7, a8, v1993, v1992, v1991, v1988);
                v1993 = a10;
                v1992 = a11;
                v1991 = a13;
                v1990 = a15;
                v1989 = a16;
                v1988 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v703 = a17;
            if (!v702 && a12)
            {
              v704 = a16;
              v705 = a15;
              v706 = a13;
              v707 = a11;
              v708 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v705, a3, a4 + a9 * v704, a5, a6, a7, a8, v708, v707, v706, v703);
                v708 = a10;
                v707 = a11;
                v706 = a13;
                v705 = a15;
                v704 = a16;
                v703 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v702 == 4)
        {
          v1994 = a17;
          if (a12)
          {
            v1995 = a16;
            v1996 = a15;
            v1997 = a13;
            v1998 = a11;
            v1999 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1996, a3, a4 + a9 * v1995, a5, a6, a7, a8, v1999, v1998, v1997, v1994);
              v1999 = a10;
              v1998 = a11;
              v1997 = a13;
              v1996 = a15;
              v1995 = a16;
              v1994 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1262 = a17;
          if (!v702 && a12)
          {
            v1263 = a16;
            v1264 = a15;
            v1265 = a13;
            v1266 = a11;
            v1267 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1264, a3, a4 + a9 * v1263, a5, a6, a7, a8, v1267, v1266, v1265, v1262);
              v1267 = a10;
              v1266 = a11;
              v1265 = a13;
              v1264 = a15;
              v1263 = a16;
              v1262 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 24:
        v2625 = *(a1 + 396);
        v625 = getCompressionCodecConfig(*(a1 + 56));
        if (v2625 == 1)
        {
          if (v625 == 4)
          {
            v1856 = a17;
            if (a12)
            {
              v1857 = a16;
              v1858 = a15;
              v1859 = a13;
              v1860 = a11;
              v1861 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1858, a3, a4 + a9 * v1857, a5, a6, a7, a8, v1861, v1860, v1859, v1856);
                v1861 = a10;
                v1860 = a11;
                v1859 = a13;
                v1858 = a15;
                v1857 = a16;
                v1856 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v626 = a17;
            if (!v625 && a12)
            {
              v627 = a16;
              v628 = a15;
              v629 = a13;
              v630 = a11;
              v631 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v628, a3, a4 + a9 * v627, a5, a6, a7, a8, v631, v630, v629, v626);
                v631 = a10;
                v630 = a11;
                v629 = a13;
                v628 = a15;
                v627 = a16;
                v626 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v625 == 4)
        {
          v1862 = a17;
          if (a12)
          {
            v1863 = a16;
            v1864 = a15;
            v1865 = a13;
            v1866 = a11;
            v1867 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1864, a3, a4 + a9 * v1863, a5, a6, a7, a8, v1867, v1866, v1865, v1862);
              v1867 = a10;
              v1866 = a11;
              v1865 = a13;
              v1864 = a15;
              v1863 = a16;
              v1862 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1196 = a17;
          if (!v625 && a12)
          {
            v1197 = a16;
            v1198 = a15;
            v1199 = a13;
            v1200 = a11;
            v1201 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1198, a3, a4 + a9 * v1197, a5, a6, a7, a8, v1201, v1200, v1199, v1196);
              v1201 = a10;
              v1200 = a11;
              v1199 = a13;
              v1198 = a15;
              v1197 = a16;
              v1196 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 25:
        v2634 = *(a1 + 396);
        v688 = getCompressionCodecConfig(*(a1 + 56));
        if (v2634 == 1)
        {
          if (v688 == 4)
          {
            v1964 = a17;
            if (a12)
            {
              v1965 = a16;
              v1966 = a15;
              v1967 = a13;
              v1968 = a11;
              v1969 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1966, a3, a4 + a9 * v1965, a5, a6, a7, a8, v1969, v1968, v1967, v1964);
                v1969 = a10;
                v1968 = a11;
                v1967 = a13;
                v1966 = a15;
                v1965 = a16;
                v1964 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v689 = a17;
            if (!v688 && a12)
            {
              v690 = a16;
              v691 = a15;
              v692 = a13;
              v693 = a11;
              v694 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v691, a3, a4 + a9 * v690, a5, a6, a7, a8, v694, v693, v692, v689);
                v694 = a10;
                v693 = a11;
                v692 = a13;
                v691 = a15;
                v690 = a16;
                v689 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v688 == 4)
        {
          v1970 = a17;
          if (a12)
          {
            v1971 = a16;
            v1972 = a15;
            v1973 = a13;
            v1974 = a11;
            v1975 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1972, a3, a4 + a9 * v1971, a5, a6, a7, a8, v1975, v1974, v1973, v1970);
              v1975 = a10;
              v1974 = a11;
              v1973 = a13;
              v1972 = a15;
              v1971 = a16;
              v1970 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1250 = a17;
          if (!v688 && a12)
          {
            v1251 = a16;
            v1252 = a15;
            v1253 = a13;
            v1254 = a11;
            v1255 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1252, a3, a4 + a9 * v1251, a5, a6, a7, a8, v1255, v1254, v1253, v1250);
              v1255 = a10;
              v1254 = a11;
              v1253 = a13;
              v1252 = a15;
              v1251 = a16;
              v1250 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 26:
        v2647 = *(a1 + 396);
        v779 = getCompressionCodecConfig(*(a1 + 56));
        if (v2647 == 1)
        {
          if (v779 == 4)
          {
            v2132 = a17;
            if (a12)
            {
              v2133 = a16;
              v2134 = a15;
              v2135 = a13;
              v2136 = a11;
              v2137 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2134, a3, a4 + a9 * v2133, a5, a6, a7, a8, v2137, v2136, v2135, v2132);
                v2137 = a10;
                v2136 = a11;
                v2135 = a13;
                v2134 = a15;
                v2133 = a16;
                v2132 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v780 = a17;
            if (!v779 && a12)
            {
              v781 = a16;
              v782 = a15;
              v783 = a13;
              v784 = a11;
              v785 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v782, a3, a4 + a9 * v781, a5, a6, a7, a8, v785, v784, v783, v780);
                v785 = a10;
                v784 = a11;
                v783 = a13;
                v782 = a15;
                v781 = a16;
                v780 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v779 == 4)
        {
          v2138 = a17;
          if (a12)
          {
            v2139 = a16;
            v2140 = a15;
            v2141 = a13;
            v2142 = a11;
            v2143 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2140, a3, a4 + a9 * v2139, a5, a6, a7, a8, v2143, v2142, v2141, v2138);
              v2143 = a10;
              v2142 = a11;
              v2141 = a13;
              v2140 = a15;
              v2139 = a16;
              v2138 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1334 = a17;
          if (!v779 && a12)
          {
            v1335 = a16;
            v1336 = a15;
            v1337 = a13;
            v1338 = a11;
            v1339 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1336, a3, a4 + a9 * v1335, a5, a6, a7, a8, v1339, v1338, v1337, v1334);
              v1339 = a10;
              v1338 = a11;
              v1337 = a13;
              v1336 = a15;
              v1335 = a16;
              v1334 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 30:
        v2645 = *(a1 + 396);
        v765 = getCompressionCodecConfig(*(a1 + 56));
        if (v2645 == 1)
        {
          if (v765 == 4)
          {
            v2096 = a17;
            if (a12)
            {
              v2097 = a16;
              v2098 = a15;
              v2099 = a13;
              v2100 = a11;
              v2101 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2098, a3, a4 + a9 * v2097, a5, a6, a7, a8, v2101, v2100, v2099, v2096);
                v2101 = a10;
                v2100 = a11;
                v2099 = a13;
                v2098 = a15;
                v2097 = a16;
                v2096 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v766 = a17;
            if (!v765 && a12)
            {
              v767 = a16;
              v768 = a15;
              v769 = a13;
              v770 = a11;
              v771 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v768, a3, a4 + a9 * v767, a5, a6, a7, a8, v771, v770, v769, v766);
                v771 = a10;
                v770 = a11;
                v769 = a13;
                v768 = a15;
                v767 = a16;
                v766 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v765 == 4)
        {
          v2102 = a17;
          if (a12)
          {
            v2103 = a16;
            v2104 = a15;
            v2105 = a13;
            v2106 = a11;
            v2107 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2104, a3, a4 + a9 * v2103, a5, a6, a7, a8, v2107, v2106, v2105, v2102);
              v2107 = a10;
              v2106 = a11;
              v2105 = a13;
              v2104 = a15;
              v2103 = a16;
              v2102 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1316 = a17;
          if (!v765 && a12)
          {
            v1317 = a16;
            v1318 = a15;
            v1319 = a13;
            v1320 = a11;
            v1321 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1318, a3, a4 + a9 * v1317, a5, a6, a7, a8, v1321, v1320, v1319, v1316);
              v1321 = a10;
              v1320 = a11;
              v1319 = a13;
              v1318 = a15;
              v1317 = a16;
              v1316 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 31:
        v2628 = *(a1 + 396);
        v646 = getCompressionCodecConfig(*(a1 + 56));
        if (v2628 == 1)
        {
          if (v646 == 4)
          {
            v1892 = a17;
            if (a12)
            {
              v1893 = a16;
              v1894 = a15;
              v1895 = a13;
              v1896 = a11;
              v1897 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1894, a3, a4 + a9 * v1893, a5, a6, a7, a8, v1897, v1896, v1895, v1892);
                v1897 = a10;
                v1896 = a11;
                v1895 = a13;
                v1894 = a15;
                v1893 = a16;
                v1892 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v647 = a17;
            if (!v646 && a12)
            {
              v648 = a16;
              v649 = a15;
              v650 = a13;
              v651 = a11;
              v652 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v649, a3, a4 + a9 * v648, a5, a6, a7, a8, v652, v651, v650, v647);
                v652 = a10;
                v651 = a11;
                v650 = a13;
                v649 = a15;
                v648 = a16;
                v647 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v646 == 4)
        {
          v1898 = a17;
          if (a12)
          {
            v1899 = a16;
            v1900 = a15;
            v1901 = a13;
            v1902 = a11;
            v1903 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1900, a3, a4 + a9 * v1899, a5, a6, a7, a8, v1903, v1902, v1901, v1898);
              v1903 = a10;
              v1902 = a11;
              v1901 = a13;
              v1900 = a15;
              v1899 = a16;
              v1898 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1214 = a17;
          if (!v646 && a12)
          {
            v1215 = a16;
            v1216 = a15;
            v1217 = a13;
            v1218 = a11;
            v1219 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1216, a3, a4 + a9 * v1215, a5, a6, a7, a8, v1219, v1218, v1217, v1214);
              v1219 = a10;
              v1218 = a11;
              v1217 = a13;
              v1216 = a15;
              v1215 = a16;
              v1214 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 32:
        v2660 = *(a1 + 396);
        v870 = getCompressionCodecConfig(*(a1 + 56));
        if (v2660 == 1)
        {
          if (v870 == 4)
          {
            v2288 = a17;
            if (a12)
            {
              v2289 = a16;
              v2290 = a15;
              v2291 = a13;
              v2292 = a11;
              v2293 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2290, a3, a4 + a9 * v2289, a5, a6, a7, a8, v2293, v2292, v2291, v2288);
                v2293 = a10;
                v2292 = a11;
                v2291 = a13;
                v2290 = a15;
                v2289 = a16;
                v2288 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v871 = a17;
            if (!v870 && a12)
            {
              v872 = a16;
              v873 = a15;
              v874 = a13;
              v875 = a11;
              v876 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v873, a3, a4 + a9 * v872, a5, a6, a7, a8, v876, v875, v874, v871);
                v876 = a10;
                v875 = a11;
                v874 = a13;
                v873 = a15;
                v872 = a16;
                v871 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v870 == 4)
        {
          v2294 = a17;
          if (a12)
          {
            v2295 = a16;
            v2296 = a15;
            v2297 = a13;
            v2298 = a11;
            v2299 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2296, a3, a4 + a9 * v2295, a5, a6, a7, a8, v2299, v2298, v2297, v2294);
              v2299 = a10;
              v2298 = a11;
              v2297 = a13;
              v2296 = a15;
              v2295 = a16;
              v2294 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1412 = a17;
          if (!v870 && a12)
          {
            v1413 = a16;
            v1414 = a15;
            v1415 = a13;
            v1416 = a11;
            v1417 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1414, a3, a4 + a9 * v1413, a5, a6, a7, a8, v1417, v1416, v1415, v1412);
              v1417 = a10;
              v1416 = a11;
              v1415 = a13;
              v1414 = a15;
              v1413 = a16;
              v1412 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 33:
        v2661 = *(a1 + 396);
        v877 = getCompressionCodecConfig(*(a1 + 56));
        if (v2661 == 1)
        {
          if (v877 == 4)
          {
            v2300 = a17;
            if (a12)
            {
              v2301 = a16;
              v2302 = a15;
              v2303 = a13;
              v2304 = a11;
              v2305 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2302, a3, a4 + a9 * v2301, a5, a6, a7, a8, v2305, v2304, v2303, v2300);
                v2305 = a10;
                v2304 = a11;
                v2303 = a13;
                v2302 = a15;
                v2301 = a16;
                v2300 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v878 = a17;
            if (!v877 && a12)
            {
              v879 = a16;
              v880 = a15;
              v881 = a13;
              v882 = a11;
              v883 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v880, a3, a4 + a9 * v879, a5, a6, a7, a8, v883, v882, v881, v878);
                v883 = a10;
                v882 = a11;
                v881 = a13;
                v880 = a15;
                v879 = a16;
                v878 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v877 == 4)
        {
          v2306 = a17;
          if (a12)
          {
            v2307 = a16;
            v2308 = a15;
            v2309 = a13;
            v2310 = a11;
            v2311 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2308, a3, a4 + a9 * v2307, a5, a6, a7, a8, v2311, v2310, v2309, v2306);
              v2311 = a10;
              v2310 = a11;
              v2309 = a13;
              v2308 = a15;
              v2307 = a16;
              v2306 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1418 = a17;
          if (!v877 && a12)
          {
            v1419 = a16;
            v1420 = a15;
            v1421 = a13;
            v1422 = a11;
            v1423 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1420, a3, a4 + a9 * v1419, a5, a6, a7, a8, v1423, v1422, v1421, v1418);
              v1423 = a10;
              v1422 = a11;
              v1421 = a13;
              v1420 = a15;
              v1419 = a16;
              v1418 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 34:
        v2665 = *(a1 + 396);
        v905 = getCompressionCodecConfig(*(a1 + 56));
        if (v2665 == 1)
        {
          if (v905 == 4)
          {
            v2348 = a17;
            if (a12)
            {
              v2349 = a16;
              v2350 = a15;
              v2351 = a13;
              v2352 = a11;
              v2353 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2350, a3, a4 + a9 * v2349, a5, a6, a7, a8, v2353, v2352, v2351, v2348);
                v2353 = a10;
                v2352 = a11;
                v2351 = a13;
                v2350 = a15;
                v2349 = a16;
                v2348 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v906 = a17;
            if (!v905 && a12)
            {
              v907 = a16;
              v908 = a15;
              v909 = a13;
              v910 = a11;
              v911 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v908, a3, a4 + a9 * v907, a5, a6, a7, a8, v911, v910, v909, v906);
                v911 = a10;
                v910 = a11;
                v909 = a13;
                v908 = a15;
                v907 = a16;
                v906 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v905 == 4)
        {
          v2354 = a17;
          if (a12)
          {
            v2355 = a16;
            v2356 = a15;
            v2357 = a13;
            v2358 = a11;
            v2359 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2356, a3, a4 + a9 * v2355, a5, a6, a7, a8, v2359, v2358, v2357, v2354);
              v2359 = a10;
              v2358 = a11;
              v2357 = a13;
              v2356 = a15;
              v2355 = a16;
              v2354 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1442 = a17;
          if (!v905 && a12)
          {
            v1443 = a16;
            v1444 = a15;
            v1445 = a13;
            v1446 = a11;
            v1447 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1444, a3, a4 + a9 * v1443, a5, a6, a7, a8, v1447, v1446, v1445, v1442);
              v1447 = a10;
              v1446 = a11;
              v1445 = a13;
              v1444 = a15;
              v1443 = a16;
              v1442 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 40:
        v2663 = *(a1 + 396);
        v891 = getCompressionCodecConfig(*(a1 + 56));
        if (v2663 == 1)
        {
          if (v891 == 4)
          {
            v2324 = a17;
            if (a12)
            {
              v2325 = a16;
              v2326 = a15;
              v2327 = a13;
              v2328 = a11;
              v2329 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2326, a3, a4 + a9 * v2325, a5, a6, a7, a8, v2329, v2328, v2327, v2324);
                v2329 = a10;
                v2328 = a11;
                v2327 = a13;
                v2326 = a15;
                v2325 = a16;
                v2324 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v892 = a17;
            if (!v891 && a12)
            {
              v893 = a16;
              v894 = a15;
              v895 = a13;
              v896 = a11;
              v897 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v894, a3, a4 + a9 * v893, a5, a6, a7, a8, v897, v896, v895, v892);
                v897 = a10;
                v896 = a11;
                v895 = a13;
                v894 = a15;
                v893 = a16;
                v892 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v891 == 4)
        {
          v2330 = a17;
          if (a12)
          {
            v2331 = a16;
            v2332 = a15;
            v2333 = a13;
            v2334 = a11;
            v2335 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2332, a3, a4 + a9 * v2331, a5, a6, a7, a8, v2335, v2334, v2333, v2330);
              v2335 = a10;
              v2334 = a11;
              v2333 = a13;
              v2332 = a15;
              v2331 = a16;
              v2330 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1430 = a17;
          if (!v891 && a12)
          {
            v1431 = a16;
            v1432 = a15;
            v1433 = a13;
            v1434 = a11;
            v1435 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1432, a3, a4 + a9 * v1431, a5, a6, a7, a8, v1435, v1434, v1433, v1430);
              v1435 = a10;
              v1434 = a11;
              v1433 = a13;
              v1432 = a15;
              v1431 = a16;
              v1430 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 41:
        v2623 = *(a1 + 396);
        v611 = getCompressionCodecConfig(*(a1 + 56));
        if (v2623 == 1)
        {
          if (v611 == 4)
          {
            v1832 = a17;
            if (a12)
            {
              v1833 = a16;
              v1834 = a15;
              v1835 = a13;
              v1836 = a11;
              v1837 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1834, a3, a4 + a9 * v1833, a5, a6, a7, a8, v1837, v1836, v1835, v1832);
                v1837 = a10;
                v1836 = a11;
                v1835 = a13;
                v1834 = a15;
                v1833 = a16;
                v1832 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v612 = a17;
            if (!v611 && a12)
            {
              v613 = a16;
              v614 = a15;
              v615 = a13;
              v616 = a11;
              v617 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v614, a3, a4 + a9 * v613, a5, a6, a7, a8, v617, v616, v615, v612);
                v617 = a10;
                v616 = a11;
                v615 = a13;
                v614 = a15;
                v613 = a16;
                v612 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v611 == 4)
        {
          v1838 = a17;
          if (a12)
          {
            v1839 = a16;
            v1840 = a15;
            v1841 = a13;
            v1842 = a11;
            v1843 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1840, a3, a4 + a9 * v1839, a5, a6, a7, a8, v1843, v1842, v1841, v1838);
              v1843 = a10;
              v1842 = a11;
              v1841 = a13;
              v1840 = a15;
              v1839 = a16;
              v1838 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1184 = a17;
          if (!v611 && a12)
          {
            v1185 = a16;
            v1186 = a15;
            v1187 = a13;
            v1188 = a11;
            v1189 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1186, a3, a4 + a9 * v1185, a5, a6, a7, a8, v1189, v1188, v1187, v1184);
              v1189 = a10;
              v1188 = a11;
              v1187 = a13;
              v1186 = a15;
              v1185 = a16;
              v1184 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 42:
        v2646 = *(a1 + 396);
        v772 = getCompressionCodecConfig(*(a1 + 56));
        if (v2646 == 1)
        {
          if (v772 == 4)
          {
            v2108 = a17;
            if (a12)
            {
              v2109 = a16;
              v2110 = a15;
              v2111 = a13;
              v2112 = a11;
              v2113 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2110, a3, a4 + a9 * v2109, a5, a6, a7, a8, v2113, v2112, v2111, v2108);
                v2113 = a10;
                v2112 = a11;
                v2111 = a13;
                v2110 = a15;
                v2109 = a16;
                v2108 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v773 = a17;
            if (!v772 && a12)
            {
              v774 = a16;
              v775 = a15;
              v776 = a13;
              v777 = a11;
              v778 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v775, a3, a4 + a9 * v774, a5, a6, a7, a8, v778, v777, v776, v773);
                v778 = a10;
                v777 = a11;
                v776 = a13;
                v775 = a15;
                v774 = a16;
                v773 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v772 == 4)
        {
          v2114 = a17;
          if (a12)
          {
            v2115 = a16;
            v2116 = a15;
            v2117 = a13;
            v2118 = a11;
            v2119 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2116, a3, a4 + a9 * v2115, a5, a6, a7, a8, v2119, v2118, v2117, v2114);
              v2119 = a10;
              v2118 = a11;
              v2117 = a13;
              v2116 = a15;
              v2115 = a16;
              v2114 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1322 = a17;
          if (!v772 && a12)
          {
            v1323 = a16;
            v1324 = a15;
            v1325 = a13;
            v1326 = a11;
            v1327 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1324, a3, a4 + a9 * v1323, a5, a6, a7, a8, v1327, v1326, v1325, v1322);
              v1327 = a10;
              v1326 = a11;
              v1325 = a13;
              v1324 = a15;
              v1323 = a16;
              v1322 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 43:
        v2671 = *(a1 + 396);
        v947 = getCompressionCodecConfig(*(a1 + 56));
        if (v2671 == 1)
        {
          if (v947 == 4)
          {
            v2420 = a17;
            if (a12)
            {
              v2421 = a16;
              v2422 = a15;
              v2423 = a13;
              v2424 = a11;
              v2425 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2422, a3, a4 + a9 * v2421, a5, a6, a7, a8, v2425, v2424, v2423, v2420);
                v2425 = a10;
                v2424 = a11;
                v2423 = a13;
                v2422 = a15;
                v2421 = a16;
                v2420 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v948 = a17;
            if (!v947 && a12)
            {
              v949 = a16;
              v950 = a15;
              v951 = a13;
              v952 = a11;
              v953 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v950, a3, a4 + a9 * v949, a5, a6, a7, a8, v953, v952, v951, v948);
                v953 = a10;
                v952 = a11;
                v951 = a13;
                v950 = a15;
                v949 = a16;
                v948 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v947 == 4)
        {
          v2426 = a17;
          if (a12)
          {
            v2427 = a16;
            v2428 = a15;
            v2429 = a13;
            v2430 = a11;
            v2431 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2428, a3, a4 + a9 * v2427, a5, a6, a7, a8, v2431, v2430, v2429, v2426);
              v2431 = a10;
              v2430 = a11;
              v2429 = a13;
              v2428 = a15;
              v2427 = a16;
              v2426 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1478 = a17;
          if (!v947 && a12)
          {
            v1479 = a16;
            v1480 = a15;
            v1481 = a13;
            v1482 = a11;
            v1483 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1480, a3, a4 + a9 * v1479, a5, a6, a7, a8, v1483, v1482, v1481, v1478);
              v1483 = a10;
              v1482 = a11;
              v1481 = a13;
              v1480 = a15;
              v1479 = a16;
              v1478 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 44:
        v2627 = *(a1 + 396);
        v639 = getCompressionCodecConfig(*(a1 + 56));
        if (v2627 == 1)
        {
          if (v639 == 4)
          {
            v1880 = a17;
            if (a12)
            {
              v1881 = a16;
              v1882 = a15;
              v1883 = a13;
              v1884 = a11;
              v1885 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1882, a3, a4 + a9 * v1881, a5, a6, a7, a8, v1885, v1884, v1883, v1880);
                v1885 = a10;
                v1884 = a11;
                v1883 = a13;
                v1882 = a15;
                v1881 = a16;
                v1880 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v640 = a17;
            if (!v639 && a12)
            {
              v641 = a16;
              v642 = a15;
              v643 = a13;
              v644 = a11;
              v645 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v642, a3, a4 + a9 * v641, a5, a6, a7, a8, v645, v644, v643, v640);
                v645 = a10;
                v644 = a11;
                v643 = a13;
                v642 = a15;
                v641 = a16;
                v640 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v639 == 4)
        {
          v1886 = a17;
          if (a12)
          {
            v1887 = a16;
            v1888 = a15;
            v1889 = a13;
            v1890 = a11;
            v1891 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1888, a3, a4 + a9 * v1887, a5, a6, a7, a8, v1891, v1890, v1889, v1886);
              v1891 = a10;
              v1890 = a11;
              v1889 = a13;
              v1888 = a15;
              v1887 = a16;
              v1886 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1208 = a17;
          if (!v639 && a12)
          {
            v1209 = a16;
            v1210 = a15;
            v1211 = a13;
            v1212 = a11;
            v1213 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1210, a3, a4 + a9 * v1209, a5, a6, a7, a8, v1213, v1212, v1211, v1208);
              v1213 = a10;
              v1212 = a11;
              v1211 = a13;
              v1210 = a15;
              v1209 = a16;
              v1208 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 53:
        v2643 = *(a1 + 396);
        v751 = getCompressionCodecConfig(*(a1 + 56));
        if (v2643 == 1)
        {
          if (v751 == 4)
          {
            v2072 = a17;
            if (a12)
            {
              v2073 = a16;
              v2074 = a15;
              v2075 = a13;
              v2076 = a11;
              v2077 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2074, a3, a4 + a9 * v2073, a5, a6, a7, a8, v2077, v2076, v2075, v2072);
                v2077 = a10;
                v2076 = a11;
                v2075 = a13;
                v2074 = a15;
                v2073 = a16;
                v2072 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v752 = a17;
            if (!v751 && a12)
            {
              v753 = a16;
              v754 = a15;
              v755 = a13;
              v756 = a11;
              v757 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v754, a3, a4 + a9 * v753, a5, a6, a7, a8, v757, v756, v755, v752);
                v757 = a10;
                v756 = a11;
                v755 = a13;
                v754 = a15;
                v753 = a16;
                v752 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v751 == 4)
        {
          v2078 = a17;
          if (a12)
          {
            v2079 = a16;
            v2080 = a15;
            v2081 = a13;
            v2082 = a11;
            v2083 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2080, a3, a4 + a9 * v2079, a5, a6, a7, a8, v2083, v2082, v2081, v2078);
              v2083 = a10;
              v2082 = a11;
              v2081 = a13;
              v2080 = a15;
              v2079 = a16;
              v2078 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1304 = a17;
          if (!v751 && a12)
          {
            v1305 = a16;
            v1306 = a15;
            v1307 = a13;
            v1308 = a11;
            v1309 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1306, a3, a4 + a9 * v1305, a5, a6, a7, a8, v1309, v1308, v1307, v1304);
              v1309 = a10;
              v1308 = a11;
              v1307 = a13;
              v1306 = a15;
              v1305 = a16;
              v1304 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 54:
        v2631 = *(a1 + 396);
        v667 = getCompressionCodecConfig(*(a1 + 56));
        if (v2631 == 1)
        {
          if (v667 == 4)
          {
            v1928 = a17;
            if (a12)
            {
              v1929 = a16;
              v1930 = a15;
              v1931 = a13;
              v1932 = a11;
              v1933 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1930, a3, a4 + a9 * v1929, a5, a6, a7, a8, v1933, v1932, v1931, v1928);
                v1933 = a10;
                v1932 = a11;
                v1931 = a13;
                v1930 = a15;
                v1929 = a16;
                v1928 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v668 = a17;
            if (!v667 && a12)
            {
              v669 = a16;
              v670 = a15;
              v671 = a13;
              v672 = a11;
              v673 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v670, a3, a4 + a9 * v669, a5, a6, a7, a8, v673, v672, v671, v668);
                v673 = a10;
                v672 = a11;
                v671 = a13;
                v670 = a15;
                v669 = a16;
                v668 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v667 == 4)
        {
          v1934 = a17;
          if (a12)
          {
            v1935 = a16;
            v1936 = a15;
            v1937 = a13;
            v1938 = a11;
            v1939 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1936, a3, a4 + a9 * v1935, a5, a6, a7, a8, v1939, v1938, v1937, v1934);
              v1939 = a10;
              v1938 = a11;
              v1937 = a13;
              v1936 = a15;
              v1935 = a16;
              v1934 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1232 = a17;
          if (!v667 && a12)
          {
            v1233 = a16;
            v1234 = a15;
            v1235 = a13;
            v1236 = a11;
            v1237 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1234, a3, a4 + a9 * v1233, a5, a6, a7, a8, v1237, v1236, v1235, v1232);
              v1237 = a10;
              v1236 = a11;
              v1235 = a13;
              v1234 = a15;
              v1233 = a16;
              v1232 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 55:
        v2653 = *(a1 + 396);
        v821 = getCompressionCodecConfig(*(a1 + 56));
        if (v2653 == 1)
        {
          if (v821 == 4)
          {
            v2204 = a17;
            if (a12)
            {
              v2205 = a16;
              v2206 = a15;
              v2207 = a13;
              v2208 = a11;
              v2209 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2206, a3, a4 + a9 * v2205, a5, a6, a7, a8, v2209, v2208, v2207, v2204);
                v2209 = a10;
                v2208 = a11;
                v2207 = a13;
                v2206 = a15;
                v2205 = a16;
                v2204 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v822 = a17;
            if (!v821 && a12)
            {
              v823 = a16;
              v824 = a15;
              v825 = a13;
              v826 = a11;
              v827 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v824, a3, a4 + a9 * v823, a5, a6, a7, a8, v827, v826, v825, v822);
                v827 = a10;
                v826 = a11;
                v825 = a13;
                v824 = a15;
                v823 = a16;
                v822 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v821 == 4)
        {
          v2210 = a17;
          if (a12)
          {
            v2211 = a16;
            v2212 = a15;
            v2213 = a13;
            v2214 = a11;
            v2215 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2212, a3, a4 + a9 * v2211, a5, a6, a7, a8, v2215, v2214, v2213, v2210);
              v2215 = a10;
              v2214 = a11;
              v2213 = a13;
              v2212 = a15;
              v2211 = a16;
              v2210 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1370 = a17;
          if (!v821 && a12)
          {
            v1371 = a16;
            v1372 = a15;
            v1373 = a13;
            v1374 = a11;
            v1375 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1372, a3, a4 + a9 * v1371, a5, a6, a7, a8, v1375, v1374, v1373, v1370);
              v1375 = a10;
              v1374 = a11;
              v1373 = a13;
              v1372 = a15;
              v1371 = a16;
              v1370 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 60:
        v2630 = *(a1 + 396);
        v660 = getCompressionCodecConfig(*(a1 + 56));
        if (v2630 == 1)
        {
          if (v660 == 4)
          {
            v1916 = a17;
            if (a12)
            {
              v1917 = a16;
              v1918 = a15;
              v1919 = a13;
              v1920 = a11;
              v1921 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1918, a3, a4 + a9 * v1917, a5, a6, a7, a8, v1921, v1920, v1919, v1916);
                v1921 = a10;
                v1920 = a11;
                v1919 = a13;
                v1918 = a15;
                v1917 = a16;
                v1916 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v661 = a17;
            if (!v660 && a12)
            {
              v662 = a16;
              v663 = a15;
              v664 = a13;
              v665 = a11;
              v666 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v663, a3, a4 + a9 * v662, a5, a6, a7, a8, v666, v665, v664, v661);
                v666 = a10;
                v665 = a11;
                v664 = a13;
                v663 = a15;
                v662 = a16;
                v661 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v660 == 4)
        {
          v1922 = a17;
          if (a12)
          {
            v1923 = a16;
            v1924 = a15;
            v1925 = a13;
            v1926 = a11;
            v1927 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1924, a3, a4 + a9 * v1923, a5, a6, a7, a8, v1927, v1926, v1925, v1922);
              v1927 = a10;
              v1926 = a11;
              v1925 = a13;
              v1924 = a15;
              v1923 = a16;
              v1922 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1226 = a17;
          if (!v660 && a12)
          {
            v1227 = a16;
            v1228 = a15;
            v1229 = a13;
            v1230 = a11;
            v1231 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1228, a3, a4 + a9 * v1227, a5, a6, a7, a8, v1231, v1230, v1229, v1226);
              v1231 = a10;
              v1230 = a11;
              v1229 = a13;
              v1228 = a15;
              v1227 = a16;
              v1226 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 62:
        v2620 = *(a1 + 396);
        v590 = getCompressionCodecConfig(*(a1 + 56));
        if (v2620 == 1)
        {
          if (v590 == 4)
          {
            v1796 = a17;
            if (a12)
            {
              v1797 = a16;
              v1798 = a15;
              v1799 = a13;
              v1800 = a11;
              v1801 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1798, a3, a4 + a9 * v1797, a5, a6, a7, a8, v1801, v1800, v1799, v1796);
                v1801 = a10;
                v1800 = a11;
                v1799 = a13;
                v1798 = a15;
                v1797 = a16;
                v1796 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v591 = a17;
            if (!v590 && a12)
            {
              v592 = a16;
              v593 = a15;
              v594 = a13;
              v595 = a11;
              v596 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v593, a3, a4 + a9 * v592, a5, a6, a7, a8, v596, v595, v594, v591);
                v596 = a10;
                v595 = a11;
                v594 = a13;
                v593 = a15;
                v592 = a16;
                v591 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v590 == 4)
        {
          v1802 = a17;
          if (a12)
          {
            v1803 = a16;
            v1804 = a15;
            v1805 = a13;
            v1806 = a11;
            v1807 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1804, a3, a4 + a9 * v1803, a5, a6, a7, a8, v1807, v1806, v1805, v1802);
              v1807 = a10;
              v1806 = a11;
              v1805 = a13;
              v1804 = a15;
              v1803 = a16;
              v1802 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1166 = a17;
          if (!v590 && a12)
          {
            v1167 = a16;
            v1168 = a15;
            v1169 = a13;
            v1170 = a11;
            v1171 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1168, a3, a4 + a9 * v1167, a5, a6, a7, a8, v1171, v1170, v1169, v1166);
              v1171 = a10;
              v1170 = a11;
              v1169 = a13;
              v1168 = a15;
              v1167 = a16;
              v1166 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 63:
        v2674 = *(a1 + 396);
        v968 = getCompressionCodecConfig(*(a1 + 56));
        if (v2674 == 1)
        {
          if (v968 == 4)
          {
            v2456 = a17;
            if (a12)
            {
              v2457 = a16;
              v2458 = a15;
              v2459 = a13;
              v2460 = a11;
              v2461 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2458, a3, a4 + a9 * v2457, a5, a6, a7, a8, v2461, v2460, v2459, v2456);
                v2461 = a10;
                v2460 = a11;
                v2459 = a13;
                v2458 = a15;
                v2457 = a16;
                v2456 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v969 = a17;
            if (!v968 && a12)
            {
              v970 = a16;
              v971 = a15;
              v972 = a13;
              v973 = a11;
              v974 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v971, a3, a4 + a9 * v970, a5, a6, a7, a8, v974, v973, v972, v969);
                v974 = a10;
                v973 = a11;
                v972 = a13;
                v971 = a15;
                v970 = a16;
                v969 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v968 == 4)
        {
          v2462 = a17;
          if (a12)
          {
            v2463 = a16;
            v2464 = a15;
            v2465 = a13;
            v2466 = a11;
            v2467 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2464, a3, a4 + a9 * v2463, a5, a6, a7, a8, v2467, v2466, v2465, v2462);
              v2467 = a10;
              v2466 = a11;
              v2465 = a13;
              v2464 = a15;
              v2463 = a16;
              v2462 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1496 = a17;
          if (!v968 && a12)
          {
            v1497 = a16;
            v1498 = a15;
            v1499 = a13;
            v1500 = a11;
            v1501 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1498, a3, a4 + a9 * v1497, a5, a6, a7, a8, v1501, v1500, v1499, v1496);
              v1501 = a10;
              v1500 = a11;
              v1499 = a13;
              v1498 = a15;
              v1497 = a16;
              v1496 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 64:
        v2635 = *(a1 + 396);
        v695 = getCompressionCodecConfig(*(a1 + 56));
        if (v2635 == 1)
        {
          if (v695 == 4)
          {
            v1976 = a17;
            if (a12)
            {
              v1977 = a16;
              v1978 = a15;
              v1979 = a13;
              v1980 = a11;
              v1981 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1978, a3, a4 + a9 * v1977, a5, a6, a7, a8, v1981, v1980, v1979, v1976);
                v1981 = a10;
                v1980 = a11;
                v1979 = a13;
                v1978 = a15;
                v1977 = a16;
                v1976 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v696 = a17;
            if (!v695 && a12)
            {
              v697 = a16;
              v698 = a15;
              v699 = a13;
              v700 = a11;
              v701 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v698, a3, a4 + a9 * v697, a5, a6, a7, a8, v701, v700, v699, v696);
                v701 = a10;
                v700 = a11;
                v699 = a13;
                v698 = a15;
                v697 = a16;
                v696 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v695 == 4)
        {
          v1982 = a17;
          if (a12)
          {
            v1983 = a16;
            v1984 = a15;
            v1985 = a13;
            v1986 = a11;
            v1987 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1984, a3, a4 + a9 * v1983, a5, a6, a7, a8, v1987, v1986, v1985, v1982);
              v1987 = a10;
              v1986 = a11;
              v1985 = a13;
              v1984 = a15;
              v1983 = a16;
              v1982 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1256 = a17;
          if (!v695 && a12)
          {
            v1257 = a16;
            v1258 = a15;
            v1259 = a13;
            v1260 = a11;
            v1261 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1258, a3, a4 + a9 * v1257, a5, a6, a7, a8, v1261, v1260, v1259, v1256);
              v1261 = a10;
              v1260 = a11;
              v1259 = a13;
              v1258 = a15;
              v1257 = a16;
              v1256 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 65:
        v2641 = *(a1 + 396);
        v737 = getCompressionCodecConfig(*(a1 + 56));
        if (v2641 == 1)
        {
          if (v737 == 4)
          {
            v2048 = a17;
            if (a12)
            {
              v2049 = a16;
              v2050 = a15;
              v2051 = a13;
              v2052 = a11;
              v2053 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2050, a3, a4 + a9 * v2049, a5, a6, a7, a8, v2053, v2052, v2051, v2048);
                v2053 = a10;
                v2052 = a11;
                v2051 = a13;
                v2050 = a15;
                v2049 = a16;
                v2048 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v738 = a17;
            if (!v737 && a12)
            {
              v739 = a16;
              v740 = a15;
              v741 = a13;
              v742 = a11;
              v743 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v740, a3, a4 + a9 * v739, a5, a6, a7, a8, v743, v742, v741, v738);
                v743 = a10;
                v742 = a11;
                v741 = a13;
                v740 = a15;
                v739 = a16;
                v738 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v737 == 4)
        {
          v2054 = a17;
          if (a12)
          {
            v2055 = a16;
            v2056 = a15;
            v2057 = a13;
            v2058 = a11;
            v2059 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2056, a3, a4 + a9 * v2055, a5, a6, a7, a8, v2059, v2058, v2057, v2054);
              v2059 = a10;
              v2058 = a11;
              v2057 = a13;
              v2056 = a15;
              v2055 = a16;
              v2054 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1292 = a17;
          if (!v737 && a12)
          {
            v1293 = a16;
            v1294 = a15;
            v1295 = a13;
            v1296 = a11;
            v1297 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1294, a3, a4 + a9 * v1293, a5, a6, a7, a8, v1297, v1296, v1295, v1292);
              v1297 = a10;
              v1296 = a11;
              v1295 = a13;
              v1294 = a15;
              v1293 = a16;
              v1292 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 66:
        v2657 = *(a1 + 396);
        v849 = getCompressionCodecConfig(*(a1 + 56));
        if (v2657 == 1)
        {
          if (v849 == 4)
          {
            v2252 = a17;
            if (a12)
            {
              v2253 = a16;
              v2254 = a15;
              v2255 = a13;
              v2256 = a11;
              v2257 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2254, a3, a4 + a9 * v2253, a5, a6, a7, a8, v2257, v2256, v2255, v2252);
                v2257 = a10;
                v2256 = a11;
                v2255 = a13;
                v2254 = a15;
                v2253 = a16;
                v2252 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v850 = a17;
            if (!v849 && a12)
            {
              v851 = a16;
              v852 = a15;
              v853 = a13;
              v854 = a11;
              v855 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v852, a3, a4 + a9 * v851, a5, a6, a7, a8, v855, v854, v853, v850);
                v855 = a10;
                v854 = a11;
                v853 = a13;
                v852 = a15;
                v851 = a16;
                v850 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v849 == 4)
        {
          v2258 = a17;
          if (a12)
          {
            v2259 = a16;
            v2260 = a15;
            v2261 = a13;
            v2262 = a11;
            v2263 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2260, a3, a4 + a9 * v2259, a5, a6, a7, a8, v2263, v2262, v2261, v2258);
              v2263 = a10;
              v2262 = a11;
              v2261 = a13;
              v2260 = a15;
              v2259 = a16;
              v2258 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1394 = a17;
          if (!v849 && a12)
          {
            v1395 = a16;
            v1396 = a15;
            v1397 = a13;
            v1398 = a11;
            v1399 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1396, a3, a4 + a9 * v1395, a5, a6, a7, a8, v1399, v1398, v1397, v1394);
              v1399 = a10;
              v1398 = a11;
              v1397 = a13;
              v1396 = a15;
              v1395 = a16;
              v1394 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 70:
        v2642 = *(a1 + 396);
        v744 = getCompressionCodecConfig(*(a1 + 56));
        if (v2642 == 1)
        {
          if (v744 == 4)
          {
            v2060 = a17;
            if (a12)
            {
              v2061 = a16;
              v2062 = a15;
              v2063 = a13;
              v2064 = a11;
              v2065 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2062, a3, a4 + a9 * v2061, a5, a6, a7, a8, v2065, v2064, v2063, v2060);
                v2065 = a10;
                v2064 = a11;
                v2063 = a13;
                v2062 = a15;
                v2061 = a16;
                v2060 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v745 = a17;
            if (!v744 && a12)
            {
              v746 = a16;
              v747 = a15;
              v748 = a13;
              v749 = a11;
              v750 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v747, a3, a4 + a9 * v746, a5, a6, a7, a8, v750, v749, v748, v745);
                v750 = a10;
                v749 = a11;
                v748 = a13;
                v747 = a15;
                v746 = a16;
                v745 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v744 == 4)
        {
          v2066 = a17;
          if (a12)
          {
            v2067 = a16;
            v2068 = a15;
            v2069 = a13;
            v2070 = a11;
            v2071 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2068, a3, a4 + a9 * v2067, a5, a6, a7, a8, v2071, v2070, v2069, v2066);
              v2071 = a10;
              v2070 = a11;
              v2069 = a13;
              v2068 = a15;
              v2067 = a16;
              v2066 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1298 = a17;
          if (!v744 && a12)
          {
            v1299 = a16;
            v1300 = a15;
            v1301 = a13;
            v1302 = a11;
            v1303 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1300, a3, a4 + a9 * v1299, a5, a6, a7, a8, v1303, v1302, v1301, v1298);
              v1303 = a10;
              v1302 = a11;
              v1301 = a13;
              v1300 = a15;
              v1299 = a16;
              v1298 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 71:
        v2615 = *(a1 + 396);
        v555 = getCompressionCodecConfig(*(a1 + 56));
        if (v2615 == 1)
        {
          if (v555 == 4)
          {
            v1736 = a17;
            if (a12)
            {
              v1737 = a16;
              v1738 = a15;
              v1739 = a13;
              v1740 = a11;
              v1741 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1738, a3, a4 + a9 * v1737, a5, a6, a7, a8, v1741, v1740, v1739, v1736);
                v1741 = a10;
                v1740 = a11;
                v1739 = a13;
                v1738 = a15;
                v1737 = a16;
                v1736 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v556 = a17;
            if (!v555 && a12)
            {
              v557 = a16;
              v558 = a15;
              v559 = a13;
              v560 = a11;
              v561 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v558, a3, a4 + a9 * v557, a5, a6, a7, a8, v561, v560, v559, v556);
                v561 = a10;
                v560 = a11;
                v559 = a13;
                v558 = a15;
                v557 = a16;
                v556 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v555 == 4)
        {
          v1742 = a17;
          if (a12)
          {
            v1743 = a16;
            v1744 = a15;
            v1745 = a13;
            v1746 = a11;
            v1747 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1744, a3, a4 + a9 * v1743, a5, a6, a7, a8, v1747, v1746, v1745, v1742);
              v1747 = a10;
              v1746 = a11;
              v1745 = a13;
              v1744 = a15;
              v1743 = a16;
              v1742 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1136 = a17;
          if (!v555 && a12)
          {
            v1137 = a16;
            v1138 = a15;
            v1139 = a13;
            v1140 = a11;
            v1141 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1138, a3, a4 + a9 * v1137, a5, a6, a7, a8, v1141, v1140, v1139, v1136);
              v1141 = a10;
              v1140 = a11;
              v1139 = a13;
              v1138 = a15;
              v1137 = a16;
              v1136 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 72:
        v2626 = *(a1 + 396);
        v632 = getCompressionCodecConfig(*(a1 + 56));
        if (v2626 == 1)
        {
          if (v632 == 4)
          {
            v1868 = a17;
            if (a12)
            {
              v1869 = a16;
              v1870 = a15;
              v1871 = a13;
              v1872 = a11;
              v1873 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1870, a3, a4 + a9 * v1869, a5, a6, a7, a8, v1873, v1872, v1871, v1868);
                v1873 = a10;
                v1872 = a11;
                v1871 = a13;
                v1870 = a15;
                v1869 = a16;
                v1868 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v633 = a17;
            if (!v632 && a12)
            {
              v634 = a16;
              v635 = a15;
              v636 = a13;
              v637 = a11;
              v638 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v635, a3, a4 + a9 * v634, a5, a6, a7, a8, v638, v637, v636, v633);
                v638 = a10;
                v637 = a11;
                v636 = a13;
                v635 = a15;
                v634 = a16;
                v633 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v632 == 4)
        {
          v1874 = a17;
          if (a12)
          {
            v1875 = a16;
            v1876 = a15;
            v1877 = a13;
            v1878 = a11;
            v1879 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1876, a3, a4 + a9 * v1875, a5, a6, a7, a8, v1879, v1878, v1877, v1874);
              v1879 = a10;
              v1878 = a11;
              v1877 = a13;
              v1876 = a15;
              v1875 = a16;
              v1874 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1202 = a17;
          if (!v632 && a12)
          {
            v1203 = a16;
            v1204 = a15;
            v1205 = a13;
            v1206 = a11;
            v1207 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1204, a3, a4 + a9 * v1203, a5, a6, a7, a8, v1207, v1206, v1205, v1202);
              v1207 = a10;
              v1206 = a11;
              v1205 = a13;
              v1204 = a15;
              v1203 = a16;
              v1202 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 73:
        v2662 = *(a1 + 396);
        v884 = getCompressionCodecConfig(*(a1 + 56));
        if (v2662 == 1)
        {
          if (v884 == 4)
          {
            v2312 = a17;
            if (a12)
            {
              v2313 = a16;
              v2314 = a15;
              v2315 = a13;
              v2316 = a11;
              v2317 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2314, a3, a4 + a9 * v2313, a5, a6, a7, a8, v2317, v2316, v2315, v2312);
                v2317 = a10;
                v2316 = a11;
                v2315 = a13;
                v2314 = a15;
                v2313 = a16;
                v2312 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v885 = a17;
            if (!v884 && a12)
            {
              v886 = a16;
              v887 = a15;
              v888 = a13;
              v889 = a11;
              v890 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v887, a3, a4 + a9 * v886, a5, a6, a7, a8, v890, v889, v888, v885);
                v890 = a10;
                v889 = a11;
                v888 = a13;
                v887 = a15;
                v886 = a16;
                v885 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v884 == 4)
        {
          v2318 = a17;
          if (a12)
          {
            v2319 = a16;
            v2320 = a15;
            v2321 = a13;
            v2322 = a11;
            v2323 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2320, a3, a4 + a9 * v2319, a5, a6, a7, a8, v2323, v2322, v2321, v2318);
              v2323 = a10;
              v2322 = a11;
              v2321 = a13;
              v2320 = a15;
              v2319 = a16;
              v2318 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1424 = a17;
          if (!v884 && a12)
          {
            v1425 = a16;
            v1426 = a15;
            v1427 = a13;
            v1428 = a11;
            v1429 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1426, a3, a4 + a9 * v1425, a5, a6, a7, a8, v1429, v1428, v1427, v1424);
              v1429 = a10;
              v1428 = a11;
              v1427 = a13;
              v1426 = a15;
              v1425 = a16;
              v1424 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 74:
        v2676 = *(a1 + 396);
        v982 = getCompressionCodecConfig(*(a1 + 56));
        if (v2676 == 1)
        {
          if (v982 == 4)
          {
            v2480 = a17;
            if (a12)
            {
              v2481 = a16;
              v2482 = a15;
              v2483 = a13;
              v2484 = a11;
              v2485 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2482, a3, a4 + a9 * v2481, a5, a6, a7, a8, v2485, v2484, v2483, v2480);
                v2485 = a10;
                v2484 = a11;
                v2483 = a13;
                v2482 = a15;
                v2481 = a16;
                v2480 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v983 = a17;
            if (!v982 && a12)
            {
              v984 = a16;
              v985 = a15;
              v986 = a13;
              v987 = a11;
              v988 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v985, a3, a4 + a9 * v984, a5, a6, a7, a8, v988, v987, v986, v983);
                v988 = a10;
                v987 = a11;
                v986 = a13;
                v985 = a15;
                v984 = a16;
                v983 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v982 == 4)
        {
          v2486 = a17;
          if (a12)
          {
            v2487 = a16;
            v2488 = a15;
            v2489 = a13;
            v2490 = a11;
            v2491 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2488, a3, a4 + a9 * v2487, a5, a6, a7, a8, v2491, v2490, v2489, v2486);
              v2491 = a10;
              v2490 = a11;
              v2489 = a13;
              v2488 = a15;
              v2487 = a16;
              v2486 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1508 = a17;
          if (!v982 && a12)
          {
            v1509 = a16;
            v1510 = a15;
            v1511 = a13;
            v1512 = a11;
            v1513 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1510, a3, a4 + a9 * v1509, a5, a6, a7, a8, v1513, v1512, v1511, v1508);
              v1513 = a10;
              v1512 = a11;
              v1511 = a13;
              v1510 = a15;
              v1509 = a16;
              v1508 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 80:
        v2619 = *(a1 + 396);
        v583 = getCompressionCodecConfig(*(a1 + 56));
        if (v2619 == 1)
        {
          if (v583 == 4)
          {
            v1784 = a17;
            if (a12)
            {
              v1785 = a16;
              v1786 = a15;
              v1787 = a13;
              v1788 = a11;
              v1789 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1786, a3, a4 + a9 * v1785, a5, a6, a7, a8, v1789, v1788, v1787, v1784);
                v1789 = a10;
                v1788 = a11;
                v1787 = a13;
                v1786 = a15;
                v1785 = a16;
                v1784 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v584 = a17;
            if (!v583 && a12)
            {
              v585 = a16;
              v586 = a15;
              v587 = a13;
              v588 = a11;
              v589 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v586, a3, a4 + a9 * v585, a5, a6, a7, a8, v589, v588, v587, v584);
                v589 = a10;
                v588 = a11;
                v587 = a13;
                v586 = a15;
                v585 = a16;
                v584 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v583 == 4)
        {
          v1790 = a17;
          if (a12)
          {
            v1791 = a16;
            v1792 = a15;
            v1793 = a13;
            v1794 = a11;
            v1795 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1792, a3, a4 + a9 * v1791, a5, a6, a7, a8, v1795, v1794, v1793, v1790);
              v1795 = a10;
              v1794 = a11;
              v1793 = a13;
              v1792 = a15;
              v1791 = a16;
              v1790 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1160 = a17;
          if (!v583 && a12)
          {
            v1161 = a16;
            v1162 = a15;
            v1163 = a13;
            v1164 = a11;
            v1165 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1162, a3, a4 + a9 * v1161, a5, a6, a7, a8, v1165, v1164, v1163, v1160);
              v1165 = a10;
              v1164 = a11;
              v1163 = a13;
              v1162 = a15;
              v1161 = a16;
              v1160 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 81:
        v2655 = *(a1 + 396);
        v835 = getCompressionCodecConfig(*(a1 + 56));
        if (v2655 == 1)
        {
          if (v835 == 4)
          {
            v2228 = a17;
            if (a12)
            {
              v2229 = a16;
              v2230 = a15;
              v2231 = a13;
              v2232 = a11;
              v2233 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2230, a3, a4 + a9 * v2229, a5, a6, a7, a8, v2233, v2232, v2231, v2228);
                v2233 = a10;
                v2232 = a11;
                v2231 = a13;
                v2230 = a15;
                v2229 = a16;
                v2228 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v836 = a17;
            if (!v835 && a12)
            {
              v837 = a16;
              v838 = a15;
              v839 = a13;
              v840 = a11;
              v841 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v838, a3, a4 + a9 * v837, a5, a6, a7, a8, v841, v840, v839, v836);
                v841 = a10;
                v840 = a11;
                v839 = a13;
                v838 = a15;
                v837 = a16;
                v836 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v835 == 4)
        {
          v2234 = a17;
          if (a12)
          {
            v2235 = a16;
            v2236 = a15;
            v2237 = a13;
            v2238 = a11;
            v2239 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2236, a3, a4 + a9 * v2235, a5, a6, a7, a8, v2239, v2238, v2237, v2234);
              v2239 = a10;
              v2238 = a11;
              v2237 = a13;
              v2236 = a15;
              v2235 = a16;
              v2234 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1382 = a17;
          if (!v835 && a12)
          {
            v1383 = a16;
            v1384 = a15;
            v1385 = a13;
            v1386 = a11;
            v1387 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1384, a3, a4 + a9 * v1383, a5, a6, a7, a8, v1387, v1386, v1385, v1382);
              v1387 = a10;
              v1386 = a11;
              v1385 = a13;
              v1384 = a15;
              v1383 = a16;
              v1382 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 84:
        v2618 = *(a1 + 396);
        v576 = getCompressionCodecConfig(*(a1 + 56));
        if (v2618 == 1)
        {
          if (v576 == 4)
          {
            v1772 = a17;
            if (a12)
            {
              v1773 = a16;
              v1774 = a15;
              v1775 = a13;
              v1776 = a11;
              v1777 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1774, a3, a4 + a9 * v1773, a5, a6, a7, a8, v1777, v1776, v1775, v1772);
                v1777 = a10;
                v1776 = a11;
                v1775 = a13;
                v1774 = a15;
                v1773 = a16;
                v1772 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v577 = a17;
            if (!v576 && a12)
            {
              v578 = a16;
              v579 = a15;
              v580 = a13;
              v581 = a11;
              v582 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v579, a3, a4 + a9 * v578, a5, a6, a7, a8, v582, v581, v580, v577);
                v582 = a10;
                v581 = a11;
                v580 = a13;
                v579 = a15;
                v578 = a16;
                v577 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v576 == 4)
        {
          v1778 = a17;
          if (a12)
          {
            v1779 = a16;
            v1780 = a15;
            v1781 = a13;
            v1782 = a11;
            v1783 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1780, a3, a4 + a9 * v1779, a5, a6, a7, a8, v1783, v1782, v1781, v1778);
              v1783 = a10;
              v1782 = a11;
              v1781 = a13;
              v1780 = a15;
              v1779 = a16;
              v1778 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1154 = a17;
          if (!v576 && a12)
          {
            v1155 = a16;
            v1156 = a15;
            v1157 = a13;
            v1158 = a11;
            v1159 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1156, a3, a4 + a9 * v1155, a5, a6, a7, a8, v1159, v1158, v1157, v1154);
              v1159 = a10;
              v1158 = a11;
              v1157 = a13;
              v1156 = a15;
              v1155 = a16;
              v1154 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 85:
        v2616 = *(a1 + 396);
        v562 = getCompressionCodecConfig(*(a1 + 56));
        if (v2616 == 1)
        {
          if (v562 == 4)
          {
            v1748 = a17;
            if (a12)
            {
              v1749 = a16;
              v1750 = a15;
              v1751 = a13;
              v1752 = a11;
              v1753 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1750, a3, a4 + a9 * v1749, a5, a6, a7, a8, v1753, v1752, v1751, v1748);
                v1753 = a10;
                v1752 = a11;
                v1751 = a13;
                v1750 = a15;
                v1749 = a16;
                v1748 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v563 = a17;
            if (!v562 && a12)
            {
              v564 = a16;
              v565 = a15;
              v566 = a13;
              v567 = a11;
              v568 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v565, a3, a4 + a9 * v564, a5, a6, a7, a8, v568, v567, v566, v563);
                v568 = a10;
                v567 = a11;
                v566 = a13;
                v565 = a15;
                v564 = a16;
                v563 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v562 == 4)
        {
          v1754 = a17;
          if (a12)
          {
            v1755 = a16;
            v1756 = a15;
            v1757 = a13;
            v1758 = a11;
            v1759 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1756, a3, a4 + a9 * v1755, a5, a6, a7, a8, v1759, v1758, v1757, v1754);
              v1759 = a10;
              v1758 = a11;
              v1757 = a13;
              v1756 = a15;
              v1755 = a16;
              v1754 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1142 = a17;
          if (!v562 && a12)
          {
            v1143 = a16;
            v1144 = a15;
            v1145 = a13;
            v1146 = a11;
            v1147 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1144, a3, a4 + a9 * v1143, a5, a6, a7, a8, v1147, v1146, v1145, v1142);
              v1147 = a10;
              v1146 = a11;
              v1145 = a13;
              v1144 = a15;
              v1143 = a16;
              v1142 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 90:
        v2633 = *(a1 + 396);
        v681 = getCompressionCodecConfig(*(a1 + 56));
        if (v2633 == 1)
        {
          if (v681 == 4)
          {
            v1952 = a17;
            if (a12)
            {
              v1953 = a16;
              v1954 = a15;
              v1955 = a13;
              v1956 = a11;
              v1957 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1954, a3, a4 + a9 * v1953, a5, a6, a7, a8, v1957, v1956, v1955, v1952);
                v1957 = a10;
                v1956 = a11;
                v1955 = a13;
                v1954 = a15;
                v1953 = a16;
                v1952 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v682 = a17;
            if (!v681 && a12)
            {
              v683 = a16;
              v684 = a15;
              v685 = a13;
              v686 = a11;
              v687 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v684, a3, a4 + a9 * v683, a5, a6, a7, a8, v687, v686, v685, v682);
                v687 = a10;
                v686 = a11;
                v685 = a13;
                v684 = a15;
                v683 = a16;
                v682 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v681 == 4)
        {
          v1958 = a17;
          if (a12)
          {
            v1959 = a16;
            v1960 = a15;
            v1961 = a13;
            v1962 = a11;
            v1963 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1960, a3, a4 + a9 * v1959, a5, a6, a7, a8, v1963, v1962, v1961, v1958);
              v1963 = a10;
              v1962 = a11;
              v1961 = a13;
              v1960 = a15;
              v1959 = a16;
              v1958 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1244 = a17;
          if (!v681 && a12)
          {
            v1245 = a16;
            v1246 = a15;
            v1247 = a13;
            v1248 = a11;
            v1249 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1246, a3, a4 + a9 * v1245, a5, a6, a7, a8, v1249, v1248, v1247, v1244);
              v1249 = a10;
              v1248 = a11;
              v1247 = a13;
              v1246 = a15;
              v1245 = a16;
              v1244 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 91:
        v2648 = *(a1 + 396);
        v786 = getCompressionCodecConfig(*(a1 + 56));
        if (v2648 == 1)
        {
          if (v786 == 4)
          {
            v2144 = a17;
            if (a12)
            {
              v2145 = a16;
              v2146 = a15;
              v2147 = a13;
              v2148 = a11;
              v2149 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2146, a3, a4 + a9 * v2145, a5, a6, a7, a8, v2149, v2148, v2147, v2144);
                v2149 = a10;
                v2148 = a11;
                v2147 = a13;
                v2146 = a15;
                v2145 = a16;
                v2144 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v787 = a17;
            if (!v786 && a12)
            {
              v788 = a16;
              v789 = a15;
              v790 = a13;
              v791 = a11;
              v792 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v789, a3, a4 + a9 * v788, a5, a6, a7, a8, v792, v791, v790, v787);
                v792 = a10;
                v791 = a11;
                v790 = a13;
                v789 = a15;
                v788 = a16;
                v787 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v786 == 4)
        {
          v2150 = a17;
          if (a12)
          {
            v2151 = a16;
            v2152 = a15;
            v2153 = a13;
            v2154 = a11;
            v2155 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2152, a3, a4 + a9 * v2151, a5, a6, a7, a8, v2155, v2154, v2153, v2150);
              v2155 = a10;
              v2154 = a11;
              v2153 = a13;
              v2152 = a15;
              v2151 = a16;
              v2150 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1340 = a17;
          if (!v786 && a12)
          {
            v1341 = a16;
            v1342 = a15;
            v1343 = a13;
            v1344 = a11;
            v1345 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1342, a3, a4 + a9 * v1341, a5, a6, a7, a8, v1345, v1344, v1343, v1340);
              v1345 = a10;
              v1344 = a11;
              v1343 = a13;
              v1342 = a15;
              v1341 = a16;
              v1340 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 92:
        v2666 = *(a1 + 396);
        v912 = getCompressionCodecConfig(*(a1 + 56));
        if (v2666 == 1)
        {
          if (v912 == 4)
          {
            v2360 = a17;
            if (a12)
            {
              v2361 = a16;
              v2362 = a15;
              v2363 = a13;
              v2364 = a11;
              v2365 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2362, a3, a4 + a9 * v2361, a5, a6, a7, a8, v2365, v2364, v2363, v2360);
                v2365 = a10;
                v2364 = a11;
                v2363 = a13;
                v2362 = a15;
                v2361 = a16;
                v2360 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v913 = a17;
            if (!v912 && a12)
            {
              v914 = a16;
              v915 = a15;
              v916 = a13;
              v917 = a11;
              v918 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v915, a3, a4 + a9 * v914, a5, a6, a7, a8, v918, v917, v916, v913);
                v918 = a10;
                v917 = a11;
                v916 = a13;
                v915 = a15;
                v914 = a16;
                v913 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v912 == 4)
        {
          v2366 = a17;
          if (a12)
          {
            v2367 = a16;
            v2368 = a15;
            v2369 = a13;
            v2370 = a11;
            v2371 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2368, a3, a4 + a9 * v2367, a5, a6, a7, a8, v2371, v2370, v2369, v2366);
              v2371 = a10;
              v2370 = a11;
              v2369 = a13;
              v2368 = a15;
              v2367 = a16;
              v2366 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1448 = a17;
          if (!v912 && a12)
          {
            v1449 = a16;
            v1450 = a15;
            v1451 = a13;
            v1452 = a11;
            v1453 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1450, a3, a4 + a9 * v1449, a5, a6, a7, a8, v1453, v1452, v1451, v1448);
              v1453 = a10;
              v1452 = a11;
              v1451 = a13;
              v1450 = a15;
              v1449 = a16;
              v1448 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 93:
        v2609 = *(a1 + 396);
        v513 = getCompressionCodecConfig(*(a1 + 56));
        if (v2609 == 1)
        {
          if (v513 == 4)
          {
            v1664 = a17;
            if (a12)
            {
              v1665 = a16;
              v1666 = a15;
              v1667 = a13;
              v1668 = a11;
              v1669 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1666, a3, a4 + a9 * v1665, a5, a6, a7, a8, v1669, v1668, v1667, v1664);
                v1669 = a10;
                v1668 = a11;
                v1667 = a13;
                v1666 = a15;
                v1665 = a16;
                v1664 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v514 = a17;
            if (!v513 && a12)
            {
              v515 = a16;
              v516 = a15;
              v517 = a13;
              v518 = a11;
              v519 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v516, a3, a4 + a9 * v515, a5, a6, a7, a8, v519, v518, v517, v514);
                v519 = a10;
                v518 = a11;
                v517 = a13;
                v516 = a15;
                v515 = a16;
                v514 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v513 == 4)
        {
          v1670 = a17;
          if (a12)
          {
            v1671 = a16;
            v1672 = a15;
            v1673 = a13;
            v1674 = a11;
            v1675 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1672, a3, a4 + a9 * v1671, a5, a6, a7, a8, v1675, v1674, v1673, v1670);
              v1675 = a10;
              v1674 = a11;
              v1673 = a13;
              v1672 = a15;
              v1671 = a16;
              v1670 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1100 = a17;
          if (!v513 && a12)
          {
            v1101 = a16;
            v1102 = a15;
            v1103 = a13;
            v1104 = a11;
            v1105 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1102, a3, a4 + a9 * v1101, a5, a6, a7, a8, v1105, v1104, v1103, v1100);
              v1105 = a10;
              v1104 = a11;
              v1103 = a13;
              v1102 = a15;
              v1101 = a16;
              v1100 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 94:
        v2621 = *(a1 + 396);
        v597 = getCompressionCodecConfig(*(a1 + 56));
        if (v2621 == 1)
        {
          if (v597 == 4)
          {
            v1808 = a17;
            if (a12)
            {
              v1809 = a16;
              v1810 = a15;
              v1811 = a13;
              v1812 = a11;
              v1813 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1810, a3, a4 + a9 * v1809, a5, a6, a7, a8, v1813, v1812, v1811, v1808);
                v1813 = a10;
                v1812 = a11;
                v1811 = a13;
                v1810 = a15;
                v1809 = a16;
                v1808 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v598 = a17;
            if (!v597 && a12)
            {
              v599 = a16;
              v600 = a15;
              v601 = a13;
              v602 = a11;
              v603 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v600, a3, a4 + a9 * v599, a5, a6, a7, a8, v603, v602, v601, v598);
                v603 = a10;
                v602 = a11;
                v601 = a13;
                v600 = a15;
                v599 = a16;
                v598 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v597 == 4)
        {
          v1814 = a17;
          if (a12)
          {
            v1815 = a16;
            v1816 = a15;
            v1817 = a13;
            v1818 = a11;
            v1819 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1816, a3, a4 + a9 * v1815, a5, a6, a7, a8, v1819, v1818, v1817, v1814);
              v1819 = a10;
              v1818 = a11;
              v1817 = a13;
              v1816 = a15;
              v1815 = a16;
              v1814 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1172 = a17;
          if (!v597 && a12)
          {
            v1173 = a16;
            v1174 = a15;
            v1175 = a13;
            v1176 = a11;
            v1177 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1174, a3, a4 + a9 * v1173, a5, a6, a7, a8, v1177, v1176, v1175, v1172);
              v1177 = a10;
              v1176 = a11;
              v1175 = a13;
              v1174 = a15;
              v1173 = a16;
              v1172 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 103:
        v2649 = *(a1 + 396);
        v793 = getCompressionCodecConfig(*(a1 + 56));
        if (v2649 == 1)
        {
          if (v793 == 4)
          {
            v2156 = a17;
            if (a12)
            {
              v2157 = a16;
              v2158 = a15;
              v2159 = a13;
              v2160 = a11;
              v2161 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2158, a3, a4 + a9 * v2157, a5, a6, a7, a8, v2161, v2160, v2159, v2156);
                v2161 = a10;
                v2160 = a11;
                v2159 = a13;
                v2158 = a15;
                v2157 = a16;
                v2156 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v794 = a17;
            if (!v793 && a12)
            {
              v795 = a16;
              v796 = a15;
              v797 = a13;
              v798 = a11;
              v799 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v796, a3, a4 + a9 * v795, a5, a6, a7, a8, v799, v798, v797, v794);
                v799 = a10;
                v798 = a11;
                v797 = a13;
                v796 = a15;
                v795 = a16;
                v794 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v793 == 4)
        {
          v2162 = a17;
          if (a12)
          {
            v2163 = a16;
            v2164 = a15;
            v2165 = a13;
            v2166 = a11;
            v2167 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2164, a3, a4 + a9 * v2163, a5, a6, a7, a8, v2167, v2166, v2165, v2162);
              v2167 = a10;
              v2166 = a11;
              v2165 = a13;
              v2164 = a15;
              v2163 = a16;
              v2162 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1346 = a17;
          if (!v793 && a12)
          {
            v1347 = a16;
            v1348 = a15;
            v1349 = a13;
            v1350 = a11;
            v1351 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1348, a3, a4 + a9 * v1347, a5, a6, a7, a8, v1351, v1350, v1349, v1346);
              v1351 = a10;
              v1350 = a11;
              v1349 = a13;
              v1348 = a15;
              v1347 = a16;
              v1346 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 104:
        v2654 = *(a1 + 396);
        v828 = getCompressionCodecConfig(*(a1 + 56));
        if (v2654 == 1)
        {
          if (v828 == 4)
          {
            v2216 = a17;
            if (a12)
            {
              v2217 = a16;
              v2218 = a15;
              v2219 = a13;
              v2220 = a11;
              v2221 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2218, a3, a4 + a9 * v2217, a5, a6, a7, a8, v2221, v2220, v2219, v2216);
                v2221 = a10;
                v2220 = a11;
                v2219 = a13;
                v2218 = a15;
                v2217 = a16;
                v2216 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v829 = a17;
            if (!v828 && a12)
            {
              v830 = a16;
              v831 = a15;
              v832 = a13;
              v833 = a11;
              v834 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v831, a3, a4 + a9 * v830, a5, a6, a7, a8, v834, v833, v832, v829);
                v834 = a10;
                v833 = a11;
                v832 = a13;
                v831 = a15;
                v830 = a16;
                v829 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v828 == 4)
        {
          v2222 = a17;
          if (a12)
          {
            v2223 = a16;
            v2224 = a15;
            v2225 = a13;
            v2226 = a11;
            v2227 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2224, a3, a4 + a9 * v2223, a5, a6, a7, a8, v2227, v2226, v2225, v2222);
              v2227 = a10;
              v2226 = a11;
              v2225 = a13;
              v2224 = a15;
              v2223 = a16;
              v2222 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1376 = a17;
          if (!v828 && a12)
          {
            v1377 = a16;
            v1378 = a15;
            v1379 = a13;
            v1380 = a11;
            v1381 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1378, a3, a4 + a9 * v1377, a5, a6, a7, a8, v1381, v1380, v1379, v1376);
              v1381 = a10;
              v1380 = a11;
              v1379 = a13;
              v1378 = a15;
              v1377 = a16;
              v1376 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 105:
        v2677 = *(a1 + 396);
        v989 = getCompressionCodecConfig(*(a1 + 56));
        if (v2677 == 1)
        {
          if (v989 == 4)
          {
            v2492 = a17;
            if (a12)
            {
              v2493 = a16;
              v2494 = a15;
              v2495 = a13;
              v2496 = a11;
              v2497 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2494, a3, a4 + a9 * v2493, a5, a6, a7, a8, v2497, v2496, v2495, v2492);
                v2497 = a10;
                v2496 = a11;
                v2495 = a13;
                v2494 = a15;
                v2493 = a16;
                v2492 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v990 = a17;
            if (!v989 && a12)
            {
              v991 = a16;
              v992 = a15;
              v993 = a13;
              v994 = a11;
              v995 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v992, a3, a4 + a9 * v991, a5, a6, a7, a8, v995, v994, v993, v990);
                v995 = a10;
                v994 = a11;
                v993 = a13;
                v992 = a15;
                v991 = a16;
                v990 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v989 == 4)
        {
          v2498 = a17;
          if (a12)
          {
            v2499 = a16;
            v2500 = a15;
            v2501 = a13;
            v2502 = a11;
            v2503 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2500, a3, a4 + a9 * v2499, a5, a6, a7, a8, v2503, v2502, v2501, v2498);
              v2503 = a10;
              v2502 = a11;
              v2501 = a13;
              v2500 = a15;
              v2499 = a16;
              v2498 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1514 = a17;
          if (!v989 && a12)
          {
            v1515 = a16;
            v1516 = a15;
            v1517 = a13;
            v1518 = a11;
            v1519 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1516, a3, a4 + a9 * v1515, a5, a6, a7, a8, v1519, v1518, v1517, v1514);
              v1519 = a10;
              v1518 = a11;
              v1517 = a13;
              v1516 = a15;
              v1515 = a16;
              v1514 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 110:
        v2652 = *(a1 + 396);
        v814 = getCompressionCodecConfig(*(a1 + 56));
        if (v2652 == 1)
        {
          if (v814 == 4)
          {
            v2192 = a17;
            if (a12)
            {
              v2193 = a16;
              v2194 = a15;
              v2195 = a13;
              v2196 = a11;
              v2197 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2194, a3, a4 + a9 * v2193, a5, a6, a7, a8, v2197, v2196, v2195, v2192);
                v2197 = a10;
                v2196 = a11;
                v2195 = a13;
                v2194 = a15;
                v2193 = a16;
                v2192 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v815 = a17;
            if (!v814 && a12)
            {
              v816 = a16;
              v817 = a15;
              v818 = a13;
              v819 = a11;
              v820 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v817, a3, a4 + a9 * v816, a5, a6, a7, a8, v820, v819, v818, v815);
                v820 = a10;
                v819 = a11;
                v818 = a13;
                v817 = a15;
                v816 = a16;
                v815 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v814 == 4)
        {
          v2198 = a17;
          if (a12)
          {
            v2199 = a16;
            v2200 = a15;
            v2201 = a13;
            v2202 = a11;
            v2203 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2200, a3, a4 + a9 * v2199, a5, a6, a7, a8, v2203, v2202, v2201, v2198);
              v2203 = a10;
              v2202 = a11;
              v2201 = a13;
              v2200 = a15;
              v2199 = a16;
              v2198 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1364 = a17;
          if (!v814 && a12)
          {
            v1365 = a16;
            v1366 = a15;
            v1367 = a13;
            v1368 = a11;
            v1369 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1366, a3, a4 + a9 * v1365, a5, a6, a7, a8, v1369, v1368, v1367, v1364);
              v1369 = a10;
              v1368 = a11;
              v1367 = a13;
              v1366 = a15;
              v1365 = a16;
              v1364 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 112:
        v2613 = *(a1 + 396);
        v541 = getCompressionCodecConfig(*(a1 + 56));
        if (v2613 == 1)
        {
          if (v541 == 4)
          {
            v1712 = a17;
            if (a12)
            {
              v1713 = a16;
              v1714 = a15;
              v1715 = a13;
              v1716 = a11;
              v1717 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1714, a3, a4 + a9 * v1713, a5, a6, a7, a8, v1717, v1716, v1715, v1712);
                v1717 = a10;
                v1716 = a11;
                v1715 = a13;
                v1714 = a15;
                v1713 = a16;
                v1712 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v542 = a17;
            if (!v541 && a12)
            {
              v543 = a16;
              v544 = a15;
              v545 = a13;
              v546 = a11;
              v547 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v544, a3, a4 + a9 * v543, a5, a6, a7, a8, v547, v546, v545, v542);
                v547 = a10;
                v546 = a11;
                v545 = a13;
                v544 = a15;
                v543 = a16;
                v542 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v541 == 4)
        {
          v1718 = a17;
          if (a12)
          {
            v1719 = a16;
            v1720 = a15;
            v1721 = a13;
            v1722 = a11;
            v1723 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1720, a3, a4 + a9 * v1719, a5, a6, a7, a8, v1723, v1722, v1721, v1718);
              v1723 = a10;
              v1722 = a11;
              v1721 = a13;
              v1720 = a15;
              v1719 = a16;
              v1718 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1124 = a17;
          if (!v541 && a12)
          {
            v1125 = a16;
            v1126 = a15;
            v1127 = a13;
            v1128 = a11;
            v1129 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1126, a3, a4 + a9 * v1125, a5, a6, a7, a8, v1129, v1128, v1127, v1124);
              v1129 = a10;
              v1128 = a11;
              v1127 = a13;
              v1126 = a15;
              v1125 = a16;
              v1124 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 113:
        v2610 = *(a1 + 396);
        v520 = getCompressionCodecConfig(*(a1 + 56));
        if (v2610 == 1)
        {
          if (v520 == 4)
          {
            v1676 = a17;
            if (a12)
            {
              v1677 = a16;
              v1678 = a15;
              v1679 = a13;
              v1680 = a11;
              v1681 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1678, a3, a4 + a9 * v1677, a5, a6, a7, a8, v1681, v1680, v1679, v1676);
                v1681 = a10;
                v1680 = a11;
                v1679 = a13;
                v1678 = a15;
                v1677 = a16;
                v1676 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v521 = a17;
            if (!v520 && a12)
            {
              v522 = a16;
              v523 = a15;
              v524 = a13;
              v525 = a11;
              v526 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v523, a3, a4 + a9 * v522, a5, a6, a7, a8, v526, v525, v524, v521);
                v526 = a10;
                v525 = a11;
                v524 = a13;
                v523 = a15;
                v522 = a16;
                v521 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v520 == 4)
        {
          v1682 = a17;
          if (a12)
          {
            v1683 = a16;
            v1684 = a15;
            v1685 = a13;
            v1686 = a11;
            v1687 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1684, a3, a4 + a9 * v1683, a5, a6, a7, a8, v1687, v1686, v1685, v1682);
              v1687 = a10;
              v1686 = a11;
              v1685 = a13;
              v1684 = a15;
              v1683 = a16;
              v1682 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1106 = a17;
          if (!v520 && a12)
          {
            v1107 = a16;
            v1108 = a15;
            v1109 = a13;
            v1110 = a11;
            v1111 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1108, a3, a4 + a9 * v1107, a5, a6, a7, a8, v1111, v1110, v1109, v1106);
              v1111 = a10;
              v1110 = a11;
              v1109 = a13;
              v1108 = a15;
              v1107 = a16;
              v1106 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 114:
        v2681 = *(a1 + 396);
        v1017 = getCompressionCodecConfig(*(a1 + 56));
        if (v2681 == 1)
        {
          if (v1017 == 4)
          {
            v2540 = a17;
            if (a12)
            {
              v2541 = a16;
              v2542 = a15;
              v2543 = a13;
              v2544 = a11;
              v2545 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2542, a3, a4 + a9 * v2541, a5, a6, a7, a8, v2545, v2544, v2543, v2540);
                v2545 = a10;
                v2544 = a11;
                v2543 = a13;
                v2542 = a15;
                v2541 = a16;
                v2540 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1018 = a17;
            if (!v1017 && a12)
            {
              v1019 = a16;
              v1020 = a15;
              v1021 = a13;
              v1022 = a11;
              v1023 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1020, a3, a4 + a9 * v1019, a5, a6, a7, a8, v1023, v1022, v1021, v1018);
                v1023 = a10;
                v1022 = a11;
                v1021 = a13;
                v1020 = a15;
                v1019 = a16;
                v1018 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1017 == 4)
        {
          v2546 = a17;
          if (a12)
          {
            v2547 = a16;
            v2548 = a15;
            v2549 = a13;
            v2550 = a11;
            v2551 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2548, a3, a4 + a9 * v2547, a5, a6, a7, a8, v2551, v2550, v2549, v2546);
              v2551 = a10;
              v2550 = a11;
              v2549 = a13;
              v2548 = a15;
              v2547 = a16;
              v2546 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1538 = a17;
          if (!v1017 && a12)
          {
            v1539 = a16;
            v1540 = a15;
            v1541 = a13;
            v1542 = a11;
            v1543 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1540, a3, a4 + a9 * v1539, a5, a6, a7, a8, v1543, v1542, v1541, v1538);
              v1543 = a10;
              v1542 = a11;
              v1541 = a13;
              v1540 = a15;
              v1539 = a16;
              v1538 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 115:
        v2675 = *(a1 + 396);
        v975 = getCompressionCodecConfig(*(a1 + 56));
        if (v2675 == 1)
        {
          if (v975 == 4)
          {
            v2468 = a17;
            if (a12)
            {
              v2469 = a16;
              v2470 = a15;
              v2471 = a13;
              v2472 = a11;
              v2473 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2470, a3, a4 + a9 * v2469, a5, a6, a7, a8, v2473, v2472, v2471, v2468);
                v2473 = a10;
                v2472 = a11;
                v2471 = a13;
                v2470 = a15;
                v2469 = a16;
                v2468 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v976 = a17;
            if (!v975 && a12)
            {
              v977 = a16;
              v978 = a15;
              v979 = a13;
              v980 = a11;
              v981 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v978, a3, a4 + a9 * v977, a5, a6, a7, a8, v981, v980, v979, v976);
                v981 = a10;
                v980 = a11;
                v979 = a13;
                v978 = a15;
                v977 = a16;
                v976 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v975 == 4)
        {
          v2474 = a17;
          if (a12)
          {
            v2475 = a16;
            v2476 = a15;
            v2477 = a13;
            v2478 = a11;
            v2479 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2476, a3, a4 + a9 * v2475, a5, a6, a7, a8, v2479, v2478, v2477, v2474);
              v2479 = a10;
              v2478 = a11;
              v2477 = a13;
              v2476 = a15;
              v2475 = a16;
              v2474 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1502 = a17;
          if (!v975 && a12)
          {
            v1503 = a16;
            v1504 = a15;
            v1505 = a13;
            v1506 = a11;
            v1507 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1504, a3, a4 + a9 * v1503, a5, a6, a7, a8, v1507, v1506, v1505, v1502);
              v1507 = a10;
              v1506 = a11;
              v1505 = a13;
              v1504 = a15;
              v1503 = a16;
              v1502 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 116:
        v2612 = *(a1 + 396);
        v534 = getCompressionCodecConfig(*(a1 + 56));
        if (v2612 == 1)
        {
          if (v534 == 4)
          {
            v1700 = a17;
            if (a12)
            {
              v1701 = a16;
              v1702 = a15;
              v1703 = a13;
              v1704 = a11;
              v1705 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1702, a3, a4 + a9 * v1701, a5, a6, a7, a8, v1705, v1704, v1703, v1700);
                v1705 = a10;
                v1704 = a11;
                v1703 = a13;
                v1702 = a15;
                v1701 = a16;
                v1700 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v535 = a17;
            if (!v534 && a12)
            {
              v536 = a16;
              v537 = a15;
              v538 = a13;
              v539 = a11;
              v540 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v537, a3, a4 + a9 * v536, a5, a6, a7, a8, v540, v539, v538, v535);
                v540 = a10;
                v539 = a11;
                v538 = a13;
                v537 = a15;
                v536 = a16;
                v535 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v534 == 4)
        {
          v1706 = a17;
          if (a12)
          {
            v1707 = a16;
            v1708 = a15;
            v1709 = a13;
            v1710 = a11;
            v1711 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1708, a3, a4 + a9 * v1707, a5, a6, a7, a8, v1711, v1710, v1709, v1706);
              v1711 = a10;
              v1710 = a11;
              v1709 = a13;
              v1708 = a15;
              v1707 = a16;
              v1706 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1118 = a17;
          if (!v534 && a12)
          {
            v1119 = a16;
            v1120 = a15;
            v1121 = a13;
            v1122 = a11;
            v1123 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1120, a3, a4 + a9 * v1119, a5, a6, a7, a8, v1123, v1122, v1121, v1118);
              v1123 = a10;
              v1122 = a11;
              v1121 = a13;
              v1120 = a15;
              v1119 = a16;
              v1118 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 123:
        v2656 = *(a1 + 396);
        v842 = getCompressionCodecConfig(*(a1 + 56));
        if (v2656 == 1)
        {
          if (v842 == 4)
          {
            v2240 = a17;
            if (a12)
            {
              v2241 = a16;
              v2242 = a15;
              v2243 = a13;
              v2244 = a11;
              v2245 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2242, a3, a4 + a9 * v2241, a5, a6, a7, a8, v2245, v2244, v2243, v2240);
                v2245 = a10;
                v2244 = a11;
                v2243 = a13;
                v2242 = a15;
                v2241 = a16;
                v2240 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v843 = a17;
            if (!v842 && a12)
            {
              v844 = a16;
              v845 = a15;
              v846 = a13;
              v847 = a11;
              v848 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v845, a3, a4 + a9 * v844, a5, a6, a7, a8, v848, v847, v846, v843);
                v848 = a10;
                v847 = a11;
                v846 = a13;
                v845 = a15;
                v844 = a16;
                v843 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v842 == 4)
        {
          v2246 = a17;
          if (a12)
          {
            v2247 = a16;
            v2248 = a15;
            v2249 = a13;
            v2250 = a11;
            v2251 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2248, a3, a4 + a9 * v2247, a5, a6, a7, a8, v2251, v2250, v2249, v2246);
              v2251 = a10;
              v2250 = a11;
              v2249 = a13;
              v2248 = a15;
              v2247 = a16;
              v2246 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1388 = a17;
          if (!v842 && a12)
          {
            v1389 = a16;
            v1390 = a15;
            v1391 = a13;
            v1392 = a11;
            v1393 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1390, a3, a4 + a9 * v1389, a5, a6, a7, a8, v1393, v1392, v1391, v1388);
              v1393 = a10;
              v1392 = a11;
              v1391 = a13;
              v1390 = a15;
              v1389 = a16;
              v1388 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 124:
        v2664 = *(a1 + 396);
        v898 = getCompressionCodecConfig(*(a1 + 56));
        if (v2664 == 1)
        {
          if (v898 == 4)
          {
            v2336 = a17;
            if (a12)
            {
              v2337 = a16;
              v2338 = a15;
              v2339 = a13;
              v2340 = a11;
              v2341 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2338, a3, a4 + a9 * v2337, a5, a6, a7, a8, v2341, v2340, v2339, v2336);
                v2341 = a10;
                v2340 = a11;
                v2339 = a13;
                v2338 = a15;
                v2337 = a16;
                v2336 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v899 = a17;
            if (!v898 && a12)
            {
              v900 = a16;
              v901 = a15;
              v902 = a13;
              v903 = a11;
              v904 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v901, a3, a4 + a9 * v900, a5, a6, a7, a8, v904, v903, v902, v899);
                v904 = a10;
                v903 = a11;
                v902 = a13;
                v901 = a15;
                v900 = a16;
                v899 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v898 == 4)
        {
          v2342 = a17;
          if (a12)
          {
            v2343 = a16;
            v2344 = a15;
            v2345 = a13;
            v2346 = a11;
            v2347 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2344, a3, a4 + a9 * v2343, a5, a6, a7, a8, v2347, v2346, v2345, v2342);
              v2347 = a10;
              v2346 = a11;
              v2345 = a13;
              v2344 = a15;
              v2343 = a16;
              v2342 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1436 = a17;
          if (!v898 && a12)
          {
            v1437 = a16;
            v1438 = a15;
            v1439 = a13;
            v1440 = a11;
            v1441 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1438, a3, a4 + a9 * v1437, a5, a6, a7, a8, v1441, v1440, v1439, v1436);
              v1441 = a10;
              v1440 = a11;
              v1439 = a13;
              v1438 = a15;
              v1437 = a16;
              v1436 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 125:
        v2611 = *(a1 + 396);
        v527 = getCompressionCodecConfig(*(a1 + 56));
        if (v2611 == 1)
        {
          if (v527 == 4)
          {
            v1688 = a17;
            if (a12)
            {
              v1689 = a16;
              v1690 = a15;
              v1691 = a13;
              v1692 = a11;
              v1693 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1690, a3, a4 + a9 * v1689, a5, a6, a7, a8, v1693, v1692, v1691, v1688);
                v1693 = a10;
                v1692 = a11;
                v1691 = a13;
                v1690 = a15;
                v1689 = a16;
                v1688 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v528 = a17;
            if (!v527 && a12)
            {
              v529 = a16;
              v530 = a15;
              v531 = a13;
              v532 = a11;
              v533 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v530, a3, a4 + a9 * v529, a5, a6, a7, a8, v533, v532, v531, v528);
                v533 = a10;
                v532 = a11;
                v531 = a13;
                v530 = a15;
                v529 = a16;
                v528 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v527 == 4)
        {
          v1694 = a17;
          if (a12)
          {
            v1695 = a16;
            v1696 = a15;
            v1697 = a13;
            v1698 = a11;
            v1699 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1696, a3, a4 + a9 * v1695, a5, a6, a7, a8, v1699, v1698, v1697, v1694);
              v1699 = a10;
              v1698 = a11;
              v1697 = a13;
              v1696 = a15;
              v1695 = a16;
              v1694 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1112 = a17;
          if (!v527 && a12)
          {
            v1113 = a16;
            v1114 = a15;
            v1115 = a13;
            v1116 = a11;
            v1117 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1114, a3, a4 + a9 * v1113, a5, a6, a7, a8, v1117, v1116, v1115, v1112);
              v1117 = a10;
              v1116 = a11;
              v1115 = a13;
              v1114 = a15;
              v1113 = a16;
              v1112 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 250:
        v2672 = *(a1 + 396);
        v954 = getCompressionCodecConfig(*(a1 + 56));
        if (v2672 == 1)
        {
          if (v954 == 4)
          {
            v2432 = a17;
            if (a12)
            {
              v2433 = a16;
              v2434 = a15;
              v2435 = a13;
              v2436 = a11;
              v2437 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2434, a3, a4 + a9 * v2433, a5, a6, a7, a8, v2437, v2436, v2435, v2432);
                v2437 = a10;
                v2436 = a11;
                v2435 = a13;
                v2434 = a15;
                v2433 = a16;
                v2432 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v955 = a17;
            if (!v954 && a12)
            {
              v956 = a16;
              v957 = a15;
              v958 = a13;
              v959 = a11;
              v960 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v957, a3, a4 + a9 * v956, a5, a6, a7, a8, v960, v959, v958, v955);
                v960 = a10;
                v959 = a11;
                v958 = a13;
                v957 = a15;
                v956 = a16;
                v955 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v954 == 4)
        {
          v2438 = a17;
          if (a12)
          {
            v2439 = a16;
            v2440 = a15;
            v2441 = a13;
            v2442 = a11;
            v2443 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2440, a3, a4 + a9 * v2439, a5, a6, a7, a8, v2443, v2442, v2441, v2438);
              v2443 = a10;
              v2442 = a11;
              v2441 = a13;
              v2440 = a15;
              v2439 = a16;
              v2438 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1484 = a17;
          if (!v954 && a12)
          {
            v1485 = a16;
            v1486 = a15;
            v1487 = a13;
            v1488 = a11;
            v1489 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1486, a3, a4 + a9 * v1485, a5, a6, a7, a8, v1489, v1488, v1487, v1484);
              v1489 = a10;
              v1488 = a11;
              v1487 = a13;
              v1486 = a15;
              v1485 = a16;
              v1484 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 252:
        v2667 = *(a1 + 396);
        v919 = getCompressionCodecConfig(*(a1 + 56));
        if (v2667 == 1)
        {
          if (v919 == 4)
          {
            v2372 = a17;
            if (a12)
            {
              v2373 = a16;
              v2374 = a15;
              v2375 = a13;
              v2376 = a11;
              v2377 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2374, a3, a4 + a9 * v2373, a5, a6, a7, a8, v2377, v2376, v2375, v2372);
                v2377 = a10;
                v2376 = a11;
                v2375 = a13;
                v2374 = a15;
                v2373 = a16;
                v2372 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v920 = a17;
            if (!v919 && a12)
            {
              v921 = a16;
              v922 = a15;
              v923 = a13;
              v924 = a11;
              v925 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v922, a3, a4 + a9 * v921, a5, a6, a7, a8, v925, v924, v923, v920);
                v925 = a10;
                v924 = a11;
                v923 = a13;
                v922 = a15;
                v921 = a16;
                v920 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v919 == 4)
        {
          v2378 = a17;
          if (a12)
          {
            v2379 = a16;
            v2380 = a15;
            v2381 = a13;
            v2382 = a11;
            v2383 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2380, a3, a4 + a9 * v2379, a5, a6, a7, a8, v2383, v2382, v2381, v2378);
              v2383 = a10;
              v2382 = a11;
              v2381 = a13;
              v2380 = a15;
              v2379 = a16;
              v2378 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1454 = a17;
          if (!v919 && a12)
          {
            v1455 = a16;
            v1456 = a15;
            v1457 = a13;
            v1458 = a11;
            v1459 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1456, a3, a4 + a9 * v1455, a5, a6, a7, a8, v1459, v1458, v1457, v1454);
              v1459 = a10;
              v1458 = a11;
              v1457 = a13;
              v1456 = a15;
              v1455 = a16;
              v1454 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 253:
        v2684 = *(a1 + 396);
        v1038 = getCompressionCodecConfig(*(a1 + 56));
        if (v2684 == 1)
        {
          if (v1038 == 4)
          {
            v2576 = a17;
            if (a12)
            {
              v2577 = a16;
              v2578 = a15;
              v2579 = a13;
              v2580 = a11;
              v2581 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2578, a3, a4 + a9 * v2577, a5, a6, a7, a8, v2581, v2580, v2579, v2576);
                v2581 = a10;
                v2580 = a11;
                v2579 = a13;
                v2578 = a15;
                v2577 = a16;
                v2576 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1039 = a17;
            if (!v1038 && a12)
            {
              v1040 = a16;
              v1041 = a15;
              v1042 = a13;
              v1043 = a11;
              v1044 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1041, a3, a4 + a9 * v1040, a5, a6, a7, a8, v1044, v1043, v1042, v1039);
                v1044 = a10;
                v1043 = a11;
                v1042 = a13;
                v1041 = a15;
                v1040 = a16;
                v1039 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1038 == 4)
        {
          v2582 = a17;
          if (a12)
          {
            v2583 = a16;
            v2584 = a15;
            v2585 = a13;
            v2586 = a11;
            v2587 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2584, a3, a4 + a9 * v2583, a5, a6, a7, a8, v2587, v2586, v2585, v2582);
              v2587 = a10;
              v2586 = a11;
              v2585 = a13;
              v2584 = a15;
              v2583 = a16;
              v2582 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1556 = a17;
          if (!v1038 && a12)
          {
            v1557 = a16;
            v1558 = a15;
            v1559 = a13;
            v1560 = a11;
            v1561 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1558, a3, a4 + a9 * v1557, a5, a6, a7, a8, v1561, v1560, v1559, v1556);
              v1561 = a10;
              v1560 = a11;
              v1559 = a13;
              v1558 = a15;
              v1557 = a16;
              v1556 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 261:
        v2679 = *(a1 + 396);
        v1003 = getCompressionCodecConfig(*(a1 + 56));
        if (v2679 == 1)
        {
          if (v1003 == 4)
          {
            v2516 = a17;
            if (a12)
            {
              v2517 = a16;
              v2518 = a15;
              v2519 = a13;
              v2520 = a11;
              v2521 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2518, a3, a4 + a9 * v2517, a5, a6, a7, a8, v2521, v2520, v2519, v2516);
                v2521 = a10;
                v2520 = a11;
                v2519 = a13;
                v2518 = a15;
                v2517 = a16;
                v2516 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1004 = a17;
            if (!v1003 && a12)
            {
              v1005 = a16;
              v1006 = a15;
              v1007 = a13;
              v1008 = a11;
              v1009 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1006, a3, a4 + a9 * v1005, a5, a6, a7, a8, v1009, v1008, v1007, v1004);
                v1009 = a10;
                v1008 = a11;
                v1007 = a13;
                v1006 = a15;
                v1005 = a16;
                v1004 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1003 == 4)
        {
          v2522 = a17;
          if (a12)
          {
            v2523 = a16;
            v2524 = a15;
            v2525 = a13;
            v2526 = a11;
            v2527 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2524, a3, a4 + a9 * v2523, a5, a6, a7, a8, v2527, v2526, v2525, v2522);
              v2527 = a10;
              v2526 = a11;
              v2525 = a13;
              v2524 = a15;
              v2523 = a16;
              v2522 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1526 = a17;
          if (!v1003 && a12)
          {
            v1527 = a16;
            v1528 = a15;
            v1529 = a13;
            v1530 = a11;
            v1531 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1528, a3, a4 + a9 * v1527, a5, a6, a7, a8, v1531, v1530, v1529, v1526);
              v1531 = a10;
              v1530 = a11;
              v1529 = a13;
              v1528 = a15;
              v1527 = a16;
              v1526 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 300:
        v2682 = *(a1 + 396);
        v1024 = getCompressionCodecConfig(*(a1 + 56));
        if (v2682 == 1)
        {
          if (v1024 == 4)
          {
            v2552 = a17;
            if (a12)
            {
              v2553 = a16;
              v2554 = a15;
              v2555 = a13;
              v2556 = a11;
              v2557 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2554, a3, a4 + a9 * v2553, a5, a6, a7, a8, v2557, v2556, v2555, v2552);
                v2557 = a10;
                v2556 = a11;
                v2555 = a13;
                v2554 = a15;
                v2553 = a16;
                v2552 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1025 = a17;
            if (!v1024 && a12)
            {
              v1026 = a16;
              v1027 = a15;
              v1028 = a13;
              v1029 = a11;
              v1030 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1027, a3, a4 + a9 * v1026, a5, a6, a7, a8, v1030, v1029, v1028, v1025);
                v1030 = a10;
                v1029 = a11;
                v1028 = a13;
                v1027 = a15;
                v1026 = a16;
                v1025 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1024 == 4)
        {
          v2558 = a17;
          if (a12)
          {
            v2559 = a16;
            v2560 = a15;
            v2561 = a13;
            v2562 = a11;
            v2563 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2560, a3, a4 + a9 * v2559, a5, a6, a7, a8, v2563, v2562, v2561, v2558);
              v2563 = a10;
              v2562 = a11;
              v2561 = a13;
              v2560 = a15;
              v2559 = a16;
              v2558 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1544 = a17;
          if (!v1024 && a12)
          {
            v1545 = a16;
            v1546 = a15;
            v1547 = a13;
            v1548 = a11;
            v1549 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1546, a3, a4 + a9 * v1545, a5, a6, a7, a8, v1549, v1548, v1547, v1544);
              v1549 = a10;
              v1548 = a11;
              v1547 = a13;
              v1546 = a15;
              v1545 = a16;
              v1544 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 301:
        v2668 = *(a1 + 396);
        v926 = getCompressionCodecConfig(*(a1 + 56));
        if (v2668 == 1)
        {
          if (v926 == 4)
          {
            v2384 = a17;
            if (a12)
            {
              v2385 = a16;
              v2386 = a15;
              v2387 = a13;
              v2388 = a11;
              v2389 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2386, a3, a4 + a9 * v2385, a5, a6, a7, a8, v2389, v2388, v2387, v2384);
                v2389 = a10;
                v2388 = a11;
                v2387 = a13;
                v2386 = a15;
                v2385 = a16;
                v2384 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v927 = a17;
            if (!v926 && a12)
            {
              v928 = a16;
              v929 = a15;
              v930 = a13;
              v931 = a11;
              v932 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v929, a3, a4 + a9 * v928, a5, a6, a7, a8, v932, v931, v930, v927);
                v932 = a10;
                v931 = a11;
                v930 = a13;
                v929 = a15;
                v928 = a16;
                v927 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v926 == 4)
        {
          v2390 = a17;
          if (a12)
          {
            v2391 = a16;
            v2392 = a15;
            v2393 = a13;
            v2394 = a11;
            v2395 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2392, a3, a4 + a9 * v2391, a5, a6, a7, a8, v2395, v2394, v2393, v2390);
              v2395 = a10;
              v2394 = a11;
              v2393 = a13;
              v2392 = a15;
              v2391 = a16;
              v2390 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1460 = a17;
          if (!v926 && a12)
          {
            v1461 = a16;
            v1462 = a15;
            v1463 = a13;
            v1464 = a11;
            v1465 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1462, a3, a4 + a9 * v1461, a5, a6, a7, a8, v1465, v1464, v1463, v1460);
              v1465 = a10;
              v1464 = a11;
              v1463 = a13;
              v1462 = a15;
              v1461 = a16;
              v1460 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 302:
        v2669 = *(a1 + 396);
        v933 = getCompressionCodecConfig(*(a1 + 56));
        if (v2669 == 1)
        {
          if (v933 == 4)
          {
            v2396 = a17;
            if (a12)
            {
              v2397 = a16;
              v2398 = a15;
              v2399 = a13;
              v2400 = a11;
              v2401 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2398, a3, a4 + a9 * v2397, a5, a6, a7, a8, v2401, v2400, v2399, v2396);
                v2401 = a10;
                v2400 = a11;
                v2399 = a13;
                v2398 = a15;
                v2397 = a16;
                v2396 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v934 = a17;
            if (!v933 && a12)
            {
              v935 = a16;
              v936 = a15;
              v937 = a13;
              v938 = a11;
              v939 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v936, a3, a4 + a9 * v935, a5, a6, a7, a8, v939, v938, v937, v934);
                v939 = a10;
                v938 = a11;
                v937 = a13;
                v936 = a15;
                v935 = a16;
                v934 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v933 == 4)
        {
          v2402 = a17;
          if (a12)
          {
            v2403 = a16;
            v2404 = a15;
            v2405 = a13;
            v2406 = a11;
            v2407 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2404, a3, a4 + a9 * v2403, a5, a6, a7, a8, v2407, v2406, v2405, v2402);
              v2407 = a10;
              v2406 = a11;
              v2405 = a13;
              v2404 = a15;
              v2403 = a16;
              v2402 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1466 = a17;
          if (!v933 && a12)
          {
            v1467 = a16;
            v1468 = a15;
            v1469 = a13;
            v1470 = a11;
            v1471 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1468, a3, a4 + a9 * v1467, a5, a6, a7, a8, v1471, v1470, v1469, v1466);
              v1471 = a10;
              v1470 = a11;
              v1469 = a13;
              v1468 = a15;
              v1467 = a16;
              v1466 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 303:
        v2624 = *(a1 + 396);
        v618 = getCompressionCodecConfig(*(a1 + 56));
        if (v2624 == 1)
        {
          if (v618 == 4)
          {
            v1844 = a17;
            if (a12)
            {
              v1845 = a16;
              v1846 = a15;
              v1847 = a13;
              v1848 = a11;
              v1849 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1846, a3, a4 + a9 * v1845, a5, a6, a7, a8, v1849, v1848, v1847, v1844);
                v1849 = a10;
                v1848 = a11;
                v1847 = a13;
                v1846 = a15;
                v1845 = a16;
                v1844 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v619 = a17;
            if (!v618 && a12)
            {
              v620 = a16;
              v621 = a15;
              v622 = a13;
              v623 = a11;
              v624 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v621, a3, a4 + a9 * v620, a5, a6, a7, a8, v624, v623, v622, v619);
                v624 = a10;
                v623 = a11;
                v622 = a13;
                v621 = a15;
                v620 = a16;
                v619 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v618 == 4)
        {
          v1850 = a17;
          if (a12)
          {
            v1851 = a16;
            v1852 = a15;
            v1853 = a13;
            v1854 = a11;
            v1855 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1852, a3, a4 + a9 * v1851, a5, a6, a7, a8, v1855, v1854, v1853, v1850);
              v1855 = a10;
              v1854 = a11;
              v1853 = a13;
              v1852 = a15;
              v1851 = a16;
              v1850 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1190 = a17;
          if (!v618 && a12)
          {
            v1191 = a16;
            v1192 = a15;
            v1193 = a13;
            v1194 = a11;
            v1195 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1192, a3, a4 + a9 * v1191, a5, a6, a7, a8, v1195, v1194, v1193, v1190);
              v1195 = a10;
              v1194 = a11;
              v1193 = a13;
              v1192 = a15;
              v1191 = a16;
              v1190 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 304:
        v2673 = *(a1 + 396);
        v961 = getCompressionCodecConfig(*(a1 + 56));
        if (v2673 == 1)
        {
          if (v961 == 4)
          {
            v2444 = a17;
            if (a12)
            {
              v2445 = a16;
              v2446 = a15;
              v2447 = a13;
              v2448 = a11;
              v2449 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2446, a3, a4 + a9 * v2445, a5, a6, a7, a8, v2449, v2448, v2447, v2444);
                v2449 = a10;
                v2448 = a11;
                v2447 = a13;
                v2446 = a15;
                v2445 = a16;
                v2444 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v962 = a17;
            if (!v961 && a12)
            {
              v963 = a16;
              v964 = a15;
              v965 = a13;
              v966 = a11;
              v967 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v964, a3, a4 + a9 * v963, a5, a6, a7, a8, v967, v966, v965, v962);
                v967 = a10;
                v966 = a11;
                v965 = a13;
                v964 = a15;
                v963 = a16;
                v962 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v961 == 4)
        {
          v2450 = a17;
          if (a12)
          {
            v2451 = a16;
            v2452 = a15;
            v2453 = a13;
            v2454 = a11;
            v2455 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2452, a3, a4 + a9 * v2451, a5, a6, a7, a8, v2455, v2454, v2453, v2450);
              v2455 = a10;
              v2454 = a11;
              v2453 = a13;
              v2452 = a15;
              v2451 = a16;
              v2450 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1490 = a17;
          if (!v961 && a12)
          {
            v1491 = a16;
            v1492 = a15;
            v1493 = a13;
            v1494 = a11;
            v1495 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1492, a3, a4 + a9 * v1491, a5, a6, a7, a8, v1495, v1494, v1493, v1490);
              v1495 = a10;
              v1494 = a11;
              v1493 = a13;
              v1492 = a15;
              v1491 = a16;
              v1490 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 313:
        v2605 = *(a1 + 396);
        v485 = getCompressionCodecConfig(*(a1 + 56));
        if (v2605 == 1)
        {
          if (v485 == 4)
          {
            v1616 = a17;
            if (a12)
            {
              v1617 = a16;
              v1618 = a15;
              v1619 = a13;
              v1620 = a11;
              v1621 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1618, a3, a4 + a9 * v1617, a5, a6, a7, a8, v1621, v1620, v1619, v1616);
                v1621 = a10;
                v1620 = a11;
                v1619 = a13;
                v1618 = a15;
                v1617 = a16;
                v1616 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v486 = a17;
            if (!v485 && a12)
            {
              v487 = a16;
              v488 = a15;
              v489 = a13;
              v490 = a11;
              v491 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v488, a3, a4 + a9 * v487, a5, a6, a7, a8, v491, v490, v489, v486);
                v491 = a10;
                v490 = a11;
                v489 = a13;
                v488 = a15;
                v487 = a16;
                v486 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v485 == 4)
        {
          v1622 = a17;
          if (a12)
          {
            v1623 = a16;
            v1624 = a15;
            v1625 = a13;
            v1626 = a11;
            v1627 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1624, a3, a4 + a9 * v1623, a5, a6, a7, a8, v1627, v1626, v1625, v1622);
              v1627 = a10;
              v1626 = a11;
              v1625 = a13;
              v1624 = a15;
              v1623 = a16;
              v1622 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1076 = a17;
          if (!v485 && a12)
          {
            v1077 = a16;
            v1078 = a15;
            v1079 = a13;
            v1080 = a11;
            v1081 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1078, a3, a4 + a9 * v1077, a5, a6, a7, a8, v1081, v1080, v1079, v1076);
              v1081 = a10;
              v1080 = a11;
              v1079 = a13;
              v1078 = a15;
              v1077 = a16;
              v1076 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 314:
        v2678 = *(a1 + 396);
        v996 = getCompressionCodecConfig(*(a1 + 56));
        if (v2678 == 1)
        {
          if (v996 == 4)
          {
            v2504 = a17;
            if (a12)
            {
              v2505 = a16;
              v2506 = a15;
              v2507 = a13;
              v2508 = a11;
              v2509 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2506, a3, a4 + a9 * v2505, a5, a6, a7, a8, v2509, v2508, v2507, v2504);
                v2509 = a10;
                v2508 = a11;
                v2507 = a13;
                v2506 = a15;
                v2505 = a16;
                v2504 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v997 = a17;
            if (!v996 && a12)
            {
              v998 = a16;
              v999 = a15;
              v1000 = a13;
              v1001 = a11;
              v1002 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v999, a3, a4 + a9 * v998, a5, a6, a7, a8, v1002, v1001, v1000, v997);
                v1002 = a10;
                v1001 = a11;
                v1000 = a13;
                v999 = a15;
                v998 = a16;
                v997 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v996 == 4)
        {
          v2510 = a17;
          if (a12)
          {
            v2511 = a16;
            v2512 = a15;
            v2513 = a13;
            v2514 = a11;
            v2515 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2512, a3, a4 + a9 * v2511, a5, a6, a7, a8, v2515, v2514, v2513, v2510);
              v2515 = a10;
              v2514 = a11;
              v2513 = a13;
              v2512 = a15;
              v2511 = a16;
              v2510 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1520 = a17;
          if (!v996 && a12)
          {
            v1521 = a16;
            v1522 = a15;
            v1523 = a13;
            v1524 = a11;
            v1525 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1522, a3, a4 + a9 * v1521, a5, a6, a7, a8, v1525, v1524, v1523, v1520);
              v1525 = a10;
              v1524 = a11;
              v1523 = a13;
              v1522 = a15;
              v1521 = a16;
              v1520 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 315:
        v2680 = *(a1 + 396);
        v1010 = getCompressionCodecConfig(*(a1 + 56));
        if (v2680 == 1)
        {
          if (v1010 == 4)
          {
            v2528 = a17;
            if (a12)
            {
              v2529 = a16;
              v2530 = a15;
              v2531 = a13;
              v2532 = a11;
              v2533 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2530, a3, a4 + a9 * v2529, a5, a6, a7, a8, v2533, v2532, v2531, v2528);
                v2533 = a10;
                v2532 = a11;
                v2531 = a13;
                v2530 = a15;
                v2529 = a16;
                v2528 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1011 = a17;
            if (!v1010 && a12)
            {
              v1012 = a16;
              v1013 = a15;
              v1014 = a13;
              v1015 = a11;
              v1016 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1013, a3, a4 + a9 * v1012, a5, a6, a7, a8, v1016, v1015, v1014, v1011);
                v1016 = a10;
                v1015 = a11;
                v1014 = a13;
                v1013 = a15;
                v1012 = a16;
                v1011 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1010 == 4)
        {
          v2534 = a17;
          if (a12)
          {
            v2535 = a16;
            v2536 = a15;
            v2537 = a13;
            v2538 = a11;
            v2539 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2536, a3, a4 + a9 * v2535, a5, a6, a7, a8, v2539, v2538, v2537, v2534);
              v2539 = a10;
              v2538 = a11;
              v2537 = a13;
              v2536 = a15;
              v2535 = a16;
              v2534 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1532 = a17;
          if (!v1010 && a12)
          {
            v1533 = a16;
            v1534 = a15;
            v1535 = a13;
            v1536 = a11;
            v1537 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1534, a3, a4 + a9 * v1533, a5, a6, a7, a8, v1537, v1536, v1535, v1532);
              v1537 = a10;
              v1536 = a11;
              v1535 = a13;
              v1534 = a15;
              v1533 = a16;
              v1532 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 323:
        v2639 = *(a1 + 396);
        v723 = getCompressionCodecConfig(*(a1 + 56));
        if (v2639 == 1)
        {
          if (v723 == 4)
          {
            v2024 = a17;
            if (a12)
            {
              v2025 = a16;
              v2026 = a15;
              v2027 = a13;
              v2028 = a11;
              v2029 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2026, a3, a4 + a9 * v2025, a5, a6, a7, a8, v2029, v2028, v2027, v2024);
                v2029 = a10;
                v2028 = a11;
                v2027 = a13;
                v2026 = a15;
                v2025 = a16;
                v2024 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v724 = a17;
            if (!v723 && a12)
            {
              v725 = a16;
              v726 = a15;
              v727 = a13;
              v728 = a11;
              v729 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v726, a3, a4 + a9 * v725, a5, a6, a7, a8, v729, v728, v727, v724);
                v729 = a10;
                v728 = a11;
                v727 = a13;
                v726 = a15;
                v725 = a16;
                v724 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v723 == 4)
        {
          v2030 = a17;
          if (a12)
          {
            v2031 = a16;
            v2032 = a15;
            v2033 = a13;
            v2034 = a11;
            v2035 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2032, a3, a4 + a9 * v2031, a5, a6, a7, a8, v2035, v2034, v2033, v2030);
              v2035 = a10;
              v2034 = a11;
              v2033 = a13;
              v2032 = a15;
              v2031 = a16;
              v2030 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1280 = a17;
          if (!v723 && a12)
          {
            v1281 = a16;
            v1282 = a15;
            v1283 = a13;
            v1284 = a11;
            v1285 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1282, a3, a4 + a9 * v1281, a5, a6, a7, a8, v1285, v1284, v1283, v1280);
              v1285 = a10;
              v1284 = a11;
              v1283 = a13;
              v1282 = a15;
              v1281 = a16;
              v1280 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 324:
        v2683 = *(a1 + 396);
        v1031 = getCompressionCodecConfig(*(a1 + 56));
        if (v2683 == 1)
        {
          if (v1031 == 4)
          {
            v2564 = a17;
            if (a12)
            {
              v2565 = a16;
              v2566 = a15;
              v2567 = a13;
              v2568 = a11;
              v2569 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2566, a3, a4 + a9 * v2565, a5, a6, a7, a8, v2569, v2568, v2567, v2564);
                v2569 = a10;
                v2568 = a11;
                v2567 = a13;
                v2566 = a15;
                v2565 = a16;
                v2564 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1032 = a17;
            if (!v1031 && a12)
            {
              v1033 = a16;
              v1034 = a15;
              v1035 = a13;
              v1036 = a11;
              v1037 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1034, a3, a4 + a9 * v1033, a5, a6, a7, a8, v1037, v1036, v1035, v1032);
                v1037 = a10;
                v1036 = a11;
                v1035 = a13;
                v1034 = a15;
                v1033 = a16;
                v1032 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1031 == 4)
        {
          v2570 = a17;
          if (a12)
          {
            v2571 = a16;
            v2572 = a15;
            v2573 = a13;
            v2574 = a11;
            v2575 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2572, a3, a4 + a9 * v2571, a5, a6, a7, a8, v2575, v2574, v2573, v2570);
              v2575 = a10;
              v2574 = a11;
              v2573 = a13;
              v2572 = a15;
              v2571 = a16;
              v2570 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1550 = a17;
          if (!v1031 && a12)
          {
            v1551 = a16;
            v1552 = a15;
            v1553 = a13;
            v1554 = a11;
            v1555 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1552, a3, a4 + a9 * v1551, a5, a6, a7, a8, v1555, v1554, v1553, v1550);
              v1555 = a10;
              v1554 = a11;
              v1553 = a13;
              v1552 = a15;
              v1551 = a16;
              v1550 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 325:
        v2670 = *(a1 + 396);
        v940 = getCompressionCodecConfig(*(a1 + 56));
        if (v2670 == 1)
        {
          if (v940 == 4)
          {
            v2408 = a17;
            if (a12)
            {
              v2409 = a16;
              v2410 = a15;
              v2411 = a13;
              v2412 = a11;
              v2413 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2410, a3, a4 + a9 * v2409, a5, a6, a7, a8, v2413, v2412, v2411, v2408);
                v2413 = a10;
                v2412 = a11;
                v2411 = a13;
                v2410 = a15;
                v2409 = a16;
                v2408 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v941 = a17;
            if (!v940 && a12)
            {
              v942 = a16;
              v943 = a15;
              v944 = a13;
              v945 = a11;
              v946 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v943, a3, a4 + a9 * v942, a5, a6, a7, a8, v946, v945, v944, v941);
                v946 = a10;
                v945 = a11;
                v944 = a13;
                v943 = a15;
                v942 = a16;
                v941 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v940 == 4)
        {
          v2414 = a17;
          if (a12)
          {
            v2415 = a16;
            v2416 = a15;
            v2417 = a13;
            v2418 = a11;
            v2419 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2416, a3, a4 + a9 * v2415, a5, a6, a7, a8, v2419, v2418, v2417, v2414);
              v2419 = a10;
              v2418 = a11;
              v2417 = a13;
              v2416 = a15;
              v2415 = a16;
              v2414 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1472 = a17;
          if (!v940 && a12)
          {
            v1473 = a16;
            v1474 = a15;
            v1475 = a13;
            v1476 = a11;
            v1477 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1474, a3, a4 + a9 * v1473, a5, a6, a7, a8, v1477, v1476, v1475, v1472);
              v1477 = a10;
              v1476 = a11;
              v1475 = a13;
              v1474 = a15;
              v1473 = a16;
              v1472 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 552:
        v2607 = *(a1 + 396);
        v499 = getCompressionCodecConfig(*(a1 + 56));
        if (v2607 == 1)
        {
          if (v499 == 4)
          {
            v1640 = a17;
            if (a12)
            {
              v1641 = a16;
              v1642 = a15;
              v1643 = a13;
              v1644 = a11;
              v1645 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1642, a3, a4 + a9 * v1641, a5, a6, a7, a8, v1645, v1644, v1643, v1640);
                v1645 = a10;
                v1644 = a11;
                v1643 = a13;
                v1642 = a15;
                v1641 = a16;
                v1640 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v500 = a17;
            if (!v499 && a12)
            {
              v501 = a16;
              v502 = a15;
              v503 = a13;
              v504 = a11;
              v505 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v502, a3, a4 + a9 * v501, a5, a6, a7, a8, v505, v504, v503, v500);
                v505 = a10;
                v504 = a11;
                v503 = a13;
                v502 = a15;
                v501 = a16;
                v500 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v499 == 4)
        {
          v1646 = a17;
          if (a12)
          {
            v1647 = a16;
            v1648 = a15;
            v1649 = a13;
            v1650 = a11;
            v1651 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1648, a3, a4 + a9 * v1647, a5, a6, a7, a8, v1651, v1650, v1649, v1646);
              v1651 = a10;
              v1650 = a11;
              v1649 = a13;
              v1648 = a15;
              v1647 = a16;
              v1646 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1088 = a17;
          if (!v499 && a12)
          {
            v1089 = a16;
            v1090 = a15;
            v1091 = a13;
            v1092 = a11;
            v1093 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1090, a3, a4 + a9 * v1089, a5, a6, a7, a8, v1093, v1092, v1091, v1088);
              v1093 = a10;
              v1092 = a11;
              v1091 = a13;
              v1090 = a15;
              v1089 = a16;
              v1088 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 553:
        v2622 = *(a1 + 396);
        v604 = getCompressionCodecConfig(*(a1 + 56));
        if (v2622 == 1)
        {
          if (v604 == 4)
          {
            v1820 = a17;
            if (a12)
            {
              v1821 = a16;
              v1822 = a15;
              v1823 = a13;
              v1824 = a11;
              v1825 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1822, a3, a4 + a9 * v1821, a5, a6, a7, a8, v1825, v1824, v1823, v1820);
                v1825 = a10;
                v1824 = a11;
                v1823 = a13;
                v1822 = a15;
                v1821 = a16;
                v1820 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v605 = a17;
            if (!v604 && a12)
            {
              v606 = a16;
              v607 = a15;
              v608 = a13;
              v609 = a11;
              v610 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v607, a3, a4 + a9 * v606, a5, a6, a7, a8, v610, v609, v608, v605);
                v610 = a10;
                v609 = a11;
                v608 = a13;
                v607 = a15;
                v606 = a16;
                v605 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v604 == 4)
        {
          v1826 = a17;
          if (a12)
          {
            v1827 = a16;
            v1828 = a15;
            v1829 = a13;
            v1830 = a11;
            v1831 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1828, a3, a4 + a9 * v1827, a5, a6, a7, a8, v1831, v1830, v1829, v1826);
              v1831 = a10;
              v1830 = a11;
              v1829 = a13;
              v1828 = a15;
              v1827 = a16;
              v1826 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1178 = a17;
          if (!v604 && a12)
          {
            v1179 = a16;
            v1180 = a15;
            v1181 = a13;
            v1182 = a11;
            v1183 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1180, a3, a4 + a9 * v1179, a5, a6, a7, a8, v1183, v1182, v1181, v1178);
              v1183 = a10;
              v1182 = a11;
              v1181 = a13;
              v1180 = a15;
              v1179 = a16;
              v1178 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 554:
        v2658 = *(a1 + 396);
        v856 = getCompressionCodecConfig(*(a1 + 56));
        if (v2658 == 1)
        {
          if (v856 == 4)
          {
            v2264 = a17;
            if (a12)
            {
              v2265 = a16;
              v2266 = a15;
              v2267 = a13;
              v2268 = a11;
              v2269 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2266, a3, a4 + a9 * v2265, a5, a6, a7, a8, v2269, v2268, v2267, v2264);
                v2269 = a10;
                v2268 = a11;
                v2267 = a13;
                v2266 = a15;
                v2265 = a16;
                v2264 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v857 = a17;
            if (!v856 && a12)
            {
              v858 = a16;
              v859 = a15;
              v860 = a13;
              v861 = a11;
              v862 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v859, a3, a4 + a9 * v858, a5, a6, a7, a8, v862, v861, v860, v857);
                v862 = a10;
                v861 = a11;
                v860 = a13;
                v859 = a15;
                v858 = a16;
                v857 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v856 == 4)
        {
          v2270 = a17;
          if (a12)
          {
            v2271 = a16;
            v2272 = a15;
            v2273 = a13;
            v2274 = a11;
            v2275 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2272, a3, a4 + a9 * v2271, a5, a6, a7, a8, v2275, v2274, v2273, v2270);
              v2275 = a10;
              v2274 = a11;
              v2273 = a13;
              v2272 = a15;
              v2271 = a16;
              v2270 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1400 = a17;
          if (!v856 && a12)
          {
            v1401 = a16;
            v1402 = a15;
            v1403 = a13;
            v1404 = a11;
            v1405 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1402, a3, a4 + a9 * v1401, a5, a6, a7, a8, v1405, v1404, v1403, v1400);
              v1405 = a10;
              v1404 = a11;
              v1403 = a13;
              v1402 = a15;
              v1401 = a16;
              v1400 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 555:
        v2608 = *(a1 + 396);
        v506 = getCompressionCodecConfig(*(a1 + 56));
        if (v2608 == 1)
        {
          if (v506 == 4)
          {
            v1652 = a17;
            if (a12)
            {
              v1653 = a16;
              v1654 = a15;
              v1655 = a13;
              v1656 = a11;
              v1657 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1654, a3, a4 + a9 * v1653, a5, a6, a7, a8, v1657, v1656, v1655, v1652);
                v1657 = a10;
                v1656 = a11;
                v1655 = a13;
                v1654 = a15;
                v1653 = a16;
                v1652 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v507 = a17;
            if (!v506 && a12)
            {
              v508 = a16;
              v509 = a15;
              v510 = a13;
              v511 = a11;
              v512 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v509, a3, a4 + a9 * v508, a5, a6, a7, a8, v512, v511, v510, v507);
                v512 = a10;
                v511 = a11;
                v510 = a13;
                v509 = a15;
                v508 = a16;
                v507 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v506 == 4)
        {
          v1658 = a17;
          if (a12)
          {
            v1659 = a16;
            v1660 = a15;
            v1661 = a13;
            v1662 = a11;
            v1663 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1660, a3, a4 + a9 * v1659, a5, a6, a7, a8, v1663, v1662, v1661, v1658);
              v1663 = a10;
              v1662 = a11;
              v1661 = a13;
              v1660 = a15;
              v1659 = a16;
              v1658 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1094 = a17;
          if (!v506 && a12)
          {
            v1095 = a16;
            v1096 = a15;
            v1097 = a13;
            v1098 = a11;
            v1099 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1096, a3, a4 + a9 * v1095, a5, a6, a7, a8, v1099, v1098, v1097, v1094);
              v1099 = a10;
              v1098 = a11;
              v1097 = a13;
              v1096 = a15;
              v1095 = a16;
              v1094 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 556:
        v2685 = *(a1 + 396);
        v1045 = getCompressionCodecConfig(*(a1 + 56));
        if (v2685 == 1)
        {
          if (v1045 == 4)
          {
            v2588 = a17;
            if (a12)
            {
              v2589 = a16;
              v2590 = a15;
              v2591 = a13;
              v2592 = a11;
              v2593 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2590, a3, a4 + a9 * v2589, a5, a6, a7, a8, v2593, v2592, v2591, v2588);
                v2593 = a10;
                v2592 = a11;
                v2591 = a13;
                v2590 = a15;
                v2589 = a16;
                v2588 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v1046 = a17;
            if (!v1045 && a12)
            {
              v1047 = a16;
              v1048 = a15;
              v1049 = a13;
              v1050 = a11;
              v1051 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1048, a3, a4 + a9 * v1047, a5, a6, a7, a8, v1051, v1050, v1049, v1046);
                v1051 = a10;
                v1050 = a11;
                v1049 = a13;
                v1048 = a15;
                v1047 = a16;
                v1046 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v1045 == 4)
        {
          v2594 = a17;
          if (a12)
          {
            v2595 = a16;
            v2596 = a15;
            v2597 = a13;
            v2598 = a11;
            v2599 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2596, a3, a4 + a9 * v2595, a5, a6, a7, a8, v2599, v2598, v2597, v2594);
              v2599 = a10;
              v2598 = a11;
              v2597 = a13;
              v2596 = a15;
              v2595 = a16;
              v2594 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1562 = a17;
          if (!v1045 && a12)
          {
            v1563 = a16;
            v1564 = a15;
            v1565 = a13;
            v1566 = a11;
            v1567 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1564, a3, a4 + a9 * v1563, a5, a6, a7, a8, v1567, v1566, v1565, v1562);
              v1567 = a10;
              v1566 = a11;
              v1565 = a13;
              v1564 = a15;
              v1563 = a16;
              v1562 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 586:
        v2604 = *(a1 + 396);
        v478 = getCompressionCodecConfig(*(a1 + 56));
        if (v2604 == 1)
        {
          if (v478 == 4)
          {
            v1604 = a17;
            if (a12)
            {
              v1605 = a16;
              v1606 = a15;
              v1607 = a13;
              v1608 = a11;
              v1609 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1606, a3, a4 + a9 * v1605, a5, a6, a7, a8, v1609, v1608, v1607, v1604);
                v1609 = a10;
                v1608 = a11;
                v1607 = a13;
                v1606 = a15;
                v1605 = a16;
                v1604 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v479 = a17;
            if (!v478 && a12)
            {
              v480 = a16;
              v481 = a15;
              v482 = a13;
              v483 = a11;
              v484 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v481, a3, a4 + a9 * v480, a5, a6, a7, a8, v484, v483, v482, v479);
                v484 = a10;
                v483 = a11;
                v482 = a13;
                v481 = a15;
                v480 = a16;
                v479 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v478 == 4)
        {
          v1610 = a17;
          if (a12)
          {
            v1611 = a16;
            v1612 = a15;
            v1613 = a13;
            v1614 = a11;
            v1615 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1612, a3, a4 + a9 * v1611, a5, a6, a7, a8, v1615, v1614, v1613, v1610);
              v1615 = a10;
              v1614 = a11;
              v1613 = a13;
              v1612 = a15;
              v1611 = a16;
              v1610 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1070 = a17;
          if (!v478 && a12)
          {
            v1071 = a16;
            v1072 = a15;
            v1073 = a13;
            v1074 = a11;
            v1075 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1072, a3, a4 + a9 * v1071, a5, a6, a7, a8, v1075, v1074, v1073, v1070);
              v1075 = a10;
              v1074 = a11;
              v1073 = a13;
              v1072 = a15;
              v1071 = a16;
              v1070 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 587:
        v2629 = *(a1 + 396);
        v653 = getCompressionCodecConfig(*(a1 + 56));
        if (v2629 == 1)
        {
          if (v653 == 4)
          {
            v1904 = a17;
            if (a12)
            {
              v1905 = a16;
              v1906 = a15;
              v1907 = a13;
              v1908 = a11;
              v1909 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1906, a3, a4 + a9 * v1905, a5, a6, a7, a8, v1909, v1908, v1907, v1904);
                v1909 = a10;
                v1908 = a11;
                v1907 = a13;
                v1906 = a15;
                v1905 = a16;
                v1904 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v654 = a17;
            if (!v653 && a12)
            {
              v655 = a16;
              v656 = a15;
              v657 = a13;
              v658 = a11;
              v659 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v656, a3, a4 + a9 * v655, a5, a6, a7, a8, v659, v658, v657, v654);
                v659 = a10;
                v658 = a11;
                v657 = a13;
                v656 = a15;
                v655 = a16;
                v654 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v653 == 4)
        {
          v1910 = a17;
          if (a12)
          {
            v1911 = a16;
            v1912 = a15;
            v1913 = a13;
            v1914 = a11;
            v1915 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1912, a3, a4 + a9 * v1911, a5, a6, a7, a8, v1915, v1914, v1913, v1910);
              v1915 = a10;
              v1914 = a11;
              v1913 = a13;
              v1912 = a15;
              v1911 = a16;
              v1910 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1220 = a17;
          if (!v653 && a12)
          {
            v1221 = a16;
            v1222 = a15;
            v1223 = a13;
            v1224 = a11;
            v1225 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1222, a3, a4 + a9 * v1221, a5, a6, a7, a8, v1225, v1224, v1223, v1220);
              v1225 = a10;
              v1224 = a11;
              v1223 = a13;
              v1222 = a15;
              v1221 = a16;
              v1220 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 628:
        v2602 = *(a1 + 396);
        v464 = getCompressionCodecConfig(*(a1 + 56));
        if (v2602 == 1)
        {
          if (v464 == 4)
          {
            v1580 = a17;
            if (a12)
            {
              v1581 = a16;
              v1582 = a15;
              v1583 = a13;
              v1584 = a11;
              v1585 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1582, a3, a4 + a9 * v1581, a5, a6, a7, a8, v1585, v1584, v1583, v1580);
                v1585 = a10;
                v1584 = a11;
                v1583 = a13;
                v1582 = a15;
                v1581 = a16;
                v1580 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v465 = a17;
            if (!v464 && a12)
            {
              v466 = a16;
              v467 = a15;
              v468 = a13;
              v469 = a11;
              v470 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v467, a3, a4 + a9 * v466, a5, a6, a7, a8, v470, v469, v468, v465);
                v470 = a10;
                v469 = a11;
                v468 = a13;
                v467 = a15;
                v466 = a16;
                v465 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v464 == 4)
        {
          v1586 = a17;
          if (a12)
          {
            v1587 = a16;
            v1588 = a15;
            v1589 = a13;
            v1590 = a11;
            v1591 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1588, a3, a4 + a9 * v1587, a5, a6, a7, a8, v1591, v1590, v1589, v1586);
              v1591 = a10;
              v1590 = a11;
              v1589 = a13;
              v1588 = a15;
              v1587 = a16;
              v1586 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1058 = a17;
          if (!v464 && a12)
          {
            v1059 = a16;
            v1060 = a15;
            v1061 = a13;
            v1062 = a11;
            v1063 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1060, a3, a4 + a9 * v1059, a5, a6, a7, a8, v1063, v1062, v1061, v1058);
              v1063 = a10;
              v1062 = a11;
              v1061 = a13;
              v1060 = a15;
              v1059 = a16;
              v1058 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 629:
        v2603 = *(a1 + 396);
        v471 = getCompressionCodecConfig(*(a1 + 56));
        if (v2603 == 1)
        {
          if (v471 == 4)
          {
            v1592 = a17;
            if (a12)
            {
              v1593 = a16;
              v1594 = a15;
              v1595 = a13;
              v1596 = a11;
              v1597 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1594, a3, a4 + a9 * v1593, a5, a6, a7, a8, v1597, v1596, v1595, v1592);
                v1597 = a10;
                v1596 = a11;
                v1595 = a13;
                v1594 = a15;
                v1593 = a16;
                v1592 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v472 = a17;
            if (!v471 && a12)
            {
              v473 = a16;
              v474 = a15;
              v475 = a13;
              v476 = a11;
              v477 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v474, a3, a4 + a9 * v473, a5, a6, a7, a8, v477, v476, v475, v472);
                v477 = a10;
                v476 = a11;
                v475 = a13;
                v474 = a15;
                v473 = a16;
                v472 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v471 == 4)
        {
          v1598 = a17;
          if (a12)
          {
            v1599 = a16;
            v1600 = a15;
            v1601 = a13;
            v1602 = a11;
            v1603 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1600, a3, a4 + a9 * v1599, a5, a6, a7, a8, v1603, v1602, v1601, v1598);
              v1603 = a10;
              v1602 = a11;
              v1601 = a13;
              v1600 = a15;
              v1599 = a16;
              v1598 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1064 = a17;
          if (!v471 && a12)
          {
            v1065 = a16;
            v1066 = a15;
            v1067 = a13;
            v1068 = a11;
            v1069 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1066, a3, a4 + a9 * v1065, a5, a6, a7, a8, v1069, v1068, v1067, v1064);
              v1069 = a10;
              v1068 = a11;
              v1067 = a13;
              v1066 = a15;
              v1065 = a16;
              v1064 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 637:
        v2617 = *(a1 + 396);
        v569 = getCompressionCodecConfig(*(a1 + 56));
        if (v2617 == 1)
        {
          if (v569 == 4)
          {
            v1760 = a17;
            if (a12)
            {
              v1761 = a16;
              v1762 = a15;
              v1763 = a13;
              v1764 = a11;
              v1765 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1762, a3, a4 + a9 * v1761, a5, a6, a7, a8, v1765, v1764, v1763, v1760);
                v1765 = a10;
                v1764 = a11;
                v1763 = a13;
                v1762 = a15;
                v1761 = a16;
                v1760 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v570 = a17;
            if (!v569 && a12)
            {
              v571 = a16;
              v572 = a15;
              v573 = a13;
              v574 = a11;
              v575 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v572, a3, a4 + a9 * v571, a5, a6, a7, a8, v575, v574, v573, v570);
                v575 = a10;
                v574 = a11;
                v573 = a13;
                v572 = a15;
                v571 = a16;
                v570 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v569 == 4)
        {
          v1766 = a17;
          if (a12)
          {
            v1767 = a16;
            v1768 = a15;
            v1769 = a13;
            v1770 = a11;
            v1771 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1768, a3, a4 + a9 * v1767, a5, a6, a7, a8, v1771, v1770, v1769, v1766);
              v1771 = a10;
              v1770 = a11;
              v1769 = a13;
              v1768 = a15;
              v1767 = a16;
              v1766 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1148 = a17;
          if (!v569 && a12)
          {
            v1149 = a16;
            v1150 = a15;
            v1151 = a13;
            v1152 = a11;
            v1153 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1150, a3, a4 + a9 * v1149, a5, a6, a7, a8, v1153, v1152, v1151, v1148);
              v1153 = a10;
              v1152 = a11;
              v1151 = a13;
              v1150 = a15;
              v1149 = a16;
              v1148 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 638:
        v2659 = *(a1 + 396);
        v863 = getCompressionCodecConfig(*(a1 + 56));
        if (v2659 == 1)
        {
          if (v863 == 4)
          {
            v2276 = a17;
            if (a12)
            {
              v2277 = a16;
              v2278 = a15;
              v2279 = a13;
              v2280 = a11;
              v2281 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v2278, a3, a4 + a9 * v2277, a5, a6, a7, a8, v2281, v2280, v2279, v2276);
                v2281 = a10;
                v2280 = a11;
                v2279 = a13;
                v2278 = a15;
                v2277 = a16;
                v2276 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v864 = a17;
            if (!v863 && a12)
            {
              v865 = a16;
              v866 = a15;
              v867 = a13;
              v868 = a11;
              v869 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v866, a3, a4 + a9 * v865, a5, a6, a7, a8, v869, v868, v867, v864);
                v869 = a10;
                v868 = a11;
                v867 = a13;
                v866 = a15;
                v865 = a16;
                v864 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v863 == 4)
        {
          v2282 = a17;
          if (a12)
          {
            v2283 = a16;
            v2284 = a15;
            v2285 = a13;
            v2286 = a11;
            v2287 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v2284, a3, a4 + a9 * v2283, a5, a6, a7, a8, v2287, v2286, v2285, v2282);
              v2287 = a10;
              v2286 = a11;
              v2285 = a13;
              v2284 = a15;
              v2283 = a16;
              v2282 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1406 = a17;
          if (!v863 && a12)
          {
            v1407 = a16;
            v1408 = a15;
            v1409 = a13;
            v1410 = a11;
            v1411 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1408, a3, a4 + a9 * v1407, a5, a6, a7, a8, v1411, v1410, v1409, v1406);
              v1411 = a10;
              v1410 = a11;
              v1409 = a13;
              v1408 = a15;
              v1407 = a16;
              v1406 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 639:
        v2606 = *(a1 + 396);
        v492 = getCompressionCodecConfig(*(a1 + 56));
        if (v2606 == 1)
        {
          if (v492 == 4)
          {
            v1628 = a17;
            if (a12)
            {
              v1629 = a16;
              v1630 = a15;
              v1631 = a13;
              v1632 = a11;
              v1633 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1630, a3, a4 + a9 * v1629, a5, a6, a7, a8, v1633, v1632, v1631, v1628);
                v1633 = a10;
                v1632 = a11;
                v1631 = a13;
                v1630 = a15;
                v1629 = a16;
                v1628 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v493 = a17;
            if (!v492 && a12)
            {
              v494 = a16;
              v495 = a15;
              v496 = a13;
              v497 = a11;
              v498 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v495, a3, a4 + a9 * v494, a5, a6, a7, a8, v498, v497, v496, v493);
                v498 = a10;
                v497 = a11;
                v496 = a13;
                v495 = a15;
                v494 = a16;
                v493 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v492 == 4)
        {
          v1634 = a17;
          if (a12)
          {
            v1635 = a16;
            v1636 = a15;
            v1637 = a13;
            v1638 = a11;
            v1639 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1636, a3, a4 + a9 * v1635, a5, a6, a7, a8, v1639, v1638, v1637, v1634);
              v1639 = a10;
              v1638 = a11;
              v1637 = a13;
              v1636 = a15;
              v1635 = a16;
              v1634 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1082 = a17;
          if (!v492 && a12)
          {
            v1083 = a16;
            v1084 = a15;
            v1085 = a13;
            v1086 = a11;
            v1087 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1084, a3, a4 + a9 * v1083, a5, a6, a7, a8, v1087, v1086, v1085, v1082);
              v1087 = a10;
              v1086 = a11;
              v1085 = a13;
              v1084 = a15;
              v1083 = a16;
              v1082 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 640:
        v2614 = *(a1 + 396);
        v548 = getCompressionCodecConfig(*(a1 + 56));
        if (v2614 == 1)
        {
          if (v548 == 4)
          {
            v1724 = a17;
            if (a12)
            {
              v1725 = a16;
              v1726 = a15;
              v1727 = a13;
              v1728 = a11;
              v1729 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1726, a3, a4 + a9 * v1725, a5, a6, a7, a8, v1729, v1728, v1727, v1724);
                v1729 = a10;
                v1728 = a11;
                v1727 = a13;
                v1726 = a15;
                v1725 = a16;
                v1724 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v549 = a17;
            if (!v548 && a12)
            {
              v550 = a16;
              v551 = a15;
              v552 = a13;
              v553 = a11;
              v554 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v551, a3, a4 + a9 * v550, a5, a6, a7, a8, v554, v553, v552, v549);
                v554 = a10;
                v553 = a11;
                v552 = a13;
                v551 = a15;
                v550 = a16;
                v549 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v548 == 4)
        {
          v1730 = a17;
          if (a12)
          {
            v1731 = a16;
            v1732 = a15;
            v1733 = a13;
            v1734 = a11;
            v1735 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1732, a3, a4 + a9 * v1731, a5, a6, a7, a8, v1735, v1734, v1733, v1730);
              v1735 = a10;
              v1734 = a11;
              v1733 = a13;
              v1732 = a15;
              v1731 = a16;
              v1730 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1130 = a17;
          if (!v548 && a12)
          {
            v1131 = a16;
            v1132 = a15;
            v1133 = a13;
            v1134 = a11;
            v1135 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1132, a3, a4 + a9 * v1131, a5, a6, a7, a8, v1135, v1134, v1133, v1130);
              v1135 = a10;
              v1134 = a11;
              v1133 = a13;
              v1132 = a15;
              v1131 = a16;
              v1130 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      case 641:
        v2601 = *(a1 + 396);
        v457 = getCompressionCodecConfig(*(a1 + 56));
        if (v2601 == 1)
        {
          if (v457 == 4)
          {
            v1568 = a17;
            if (a12)
            {
              v1569 = a16;
              v1570 = a15;
              v1571 = a13;
              v1572 = a11;
              v1573 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v1570, a3, a4 + a9 * v1569, a5, a6, a7, a8, v1573, v1572, v1571, v1568);
                v1573 = a10;
                v1572 = a11;
                v1571 = a13;
                v1570 = a15;
                v1569 = a16;
                v1568 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            v458 = a17;
            if (!v457 && a12)
            {
              v459 = a16;
              v460 = a15;
              v461 = a13;
              v462 = a11;
              v463 = a10;
              do
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(a1, a2 + a9 * v460, a3, a4 + a9 * v459, a5, a6, a7, a8, v463, v462, v461, v458);
                v463 = a10;
                v462 = a11;
                v461 = a13;
                v460 = a15;
                v459 = a16;
                v458 = a17;
                ++a9;
                a3 += a14;
                --v24;
              }

              while (v24);
            }
          }
        }

        else if (v457 == 4)
        {
          v1574 = a17;
          if (a12)
          {
            v1575 = a16;
            v1576 = a15;
            v1577 = a13;
            v1578 = a11;
            v1579 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1576, a3, a4 + a9 * v1575, a5, a6, a7, a8, v1579, v1578, v1577, v1574);
              v1579 = a10;
              v1578 = a11;
              v1577 = a13;
              v1576 = a15;
              v1575 = a16;
              v1574 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        else
        {
          v1052 = a17;
          if (!v457 && a12)
          {
            v1053 = a16;
            v1054 = a15;
            v1055 = a13;
            v1056 = a11;
            v1057 = a10;
            do
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(a1, a2 + a9 * v1054, a3, a4 + a9 * v1053, a5, a6, a7, a8, v1057, v1056, v1055, v1052);
              v1057 = a10;
              v1056 = a11;
              v1055 = a13;
              v1054 = a15;
              v1053 = a16;
              v1052 = a17;
              ++a9;
              a3 += a14;
              --v24;
            }

            while (v24);
          }
        }

        break;
      default:
        return;
    }
  }
}