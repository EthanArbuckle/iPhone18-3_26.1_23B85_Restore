@interface StabilizeParamGenerator
- (id)generatePassThruForAsset:(id)a3 trimStart:(id *)a4 trimLength:(id *)a5;
- (id)generateStabilizeParams;
- (id)generateTrivialPassThruForFrameTimes:(void *)a3 totalDuration:(id *)a4;
- (void)CopyCoordinateShiftedHomographies:(void *)a3 firstIndex:(unint64_t)a4 lastIndex:(unint64_t)a5 toStabilizeParams:(id)a6 withImageBounds:(CGSize)a7;
- (void)ICGetIdentityHomographies:(void *)a3 toStabilizeParams:(id)a4 withImageBounds:(CGSize)a5 firstFrameIndex:(unint64_t)a6 lastFrameIndex:(unint64_t)a7;
@end

@implementation StabilizeParamGenerator

- (void)ICGetIdentityHomographies:(void *)a3 toStabilizeParams:(id)a4 withImageBounds:(CGSize)a5 firstFrameIndex:(unint64_t)a6 lastFrameIndex:(unint64_t)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  ICGetIdentityHomographies();
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v21 = 0u;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:@"rawTime"];
        CMTimeMakeFromDictionary(&v18, v12);
        v20 = v18;

        v13 = [v11 objectForKeyedSubscript:@"homography"];
        for (i = 0; i != 9; ++i)
        {
          v15 = [v13 objectAtIndexedSubscript:i];
          [v15 floatValue];
          v19[i] = v16;
        }

        [v7 append:v19];

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (void)CopyCoordinateShiftedHomographies:(void *)a3 firstIndex:(unint64_t)a4 lastIndex:(unint64_t)a5 toStabilizeParams:(id)a6 withImageBounds:(CGSize)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a6;
  ICGetCoordinateShiftedHomographies();
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v21 = 0u;
  v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v11 objectForKeyedSubscript:@"rawTime"];
        CMTimeMakeFromDictionary(&v18, v12);
        v20 = v18;

        v13 = [v11 objectForKeyedSubscript:@"homography"];
        for (i = 0; i != 9; ++i)
        {
          v15 = [v13 objectAtIndexedSubscript:i];
          [v15 floatValue];
          v19[i] = v16;
        }

        [v7 append:v19];

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }
}

- (id)generateStabilizeParams
{
  v42 = *MEMORY[0x277D85DE8];
  [(AutoLoopStabilizer *)self->stabilizer inputMovieDimensions];
  v4 = v3;
  v6 = v5;
  v7 = [(AutoLoopStabilizer *)self->stabilizer icCorrectionResultRef];
  if (v7)
  {
    v8 = v7;
    v26 = +[StabilizeParams stabilizeParams];
    v40 = **&MEMORY[0x277CC0888];
    v39 = v40;
    ICGetResultFramePresentationTimes();
    __p = 0;
    v37 = 0;
    v25 = v38 = 0;
    sub_2418D5768(&__p, [v25 count]);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v25;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v9)
    {
      v10 = *v33;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(obj);
          }

          CMTimeMakeFromDictionary(&v31, *(*(&v32 + 1) + 8 * i));
          v12 = v37;
          if (v37 >= v38)
          {
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v37 - __p) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_2418D3940();
            }

            if (0x5555555555555556 * ((v38 - __p) >> 3) > v16)
            {
              v16 = 0x5555555555555556 * ((v38 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v38 - __p) >> 3) >= 0x555555555555555)
            {
              v17 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              sub_2418D39E8(&__p, v17);
            }

            v18 = 8 * ((v37 - __p) >> 3);
            v19 = *&v31.value;
            *(v18 + 16) = v31.epoch;
            *v18 = v19;
            v14 = 24 * v15 + 24;
            v20 = (24 * v15 - (v37 - __p));
            memcpy((v18 - (v37 - __p)), __p, v37 - __p);
            v21 = __p;
            __p = v20;
            v37 = v14;
            v38 = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            v13 = *&v31.value;
            v37[2] = v31.epoch;
            *v12 = v13;
            v14 = v12 + 24;
          }

          v37 = v14;
        }

        v9 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v9);
    }

    if (v37 != __p)
    {
      v40 = *__p;
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v37 - __p) >> 3) - 1;
      v31 = *(__p + v22);
      lhs = v31;
      stabilizer = self->stabilizer;
      if (stabilizer)
      {
        [(AutoLoopStabilizer *)stabilizer minimumFrameDuration];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      CMTimeAdd(&v30, &lhs, &rhs);
      v31 = v30;
      lhs = v30;
      rhs = v40;
      CMTimeSubtract(&v30, &lhs, &rhs);
      v39 = v30;
      if ([(AutoLoopStabilizer *)self->stabilizer lastStabilizationResult]== 4)
      {
        [v26 setPassThrough:1];
        [v26 setCropRect:{0.0, 0.0, v4, v6}];
        [(StabilizeParamGenerator *)self ICGetIdentityHomographies:v8 toStabilizeParams:v26 withImageBounds:0 firstFrameIndex:v22 lastFrameIndex:v4, v6];
      }

      else
      {
        [(AutoLoopStabilizer *)self->stabilizer cropRect];
        [v26 setCropRect:?];
        [(StabilizeParamGenerator *)self CopyCoordinateShiftedHomographies:v8 firstIndex:0 lastIndex:v22 toStabilizeParams:v26 withImageBounds:v4, v6];
      }
    }

    v31 = v40;
    [v26 setRoiStart:&v31];
    v31 = v39;
    [v26 setRoiLength:&v31];
    if (__p)
    {
      v37 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)generatePassThruForAsset:(id)a3 trimStart:(id *)a4 trimLength:(id *)a5
{
  v8 = a3;
  v9 = objc_alloc_init(AutoLoopStabilizer);
  [(StabilizeParamGenerator *)self setStabilizer:v9];

  v10 = [(StabilizeParamGenerator *)self stabilizer];
  [v10 setMovieAssetIn:v8];

  if ((a4->var2 & 0x1D) == 1)
  {
    v11 = [(StabilizeParamGenerator *)self stabilizer];
    v19 = *&a4->var0;
    var3 = a4->var3;
    [v11 setTrimStart:&v19];
  }

  if ((a5->var2 & 0x1D) == 1)
  {
    v12 = [(StabilizeParamGenerator *)self stabilizer];
    v19 = *&a5->var0;
    var3 = a5->var3;
    [v12 setTrimLength:&v19];
  }

  v13 = [(StabilizeParamGenerator *)self stabilizer];
  v14 = [v13 analyzeForAutoloopWithDirect:0 toAnalysisOutput:&v19];

  if (v14 && (-[StabilizeParamGenerator stabilizer](self, "stabilizer"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 processStabilizationAnalysis:v19 forcePassThru:1 forceSmoothing:0 forceSequentialTripod:0], v15, v16 == 4))
  {
    v17 = [(StabilizeParamGenerator *)self generateStabilizeParams];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)generateTrivialPassThruForFrameTimes:(void *)a3 totalDuration:(id *)a4
{
  v6 = +[StabilizeParams stabilizeParams];
  [v6 setPassThrough:1];
  [v6 setCropRect:{0.0, 0.0, 1.0, 1.0}];
  v7 = *a3;
  if (*(a3 + 1) == *a3)
  {
    sub_2418DD5E8();
  }

  v8 = *v7;
  var3 = *(v7 + 2);
  v10 = v8;
  [v6 setRoiStart:&v10];
  v10 = *&a4->var0;
  var3 = a4->var3;
  [v6 setRoiLength:&v10];

  return v6;
}

@end