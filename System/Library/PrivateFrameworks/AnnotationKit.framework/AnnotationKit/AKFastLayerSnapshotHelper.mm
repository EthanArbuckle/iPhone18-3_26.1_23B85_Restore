@interface AKFastLayerSnapshotHelper
+ (CGImage)newFastSnapshotFromLayer:(id)layer withSourceRect:(CGRect)rect acutalSnapshotRect:(CGRect *)snapshotRect;
@end

@implementation AKFastLayerSnapshotHelper

+ (CGImage)newFastSnapshotFromLayer:(id)layer withSourceRect:(CGRect)rect acutalSnapshotRect:(CGRect *)snapshotRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layerCopy = layer;
  context = [layerCopy context];
  [context contextId];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen nativeScale];
  v11 = v10;

  memset(&v53, 0, sizeof(v53));
  CGAffineTransformMakeScale(&v53, v11, v11);
  memset(&v52, 0, sizeof(v52));
  *&v51.m11 = *&v53.a;
  *&v51.m13 = *&v53.c;
  *&v51.m21 = *&v53.tx;
  CGAffineTransformInvert(&v52, &v51);
  *&v51.m11 = *&v53.a;
  *&v51.m13 = *&v53.c;
  *&v51.m21 = *&v53.tx;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v55 = CGRectApplyAffineTransform(v54, &v51);
  v56 = CGRectIntegral(v55);
  v12 = v56.origin.x;
  v13 = v56.origin.y;
  v14 = v56.size.width;
  if (vabdd_f64(width, height) >= 0.0005)
  {
    v15 = v56.size.height;
  }

  else
  {
    v15 = v56.size.width;
  }

  v16 = vcvtad_u64_f64(v56.size.width);
  v17 = vcvtad_u64_f64(v15);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v47 = MEMORY[0x277CBEAC0];
  v19 = [MEMORY[0x277CCABB0] numberWithLong:v16];
  v46 = *MEMORY[0x277CD2B88];
  v20 = [MEMORY[0x277CCABB0] numberWithLong:v17];
  v21 = *MEMORY[0x277CD2A28];
  v22 = [MEMORY[0x277CCABB0] numberWithLong:AlignedBytesPerRow];
  v23 = *MEMORY[0x277CD2968];
  v24 = [MEMORY[0x277CCABB0] numberWithLong:AlignedBytesPerRow * v17];
  v25 = *MEMORY[0x277CD2948];
  v26 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v27 = *MEMORY[0x277CD2960];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1111970369];
  v29 = [v47 dictionaryWithObjectsAndKeys:{v19, v46, v20, v21, v22, v23, v24, v25, v26, v27, v28, *MEMORY[0x277CD2A70], 0}];

  v30 = v29;
  v31 = IOSurfaceCreate(v30);
  if (v30)
  {
    CFRelease(v30);
  }

  if (!v31)
  {
    v34 = 0;
    v32 = layerCopy;
    snapshotRectCopy2 = snapshotRect;
    if (!snapshotRect)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  memset(&v51, 0, sizeof(v51));
  CATransform3DMakeScale(&v51, v11, v11, 1.0);
  v32 = layerCopy;
  CARenderServerRenderLayerWithTransform();
  v33 = CFGetTypeID(v31);
  if (v33 == CGImageGetTypeID())
  {
    CGImageRetain(v31);
    v34 = v31;
  }

  else
  {
    CFRetain(v31);
    IOSurfaceIncrementUseCount(v31);
    BaseAddress = IOSurfaceGetBaseAddress(v31);
    BytesPerRow = IOSurfaceGetBytesPerRow(v31);
    v38 = IOSurfaceGetWidth(v31);
    v39 = IOSurfaceGetHeight(v31);
    AllocSize = IOSurfaceGetAllocSize(v31);
    v41 = CGDataProviderCreateWithData(v31, BaseAddress, AllocSize, sub_23F40C760);
    v42 = IOSurfaceCopyValue(v31, *MEMORY[0x277CD29C0]);
    if (!v42 || (v43 = v42, DeviceRGB = CGColorSpaceCreateWithPropertyList(v42), CFRelease(v43), !DeviceRGB))
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    v34 = CGImageCreate(v38, v39, 8uLL, 0x20uLL, BytesPerRow, DeviceRGB, 0x2002u, v41, 0, 1, kCGRenderingIntentDefault);
    CGImageSetProperty();
    CGDataProviderRelease(v41);
    CGColorSpaceRelease(DeviceRGB);
  }

  snapshotRectCopy2 = snapshotRect;
  CFRelease(v31);
  if (snapshotRect)
  {
LABEL_16:
    *&v51.m11 = *&v52.a;
    *&v51.m13 = *&v52.c;
    *&v51.m21 = *&v52.tx;
    v57.origin.x = v12;
    v57.origin.y = v13;
    v57.size.width = v14;
    v57.size.height = v15;
    *snapshotRectCopy2 = CGRectApplyAffineTransform(v57, &v51);
  }

LABEL_17:

  return v34;
}

@end