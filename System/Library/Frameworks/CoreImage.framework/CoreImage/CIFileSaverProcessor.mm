@interface CIFileSaverProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
@end

@implementation CIFileSaverProcessor

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = [a3 objectAtIndexedSubscript:{0, a4, a5, a6}];
  v9 = [v8 surface];
  v10 = [a4 objectForKeyedSubscript:@"filename"];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bmtl", v10];
  printf("dumping surface for filename %s\n", [v11 UTF8String]);
  Width = IOSurfaceGetWidth(v9);
  Height = IOSurfaceGetHeight(v9);
  SurfaceCroppedWriteBmtlToFile(v9, [v11 UTF8String], Width, Height);
  v14 = [objc_msgSend(a5 "metalCommandBuffer")];
  v15 = [v8 metalTexture];
  memset(v19, 0, sizeof(v19));
  v18[0] = [objc_msgSend(v8 "metalTexture")];
  v18[1] = [objc_msgSend(v8 "metalTexture")];
  v18[2] = 1;
  memset(v17, 0, sizeof(v17));
  [v14 copyFromTexture:v15 sourceSlice:0 sourceLevel:0 sourceOrigin:v19 sourceSize:v18 toTexture:objc_msgSend(a5 destinationSlice:"metalTexture") destinationLevel:0 destinationOrigin:{0, v17}];
  [v14 endEncoding];
  return 1;
}

@end