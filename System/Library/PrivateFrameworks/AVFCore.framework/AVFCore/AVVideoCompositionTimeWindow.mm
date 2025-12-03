@interface AVVideoCompositionTimeWindow
- (AVVideoCompositionTimeWindow)initWithDurationBefore:(id *)before durationAfter:(id *)after;
- (AVVideoCompositionTimeWindow)initWithDurationBefore:(id *)before durationAfter:(id *)after durationBeforeWhenSeeking:(id *)seeking durationAfterWhenSeeking:(id *)whenSeeking;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVVideoCompositionTimeWindow

- (AVVideoCompositionTimeWindow)initWithDurationBefore:(id *)before durationAfter:(id *)after durationBeforeWhenSeeking:(id *)seeking durationAfterWhenSeeking:(id *)whenSeeking
{
  v42.receiver = self;
  v42.super_class = AVVideoCompositionTimeWindow;
  v11 = [(AVVideoCompositionTimeWindow *)&v42 init];
  v12 = v11;
  if (v11)
  {
    v13 = MEMORY[0x1E6960CC0];
    if ((before->var2 & 1) == 0)
    {
      *&before->var0 = *MEMORY[0x1E6960CC0];
      before->var3 = *(v13 + 2);
    }

    if ((after->var2 & 1) == 0)
    {
      *&after->var0 = *v13;
      after->var3 = *(v13 + 2);
    }

    if ((seeking->var2 & 1) == 0)
    {
      v14 = *&before->var0;
      seeking->var3 = before->var3;
      *&seeking->var0 = v14;
    }

    if ((whenSeeking->var2 & 1) == 0)
    {
      v15 = *&after->var0;
      whenSeeking->var3 = after->var3;
      *&whenSeeking->var0 = v15;
    }

    if ((before->var2 & 0x1D) == 1)
    {
      if ((after->var2 & 0x1D) == 1)
      {
        if ((seeking->var2 & 0x1D) == 1)
        {
          if ((whenSeeking->var2 & 0x1D) == 1)
          {
            time1 = *before;
            v39 = *v13;
            *&time2.value = *v13;
            v16 = *(v13 + 2);
            time2.epoch = v16;
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              v34 = v12;
              v28 = MEMORY[0x1E695DF30];
              v29 = *MEMORY[0x1E695D940];
              v30 = @"durationBefore should not be negative";
            }

            else
            {
              time1 = *after;
              *&time2.value = v39;
              time2.epoch = v16;
              if (CMTimeCompare(&time1, &time2) < 0)
              {
                v35 = v12;
                v28 = MEMORY[0x1E695DF30];
                v29 = *MEMORY[0x1E695D940];
                v30 = @"durationAfter should not be negative";
              }

              else
              {
                time1 = *seeking;
                *&time2.value = v39;
                time2.epoch = v16;
                if (CMTimeCompare(&time1, &time2) < 0)
                {
                  v36 = v12;
                  v28 = MEMORY[0x1E695DF30];
                  v29 = *MEMORY[0x1E695D940];
                  v30 = @"durationBeforeWhenSeeking should not be negative";
                }

                else
                {
                  time1 = *whenSeeking;
                  *&time2.value = v39;
                  time2.epoch = v16;
                  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
                  {
                    v17 = *&before->var0;
                    v12->_durationBefore.epoch = before->var3;
                    *&v12->_durationBefore.value = v17;
                    v18 = *&after->var0;
                    v12->_durationAfter.epoch = after->var3;
                    *&v12->_durationAfter.value = v18;
                    v19 = *&seeking->var0;
                    v12->_durationBeforeWhenSeeking.epoch = seeking->var3;
                    *&v12->_durationBeforeWhenSeeking.value = v19;
                    v20 = *&whenSeeking->var0;
                    v12->_durationAfterWhenSeeking.epoch = whenSeeking->var3;
                    *&v12->_durationAfterWhenSeeking.value = v20;
                    return v12;
                  }

                  v37 = v12;
                  v28 = MEMORY[0x1E695DF30];
                  v29 = *MEMORY[0x1E695D940];
                  v30 = @"durationAfterWhenSeeking should not be negative";
                }
              }
            }
          }

          else
          {
            v33 = v11;
            v28 = MEMORY[0x1E695DF30];
            v29 = *MEMORY[0x1E695D940];
            v30 = @"durationAfterWhenSeeking should be numeric";
          }
        }

        else
        {
          v32 = v11;
          v28 = MEMORY[0x1E695DF30];
          v29 = *MEMORY[0x1E695D940];
          v30 = @"durationBeforeWhenSeeking should be numeric";
        }
      }

      else
      {
        v31 = v11;
        v28 = MEMORY[0x1E695DF30];
        v29 = *MEMORY[0x1E695D940];
        v30 = @"durationAfter should be numeric";
      }
    }

    else
    {
      v22 = v11;
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = @"durationBefore should be numeric";
    }

    v38 = [v28 exceptionWithName:v29 reason:AVMethodExceptionReasonWithObjectAndSelector(v12 userInfo:{a2, v30, v23, v24, v25, v26, v27, v39), 0}];
    objc_exception_throw(v38);
  }

  return v12;
}

- (AVVideoCompositionTimeWindow)initWithDurationBefore:(id *)before durationAfter:(id *)after
{
  v8 = *before;
  v7 = *after;
  v6 = *before;
  v5 = *after;
  return [(AVVideoCompositionTimeWindow *)self initWithDurationBefore:&v8 durationAfter:&v7 durationBeforeWhenSeeking:&v6 durationAfterWhenSeeking:&v5];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  v16 = v3;
  v17 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  memset(&v15[1], 0, sizeof(CMTime));
  if (self)
  {
    [(AVVideoCompositionTimeWindow *)self durationBefore];
    memset(v15, 0, 24);
    [(AVVideoCompositionTimeWindow *)self durationAfter];
    memset(&v14, 0, sizeof(v14));
    [(AVVideoCompositionTimeWindow *)self durationBeforeWhenSeeking];
    memset(&v13, 0, sizeof(v13));
    [(AVVideoCompositionTimeWindow *)self durationAfterWhenSeeking];
  }

  else
  {
    memset(v15, 0, 24);
    memset(&v14, 0, sizeof(v14));
    memset(&v13, 0, sizeof(v13));
  }

  memset(&v12[1], 0, sizeof(CMTime));
  if (equal)
  {
    [equal durationBefore];
    memset(v12, 0, 24);
    [equal durationAfter];
    memset(&v11, 0, sizeof(v11));
    [equal durationBeforeWhenSeeking];
    memset(&v10, 0, sizeof(v10));
    [equal durationAfterWhenSeeking];
  }

  else
  {
    memset(v12, 0, 24);
    memset(&v11, 0, sizeof(v11));
    memset(&v10, 0, sizeof(v10));
  }

  time1 = v15[1];
  v8 = v12[1];
  if (CMTimeCompare(&time1, &v8))
  {
    return 0;
  }

  time1 = v15[0];
  v8 = v12[0];
  if (CMTimeCompare(&time1, &v8))
  {
    return 0;
  }

  time1 = v14;
  v8 = v11;
  if (CMTimeCompare(&time1, &v8))
  {
    return 0;
  }

  time1 = v13;
  v8 = v10;
  return !CMTimeCompare(&time1, &v8);
}

- (unint64_t)hash
{
  if (self)
  {
    [(AVVideoCompositionTimeWindow *)self durationBefore];
    v3 = CMTimeHash(&v7);
    [(AVVideoCompositionTimeWindow *)self durationAfter];
    v4 = CMTimeHash(&v7);
    [(AVVideoCompositionTimeWindow *)self durationBeforeWhenSeeking];
    v5 = CMTimeHash(&v7);
    [(AVVideoCompositionTimeWindow *)self durationAfterWhenSeeking];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
    v3 = CMTimeHash(&v7);
    memset(&v7, 0, sizeof(v7));
    v4 = CMTimeHash(&v7);
    memset(&v7, 0, sizeof(v7));
    v5 = CMTimeHash(&v7);
    memset(&v7, 0, sizeof(v7));
  }

  return v3 ^ v5 ^ v4 ^ CMTimeHash(&v7);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  time = self->_durationBefore;
  Seconds = CMTimeGetSeconds(&time);
  time = self->_durationAfter;
  v7 = CMTimeGetSeconds(&time);
  time = self->_durationBeforeWhenSeeking;
  v8 = CMTimeGetSeconds(&time);
  time = self->_durationAfterWhenSeeking;
  return [v3 stringWithFormat:@"<%@: %p> [-%1.3f, +%1.3f] (during playing) / [-%1.3f, +%1.3f] (during seeking)", v5, self, *&Seconds, *&v7, *&v8, CMTimeGetSeconds(&time)];
}

@end