@interface TUIImpression
- ($F24F406B2B787EFB06265DBA3D28CBD5)timingAtIndex:(unint64_t)a3;
- (CGSize)size;
- (TUIImpression)initWithData:(id)a3 size:(CGSize)a4 identifier:(id)a5;
- (TUIImpression)initWithImpression:(id)a3;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)timingCountWithTime:(double)a3 threshold:(double)a4;
- (void)becameHiddenAtTime:(double)a3 threshold:(double)a4;
- (void)becameVisibleAtTime:(double)a3;
@end

@implementation TUIImpression

- (TUIImpression)initWithData:(id)a3 size:(CGSize)a4 identifier:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = TUIImpression;
  v12 = [(TUIImpression *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    v14 = [v11 copyWithZone:0];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v13->_visible = 0;
    v13->_size.width = width;
    v13->_size.height = height;
  }

  return v13;
}

- (TUIImpression)initWithImpression:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TUIImpression;
  v5 = [(TUIImpression *)&v11 init];
  v6 = v5;
  v7 = v5;
  if (v4 && v5)
  {
    objc_storeStrong(&v5->_data, v4->_data);
    if (v6 != v4)
    {
      sub_1360A8(&v6->_timings.__begin_, v4->_timings.__begin_, v4->_timings.__end_, (v4->_timings.__end_ - v4->_timings.__begin_) >> 4);
    }

    v7->_visible = v4->_visible;
    v8 = [(TUIIdentifier *)v4->_identifier copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_size = v4->_size;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithImpression:self];
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timingAtIndex:(unint64_t)a3
{
  begin = self->_timings.__begin_;
  v4 = 0.0;
  v5 = 0.0;
  if (a3 < (self->_timings.__end_ - begin) >> 4)
  {
    v6 = (begin + 16 * a3);
    v5 = *v6;
    v4 = v6[1];
  }

  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (void)becameVisibleAtTime:(double)a3
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

      *(16 * v9) = vdupq_lane_s64(*&a3, 0);
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
      *end = a3;
      *(end + 1) = a3;
      v6 = (end + 16);
    }

    self->_timings.__end_ = v6;
  }
}

- (void)becameHiddenAtTime:(double)a3 threshold:(double)a4
{
  if (self->_visible)
  {
    self->_visible = 0;
    end = self->_timings.__end_;
    if (self->_timings.__begin_ != end)
    {
      if (a3 - *(end - 2) >= a4)
      {
        *(end - 1) = a3;
      }

      else
      {
        self->_timings.__end_ = (end - 16);
      }
    }
  }
}

- (unint64_t)timingCountWithTime:(double)a3 threshold:(double)a4
{
  begin = self->_timings.__begin_;
  end = self->_timings.__end_;
  result = (end - begin) >> 4;
  v8 = !self->_visible || end == begin;
  if (!v8 && a3 - *(end - 2) < a4)
  {
    --result;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TUIImpression *)self data];
  v6 = [(TUIImpression *)self timingCount];
  [(TUIImpression *)self size];
  v7 = NSStringFromCGSize(v11);
  v8 = [NSString stringWithFormat:@"<%@: %p> [Data: %@] [Timing Count: %lu] [Size: %@]", v4, self, v5, v6, v7];

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