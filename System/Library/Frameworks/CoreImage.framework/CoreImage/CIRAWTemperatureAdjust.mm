@interface CIRAWTemperatureAdjust
- (id)outputImage;
@end

@implementation CIRAWTemperatureAdjust

- (id)outputImage
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [CIFilter filterWithName:@"CIColorMatrix"];
  [(NSNumber *)self->inputEV doubleValue];
  v5 = v4;
  inputVersion = self->inputVersion;
  if (inputVersion)
  {
    if ([(NSNumber *)inputVersion intValue])
    {
      v7 = 2.54999995;
    }

    else
    {
      v7 = 2.0;
    }
  }

  else
  {
    v7 = 2.54999995;
  }

  v8 = exp2(v5);
  [(CIVector *)self->inputWhitePoint X];
  v10 = v9;
  [(CIVector *)self->inputWhitePoint Y];
  *&v11 = v11;
  v28 = v8 * v7;
  v30 = 0.0;
  v31 = 0.0;
  v29 = 0.0;
  v32 = v8 * v7;
  v34 = 0.0;
  v35 = 0.0;
  v33 = 0.0;
  v36 = v8 * v7;
  v48[0] = (v10 / *&v11);
  v48[1] = 1.0;
  v48[2] = (1.0 - v10 - *&v11) / *&v11;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  GetAdaptationMatrix(v48, dbl_19CF28B10, v46);
  MatrixMatrix(&v28, v46, &v28);
  v54 = xmmword_19CF28A70;
  v55 = 0x3FEA6741C471F7DCLL;
  v53 = 0.0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  GetAdaptationMatrix(&v54, dbl_19CF28B10, &v49);
  v12 = *(&v49 + 1) * 0.332802766 + *&v49 * 0.645435667;
  v13 = v12 + *&v50 * 0.0302547969;
  v14 = *&v51 * 0.332802766 + *(&v50 + 1) * 0.645435667;
  v15 = v14 + *(&v51 + 1) * 0.0302547969;
  v16 = *(&v52 + 1) * 0.332802766 + *&v52 * 0.645435667;
  v17 = v16 + v53 * 0.0302547969;
  v18 = *(&v49 + 1) * 0.612066763 + *&v49 * 0.181033831 + *&v50 * 0.0689652691;
  v19 = *&v51 * 0.612066763 + *(&v50 + 1) * 0.181033831 + *(&v51 + 1) * 0.0689652691;
  v20 = *(&v52 + 1) * 0.612066763 + *&v52 * 0.181033831 + v53 * 0.0689652691;
  v21 = *(&v49 + 1) * 0.0551304711 + *&v49 * 0.137826178 + *&v50 * 0.725884537;
  v22 = *&v51 * 0.0551304711 + *(&v50 + 1) * 0.137826178 + *(&v51 + 1) * 0.725884537;
  v23 = *(&v52 + 1) * 0.0551304711 + *&v52 * 0.137826178 + v53 * 0.725884537;
  v37 = v13;
  v38 = v18;
  v39 = v21;
  v40 = v15;
  v41 = v19;
  v42 = v22;
  v43 = v17;
  v44 = v20;
  v45 = v23;
  v24 = v21 * -(v17 * v19) + v13 * v19 * v23 + v21 * v15 * v20 + -(v15 * v18) * v23 + v18 * v22 * v17 + -(v13 * v22) * v20;
  if (v24 != 0.0)
  {
    v37 = (v19 * v23 - v20 * v22) / v24;
    v38 = (v20 * v21 - v18 * v23) / v24;
    v39 = (v18 * v22 - v19 * v21) / v24;
    v40 = (v23 * -(v14 + *(&v51 + 1) * 0.0302547969) + v17 * v22) / v24;
    v41 = (v21 * -(v16 + v53 * 0.0302547969) + v13 * v23) / v24;
    v42 = (v15 * v21 - v13 * v22) / v24;
    v43 = (v15 * v20 - v17 * v19) / v24;
    v44 = (v20 * -(v12 + *&v50 * 0.0302547969) + v17 * v18) / v24;
    v45 = (v13 * v19 - v15 * v18) / v24;
  }

  MatrixMatrix(&v28, &v37, &v28);
  [(CIFilter *)v3 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:v28 Y:v29 Z:v30 W:0.0], @"inputRVector"];
  [(CIFilter *)v3 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:v31 Y:v32 Z:v33 W:0.0], @"inputGVector"];
  [(CIFilter *)v3 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:v34 Y:v35 Z:v36 W:0.0], @"inputBVector"];
  [(CIFilter *)v3 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:0.0 Y:0.0 Z:1.0 W:?], @"inputAVector"];
  [(CIFilter *)v3 setValue:[CIVector forKey:"vectorWithX:Y:Z:W:" vectorWithX:0.0 Y:0.0 Z:0.0 W:?], @"inputBiasVector"];
  [(CIFilter *)v3 setValue:self->inputImage forKey:@"inputImage"];
  v25 = [(CIFilter *)v3 valueForKey:@"outputImage"];
  if (GetLinearAdobeRGB(void)::onceToken != -1)
  {
    [CIRAWTemperatureAdjust outputImage];
  }

  v26 = GetLinearAdobeRGB(void)::space;

  return [v25 imageByColorMatchingColorSpaceToWorkingSpace:v26];
}

@end