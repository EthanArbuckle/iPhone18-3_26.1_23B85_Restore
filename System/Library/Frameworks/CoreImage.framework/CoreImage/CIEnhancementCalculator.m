@interface CIEnhancementCalculator
- (CIEnhancementCalculator)init;
- (id)histogramFromRows:(id)a3 componentOffset:(unsigned int)a4;
- (id)setupFaceColorFromImage:(id)a3 usingContext:(id)a4 detectorOpts:(id)a5;
- (void)analyzeFeatures:(id)a3 usingContext:(id)a4 baseImage:(id)a5;
- (void)dealloc;
- (void)setupHistogramsUsing:(id)a3 redIndex:(int)a4 greenIndex:(int)a5 blueIndex:(int)a6;
@end

@implementation CIEnhancementCalculator

- (CIEnhancementCalculator)init
{
  v3.receiver = self;
  v3.super_class = CIEnhancementCalculator;
  result = [(CIEnhancementCalculation *)&v3 init];
  if (result)
  {
    result->shadowsEnabled = 1;
    result->curvesEnabled = 1;
    result->vibranceEnabled = 1;
    result->faceBalanceEnabled = 1;
  }

  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CIEnhancementCalculator;
  [(CIEnhancementCalculation *)&v2 dealloc];
}

- (id)histogramFromRows:(id)a3 componentOffset:(unsigned int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = [a3 width];
  v7 = [a3 height];
  v8 = [a3 bytesPerPixel];
  bzero(v20, 0x800uLL);
  if (v7)
  {
    for (i = 0; i < v7; i = (i + 1))
    {
      v10 = [a3 rowAtIndex:i];
      if (v6)
      {
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = *(v10 + a4 + v11);
          v20[v13] = v20[v13] + 1.0;
          v11 += v8;
        }

        while (v6 > v12++);
      }
    }
  }

  v15 = 0;
  v16 = 0.0;
  do
  {
    v16 = v16 + v20[v15] + v20[v15 + 1];
    v15 += 2;
  }

  while (v15 != 256);
  v17 = 0;
  v18 = vdupq_lane_s64(*&v16, 0);
  do
  {
    *&v20[v17] = vdivq_f64(*&v20[v17], v18);
    v17 += 2;
  }

  while (v17 != 256);
  return [CIEnhancementHistogram histogramFromData:v20];
}

- (void)setupHistogramsUsing:(id)a3 redIndex:(int)a4 greenIndex:(int)a5 blueIndex:(int)a6
{
  v6 = MEMORY[0x1EEE9AC00](self, a2, a3, *&a4, *&a5, *&a6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v55 = v6;
  v62 = *MEMORY[0x1E69E9840];
  bzero(v61, 0x800uLL);
  bzero(v60, 0x800uLL);
  bzero(v59, 0x800uLL);
  v15 = [v14 bytesPerPixel];
  bzero(v58, 0x800uLL);
  v16 = [v14 width];
  v57 = v14;
  v56 = [v14 height];
  if (v56)
  {
    v17 = v16;
    v18 = 0;
    v19 = v17 - 1;
    do
    {
      v20 = [v57 rowAtIndex:v18];
      if (v19)
      {
        v24 = 0;
        LOBYTE(v21) = *(v20 + v8);
        LOBYTE(v22) = *(v20 + v12);
        LOBYTE(v23) = *(v20 + v10);
        v25 = v23 * 0.7 + v22 * 0.2;
        LOBYTE(v26) = llround(v25 + v21 * 0.1);
        do
        {
          v27 = v20 + v24 * v15;
          v28 = *(v27 + v12);
          v58[*(v27 + v12)] = v58[*(v27 + v12)] + 1.0;
          v29 = *(v27 + v10);
          v58[*(v27 + v10)] = v58[*(v27 + v10)] + 1.0;
          v30 = *(v27 + v8);
          v31 = v58[v30] + 1.0;
          v58[v30] = v31;
          LOBYTE(v35) = v26;
          v32 = v20 + ++v24 * v15;
          LOBYTE(v31) = *(v32 + v12);
          LOBYTE(v25) = *(v32 + v10);
          *&v33 = *&v25 * 0.7;
          v34 = *&v33 + *&v31 * 0.2;
          LOBYTE(v33) = *(v32 + v8);
          v25 = v33;
          v26 = llround(v34 + v25 * 0.1);
          *&v61[8 * v35] = *&v61[8 * v35] + 1.0;
          v35 = v35;
          if (v35 >= v26)
          {
            v36 = v26;
          }

          else
          {
            v36 = v35;
          }

          if (v35 <= v26)
          {
            v35 = v26;
          }

          v37 = v36 + 1;
          if (v37 < v35)
          {
            do
            {
              *&v60[8 * v37] = *&v60[8 * v37] + 1.0;
              ++v37;
            }

            while (v35 > v37);
          }

          if (v29 <= v30)
          {
            v38 = v30;
          }

          else
          {
            v38 = v29;
          }

          if (v28 > v38)
          {
            v38 = v28;
          }

          if (v38 == v30)
          {
            if (v30 != v28 || (LOBYTE(v38) = v30, v30 != v29))
            {
              LOBYTE(v38) = 2 * v30;
              if (2 * v30 >= 0xFF)
              {
                LOBYTE(v38) = -1;
              }
            }
          }

          if (v29 >= v30)
          {
            v29 = v30;
          }

          if (v28 >= v29)
          {
            LOBYTE(v28) = v29;
          }

          v59[(v38 - v28)] = v59[(v38 - v28)] + 1.0;
        }

        while (v19 > v24);
      }

      v18 = (v18 + 1);
    }

    while (v56 > v18);
  }

  v39 = 0;
  v40 = 0.0;
  do
  {
    v40 = v40 + v58[v39] + v58[v39 + 1];
    v39 += 2;
  }

  while (v39 != 256);
  v41 = 0;
  v42 = vdupq_lane_s64(*&v40, 0);
  do
  {
    *&v58[v41] = vdivq_f64(*&v58[v41], v42);
    v41 += 2;
  }

  while (v41 != 256);
  [v55 setRGBSumHistogram:{+[CIEnhancementHistogram histogramFromData:](CIEnhancementHistogram, "histogramFromData:", v58)}];
  v43 = 0;
  v44 = 0.0;
  do
  {
    v44 = v44 + *&v61[v43] + *&v61[v43 + 8];
    v43 += 16;
  }

  while (v43 != 2048);
  v45 = 0;
  v46 = vdupq_lane_s64(*&v44, 0);
  do
  {
    *&v61[v45] = vdivq_f64(*&v61[v45], v46);
    v45 += 16;
  }

  while (v45 != 2048);
  [v55 setLuminanceHistogram:{+[CIEnhancementHistogram histogramFromData:](CIEnhancementHistogram, "histogramFromData:", v61)}];
  v47 = 0;
  v48 = 0.0;
  do
  {
    v48 = v48 + *&v60[v47] + *&v60[v47 + 8];
    v47 += 16;
  }

  while (v47 != 2048);
  v49 = 0;
  v50 = vdupq_lane_s64(*&v48, 0);
  do
  {
    *&v60[v49] = vdivq_f64(*&v60[v49], v50);
    v49 += 16;
  }

  while (v49 != 2048);
  [v55 setBorderHistogram:{+[CIEnhancementHistogram histogramFromData:](CIEnhancementHistogram, "histogramFromData:", v60)}];
  v51 = 0;
  v52 = 0.0;
  do
  {
    v52 = v52 + v59[v51] + v59[v51 + 1];
    v51 += 2;
  }

  while (v51 != 256);
  v53 = 0;
  v54 = vdupq_lane_s64(*&v52, 0);
  do
  {
    *&v59[v53] = vdivq_f64(*&v59[v53], v54);
    v53 += 2;
  }

  while (v53 != 256);
  [v55 setSaturationHistogram:{+[CIEnhancementHistogram histogramFromData:](CIEnhancementHistogram, "histogramFromData:", v59)}];
}

- (void)analyzeFeatures:(id)a3 usingContext:(id)a4 baseImage:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v34 = self;
      v11 = *v38;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [CIAutoEnhanceFace alloc];
            [v16 bounds];
            v18 = [(CIAutoEnhanceFace *)v17 initWithBounds:a5 andImage:a4 usingContext:?];
            __x.origin.x = 0.0;
            [(CIAutoEnhanceFace *)v18 I];
            v20 = v19;
            [(CIAutoEnhanceFace *)v18 Q];
            [CIEnhancementCalculation bestWarmthForI:&__x q:v20 percentChange:v21];
            if (__x.origin.x < 4.3)
            {
              v22 = [(CIAutoEnhanceFace *)v18 size];
              v23 = ([(CIAutoEnhanceFace *)v18 size]* v22);
              x = __x.origin.x;
              goto LABEL_10;
            }

            goto LABEL_11;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = [v16 valueForKey:@"bounds"];
            memset(&__x, 0, sizeof(__x));
            if (v28)
            {
              if (CGRectMakeWithDictionaryRepresentation(v28, &__x))
              {
                v29 = [CIAutoEnhanceFace alloc];
                v18 = [(CIAutoEnhanceFace *)v29 initWithBounds:a5 andImage:a4 usingContext:__x.origin.x, __x.origin.y, *&__x.size];
                v35 = 0.0;
                [(CIAutoEnhanceFace *)v18 I];
                v31 = v30;
                [(CIAutoEnhanceFace *)v18 Q];
                [CIEnhancementCalculation bestWarmthForI:&v35 q:v31 percentChange:v32];
                if (v35 < 4.3)
                {
                  v33 = [(CIAutoEnhanceFace *)v18 size];
                  v23 = ([(CIAutoEnhanceFace *)v18 size]* v33);
                  x = v35;
LABEL_10:
                  v25 = fmin(1.0 / fmax(pow(x, 3.0), 0.0001), 1.0) * v23;
                  v12 = v12 + v25;
                  [(CIAutoEnhanceFace *)v18 I];
                  v14 = v14 + v25 * v26;
                  [(CIAutoEnhanceFace *)v18 Q];
                  v13 = v13 + v25 * v27;
                }

LABEL_11:

                continue;
              }
            }
          }
        }

        v10 = [a3 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (!v10)
        {
          if (v12 > 0.0)
          {
            [(CIEnhancementCalculation *)v34 setFaceColorFromChromaI:v14 / v12 andChromaQ:v13 / v12];
          }

          return;
        }
      }
    }
  }
}

- (id)setupFaceColorFromImage:(id)a3 usingContext:(id)a4 detectorOpts:(id)a5
{
  v8 = [[CIDetector detectorOfType:? context:? options:?]options:"featuresInImage:options:", a3, a5];
  [(CIEnhancementCalculator *)self analyzeFeatures:v8 usingContext:a4 baseImage:a3];
  return v8;
}

@end