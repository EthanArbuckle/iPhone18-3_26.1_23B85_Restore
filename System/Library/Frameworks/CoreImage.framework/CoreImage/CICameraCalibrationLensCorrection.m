@interface CICameraCalibrationLensCorrection
+ (id)customAttributes;
- (CGPoint)ReferenceensDistortionPointForPoint:(CGPoint)a3 lookupTable:(id)a4 distortionOpticalCenter:(CGPoint)a5 imageSize:(CGSize)a6;
- (CGRect)regionOf:(int)a3 destRect:(CGRect)a4 userInfo:(id)a5;
- (id)outputImage;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CICameraCalibrationLensCorrection

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryDistortionEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"12";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.14";
  v6[3] = @"inputUseInverseLookUpTable";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeBoolean";
  v4[1] = MEMORY[0x1E695E110];
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v7 = [a4 isEqualToString:@"inputImage"];
  if (a3)
  {
    if (v7)
    {
      v8 = [a3 depthData];
      if (AVFDepthCameraCalibrationData(v8, v9))
      {
        if (!self->inputAVCameraCalibrationData)
        {
          v10 = [a3 depthData];
          [(CICameraCalibrationLensCorrection *)self setValue:AVFDepthCameraCalibrationData(v10 forKey:v11), @"inputAVCameraCalibrationData"];
        }
      }
    }
  }

  v12.receiver = self;
  v12.super_class = CICameraCalibrationLensCorrection;
  [(CICameraCalibrationLensCorrection *)&v12 setValue:a3 forKey:a4];
}

- (CGPoint)ReferenceensDistortionPointForPoint:(CGPoint)a3 lookupTable:(id)a4 distortionOpticalCenter:(CGPoint)a5 imageSize:(CGSize)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a6.width - a5.x;
  if (x > v9)
  {
    v9 = x;
  }

  v10 = v9;
  v11 = a6.height - a5.y;
  if (y > v11)
  {
    v11 = y;
  }

  v12 = v11;
  v13 = sqrtf((v12 * v12) + (v10 * v10));
  v14 = a3.x - x;
  v15 = a3.y - y;
  v16 = sqrtf((v15 * v15) + (v14 * v14));
  v17 = [a4 bytes];
  v18 = [a4 length] >> 2;
  if (v16 >= v13)
  {
    v20 = *(v17 + 4 * v18 - 4);
  }

  else
  {
    v19 = (v16 * (v18 - 1)) / v13;
    v20 = ((v19 - v19) * *(v17 + 4 * v19 + 4)) + ((1.0 - (v19 - v19)) * *(v17 + 4 * v19));
  }

  v21 = v15 + (v20 * v15);
  v22 = x + (v14 + (v20 * v14));
  v23 = y + v21;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGRect)regionOf:(int)a3 destRect:(CGRect)a4 userInfo:(id)a5
{
  y = a4.origin.y;
  x = a4.origin.x;
  if (a3 < 1)
  {
    height = a4.size.height;
    width = a4.size.width;
    v13 = [a5 valueForKey:@"inputExtent"];
    [v13 X];
    [v13 Y];
    [v13 Z];
    v64 = v14;
    [v13 W];
    v59 = v15;
    v16 = [a5 valueForKey:@"lookUpTable"];
    v17 = [a5 valueForKey:@"opticalCenter"];
    [v17 X];
    v63 = v18;
    [v17 Y];
    v62 = v19;
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
    v20 = 2.0;
    if (width >= 2.0)
    {
      v21 = width;
    }

    else
    {
      v21 = 2.0;
    }

    v22 = v21;
    if (height >= 2.0)
    {
      v20 = height;
    }

    v23 = v20;
    v48 = v23;
    v49 = v22;
    v45 = y + v23;
    v46 = v23;
    v47 = v22;
    v44 = x + v22;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      v61 = v24;
      v26 = x + (v24 * v49);
      [(CICameraCalibrationLensCorrection *)self ReferenceensDistortionPointForPoint:v16 lookupTable:v26 distortionOpticalCenter:y imageSize:v63, v62, v64, v59];
      v78.origin.x = v27;
      v78.origin.y = v28;
      v65.size.width = 0.0;
      v65.size.height = 0.0;
      v78.size.width = 0.0;
      v78.size.height = 0.0;
      v65.origin.x = v26;
      v65.origin.y = y;
      v79 = CGRectUnion(v65, v78);
      v66.origin.x = v8;
      v66.origin.y = v9;
      v66.size.width = v6;
      v66.size.height = v7;
      v67 = CGRectUnion(v66, v79);
      v55 = v67.origin.y;
      v57 = v67.origin.x;
      v51 = v67.size.height;
      v53 = v67.size.width;
      v29 = 1.0 - v25;
      [(CICameraCalibrationLensCorrection *)self ReferenceensDistortionPointForPoint:v16 lookupTable:x + v47 * v29 distortionOpticalCenter:v45 imageSize:v63, v62, v64, v59];
      v80.origin.x = v30;
      v80.origin.y = v31;
      v68.size.width = 0.0;
      v68.size.height = 0.0;
      v80.size.width = 0.0;
      v80.size.height = 0.0;
      v68.origin.x = x + v47 * v29;
      v68.origin.y = v45;
      v81 = CGRectUnion(v68, v80);
      v69.origin.y = v55;
      v69.origin.x = v57;
      v69.size.height = v51;
      v69.size.width = v53;
      v70 = CGRectUnion(v69, v81);
      v56 = v70.origin.y;
      v58 = v70.origin.x;
      v52 = v70.size.height;
      v54 = v70.size.width;
      [(CICameraCalibrationLensCorrection *)self ReferenceensDistortionPointForPoint:v16 lookupTable:x distortionOpticalCenter:y + v46 * v29 imageSize:v63, v62, v64, v59];
      v82.origin.x = v32;
      v82.origin.y = v33;
      v71.size.width = 0.0;
      v71.size.height = 0.0;
      v82.size.width = 0.0;
      v82.size.height = 0.0;
      v71.origin.x = x;
      v71.origin.y = y + v46 * v29;
      v83 = CGRectUnion(v71, v82);
      v72.origin.y = v56;
      v72.origin.x = v58;
      v72.size.height = v52;
      v72.size.width = v54;
      v73 = CGRectUnion(v72, v83);
      v34 = v73.origin.x;
      v35 = v73.origin.y;
      v36 = v73.size.width;
      v37 = v73.size.height;
      [(CICameraCalibrationLensCorrection *)self ReferenceensDistortionPointForPoint:v16 lookupTable:v44 distortionOpticalCenter:y + (v61 * v48) imageSize:v63, v62, v64, v59];
      v84.origin.x = v38;
      v84.origin.y = v39;
      v74.size.width = 0.0;
      v74.size.height = 0.0;
      v84.size.width = 0.0;
      v84.size.height = 0.0;
      v74.origin.x = v44;
      v74.origin.y = y + (v61 * v48);
      v85 = CGRectUnion(v74, v84);
      v75.origin.x = v34;
      v75.origin.y = v35;
      v75.size.width = v36;
      v75.size.height = v37;
      v76 = CGRectUnion(v75, v85);
      v8 = v76.origin.x;
      v9 = v76.origin.y;
      v6 = v76.size.width;
      v7 = v76.size.height;
      v24 = v61 + 0.125;
      v25 = (v61 + 0.125);
    }

    while (v25 < 0.99999);
  }

  else
  {
    v6 = [objc_msgSend(a5 valueForKey:{@"lookUpTableLength", a4.origin.x, a4.origin.y, a4.size.width, a4.size.height), "intValue"}];
    v7 = 1.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  v40 = v8;
  v41 = v9;
  v42 = v6;
  v43 = v7;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (id)outputImage
{
  v37[3] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (!self->inputAVCameraCalibrationData)
    {
      return 0;
    }

    [result extent];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    if (CGRectIsInfinite(v38))
    {
      return 0;
    }

    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    if (CGRectIsNull(v39))
    {
      return 0;
    }

    else
    {
      v9 = [(NSNumber *)self->inputUseInverseLookUpTable BOOLValue];
      inputAVCameraCalibrationData = self->inputAVCameraCalibrationData;
      if (v9)
      {
        v11 = AVCameraCalibrationDataInverseLensDistortionLookupTable(inputAVCameraCalibrationData, v8);
      }

      else
      {
        v11 = AVCameraCalibrationDataLensDistortionLookupTable(inputAVCameraCalibrationData, v8);
      }

      v12 = v11;
      v13 = [v11 length];
      v14 = v13 >> 2;
      v15 = AVCameraCalibrationDataIntrinsicLensDistortionCenter(self->inputAVCameraCalibrationData);
      v17 = v16;
      [(CIImage *)self->inputImage extent];
      v20 = v19;
      v21 = v18;
      if (v15 > v19 || v17 > v18)
      {
        v23 = AVCameraCalibrationDataIntrinsicMatrixReferenceDimensions(self->inputAVCameraCalibrationData);
        if (v20 <= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = v20;
        }

        if (v23 <= v24)
        {
          v23 = v24;
        }

        v26 = v25 / v23;
        v27 = v26;
        v15 = v15 * v27;
        v17 = v17 * v27;
      }

      v28 = v20 - v15;
      if (v15 > v20 - v15)
      {
        v28 = v15;
      }

      v29 = v28;
      v30 = v21 - v17;
      if (v17 > v21 - v17)
      {
        v30 = v17;
      }

      v31 = v30;
      v32 = sqrtf((v31 * v31) + (v29 * v29));
      v33 = [CIImage imageWithBitmapData:v12 bytesPerRow:v13 & 0xFFFFFFFFFFFFFFFCLL size:2307 format:0 colorSpace:v14, 1.0];
      v34 = [CIKernel kernelWithInternalRepresentation:&CI::_radialLensDistortion];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __48__CICameraCalibrationLensCorrection_outputImage__block_invoke;
      v36[3] = &unk_1E75C1EB8;
      *&v36[6] = x;
      *&v36[7] = y;
      *&v36[8] = width;
      *&v36[9] = height;
      v36[4] = self;
      v36[5] = v12;
      v36[10] = v14;
      inputImage = self->inputImage;
      *&v36[11] = v15;
      *&v36[12] = v17;
      v37[0] = inputImage;
      v37[1] = v33;
      v37[2] = [CIVector vectorWithX:v15 Y:v17 Z:v32 W:v14];
      return -[CIKernel applyWithExtent:roiCallback:arguments:options:](v34, "applyWithExtent:roiCallback:arguments:options:", v36, [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:3], 0, x, y, width, height);
    }
  }

  return result;
}

uint64_t __48__CICameraCalibrationLensCorrection_outputImage__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v17[4] = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 32);
  v16[0] = @"inputExtent";
  v13 = [CIVector vectorWithCGRect:*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)];
  v14 = *(a1 + 40);
  v17[0] = v13;
  v17[1] = v14;
  v16[1] = @"lookUpTable";
  v16[2] = @"lookUpTableLength";
  v17[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 80)];
  v16[3] = @"opticalCenter";
  v17[3] = [CIVector vectorWithCGPoint:*(a1 + 88), *(a1 + 96)];
  return [v12 regionOf:a2 destRect:objc_msgSend(MEMORY[0x1E695DF20] userInfo:{"dictionaryWithObjects:forKeys:count:", v17, v16, 4), a3, a4, a5, a6}];
}

@end