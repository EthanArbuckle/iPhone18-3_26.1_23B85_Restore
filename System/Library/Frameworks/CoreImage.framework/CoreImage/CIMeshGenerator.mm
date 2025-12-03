@interface CIMeshGenerator
+ (id)customAttributes;
- (CGRect)extentOfMeshStart:(int)start count:(int)count halfWidth:(double)width;
- (id)outputImage;
@end

@implementation CIMeshGenerator

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGenerator";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryHighDynamicRange";
  v7[4] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"12";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.14";
  v8[3] = @"inputWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10841F8;
  v6[1] = &unk_1F1084208;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084218;
  v6[3] = &unk_1F1084228;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v8[4] = @"inputColor";
  v4 = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0, @"CIAttributeDefault"];
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (CGRect)extentOfMeshStart:(int)start count:(int)count halfWidth:(double)width
{
  if (count < 1)
  {
    v39 = 0.0;
    v40 = 0.0;
    v41 = 0.0;
    v42 = 0.0;
  }

  else
  {
    v45 = v20;
    v46 = v19;
    v47 = v18;
    v48 = v17;
    v49 = v16;
    v50 = v15;
    v51 = v14;
    v52 = v13;
    v53 = v10;
    v54 = v9;
    v55 = v8;
    v56 = v7;
    v57 = v6;
    v58 = v5;
    v59 = v11;
    v60 = v12;
    v23 = 0;
    startCopy = start;
    v25 = -count;
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = [(NSArray *)self->inputMesh objectAtIndexedSubscript:startCopy, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60];
      [v30 X];
      v32 = v31;
      [v30 Y];
      v34 = v33;
      [v30 Z];
      v36 = v35;
      [v30 W];
      v38 = v37;
      v39 = fmin(v32, v36) - width;
      v40 = fmax(v32, v36) + width;
      v41 = fmin(v34, v38) - width;
      v42 = fmax(v34, v38) + width;
      if (v23)
      {
        if (v39 >= v29)
        {
          v39 = v29;
        }

        if (v40 <= v28)
        {
          v40 = v28;
        }

        if (v41 >= v27)
        {
          v41 = v27;
        }

        if (v42 <= v26)
        {
          v42 = v26;
        }
      }

      --v23;
      ++startCopy;
      v26 = v42;
      v27 = v41;
      v28 = v40;
      v29 = v39;
    }

    while (v25 != v23);
  }

  v43 = v40 - v39;
  v44 = v42 - v41;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v41;
  result.origin.x = v39;
  return result;
}

- (id)outputImage
{
  v140 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3 * 0.5;
  if ((v3 * 0.5) < 0.001 || ([(CIColor *)self->inputColor alpha], *&v5 = v5, *&v5 < 0.00001) || (v4 >= 1.0 ? (v6 = v4) : (v6 = 1.0), v7 = [(NSArray *)self->inputMesh count], v8 = v7, v7 < 1))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v9 = fminf(v4, 1.0);
    if (v7 >= 0x20)
    {
      v11 = 0;
      v10 = 0;
      do
      {
        [(CIMeshGenerator *)self extentOfMeshStart:v11 count:32 halfWidth:v6];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        for (i = 0; i != 32; ++i)
        {
          *(&v124 + i) = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v11 + i];
        }

        _CIMesh32 = [(CIMeshGenerator *)self _CIMesh32];
        v120[0] = v124;
        v120[1] = v125;
        v120[2] = v126;
        v120[3] = v127;
        v120[4] = v128;
        v120[5] = v129;
        v120[6] = v130;
        v120[7] = v131;
        v120[8] = v132;
        v120[9] = v133;
        v120[10] = v134;
        v120[11] = v135;
        v120[12] = v136;
        v120[13] = v137;
        v120[14] = v138;
        v120[15] = v139;
        v24 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
        inputColor = self->inputColor;
        v121 = v24;
        v122 = inputColor;
        *&v26 = v9;
        v123 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
        v27 = [_CIMesh32 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v120, 35), v15, v17, v19, v21}];
        if (v10)
        {
          v27 = [v27 imageByCompositingOverImage:v10];
        }

        v10 = v27;
        v11 += 32;
        v12 = v8 - v11;
      }

      while (v8 > v11 && v12 > 31);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = v7;
    }

    if (v12 >= 16)
    {
      v100 = v12 - 16;
      [(CIMeshGenerator *)self extentOfMeshStart:v11 count:16 halfWidth:v6];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v36 = 0;
      v37 = v11;
      do
      {
        *(&v124 + v36) = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v37++];
        v36 += 8;
      }

      while (v36 != 128);
      _CIMesh16 = [(CIMeshGenerator *)self _CIMesh16];
      v116[0] = v124;
      v116[1] = v125;
      v116[2] = v126;
      v116[3] = v127;
      v116[4] = v128;
      v116[5] = v129;
      v116[6] = v130;
      v116[7] = v131;
      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
      v40 = self->inputColor;
      v117 = v39;
      v118 = v40;
      *&v41 = v9;
      v119 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
      v42 = [_CIMesh16 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v116, 19), v29, v31, v33, v35}];
      if (v10)
      {
        v42 = [v42 imageByCompositingOverImage:v10];
      }

      v11 = v11 | 0x10;
      v12 = v100;
      v10 = v42;
    }

    if (v12 >= 8)
    {
      v101 = v12 - 8;
      [(CIMeshGenerator *)self extentOfMeshStart:v11 count:8 halfWidth:v6];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = 0;
      v52 = v11;
      do
      {
        *(&v124 + v51) = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v52++];
        v51 += 8;
      }

      while (v51 != 64);
      _CIMesh8 = [(CIMeshGenerator *)self _CIMesh8];
      v112[0] = v124;
      v112[1] = v125;
      v112[2] = v126;
      v112[3] = v127;
      v54 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
      v55 = self->inputColor;
      v113 = v54;
      v114 = v55;
      *&v56 = v9;
      v115 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
      v57 = [_CIMesh8 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v112, 11), v44, v46, v48, v50}];
      if (v10)
      {
        v57 = [v57 imageByCompositingOverImage:v10];
      }

      v11 = (v11 + 8);
      v12 = v101;
      v10 = v57;
    }

    if (v12 >= 4)
    {
      v102 = v12 - 4;
      [(CIMeshGenerator *)self extentOfMeshStart:v11 count:4 halfWidth:v6];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v66 = 0;
      v67 = v11;
      do
      {
        *(&v124 + v66) = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v67++];
        v66 += 8;
      }

      while (v66 != 32);
      _CIMesh4 = [(CIMeshGenerator *)self _CIMesh4];
      v108[0] = v124;
      v108[1] = v125;
      v69 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
      v70 = self->inputColor;
      v109 = v69;
      v110 = v70;
      *&v71 = v9;
      v111 = [MEMORY[0x1E696AD98] numberWithFloat:v71];
      v72 = [_CIMesh4 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v108, 7), v59, v61, v63, v65}];
      if (v10)
      {
        v72 = [v72 imageByCompositingOverImage:v10];
      }

      v11 = (v11 + 4);
      v12 = v102;
      v10 = v72;
    }

    if (v12 > 1)
    {
      [(CIMeshGenerator *)self extentOfMeshStart:v11 count:2 halfWidth:v6];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;
      *&v124 = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v11];
      *(&v124 + 1) = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v11 + 1];
      _CIMesh2 = [(CIMeshGenerator *)self _CIMesh2];
      v104 = v124;
      v82 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
      v83 = self->inputColor;
      v105 = v82;
      v106 = v83;
      *&v84 = v9;
      v107 = [MEMORY[0x1E696AD98] numberWithFloat:v84];
      v85 = [_CIMesh2 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v104, 5), v74, v76, v78, v80}];
      if (v10)
      {
        v85 = [v85 imageByCompositingOverImage:v10];
      }

      v11 = (v11 + 2);
      v12 -= 2;
      v10 = v85;
    }

    if (v12 >= 1)
    {
      [(CIMeshGenerator *)self extentOfMeshStart:v11 count:1 halfWidth:v6];
      v87 = v86;
      v89 = v88;
      v91 = v90;
      v93 = v92;
      v94 = [(NSArray *)self->inputMesh objectAtIndexedSubscript:v11];
      *&v124 = v94;
      _CIMesh1 = [(CIMeshGenerator *)self _CIMesh1];
      v103[0] = v94;
      v96 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
      v97 = self->inputColor;
      v103[1] = v96;
      v103[2] = v97;
      *&v98 = v9;
      v103[3] = [MEMORY[0x1E696AD98] numberWithFloat:v98];
      v99 = [_CIMesh1 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v103, 4), v87, v89, v91, v93}];
      if (v10)
      {
        return [v99 imageByCompositingOverImage:v10];
      }

      return v99;
    }

    return v10;
  }
}

@end