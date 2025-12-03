@interface CIPortraitEffectBlack
+ (id)customAttributes;
- (id)_CIApplyBlackDepth;
- (id)_CIPrepareBlackDepth;
- (id)_CIPrepareBlackDisparity;
- (id)_CIRefineBlackDepth;
- (id)_applyVignette;
- (id)_faceAndBodyFill_orient1;
- (id)_faceAndBodyFill_orient6;
- (id)_faceProtect;
- (id)_faceVignette;
- (id)_getFocusRect:(id)rect;
- (id)_offsetImage:(id)image inputDisparity:(id)disparity thresholdImage:(id)thresholdImage;
- (id)adaptiveNormalization2;
- (id)adaptiveNormalizationAbsolute;
- (id)adaptiveNormalizationGPU;
- (id)blendDepth;
- (id)invertRed;
- (id)outputImage;
- (id)thresholdAndApplyMatte;
- (id)thresholdMatte;
- (unint64_t)_maxNumVerticesForImage:(id)image sigmaLuma:(id)luma sigmaSpace:(id)space;
- (void)setDefaults;
- (void)setDefaultsAbsoluteDisparity;
@end

@implementation CIPortraitEffectBlack

- (void)setDefaults
{
  [(CIPortraitEffect *)self setInputSmooth:&off_7A6C0];
  [(CIPortraitEffect *)self setInputEnrich:&off_7A540];
  [(CIPortraitEffect *)self setInputEyes:&off_7A6C0];
  [(CIPortraitEffect *)self setInputLocalContrast:&off_7A6D0];
  [(CIPortraitEffect *)self setInputStrength:&off_7A580];
  [(CIPortraitEffectBlack *)self setInputDepthThreshold:&off_7A550];
  [(CIPortraitEffect *)self setInputScale:&off_7A580];
  [(CIPortraitEffectBlack *)self setInputUseAbsoluteDisparity:&__kCFBooleanFalse];
  [(CIPortraitEffectBlack *)self setInputMaxNumVertices:&off_7A950];
  [(CIPortraitEffectBlack *)self setInputSigmaS:&off_7A968];
  [(CIPortraitEffectBlack *)self setInputSigmaRLuma:&off_7A980];
  [(CIPortraitEffectBlack *)self setInputSigmaRChroma:&off_7A980];
  [(CIPortraitEffectBlack *)self setInputLambda:&off_7A6E0];
  [(CIPortraitEffectBlack *)self setInputMaxNumIterations:&off_7A998];
  [(CIPortraitEffectBlack *)self setInputBandRange:[CIVector vectorWithX:0.00999999978 Y:0.200000003]];
  [(CIPortraitEffectBlack *)self setInputFeatherBandRange:&off_7AAC0];
  [(CIPortraitEffectBlack *)self setInputThresholdOffset:&off_7AAD0];
  [(CIPortraitEffectBlack *)self setInputFilterCut:&off_7AAE0];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdRange:&off_7A6F0];
  [(CIPortraitEffectBlack *)self setInputSigmaFallout:&off_7A700];
  [(CIPortraitEffectBlack *)self setInputFocalLengthNormalized:&off_7A540];
  [(CIPortraitEffectBlack *)self setInputDepthDataScore:&off_7A580];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdFaceGroupRange:&off_7A680];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdFaceErrorMargin:&off_7A710];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdZRangeConst:&off_7A720];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdZRangeLinearDepth:&off_7A540];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdConstOffset:&off_7A540];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdLinearDepthOffset:&off_7A730];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdDoDisparityError:&__kCFBooleanTrue];
  [(CIPortraitEffectBlack *)self setInputSharpenRadius:&off_7A740];

  [(CIPortraitEffectBlack *)self setInputGrainAmount:&off_7A750];
}

- (void)setDefaultsAbsoluteDisparity
{
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdFaceGroupRange:&off_7A680];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdFaceErrorMargin:&off_7A710];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdZRangeConst:&off_7A560];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdZRangeLinearDepth:&off_7A540];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdConstOffset:&off_7A550];
  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdLinearDepthOffset:&off_7A760];

  [(CIPortraitEffectBlack *)self setInputAdaptiveThresholdDoDisparityError:&__kCFBooleanFalse];
}

+ (id)customAttributes
{
  v64[0] = kCIAttributeFilterCategories;
  v63[0] = kCICategoryColorAdjustment;
  v63[1] = kCICategoryVideo;
  v63[2] = kCICategoryStillImage;
  v63[3] = kCICategoryBuiltIn;
  v63[4] = kCICategoryApplePrivate;
  v65[0] = [NSArray arrayWithObjects:v63 count:5];
  v65[1] = @"11";
  v64[1] = kCIAttributeFilterAvailable_iOS;
  v64[2] = kCIAttributeFilterAvailable_Mac;
  v65[2] = @"10.13";
  v64[3] = @"inputSmooth";
  v61[0] = kCIAttributeDefault;
  v61[1] = kCIAttributeType;
  v62[0] = &off_7A6C0;
  v62[1] = kCIAttributeTypeScalar;
  v65[3] = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:2];
  v64[4] = @"inputEnrich";
  v59[0] = kCIAttributeDefault;
  v59[1] = kCIAttributeType;
  v60[0] = &off_7A540;
  v60[1] = kCIAttributeTypeScalar;
  v65[4] = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
  v64[5] = @"inputEyes";
  v57[0] = kCIAttributeDefault;
  v57[1] = kCIAttributeType;
  v58[0] = &off_7A6C0;
  v58[1] = kCIAttributeTypeScalar;
  v65[5] = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:2];
  v64[6] = @"inputLocalContrast";
  v55[0] = kCIAttributeDefault;
  v55[1] = kCIAttributeType;
  v56[0] = &off_7A6D0;
  v56[1] = kCIAttributeTypeScalar;
  v65[6] = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
  v64[7] = @"inputDepthThreshold";
  v53[0] = kCIAttributeDefault;
  v53[1] = kCIAttributeType;
  v54[0] = &off_7A550;
  v54[1] = kCIAttributeTypeScalar;
  v65[7] = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];
  v64[8] = @"inputScale";
  v51[0] = kCIAttributeDefault;
  v51[1] = kCIAttributeType;
  v52[0] = &off_7A580;
  v52[1] = kCIAttributeTypeScalar;
  v65[8] = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
  v64[9] = @"inputMaxNumVertices";
  v49[0] = kCIAttributeDefault;
  v49[1] = kCIAttributeType;
  v50[0] = &off_7A9B0;
  v50[1] = kCIAttributeTypeInteger;
  v65[9] = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
  v64[10] = @"inputSigmaS";
  v47[0] = kCIAttributeDefault;
  v47[1] = kCIAttributeType;
  v48[0] = &off_7A980;
  v48[1] = kCIAttributeTypeInteger;
  v65[10] = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
  v64[11] = @"inputSigmaRLuma";
  v45[0] = kCIAttributeDefault;
  v45[1] = kCIAttributeType;
  v46[0] = &off_7A980;
  v46[1] = kCIAttributeTypeInteger;
  v65[11] = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:2];
  v64[12] = @"inputSigmaRChroma";
  v43[0] = kCIAttributeDefault;
  v43[1] = kCIAttributeType;
  v44[0] = &off_7A980;
  v44[1] = kCIAttributeTypeInteger;
  v65[12] = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
  v64[13] = @"inputLambda";
  v41[0] = kCIAttributeDefault;
  v41[1] = kCIAttributeType;
  v42[0] = &off_7AAF0;
  v42[1] = kCIAttributeTypeScalar;
  v65[13] = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
  v64[14] = @"inputMaxNumIterations";
  v39[0] = kCIAttributeDefault;
  v39[1] = kCIAttributeType;
  v40[0] = &off_7A998;
  v40[1] = kCIAttributeTypeInteger;
  v65[14] = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
  v64[15] = @"inputBandRange";
  v37[0] = kCIAttributeDefault;
  v37[1] = kCIAttributeType;
  v38[0] = [CIVector vectorWithX:0.00999999978 Y:0.200000003];
  v38[1] = kCIAttributeTypePosition;
  v65[15] = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
  v64[16] = @"inputThresholdOffset";
  v35[0] = kCIAttributeDefault;
  v35[1] = kCIAttributeType;
  v36[0] = &off_7AAD0;
  v36[1] = kCIAttributeTypeScalar;
  v65[16] = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
  v64[17] = @"inputFilterCut";
  v33[0] = kCIAttributeDefault;
  v33[1] = kCIAttributeType;
  v34[0] = &off_7AAE0;
  v34[1] = kCIAttributeTypeScalar;
  v65[17] = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
  v64[18] = @"inputFeatherBandRange";
  v31[0] = kCIAttributeDefault;
  v31[1] = kCIAttributeType;
  v32[0] = &off_7AAC0;
  v32[1] = kCIAttributeTypeScalar;
  v65[18] = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
  v64[19] = @"inputAdaptiveThresholdRange";
  v29[0] = kCIAttributeDefault;
  v29[1] = kCIAttributeType;
  v30[0] = &off_7A6F0;
  v30[1] = kCIAttributeTypeScalar;
  v65[19] = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v64[20] = @"inputSigmaFallout";
  v27[0] = kCIAttributeDefault;
  v27[1] = kCIAttributeType;
  v28[0] = &off_7A700;
  v28[1] = kCIAttributeTypeScalar;
  v65[20] = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
  v64[21] = @"inputFocalLengthNormalized";
  v25[0] = kCIAttributeDefault;
  v25[1] = kCIAttributeType;
  v26[0] = &off_7A540;
  v26[1] = kCIAttributeTypeScalar;
  v65[21] = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v64[22] = @"inputAdaptiveThresholdFaceGroupRange";
  v23[0] = kCIAttributeDefault;
  v23[1] = kCIAttributeType;
  v24[0] = &off_7A680;
  v24[1] = kCIAttributeTypeScalar;
  v65[22] = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v64[23] = @"inputAdaptiveThresholdFaceErrorMargin";
  v21[0] = kCIAttributeDefault;
  v21[1] = kCIAttributeType;
  v22[0] = &off_7A710;
  v22[1] = kCIAttributeTypeScalar;
  v65[23] = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v64[24] = @"inputAdaptiveThresholdZRangeConst";
  v19[0] = kCIAttributeDefault;
  v19[1] = kCIAttributeType;
  v20[0] = &off_7A720;
  v20[1] = kCIAttributeTypeScalar;
  v65[24] = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v64[25] = @"inputAdaptiveThresholdZRangeLinearDepth";
  v17[0] = kCIAttributeDefault;
  v17[1] = kCIAttributeType;
  v18[0] = &off_7A540;
  v18[1] = kCIAttributeTypeScalar;
  v65[25] = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v64[26] = @"inputAdaptiveThresholdConstOffset";
  v15[0] = kCIAttributeDefault;
  v15[1] = kCIAttributeType;
  v16[0] = &off_7A9C8;
  v16[1] = kCIAttributeTypeScalar;
  v65[26] = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v64[27] = @"inputAdaptiveThresholdLinearDepthOffset";
  v13[0] = kCIAttributeDefault;
  v13[1] = kCIAttributeType;
  v14[0] = &off_7A730;
  v14[1] = kCIAttributeTypeScalar;
  v65[27] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v64[28] = @"inputAdaptiveThresholdDoDisparityError";
  v11[0] = kCIAttributeDefault;
  v11[1] = kCIAttributeType;
  v12[0] = &__kCFBooleanTrue;
  v12[1] = kCIAttributeTypeBoolean;
  v65[28] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v64[29] = @"inputUseAbsoluteDisparity";
  v9[0] = kCIAttributeDefault;
  v9[1] = kCIAttributeType;
  v10[0] = &__kCFBooleanFalse;
  v10[1] = kCIAttributeTypeBoolean;
  v65[29] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v64[30] = @"inputSharpenRadius";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeType;
  v8[0] = &off_7A740;
  v8[1] = kCIAttributeTypeScalar;
  v65[30] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v64[31] = @"inputGrainAmount";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeType;
  v6[0] = &off_7A750;
  v6[1] = kCIAttributeTypeScalar;
  v65[31] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v64[32] = @"inputDepthDataScore";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeType;
  v4[0] = &off_7A580;
  v4[1] = kCIAttributeTypeScalar;
  v65[32] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:33];
}

- (id)_CIPrepareBlackDisparity
{
  if (qword_8D048 != -1)
  {
    sub_4B59C();
  }

  return qword_8D040;
}

- (id)_CIPrepareBlackDepth
{
  if (qword_8D058 != -1)
  {
    sub_4B5B0();
  }

  return qword_8D050;
}

- (id)_CIApplyBlackDepth
{
  if (qword_8D068 != -1)
  {
    sub_4B5C4();
  }

  return qword_8D060;
}

- (id)_CIRefineBlackDepth
{
  if (qword_8D078 != -1)
  {
    sub_4B5D8();
  }

  return qword_8D070;
}

- (id)_faceVignette
{
  if (qword_8D088 != -1)
  {
    sub_4B5EC();
  }

  return qword_8D080;
}

- (id)_faceProtect
{
  if (qword_8D098 != -1)
  {
    sub_4B600();
  }

  return qword_8D090;
}

- (id)_faceAndBodyFill_orient1
{
  if (qword_8D0A8 != -1)
  {
    sub_4B614();
  }

  return qword_8D0A0;
}

- (id)_faceAndBodyFill_orient6
{
  if (qword_8D0B8 != -1)
  {
    sub_4B628();
  }

  return qword_8D0B0;
}

- (id)_applyVignette
{
  if (qword_8D0C8 != -1)
  {
    sub_4B63C();
  }

  return qword_8D0C0;
}

- (id)adaptiveNormalization2
{
  if (qword_8D0D8 != -1)
  {
    sub_4B650();
  }

  return qword_8D0D0;
}

- (id)adaptiveNormalizationGPU
{
  if (qword_8D0E8 != -1)
  {
    sub_4B664();
  }

  return qword_8D0E0;
}

- (id)adaptiveNormalizationAbsolute
{
  if (qword_8D0F8 != -1)
  {
    sub_4B678();
  }

  return qword_8D0F0;
}

- (id)invertRed
{
  if (qword_8D108 != -1)
  {
    sub_4B68C();
  }

  return qword_8D100;
}

- (id)blendDepth
{
  if (qword_8D118 != -1)
  {
    sub_4B6A0();
  }

  return qword_8D110;
}

- (id)thresholdMatte
{
  if ((atomic_load_explicit(&qword_8D128, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8D128))
  {
    qword_8D120 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_thresholdMatte(__sample matte, __sample blurMatte, float low, float high) \n { \n float m = smoothstep(low, high, matte.r)*blurMatte.r; \n matte.rgb *= m; \n return matte; \n } \n"];
    __cxa_guard_release(&qword_8D128);
  }

  return qword_8D120;
}

- (id)thresholdAndApplyMatte
{
  if ((atomic_load_explicit(&qword_8D138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8D138))
  {
    qword_8D130 = [CIColorKernel PFKernelWithString:@"kernel vec4 _pf_thresholdAndApplyMatte(__sample im, __sample matte, __sample m2, vec4 params, float edgeGamma) \n { \n float low = params.x; float high = params.y; float gamma = params.z; float gain = params.w; float m = smoothstep(low, high, pow(matte.r, gamma+edgeGamma*m2.r)); \n im.rgb *= m; \n im.rgb = clamp(im.rgb, 0.0, 1.0); \n im.rgb = pow(im.rgb, vec3(1.0+gain-gain*matte.r)); \n im.rgb = mix(.5*im.rgb*im.rgb, im.rgb, 1.0-m2.r); \n float r = im.r/(im.r+im.g+im.b+0.00001); \n float sat = max(min(1.0, (1.0-r)), 0.0); \n float y = dot(im.rgb, vec3(.3333333)); \n im.rgb = mix(sat*(im.rgb-y)+y, im.rgb, m); \n return im; \n } \n"];
    __cxa_guard_release(&qword_8D138);
  }

  return qword_8D130;
}

- (id)_getFocusRect:(id)rect
{
  if (!rect)
  {
    return 0;
  }

  result = [rect objectForKey:kCGImagePropertyExifAuxDictionary];
  if (result)
  {
    result = [result objectForKey:@"Regions"];
    if (result)
    {
      v4 = [result objectForKey:@"RegionList"];
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (result)
      {
        v5 = result;
        v6 = *v12;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v12 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v11 + 1) + 8 * i);
            v9 = [v8 objectForKey:@"Type"];
            if (v9 && [v9 isEqualToString:@"Focus"] && CGRectMakeWithDictionaryRepresentation(v8, &v10))
            {
              return [CIVector vectorWithCGRect:v10.origin.x - v10.size.width * 0.5, 1.0 - v10.origin.y - v10.size.height * 0.5];
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
          result = 0;
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

- (id)_offsetImage:(id)image inputDisparity:(id)disparity thresholdImage:(id)thresholdImage
{
  *&v60 = +[CIImage emptyImage];
  *(&v60 + 1) = v60;
  *&v61 = v60;
  *(&v61 + 1) = v60;
  size = CGRectNull.size;
  origin = CGRectNull.origin;
  v53 = size;
  v54 = origin;
  v55 = size;
  v56 = origin;
  v57 = size;
  v58 = origin;
  v59 = size;
  memset(&v38, 0, sizeof(v38));
  [disparity extent];
  v9 = v8;
  [disparity extent];
  CGAffineTransformMakeScale(&v38, v9, v10);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [image countByEnumeratingWithState:&v34 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v35;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(image);
      }

      sub_4430C(*(*(&v34 + 1) + 8 * v15));
      x = v62.origin.x;
      y = v62.origin.y;
      width = v62.size.width;
      height = v62.size.height;
      if (!CGRectIsNull(v62))
      {
        v20 = &origin.x + 4 * v13;
        *v20 = x;
        v20[1] = y;
        v20[2] = width;
        v20[3] = height;
        v33 = v38;
        v63.origin.x = x;
        v63.origin.y = y;
        v63.size.width = width;
        v63.size.height = height;
        v64 = CGRectApplyAffineTransform(v63, &v33);
        v49 = kCIInputExtentKey;
        v50 = [CIVector vectorWithCGRect:v64.origin.x, v64.origin.y, v64.size.width, v64.size.height];
        *(&v60 + v13++) = [objc_msgSend(disparity imageByApplyingFilter:@"CIAreaAverage" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v50, &v49, 1)), "imageByClampingToExtent"}];
        if (v13 == 4)
        {
          break;
        }
      }

      if (v12 == ++v15)
      {
        v12 = [image countByEnumeratingWithState:&v34 objects:v51 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (qword_8D158 != -1)
  {
    sub_4B6B4();
  }

  v21 = qword_8D150;
  v41[0] = v60;
  v41[1] = v61;
  v42 = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:v53 Z:v55 W:?];
  v43 = [CIVector vectorWithX:"vectorWithX:Y:Z:W:" Y:v57 Z:v59 W:?];
  v22 = 1.0;
  if (v13)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  if (v13 <= 1)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = 1.0;
  }

  if (v13 <= 2)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  if (v13 <= 3)
  {
    v22 = 0.0;
  }

  v44 = [CIVector vectorWithX:v23 Y:v24 Z:v25 W:v22];
  [(NSNumber *)[(CIPortraitEffectBlack *)self inputAdaptiveThresholdFaceGroupRange] floatValue];
  v45 = [CIVector vectorWithX:0.300000012 Y:4.0 Z:v26 W:sub_44480(disparity)];
  inputAdaptiveThresholdFaceErrorMargin = [(CIPortraitEffectBlack *)self inputAdaptiveThresholdFaceErrorMargin];
  bOOLValue = [(NSNumber *)[(CIPortraitEffectBlack *)self inputAdaptiveThresholdDoDisparityError] BOOLValue];
  v28 = &off_7A540;
  if (bOOLValue)
  {
    v28 = &off_7A580;
  }

  v47 = v28;
  imageByClampingToExtent = [thresholdImage imageByClampingToExtent];
  v29 = [NSArray arrayWithObjects:v41 count:11];
  v39 = kCIKernelOutputFormat;
  v40 = [NSNumber numberWithInt:kCIFormatRGBAh];
  return [objc_msgSend(v21 applyWithExtent:v29 arguments:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary options:{"dictionaryWithObjects:forKeys:count:", &v40, &v39, 1), 0.0, 0.0, 1.0, 1.0), "imageByClampingToExtent"}];
}

- (unint64_t)_maxNumVerticesForImage:(id)image sigmaLuma:(id)luma sigmaSpace:(id)space
{
  v5 = 221184;
  if (image)
  {
    [image extent];
    if (!CGRectIsInfinite(v11))
    {
      [image extent];
      v8 = v7;
      [image extent];
      return v9 * v8;
    }
  }

  return v5;
}

- (id)outputImage
{
  inputImage = self->super.inputImage;
  if (!inputImage)
  {
    return 0;
  }

  inputDisparity = self->inputDisparity;
  if (!inputDisparity)
  {
    v5 = 0;
    goto LABEL_8;
  }

  depthData = [(CIImage *)inputDisparity depthData];
  v5 = depthData;
  if (!depthData)
  {
LABEL_8:
    v6 = 1;
LABEL_9:
    v7 = 0;
    v554 = 0;
    if (![(NSNumber *)self->inputUseAbsoluteDisparity BOOLValue])
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = 0;
  if ([(AVDepthData *)depthData depthDataAccuracy]!= &dword_0 + 1)
  {
    goto LABEL_9;
  }

  v7 = 1;
LABEL_10:
  [(CIPortraitEffectBlack *)self setDefaultsAbsoluteDisparity];
  v554 = v7;
LABEL_11:
  [-[CIPortraitEffectBlack valueForKey:](self valueForKey:{@"inputDepthDataScore", "floatValue"}];
  if ((v6 & 1) == 0 && fabs(v8 + -1.0) <= 0.0001)
  {
    [(AVDepthData *)v5 portraitScore];
    if (v9 > 0.0)
    {
      [(CIPortraitEffectBlack *)self setValue:[NSNumber numberWithFloat:?], @"inputDepthDataScore"];
    }
  }

  selfCopy = self;
  if (qword_8D140 != -1)
  {
    sub_4B6DC();
  }

  if (self->inputMatte)
  {
    v10 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v11 = [CIImage imageWithColor:v10];
    [(CIImage *)inputImage extent];
    v12 = [(CIImage *)v11 imageByCroppingToRect:?];
    v13 = [CIImage imageWithColor:v10];
    [(CIImage *)self->super.inputImage extent];
    v14 = [(CIImage *)v13 imageByCroppingToRect:?];
    inputFaceLandmarkArray = self->super.inputFaceLandmarkArray;
    v575 = v14;
    if (inputFaceLandmarkArray && [(NSArray *)inputFaceLandmarkArray count])
    {
      v643[0] = @"inputFaceLandmarkArray";
      v643[1] = @"inputDepthMap";
      v644[0] = self->super.inputFaceLandmarkArray;
      v644[1] = v12;
      v643[2] = @"inputDepthThreshold";
      v643[3] = @"inputScale";
      inputScale = self->super.inputScale;
      v644[2] = &off_7A550;
      v644[3] = inputScale;
      inputImage = [(CIImage *)inputImage imageByApplyingFilter:@"CIPortraitEffectContour" withInputParameters:[NSDictionary dictionaryWithObjects:v644 forKeys:v643 count:4]];
    }

    [(CIImage *)self->super.inputImage extent];
    v552 = v17;
    [(CIImage *)self->inputMatte extent];
    v549 = v18;
    [(CIImage *)self->super.inputImage extent];
    v547 = v19;
    [(CIImage *)self->inputMatte extent];
    v545 = v20;
    thresholdMatte = [(CIPortraitEffectBlack *)self thresholdMatte];
    v21 = self->super.inputFaceLandmarkArray;
    if (v21 && [(NSArray *)v21 count])
    {
      v584 = 0u;
      v585 = 0u;
      v582 = 0u;
      v583 = 0u;
      obj = self->super.inputFaceLandmarkArray;
      v22 = 0;
      v23 = [(NSArray *)selfCopy->super.inputFaceLandmarkArray countByEnumeratingWithState:&v582 objects:v642 count:16];
      if (v23)
      {
        v24 = 0;
        v25 = *v583;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v583 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v582 + 1) + 8 * i);
            if ([v27 objectForKeyedSubscript:@"faceJunkinessIndex"])
            {
              [objc_msgSend(v27 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
              v29 = v28 < -0.2;
            }

            else
            {
              v29 = 0;
            }

            if ([v27 objectForKeyedSubscript:@"faceBoundingBox"])
            {
              [objc_msgSend(objc_msgSend(v27 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
              v31 = v30 > 0.15;
            }

            else
            {
              v31 = 0;
            }

            if ([v27 objectForKeyedSubscript:@"roll"])
            {
              [objc_msgSend(v27 objectForKeyedSubscript:{@"roll", "floatValue"}];
              v33 = fabsf(v32) < 1.05;
            }

            else
            {
              v33 = 1;
            }

            if (v29 && v31 && v33)
            {
              v34 = [LightingFacePoints alloc];
              [(CIImage *)selfCopy->super.inputImage extent];
              v35 = [(LightingFacePoints *)v34 initWithFaceLandmarkDictionary:v27 forImageRect:?];
              [(LightingFacePoints *)v35 faceWidth];
              v37 = v36;
              [(CIImage *)selfCopy->super.inputImage extent];
              v39 = v38;
              v40 = [objc_msgSend(v27 objectForKeyedSubscript:{@"orientation", "intValue"}];
              v22 = v40;
              if (v40 == 8 || v40 == 6)
              {
                v42 = 1.5708;
              }

              else
              {
                v42 = 0.0;
              }

              [(LightingFacePoints *)v35 centerChin];
              v573 = v43;
              [(LightingFacePoints *)v35 centerChin];
              v571 = v44;
              [(LightingFacePoints *)v35 faceWidth];
              v46 = v45;
              [(LightingFacePoints *)v35 faceHeight];
              v47 = v37 / v39;
              v48 = fmin(v47 * 1.05, 1.0);
              v49 = v46 * 0.5;
              v51 = v50 * 4.5 * v48;
              v52 = __sincosf_stret(v42);
              v53 = sin(v42 + v42);
              v54 = [CIVector vectorWithX:(v52.__cosval * v52.__cosval) / ((v49 + v49) * v49) + (v52.__sinval * v52.__sinval) / ((v51 + v51) * v51) Y:(v53 / (v51 * 4.0 * v51) - v53 / (v49 * 4.0 * v49)) Z:(v52.__sinval * v52.__sinval) / ((v49 + v49) * v49) + (v52.__cosval * v52.__cosval) / ((v51 + v51) * v51) W:0.7];
              v55 = v573;
              v56 = v571;
              v57 = [CIVector vectorWithX:v55 Y:v56];
              _faceVignette = [(CIPortraitEffectBlack *)selfCopy _faceVignette];
              [(CIImage *)selfCopy->super.inputImage extent];
              v641[0] = inputImage;
              v641[1] = v575;
              v641[2] = v57;
              v641[3] = v54;
              v575 = [_faceVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v641, 4), v59, v60, v61, v62}];

              ++v24;
            }
          }

          v23 = [(NSArray *)obj countByEnumeratingWithState:&v582 objects:v642 count:16];
        }

        while (v23);
        LODWORD(v23) = v24 > 0;
      }
    }

    else
    {
      v22 = 0;
      LODWORD(v23) = 0;
    }

    imageByClampingToExtent = [(CIImage *)selfCopy->inputMatte imageByClampingToExtent];
    CGAffineTransformMakeScale(&v645, 0.5, 0.5);
    v64 = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:&v645];
    if (v554)
    {
      v66 = 1.25;
      LODWORD(v65) = 1096548352;
    }

    else
    {
      bOOLValue = [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue];
      v65 = 1.0;
      if (bOOLValue)
      {
        v66 = 1.25;
      }

      else
      {
        v66 = 1.0;
      }

      LODWORD(v65) = 1091305472;
      if (bOOLValue)
      {
        *&v65 = 13.75;
      }
    }

    if (v22)
    {
      if (v22 == 8 || v22 == 6)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = 1.5708;
      }

      v639[0] = @"inputRadius";
      v640[0] = [NSNumber numberWithFloat:v65];
      v639[1] = @"inputAngle";
      *&v73 = v72;
      v640[1] = [NSNumber numberWithFloat:v73];
      v74 = [[(CIImage *)v64 imageByApplyingFilter:@"CIMotionBlur" withInputParameters:[NSDictionary dictionaryWithObjects:v639 forKeys:2 count:?]], "imageByApplyingGaussianBlurWithSigma:", v66];
    }

    else
    {
      [(NSNumber *)selfCopy->super.inputScale floatValue];
      v74 = [(CIImage *)v64 imageByApplyingGaussianBlurWithSigma:v76 * 8.0];
    }

    v77 = v74;
    v78 = 0.0;
    if (((v22 - 6) & 0xFFFFFFFD) != 0)
    {
      *&v78 = 1.5708;
    }

    if (v22)
    {
      v79 = *&v78;
    }

    else
    {
      v79 = 1.5708;
    }

    v637[0] = @"inputRadius";
    LODWORD(v75) = 6.0;
    v638[0] = [NSNumber numberWithFloat:v75, v78];
    v637[1] = @"inputAngle";
    *&v80 = v79;
    v638[1] = [NSNumber numberWithFloat:v80];
    v81 = [(CIImage *)v64 imageByApplyingFilter:@"CIMotionBlur" withInputParameters:[NSDictionary dictionaryWithObjects:v638 forKeys:v637 count:2]];
    v82 = [(CIImage *)v64 imageByApplyingFilter:@"CICheapMorphology" withInputParameters:&off_7DE78];
    v635 = @"inputBackgroundImage";
    v636 = v82;
    v83 = [(CIImage *)v81 imageByApplyingFilter:@"CIDifferenceBlendMode" withInputParameters:[NSDictionary dictionaryWithObjects:&v636 forKeys:&v635 count:1]];
    CGAffineTransformMakeScale(&v645, 2.0, 2.0);
    v84 = [(CIImage *)v77 imageByApplyingTransform:&v645];
    CGAffineTransformMakeScale(&v645, 2.0, 2.0);
    v85 = [(CIImage *)v83 imageByApplyingTransform:&v645];
    [(CIImage *)selfCopy->inputMatte extent];
    v634[0] = imageByClampingToExtent;
    v634[1] = v84;
    v634[2] = &off_7A540;
    v634[3] = &off_7A550;
    v90 = [thresholdMatte applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v634, 4), v86, v87, v88, v89}];
    v91 = v552;
    v92 = v549;
    v93 = v91 / v92;
    v94 = v547;
    v95 = v545;
    v96 = v93;
    v97 = (v94 / v95);
    CGAffineTransformMakeScale(&v645, v93, v97);
    v98 = [v90 imageByApplyingTransform:&v645];
    [(CIImage *)inputImage extent];
    v99 = [v98 imageByCroppingToRect:?];
    CGAffineTransformMakeScale(&v645, v96, v97);
    v100 = [(CIImage *)v85 imageByApplyingTransform:&v645];
    [(CIImage *)inputImage extent];
    v101 = [(CIImage *)v100 imageByCroppingToRect:?];
    thresholdAndApplyMatte = [(CIPortraitEffectBlack *)selfCopy thresholdAndApplyMatte];
    v103 = 0.5;
    v104 = 0.100000001;
    v105 = 1059481190;
    v106 = 2.20000005;
    if ((v554 & 1) == 0 && ![(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
    {
      v104 = 0.0;
      v106 = 1.75;
      v103 = 0.400000006;
      v105 = 1036831949;
    }

    v107 = [CIVector vectorWithX:v104 Y:1.0 Z:v103 W:v106];
    [(CIImage *)inputImage extent];
    v109 = v108;
    v111 = v110;
    v113 = v112;
    v115 = v114;
    v633[0] = inputImage;
    v633[1] = v99;
    v633[2] = v101;
    v633[3] = v107;
    LODWORD(v108) = v105;
    v633[4] = [NSNumber numberWithFloat:v108];
    v116 = [thresholdAndApplyMatte applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v633, 5), v109, v111, v113, v115}];
    [(NSNumber *)selfCopy->inputSharpenRadius floatValue];
    v118 = v117;
    [(NSNumber *)selfCopy->super.inputScale floatValue];
    *&v120 = v118 * v119;
    v632[0] = &off_7A5E0;
    v631[0] = @"inputSharpness";
    v631[1] = @"inputRadius";
    v632[1] = [NSNumber numberWithFloat:v120];
    v121 = [v116 imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v632, v631, 2)}];
    if (v23)
    {
      _applyVignette = [(CIPortraitEffectBlack *)selfCopy _applyVignette];
      [(CIImage *)selfCopy->super.inputImage extent];
      v124 = v123;
      v126 = v125;
      v128 = v127;
      v130 = v129;
      v630[0] = v121;
      v630[1] = v575;
      LODWORD(v123) = 1061997773;
      v630[2] = [NSNumber numberWithFloat:v123];
      v121 = [_applyVignette applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v630, 3), v124, v126, v128, v130}];
    }

    [(NSNumber *)selfCopy->super.inputScale floatValue];
    v132 = v131;
    [(NSNumber *)selfCopy->inputGrainAmount floatValue];
    *&v134 = v132 * v133;
    v628[0] = @"inputAmount";
    v135 = [NSNumber numberWithFloat:v134];
    v628[1] = @"inputISO";
    v629[0] = v135;
    v629[1] = &off_7A938;
    return [v121 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v629, v628, 2)}];
  }

  if (!self->inputDepthMap && !self->inputDisparity)
  {
    return inputImage;
  }

  inputFullSizeImage = self->inputFullSizeImage;
  if (!inputFullSizeImage)
  {
    inputFullSizeImage = self->super.inputImage;
  }

  if (self->inputDisparity)
  {
    inputDepthMap = self->inputDisparity;
  }

  else
  {
    inputDepthMap = self->inputDepthMap;
  }

  inputMinimumEffectLevel = self->inputMinimumEffectLevel;
  if (inputMinimumEffectLevel)
  {
    v69 = [(NSNumber *)inputMinimumEffectLevel intValue]== 2;
  }

  else
  {
    v69 = 1;
  }

  inputBackgroundSeparationLikehood = self->inputBackgroundSeparationLikehood;
  if (inputBackgroundSeparationLikehood)
  {
    [(NSNumber *)inputBackgroundSeparationLikehood floatValue];
    v138 = v137 > 0.5;
  }

  else
  {
    v138 = 0;
  }

  v541 = v69 || v138;
  v139 = [CIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v140 = [CIImage imageWithColor:v139];
  [(CIImage *)self->super.inputImage extent];
  v567 = [(CIImage *)v140 imageByCroppingToRect:?];
  v141 = [CIImage imageWithColor:v139];
  [(CIImage *)inputDepthMap extent];
  v142 = [(CIImage *)v141 imageByCroppingToRect:?];
  v143 = [CIImage imageWithColor:v139];
  [(CIImage *)inputDepthMap extent];
  v144 = [(CIImage *)v143 imageByCroppingToRect:?];
  v145 = self->super.inputFaceLandmarkArray;
  if (!v145)
  {
    goto LABEL_148;
  }

  v555 = v144;
  if ([(NSArray *)v145 count])
  {
    v146 = self->super.inputFaceLandmarkArray;
    v626[0] = @"inputFaceLandmarkArray";
    v626[1] = @"inputDepthMap";
    v627[0] = v146;
    v627[1] = v142;
    v626[2] = @"inputDepthThreshold";
    v626[3] = @"inputScale";
    v147 = self->super.inputScale;
    v627[2] = &off_7A550;
    v627[3] = v147;
    inputImage = [(CIImage *)inputImage imageByApplyingFilter:@"CIPortraitEffectContour" withInputParameters:[NSDictionary dictionaryWithObjects:v627 forKeys:v626 count:4]];
  }

  v148 = self->super.inputFaceLandmarkArray;
  if (!v148 || (v576 = v142, [(NSArray *)v148 count]== 0 || !v541) || (v580 = 0u, v581 = 0u, v578 = 0u, v579 = 0u, v544 = self->super.inputFaceLandmarkArray, (v568 = [(NSArray *)v544 countByEnumeratingWithState:&v578 objects:v625 count:16]) == 0))
  {
LABEL_148:
    v574 = 0;
    goto LABEL_149;
  }

  v574 = 0;
  v565 = 0;
  obja = *v579;
  v553 = kCIKernelOutputFormat;
  v550 = kCIFormatRh;
  do
  {
    for (j = 0; j != v568; j = j + 1)
    {
      if (*v579 != obja)
      {
        objc_enumerationMutation(v544);
      }

      v150 = *(*(&v578 + 1) + 8 * j);
      if ([v150 objectForKeyedSubscript:@"faceJunkinessIndex"])
      {
        [objc_msgSend(v150 objectForKeyedSubscript:{@"faceJunkinessIndex", "floatValue"}];
        v152 = v151 < -0.2;
      }

      else
      {
        v152 = 0;
      }

      if ([v150 objectForKeyedSubscript:@"faceBoundingBox"])
      {
        [objc_msgSend(objc_msgSend(v150 objectForKeyedSubscript:{@"faceBoundingBox", "objectForKeyedSubscript:", @"w", "floatValue"}];
        v154 = v153 > 0.15;
      }

      else
      {
        v154 = 0;
      }

      if ([v150 objectForKeyedSubscript:@"roll"])
      {
        [objc_msgSend(v150 objectForKeyedSubscript:{@"roll", "floatValue"}];
        v156 = fabsf(v155) < 1.05;
      }

      else
      {
        v156 = 1;
      }

      if (v152 && v154 && v156)
      {
        v157 = [LightingFacePoints alloc];
        [(CIImage *)selfCopy->super.inputImage extent];
        v158 = [(LightingFacePoints *)v157 initWithFaceLandmarkDictionary:v150 forImageRect:?];
        [(LightingFacePoints *)v158 faceWidth];
        v160 = v159;
        [(CIImage *)selfCopy->super.inputImage extent];
        v162 = v161;
        v574 = [objc_msgSend(v150 objectForKeyedSubscript:{@"orientation", "intValue"}];
        if (v574 == 8 || v574 == 6)
        {
          v164 = 1.5708;
        }

        else
        {
          v164 = 0.0;
        }

        [(LightingFacePoints *)v158 centerChin];
        v166 = v165;
        [(LightingFacePoints *)v158 centerChin];
        v168 = v167;
        [(LightingFacePoints *)v158 faceWidth];
        v170 = v169;
        [(LightingFacePoints *)v158 faceHeight];
        v172 = v171;
        v173 = v170 * 0.5;
        if ((v554 & 1) != 0 || [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
        {
          v173 = v173 * 0.9;
        }

        v174 = v160 / v162;
        v175 = fmin(v174 * 1.05, 1.0);
        v176 = v172 * 4.5 * v175;
        v177 = __sincosf_stret(v164);
        v178 = sin(v164 + v164);
        v179 = [CIVector vectorWithX:(v177.__sinval * v177.__sinval) / ((v176 + v176) * v176) + (v177.__cosval * v177.__cosval) / ((v173 + v173) * v173) Y:(v178 / (v176 * 4.0 * v176) - v178 / (v173 * 4.0 * v173)) Z:(v177.__cosval * v177.__cosval) / ((v176 + v176) * v176) + (v177.__sinval * v177.__sinval) / ((v173 + v173) * v173) W:0.7];
        v180 = v166;
        v181 = v168;
        v182 = [CIVector vectorWithX:v180 Y:v181];
        _faceVignette2 = [(CIPortraitEffectBlack *)selfCopy _faceVignette];
        [(CIImage *)selfCopy->super.inputImage extent];
        v624[0] = inputImage;
        v624[1] = v567;
        v624[2] = v182;
        v624[3] = v179;
        v567 = [_faceVignette2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v624, 4), v184, v185, v186, v187}];

        v188 = [LightingFacePoints alloc];
        [(CIImage *)inputDepthMap extent];
        v189 = [(LightingFacePoints *)v188 initWithFaceLandmarkDictionary:v150 forImageRect:?];
        v190 = *([(LightingFacePoints *)v189 rightKickLights]+ 4);
        v191 = *[(LightingFacePoints *)v189 leftKickLights];
        v192 = *([(LightingFacePoints *)v189 rightKickLights]+ 5);
        v193 = *([(LightingFacePoints *)v189 leftKickLights]+ 1);
        [(LightingFacePoints *)v189 faceWidth];
        v195 = v194;
        [(LightingFacePoints *)v189 faceHeight];
        v197 = v196;
        [(LightingFacePoints *)v189 centerChin];
        v199 = v198;
        [(LightingFacePoints *)v189 centerChin];
        v200 = (v190 + v191) * 0.5;
        v201 = (v192 + v193) * 0.5;
        v202 = v195 * 0.17;
        *&v193 = v197 * 0.22;
        v556 = v200;
        v203 = v200 - v199;
        v204 = v201;
        *&v205 = v201 - v205;
        LODWORD(v199) = atan2f(v203, *&v205);
        v206 = __sincosf_stret(*&v199);
        v207 = sin(*&v199 + *&v199);
        v546 = *&v193;
        v548 = v202;
        v208 = [CIVector vectorWithX:(v206.__cosval * v206.__cosval) / ((v548 + v548) * v548) + (v206.__sinval * v206.__sinval) / ((v546 + v546) * v546) Y:(v207 / (v546 * 4.0 * v546) - v207 / (v548 * 4.0 * v548)) Z:(v206.__sinval * v206.__sinval) / ((v548 + v548) * v548) + (v206.__cosval * v206.__cosval) / ((v546 + v546) * v546) W:0.7];
        v209 = [CIVector vectorWithX:v556 Y:v204];
        _faceProtect = [(CIPortraitEffectBlack *)selfCopy _faceProtect];
        v622 = v553;
        v623 = [NSNumber numberWithInt:v550];
        v211 = [NSDictionary dictionaryWithObjects:&v623 forKeys:&v622 count:1];
        [(CIImage *)inputDepthMap extent];
        v213 = v212;
        v215 = v214;
        v217 = v216;
        v219 = v218;
        v621[0] = inputDepthMap;
        v621[1] = v576;
        v621[2] = v209;
        v621[3] = v208;
        LODWORD(v212) = 1028443341;
        v621[4] = [NSNumber numberWithFloat:v212];
        v576 = [_faceProtect applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v621, 5), v211, v213, v215, v217, v219}];
        if ((v554 & 1) != 0 || [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
        {
          [(LightingFacePoints *)v189 centerChin];
          v559 = v220;
          [(LightingFacePoints *)v189 centerChin];
          v557 = v221;
          [(LightingFacePoints *)v189 centerNose];
          v223 = v222;
          [(LightingFacePoints *)v189 centerChin];
          v225 = v224;
          [(LightingFacePoints *)v189 centerNose];
          v227 = v226;
          [(LightingFacePoints *)v189 centerChin];
          v228 = v546 * 1.9;
          v229 = v548 * 1.9;
          v230 = v223 - v225;
          *&v231 = v227 - v231;
          LODWORD(v223) = atan2f(v230, *&v231);
          v232 = __sincosf_stret(*&v223);
          v233 = sin(*&v223 + *&v223);
          v234 = [CIVector vectorWithX:(v232.__cosval * v232.__cosval) / ((v229 + v229) * v229) + (v232.__sinval * v232.__sinval) / ((v228 + v228) * v228) Y:(v233 / (v228 * 4.0 * v228) - v233 / (v229 * 4.0 * v229)) Z:(v232.__sinval * v232.__sinval) / ((v229 + v229) * v229) + (v232.__cosval * v232.__cosval) / ((v228 + v228) * v228) W:0.7];
          v235 = v559;
          v236 = v557;
          v237 = [CIVector vectorWithX:v235 Y:v236];
          [(CIImage *)inputDepthMap extent];
          v239 = v238;
          v241 = v240;
          v243 = v242;
          v245 = v244;
          v620[0] = inputDepthMap;
          v620[1] = v576;
          v620[2] = v237;
          v620[3] = v234;
          LODWORD(v238) = 1045220557;
          v620[4] = [NSNumber numberWithFloat:v238];
          v576 = [_faceProtect applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v620, 5), v211, v239, v241, v243, v245}];
          v246 = *([(LightingFacePoints *)v189 rightKickLights]+ 4);
          v247 = *[(LightingFacePoints *)v189 leftKickLights];
          [(LightingFacePoints *)v189 centerNose];
          v249 = v248;
          [(LightingFacePoints *)v189 centerChin];
          v251 = v250;
          [(LightingFacePoints *)v189 faceWidth];
          v253 = v252;
          [(LightingFacePoints *)v189 faceHeight];
          v255 = v254;
          [(LightingFacePoints *)v189 centerChin];
          v257 = v256;
          [(LightingFacePoints *)v189 centerChin];
          v258 = (v246 + v247) * 0.5;
          v259 = (v249 + v251) * 0.5;
          v260 = v259 - v257;
          v262 = v258 - v261;
          *&v263 = atan2f(v260, v262);
          if (v574 == 8 || v574 == 6)
          {
            v264 = *([(LightingFacePoints *)v189 rightKickLights]+ 5);
            v265 = *([(LightingFacePoints *)v189 leftKickLights]+ 1);
            [(LightingFacePoints *)v189 centerNose];
            v267 = v266;
            [(LightingFacePoints *)v189 centerChin];
            v269 = v268;
            [(LightingFacePoints *)v189 centerChin];
            v259 = (v264 + v265) * 0.5;
            v258 = v267;
            v270 = v258 - v269;
            *&v271 = v259 - v271;
            v272 = atan2f(v270, *&v271);
          }

          else
          {
            v272 = *&v263 + 1.57079633;
          }

          v560 = v258;
          if ([v150 objectForKeyedSubscript:@"faceOrientationIndex"])
          {
            [objc_msgSend(v150 objectForKeyedSubscript:{@"faceOrientationIndex", "floatValue"}];
            v275 = v274;
          }

          else
          {
            v275 = 0.0;
          }

          v276 = v253 * 0.22;
          v278 = (fabs(v275 / 3.14159265) * 0.5 + 1.0) * v276;
          v279 = __sincosf_stret(v272);
          v280 = v278;
          v277 = v255 * 0.34;
          v281 = sin(v272 + v272);
          v282 = [CIVector vectorWithX:(v279.__sinval * v279.__sinval) / ((v277 + v277) * v277) + (v279.__cosval * v279.__cosval) / ((v280 + v280) * v280) Y:(v281 / (v277 * 4.0 * v277) - v281 / (v280 * 4.0 * v280)) Z:(v279.__cosval * v279.__cosval) / ((v277 + v277) * v277) + (v279.__sinval * v279.__sinval) / ((v280 + v280) * v280) W:0.7];
          v283 = v560;
          v284 = v259;
          v285 = v282;
          v286 = [CIVector vectorWithX:v560 Y:v259];
          if (v574 > 5)
          {
            if (v574 == 6)
            {
              _faceAndBodyFill_orient6 = [(CIPortraitEffectBlack *)selfCopy _faceAndBodyFill_orient6];
              [(LightingFacePoints *)v189 centerChin];
              v283 = v292;
              goto LABEL_141;
            }

            if (v574 != 8)
            {
              goto LABEL_138;
            }

            _faceAndBodyFill_orient6 = [(CIPortraitEffectBlack *)selfCopy _faceAndBodyFill_orient6];
            [(LightingFacePoints *)v189 centerChin];
            v283 = v289;
LABEL_137:
            v290 = -1.0;
          }

          else
          {
            if (v574 == 1)
            {
              _faceAndBodyFill_orient6 = [(CIPortraitEffectBlack *)selfCopy _faceAndBodyFill_orient1];
              [(LightingFacePoints *)v189 centerChin];
              v284 = v291;
            }

            else
            {
              if (v574 == 3)
              {
                _faceAndBodyFill_orient6 = [(CIPortraitEffectBlack *)selfCopy _faceAndBodyFill_orient1];
                [(LightingFacePoints *)v189 centerChin];
                v284 = v288;
                goto LABEL_137;
              }

LABEL_138:
              _faceAndBodyFill_orient6 = [(CIPortraitEffectBlack *)selfCopy _faceAndBodyFill_orient6];
            }

LABEL_141:
            v290 = 1.0;
          }

          v293 = [CIVector vectorWithX:v283 Y:v284];
          v294 = [CIVector vectorWithX:v280 Y:v290];
          v618 = v553;
          v619 = [NSNumber numberWithInt:v550];
          v295 = [NSDictionary dictionaryWithObjects:&v619 forKeys:&v618 count:1];
          [(CIImage *)inputDepthMap extent];
          v617[0] = v555;
          v617[1] = v286;
          v617[2] = v285;
          v617[3] = v294;
          v617[4] = v293;
          v555 = [_faceAndBodyFill_orient6 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v617, 5), v295, v296, v297, v298, v299}];
        }

        else
        {
          v273 = [CIImage imageWithColor:[CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]];
          [(CIImage *)inputDepthMap extent];
          v555 = [(CIImage *)v273 imageByCroppingToRect:?];
        }

        ++v565;
        continue;
      }
    }

    v568 = [(NSArray *)v544 countByEnumeratingWithState:&v578 objects:v625 count:16];
  }

  while (v568);
  v300 = v565;
  if (!v565)
  {
LABEL_149:
    v301 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v302 = [CIImage imageWithColor:v301];
    [(CIImage *)inputDepthMap extent];
    v576 = [(CIImage *)v302 imageByCroppingToRect:?];
    v303 = [CIImage imageWithColor:v301];
    [(CIImage *)inputDepthMap extent];
    v555 = [(CIImage *)v303 imageByCroppingToRect:?];
    [(CIImage *)selfCopy->super.inputImage extent];
    v305 = v304;
    [(CIImage *)selfCopy->super.inputImage extent];
    v306 = v305 * 0.5;
    v308 = v307 * 0.5;
    v309 = v306;
    v310 = v306 * 0.3;
    v311 = v308;
    v312 = v308 * 0.3;
    v313 = [CIVector vectorWithX:1.0 / ((v310 + v310) * v310) + 0.0 / ((v312 + v312) * v312) Y:0.0 / (v312 * 4.0 * v312) - 0.0 / (v310 * 4.0 * v310) Z:0.0 / ((v310 + v310) * v310) + 1.0 / ((v312 + v312) * v312) W:0.7];
    v314 = [CIVector vectorWithX:v309 Y:v311];
    _faceVignette3 = [(CIPortraitEffectBlack *)selfCopy _faceVignette];
    [(CIImage *)selfCopy->super.inputImage extent];
    v616[0] = inputImage;
    v616[1] = v567;
    v616[2] = v314;
    v616[3] = v313;
    v567 = [_faceVignette3 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v616, 4), v316, v317, v318, v319}];
    v300 = 0;
  }

  v320 = selfCopy;
  if (!selfCopy->inputDisparity)
  {
    goto LABEL_224;
  }

  v566 = v300;
  inputFocusRect = selfCopy->inputFocusRect;
  if (!inputFocusRect)
  {
    inputFocusRect = [(CIPortraitEffectBlack *)selfCopy _getFocusRect:[(CIImage *)selfCopy->super.inputImage properties]];
    v320 = selfCopy;
    if (!inputFocusRect)
    {
      inputFocusRect = [CIVector vectorWithX:0.45 Y:0.45 Z:0.1 W:0.1];
      v320 = selfCopy;
    }
  }

  v322 = v320->inputDisparity;
  v614 = @"inputFocusRect";
  v615 = inputFocusRect;
  objb = [(CIImage *)v322 imageByApplyingFilter:@"CIConfidenceThreshold" withInputParameters:[NSDictionary dictionaryWithObjects:&v615 forKeys:&v614 count:1]];
  if (byte_8C879)
  {
    v561 = 0.0;
    v323 = 0.0;
    v324 = selfCopy;
    goto LABEL_199;
  }

  v647.data = kCIContextWorkingFormat;
  v558 = kCIFormatRGBAh;
  *&v654.a = [NSNumber numberWithInt:?];
  v325 = [CIContext contextWithOptions:[NSDictionary dictionaryWithObjects:&v654 forKeys:&v647 count:1]];
  v326 = CGColorSpaceCreateWithName(kCGColorSpaceLinearSRGB);
  v649[0] = 0;
  [(CIContext *)v325 render:objb toBitmap:v649 rowBytes:8 bounds:v558 format:v326 colorSpace:0.0, 0.0, 1.0, 1.0];
  *&v645.b = xmmword_54CB0;
  *&v645.a = v649;
  *&v645.d = 8;
  dest.data = &v655;
  *&dest.height = xmmword_54CB0;
  dest.rowBytes = 16;
  vImageConvert_Planar16FtoPlanarF(&v645, &dest, 0);
  CGColorSpaceRelease(v326);
  v561 = *&v655.a;
  v327 = selfCopy->inputDisparity;
  v328 = selfCopy->super.inputFaceLandmarkArray;
  [(NSNumber *)[(CIPortraitEffectBlack *)selfCopy inputFocalLengthNormalized] floatValue];
  v330 = v329;
  [(NSNumber *)[(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdFaceGroupRange] floatValue];
  v551 = v331;
  [(NSNumber *)[(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdFaceErrorMargin] floatValue];
  v572 = v332;
  bOOLValue2 = [(NSNumber *)[(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdDoDisparityError] BOOLValue];
  v646[1] = 0;
  v646[0] = 0;
  if (v330 <= 0.00000011921)
  {
    v330 = sub_44480(v327);
  }

  v323 = 0.0;
  if (bOOLValue2 && (v587 = 0u, v588 = 0u, memset(&dest, 0, sizeof(dest)), (v334 = [(NSArray *)v328 countByEnumeratingWithState:&dest objects:&v645 count:16]) != 0))
  {
    v335 = 0;
    v336 = 0;
    v337 = *dest.width;
    v569 = v330 * 0.22;
    v338 = 0.0;
LABEL_161:
    v339 = 0;
    while (1)
    {
      if (*dest.width != v337)
      {
        objc_enumerationMutation(v328);
      }

      sub_4430C(*(dest.height + 8 * v339));
      x = v656.origin.x;
      y = v656.origin.y;
      width = v656.size.width;
      height = v656.size.height;
      if (!CGRectIsNull(v656))
      {
        v344 = 0.0;
        if (v327)
        {
          v657.origin.x = x;
          v657.origin.y = y;
          v657.size.width = width;
          v657.size.height = height;
          if (!CGRectIsInfinite(v657))
          {
            memset(&v655, 0, sizeof(v655));
            [(CIImage *)v327 extent];
            v346 = v345;
            [(CIImage *)v327 extent];
            CGAffineTransformMakeScale(&v655, v346, v347);
            v654 = v655;
            v658.origin.x = x;
            v658.origin.y = y;
            v658.size.width = width;
            v658.size.height = height;
            v659 = CGRectApplyAffineTransform(v658, &v654);
            v652 = kCIInputExtentKey;
            v653 = [CIVector vectorWithCGRect:v659.origin.x, v659.origin.y, v659.size.width, v659.size.height];
            v348 = [(CIImage *)v327 imageByApplyingFilter:@"CIAreaAverage" withInputParameters:[NSDictionary dictionaryWithObjects:&v653 forKeys:&v652 count:1]];
            if ((atomic_load_explicit(&qword_8D168, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_8D168))
            {
              v650 = kCIContextWorkingFormat;
              v651 = [NSNumber numberWithInt:v558];
              qword_8D160 = [CIContext contextWithOptions:[NSDictionary dictionaryWithObjects:&v651 forKeys:&v650 count:1]];
              __cxa_guard_release(&qword_8D168);
            }

            v649[1] = 0;
            v649[0] = 0;
            v648 = 0;
            [qword_8D160 render:v348 toBitmap:&v648 rowBytes:8 bounds:v558 format:objc_msgSend(qword_8D160 colorSpace:{"workingColorSpace"), 0.0, 0.0, 1.0, 1.0}];
            *&v654.b = xmmword_54CB0;
            *&v654.a = &v648;
            *&v654.d = 8;
            *&v647.height = xmmword_54CB0;
            v647.data = v649;
            v647.rowBytes = 16;
            vImageConvert_Planar16FtoPlanarF(&v654, &v647, 0);
            v344 = *v649;
          }
        }

        *(v646 + v336) = v344;
        v660.origin.x = x;
        v660.origin.y = y;
        v660.size.width = width;
        v660.size.height = height;
        v349 = CGRectGetWidth(v660);
        v661.origin.x = x;
        v661.origin.y = y;
        v661.size.width = width;
        v661.size.height = height;
        v350 = CGRectGetHeight(v661);
        v351 = v349;
        *&v350 = v350;
        v352 = v569 / (v572 * sqrtf((*&v350 * *&v350) + (v351 * v351)));
        v353 = v352 < 0.3 || v352 > 4.0;
        if (!v353)
        {
          v338 = v338 + (v344 + (-1.0 / v352));
          ++v335;
        }

        v354 = v336 + 1;
        v353 = v336++ <= 2;
        if (!v353)
        {
          break;
        }
      }

      if (v334 == ++v339)
      {
        v355 = [(NSArray *)v328 countByEnumeratingWithState:&dest objects:&v645 count:16];
        v334 = v355;
        v354 = v336;
        if (v355)
        {
          goto LABEL_161;
        }

        break;
      }
    }

    if (v335 < 1)
    {
      v323 = 0.0;
    }

    else
    {
      v323 = v338 / v335;
    }

    v324 = selfCopy;
    if (v354 >= 1)
    {
      if ((v561 - v323) >= 0.1)
      {
        v356 = (v561 - v323);
      }

      else
      {
        v356 = 0.1;
      }

      v357 = 1.0 / v356;
      v358 = v551 + v357;
      v359 = v354;
      v360 = -1;
      v361 = v646;
      v362 = 3.4028e38;
      do
      {
        v363 = *v361++;
        v364 = v363;
        v365 = (v363 - v323);
        if (v365 < 0.1)
        {
          v365 = 0.1;
        }

        v366 = 1.0 / v365;
        if (v358 > v366 && v364 < v362)
        {
          v362 = v364;
          v360 = v354;
        }

        --v359;
      }

      while (v359);
      v367 = v561;
      if (v360 != -1)
      {
        v367 = v362;
      }

      v561 = v367;
    }
  }

  else
  {
    v324 = selfCopy;
  }

  if (byte_8C879)
  {
LABEL_199:
    v368 = [(CIPortraitEffectBlack *)v324 _offsetImage:v324->super.inputFaceLandmarkArray inputDisparity:v324->inputDisparity thresholdImage:objb];
    v324 = selfCopy;
  }

  else
  {
    v368 = 0;
  }

  integerValue = [(CIPortraitEffectBlack *)v324 _maxNumVerticesForImage:v324->inputDisparity sigmaLuma:v324->inputSigmaRLuma sigmaSpace:v324->inputSigmaS];
  if (qword_8D148 != -1)
  {
    sub_4B6F0();
  }

  v370 = selfCopy;
  if ((byte_8C87A & 1) == 0)
  {
    integerValue = [(NSNumber *)selfCopy->inputMaxNumVertices integerValue];
    v370 = selfCopy;
  }

  v613[0] = v370->inputDisparity;
  v612[0] = kCIInputDisparityImageKey;
  v612[1] = @"inputMaxNumVertices";
  v371 = [NSNumber numberWithUnsignedLong:integerValue];
  inputSigmaS = selfCopy->inputSigmaS;
  inputSigmaRLuma = selfCopy->inputSigmaRLuma;
  v613[1] = v371;
  v612[2] = @"inputSigmaS";
  v612[3] = @"inputSigmaRLuma";
  inputSigmaRChroma = selfCopy->inputSigmaRChroma;
  v613[2] = inputSigmaS;
  v613[3] = inputSigmaRLuma;
  v612[4] = @"inputSigmaRChroma";
  v612[5] = @"inputLambda";
  inputLambda = selfCopy->inputLambda;
  inputMaxNumIterations = selfCopy->inputMaxNumIterations;
  v613[4] = inputSigmaRChroma;
  v613[5] = inputLambda;
  inputThresholdOffset = selfCopy->inputThresholdOffset;
  v612[6] = @"inputMaxNumIterations";
  v612[7] = @"inputThresholdOffset";
  v613[6] = inputMaxNumIterations;
  v613[7] = inputThresholdOffset;
  inputFilterCut = selfCopy->inputFilterCut;
  inputBandRange = selfCopy->inputBandRange;
  v612[8] = @"inputFilterCut";
  v612[9] = @"inputBandRange";
  inputFeatherBandRange = selfCopy->inputFeatherBandRange;
  v613[8] = inputFilterCut;
  v613[9] = inputBandRange;
  v612[10] = @"inputFeatherBandRange";
  v612[11] = @"inputAdaptiveThresholdRange";
  inputAdaptiveThresholdRange = selfCopy->inputAdaptiveThresholdRange;
  inputSigmaFallout = selfCopy->inputSigmaFallout;
  v613[10] = inputFeatherBandRange;
  v613[11] = inputAdaptiveThresholdRange;
  v612[12] = @"inputSigmaFallout";
  v612[13] = @"inputThresholdImage";
  v613[12] = inputSigmaFallout;
  v613[13] = objb;
  v383 = [(CIImage *)inputFullSizeImage imageByApplyingFilter:@"CIPortraitPrepareStage" withInputParameters:[NSDictionary dictionaryWithObjects:v613 forKeys:v612 count:14]];
  v610 = kCIKernelOutputFormat;
  v611 = [NSNumber numberWithInt:kCIFormatRh];
  v384 = [NSDictionary dictionaryWithObjects:&v611 forKeys:&v610 count:1];
  if (byte_8C879 != 1)
  {
    adaptiveNormalization2 = [(CIPortraitEffectBlack *)selfCopy adaptiveNormalization2];
    [(CIImage *)v383 extent];
    v399 = v398;
    v401 = v400;
    v403 = v402;
    v405 = v404;
    v607[0] = v383;
    *&v398 = v561;
    v607[1] = [NSNumber numberWithFloat:v398];
    *&v406 = v323;
    v607[2] = [NSNumber numberWithFloat:v406];
    v607[3] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeConst];
    v607[4] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeLinearDepth];
    v607[5] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdConstOffset];
    v607[6] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdLinearDepthOffset];
    v396 = [adaptiveNormalization2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v607, 7), v384, v399, v401, v403, v405}];
LABEL_209:
    inputDepthMap = v396;
    v320 = selfCopy;
    if (v566 <= 0)
    {
      goto LABEL_222;
    }

    if ((v554 & 1) == 0)
    {
      goto LABEL_214;
    }

LABEL_215:
    [(NSNumber *)[(CIPortraitEffectBlack *)v320 inputAdaptiveThresholdZRangeConst] floatValue];
    v418 = v417;
    [(NSNumber *)[(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdConstOffset] floatValue];
    if (byte_8C879 == 1)
    {
      v420 = v419;
      v421 = selfCopy;
      if ((v554 & 1) == 0)
      {
        bOOLValue3 = [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue];
        v421 = selfCopy;
        if (!bOOLValue3)
        {
          goto LABEL_221;
        }
      }

      adaptiveNormalizationAbsolute = [(CIPortraitEffectBlack *)v421 adaptiveNormalizationAbsolute];
      [(CIImage *)v383 extent];
      v425 = v424;
      v427 = v426;
      v429 = v428;
      v431 = v430;
      v606[0] = v383;
      v606[1] = v368;
      LODWORD(v424) = v418;
      v606[2] = [NSNumber numberWithFloat:v424];
      inputAdaptiveThresholdZRangeLinearDepth = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeLinearDepth];
      v433 = v420 + -0.01;
      *&v433 = v433;
      v606[3] = inputAdaptiveThresholdZRangeLinearDepth;
      v606[4] = [NSNumber numberWithFloat:v433];
      v606[5] = &off_7A730;
      v434 = [adaptiveNormalizationAbsolute applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v606, 6), v384, v425, v427, v429, v431}];
    }

    else
    {
      adaptiveNormalization22 = [(CIPortraitEffectBlack *)selfCopy adaptiveNormalization2];
      [(CIImage *)v383 extent];
      v437 = v436;
      v439 = v438;
      v441 = v440;
      v443 = v442;
      v605[0] = v383;
      *&v436 = v561;
      v605[1] = [NSNumber numberWithFloat:v436];
      *&v444 = v323;
      v605[2] = [NSNumber numberWithFloat:v444];
      v605[3] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeConst];
      v605[4] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeLinearDepth];
      v605[5] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdConstOffset];
      v605[6] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdLinearDepthOffset];
      v434 = [adaptiveNormalization22 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v605, 7), v384, v437, v439, v441, v443}];
    }

    v383 = v434;
LABEL_221:
    [(CIImage *)v383 extent];
    v446 = v445;
    [(CIImage *)inputFullSizeImage extent];
    v448 = v447;
    [(CIImage *)v383 extent];
    v450 = v449;
    [(CIImage *)inputFullSizeImage extent];
    v451 = v446;
    v452 = v448;
    v453 = v451 / v452;
    v454 = v450;
    v456 = v455;
    CGAffineTransformMakeScale(&v645, v453, (v454 / v456));
    v457 = [(CIImage *)inputFullSizeImage imageByApplyingTransform:&v645];
    v458 = [[(CIImage *)v457 imageByClampingToExtent] imageByApplyingGaussianBlurWithSigma:2.5];
    [(CIImage *)v457 extent];
    v459 = [(CIImage *)v458 imageByCroppingToRect:?];
    blendDepth = [(CIPortraitEffectBlack *)selfCopy blendDepth];
    [(CIImage *)inputDepthMap extent];
    v604[0] = inputDepthMap;
    v604[1] = v383;
    v604[2] = v457;
    v604[3] = v459;
    v604[4] = v555;
    inputDepthMap = [blendDepth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v604, 5), v384, v461, v462, v463, v464}];
    v320 = selfCopy;
    goto LABEL_222;
  }

  v385 = selfCopy;
  if ((v554 & 1) != 0 || (v386 = [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue], v385 = selfCopy, v386))
  {
    adaptiveNormalizationAbsolute2 = [(CIPortraitEffectBlack *)v385 adaptiveNormalizationAbsolute];
    [(CIImage *)v383 extent];
    v389 = v388;
    v391 = v390;
    v393 = v392;
    v395 = v394;
    v609[0] = v383;
    v609[1] = v368;
    v609[2] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeConst];
    v609[3] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeLinearDepth];
    v609[4] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdConstOffset];
    v609[5] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdLinearDepthOffset];
    v396 = [adaptiveNormalizationAbsolute2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v609, 6), v384, v389, v391, v393, v395}];
    goto LABEL_209;
  }

  adaptiveNormalizationGPU = [(CIPortraitEffectBlack *)selfCopy adaptiveNormalizationGPU];
  [(CIImage *)v383 extent];
  v409 = v408;
  v411 = v410;
  v413 = v412;
  v415 = v414;
  v608[0] = v383;
  v608[1] = v368;
  v608[2] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeConst];
  v608[3] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdZRangeLinearDepth];
  v608[4] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdConstOffset];
  v608[5] = [(CIPortraitEffectBlack *)selfCopy inputAdaptiveThresholdLinearDepthOffset];
  inputDepthMap = [adaptiveNormalizationGPU applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v608, 6), v384, v409, v411, v413, v415}];
  v320 = selfCopy;
  if (v566 > 0)
  {
LABEL_214:
    bOOLValue4 = [(NSNumber *)v320->inputUseAbsoluteDisparity BOOLValue];
    v320 = selfCopy;
    if (bOOLValue4)
    {
      goto LABEL_215;
    }
  }

LABEL_222:
  if (v320->inputDisparity)
  {
    invertRed = [(CIPortraitEffectBlack *)v320 invertRed];
    [(CIImage *)inputDepthMap extent];
    v603 = inputDepthMap;
    inputDepthMap = [invertRed applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &v603, 1), v466, v467, v468, v469}];
    v320 = selfCopy;
  }

LABEL_224:
  [(CIImage *)v320->super.inputImage extent];
  v471 = v470;
  [(CIImage *)inputDepthMap extent];
  v473 = v472;
  [(CIImage *)selfCopy->super.inputImage extent];
  v475 = v474;
  [(CIImage *)inputDepthMap extent];
  v478 = v477;
  if (!selfCopy->inputDisparity)
  {
    CGAffineTransformMakeScale(&v645, 0.5, 0.5);
    inputDepthMap = [(CIImage *)inputDepthMap imageByApplyingTransform:&v645 highQualityDownsample:1];
  }

  if ((v554 & 1) != 0 || (v479 = [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue], v476 = 0.0, v479))
  {
    LODWORD(v476) = 0.25;
  }

  v601 = @"inputBackgroundImage";
  v599 = @"inputEV";
  v600 = [NSNumber numberWithFloat:v476];
  v602 = [(CIImage *)inputDepthMap imageByApplyingFilter:@"CIExposureAdjust" withInputParameters:[NSDictionary dictionaryWithObjects:&v600 forKeys:&v599 count:1]];
  v480 = [(CIImage *)v576 imageByApplyingFilter:@"CIMultiplyBlendMode" withInputParameters:[NSDictionary dictionaryWithObjects:&v602 forKeys:&v601 count:1]];
  imageByClampingToExtent2 = [(CIImage *)inputDepthMap imageByClampingToExtent];
  if ((v554 & 1) != 0 || [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
  {
    v483 = 0.5;
  }

  else
  {
    v483 = 0.15;
  }

  v597 = @"inputRadius";
  *&v482 = v483;
  v598 = [NSNumber numberWithFloat:v482];
  v483 = [[(CIImage *)imageByClampingToExtent2 imageByApplyingFilter:@"CICheapMorphology" withInputParameters:[NSDictionary dictionaryWithObjects:&v597 forKeys:1 count:?]], "imageByApplyingGaussianBlurWithSigma:", v483];
  v486 = v483;
  if (v574)
  {
    v487 = v574 == 8 || v574 == 6;
    LODWORD(v485) = 1070141403;
    if (v487)
    {
      *&v485 = 0.0;
    }

    v596[0] = &off_7A780;
    v595[0] = @"inputRadius";
    v595[1] = @"inputAngle";
    v596[1] = [NSNumber numberWithFloat:v485];
    v488 = [(CIImage *)v486 imageByApplyingFilter:@"CIMotionBlur" withInputParameters:[NSDictionary dictionaryWithObjects:v596 forKeys:v595 count:2]];
    if ((v554 & 1) != 0 || (v489 = [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue], v490 = 4.0, v489))
    {
      v490 = 8.0;
    }

    v491 = [(CIImage *)v488 imageByApplyingGaussianBlurWithSigma:v490];
  }

  else
  {
    v491 = [(CIImage *)v483 imageByApplyingGaussianBlurWithSigma:8.0];
  }

  v492 = v491;
  v493 = v471;
  v494 = v473;
  v495 = v493 / v494;
  v496 = v475;
  v497 = v478;
  v498 = v495;
  v499 = (v496 / v497);
  CGAffineTransformMakeScale(&v645, v495, v499);
  v500 = [(CIImage *)v492 imageByApplyingTransform:&v645];
  [(CIImage *)inputImage extent];
  v501 = [(CIImage *)v500 imageByCroppingToRect:?];
  CGAffineTransformMakeScale(&v645, v498, v499);
  v502 = [(CIImage *)v486 imageByApplyingTransform:&v645];
  [(CIImage *)inputImage extent];
  v503 = [(CIImage *)v502 imageByCroppingToRect:?];
  imageByClampingToExtent3 = [(CIImage *)v480 imageByClampingToExtent];
  CGAffineTransformMakeScale(&v645, v498, v499);
  v505 = [(CIImage *)imageByClampingToExtent3 imageByApplyingTransform:&v645];
  [(CIImage *)inputImage extent];
  v506 = [(CIImage *)v505 imageByCroppingToRect:?];
  imageByClampingToExtent4 = [(CIImage *)v555 imageByClampingToExtent];
  CGAffineTransformMakeScale(&v645, v498, v499);
  v508 = [(CIImage *)imageByClampingToExtent4 imageByApplyingTransform:&v645];
  [(CIImage *)inputImage extent];
  v509 = [(CIImage *)v508 imageByCroppingToRect:?];
  if (v541)
  {
    v510 = v509;
    _CIRefineBlackDepth = [(CIPortraitEffectBlack *)selfCopy _CIRefineBlackDepth];
    if ((v554 & 1) != 0 || [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
    {
      v512 = 1.0;
      v513 = 1.14999998;
      v514 = 1.45000005;
    }

    else
    {
      v512 = 0.0;
      v513 = 0.75;
      v514 = 0.699999988;
    }

    v515 = [CIVector vectorWithX:v514 Y:v513 Z:v512];
    [(CIImage *)selfCopy->super.inputImage extent];
    v594[0] = inputImage;
    v594[1] = v501;
    v594[2] = v503;
    v594[3] = v506;
    v594[4] = v515;
    v594[5] = v510;
    inputImage = [_CIRefineBlackDepth applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v594, 6), v516, v517, v518, v519}];
  }

  [(NSNumber *)selfCopy->inputSharpenRadius floatValue];
  v521 = v520;
  [(NSNumber *)selfCopy->super.inputScale floatValue];
  *&v523 = v521 * v522;
  v592[1] = @"inputRadius";
  v593[0] = &off_7A5E0;
  v592[0] = @"inputSharpness";
  v593[1] = [NSNumber numberWithFloat:v523];
  v524 = [(CIImage *)inputImage imageByApplyingFilter:@"CISharpenLuminance" withInputParameters:[NSDictionary dictionaryWithObjects:v593 forKeys:v592 count:2]];
  _applyVignette2 = [(CIPortraitEffectBlack *)selfCopy _applyVignette];
  if ((v554 & 1) != 0 || [(NSNumber *)selfCopy->inputUseAbsoluteDisparity BOOLValue])
  {
    v526 = *"33s?";
  }

  else
  {
    v526 = 1061997773;
  }

  [(CIImage *)selfCopy->super.inputImage extent];
  v528 = v527;
  v530 = v529;
  v532 = v531;
  v534 = v533;
  v591[0] = v524;
  v591[1] = v567;
  LODWORD(v527) = v526;
  v591[2] = [NSNumber numberWithFloat:v527];
  v535 = [_applyVignette2 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", v591, 3), v528, v530, v532, v534}];
  [(NSNumber *)selfCopy->super.inputScale floatValue];
  LODWORD(v528) = v536;
  [(NSNumber *)selfCopy->inputGrainAmount floatValue];
  *&v538 = *&v528 * v537;
  v589[0] = @"inputAmount";
  v539 = [NSNumber numberWithFloat:v538];
  v589[1] = @"inputISO";
  v590[0] = v539;
  v590[1] = &off_7A938;
  return [v535 imageByApplyingFilter:@"CIPhotoGrain" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v590, v589, 2)}];
}

@end