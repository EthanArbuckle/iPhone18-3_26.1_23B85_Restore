@interface CITemperatureAndTint
+ (id)customAttributes;
- (id)outputImage;
- (void)setInputNeutral:(id)neutral;
@end

@implementation CITemperatureAndTint

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryInterlaced";
  v7[4] = @"CICategoryNonSquarePixels";
  v7[5] = @"CICategoryHighDynamicRange";
  v7[6] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v9[1] = @"5";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.7";
  v8[3] = @"inputNeutral";
  v5[0] = @"CIAttributeDefault";
  v6[0] = [CIVector vectorWithX:6500.0 Y:0.0];
  v5[1] = @"CIAttributeIdentity";
  v5[2] = @"CIAttributeType";
  v6[1] = [CIVector vectorWithX:6500.0 Y:0.0];
  v6[2] = @"CIAttributeTypeOffset";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v8[4] = @"inputTargetNeutral";
  v4[0] = [CIVector vectorWithX:6500.0 Y:0.0, @"CIAttributeDefault"];
  v3[1] = @"CIAttributeIdentity";
  v3[2] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:6500.0 Y:0.0];
  v4[2] = @"CIAttributeTypeOffset";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (void)setInputNeutral:(id)neutral
{
  v99 = *MEMORY[0x1E69E9840];
  inputNeutral = self->inputNeutral;
  if ([neutral count] == 3)
  {
    [neutral X];
    v76 = v6;
    [neutral Y];
    v75 = v7;
    [neutral Z];
    v8.f64[0] = v76;
    v8.f64[1] = v75;
    v97 = vmulq_f64(v8, v8);
    v98 = v9 * v9;
    CMatrix::CMatrix(v90, 3u, 3u, 0.454268, v10, v11, 0x3FD69CBAA49EB5D9, 0x3FC40C03BE7630B2, 0x3FCEF689906AD933, 0x3FE58E8E5F4360FFLL, 0x3FB59E6D9AB61B65, 0x3F8E7F0ABDCF9CFALL, 0x3FB73315A5A6D043, 0x3FE7053603937997);
    CMatrix::CMatrix(v89, 3u, 3u, 0.8951, v12, v13, 0x3FD10CB295E9E1B1, 0xBFC4A8C154C985F0, 0xBFE801A36E2EB1C4, 0x3FFB6A7EF9DB22D1, 0x3FA2CA57A786C227, 0x3FA3EAB367A0F909, 0xBFB189374BC6A7F0, 0x3FF0793DD97F62B7);
    CMatrix::CMatrix(v88, 3u, 3u, 0.986993, v14, v15, 0xBFC2D2AA5C5F7C67, 0x3FC479AAE6C8F755, 0x3FDBAAE297396D09, 0x3FE09667B5F1BEF5, 0x3FA93CAB81F969E4, 0xBF8177A7008A697BLL, 0x3FA480841EDE1199, 0x3FEEFDD872F33CA3);
    CMatrix::operator*(v89, v90, v86);
    CMatrix::CMatrix(v85, 3u, 1u, 1.0, v16, v17, 0x3FF0000000000000, 0x3FF0000000000000);
    CMatrix::operator*(v86, v85, v87);
    CMatrix::operator*(v89, v90, v85);
    CMatrix::CMatrix(v84, 3u, 1u, v97.f64);
    CMatrix::operator*(v85, v84, v86);
    v84[0] = 0.0;
    v83[0] = 0.0;
    tempTint_to_xy(6500.0, 0.0, v84, v83);
    if (v83[0] >= 1.0e-20)
    {
      CMatrix::CMatrix(v85, 3u, 1u, v84[0] / v83[0], v18, v19, 0x3FF0000000000000, (1.0 - v84[0] - v83[0]) / v83[0]);
    }

    else
    {
      CMatrix::CMatrix(v85);
    }

    CMatrix::operator*(v89, v85, v84);
    v78[0] = CMatrix::operator[](v84, 0);
    v78[1] = v21;
    v22 = *CMatrixRow::operator[](v78, 0);
    v77[0] = CMatrix::operator[](v86, 0);
    v77[1] = v23;
    v24 = *CMatrixRow::operator[](v77, 0);
    v95 = CMatrix::operator[](v87, 0);
    v96 = v25;
    v26 = *CMatrixRow::operator[](&v95, 0);
    v93 = CMatrix::operator[](v84, 1u);
    v94 = v27;
    v28 = *CMatrixRow::operator[](&v93, 0);
    v91 = CMatrix::operator[](v86, 1u);
    v92 = v29;
    v30 = *CMatrixRow::operator[](&v91, 0);
    v82[0] = CMatrix::operator[](v87, 1u);
    v82[1] = v31;
    v32 = *CMatrixRow::operator[](v82, 0);
    v81[0] = CMatrix::operator[](v84, 2u);
    v81[1] = v33;
    v34 = *CMatrixRow::operator[](v81, 0);
    v80[0] = CMatrix::operator[](v86, 2u);
    v80[1] = v35;
    v36 = *CMatrixRow::operator[](v80, 0);
    v79[0] = CMatrix::operator[](v87, 2u);
    v79[1] = v37;
    v38 = CMatrixRow::operator[](v79, 0);
    CMatrix::CMatrix(v83, 3u, 1u, v22 * v24 / v26, v39, v40, v28 * v30 / v32, v34 * v36 / *v38);
    CMatrix::operator*(v88, v83, v78);
    CMatrix::CMatrix(v77, v78);
    v95 = CMatrix::operator[](v77, 0);
    v96 = v41;
    v42 = *CMatrixRow::operator[](&v95, 0);
    v93 = CMatrix::operator[](v77, 1u);
    v94 = v43;
    v44 = *CMatrixRow::operator[](&v93, 0);
    v91 = CMatrix::operator[](v77, 2u);
    v92 = v45;
    v46 = v42 + v44 + *CMatrixRow::operator[](&v91, 0);
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    if (v46 >= 1.0e-20)
    {
      v95 = CMatrix::operator[](v77, 0);
      v96 = v50;
      v51 = *CMatrixRow::operator[](&v95, 0);
      v95 = CMatrix::operator[](v77, 1u);
      v96 = v52;
      v53 = CMatrixRow::operator[](&v95, 0);
      v48 = v51 / v46;
      v49 = *v53 / v46;
    }

    v54 = v48 + v48;
    v55 = 1.5 - v48 + v49 * 6.0;
    v56 = v54 / v55;
    v57 = v49 * 3.0 / v55;
    v58 = &kTempTable;
    v59 = 29;
    v60 = 0.0;
    v61 = 0.0;
    do
    {
      v62 = v61;
      v63 = v60;
      v64 = v47;
      v65 = v58[7];
      v66 = sqrt(v65 * v65 + 1.0);
      v47 = 1.0 / v66;
      v60 = v65 / v66;
      v68 = v58[5];
      v67 = v58[6];
      v69 = (v57 - v67) * v47;
      v61 = v69 - (v56 - v68) * v60;
      v70 = v59 - 1;
      v58 += 4;
      if (!v59)
      {
        break;
      }

      --v59;
    }

    while (v61 > 0.0);
    v71 = 0.0;
    if (v70 != 28)
    {
      if (v61 <= 0.0)
      {
        v71 = v69 - (v56 - v68) * v60;
      }

      v71 = -v71 / (v62 - v71);
    }

    v72 = v64 * v71 + v47 * (1.0 - v71);
    v73 = v63 * v71 + v60 * (1.0 - v71);
    v74 = sqrt(v73 * v73 + v72 * v72);
    neutralCopy = [CIVector vectorWithX:1000000.0 / ((1.0 - v71) * *v58 + *(v58 - 4) * v71) Y:(v73 / v74 * (v57 - (v67 * (1.0 - v71) + *(v58 - 2) * v71)) + (v56 - (v68 * (1.0 - v71) + *(v58 - 3) * v71)) * (v72 / v74)) * -3000.0];
  }

  else
  {
    neutralCopy = neutral;
  }

  self->inputNeutral = neutralCopy;
}

- (id)outputImage
{
  if (!self->inputImage)
  {
    return 0;
  }

  v49 = 0.0;
  v50 = 0.0;
  v47 = 0.0;
  v48 = 0.0;
  get_input_xy(self->inputNeutral, &v50, &v49);
  get_input_xy(self->inputTargetNeutral, &v48, &v47);
  v6 = v47;
  v5 = v48;
  if (vabdd_f64(v50, v48) <= 0.0005 && vabdd_f64(v49, v47) <= 0.0005)
  {
    return self->inputImage;
  }

  if (v49 >= 1.0e-20)
  {
    CMatrix::CMatrix(v55, 3u, 1u, v50 / v49, v3, v4, 0x3FF0000000000000, (1.0 - v50 - v49) / v49);
  }

  else
  {
    CMatrix::CMatrix(v55);
  }

  if (v6 >= 1.0e-20)
  {
    CMatrix::CMatrix(v54, 3u, 1u, v5 / v6, v7, v8, 0x3FF0000000000000, (1.0 - v5 - v6) / v6);
  }

  else
  {
    CMatrix::CMatrix(v54);
  }

  CMatrix::CMatrix(v52, v55);
  CMatrix::CMatrix(v51, v54);
  CMatrix::CMatrix(v67, 3u, 3u, 0.8951, v10, v11, 0x3FD10CB295E9E1B1, 0xBFC4A8C154C985F0, 0xBFE801A36E2EB1C4, 0x3FFB6A7EF9DB22D1, 0x3FA2CA57A786C227, 0x3FA3EAB367A0F909, 0xBFB189374BC6A7F0, 0x3FF0793DD97F62B7);
  CMatrix::CMatrix(v66, 3u, 3u, 0.986993, v12, v13, 0xBFC2D2AA5C5F7C67, 0x3FC479AAE6C8F755, 0x3FDBAAE297396D09, 0x3FE09667B5F1BEF5, 0x3FA93CAB81F969E4, 0xBF8177A7008A697BLL, 0x3FA480841EDE1199, 0x3FEEFDD872F33CA3);
  CMatrix::operator*(v67, v52, v65);
  CMatrix::operator*(v67, v51, v64);
  v56 = CMatrix::operator[](v64, 0);
  v57 = v14;
  v15 = *CMatrixRow::operator[](&v56, 0);
  v62[0] = CMatrix::operator[](v65, 0);
  v62[1] = v16;
  v17 = *CMatrixRow::operator[](v62, 0);
  v61[0] = CMatrix::operator[](v64, 1u);
  v61[1] = v18;
  v19 = *CMatrixRow::operator[](v61, 0);
  v60[0] = CMatrix::operator[](v65, 1u);
  v60[1] = v20;
  v21 = *CMatrixRow::operator[](v60, 0);
  v59[0] = CMatrix::operator[](v64, 2u);
  v59[1] = v22;
  v23 = *CMatrixRow::operator[](v59, 0);
  v58[0] = CMatrix::operator[](v65, 2u);
  v58[1] = v24;
  v25 = CMatrixRow::operator[](v58, 0);
  CMatrix::diagonalMatrix(3, v15 / v17, v63, COERCE__INT64(v19 / v21), v23 / *v25);
  CMatrix::operator*(v66, v63, &v56);
  CMatrix::operator*(&v56, v67, v53);
  CMatrix::CMatrix(v67, 3u, 3u, 0.454268, v26, v27, 0x3FD69CBAA49EB5D9, 0x3FC40C03BE7630B2, 0x3FCEF689906AD933, 0x3FE58E8E5F4360FFLL, 0x3FB59E6D9AB61B65, 0x3F8E7F0ABDCF9CFALL, 0x3FB73315A5A6D043, 0x3FE7053603937997);
  CMatrix::inverse(v67, v66);
  CMatrix::operator*(v66, v53, v65);
  CMatrix::operator*(v65, v67, v46);
  inputImage = self->inputImage;
  v67[0] = CMatrix::operator[](v46, 0);
  v67[1] = v29;
  v30 = *CMatrixRow::operator[](v67, 0);
  v66[0] = CMatrix::operator[](v46, 0);
  v66[1] = v31;
  v32 = *CMatrixRow::operator[](v66, 1u);
  v65[0] = CMatrix::operator[](v46, 0);
  v65[1] = v33;
  v34 = [CIVector vectorWithX:v30 Y:v32 Z:*CMatrixRow::operator[](v65, 2u)];
  v64[0] = CMatrix::operator[](v46, 1u);
  v64[1] = v35;
  v36 = *CMatrixRow::operator[](v64, 0);
  v63[0] = CMatrix::operator[](v46, 1u);
  v63[1] = v37;
  v38 = *CMatrixRow::operator[](v63, 1u);
  v56 = CMatrix::operator[](v46, 1u);
  v57 = v39;
  v40 = [CIVector vectorWithX:v36 Y:v38 Z:*CMatrixRow::operator[](&v56, 2u)];
  v55[0] = CMatrix::operator[](v46, 2u);
  v55[1] = v41;
  v42 = *CMatrixRow::operator[](v55, 0);
  v54[0] = CMatrix::operator[](v46, 2u);
  v54[1] = v43;
  v44 = *CMatrixRow::operator[](v54, 1u);
  v53[0] = CMatrix::operator[](v46, 2u);
  v53[1] = v45;
  return [(CIImage *)inputImage filteredImage:@"CIColorMatrix" keysAndValues:@"inputRVector", v34, @"inputGVector", v40, @"inputBVector", [CIVector vectorWithX:v42 Y:v44 Z:*CMatrixRow::operator[](v53, 2u)], @"inputAVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0], @"inputBiasVector", [CIVector vectorWithX:0.0 Y:0.0 Z:0.0], 0];
}

@end