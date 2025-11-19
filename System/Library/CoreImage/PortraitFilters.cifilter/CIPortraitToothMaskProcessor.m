@interface CIPortraitToothMaskProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
@end

@implementation CIPortraitToothMaskProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  [objc_msgSend(a4 objectForKeyedSubscript:{@"inputImageExtent", "CGRectValue"}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [objc_msgSend(a4 objectForKeyedSubscript:{@"useMetal", "BOOLValue"}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"teethROI", "CGRectValue"}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  if ((CGRectIsIntegral() & 1) == 0)
  {
    sub_4AA7C();
  }

  v68 = v21;
  v69 = v19;
  v70 = v23;
  v26 = [a4 objectForKeyedSubscript:@"faceLandmarks"];
  v27 = objc_opt_self();
  v28 = sub_3C354(v27, v26);
  v82 = 0u;
  memset(&v83, 0, sizeof(v83));
  v80 = 0u;
  v81 = 0u;
  [objc_msgSend(a4 objectForKeyedSubscript:{@"inputImageTransformN1", "getBytes:length:", &v83, 48}];
  [objc_msgSend(a4 objectForKeyedSubscript:{@"inputImageTransform1N", "getBytes:length:", &v80, 48}];
  v84 = v83;
  v100.origin.x = v10;
  v100.origin.y = v12;
  v100.size.width = v14;
  v100.size.height = v16;
  v101 = CGRectApplyAffineTransform(v100, &v84);
  x = v101.origin.x;
  y = v101.origin.y;
  height = v101.size.height;
  width = v101.size.width;
  v31 = [a3 objectAtIndexedSubscript:0];
  [v31 region];
  v76 = v32;
  v77 = v33;
  v35 = v34;
  v37 = v36;
  [a5 region];
  v67 = v38;
  v40 = v39;
  v71 = v41;
  v43 = v42;
  v78 = 0u;
  v79 = 0u;
  if ((sub_27994([v28 objectForKeyedSubscript:@"faceBoundingBox"], &v78) & 1) == 0)
  {
    sub_4AAA8();
  }

  v44 = 0;
  v45 = v16 + -1.0;
  v46.f64[0] = width;
  v47 = x + *&v78 * width;
  v48 = v45 - v35 - v37;
  v49 = v45 - v40 - v43;
  *&v78 = v47;
  *(&v78 + 1) = y + *(&v78 + 1) * height;
  v46.f64[1] = height;
  v79 = vmulq_f64(v46, v79);
  v50 = 4;
  do
  {
    v84.a = 0.0;
    v84.b = 0.0;
    v51 = [objc_msgSend(v28 objectForKeyedSubscript:{@"innerLips", "objectAtIndex:", v44}];
    if ((sub_27A78(v51, &v84.a, *&v78, *(&v78 + 1), v79.f64[0], v79.f64[1]) & 1) == 0)
    {
      sub_4AAD4();
    }

    *(&v94 + v44) = vaddq_f64(v82, vmlaq_n_f64(vmulq_n_f64(v81, v84.b), v80, v84.a));
    v52 = v44 + 3;
    v53 = [objc_msgSend(v28 objectForKeyedSubscript:{@"innerLips", "objectAtIndex:", v52}];
    if ((sub_27A78(v53, &v84.a, *&v78, *(&v78 + 1), v79.f64[0], v79.f64[1]) & 1) == 0)
    {
      sub_4AB00();
    }

    *&v93[v50] = vaddq_f64(v82, vmlaq_n_f64(vmulq_n_f64(v81, v84.b), v80, v84.a));
    v50 -= 2;
    v44 = v52 - 2;
  }

  while (v44 != 3);
  v54 = *v93;
  v55 = *&v93[1];
  v84.a = v54 + (v96 - v54) * 0.600000024;
  v84.b = v45 - (v55 + (v97 - v55) * 0.600000024);
  v56 = *&v93[2];
  v57 = *&v93[3];
  v84.c = v56 + (v96 - v56) * 0.600000024;
  v84.d = v45 - (v57 + (v97 - v57) * 0.600000024);
  v58 = *&v93[4];
  v59 = *&v93[5];
  v84.tx = v58 + (v96 - v58) * 0.600000024;
  v84.ty = v45 - (v59 + (v97 - v59) * 0.600000024);
  v85 = v54 + (v94 - v54) * 0.600000024;
  v86 = v45 - (v55 + (v95 - v55) * 0.600000024);
  v87 = v56 + (v94 - v56) * 0.600000024;
  v88 = v45 - (v57 + (v95 - v57) * 0.600000024);
  v89 = v56 + (v98 - v56) * 0.600000024;
  v90 = v45 - (v57 + (v99 - v57) * 0.600000024);
  v91 = v58 + (v98 - v58) * 0.600000024;
  v92 = v45 - (v59 + (v99 - v59) * 0.600000024);
  v102.origin.y = v45 - v68 - v25;
  v102.origin.x = v69;
  v102.size.width = v70;
  v102.size.height = v25;
  v106.origin.x = v76;
  v106.size.width = v77;
  v73 = v48;
  v106.origin.y = v48;
  v75 = v37;
  v106.size.height = v37;
  v103 = CGRectIntersection(v102, v106);
  v60 = v103.origin.x;
  v61 = v103.origin.y;
  v62 = v103.size.width;
  v63 = v103.size.height;
  if (v17)
  {
    v64 = -[MetalFaceMask initForDevice:]([MetalFaceMask alloc], "initForDevice:", [objc_msgSend(a5 "metalTexture")]);
    -[CPUFaceMask clearOutputTexture:CommandBuffer:](v64, "clearOutputTexture:CommandBuffer:", [a5 metalTexture], objc_msgSend(a5, "metalCommandBuffer"));
    v104.origin.x = v60;
    v104.origin.y = v61;
    v104.size.width = v62;
    v104.size.height = v63;
    if (!CGRectIsNull(v104))
    {
      -[CPUFaceMask findToothMaskUsingInputTexture:InputRegion:OutputMaskTexture:OutputRegion:TeethBounds:SeedPoints:NumberOfSeedPoints:FillValue:CommandBuffer:](v64, "findToothMaskUsingInputTexture:InputRegion:OutputMaskTexture:OutputRegion:TeethBounds:SeedPoints:NumberOfSeedPoints:FillValue:CommandBuffer:", [v31 metalTexture], objc_msgSend(a5, "metalTexture"), &v84, 7, 255, objc_msgSend(a5, "metalCommandBuffer"), v76, v73, v77, v75, v67, v49, v71, v43, *&v60, *&v61, *&v62, *&v63);
    }
  }

  else
  {
    v64 = objc_alloc_init(CPUFaceMask);
    -[CPUFaceMask clearOutputMask:WithBytesPerRow:OutputRegion:](v64, "clearOutputMask:WithBytesPerRow:OutputRegion:", [a5 baseAddress], objc_msgSend(a5, "bytesPerRow"), v67, v49, v71, v43);
    v105.origin.x = v60;
    v105.origin.y = v61;
    v105.size.width = v62;
    v105.size.height = v63;
    if (!CGRectIsNull(v105))
    {
      LOBYTE(v66) = -1;
      -[CPUFaceMask findToothMaskUsingInputImage:InputBytesPerRow:InputRegion:OutputMask:OutputBytesPerRow:OutputRegion:TeethBounds:SeedPoints:NumberOfSeedPoints:FillValue:](v64, "findToothMaskUsingInputImage:InputBytesPerRow:InputRegion:OutputMask:OutputBytesPerRow:OutputRegion:TeethBounds:SeedPoints:NumberOfSeedPoints:FillValue:", [v31 baseAddress], objc_msgSend(v31, "bytesPerRow"), objc_msgSend(a5, "baseAddress"), objc_msgSend(a5, "bytesPerRow"), &v84, 7, v76, v73, v77, v75, v67, v49, v71, v43, *&v60, *&v61, *&v62, *&v63, v66);
    }
  }

  return 1;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (a3)
  {
    sub_4AB2C();
  }

  v5 = [a4 objectForKeyedSubscript:{@"teethROI", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  [v5 CGRectValue];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

@end