@interface CIRedEyeRepair
+ (CGRect)supportRectangleWithFaceArray:(id)array imageSize:(CGSize)size;
+ (CGRect)supportRectangleWithPoint:(CGPoint)point imageSize:(CGSize)size IOD:(float)d;
+ (CGRect)supportRectangleWithRepair:(id)repair imageSize:(CGSize)size;
+ (float)upperRepairDistance:(float)distance;
+ (float)upperRepairDistanceFraction:(float)fraction;
- ($989D4B698364BD1E7054E5BF7672D090)repairDecisionWithFaceRecord:(SEL)record left:(id *)left redHopper:(BOOL)hopper whiteHopper:(id *)whiteHopper;
- ($A3B2E143E1A03423F9FC703C010436DC)standardTemplate;
- (BOOL)computeTrimmedBitmaps:(id *)bitmaps newY:(id *)y newCbCr:(id *)cr IR:(id)r newTrimY:(id *)trimY newTrimCbCr:(id *)cbCr returningYR:(id *)yR andCbCrR:(id *)self0;
- (BOOL)extractAndGatherProminencesWithRect:(id)rect face:(id *)face faceIndex:(int)index left:(BOOL)left maxwindowsize:(float)maxwindowsize repairsize:(float)repairsize returningRedHopper:(id *)hopper whiteHopper:(id *)self0 redChannel:(id *)self1 redChannelMask:(id *)self2;
- (BOOL)extractReusableAlignedBitmapsAroundPoint:(id *)point YR:(id)r subYBitmap:(id *)bitmap subCbCrBitmap:(id *)crBitmap;
- (BOOL)gatherProminencesWithC:(id *)c MC:(id *)mC altC:(id *)altC altMC:(id *)altMC maxwindowsize:(int)maxwindowsize repairsize:(int)repairsize IR:(id)r fr:(id *)self0 intoHopper:(id *)self1 faceIndex:(int)self2 left:(BOOL)self3;
- (BOOL)gatherProminencesWithC:(id *)c MC:(id *)mC maxwindowsize:(int)maxwindowsize repairsize:(int)repairsize IR:(id)r fr:(id *)fr intoHopper:(id *)hopper faceIndex:(int)self0 left:(BOOL)self1 coss:(float)self2[10] sins:(float)self3[10] bitmapName:(char *)self4;
- (BOOL)getBlockSetWithImage:(CGImage *)image into:(id *)into width:(unint64_t)width height:(unint64_t)height;
- (BOOL)getBool:(BOOL *)bool d:(id)d s:(id)s;
- (BOOL)getDataProviderBytePtrWithImage:(CGImage *)image into:(id *)into width:(unint64_t)width height:(unint64_t)height;
- (BOOL)getDataProviderCopyWithImage:(CGImage *)image into:(id *)into;
- (BOOL)getFloat:(float *)float d:(id)d s:(id)s;
- (BOOL)getInt:(int *)int d:(id)d s:(id)s;
- (CGImage)createRepairedImage;
- (CIRedEyeRepair)initWithCGImage:(CGImage *)image cameraModel:(id)model;
- (CIRedEyeRepair)initWithDeskView:(id)view andFrame:(id *)frame;
- (CIRedEyeRepair)initWithExternalBuffer:(char *)buffer size:(CGSize)size rowBytes:(unint64_t)bytes;
- (CIRedEyeRepair)initWithExternalBuffer:(char *)buffer subRectangle:(CGRect)rectangle fullSize:(CGSize)size rowBytes:(unint64_t)bytes cameraModel:(id)model;
- (CIRedEyeRepair)initWithFrameExternalBuffer:(id *)buffer;
- (CIRedEyeRepair)initWithIOSurface:(__IOSurface *)surface format:(int)format colorSpace:(CGColorSpace *)space cameraModel:(id)model;
- (CIRedEyeRepair)repairWithTag:(int)tag;
- (float)confidenceWithIOD:(float)d repair:(int)repair andProminenceDifference:(int)difference;
- (float)extractAverageFaceY:(id *)y contrast:(float *)contrast faceIndex:(int)index;
- (float)lowerRepairSizeFraction:(float)fraction;
- (float)upperRepairSizeFraction:(float)fraction;
- (id)repairArray;
- (int)applyEyeRepairWithEye:(id *)eye left:(BOOL)left IOD:(float)d autoPupilTonality:(BOOL)tonality match:(id *)match faceIndex:(int)index whiteHopper:(id *)hopper;
- (int)averageValueFromY:(id *)y withinSkinMask:(id *)mask butOutsideAlpha:(id *)alpha;
- (int)distanceMaskFromPolyToCb:(int)cb Cr:(int)cr;
- (int)redEyeRemovalWithData:(id *)data;
- (int)redEyeRemovalWithPoint:(CGPoint)point alignPupilShades:(BOOL)shades matching:(id)matching force:(int)force IOD:(float)d tap:(BOOL)tap;
- (int)redoRepairWithTag:(int)tag IOD:(float)d;
- (void)autoRepairExtractAndSearchLeft:(id)left right:(id)right data:(id *)data repairSize:(float)size autoPupilTonality:(BOOL)tonality faceIndex:(int)index;
- (void)autoRepairWithFaceArray:(id)array;
- (void)dealloc;
- (void)executeRepair:(id)repair;
- (void)executeRepairArray:(id)array;
- (void)initializeNonDebugVariables;
- (void)insertIntoProminenceVettingHopper:(id *)hopper max:(int)max outside:(int)outside confidence:(float)confidence distance:(float)distance row:(int)row column:(int)column IOD:(float)self0;
- (void)orientPointX:(float *)x Y:(float *)y;
- (void)orientRectangleMinX:(float *)x maxX:(float *)maxX minY:(float *)y maxY:(float *)maxY;
- (void)prepareLineFunctions;
- (void)repairExternalBuffer;
- (void)skinInit;
- (void)undoRepair:(int)repair;
@end

@implementation CIRedEyeRepair

- (BOOL)getBlockSetWithImage:(CGImage *)image into:(id *)into width:(unint64_t)width height:(unint64_t)height
{
  CGImageGetImageProvider();
  CGImageGetWidth(image);
  CGImageGetHeight(image);
  Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E695F298], *MEMORY[0x1E695E4D0]);
  v12 = CGImageProviderCopyImageBlockSetWithOptions();
  CFRelease(Mutable);
  if (!v12)
  {
    goto LABEL_11;
  }

  ImageBlock = CGImageBlockSetGetImageBlock();
  if (!ImageBlock)
  {
    CGImageBlockSetRelease();
    return ImageBlock;
  }

  CGImageBlockGetRect();
  v16 = v15 == width && v14 == height;
  if (!v16 || (BytesPerRow = CGImageBlockGetBytesPerRow(), (Data = CGImageBlockGetData()) == 0))
  {
    CGImageBlockSetRelease();
LABEL_11:
    LOBYTE(ImageBlock) = 0;
    return ImageBlock;
  }

  LOBYTE(ImageBlock) = 1;
  constructBitmap(into, Data, width, height, 4, 1, BytesPerRow, 100.0);
  self->blockSet = v12;
  self->imageSourceType = 0;
  return ImageBlock;
}

- (BOOL)getDataProviderBytePtrWithImage:(CGImage *)image into:(id *)into width:(unint64_t)width height:(unint64_t)height
{
  heightCopy = height;
  widthCopy = width;
  DataProvider = CGImageGetDataProvider(image);
  v12 = CGDataProviderRetainBytePtr();
  if (v12)
  {
    BytesPerRow = CGImageGetBytesPerRow(image);
    self->releaseMe = CFRetain(DataProvider);
    constructBitmap(into, v12, widthCopy, heightCopy, 4, 1, BytesPerRow, 100.0);
    self->imageSourceType = 1;
  }

  return v12 != 0;
}

- (BOOL)getDataProviderCopyWithImage:(CGImage *)image into:(id *)into
{
  DataProvider = CGImageGetDataProvider(image);
  v8 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  BytesPerRow = CGImageGetBytesPerRow(image);
  constructBitmap(into, BytePtr, Width, Height, 4, 1, BytesPerRow, 100.0);
  self->dataRef = v8;
  self->imageSourceType = 2;
  return 1;
}

- (CIRedEyeRepair)initWithCGImage:(CGImage *)image cameraModel:(id)model
{
  if (CGImageGetBitsPerComponent(image) != 8)
  {
    return 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x180uLL, 0x1030040C7AB5F0AuLL);
  v7[92] = 1;
  *(v7 + 372) = 0;
  if ([model hasPrefix:@"iPhone"])
  {
    *(v7 + 372) = 1;
  }

  v7[94] = 1101004800;
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (![(CIRedEyeRepair *)self getBlockSetWithImage:image into:v7 + 72 width:Width height:Height]&& ![(CIRedEyeRepair *)self getDataProviderBytePtrWithImage:image into:v7 + 72 width:Width height:Height])
  {
    [(CIRedEyeRepair *)self getDataProviderCopyWithImage:image into:v7 + 72];
  }

  v10 = v7[74];
  v7[82] = v10;
  v11 = v7[75];
  v7[83] = v11;
  *(v7 + 42) = makeBitmapRect(0, 0, v10, v11);
  *(v7 + 43) = v12;
  ColorSpace = CGImageGetColorSpace(image);
  *(v7 + 44) = CGColorSpaceRetain(ColorSpace);
  if (!image)
  {
    v7[90] = CGImageGetBitmapInfo(0);
    goto LABEL_16;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v7[90] = CGImageGetBitmapInfo(image);
  if (BitsPerComponent != 8)
  {
LABEL_16:
    v15 = 1;
    goto LABEL_17;
  }

  v15 = CGImageGetBitmapInfo(image) & 0xFFFFBFFF;
  if (v15 > 0x2000)
  {
    if (v15 <= 8195)
    {
      if (v15 != 8194)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    switch(v15)
    {
      case 8196:
        goto LABEL_28;
      case 8197:
LABEL_29:
        v15 = 3;
        goto LABEL_17;
      case 8198:
LABEL_28:
        v15 = 2;
        goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v15 > 3)
  {
    if (v15 != 4 && v15 != 6)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (v15 != 1)
  {
    if (v15 != 2)
    {
      goto LABEL_16;
    }

LABEL_24:
    v7[91] = 0;
    goto LABEL_18;
  }

LABEL_17:
  v7[91] = v15;
LABEL_18:
  result = [(CIRedEyeRepair *)self initWithDeskView:0 andFrame:v7];
  result->ownLF = 1;
  return result;
}

- (CGImage)createRepairedImage
{
  v16 = 0;
  *__dst = 0u;
  *__len = 0u;
  initBitmap(__dst, self->lf->var2.var1, self->lf->var2.var2, 4, 1, 100.0);
  lf = self->lf;
  if (HIDWORD(__len[0]) == lf->var2.var4)
  {
    memmove(__dst[0], lf->var2.var0, SLODWORD(__len[1]));
  }

  else if (SHIDWORD(__dst[1]) >= 1)
  {
    v4 = 0;
    v5 = __dst[0];
    var0 = lf->var2.var0;
    do
    {
      memmove(v5, var0, SHIDWORD(__len[1]) * SLODWORD(__dst[1]) * v16);
      ++v4;
      var0 += self->lf->var2.var4;
      v5 += SHIDWORD(__len[0]);
    }

    while (v4 < SHIDWORD(__dst[1]));
  }

  if (self->nRepairs >= 1)
  {
    v7 = 0;
    p_fullNew = &self->repairs[0].fullNew;
    do
    {
      copyBitmapToSliceOfBitmap(p_fullNew, __dst, p_fullNew[1].baseAddress, *&p_fullNew[1].width);
      ++v7;
      p_fullNew += 10;
    }

    while (v7 < self->nRepairs);
  }

  v9 = SHIDWORD(__len[0]);
  v10 = CFDataCreateWithBytesNoCopy(0, __dst[0], SHIDWORD(__dst[1]) * SHIDWORD(__len[0]), *MEMORY[0x1E695E488]);
  v11 = CGDataProviderCreateWithCFData(v10);
  CFRelease(v10);
  v12 = CGImageCreate(SLODWORD(__dst[1]), SHIDWORD(__dst[1]), 8uLL, 0x20uLL, v9, self->lf->var6, self->lf->var7, v11, 0, 1, kCGRenderingIntentDefault);
  CGDataProviderRelease(v11);
  return v12;
}

- (void)repairExternalBuffer
{
  if (self->imageSourceType == 3 && self->nRepairs >= 1)
  {
    v3 = 0;
    p_fullNew = &self->repairs[0].fullNew;
    do
    {
      copyBitmapToSliceOfBitmap(p_fullNew, &self->lf->var2, p_fullNew[1].baseAddress, *&p_fullNew[1].width);
      ++v3;
      p_fullNew += 10;
    }

    while (v3 < self->nRepairs);
  }
}

- (CIRedEyeRepair)initWithIOSurface:(__IOSurface *)surface format:(int)format colorSpace:(CGColorSpace *)space cameraModel:(id)model
{
  v11 = malloc_type_calloc(1uLL, 0x180uLL, 0x1030040C7AB5F0AuLL);
  Width = IOSurfaceGetWidth(surface);
  Height = IOSurfaceGetHeight(surface);
  BytesPerRow = IOSurfaceGetBytesPerRow(surface);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (format == 266)
  {
    v16 = 2;
  }

  else
  {
    if (format != 264)
    {
      goto LABEL_6;
    }

    v16 = 1;
  }

  v11[91] = v16;
LABEL_6:
  v11[92] = 1;
  *(v11 + 372) = 0;
  if ([model hasPrefix:@"iPhone"])
  {
    *(v11 + 372) = 1;
  }

  v11[94] = 1101004800;
  constructBitmap((v11 + 72), BaseAddress, Width, Height, 4, 1, BytesPerRow, 100.0);
  v17 = v11[74];
  v11[82] = v17;
  v18 = v11[75];
  v11[83] = v18;
  *(v11 + 42) = makeBitmapRect(0, 0, v17, v18);
  *(v11 + 43) = v19;
  *(v11 + 44) = CGColorSpaceRetain(space);
  v11[90] = 8194;
  self->imageSourceType = 4;
  result = [(CIRedEyeRepair *)self initWithDeskView:0 andFrame:v11];
  result->ownLF = 1;
  return result;
}

- (void)initializeNonDebugVariables
{
  *&self->debugRedEye = 0;
  self->redEyeThresholdKind = 0;
  *&self->renderAlpha = 257;
  self->renderSpecularShine = 1;
  *&self->specularSize = 0x3DCCCCCD3E0F5C29;
  *&self->pupilShadeAlignment = 256;
  bzero(self->repairs, 0x3200uLL);
  *&self->nRepairs = 0;
  self->lastRepairTag = -1;
  self->standardTemplate = xmmword_19CF2B8A0;

  [(CIRedEyeRepair *)self skinInit];
}

- (CIRedEyeRepair)initWithDeskView:(id)view andFrame:(id *)frame
{
  self->lf = frame;
  self->ownLF = 0;
  [(CIRedEyeRepair *)self initializeNonDebugVariables];
  v6.receiver = self;
  v6.super_class = CIRedEyeRepair;
  return [(CIRedEyeRepair *)&v6 init];
}

- (CIRedEyeRepair)initWithFrameExternalBuffer:(id *)buffer
{
  self->lf = buffer;
  self->ownLF = 1;
  self->imageSourceType = 3;
  [(CIRedEyeRepair *)self initializeNonDebugVariables];
  v5.receiver = self;
  v5.super_class = CIRedEyeRepair;
  return [(CIRedEyeRepair *)&v5 init];
}

- (CIRedEyeRepair)initWithExternalBuffer:(char *)buffer size:(CGSize)size rowBytes:(unint64_t)bytes
{
  bytesCopy = bytes;
  height = size.height;
  width = size.width;
  v10 = malloc_type_calloc(1uLL, 0x180uLL, 0x1030040C7AB5F0AuLL);
  v11 = width;
  v12 = rintf(v11);
  v13 = height;
  v14 = rintf(v13);
  constructBitmap((v10 + 72), buffer, v12, v14, 4, 1, bytesCopy, 100.0);
  v10[82] = v12;
  v10[83] = v14;
  *(v10 + 42) = makeBitmapRect(0, 0, v12, v14);
  *(v10 + 43) = v15;
  *(v10 + 44) = 0;
  *(v10 + 45) = 0;
  v10[92] = 1;
  *(v10 + 372) = 0;
  v10[94] = 1101004800;

  return [(CIRedEyeRepair *)self initWithFrameExternalBuffer:v10];
}

- (CIRedEyeRepair)initWithExternalBuffer:(char *)buffer subRectangle:(CGRect)rectangle fullSize:(CGSize)size rowBytes:(unint64_t)bytes cameraModel:(id)model
{
  bytesCopy = bytes;
  height = size.height;
  width = size.width;
  v11 = rectangle.size.height;
  v12 = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  v17 = malloc_type_calloc(1uLL, 0x180uLL, 0x1030040C7AB5F0AuLL);
  v18 = v12;
  v19 = rintf(v18);
  v20 = v11;
  v21 = rintf(v20);
  v22 = x;
  v23 = rintf(v22);
  v24 = y;
  v25 = rintf(v24);
  v26 = width;
  *(v17 + 82) = rintf(v26);
  v27 = height;
  v28 = rintf(v27);
  *(v17 + 83) = v28;
  *(v17 + 42) = makeBitmapRect(v23, v28 - (v25 + v21), (v23 + v19), v28 - v25);
  *(v17 + 43) = v29;
  constructBitmap((v17 + 288), buffer, v19, v21, 4, 1, bytesCopy, 100.0);
  *(v17 + 44) = 0;
  *(v17 + 90) = 0;
  v17[372] = 0;
  if ([model hasPrefix:@"iPhone"])
  {
    v17[372] = 1;
  }

  *(v17 + 364) = 0x100000001;
  *(v17 + 94) = 1101004800;

  return [(CIRedEyeRepair *)self initWithFrameExternalBuffer:v17];
}

- (void)dealloc
{
  if (self->ownLF)
  {
    imageSourceType = self->imageSourceType;
    if (imageSourceType == 2)
    {
      CFRelease(self->dataRef);
    }

    else if (!imageSourceType)
    {
      CGImageBlockSetRelease();
    }

    var6 = self->lf->var6;
    if (var6)
    {
      CFRelease(var6);
    }

    releaseMe = self->releaseMe;
    if (releaseMe)
    {
      CFRelease(releaseMe);
    }
  }

  if (self->nRepairs >= 1)
  {
    v6 = 0;
    p_fullNew = &self->repairs[0].fullNew;
    do
    {
      termBitmap(&p_fullNew->baseAddress);
      ++v6;
      p_fullNew += 10;
    }

    while (v6 < self->nRepairs);
  }

  termBitmap(&self->lastClickYBitmap.baseAddress);
  termBitmap(&self->lastClickCbCrBitmap.baseAddress);
  lastClickCbCrBitmaps = self->lastClickCbCrBitmaps;
  v9 = 3;
  do
  {
    termBitmap(&lastClickCbCrBitmaps[-3].baseAddress);
    termBitmap(&lastClickCbCrBitmaps->baseAddress);
    ++lastClickCbCrBitmaps;
    --v9;
  }

  while (v9);
  termBitmap(&self->lastSearchYBitmap.baseAddress);
  termBitmap(&self->lastSearchCbCrBitmap.baseAddress);
  if (self->ownLF)
  {
    free(self->lf);
  }

  v10.receiver = self;
  v10.super_class = CIRedEyeRepair;
  [(CIRedEyeRepair *)&v10 dealloc];
}

- ($A3B2E143E1A03423F9FC703C010436DC)standardTemplate
{
  v2 = *&self->standardTemplate.hi;
  v3 = *&self->standardTemplate.lo;
  result.var2 = v2;
  result.var3 = HIDWORD(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (void)undoRepair:(int)repair
{
  v4 = [(CIRedEyeRepair *)self repairWithTag:*&repair];
  if (v4)
  {
    v5 = v4;
    v6 = 0x8F5C28F5C28F5C29 * ((v4 - self->repairs) >> 4);
    termBitmap(&v4->releaseMe);
    *&v5->repairs[0].data.CR.mincol = 0u;
    *&v5->repairs[0].BI.centroid.y = 0u;
    *&v5->repairs[0].data.O.N90 = 0u;
    *&v5->repairs[0].data.O.halfDiagonalSize = 0u;
    *&v5->repairs[0].data.IOD = 0u;
    *&v5->repairs[0].data.O.bproc = 0u;
    *&v5->repairs[0].data.mTemplate.average = 0u;
    *&v5->repairs[0].data.existingTemplate.average = 0u;
    *&v5->repairs[0].data.bitmaskThreshold = 0u;
    *&v5->repairs[0].data.align = 0u;
    *&v5->repairs[0].left = 0u;
    *&v5->repairs[0].data.snapHitX = 0u;
    *&v5->repairs[0].psTemplate.hi = 0u;
    *&v5->repairs[0].matchingTemplate.med = 0u;
    *&v5->repairs[0].fullNew.bytesPerSample = 0u;
    *&v5->repairs[0].YR.mincol = 0u;
    *&v5->repairs[0].fullNew.baseAddress = 0u;
    *&v5->repairs[0].fullNew.rowSamples = 0u;
    v5->repairs[0].pt2 = 0u;
    *&v5->repairs[0].eyeCase = 0u;
    *&v5->dataRef = 0u;
    *&v5->nRepairs = 0u;
    *&v5->lf = 0u;
    *&v5->blockSet = 0u;
    *&v5->super.isa = 0u;
    v7 = v6 + 1;
    LODWORD(nRepairs) = self->nRepairs;
    if (v6 + 1 < nRepairs)
    {
      v9 = v7;
      v10 = &self->repairs[v7];
      do
      {
        v11 = v9;
        memcpy(&self->repairs[v6], v10, sizeof(self->repairs[v6]));
        v9 = v11 + 1;
        nRepairs = self->nRepairs;
        ++v10;
        LODWORD(v6) = v11;
      }

      while (v11 + 1 < nRepairs);
    }

    self->nRepairs = nRepairs - 1;
  }
}

- (int)averageValueFromY:(id *)y withinSkinMask:(id *)mask butOutsideAlpha:(id *)alpha
{
  var2 = y->var2;
  if (var2 < 1)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  var0 = alpha->var0;
  v10 = mask->var0;
  v11 = y->var0;
  var6 = alpha->var6;
  var3 = alpha->var3;
  v14 = mask->var6;
  v15 = mask->var3;
  v16 = y->var6;
  v17 = y->var3;
  v18 = 0.0;
  var1 = y->var1;
  do
  {
    if (var1 >= 1)
    {
      v20 = var1;
      v21 = var0;
      v22 = v10;
      v23 = v11;
      do
      {
        if (*v22 >= 0x33u && *v21 == 0)
        {
          LOBYTE(v5) = *v23;
          v5 = LODWORD(v5);
          v18 = v18 + v5;
          ++v7;
        }

        v23 += v16;
        v22 += v14;
        v21 += var6;
        --v20;
      }

      while (v20);
    }

    ++v8;
    v11 += v17;
    v10 += v15;
    var0 += var3;
  }

  while (v8 != var2);
  if (v7)
  {
    return rintf(v18 / v7);
  }

  else
  {
LABEL_15:
    LODWORD(v25) = -1;
  }

  return v25;
}

- (float)upperRepairSizeFraction:(float)fraction
{
  if (self->lf->var10)
  {
    return 0.136;
  }

  else
  {
    return 25.0 / (fraction + 20.0) + 0.13;
  }
}

- (float)lowerRepairSizeFraction:(float)fraction
{
  if (self->lf->var10)
  {
  }

  else
  {
    return 1.0 / (fraction + -20.0) + 0.08;
  }
}

+ (float)upperRepairDistanceFraction:(float)fraction
{
  v4 = CI_DISABLE_REDEYE_SEARCH();
  result = 0.0;
  if (v4 != 1)
  {
    v6 = 50.0 / (fraction + 150.0) + 0.08;
    v7 = CI_DISABLE_REDEYE_SEARCH();
    result = v6 * 0.5;
    if (v7 != 2)
    {
      return v6;
    }
  }

  return result;
}

+ (float)upperRepairDistance:(float)distance
{
  v4 = CI_DISABLE_REDEYE_SEARCH();
  result = 0.0;
  if (v4 != 1)
  {
    v6 = (50.0 / (distance + 150.0) + 0.08) * distance;
    v7 = CI_DISABLE_REDEYE_SEARCH();
    result = v6 * 0.5;
    if (v7 != 2)
    {
      return v6;
    }
  }

  return result;
}

+ (CGRect)supportRectangleWithPoint:(CGPoint)point imageSize:(CGSize)size IOD:(float)d
{
  height = size.height;
  width = size.width;
  x = point.x;
  v8 = rintf(x);
  y = point.y;
  v10 = alignedBitmapRectAroundPoint(v8, rintf(y), 42);
  v12 = HIDWORD(v10);
  v13 = width;
  v14 = rintf(v13);
  v15 = height;
  v16 = rintf(v15);
  v17 = v11 & 0xFFFFFFFF00000000;
  if ((v11 & 0x80000000) == 0)
  {
    v17 = v11;
  }

  if (v14 >= SHIDWORD(v17))
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 | (v14 << 32);
  }

  v19 = v10 & ~(v10 >> 31);
  v20 = v18;
  v21 = v19;
  if (v16 < SHIDWORD(v10))
  {
    LODWORD(v12) = v16;
  }

  v22 = (HIDWORD(v18) - v18);
  v23 = (v12 - v19);
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)supportRectangleWithRepair:(id)repair imageSize:(CGSize)size
{
  height = size.height;
  v6 = rintf(height);
  width = size.width;
  v8 = rintf(width);
  [objc_msgSend(repair valueForKey:{@"searchRectangleMinimumY", "floatValue"}];
  v10 = rintf(v9 * v6);
  [objc_msgSend(repair valueForKey:{@"searchRectangleMaximumY", "floatValue"}];
  v12 = rintf(v11 * v6);
  [objc_msgSend(repair valueForKey:{@"searchRectangleMinimumX", "floatValue"}];
  v14 = rintf(v13 * v8);
  [objc_msgSend(repair valueForKey:{@"searchRectangleMaximumX", "floatValue"}];
  v16 = rintf(v15 * v8);
  v17 = v14;
  v18 = (v12 + 1);
  v19 = (v16 - v14);
  v20 = (v10 - v12);
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

+ (CGRect)supportRectangleWithFaceArray:(id)array imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [array count];
  v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  if (v7 < 1)
  {
LABEL_28:
    v29 = [v103 count];
    BitmapRect = makeBitmapRect(1000000, 0xF4240u, 4293967296, 4293967296);
    v32 = v31;
    v33 = BitmapRect;
    v34 = HIDWORD(BitmapRect);
    v35 = height;
    v92 = rintf(v35);
    if (v29 < 1)
    {
LABEL_70:
      v87 = v32;
      v88 = (v92 - v34);
      v89 = (HIDWORD(v32) - v32);
      v90 = (v34 - v33);
      goto LABEL_71;
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = width;
    v91 = rintf(v39);
    v40 = v29 & 0x7FFFFFFF;
    v97 = v40;
    while (1)
    {
      v41 = [v103 objectAtIndex:v36];
      if (v36 <= 0x1F)
      {
        v43 = v41;
        v98 = v34;
        v101 = v32;
        v44 = [v41 valueForKey:@"leftEyeX"];
        v45 = [v43 valueForKey:@"leftEyeY"];
        intValue2 = 0;
        v42 = 1;
        if (v44)
        {
          v47 = v45;
          intValue = 0;
          if (v45)
          {
            intValue = [v44 intValue];
            intValue2 = [v47 intValue];
            v42 = v37;
          }
        }

        else
        {
          intValue = 0;
        }

        v49 = [v43 valueForKey:@"rightEyeX"];
        v50 = [v43 valueForKey:@"rightEyeY"];
        if (!v49)
        {
          goto LABEL_40;
        }

        v51 = v50;
        if (!v50)
        {
          goto LABEL_40;
        }

        intValue3 = [v49 intValue];
        intValue4 = [v51 intValue];
        if (((v42 | v38) & 1) == 0)
        {
          [objc_msgSend(v43 valueForKey:{@"mouthCenterX", "intValue"}];
          v96 = [objc_msgSend(v43 valueForKey:{@"mouthCenterY", "intValue"}];
          [objc_msgSend(v43 valueForKey:{@"centerX", "intValue"}];
          v93 = [objc_msgSend(v43 valueForKey:{@"centerY", "intValue"}];
          if (intValue2 >= intValue4)
          {
            v58 = intValue4;
          }

          else
          {
            v58 = intValue2;
          }

          if (intValue2 <= intValue4)
          {
            v59 = intValue4;
          }

          else
          {
            v59 = intValue2;
          }

          v94 = v58;
          v95 = v59;
          *&v57 = sqrtf(((intValue - intValue3) * (intValue - intValue3) + (intValue2 - intValue4) * (intValue2 - intValue4)));
          [CIRedEyeRepair upperRepairDistance:v57];
          v61 = rintf(v60);
          v62 = alignedBitmapRectAroundPoint(intValue, intValue2, v61);
          v64 = clipBitmapRectToWidthAndHeight(v62, v63, v91, v92);
          v65 = evenBitmapRect(v64);
          v66 = unionBitmapRects(v33 | (v98 << 32), v101, (v65 & 0xFFFFFFFF00000000 | (v65 - 84)) + 0x5600000000);
          v99 = v67;
          v102 = v66;
          v68 = alignedBitmapRectAroundPoint(intValue3, intValue4, v61);
          v70 = clipBitmapRectToWidthAndHeight(v68, v69, v91, v92);
          v71 = evenBitmapRect(v70);
          v72 = unionBitmapRects(v102, v99, (v71 & 0xFFFFFFFF00000000 | (v71 - 84)) + 0x5600000000);
          v74 = (intValue4 - intValue2);
          v75 = sqrtf((v74 * v74) + ((intValue3 - intValue) * (intValue3 - intValue)));
          v76 = (v93 + v96);
          v77 = v75 * 0.5 * (v74 / v75);
          v78 = (v77 + v76 * 0.5);
          if (v94 >= v78)
          {
            v79 = (v77 + v76 * 0.5);
          }

          else
          {
            v79 = v94;
          }

          if (v95 <= v78 && v94 <= v78)
          {
            LODWORD(v81) = v78 + 1;
          }

          else
          {
            LODWORD(v81) = v95;
          }

          v82 = -(v77 - v76 * 0.5);
          if (v79 >= v82)
          {
            v83 = v82;
          }

          else
          {
            v83 = v79;
          }

          if (v81 <= v82 && v79 <= v82)
          {
            v81 = (v82 + 1);
          }

          else
          {
            v81 = v81;
          }

          v85 = unionBitmapRects(v72, v73, v83 | (v81 << 32));
          v32 = v86;
          v38 = 0;
          v42 = 0;
          v33 = v85;
          v34 = HIDWORD(v85);
          v40 = v97;
          goto LABEL_67;
        }

        if ((v38 & 1) == 0)
        {
          v54 = alignedBitmapRectAroundPoint(intValue3, intValue4, 85);
          v38 = 0;
        }

        else
        {
LABEL_40:
          v54 = alignedBitmapRectAroundPoint(intValue, intValue2, 85);
          v38 = 1;
        }

        v40 = v97;
        v55 = unionBitmapRects(v33 | (v98 << 32), v101, v54);
        v33 = v55;
        v32 = v56;
        v34 = HIDWORD(v55);
      }

      else
      {
        v42 = v37;
      }

LABEL_67:
      ++v36;
      v37 = v42;
      if (v40 == v36)
      {
        goto LABEL_70;
      }
    }
  }

  v8 = 0;
  v100 = v7 & 0x7FFFFFFF;
  while (1)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(array, "objectAtIndex:", v8)}];
    [v103 addObject:v9];
    v10 = [v9 valueForKey:@"leftEyeX"];
    v11 = [v9 valueForKey:@"leftEyeY"];
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    v13 = !v12;
    if (v12)
    {
      intValue6 = 0;
      intValue5 = 0;
    }

    else
    {
      v14 = v11;
      intValue5 = [v10 intValue];
      intValue6 = [v14 intValue];
    }

    v17 = [v9 valueForKey:@"rightEyeX"];
    v18 = [v9 valueForKey:@"rightEyeY"];
    if (v17)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v20 = v18;
      intValue7 = [v17 intValue];
      intValue8 = [v20 intValue];
      if (v13)
      {
        v23 = intValue8;
        v24 = [v9 valueForKey:@"centerX"];
        v25 = [v9 valueForKey:@"centerY"];
        if (v24 && (v26 = v25) != 0)
        {
          LODWORD(v24) = [v24 intValue];
          LODWORD(v26) = [v26 intValue];
        }

        else
        {
          v24 = rintf(vcvts_n_f32_s32(intValue7 + intValue5, 1uLL) - vcvts_n_f32_s32(v23 - intValue6, 1uLL));
          v26 = rintf(vcvts_n_f32_s32(intValue7 - intValue5, 1uLL) + vcvts_n_f32_s32(v23 + intValue6, 1uLL));
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v24), @"centerX"}];
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v26), @"centerY"}];
        }

        v27 = [v9 valueForKey:@"mouthCenterX"];
        v28 = [v9 valueForKey:@"mouthCenterY"];
        if (!v27 || !v28)
        {
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", rintf(v24 - vcvts_n_f32_s32(v23 - intValue6, 1uLL))), @"mouthCenterX"}];
          [v9 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", rintf(vcvts_n_f32_s32(intValue7 - intValue5, 1uLL) + v26)), @"mouthCenterY"}];
        }
      }

      goto LABEL_27;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_27:
    if (v100 == ++v8)
    {
      goto LABEL_28;
    }
  }

  v87 = 0.0;
  v88 = 0.0;
  v89 = 0.0;
  v90 = 0.0;
LABEL_71:
  result.size.height = v90;
  result.size.width = v89;
  result.origin.y = v88;
  result.origin.x = v87;
  return result;
}

- (BOOL)computeTrimmedBitmaps:(id *)bitmaps newY:(id *)y newCbCr:(id *)cr IR:(id)r newTrimY:(id *)trimY newTrimCbCr:(id *)cbCr returningYR:(id *)yR andCbCrR:(id *)self0
{
  v10 = *&r.var2;
  v11 = *&r.var0;
  crCopy2 = cr;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  var1 = r.var1;
  var3 = r.var3;
  v78 = 0;
  memset(v77, 0, sizeof(v77));
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  if (self->nRepairs < 1)
  {
LABEL_9:
    v25 = v75;
    bitmapsCopy3 = bitmaps;
    constructSliceBitmap(bitmaps, v75, v11, v10);
    v26 = 0;
    v22 = var3 - v10;
    v23 = var1 - v11;
  }

  else
  {
    v16 = 0;
    p_mincol = &self->repairs[0].YR.mincol;
    while (1)
    {
      v18 = intersectBitmapRects(v11, v10, *(p_mincol - 1));
      if (v20 > v19 && SHIDWORD(v18) > v18)
      {
        break;
      }

      p_mincol += 100;
      if (++v16 >= self->nRepairs)
      {
        goto LABEL_9;
      }
    }

    v22 = var3 - v10;
    v23 = var1 - v11;
    bitmapsCopy3 = bitmaps;
    v25 = v73;
    v26 = 1;
    initBitmap(v73, v22, var1 - v11, 4, 1, bitmaps->var8);
    copySliceOfBitmapToBitmap(bitmaps, v73, v11, v10);
    if (self->nRepairs >= 1)
    {
      v68 = v22;
      v27 = 0;
      p_fullNew = &self->repairs[0].fullNew;
      do
      {
        v29 = intersectBitmapRects(v11, v10, p_fullNew[1].baseAddress);
        v31 = v29;
        v32 = v30;
        if (SHIDWORD(v30) > v30 && SHIDWORD(v29) > v29)
        {
          v34 = offsetBitmapRect(v29, v30, -p_fullNew[1].width, -LODWORD(p_fullNew[1].baseAddress));
          constructSliceBitmap(p_fullNew, v75, v34, v35);
          v36 = offsetBitmapRect(v31, v32, -v10, -v11);
          copyBitmapToSliceOfBitmap(v75, v73, v36, v37);
        }

        ++v27;
        p_fullNew += 10;
      }

      while (v27 < self->nRepairs);
      v25 = v73;
      v26 = 1;
      crCopy2 = cr;
      bitmapsCopy3 = bitmaps;
      v22 = v68;
    }
  }

  initBitmap(v79, v22, v23, 1, 1, bitmapsCopy3->var8);
  initBitmap(v77, v22 / 2, v23 / 2, 2, 1, bitmapsCopy3->var8);
  ConvertREDEYEFORMATtoYCbCr(v25, v79, v77, self->lf->var8);
  if (v26)
  {
    termBitmap(v73);
  }

  v43 = bitmapToBitmapDifferenceBitmapRect(y, v79, v38, v39, v40, v41, v42);
  v49 = bitmapToBitmapDifferenceBitmapRect(crCopy2, v77, v44, v45, v46, v47, v48);
  termBitmap(v79);
  termBitmap(v77);
  v50 = twiceBitmapRect(v49);
  v52 = v51;
  v53 = HIDWORD(v50);
  v54 = evenBitmapRect(v43);
  if (v54 != HIDWORD(v54))
  {
    if (v50 < SHIDWORD(v50))
    {
      v54 = unionBitmapRects(v54, v55, v50);
    }

    v52 = v55;
    v53 = HIDWORD(v54);
    LODWORD(v50) = v54;
    goto LABEL_27;
  }

  if (v50 != HIDWORD(v50))
  {
LABEL_27:
    v57 = v50 | (v53 << 32);
    v58 = halfBitmapRect(v57);
    v60 = v59;
    v61 = v53 - v50;
    v56 = 1;
    initBitmap(trimY, HIDWORD(v52) - v52, v61, 1, 1, 100.0);
    initBitmap(cbCr, HIDWORD(v60) - v60, HIDWORD(v58) - v58, 2, 1, 50.0);
    copySliceOfBitmapToBitmap(y, &trimY->var0, v57, v52);
    copySliceOfBitmapToBitmap(cr, &cbCr->var0, v58, v60);
    v62 = offsetBitmapRect(v57, v52, v10, v11);
    v64 = v63;
    v65 = offsetBitmapRect(v58, v60, (v10 / 2), v11 / 2);
    *&yR->var0 = v62;
    *&yR->var2 = v64;
    *&crR->var0 = v65;
    *&crR->var2 = v66;
    return v56;
  }

  return 0;
}

- (BOOL)extractReusableAlignedBitmapsAroundPoint:(id *)point YR:(id)r subYBitmap:(id *)bitmap subCbCrBitmap:(id *)crBitmap
{
  v8 = *&r.var2;
  v9 = *&r.var0;
  var1 = r.var1;
  var3 = r.var3;
  v14 = halfBitmapRect(*&r.var0);
  v15 = var3 - v8;
  v17 = var3 > v8 && var1 > v9;
  if (!v17)
  {
    return v17;
  }

  v18 = v13;
  if (!bitmap->var0 || bitmap->var1 != v15 || bitmap->var2 != var1 - v9)
  {
    termBitmap(&bitmap->var0);
    initBitmap(bitmap, v15, var1 - v9, 1, 1, 100.0);
  }

  crBitmapCopy = crBitmap;
  if (crBitmap->var0)
  {
    v19 = crBitmap->var1;
    crBitmapCopy2 = crBitmap;
    v21 = HIDWORD(v18) - v18;
    if (__PAIR64__(crBitmapCopy2->var2, v19) == __PAIR64__(HIDWORD(v14) - v14, HIDWORD(v18) - v18))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v21 = HIDWORD(v18) - v18;
  }

  termBitmap(&crBitmapCopy->var0);
  initBitmap(crBitmapCopy, v21, HIDWORD(v14) - v14, 2, 1, 50.0);
LABEL_17:
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  if (self->nRepairs < 1)
  {
LABEL_25:
    constructSliceBitmap(point, v42, v9, v8);
    ConvertREDEYEFORMATtoYCbCr(v42, bitmap, crBitmapCopy, self->lf->var8);
  }

  else
  {
    v22 = 0;
    p_mincol = &self->repairs[0].YR.mincol;
    while (1)
    {
      v24 = intersectBitmapRects(v9, v8, *(p_mincol - 1));
      if (v26 > v25 && SHIDWORD(v24) > v24)
      {
        break;
      }

      p_mincol += 100;
      if (++v22 >= self->nRepairs)
      {
        goto LABEL_25;
      }
    }

    initBitmap(v44, v15, var1 - v9, 4, 1, point->var8);
    copySliceOfBitmapToBitmap(point, v44, v9, v8);
    if (self->nRepairs >= 1)
    {
      v28 = 0;
      p_fullNew = &self->repairs[0].fullNew;
      do
      {
        v30 = intersectBitmapRects(v9, v8, p_fullNew[1].baseAddress);
        v32 = v30;
        v33 = v31;
        if (SHIDWORD(v31) > v31 && SHIDWORD(v30) > v30)
        {
          v35 = offsetBitmapRect(v30, v31, -p_fullNew[1].width, -LODWORD(p_fullNew[1].baseAddress));
          constructSliceBitmap(p_fullNew, v42, v35, v36);
          v37 = offsetBitmapRect(v32, v33, -v8, -v9);
          copyBitmapToSliceOfBitmap(v42, v44, v37, v38);
        }

        ++v28;
        p_fullNew += 10;
      }

      while (v28 < self->nRepairs);
    }

    ConvertREDEYEFORMATtoYCbCr(v44, bitmap, crBitmapCopy, self->lf->var8);
    termBitmap(v44);
  }

  LOBYTE(v17) = 1;
  return v17;
}

- (int)redEyeRemovalWithPoint:(CGPoint)point alignPupilShades:(BOOL)shades matching:(id)matching force:(int)force IOD:(float)d tap:(BOOL)tap
{
  v8 = MEMORY[0x1EEE9AC00](self, a2, shades, *&matching.var0, *&matching.var2, *&force);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  v19 = v18;
  v21 = v20;
  v22 = v9;
  v23 = v8;
  v239 = *MEMORY[0x1E69E9840];
  v220 = 0;
  v194 = 0;
  v195 = 0;
  v193 = 0uLL;
  v24 = -1.0;
  v25 = -1.0;
  if (v10 != 0.0)
  {
    *&v9 = v10;
    [v8 lowerRepairSize:v9];
    v25 = v26;
    *&v27 = v17;
    [v23 upperRepairSize:v27];
    v24 = v28;
  }

  v212 = 0u;
  v213 = 0u;
  v211 = 0u;
  v29 = *(v23 + 2);
  LODWORD(v212) = v29[46].i32[0];
  DWORD1(v212) = v29[47].i32[0];
  BYTE8(v212) = v29[46].i8[4];
  v30 = vcvt_f32_s32(v29[41]);
  v31.i32[0] = v29[43].i32[0];
  v31.i32[1] = v29[42].i32[0];
  __asm { FMOV            V3.2D, #0.5 }

  *&v213 = vcvt_f32_f64(vmlaq_f64(vnegq_f64(vcvtq_f64_f32(vcvt_f32_s32(v31))), _Q3, vcvtq_f64_f32(v30)));
  *(&v213 + 2) = sqrtf(COERCE_FLOAT(vmul_f32(v30, v30).i32[1]) + (v30.f32[0] * v30.f32[0])) * 0.5;
  v222 = v212;
  v223 = v213;
  v221 = 0u;
  v36 = v22;
  v37 = rintf(v36);
  v38 = v21;
  v189 = rintf(v38);
  v39 = alignedBitmapRectAroundPoint(v37, v189, 42);
  v41 = clipBitmapRectToBitmapBounds(v39, v40, *(v23 + 2) + 288);
  v43 = v42;
  if ([v23 extractReusableAlignedBitmapsAroundPoint:*(v23 + 2) + 288 YR:v41 subYBitmap:v42 subCbCrBitmap:{v23 + 12928, v23 + 12968}])
  {
    v188 = v37;
    v234 = 0;
    v235 = 0;
    v44 = malloc_type_malloc(0x28uLL, 0x1010040829CE571uLL);
    v233 = v44;
    if (v44)
    {
      v45 = v44;
      computeRedChannel(v23 + 1616, (v23 + 12968), v44, 0);
      v235 = v23 + 12928;
      v46 = malloc_type_malloc(0x28uLL, 0x1010040829CE571uLL);
      v234 = v46;
      if (v46)
      {
        v184 = v19;
        v185 = v12;
        v182 = v16;
        v183 = v14;
        v219 = 0;
        v218 = 0;
        v217 = 0;
        v216 = 0;
        v215 = 0;
        memset(v214, 0, sizeof(v214));
        v210 = 0uLL;
        v209 = 0uLL;
        v208[0] = 0;
        v208[1] = 0;
        *__dst = 0u;
        v206 = 0u;
        v207 = 0;
        v204 = 0;
        *v202 = 0u;
        v203 = 0u;
        v201 = 0;
        memset(v200, 0, sizeof(v200));
        v199 = 0;
        memset(v198, 0, sizeof(v198));
        memset(v196, 0, sizeof(v196));
        v197 = 0;
        v230 = 0;
        v229 = 0;
        v231 = 0;
        v190 = v23;
        v186 = v46;
        computeRedChannel(v23 + 1616, (v23 + 12968), v46, 5);
        v47 = 0;
        HIDWORD(v220) = 0;
        do
        {
          snapToPupil((&v233)[v47], v188 - v43, v189 - v41, &v236[v47 + 15], &v236[v47 + 12], &v236[v47 + 9]);
          v48 = HIDWORD(v220);
          v49 = (v236[SHIDWORD(v220) + 12] + v41);
          v50 = &v232[SHIDWORD(v220)];
          *v50 = (v236[SHIDWORD(v220) + 15] + v43);
          v50[1] = v49;
          v47 = v48 + 1;
          HIDWORD(v220) = v48 + 1;
        }

        while (v48 < 2);
        termBitmap(v45);
        free(v45);
        termBitmap(v186);
        free(v186);
        v51 = 0;
        v52 = (v23 + 13264);
        HIDWORD(v220) = 0;
        v53 = (v23 + 13024);
        v54 = (v23 + 13144);
        while (1)
        {
          v55 = &v232[v51];
          v56 = *v55;
          v57 = rintf(v56);
          v58 = v55[1];
          v59 = rintf(v58);
          v60 = &v52[4 * v51];
          *v60 = alignedBitmapRectAroundPoint(v57, v59, 42);
          v60[1] = v61;
          v62 = &v52[4 * SHIDWORD(v220)];
          *v62 = clipBitmapRectToBitmapBounds(*v62, *(v62 + 1), *(v23 + 2) + 288);
          *(v62 + 1) = v63;
          if (![v23 extractReusableAlignedBitmapsAroundPoint:*(v23 + 2) + 288 YR:*&v52[4 * SHIDWORD(v220)] subYBitmap:*&v52[4 * SHIDWORD(v220) + 2] subCbCrBitmap:{&v53[5 * SHIDWORD(v220)], &v54[5 * SHIDWORD(v220)]}])
          {
            return -1;
          }

          v65 = &v52[4 * SHIDWORD(v220)];
          v66 = v65[2];
          v67 = *v65;
          if (HIDWORD(v220) == 2)
          {
            v68 = (v53 + 10);
          }

          else
          {
            v69 = malloc_type_malloc(0x28uLL, 0x1010040829CE571uLL);
            if (!v69)
            {
              return -1;
            }

            v68 = v69;
            if (HIDWORD(v220) == 1)
            {
              v70 = (v190 + 13064);
              v71 = (v190 + 13184);
              v72 = v68;
              v73 = 5;
              goto LABEL_17;
            }

            if (!HIDWORD(v220))
            {
              v70 = v53;
              v71 = v54;
              v72 = v68;
              v73 = 0;
LABEL_17:
              computeRedChannel(v70, v71, v72, v73);
            }
          }

          *&v64 = v24;
          v74 = computeBitmask(v68, v57 - v66, v59 - v67, &v211, v214, SHIDWORD(v220), v25, v64, v17);
          v75 = SHIDWORD(v220);
          *(&v229 + SHIDWORD(v220)) = v74;
          v76 = v214[0];
          v236[v75 + 6] = DWORD2(v214[6]);
          v236[v75 + 3] = HIDWORD(v214[6]);
          v236[v75] = v76;
          v77 = &v224 + 12 * v75;
          v78 = *(&v214[3] + 8);
          *(v77 + 2) = *(&v214[2] + 8);
          *(v77 + 3) = v78;
          v79 = *(&v214[5] + 8);
          *(v77 + 4) = *(&v214[4] + 8);
          *(v77 + 5) = v79;
          v80 = *(&v214[1] + 8);
          *v77 = *(v214 + 8);
          *(v77 + 1) = v80;
          (&v233)[v75] = v68;
          v51 = v75 + 1;
          HIDWORD(v220) = v75 + 1;
          v23 = v190;
          if (v75 >= 2)
          {
            HIDWORD(v217) = 0;
            if (v229)
            {
              v81 = examineBitmask(v53, v54, v229, &v217 + 1);
              if (v230)
              {
                _ZF = 0;
              }

              else
              {
                _ZF = v81 == 2;
              }

              if (_ZF)
              {
                v83 = 1;
              }

              else
              {
                v83 = v81;
              }
            }

            else
            {
              v83 = -1;
            }

            v177 = v83;
            v85 = 0;
            HIDWORD(v220) = 0;
            do
            {
              if (!*(&v229 + v85))
              {
                v86 = &v224 + 12 * v85;
                *v86 = 0.0;
                v86[1] = 0.0;
                v86[2] = 0.0;
                *(v86 + 36) = makeBitmapRect(0, 0, 0, 0);
                *(v86 + 44) = v87;
                v85 = HIDWORD(v220);
              }

              HIDWORD(v220) = v85 + 1;
              v117 = v85++ < 2;
            }

            while (v117);
            v88 = v22;
            v89 = v21;
            v90 = redEyeDiscernment(&v229, &v224, v52, v185, v88, v89);
            v91 = v90;
            if (v177 <= 5 && ((1 << v177) & 0x34) != 0)
            {
              if (v226[24 * v90] < 2 * v228)
              {
                v91 = 1;
              }

              else
              {
                v91 = v90;
              }
            }

            v92 = &v232[v91];
            v93 = v92[1];
            v94 = *v92;
            v95 = rintf(v94);
            v96 = &v52[4 * v91];
            v97 = *v96;
            v98 = v96[1];
            v99 = HIDWORD(*v96);
            v100 = &v53[5 * v91];
            v101 = &v54[5 * v91];
            v102 = v93;
            v179 = rintf(v102);
            v180 = v95;
            v103 = v236[v91 + 6];
            v175 = v236[v91];
            v176 = v236[v91 + 3];
            v104 = (&v233)[v91];
            v187 = v100;
            if (v91)
            {
              v174 = 0;
              v173 = 0;
            }

            else
            {
              v238 = 0u;
              memset(v237, 0, sizeof(v237));
              v105 = v224;
              v106 = rintf(v105);
              v107 = v225;
              v108 = computeBitmask(v100, v106, rintf(v107), &v211, v237, -1, v25, COERCE_DOUBLE(__PAIR64__(HIDWORD(v225), LODWORD(v24))), v17);
              v109 = v108;
              if (v108)
              {
                LODWORD(v174) = DWORD2(v238) + v98;
                HIDWORD(v174) = v237[0];
                v173 = HIDWORD(v238) + v97;
              }

              else
              {
                v174 = v98;
                v173 = v97;
              }

              v110 = cornealReflectionBitmask(v108, v104, v226[0]);
              if (v110)
              {
                v111 = v110;
                v112 = bitmaskBoundingBitmapRect(v110);
                v114 = intersectBitmapRects(v112, v113, v227);
                v117 = v116 <= v115 || SHIDWORD(v114) <= v114;
                if (!v117)
                {
                  infillChannelWithBitmask(v104, v111, 0, 0);
                }

                termBitmask(v111);
              }

              if (v109)
              {
                termBitmask(v109);
              }
            }

            initBitmap(__dst, HIDWORD(v98) - v98, v99 - v97, 1, 1, 100.0);
            initBitmap(v202, (HIDWORD(v98) - v98) / 2, (v99 - v97) / 2, 2, 1, 100.0);
            memmove(__dst[0], *v187, *(v187 + 24));
            memmove(v202[0], *v101, *(v101 + 24));
            v181 = v98;
            v118 = &v224 + 12 * v91;
            v119 = computePupilAlphaMap(v104, v91, *(v118 + 4), &v211, &v219 + 1, &v219);
            if (v119)
            {
              Alpha = v119;
              computeBorderForAlpha(v104, v119, v237, &v220);
            }

            else
            {
              Alpha = extractAlpha(v104, *(&v229 + v91), v237, &v220);
              if (!Alpha)
              {
                v142 = 0;
                HIDWORD(v220) = 0;
                do
                {
                  v143 = *(&v229 + v142);
                  if (v143)
                  {
                    termBitmask(v143);
                    v142 = HIDWORD(v220);
                  }

                  HIDWORD(v220) = v142 + 1;
                  v117 = v142++ < 2;
                }

                while (v117);
                v144 = v233;
                termBitmap(v233);
                free(v144);
                v145 = v234;
                termBitmap(v234);
                free(v145);
                HIDWORD(v220) = 3;
                termBitmap(__dst);
                termBitmap(v202);
                return -1;
              }
            }

            featheredOutsize(Alpha, &v218 + 1, &v218, 2.0, 0.25, 2.0);
            v210 = *(v190 + 805);
            if (v91 > 1)
            {
              v193 = *(v190 + 805);
              v121 = v187;
              if (v91 == 2)
              {
                goto LABEL_60;
              }

              v178 = 0;
              v125 = v91;
              v126 = v181;
            }

            else
            {
              v121 = v187;
              examineAlpha(v187, v101, Alpha, &v210, &v217, &v216 + 1, &v216, &v215);
              v122 = *&v217;
              v123 = HIDWORD(v216);
              *(v118 + 19) = v217;
              *(v118 + 20) = v123;
              v124 = v215;
              *(v118 + 21) = v216;
              *(v118 + 22) = v124;
              if (v122 < 3.26)
              {
                v193 = v210;
LABEL_64:
                v130 = malloc_type_calloc(0x100uLL, 1uLL, 0x100004077774924uLL);
                if (v91 == 1 || v184)
                {
                  v134 = v210 * 0.3359 + v182 * 0.6641;
                  v135 = rintf(v134);
                  v136 = v183 - v182 + v135;
                  v137 = v135 & ~(v135 >> 31);
                  if (v136 >= 255)
                  {
                    v136 = 255;
                  }

                  if (v190[12922] == 1)
                  {
                    v138 = v136 - v137;
                    v139 = *(v190 + 3231);
                    v140 = v138 + v139;
                    v137 = v139 & ~(v139 >> 31);
                    if (v140 >= 255)
                    {
                      v136 = 255;
                    }

                    else
                    {
                      v136 = v140;
                    }
                  }

                  v129 = v176;
                  v141 = rintf(v137 + ((v136 - v137) * ((DWORD1(v210) - v210) / (DWORD2(v210) - v210))));
                  if (v177 >= 2 && SHIDWORD(v217) >= 1)
                  {
                    DWORD1(v210) = 32 * HIDWORD(v217);
                  }

                  buildTransferTable(v210, *(&v210 + 1), v137 | (v141 << 32), v183 & 0xFFFFFFFF00000000 | v136, v130);
                  v178 = 0;
                }

                else
                {
                  initBitmap(v196, *(v187 + 8), *(v187 + 12), *(v187 + 28), *(v187 + 32), *(v187 + 36));
                  computeSkinMask(v187, v101, v196, (v190 + 13996));
                  v131 = [v190 averageValueFromY:v187 withinSkinMask:v196 butOutsideAlpha:Alpha];
                  termBitmap(v196);
                  if (v131 == -1)
                  {
                    LODWORD(v133) = 40;
                  }

                  else
                  {
                    v132 = v131 * 0.52;
                    v133 = rintf(v132);
                  }

                  v129 = v176;
                  v121 = v187;
                  v178 = v133;
                  if (SHIDWORD(v210) > v133 && HIDWORD(v210))
                  {
                    v146 = 0;
                    v147 = v133 / SHIDWORD(v210);
                    do
                    {
                      if (v146 < 0xC9)
                      {
                        v148 = rintf(v147 * v146);
                        if (v148 >= 255)
                        {
                          LOBYTE(v148) = -1;
                        }

                        if (v146 >= 0xB5)
                        {
                          v149 = v147 + ((v146 - 180) / 20.0) * (1.0 - v147);
                          v148 = rintf(v146 * v149);
                          if (v148 >= 255)
                          {
                            LOBYTE(v148) = -1;
                          }
                        }
                      }

                      else
                      {
                        LOBYTE(v148) = v146;
                      }

                      v130[v146++] = v148;
                    }

                    while (v146 != 256);
                  }

                  else
                  {
                    v150 = 0;
                    v151 = xmmword_19CF2B8B0;
                    v152.i64[0] = 0x1010101010101010;
                    v152.i64[1] = 0x1010101010101010;
                    do
                    {
                      *&v130[v150] = v151;
                      v150 += 16;
                      v151 = vaddq_s8(v151, v152);
                    }

                    while (v150 != 256);
                  }

                  HIDWORD(v220) = 256;
                }

                redEyeCancellation(v121, v101, Alpha, __dst, v202, v130, &v220 + 1);
                free(v130);
                v125 = 0;
                v126 = v181;
LABEL_100:
                v153 = 0;
                v154 = v103 + v126;
                v155 = v129 + v97;
                HIDWORD(v220) = 0;
                do
                {
                  v156 = *(&v229 + v153);
                  if (v156)
                  {
                    termBitmask(v156);
                    v153 = HIDWORD(v220);
                  }

                  HIDWORD(v220) = v153 + 1;
                  v117 = v153++ < 2;
                }

                while (v117);
                v157 = v233;
                termBitmap(v233);
                free(v157);
                v158 = v234;
                termBitmap(v234);
                free(v158);
                HIDWORD(v220) = 3;
                if (([v190 computeTrimmedBitmaps:*(v190 + 2) + 288 newY:__dst newCbCr:v202 IR:v97 newTrimY:v181 newTrimCbCr:v200 returningYR:v198 andCbCrR:{&v209, v208}] & 1) == 0)
                {
                  termBitmap(__dst);
                  termBitmap(v202);
                  termBitmap(Alpha);
                  v84 = Alpha;
                  goto LABEL_108;
                }

                v159 = *(v190 + 16);
                if (v159 > 31)
                {
                  v162 = 0;
                }

                else
                {
                  v160 = *(v190 + 17);
                  *(v190 + 3218) = v160;
                  v161 = &v190[400 * v159];
                  *(v161 + 18) = v160;
                  v162 = v161 + 72;
                  *(v190 + 3219) = v17;
                  *(v190 + 16) = v159 + 1;
                  *(v190 + 17) = v160 + 1;
                  *(v162 + 1) = v22;
                  *(v162 + 2) = v21;
                  *(v162 + 6) = v125;
                  *(v162 + 7) = v185;
                  v163 = v218;
                  *(v162 + 8) = HIDWORD(v218);
                  *(v162 + 9) = v163;
                  v164 = *(v118 + 1);
                  *(v162 + 19) = *v118;
                  *(v162 + 20) = v164;
                  v165 = *(v118 + 2);
                  v166 = *(v118 + 3);
                  v167 = *(v118 + 5);
                  *(v162 + 23) = *(v118 + 4);
                  *(v162 + 24) = v167;
                  *(v162 + 21) = v165;
                  *(v162 + 22) = v166;
                  v168 = HIDWORD(v209) - DWORD2(v209);
                  v169 = DWORD1(v209) - v209;
                  *(v162 + 5) = v209;
                  initBitmap((v162 + 40), v168, v169, 4, 1, 100.0);
                  ConvertYCbCrtoREDEYEFORMAT(v200, v198, (v162 + 40), *(*(v190 + 2) + 364));
                  *(v162 + 6) = v210;
                  v162[112] = v184;
                  *(v162 + 116) = v182;
                  *(v162 + 124) = v183;
                  *(v162 + 36) = v188;
                  *(v162 + 37) = v189;
                  *(v162 + 38) = v180;
                  *(v162 + 39) = v179;
                  *(v162 + 40) = v154;
                  *(v162 + 41) = v155;
                  *(v162 + 42) = v175;
                  *(v162 + 43) = v174;
                  *(v162 + 44) = v173;
                  *(v162 + 45) = HIDWORD(v174);
                  v162[184] = v184;
                  v170 = v194;
                  v162[187] = v195;
                  *(v162 + 185) = v170;
                  *(v162 + 188) = v182;
                  *(v162 + 196) = v183;
                  *(v162 + 204) = v193;
                  *(v162 + 55) = v178;
                  *(v162 + 56) = v91;
                  *(v162 + 57) = v125;
                  *(v162 + 58) = v17;
                  *(v162 + 59) = 0;
                  v171 = v222;
                  *(v162 + 15) = v221;
                  *(v162 + 16) = v171;
                  *(v162 + 17) = v223;
                  *(v162 + 36) = v97;
                  *(v162 + 37) = v181;
                }

                termBitmap(Alpha);
                free(Alpha);
                termBitmap(__dst);
                termBitmap(v202);
                termBitmap(v200);
                termBitmap(v198);
                if (v162)
                {
                  return *v162;
                }

                return -1;
              }

              v127 = *(*(v190 + 2) + 372);
              v193 = v210;
              if ((v127 & 1) == 0)
              {
                goto LABEL_64;
              }

LABEL_60:
              v128 = 0;
              v191 = 0;
              v192 = 0;
              if (v184)
              {
                LODWORD(v191) = v182;
                v192 = v183;
                HIDWORD(v191) = rintf(v182 + ((v183 - v182) * ((DWORD1(v210) - v210) / (DWORD2(v210) - v210))));
                v128 = &v191;
              }

              v126 = v181;
              whiteEyeCancellation(v121, v101, v17, v97, v181, Alpha, v237, v220, *(&v229 + v91), v118, __dst, v202, &v211, v128, &v220 + 1);
              v178 = 0;
              v125 = 2;
            }

            v129 = v176;
            goto LABEL_100;
          }
        }
      }

      termBitmap(v45);
      v84 = v45;
LABEL_108:
      free(v84);
    }
  }

  return -1;
}

- (CIRedEyeRepair)repairWithTag:(int)tag
{
  if (tag == -1)
  {
    return 0;
  }

  nRepairs = self->nRepairs;
  if (nRepairs < 1)
  {
    return 0;
  }

  for (result = self->repairs; LODWORD(result->super.isa) != tag; result = (result + 400))
  {
    if (!--nRepairs)
    {
      return 0;
    }
  }

  return result;
}

- (int)redoRepairWithTag:(int)tag IOD:(float)d
{
  v5 = *&tag;
  v7 = [(CIRedEyeRepair *)self repairWithTag:?];
  if (!v7)
  {
    return v5;
  }

  v8 = *&v7->ownLF;
  v9 = *&v7->lf;
  imageSourceType = v7->imageSourceType;
  v11 = *(&v7->repairs[0].fullNew.baseAddress + 4);
  v12 = *&v7->repairs[0].fullNew.height;
  self->iFaceIndex = v7->repairs[0].fullNew.rowBytes;
  self->iLeft = v7->repairs[0].fullNew.size;
  [(CIRedEyeRepair *)self undoRepair:v5];
  pupilShadeAlignment = self->pupilShadeAlignment;
  *&v14 = d;

  return [(CIRedEyeRepair *)self redEyeRemovalWithPoint:pupilShadeAlignment alignPupilShades:v11 matching:v12 force:imageSourceType IOD:0 tap:v8, v9, v14];
}

- (float)extractAverageFaceY:(id *)y contrast:(float *)contrast faceIndex:(int)index
{
  v49 = 0;
  v50 = 0;
  v6 = *&y->var13;
  v7 = *&y->var11;
  v8 = *&y->var5;
  v9 = *&y->var7;
  lf = self->lf;
  v11 = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
  if (!v11)
  {
    return 0.0;
  }

  v12 = v11;
  v13 = vadd_s32(v9, v8);
  v14.i64[0] = v6.i32[0];
  v14.i64[1] = v6.i32[1];
  v15 = vcvtq_f64_s64(v14);
  v14.i64[0] = v7.i32[0];
  v14.i64[1] = v7.i32[1];
  v46 = v15;
  v47 = vcvtq_f64_s64(v14);
  bzero(v11, 0x400uLL);
  v16 = 0;
  v17 = vcvt_f32_s32(vsub_s32(v6, v7));
  v18 = vmul_f32(v17, v17);
  *v18.i32 = sqrtf(*&v18.i32[1] + (v17.f32[0] * v17.f32[0]));
  v14.i64[0] = v13.i32[0];
  v14.i64[1] = v13.i32[1];
  v19 = vcvtq_f64_s64(v14);
  v20 = vmulq_n_f64(vcvtq_f64_f32(vdiv_f32(v17, vdup_lane_s32(v18, 0))), *v18.i32 * 0.5);
  __asm { FMOV            V2.2D, #0.5 }

  v26 = vmlaq_f64(vnegq_f64(v20), _Q2, v19);
  v27 = vmlaq_f64(v20, _Q2, v19);
  *&_Q2.f64[0] = vcvt_f32_s32(vsub_s32(v8, v9));
  *&v19.f64[0] = vmul_f32(*&_Q2.f64[0], *&_Q2.f64[0]);
  *v19.f64 = sqrtf(*(v19.f64 + 1) + (*_Q2.f64 * *_Q2.f64));
  v28 = vcvtq_f64_f32(vmul_n_f32(vdiv_f32(*&_Q2.f64[0], vdup_lane_s32(*&v19.f64[0], 0)), *v19.f64));
  v29 = vdupq_n_s64(0x3FD3333333333333uLL);
  v30 = vmlaq_f64(v46, v29, v28);
  v31 = vmlaq_f64(v47, v29, v28);
  *&v29.f64[0] = vcvt_f32_f64(vsubq_f64(v26, v31));
  v32 = vaddq_f64(v31, vsubq_f64(vsubq_f64(v27, v30), v26));
  *&v26.f64[0] = vdup_n_s32(0x3C257EB5u);
  v33 = vmul_f32(vcvt_f32_f64(vsubq_f64(v30, v31)), *&v26.f64[0]);
  v34 = vmul_f32(*&v29.f64[0], *&v26.f64[0]);
  v35 = vmul_f32(vcvt_f32_f64(v32), vdup_n_s32(0x38D5F928u));
  v36 = vcvt_f32_f64(v31);
  v37 = 0.0;
  do
  {
    v38 = 100;
    *&v32.f64[0] = v36;
    do
    {
      v48 = v32;
      bilinearARGB8LookupComponents(&lf->var2, &v49 + 1, &v50, &v50 + 1, &v49, *v32.f64, *(v32.f64 + 1));
      v39 = (9617 * v50 + 4899 * HIDWORD(v50) + 1868 * HIDWORD(v49) + 0x2000) >> 14;
      if (v39 >= 255)
      {
        v39 = 255;
      }

      v40 = v39 & ~(v39 >> 31);
      ++v12[v40];
      v37 = v37 + v40;
      v32.f64[1] = v48.f64[1];
      *&v32.f64[0] = vadd_f32(v33, *&v48.f64[0]);
      --v38;
    }

    while (v38);
    ++v16;
    v36 = vadd_f32(v34, v36);
    v33 = vadd_f32(v35, v33);
  }

  while (v16 != 100);
  v41 = 0;
  v42 = 0;
  do
  {
    v42 += v12[v41];
    if (v42 > 50)
    {
      break;
    }

    ++v41;
  }

  while (v41 != 256);
  v43 = 0;
  for (i = 255; i != -1; --i)
  {
    v43 += v12[i];
    if (v43 > 50)
    {
      break;
    }
  }

  free(v12);
  result = v37 / 10000.0;
  *contrast = (i - v41);
  return result;
}

- (float)confidenceWithIOD:(float)d repair:(int)repair andProminenceDifference:(int)difference
{
  v6 = *&repair;
  [(CIRedEyeRepair *)self upperRepairSize:?];
  v10 = v9;
  *&v11 = d;
  [(CIRedEyeRepair *)self lowerRepairSize:v11];
  v13 = v12;
  v14 = [(CIRedEyeRepair *)self repairWithTag:v6];
  if (!v14)
  {
    return 0.0;
  }

  v15 = vcvts_n_f32_s32(difference, 8uLL);
  imageSourceType = v14->imageSourceType;
  v17 = v15 * 1.5;
  if (imageSourceType)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 * 1.5;
  }

  if (self->lf->var10)
  {
    v19 = vsqrtq_f64(vdivq_f64(vcvtq_f64_f32(vcvt_f32_s32(v14->blockSet)), vdupq_n_s64(0x400921FB54442D18uLL)));
    v20 = vaddv_f32(vcvt_f32_f64(vaddq_f64(v19, v19))) * 0.5;
  }

  else
  {
    v22 = HIDWORD(v14->repairs[0].pt2.y) - LODWORD(v14->repairs[0].pt2.y);
    v23 = HIDWORD(v14->repairs[0].pt2.x) - LODWORD(v14->repairs[0].pt2.x);
    v20 = sqrtf((v22 * v22 + v23 * v23));
  }

  if (v20 <= v10)
  {
    v26 = 1.0;
    if (v20 > v13 || !imageSourceType && v13 + (v17 * v20) * -0.36 < v20)
    {
      return v18 * v26;
    }

    goto LABEL_19;
  }

  if (imageSourceType)
  {
    if (imageSourceType == 2)
    {
      v24 = v20;
      v25 = v10 + (v15 * v20) * 0.26;
      v26 = 1.0;
      if (v25 > v24)
      {
        return v18 * v26;
      }
    }

    goto LABEL_19;
  }

  v26 = 1.0;
  if (v10 + (v17 * v20) * 0.65 <= v20)
  {
LABEL_19:
    v26 = 0.0;
  }

  return v18 * v26;
}

- (void)insertIntoProminenceVettingHopper:(id *)hopper max:(int)max outside:(int)outside confidence:(float)confidence distance:(float)distance row:(int)row column:(int)column IOD:(float)self0
{
  *&v17 = d;
  [CIRedEyeRepair upperRepairDistanceFraction:v17];
  v19 = (confidence * 0.5 + 1.0) * v18;
  v20 = 1.0;
  if (v19 <= distance)
  {
    v21 = v19;
    v20 = 0.0;
    if (v21 * 1.25 > distance)
    {
      v20 = distance * -4.0 / v21 + 5.0;
    }
  }

  v22 = v20 * confidence;
  var0 = hopper->var0;
  if (var0 < 1)
  {
    LODWORD(v24) = 0;
LABEL_16:
    v28 = &hopper->var1[v24];
    v28->var0 = v22;
    v28->var1 = max;
    v28->var2 = outside;
    v28->var3 = confidence;
    v28->var4 = 0.0;
    v28->var5 = distance;
    v28->var6 = row;
    v28->var7 = column;
    v28->var8 = v20;
    if (hopper->var0 < 4)
    {
      v29 = hopper->var0 + 1;
    }

    else
    {
      v29 = 4;
    }

    hopper->var0 = v29;
    return;
  }

  v24 = 0;
  var1 = hopper->var1;
  while (var1->var0 >= v22)
  {
    ++v24;
    ++var1;
    if (var0 == v24)
    {
      LODWORD(v24) = hopper->var0;
      goto LABEL_15;
    }
  }

  if (var0 > v24)
  {
    v26 = &hopper->var1[var0];
    do
    {
      if (var0 <= 3)
      {
        v27 = *&v26[-1].var4;
        *&v26->var0 = *&v26[-1].var0;
        *&v26->var4 = v27;
        v26->var8 = v26[-1].var8;
      }

      --var0;
      --v26;
    }

    while (var0 > v24);
  }

LABEL_15:
  if (v24 <= 3)
  {
    goto LABEL_16;
  }
}

- (BOOL)gatherProminencesWithC:(id *)c MC:(id *)mC maxwindowsize:(int)maxwindowsize repairsize:(int)repairsize IR:(id)r fr:(id *)fr intoHopper:(id *)hopper faceIndex:(int)self0 left:(BOOL)self1 coss:(float)self2[10] sins:(float)self3[10] bitmapName:(char *)self4
{
  var0 = r.var0;
  var2 = r.var2;
  hopperCopy3 = hopper;
  *v111 = 0;
  memset(&v110[4], 0, 144);
  var1 = c->var1;
  v19 = c->var2;
  var3 = c->var3;
  var6 = c->var6;
  memmove(mC->var0, c->var0, c->var5);
  applyMaxFilter8(&mC->var0, maxwindowsize);
  inited = initBitmask(var1, v19);
  v23 = initBitmask(var1, v19);
  v24 = v23;
  cCopy = c;
  v25 = c->var0;
  if (v19 <= 0)
  {
    hopper->var0 = 0;
    v101 = 1;
  }

  else
  {
    v109 = inited;
    v104 = v23;
    v26 = 0;
    v27 = mC->var0;
    do
    {
      if (var1 >= 1)
      {
        v28 = 0;
        for (i = 0; i != var1; ++i)
        {
          if (v27[v28])
          {
            setBitInBitmask(v109, i, v26, v25[v28] == v27[v28]);
          }

          v28 += var6;
        }
      }

      ++v26;
      v25 += var3;
      v27 += var3;
    }

    while (v26 != v19);
    v30 = 0;
    v108 = 0;
    if (left)
    {
      v31 = 44;
    }

    else
    {
      v31 = 52;
    }

    v32 = 56;
    if (left)
    {
      v32 = 48;
    }

    v102 = v32;
    v103 = v31;
    v25 = cCopy->var0;
    v24 = v104;
    hopperCopy3 = hopper;
    hopper->var0 = 0;
    v33 = vcvtd_n_f64_s32(repairsize, 2uLL);
    v34 = vcvtd_n_f64_s32(repairsize, 1uLL);
    inited = v109;
    do
    {
      v101 = v30;
      if (var1 >= 1)
      {
        for (j = 0; j != var1; ++j)
        {
          if (bitValueFromBitmask(inited, j, v108))
          {
            if (!seedFill(inited, v24, j, v108, 0, bitIsSet_0))
            {
              termBitmask(inited);
              termBitmask(v24);
              return v101;
            }

            v36 = bitmaskBoundingBitmapRect(v24);
            v38 = v37;
            v39 = bitmaskCentroidUsingBoundingRect(v24, v36, v37);
            v40 = v36;
            hopperCopy3 = hopper;
            v41 = v38;
            inited = v109;
            closestSetBitInBitmaskUsingBoundingRect(v24, v40, v41, &v111[1], v111, v39, v42);
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = v25[v111[0] * var3 + v111[1] * var6];
            v47 = 256;
            v48 = -1;
            do
            {
              v49 = coss[v43];
              v50 = v33 * v49;
              v51 = v111[1] + rintf(v50);
              if (v51 >= 0)
              {
                v52 = sins[v43];
                v53 = v33 * v52;
                v54 = v111[0] + rintf(v53);
                if ((v54 & 0x80000000) == 0 && v51 < var1 && v54 < v19)
                {
                  v56 = v34 * v49;
                  v57 = v111[1] + rintf(v56);
                  if (v57 >= 0)
                  {
                    v58 = v34 * v52;
                    v59 = v111[0] + rintf(v58);
                    if ((v59 & 0x80000000) == 0 && v57 < var1 && v59 < v19)
                    {
                      v61 = v25[v51 * var6 + v54 * var3];
                      ++v45;
                      if (v61 >= v25[v57 * var6 + v59 * var3])
                      {
                        v61 = v25[v57 * var6 + v59 * var3];
                      }

                      if (v47 >= v61)
                      {
                        v47 = v61;
                      }

                      if (v48 <= v61)
                      {
                        v48 = v61;
                      }

                      v44 += v61;
                    }
                  }
                }
              }

              ++v43;
            }

            while (v43 != 10);
            v62 = vcvts_n_f32_s32(v46 - rintf(v44 / v45), 8uLL);
            if (v46 <= 0xF)
            {
              v63 = (v46 + -8.0) * 0.125 * v62;
              v62 = v63;
            }

            v64 = vcvts_n_f32_s32(v48 - v47, 8uLL);
            if (v46 < 8)
            {
              v62 = 0.0;
            }

            v65 = v62 + v64 * -0.5;
            *&v65 = v65;
            v66 = sqrt(((v111[1] + var2 - *(&fr->var0 + v103)) * (v111[1] + var2 - *(&fr->var0 + v103)) + (v111[0] + var0 - *(&fr->var0 + v102)) * (v111[0] + var0 - *(&fr->var0 + v102))));
            *&v66 = v66 / fr->var4;
            [CIRedEyeRepair insertIntoProminenceVettingHopper:"insertIntoProminenceVettingHopper:max:outside:confidence:distance:row:column:IOD:" max:hopper outside:v65 confidence:v66 distance:? row:? column:? IOD:?];
            v24 = v104;
            bitmaskMinus(v109, v104);
          }
        }
      }

      v30 = ++v108 >= v19;
    }

    while (v108 != v19);
    v101 = v108 >= v19;
  }

  termBitmask(inited);
  termBitmask(v24);
  *v110 = 0;
  if (hopperCopy3->var0 >= 1)
  {
    v68 = 0;
    v69 = vcvtd_n_f64_s32(repairsize, 1uLL);
    v70 = rintf(v69);
    if (v70 <= 1)
    {
      v71 = 1;
    }

    else
    {
      v71 = v70;
    }

    do
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      p_var0 = &hopperCopy3->var1[v68].var0;
      v76 = p_var0[6] - var0;
      v77 = p_var0[7] - var2;
      *v111 = __PAIR64__(v77, v76);
      v78 = p_var0[1];
      v79 = 256;
      v80 = -1;
      do
      {
        v81 = 1.0;
        v82 = v71;
        v83 = p_var0[1];
        do
        {
          v84 = v77 + rintf(v81 * coss[v72]);
          if (v84 >= 0)
          {
            v85 = v76 + rintf(v81 * sins[v72]);
            if ((v85 & 0x80000000) == 0 && v84 < var1 && v85 < v19)
            {
              v87 = v25[v84 * var6 + v85 * var3];
              if (v83 >= v87)
              {
                v83 = v87;
              }
            }
          }

          v81 = v81 + 1.0;
          --v82;
        }

        while (v82);
        if (v83 >= v79)
        {
          v88 = v79;
        }

        else
        {
          v88 = v83;
        }

        if (v83 <= v80)
        {
          v89 = v80;
        }

        else
        {
          v89 = v83;
        }

        if (v83 != v78)
        {
          ++v74;
          v73 += v83;
          v79 = v88;
          v80 = v89;
        }

        ++v72;
      }

      while (v72 != 10);
      v90 = rintf(v73 / v74);
      v91 = 0.0;
      if (v78 >= 8)
      {
        v91 = vcvts_n_f32_s32(v78 - v90, 8uLL);
        if (v78 <= 0xF)
        {
          v91 = (v78 + -8.0) * 0.125 * v91;
        }
      }

      v92 = vcvts_n_f32_s32(v80 - v79, 8uLL);
      v93 = v91 + v92 * -0.5;
      *&v93 = v93;
      LODWORD(v92) = p_var0[5];
      *&v67 = fr->var4;
      [CIRedEyeRepair insertIntoProminenceVettingHopper:"insertIntoProminenceVettingHopper:max:outside:confidence:distance:row:column:IOD:" max:v110 outside:v93 confidence:v92 distance:v67 row:? column:? IOD:?];
      ++v68;
    }

    while (v68 < hopperCopy3->var0);
  }

  v94 = *&v110[112];
  *&hopperCopy3->var1[2].var5 = *&v110[96];
  *&hopperCopy3->var1[3].var0 = v94;
  *&hopperCopy3->var1[3].var4 = *&v110[128];
  hopperCopy3->var1[3].var8 = *&v110[144];
  v95 = *&v110[48];
  *&hopperCopy3->var1[0].var7 = *&v110[32];
  *&hopperCopy3->var1[1].var2 = v95;
  v96 = *&v110[80];
  *&hopperCopy3->var1[1].var6 = *&v110[64];
  *&hopperCopy3->var1[2].var1 = v96;
  v97 = *&v110[16];
  *&hopperCopy3->var0 = *v110;
  *&hopperCopy3->var1[0].var3 = v97;
  return v101;
}

- (BOOL)gatherProminencesWithC:(id *)c MC:(id *)mC altC:(id *)altC altMC:(id *)altMC maxwindowsize:(int)maxwindowsize repairsize:(int)repairsize IR:(id)r fr:(id *)self0 intoHopper:(id *)self1 faceIndex:(int)self2 left:(BOOL)self3
{
  v15 = 0;
  v54 = *MEMORY[0x1E69E9840];
  v16 = v51;
  v17 = 0.0;
  do
  {
    v18 = __sincos_stret(v17);
    cosval = v18.__cosval;
    *&v53[v15] = cosval;
    sinval = v18.__sinval;
    *&v52[v15] = sinval;
    v17 = v17 + 0.62832;
    v15 += 4;
  }

  while (v15 != 40);
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  if (altC)
  {
    BYTE4(v43) = left;
    LODWORD(v43) = index;
    v21 = [(CIRedEyeRepair *)self gatherProminencesWithC:altC MC:altMC maxwindowsize:maxwindowsize repairsize:repairsize IR:*&r.var0 fr:*&r.var2 intoHopper:fr faceIndex:&v50 left:v43 coss:v53 sins:v52 bitmapName:"RC5"];
    if (v21)
    {
      BYTE4(v44) = left;
      LODWORD(v44) = index;
      v21 = [(CIRedEyeRepair *)self gatherProminencesWithC:c MC:mC maxwindowsize:maxwindowsize repairsize:repairsize IR:*&r.var0 fr:*&r.var2 intoHopper:fr faceIndex:hopper left:v44 coss:v53 sins:v52 bitmapName:"RC2"];
      if (v21)
      {
        v22 = 1000000;
        var1 = hopper->var1;
        if (hopper->var1[0].var3 <= *&v51[1].i32[1])
        {
          var0 = hopper->var0;
          if (hopper->var0 < 1)
          {
            v32 = 0;
          }

          else
          {
            v32 = 0;
            p_var6 = &hopper->var1[0].var6;
            do
            {
              v34 = (p_var6 - 6);
              v35 = *p_var6;
              p_var6 += 9;
              v36 = vsub_s32(v35, v51[3]);
              v37 = vmul_s32(v36, v36);
              v38 = vadd_s32(v37, vdup_lane_s32(v37, 1)).u32[0];
              if (v38 < v22)
              {
                v22 = v38;
                v32 = v34;
              }

              --var0;
            }

            while (var0);
          }
        }

        else
        {
          v24 = v50;
          if (v50 < 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 0;
            v25 = &v51[3];
            do
            {
              v26 = v25 - 3;
              v27 = *v25;
              v25 = (v25 + 36);
              v28 = vsub_s32(*&hopper->var1[0].var6, v27);
              v29 = vmul_s32(v28, v28);
              v30 = vadd_s32(v29, vdup_lane_s32(v29, 1)).u32[0];
              if (v30 < v22)
              {
                v22 = v30;
                v16 = v26;
              }

              --v24;
            }

            while (v24);
          }

          v32 = hopper->var1;
        }

        if (vcvtd_n_f64_u32(repairsize * repairsize, 2uLL) > v22)
        {
          v39 = *&v16[1].i32[1];
          v32->var4 = v39;
          if (v32->var3 < v39)
          {
            v32->var3 = v39;
            *&v32->var1 = *(v16 + 4);
          }

          if (v32 != var1)
          {
            v40 = *&v32->var0;
            v41 = *&v32->var4;
            hopper->var1[0].var8 = v32->var8;
            *&var1->var0 = v40;
            *&hopper->var1[0].var4 = v41;
          }
        }

        LOBYTE(v21) = 1;
      }
    }
  }

  else
  {
    BYTE4(v43) = left;
    LODWORD(v43) = index;
    LOBYTE(v21) = [(CIRedEyeRepair *)self gatherProminencesWithC:c MC:mC maxwindowsize:maxwindowsize repairsize:repairsize IR:*&r.var0 fr:*&r.var2 intoHopper:fr faceIndex:hopper left:v43 coss:v53 sins:v52 bitmapName:"RC2"];
  }

  return v21;
}

- (BOOL)extractAndGatherProminencesWithRect:(id)rect face:(id *)face faceIndex:(int)index left:(BOOL)left maxwindowsize:(float)maxwindowsize repairsize:(float)repairsize returningRedHopper:(id *)hopper whiteHopper:(id *)self0 redChannel:(id *)self1 redChannelMask:(id *)self2
{
  v12 = rect.var3 - ((LOBYTE(rect.var3) - LOBYTE(rect.var2)) & 1);
  v13 = rect.var1 - ((LOBYTE(rect.var1) - LOBYTE(rect.var0)) & 1);
  v14 = v12 - rect.var2;
  if (v12 <= rect.var2 || v13 <= rect.var0)
  {
    return 0;
  }

  var0 = rect.var0;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  memset(v46, 0, sizeof(v46));
  v47 = 0;
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  memset(v40, 0, sizeof(v40));
  v41 = 0;
  v39 = 0;
  v23 = rect.var0 | (v13 << 32);
  v24 = rect.var2 | (v12 << 32);
  memset(v38, 0, sizeof(v38));
  v25 = halfBitmapRect(v23);
  faceCopy = face;
  v26 = v25;
  v28 = v27;
  v29 = HIDWORD(v25);
  v30 = v13 - var0;
  initBitmap(v48, v14, v30, 1, 1, self->lf->var2.var8);
  initBitmap(v46, v14, v30, 1, 1, self->lf->var2.var8);
  initBitmap(v44, HIDWORD(v28) - v28, v29 - v26, 2, 1, self->lf->var2.var8);
  initBitmap(channel, v14, v30, 1, 1, self->lf->var2.var8);
  initBitmap(mask, v14, v30, 1, 1, self->lf->var2.var8);
  initBitmap(v40, v14, v30, 1, 1, self->lf->var2.var8);
  initBitmap(v38, v14, v30, 1, 1, self->lf->var2.var8);
  constructSliceBitmap(&self->lf->var2, v42, v23, v24);
  ConvertREDEYEFORMATtoYCbCr(v42, v48, v44, self->lf->var8);
  ConvertRedChannel2toY(v48, v44, channel);
  ConvertRedChannel5toY(v48, v44, v40);
  termBitmap(v44);
  BYTE4(v33) = left;
  LODWORD(v33) = index;
  v31 = [(CIRedEyeRepair *)self gatherProminencesWithC:channel MC:mask altC:v40 altMC:v38 maxwindowsize:maxwindowsize repairsize:repairsize IR:v23 fr:v24 intoHopper:faceCopy faceIndex:hopper left:v33];
  v16 = 0;
  if (v31)
  {
    if (!self->lf->var10 || (BYTE4(v34) = left, LODWORD(v34) = index, [(CIRedEyeRepair *)self gatherProminencesWithC:v48 MC:v46 altC:0 altMC:0 maxwindowsize:maxwindowsize repairsize:repairsize IR:v23 fr:v24 intoHopper:faceCopy faceIndex:whiteHopper left:v34]))
    {
      v16 = 1;
    }
  }

  termBitmap(&channel->var0);
  termBitmap(&mask->var0);
  termBitmap(v40);
  termBitmap(v38);
  termBitmap(v48);
  termBitmap(v46);
  return v16;
}

- ($989D4B698364BD1E7054E5BF7672D090)repairDecisionWithFaceRecord:(SEL)record left:(id *)left redHopper:(BOOL)hopper whiteHopper:(id *)whiteHopper
{
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  if (whiteHopper->var0 < 1 || whiteHopper->var1[0].var3 <= 0.08)
  {
    if (*(*&self->var5 + 372) == 1 && a7->var0 >= 1 && a7->var1[0].var3 > 0.08)
    {
      v11 = 52;
      if (hopper)
      {
        v11 = 44;
      }

      v12 = 56;
      if (hopper)
      {
        v12 = 48;
      }

      v13 = *(&left->var0 + v12);
      retstr->var0 = *(&left->var0 + v11);
      retstr->var1 = v13;
      retstr->var4 = a7->var1[0].var5;
      v14 = *&a7->var1[0].var1;
      *&retstr->var5 = vrev64_s32(*&a7->var1[0].var6);
      *&retstr->var7 = v14;
      retstr->var2 = 1;
    }
  }

  else
  {
    v7 = 52;
    if (hopper)
    {
      v7 = 44;
    }

    v8 = 56;
    if (hopper)
    {
      v8 = 48;
    }

    v9 = *(&left->var0 + v8);
    retstr->var0 = *(&left->var0 + v7);
    retstr->var1 = v9;
    retstr->var4 = whiteHopper->var1[0].var5;
    v10 = *&whiteHopper->var1[0].var1;
    *&retstr->var5 = vrev64_s32(*&whiteHopper->var1[0].var6);
    *&retstr->var7 = v10;
    *&retstr->var2 = 257;
  }

  return self;
}

- (int)applyEyeRepairWithEye:(id *)eye left:(BOOL)left IOD:(float)d autoPupilTonality:(BOOL)tonality match:(id *)match faceIndex:(int)index whiteHopper:(id *)hopper
{
  if (!eye->var2)
  {
    goto LABEL_22;
  }

  tonalityCopy = tonality;
  self->iFaceIndex = index;
  self->iLeft = left;
  if (eye->var3)
  {
    v18 = 0;
  }

  else
  {
    v18 = 2;
  }

  *&v9 = d;
  v19 = [(CIRedEyeRepair *)self redEyeRemovalWithPoint:tonality alignPupilShades:*&match->var0 matching:*&match->var2 force:v18 IOD:0 tap:eye->var5, eye->var6, v9];
  if (v19 == -1)
  {
LABEL_15:
    if (self->lf->var10 && eye->var3 && hopper->var0 >= 1 && hopper->var1[0].var3 > 0.125)
    {
      eye->var7 = hopper->var1[0].var1;
      eye->var4 = hopper->var1[0].var5;
      *&eye->var5 = vrev64_s32(*&hopper->var1[0].var6);
      eye->var8 = hopper->var1[0].var2;
      eye->var3 = 0;
      self->iFaceIndex = index;
      self->iLeft = left;
      *&v20 = d;
      v21 = [(CIRedEyeRepair *)self redEyeRemovalWithPoint:tonalityCopy alignPupilShades:*&match->var0 matching:*&match->var2 force:2 IOD:0 tap:eye->var5, eye->var6, v20];
      if (v21 == -1)
      {
        return v21;
      }

      *&v29 = d;
      [(CIRedEyeRepair *)self confidenceWithIOD:v21 repair:(eye->var7 - eye->var8) andProminenceDifference:v29];
      if (v30 >= 0.125)
      {
        return v21;
      }

      [(CIRedEyeRepair *)self undoRepair:v21];
    }

LABEL_22:
    LODWORD(v21) = -1;
    return v21;
  }

  v21 = v19;
  v22 = [(CIRedEyeRepair *)self repairWithTag:v19];
  if (v22->repairs[0].data.snapHitX)
  {
    maxrow = v22->repairs[0].data.CR.maxrow;
    x_low = LODWORD(v22->repairs[0].BI.centroid.x);
    eye->var7 = maxrow;
    eye->var8 = x_low;
  }

  else
  {
    maxrow = eye->var7;
    x_low = eye->var8;
  }

  v26 = ((*&v22->repairs[0].data.O.orientation / 255.0) * ((maxrow - x_low) / 255.0)) / fmaxf(eye->var4, 0.001);
  *&v23 = d;
  [(CIRedEyeRepair *)self confidenceWithIOD:v21 repair:v23 andProminenceDifference:?];
  if (v26 < 0.135 || v27 < 0.125)
  {
    [(CIRedEyeRepair *)self undoRepair:v21];
    goto LABEL_15;
  }

  return v21;
}

- (void)autoRepairExtractAndSearchLeft:(id)left right:(id)right data:(id *)data repairSize:(float)size autoPupilTonality:(BOOL)tonality faceIndex:(int)index
{
  tonalityCopy = tonality;
  v10 = *&right.var2;
  v11 = *&right.var0;
  v12 = *&left.var2;
  v14 = *&left.var0;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v61 = 0;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v102 = 0.0;
  [(CIRedEyeRepair *)self upperRepairSize:COERCE_DOUBLE(LODWORD(data->var4))];
  v17 = rintf(v16 * size);
  HIDWORD(v18) = 1069757235;
  v19 = data->var4 * 0.15;
  v82 = 0;
  v92 = 0;
  v62 = 0;
  v72 = 0;
  v20 = v19;
  v21 = v17;
  *&v19 = v20;
  *&v18 = v17;
  if ([(CIRedEyeRepair *)self extractAndGatherProminencesWithRect:v14 face:v12 faceIndex:data left:index maxwindowsize:1 repairsize:&v92 returningRedHopper:v19 whiteHopper:v18 redChannel:&v72 redChannelMask:v59, v57])
  {
    if (self)
    {
      [(CIRedEyeRepair *)self repairDecisionWithFaceRecord:data left:1 redHopper:&v92 whiteHopper:&v72];
      v51 = v49;
      v52 = v50;
      if (![(CIRedEyeRepair *)self extractAndGatherProminencesWithRect:v11 face:v10 faceIndex:data left:index maxwindowsize:0 repairsize:&v82 returningRedHopper:COERCE_DOUBLE(__PAIR64__(DWORD1(v49) whiteHopper:LODWORD(v20))) redChannel:COERCE_DOUBLE(__PAIR64__(DWORD1(v50) redChannelMask:LODWORD(v21))), &v62, v55, v53])
      {
        return;
      }

      [(CIRedEyeRepair *)self repairDecisionWithFaceRecord:data left:0 redHopper:&v82 whiteHopper:&v62];
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      *&v22 = v21;
      if (([0 extractAndGatherProminencesWithRect:v11 face:v10 faceIndex:data left:index maxwindowsize:0 repairsize:&v82 returningRedHopper:COERCE_DOUBLE(LODWORD(v20)) whiteHopper:v22 redChannel:&v62 redChannelMask:{v55, v53}] & 1) == 0)
      {
        return;
      }

      v47 = 0u;
      v48 = 0u;
    }

    v49 = v47;
    v50 = v48;
    [(CIRedEyeRepair *)self extractAverageFaceY:data contrast:&v102 faceIndex:index];
    if (v23 == 0.0 || (v24 = v102, data->var9 = v23, data->var10 = v24, !tonalityCopy))
    {
      v33 = 0;
      standardTemplate = self->standardTemplate;
      v61 = standardTemplate;
    }

    else
    {
      v25 = (v23 * 0.3125);
      v26 = v24;
      v27 = v25 + v26 * -0.289099991;
      v28 = rintf(v27);
      v29 = v28 & ~(v28 >> 31);
      *&standardTemplate.lo = v25 + v26 * 0.289099991;
      *&standardTemplate.lo = *&standardTemplate.lo;
      v31 = rintf(*&standardTemplate.lo);
      if (v31 >= 255)
      {
        LODWORD(v31) = 255;
      }

      v61.lo = v28 & ~(v28 >> 31);
      v61.med = rintf(v29 + ((v31 - v29) * 0.5));
      v32 = 1431655766 * (v29 + v31 + v61.med + 1);
      v61.hi = v31;
      v61.average = HIDWORD(v32) + (v32 >> 63);
      v33 = 1;
    }

    standardTemplate.lo = LODWORD(data->var4);
    v34 = [(CIRedEyeRepair *)self applyEyeRepairWithEye:&v51 left:1 IOD:v33 autoPupilTonality:&v61 match:index faceIndex:&v72 whiteHopper:*&standardTemplate.lo];
    *&v35 = data->var4;
    v36 = [(CIRedEyeRepair *)self applyEyeRepairWithEye:&v49 left:0 IOD:v33 autoPupilTonality:&v61 match:index faceIndex:&v62 whiteHopper:v35];
    v37 = v36;
    if (self->lf->var10 && v34 != -1 && v36 != -1)
    {
      if ((BYTE9(v51) & 1) != 0 || (BYTE9(v49) & 1) != 0 || (v38 = [(CIRedEyeRepair *)self repairWithTag:v34], v39 = vcvts_n_f32_s32(HIDWORD(v38->repairs[0].pt2.y) + LODWORD(v38->repairs[0].pt2.y), 1uLL), v40 = vcvts_n_f32_s32(HIDWORD(v38->repairs[0].pt2.x) + LODWORD(v38->repairs[0].pt2.x), 1uLL), v41 = [(CIRedEyeRepair *)self repairWithTag:v37], v42 = vcvts_n_f32_s32(HIDWORD(v41->repairs[0].pt2.y) + LODWORD(v41->repairs[0].pt2.y), 1uLL), v43 = vcvts_n_f32_s32(HIDWORD(v41->repairs[0].pt2.x) + LODWORD(v41->repairs[0].pt2.x), 1uLL), (sqrt(((v39 - v42) * (v39 - v42) + (v40 - v43) * (v40 - v43))) / data->var4) >= 0.8))
      {
        v44 = 1;
        goto LABEL_26;
      }

      [(CIRedEyeRepair *)self undoRepair:v34];
      [(CIRedEyeRepair *)self undoRepair:v37];
      v34 = 0xFFFFFFFFLL;
      v37 = 0xFFFFFFFFLL;
    }

    v44 = v37 != -1;
    if (v34 != -1 || v37 != -1)
    {
      if (v34 == -1)
      {
        if (v37 == -1)
        {
          return;
        }

LABEL_27:
        v46 = [(CIRedEyeRepair *)self repairWithTag:v37];
        v46->repairs[0].fullNew.rowBytes = index;
        LOBYTE(v46->repairs[0].fullNew.size) = 0;
        v46->repairs[0].fullNew.samplesPerPixel = LODWORD(data->var4);
        return;
      }

LABEL_26:
      v45 = [(CIRedEyeRepair *)self repairWithTag:v34];
      v45->repairs[0].fullNew.rowBytes = index;
      LOBYTE(v45->repairs[0].fullNew.size) = 1;
      v45->repairs[0].fullNew.samplesPerPixel = LODWORD(data->var4);
      if (!v44)
      {
        return;
      }

      goto LABEL_27;
    }
  }
}

- (int)distanceMaskFromPolyToCb:(int)cb Cr:(int)cr
{
  if (!self->polyClosed)
  {
    return 0;
  }

  nLinears = self->nLinears;
  if (nLinears < 1)
  {
    v6 = 256;
  }

  else
  {
    v5 = &self->linearCoefficients[0][2];
    v6 = 256;
    do
    {
      v7 = *(v5 - 2) * (cb - 128) + *(v5 - 1) * (cr - 128);
      v8 = *v5;
      v5 += 3;
      v9 = v7 + v8;
      if (v9 < v6)
      {
        v6 = v9;
      }

      --nLinears;
    }

    while (nLinears);
  }

  if ((v6 & ~(v6 >> 31)) >= 255)
  {
    return 255;
  }

  else
  {
    return v6 & ~(v6 >> 31);
  }
}

- (void)prepareLineFunctions
{
  v57 = *MEMORY[0x1E69E9840];
  nPolyPoints = self->nPolyPoints;
  if (nPolyPoints < 1)
  {
    self->nLinears = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    polyPointConcave = self->polyPointConcave;
    polyPoints = self->polyPoints;
    v10 = self->polyPoints;
    p_y = &self->polyPoints[0].y;
    do
    {
      p_x = &polyPoints[(nPolyPoints + v5 - 1) % nPolyPoints].x;
      v13 = *p_x;
      v14 = p_x[1];
      v15 = *(p_y - 1);
      v16 = *p_y;
      if ((nPolyPoints - 1) == v5)
      {
        v17 = 0;
      }

      else
      {
        v17 = v5 + 1;
      }

      v18 = &polyPoints[v17].x;
      v19 = v15 - v13;
      v20 = v16 - v14;
      v21 = *v18 - v15;
      v22 = v18[1] - v16;
      v23 = (v19 * v22) - (v21 * v20);
      if (v23 >= 0.0)
      {
        if (v23 > 0.0)
        {
          ++v7;
        }
      }

      else
      {
        ++v6;
      }

      v56[v5] = v23;
      p_y += 2;
      v5 = (v5 + 1);
    }

    while (nPolyPoints != v5);
    if (v6 && v7)
    {
      v24 = v56;
      v25 = nPolyPoints;
      while (1)
      {
        v26 = *v24;
        *polyPointConcave = 0;
        if (v26 >= 0.0)
        {
          break;
        }

        if (v7 > v6)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++polyPointConcave;
        ++v24;
        if (!--v25)
        {
          goto LABEL_24;
        }
      }

      v27 = v26 > 0.0 && v7 <= v6;
      if (!v27)
      {
        goto LABEL_17;
      }

LABEL_16:
      *polyPointConcave = 1;
      goto LABEL_17;
    }

LABEL_24:
    p_c = &self->polyLines[0].c;
    v29 = 1;
    do
    {
      v30 = v29;
      if (v29 == nPolyPoints)
      {
        v30 = 0;
      }

      v31 = &polyPoints[v30].x;
      if (v7 <= v6)
      {
        v32 = &v10->x;
      }

      else
      {
        v32 = v31;
      }

      if (v7 > v6)
      {
        v31 = &v10->x;
      }

      v33 = *v32;
      v34 = v32[1];
      v35 = *v31;
      v36 = v31[1];
      v37 = (v36 - v34);
      v38 = 1.0 / sqrt(v37 * v37 + (v35 - v33) * (v35 - v33));
      v39 = (v33 * v36) - (v34 * v35);
      v40.f64[0] = -v37;
      v40.f64[1] = (v35 - v33);
      v41 = v38 * v39;
      *(p_c - 1) = vcvt_f32_f64(vmulq_n_f64(v40, v38));
      *p_c = v41;
      p_c += 3;
      ++v10;
      ++v29;
    }

    while (v29 - nPolyPoints != 1);
    v42 = 0;
    self->nLinears = 0;
    v43 = &self->polyPoints[0].y;
    v44 = &self->polyLines[0].c;
    v45 = 1;
    v2 = 255.0;
    v46 = vdup_n_s32(0xC3800000);
    do
    {
      v47 = *(v43 - 1);
      if (v45 == nPolyPoints)
      {
        v48 = 0;
      }

      else
      {
        v48 = v45;
      }

      v49 = &polyPoints[v48].x;
      v50 = *v49;
      if ((v47 <= 255.0 || v50 <= 255.0) && (v47 >= 0.0 || v50 >= 0.0) && (*v43 <= 255.0 || v49[1] <= 255.0))
      {
        nPolyPoints = self->linearCoefficients[v42];
        v51 = *(v44 - 2);
        v52 = *v44 + vaddv_f32(v51) * 128.0;
        *nPolyPoints = vcvt_s32_f32(vrnda_f32(vmul_f32(v51, v46)));
        *(nPolyPoints + 8) = llroundf((v52 * -256.0) + 255.0);
        v42 = self->nLinears + 1;
        self->nLinears = v42;
        LODWORD(nPolyPoints) = self->nPolyPoints;
      }

      v43 += 2;
      v27 = v45++ < nPolyPoints;
      v44 += 3;
    }

    while (v27);
  }

  LODWORD(v53) = 0;
  v54 = 0;
  do
  {
    v55 = 0;
    v53 = v53;
    do
    {
      self->CbCrDistanceTable[v53++] = [(CIRedEyeRepair *)self distanceMaskFromPolyToCb:v54 Cr:v55++, v2];
    }

    while (v55 != 256);
    v54 = (v54 + 1);
  }

  while (v54 != 256);
}

- (void)skinInit
{
  self->nPolyPoints = 4;
  self->polyPoints[0].x = 125.578;
  *&self->polyPoints[0].y = xmmword_19CF2B8C0;
  *&self->polyPoints[1].y = xmmword_19CF2B8D0;
  *&self->polyPoints[2].y = xmmword_19CF2B8E0;
  self->polyPoints[3].y = 138.85;
  self->polyClosed = 1;
  [(CIRedEyeRepair *)self prepareLineFunctions];
}

- (int)redEyeRemovalWithData:(id *)data
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = *&data->var17.var2;
  v79[0] = *&data->var17.var0;
  v79[1] = v3;
  v79[2] = *&data->var17.var6;
  v5 = *&data->var18.var0;
  v4 = *&data->var18.var2;
  if ((BYTE4(v4) - v4))
  {
    v6 = v4 - 0x100000000;
  }

  else
  {
    v6 = *&data->var18.var2;
  }

  v7 = HIDWORD(v5) - ((BYTE4(v5) - v5) & 1);
  if (SHIDWORD(v6) <= v6 || v7 <= v5)
  {
    return -1;
  }

  v11 = *&data->var18.var0;
  v12 = *&data->var11.var0;
  v13 = *&data->var11.var2;
  p_lastClickYBitmap = &self->lastClickYBitmap;
  v15 = v11 | (v7 << 32);
  if (![(CIRedEyeRepair *)self extractReusableAlignedBitmapsAroundPoint:&self->lf->var2 YR:v15 subYBitmap:v6 subCbCrBitmap:&self->lastClickYBitmap, &self->lastClickCbCrBitmap])
  {
    return -1;
  }

  v66 = p_lastClickYBitmap;
  v16 = p_lastClickYBitmap;
  if (data->var14 != 2)
  {
    v17 = malloc_type_malloc(0x28uLL, 0x1010040829CE571uLL);
    if (!v17)
    {
      return -1;
    }

    v18 = v17;
    var14 = data->var14;
    v16 = v66;
    if (var14 != 2)
    {
      if (var14 == 1)
      {
        p_lastClickCbCrBitmap = &self->lastClickCbCrBitmap;
        v21 = v66;
        v22 = v18;
        v23 = 5;
      }

      else
      {
        if (var14)
        {
LABEL_17:
          v16 = v18;
          goto LABEL_18;
        }

        p_lastClickCbCrBitmap = &self->lastClickCbCrBitmap;
        v21 = v66;
        v22 = v18;
        v23 = 0;
      }

      computeRedChannel(v21, p_lastClickCbCrBitmap, v22, v23);
      goto LABEL_17;
    }
  }

LABEL_18:
  v62 = v13;
  v63 = v12;
  v85 = 0;
  v86 = 0;
  v84 = 0uLL;
  v83[0] = 0;
  v83[1] = 0;
  v80 = 0u;
  v81 = 0u;
  memset(v82, 0, sizeof(v82));
  *__dst = 0u;
  v77 = 0u;
  v78 = 0;
  *v73 = 0u;
  v74 = 0u;
  v75 = 0;
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v64 = v16;
  v65 = recomputeBitmask(v16, data->var4 - v6, (data->var5 - v11), data->var6, &v80);
  if (!v65)
  {
    v80 = 0uLL;
    *&v81 = 0;
    *(v82 + 4) = makeBitmapRect(0, 0, 0, 0);
    *(v82 + 12) = v24;
  }

  v25 = data->var14;
  if (!v25)
  {
    var9 = data->var9;
    if (var9)
    {
      v27 = recomputeBitmask(v66, data->var7 - v6, (data->var8 - v11), var9, 0);
    }

    else
    {
      v27 = 0;
    }

    v28 = cornealReflectionBitmask(v27, v64, v81);
    if (v28)
    {
      v29 = v28;
      v30 = bitmaskBoundingBitmapRect(v28);
      v32 = intersectBitmapRects(v30, v31, *(v82 + 4));
      if (v34 > v33 && SHIDWORD(v32) > v32)
      {
        infillChannelWithBitmask(v64, v29, 0, 0);
      }

      termBitmask(v29);
    }

    if (v27)
    {
      termBitmask(v27);
    }
  }

  initBitmap(__dst, HIDWORD(v6) - v6, v7 - v11, 1, 1, 100.0);
  initBitmap(v73, (HIDWORD(v6) - v6) / 2, (v7 - v11) / 2, 2, 1, 100.0);
  memmove(__dst[0], self->lastClickYBitmap.baseAddress, self->lastClickYBitmap.size);
  memmove(v73[0], self->lastClickCbCrBitmap.baseAddress, self->lastClickCbCrBitmap.size);
  v35 = computePupilAlphaMap(v64, v25, v81, v79, &v86, &v85 + 1);
  if (v35)
  {
    Alpha = v35;
    computeBorderForAlpha(v64, v35, v88, &v85);
    v37 = v66;
  }

  else
  {
    Alpha = extractAlpha(v64, v65, v88, &v85);
    v37 = v66;
    if (!Alpha)
    {
      if (v65)
      {
        termBitmask(v65);
      }

      if (v25 != 2)
      {
        termBitmap(v64);
        free(v64);
      }

      termBitmap(__dst);
      v50 = v73;
      goto LABEL_60;
    }
  }

  HIDWORD(v86) = 0;
  var15 = data->var15;
  v39 = *&data->var12.var0;
  v67 = *&data->var12.var2;
  if (var15 == 2)
  {
    v42 = &v68;
    if (!data->var10)
    {
      v42 = 0;
    }

    v41 = whiteEyeCancellation(v37, &self->lastClickCbCrBitmap, data->var16, v15, v6, Alpha, v88, v85, v65, &v80, __dst, v73, v79, v42, &v86 + 1);
  }

  else
  {
    v40 = 0;
    if (var15)
    {
      goto LABEL_44;
    }

    if (data->var10 || data->var14 == 1)
    {
      buildTransferTable(v39, v67, v63 | (rintf(v63 + ((v62 - v63) * ((HIDWORD(v39) - v39) / (v67 - v39)))) << 32), v62, v87);
    }

    else
    {
      var13 = data->var13;
      if (var13 == -1)
      {
        LODWORD(v54) = 40;
      }

      else
      {
        v53 = var13 * 0.52;
        v54 = rintf(v53);
      }

      if (v54 < SHIDWORD(v67) && HIDWORD(v67))
      {
        v55 = 0;
        v56 = v54 / SHIDWORD(v67);
        do
        {
          if (v55 < 0xC9)
          {
            v57 = rintf(v56 * v55);
            if (v57 >= 255)
            {
              LOBYTE(v57) = -1;
            }

            if (v55 >= 0xB5)
            {
              v58 = v56 + ((v55 - 180) / 20.0) * (1.0 - v56);
              v57 = rintf(v55 * v58);
              if (v57 >= 255)
              {
                LOBYTE(v57) = -1;
              }
            }
          }

          else
          {
            LOBYTE(v57) = v55;
          }

          v87[v55++] = v57;
        }

        while (v55 != 256);
      }

      else
      {
        v59 = 0;
        v60 = xmmword_19CF2B8B0;
        v61.i64[0] = 0x1010101010101010;
        v61.i64[1] = 0x1010101010101010;
        do
        {
          *&v87[v59] = v60;
          v59 += 16;
          v60 = vaddq_s8(v60, v61);
        }

        while (v59 != 256);
      }
    }

    redEyeCancellation(v37, &self->lastClickCbCrBitmap, Alpha, __dst, v73, v87, &v86 + 1);
  }

  v40 = v41;
LABEL_44:
  if (v65)
  {
    termBitmask(v65);
  }

  if (data->var14 != 2)
  {
    termBitmap(v64);
    free(v64);
  }

  if (![(CIRedEyeRepair *)self computeTrimmedBitmaps:&self->lf->var2 newY:__dst newCbCr:v73 IR:v15 newTrimY:v6 newTrimCbCr:v71 returningYR:v69 andCbCrR:&v84, v83])
  {
    termBitmap(__dst);
    termBitmap(v73);
    v50 = Alpha;
LABEL_60:
    termBitmap(v50);
    return -1;
  }

  nRepairs = self->nRepairs;
  if (nRepairs > 31)
  {
    v46 = 0;
  }

  else
  {
    v44 = self + 400 * nRepairs;
    nextRepairTag = self->nextRepairTag;
    self->lastRepairTag = nextRepairTag;
    *(v44 + 18) = nextRepairTag;
    v46 = v44 + 72;
    self->lastRepairIOD = data->var16;
    self->nRepairs = nRepairs + 1;
    self->nextRepairTag = nextRepairTag + 1;
    v47.i64[0] = *&data->var0;
    v47.i64[1] = HIDWORD(*&data->var0);
    *(v46 + 8) = vcvtq_f64_s64(v47);
    v48 = data->var14;
    *(v46 + 6) = var15;
    *(v46 + 7) = v48;
    v49 = HIDWORD(v86);
    *(v46 + 8) = v40;
    *(v46 + 9) = v49;
    *(v46 + 5) = v84;
    initBitmap((v46 + 40), HIDWORD(v84) - DWORD2(v84), DWORD1(v84) - v84, 4, 1, 100.0);
    ConvertYCbCrtoREDEYEFORMAT(v71, v69, (v46 + 40), self->lf->var8);
    *(v46 + 12) = v39;
    *(v46 + 13) = v67;
    v46[112] = data->var10;
    *(v46 + 116) = v63;
    *(v46 + 124) = v62;
  }

  termBitmap(Alpha);
  free(Alpha);
  termBitmap(__dst);
  termBitmap(v73);
  termBitmap(v71);
  termBitmap(v69);
  if (v46)
  {
    return *v46;
  }

  return -1;
}

- (void)autoRepairWithFaceArray:(id)array
{
  *&v90[1892] = *MEMORY[0x1E69E9840];
  v3 = [array count];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  if (v3 >= 1)
  {
    v5 = 0;
    v84 = v3 & 0x7FFFFFFF;
    do
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(array, "objectAtIndex:", v5)}];
      [v4 addObject:v6];
      v7 = [v6 valueForKey:@"leftEyeX"];
      v8 = [v6 valueForKey:@"leftEyeY"];
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      v10 = !v9;
      if (v9)
      {
        intValue2 = 0;
        intValue = 0;
      }

      else
      {
        v11 = v8;
        intValue = [v7 intValue];
        intValue2 = [v11 intValue];
      }

      v14 = [v6 valueForKey:@"rightEyeX"];
      v15 = [v6 valueForKey:@"rightEyeY"];
      if (v14)
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        if ((v10 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        v17 = v15;
        intValue3 = [v14 intValue];
        intValue4 = [v17 intValue];
        if (v10)
        {
          v20 = intValue4;
          v21 = [v6 valueForKey:@"centerX"];
          v22 = [v6 valueForKey:@"centerY"];
          if (v21 && (v23 = v22) != 0)
          {
            LODWORD(v21) = [v21 intValue];
            LODWORD(v23) = [v23 intValue];
          }

          else
          {
            v21 = rintf(vcvts_n_f32_s32(intValue3 + intValue, 1uLL) - vcvts_n_f32_s32(v20 - intValue2, 1uLL));
            v23 = rintf(vcvts_n_f32_s32(intValue3 - intValue, 1uLL) + vcvts_n_f32_s32(v20 + intValue2, 1uLL));
            [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v21), @"centerX"}];
            [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v23), @"centerY"}];
          }

          v24 = [v6 valueForKey:@"mouthCenterX"];
          v25 = [v6 valueForKey:@"mouthCenterY"];
          if (!v24 || !v25)
          {
            [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", rintf(v21 - vcvts_n_f32_s32(v20 - intValue2, 1uLL))), @"mouthCenterX"}];
            [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", rintf(vcvts_n_f32_s32(intValue3 - intValue, 1uLL) + v23)), @"mouthCenterY"}];
          }
        }
      }

      ++v5;
    }

    while (v84 != v5);
  }

  v26 = v4;
  self->faces = v26;
  v27 = [(NSArray *)v26 count];
  if (v27 >= 1)
  {
    v28 = 0;
    v87 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    lf = self->lf;
    var0 = lf->var5.var0;
    var2 = lf->var5.var2;
    v33 = v27 & 0x7FFFFFFF;
    v34 = v90;
    v80 = v33;
    do
    {
      v35 = [(NSArray *)self->faces objectAtIndex:v28];
      if (v28 <= 0x1F)
      {
        v37 = v35;
        v38 = [v35 valueForKey:@"leftEyeX"];
        v39 = [v37 valueForKey:@"leftEyeY"];
        if (v38)
        {
          v40 = v39 == 0;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          intValue6 = 0;
          intValue5 = 0;
          v87 = 1;
        }

        else
        {
          v41 = v39;
          intValue5 = [v38 intValue];
          intValue6 = [v41 intValue];
        }

        v42 = [v37 valueForKey:@"leftEyeSize"];
        if (v42)
        {
          [v42 floatValue];
          v44 = v43;
        }

        else
        {
          v44 = 0.0;
        }

        v45 = [v37 valueForKey:@"rightEyeX"];
        v46 = [v37 valueForKey:@"rightEyeY"];
        intValue8 = 0;
        v36 = 1;
        if (v45)
        {
          v48 = v46;
          intValue7 = 0;
          if (v46)
          {
            intValue7 = [v45 intValue];
            intValue8 = [v48 intValue];
            v36 = v29;
          }
        }

        else
        {
          intValue7 = 0;
        }

        v50 = [v37 valueForKey:@"rightEyeSize"];
        if (v50)
        {
          [v50 floatValue];
        }

        else
        {
          v51 = 0.0;
        }

        if ((v87 | v36))
        {
          *(v34 - 28) = 1;
          v53 = intValue6;
          v52 = intValue5;
          if (v36)
          {
            *&v51 = v44;
          }

          else
          {
            v52 = intValue7;
            v53 = intValue8;
          }

          *(v34 - 6) = v52 - var2;
          *(v34 - 5) = v53 - var0;
          *(v34 - 4) = LODWORD(v51);
          v31 = v28 + 1;
        }

        else
        {
          v54 = [objc_msgSend(v37 valueForKey:{@"mouthCenterX", v51), "intValue"}];
          v55 = [objc_msgSend(v37 valueForKey:{@"mouthCenterY", "intValue"}];
          v56 = [objc_msgSend(v37 valueForKey:{@"centerX", "intValue"}];
          v57 = [objc_msgSend(v37 valueForKey:{@"centerY", "intValue"}];
          v36 = 0;
          v87 = 0;
          v34[4] = intValue5 - var2;
          v34[5] = intValue6 - var0;
          v34[6] = intValue7 - var2;
          v34[7] = intValue8 - var0;
          *(v34 - 28) = 0;
          *(v34 - 2) = v54 - var2;
          *(v34 - 1) = v55 - var0;
          *v34 = v56 - var2;
          v34[1] = v57 - var0;
          *(v34 - 3) = sqrtf(((intValue6 - intValue8) * (intValue6 - intValue8) + (intValue5 - intValue7) * (intValue5 - intValue7)));
          v31 = v30 + 1;
        }

        v33 = v80;
      }

      else
      {
        v36 = v29;
      }

      ++v28;
      ++v30;
      v34 += 15;
      v29 = v36;
    }

    while (v33 != v28);
    if (v31 >= 1)
    {
      v58 = 0;
      v59 = &v89;
      do
      {
        if (*v59 == 1)
        {
          self->iFaceIndex = v58;
          self->iLeft = 1;
          v60 = [(CIRedEyeRepair *)self redEyeRemovalWithPoint:0 alignPupilShades:0 matching:0 force:0xFFFFFFFFLL IOD:1 tap:v59[1], v59[2], 0.0];
          if (v60 != -1)
          {
            v61 = v60;
            v62 = [(CIRedEyeRepair *)self repairWithTag:v60];
            if (((*&v62->repairs[0].data.O.orientation / 255.0) * ((v62->repairs[0].data.CR.maxrow - LODWORD(v62->repairs[0].BI.centroid.x)) / 255.0)) < 0.0153787 || *(&v62->repairs[0].data.O.bproc + 1) < 0.45)
            {
              [(CIRedEyeRepair *)self undoRepair:v61];
            }
          }
        }

        else if (*(v59 + 4) >= 20.0)
        {
          [CIRedEyeRepair upperRepairDistance:?];
          v64 = rintf(v63);
          v65 = alignedBitmapRectAroundPoint(v59[11], v59[12], v64);
          v67 = v66;
          v68 = alignedBitmapRectAroundPoint(v59[13], v59[14], v64);
          v70 = v69;
          v71 = clipBitmapRectToBitmapBounds(v65, v67, &self->lf->var2);
          v72 = evenBitmapRect(v71);
          v74 = v73;
          v75 = clipBitmapRectToBitmapBounds(v68, v70, &self->lf->var2);
          v76 = evenBitmapRect(v75);
          LODWORD(v79) = v58;
          LODWORD(v77) = 1.0;
          [(CIRedEyeRepair *)self autoRepairExtractAndSearchLeft:v72 right:v74 data:v76 repairSize:v78 autoPupilTonality:v59 faceIndex:self->autoPupilTonality, v77, v79];
        }

        ++v58;
        v59 += 15;
      }

      while (v31 != v58);
    }
  }
}

- (id)repairArray
{
  v47[37] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->nRepairs];
  if (self->nRepairs >= 1)
  {
    v4 = 0;
    lf = self->lf;
    var4 = lf->var4;
    var3 = lf->var3;
    v8 = 1.0 / var4;
    v9 = 1.0 / var3;
    v10 = var4 - 1;
    v11 = 1.0 / sqrt((var4 * var4 + var3 * var3));
    v12 = v11;
    var2 = lf->var5.var2;
    var0 = lf->var5.var0;
    p_data = &self->repairs[0].data;
    do
    {
      v46[0] = @"pointX";
      *&v11 = v9 * (p_data->origHitX + var2);
      v47[0] = [MEMORY[0x1E696AD98] numberWithFloat:{v11, @"pointX"}];
      v46[1] = @"pointY";
      *&v16 = v8 * (v10 - var0 - p_data->origHitY);
      v47[1] = [MEMORY[0x1E696AD98] numberWithFloat:v16];
      v46[2] = @"forceCase";
      v47[2] = [MEMORY[0x1E696AD98] numberWithInt:p_data->characterizeCase];
      v46[3] = @"size";
      v17 = sqrt(p_data[-1].mTemplate.med / 3.14159265) * v12;
      *&v17 = v17;
      v47[3] = [MEMORY[0x1E696AD98] numberWithFloat:v17];
      v46[4] = @"pupilShadeAlignment";
      v47[4] = [MEMORY[0x1E696AD98] numberWithBool:p_data->align];
      v46[5] = @"pupilShadeLow";
      *&v18 = p_data->mTemplate.lo * 0.0039216;
      v47[5] = [MEMORY[0x1E696AD98] numberWithFloat:v18];
      v46[6] = @"pupilShadeMedium";
      *&v19 = p_data->mTemplate.med * 0.0039216;
      v47[6] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      v46[7] = @"pupilShadeHigh";
      *&v20 = p_data->mTemplate.hi * 0.0039216;
      v47[7] = [MEMORY[0x1E696AD98] numberWithFloat:v20];
      v46[8] = @"interocularDistance";
      *&v21 = p_data->IOD * v12;
      v47[8] = [MEMORY[0x1E696AD98] numberWithFloat:v21];
      v46[9] = @"snappedX";
      *&v22 = v9 * (p_data->snapHitX + var2);
      v47[9] = [MEMORY[0x1E696AD98] numberWithFloat:v22];
      v46[10] = @"snappedY";
      *&v23 = v8 * (v10 - var0 - p_data->snapHitY);
      v47[10] = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      v46[11] = @"bitmaskX";
      *&v24 = v9 * (p_data->bitmaskSeedX + var2);
      v47[11] = [MEMORY[0x1E696AD98] numberWithFloat:v24];
      v46[12] = @"bitmaskY";
      *&v25 = v8 * (v10 - var0 - p_data->bitmaskSeedY);
      v47[12] = [MEMORY[0x1E696AD98] numberWithFloat:v25];
      v46[13] = @"bitmaskThreshold";
      *&v26 = p_data->bitmaskThreshold * 0.0039216;
      v47[13] = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      v46[14] = @"cornealReflectionX";
      *&v27 = v9 * (p_data->cornealReflectionSeedX + var2);
      v47[14] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
      v46[15] = @"cornealReflectionY";
      *&v28 = v8 * (v10 - var0 - p_data->cornealReflectionSeedY);
      v47[15] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
      v46[16] = @"cornealReflectionThreshold";
      *&v29 = p_data->cornealReflectionThreshold * 0.0039216;
      v47[16] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      v46[17] = @"pupilShadeAverage";
      *&v30 = p_data->mTemplate.average * 0.0039216;
      v47[17] = [MEMORY[0x1E696AD98] numberWithFloat:v30];
      v46[18] = @"existingPupilLow";
      *&v31 = p_data->existingTemplate.lo * 0.0039216;
      v47[18] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      v46[19] = @"existingPupilMedium";
      *&v32 = p_data->existingTemplate.med * 0.0039216;
      v47[19] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      v46[20] = @"existingPupilHigh";
      *&v33 = p_data->existingTemplate.hi * 0.0039216;
      v47[20] = [MEMORY[0x1E696AD98] numberWithFloat:v33];
      v46[21] = @"existingPupilAverage";
      *&v34 = p_data->existingTemplate.average * 0.0039216;
      v47[21] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
      v46[22] = @"averageSkinLuminance";
      *&v35 = p_data->averageSkinMapY * 0.0039216;
      v47[22] = [MEMORY[0x1E696AD98] numberWithFloat:v35];
      v46[23] = @"finalEyeCase";
      v47[23] = [MEMORY[0x1E696AD98] numberWithInt:p_data->finalEyeCase];
      v46[24] = @"imageOrientation";
      v47[24] = [MEMORY[0x1E696AD98] numberWithInt:p_data->O.orientation];
      v46[25] = @"imageSignalToNoiseRatio";
      *&v36 = p_data->O.SNR;
      v47[25] = [MEMORY[0x1E696AD98] numberWithFloat:v36];
      v46[26] = @"imageSpecialValue";
      v47[26] = [MEMORY[0x1E696AD98] numberWithBool:p_data->O.N90];
      v46[27] = @"searchRectangleMinimumY";
      *&v37 = v8 * (v10 - var0 - p_data->CR.minrow);
      v47[27] = [MEMORY[0x1E696AD98] numberWithFloat:v37];
      v46[28] = @"searchRectangleMaximumY";
      *&v38 = v8 * (v10 - var0 - p_data->CR.maxrow);
      v47[28] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
      v46[29] = @"searchRectangleMinimumX";
      *&v39 = v9 * (p_data->CR.mincol + var2);
      v47[29] = [MEMORY[0x1E696AD98] numberWithFloat:v39];
      v46[30] = @"searchRectangleMaximumX";
      *&v40 = v9 * (p_data->CR.maxcol + var2);
      v47[30] = [MEMORY[0x1E696AD98] numberWithFloat:v40];
      v46[31] = @"fullImageWidth";
      v47[31] = [MEMORY[0x1E696AD98] numberWithInt:self->lf->var3];
      v46[32] = @"fullImageHeight";
      v47[32] = [MEMORY[0x1E696AD98] numberWithInt:self->lf->var4];
      v46[33] = @"repairRectangleMinimumY";
      *&v41 = v8 * (v10 - var0 - LODWORD(p_data[-1].O.bitmapproc_context));
      v47[33] = [MEMORY[0x1E696AD98] numberWithFloat:v41];
      v46[34] = @"repairRectangleMaximumY";
      *&v42 = v8 * (v10 - var0 - HIDWORD(p_data[-1].O.bitmapproc_context));
      v47[34] = [MEMORY[0x1E696AD98] numberWithFloat:v42];
      v46[35] = @"repairRectangleMinimumX";
      *&v43 = v9 * (LODWORD(p_data[-1].O.bproc) + var2);
      v47[35] = [MEMORY[0x1E696AD98] numberWithFloat:v43];
      v46[36] = @"repairRectangleMaximumX";
      *&v44 = v9 * (HIDWORD(p_data[-1].O.bproc) + var2);
      v47[36] = [MEMORY[0x1E696AD98] numberWithFloat:v44];
      [v3 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v47, v46, 37)}];
      ++v4;
      p_data = (p_data + 400);
    }

    while (v4 < self->nRepairs);
  }

  return v3;
}

- (BOOL)getFloat:(float *)float d:(id)d s:(id)s
{
  v6 = [d valueForKey:s];
  if (v6)
  {
    [v6 floatValue];
    *float = v7;
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)getInt:(int *)int d:(id)d s:(id)s
{
  v6 = [d valueForKey:s];
  v7 = v6;
  if (v6)
  {
    *int = [v6 intValue];
  }

  return v7 != 0;
}

- (BOOL)getBool:(BOOL *)bool d:(id)d s:(id)s
{
  v6 = [d valueForKey:s];
  v7 = v6;
  if (v6)
  {
    *bool = [v6 BOOLValue];
  }

  return v7 != 0;
}

- (void)orientRectangleMinX:(float *)x maxX:(float *)maxX minY:(float *)y maxY:(float *)maxY
{
  if (self->lf->var9 == 6)
  {
    v6 = *x;
    v7 = *maxX;
    *x = *maxY;
    *maxX = *y;
    *y = 1.0 - v6;
    *maxY = 1.0 - v7;
  }
}

- (void)orientPointX:(float *)x Y:(float *)y
{
  if (self->lf->var9 == 6)
  {
    v4 = *x;
    *x = *y;
    *y = 1.0 - v4;
  }
}

- (void)executeRepair:(id)repair
{
  v126[0] = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0.0;
  v119 = 0;
  v118 = 0;
  lf = self->lf;
  var4 = lf->var4;
  var3 = lf->var3;
  var2 = lf->var5.var2;
  var0 = lf->var5.var0;
  if ([(CIRedEyeRepair *)self getFloat:&v123 d:repair s:@"pointX"])
  {
    if ([(CIRedEyeRepair *)self getFloat:&v122 + 4 d:repair s:@"pointY"])
    {
      [(CIRedEyeRepair *)self orientPointX:&v123 Y:&v122 + 4];
      v10 = *(&v122 + 1);
      v11 = *&v123;
      if ([(CIRedEyeRepair *)self getInt:&v125 + 4 d:repair s:@"forceCase"])
      {
        v12 = HIDWORD(v125);
        if ([(CIRedEyeRepair *)self getBool:v126 d:repair s:@"pupilShadeAlignment"])
        {
          v13 = v126[0];
          if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"pupilShadeLow"])
          {
            v14 = *&v124;
            if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"pupilShadeMedium"])
            {
              v15 = *&v124;
              if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"pupilShadeHigh"])
              {
                v16 = *&v124;
                if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"interocularDistance"])
                {
                  v17 = *&v124;
                  if ([(CIRedEyeRepair *)self getFloat:&v123 d:repair s:@"snappedX"])
                  {
                    if ([(CIRedEyeRepair *)self getFloat:&v122 + 4 d:repair s:@"snappedY"])
                    {
                      [(CIRedEyeRepair *)self orientPointX:&v123 Y:&v122 + 4];
                      v19 = *(&v122 + 1);
                      v18 = *&v123;
                      if ([(CIRedEyeRepair *)self getFloat:&v123 d:repair s:@"bitmaskX"])
                      {
                        if ([(CIRedEyeRepair *)self getFloat:&v122 + 4 d:repair s:@"bitmaskY"])
                        {
                          [(CIRedEyeRepair *)self orientPointX:&v123 Y:&v122 + 4];
                          v84 = *&v123;
                          v86 = *(&v122 + 1);
                          if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"bitmaskThreshold"])
                          {
                            v82 = *&v124;
                            if ([(CIRedEyeRepair *)self getFloat:&v123 d:repair s:@"cornealReflectionX"])
                            {
                              if ([(CIRedEyeRepair *)self getFloat:&v122 + 4 d:repair s:@"cornealReflectionY"])
                              {
                                [(CIRedEyeRepair *)self orientPointX:&v123 Y:&v122 + 4];
                                v78 = *&v123;
                                v80 = *(&v122 + 1);
                                if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"cornealReflectionThreshold"])
                                {
                                  v76 = *&v124;
                                  if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"pupilShadeAverage"])
                                  {
                                    v74 = *&v124;
                                    if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"existingPupilLow"])
                                    {
                                      v72 = *&v124;
                                      if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"existingPupilMedium"])
                                      {
                                        v70 = *&v124;
                                        if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"existingPupilHigh"])
                                        {
                                          v68 = *&v124;
                                          if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"existingPupilAverage"])
                                          {
                                            v67 = *&v124;
                                            if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"averageSkinLuminance"])
                                            {
                                              v66 = *&v124;
                                              if ([(CIRedEyeRepair *)self getInt:&v125 + 4 d:repair s:@"finalEyeCase"])
                                              {
                                                v20 = HIDWORD(v125);
                                                if ([(CIRedEyeRepair *)self getInt:&v125 + 4 d:repair s:@"imageOrientation"])
                                                {
                                                  v21 = HIDWORD(v125);
                                                  if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"imageSignalToNoiseRatio"])
                                                  {
                                                    v65 = *&v124;
                                                    if ([(CIRedEyeRepair *)self getBool:v126 d:repair s:@"imageSpecialValue"])
                                                    {
                                                      v64 = v126[0];
                                                      if ([(CIRedEyeRepair *)self getFloat:&v121 d:repair s:@"searchRectangleMinimumY"])
                                                      {
                                                        if ([(CIRedEyeRepair *)self getFloat:&v120 d:repair s:@"searchRectangleMaximumY"])
                                                        {
                                                          if ([(CIRedEyeRepair *)self getFloat:&v122 d:repair s:@"searchRectangleMinimumX"])
                                                          {
                                                            if ([(CIRedEyeRepair *)self getFloat:&v121 + 4 d:repair s:@"searchRectangleMaximumX"])
                                                            {
                                                              v63 = var4;
                                                              [(CIRedEyeRepair *)self orientRectangleMinX:&v122 maxX:&v121 + 4 minY:&v121 maxY:&v120];
                                                              v22 = var4 - 1;
                                                              v23 = var4 - 1 - var0 - rintf(*&v121 * var4);
                                                              v24 = var4 - 1 - var0 - rintf(v120 * var4);
                                                              if (v23 < v24)
                                                              {
                                                                v25 = var3;
                                                                v26 = rintf(*&v122 * var3);
                                                                v27 = rintf(*(&v121 + 1) * var3);
                                                                if (v26 < v27)
                                                                {
                                                                  var1 = v27 - var2;
                                                                  v29 = self->lf;
                                                                  if (var1 >= v29->var2.var1)
                                                                  {
                                                                    var1 = v29->var2.var1;
                                                                  }

                                                                  v30 = v23 & ~(v23 >> 31);
                                                                  v31 = v29->var2.var2;
                                                                  if (v24 < v31)
                                                                  {
                                                                    v31 = v24;
                                                                  }

                                                                  v61 = v31 - ((v31 - v30) & 1);
                                                                  v62 = v30;
                                                                  v58 = v61 - v30;
                                                                  if (v61 - v30 >= 1)
                                                                  {
                                                                    v59 = var1 - ((var1 - ((v26 - var2) & ~((v26 - var2) >> 31))) & 1);
                                                                    v60 = (v26 - var2) & ~((v26 - var2) >> 31);
                                                                    if (v59 > v60)
                                                                    {
                                                                      v57 = rintf(v11 * v25) - var2;
                                                                      if (v57 >= v60 && v57 < v59)
                                                                      {
                                                                        v56 = v22 - var0 - rintf(v10 * v63);
                                                                        if (v56 >= v30 && v56 < v61 && v12 <= 2)
                                                                        {
                                                                          v55 = rintf(v14 * 255.0);
                                                                          if ((v55 & 0x80000000) == 0)
                                                                          {
                                                                            v54 = rintf(v15 * 255.0);
                                                                            if (v54 >= v55)
                                                                            {
                                                                              v53 = rintf(v16 * 255.0);
                                                                              if (v53 >= v54 && v53 <= 255)
                                                                              {
                                                                                v75 = rintf(v74 * 255.0);
                                                                                if ((v75 & 0xFFFFFF00) == 0)
                                                                                {
                                                                                  v32 = sqrtf((var4 * var4 + var3 * var3));
                                                                                  v33 = v32 * v17;
                                                                                  if ((v32 * v17) >= 0.0 && v33 <= 4000.0)
                                                                                  {
                                                                                    v34 = rintf(v18 * v25) - var2;
                                                                                    if (v34 >= v60 && v34 < v59)
                                                                                    {
                                                                                      v35 = v22 - var0 - rintf(v19 * v63);
                                                                                      if (v35 >= v30 && v35 < v61)
                                                                                      {
                                                                                        v85 = rintf(v84 * v25) - var2;
                                                                                        if (v85 >= v60 && v85 < v59)
                                                                                        {
                                                                                          v87 = v22 - var0 - rintf(v86 * v63);
                                                                                          if (v87 >= v30 && v87 < v61)
                                                                                          {
                                                                                            v52 = rintf(v82 * 255.0);
                                                                                            if (v52 <= 0xFF)
                                                                                            {
                                                                                              v83 = rintf(v78 * v25) - var2;
                                                                                              v81 = v22 - var0 - rintf(v80 * v63);
                                                                                              v79 = rintf(v76 * 255.0);
                                                                                              if (v12 || v83 >= v60 && v83 < v59 && v81 >= v30 && v81 < v61 && v79 <= 0xFF)
                                                                                              {
                                                                                                v36 = rintf(v72 * 255.0);
                                                                                                if ((v36 & 0x80000000) == 0)
                                                                                                {
                                                                                                  v37 = rintf(v70 * 255.0);
                                                                                                  if (v37 >= v36)
                                                                                                  {
                                                                                                    v77 = rintf(v68 * 255.0);
                                                                                                    if (v77 >= v37 && v77 <= 255)
                                                                                                    {
                                                                                                      v73 = rintf(v67 * 255.0);
                                                                                                      if (v73 <= 0xFF)
                                                                                                      {
                                                                                                        v71 = rintf(v66 * 255.0);
                                                                                                        if (v71 <= 0xFF && v20 <= 2 && (v21 - 9) >= 0xFFFFFFF8 && v65 > 1.0 && v65 <= 1000.0)
                                                                                                        {
                                                                                                          v38 = *&v29->var3;
                                                                                                          v39.i32[0] = v29->var5.var2;
                                                                                                          v39.i32[1] = v29->var5.var0;
                                                                                                          v69 = v39;
                                                                                                          if ([(CIRedEyeRepair *)self getInt:&v125 d:repair s:@"fullImageWidth"]&& [(CIRedEyeRepair *)self getInt:&v124 + 4 d:repair s:@"fullImageHeight"])
                                                                                                          {
                                                                                                            v40 = self->lf;
                                                                                                            if (v125 > 4 * v40->var3 || SHIDWORD(v124) > 4 * v40->var4)
                                                                                                            {
                                                                                                              if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"repairRectangleMinimumY"]&& [(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"repairRectangleMaximumY"]&& [(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"repairRectangleMinimumX"])
                                                                                                              {
                                                                                                                if ([(CIRedEyeRepair *)self getFloat:&v124 d:repair s:@"repairRectangleMaximumX"])
                                                                                                                {
                                                                                                                  [(CIRedEyeRepair *)self getFloat:&v123 + 4 d:repair s:@"size"];
                                                                                                                }
                                                                                                              }

                                                                                                              return;
                                                                                                            }
                                                                                                          }

                                                                                                          else if (v33 == 0.0 && v58 < 0x14 || v33 != 0.0 && v33 < 45.0)
                                                                                                          {
                                                                                                            return;
                                                                                                          }

                                                                                                          v41 = vcvt_f32_s32(v38);
                                                                                                          __asm { FMOV            V3.2D, #0.5 }

                                                                                                          v88[0] = v57;
                                                                                                          v88[1] = v56;
                                                                                                          v88[2] = v34;
                                                                                                          v88[3] = v35;
                                                                                                          v88[4] = v85;
                                                                                                          v88[5] = v87;
                                                                                                          v88[6] = v52;
                                                                                                          v88[7] = v83;
                                                                                                          v88[8] = v81;
                                                                                                          v88[9] = v79;
                                                                                                          v89 = v13;
                                                                                                          v90 = 0;
                                                                                                          v91 = 0;
                                                                                                          v92 = v55 & 0x7FFFFFFF | (v54 << 32);
                                                                                                          v93 = v53 | (v75 << 32);
                                                                                                          v94 = v36;
                                                                                                          v95 = v37;
                                                                                                          v96 = v77;
                                                                                                          v97 = v73;
                                                                                                          v98 = v71;
                                                                                                          v99 = v12;
                                                                                                          v100 = v20;
                                                                                                          v101 = v32 * v17;
                                                                                                          v103 = 0;
                                                                                                          v102 = 0;
                                                                                                          v104 = 0;
                                                                                                          v105 = v21;
                                                                                                          v106 = v65;
                                                                                                          v107 = v64;
                                                                                                          v108 = v118;
                                                                                                          v109 = v119;
                                                                                                          v110 = 0;
                                                                                                          v111 = vcvt_f32_f64(vmlaq_f64(vnegq_f64(vcvtq_f64_f32(vcvt_f32_s32(v69))), _Q3, vcvtq_f64_f32(v41)));
                                                                                                          v112 = sqrtf(COERCE_FLOAT(vmul_f32(v41, v41).i32[1]) + (v41.f32[0] * v41.f32[0])) * 0.5;
                                                                                                          v113 = 0;
                                                                                                          v114 = v62;
                                                                                                          v115 = v61;
                                                                                                          v116 = v60;
                                                                                                          v117 = v59;
                                                                                                          v47 = [(CIRedEyeRepair *)self redEyeRemovalWithData:v88];
                                                                                                          if (v47 == -1 || (v49 = [(CIRedEyeRepair *)self repairWithTag:v47], [(CIRedEyeRepair *)self getFloat:&v123 + 4 d:repair s:@"size"]) && ((v50 = sqrt(SLODWORD(v49->blockSet) / 3.14159265) / v32, v51 = v50, v48 = *(&v123 + 1) * 1.1, v48 < v51) || (HIDWORD(v48) = 1072483532, *(&v123 + 1) * 0.9 > v51)))
                                                                                                          {
                                                                                                            self->iFaceIndex = 0;
                                                                                                            self->iLeft = 1;
                                                                                                            *&v48 = v32 * v17;
                                                                                                            [(CIRedEyeRepair *)self redEyeRemovalWithPoint:1 alignPupilShades:v55 & 0x7FFFFFFF | (v54 << 32) matching:v53 | (v75 << 32) force:v20 IOD:v33 == 0.0 tap:v85, v87, v48];
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)executeRepairArray:(id)array
{
  v5 = [array count];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = v5 & 0x7FFFFFFF;
    do
    {
      -[CIRedEyeRepair executeRepair:](self, "executeRepair:", [array objectAtIndex:v6++]);
    }

    while (v7 != v6);
  }
}

@end