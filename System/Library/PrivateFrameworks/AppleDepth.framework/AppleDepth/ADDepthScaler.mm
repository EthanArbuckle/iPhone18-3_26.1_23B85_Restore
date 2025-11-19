@interface ADDepthScaler
+ (id)defaultScaler;
+ (id)scalerWithInterpThreshold:(float)a3 andNoDepthOutputValue:(float)a4;
- (int64_t)scaleDepthBuffer:(__CVBuffer *)a3 withCropRect:(CGRect)a4 toBuffer:(__CVBuffer *)a5;
- (int64_t)scaleDepthBuffer:(__CVBuffer *)a3 withZoomFactor:(float)a4 toBuffer:(__CVBuffer *)a5;
@end

@implementation ADDepthScaler

- (int64_t)scaleDepthBuffer:(__CVBuffer *)a3 withZoomFactor:(float)a4 toBuffer:(__CVBuffer *)a5
{
  if (a4 >= 1.0)
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    v12 = (vcvts_n_f32_u64(Width, 1uLL) - ((Width / a4) * 0.5));
    v13 = Height / a4;
    v14 = (vcvts_n_f32_u64(Height, 1uLL) - (v13 * 0.5));

    return [(ADDepthScaler *)self scaleDepthBuffer:a3 withCropRect:a5 toBuffer:v12, v14, (Width / a4), v13];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Zoom factor must be >= 1", v15, 2u);
    }

    return -22953;
  }
}

- (int64_t)scaleDepthBuffer:(__CVBuffer *)a3 withCropRect:(CGRect)a4 toBuffer:(__CVBuffer *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = CVPixelBufferGetWidth(a3);
  v13 = CVPixelBufferGetHeight(a3);
  v499.size.width = v12;
  v499.size.height = v13;
  v499.origin.x = 0.0;
  v499.origin.y = 0.0;
  v500.origin.x = x;
  v500.origin.y = y;
  v500.size.width = width;
  v500.size.height = height;
  if (!CGRectContainsRect(v499, v500))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22953;
    }

    LOWORD(buf.data) = 0;
    v115 = MEMORY[0x277D86220];
    v116 = "Crop rect must be within the source dimensions";
LABEL_803:
    _os_log_error_impl(&dword_2402F6000, v115, OS_LOG_TYPE_ERROR, v116, &buf, 2u);
    return -22953;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a5))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return -22953;
    }

    LOWORD(buf.data) = 0;
    v115 = MEMORY[0x277D86220];
    v116 = "Input and output buffer formats must match";
    goto LABEL_803;
  }

  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType != 1717855600)
    {
      if (PixelFormatType == 1717856627)
      {
        interpThreshold = self->_interpThreshold;
        noDepthOutputValue = self->_noDepthOutputValue;
        v17 = CVPixelBufferGetWidth(a5);
        v18 = CVPixelBufferGetHeight(a5);
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        CVPixelBufferLockBaseAddress(a5, 0);
        memset(&buf, 0, sizeof(buf));
        v19 = MEMORY[0x277CBF3A0];
        PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
        memset(&v497, 0, sizeof(v497));
        PixelBufferUtils::asVImageBuffer(a5, *v19, &v497);
        v21 = v497.height;
        if (v497.height)
        {
          v22 = v497.width;
          if (v497.width)
          {
            v23 = 0;
            v24 = width;
            v25 = v24 / v17;
            v26 = height;
            v27 = v26 / v18;
            v28 = x;
            v29 = v28 + ((1.0 - v25) * -0.5);
            data = v497.data;
            rowBytes = v497.rowBytes;
            v33 = buf.data;
            v34 = buf.width;
            v35 = buf.height;
            v36 = buf.rowBytes;
            v37 = LODWORD(buf.width) - 1;
            v38 = LODWORD(buf.height) - 1;
            while (1)
            {
              v39 = 0;
              v30 = y;
              v40 = (v30 + ((1.0 - v27) * -0.5)) + ((v27 * v23) + 0.0);
              LODWORD(v20) = llroundf(v40);
              v41 = v20 - v40;
              v42 = &v33[v36 * (v20 + 1)];
              v43 = &v33[v36 * (v20 - 1)];
              do
              {
                v45 = v29 + ((v25 * v39) + 0.0);
                LODWORD(v17) = llroundf(v45);
                if ((v17 & 0x80000000) != 0 || (v20 & 0x80000000) != 0 || (v17 < v34 ? (v46 = v20 < v35) : (v46 = 0), !v46 || ((v47 = &v33[4 * v17 + v36 * v20], v44 = *v47, v48 = *v47 & 0x7FFFFFFF, v48 <= 0x7F800000) ? (_ZF = v48 == 2139095040) : (_ZF = 1), !_ZF ? (v50 = v48 == 0) : (v50 = 1), v50)))
                {
LABEL_11:
                  v44 = noDepthOutputValue;
                  goto LABEL_12;
                }

                v51 = v17 - v45;
                if (v51 <= 0.0)
                {
                  if (v37 > v17)
                  {
                    v62 = v47[1];
                    v51 = -v51;
                    v63 = LODWORD(v62) & 0x7FFFFFFF;
                    v65 = (LODWORD(v62) & 0x7FFFFFFFu) > 0x7F800000 || v63 == 2139095040 || v63 == 0;
                    v66 = vabds_f32(v62, v44);
                    v67 = interpThreshold * fabsf(v44 * v62);
                    if (v65 || v66 > v67)
                    {
                      if (v41 > 0.0)
                      {
                        goto LABEL_56;
                      }
                    }

                    else
                    {
                      v44 = v44 + ((v62 - v44) * v51);
                      if (v41 > 0.0)
                      {
LABEL_56:
                        if (!v20)
                        {
                          goto LABEL_161;
                        }

                        v69 = &v43[4 * v17];
                        v60 = *v69;
                        v61 = v69[1];
LABEL_58:
                        v70 = LODWORD(v61) & 0x7FFFFFFF;
                        if ((LODWORD(v61) & 0x7FFFFFFFu) <= 0x7F800000 && v70 != 2139095040 && v70 != 0)
                        {
                          v73 = LODWORD(v60) & 0x7FFFFFFF;
                          if ((LODWORD(v60) & 0x7FFFFFFFu) > 0x7F800000 || v73 == 2139095040 || v73 == 0)
                          {
                            v60 = v61;
                          }

                          else if (vabds_f32(v61, v60) <= (interpThreshold * fabsf(v61 * v60)))
                          {
                            v60 = v60 + ((v61 - v60) * v51);
                          }
                        }

                        v101 = LODWORD(v60) & 0x7FFFFFFF;
                        if ((LODWORD(v60) & 0x7FFFFFFFu) <= 0x7F800000 && v101 != 2139095040 && v101 != 0)
                        {
                          v104 = LODWORD(v44) & 0x7FFFFFFF;
                          if ((LODWORD(v44) & 0x7FFFFFFFu) <= 0x7F800000 && v104 != 2139095040 && v104 != 0)
                          {
                            if (vabds_f32(v60, v44) > (interpThreshold * fabsf(v44 * v60)))
                            {
                              goto LABEL_161;
                            }

                            v83 = v60 - v44;
                            goto LABEL_139;
                          }

LABEL_157:
                          v44 = v60;
                          goto LABEL_161;
                        }

                        goto LABEL_161;
                      }
                    }

                    if (v38 <= v20)
                    {
                      goto LABEL_161;
                    }

                    v94 = &v42[4 * v17];
                    v60 = *v94;
                    v93 = v94[1];
                    goto LABEL_105;
                  }
                }

                else if (v17)
                {
                  v52 = *(v47 - 1);
                  v53 = LODWORD(v52) & 0x7FFFFFFF;
                  v55 = (LODWORD(v52) & 0x7FFFFFFFu) > 0x7F800000 || v53 == 2139095040 || v53 == 0;
                  v56 = vabds_f32(v52, v44);
                  v57 = interpThreshold * fabsf(v44 * v52);
                  if (v55 || v56 > v57)
                  {
                    if (v41 > 0.0)
                    {
                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    v44 = v44 + ((v52 - v44) * v51);
                    if (v41 > 0.0)
                    {
LABEL_41:
                      if (!v20)
                      {
                        goto LABEL_161;
                      }

                      v59 = &v43[4 * v17];
                      v61 = *(v59 - 1);
                      v60 = *v59;
                      goto LABEL_58;
                    }
                  }

                  if (v38 <= v20)
                  {
                    goto LABEL_161;
                  }

                  v92 = &v42[4 * v17];
                  v93 = *(v92 - 1);
                  v60 = *v92;
LABEL_105:
                  v95 = LODWORD(v93) & 0x7FFFFFFF;
                  if ((LODWORD(v93) & 0x7FFFFFFFu) <= 0x7F800000 && v95 != 2139095040 && v95 != 0)
                  {
                    v98 = LODWORD(v60) & 0x7FFFFFFF;
                    if ((LODWORD(v60) & 0x7FFFFFFFu) > 0x7F800000 || v98 == 2139095040 || v98 == 0)
                    {
                      v60 = v93;
                    }

                    else if (vabds_f32(v93, v60) <= (interpThreshold * fabsf(v93 * v60)))
                    {
                      v60 = v60 + ((v93 - v60) * v51);
                    }
                  }

                  v107 = LODWORD(v60) & 0x7FFFFFFF;
                  if ((LODWORD(v60) & 0x7FFFFFFFu) <= 0x7F800000 && v107 != 2139095040 && v107 != 0)
                  {
                    v110 = LODWORD(v44) & 0x7FFFFFFF;
                    if ((LODWORD(v44) & 0x7FFFFFFFu) > 0x7F800000 || v110 == 2139095040 || v110 == 0)
                    {
                      goto LABEL_157;
                    }

                    if (vabds_f32(v60, v44) <= (interpThreshold * fabsf(v44 * v60)))
                    {
                      v91 = v60 - v44;
                      goto LABEL_160;
                    }
                  }

                  goto LABEL_161;
                }

                if (v41 <= 0.0)
                {
                  if (v38 > v20)
                  {
                    v84 = *&v42[4 * v17];
                    v85 = LODWORD(v84) & 0x7FFFFFFF;
                    v86 = (LODWORD(v84) & 0x7FFFFFFFu) > 0x7F800000 || v85 == 2139095040;
                    v87 = v86 || v85 == 0;
                    v88 = vabds_f32(v84, v44);
                    v89 = interpThreshold * fabsf(v44 * v84);
                    if (!v87 && v88 <= v89)
                    {
                      v91 = v84 - v44;
LABEL_160:
                      v44 = v44 + (v91 * -v41);
                    }
                  }
                }

                else if (v20)
                {
                  v76 = *&v43[4 * v17];
                  v77 = LODWORD(v76) & 0x7FFFFFFF;
                  v78 = (LODWORD(v76) & 0x7FFFFFFFu) > 0x7F800000 || v77 == 2139095040;
                  v79 = v78 || v77 == 0;
                  v80 = vabds_f32(v76, v44);
                  v81 = interpThreshold * fabsf(v44 * v76);
                  if (!v79 && v80 <= v81)
                  {
                    v83 = v76 - v44;
LABEL_139:
                    v44 = v44 + (v83 * v41);
                  }
                }

LABEL_161:
                v17 = LODWORD(v44) & 0x7FFFFFFF;
                if ((LODWORD(v44) & 0x7FFFFFFFu) >= 0x7F800001 || v17 == 2139095040 || v17 == 0)
                {
                  goto LABEL_11;
                }

LABEL_12:
                data[v39++] = v44;
              }

              while (v22 > v39);
              ++v23;
              data = (data + rowBytes);
              if (v21 <= v23)
              {
                goto LABEL_801;
              }
            }
          }
        }

        goto LABEL_801;
      }

      goto LABEL_405;
    }

    v260 = self->_interpThreshold;
    v259 = self->_noDepthOutputValue;
    v261 = CVPixelBufferGetWidth(a5);
    v262 = CVPixelBufferGetHeight(a5);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a5, 0);
    memset(&buf, 0, sizeof(buf));
    v263 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
    memset(&v497, 0, sizeof(v497));
    PixelBufferUtils::asVImageBuffer(a5, *v263, &v497);
    v265 = v497.height;
    if (v497.height)
    {
      v266 = v497.width;
      if (v497.width)
      {
        v267 = 0;
        v268 = width;
        v269 = v268 / v261;
        v270 = height;
        v271 = v270 / v262;
        v272 = x;
        v273 = v272 + ((1.0 - v269) * -0.5);
        v275 = v497.data;
        v276 = v497.rowBytes;
        v277 = buf.data;
        v278 = buf.width;
        v279 = buf.height;
        v280 = buf.rowBytes;
        v281 = LODWORD(buf.width) - 1;
        v282 = LODWORD(buf.height) - 1;
        do
        {
          v283 = 0;
          v274 = y;
          v284 = (v274 + ((1.0 - v271) * -0.5)) + ((v271 * v267) + 0.0);
          LODWORD(v264) = llroundf(v284);
          v285 = v264 - v284;
          v286 = &v277[v280 * (v264 + 1)];
          v287 = &v277[v280 * (v264 - 1)];
          do
          {
            v289 = v273 + ((v269 * v283) + 0.0);
            LODWORD(v261) = llroundf(v289);
            if ((v261 & 0x80000000) != 0 || (v264 & 0x80000000) != 0 || (v261 < v278 ? (v290 = v264 < v279) : (v290 = 0), !v290 || ((v291 = &v277[4 * v261 + v280 * v264], v288 = *v291, v292 = *v291 & 0x7FFFFFFF, v292 <= 0x7F800000) ? (v293 = v292 == 2139095040) : (v293 = 1), !v293 ? (v294 = v292 == 0) : (v294 = 1), v294)))
            {
LABEL_413:
              v288 = v259;
              goto LABEL_414;
            }

            v295 = v261 - v289;
            if (v295 <= 0.0)
            {
              if (v281 > v261)
              {
                v305 = v291[1];
                v295 = -v295;
                v306 = LODWORD(v305) & 0x7FFFFFFF;
                v308 = (LODWORD(v305) & 0x7FFFFFFFu) > 0x7F800000 || v306 == 2139095040 || v306 == 0;
                v309 = vabds_f32(v288, v305);
                if (v308 || v309 > v260)
                {
                  if (v285 > 0.0)
                  {
                    goto LABEL_458;
                  }
                }

                else
                {
                  v288 = v288 + ((v305 - v288) * v295);
                  if (v285 > 0.0)
                  {
LABEL_458:
                    if (!v264)
                    {
                      goto LABEL_563;
                    }

                    v311 = &v287[4 * v261];
                    v303 = *v311;
                    v304 = v311[1];
LABEL_460:
                    v312 = LODWORD(v304) & 0x7FFFFFFF;
                    if ((LODWORD(v304) & 0x7FFFFFFFu) <= 0x7F800000 && v312 != 2139095040 && v312 != 0)
                    {
                      v315 = LODWORD(v303) & 0x7FFFFFFF;
                      if ((LODWORD(v303) & 0x7FFFFFFFu) > 0x7F800000 || v315 == 2139095040 || v315 == 0)
                      {
                        v303 = v304;
                      }

                      else if (vabds_f32(v303, v304) <= v260)
                      {
                        v303 = v303 + ((v304 - v303) * v295);
                      }
                    }

                    v341 = LODWORD(v303) & 0x7FFFFFFF;
                    if ((LODWORD(v303) & 0x7FFFFFFFu) <= 0x7F800000 && v341 != 2139095040 && v341 != 0)
                    {
                      v344 = LODWORD(v288) & 0x7FFFFFFF;
                      if ((LODWORD(v288) & 0x7FFFFFFFu) <= 0x7F800000 && v344 != 2139095040 && v344 != 0)
                      {
                        if (vabds_f32(v288, v303) > v260)
                        {
                          goto LABEL_563;
                        }

                        v324 = v303 - v288;
                        goto LABEL_541;
                      }

LABEL_559:
                      v288 = v303;
                      goto LABEL_563;
                    }

                    goto LABEL_563;
                  }
                }

                if (v282 <= v264)
                {
                  goto LABEL_563;
                }

                v334 = &v286[4 * v261];
                v303 = *v334;
                v333 = v334[1];
                goto LABEL_507;
              }
            }

            else if (v261)
            {
              v296 = *(v291 - 1);
              v297 = LODWORD(v296) & 0x7FFFFFFF;
              v299 = (LODWORD(v296) & 0x7FFFFFFFu) > 0x7F800000 || v297 == 2139095040 || v297 == 0;
              v300 = vabds_f32(v288, v296);
              if (v299 || v300 > v260)
              {
                if (v285 > 0.0)
                {
                  goto LABEL_443;
                }
              }

              else
              {
                v288 = v288 + ((v296 - v288) * v295);
                if (v285 > 0.0)
                {
LABEL_443:
                  if (!v264)
                  {
                    goto LABEL_563;
                  }

                  v302 = &v287[4 * v261];
                  v304 = *(v302 - 1);
                  v303 = *v302;
                  goto LABEL_460;
                }
              }

              if (v282 <= v264)
              {
                goto LABEL_563;
              }

              v332 = &v286[4 * v261];
              v333 = *(v332 - 1);
              v303 = *v332;
LABEL_507:
              v335 = LODWORD(v333) & 0x7FFFFFFF;
              if ((LODWORD(v333) & 0x7FFFFFFFu) <= 0x7F800000 && v335 != 2139095040 && v335 != 0)
              {
                v338 = LODWORD(v303) & 0x7FFFFFFF;
                if ((LODWORD(v303) & 0x7FFFFFFFu) > 0x7F800000 || v338 == 2139095040 || v338 == 0)
                {
                  v303 = v333;
                }

                else if (vabds_f32(v303, v333) <= v260)
                {
                  v303 = v303 + ((v333 - v303) * v295);
                }
              }

              v347 = LODWORD(v303) & 0x7FFFFFFF;
              if ((LODWORD(v303) & 0x7FFFFFFFu) <= 0x7F800000 && v347 != 2139095040 && v347 != 0)
              {
                v350 = LODWORD(v288) & 0x7FFFFFFF;
                if ((LODWORD(v288) & 0x7FFFFFFFu) > 0x7F800000 || v350 == 2139095040 || v350 == 0)
                {
                  goto LABEL_559;
                }

                if (vabds_f32(v288, v303) <= v260)
                {
                  v331 = v303 - v288;
                  goto LABEL_562;
                }
              }

              goto LABEL_563;
            }

            if (v285 <= 0.0)
            {
              if (v282 > v264)
              {
                v325 = *&v286[4 * v261];
                v326 = LODWORD(v325) & 0x7FFFFFFF;
                v327 = (LODWORD(v325) & 0x7FFFFFFFu) > 0x7F800000 || v326 == 2139095040;
                v328 = v327 || v326 == 0;
                v329 = vabds_f32(v288, v325);
                if (!v328 && v329 <= v260)
                {
                  v331 = v325 - v288;
LABEL_562:
                  v288 = v288 + (v331 * -v285);
                }
              }
            }

            else if (v264)
            {
              v318 = *&v287[4 * v261];
              v319 = LODWORD(v318) & 0x7FFFFFFF;
              v320 = (LODWORD(v318) & 0x7FFFFFFFu) > 0x7F800000 || v319 == 2139095040;
              v321 = v320 || v319 == 0;
              v322 = vabds_f32(v288, v318);
              if (!v321 && v322 <= v260)
              {
                v324 = v318 - v288;
LABEL_541:
                v288 = v288 + (v324 * v285);
              }
            }

LABEL_563:
            v261 = LODWORD(v288) & 0x7FFFFFFF;
            if ((LODWORD(v288) & 0x7FFFFFFFu) >= 0x7F800001 || v261 == 2139095040 || v261 == 0)
            {
              goto LABEL_413;
            }

LABEL_414:
            v275[v283++] = v288;
          }

          while (v266 > v283);
          ++v267;
          v275 = (v275 + v276);
        }

        while (v265 > v267);
      }
    }

LABEL_801:
    CVPixelBufferUnlockBaseAddress(a3, 1uLL);
    CVPixelBufferUnlockBaseAddress(a5, 0);
    return 0;
  }

  if (PixelFormatType == 1751411059)
  {
    v355 = self->_interpThreshold;
    _S13 = self->_noDepthOutputValue;
    v357 = CVPixelBufferGetWidth(a5);
    v358 = CVPixelBufferGetHeight(a5);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a5, 0);
    memset(&buf, 0, sizeof(buf));
    v359 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
    memset(&v497, 0, sizeof(v497));
    PixelBufferUtils::asVImageBuffer(a5, *v359, &v497);
    v361 = v497.height;
    if (!v497.height)
    {
      goto LABEL_801;
    }

    v362 = v497.width;
    if (!v497.width)
    {
      goto LABEL_801;
    }

    v363 = 0;
    v364 = width;
    v365 = v364 / v357;
    v366 = height;
    v367 = v366 / v358;
    v368 = x;
    v369 = v368 + ((1.0 - v365) * -0.5);
    v370 = y;
    v371 = v370 + ((1.0 - v367) * -0.5);
    v372 = v497.data;
    v373 = v497.rowBytes;
    v374 = buf.data;
    __asm { FCVT            H4, S13 }

    v376 = buf.width;
    v377 = buf.height;
    v378 = buf.rowBytes;
    v379 = LODWORD(buf.width) - 1;
    v380 = LODWORD(buf.height) - 1;
LABEL_575:
    v381 = 0;
    v382 = v371 + ((v367 * v363) + 0.0);
    LODWORD(v360) = llroundf(v382);
    v383 = v360 - v382;
    v384 = &v374[v378 * (v360 + 1)];
    v385 = &v374[v378 * (v360 - 1)];
    while (1)
    {
      v387 = v369 + ((v365 * v381) + 0.0);
      LODWORD(v357) = llroundf(v387);
      if ((v357 & 0x80000000) == 0 && (v360 & 0x80000000) == 0 && v357 < v376 && v360 < v377)
      {
        v389 = &v374[2 * v357 + v378 * v360];
        _H17 = *v389;
        __asm { FCVT            S16, H17 }

        v391 = LODWORD(_S16) & 0x7FFFFFFF;
        v392 = (LODWORD(_S16) & 0x7FFFFFFFu) > 0x7F800000 || v391 == 2139095040;
        if (!v392 && v391 != 0)
        {
          break;
        }
      }

LABEL_576:
      _H17 = _H4;
LABEL_577:
      *&v372[2 * v381++] = _H17;
      if (v362 <= v381)
      {
        ++v363;
        v372 += v373;
        if (v361 <= v363)
        {
          goto LABEL_801;
        }

        goto LABEL_575;
      }
    }

    v394 = v357 - v387;
    if (v394 > 0.0)
    {
      if (v357)
      {
        _H17 = *(v389 - 1);
        __asm { FCVT            S17, H17 }

        v397 = LODWORD(_S17) & 0x7FFFFFFF;
        v399 = (LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v397 == 2139095040 || v397 == 0;
        v400 = vabds_f32(_S17, _S16);
        v401 = v355 * fabsf(_S16 * _S17);
        if (v399 || v400 > v401)
        {
          if (v383 <= 0.0)
          {
LABEL_679:
            if (v380 <= v360)
            {
              goto LABEL_792;
            }

            v448 = &v384[2 * v357];
            _H17 = *(v448 - 1);
            __asm { FCVT            S19, H17 }

            _H17 = *v448;
            __asm { FCVT            S17, H17 }

            v452 = LODWORD(_S19) & 0x7FFFFFFF;
            if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v452 != 2139095040 && v452 != 0)
            {
              v455 = LODWORD(_S17) & 0x7FFFFFFF;
              if ((LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v455 == 2139095040 || v455 == 0)
              {
                _S17 = _S19;
              }

              else if (vabds_f32(_S19, _S17) <= (v355 * fabsf(_S19 * _S17)))
              {
                _S17 = _S17 + ((_S19 - _S17) * v394);
              }
            }

            v481 = LODWORD(_S17) & 0x7FFFFFFF;
            v482 = (LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v481 == 2139095040;
            if (v482 || v481 == 0)
            {
              goto LABEL_792;
            }

            v484 = LODWORD(_S16) & 0x7FFFFFFF;
            if ((LODWORD(_S16) & 0x7FFFFFFFu) <= 0x7F800000 && v484 != 2139095040 && v484 != 0)
            {
              if (vabds_f32(_S17, _S16) <= (v355 * fabsf(_S16 * _S17)))
              {
                v487 = _S17 - _S16;
LABEL_791:
                _S16 = _S16 + (v487 * -v383);
              }

LABEL_792:
              __asm { FCVT            H17, S16 }

              goto LABEL_793;
            }

LABEL_768:
            _S16 = _S17;
            goto LABEL_792;
          }
        }

        else
        {
          _S16 = _S16 + ((_S17 - _S16) * v394);
          if (v383 <= 0.0)
          {
            goto LABEL_679;
          }
        }

        if (!v360)
        {
          goto LABEL_792;
        }

        v403 = &v385[2 * v357];
        _H17 = *(v403 - 1);
        __asm { FCVT            S19, H17 }

        _H17 = *v403;
        __asm { FCVT            S17, H17 }

        v408 = LODWORD(_S19) & 0x7FFFFFFF;
        if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v408 != 2139095040 && v408 != 0)
        {
          v411 = LODWORD(_S17) & 0x7FFFFFFF;
          if ((LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v411 == 2139095040 || v411 == 0)
          {
            _S17 = _S19;
          }

          else if (vabds_f32(_S19, _S17) <= (v355 * fabsf(_S19 * _S17)))
          {
            _S17 = _S17 + ((_S19 - _S17) * v394);
          }
        }

        v468 = LODWORD(_S17) & 0x7FFFFFFF;
        v469 = (LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v468 == 2139095040;
        if (v469 || v468 == 0)
        {
          goto LABEL_792;
        }

        v471 = LODWORD(_S16) & 0x7FFFFFFF;
        if ((LODWORD(_S16) & 0x7FFFFFFFu) > 0x7F800000 || v471 == 2139095040 || v471 == 0)
        {
          goto LABEL_768;
        }

        if (vabds_f32(_S17, _S16) > (v355 * fabsf(_S16 * _S17)))
        {
          goto LABEL_792;
        }

        v474 = _S17 - _S16;
LABEL_750:
        _S16 = _S16 + (v474 * v383);
        goto LABEL_792;
      }

      goto LABEL_653;
    }

    if (v379 <= v357)
    {
LABEL_653:
      if (v383 > 0.0)
      {
        if (v360)
        {
          _H18 = *&v385[2 * v357];
          __asm { FCVT            S18, H18 }

          v435 = LODWORD(_S18) & 0x7FFFFFFF;
          v436 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v435 == 2139095040;
          v437 = v436 || v435 == 0;
          v438 = vabds_f32(_S18, _S16);
          v439 = v355 * fabsf(_S16 * _S18);
          if (!v437 && v438 <= v439)
          {
LABEL_749:
            v474 = _S18 - _S16;
            goto LABEL_750;
          }
        }

LABEL_793:
        __asm { FCVT            S16, H17 }

        v357 = _S16 & 0x7FFFFFFF;
        if ((_S16 & 0x7FFFFFFFu) < 0x7F800001 && v357 != 2139095040 && v357 != 0)
        {
          goto LABEL_577;
        }

        goto LABEL_576;
      }

      if (v380 <= v360)
      {
        goto LABEL_793;
      }

      _H18 = *&v384[2 * v357];
      __asm { FCVT            S18, H18 }

      v442 = LODWORD(_S18) & 0x7FFFFFFF;
      v443 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v442 == 2139095040;
      v444 = v443 || v442 == 0;
      v445 = vabds_f32(_S18, _S16);
      v446 = v355 * fabsf(_S16 * _S18);
      if (v444 || v445 > v446)
      {
        goto LABEL_793;
      }

LABEL_790:
      v487 = _S18 - _S16;
      goto LABEL_791;
    }

    _H17 = *(v389 + 1);
    __asm { FCVT            S19, H17 }

    v416 = -v394;
    v417 = LODWORD(_S19) & 0x7FFFFFFF;
    v419 = (LODWORD(_S19) & 0x7FFFFFFFu) > 0x7F800000 || v417 == 2139095040 || v417 == 0;
    v420 = vabds_f32(_S19, _S16);
    v421 = v355 * fabsf(_S16 * _S19);
    if (v419 || v420 > v421)
    {
      if (v383 <= 0.0)
      {
LABEL_697:
        if (v380 <= v360)
        {
          goto LABEL_792;
        }

        v458 = &v384[2 * v357];
        _H18 = *(v458 + 1);
        __asm { FCVT            S19, H18 }

        _H18 = *v458;
        __asm { FCVT            S18, H18 }

        v462 = LODWORD(_S19) & 0x7FFFFFFF;
        if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v462 != 2139095040 && v462 != 0)
        {
          v465 = LODWORD(_S18) & 0x7FFFFFFF;
          if ((LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v465 == 2139095040 || v465 == 0)
          {
            _S18 = _S19;
          }

          else if (vabds_f32(_S19, _S18) <= (v355 * fabsf(_S19 * _S18)))
          {
            _S18 = _S18 + ((_S19 - _S18) * v416);
          }
        }

        v488 = LODWORD(_S18) & 0x7FFFFFFF;
        v489 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v488 == 2139095040;
        if (v489 || v488 == 0)
        {
          goto LABEL_792;
        }

        v491 = LODWORD(_S16) & 0x7FFFFFFF;
        if ((LODWORD(_S16) & 0x7FFFFFFFu) <= 0x7F800000 && v491 != 2139095040 && v491 != 0)
        {
          if (vabds_f32(_S18, _S16) > (v355 * fabsf(_S16 * _S18)))
          {
            goto LABEL_792;
          }

          goto LABEL_790;
        }

LABEL_788:
        _S16 = _S18;
        goto LABEL_792;
      }
    }

    else
    {
      _S16 = _S16 + ((_S19 - _S16) * v416);
      if (v383 <= 0.0)
      {
        goto LABEL_697;
      }
    }

    if (!v360)
    {
      goto LABEL_792;
    }

    v423 = &v385[2 * v357];
    _H18 = *(v423 + 1);
    __asm { FCVT            S19, H18 }

    _H18 = *v423;
    __asm { FCVT            S18, H18 }

    v428 = LODWORD(_S19) & 0x7FFFFFFF;
    if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v428 != 2139095040 && v428 != 0)
    {
      v431 = LODWORD(_S18) & 0x7FFFFFFF;
      if ((LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v431 == 2139095040 || v431 == 0)
      {
        _S18 = _S19;
      }

      else if (vabds_f32(_S19, _S18) <= (v355 * fabsf(_S19 * _S18)))
      {
        _S18 = _S18 + ((_S19 - _S18) * v416);
      }
    }

    v475 = LODWORD(_S18) & 0x7FFFFFFF;
    v476 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v475 == 2139095040;
    if (v476 || v475 == 0)
    {
      goto LABEL_792;
    }

    v478 = LODWORD(_S16) & 0x7FFFFFFF;
    if ((LODWORD(_S16) & 0x7FFFFFFFu) <= 0x7F800000 && v478 != 2139095040 && v478 != 0)
    {
      if (vabds_f32(_S18, _S16) > (v355 * fabsf(_S16 * _S18)))
      {
        goto LABEL_792;
      }

      goto LABEL_749;
    }

    goto LABEL_788;
  }

  if (PixelFormatType == 1751410032)
  {
    v118 = self->_interpThreshold;
    _S13 = self->_noDepthOutputValue;
    v120 = CVPixelBufferGetWidth(a5);
    v121 = CVPixelBufferGetHeight(a5);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a5, 0);
    memset(&buf, 0, sizeof(buf));
    v122 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &buf);
    memset(&v497, 0, sizeof(v497));
    PixelBufferUtils::asVImageBuffer(a5, *v122, &v497);
    v124 = v497.height;
    if (!v497.height)
    {
      goto LABEL_801;
    }

    v125 = v497.width;
    if (!v497.width)
    {
      goto LABEL_801;
    }

    v126 = 0;
    v127 = width;
    v128 = v127 / v120;
    v129 = height;
    v130 = v129 / v121;
    v131 = x;
    v132 = v131 + ((1.0 - v128) * -0.5);
    v133 = y;
    v134 = v133 + ((1.0 - v130) * -0.5);
    v135 = v497.data;
    v136 = v497.rowBytes;
    v137 = buf.data;
    __asm { FCVT            H4, S13 }

    v142 = buf.width;
    v143 = buf.height;
    v144 = buf.rowBytes;
    v145 = LODWORD(buf.width) - 1;
    v146 = LODWORD(buf.height) - 1;
LABEL_179:
    v147 = 0;
    v148 = v134 + ((v130 * v126) + 0.0);
    LODWORD(v123) = llroundf(v148);
    v149 = v123 - v148;
    v150 = &v137[v144 * (v123 + 1)];
    v151 = &v137[v144 * (v123 - 1)];
    while (1)
    {
      v153 = v132 + ((v128 * v147) + 0.0);
      LODWORD(v120) = llroundf(v153);
      if ((v120 & 0x80000000) == 0 && (v123 & 0x80000000) == 0 && v120 < v142 && v123 < v143)
      {
        v155 = &v137[2 * v120 + v144 * v123];
        _H17 = *v155;
        __asm { FCVT            S16, H17 }

        v157 = LODWORD(_S16) & 0x7FFFFFFF;
        v158 = (LODWORD(_S16) & 0x7FFFFFFFu) > 0x7F800000 || v157 == 2139095040;
        if (!v158 && v157 != 0)
        {
          break;
        }
      }

LABEL_180:
      _H17 = _H4;
LABEL_181:
      *&v135[2 * v147++] = _H17;
      if (v125 <= v147)
      {
        ++v126;
        v135 += v136;
        if (v124 <= v126)
        {
          goto LABEL_801;
        }

        goto LABEL_179;
      }
    }

    v160 = v120 - v153;
    if (v160 > 0.0)
    {
      if (v120)
      {
        _H17 = *(v155 - 1);
        __asm { FCVT            S17, H17 }

        v163 = LODWORD(_S17) & 0x7FFFFFFF;
        v165 = (LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v163 == 2139095040 || v163 == 0;
        v166 = vabds_f32(_S16, _S17);
        if (v165 || v166 > v118)
        {
          if (v149 <= 0.0)
          {
LABEL_283:
            if (v146 <= v123)
            {
              goto LABEL_396;
            }

            v210 = &v150[2 * v120];
            _H17 = *(v210 - 1);
            __asm { FCVT            S19, H17 }

            _H17 = *v210;
            __asm { FCVT            S17, H17 }

            v214 = LODWORD(_S19) & 0x7FFFFFFF;
            if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v214 != 2139095040 && v214 != 0)
            {
              v217 = LODWORD(_S17) & 0x7FFFFFFF;
              if ((LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v217 == 2139095040 || v217 == 0)
              {
                _S17 = _S19;
              }

              else if (vabds_f32(_S17, _S19) <= v118)
              {
                _S17 = _S17 + ((_S19 - _S17) * v160);
              }
            }

            v243 = LODWORD(_S17) & 0x7FFFFFFF;
            v244 = (LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v243 == 2139095040;
            if (v244 || v243 == 0)
            {
              goto LABEL_396;
            }

            v246 = LODWORD(_S16) & 0x7FFFFFFF;
            if ((LODWORD(_S16) & 0x7FFFFFFFu) <= 0x7F800000 && v246 != 2139095040 && v246 != 0)
            {
              if (vabds_f32(_S16, _S17) <= v118)
              {
                v249 = _S17 - _S16;
LABEL_395:
                _S16 = _S16 + (v249 * -v149);
              }

LABEL_396:
              __asm { FCVT            H17, S16 }

              goto LABEL_397;
            }

LABEL_372:
            _S16 = _S17;
            goto LABEL_396;
          }
        }

        else
        {
          _S16 = _S16 + ((_S17 - _S16) * v160);
          if (v149 <= 0.0)
          {
            goto LABEL_283;
          }
        }

        if (!v123)
        {
          goto LABEL_396;
        }

        v168 = &v151[2 * v120];
        _H17 = *(v168 - 1);
        __asm { FCVT            S19, H17 }

        _H17 = *v168;
        __asm { FCVT            S17, H17 }

        v173 = LODWORD(_S19) & 0x7FFFFFFF;
        if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v173 != 2139095040 && v173 != 0)
        {
          v176 = LODWORD(_S17) & 0x7FFFFFFF;
          if ((LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v176 == 2139095040 || v176 == 0)
          {
            _S17 = _S19;
          }

          else if (vabds_f32(_S17, _S19) <= v118)
          {
            _S17 = _S17 + ((_S19 - _S17) * v160);
          }
        }

        v230 = LODWORD(_S17) & 0x7FFFFFFF;
        v231 = (LODWORD(_S17) & 0x7FFFFFFFu) > 0x7F800000 || v230 == 2139095040;
        if (v231 || v230 == 0)
        {
          goto LABEL_396;
        }

        v233 = LODWORD(_S16) & 0x7FFFFFFF;
        if ((LODWORD(_S16) & 0x7FFFFFFFu) > 0x7F800000 || v233 == 2139095040 || v233 == 0)
        {
          goto LABEL_372;
        }

        if (vabds_f32(_S16, _S17) > v118)
        {
          goto LABEL_396;
        }

        v236 = _S17 - _S16;
LABEL_354:
        _S16 = _S16 + (v236 * v149);
        goto LABEL_396;
      }

      goto LABEL_257;
    }

    if (v145 <= v120)
    {
LABEL_257:
      if (v149 > 0.0)
      {
        if (v123)
        {
          _H18 = *&v151[2 * v120];
          __asm { FCVT            S18, H18 }

          v199 = LODWORD(_S18) & 0x7FFFFFFF;
          v200 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v199 == 2139095040;
          v201 = v200 || v199 == 0;
          v202 = vabds_f32(_S16, _S18);
          if (!v201 && v202 <= v118)
          {
LABEL_353:
            v236 = _S18 - _S16;
            goto LABEL_354;
          }
        }

LABEL_397:
        __asm { FCVT            S16, H17 }

        v120 = _S16 & 0x7FFFFFFF;
        if ((_S16 & 0x7FFFFFFFu) < 0x7F800001 && v120 != 2139095040 && v120 != 0)
        {
          goto LABEL_181;
        }

        goto LABEL_180;
      }

      if (v146 <= v123)
      {
        goto LABEL_397;
      }

      _H18 = *&v150[2 * v120];
      __asm { FCVT            S18, H18 }

      v205 = LODWORD(_S18) & 0x7FFFFFFF;
      v206 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v205 == 2139095040;
      v207 = v206 || v205 == 0;
      v208 = vabds_f32(_S16, _S18);
      if (v207 || v208 > v118)
      {
        goto LABEL_397;
      }

LABEL_394:
      v249 = _S18 - _S16;
      goto LABEL_395;
    }

    _H17 = *(v155 + 1);
    __asm { FCVT            S19, H17 }

    v181 = -v160;
    v182 = LODWORD(_S19) & 0x7FFFFFFF;
    v184 = (LODWORD(_S19) & 0x7FFFFFFFu) > 0x7F800000 || v182 == 2139095040 || v182 == 0;
    v185 = vabds_f32(_S16, _S19);
    if (v184 || v185 > v118)
    {
      if (v149 <= 0.0)
      {
LABEL_301:
        if (v146 <= v123)
        {
          goto LABEL_396;
        }

        v220 = &v150[2 * v120];
        _H18 = *(v220 + 1);
        __asm { FCVT            S19, H18 }

        _H18 = *v220;
        __asm { FCVT            S18, H18 }

        v224 = LODWORD(_S19) & 0x7FFFFFFF;
        if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v224 != 2139095040 && v224 != 0)
        {
          v227 = LODWORD(_S18) & 0x7FFFFFFF;
          if ((LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v227 == 2139095040 || v227 == 0)
          {
            _S18 = _S19;
          }

          else if (vabds_f32(_S18, _S19) <= v118)
          {
            _S18 = _S18 + ((_S19 - _S18) * v181);
          }
        }

        v250 = LODWORD(_S18) & 0x7FFFFFFF;
        v251 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v250 == 2139095040;
        if (v251 || v250 == 0)
        {
          goto LABEL_396;
        }

        v253 = LODWORD(_S16) & 0x7FFFFFFF;
        if ((LODWORD(_S16) & 0x7FFFFFFFu) <= 0x7F800000 && v253 != 2139095040 && v253 != 0)
        {
          if (vabds_f32(_S16, _S18) > v118)
          {
            goto LABEL_396;
          }

          goto LABEL_394;
        }

LABEL_392:
        _S16 = _S18;
        goto LABEL_396;
      }
    }

    else
    {
      _S16 = _S16 + ((_S19 - _S16) * v181);
      if (v149 <= 0.0)
      {
        goto LABEL_301;
      }
    }

    if (!v123)
    {
      goto LABEL_396;
    }

    v187 = &v151[2 * v120];
    _H18 = *(v187 + 1);
    __asm { FCVT            S19, H18 }

    _H18 = *v187;
    __asm { FCVT            S18, H18 }

    v192 = LODWORD(_S19) & 0x7FFFFFFF;
    if ((LODWORD(_S19) & 0x7FFFFFFFu) <= 0x7F800000 && v192 != 2139095040 && v192 != 0)
    {
      v195 = LODWORD(_S18) & 0x7FFFFFFF;
      if ((LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v195 == 2139095040 || v195 == 0)
      {
        _S18 = _S19;
      }

      else if (vabds_f32(_S18, _S19) <= v118)
      {
        _S18 = _S18 + ((_S19 - _S18) * v181);
      }
    }

    v237 = LODWORD(_S18) & 0x7FFFFFFF;
    v238 = (LODWORD(_S18) & 0x7FFFFFFFu) > 0x7F800000 || v237 == 2139095040;
    if (v238 || v237 == 0)
    {
      goto LABEL_396;
    }

    v240 = LODWORD(_S16) & 0x7FFFFFFF;
    if ((LODWORD(_S16) & 0x7FFFFFFFu) <= 0x7F800000 && v240 != 2139095040 && v240 != 0)
    {
      if (vabds_f32(_S16, _S18) > v118)
      {
        goto LABEL_396;
      }

      goto LABEL_353;
    }

    goto LABEL_392;
  }

LABEL_405:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unsupported buffer format", &buf, 2u);
  }

  return -22951;
}

+ (id)defaultScaler
{
  v2 = _defaultScaler;
  objc_sync_enter(v2);
  v4 = _defaultScaler;
  if (!_defaultScaler)
  {
    LODWORD(v3) = 1036831949;
    v5 = [ADDepthScaler scalerWithInterpThreshold:v3 andNoDepthOutputValue:0.0];
    v6 = _defaultScaler;
    _defaultScaler = v5;

    v4 = _defaultScaler;
  }

  v7 = v4;
  objc_sync_exit(v2);

  return v7;
}

+ (id)scalerWithInterpThreshold:(float)a3 andNoDepthOutputValue:(float)a4
{
  v6 = objc_opt_new();
  v6[2] = a3;
  v6[3] = a4;

  return v6;
}

@end