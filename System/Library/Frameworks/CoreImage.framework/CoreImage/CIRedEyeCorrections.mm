@interface CIRedEyeCorrections
- (id)_initFromProperties:(id)properties;
- (id)_outputProperties;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIRedEyeCorrections

- (void)setDefaults
{
  self->inputCameraModel = 0;
  v3 = self->inputCorrectionInfo;
  self->inputCorrectionInfo = 0;
}

- (id)outputImage
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(NSArray *)self->inputCorrectionInfo count])
  {
    if (self->inputCameraModel)
    {
      inputCameraModel = self->inputCameraModel;
    }

    else
    {
      inputCameraModel = @"undefined";
    }

    v4 = self->inputImage;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    inputCorrectionInfo = self->inputCorrectionInfo;
    v6 = [(NSArray *)inputCorrectionInfo countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(inputCorrectionInfo);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v17[0] = @"inputCorrectionInfo";
          v17[1] = @"inputCameraModel";
          v18[0] = v10;
          v18[1] = inputCameraModel;
          v4 = -[CIImage imageByCompositingOverImage:](-[CIImage imageByApplyingFilter:withInputParameters:](v4, "imageByApplyingFilter:withInputParameters:", @"CIRedEyeCorrection", [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2]), "imageByCompositingOverImage:", v4);
        }

        v7 = [(NSArray *)inputCorrectionInfo countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v7);
    }

    return v4;
  }

  v12 = self->inputImage;

  return v12;
}

- (id)_outputProperties
{
  v158 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->inputCorrectionInfo count])
  {
    return 0;
  }

  v3 = [(NSArray *)self->inputCorrectionInfo objectAtIndexedSubscript:0];
  v4 = [v3 objectForKeyedSubscript:@"convexHull"];
  if (!v4 && ![v3 objectForKeyedSubscript:@"pointX"])
  {
    puts("red-eye repair dictionary is of unknown type");
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  if (v4)
  {
    v140 = 0uLL;
    v141 = 0uLL;
    v138 = 0uLL;
    v139 = 0uLL;
    inputCorrectionInfo = self->inputCorrectionInfo;
    v6 = [(NSArray *)inputCorrectionInfo countByEnumeratingWithState:&v138 objects:v155 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v139;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v139 != v8)
          {
            objc_enumerationMutation(inputCorrectionInfo);
          }

          v10 = *(*(&v138 + 1) + 8 * i);
          v11 = MEMORY[0x1E696AEC0];
          [objc_msgSend(v10 objectForKeyedSubscript:{@"px", "doubleValue"}];
          *&v12 = v12;
          v13 = *&v12;
          [objc_msgSend(v10 objectForKeyedSubscript:{@"py", "doubleValue"}];
          *&v14 = 1.0 - v14;
          [array addObject:{objc_msgSend(v11, "stringWithFormat:", @"x = %.5f, y = %.5f, width = 10.0, height = 10.0, alpha = 0.0244, density = 0.86, strength = 0.0757, redBias = 0.253, pupilSize = 0.50, pupilDarkenAmount = 0.75", *&v13, *&v14)}];
        }

        v7 = [(NSArray *)inputCorrectionInfo countByEnumeratingWithState:&v138 objects:v155 count:16];
      }

      while (v7);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    obj = selfCopy->inputCorrectionInfo;
    v121 = [(NSArray *)obj countByEnumeratingWithState:&v134 objects:v154 count:16];
    if (v121)
    {
      v120 = *v135;
      do
      {
        v15 = 0;
        do
        {
          if (*v135 != v120)
          {
            objc_enumerationMutation(obj);
          }

          v124 = v15;
          v125 = *(*(&v134 + 1) + 8 * v15);
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v17 = [v125 objectForKeyedSubscript:@"context"];
          v18 = [v17 objectForKeyedSubscript:@"faceRect"];
          v126 = dictionary;
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v18, "objectAtIndexedSubscript:", 0), objc_msgSend(v18, "objectAtIndexedSubscript:", 1), objc_msgSend(v18, "objectAtIndexedSubscript:", 2), objc_msgSend(v18, "objectAtIndexedSubscript:", 3)), @"cfr"}];
          v19 = [v17 objectForKeyedSubscript:@"leftEye"];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@", objc_msgSend(v19, "objectAtIndexedSubscript:", 0), objc_msgSend(v19, "objectAtIndexedSubscript:", 1)), @"cle"}];
          v20 = [v17 objectForKeyedSubscript:@"leftPoly0"];
          v21 = [v17 objectForKeyedSubscript:@"leftPoly1"];
          v22 = [v17 objectForKeyedSubscript:@"leftPoly2"];
          v23 = [v17 objectForKeyedSubscript:@"leftPoly3"];
          v24 = [v17 objectForKeyedSubscript:@"leftPoly4"];
          v25 = [v17 objectForKeyedSubscript:@"leftPoly5"];
          v26 = [v17 objectForKeyedSubscript:@"leftPoly6"];
          v27 = [v17 objectForKeyedSubscript:@"leftPoly7"];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@", objc_msgSend(v20, "objectAtIndexedSubscript:", 0), objc_msgSend(v20, "objectAtIndexedSubscript:", 1), objc_msgSend(v21, "objectAtIndexedSubscript:", 0), objc_msgSend(v21, "objectAtIndexedSubscript:", 1), objc_msgSend(v22, "objectAtIndexedSubscript:", 0), objc_msgSend(v22, "objectAtIndexedSubscript:", 1), objc_msgSend(v23, "objectAtIndexedSubscript:", 0), objc_msgSend(v23, "objectAtIndexedSubscript:", 1), objc_msgSend(v24, "objectAtIndexedSubscript:", 0), objc_msgSend(v24, "objectAtIndexedSubscript:", 1), objc_msgSend(v25, "objectAtIndexedSubscript:", 0), objc_msgSend(v25, "objectAtIndexedSubscript:", 1), objc_msgSend(v26, "objectAtIndexedSubscript:", 0), objc_msgSend(v26, "objectAtIndexedSubscript:", 1), objc_msgSend(v27, "objectAtIndexedSubscript:", 0), objc_msgSend(v27, "objectAtIndexedSubscript:", 1)), @"clp"}];
          v28 = [v17 objectForKeyedSubscript:@"leftRect"];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v28, "objectAtIndexedSubscript:", 0), objc_msgSend(v28, "objectAtIndexedSubscript:", 1), objc_msgSend(v28, "objectAtIndexedSubscript:", 2), objc_msgSend(v28, "objectAtIndexedSubscript:", 3)), @"clr"}];
          v29 = [v17 objectForKeyedSubscript:@"leftDistMatrix"];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v29, "objectAtIndexedSubscript:", 0), objc_msgSend(v29, "objectAtIndexedSubscript:", 1), objc_msgSend(v29, "objectAtIndexedSubscript:", 2), objc_msgSend(v29, "objectAtIndexedSubscript:", 3)), @"clm"}];
          v30 = [v17 objectForKeyedSubscript:@"rightEye"];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@", objc_msgSend(v30, "objectAtIndexedSubscript:", 0), objc_msgSend(v30, "objectAtIndexedSubscript:", 1)), @"cre"}];
          v31 = [v17 objectForKeyedSubscript:@"rightPoly0"];
          v32 = [v17 objectForKeyedSubscript:@"rightPoly1"];
          v33 = [v17 objectForKeyedSubscript:@"rightPoly2"];
          v34 = [v17 objectForKeyedSubscript:@"rightPoly3"];
          v35 = [v17 objectForKeyedSubscript:@"rightPoly4"];
          v36 = [v17 objectForKeyedSubscript:@"rightPoly5"];
          v37 = [v17 objectForKeyedSubscript:@"rightPoly6"];
          v38 = [v17 objectForKeyedSubscript:@"rightPoly7"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@ %@", objc_msgSend(v31, "objectAtIndexedSubscript:", 0), objc_msgSend(v31, "objectAtIndexedSubscript:", 1), objc_msgSend(v32, "objectAtIndexedSubscript:", 0), objc_msgSend(v32, "objectAtIndexedSubscript:", 1), objc_msgSend(v33, "objectAtIndexedSubscript:", 0), objc_msgSend(v33, "objectAtIndexedSubscript:", 1), objc_msgSend(v34, "objectAtIndexedSubscript:", 0), objc_msgSend(v34, "objectAtIndexedSubscript:", 1), objc_msgSend(v35, "objectAtIndexedSubscript:", 0), objc_msgSend(v35, "objectAtIndexedSubscript:", 1), objc_msgSend(v36, "objectAtIndexedSubscript:", 0), objc_msgSend(v36, "objectAtIndexedSubscript:", 1), objc_msgSend(v37, "objectAtIndexedSubscript:", 0), objc_msgSend(v37, "objectAtIndexedSubscript:", 1), objc_msgSend(v38, "objectAtIndexedSubscript:", 0), objc_msgSend(v38, "objectAtIndexedSubscript:", 1)), @"crp"}];
          v39 = [v17 objectForKeyedSubscript:@"rightRect"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v39, "objectAtIndexedSubscript:", 0), objc_msgSend(v39, "objectAtIndexedSubscript:", 1), objc_msgSend(v39, "objectAtIndexedSubscript:", 2), objc_msgSend(v39, "objectAtIndexedSubscript:", 3)), @"crr"}];
          v40 = [v17 objectForKeyedSubscript:@"rightDistMatrix"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v40, "objectAtIndexedSubscript:", 0), objc_msgSend(v40, "objectAtIndexedSubscript:", 1), objc_msgSend(v40, "objectAtIndexedSubscript:", 2), objc_msgSend(v40, "objectAtIndexedSubscript:", 3)), @"crm"}];
          v41 = [v125 objectForKeyedSubscript:@"convexHull"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@", objc_msgSend(v41, "objectForKeyedSubscript:", @"counterClockwise", objc_msgSend(v41, "objectForKeyedSubscript:", @"maxPoints", objc_msgSend(v41, "objectForKeyedSubscript:", @"nPoints", @"hin"}];
          v42 = [v41 objectForKeyedSubscript:@"hullBody"];
          v43 = [v42 count];
          v44 = v43;
          if (v43 >= 1)
          {
            v45 = 0;
            v46 = v43 & 0x7FFFFFFF;
            v47 = &stru_1F1040378;
            v129 = v46;
            v131 = v43;
            while (1)
            {
              if (v46 - v45 >= 4)
              {
                v48 = 4;
              }

              else
              {
                v48 = v46 - v45;
              }

              if (v46 - v45 >= 1)
              {
                v49 = 0;
                do
                {
                  *(&v150 + v49) = [v42 objectAtIndexedSubscript:v45 + v49];
                  ++v49;
                }

                while (v49 < v48);
              }

              if (v45)
              {
                v47 = [(__CFString *)v47 stringByAppendingFormat:@" "];
              }

              if (v48 > 2)
              {
                if (v48 == 3)
                {
                  v61 = v150;
                  v62 = [v150 objectAtIndexedSubscript:0];
                  v63 = [v61 objectAtIndexedSubscript:1];
                  v64 = v151;
                  v65 = v47;
                  v66 = [v151 objectAtIndexedSubscript:0];
                  v67 = [v64 objectAtIndexedSubscript:1];
                  v68 = v152;
                  v69 = [v152 objectAtIndexedSubscript:0];
                  v70 = v68;
                  v44 = v131;
                  v112 = v69;
                  v46 = v129;
                  v47 = -[__CFString stringByAppendingFormat:](v65, "stringByAppendingFormat:", @"%@ %@ %@ %@ %@ %@", v62, v63, v66, v67, v112, [v70 objectAtIndexedSubscript:1]);
                  goto LABEL_37;
                }

                if (v48 == 4)
                {
                  v54 = v150;
                  v127 = [v150 objectAtIndexedSubscript:0];
                  v55 = [v54 objectAtIndexedSubscript:1];
                  v56 = v151;
                  v57 = v47;
                  v58 = [v151 objectAtIndexedSubscript:0];
                  v59 = [v56 objectAtIndexedSubscript:1];
                  v60 = v152;
                  v111 = [v152 objectAtIndexedSubscript:0];
                  v114 = [v60 objectAtIndexedSubscript:1];
                  v46 = v129;
                  v44 = v131;
                  v53 = -[__CFString stringByAppendingFormat:](v57, "stringByAppendingFormat:", @"%@ %@ %@ %@ %@ %@ %@ %@", v127, v55, v58, v59, v111, v114, [v153 objectAtIndexedSubscript:0], objc_msgSend(v153, "objectAtIndexedSubscript:", 1));
                  goto LABEL_35;
                }
              }

              else
              {
                if (v48 == 1)
                {
                  v53 = -[__CFString stringByAppendingFormat:](v47, "stringByAppendingFormat:", @"%@ %@", [v150 objectAtIndexedSubscript:0], objc_msgSend(v150, "objectAtIndexedSubscript:", 1), v108, v109, v110, v113, v115, v116);
                  goto LABEL_35;
                }

                if (v48 == 2)
                {
                  v50 = v150;
                  v51 = [v150 objectAtIndexedSubscript:0];
                  v52 = [v50 objectAtIndexedSubscript:1];
                  v53 = -[__CFString stringByAppendingFormat:](v47, "stringByAppendingFormat:", @"%@ %@ %@ %@", v51, v52, [v151 objectAtIndexedSubscript:0], objc_msgSend(v151, "objectAtIndexedSubscript:", 1), v110, v113, v115, v116);
LABEL_35:
                  v47 = v53;
                }
              }

LABEL_37:
              v45 += 4;
              if (v45 >= v44)
              {
                goto LABEL_40;
              }
            }
          }

          v47 = &stru_1F1040378;
LABEL_40:
          [v126 setObject:v47 forKeyedSubscript:@"hb"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@ %@", objc_msgSend(v125, "objectForKeyedSubscript:", @"px", objc_msgSend(v125, "objectForKeyedSubscript:", @"py", objc_msgSend(v125, "objectForKeyedSubscript:", @"ioffx", objc_msgSend(v125, "objectForKeyedSubscript:", @"ioffy", objc_msgSend(v125, "objectForKeyedSubscript:", @"xf", objc_msgSend(v125, "objectForKeyedSubscript:", @"yf", @"g"}];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v125, "objectForKeyedSubscript:", @"xPosition", objc_msgSend(v125, "objectForKeyedSubscript:", @"hue", objc_msgSend(v125, "objectForKeyedSubscript:", @"saturation", objc_msgSend(v125, "objectForKeyedSubscript:", @"luminance", @"ec"}];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@ %@ %@ %@", objc_msgSend(v125, "objectForKeyedSubscript:", @"skinval", objc_msgSend(v125, "objectForKeyedSubscript:", @"avgLuminance", objc_msgSend(v125, "objectForKeyedSubscript:", @"minLuminance", objc_msgSend(v125, "objectForKeyedSubscript:", @"maxLuminance", objc_msgSend(v125, "objectForKeyedSubscript:", @"darkPercent", objc_msgSend(v125, "objectForKeyedSubscript:", @"clipPercent", objc_msgSend(v125, "objectForKeyedSubscript:", @"variance", objc_msgSend(v125, "objectForKeyedSubscript:", @"nNonZero", @"sk"}];
          v71 = [v125 objectForKeyedSubscript:@"settings"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@", objc_msgSend(v71, "objectForKeyedSubscript:", @"IOD", objc_msgSend(v71, "objectForKeyedSubscript:", @"faceIndex", objc_msgSend(v71, "objectForKeyedSubscript:", @"side", objc_msgSend(v71, "objectForKeyedSubscript:", @"scale", objc_msgSend(v71, "objectForKeyedSubscript:", @"height", @"sg"}];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@ %@ %@ %@ %@ %@", objc_msgSend(v71, "objectForKeyedSubscript:", @"alignmentTolerance", objc_msgSend(v71, "objectForKeyedSubscript:", @"capture", objc_msgSend(v71, "objectForKeyedSubscript:", @"connectThreshold", objc_msgSend(v71, "objectForKeyedSubscript:", @"downsampleOversizeX", objc_msgSend(v71, "objectForKeyedSubscript:", @"downsampleOversizeY", objc_msgSend(v71, "objectForKeyedSubscript:", @"downsampleType", objc_msgSend(v71, "objectForKeyedSubscript:", @"gradientChannel", objc_msgSend(v71, "objectForKeyedSubscript:", @"edgeFindingChannel", objc_msgSend(v71, "objectForKeyedSubscript:", @"minMagnitude", objc_msgSend(v71, "objectForKeyedSubscript:", @"regressionRadius", @"sp"}];
          v72 = [v71 objectForKeyedSubscript:@"transform"];
          [v126 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@ %@ %@", objc_msgSend(v72, "objectAtIndexedSubscript:", 0), objc_msgSend(v72, "objectAtIndexedSubscript:", 1), objc_msgSend(v72, "objectAtIndexedSubscript:", 2), objc_msgSend(v72, "objectAtIndexedSubscript:", 3), objc_msgSend(v72, "objectAtIndexedSubscript:", 4), objc_msgSend(v72, "objectAtIndexedSubscript:", 5)), @"st"}];
          [array3 addObject:v126];
          v15 = v124 + 1;
        }

        while (v124 + 1 != v121);
        v121 = [(NSArray *)obj countByEnumeratingWithState:&v134 objects:v154 count:16];
      }

      while (v121);
    }

    v73 = selfCopy;
    v74 = [(NSArray *)selfCopy->inputCorrectionInfo objectAtIndex:0];
    [objc_msgSend(v74 objectForKeyedSubscript:{@"xf", "doubleValue"}];
    v76 = array2;
    [array2 addObject:metadataPropertyWithDouble(v75)];
    [objc_msgSend(v74 objectForKeyedSubscript:{@"yf", "doubleValue"}];
    [array2 addObject:metadataPropertyWithDouble(v77)];
    [array2 addObject:metadataPropertyWithDouble(1.0)];
    [array2 addObject:metadataPropertyWithDouble(1.0)];
    v78 = 64.0;
  }

  else
  {
    v148 = 0uLL;
    v149 = 0uLL;
    v146 = 0uLL;
    v147 = 0uLL;
    v132 = self->inputCorrectionInfo;
    v79 = [(NSArray *)v132 countByEnumeratingWithState:&v146 objects:v157 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v147;
      do
      {
        for (j = 0; j != v80; ++j)
        {
          if (*v147 != v81)
          {
            objc_enumerationMutation(v132);
          }

          v83 = *(*(&v146 + 1) + 8 * j);
          v84 = MEMORY[0x1E696AEC0];
          [objc_msgSend(v83 objectForKeyedSubscript:{@"pointX", "doubleValue"}];
          *&v85 = v85;
          v86 = *&v85;
          [objc_msgSend(v83 objectForKeyedSubscript:{@"pointY", "doubleValue"}];
          *&v87 = 1.0 - v87;
          v88 = *&v87;
          [objc_msgSend(v83 objectForKeyedSubscript:{@"size", "doubleValue"}];
          v90 = v89;
          [objc_msgSend(v83 objectForKeyedSubscript:{@"size", "doubleValue"}];
          [array addObject:{objc_msgSend(v84, "stringWithFormat:", @"x = %.5f, y = %.5f, width = %.5f, height = %.5f, alpha = 0.0244, density = 0.86, strength = 0.0757, redBias = 0.253, pupilSize = 0.50, pupilDarkenAmount = 0.75", *&v86, *&v88, v90, v91)}];
        }

        v80 = [(NSArray *)v132 countByEnumeratingWithState:&v146 objects:v157 count:16];
      }

      while (v80);
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v128 = selfCopy->inputCorrectionInfo;
    v133 = [(NSArray *)v128 countByEnumeratingWithState:&v142 objects:v156 count:16];
    if (v133)
    {
      v130 = *v143;
      do
      {
        for (k = 0; k != v133; k = k + 1)
        {
          if (*v143 != v130)
          {
            objc_enumerationMutation(v128);
          }

          v93 = *(*(&v142 + 1) + 8 * k);
          dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"pointX", objc_msgSend(v93, "objectForKeyedSubscript:", @"pointY", objc_msgSend(v93, "objectForKeyedSubscript:", @"size", @"p"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"pupilShadeLow", objc_msgSend(v93, "objectForKeyedSubscript:", @"pupilShadeMedium", objc_msgSend(v93, "objectForKeyedSubscript:", @"pupilShadeHigh", objc_msgSend(v93, "objectForKeyedSubscript:", @"pupilShadeAverage", @"ps"}];
          [dictionary2 setObject:objc_msgSend(v93 forKeyedSubscript:{"objectForKeyedSubscript:", @"interocularDistance", @"iod"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"snappedX", objc_msgSend(v93, "objectForKeyedSubscript:", @"snappedY", @"s"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"bitmaskX", objc_msgSend(v93, "objectForKeyedSubscript:", @"bitmaskY", objc_msgSend(v93, "objectForKeyedSubscript:", @"bitmaskThreshold", @"b"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"cornealReflectionX", objc_msgSend(v93, "objectForKeyedSubscript:", @"cornealReflectionY", objc_msgSend(v93, "objectForKeyedSubscript:", @"cornealReflectionThreshold", @"cr"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"existingPupilLow", objc_msgSend(v93, "objectForKeyedSubscript:", @"existingPupilMedium", objc_msgSend(v93, "objectForKeyedSubscript:", @"existingPupilHigh", objc_msgSend(v93, "objectForKeyedSubscript:", @"existingPupilAverage", @"ep"}];
          [dictionary2 setObject:objc_msgSend(v93 forKeyedSubscript:{"objectForKeyedSubscript:", @"averageSkinLuminance", @"asl"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"searchRectangleMinimumY", objc_msgSend(v93, "objectForKeyedSubscript:", @"searchRectangleMaximumY", objc_msgSend(v93, "objectForKeyedSubscript:", @"searchRectangleMinimumX", objc_msgSend(v93, "objectForKeyedSubscript:", @"searchRectangleMaximumX", @"sr"}];
          [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithFormat:", @"%@ %@ %@ %@", objc_msgSend(v93, "objectForKeyedSubscript:", @"repairRectangleMinimumY", objc_msgSend(v93, "objectForKeyedSubscript:", @"repairRectangleMaximumY", objc_msgSend(v93, "objectForKeyedSubscript:", @"repairRectangleMinimumX", objc_msgSend(v93, "objectForKeyedSubscript:", @"repairRectangleMaximumX", @"rr"}];
          v95 = [v93 objectForKeyedSubscript:@"forceCase"];
          [v95 floatValue];
          if (v96 != 0.0)
          {
            [dictionary2 setObject:v95 forKeyedSubscript:@"fc"];
          }

          v97 = [v93 objectForKeyedSubscript:@"pupilShadeAlignment"];
          [v97 floatValue];
          if (v98 != 0.0)
          {
            [dictionary2 setObject:v97 forKeyedSubscript:@"psa"];
          }

          v99 = [v93 objectForKeyedSubscript:@"finalEyeCase"];
          [v99 floatValue];
          if (v100 != 0.0)
          {
            [dictionary2 setObject:v99 forKeyedSubscript:@"fec"];
          }

          [array3 addObject:dictionary2];
        }

        v133 = [(NSArray *)v128 countByEnumeratingWithState:&v142 objects:v156 count:16];
      }

      while (v133);
    }

    v73 = selfCopy;
    v101 = [(NSArray *)selfCopy->inputCorrectionInfo objectAtIndex:0];
    [objc_msgSend(v101 objectForKeyedSubscript:{@"fullImageWidth", "doubleValue"}];
    v76 = array2;
    [array2 addObject:metadataPropertyWithDouble(v102)];
    [objc_msgSend(v101 objectForKeyedSubscript:{@"fullImageHeight", "doubleValue"}];
    [array2 addObject:metadataPropertyWithDouble(v103)];
    [objc_msgSend(v101 objectForKeyedSubscript:{@"imageSpecialValue", "doubleValue"}];
    [array2 addObject:metadataPropertyWithDouble(v104)];
    [objc_msgSend(v101 objectForKeyedSubscript:{@"imageOrientation", "doubleValue"}];
    [array2 addObject:metadataPropertyWithDouble(v105)];
    [objc_msgSend(v101 objectForKeyedSubscript:{@"imageSignalToNoiseRatio", "doubleValue"}];
  }

  [v76 addObject:metadataPropertyWithDouble(v78)];
  inputCameraModel = v73->inputCameraModel;
  if (inputCameraModel)
  {
    [v76 addObject:{metadataPropertyWithString(@"http://ns.apple.com/adjustment-settings/1.0/", @"aas", @"RedEyeModel", inputCameraModel)}];
  }

  [v76 addObject:{metadataPropertyWithArrayOfStructs(@"http://ns.apple.com/adjustment-settings/1.0/", @"aas", @"http://ns.apple.com/adjustment-settings/1.0/sType/redeye", @"re", @"RedEyeCorrections", array3)}];
  [v76 addObject:metadataPropertyWithBool()];
  [v76 addObject:{metadataPropertyWithArray(@"http://ns.adobe.com/camera-raw-settings/1.0/", @"crs", @"RedEyeInfo", array)}];
  return v76;
}

- (id)_initFromProperties:(id)properties
{
  v260 = *MEMORY[0x1E69E9840];
  ArrayOfStructs = metadataPropertyArrayGetArrayOfStructs(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"http://ns.apple.com/adjustment-settings/1.0/sType/red-eye");
  if (!ArrayOfStructs)
  {
    goto LABEL_12;
  }

  v6 = ArrayOfStructs;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v7 = [ArrayOfStructs countByEnumeratingWithState:&v228 objects:v259 count:16];
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v229;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v229 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v9 |= [objc_msgSend(*(*(&v228 + 1) + 8 * i) "allKeys")] != 0;
    }

    v8 = [v6 countByEnumeratingWithState:&v228 objects:v259 count:16];
  }

  while (v8);
  if ((v9 & 1) == 0)
  {
LABEL_12:
    v226 = 0.0;
    v227 = 0.0;
    v224 = 0.0;
    v225 = 0.0;
    v223 = 0.0;
    if (!metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"RedEyeW", &v227) || !metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"RedEyeH", &v226) || !metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"RedEyeISV", &v225) || !metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"RedEyeOrt", &v224) || (metadataPropertyArrayGetDouble(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"RedEyeSNR", &v223) & 1) == 0)
    {
      goto LABEL_41;
    }

    propertiesCopy = properties;
    selfCopy = self;
    v14 = metadataPropertyArrayGetArrayOfStructs(properties, @"http://ns.apple.com/adjustment-settings/1.0/", @"http://ns.apple.com/adjustment-settings/1.0/sType/redeye");
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    obj = v14;
    v197 = [v14 countByEnumeratingWithState:&v219 objects:v258 count:16];
    if (v197)
    {
      v196 = *v220;
      v15 = 0x1E695D000uLL;
      while (2)
      {
        for (j = 0; j != v197; ++j)
        {
          if (*v220 != v196)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v219 + 1) + 8 * j);
          if ([v17 objectForKeyedSubscript:{@"hb", propertiesCopy, selfCopy}])
          {
            v217 = j;
            v218 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:50];
            v18 = [objc_msgSend(v17 objectForKeyedSubscript:{@"cfr", "componentsSeparatedByString:", @" "}];
            v19 = MEMORY[0x1E696AD98];
            [objc_msgSend(v18 objectAtIndexedSubscript:{0), "floatValue"}];
            v257[0] = [v19 numberWithFloat:?];
            v20 = MEMORY[0x1E696AD98];
            [objc_msgSend(v18 objectAtIndexedSubscript:{1), "floatValue"}];
            v257[1] = [v20 numberWithFloat:?];
            v21 = MEMORY[0x1E696AD98];
            [objc_msgSend(v18 objectAtIndexedSubscript:{2), "floatValue"}];
            v257[2] = [v21 numberWithFloat:?];
            v22 = MEMORY[0x1E696AD98];
            [objc_msgSend(v18 objectAtIndexedSubscript:{3), "floatValue"}];
            v257[3] = [v22 numberWithFloat:?];
            v216 = [*(v15 + 3784) arrayWithObjects:v257 count:4];
            v23 = [objc_msgSend(v17 objectForKeyedSubscript:{@"cle", "componentsSeparatedByString:", @" "}];
            v24 = MEMORY[0x1E696AD98];
            [objc_msgSend(v23 objectAtIndexedSubscript:{0), "floatValue"}];
            v256[0] = [v24 numberWithFloat:?];
            v25 = MEMORY[0x1E696AD98];
            [objc_msgSend(v23 objectAtIndexedSubscript:{1), "floatValue"}];
            v256[1] = [v25 numberWithFloat:?];
            v215 = [*(v15 + 3784) arrayWithObjects:v256 count:2];
            v26 = [objc_msgSend(v17 objectForKeyedSubscript:{@"clp", "componentsSeparatedByString:", @" "}];
            v27 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{0), "floatValue"}];
            v255[0] = [v27 numberWithFloat:?];
            v28 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{1), "floatValue"}];
            v255[1] = [v28 numberWithFloat:?];
            v214 = [*(v15 + 3784) arrayWithObjects:v255 count:2];
            v29 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{2), "floatValue"}];
            v254[0] = [v29 numberWithFloat:?];
            v30 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{3), "floatValue"}];
            v254[1] = [v30 numberWithFloat:?];
            v213 = [*(v15 + 3784) arrayWithObjects:v254 count:2];
            v31 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{4), "floatValue"}];
            v253[0] = [v31 numberWithFloat:?];
            v32 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{5), "floatValue"}];
            v253[1] = [v32 numberWithFloat:?];
            v212 = [*(v15 + 3784) arrayWithObjects:v253 count:2];
            v33 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{6), "floatValue"}];
            v252[0] = [v33 numberWithFloat:?];
            v34 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{7), "floatValue"}];
            v252[1] = [v34 numberWithFloat:?];
            v211 = [*(v15 + 3784) arrayWithObjects:v252 count:2];
            v35 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{8), "floatValue"}];
            v251[0] = [v35 numberWithFloat:?];
            v36 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{9), "floatValue"}];
            v251[1] = [v36 numberWithFloat:?];
            v210 = [*(v15 + 3784) arrayWithObjects:v251 count:2];
            v37 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{10), "floatValue"}];
            v250[0] = [v37 numberWithFloat:?];
            v38 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{11), "floatValue"}];
            v250[1] = [v38 numberWithFloat:?];
            v209 = [*(v15 + 3784) arrayWithObjects:v250 count:2];
            v39 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{12), "floatValue"}];
            v249[0] = [v39 numberWithFloat:?];
            v40 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{13), "floatValue"}];
            v249[1] = [v40 numberWithFloat:?];
            v208 = [*(v15 + 3784) arrayWithObjects:v249 count:2];
            v41 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{14), "floatValue"}];
            v248[0] = [v41 numberWithFloat:?];
            v42 = MEMORY[0x1E696AD98];
            [objc_msgSend(v26 objectAtIndexedSubscript:{15), "floatValue"}];
            v248[1] = [v42 numberWithFloat:?];
            v207 = [*(v15 + 3784) arrayWithObjects:v248 count:2];
            v43 = [objc_msgSend(v17 objectForKeyedSubscript:{@"clr", "componentsSeparatedByString:", @" "}];
            v44 = MEMORY[0x1E696AD98];
            [objc_msgSend(v43 objectAtIndexedSubscript:{0), "floatValue"}];
            v247[0] = [v44 numberWithFloat:?];
            v45 = MEMORY[0x1E696AD98];
            [objc_msgSend(v43 objectAtIndexedSubscript:{1), "floatValue"}];
            v247[1] = [v45 numberWithFloat:?];
            v46 = MEMORY[0x1E696AD98];
            [objc_msgSend(v43 objectAtIndexedSubscript:{2), "floatValue"}];
            v247[2] = [v46 numberWithFloat:?];
            v47 = MEMORY[0x1E696AD98];
            [objc_msgSend(v43 objectAtIndexedSubscript:{3), "floatValue"}];
            v247[3] = [v47 numberWithFloat:?];
            v206 = [*(v15 + 3784) arrayWithObjects:v247 count:4];
            v48 = [objc_msgSend(v17 objectForKeyedSubscript:{@"clm", "componentsSeparatedByString:", @" "}];
            v49 = MEMORY[0x1E696AD98];
            [objc_msgSend(v48 objectAtIndexedSubscript:{0), "floatValue"}];
            v246[0] = [v49 numberWithFloat:?];
            v50 = MEMORY[0x1E696AD98];
            [objc_msgSend(v48 objectAtIndexedSubscript:{1), "floatValue"}];
            v246[1] = [v50 numberWithFloat:?];
            v51 = MEMORY[0x1E696AD98];
            [objc_msgSend(v48 objectAtIndexedSubscript:{2), "floatValue"}];
            v246[2] = [v51 numberWithFloat:?];
            v52 = MEMORY[0x1E696AD98];
            [objc_msgSend(v48 objectAtIndexedSubscript:{3), "floatValue"}];
            v246[3] = [v52 numberWithFloat:?];
            v205 = [*(v15 + 3784) arrayWithObjects:v246 count:4];
            v53 = [objc_msgSend(v17 objectForKeyedSubscript:{@"cre", "componentsSeparatedByString:", @" "}];
            v54 = MEMORY[0x1E696AD98];
            [objc_msgSend(v53 objectAtIndexedSubscript:{0), "floatValue"}];
            v245[0] = [v54 numberWithFloat:?];
            v55 = MEMORY[0x1E696AD98];
            [objc_msgSend(v53 objectAtIndexedSubscript:{1), "floatValue"}];
            v245[1] = [v55 numberWithFloat:?];
            v204 = [*(v15 + 3784) arrayWithObjects:v245 count:2];
            v56 = [objc_msgSend(v17 objectForKeyedSubscript:{@"crp", "componentsSeparatedByString:", @" "}];
            v57 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{0), "floatValue"}];
            v244[0] = [v57 numberWithFloat:?];
            v58 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{1), "floatValue"}];
            v244[1] = [v58 numberWithFloat:?];
            v203 = [*(v15 + 3784) arrayWithObjects:v244 count:2];
            v59 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{2), "floatValue"}];
            v243[0] = [v59 numberWithFloat:?];
            v60 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{3), "floatValue"}];
            v243[1] = [v60 numberWithFloat:?];
            v202 = [*(v15 + 3784) arrayWithObjects:v243 count:2];
            v61 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{4), "floatValue"}];
            v242[0] = [v61 numberWithFloat:?];
            v62 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{5), "floatValue"}];
            v242[1] = [v62 numberWithFloat:?];
            v201 = [*(v15 + 3784) arrayWithObjects:v242 count:2];
            v63 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{6), "floatValue"}];
            v241[0] = [v63 numberWithFloat:?];
            v64 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{7), "floatValue"}];
            v241[1] = [v64 numberWithFloat:?];
            v200 = [*(v15 + 3784) arrayWithObjects:v241 count:2];
            v65 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{8), "floatValue"}];
            v240[0] = [v65 numberWithFloat:?];
            v66 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{9), "floatValue"}];
            v240[1] = [v66 numberWithFloat:?];
            v199 = [*(v15 + 3784) arrayWithObjects:v240 count:2];
            v67 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{10), "floatValue"}];
            v239[0] = [v67 numberWithFloat:?];
            v68 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{11), "floatValue"}];
            v239[1] = [v68 numberWithFloat:?];
            v69 = [*(v15 + 3784) arrayWithObjects:v239 count:2];
            v70 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{12), "floatValue"}];
            v238[0] = [v70 numberWithFloat:?];
            v71 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{13), "floatValue"}];
            v238[1] = [v71 numberWithFloat:?];
            v198 = [*(v15 + 3784) arrayWithObjects:v238 count:2];
            v72 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{14), "floatValue"}];
            v237[0] = [v72 numberWithFloat:?];
            v73 = MEMORY[0x1E696AD98];
            [objc_msgSend(v56 objectAtIndexedSubscript:{15), "floatValue"}];
            v237[1] = [v73 numberWithFloat:?];
            v74 = [*(v15 + 3784) arrayWithObjects:v237 count:2];
            v75 = [objc_msgSend(v17 objectForKeyedSubscript:{@"crr", "componentsSeparatedByString:", @" "}];
            v76 = v17;
            v77 = v15;
            v78 = MEMORY[0x1E696AD98];
            [objc_msgSend(v75 objectAtIndexedSubscript:{0), "floatValue"}];
            v236[0] = [v78 numberWithFloat:?];
            v79 = MEMORY[0x1E696AD98];
            [objc_msgSend(v75 objectAtIndexedSubscript:{1), "floatValue"}];
            v236[1] = [v79 numberWithFloat:?];
            v80 = MEMORY[0x1E696AD98];
            [objc_msgSend(v75 objectAtIndexedSubscript:{2), "floatValue"}];
            v236[2] = [v80 numberWithFloat:?];
            v81 = MEMORY[0x1E696AD98];
            [objc_msgSend(v75 objectAtIndexedSubscript:{3), "floatValue"}];
            v236[3] = [v81 numberWithFloat:?];
            v82 = [*(v77 + 3784) arrayWithObjects:v236 count:4];
            v83 = [objc_msgSend(v76 objectForKeyedSubscript:{@"crm", "componentsSeparatedByString:", @" "}];
            v84 = MEMORY[0x1E696AD98];
            [objc_msgSend(v83 objectAtIndexedSubscript:{0), "floatValue"}];
            v235[0] = [v84 numberWithFloat:?];
            v85 = MEMORY[0x1E696AD98];
            [objc_msgSend(v83 objectAtIndexedSubscript:{1), "floatValue"}];
            v235[1] = [v85 numberWithFloat:?];
            v86 = MEMORY[0x1E696AD98];
            [objc_msgSend(v83 objectAtIndexedSubscript:{2), "floatValue"}];
            v235[2] = [v86 numberWithFloat:?];
            v87 = MEMORY[0x1E696AD98];
            v88 = v83;
            v15 = v77;
            [objc_msgSend(v88 objectAtIndexedSubscript:{3), "floatValue"}];
            v235[3] = [v87 numberWithFloat:?];
            v89 = [*(v77 + 3784) arrayWithObjects:v235 count:4];
            v234[0] = v216;
            v234[1] = v215;
            v234[2] = v214;
            v234[3] = v213;
            v234[4] = v212;
            v234[5] = v211;
            v234[6] = v210;
            v234[7] = v209;
            v234[8] = v208;
            v234[9] = v207;
            v234[10] = v206;
            v234[11] = v204;
            v234[12] = v203;
            v234[13] = v202;
            v234[14] = v201;
            v234[15] = v200;
            v234[16] = v199;
            v234[17] = v69;
            v234[18] = v198;
            v234[19] = v74;
            v234[20] = v82;
            v234[21] = v205;
            v233[0] = @"faceRect";
            v233[1] = @"leftEye";
            v233[2] = @"leftPoly0";
            v233[3] = @"leftPoly1";
            v233[4] = @"leftPoly2";
            v233[5] = @"leftPoly3";
            v233[6] = @"leftPoly4";
            v233[7] = @"leftPoly5";
            v233[8] = @"leftPoly6";
            v233[9] = @"leftPoly7";
            v233[10] = @"leftRect";
            v233[11] = @"rightEye";
            v233[12] = @"rightPoly0";
            v233[13] = @"rightPoly1";
            v233[14] = @"rightPoly2";
            v233[15] = @"rightPoly3";
            v233[16] = @"rightPoly4";
            v233[17] = @"rightPoly5";
            v233[18] = @"rightPoly6";
            v233[19] = @"rightPoly7";
            v233[20] = @"rightRect";
            v233[21] = @"leftDistMatrix";
            v233[22] = @"rightDistMatrix";
            v234[22] = v89;
            [v218 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v234, v233, 23), @"context"}];
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v91 = v76;
            v92 = [objc_msgSend(v76 objectForKeyedSubscript:{@"hin", "componentsSeparatedByString:", @" "}];
            v93 = MEMORY[0x1E696AD98];
            [objc_msgSend(v92 objectAtIndexedSubscript:{0), "floatValue"}];
            [dictionary setObject:objc_msgSend(v93 forKeyedSubscript:{"numberWithFloat:"), @"counterClockwise"}];
            v94 = MEMORY[0x1E696AD98];
            [objc_msgSend(v92 objectAtIndexedSubscript:{1), "floatValue"}];
            [dictionary setObject:objc_msgSend(v94 forKeyedSubscript:{"numberWithFloat:"), @"maxPoints"}];
            v95 = MEMORY[0x1E696AD98];
            [objc_msgSend(v92 objectAtIndexedSubscript:{2), "floatValue"}];
            [dictionary setObject:objc_msgSend(v95 forKeyedSubscript:{"numberWithFloat:"), @"nPoints"}];
            array = [MEMORY[0x1E695DF70] array];
            v97 = [objc_msgSend(v91 objectForKeyedSubscript:{@"hb", "componentsSeparatedByString:", @" "}];
            if ([v97 count])
            {
              v98 = 0;
              do
              {
                v99 = MEMORY[0x1E696AD98];
                [objc_msgSend(v97 objectAtIndexedSubscript:{v98), "floatValue"}];
                v232[0] = [v99 numberWithFloat:?];
                v100 = MEMORY[0x1E696AD98];
                [objc_msgSend(v97 objectAtIndexedSubscript:{v98 + 1), "floatValue"}];
                v101 = v100;
                v15 = v77;
                v232[1] = [v101 numberWithFloat:?];
                [array addObject:{objc_msgSend(*(v77 + 3784), "arrayWithObjects:count:", v232, 2)}];
                v98 += 2;
              }

              while ([v97 count] > v98);
            }

            [dictionary setObject:array forKeyedSubscript:@"hullBody"];
            [v218 setObject:dictionary forKeyedSubscript:@"convexHull"];
            v102 = v218;
            v103 = [objc_msgSend(v91 objectForKeyedSubscript:{@"g", "componentsSeparatedByString:", @" "}];
            v104 = MEMORY[0x1E696AD98];
            [objc_msgSend(v103 objectAtIndexedSubscript:{0), "floatValue"}];
            v105 = [v104 numberWithFloat:?];
            [v218 setObject:v105 forKeyedSubscript:@"px"];
            [v218 setObject:v105 forKeyedSubscript:@"pointX"];
            v106 = MEMORY[0x1E696AD98];
            [objc_msgSend(v103 objectAtIndexedSubscript:{1), "floatValue"}];
            v107 = [v106 numberWithFloat:?];
            [v218 setObject:v107 forKeyedSubscript:@"py"];
            [v218 setObject:v107 forKeyedSubscript:@"pointY"];
            [v218 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v103, "objectAtIndexedSubscript:", 2), "intValue")), @"ioffx"}];
            [v218 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v103, "objectAtIndexedSubscript:", 3), "intValue")), @"ioffy"}];
            v108 = MEMORY[0x1E696AD98];
            [objc_msgSend(v103 objectAtIndexedSubscript:{4), "floatValue"}];
            [v218 setObject:objc_msgSend(v108 forKeyedSubscript:{"numberWithFloat:"), @"xf"}];
            v109 = MEMORY[0x1E696AD98];
            [objc_msgSend(v103 objectAtIndexedSubscript:{5), "floatValue"}];
            [v218 setObject:objc_msgSend(v109 forKeyedSubscript:{"numberWithFloat:"), @"yf"}];
            v110 = [objc_msgSend(v91 objectForKeyedSubscript:{@"ec", "componentsSeparatedByString:", @" "}];
            v111 = MEMORY[0x1E696AD98];
            [objc_msgSend(v110 objectAtIndexedSubscript:{0), "floatValue"}];
            [v218 setObject:objc_msgSend(v111 forKeyedSubscript:{"numberWithFloat:"), @"xPosition"}];
            v112 = MEMORY[0x1E696AD98];
            [objc_msgSend(v110 objectAtIndexedSubscript:{1), "floatValue"}];
            [v218 setObject:objc_msgSend(v112 forKeyedSubscript:{"numberWithFloat:"), @"hue"}];
            v113 = MEMORY[0x1E696AD98];
            [objc_msgSend(v110 objectAtIndexedSubscript:{2), "floatValue"}];
            [v218 setObject:objc_msgSend(v113 forKeyedSubscript:{"numberWithFloat:"), @"saturation"}];
            v114 = MEMORY[0x1E696AD98];
            [objc_msgSend(v110 objectAtIndexedSubscript:{3), "floatValue"}];
            [v218 setObject:objc_msgSend(v114 forKeyedSubscript:{"numberWithFloat:"), @"luminance"}];
            v115 = [objc_msgSend(v91 objectForKeyedSubscript:{@"sk", "componentsSeparatedByString:", @" "}];
            v116 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{0), "floatValue"}];
            [v218 setObject:objc_msgSend(v116 forKeyedSubscript:{"numberWithFloat:"), @"skinval"}];
            v117 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{1), "floatValue"}];
            [v218 setObject:objc_msgSend(v117 forKeyedSubscript:{"numberWithFloat:"), @"avgLuminance"}];
            v118 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{2), "floatValue"}];
            [v218 setObject:objc_msgSend(v118 forKeyedSubscript:{"numberWithFloat:"), @"minLuminance"}];
            v119 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{3), "floatValue"}];
            [v218 setObject:objc_msgSend(v119 forKeyedSubscript:{"numberWithFloat:"), @"maxLuminance"}];
            v120 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{4), "floatValue"}];
            [v218 setObject:objc_msgSend(v120 forKeyedSubscript:{"numberWithFloat:"), @"darkPercent"}];
            v121 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{5), "floatValue"}];
            [v218 setObject:objc_msgSend(v121 forKeyedSubscript:{"numberWithFloat:"), @"clipPercent"}];
            v122 = MEMORY[0x1E696AD98];
            [objc_msgSend(v115 objectAtIndexedSubscript:{6), "floatValue"}];
            [v218 setObject:objc_msgSend(v122 forKeyedSubscript:{"numberWithFloat:"), @"variance"}];
            [v218 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v115, "objectAtIndexedSubscript:", 7), "intValue")), @"nNonZero"}];
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
            v124 = [objc_msgSend(v91 objectForKeyedSubscript:{@"sg", "componentsSeparatedByString:", @" "}];
            v125 = MEMORY[0x1E696AD98];
            [objc_msgSend(v124 objectAtIndexedSubscript:{0), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v125 forKeyedSubscript:{"numberWithFloat:"), @"IOD"}];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v124, "objectAtIndexedSubscript:", 1), "intValue")), @"faceIndex"}];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v124, "objectAtIndexedSubscript:", 2), "intValue")), @"side"}];
            v126 = MEMORY[0x1E696AD98];
            [objc_msgSend(v124 objectAtIndexedSubscript:{3), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v126 forKeyedSubscript:{"numberWithFloat:"), @"scale"}];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v124, "objectAtIndexedSubscript:", 4), "intValue")), @"height"}];
            v127 = [objc_msgSend(v91 objectForKeyedSubscript:{@"sp", "componentsSeparatedByString:", @" "}];
            v128 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{0), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v128 forKeyedSubscript:{"numberWithFloat:"), @"alignmentTolerance"}];
            v129 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{1), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v129 forKeyedSubscript:{"numberWithFloat:"), @"capture"}];
            v130 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{2), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v130 forKeyedSubscript:{"numberWithFloat:"), @"connectThreshold"}];
            v131 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{3), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v131 forKeyedSubscript:{"numberWithFloat:"), @"downsampleOversizeX"}];
            v132 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{4), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v132 forKeyedSubscript:{"numberWithFloat:"), @"downsampleOversizeY"}];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v127, "objectAtIndexedSubscript:", 5), "intValue")), @"downsampleType"}];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v127, "objectAtIndexedSubscript:", 6), "intValue")), @"gradientChannel"}];
            [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(v127, "objectAtIndexedSubscript:", 7), "intValue")), @"edgeFindingChannel"}];
            v133 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{8), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v133 forKeyedSubscript:{"numberWithFloat:"), @"minMagnitude"}];
            v134 = MEMORY[0x1E696AD98];
            [objc_msgSend(v127 objectAtIndexedSubscript:{9), "floatValue"}];
            [dictionary2 setObject:objc_msgSend(v134 forKeyedSubscript:{"numberWithFloat:"), @"regressionRadius"}];
            array2 = [MEMORY[0x1E695DF70] array];
            v136 = [objc_msgSend(v91 objectForKeyedSubscript:{@"st", "componentsSeparatedByString:", @" "}];
            v137 = MEMORY[0x1E696AD98];
            [objc_msgSend(v136 objectAtIndexedSubscript:{0), "floatValue"}];
            [array2 addObject:{objc_msgSend(v137, "numberWithFloat:")}];
            v138 = MEMORY[0x1E696AD98];
            [objc_msgSend(v136 objectAtIndexedSubscript:{1), "floatValue"}];
            [array2 addObject:{objc_msgSend(v138, "numberWithFloat:")}];
            v139 = MEMORY[0x1E696AD98];
            [objc_msgSend(v136 objectAtIndexedSubscript:{2), "floatValue"}];
            [array2 addObject:{objc_msgSend(v139, "numberWithFloat:")}];
            v140 = MEMORY[0x1E696AD98];
            [objc_msgSend(v136 objectAtIndexedSubscript:{3), "floatValue"}];
            [array2 addObject:{objc_msgSend(v140, "numberWithFloat:")}];
            v141 = MEMORY[0x1E696AD98];
            [objc_msgSend(v136 objectAtIndexedSubscript:{4), "floatValue"}];
            [array2 addObject:{objc_msgSend(v141, "numberWithFloat:")}];
            v142 = MEMORY[0x1E696AD98];
            [objc_msgSend(v136 objectAtIndexedSubscript:{5), "floatValue"}];
            [array2 addObject:{objc_msgSend(v142, "numberWithFloat:")}];
            [dictionary2 setObject:array2 forKeyedSubscript:@"transform"];
            [v218 setObject:dictionary2 forKeyedSubscript:@"settings"];
            j = v217;
          }

          else
          {
            if (![v17 objectForKeyedSubscript:@"p1"])
            {
              puts("red-eye repair dictionary is of unknown type");
              return 0;
            }

            v102 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:50];
            v143 = [objc_msgSend(v17 objectForKeyedSubscript:{@"p", "componentsSeparatedByString:", @" "}];
            v144 = MEMORY[0x1E696AD98];
            [objc_msgSend(v143 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v144 forKeyedSubscript:{"numberWithFloat:"), @"pointX"}];
            v145 = MEMORY[0x1E696AD98];
            [objc_msgSend(v143 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v145 forKeyedSubscript:{"numberWithFloat:"), @"pointY"}];
            v146 = MEMORY[0x1E696AD98];
            [objc_msgSend(v143 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v146 forKeyedSubscript:{"numberWithFloat:"), @"size"}];
            v147 = [objc_msgSend(v17 objectForKeyedSubscript:{@"ps", "componentsSeparatedByString:", @" "}];
            v148 = MEMORY[0x1E696AD98];
            [objc_msgSend(v147 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v148 forKeyedSubscript:{"numberWithFloat:"), @"pupilShadeLow"}];
            v149 = MEMORY[0x1E696AD98];
            [objc_msgSend(v147 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v149 forKeyedSubscript:{"numberWithFloat:"), @"pupilShadeMedium"}];
            v150 = MEMORY[0x1E696AD98];
            [objc_msgSend(v147 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v150 forKeyedSubscript:{"numberWithFloat:"), @"pupilShadeHigh"}];
            v151 = MEMORY[0x1E696AD98];
            [objc_msgSend(v147 objectAtIndexedSubscript:{3), "floatValue"}];
            [v102 setObject:objc_msgSend(v151 forKeyedSubscript:{"numberWithFloat:"), @"pupilShadeAverage"}];
            v152 = MEMORY[0x1E696AD98];
            [objc_msgSend(v17 objectForKeyedSubscript:{@"iod", "floatValue"}];
            [v102 setObject:objc_msgSend(v152 forKeyedSubscript:{"numberWithFloat:"), @"interocularDistance"}];
            v153 = [objc_msgSend(v17 objectForKeyedSubscript:{@"s", "componentsSeparatedByString:", @" "}];
            v154 = MEMORY[0x1E696AD98];
            [objc_msgSend(v153 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v154 forKeyedSubscript:{"numberWithFloat:"), @"snappedX"}];
            v155 = MEMORY[0x1E696AD98];
            [objc_msgSend(v153 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v155 forKeyedSubscript:{"numberWithFloat:"), @"snappedY"}];
            v156 = [objc_msgSend(v17 objectForKeyedSubscript:{@"b", "componentsSeparatedByString:", @" "}];
            v157 = MEMORY[0x1E696AD98];
            [objc_msgSend(v156 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v157 forKeyedSubscript:{"numberWithFloat:"), @"bitmaskX"}];
            v158 = MEMORY[0x1E696AD98];
            [objc_msgSend(v156 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v158 forKeyedSubscript:{"numberWithFloat:"), @"bitmaskY"}];
            v159 = MEMORY[0x1E696AD98];
            [objc_msgSend(v156 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v159 forKeyedSubscript:{"numberWithFloat:"), @"bitmaskThreshold"}];
            v160 = [objc_msgSend(v17 objectForKeyedSubscript:{@"cr", "componentsSeparatedByString:", @" "}];
            v161 = MEMORY[0x1E696AD98];
            [objc_msgSend(v160 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v161 forKeyedSubscript:{"numberWithFloat:"), @"cornealReflectionX"}];
            v162 = MEMORY[0x1E696AD98];
            [objc_msgSend(v160 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v162 forKeyedSubscript:{"numberWithFloat:"), @"cornealReflectionY"}];
            v163 = MEMORY[0x1E696AD98];
            [objc_msgSend(v160 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v163 forKeyedSubscript:{"numberWithFloat:"), @"cornealReflectionThreshold"}];
            v164 = [objc_msgSend(v17 objectForKeyedSubscript:{@"ep", "componentsSeparatedByString:", @" "}];
            v165 = MEMORY[0x1E696AD98];
            [objc_msgSend(v164 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v165 forKeyedSubscript:{"numberWithFloat:"), @"existingPupilLow"}];
            v166 = MEMORY[0x1E696AD98];
            [objc_msgSend(v164 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v166 forKeyedSubscript:{"numberWithFloat:"), @"existingPupilMedium"}];
            v167 = MEMORY[0x1E696AD98];
            [objc_msgSend(v164 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v167 forKeyedSubscript:{"numberWithFloat:"), @"existingPupilHigh"}];
            v168 = MEMORY[0x1E696AD98];
            [objc_msgSend(v164 objectAtIndexedSubscript:{3), "floatValue"}];
            [v102 setObject:objc_msgSend(v168 forKeyedSubscript:{"numberWithFloat:"), @"existingPupilAverage"}];
            v169 = MEMORY[0x1E696AD98];
            [objc_msgSend(v17 objectForKeyedSubscript:{@"asl", "floatValue"}];
            [v102 setObject:objc_msgSend(v169 forKeyedSubscript:{"numberWithFloat:"), @"averageSkinLuminance"}];
            [v102 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v224), @"imageOrientation"}];
            [v102 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v223), @"imageSignalToNoiseRatio"}];
            [v102 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v225), @"imageSpecialValue"}];
            v170 = [objc_msgSend(v17 objectForKeyedSubscript:{@"sr", "componentsSeparatedByString:", @" "}];
            v171 = MEMORY[0x1E696AD98];
            [objc_msgSend(v170 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v171 forKeyedSubscript:{"numberWithFloat:"), @"searchRectangleMinimumY"}];
            v172 = MEMORY[0x1E696AD98];
            [objc_msgSend(v170 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v172 forKeyedSubscript:{"numberWithFloat:"), @"searchRectangleMaximumY"}];
            v173 = MEMORY[0x1E696AD98];
            [objc_msgSend(v170 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v173 forKeyedSubscript:{"numberWithFloat:"), @"searchRectangleMinimumX"}];
            v174 = MEMORY[0x1E696AD98];
            [objc_msgSend(v170 objectAtIndexedSubscript:{3), "floatValue"}];
            [v102 setObject:objc_msgSend(v174 forKeyedSubscript:{"numberWithFloat:"), @"searchRectangleMaximumX"}];
            [v102 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v227), @"fullImageWidth"}];
            [v102 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v226), @"fullImageHeight"}];
            v175 = [objc_msgSend(v17 objectForKeyedSubscript:{@"rr", "componentsSeparatedByString:", @" "}];
            v176 = MEMORY[0x1E696AD98];
            [objc_msgSend(v175 objectAtIndexedSubscript:{0), "floatValue"}];
            [v102 setObject:objc_msgSend(v176 forKeyedSubscript:{"numberWithFloat:"), @"repairRectangleMinimumY"}];
            v177 = MEMORY[0x1E696AD98];
            [objc_msgSend(v175 objectAtIndexedSubscript:{1), "floatValue"}];
            [v102 setObject:objc_msgSend(v177 forKeyedSubscript:{"numberWithFloat:"), @"repairRectangleMaximumY"}];
            v178 = MEMORY[0x1E696AD98];
            [objc_msgSend(v175 objectAtIndexedSubscript:{2), "floatValue"}];
            [v102 setObject:objc_msgSend(v178 forKeyedSubscript:{"numberWithFloat:"), @"repairRectangleMinimumX"}];
            v179 = MEMORY[0x1E696AD98];
            [objc_msgSend(v175 objectAtIndexedSubscript:{3), "floatValue"}];
            [v102 setObject:objc_msgSend(v179 forKeyedSubscript:{"numberWithFloat:"), @"repairRectangleMaximumX"}];
            v180 = [v17 objectForKeyedSubscript:@"fc"];
            if (v180)
            {
              v181 = MEMORY[0x1E696AD98];
              [v180 floatValue];
              v182 = [v181 numberWithFloat:?];
              v183 = v102;
            }

            else
            {
              v183 = v102;
              v182 = &unk_1F1085458;
            }

            [v183 setObject:v182 forKeyedSubscript:@"forceCase"];
            v184 = [v17 objectForKeyedSubscript:@"psa"];
            if (v184)
            {
              v185 = MEMORY[0x1E696AD98];
              [v184 floatValue];
              v186 = [v185 numberWithFloat:?];
              v187 = v102;
            }

            else
            {
              v187 = v102;
              v186 = &unk_1F1085458;
            }

            [v187 setObject:v186 forKeyedSubscript:@"pupilShadeAlignment"];
            v188 = [v17 objectForKeyedSubscript:@"fec"];
            if (v188)
            {
              v189 = MEMORY[0x1E696AD98];
              [v188 floatValue];
              v190 = [v189 numberWithFloat:?];
              v191 = v102;
            }

            else
            {
              v191 = v102;
              v190 = &unk_1F1085458;
            }

            [v191 setObject:v190 forKeyedSubscript:@"finalEyeCase"];
          }

          [v6 addObject:v102];
        }

        v197 = [obj countByEnumeratingWithState:&v219 objects:v258 count:16];
        if (v197)
        {
          continue;
        }

        break;
      }
    }

    self = selfCopy;
  }

  String = metadataPropertyArrayGetString();
  if (v6)
  {
    v13 = String;
    [(CIRedEyeCorrections *)self setInputCorrectionInfo:v6];
    [(CIRedEyeCorrections *)self setInputCameraModel:v13];
    return self;
  }

LABEL_41:

  return 0;
}

@end