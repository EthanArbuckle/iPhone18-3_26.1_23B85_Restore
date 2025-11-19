@interface ApplyOldInpaintModel
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)apply:(id)a3 mask:(id)a4 tileSize:(int)a5 model:(id)a6;
@end

@implementation ApplyOldInpaintModel

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v38 = a3;
  v39 = a4;
  v8 = a5;
  v9 = [v8 metalTexture];
  if (!v9)
  {
    __assert_rtn("+[ApplyOldInpaintModel processWithInputs:arguments:output:error:]", "CIInpaintFilter.mm", 695, "outputSPI.metalTexture");
  }

  v40 = [v39 objectForKeyedSubscript:@"model"];
  v10 = [v39 objectForKeyedSubscript:@"size"];
  v11 = [v10 intValue];

  v12 = [v8 metalContext];
  v37 = [v38 objectAtIndexedSubscript:0];
  v36 = [v38 objectAtIndexedSubscript:1];
  v41 = sub_1678(v37);
  v35 = sub_1678(v36);
  v33 = sub_1820(v41);
  v34 = sub_1820(v35);
  v13 = sub_1A5C(v11, 3 * v11);
  v14 = sub_1A5C(v11, 3 * v11);
  v15 = sub_1A5C(v11, 3 * v11);
  v16 = [v8 metalTexture];
  v17 = [v16 device];
  v32 = sub_1B80(v17, v13);

  v18 = [v8 metalTexture];
  v19 = [v18 device];
  v20 = sub_1B80(v19, v14);

  v21 = [v12 internalCommandQueue];
  v22 = [v21 commandBuffer];

  sub_1CD4(v12, v33, v32, v22);
  sub_1CD4(v12, v34, v20, v22);
  [v22 commit];
  if ([v40 bind:"image" buffer:v13] || objc_msgSend(v40, "bind:buffer:", "mask", v14) || objc_msgSend(v40, "bind:buffer:", "output", v15) || (v42[0] = _NSConcreteStackBlock, v42[1] = 3221225472, v42[2] = sub_1F40, v42[3] = &unk_144C0, v43 = v8, v23 = objc_msgSend(v40, "executeAsync:", v42), v43, v23) || (v44 = kCIImageColorSpace, +[NSNull null](NSNull, "null"), v31 = objc_claimAutoreleasedReturnValue(), v45 = v31, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v45, &v44, 1), v29 = objc_claimAutoreleasedReturnValue(), +[CIImage imageWithCVImageBuffer:options:](CIImage, "imageWithCVImageBuffer:options:", v15), v30 = objc_claimAutoreleasedReturnValue(), sub_1FC8(v30), v24 = objc_claimAutoreleasedReturnValue(), v30, v29, v31, !v24))
  {
    v24 = v41;
  }

  v25 = [CIRenderDestination alloc];
  v26 = [v25 initWithIOSurface:{objc_msgSend(v8, "surface")}];

  [v26 setFlipped:1];
  [v26 setColorSpace:0];
  if (v24)
  {
    [v24 extent];
    v27 = [v12 startTaskToRender:v24 fromRect:v26 toDestination:0 atPoint:? error:?];
  }

  CFRelease(v13);
  CFRelease(v14);
  CFRelease(v15);

  return 1;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v5 = [a4 objectForKeyedSubscript:{@"size", a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v6 = [v5 intValue];

  v7 = v6;
  v8 = 0.0;
  v9 = 0.0;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (id)apply:(id)a3 mask:(id)a4 tileSize:(int)a5 model:(id)a6
{
  v7 = *&a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v12)
  {
    v46[0] = @"model";
    v46[1] = @"size";
    v47[0] = v12;
    v14 = [NSNumber numberWithInt:v7];
    v47[1] = v14;
    v43 = [NSDictionary dictionaryWithObjects:v47 forKeys:v46 count:2];

    v15 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    v16 = v10;
    v17 = [v16 imageByColorMatchingWorkingSpaceToColorSpace:v15];

    v18 = [v11 imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&off_15410];

    v19 = v18;
    v20 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIIP_invertMask (__sample s) { return vec4(1.0-s.rrr, s.a) }"];;
    [v19 extent];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v48 = v19;
    v29 = [NSArray arrayWithObjects:&v48 count:1];
    v11 = [v20 applyWithExtent:v29 arguments:{v22, v24, v26, v28}];

    [v17 extent];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v45[0] = v17;
    v45[1] = v11;
    v38 = [NSArray arrayWithObjects:v45 count:2];
    v44 = 0;
    v39 = [a1 applyWithExtent:v38 inputs:v43 arguments:&v44 error:{v31, v33, v35, v37}];
    v40 = v44;

    v41 = [v39 imageByColorMatchingColorSpaceToWorkingSpace:v15];

    CGColorSpaceRelease(v15);
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

@end