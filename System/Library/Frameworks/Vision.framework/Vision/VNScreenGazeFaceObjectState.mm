@interface VNScreenGazeFaceObjectState
- (void)_replaceFaceObservation:(uint64_t)a3 imageWidth:(uint64_t)a4 imageHeight:(int)a5 frameIndex:;
- (void)dealloc;
@end

@implementation VNScreenGazeFaceObjectState

- (void)dealloc
{
  screenGazeState = self->_screenGazeState;
  if (!screenGazeState)
  {
    goto LABEL_16;
  }

  v4 = screenGazeState[4];
  v5 = screenGazeState[5];
  screenGazeState[8] = 0;
  v6 = v5 - v4;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v5 = screenGazeState[5];
      v4 = (screenGazeState[4] + 8);
      screenGazeState[4] = v4;
      v6 = v5 - v4;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 128;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_9;
    }

    v7 = 256;
  }

  screenGazeState[7] = v7;
LABEL_9:
  if (v4 != v5)
  {
    do
    {
      v8 = *v4++;
      operator delete(v8);
    }

    while (v4 != v5);
    v10 = screenGazeState[4];
    v9 = screenGazeState[5];
    if (v9 != v10)
    {
      screenGazeState[5] = v9 + ((v10 - v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v11 = screenGazeState[3];
  if (v11)
  {
    operator delete(v11);
  }

  MEMORY[0x1AC556B00](screenGazeState, 0x1080C40B4A5DF6CLL);
LABEL_16:
  v12.receiver = self;
  v12.super_class = VNScreenGazeFaceObjectState;
  [(VNScreenGazeFaceObjectState *)&v12 dealloc];
}

- (void)_replaceFaceObservation:(uint64_t)a3 imageWidth:(uint64_t)a4 imageHeight:(int)a5 frameIndex:
{
  v30 = a2;
  if (x0_0)
  {
    objc_storeStrong((x0_0 + 8), a2);
    *(x0_0 + 16) = a3;
    *(x0_0 + 24) = a4;
    *(x0_0 + 32) = a5;
    [*(x0_0 + 8) unalignedBoundingBox];
    v10 = cgNormalizedRectToGeometryImageRect(v32, *(x0_0 + 16));
    v11 = floorf(v10);
    v13 = floorf(v12);
    *(x0_0 + 72) = v11;
    *(x0_0 + 76) = v13;
    *(x0_0 + 80) = ceilf((v12 + v15) - v13);
    *(x0_0 + 84) = ceilf((v10 + v14) - v11);
    v16 = [*(x0_0 + 8) landmarks];

    if (v16)
    {
      [*(x0_0 + 8) boundingBox];
      v17 = cgNormalizedRectToGeometryImageRect(v33, *(x0_0 + 16));
      v28 = v18;
      v29 = v17;
      v19 = [*(x0_0 + 8) landmarks];
      v20 = [v19 leftPupil];
      [v20 normalizedPoints];

      VisionCoreImagePointForNormalizedPoint();
      *&v21 = v21;
      *&v22 = v22;
      *(x0_0 + 48) = LODWORD(v21);
      *(x0_0 + 52) = LODWORD(v22);
      v23 = [*(x0_0 + 8) landmarks];
      v24 = [v23 rightPupil];
      [v24 normalizedPoints];

      VisionCoreImagePointForNormalizedPoint();
      v26.f64[1] = v25;
      *v27.f32 = vsub_f32(*(x0_0 + 72), __PAIR64__(v28, LODWORD(v29)));
      v27.i64[1] = v27.i64[0];
      *(x0_0 + 48) = vsubq_f32(vcvt_hight_f32_f64(*(x0_0 + 48), v26), v27);
    }
  }
}

@end