@interface CIFaceFeature
- (CGPoint)leftEyePosition;
- (CGPoint)mouthPosition;
- (CGPoint)rightEyePosition;
- (CGRect)bounds;
- (CIFaceFeature)initWithBounds:(CGRect)a3 hasLeftEyePosition:(BOOL)a4 leftEyePosition:(CGPoint)a5 hasRightEyePosition:(BOOL)a6 rightEyePosition:(CGPoint)a7 hasMouthPosition:(BOOL)a8 mouthPosition:(CGPoint)a9 hasFaceAngle:(BOOL)a10 faceAngle:(float)a11 hasTrackingID:(BOOL)a12 trackingID:(int)a13 hasTrackingFrameCount:(BOOL)a14 trackingFrameCount:(int)a15 hasSmile:(BOOL)a16 leftEyeClosed:(BOOL)a17 rightEyeClosed:(BOOL)a18 landmarks:(id)a19;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation CIFaceFeature

- (CIFaceFeature)initWithBounds:(CGRect)a3 hasLeftEyePosition:(BOOL)a4 leftEyePosition:(CGPoint)a5 hasRightEyePosition:(BOOL)a6 rightEyePosition:(CGPoint)a7 hasMouthPosition:(BOOL)a8 mouthPosition:(CGPoint)a9 hasFaceAngle:(BOOL)a10 faceAngle:(float)a11 hasTrackingID:(BOOL)a12 trackingID:(int)a13 hasTrackingFrameCount:(BOOL)a14 trackingFrameCount:(int)a15 hasSmile:(BOOL)a16 leftEyeClosed:(BOOL)a17 rightEyeClosed:(BOOL)a18 landmarks:(id)a19
{
  v19 = a10;
  y_low = LOBYTE(a9.y);
  x_low = LOBYTE(a9.x);
  y = a7.y;
  x = a7.x;
  v26 = a5.y;
  v27 = a5.x;
  height = a3.size.height;
  width = a3.size.width;
  v31 = a3.origin.y;
  v32 = a3.origin.x;
  v36.receiver = self;
  v36.super_class = CIFaceFeature;
  v33 = [(CIFeature *)&v36 init];
  v34 = v33;
  if (v33)
  {
    v33->bounds.origin.x = v32;
    v33->bounds.origin.y = v31;
    v33->bounds.size.width = width;
    v33->bounds.size.height = height;
    v33->hasLeftEyePosition = a4;
    v33->leftEyePosition.x = v27;
    v33->leftEyePosition.y = v26;
    v33->hasRightEyePosition = a6;
    v33->rightEyePosition.x = x;
    v33->rightEyePosition.y = y;
    v33->hasMouthPosition = a8;
    v33->mouthPosition.x = *&a11;
    v33->mouthPosition.y = *&a13;
    v33->hasFaceAngle = x_low;
    LODWORD(v33->faceAngle) = a15;
    v33->hasTrackingID = y_low;
    v33->trackingID = v19;
    v33->hasTrackingFrameCount = a16;
    v33->trackingFrameCount = a19;
    *&v33->hasSmile = WORD2(a19);
    v33->rightEyeClosed = BYTE6(a19);
    v33->landmarks = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v37 copyItems:1];
  }

  return v34;
}

- (id)debugDescription
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CIFaceFeature_debugDescription__block_invoke;
  v3[3] = &unk_1E75C1EE0;
  v3[4] = self;
  return stream_to_string(v3);
}

uint64_t __33__CIFaceFeature_debugDescription__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p ", v4, *(a1 + 32));
  [*(a1 + 32) bounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (CGRectIsInfinite(v14))
  {
    v9 = "[infinite]";
    v10 = 10;
LABEL_5:
    fwrite(v9, v10, 1uLL, a2);
    goto LABEL_7;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (CGRectIsEmpty(v15))
  {
    v9 = "[empty]";
    v10 = 7;
    goto LABEL_5;
  }

  fprintf(a2, "[%g %g %g %g]", x, y, width, height);
LABEL_7:
  fwrite(">\n", 2uLL, 1uLL, a2);
  v11 = *(a1 + 32);
  if (*(v11 + 40) == 1)
  {
    fprintf(a2, "    leftEye: (%g,%g)\n", *(v11 + 48), *(v11 + 56));
    v11 = *(a1 + 32);
  }

  if (*(v11 + 64) == 1)
  {
    fprintf(a2, "    leftEye: (%g,%g)\n", *(v11 + 72), *(v11 + 80));
    v11 = *(a1 + 32);
  }

  if (*(v11 + 88) == 1)
  {
    fprintf(a2, "    mouth: (%g,%g)\n", *(v11 + 96), *(v11 + 104));
    v11 = *(a1 + 32);
  }

  if (*(v11 + 128) == 1)
  {
    fprintf(a2, "    faceAngle: %g\n", *(v11 + 132));
    v11 = *(a1 + 32);
  }

  fprintf(a2, "    hasSmile: %d\n", *(v11 + 136));
  fprintf(a2, "    leftEyeClosed: %d\n", *(*(a1 + 32) + 137));
  result = fprintf(a2, "    rightEyeClosed: %d\n", *(*(a1 + 32) + 138));
  v13 = *(a1 + 32);
  if (*(v13 + 112) == 1)
  {
    result = fprintf(a2, "    trackingID: %d\n", *(v13 + 116));
    v13 = *(a1 + 32);
  }

  if (*(v13 + 120) == 1)
  {
    return fprintf(a2, "    trackingFrameCount: %d\n", *(v13 + 124));
  }

  return result;
}

- (void)dealloc
{
  self->landmarks = 0;
  v3.receiver = self;
  v3.super_class = CIFaceFeature;
  [(CIFaceFeature *)&v3 dealloc];
}

- (CGRect)bounds
{
  objc_copyStruct(v6, &self->bounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)leftEyePosition
{
  objc_copyStruct(v4, &self->leftEyePosition, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)rightEyePosition
{
  objc_copyStruct(v4, &self->rightEyePosition, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)mouthPosition
{
  objc_copyStruct(v4, &self->mouthPosition, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end