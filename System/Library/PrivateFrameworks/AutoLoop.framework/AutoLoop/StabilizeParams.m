@interface StabilizeParams
+ (id)stabilizeParams;
+ (id)stabilizeParamsFromNSDictionary:(id)a3;
+ (id)stabilizeParamsFromURL:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForFrame:(SEL)a3;
- (BOOL)writeToURL:(id)a3;
- (CGRect)cropRect;
- (StabilizeParams)init;
- (id).cxx_construct;
- (id)infoAsDict;
- (id)initFromDict:(id)a3;
- (void)append:(id *)a3;
- (void)frameTimes;
- (void)getFrameInfo:(unsigned int)a3 frameInfo:(id *)a4;
@end

@implementation StabilizeParams

- (StabilizeParams)init
{
  v7.receiver = self;
  v7.super_class = StabilizeParams;
  result = [(StabilizeParams *)&v7 init];
  if (result)
  {
    v3 = MEMORY[0x277CC08F0];
    v4 = *MEMORY[0x277CC08F0];
    *(&result->version + 1) = *MEMORY[0x277CC08F0];
    *(&result->roiStart.epoch + 4) = v4;
    *&result->numFrames = 0x300000000;
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    result->cropRect.origin = *MEMORY[0x277CBF3A0];
    v6 = *(v3 + 16);
    *&result->roiStart.flags = v6;
    *&result->roiLength.flags = v6;
    result->cropRect.size = v5;
    *&result->passThrough = 0;
  }

  return result;
}

+ (id)stabilizeParams
{
  v2 = objc_alloc_init(StabilizeParams);

  return v2;
}

+ (id)stabilizeParamsFromURL:(id)a3
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a3];
  if (v3)
  {
    v4 = [[StabilizeParams alloc] initFromDict:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)append:(id *)a3
{
  end = self->mFrameInfo.__end_;
  cap = self->mFrameInfo.__cap_;
  if (end >= cap)
  {
    begin = self->mFrameInfo.__begin_;
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((end - begin) >> 2);
    v12 = v11 + 1;
    if (v11 + 1 > 0x444444444444444)
    {
      sub_2418D3940();
    }

    v13 = 0xEEEEEEEEEEEEEEEFLL * ((cap - begin) >> 2);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x222222222222222)
    {
      v14 = 0x444444444444444;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_24190D258(&self->mFrameInfo, v14);
    }

    v15 = 60 * v11;
    v16 = *a3->var0;
    v17 = *&a3->var0[4];
    v18 = *&a3->var0[8];
    *(v15 + 44) = *(&a3->var1.var0 + 4);
    *(v15 + 16) = v17;
    *(v15 + 32) = v18;
    *v15 = v16;
    v9 = (60 * v11 + 60);
    v19 = self->mFrameInfo.__begin_;
    v20 = (self->mFrameInfo.__end_ - v19);
    v21 = (v15 - v20);
    memcpy((v15 - v20), v19, v20);
    v22 = self->mFrameInfo.__begin_;
    self->mFrameInfo.__begin_ = v21;
    self->mFrameInfo.__end_ = v9;
    self->mFrameInfo.__cap_ = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    v6 = *a3->var0;
    v7 = *&a3->var0[4];
    v8 = *&a3->var0[8];
    *(end + 44) = *(&a3->var1.var0 + 4);
    *(end + 1) = v7;
    *(end + 2) = v8;
    *end = v6;
    v9 = (end + 60);
  }

  self->mFrameInfo.__end_ = v9;
  ++self->numFrames;
}

- (void)getFrameInfo:(unsigned int)a3 frameInfo:(id *)a4
{
  begin = self->mFrameInfo.__begin_;
  if (0xEEEEEEEEEEEEEEEFLL * ((self->mFrameInfo.__end_ - begin) >> 2) <= a3)
  {
    sub_241905D34(a4);
    v10 = MEMORY[0x277CC08F0];
    *&a4->var0[9] = *MEMORY[0x277CC08F0];
    *&a4->var1.var2 = *(v10 + 16);
  }

  else
  {
    v6 = (begin + 60 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    *(&a4->var1.var0 + 4) = *(v6 + 44);
    *&a4->var0[4] = v8;
    *&a4->var0[8] = v9;
    *a4->var0 = v7;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeForFrame:(SEL)a3
{
  v4 = *&self->var1;
  v5 = 0xEEEEEEEEEEEEEEEFLL * ((self->var3 - v4) >> 2);
  v6 = v4 + 60 * a4 + 36;
  if (v5 <= a4)
  {
    v7 = MEMORY[0x277CC08F0];
  }

  else
  {
    v7 = v6;
  }

  *retstr = *v7;
  return self;
}

- (BOOL)writeToURL:(id)a3
{
  v4 = a3;
  v5 = [(StabilizeParams *)self infoAsDict];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 writeToURL:v4 atomically:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)infoAsDict
{
  v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->numFrames];
  for (i = 0; i < [(StabilizeParams *)self numFrames]; ++i)
  {
    v4 = (self->mFrameInfo.__begin_ + 60 * i);
    v5 = v4[1];
    v27[0] = *v4;
    v27[1] = v5;
    v28[0] = v4[2];
    *(v28 + 12) = *(v4 + 44);
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
    for (j = 0; j != 36; j += 4)
    {
      LODWORD(v8) = *(v27 + j);
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      [v7 addObject:v10];
    }

    [v6 setObject:v7 forKeyedSubscript:@"Homographies"];
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v28 + 4)];
    [v6 setObject:v11 forKeyedSubscript:@"FrameTimeV"];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v28[0])];

    [v6 setObject:v12 forKeyedSubscript:@"FrameTimeS"];
    [v26 addObject:v6];
  }

  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->version];
  [v13 setObject:v14 forKeyedSubscript:@"Version"];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->cropRect.origin.x];

  [v13 setObject:v15 forKeyedSubscript:@"CropRectX"];
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->cropRect.origin.y];

  [v13 setObject:v16 forKeyedSubscript:@"CropRectY"];
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->cropRect.size.width];

  [v13 setObject:v17 forKeyedSubscript:@"CropRectWidth"];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->cropRect.size.height];

  [v13 setObject:v18 forKeyedSubscript:@"CropRectHeight"];
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:*(&self->version + 1)];

  [v13 setObject:v19 forKeyedSubscript:@"ROIStartV"];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(self->roiStart.value)];

  [v13 setObject:v20 forKeyedSubscript:@"ROIStartS"];
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:*(&self->roiStart.epoch + 4)];

  [v13 setObject:v21 forKeyedSubscript:@"ROILengthV"];
  v22 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(self->roiLength.value)];

  [v13 setObject:v22 forKeyedSubscript:@"ROILengthS"];
  v23 = [MEMORY[0x277CCABB0] numberWithBool:self->passThrough];

  [v13 setObject:v23 forKeyedSubscript:@"PassThrough"];
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->sparseFrames];

  [v13 setObject:v24 forKeyedSubscript:@"Sparse"];
  [v13 setObject:v26 forKeyedSubscript:@"FrameArray"];

  return v13;
}

- (id)initFromDict:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Version"];
  v6 = v5;
  if (!v5)
  {
    NSLog(&cfstr_Stabilizeparam_0.isa);
    goto LABEL_16;
  }

  v7 = [v5 unsignedIntegerValue];
  self->version = v7;
  if (v7 <= 1)
  {
    NSLog(&cfstr_Stabilizeparam_1.isa, v7);
    v8 = 0;
    v9 = v6;
    goto LABEL_17;
  }

  v10 = [v4 objectForKeyedSubscript:@"CropRectX"];

  if (!v10)
  {
    NSLog(&cfstr_Stabilizeparam_2.isa);
    goto LABEL_16;
  }

  [v10 doubleValue];
  self->cropRect.origin.x = v11;
  v12 = [v4 objectForKeyedSubscript:@"CropRectY"];

  if (!v12)
  {
    NSLog(&cfstr_Stabilizeparam_3.isa);
    goto LABEL_16;
  }

  [v12 doubleValue];
  self->cropRect.origin.y = v13;
  v14 = [v4 objectForKeyedSubscript:@"CropRectWidth"];

  if (!v14)
  {
    NSLog(&cfstr_Stabilizeparam_4.isa);
    goto LABEL_16;
  }

  [v14 doubleValue];
  self->cropRect.size.width = v15;
  v9 = [v4 objectForKeyedSubscript:@"CropRectHeight"];

  if (!v9)
  {
    NSLog(&cfstr_Stabilizeparam_5.isa);
    goto LABEL_16;
  }

  [v9 doubleValue];
  self->cropRect.size.height = v16;
  v17 = [v4 objectForKeyedSubscript:@"ROIStartV"];
  v18 = [v4 objectForKeyedSubscript:@"ROIStartS"];
  v19 = sub_24190CEA4(v17, v18, (&self->version + 1));

  if (v19 || ([v4 objectForKeyedSubscript:@"ROILengthV"], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "objectForKeyedSubscript:", @"ROILengthS"), v21 = objc_claimAutoreleasedReturnValue(), v22 = sub_24190CEA4(v20, v21, (&self->roiStart.epoch + 4)), v21, v20, v22))
  {
    v8 = 0;
    goto LABEL_17;
  }

  v24 = [v4 objectForKeyedSubscript:@"PassThrough"];

  if (!v24)
  {
    NSLog(&cfstr_Stabilizeparam_6.isa);
    goto LABEL_16;
  }

  self->passThrough = [v24 BOOLValue];
  v9 = [v4 objectForKeyedSubscript:@"Sparse"];

  if (!v9)
  {
    if (self->version < 3)
    {
      goto LABEL_24;
    }

    NSLog(&cfstr_Stabilizeparam_7.isa);
LABEL_16:
    v9 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  self->sparseFrames = [v9 BOOLValue];
LABEL_24:
  v25 = [v4 objectForKeyedSubscript:@"FrameArray"];
  v26 = v25;
  v41 = v25;
  if (v25)
  {
    v27 = [v25 count];
    begin = self->mFrameInfo.__begin_;
    self->numFrames = v27;
    self->mFrameInfo.__end_ = begin;
    sub_24190CF60(&self->mFrameInfo.__begin_, v27);
    for (i = 0; ; ++i)
    {
      if (i >= [(StabilizeParams *)self numFrames])
      {
        v8 = self;
        goto LABEL_39;
      }

      v30 = [v26 objectAtIndexedSubscript:i];
      v31 = [v30 objectForKeyedSubscript:@"Homographies"];
      v32 = v31;
      if (!v31)
      {
        NSLog(&cfstr_Stabilizeparam_9.isa);
        goto LABEL_37;
      }

      if ([v31 count] != 9)
      {
        break;
      }

      for (j = 0; j != 9; ++j)
      {
        v34 = [v32 objectAtIndexedSubscript:j];
        [v34 floatValue];
        *(v42 + j) = v35;
      }

      v36 = [v30 objectForKeyedSubscript:@"FrameTimeV"];
      v37 = [v30 objectForKeyedSubscript:@"FrameTimeS"];
      v38 = sub_24190CEA4(v36, v37, &v43[4]);

      if (v38)
      {
        goto LABEL_37;
      }

      v39 = (self->mFrameInfo.__begin_ + 60 * i);
      v40 = v42[1];
      *v39 = v42[0];
      v39[1] = v40;
      v39[2] = *v43;
      *(v39 + 44) = *&v43[12];

      v26 = v41;
    }

    NSLog(&cfstr_Stabilizeparam_10.isa);
LABEL_37:
  }

  else
  {
    NSLog(&cfstr_Stabilizeparam_8.isa);
  }

  v8 = 0;
LABEL_39:

LABEL_17:
  return v8;
}

- (void)frameTimes
{
  p_mFrameTimeArray = &self->mFrameTimeArray;
  if (self->mFrameTimeArray.__end_ == self->mFrameTimeArray.__begin_)
  {
    sub_24190D038(&self->mFrameTimeArray.__begin_, self->numFrames);
    if (self->numFrames)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        [(StabilizeParams *)self timeForFrame:v5];
        v6 = self->mFrameTimeArray.__begin_ + v4;
        *(v6 + 2) = v9;
        *v6 = v8;
        ++v5;
        v4 += 24;
      }

      while (v5 < self->numFrames);
    }
  }

  return p_mFrameTimeArray;
}

+ (id)stabilizeParamsFromNSDictionary:(id)a3
{
  v3 = a3;
  v4 = [[StabilizeParams alloc] initFromDict:v3];

  return v4;
}

- (CGRect)cropRect
{
  objc_copyStruct(v6, &self->cropRect, 32, 1, 0);
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

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end