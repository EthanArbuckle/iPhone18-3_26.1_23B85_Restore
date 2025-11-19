@interface CIPortraitPrepareStage
+ (id)customAttributes;
- (id)boxBlur3Mono;
- (id)computeBand;
- (id)convertToHalfFloat;
- (id)denormalize;
- (id)filterCut;
- (id)foreground;
- (id)invertImage;
- (id)normalizeToPhysicalDepth;
- (id)outputImage;
- (id)protectInterior;
- (id)renormalize01;
- (id)renormalizeThreshold;
@end

@implementation CIPortraitPrepareStage

+ (id)customAttributes
{
  v28[0] = kCIAttributeFilterCategories;
  v27[0] = kCICategoryColorAdjustment;
  v27[1] = kCICategoryVideo;
  v27[2] = kCICategoryStillImage;
  v27[3] = kCICategoryBuiltIn;
  v27[4] = kCICategoryApplePrivate;
  v29[0] = [NSArray arrayWithObjects:v27 count:5];
  v29[1] = @"11";
  v28[1] = kCIAttributeFilterAvailable_iOS;
  v28[2] = kCIAttributeFilterAvailable_Mac;
  v29[2] = @"10.13";
  v28[3] = @"inputMaxNumVertices";
  v25[0] = kCIAttributeDefault;
  v25[1] = kCIAttributeType;
  v26[0] = &off_7A7A0;
  v26[1] = kCIAttributeTypeInteger;
  v29[3] = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];
  v28[4] = @"inputSigmaS";
  v23[0] = kCIAttributeDefault;
  v23[1] = kCIAttributeMin;
  v24[0] = &off_7A7B8;
  v24[1] = &off_7A7B8;
  v23[2] = kCIAttributeMax;
  v23[3] = kCIAttributeType;
  v24[2] = &off_7A7D0;
  v24[3] = kCIAttributeTypeInteger;
  v29[4] = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
  v28[5] = @"inputSigmaRLuma";
  v21[0] = kCIAttributeDefault;
  v21[1] = kCIAttributeMin;
  v22[0] = &off_7A7B8;
  v22[1] = &off_7A7B8;
  v21[2] = kCIAttributeMax;
  v21[3] = kCIAttributeType;
  v22[2] = &off_7A7D0;
  v22[3] = kCIAttributeTypeInteger;
  v29[5] = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
  v28[6] = @"inputSigmaRChroma";
  v19[0] = kCIAttributeDefault;
  v19[1] = kCIAttributeMin;
  v20[0] = &off_7A7B8;
  v20[1] = &off_7A7B8;
  v19[2] = kCIAttributeMax;
  v19[3] = kCIAttributeType;
  v20[2] = &off_7A7D0;
  v20[3] = kCIAttributeTypeInteger;
  v29[6] = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
  v28[7] = @"inputLambda";
  v17[0] = kCIAttributeDefault;
  v17[1] = kCIAttributeType;
  v18[0] = &off_7A9E0;
  v18[1] = kCIAttributeTypeScalar;
  v29[7] = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v28[8] = @"inputMaxNumIterations";
  v15[0] = kCIAttributeDefault;
  v15[1] = kCIAttributeType;
  v16[0] = &off_7A7E8;
  v16[1] = kCIAttributeTypeInteger;
  v29[8] = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v28[9] = @"inputBandRange";
  v13[0] = kCIAttributeDefault;
  v13[1] = kCIAttributeType;
  v14[0] = [CIVector vectorWithX:0.00999999978 Y:0.200000003];
  v14[1] = kCIAttributeTypePosition;
  v29[9] = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v28[10] = @"inputThresholdOffset";
  v11[0] = kCIAttributeDefault;
  v11[1] = kCIAttributeType;
  v12[0] = &off_7A9F0;
  v12[1] = kCIAttributeTypeScalar;
  v29[10] = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v28[11] = @"inputFilterCut";
  v9[0] = kCIAttributeDefault;
  v9[1] = kCIAttributeType;
  v10[0] = &off_7AA00;
  v10[1] = kCIAttributeTypeScalar;
  v29[11] = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v28[12] = @"inputFeatherBandRange";
  v7[0] = kCIAttributeDefault;
  v7[1] = kCIAttributeType;
  v8[0] = &off_7AA10;
  v8[1] = kCIAttributeTypeScalar;
  v29[12] = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];
  v28[13] = @"inputAdaptiveThresholdRange";
  v5[0] = kCIAttributeDefault;
  v5[1] = kCIAttributeType;
  v6[0] = &off_799E0;
  v6[1] = kCIAttributeTypeScalar;
  v29[13] = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v28[14] = @"inputSigmaFallout";
  v3[0] = kCIAttributeDefault;
  v3[1] = kCIAttributeType;
  v4[0] = &off_799F0;
  v4[1] = kCIAttributeTypeScalar;
  v29[14] = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:15];
}

- (id)renormalize01
{
  if (qword_8C8A8 != -1)
  {
    sub_492C4();
  }

  return qword_8C8A0;
}

- (id)computeBand
{
  if (qword_8C8B8 != -1)
  {
    sub_492D8();
  }

  return qword_8C8B0;
}

- (id)protectInterior
{
  if (qword_8C8C8 != -1)
  {
    sub_492EC();
  }

  return qword_8C8C0;
}

- (id)invertImage
{
  if (qword_8C8D8 != -1)
  {
    sub_49300();
  }

  return qword_8C8D0;
}

- (id)normalizeToPhysicalDepth
{
  if (qword_8C8E8 != -1)
  {
    sub_49314();
  }

  return qword_8C8E0;
}

- (id)foreground
{
  if (qword_8C8F8 != -1)
  {
    sub_49328();
  }

  return qword_8C8F0;
}

- (id)filterCut
{
  if (qword_8C908 != -1)
  {
    sub_4933C();
  }

  return qword_8C900;
}

- (id)boxBlur3Mono
{
  if (qword_8C918 != -1)
  {
    sub_49350();
  }

  return qword_8C910;
}

- (id)denormalize
{
  if (qword_8C928 != -1)
  {
    sub_49364();
  }

  return qword_8C920;
}

- (id)convertToHalfFloat
{
  if (qword_8C938 != -1)
  {
    sub_49378();
  }

  return qword_8C930;
}

- (id)renormalizeThreshold
{
  if (qword_8C948 != -1)
  {
    sub_4938C();
  }

  return qword_8C940;
}

- (id)outputImage
{
  result = self->inputDisparityImage;
  if (result)
  {
    if (self->inputImage && self->inputThresholdImage)
    {
      [(CIImage *)self->inputImage extent];
      if (CGRectIsInfinite(v94))
      {
        return self->inputDisparityImage;
      }

      [(CIImage *)self->inputDisparityImage extent];
      if (CGRectIsInfinite(v95))
      {
        return self->inputDisparityImage;
      }

      else
      {
        [(CIImage *)self->inputImage extent];
        v5 = v4;
        v7 = v6;
        [(CIImage *)self->inputDisparityImage extent];
        v9 = v8 / v5;
        v11 = v10 / v7;
        [(CIImage *)self->inputDisparityImage extent];
        v74 = v13;
        v75 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [(CIPortraitPrepareStage *)self convertToHalfFloat];
        [(CIImage *)self->inputImage extent];
        inputImage = self->inputImage;
        v23 = [v18 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:{"arrayWithObjects:count:", &inputImage, 1), v19, v20, v21, v22}];
        CGAffineTransformMakeScale(&v76, v9, v11);
        v73 = [v23 imageByApplyingTransform:&v76];
        inputDisparityImage = self->inputDisparityImage;
        v90 = kCIInputExtentKey;
        [(CIImage *)inputDisparityImage extent];
        v91 = [CIVector vectorWithCGRect:?];
        v25 = [[(CIImage *)inputDisparityImage imageByApplyingFilter:@"CIAreaMinMaxRed" withInputParameters:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary imageByClampingToExtent:&v91];
        v88 = kCIKernelOutputFormat;
        v89 = [NSNumber numberWithInt:kCIFormatRh];
        v26 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
        v27 = [(CIPortraitPrepareStage *)self renormalize01];
        [(CIImage *)inputDisparityImage extent];
        v87[0] = inputDisparityImage;
        v87[1] = v25;
        v32 = [v27 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v87, 2), v26, v28, v29, v30, v31}];
        v85 = kCIInputDisparityImageKey;
        v86 = v32;
        v33 = [v73 imageByApplyingFilter:@"CIConfidenceMap" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v86, &v85, 1)}];
        v34 = [(CIPortraitPrepareStage *)self renormalizeThreshold];
        [(CIImage *)self->inputThresholdImage extent];
        v84[0] = self->inputThresholdImage;
        v84[1] = v25;
        v35 = v25;
        v40 = [v34 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v84, 2), v26, v36, v37, v38, v39}];
        [(CIVector *)self->inputBandRange X];
        v42 = v41;
        [(CIVector *)self->inputBandRange Y];
        v44 = v43;
        [(NSNumber *)self->inputFeatherBandRange floatValue];
        v46 = [CIVector vectorWithX:v42 Y:v44 Z:v45];
        v47 = [(CIPortraitPrepareStage *)self computeBand];
        [v32 extent];
        v83[0] = v32;
        v83[1] = v40;
        v83[2] = v35;
        v83[3] = v46;
        v52 = [v47 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v83, 4), v26, v48, v49, v50, v51}];
        v53 = [(CIPortraitPrepareStage *)self protectInterior];
        [v52 extent];
        v82[0] = v33;
        v82[1] = v52;
        v58 = [v53 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v82, 2), v26, v54, v55, v56, v57}];
        v59 = [v73 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
        v80[0] = kCIInputImageKey;
        v80[1] = kCIInputDisparityImageKey;
        v81[0] = v59;
        v81[1] = v32;
        inputMaxNumVertices = self->inputMaxNumVertices;
        v80[2] = @"inputConfidenceMapImage";
        v80[3] = @"inputMaxNumVertices";
        inputSigmaS = self->inputSigmaS;
        v81[2] = v58;
        v81[3] = inputMaxNumVertices;
        v80[4] = @"inputSigmaS";
        v80[5] = @"inputSigmaRLuma";
        inputSigmaRLuma = self->inputSigmaRLuma;
        inputSigmaRChroma = self->inputSigmaRChroma;
        v81[4] = inputSigmaS;
        v81[5] = inputSigmaRLuma;
        inputLambda = self->inputLambda;
        v80[6] = @"inputSigmaRChroma";
        v80[7] = @"inputLambda";
        v81[6] = inputSigmaRChroma;
        v81[7] = inputLambda;
        v80[8] = @"inputMaxNumIterations";
        v81[8] = self->inputMaxNumIterations;
        v65 = -[CIImage imageByApplyingFilter:]([(CIImage *)[+[CIFilter filterWithName:withInputParameters:](CIFilter outputImage:@"PortraitFastBilateralSolver"] imageByCroppingToRect:v75, v74, v15, v17), "imageByApplyingFilter:", @"PFBoxBlur3_7"];
        v66 = [(CIPortraitPrepareStage *)self denormalize];
        [(CIImage *)v65 extent];
        v79[0] = v65;
        v79[1] = v35;
        v71 = [v66 applyWithExtent:+[NSArray arrayWithObjects:count:](NSArray arguments:"arrayWithObjects:count:" options:{v79, 2), v26, v67, v68, v69, v70}];
        v72 = [CIVector vectorWithX:1.0 Y:0.0 Z:0.0 W:0.0];
        v77[0] = @"inputRVector";
        v77[1] = @"inputGVector";
        v78[0] = v72;
        v78[1] = v72;
        v77[2] = @"inputBVector";
        v78[2] = v72;
        return [objc_msgSend(v71 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v78, v77, 3)), "imageByCroppingToRect:", v75, v74, v15, v17}];
      }
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }

  return result;
}

@end