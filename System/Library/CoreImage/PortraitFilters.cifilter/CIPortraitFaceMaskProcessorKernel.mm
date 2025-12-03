@interface CIPortraitFaceMaskProcessorKernel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
@end

@implementation CIPortraitFaceMaskProcessorKernel

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  [objc_msgSend(arguments objectForKeyedSubscript:{@"inputImageExtent", "CGRectValue"}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *v85 = v9;
  *&v85[1] = v11;
  *&v85[2] = v13;
  *&v85[3] = v15;
  [objc_msgSend(arguments objectForKeyedSubscript:{@"faceROI", "CGRectValue"}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v84.origin.x = v17;
  v84.origin.y = v19;
  v84.size.width = v21;
  v84.size.height = v23;
  if ((CGRectIsIntegral() & 1) == 0)
  {
    sub_4A208();
  }

  v86.origin.x = v18;
  v86.origin.y = v20;
  v86.size.width = v22;
  v86.size.height = v24;
  Width = CGRectGetWidth(v86);
  v87.origin.x = v18;
  v87.origin.y = v20;
  v87.size.width = v22;
  v87.size.height = v24;
  Height = CGRectGetHeight(v87);
  v26 = [arguments objectForKeyedSubscript:@"faceLandmarks"];
  v27 = objc_opt_self();
  v28 = [[FaceLandmarks alloc] initWithFaceLandmarks:sub_3C354(v27 forImageRect:v26), v10, v12, v14, v16];
  v29 = [inputs objectAtIndexedSubscript:0];
  [v29 region];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  baseAddress = [v29 baseAddress];
  bytesPerRow = [v29 bytesPerRow];
  v88.origin.x = v31;
  v88.origin.y = v33;
  v88.size.width = v35;
  v88.size.height = v37;
  MaxY = CGRectGetMaxY(v88);
  v89.origin.x = v18;
  v89.origin.y = v20;
  v89.size.width = v22;
  v89.size.height = v24;
  v41 = &baseAddress[(MaxY - CGRectGetMaxY(v89)) * bytesPerRow];
  v90.origin.x = v18;
  v90.origin.y = v20;
  v90.size.width = v22;
  v90.size.height = v24;
  MinX = CGRectGetMinX(v90);
  v91.origin.x = v31;
  v91.origin.y = v33;
  v91.size.width = v35;
  v91.size.height = v37;
  v43 = &v41[4 * (MinX - CGRectGetMinX(v91))];
  v44 = 4 * Width;
  [output region];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v92.origin.x = v18;
  v92.origin.y = v20;
  v92.size.width = v22;
  v92.size.height = v24;
  v104.origin.x = v46;
  v104.origin.y = v48;
  v104.size.width = v50;
  v104.size.height = v52;
  v93 = CGRectIntersection(v92, v104);
  v105.origin.x = v18;
  x = v93.origin.x;
  v105.origin.y = v20;
  y = v93.origin.y;
  v105.size.width = v22;
  v55 = v93.size.width;
  v105.size.height = v24;
  v56 = v93.size.height;
  v82 = v105.origin.y;
  v83 = v105.origin.x;
  v80 = v105.size.height;
  v81 = v105.size.width;
  v57 = CGRectEqualToRect(v93, v105);
  height = 0;
  if (!v57)
  {
    height = [NSMutableData dataWithLength:v44 * Height];
  }

  baseAddress2 = [output baseAddress];
  bytesPerRow2 = [output bytesPerRow];
  v94.origin.x = v46;
  v94.origin.y = v48;
  v94.size.width = v50;
  v94.size.height = v52;
  v61 = CGRectGetMaxY(v94);
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = v55;
  v95.size.height = v56;
  v62 = &baseAddress2[(v61 - CGRectGetMaxY(v95)) * bytesPerRow2];
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = v55;
  v96.size.height = v56;
  v63 = CGRectGetMinX(v96);
  v97.origin.x = v46;
  v97.origin.y = v48;
  v97.size.width = v50;
  v97.size.height = v52;
  v64 = &v62[4 * (v63 - CGRectGetMinX(v97))];
  bytesPerRow3 = [v29 bytesPerRow];
  if (v57)
  {
    sub_EFF0(v28, v85, &v84, v43, bytesPerRow3, v64, [output bytesPerRow]);
  }

  else
  {
    sub_EFF0(v28, v85, &v84, v43, bytesPerRow3, [(NSMutableData *)height mutableBytes], v44);
    bytes = [(NSMutableData *)height bytes];
    v98.origin.x = v83;
    v98.origin.y = v82;
    v98.size.width = v81;
    v98.size.height = v80;
    v79 = CGRectGetMaxY(v98);
    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = v55;
    v99.size.height = v56;
    v77 = CGRectGetMaxY(v99);
    v100.origin.x = x;
    v100.origin.y = y;
    v100.size.width = v55;
    v100.size.height = v56;
    v76 = CGRectGetMinX(v100);
    v101.origin.x = v83;
    v101.origin.y = v82;
    v101.size.width = v81;
    v101.size.height = v80;
    v67 = CGRectGetMinX(v101);
    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = v55;
    v102.size.height = v56;
    v68 = CGRectGetWidth(v102);
    v103.origin.x = x;
    v103.origin.y = y;
    v103.size.width = v55;
    v103.size.height = v56;
    v69 = CGRectGetHeight(v103);
    bytesPerRow4 = [output bytesPerRow];
    if (v68)
    {
      v71 = v69;
      if (v69)
      {
        v72 = bytesPerRow4;
        v73 = &bytes[4 * (v76 - v67) + (v79 - v77) * v44];
        v74 = 4 * v68;
        do
        {
          memcpy(v64, v73, v74);
          v73 += v44;
          v64 = &v72[v64];
          --v71;
        }

        while (v71);
      }
    }
  }

  return 1;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  if (input)
  {
    sub_4A234();
  }

  v5 = [arguments objectForKeyedSubscript:{@"faceROI", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end