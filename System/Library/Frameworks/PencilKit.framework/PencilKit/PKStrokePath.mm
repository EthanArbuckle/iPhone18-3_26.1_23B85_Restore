@interface PKStrokePath
+ (id)strokeDataFromDataArchive:(const void *)archive;
+ (void)_calculateOffsets:(unint64_t *)offsets sizes:(unint64_t *)sizes;
+ (void)calculateOffsets;
- (BOOL)canApplyDelta:(id)delta;
- (BOOL)deltaContainsNewInfo:(id)info;
- (BOOL)hasAzimuthAngles;
- (BOOL)hasValidPointTimestampData;
- (BOOL)saveToDataArchive:(void *)archive;
- (CGFloat)parametricValue:(CGFloat)parametricValue offsetByDistance:(CGFloat)distanceStep;
- (CGFloat)parametricValue:(CGFloat)parametricValue offsetByTime:(NSTimeInterval)timeStep;
- (CGPath)_newPathRepresentation;
- (CGPoint)interpolatedLocationAt:(CGFloat)parametricValue;
- (CGPoint)locationAtIndex:(unint64_t)index;
- (CGPoint)locationOnSegment:(unint64_t)segment t:(double)t;
- (NSDate)creationDate;
- (NSUInteger)count;
- (PKStrokePath)init;
- (PKStrokePath)initWithControlPoints:(NSArray *)controlPoints creationDate:(NSDate *)creationDate;
- (PKStrokePath)initWithData:(id)data range:(_NSRange)range UUID:(id)d;
- (PKStrokePath)initWithDataPoints:(PKStrokePathPointsPrivate *)points immutableCount:(unint64_t)count inputType:(int64_t)type UUID:(id)d didValidateTimestamps:(BOOL)timestamps hasValidTimestampData:(BOOL)data cachedMaxWidth:(double)width unknownFields:(shared_ptr<PKProtobufUnknownFields>)self0;
- (PKStrokePath)initWithPoints:(PKCompressedStrokePoint *)points count:(unint64_t)count immutableCount:(unint64_t)immutableCount inputType:(int64_t)type timestamp:(double)timestamp UUID:(id)d;
- (PKStrokePath)initWithRawValue:(id)value;
- (PKStrokePoint)interpolatedPointAt:(CGFloat)parametricValue;
- (PKStrokePoint)objectAtIndexedSubscript:(NSUInteger)i;
- (PKStrokePoint)pointAtIndex:(NSUInteger)i;
- (_PKStrokePoint)decompressedPointAt:(SEL)at;
- (double)_maxWidth;
- (double)interpolatedTimeoffsetAt:(double)at;
- (id).cxx_construct;
- (id)copyTransformed:(id)transformed inCoordinateSpace:(CGAffineTransform *)space;
- (id)copyWithScaledRadius:(double)radius isVector:(BOOL)vector;
- (id)copyWithStrokeDataUUID:(id)d;
- (id)dataApplying:(id)applying;
- (id)deltaTo:(id)to;
- (id)rawValue;
- (unint64_t)_pointsCount;
- (unsigned)_legacyRandomSeed;
- (void)_enumerateInterpolatedPointsInRange:(id)range incrementBlock:(id)block usingBlock:(id)usingBlock;
- (void)_scaleRadius:(double)radius isVector:(BOOL)vector;
- (void)_transform:(id)_transform existingTransform:(CGAffineTransform *)transform;
- (void)enumerateInterpolatedPointsInRange:(PKFloatRange *)range strideByDistance:(CGFloat)distanceStep usingBlock:(void *)block;
- (void)enumerateInterpolatedPointsInRange:(PKFloatRange *)range strideByParametricStep:(CGFloat)parametricStep usingBlock:(void *)block;
- (void)enumerateInterpolatedPointsInRange:(PKFloatRange *)range strideByTime:(NSTimeInterval)timeStep usingBlock:(void *)block;
@end

@implementation PKStrokePath

uint64_t __32__PKStrokePath_calculateOffsets__block_invoke()
{
  v0 = objc_opt_class();
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (PKStrokePath)init
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v3;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v6 = [(PKStrokePath *)self initWithPoints:0 count:0 immutableCount:0 inputType:1 timestamp:uUID UUID:v4];

  return v6;
}

+ (void)calculateOffsets
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__PKStrokePath_calculateOffsets__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[PKStrokePath calculateOffsets]::onceToken != -1)
  {
    dispatch_once(&+[PKStrokePath calculateOffsets]::onceToken, block);
  }
}

- (PKStrokePath)initWithPoints:(PKCompressedStrokePoint *)points count:(unint64_t)count immutableCount:(unint64_t)immutableCount inputType:(int64_t)type timestamp:(double)timestamp UUID:(id)d
{
  dCopy = d;
  v18.receiver = self;
  v18.super_class = PKStrokePath;
  v16 = [(PKStrokePath *)&v18 init];
  if (v16)
  {
    [objc_opt_class() calculateOffsets];
    v16->_immutablePointsCount = immutableCount;
    v16->_inputType = type;
    objc_storeStrong(&v16->_strokeDataUUID, d);
    v16->_cachedMaxWidth = 1.79769313e308;
    [(PKStrokePath *)v16 setPoints:points pointsCount:count timestamp:timestamp];
  }

  return v16;
}

- (PKStrokePath)initWithDataPoints:(PKStrokePathPointsPrivate *)points immutableCount:(unint64_t)count inputType:(int64_t)type UUID:(id)d didValidateTimestamps:(BOOL)timestamps hasValidTimestampData:(BOOL)data cachedMaxWidth:(double)width unknownFields:(shared_ptr<PKProtobufUnknownFields>)self0
{
  dCopy = d;
  v27.receiver = self;
  v27.super_class = PKStrokePath;
  v19 = [(PKStrokePath *)&v27 init];
  if (v19)
  {
    [objc_opt_class() calculateOffsets];
    v19->_immutablePointsCount = count;
    v19->_startIndex = type;
    v19->_inputType = type;
    objc_storeStrong(&v19->_strokeDataUUID, d);
    v19->_cachedMaxWidth = width;
    ptr = points->constants.__ptr_;
    cntrl = points->constants.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v22 = v19->_strokeDataPointsPrivate.constants.__cntrl_;
    v19->_strokeDataPointsPrivate.constants.__ptr_ = ptr;
    v19->_strokeDataPointsPrivate.constants.__cntrl_ = cntrl;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (&v19->_strokeDataPointsPrivate != points)
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v19->_strokeDataPointsPrivate.pointsData.__begin_, points->pointsData.__begin_, points->pointsData.__end_, points->pointsData.__end_ - points->pointsData.__begin_);
    }

    v24 = *fields.__ptr_;
    v23 = *(fields.__ptr_ + 1);
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = v19->_unknownFields.__cntrl_;
    v19->_unknownFields.__ptr_ = v24;
    v19->_unknownFields.__cntrl_ = v23;
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    v19->_didValidateTimestamps = timestamps;
    v19->_hasValidTimestampData = data;
  }

  return v19;
}

- (PKStrokePath)initWithControlPoints:(NSArray *)controlPoints creationDate:(NSDate *)creationDate
{
  v6 = controlPoints;
  v7 = creationDate;
  v25.receiver = self;
  v25.super_class = PKStrokePath;
  v8 = [(PKStrokePath *)&v25 init];
  if (v8)
  {
    [objc_opt_class() calculateOffsets];
    v8->_immutablePointsCount = [(NSArray *)v6 count];
    v8->_inputType = 1;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    strokeDataUUID = v8->_strokeDataUUID;
    v8->_strokeDataUUID = uUID;

    v8->_cachedMaxWidth = 1.79769313e308;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    std::vector<PKCompressedStrokePoint>::resize(&v22, v8->_immutablePointsCount);
    if (v8->_immutablePointsCount)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = [(NSArray *)v6 objectAtIndexedSubscript:v12, v19, v20, v21];
        v14 = v13;
        if (v13)
        {
          [v13 _compressedPoint];
        }

        else
        {
          LODWORD(v21) = 0;
          v19 = 0u;
          v20 = 0u;
        }

        v15 = &v22[v11];
        *(v15 + 8) = v21;
        *v15 = v19;
        *(v15 + 1) = v20;

        ++v12;
        immutablePointsCount = v8->_immutablePointsCount;
        v11 += 36;
      }

      while (v12 < immutablePointsCount);
    }

    else
    {
      immutablePointsCount = 0;
    }

    v17 = v22;
    if (v23 != v22)
    {
      [(NSDate *)v7 timeIntervalSinceReferenceDate];
      [(PKStrokePath *)v8 setPoints:v17 pointsCount:immutablePointsCount timestamp:?];
      v17 = v22;
    }

    if (v17)
    {
      v23 = v17;
      operator delete(v17);
    }
  }

  return v8;
}

- (PKStrokePath)initWithData:(id)data range:(_NSRange)range UUID:(id)d
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = PKStrokePath;
  v11 = [(PKStrokePath *)&v16 init];
  if (v11)
  {
    [objc_opt_class() calculateOffsets];
    *(v11 + 11) = location;
    *(v11 + 10) = [dataCopy _immutablePointsCount];
    *(v11 + 12) = [dataCopy _inputType];
    objc_storeStrong(v11 + 13, d);
    *(v11 + 9) = 0x7FEFFFFFFFFFFFFFLL;
    [v11 setPointsFrom:dataCopy range:{location, length}];
    v13 = dataCopy[6];
    v12 = dataCopy[7];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 7);
    *(v11 + 6) = v13;
    *(v11 + 7) = v12;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  return v11;
}

- (id)copyTransformed:(id)transformed inCoordinateSpace:(CGAffineTransform *)space
{
  transformedCopy = transformed;
  v7 = [PKStrokePath alloc];
  cntrl = self->_strokeDataPointsPrivate.constants.__cntrl_;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v23 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, self->_strokeDataPointsPrivate.pointsData.__begin_, self->_strokeDataPointsPrivate.pointsData.__end_, self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_);
  immutablePointsCount = self->_immutablePointsCount;
  inputType = self->_inputType;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  didValidateTimestamps = self->_didValidateTimestamps;
  hasValidTimestampData = self->_hasValidTimestampData;
  cachedMaxWidth = self->_cachedMaxWidth;
  v15 = self->_unknownFields.__cntrl_;
  v20 = self->_unknownFields.__ptr_;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = [(PKStrokePath *)v7 initWithDataPoints:&ptr immutableCount:immutablePointsCount inputType:inputType UUID:uUID didValidateTimestamps:didValidateTimestamps hasValidTimestampData:hasValidTimestampData cachedMaxWidth:cachedMaxWidth unknownFields:&v20];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v17 = *&space->c;
  v19[0] = *&space->a;
  v19[1] = v17;
  v19[2] = *&space->tx;
  [(PKStrokePath *)v16 _transform:transformedCopy existingTransform:v19];

  return v16;
}

- (id)copyWithScaledRadius:(double)radius isVector:(BOOL)vector
{
  vectorCopy = vector;
  v7 = [PKStrokePath alloc];
  cntrl = self->_strokeDataPointsPrivate.constants.__cntrl_;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v21 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, self->_strokeDataPointsPrivate.pointsData.__begin_, self->_strokeDataPointsPrivate.pointsData.__end_, self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_);
  immutablePointsCount = self->_immutablePointsCount;
  inputType = self->_inputType;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  didValidateTimestamps = self->_didValidateTimestamps;
  hasValidTimestampData = self->_hasValidTimestampData;
  cachedMaxWidth = self->_cachedMaxWidth;
  v15 = self->_unknownFields.__cntrl_;
  v18 = self->_unknownFields.__ptr_;
  v19 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = [(PKStrokePath *)v7 initWithDataPoints:&ptr immutableCount:immutablePointsCount inputType:inputType UUID:uUID didValidateTimestamps:didValidateTimestamps hasValidTimestampData:hasValidTimestampData cachedMaxWidth:cachedMaxWidth unknownFields:&v18];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  [(PKStrokePath *)v16 _scaleRadius:vectorCopy isVector:radius];
  return v16;
}

- (id)copyWithStrokeDataUUID:(id)d
{
  dCopy = d;
  v5 = [PKStrokePath alloc];
  cntrl = self->_strokeDataPointsPrivate.constants.__cntrl_;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v18 = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  __p = 0;
  v20 = 0;
  v21 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, self->_strokeDataPointsPrivate.pointsData.__begin_, self->_strokeDataPointsPrivate.pointsData.__end_, self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_);
  immutablePointsCount = self->_immutablePointsCount;
  inputType = self->_inputType;
  didValidateTimestamps = self->_didValidateTimestamps;
  hasValidTimestampData = self->_hasValidTimestampData;
  cachedMaxWidth = self->_cachedMaxWidth;
  v12 = self->_unknownFields.__cntrl_;
  v15 = self->_unknownFields.__ptr_;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = [(PKStrokePath *)v5 initWithDataPoints:&ptr immutableCount:immutablePointsCount inputType:inputType UUID:dCopy didValidateTimestamps:didValidateTimestamps hasValidTimestampData:hasValidTimestampData cachedMaxWidth:cachedMaxWidth unknownFields:&v15];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return v13;
}

- (void)_transform:(id)_transform existingTransform:(CGAffineTransform *)transform
{
  _transformCopy = _transform;
  v7 = self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_;
  if (v7)
  {
    v8 = *(self->_strokeDataPointsPrivate.constants.__ptr_ + 6);
    if (v8 <= v7)
    {
      v9 = 0;
      v10 = v7 / v8;
      do
      {
        v11 = PKStrokePathPointsPrivate::locationAtIndex(&self->_strokeDataPointsPrivate, v9);
        v13 = _transformCopy[2](_transformCopy, transform->tx + v12 * transform->c + transform->a * v11, transform->ty + v12 * transform->d + transform->b * v11);
        v18 = v14;
        v19 = v13;
        v15 = *&transform->c;
        *&v20.a = *&transform->a;
        *&v20.c = v15;
        *&v20.tx = *&transform->tx;
        CGAffineTransformInvert(&v21, &v20);
        v16 = vaddq_f64(*&v21.tx, vmlaq_n_f64(vmulq_n_f64(*&v21.c, v18), *&v21.a, v19));
        y = v16.y;
        PKStrokePathPointsPrivate::setLocation(&self->_strokeDataPointsPrivate, v16, v9++);
      }

      while (v10 != v9);
    }
  }
}

- (void)_scaleRadius:(double)radius isVector:(BOOL)vector
{
  vectorCopy = vector;
  p_strokeDataPointsPrivate = &self->_strokeDataPointsPrivate;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  if ((*(ptr + 32) & 4) == 0)
  {
    operator new();
  }

  begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
  v10 = self->_strokeDataPointsPrivate.pointsData.__end_ - begin;
  if (v10)
  {
    v11 = *(ptr + 6);
    if (v11 <= v10)
    {
      v12 = 0;
      v13 = v10 / v11;
      do
      {
        if (v13 > v12)
        {
          v14 = PKStrokePathPointsPrivate::radiusAtIndex(p_strokeDataPointsPrivate, v12);
          v15 = (v14 + -2.0) * radius + 2.0;
          v16 = v14 * radius;
          if (vectorCopy)
          {
            v16 = v15;
          }

          v17 = v16;
          *&begin[*(ptr + 94)] = v17;
        }

        ++v12;
        begin += v11;
      }

      while (v13 != v12);
    }
  }

  if (!vectorCopy)
  {
    v18 = p_strokeDataPointsPrivate->constants.__ptr_;
    if ((*(p_strokeDataPointsPrivate->constants.__ptr_ + 33) & 2) == 0)
    {
      operator new();
    }

    v19 = self->_strokeDataPointsPrivate.pointsData.__begin_;
    v20 = self->_strokeDataPointsPrivate.pointsData.__end_ - v19;
    if (v20)
    {
      v21 = *(v18 + 6);
      if (v21 <= v20)
      {
        v22 = 0;
        v23 = v20 / v21;
        do
        {
          if (v23 > v22)
          {
            v24 = PKStrokePathPointsPrivate::radius2AtIndex(p_strokeDataPointsPrivate, v22) * radius;
            *&v19[*(v18 + 101)] = v24;
          }

          ++v22;
          v19 += v21;
        }

        while (v23 != v22);
      }
    }
  }
}

- (unint64_t)_pointsCount
{
  v2 = self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_;
  if (v2)
  {
    return v2 / *(self->_strokeDataPointsPrivate.constants.__ptr_ + 6);
  }

  else
  {
    return 0;
  }
}

- (NSUInteger)count
{
  v2 = self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_;
  if (v2)
  {
    return v2 / *(self->_strokeDataPointsPrivate.constants.__ptr_ + 6);
  }

  else
  {
    return 0;
  }
}

- (NSDate)creationDate
{
  v2 = MEMORY[0x1E695DF00];
  [(PKStrokePath *)self _timestamp];

  return [v2 dateWithTimeIntervalSinceReferenceDate:?];
}

- (BOOL)hasValidPointTimestampData
{
  p_strokeDataPointsPrivate = &self->_strokeDataPointsPrivate;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  if ((*(ptr + 40) & 2) != 0)
  {
    return 0;
  }

  begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
  if ((v6 = self->_strokeDataPointsPrivate.pointsData.__end_ - begin) != 0)
  {
    v7 = *(ptr + 6) <= v6 && (*(ptr + 32) & 2) != 0 ? &begin[*(ptr + 93)] : (ptr + 64);
    v8 = v6 / *(ptr + 6) - 1;
  }

  else
  {
    v7 = (ptr + 64);
    v8 = -1;
  }

  v9 = *v7;
  if (PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8) <= v9)
  {
    return 0;
  }

  else
  {
    if (self->_didValidateTimestamps)
    {
      hasValidTimestampData = self->_hasValidTimestampData;
    }

    else
    {
      v11 = self->_strokeDataPointsPrivate.pointsData.__end_ - self->_strokeDataPointsPrivate.pointsData.__begin_;
      if (v11)
      {
        v12 = v11 / *(p_strokeDataPointsPrivate->constants.__ptr_ + 6) - 1;
      }

      else
      {
        v12 = -1;
      }

      v13 = 0;
      v14 = v12 & ~(v12 >> 63);
      while (v14 != v13)
      {
        v15 = v13 + 1;
        v16 = PKStrokePathPointsPrivate::timestampAtIndex(p_strokeDataPointsPrivate, v13 + 1);
        v17 = v16 - PKStrokePathPointsPrivate::timestampAtIndex(p_strokeDataPointsPrivate, v13);
        v18 = v17 > 0.0 && v17 < 10.0;
        ++v13;
        if (!v18)
        {
          v14 = v15 - 1;
          break;
        }
      }

      hasValidTimestampData = v14 >= v12;
      self->_didValidateTimestamps = 1;
      self->_hasValidTimestampData = v14 >= v12;
    }
  }

  return hasValidTimestampData;
}

- (BOOL)hasAzimuthAngles
{
  p_strokeDataPointsPrivate = &self->_strokeDataPointsPrivate;
  if ((*(self->_strokeDataPointsPrivate.constants.__ptr_ + 40) & 0x40) != 0)
  {
    v3 = [(PKStrokePath *)self count];
    if (v3)
    {
      v5 = PKStrokePathPointsPrivate::azimuthAtIndex(p_strokeDataPointsPrivate, 0, v4);
      LOBYTE(v3) = fabs(v5) >= 0.00999999978 && fabs(v5 + -3.14159265) >= 0.00999999978;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (unsigned)_legacyRandomSeed
{
  _strokeDataUUID = [(PKStrokePath *)self _strokeDataUUID];
  v3 = [_strokeDataUUID hash];

  return v3;
}

+ (void)_calculateOffsets:(unint64_t *)offsets sizes:(unint64_t *)sizes
{
  *offsets = xmmword_1C801C840;
  *(offsets + 1) = xmmword_1C801C850;
  *(offsets + 2) = xmmword_1C801C860;
  *(offsets + 3) = xmmword_1C801C870;
  *(offsets + 4) = xmmword_1C801C880;
  offsets[10] = 32;
  *sizes = xmmword_1C801C890;
  *(sizes + 1) = xmmword_1C801C8A0;
  v4 = vdupq_n_s64(2uLL);
  *(sizes + 2) = v4;
  *(sizes + 3) = v4;
  *(sizes + 4) = xmmword_1C80196F0;
  sizes[10] = 2;
}

- (CGPoint)locationAtIndex:(unint64_t)index
{
  v3 = PKStrokePathPointsPrivate::locationAtIndex(&self->_strokeDataPointsPrivate, index);
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPath)_newPathRepresentation
{
  _pointsCount = [(PKStrokePath *)self _pointsCount];

  return PKCreateCGPathFromBSpline(&self->_strokeDataPointsPrivate, _pointsCount);
}

- (PKStrokePoint)pointAtIndex:(NSUInteger)i
{
  v3 = [[PKStrokePoint alloc] initWithSlice:&self->_strokeDataPointsPrivate index:i];

  return v3;
}

- (PKStrokePoint)objectAtIndexedSubscript:(NSUInteger)i
{
  v3 = [[PKStrokePoint alloc] initWithSlice:&self->_strokeDataPointsPrivate index:i];

  return v3;
}

- (CGPoint)interpolatedLocationAt:(CGFloat)parametricValue
{
  [(PKStrokePath *)self locationOnSegment:vcvtmd_u64_f64(parametricValue) t:parametricValue - floor(parametricValue)];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)interpolatedTimeoffsetAt:(double)at
{
  v5 = [(PKStrokePath *)self count];
  if (at >= 0.0)
  {
    v11 = v5 - 1;
    if ((v5 - 1) <= at)
    {

      return PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v11);
    }

    else
    {
      v12 = vcvtmd_u64_f64(at);
      v13 = at - floor(at);
      if (v12 + 1 < v11)
      {
        v14 = v12 + 1;
      }

      else
      {
        v14 = v5 - 1;
      }

      v15 = PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v12);
      return v13 * PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v14) + v15 * (1.0 - v13);
    }
  }

  else
  {
    begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
    ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
    v8 = (self->_strokeDataPointsPrivate.pointsData.__end_ - begin);
    if (v8 && *(ptr + 6) <= v8 && (*(ptr + 32) & 2) != 0)
    {
      v9 = &begin[*(ptr + 93)];
    }

    else
    {
      v9 = (ptr + 64);
    }

    return *v9;
  }
}

- (PKStrokePoint)interpolatedPointAt:(CGFloat)parametricValue
{
  v5 = [(PKStrokePath *)self count];
  v6 = vcvtmd_u64_f64(parametricValue);
  v7 = [[PKStrokePoint alloc] initWithSlice:&self->_strokeDataPointsPrivate index:v6];
  _strokeDataPointsPrivate = [(PKStrokePoint *)v7 _strokeDataPointsPrivate];
  v9 = floor(parametricValue);
  v10 = parametricValue - v9;
  v11 = *(self->_strokeDataPointsPrivate.constants.__ptr_ + 4);
  if (v11)
  {
    [(PKStrokePath *)self locationOnSegment:v6 t:v10];
    *&v9 = PKStrokePathPointsPrivate::setLocation(_strokeDataPointsPrivate, v44, 0);
  }

  if (v6 + 1 < v5 - 1)
  {
    v12 = v6 + 1;
  }

  else
  {
    v12 = v5 - 1;
  }

  if ((v11 & 2) != 0)
  {
    v13 = PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v6);
    v9 = PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v12);
    begin = _strokeDataPointsPrivate->pointsData.__begin_;
    end = _strokeDataPointsPrivate->pointsData.__end_;
    v16 = end - begin;
    if (end != begin)
    {
      ptr = _strokeDataPointsPrivate->constants.__ptr_;
      if (*(_strokeDataPointsPrivate->constants.__ptr_ + 6) <= v16 && (*(ptr + 32) & 2) != 0)
      {
        v9 = v10 * v9 + v13 * (1.0 - v10);
        *&v9 = v9;
        *&begin[*(ptr + 93)] = LODWORD(v9);
      }
    }
  }

  if ((v11 & 4) != 0)
  {
    v18 = PKStrokePathPointsPrivate::radiusAtIndex(&self->_strokeDataPointsPrivate, v6);
    v9 = PKStrokePathPointsPrivate::radiusAtIndex(&self->_strokeDataPointsPrivate, v12);
    v19 = _strokeDataPointsPrivate->pointsData.__begin_;
    v20 = _strokeDataPointsPrivate->pointsData.__end_;
    v21 = v20 - v19;
    if (v20 != v19)
    {
      v22 = _strokeDataPointsPrivate->constants.__ptr_;
      if (*(_strokeDataPointsPrivate->constants.__ptr_ + 6) <= v21 && (*(v22 + 32) & 4) != 0)
      {
        v9 = v10 * v9 + v18 * (1.0 - v10);
        *&v9 = v9;
        *&v19[*(v22 + 94)] = LODWORD(v9);
      }
    }
  }

  if ((v11 & 8) != 0)
  {
    v23 = PKStrokePathPointsPrivate::aspectRatioAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
    v24 = PKStrokePathPointsPrivate::aspectRatioAtIndex(&self->_strokeDataPointsPrivate, v12, v23);
    PKStrokePathPointsPrivate::setAspectRatio(_strokeDataPointsPrivate, v10 * v24 + v23 * (1.0 - v10), 0);
    if ((v11 & 0x10) == 0)
    {
LABEL_18:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_19;
      }

LABEL_23:
      v27 = PKStrokePathPointsPrivate::forceAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
      v28 = PKStrokePathPointsPrivate::forceAtIndex(&self->_strokeDataPointsPrivate, v12, v27);
      PKStrokePathPointsPrivate::setForce(_strokeDataPointsPrivate, v10 * v28 + v27 * (1.0 - v10), 0);
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v25 = PKStrokePathPointsPrivate::edgeWidthAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
  v26 = PKStrokePathPointsPrivate::edgeWidthAtIndex(&self->_strokeDataPointsPrivate, v12, v25);
  PKStrokePathPointsPrivate::setEdgeWidth(_strokeDataPointsPrivate, v10 * v26 + v25 * (1.0 - v10), 0);
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  if ((v11 & 0x40) != 0)
  {
LABEL_24:
    v29 = PKStrokePathPointsPrivate::azimuthAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
    v30 = PKStrokePathPointsPrivate::azimuthAtIndex(&self->_strokeDataPointsPrivate, v12, v29);
    PKStrokePathPointsPrivate::setAzimuth(_strokeDataPointsPrivate, v10 * v30 + v29 * (1.0 - v10), 0);
  }

LABEL_25:
  if ((v11 & 0x80) != 0)
  {
    v31 = PKStrokePathPointsPrivate::altitudeAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
    v32 = PKStrokePathPointsPrivate::altitudeAtIndex(&self->_strokeDataPointsPrivate, v12, v31);
    PKStrokePathPointsPrivate::setAltitude(_strokeDataPointsPrivate, v10 * v32 + v31 * (1.0 - v10), 0);
    if ((v11 & 0x100) == 0)
    {
LABEL_27:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  else if ((v11 & 0x100) == 0)
  {
    goto LABEL_27;
  }

  v33 = PKStrokePathPointsPrivate::opacityAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
  v34 = PKStrokePathPointsPrivate::opacityAtIndex(&self->_strokeDataPointsPrivate, v12, v33);
  PKStrokePathPointsPrivate::setOpacity(_strokeDataPointsPrivate, v10 * v34 + v33 * (1.0 - v10), 0);
  if ((v11 & 0x200) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v35 = PKStrokePathPointsPrivate::radius2AtIndex(&self->_strokeDataPointsPrivate, v6);
  v9 = PKStrokePathPointsPrivate::radius2AtIndex(&self->_strokeDataPointsPrivate, v12);
  v36 = _strokeDataPointsPrivate->pointsData.__begin_;
  v37 = _strokeDataPointsPrivate->pointsData.__end_;
  v38 = v37 - v36;
  if (v37 != v36)
  {
    v39 = _strokeDataPointsPrivate->constants.__ptr_;
    if (*(_strokeDataPointsPrivate->constants.__ptr_ + 6) <= v38 && (*(v39 + 33) & 2) != 0)
    {
      v9 = v10 * v9 + v35 * (1.0 - v10);
      *&v9 = v9;
      *&v36[*(v39 + 101)] = LODWORD(v9);
    }
  }

LABEL_35:
  if ((v11 & 0x400) != 0)
  {
    v40 = PKStrokePathPointsPrivate::thresholdAtIndex(&self->_strokeDataPointsPrivate, v6, v9);
    v41 = PKStrokePathPointsPrivate::thresholdAtIndex(&self->_strokeDataPointsPrivate, v12, v40);
    PKStrokePathPointsPrivate::setThreshold(_strokeDataPointsPrivate, v10 * v41 + v40 * (1.0 - v10), 0);
  }

  return v7;
}

- (_PKStrokePoint)decompressedPointAt:(SEL)at
{
  memset(&v7, 0, sizeof(v7));
  PKStrokePathPointsPrivate::operator[](&self->_strokeDataPointsPrivate.constants.__ptr_, a4, &v7);
  PKDecompressStrokePoint(&v7, *self->_strokeDataPointsPrivate.constants.__ptr_, retstr);
  return result;
}

- (CGPoint)locationOnSegment:(unint64_t)segment t:(double)t
{
  _pointsCount = [(PKStrokePath *)self _pointsCount];

  v8 = splinePoint(&self->_strokeDataPointsPrivate, 0, _pointsCount, segment, t, b);
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGFloat)parametricValue:(CGFloat)parametricValue offsetByDistance:(CGFloat)distanceStep
{
  _pointsCount = [(PKStrokePath *)self _pointsCount];
  v8 = _pointsCount;
  v9 = parametricValue;
  if (distanceStep <= 0.0)
  {
    if (distanceStep < 0.0)
    {
      v15 = v9;
      v16 = v9 - parametricValue + 1.0;
      v17 = splineSegmentLength(&self->_strokeDataPointsPrivate, 0, _pointsCount, v9);
      v18 = v16 > 0.0;
      v19 = -(distanceStep - v16 * v17);
      if (v16 <= 0.0)
      {
        v19 = -distanceStep;
      }

      if (v19 >= v17)
      {
        do
        {
          if (v18)
          {
            v16 = 0.0;
          }

          v20 = v19 - v17;
          v17 = splineSegmentLength(&self->_strokeDataPointsPrivate, 0, v8, --v9);
          v18 = v16 > 0.0;
          v19 = v20 + v16 * v17;
          if (v16 <= 0.0)
          {
            v19 = v20;
          }
        }

        while (v19 >= v17);
        v15 = v9;
      }

      v21 = v15 + 1.0 - v19 / v17;
      if (v21 >= 0.0)
      {
        return v21;
      }

      else
      {
        return 0.0;
      }
    }
  }

  else
  {
    v10 = v9;
    v11 = _pointsCount - 1;
    v12 = 0.0;
    if (_pointsCount - 1 > v9)
    {
      v13 = parametricValue - v10;
      while (1)
      {
        v12 = splineSegmentLength(&self->_strokeDataPointsPrivate, 0, v8, v9);
        if (v13 > 0.0)
        {
          distanceStep = distanceStep + v13 * v12;
        }

        if (distanceStep < v12)
        {
          break;
        }

        if (v13 > 0.0)
        {
          v13 = 0.0;
        }

        distanceStep = distanceStep - v12;
        if (v11 == ++v9)
        {
          v9 = v8 - 1;
          break;
        }
      }

      v10 = v9;
    }

    v14 = v10 + distanceStep / v12;
    if (v14 >= v11)
    {
      return v11;
    }

    else
    {
      return v14;
    }
  }

  return parametricValue;
}

- (CGFloat)parametricValue:(CGFloat)parametricValue offsetByTime:(NSTimeInterval)timeStep
{
  _pointsCount = [(PKStrokePath *)self _pointsCount];
  v8 = parametricValue;
  if (timeStep <= 0.0)
  {
    if (timeStep < 0.0)
    {
      v16 = v8;
      v17 = v8 - parametricValue + 1.0;
      v18 = PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8 + 1);
      v19 = v18 - PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8);
      v20 = v17 > 0.0;
      v21 = -(timeStep - v17 * v19);
      if (v17 <= 0.0)
      {
        v21 = -timeStep;
      }

      if (v21 >= v19)
      {
        do
        {
          if (v20)
          {
            v17 = 0.0;
          }

          v22 = v21 - v19;
          v23 = v8 - 1;
          v24 = PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8);
          v19 = v24 - PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8 - 1);
          v20 = v17 > 0.0;
          v21 = v22 + v17 * v19;
          if (v17 <= 0.0)
          {
            v21 = v22;
          }

          --v8;
        }

        while (v21 >= v19);
        v16 = v23;
      }

      v25 = v16 + 1.0 - v21 / v19;
      if (v25 >= 0.0)
      {
        return v25;
      }

      else
      {
        return 0.0;
      }
    }
  }

  else
  {
    v9 = v8;
    v10 = _pointsCount - 1;
    v11 = 0.0;
    if (_pointsCount - 1 > v8)
    {
      v12 = parametricValue - v9;
      while (1)
      {
        v13 = v8 + 1;
        v14 = PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8 + 1);
        v11 = v14 - PKStrokePathPointsPrivate::timestampAtIndex(&self->_strokeDataPointsPrivate, v8);
        if (v12 > 0.0)
        {
          timeStep = timeStep + v12 * v11;
        }

        if (timeStep < v11)
        {
          break;
        }

        if (v12 > 0.0)
        {
          v12 = 0.0;
        }

        timeStep = timeStep - v11;
        ++v8;
        if (v10 == v13)
        {
          v8 = v10;
          break;
        }
      }

      v9 = v8;
    }

    v15 = v9 + timeStep / v11;
    if (v15 >= v10)
    {
      return v10;
    }

    else
    {
      return v15;
    }
  }

  return parametricValue;
}

- (void)_enumerateInterpolatedPointsInRange:(id)range incrementBlock:(id)block usingBlock:(id)usingBlock
{
  rangeCopy = range;
  blockCopy = block;
  usingBlockCopy = usingBlock;
  [rangeCopy lowerBound];
  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  [rangeCopy upperBound];
  v14 = v13;
  v15 = [(PKStrokePath *)self count];
  if (v14 >= (v15 - 1))
  {
    v14 = (v15 - 1);
  }

  if (v14 >= v12)
  {
    v19 = 0;
    while (1)
    {
      v16 = v12 >= v14 ? v14 : v12;
      v17 = [(PKStrokePath *)self interpolatedPointAt:v16];
      usingBlockCopy[2](usingBlockCopy, v17, &v19);
      if (v12 >= v14)
      {
        break;
      }

      v18 = blockCopy[2](blockCopy, v12);
      if (v18 + 0.001 >= v14)
      {
        v12 = v14;
      }

      else
      {
        v12 = v18;
      }

      if (v19 == 1)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:
}

- (void)enumerateInterpolatedPointsInRange:(PKFloatRange *)range strideByDistance:(CGFloat)distanceStep usingBlock:(void *)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PKStrokePath_enumerateInterpolatedPointsInRange_strideByDistance_usingBlock___block_invoke;
  v5[3] = &unk_1E82D7D68;
  v5[4] = self;
  *&v5[5] = distanceStep;
  [(PKStrokePath *)self _enumerateInterpolatedPointsInRange:range incrementBlock:v5 usingBlock:block];
}

- (void)enumerateInterpolatedPointsInRange:(PKFloatRange *)range strideByTime:(NSTimeInterval)timeStep usingBlock:(void *)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PKStrokePath_enumerateInterpolatedPointsInRange_strideByTime_usingBlock___block_invoke;
  v5[3] = &unk_1E82D7D68;
  v5[4] = self;
  *&v5[5] = timeStep;
  [(PKStrokePath *)self _enumerateInterpolatedPointsInRange:range incrementBlock:v5 usingBlock:block];
}

- (void)enumerateInterpolatedPointsInRange:(PKFloatRange *)range strideByParametricStep:(CGFloat)parametricStep usingBlock:(void *)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PKStrokePath_enumerateInterpolatedPointsInRange_strideByParametricStep_usingBlock___block_invoke;
  v5[3] = &__block_descriptor_40_e8_d16__0d8l;
  *&v5[4] = parametricStep;
  [(PKStrokePath *)self _enumerateInterpolatedPointsInRange:range incrementBlock:v5 usingBlock:block];
}

- (double)_maxWidth
{
  selfCopy = self;
  os_unfair_lock_lock(&maxStrokeWidth_lock);
  cachedMaxWidth = selfCopy->_cachedMaxWidth;

  os_unfair_lock_unlock(&maxStrokeWidth_lock);
  if (cachedMaxWidth == 1.79769313e308)
  {
    _pointsCount = [(PKStrokePath *)selfCopy _pointsCount];
    if (_pointsCount)
    {
      v5 = _pointsCount;
      v6 = 0;
      cachedMaxWidth = 1.0;
      do
      {
        [(PKStrokePath *)selfCopy _compressedPointAt:v6, 0, 0];
        LOWORD(v7) = 0;
        v8 = v7 / 10.0;
        LOWORD(v9) = 0;
        v10 = v9 / 1000.0;
        if (v10 == 1.0)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = v10 * 1.5;
        }

        if ((v8 + v14) * v11 > cachedMaxWidth)
        {
          cachedMaxWidth = (v8 + v14) * v11;
        }

        ++v6;
      }

      while (v5 != v6);
    }

    else
    {
      cachedMaxWidth = 1.0;
    }

    v12 = selfCopy;
    os_unfair_lock_lock(&maxStrokeWidth_lock);
    selfCopy->_cachedMaxWidth = cachedMaxWidth;

    os_unfair_lock_unlock(&maxStrokeWidth_lock);
  }

  return cachedMaxWidth;
}

- (id)deltaTo:(id)to
{
  toCopy = to;
  _immutablePointsCount = [(PKStrokePath *)self _immutablePointsCount];
  if (_immutablePointsCount <= [toCopy _immutablePointsCount])
  {
    v7 = [PKStrokePath alloc];
    _immutablePointsCount2 = [(PKStrokePath *)self _immutablePointsCount];
    _pointsCount = [toCopy _pointsCount];
    _immutablePointsCount3 = [(PKStrokePath *)self _immutablePointsCount];
    _strokeDataUUID = [toCopy _strokeDataUUID];
    v6 = [(PKStrokePath *)v7 initWithData:toCopy range:_immutablePointsCount2 UUID:_pointsCount - _immutablePointsCount3, _strokeDataUUID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)deltaContainsNewInfo:(id)info
{
  infoCopy = info;
  _immutablePointsCount = [infoCopy _immutablePointsCount];
  v6 = 1;
  if (_immutablePointsCount <= [(PKStrokePath *)self _immutablePointsCount])
  {
    _immutablePointsCount2 = [infoCopy _immutablePointsCount];
    if (_immutablePointsCount2 != -[PKStrokePath _immutablePointsCount](self, "_immutablePointsCount") || (v8 = [infoCopy count], v8 <= -[PKStrokePath count](self, "count")))
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)canApplyDelta:(id)delta
{
  deltaCopy = delta;
  if (-[PKStrokePath deltaContainsNewInfo:](self, "deltaContainsNewInfo:", deltaCopy) && ([deltaCopy _startIndex] || -[PKStrokePath _immutablePointsCount](self, "_immutablePointsCount")))
  {
    if ([(PKStrokePath *)self _startIndex])
    {
      v5 = 0;
    }

    else
    {
      _immutablePointsCount = [(PKStrokePath *)self _immutablePointsCount];
      v5 = _immutablePointsCount >= [deltaCopy _startIndex];
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)dataApplying:(id)applying
{
  applyingCopy = applying;
  if (![(PKStrokePath *)self canApplyDelta:applyingCopy]|| ![(PKStrokePath *)self deltaContainsNewInfo:applyingCopy])
  {
    selfCopy = self;
LABEL_7:
    v9 = selfCopy;
    goto LABEL_8;
  }

  if (![applyingCopy _startIndex])
  {
    selfCopy = applyingCopy;
    goto LABEL_7;
  }

  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  if (*(ptr + 4) == *(applyingCopy[1] + 4))
  {
    v6 = [PKStrokePath alloc];
    _startIndex = [applyingCopy _startIndex];
    _strokeDataUUID = [applyingCopy _strokeDataUUID];
    v9 = [(PKStrokePath *)v6 initWithData:self range:0 UUID:_startIndex, _strokeDataUUID];
  }

  else
  {
    v12 = [PKStrokePath alloc];
    _strokeDataUUID2 = [applyingCopy _strokeDataUUID];
    v14 = [(PKStrokePath *)v12 initWithData:applyingCopy range:0 UUID:0, _strokeDataUUID2];

    v49 = *(ptr + 6);
    v50 = *(*(v14 + 8) + 48);
    _startIndex2 = [applyingCopy _startIndex];
    v54 = *(v14 + 24);
    v16 = *(v14 + 32) - v54;
    if (_startIndex2 * v50 <= v16)
    {
      if (_startIndex2 * v50 < v16)
      {
        *(v14 + 32) = v54 + _startIndex2 * v50;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((v14 + 24), _startIndex2 * v50 - v16);
      v54 = *(v14 + 24);
    }

    v17 = 0;
    v18 = 0;
    v19 = *(*(v14 + 8) + 32);
    v20 = *(ptr + 4);
    v52 = *(ptr + 1);
    begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
    do
    {
      if ((v19 & (1 << v17)) != 0)
      {
        v18 = v17;
      }

      ++v17;
    }

    while (v17 != 11);
    _startIndex3 = [applyingCopy _startIndex];
    if (_startIndex3 >= 1)
    {
      v47 = applyingCopy;
      v22 = 0;
      v48 = _startIndex3;
      do
      {
        v23 = 0;
        v24 = 0;
        v25 = v22 * v49;
        v51 = v22;
        v26 = v22 * v50;
        do
        {
          v27 = 1 << v23;
          v28 = v20 & v27;
          if ((v19 & v27) != 0)
          {
            if (v28)
            {
              memcpy((v54 + v26), &begin[v25], v29);
              v25 += v30;
            }

            else
            {
              memcpy((v54 + v26), (v52 + v24), v29);
            }

            v26 += v30;
          }

          if (!v28)
          {
          }

          ++v23;
        }

        while (v23 <= v18);
        v22 = v51 + 1;
      }

      while (v51 + 1 != v48);
      applyingCopy = v47;
    }

    v9 = v14;
  }

  v32 = applyingCopy[3];
  v31 = applyingCopy[4];
  v33 = v31 - v32;
  if (v31 - v32 >= 1)
  {
    v35 = *(v9 + 32);
    v34 = *(v9 + 40);
    if (v34 - v35 >= v33)
    {
      if (v32 != v31)
      {
        memmove(*(v9 + 32), applyingCopy[3], v31 - v32);
      }

      *(v9 + 32) = &v35[v33];
    }

    else
    {
      v36 = *(v9 + 24);
      v37 = &v35[-v36];
      v38 = &v35[v33 - v36];
      if (v38 < 0)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      v39 = v34 - v36;
      if (2 * v39 > v38)
      {
        v38 = 2 * v39;
      }

      if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v40 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      if (v40)
      {
        operator new();
      }

      v41 = &v37[v33];
      v42 = &v35[-v36];
      do
      {
        v43 = *v32++;
        *v42++ = v43;
        --v33;
      }

      while (v33);
      v44 = *(v9 + 32) - v35;
      memcpy(v41, v35, v44);
      v45 = &v41[v44];
      *(v9 + 32) = v35;
      v46 = *(v9 + 24);
      memcpy(&v37[v46 - v35], v46, v35 - v46);
      *(v9 + 24) = &v37[v46 - v35];
      *(v9 + 32) = v45;
      *(v9 + 40) = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }
  }

  *(v9 + 80) = [applyingCopy _immutablePointsCount];
LABEL_8:

  return v9;
}

- (BOOL)saveToDataArchive:(void *)archive
{
  v26 = *MEMORY[0x1E69E9840];
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  _pointsCount = [(PKStrokePath *)self _pointsCount];
  v7 = *(ptr + 4);
  v8 = *(archive + 84);
  *(archive + 4) = _pointsCount;
  *(archive + 84) = v8 | 0xC;
  *(archive + 6) = v7;
  v9 = *ptr;
  *(archive + 84) = v8 | 0x2C;
  *(archive + 9) = v9;
  if (_pointsCount)
  {
    v10 = _pointsCount;
    v11 = *(ptr + 5);
    if (v11)
    {
      v12 = *(archive + 3);
      *(archive + 84) = v8 | 0x2E;
      *(archive + 2) = v11;
      if (!v12)
      {
        operator new();
      }

      PB::Data::assign(v12, *(ptr + 1), *(ptr + 2));
    }

    if (v7)
    {
      v13 = *(archive + 5);
      if (!v13)
      {
        operator new();
      }

      PB::Data::assign(v13, self->_strokeDataPointsPrivate.pointsData.__begin_, self->_strokeDataPointsPrivate.pointsData.__end_);
    }

    *v24 = 0;
    v25 = 0;
    _strokeDataUUID = [(PKStrokePath *)self _strokeDataUUID];
    [_strokeDataUUID getUUIDBytes:v24];

    v15 = *(archive + 8);
    if (!v15)
    {
      operator new();
    }

    PB::Data::assign(v15, v24, &v26);
    if (![(PKStrokePath *)self _inputType])
    {
      *(archive + 84) |= 0x40u;
      *(archive + 80) = 1;
    }

    _immutablePointsCount = [(PKStrokePath *)self _immutablePointsCount];
    if (_immutablePointsCount != [(PKStrokePath *)self _startIndex]+ v10)
    {
      _immutablePointsCount2 = [(PKStrokePath *)self _immutablePointsCount];
      *(archive + 84) |= 1u;
      *(archive + 1) = _immutablePointsCount2;
    }

    if ([(PKStrokePath *)self _startIndex])
    {
      _startIndex = [(PKStrokePath *)self _startIndex];
      *(archive + 84) |= 0x10u;
      *(archive + 7) = _startIndex;
    }

    v20 = self->_unknownFields.__ptr_;
    cntrl = self->_unknownFields.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    v21 = *(archive + 12);
    *(archive + 11) = v20;
    *(archive + 12) = cntrl;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  return 1;
}

- (PKStrokePath)initWithRawValue:(id)value
{
  valueCopy = value;
  v10[0] = &unk_1F476ABC0;
  v10[3] = 0;
  v10[5] = 0;
  v10[8] = 0;
  memset(&v10[10] + 4, 0, 20);
  bytes = [valueCopy bytes];
  [valueCopy length];
  PB::Reader::Reader(v9, bytes);
  if (drawing::StrokeData::readFrom(v10, v9))
  {
    v6 = [(PKStrokePath *)self init];
    [(PKStrokePath *)v6 readStrokeDataFromArchive:v10];
    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  drawing::StrokeData::~StrokeData(v10);

  return selfCopy;
}

- (id)rawValue
{
  v6[0] = &unk_1F476ABC0;
  v6[3] = 0;
  v6[5] = 0;
  v6[8] = 0;
  memset(&v6[10] + 4, 0, 20);
  [(PKStrokePath *)self saveToDataArchive:v6];
  PB::Writer::Writer(&v4);
  drawing::StrokeData::writeTo(v6, &v4);
  v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:v4 - v5];
  PB::Writer::~Writer(&v4);
  drawing::StrokeData::~StrokeData(v6);

  return v2;
}

+ (id)strokeDataFromDataArchive:(const void *)archive
{
  v4 = objc_alloc_init(PKStrokePath);
  [(PKStrokePath *)v4 readStrokeDataFromArchive:archive];

  return v4;
}

@end