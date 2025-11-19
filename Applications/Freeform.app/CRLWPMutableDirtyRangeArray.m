@interface CRLWPMutableDirtyRangeArray
- (void)addChangedRange:(_NSRange)a3 delta:(int64_t)a4 allowEmpty:(BOOL)a5;
- (void)addRange:(id *)a3 allowEmpty:(BOOL)a4;
- (void)removeRange:(_NSRange)a3;
- (void)subtract:(id)a3;
@end

@implementation CRLWPMutableDirtyRangeArray

- (void)addRange:(id *)a3 allowEmpty:(BOOL)a4
{
  if (a3->var0.location != 0x7FFFFFFFFFFFFFFFLL && (a4 || a3->var0.length || a3->var1))
  {
    begin = self->super._rangeVector.__begin_;
    end = self->super._rangeVector.__end_;
    if (begin != end)
    {
      var0 = a3->var0;
      var1 = a3->var1;
      length = var0.length;
      location = var0.location;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
      v10 = begin;
      do
      {
        v11 = v9 >> 1;
        v12 = &v10->location + 3 * (v9 >> 1);
        v14 = *v12;
        v13 = (v12 + 3);
        v9 += ~(v9 >> 1);
        if (v14 < var0.location)
        {
          v10 = v13;
        }

        else
        {
          v9 = v11;
        }
      }

      while (v9);
      if (end == v10)
      {
        v21 = 0;
        v16 = end;
      }

      else
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((end - v10) >> 3);
        v16 = v10;
        do
        {
          v17 = v15 >> 1;
          v18 = (v16 + 24 * (v15 >> 1));
          v20 = *v18;
          v19 = (v18 + 3);
          v15 += ~(v15 >> 1);
          if (v20 < var0.length + var0.location)
          {
            v16 = v19;
          }

          else
          {
            v15 = v17;
          }
        }

        while (v15);
        if (sub_1002BC848(var0, *v10, 1) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v21 = 0;
        }

        else
        {
          v23 = NSUnionRange(var0, *v10);
          location = v23.location;
          length = v23.length;
          v24 = v10[1].location + var1;
          var0 = v23;
          var1 = v24;
          v21 = 1;
        }
      }

      if (v10 == begin)
      {
        v10 = begin;
      }

      else
      {
        v42.location = location;
        v42.length = length;
        if (sub_1002BC848(v42, *(v10 - 24), 1) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v46 = *(v10 - 24);
          v10 = (v10 - 24);
          v43.location = location;
          v43.length = length;
          v25 = NSUnionRange(v43, v46);
          location = v25.location;
          length = v25.length;
          v26 = v10[1].location + var1;
          var0 = v25;
          var1 = v26;
          v21 = 1;
        }
      }

      v27 = v16 != begin && v16 == end;
      v28 = -24;
      if (!v27)
      {
        v28 = 0;
      }

      v29 = (v16 + v28);
      if ((v16 + v28) == end || v29 == v10 || (v44.location = location, v44.length = length, sub_1002BC848(v44, *v29, 1) == 0x7FFFFFFFFFFFFFFFLL))
      {
        if ((v21 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v45.location = location;
        v45.length = length;
        v30 = NSUnionRange(v45, *v29);
        v31 = v29[1].location + var1;
        var0 = v30;
        var1 = v31;
        v29 = (v29 + 24);
      }

      if (v10 >= v29)
      {
        if (v29 < v10)
        {
          v36 = self->super._rangeVector.__end_;
          v37 = v36 - v10;
          if (v36 != v10)
          {
            memmove(v29, v10, v36 - v10);
          }

          self->super._rangeVector.__end_ = (v29 + v37);
          v10 = v29;
          goto LABEL_51;
        }

        if (v10 == end)
        {
          v10 = end;
          goto LABEL_51;
        }

        v35 = (v10 + 24);
        v38 = self->super._rangeVector.__end_;
        v33 = v38 - &v10[1].length;
        if (v38 != &v10[1].length)
        {
          v34 = v10;
          goto LABEL_49;
        }
      }

      else
      {
        v32 = self->super._rangeVector.__end_;
        v33 = v32 - v29;
        if (v32 != v29)
        {
          v34 = v10;
          v35 = v29;
LABEL_49:
          memmove(v34, v35, v33);
        }
      }

      self->super._rangeVector.__end_ = (v10 + v33);
LABEL_51:
      sub_10013D78C(&self->super._rangeVector.__begin_, v10, &var0);
      return;
    }

    p_rangeVector = &self->super._rangeVector;

    sub_10013CF2C(p_rangeVector, a3);
  }
}

- (void)removeRange:(_NSRange)a3
{
  begin = self->super._rangeVector.__begin_;
  end = self->super._rangeVector.__end_;
  p_rangeVector = &self->super._rangeVector;
  if (end == begin)
  {
    v14 = a3.location + a3.length;
    v9 = end;
    v20 = end;
    v15 = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    v8 = v7;
    v9 = begin;
    do
    {
      v10 = v8 >> 1;
      v11 = (v9 + 24 * (v8 >> 1));
      v13 = *v11;
      v12 = (v11 + 3);
      v8 += ~(v8 >> 1);
      if (v13 > a3.location)
      {
        v8 = v10;
      }

      else
      {
        v9 = v12;
      }
    }

    while (v8);
    v14 = a3.location + a3.length;
    v15 = begin;
    do
    {
      v16 = v7 >> 1;
      v17 = (v15 + 24 * (v7 >> 1));
      v19 = *v17;
      v18 = (v17 + 3);
      v7 += ~(v7 >> 1);
      if (v19 < v14)
      {
        v15 = v18;
      }

      else
      {
        v7 = v16;
      }
    }

    while (v7);
    v20 = v9;
  }

  v21 = begin;
  if (v9 != begin)
  {
    v22 = v20[-2].n128_u64[1];
    v23 = v20[-1].n128_u64[0];
    v24 = a3.location - v22;
    if (a3.location < v22 || v24 >= v23)
    {
      if (!v23)
      {
        v26 = v22 - a3.location < a3.length && v22 >= a3.location;
        v27 = -24;
        if (!v26)
        {
          v27 = 0;
        }

        v21 = (v9 + v27);
        goto LABEL_36;
      }
    }

    else
    {
      if (a3.location == v22)
      {
        v9 = (v9 - 24);
      }

      else
      {
        v20[-1].n128_u64[0] = v24;
      }

      if (v14 >= v22 && v14 - v22 < v23)
      {
        v41 = v23 + v22;
        if (v14 <= v23 + v22)
        {
          v42 = v23 + v22;
        }

        else
        {
          v42 = v14;
        }

        if (v14 < v23 + v22)
        {
          v41 = v14;
        }

        v43.n128_u64[0] = v41;
        v43.n128_u64[1] = v42 - v41;
        v44 = 0;
        if (a3.location == v22)
        {
          *v9 = v41;
          *(v9 + 1) = v42 - v41;
        }

        else
        {
          sub_10013D78C(p_rangeVector, v20, &v43);
        }

        return;
      }
    }

    v21 = v9;
  }

LABEL_36:
  if (end != v15)
  {
    v29 = *(v15 + 1);
    if (v14 > *v15 && v14 - *v15 < v29)
    {
      v31 = v29 + *v15;
      if (v14 <= v31)
      {
        v32 = v29 + *v15;
      }

      else
      {
        v32 = v14;
      }

      if (v14 < v31)
      {
        v31 = v14;
      }

      *v15 = v31;
      *(v15 + 1) = v32 - v31;
    }
  }

  if (v21 != v15)
  {
    if (begin != v15)
    {
      v33 = *(v15 - 3);
      v34 = *(v15 - 2);
      v35 = v14 < v33 || v14 - v33 >= v34;
      begin = v15;
      if (!v35)
      {
        v36 = v34 + v33;
        if (v14 >= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v14;
        }

        if (v14 <= v36)
        {
          v14 = v36;
        }

        *(v15 - 3) = v37;
        *(v15 - 2) = v14 - v37;
        begin = (v15 - 24);
      }
    }

    if (v21 != begin)
    {
      if (v21 >= begin)
      {
        v40 = end - v21;
        if (end != v21)
        {
          memmove(begin, v21, end - v21);
        }

        v39 = (begin + v40);
      }

      else
      {
        v38 = end - begin;
        if (end != begin)
        {
          memmove(v21, begin, end - begin);
        }

        v39 = (v21 + v38);
      }

      self->super._rangeVector.__end_ = v39;
    }
  }
}

- (void)addChangedRange:(_NSRange)a3 delta:(int64_t)a4 allowEmpty:(BOOL)a5
{
  v5 = a5;
  length = a3.length;
  location = a3.location;
  begin = self->super._rangeVector.__begin_;
  end = self->super._rangeVector.__end_;
  range2 = a3.length;
  v37 = objc_opt_new();
  v12 = end - begin;
  if (end == begin)
  {
    v35 = 0;
  }

  else
  {
    v35 = 0;
    v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
    v14 = location + length;
    v15 = v12 - 24;
    v16 = -v12;
    v38 = location + length;
    do
    {
      v17 = self->super._rangeVector.__begin_;
      v18 = (v17 + v15);
      v19.location = *(v17 + v15);
      v20 = *(v17 + v15 + 8);
      if (v20 + v19.location < location)
      {
        break;
      }

      if (v19.location <= v14 - a4)
      {
        v21 = v18[2];
        if (a4 < 0 && v20 <= -a4)
        {
          v22 = v17 + v15;
          v23 = (v17 + v15 + 24);
          v24 = self->super._rangeVector.__end_;
          v25 = v24 - v17;
          v26 = v16 + v25;
          if (v23 != v24)
          {
            memmove(v22, v23, v16 + v25);
          }

          self->super._rangeVector.__end_ = &v22[v26];
          a4 += v21;
        }

        else
        {
          v19.length = v20 + a4;
          v43.location = location;
          v43.length = range2;
          v41 = NSUnionRange(v19, v43);
          v42 = v21 + a4;
          [v37 addRange:&v41 allowEmpty:v5];
          v27 = self->super._rangeVector.__begin_;
          v28 = self->super._rangeVector.__end_;
          v29 = v27 + v15;
          v30 = (v27 + v15 + 24);
          v31 = v28 - v27;
          v32 = v16 + v31;
          if (v30 != v28)
          {
            memmove(v29, v30, v16 + v31);
          }

          a4 = 0;
          self->super._rangeVector.__end_ = &v29[v32];
          v35 = 1;
        }

        v14 = v38;
      }

      else
      {
        *v18 = v19.location + a4;
      }

      v15 -= 24;
      v16 += 24;
      --v13;
    }

    while (v13);
  }

  v33 = v37[1];
  for (i = v37[2]; v33 != i; v33 = (v33 + 24))
  {
    v41 = *v33;
    v42 = v33[1].location;
    v39 = v41;
    v40 = v42;
    [(CRLWPMutableDirtyRangeArray *)self addRange:&v39 allowEmpty:v5];
  }

  if ((v35 & 1) == 0)
  {
    v41.location = location;
    v41.length = range2;
    v42 = a4;
    [(CRLWPMutableDirtyRangeArray *)self addRange:&v41 allowEmpty:v5];
  }
}

- (void)subtract:(id)a3
{
  v19 = a3;
  if (self->super._rangeVector.__end_ != self->super._rangeVector.__begin_)
  {
    v4 = [v19 count];
    if (v4)
    {
      v5 = 0;
      do
      {
        v6 = (v19[1] + v5);
        v7 = [(CRLWPDirtyRangeArray *)self indexForRange:*v6, v6[1]];
        v8 = [(CRLWPDirtyRangeArray *)self count];
        v9 = *v6;
        v10 = v6[1];
        if (v7 < v8 && ((begin = self->super._rangeVector.__begin_, v12 = (begin + 24 * v7), v14 = *v12, v13 = v12[1], v9 == v14) ? (v15 = v10 == v13) : (v15 = 0), v15))
        {
          v16 = begin + 24 * v7;
          end = self->super._rangeVector.__end_;
          v18 = (end - (v16 + 24));
          if (end != (v16 + 24))
          {
            memmove(v16, v16 + 24, end - (v16 + 24));
          }

          self->super._rangeVector.__end_ = &v18[v16];
        }

        else
        {
          [(CRLWPMutableDirtyRangeArray *)self removeRange:v9, v10];
        }

        v5 += 24;
        --v4;
      }

      while (v4);
    }
  }
}

@end