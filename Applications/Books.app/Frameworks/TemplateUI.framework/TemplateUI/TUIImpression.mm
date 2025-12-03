@interface TUIImpression
- ($F24F406B2B787EFB06265DBA3D28CBD5)timingAtIndex:(unint64_t)index;
- (CGSize)size;
- (TUIImpression)initWithData:(id)data size:(CGSize)size identifier:(id)identifier;
- (TUIImpression)initWithImpression:(id)impression;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)timingCountWithTime:(double)time threshold:(double)threshold;
- (void)becameHiddenAtTime:(double)time threshold:(double)threshold;
- (void)becameVisibleAtTime:(double)time;
@end

@implementation TUIImpression

- (TUIImpression)initWithData:(id)data size:(CGSize)size identifier:(id)identifier
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = TUIImpression;
  v12 = [(TUIImpression *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, data);
    v14 = [identifierCopy copyWithZone:0];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_visible = 0;
    v13->_size.width = width;
    v13->_size.height = height;
  }

  return v13;
}

- (TUIImpression)initWithImpression:(id)impression
{
  impressionCopy = impression;
  v11.receiver = self;
  v11.super_class = TUIImpression;
  v5 = [(TUIImpression *)&v11 init];
  v6 = v5;
  v7 = v5;
  if (impressionCopy && v5)
  {
    objc_storeStrong(&v5->_data, impressionCopy->_data);
    if (v6 != impressionCopy)
    {
      sub_1360A8(&v6->_timings.__begin_, impressionCopy->_timings.__begin_, impressionCopy->_timings.__end_, (impressionCopy->_timings.__end_ - impressionCopy->_timings.__begin_) >> 4);
    }

    v7->_visible = impressionCopy->_visible;
    v8 = [(TUIIdentifier *)impressionCopy->_identifier copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_size = impressionCopy->_size;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithImpression:self];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timingAtIndex:(unint64_t)index
{
  begin = self->_timings.__begin_;
  v4 = 0.0;
  v5 = 0.0;
  if (index < (self->_timings.__end_ - begin) >> 4)
  {
    v6 = (begin + 16 * index);
    v5 = *v6;
    v4 = v6[1];
  }

  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (void)becameVisibleAtTime:(double)time
{
  if (!self->_visible)
  {
    self->_visible = 1;
    end = self->_timings.__end_;
    cap = self->_timings.__cap_;
    if (end >= cap)
    {
      begin = self->_timings.__begin_;
      v8 = end - begin;
      v9 = (end - begin) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_4050();
      }

      v11 = cap - begin;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFF0;
      v13 = 0xFFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        sub_21464(&self->_timings, v13);
      }

      *(16 * v9) = vdupq_lane_s64(*&time, 0);
      v6 = (16 * v9 + 16);
      memcpy(0, begin, v8);
      v14 = self->_timings.__begin_;
      self->_timings.__begin_ = 0;
      self->_timings.__end_ = v6;
      self->_timings.__cap_ = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *end = time;
      *(end + 1) = time;
      v6 = (end + 16);
    }

    self->_timings.__end_ = v6;
  }
}

- (void)becameHiddenAtTime:(double)time threshold:(double)threshold
{
  if (self->_visible)
  {
    self->_visible = 0;
    end = self->_timings.__end_;
    if (self->_timings.__begin_ != end)
    {
      if (time - *(end - 2) >= threshold)
      {
        *(end - 1) = time;
      }

      else
      {
        self->_timings.__end_ = (end - 16);
      }
    }
  }
}

- (unint64_t)timingCountWithTime:(double)time threshold:(double)threshold
{
  begin = self->_timings.__begin_;
  end = self->_timings.__end_;
  result = (end - begin) >> 4;
  v8 = !self->_visible || end == begin;
  if (!v8 && time - *(end - 2) < threshold)
  {
    --result;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  data = [(TUIImpression *)self data];
  timingCount = [(TUIImpression *)self timingCount];
  [(TUIImpression *)self size];
  v7 = NSStringFromCGSize(v11);
  v8 = [NSString stringWithFormat:@"<%@: %p> [Data: %@] [Timing Count: %lu] [Size: %@]", v4, self, data, timingCount, v7];

  return v8;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end