@interface AVCaptionGroup
- (AVCaptionGroup)initWithCaptions:(NSArray *)captions timeRange:(CMTimeRange *)timeRange;
- (AVCaptionGroup)initWithTimeRange:(CMTimeRange *)timeRange;
- (CMTimeRange)timeRange;
- (id)description;
- (opaqueCMSampleBuffer)copySampleBufferWithError:(id *)error;
- (void)dealloc;
@end

@implementation AVCaptionGroup

- (AVCaptionGroup)initWithCaptions:(NSArray *)captions timeRange:(CMTimeRange *)timeRange
{
  v52 = *MEMORY[0x1E69E9840];
  if (!captions)
  {
    selfCopy = self;
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = "captions != nil";
LABEL_30:
    v35 = [v32 exceptionWithName:v33 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v27, v28, v29, v30, v31, v34), 0}];
    objc_exception_throw(v35);
  }

  if ((timeRange->start.flags & 1) == 0 || (timeRange->duration.flags & 1) == 0 || timeRange->duration.epoch || timeRange->duration.value < 0)
  {
    selfCopy2 = self;
    v32 = MEMORY[0x1E695DF30];
    v33 = *MEMORY[0x1E695D940];
    v34 = "CMTIMERANGE_IS_VALID(timeRange)";
    goto LABEL_30;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [(NSArray *)captions countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  v10 = *v47;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v47 != v10)
      {
        objc_enumerationMutation(captions);
      }

      v12 = *(*(&v46 + 1) + 8 * i);
      memset(&v45, 0, sizeof(v45));
      if (v12)
      {
        [v12 timeRange];
      }

      else
      {
        memset(&range, 0, sizeof(range));
      }

      v13 = *&timeRange->start.epoch;
      *&otherRange.start.value = *&timeRange->start.value;
      *&otherRange.start.epoch = v13;
      *&otherRange.duration.timescale = *&timeRange->duration.timescale;
      CMTimeRangeGetIntersection(&v45, &range, &otherRange);
      v14 = *&timeRange->start.epoch;
      *&range.start.value = *&timeRange->start.value;
      *&range.start.epoch = v14;
      *&range.duration.timescale = *&timeRange->duration.timescale;
      otherRange = v45;
      if (!CMTimeRangeEqual(&range, &otherRange))
      {
        selfCopy3 = self;
        v32 = MEMORY[0x1E695DF30];
        v33 = *MEMORY[0x1E695D940];
        v34 = "CMTimeRangeEqual( timeRange, intersection)";
        goto LABEL_30;
      }
    }

    v9 = [(NSArray *)captions countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v9);
LABEL_17:
  v42.receiver = self;
  v42.super_class = AVCaptionGroup;
  v15 = [(AVCaptionGroup *)&v42 init];
  if (v15)
  {
    v16 = objc_alloc_init(AVCaptionGroupInternal);
    v15->_internal = v16;
    if (v16)
    {
      CFRetain(v16);
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v18 = [(NSArray *)captions countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v39;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v39 != v20)
            {
              objc_enumerationMutation(captions);
            }

            -[NSArray addObject:](v17, "addObject:", [*(*(&v38 + 1) + 8 * j) copy]);
          }

          v19 = [(NSArray *)captions countByEnumeratingWithState:&v38 objects:v50 count:16];
        }

        while (v19);
      }

      v15->_internal->captions = v17;
      internal = v15->_internal;
      v23 = *&timeRange->start.value;
      v24 = *&timeRange->duration.timescale;
      *&internal->timeRange.start.epoch = *&timeRange->start.epoch;
      *&internal->timeRange.duration.timescale = v24;
      *&internal->timeRange.start.value = v23;
    }

    else
    {

      return 0;
    }
  }

  return v15;
}

- (AVCaptionGroup)initWithTimeRange:(CMTimeRange *)timeRange
{
  if ((timeRange->start.flags & 1) == 0 || (timeRange->duration.flags & 1) == 0 || timeRange->duration.epoch || timeRange->duration.value < 0)
  {
    selfCopy = self;
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v8, v9, v10, v11, v12, "CMTIMERANGE_IS_VALID(timeRange)"), 0}];
    objc_exception_throw(v13);
  }

  v3 = *&timeRange->start.epoch;
  v14[0] = *&timeRange->start.value;
  v14[1] = v3;
  v14[2] = *&timeRange->duration.timescale;
  return [(AVCaptionGroup *)self initWithCaptions:MEMORY[0x1E695E0F0] timeRange:v14];
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    CFRelease(self->_internal);
    internal = self->_internal;
  }

  v4.receiver = self;
  v4.super_class = AVCaptionGroup;
  [(AVCaptionGroup *)&v4 dealloc];
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  internal = self->_internal;
  v5 = *&internal->timeRange.start.epoch;
  *&range.start.value = *&internal->timeRange.start.value;
  *&range.start.epoch = v5;
  *&range.duration.timescale = *&internal->timeRange.duration.timescale;
  v6 = CMTimeRangeCopyDescription(v3, &range);
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  return [v7 stringWithFormat:@"<%@: %p, timeRange = %@ captions=%@>", NSStringFromClass(v8), self, v6, self->_internal->captions];
}

- (CMTimeRange)timeRange
{
  v3 = *&self->start.timescale;
  v4 = v3[2];
  *&retstr->start.value = v3[1];
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = v3[3];
  return self;
}

- (opaqueCMSampleBuffer)copySampleBufferWithError:(id *)error
{
  v4 = [(NSArray *)[(AVCaptionGroup *)self captions] count];
  v30 = 0;
  v31 = 0;
  v29 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v4, MEMORY[0x1E695E9C0]);
  v6 = 0;
  v7 = 0;
  if (v4 > 0xAAAAAAAAAAAAAAALL || (v7 = malloc_type_malloc((24 * v4) | 1, 0x1000040504FFAC1uLL), v6 = malloc_type_malloc((24 * v4) | 1, 0x1000040504FFAC1uLL), v4))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = [(NSArray *)[(AVCaptionGroup *)self captions] objectAtIndexedSubscript:v9];
      [v10 _figCaptionData];
      if (FigCaptionDataCreateMutableCopy())
      {
        break;
      }

      if (self)
      {
        [(AVCaptionGroup *)self timeRange];
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }

      *&lhs.value = v25;
      lhs.epoch = v26;
      if (v10)
      {
        [v10 timeRange];
      }

      else
      {
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
      }

      v11 = &v7[v8];
      *&rhs.value = v21;
      rhs.epoch = v22;
      CMTimeSubtract(&v20.start, &lhs, &rhs);
      v12 = *&v20.start.value;
      *(v11 + 2) = v20.start.epoch;
      *v11 = v12;
      if (v10)
      {
        [v10 timeRange];
      }

      else
      {
        memset(&v20, 0, sizeof(v20));
      }

      CMTimeRangeGetEnd(&lhs, &v20);
      if (self)
      {
        [(AVCaptionGroup *)self timeRange];
      }

      else
      {
        memset(&v20, 0, sizeof(v20));
      }

      v13 = &v6[v8];
      CMTimeRangeGetEnd(&rhs, &v20);
      CMTimeSubtract(&v20.start, &lhs, &rhs);
      v14 = *&v20.start.value;
      *(v13 + 2) = v20.start.epoch;
      *v13 = v14;
      CFArrayAppendValue(Mutable, v29);
      if (v29)
      {
        CFRelease(v29);
        v29 = 0;
      }

      ++v9;
      v8 += 24;
      if (v4 == v9)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (!FigCaptionGroupCreate())
    {
      if (self)
      {
        [(AVCaptionGroup *)self timeRange];
        *&v20.start.value = v18;
        v20.start.epoch = v19;
        [(AVCaptionGroup *)self timeRange];
      }

      else
      {
        memset(&v20, 0, 24);
        memset(v17, 0, sizeof(v17));
      }

      lhs = *&v17[1];
      if (!FigSampleBufferCreateForCaptionGroup())
      {
        v15 = v30;
        v30 = 0;
        goto LABEL_26;
      }
    }
  }

  v15 = 0;
LABEL_26:
  free(v7);
  free(v6);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return v15;
}

@end