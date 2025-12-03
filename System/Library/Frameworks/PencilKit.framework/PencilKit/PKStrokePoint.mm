@interface PKStrokePoint
+ (shared_ptr<PKStrokePathPointsShared>)_sharedConstantData;
- (BOOL)isEqual:(id)equal;
- (CGFloat)secondaryScale;
- (CGPoint)location;
- (CGSize)size;
- (NSTimeInterval)timeOffset;
- (PKStrokePoint)initWithLocation:(CGPoint)location timeOffset:(double)offset size:(CGSize)size opacity:(double)opacity force:(double)force azimuth:(double)azimuth altitude:(double)altitude edgeWidth:(double)self0 radius2:(double)self1;
- (PKStrokePoint)initWithLocation:(CGPoint)location timeOffset:(double)offset size:(CGSize)size opacity:(double)opacity force:(double)force azimuth:(double)azimuth altitude:(double)altitude edgeWidth:(double)self0 radius2:(double)self1 threshold:(double)self2;
- (PKStrokePoint)initWithLocation:(CGPoint)location timeOffset:(double)offset size:(CGSize)size opacity:(double)opacity force:(double)force azimuth:(double)azimuth altitude:(double)altitude secondaryScale:(double)self0 threshold:(double)self1;
- (PKStrokePoint)initWithSlice:(void *)slice index:(int64_t)index;
- (double)_radius2;
- (id).cxx_construct;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKStrokePoint

- (PKStrokePoint)initWithLocation:(CGPoint)location timeOffset:(double)offset size:(CGSize)size opacity:(double)opacity force:(double)force azimuth:(double)azimuth altitude:(double)altitude secondaryScale:(double)self0 threshold:(double)self1
{
  height = size.height;
  width = size.width;
  y = location.y;
  x = location.x;
  v42.receiver = self;
  v42.super_class = PKStrokePoint;
  v19 = [(PKStrokePoint *)&v42 init];
  +[PKStrokePoint _sharedConstantData];
  cntrl = v19->_strokeDataPointsPrivate.constants.__cntrl_;
  v19->_strokeDataPointsPrivate.constants = v41;
  p_strokeDataPointsPrivate = &v19->_strokeDataPointsPrivate;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  begin = v19->_strokeDataPointsPrivate.pointsData.__begin_;
  v23 = v19->_strokeDataPointsPrivate.pointsData.__end_ - begin;
  if (v23 > 0x23)
  {
    if (v23 != 36)
    {
      v19->_strokeDataPointsPrivate.pointsData.__end_ = begin + 36;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&v19->_strokeDataPointsPrivate.pointsData.__begin_, 36 - v23);
  }

  v43.x = x;
  v43.y = y;
  PKStrokePathPointsPrivate::setLocation(&v19->_strokeDataPointsPrivate, v43, 0);
  v24 = v19->_strokeDataPointsPrivate.pointsData.__begin_;
  end = v19->_strokeDataPointsPrivate.pointsData.__end_;
  v26 = end - v24;
  if (end != v24)
  {
    ptr = p_strokeDataPointsPrivate->constants.__ptr_;
    if (*(p_strokeDataPointsPrivate->constants.__ptr_ + 6) <= v26)
    {
      if ((*(ptr + 32) & 2) != 0)
      {
        offsetCopy = offset;
        *&v24[*(ptr + 93)] = offsetCopy;
      }

      if ((*(ptr + 32) & 4) != 0)
      {
        v29 = width;
        *&v24[*(ptr + 94)] = v29;
      }
    }
  }

  v30 = height / width;
  if (width <= 0.0)
  {
    v30 = 1.0;
  }

  PKStrokePathPointsPrivate::setAspectRatio(&v19->_strokeDataPointsPrivate, v30, 0);
  v31 = v19->_strokeDataPointsPrivate.pointsData.__begin_;
  v32 = v19->_strokeDataPointsPrivate.pointsData.__end_;
  v33 = v32 - v31;
  if (v32 != v31)
  {
    v34 = p_strokeDataPointsPrivate->constants.__ptr_;
    if (*(p_strokeDataPointsPrivate->constants.__ptr_ + 6) <= v33 && (*(v34 + 32) & 0x10) != 0)
    {
      *&v31[*(v34 + 96)] = 0;
    }
  }

  PKStrokePathPointsPrivate::setForce(&v19->_strokeDataPointsPrivate, force, 0);
  PKStrokePathPointsPrivate::setAzimuth(&v19->_strokeDataPointsPrivate, azimuth + -3.14159265, 0);
  PKStrokePathPointsPrivate::setAltitude(&v19->_strokeDataPointsPrivate, 1.57079633 - altitude, 0);
  PKStrokePathPointsPrivate::setOpacity(&v19->_strokeDataPointsPrivate, opacity, 0);
  v35 = v19->_strokeDataPointsPrivate.pointsData.__begin_;
  v36 = v19->_strokeDataPointsPrivate.pointsData.__end_;
  v37 = v36 - v35;
  if (v36 != v35)
  {
    v38 = p_strokeDataPointsPrivate->constants.__ptr_;
    if (*(p_strokeDataPointsPrivate->constants.__ptr_ + 6) <= v37 && (*(v38 + 33) & 2) != 0)
    {
      v39 = width * scale;
      *&v35[*(v38 + 101)] = v39;
    }
  }

  PKStrokePathPointsPrivate::setThreshold(&v19->_strokeDataPointsPrivate, threshold, 0);
  return v19;
}

- (PKStrokePoint)initWithLocation:(CGPoint)location timeOffset:(double)offset size:(CGSize)size opacity:(double)opacity force:(double)force azimuth:(double)azimuth altitude:(double)altitude edgeWidth:(double)self0 radius2:(double)self1
{
  v11 = [(PKStrokePoint *)self initWithLocation:location.x timeOffset:location.y size:offset opacity:size.width force:size.height azimuth:opacity altitude:force, azimuth, *&altitude];
  v12 = v11;
  begin = v11->_strokeDataPointsPrivate.pointsData.__begin_;
  end = v11->_strokeDataPointsPrivate.pointsData.__end_;
  v15 = end - begin;
  if (end != begin)
  {
    ptr = v11->_strokeDataPointsPrivate.constants.__ptr_;
    if (*(ptr + 6) <= v15 && (*(ptr + 33) & 2) != 0)
    {
      radius2Copy = radius2;
      *&begin[*(ptr + 101)] = radius2Copy;
    }
  }

  PKStrokePathPointsPrivate::setEdgeWidth(&v11->_strokeDataPointsPrivate, width, 0);
  return v12;
}

- (PKStrokePoint)initWithLocation:(CGPoint)location timeOffset:(double)offset size:(CGSize)size opacity:(double)opacity force:(double)force azimuth:(double)azimuth altitude:(double)altitude edgeWidth:(double)self0 radius2:(double)self1 threshold:(double)self2
{
  v12 = [(PKStrokePoint *)self initWithLocation:location.x timeOffset:location.y size:offset opacity:size.width force:size.height azimuth:opacity altitude:force, azimuth, *&altitude];
  v13 = v12;
  v14 = v12;
  begin = v12->_strokeDataPointsPrivate.pointsData.__begin_;
  end = v12->_strokeDataPointsPrivate.pointsData.__end_;
  v17 = end - begin;
  if (end != begin)
  {
    ptr = v12->_strokeDataPointsPrivate.constants.__ptr_;
    if (*(ptr + 6) <= v17 && (*(ptr + 33) & 2) != 0)
    {
      radius2Copy = radius2;
      *&begin[*(ptr + 101)] = radius2Copy;
    }
  }

  PKStrokePathPointsPrivate::setEdgeWidth(&v12->_strokeDataPointsPrivate, width, 0);
  PKStrokePathPointsPrivate::setThreshold(&v13->_strokeDataPointsPrivate, threshold, 0);
  return v14;
}

- (PKStrokePoint)initWithSlice:(void *)slice index:(int64_t)index
{
  v8.receiver = self;
  v8.super_class = PKStrokePoint;
  v6 = [(PKStrokePoint *)&v8 init];
  v9.location = index;
  v9.length = 1;
  PKStrokePathPointsPrivate::slice(slice, v9, &v6->_strokeDataPointsPrivate);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    v15 = equalCopy && (v6 = objc_opt_class(), v6 == objc_opt_class()) && (ptr = self->_strokeDataPointsPrivate.constants.__ptr_, v8 = v5->_strokeDataPointsPrivate.constants.__ptr_, *ptr == *v8) && *(ptr + 4) == *(v8 + 4) && *(ptr + 5) == *(v8 + 5) && (begin = self->_strokeDataPointsPrivate.pointsData.__begin_, v10 = v5->_strokeDataPointsPrivate.pointsData.__begin_, v11 = (self->_strokeDataPointsPrivate.pointsData.__end_ - begin), v11 == (v5->_strokeDataPointsPrivate.pointsData.__end_ - v10)) && !memcmp(begin, v10, v11) && (v12 = *(ptr + 1), v13 = *(v8 + 1), v14 = *(ptr + 2) - v12, v14 == *(v8 + 2) - v13) && memcmp(v12, v13, v14) == 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() hash];
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v5 = PKHashBytes(ptr, 8) ^ v3;
  v6 = v5 ^ PKHashBytes(ptr + 32, 8);
  v7 = v6 ^ PKHashBytes(ptr + 40, 8);
  begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
  end = self->_strokeDataPointsPrivate.pointsData.__end_;
  if (end != begin)
  {
    v7 ^= PKHashBytes(begin, end - begin);
  }

  v10 = *(ptr + 1);
  v11 = *(ptr + 2);
  if (v11 != v10)
  {
    v7 ^= PKHashBytes(v10, v11 - v10);
  }

  return v7;
}

+ (shared_ptr<PKStrokePathPointsShared>)_sharedConstantData
{
  v3 = v2;
  if ((atomic_load_explicit(&qword_1ED6A5058, memory_order_acquire) & 1) == 0)
  {
    self = __cxa_guard_acquire(&qword_1ED6A5058);
    if (self)
    {
      __cxa_atexit(std::shared_ptr<PKStrokePathPointsShared>::~shared_ptr[abi:ne200100], &xmmword_1ED6A5060, &dword_1C7CCA000);
      __cxa_guard_release(&qword_1ED6A5058);
    }
  }

  if (_MergedGlobals_129 != -1)
  {
    dispatch_once(&_MergedGlobals_129, &__block_literal_global_25);
  }

  v4 = xmmword_1ED6A5060;
  *v3 = xmmword_1ED6A5060;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (CGPoint)location
{
  v2 = PKStrokePathPointsPrivate::locationAtIndex(&self->_strokeDataPointsPrivate, 0);
  result.y = v3;
  result.x = v2;
  return result;
}

- (NSTimeInterval)timeOffset
{
  begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v4 = (self->_strokeDataPointsPrivate.pointsData.__end_ - begin);
  if (v4 && *(ptr + 6) <= v4 && (*(ptr + 32) & 2) != 0)
  {
    v5 = &begin[*(ptr + 93)];
  }

  else
  {
    v5 = (ptr + 64);
  }

  return *v5;
}

- (CGSize)size
{
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  p_strokeDataPointsPrivate = &self->_strokeDataPointsPrivate;
  v4 = ptr;
  begin = p_strokeDataPointsPrivate->pointsData.__begin_;
  v7 = (p_strokeDataPointsPrivate->pointsData.__end_ - begin);
  if (v7 && *(v4 + 6) <= v7 && (*(v4 + 32) & 4) != 0)
  {
    v8 = &begin[*(v4 + 94)];
  }

  else
  {
    v8 = v4 + 68;
  }

  LODWORD(v2) = *v8;
  v9 = *v8;
  v10 = PKStrokePathPointsPrivate::aspectRatioAtIndex(p_strokeDataPointsPrivate, 0, v2) * v9;
  v11 = v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (double)_radius2
{
  begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v4 = (self->_strokeDataPointsPrivate.pointsData.__end_ - begin);
  if (v4 && *(ptr + 6) <= v4 && (*(ptr + 33) & 2) != 0)
  {
    v5 = &begin[*(ptr + 101)];
  }

  else
  {
    v5 = (ptr + 84);
  }

  return *v5;
}

- (CGFloat)secondaryScale
{
  begin = self->_strokeDataPointsPrivate.pointsData.__begin_;
  ptr = self->_strokeDataPointsPrivate.constants.__ptr_;
  v4 = (self->_strokeDataPointsPrivate.pointsData.__end_ - begin);
  if (v4 && *(ptr + 6) <= v4)
  {
    if ((*(ptr + 33) & 2) != 0)
    {
      v8 = &begin[*(ptr + 101)];
    }

    else
    {
      v8 = (ptr + 84);
    }

    v5 = *v8;
    if ((*(ptr + 32) & 4) != 0)
    {
      v6 = &begin[*(ptr + 94)];
      return v5 / *v6;
    }
  }

  else
  {
    v5 = *(ptr + 21);
  }

  v6 = (ptr + 68);
  return v5 / *v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(PKStrokePoint *)self location];
  v6 = NSStringFromCGPoint(v20);
  [(PKStrokePoint *)self timeOffset];
  v8 = v7;
  [(PKStrokePoint *)self size];
  v9 = NSStringFromCGSize(v21);
  [(PKStrokePoint *)self opacity];
  v11 = v10;
  [(PKStrokePoint *)self azimuth];
  v13 = v12;
  [(PKStrokePoint *)self force];
  v15 = v14;
  [(PKStrokePoint *)self altitude];
  v17 = [v3 stringWithFormat:@"<%@: %p location=%@ timeOffset=%f size=%@ opacity=%f azimuth=%f force=%f altitude=%f>", v5, self, v6, v8, v9, v11, v13, v15, v16];

  return v17;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end