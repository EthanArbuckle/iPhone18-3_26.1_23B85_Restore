@interface CIRedEyeCorrection
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIRedEyeCorrection

- (void)setDefaults
{
  self->inputCameraModel = 0;
  v3 = self->inputCorrectionInfo;
  self->inputCorrectionInfo = 0;
}

- (id)outputImage
{
  v70 = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  inputCorrectionInfo = self->inputCorrectionInfo;
  if (inputCorrectionInfo)
  {
    v5 = [(NSDictionary *)inputCorrectionInfo copy];
    v6 = [v5 objectForKeyedSubscript:@"convexHull"];
    if (v6)
    {
      v7 = 3;
      goto LABEL_7;
    }

    if ([v5 objectForKeyedSubscript:@"pointX"])
    {
      v7 = 1;
LABEL_7:
      inputCameraModel = self->inputCameraModel;
      if (inputCameraModel)
      {
        v9 = [(NSString *)inputCameraModel copy];
      }

      else
      {
        v9 = @"undefined";
      }

      [(CIImage *)self->inputImage extent];
      v13 = v12;
      v15 = v14;
      v16 = v10;
      v17 = v11;
      v18 = off_1E75C0B58;
      if (v6)
      {
        v18 = off_1E75C0B60;
      }

      [(__objc2_class *)*v18 supportRectangleWithRepair:v5 imageSize:v10, v11];
      x = v72.origin.x;
      y = v72.origin.y;
      width = v72.size.width;
      height = v72.size.height;
      if (CGRectIsNull(v72))
      {
        v23 = 0;
        v24 = 0;
        v25 = 0x7FFFFFFF;
LABEL_14:
        if (v25 != 0x7FFFFFFF || v23)
        {
          v26 = 0x7FFFFFFF;
        }

        else
        {
          v26 = 0x7FFFFFFF;
          if (!v24)
          {
            goto LABEL_45;
          }
        }

LABEL_30:
        v27 = v26;
        v28 = v25;
        v29 = v23;
        v30 = v24;
        if (v23)
        {
LABEL_31:
          if (v24)
          {
            v52 = v5;
            v53 = v24;
            v54 = v25;
            v55 = v23;
            v51 = v26;
            v56 = v9;
            v57 = v7;
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            allValues = [v5 allValues];
            v33 = [allValues countByEnumeratingWithState:&v65 objects:v69 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = 0;
              v36 = *v66;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v66 != v36)
                  {
                    objc_enumerationMutation(allValues);
                  }

                  v38 = *(*(&v65 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v38 doubleValue];
                    v40 = v39 * 1000.0;
                    if (-2654435761 * v40 >= 0)
                    {
                      v41 = -(1640531535 * v40);
                    }

                    else
                    {
                      v41 = -1640531535 * v40;
                    }

                    v35 ^= v41;
                  }
                }

                v34 = [allValues countByEnumeratingWithState:&v65 objects:v69 count:16];
              }

              while (v34);
            }

            else
            {
              v35 = 0;
            }

            v44 = self->inputImage;
            v45 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
            if (v6)
            {
              v46 = [(CIImage *)v44 imageByColorMatchingWorkingSpaceToColorSpace:v45];
            }

            else
            {
              v46 = [(CIImage *)v44 imageByApplyingFilter:@"CILinearToSRGBToneCurve" withInputParameters:MEMORY[0x1E695E0F8]];
            }

            v47 = [[(CIImage *)v46 imageByCroppingToRect:v27 _imageByRenderingToIntermediate:v28];
            v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CIRedEyeCorrections %lu", v35];
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __33__CIRedEyeCorrection_outputImage__block_invoke;
            v64[3] = &__block_descriptor_64_e70__CGRect__CGPoint_dd__CGSize_dd__40__0_CGRect__CGPoint_dd__CGSize_dd__8l;
            *&v64[4] = v27;
            *&v64[5] = v28;
            *&v64[6] = v29;
            *&v64[7] = v30;
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __33__CIRedEyeCorrection_outputImage__block_invoke_2;
            v58[3] = &unk_1E75C3A50;
            v63 = v57;
            v58[6] = v13;
            v58[7] = v15;
            *&v58[8] = v16;
            *&v58[9] = v17;
            v59 = v51;
            v60 = v54;
            v61 = v55;
            v62 = v53;
            v58[4] = v52;
            v58[5] = v56;
            v49 = [v47 imageWithExtent:v48 processorDescription:v35 argumentDigest:266 inputFormat:2056 outputFormat:0 options:v64 roiCallback:v27 processor:v28, v29, v30, v58];
            if (v6)
            {
              v50 = [v49 imageByColorMatchingColorSpaceToWorkingSpace:v45];
            }

            else
            {
              v50 = [v49 imageByApplyingFilter:@"CISRGBToneCurveToLinear" withInputParameters:MEMORY[0x1E695E0F8]];
            }

            v31 = v50;
            CGColorSpaceRelease(v45);
            return v31;
          }
        }

LABEL_45:
        inputImage = self->inputImage;
        goto LABEL_46;
      }

      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v26 = -2147483647;
      if (CGRectIsInfinite(v73))
      {
        v23 = 0xFFFFFFFFLL;
        v25 = -2147483647;
        v24 = 0xFFFFFFFFLL;
      }

      else
      {
        v74.origin.x = x;
        v74.origin.y = y;
        v74.size.width = width;
        v74.size.height = height;
        v75 = CGRectInset(v74, 0.000001, 0.000001);
        v76 = CGRectIntegral(v75);
        v25 = v76.origin.y;
        v23 = v76.size.width;
        v24 = v76.size.height;
        if (v76.origin.x != -2147483647)
        {
          v26 = v76.origin.x;
          if (v76.origin.x != 0x7FFFFFFF)
          {
            goto LABEL_30;
          }

          goto LABEL_14;
        }
      }

      if (v25 == -2147483647 && v23 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
      {
        v27 = *MEMORY[0x1E695F040];
        v28 = *(MEMORY[0x1E695F040] + 8);
        v29 = *(MEMORY[0x1E695F040] + 16);
        v30 = *(MEMORY[0x1E695F040] + 24);
        v23 = 0xFFFFFFFFLL;
        v25 = -2147483647;
        v24 = 0xFFFFFFFFLL;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    puts("red-eye repair dictionary is of unknown type");
    return 0;
  }

LABEL_46:
  v42 = inputImage;

  return v42;
}

void __33__CIRedEyeCorrection_outputImage__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v100 = *MEMORY[0x1E69E9840];
  v6 = [a3 contextID];
  v7 = ci_signpost_log_render();
  if (((v6 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      v9 = *(a1 + 104);
      *buf = 67109120;
      v96 = v9;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6 << 32, "CIRedEyeCorrection_processor", "version %d", buf, 8u);
    }
  }

  TimerBase::TimerBase(buf, v6, 0, "CIRedEyeCorrection_processor", 33);
  if ((CI::format_is_ycc([a3 format]) & 1) == 0)
  {
    AllocSize = IOSurfaceGetAllocSize([a3 surface]);
    bzero([a3 baseAddress], AllocSize);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14 = *(a1 + 64);
    v13 = *(a1 + 72);
    v15 = *(a1 + 80);
    v89 = *(a1 + 84);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v91 = *(a1 + 32);
    v82 = *(a1 + 40);
    [a2 region];
    x = v101.origin.x;
    y = v101.origin.y;
    width = v101.size.width;
    height = v101.size.height;
    if (CGRectIsNull(v101))
    {
      LODWORD(v22) = 0;
      v23 = 0x7FFFFFFF;
      v24 = 0x7FFFFFFFLL;
    }

    else
    {
      v102.origin.x = x;
      v102.origin.y = y;
      v102.size.width = width;
      v102.size.height = height;
      if (CGRectIsInfinite(v102))
      {
        v85 = -2147483647;
        v23 = -2147483647;
        LODWORD(v22) = -1;
        goto LABEL_11;
      }

      v103.origin.x = x;
      v103.origin.y = y;
      v103.size.width = width;
      v103.size.height = height;
      v104 = CGRectInset(v103, 0.000001, 0.000001);
      v105 = CGRectIntegral(v104);
      v23 = v105.origin.y;
      v22 = v105.size.height;
      v24 = v105.origin.x;
    }

    v85 = v24;
LABEL_11:
    v25 = [a2 format];
    v26 = [a2 baseAddress];
    v27 = [a2 bytesPerRow];
    v92 = v15;
    [a3 region];
    v28 = v106.origin.x;
    v29 = v106.origin.y;
    v30 = v106.size.width;
    v31 = v106.size.height;
    if (CGRectIsNull(v106))
    {
      v83 = 0;
      v88 = 0;
      v32 = 0x7FFFFFFF;
      v84 = 0x7FFFFFFF;
    }

    else
    {
      v107.origin.x = v28;
      v107.origin.y = v29;
      v107.size.width = v30;
      v107.size.height = v31;
      if (!CGRectIsInfinite(v107))
      {
        v108.origin.x = v28;
        v108.origin.y = v29;
        v108.size.width = v30;
        v108.size.height = v31;
        v109 = CGRectInset(v108, 0.000001, 0.000001);
        v110 = CGRectIntegral(v109);
        v86 = v110.origin.x;
        v84 = v110.origin.y;
        v88 = v110.size.width;
        v83 = v110.size.height;
        goto LABEL_17;
      }

      v84 = -2147483647;
      v83 = 0xFFFFFFFFLL;
      v88 = 0xFFFFFFFFLL;
      v32 = -2147483647;
    }

    v86 = v32;
LABEL_17:
    v81 = [a3 format];
    v80 = [a3 baseAddress];
    v90 = [a3 bytesPerRow];
    v33 = [v91 objectForKeyedSubscript:@"convexHull"];
    if (!v33 && ![v91 objectForKeyedSubscript:@"pointX"])
    {
      puts("red-eye repair dictionary is of unknown type");
      goto LABEL_94;
    }

    if (v25 == 2056)
    {
      v34 = 4 * v16;
      v79 = v15;
      src.data = (v26 + v27 * (v23 + v22 - (v89 + v17)) + 8 * (v15 - v85));
      src.height = v17;
      src.width = 4 * v16;
      src.rowBytes = v27;
      v35 = v17 * 4 * v16;
      v87 = [MEMORY[0x1E695DF88] dataWithLength:v35];
      v36 = [v87 mutableBytes];
      dest.data = v36;
      dest.height = v17;
      dest.width = 4 * v16;
      dest.rowBytes = 4 * v16;
      v37 = vImageConvert_Planar16FtoPlanar8(&src, &dest, 0);
      if (v37)
      {
        NSLog(&cfstr_VimageconvertP.isa, v37);
        goto LABEL_94;
      }
    }

    else
    {
      if (v25 != 266)
      {
        NSLog(&cfstr_UnknownInputPi.isa, v25);
        goto LABEL_94;
      }

      v79 = v15;
      v34 = 4 * v16;
      v35 = v17 * 4 * v16;
      v87 = [MEMORY[0x1E695DF88] dataWithLength:v35];
      v38 = [v87 mutableBytes];
      v36 = v38;
      if (v16 && v17)
      {
        v39 = (v26 + v27 * (v23 + v22 - (v89 + v17)) + 4 * (v92 - v85));
        v40 = v17;
        v41 = v38;
        do
        {
          memcpy(v41, v39, 4 * v16);
          v39 += v27;
          v41 += v34;
          --v40;
        }

        while (v40);
      }

      if (!v33)
      {
        src.data = v36;
        src.height = v17;
        src.width = v16;
        src.rowBytes = 4 * v16;
        LODWORD(dest.data) = 50331906;
        vImagePermuteChannels_ARGB8888(&src, &src, &dest, 0);
      }
    }

    v42 = [MEMORY[0x1E695DF88] dataWithLength:v35];
    v43 = [v42 mutableBytes];
    if (v16 && v17)
    {
      v44 = v43;
      v45 = 0;
      v46 = v17;
      do
      {
        memcpy((v44 + v45), &v36[v45], 4 * v16);
        v45 += v34;
        --v46;
      }

      while (v46);
    }

    if (v33)
    {
      v97[0] = @"imageExtent";
      src.data = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      src.height = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      src.width = [MEMORY[0x1E696AD98] numberWithDouble:v14];
      src.rowBytes = [MEMORY[0x1E696AD98] numberWithDouble:v13];
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&src count:4];
      v97[1] = @"cameraModel";
      v98[0] = v47;
      v98[1] = v82;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
      v49 = [CIRedEyeRepair3 alloc];
      if (v92 == -2147483647)
      {
        if (v89 == -2147483647 && v16 == 0xFFFFFFFF && v17 == 0xFFFFFFFF)
        {
          v50 = MEMORY[0x1E695F040];
          goto LABEL_50;
        }
      }

      else if (v92 == 0x7FFFFFFF && v89 == 0x7FFFFFFF && !(v17 | v16))
      {
        v50 = MEMORY[0x1E695F050];
LABEL_50:
        v53 = *v50;
        v54 = v50[1];
        v55 = v50[2];
        v56 = v50[3];
LABEL_52:
        v57 = [(CIRedEyeRepair3 *)v49 initWithExternalBuffer:v36 subRectangle:v34 rowBytes:v48 options:v53, v54, v55, v56];
        goto LABEL_60;
      }

      v53 = v92;
      v54 = v89;
      v55 = v16;
      v56 = v17;
      goto LABEL_52;
    }

    v51 = [CIRedEyeRepair alloc];
    if (v92 == -2147483647)
    {
      if (v89 == -2147483647 && v16 == 0xFFFFFFFF && v17 == 0xFFFFFFFF)
      {
        v52 = MEMORY[0x1E695F040];
        goto LABEL_57;
      }
    }

    else if (v92 == 0x7FFFFFFF && v89 == 0x7FFFFFFF && !(v17 | v16))
    {
      v52 = MEMORY[0x1E695F050];
LABEL_57:
      v58 = *v52;
      v59 = v52[1];
      v60 = v52[2];
      v61 = v52[3];
LABEL_59:
      v57 = [(CIRedEyeRepair *)v51 initWithExternalBuffer:v36 subRectangle:v34 fullSize:v82 rowBytes:v58 cameraModel:v59, v60, v61, v14, v13];
LABEL_60:
      v62 = v57;
      [(CIRedEyeRepair3 *)v57 executeRepair:v91];
      [(CIRedEyeRepair3 *)v62 repairExternalBuffer];

      v63 = [v42 bytes];
      v64 = [v87 mutableBytes];
      if (v17)
      {
        for (i = 0; i != v17; ++i)
        {
          if (v16)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*(v63 + 4 * j) == *(v64 + 4 * j))
              {
                *(v64 + 4 * j) = 0;
              }
            }
          }

          v63 += v34;
          v64 += v34;
        }
      }

      v67 = 0x7FFFFFFF;
      if (v92 == 0x7FFFFFFF && v89 == 0x7FFFFFFF && !(v17 | v16) || v86 == 0x7FFFFFFF && v84 == 0x7FFFFFFF && !v88 && !v83)
      {
        goto LABEL_75;
      }

      if (v92 == -2147483647 && v89 == -2147483647 && v16 == 0xFFFFFFFF && v17 == 0xFFFFFFFF)
      {
        v68 = v83;
        v67 = v84;
        v69 = v86;
      }

      else if (v86 == -2147483647 && v84 == -2147483647 && v88 == 0xFFFFFFFF && v83 == 0xFFFFFFFF)
      {
        v68 = v17;
        v88 = v16;
        v67 = v89;
        v69 = v92;
      }

      else
      {
        if (v92 <= v86)
        {
          v69 = v86;
        }

        else
        {
          v69 = v92;
        }

        v74 = v92 + v16;
        if (v92 + v16 >= v86 + v88)
        {
          v74 = v86 + v88;
        }

        v75 = __OFSUB__(v74, v69);
        v76 = v74 - v69;
        if (v76 < 0 != v75)
        {
LABEL_75:
          v68 = 0;
          v88 = 0;
LABEL_76:
          v69 = 0x7FFFFFFF;
          goto LABEL_77;
        }

        if (v89 <= v84)
        {
          v67 = v84;
        }

        else
        {
          v67 = v89;
        }

        v77 = v89 + v17;
        if (v89 + v17 >= v84 + v83)
        {
          v77 = v84 + v83;
        }

        v75 = __OFSUB__(v77, v67);
        v78 = v77 - v67;
        if (v78 < 0 != v75)
        {
          v68 = 0;
          v88 = 0;
          v67 = 0x7FFFFFFF;
          goto LABEL_76;
        }

        v88 = v76;
        v68 = v78;
      }

LABEL_77:
      if (v81 == 2056)
      {
        dest.height = v68;
        dest.width = 4 * v88;
        dest.data = ([v87 mutableBytes] + (v89 + v17 - (v67 + v68)) * v34 + 4 * (v69 - v79));
        dest.rowBytes = v34;
        v93.data = (v80 + (v84 + v83 - (v67 + v68)) * v90 + 8 * (v69 - v86));
        v93.height = v68;
        v93.width = 4 * v88;
        v93.rowBytes = v90;
        v70 = vImageConvert_Planar8toPlanar16F(&dest, &v93, 0);
        if (v70)
        {
          NSLog(&cfstr_VimageconvertP_0.isa, v70);
        }
      }

      else if (v81 == 266)
      {
        if (!v33)
        {
          dest.data = v36;
          dest.height = v17;
          dest.width = v16;
          dest.rowBytes = v34;
          LODWORD(v93.data) = 50331906;
          vImagePermuteChannels_ARGB8888(&dest, &dest, &v93, 0);
        }

        if (v68 && v88)
        {
          v71 = v67 + v68;
          v72 = (v80 + (v84 + v83 - (v67 + v68)) * v90 + 4 * (v69 - v86));
          v73 = &v36[4 * (v69 - v79) + (v89 + v17 - v71) * v34];
          do
          {
            memcpy(v72, v73, 4 * v88);
            v73 += v34;
            v72 += v90;
            --v68;
          }

          while (v68);
        }
      }

      else
      {
        NSLog(&cfstr_UnknownOutputP.isa, v81);
      }

      goto LABEL_94;
    }

    v58 = v92;
    v59 = v89;
    v60 = v16;
    v61 = v17;
    goto LABEL_59;
  }

LABEL_94:
  _ZZZ33__CIRedEyeCorrection_outputImage_EUb_EN13SignpostTimerD1Ev(buf);
}

@end