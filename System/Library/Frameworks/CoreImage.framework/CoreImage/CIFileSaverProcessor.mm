@interface CIFileSaverProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
@end

@implementation CIFileSaverProcessor

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v8 = [inputs objectAtIndexedSubscript:{0, arguments, output, error}];
  surface = [v8 surface];
  v10 = [arguments objectForKeyedSubscript:@"filename"];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bmtl", v10];
  printf("dumping surface for filename %s\n", [v11 UTF8String]);
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  SurfaceCroppedWriteBmtlToFile(surface, [v11 UTF8String], Width, Height);
  v14 = [objc_msgSend(output "metalCommandBuffer")];
  metalTexture = [v8 metalTexture];
  memset(v19, 0, sizeof(v19));
  v18[0] = [objc_msgSend(v8 "metalTexture")];
  v18[1] = [objc_msgSend(v8 "metalTexture")];
  v18[2] = 1;
  memset(v17, 0, sizeof(v17));
  [v14 copyFromTexture:metalTexture sourceSlice:0 sourceLevel:0 sourceOrigin:v19 sourceSize:v18 toTexture:objc_msgSend(output destinationSlice:"metalTexture") destinationLevel:0 destinationOrigin:{0, v17}];
  [v14 endEncoding];
  return 1;
}

@end