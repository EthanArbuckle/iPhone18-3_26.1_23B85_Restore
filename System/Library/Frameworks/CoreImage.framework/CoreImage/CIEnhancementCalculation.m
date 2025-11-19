@interface CIEnhancementCalculation
+ (double)bestWarmthForI:(double)a3 q:(double)a4 percentChange:(double *)a5;
- ($F24F406B2B787EFB06265DBA3D28CBD5)originalFaceColor;
- (CGPoint)curvePointAtIndex:(unint64_t)a3;
- (CIEnhancementCalculation)init;
- (id)faceBalanceStrength;
- (id)faceBalanceWarmth;
- (id)rawShadow;
- (id)shadow;
- (id)vibrance;
- (int)putShadowsAnalysisInto:(double *)a3;
- (unint64_t)curveCount;
- (void)dealloc;
- (void)downSampleHistogram:(id)a3 to:(unsigned int)a4 storeIn:(double *)a5;
- (void)printAnalysis;
- (void)printHistogram:(id)a3 downsampledTo:(unsigned int)a4;
- (void)printHistogramsDownsampledTo:(unsigned int)a3;
- (void)setFaceColorFromChromaI:(double)a3 andChromaQ:(double)a4;
- (void)setShadowsMin:(double)a3 max:(double)a4 zeroExposure:(double)a5;
- (void)setupFaceColor:(id)a3 redIndex:(int)a4 greenIndex:(int)a5 blueIndex:(int)a6;
@end

@implementation CIEnhancementCalculation

- (CIEnhancementCalculation)init
{
  v3.receiver = self;
  v3.super_class = CIEnhancementCalculation;
  result = [(CIEnhancementCalculation *)&v3 init];
  if (result)
  {
    result->exposureValue = 0.0;
    *&result->satHist = 0u;
    *&result->lumHist = 0u;
    result->faceInputSet = 0;
    result->originalFaceColor.i = 0.0;
    result->originalFaceColor.q = 0.0;
    *&result->maxShadow = xmmword_19CF25720;
    *&result->exposureValueAtZeroShadow = xmmword_19CF26650;
    result->percentFaceChange = 0.0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CIEnhancementCalculation;
  [(CIEnhancementCalculation *)&v3 dealloc];
}

+ (double)bestWarmthForI:(double)a3 q:(double)a4 percentChange:(double *)a5
{
  if (a5)
  {
    v5 = (*(&faceBalanceOutdoorIQ + 1) - *(&faceBalanceIndoorIQ + 1)) * (*(&faceBalanceOutdoorIQ + 1) - *(&faceBalanceIndoorIQ + 1));
    v6 = fmin(fmax(((a4 - *(&faceBalanceIndoorIQ + 1)) * (*(&faceBalanceOutdoorIQ + 1) - *(&faceBalanceIndoorIQ + 1)) + (a3 - *&faceBalanceIndoorIQ) * (*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ)) / (v5 + (*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ) * (*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ)), 0.0), 1.0) * 0.75 + 0.25;
    *a5 = sqrt((a3 - (*&faceBalanceIndoorIQ + v6 * (*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ))) * (a3 - (*&faceBalanceIndoorIQ + v6 * (*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ))) + (a4 - (*(&faceBalanceIndoorIQ + 1) + v6 * (*(&faceBalanceOutdoorIQ + 1) - *(&faceBalanceIndoorIQ + 1)))) * (a4 - (*(&faceBalanceIndoorIQ + 1) + v6 * (*(&faceBalanceOutdoorIQ + 1) - *(&faceBalanceIndoorIQ + 1))))) / sqrt((*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ) * (*&faceBalanceOutdoorIQ - *&faceBalanceIndoorIQ) + v5);
  }

  return 0.5;
}

- (void)setFaceColorFromChromaI:(double)a3 andChromaQ:(double)a4
{
  self->originalFaceColor.i = a3;
  self->originalFaceColor.q = a4;
  self->faceInputSet = 1;
  [CIEnhancementCalculation bestWarmthForI:"bestWarmthForI:q:percentChange:" q:&self->percentFaceChange percentChange:?];
}

- (void)setupFaceColor:(id)a3 redIndex:(int)a4 greenIndex:(int)a5 blueIndex:(int)a6
{
  v55 = *MEMORY[0x1E69E9840];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v41 = [a3 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v41)
  {
    v38 = self;
    v40 = *v51;
    v10 = 0.0;
    v11 = 1.0;
    v12 = 0.0;
    v46 = 0.0;
    do
    {
      v13 = 0;
      do
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(a3);
        }

        v44 = v12;
        v45 = v10;
        v43 = v13;
        v14 = *(*(&v50 + 1) + 8 * v13);
        v15 = [v14 bytesPerPixel];
        v16 = [v14 width];
        v48 = v14;
        v17 = [v14 height];
        v18 = v17;
        v42 = v16;
        if (v17)
        {
          v19 = 0;
          v20 = v11 / (v16 * v17);
          v21 = v16 - 1;
          v22 = 0.0;
          v23 = 0.0;
          for (i = v17; i > v19; v18 = i)
          {
            v24 = [v48 rowAtIndex:v19];
            if (v21)
            {
              v26 = v24;
              v27 = 0;
              v28 = 1;
              do
              {
                v29 = v26 + v27;
                LOBYTE(v25) = *(v29 + a4);
                *&v30 = pow(*&v25 / 255.0, 0.555555556);
                v31 = *&v30;
                LOBYTE(v30) = *(v29 + a5);
                *&v32 = pow(v30 / 255.0, 0.555555556);
                v33 = *&v32;
                LOBYTE(v32) = *(v29 + a6);
                v34 = pow(v32 / 255.0, 0.555555556);
                v35 = v33 * -0.2755 + v31 * 0.596 + v34 * -0.321;
                v25 = v33 * -0.523 + v31 * 0.212 + v34 * 0.311;
                v22 = v22 + v20 * v35;
                v23 = v23 + v20 * v25;
                v27 += v15;
              }

              while (v21 > v28++);
            }

            v19 = (v19 + 1);
          }
        }

        else
        {
          v23 = 0.0;
          v22 = 0.0;
        }

        __x = 0.0;
        [CIEnhancementCalculation bestWarmthForI:&__x q:v22 percentChange:v23];
        v11 = 1.0;
        v37 = fmin(1.0 / fmax(pow(__x, 3.0), 0.0001), 1.0) * (v18 * v42);
        v46 = v46 + v37 * v22;
        v12 = v44 + v37 * v23;
        v10 = v45 + v37;
        v13 = v43 + 1;
      }

      while (v43 + 1 != v41);
      v41 = [a3 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v41);
    if (v10 > 0.0)
    {
      [(CIEnhancementCalculation *)v38 setFaceColorFromChromaI:v46 / v10 andChromaQ:v12 / v10];
    }
  }
}

- (void)setShadowsMin:(double)a3 max:(double)a4 zeroExposure:(double)a5
{
  self->maxShadow = fmax(a4, 0.0);
  self->minShadow = fmin(a3, 0.0);
  self->exposureValueAtZeroShadow = a5;
}

- (id)faceBalanceStrength
{
  if (self->faceInputSet)
  {
    return &unk_1F1085278;
  }

  else
  {
    return 0;
  }
}

- (id)faceBalanceWarmth
{
  if (!self->faceInputSet)
  {
    return 0;
  }

  v3 = MEMORY[0x1E696AD98];
  [CIEnhancementCalculation bestWarmthForI:0 q:self->originalFaceColor.i percentChange:self->originalFaceColor.q];

  return [v3 numberWithDouble:?];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)originalFaceColor
{
  i = self->originalFaceColor.i;
  q = self->originalFaceColor.q;
  result.var1 = q;
  result.var0 = i;
  return result;
}

- (id)vibrance
{
  result = self->satHist;
  if (result)
  {
    v4 = [result values];
    v5 = 0.0;
    v6 = 255;
    do
    {
      v7 = v6 - 1;
      if (v6 < 2)
      {
        break;
      }

      v5 = v5 + *(v4 + 8 * v6--);
    }

    while (v5 < 0.02);
    v8 = (255.0 - v7) / 255.0;
    v9 = MEMORY[0x1E696AD98];
    v10 = fmax(1.0 - self->percentFaceChange, 0.0) * 8.0 * 0.4;
    v11 = pow(v8, 3.0) * v10;
    v12 = pow(1.0 - v8, 1.6) * v11;

    return [v9 numberWithDouble:v12];
  }

  return result;
}

- (unint64_t)curveCount
{
  if (self->rgbSumHist)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (CGPoint)curvePointAtIndex:(unint64_t)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v34[2] = xmmword_19CF2ABF8;
  v34[3] = unk_19CF2AC08;
  v34[4] = xmmword_19CF2AC18;
  v34[0] = xmmword_19CF2ABD8;
  v34[1] = unk_19CF2ABE8;
  rgbSumHist = self->rgbSumHist;
  if (rgbSumHist)
  {
    v30 = 0;
    v32 = 0u;
    v31 = 0.25;
    v33 = 0x3FF0000000000000;
    v29 = 0.0;
    v27 = 0u;
    v28 = 0u;
    v6 = [(CIEnhancementHistogram *)rgbSumHist values:0x3F50624DD2F1A9FCLL];
    v7 = 0;
    v8 = 0.0;
    do
    {
      v8 = v8 + *(v6 + v7) + *(v6 + v7 + 8);
      v7 += 16;
    }

    while (v7 != 2048);
    for (i = 0; i != 5; ++i)
    {
      v10 = 0;
      v11 = v8 * *(&v26 + i);
      v12 = 0.0;
      while (1)
      {
        v13 = *(v6 + 8 * v10);
        if (v12 + v13 >= v11)
        {
          break;
        }

        ++v10;
        v12 = v12 + v13;
        if (v10 == 256)
        {
          goto LABEL_10;
        }
      }

      *(&v27 + i) = vcvtd_n_f64_u32(v10, 8uLL) + (v11 - v12) / v13 * 0.00390625;
LABEL_10:
      ;
    }

    v14 = 0;
    v15 = *&v27 * fmin(fmax(*&v27 * -0.8 + 1.0, 0.6), 1.0);
    v16 = (1.0 - v29) * fmin(fmax((1.0 - v29) * -0.8 + 1.0, 0.6), 1.0) * -0.5 + 1.0;
    v17 = 1.0 / (v16 - v15);
    *&v27 = v15;
    *(&v27 + 1) = (*(&v27 + 1) + (*&v28 - v15 + 1.0) * v15 + (*&v28 - v15 + 1.0) * *&v28) / ((*&v28 - v15) * 2.0 + 3.0);
    *(&v28 + 1) = (*(&v28 + 1) + (v16 - *&v28 + 1.0) * v16 + (v16 - *&v28 + 1.0) * *&v28) / ((v16 - *&v28) * 2.0 + 3.0);
    v29 = v16;
    v18 = (*&v28 - v15) * v17;
    curvePercent = self->curvePercent;
    v20 = v17 * (1.0 - curvePercent);
    v31 = (*(&v27 + 1) - v15) * v20 + curvePercent * fmin((v18 + 0.0) * 0.5, v17 * (*(&v27 + 1) - v15));
    *&v32 = v18;
    *(&v32 + 1) = v20 * (*(&v28 + 1) - v15) + curvePercent * fmax((v18 + 1.0) * 0.5, v17 * (*(&v28 + 1) - v15));
    v21 = v34 + 1;
    do
    {
      v22 = *(&v30 + v14);
      *(v21 - 1) = *(&v27 + v14);
      *v21 = v22;
      v14 += 8;
      v21 += 2;
    }

    while (v14 != 40);
    v23 = &v34[a3 % 5];
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v25 = 0.0;
    v24 = 0.0;
  }

  result.y = v25;
  result.x = v24;
  return result;
}

- (int)putShadowsAnalysisInto:(double *)a3
{
  v74[16] = *MEMORY[0x1E69E9840];
  v5 = [(CIEnhancementHistogram *)self->lumHist values];
  v6 = v5;
  v7 = 0;
  v8 = *v5;
  v9 = 0.0;
  do
  {
    v10 = v5[v7];
    v8 = fmax(v8, v10);
    v9 = v9 + v10;
    *&v70[v7++] = v9;
  }

  while (v7 != 256);
  v11 = [(CIEnhancementHistogram *)self->borderHist values];
  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v11;
  do
  {
    if (v11[v13] > v15)
    {
      v14 = v13;
      v15 = v11[v13];
    }

    ++v13;
  }

  while (v13 != 256);
  if ([(CIEnhancementCalculation *)self curveCount]== 5)
  {
    [(CIEnhancementCalculation *)self curvePointAtIndex:0];
    v17 = v16;
    [(CIEnhancementCalculation *)self curvePointAtIndex:4];
    v18 = llround(v17 * 255.0);
    v20 = v19 - v17;
  }

  else
  {
    v18 = 0;
    v20 = 1.0;
  }

  v74[0] = 0x3FF0000000000000;
  *v71 = v15;
  *v73 = v8;
  v72[0] = 0x3FF0000000000000;
  v74[1] = vcvtd_n_f64_s32(v14, 8uLL);
  v21 = &v12[v14];
  v22 = *v21;
  *&v71[1] = *v21 / v15;
  *&v73[1] = v6[v14] / v8;
  v72[1] = v70[v14];
  v23 = v22 * 0.5;
  v24 = 256;
  if ((v14 + 1) > 0x100)
  {
    v24 = v14 + 1;
  }

  v25 = v24 - 1;
  v26 = v14 - 1;
  v27 = v26;
  while (1)
  {
    v28 = v27 + 2;
    if (v27 + 2 > 0xFF)
    {
      break;
    }

    v29 = *v21++;
    ++v27;
    if (v29 < v23)
    {
      goto LABEL_17;
    }
  }

  LODWORD(v27) = v25;
LABEL_17:
  if (v28 <= 0xFF)
  {
    v30 = v27;
  }

  else
  {
    v30 = 255;
  }

  v74[2] = vcvtd_n_f64_s32(v30, 8uLL);
  *&v71[2] = v12[v30] / v15;
  *&v73[2] = v6[v30] / v8;
  v72[2] = v70[v30];
  v31 = &v12[v14];
  do
  {
    v32 = v14;
    v33 = v26;
    if (v26 > 0xFF)
    {
      break;
    }

    v34 = *v31--;
    --v14;
    --v26;
  }

  while (v34 >= v23);
  if (v33 <= 0xFF)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0;
  }

  v74[3] = vcvtd_n_f64_s32(v35, 8uLL);
  *&v71[3] = v12[v35] / v15;
  *&v73[3] = v6[v35] / v8;
  v72[3] = v70[v35];
  v36 = [(CIEnhancementHistogram *)self->borderHist values];
  for (i = 0; i != 4; ++i)
  {
    v38 = putShadowsAnalysisInto__segTop[i];
    v39 = putShadowsAnalysisInto__segStart[i];
    v40 = 0.0;
    if (v38 > v39)
    {
      v41 = 1.0 / (v38 - v39);
      v42 = &v36[v39];
      v43 = v38 - v39;
      v44 = 0.0;
      v40 = 0.0;
      do
      {
        v45 = *v42++;
        v40 = v40 + v44 * v45;
        v44 = v41 + v44;
        --v43;
      }

      while (v43);
    }

    v46 = putShadowsAnalysisInto__segDown[i];
    if (v38 < v46)
    {
      v47 = &v36[v38];
      v48 = v46 - v38;
      do
      {
        v49 = *v47++;
        v40 = v40 + v49;
        --v48;
      }

      while (v48);
    }

    v50 = putShadowsAnalysisInto__segEnd[i];
    if (v50 > v46)
    {
      v51 = 1.0 / (v50 - v46);
      v52 = &v36[v46];
      v53 = v50 - v46;
      v54 = 1.0;
      do
      {
        v55 = *v52++;
        v40 = v40 + v54 * v55;
        v54 = v54 - v51;
        --v53;
      }

      while (v53);
    }

    *&(&v66)[i] = v40;
  }

  v56 = 0;
  result = 0;
  v71[4] = v67;
  v73[4] = v68;
  v72[4] = v69;
  v58 = llround(v20 * (v18 + 64));
  v74[4] = v66;
  v74[5] = vcvtd_n_f64_s32(v58, 8uLL);
  *&v71[5] = v12[v58] / v15;
  *&v73[5] = v6[v58] / v8;
  v72[5] = v70[v58];
  v59 = llround(v20 * (v18 + 128));
  v74[6] = vcvtd_n_f64_s32(v59, 8uLL);
  *&v71[6] = v12[v59] / v15;
  v60 = v70[v59];
  *&v73[6] = v6[v59] / v8;
  v72[6] = v60;
  v66 = v74;
  v67 = v71;
  v68 = v73;
  v69 = v72;
  do
  {
    v61 = 0;
    v62 = 0;
    v63 = (&v66)[v56];
    do
    {
      a3[result] = *&v63[v62];
      v64 = &a3[result++ + 2];
      v65 = v61;
      do
      {
        a3[result] = *&v63[v62] - *(v63 + v65);
        *v64 = *&v63[v62] * *(v63 + v65);
        v64 += 2;
        result += 2;
        v65 += 8;
      }

      while (v65 != 56);
      ++v62;
      v61 += 8;
    }

    while (v62 != 7);
    ++v56;
  }

  while (v56 != 4);
  return result;
}

- (id)shadow
{
  if (!self->lumHist)
  {
    return 0;
  }

  [-[CIEnhancementCalculation rawShadow](self "rawShadow")];
  v3 = fmax(tanh(fmin(fmax(v2, 0.0), 1.0)) * 0.6, 0.0);
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithDouble:v3];
}

- (id)rawShadow
{
  v11 = *MEMORY[0x1E69E9840];
  if (!self->lumHist)
  {
    return 0;
  }

  bzero(v10, 0xC80uLL);
  [(CIEnhancementCalculation *)self putShadowsAnalysisInto:v10];
  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = vmulq_f64(xmmword_19CF2AC68[v3], *&v10[v3 * 16]);
    v4 = v4 + v5.f64[0] + v5.f64[1];
    ++v3;
  }

  while (v3 != 126);
  maxShadow = self->maxShadow;
  v7 = fmax(self->minShadow, fmin(maxShadow, v4));
  exposureValueAtZeroShadow = self->exposureValueAtZeroShadow;
  if (exposureValueAtZeroShadow > 0.0)
  {
    v7 = fmin(v7, fmax(maxShadow * (1.0 - self->exposureValue / exposureValueAtZeroShadow), 0.0));
  }

  return [MEMORY[0x1E696AD98] numberWithDouble:v7];
}

- (void)downSampleHistogram:(id)a3 to:(unsigned int)a4 storeIn:(double *)a5
{
  v7 = [a3 values];
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v8 + 1;
      v11 = floor(256.0 / a4 * (v8 + 1));
      v12 = 0.0;
      if (v11 > v9)
      {
        v13 = (v7 + 8 * v9);
        do
        {
          v14 = *v13++;
          v12 = v12 + v14;
          ++v9;
        }

        while (v11 > v9);
      }

      a5[v8++] = v12;
    }

    while (v10 != a4);
  }
}

- (void)printHistogram:(id)a3 downsampledTo:(unsigned int)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = (v8 - ((8 * a4 + 15) & 0xFFFFFFFF0));
  [CIEnhancementCalculation downSampleHistogram:"downSampleHistogram:to:storeIn:" to:a3 storeIn:?];
  if (a4)
  {
    v6 = a4;
    do
    {
      v7 = *v5++;
      printf("%.5f\t", v7);
      --v6;
    }

    while (v6);
  }
}

- (void)printAnalysis
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [(CIEnhancementCalculation *)self putShadowsAnalysisInto:v6];
  if (v2 >= 1)
  {
    v3 = v2;
    v4 = v6;
    do
    {
      v5 = *v4++;
      printf("%.6f\t", v5);
      --v3;
    }

    while (v3);
  }
}

- (void)printHistogramsDownsampledTo:(unsigned int)a3
{
  [(CIEnhancementCalculation *)self printAnalysis];

  putchar(10);
}

@end