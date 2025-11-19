@interface CIDetector
+ (CIDetector)detectorOfType:(NSString *)type context:(CIContext *)context options:(NSDictionary *)options;
- (CIDetector)init;
@end

@implementation CIDetector

- (CIDetector)init
{
  v5.receiver = self;
  v5.super_class = CIDetector;
  v2 = [(CIDetector *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3 == objc_opt_class())
    {

      return 0;
    }
  }

  return v2;
}

+ (CIDetector)detectorOfType:(NSString *)type context:(CIContext *)context options:(NSDictionary *)options
{
  if ([(NSString *)type isEqualToString:@"CIDetectorTypeFace"])
  {
    v8 = [-[NSDictionary objectForKey:](options objectForKey:{@"CIDetectorAccuracy", "isEqualToString:", @"CIDetectorAccuracyLow"}];
    v9 = [-[NSDictionary objectForKey:](options objectForKey:{@"ForceVision", "BOOLValue"}];
    v10 = [-[NSDictionary objectForKey:](options objectForKey:{@"ForceFaceCore", "BOOLValue"}];
    v11 = [-[NSDictionary objectForKey:](options objectForKey:{@"CIDetectorBetterEyeLocs", "BOOLValue"}];
    v12 = [-[NSDictionary objectForKey:](options objectForKey:{@"CIDetectorTracking", "BOOLValue"}];
    v13 = dyld_program_sdk_at_least();
    if ((v9 & 1) == 0 && ((v10 & 1) != 0 || ((v8 & ~v11 | v12) & 1) != 0 || v13 != 1))
    {
      v14 = CIFaceCoreDetector;
    }

    else
    {
      v14 = CIVNFaceDetector;
    }
  }

  else if ([(NSString *)type isEqualToString:@"CIDetectorTypeRectangle"])
  {
    v14 = CIRectangleDetector;
  }

  else if ([(NSString *)type isEqualToString:@"CIDetectorTypeQRCode"])
  {
    v14 = CIBarcodeDetector;
  }

  else
  {
    if (![(NSString *)type isEqualToString:@"CIDetectorTypeText"])
    {
      NSLog(&cfstr_CidetectorDete.isa, type);
      return 0;
    }

    v14 = CITextDetector;
  }

  v15 = [[v14 alloc] initWithContext:context options:options];

  return v15;
}

@end