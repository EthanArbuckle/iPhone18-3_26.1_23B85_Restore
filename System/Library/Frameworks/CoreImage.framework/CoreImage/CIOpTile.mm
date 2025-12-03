@interface CIOpTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIOpTile

- (id)outputImage
{
  v21[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  [(NSNumber *)self->inputScale floatValue];
  v6 = 1.0 / v5;
  [(NSNumber *)self->inputAngle floatValue];
  v8 = __sincosf_stret(v7);
  v9 = [CIVector vectorWithX:(v6 * v8.__cosval) Y:(v6 * v8.__sinval) Z:-(v8.__sinval * v6) W:?];
  v10 = [CIVector vectorWithX:1.0 / v4 Y:?];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->inputCenter, v10, v9, 0}];
  _CIOpTile = [(CIOpTile *)self _CIOpTile];
  v13 = *MEMORY[0x1E695F040];
  v14 = *(MEMORY[0x1E695F040] + 8);
  v15 = *(MEMORY[0x1E695F040] + 16);
  v16 = *(MEMORY[0x1E695F040] + 24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __23__CIOpTile_outputImage__block_invoke;
  v20[3] = &unk_1E75C24D8;
  inputImage = self->inputImage;
  inputCenter = self->inputCenter;
  v20[4] = v11;
  v21[0] = inputImage;
  v21[1] = inputCenter;
  v21[2] = v10;
  v21[3] = v9;
  return [_CIOpTile applyWithExtent:v20 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v21, 4), v13, v14, v15, v16}];
}

double __23__CIOpTile_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);
  v10 = [v9 objectAtIndex:0];
  v11 = [v9 objectAtIndex:1];
  v12 = [v9 objectAtIndex:2];
  v13 = a3 + a5;
  v14 = a2 + a4;
  [v10 X];
  v16 = v15;
  [v10 Y];
  *&v17 = v17;
  v18 = v16;
  v19 = a2 - v16;
  v20 = *&v17;
  v21 = a3 - *&v17;
  v22 = v13 - *&v17;
  [v11 X];
  *&v13 = v23;
  [v11 Y];
  *&v24 = v24;
  v25 = *&v13;
  v26 = floor(v19 * *&v13);
  v27 = *&v24;
  v28 = v26 * *&v24;
  v29 = floor(v21 * v25) * *&v24;
  v63 = floor(v22 * v25) * *&v24;
  v30 = floor((v14 - v18) * v25) * *&v24;
  [v12 X];
  *&v31 = v31;
  v62 = *&v31;
  [v12 Y];
  v33 = v32;
  [v12 Z];
  *&v22 = v34;
  [v12 W];
  *&v35 = v35;
  v36 = v29 * v33;
  v37 = v36 + v28 * v62;
  v38 = *&v35;
  v39 = v29 * v38;
  v40 = v29 * v38 + v28 * *&v22;
  v41 = v63 * v33;
  v42 = v41 + v28 * v62;
  v43 = v63 * v38;
  v44 = v43 + v28 * *&v22;
  v45 = v41 + v30 * v62;
  v46 = v43 + v30 * *&v22;
  v47 = v36 + v30 * v62;
  v48 = v39 + v30 * *&v22;
  v49 = v37 + v18;
  v50 = v40 + v20;
  v51 = v42 + v18;
  v52 = v44 + v20;
  v65.origin.x = v45 + v18;
  v65.origin.y = v46 + v20;
  v68.origin.x = v47 + v18;
  v68.origin.y = v48 + v20;
  v65.size.width = v27;
  v65.size.height = v27;
  v68.size.width = v27;
  v68.size.height = v27;
  v69 = CGRectUnion(v65, v68);
  v66.origin.x = v51;
  v66.origin.y = v52;
  v66.size.width = v27;
  v66.size.height = v27;
  v67 = CGRectUnion(v66, v69);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v57 = v49;
  v58 = v50;
  v59 = v27;
  v60 = v27;

  *&result = CGRectUnion(*&v57, *&x);
  return result;
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryTileEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"9";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10843B8;
  v6[1] = &unk_1F10843C8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F10843D8;
  v6[3] = &unk_1F10843E8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10843E8;
  v6[5] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10843B8;
  v4[1] = &unk_1F10843F8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084408;
  v4[3] = &unk_1F1084418;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10843C8;
  v4[5] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end