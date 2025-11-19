@interface CRLPKStrokePathCompactData
+ (id)strokePathCompactDataFrom:(id)a3;
- ($F5AAD962273941CAFF5148843C578AF7)strokePointCompactDataAtIndex:(SEL)a3;
- (BOOL)isEqualIgnoringShouldSolveMathFlag:(id)a3;
- (CGPoint)anchorPointForTexture;
- (CRLPKStrokePathCompactData)initWithCapacity:(unint64_t)a3;
- (CRLPKStrokePathCompactData)initWithCapacity:(unint64_t)a3 randomSeed:(unsigned int)a4 creationDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)appendStrokePathCompactData:(id)a3;
- (void)appendStrokePointCompactData:(id *)a3;
- (void)dealloc;
- (void)increaseCapacityBy:(unint64_t)a3;
@end

@implementation CRLPKStrokePathCompactData

- (CRLPKStrokePathCompactData)initWithCapacity:(unint64_t)a3
{
  v5 = +[NSDate now];
  v6 = [(CRLPKStrokePathCompactData *)self initWithCapacity:a3 randomSeed:0 creationDate:v5];

  return v6;
}

- (CRLPKStrokePathCompactData)initWithCapacity:(unint64_t)a3 randomSeed:(unsigned int)a4 creationDate:(id)a5
{
  v9 = a5;
  v20.receiver = self;
  v20.super_class = CRLPKStrokePathCompactData;
  v10 = [(CRLPKStrokePathCompactData *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_capacity = a3;
    v12 = 2 * a3;
    v10->_azimuthData = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
    v11->_altitudeData = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
    v11->_forceData = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
    v11->_opacityData = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
    v13 = 4 * a3;
    v11->_sizeXData = malloc_type_malloc(v13, 0x100004052888210uLL);
    v11->_sizeYData = malloc_type_malloc(v13, 0x100004052888210uLL);
    v11->_timeOffsetData = malloc_type_malloc(v13, 0x100004052888210uLL);
    v11->_radius2Data = malloc_type_malloc(v13, 0x100004052888210uLL);
    v11->_edgeWidthData = malloc_type_malloc(v12, 0x1000040BDFB0063uLL);
    v11->_thresholdData = malloc_type_malloc(v12, 0x1000040BDFB0063uLL);
    v11->_randomSeed = a4;
    objc_storeStrong(&v11->_creationDate, a5);
    __asm { FMOV            V0.2S, #1.0 }

    *&v11->_renderScaleX = _D0;
    v11->_anchorPointForTexture = CGPointZero;
    v11->_particleOffset = 0.0;
    v11->_secondaryParticleOffset = 0.0;
  }

  return v11;
}

- (void)dealloc
{
  free(self->_azimuthData);
  free(self->_altitudeData);
  free(self->_forceData);
  free(self->_opacityData);
  free(self->_sizeXData);
  free(self->_sizeYData);
  free(self->_timeOffsetData);
  free(self->_radius2Data);
  free(self->_edgeWidthData);
  free(self->_thresholdData);
  v3.receiver = self;
  v3.super_class = CRLPKStrokePathCompactData;
  [(CRLPKStrokePathCompactData *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CRLPKStrokePathCompactData alloc] initWithCapacity:self->_capacity];
  v4->_pointCount = self->_pointCount;
  memcpy(v4->_azimuthData, self->_azimuthData, 2 * self->_capacity);
  memcpy(v4->_altitudeData, self->_altitudeData, 2 * self->_capacity);
  memcpy(v4->_forceData, self->_forceData, 2 * self->_capacity);
  memcpy(v4->_opacityData, self->_opacityData, 2 * self->_capacity);
  memcpy(v4->_sizeXData, self->_sizeXData, 4 * self->_capacity);
  memcpy(v4->_sizeYData, self->_sizeYData, 4 * self->_capacity);
  memcpy(v4->_timeOffsetData, self->_timeOffsetData, 4 * self->_capacity);
  memcpy(v4->_radius2Data, self->_radius2Data, 4 * self->_capacity);
  memcpy(v4->_edgeWidthData, self->_edgeWidthData, 2 * self->_capacity);
  memcpy(v4->_thresholdData, self->_thresholdData, 2 * self->_capacity);
  v4->_randomSeed = self->_randomSeed;
  v5 = [(NSDate *)self->_creationDate copy];
  creationDate = v4->_creationDate;
  v4->_creationDate = v5;

  v4->_renderScaleX = self->_renderScaleX;
  v4->_renderScaleY = self->_renderScaleY;
  v7 = [(NSUUID *)self->_renderGroupID copy];
  renderGroupID = v4->_renderGroupID;
  v4->_renderGroupID = v7;

  v4->_anchorPointForTexture = self->_anchorPointForTexture;
  v4->_particleOffset = self->_particleOffset;
  v4->_secondaryParticleOffset = self->_secondaryParticleOffset;
  v4->_shouldSolveMath = self->_shouldSolveMath;
  v4->_isSynthesizedStroke = self->_isSynthesizedStroke;
  return v4;
}

+ (id)strokePathCompactDataFrom:(id)a3
{
  v3 = a3;
  v4 = [CRLPKStrokePathCompactData alloc];
  v5 = [v3 pointCount];
  v6 = [v3 randomSeed];
  v7 = [v3 creationDate];
  v8 = [(CRLPKStrokePathCompactData *)v4 initWithCapacity:v5 randomSeed:v6 creationDate:v7];

  [(CRLPKStrokePathCompactData *)v8 appendStrokePathCompactData:v3];
  [v3 renderScaleX];
  [(CRLPKStrokePathCompactData *)v8 setRenderScaleX:?];
  [v3 renderScaleY];
  [(CRLPKStrokePathCompactData *)v8 setRenderScaleY:?];
  v9 = [v3 renderGroupID];
  [(CRLPKStrokePathCompactData *)v8 setRenderGroupID:v9];

  [v3 anchorPointForTexture];
  [(CRLPKStrokePathCompactData *)v8 setAnchorPointForTexture:?];
  [v3 particleOffset];
  [(CRLPKStrokePathCompactData *)v8 setParticleOffset:?];
  [v3 secondaryParticleOffset];
  [(CRLPKStrokePathCompactData *)v8 setSecondaryParticleOffset:?];
  -[CRLPKStrokePathCompactData setShouldSolveMath:](v8, "setShouldSolveMath:", [v3 shouldSolveMath]);
  v10 = [v3 isSynthesizedStroke];

  [(CRLPKStrokePathCompactData *)v8 setIsSynthesizedStroke:v10];

  return v8;
}

- (BOOL)isEqualIgnoringShouldSolveMathFlag:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_27;
  }

  pointCount = self->_pointCount;
  if (pointCount != v6[14])
  {
    goto LABEL_27;
  }

  v9 = 0;
  while (pointCount != v9)
  {
    if (self->_azimuthData[v9] == *(v6[7] + 2 * v9) && self->_altitudeData[v9] == *(v6[6] + 2 * v9) && self->_forceData[v9] == *(v6[4] + 2 * v9) && self->_opacityData[v9] == *(v6[5] + 2 * v9) && self->_sizeXData[v9] == *(v6[8] + 4 * v9) && self->_sizeYData[v9] == *(v6[9] + 4 * v9) && self->_timeOffsetData[v9] == *(v6[10] + 4 * v9) && self->_radius2Data[v9] == *(v6[11] + 4 * v9) && self->_edgeWidthData[v9] == *(v6[12] + 2 * v9))
    {
      v10 = self->_thresholdData[v9];
      v11 = *(v6[13] + 2 * v9++);
      if (v10 == v11)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  randomSeed = self->_randomSeed;
  if (randomSeed != [v6 randomSeed])
  {
    goto LABEL_27;
  }

  creationDate = self->_creationDate;
  v14 = [v7 creationDate];
  v15 = [(NSDate *)creationDate isEqual:v14];

  if (v15)
  {
    if (self->_renderScaleX != *(v7 + 4))
    {
      goto LABEL_27;
    }

    if (self->_renderScaleY != *(v7 + 5))
    {
      goto LABEL_27;
    }

    renderGroupID = self->_renderGroupID;
    if (renderGroupID | v7[16])
    {
      if (![(NSUUID *)renderGroupID isEqual:?])
      {
        goto LABEL_27;
      }
    }

    LOBYTE(v15) = 0;
    if (self->_anchorPointForTexture.x == *(v7 + 19) && self->_anchorPointForTexture.y == *(v7 + 20))
    {
      if (self->_particleOffset == *(v7 + 17) && self->_secondaryParticleOffset == *(v7 + 18))
      {
        LOBYTE(v15) = self->_isSynthesizedStroke == *(v7 + 9);
        goto LABEL_28;
      }

LABEL_27:
      LOBYTE(v15) = 0;
    }
  }

LABEL_28:

  return v15;
}

- ($F5AAD962273941CAFF5148843C578AF7)strokePointCompactDataAtIndex:(SEL)a3
{
  if (*&self[4].var0 <= a4)
  {
    v12 = self;
    v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D334();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      v16 = *&v12[4].var0;
      *buf = 67110402;
      v31 = v14;
      v32 = 2082;
      v33 = "[CRLPKStrokePathCompactData strokePointCompactDataAtIndex:]";
      v34 = 2082;
      v35 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m";
      v36 = 1024;
      v37 = 264;
      v38 = 2048;
      v39 = a4;
      v40 = 2048;
      v41 = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Out of bounds error. The given index (%zd) must be within [0, %zd).", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D348();
    }

    v17 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v17);
    }

    v29 = *&v12[4].var0;
    sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Out of bounds error. The given index (%zd) must be within [0, %zd).", v18, v19, v20, v21, v22, v23, v24, "[CRLPKStrokePathCompactData strokePointCompactDataAtIndex:]");
    v25 = [NSString stringWithUTF8String:"[CRLPKStrokePathCompactData strokePointCompactDataAtIndex:]"];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:264 isFatal:1 description:"Out of bounds error. The given index (%zd) must be within [0, %zd].", a4, *&v12[4].var0, 264, a4, v29);

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, v28);
    abort();
  }

  v4 = *&self[1].var5;
  retstr->var0 = *(*&self[1].var2 + 2 * a4);
  retstr->var1 = *(v4 + 2 * a4);
  v5 = *&self[2].var0;
  retstr->var2 = *(*&self[1].var7 + 2 * a4);
  v6 = *(*&self[2].var4 + 4 * a4);
  v7 = *(*&self[2].var6 + 4 * a4);
  v8 = *&self[3].var2;
  v9 = *(*&self[2].var8 + 4 * a4);
  retstr->var3 = *(v5 + 2 * a4);
  retstr->var4 = v6;
  retstr->var5 = v7;
  v10 = *(v8 + 4 * a4);
  retstr->var6 = v9;
  retstr->var7 = v10;
  v11 = *&self[3].var7;
  retstr->var8 = *(*&self[3].var5 + 2 * a4);
  retstr->var9 = *(v11 + 2 * a4);
  return self;
}

- (void)increaseCapacityBy:(unint64_t)a3
{
  v4 = self->_capacity + a3;
  self->_capacity = v4;
  self->_forceData = malloc_type_realloc(self->_forceData, 2 * v4, 0x1000040BDFB0063uLL);
  self->_altitudeData = malloc_type_realloc(self->_altitudeData, 2 * self->_capacity, 0x1000040BDFB0063uLL);
  self->_azimuthData = malloc_type_realloc(self->_azimuthData, 2 * self->_capacity, 0x1000040BDFB0063uLL);
  self->_opacityData = malloc_type_realloc(self->_opacityData, 2 * self->_capacity, 0x1000040BDFB0063uLL);
  self->_sizeXData = malloc_type_realloc(self->_sizeXData, 4 * self->_capacity, 0x100004052888210uLL);
  self->_sizeYData = malloc_type_realloc(self->_sizeYData, 4 * self->_capacity, 0x100004052888210uLL);
  self->_timeOffsetData = malloc_type_realloc(self->_timeOffsetData, 4 * self->_capacity, 0x100004052888210uLL);
  self->_radius2Data = malloc_type_realloc(self->_radius2Data, 4 * self->_capacity, 0x100004052888210uLL);
  self->_edgeWidthData = malloc_type_realloc(self->_edgeWidthData, 2 * self->_capacity, 0x1000040BDFB0063uLL);
  self->_thresholdData = malloc_type_realloc(self->_thresholdData, 2 * self->_capacity, 0x1000040BDFB0063uLL);
}

- (void)appendStrokePathCompactData:(id)a3
{
  v4 = a3;
  v5 = [v4 pointCount];
  pointCount = self->_pointCount;
  capacity = self->_capacity;
  v8 = v5 + pointCount;
  v9 = v5 + pointCount - capacity;
  if (v5 + pointCount != capacity)
  {
    [(CRLPKStrokePathCompactData *)self increaseCapacityBy:v9];
    pointCount = self->_pointCount;
    v8 = self->_capacity;
  }

  if (pointCount >= v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D370();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D384();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D40C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLPKStrokePathCompactData appendStrokePathCompactData:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:300 isFatal:0 description:"Out of bounds error when appending a strokePointData object."];

    pointCount = self->_pointCount;
    v8 = self->_capacity;
  }

  if (pointCount < v8)
  {
    memcpy(&self->_forceData[pointCount], [v4 forceData], 2 * v5);
    memcpy(&self->_altitudeData[self->_pointCount], [v4 altitudeData], 2 * v5);
    memcpy(&self->_azimuthData[self->_pointCount], [v4 azimuthData], 2 * v5);
    memcpy(&self->_opacityData[self->_pointCount], [v4 opacityData], 2 * v5);
    memcpy(&self->_sizeXData[self->_pointCount], [v4 sizeXData], 4 * v5);
    memcpy(&self->_sizeYData[self->_pointCount], [v4 sizeYData], 4 * v5);
    memcpy(&self->_timeOffsetData[self->_pointCount], [v4 timeOffsetData], 4 * v5);
    memcpy(&self->_radius2Data[self->_pointCount], [v4 radius2Data], 4 * v5);
    memcpy(&self->_edgeWidthData[self->_pointCount], [v4 edgeWidthData], 2 * v5);
    memcpy(&self->_thresholdData[self->_pointCount], [v4 thresholdData], 2 * v5);
    self->_pointCount += v5;
  }
}

- (void)appendStrokePointCompactData:(id *)a3
{
  pointCount = self->_pointCount;
  capacity = self->_capacity;
  if (pointCount >= capacity)
  {
    [(CRLPKStrokePathCompactData *)self increaseCapacityBy:fmax(vcvtd_n_f64_u64(capacity, 1uLL), 1.0)];
    pointCount = self->_pointCount;
    capacity = self->_capacity;
  }

  if (pointCount >= capacity)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10132D434();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132D448();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132D4D0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLPKStrokePathCompactData appendStrokePointCompactData:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLPKStrokePathConverter.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:321 isFatal:0 description:"Out of bounds error when appending a strokePointData object."];

    pointCount = self->_pointCount;
    capacity = self->_capacity;
  }

  if (pointCount < capacity)
  {
    opacityData = self->_opacityData;
    self->_forceData[pointCount] = a3->var0;
    azimuthData = self->_azimuthData;
    self->_altitudeData[pointCount] = a3->var2;
    azimuthData[pointCount] = a3->var3;
    opacityData[pointCount] = a3->var1;
    sizeYData = self->_sizeYData;
    self->_sizeXData[pointCount] = a3->var4;
    sizeYData[pointCount] = a3->var5;
    var6 = a3->var6;
    thresholdData = self->_thresholdData;
    self->_edgeWidthData[pointCount] = a3->var8;
    radius2Data = self->_radius2Data;
    self->_timeOffsetData[pointCount] = var6;
    radius2Data[pointCount] = a3->var7;
    thresholdData[pointCount] = a3->var9;
    self->_pointCount = pointCount + 1;
  }
}

- (CGPoint)anchorPointForTexture
{
  x = self->_anchorPointForTexture.x;
  y = self->_anchorPointForTexture.y;
  result.y = y;
  result.x = x;
  return result;
}

@end