@interface AVVideoCompositionLayerInstruction
+ (void)initialize;
- (AVVideoCompositionLayerInstruction)init;
- (AVVideoCompositionLayerInstruction)initWithCoder:(id)coder;
- (BOOL)getCropRectangleRampForTime:(CMTime *)time startCropRectangle:(CGRect *)startCropRectangle endCropRectangle:(CGRect *)endCropRectangle timeRange:(CMTimeRange *)timeRange;
- (BOOL)getOpacityRampForTime:(CMTime *)time startOpacity:(float *)startOpacity endOpacity:(float *)endOpacity timeRange:(CMTimeRange *)timeRange;
- (BOOL)getTransformRampForTime:(CMTime *)time startTransform:(CGAffineTransform *)startTransform endTransform:(CGAffineTransform *)endTransform timeRange:(CMTimeRange *)timeRange;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithTimeRange:(id *)range;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_setCropRectangleRampFromStartCropRectangle:(CGRect)rectangle toEndCropRectangle:(CGRect)cropRectangle timeRange:(id *)range selector:(SEL)selector;
- (void)_setCropRectangleRamps:(id)ramps;
- (void)_setOpacityRampFromStartOpacity:(float)opacity toEndOpacity:(float)endOpacity timeRange:(id *)range selector:(SEL)selector;
- (void)_setOpacityRamps:(id)ramps;
- (void)_setTransformRampFromStartTransform:(CGAffineTransform *)transform toEndTransform:(CGAffineTransform *)endTransform timeRange:(id *)range selector:(SEL)selector;
- (void)_setTransformRamps:(id)ramps;
- (void)_setValuesFromDictionary:(id)dictionary timeRange:(id *)range;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCropRectangle:(CGRect)rectangle atTime:(id *)time;
- (void)setCropRectangleRampFromStartCropRectangle:(CGRect)rectangle toEndCropRectangle:(CGRect)cropRectangle timeRange:(id *)range;
- (void)setOpacity:(float)opacity atTime:(id *)time;
- (void)setOpacityRampFromStartOpacity:(float)opacity toEndOpacity:(float)endOpacity timeRange:(id *)range;
- (void)setTransform:(CGAffineTransform *)transform atTime:(id *)time;
- (void)setTransformRampFromStartTransform:(CGAffineTransform *)transform toEndTransform:(CGAffineTransform *)endTransform timeRange:(id *)range;
@end

@implementation AVVideoCompositionLayerInstruction

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

- (AVVideoCompositionLayerInstruction)init
{
  v5.receiver = self;
  v5.super_class = AVVideoCompositionLayerInstruction;
  v2 = [(AVVideoCompositionLayerInstruction *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVVideoCompositionLayerInstructionInternal);
    v2->_layerInstruction = v3;
    if (v3)
    {
      CFRetain(v3);
      v2->_layerInstruction->trackID = 0;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (AVVideoCompositionLayerInstruction)initWithCoder:(id)coder
{
  v23.receiver = self;
  v23.super_class = AVVideoCompositionLayerInstruction;
  v4 = [(AVVideoCompositionLayerInstruction *)&v23 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVVideoCompositionLayerInstructionInternal);
    v4->_layerInstruction = v5;
    if (v5)
    {
      CFRetain(v5);
      -[AVVideoCompositionLayerInstruction setTrackID:](v4, "setTrackID:", [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"AVVideoCompositionLayerTrackID", "intValue"}]);
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = [coder decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, objc_opt_class(), 0), @"AVVideoCompositionLayerTransformRamps"}];
      [(AVVideoCompositionLayerInstruction *)v4 _setTransformRamps:_rampArrayWithTimeRangesAsValues(v10)];
      v11 = MEMORY[0x1E695DFD8];
      v12 = objc_opt_class();
      v13 = objc_opt_class();
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = [coder decodeObjectOfClasses:objc_msgSend(v11 forKey:{"setWithObjects:", v12, v13, v14, v15, objc_opt_class(), 0), @"AVVideoCompositionLayerOpacityRamps"}];
      [(AVVideoCompositionLayerInstruction *)v4 _setOpacityRamps:_rampArrayWithTimeRangesAsValues(v16)];
      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [coder decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithObjects:", v18, v19, v20, objc_opt_class(), 0), @"AVVideoCompositionLayerCropRectangleRamps"}];
      [(AVVideoCompositionLayerInstruction *)v4 _setCropRectangleRamps:_rampArrayWithTimeRangesAsValues(v21)];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", self->_layerInstruction->trackID), @"AVVideoCompositionLayerTrackID"}];
  [coder encodeObject:_rampArrayWithTimeRangesAsDictionaries(self->_layerInstruction->transformRamps) forKey:@"AVVideoCompositionLayerTransformRamps"];
  [coder encodeObject:_rampArrayWithTimeRangesAsDictionaries(self->_layerInstruction->opacityRamps) forKey:@"AVVideoCompositionLayerOpacityRamps"];
  v5 = _rampArrayWithTimeRangesAsDictionaries(self->_layerInstruction->cropRectangleRamps);

  [coder encodeObject:v5 forKey:@"AVVideoCompositionLayerCropRectangleRamps"];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  trackID = self->_layerInstruction->trackID;
  if (trackID != [equal trackID])
  {
    goto LABEL_11;
  }

  layerInstruction = self->_layerInstruction;
  transformRamps = layerInstruction->transformRamps;
  v8 = *(*(equal + 1) + 16);
  if (transformRamps)
  {
    LODWORD(v9) = [(NSMutableArray *)transformRamps isEqual:v8];
    if (!v9)
    {
      return v9;
    }

    layerInstruction = self->_layerInstruction;
  }

  else if (v8)
  {
    goto LABEL_11;
  }

  opacityRamps = layerInstruction->opacityRamps;
  v11 = *(*(equal + 1) + 24);
  if (opacityRamps)
  {
    LODWORD(v9) = [(NSMutableArray *)opacityRamps isEqual:v11];
    if (!v9)
    {
      return v9;
    }

    layerInstruction = self->_layerInstruction;
    goto LABEL_13;
  }

  if (v11)
  {
LABEL_11:
    LOBYTE(v9) = 0;
    return v9;
  }

LABEL_13:
  cropRectangleRamps = layerInstruction->cropRectangleRamps;
  v13 = *(*(equal + 1) + 32);
  if (cropRectangleRamps)
  {

    LOBYTE(v9) = [(NSMutableArray *)cropRectangleRamps isEqual:v13];
  }

  else
  {
    return v13 == 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(AVVideoCompositionLayerInstruction *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = [[AVVideoCompositionLayerInstruction allocWithZone:?]];
    if (v5)
    {
      [(AVVideoCompositionLayerInstruction *)v5 setTrackID:[(AVVideoCompositionLayerInstruction *)self trackID]];
      [(AVVideoCompositionLayerInstruction *)v5 _setTransformRamps:self->_layerInstruction->transformRamps];
      [(AVVideoCompositionLayerInstruction *)v5 _setOpacityRamps:self->_layerInstruction->opacityRamps];
      [(AVVideoCompositionLayerInstruction *)v5 _setCropRectangleRamps:self->_layerInstruction->cropRectangleRamps];
    }

    return v5;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(AVVideoCompositionLayerInstruction *)[AVMutableVideoCompositionLayerInstruction allocWithZone:?]];
  if (v4)
  {
    [(AVMutableVideoCompositionLayerInstruction *)v4 setTrackID:[(AVVideoCompositionLayerInstruction *)self trackID]];
    [(AVVideoCompositionLayerInstruction *)v4 _setTransformRamps:self->_layerInstruction->transformRamps];
    [(AVVideoCompositionLayerInstruction *)v4 _setOpacityRamps:self->_layerInstruction->opacityRamps];
    [(AVVideoCompositionLayerInstruction *)v4 _setCropRectangleRamps:self->_layerInstruction->cropRectangleRamps];
  }

  return v4;
}

- (void)dealloc
{
  layerInstruction = self->_layerInstruction;
  if (layerInstruction)
  {

    CFRelease(self->_layerInstruction);
  }

  v4.receiver = self;
  v4.super_class = AVVideoCompositionLayerInstruction;
  [(AVVideoCompositionLayerInstruction *)&v4 dealloc];
}

- (void)_setTransformRamps:(id)ramps
{
  transformRamps = self->_layerInstruction->transformRamps;
  if (transformRamps != ramps)
  {

    self->_layerInstruction->transformRamps = [ramps copy];
  }
}

- (void)_setOpacityRamps:(id)ramps
{
  opacityRamps = self->_layerInstruction->opacityRamps;
  if (opacityRamps != ramps)
  {

    self->_layerInstruction->opacityRamps = [ramps copy];
  }
}

- (void)_setCropRectangleRamps:(id)ramps
{
  cropRectangleRamps = self->_layerInstruction->cropRectangleRamps;
  if (cropRectangleRamps != ramps)
  {

    self->_layerInstruction->cropRectangleRamps = [ramps copy];
  }
}

- (void)_setTransformRampFromStartTransform:(CGAffineTransform *)transform toEndTransform:(CGAffineTransform *)endTransform timeRange:(id *)range selector:(SEL)selector
{
  transformRamps = self->_layerInstruction->transformRamps;
  v12 = *&range->var0.var3;
  v39 = *&range->var0.var0;
  v40 = v12;
  v41 = *&range->var1.var1;
  if (AVRampsIncludesRampThatOverlapsTimeRange(transformRamps, &v39))
  {
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{selector, @"The timeRange of a transform ramp must not overlap the timeRange of an existing transform ramp.", v13, v14, v15, v16, v17, v32), 0}];
    objc_exception_throw(v31);
  }

  v18 = self->_layerInstruction->transformRamps;
  if (!v18)
  {
    self->_layerInstruction->transformRamps = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v18 = self->_layerInstruction->transformRamps;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __108__AVVideoCompositionLayerInstruction__setTransformRampFromStartTransform_toEndTransform_timeRange_selector___block_invoke;
  v35[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
  v19 = *&range->var0.var3;
  v36 = *&range->var0.var0;
  v37 = v19;
  v38 = *&range->var1.var1;
  v20 = [(NSMutableArray *)v18 indexOfObjectPassingTest:v35];
  v21 = *&range->var0.var3;
  v39 = *&range->var0.var0;
  v40 = v21;
  v41 = *&range->var1.var1;
  v22 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v39];
  v23 = MEMORY[0x1E695DF20];
  v24 = *&transform->c;
  v39 = *&transform->a;
  v40 = v24;
  v41 = *&transform->tx;
  v25 = FigCreate3x2MatrixArrayFromCGAffineTransform();
  v26 = *&endTransform->c;
  v39 = *&endTransform->a;
  v40 = v26;
  v41 = *&endTransform->tx;
  v27 = [v23 dictionaryWithObjectsAndKeys:{v25, @"StartTransform", FigCreate3x2MatrixArrayFromCGAffineTransform(), @"EndTransform", 0}];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_layerInstruction->transformRamps addObject:v22];
    [(NSMutableArray *)self->_layerInstruction->transformRamps addObject:v27];
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v28 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:v20];
    if (v28)
    {
      [v28 CMTimeRangeValue];
    }

    else
    {
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
    }

    *&time1.value = v39;
    time1.epoch = v40;
    time2 = range->var0;
    v29 = CMTimeCompare(&time1, &time2);
    v30 = self->_layerInstruction->transformRamps;
    if (v29)
    {
      [(NSMutableArray *)v30 insertObject:v22 atIndex:v20];
      [(NSMutableArray *)self->_layerInstruction->transformRamps insertObject:v27 atIndex:v20 + 1];
    }

    else
    {
      [(NSMutableArray *)v30 replaceObjectAtIndex:v20 withObject:v22];
      [(NSMutableArray *)self->_layerInstruction->transformRamps replaceObjectAtIndex:v20 + 1 withObject:v27];
    }
  }
}

BOOL __108__AVVideoCompositionLayerInstruction__setTransformRampFromStartTransform_toEndTransform_timeRange_selector___block_invoke(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&time1.value = v10;
  time1.epoch = v11;
  v8 = *(a1 + 32);
  v7 = CMTimeCompare(&time1, &v8);
  result = v7 >= 0;
  if ((v7 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)setTransform:(CGAffineTransform *)transform atTime:(id *)time
{
  if ((time->var2 & 0x1D) != 1)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of a transform setting must be numeric.", time, v4, v5, v6, v7, v15), 0}];
    objc_exception_throw(v14);
  }

  *start = *time;
  v15 = *MEMORY[0x1E6960C88];
  *&v16 = *(MEMORY[0x1E6960C88] + 16);
  CMTimeRangeMake(&v20, start, &v15);
  v11 = *&transform->c;
  *start = *&transform->a;
  *&start[16] = v11;
  v13 = *&transform->a;
  v12 = *&transform->c;
  v19 = *&transform->tx;
  v15 = v13;
  v16 = v12;
  v17 = *&transform->tx;
  [(AVVideoCompositionLayerInstruction *)self _setTransformRampFromStartTransform:start toEndTransform:&v15 timeRange:&v20 selector:a2];
}

- (void)setTransformRampFromStartTransform:(CGAffineTransform *)transform toEndTransform:(CGAffineTransform *)endTransform timeRange:(id *)range
{
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a transform ramp must have a numeric start time and a numeric duration.", endTransform, range, v5, v6, v7, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v8 = *&transform->c;
  v14[0] = *&transform->a;
  v14[1] = v8;
  v14[2] = *&transform->tx;
  v9 = *&endTransform->c;
  v13[0] = *&endTransform->a;
  v13[1] = v9;
  v13[2] = *&endTransform->tx;
  v10 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v10;
  v12[2] = *&range->var1.var1;
  [(AVVideoCompositionLayerInstruction *)self _setTransformRampFromStartTransform:v14 toEndTransform:v13 timeRange:v12 selector:a2];
}

- (BOOL)getTransformRampForTime:(CMTime *)time startTransform:(CGAffineTransform *)startTransform endTransform:(CGAffineTransform *)endTransform timeRange:(CMTimeRange *)timeRange
{
  v41 = *MEMORY[0x1E69E9840];
  if ((time->flags & 0x1D) == 1)
  {
    layerInstruction = self->_layerInstruction;
    if (layerInstruction->transformRamps)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      transformRamps = layerInstruction->transformRamps;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __100__AVVideoCompositionLayerInstruction_getTransformRampForTime_startTransform_endTransform_timeRange___block_invoke;
      v32[3] = &unk_1E74638D8;
      v33 = *time;
      v32[4] = &v34;
      v12 = [(NSMutableArray *)transformRamps indexOfObjectPassingTest:v32];
      if (v35[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        v14 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:v12];
        if (v14)
        {
          [v14 CMTimeRangeValue];
          flags = DWORD1(v31);
          epoch = *(&v31 + 1);
        }

        else
        {
          epoch = 0;
          flags = 0;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
        }

        v38 = v29;
        v39 = v30;
        timescale = v31;
      }

      else
      {
        v18 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:?];
        if (v18)
        {
          [v18 CMTimeRangeValue];
          flags = DWORD1(v31);
          epoch = *(&v31 + 1);
        }

        else
        {
          epoch = 0;
          flags = 0;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
        }

        v38 = v29;
        v39 = v30;
        timescale = v31;
        v13 = v35[3];
      }

      if (v13 != 0x7FFFFFFFFFFFFFFELL)
      {
        v19 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:?];
        v20 = v19;
        if (startTransform)
        {
          [v19 objectForKey:@"StartTransform"];
          FigGetCGAffineTransformFrom3x2MatrixArray();
          v21 = v30;
          *&startTransform->a = v29;
          *&startTransform->c = v21;
          *&startTransform->tx = v31;
        }

        if (endTransform)
        {
          [v20 objectForKey:@"EndTransform"];
          FigGetCGAffineTransformFrom3x2MatrixArray();
          v22 = v30;
          *&endTransform->a = v29;
          *&endTransform->c = v22;
          *&endTransform->tx = v31;
        }

        if (timeRange)
        {
          if ((~flags & 5) == 0 && v13 + 2 < [(NSMutableArray *)self->_layerInstruction->transformRamps count])
          {
            v30 = 0u;
            v31 = 0u;
            v29 = 0u;
            v23 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:?];
            if (v23)
            {
              [v23 CMTimeRangeValue];
            }

            else
            {
              v30 = 0u;
              v31 = 0u;
              v29 = 0u;
            }

            *&lhs.value = v29;
            lhs.epoch = v30;
            *&v26.value = v38;
            v26.epoch = v39;
            CMTimeSubtract(&v28, &lhs, &v26);
            *(&v39 + 1) = v28.value;
            flags = v28.flags;
            timescale = v28.timescale;
            epoch = v28.epoch;
          }

          v24 = v39;
          *&timeRange->start.value = v38;
          *&timeRange->start.epoch = v24;
          timeRange->duration.timescale = timescale;
          timeRange->duration.flags = flags;
          timeRange->duration.epoch = epoch;
        }

        v17 = 1;
        goto LABEL_29;
      }

LABEL_15:
      v17 = 0;
LABEL_29:
      _Block_object_dispose(&v34, 8);
      return v17;
    }
  }

  return 0;
}

BOOL __100__AVVideoCompositionLayerInstruction_getTransformRampForTime_startTransform_endTransform_timeRange___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  range = v12;
  v10 = *(a1 + 40);
  if (CMTimeRangeContainsTime(&range, &v10))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  *&range.start.value = *&v12.start.value;
  range.start.epoch = v12.start.epoch;
  v10 = *(a1 + 40);
  v7 = CMTimeCompare(&range.start, &v10);
  result = v7 > 0;
  if (v7 < 1)
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 24) < a3)
    {
      *(v9 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (void)_setOpacityRampFromStartOpacity:(float)opacity toEndOpacity:(float)endOpacity timeRange:(id *)range selector:(SEL)selector
{
  opacityRamps = self->_layerInstruction->opacityRamps;
  v12 = *&range->var0.var3;
  v35 = *&range->var0.var0;
  v36 = v12;
  v37 = *&range->var1.var1;
  if (AVRampsIncludesRampThatOverlapsTimeRange(opacityRamps, &v35))
  {
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{selector, @"The timeRange of an opacity ramp must not overlap the timeRange of an existing opacity ramp.", v13, v14, v15, v16, v17, var0.var0), 0}];
    objc_exception_throw(v27);
  }

  v18 = self->_layerInstruction->opacityRamps;
  if (!v18)
  {
    self->_layerInstruction->opacityRamps = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v18 = self->_layerInstruction->opacityRamps;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __102__AVVideoCompositionLayerInstruction__setOpacityRampFromStartOpacity_toEndOpacity_timeRange_selector___block_invoke;
  v31[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
  v19 = *&range->var0.var3;
  v32 = *&range->var0.var0;
  v33 = v19;
  v34 = *&range->var1.var1;
  v20 = [(NSMutableArray *)v18 indexOfObjectPassingTest:v31];
  v21 = *&range->var0.var3;
  v35 = *&range->var0.var0;
  v36 = v21;
  v37 = *&range->var1.var1;
  v22 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v35];
  *v30 = opacity;
  *&v30[1] = endOpacity;
  v23 = [MEMORY[0x1E695DEF0] dataWithBytes:v30 length:8];
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_layerInstruction->opacityRamps addObject:v22];
    [(NSMutableArray *)self->_layerInstruction->opacityRamps addObject:v23];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v24 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:v20];
    if (v24)
    {
      [v24 CMTimeRangeValue];
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    *&time1.value = v35;
    time1.epoch = v36;
    var0 = range->var0;
    v25 = CMTimeCompare(&time1, &var0);
    v26 = self->_layerInstruction->opacityRamps;
    if (v25)
    {
      [(NSMutableArray *)v26 insertObject:v22 atIndex:v20];
      [(NSMutableArray *)self->_layerInstruction->opacityRamps insertObject:v23 atIndex:v20 + 1];
    }

    else
    {
      [(NSMutableArray *)v26 replaceObjectAtIndex:v20 withObject:v22];
      [(NSMutableArray *)self->_layerInstruction->opacityRamps replaceObjectAtIndex:v20 + 1 withObject:v23];
    }
  }
}

BOOL __102__AVVideoCompositionLayerInstruction__setOpacityRampFromStartOpacity_toEndOpacity_timeRange_selector___block_invoke(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&time1.value = v10;
  time1.epoch = v11;
  v8 = *(a1 + 32);
  v7 = CMTimeCompare(&time1, &v8);
  result = v7 >= 0;
  if ((v7 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)setOpacity:(float)opacity atTime:(id *)time
{
  if ((time->var2 & 0x1D) != 1)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of an opacity setting must be numeric.", v4, v5, v6, v7, v8, v15.value), 0}];
    objc_exception_throw(v14);
  }

  start = *time;
  v15 = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v17, &start, &v15);
  *&v12 = opacity;
  *&v13 = opacity;
  [(AVVideoCompositionLayerInstruction *)self _setOpacityRampFromStartOpacity:&v17 toEndOpacity:a2 timeRange:v12 selector:v13];
}

- (void)setOpacityRampFromStartOpacity:(float)opacity toEndOpacity:(float)endOpacity timeRange:(id *)range
{
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of an opacity ramp must have a numeric start time and a numeric duration.", v5, v6, v7, v8, v9, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v10 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v10;
  v12[2] = *&range->var1.var1;
  [AVVideoCompositionLayerInstruction _setOpacityRampFromStartOpacity:"_setOpacityRampFromStartOpacity:toEndOpacity:timeRange:selector:" toEndOpacity:v12 timeRange:a2 selector:?];
}

- (BOOL)getOpacityRampForTime:(CMTime *)time startOpacity:(float *)startOpacity endOpacity:(float *)endOpacity timeRange:(CMTimeRange *)timeRange
{
  v39 = *MEMORY[0x1E69E9840];
  if ((time->flags & 0x1D) == 1)
  {
    layerInstruction = self->_layerInstruction;
    if (layerInstruction->opacityRamps)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0x7FFFFFFFFFFFFFFFLL;
      opacityRamps = layerInstruction->opacityRamps;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __94__AVVideoCompositionLayerInstruction_getOpacityRampForTime_startOpacity_endOpacity_timeRange___block_invoke;
      v30[3] = &unk_1E74638D8;
      v31 = *time;
      v30[4] = &v32;
      v12 = [(NSMutableArray *)opacityRamps indexOfObjectPassingTest:v30];
      if (v33[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v12;
        if (v12 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        v14 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:v12];
        if (v14)
        {
          [v14 CMTimeRangeValue];
          flags = DWORD1(v29);
          epoch = *(&v29 + 1);
        }

        else
        {
          epoch = 0;
          flags = 0;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
        }

        v36 = v27;
        v37 = v28;
        timescale = v29;
      }

      else
      {
        v18 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:?];
        if (v18)
        {
          [v18 CMTimeRangeValue];
          flags = DWORD1(v29);
          epoch = *(&v29 + 1);
        }

        else
        {
          epoch = 0;
          flags = 0;
          v28 = 0u;
          v29 = 0u;
          v27 = 0u;
        }

        v36 = v27;
        v37 = v28;
        timescale = v29;
        v13 = v33[3];
      }

      if (v13 != 0x7FFFFFFFFFFFFFFELL)
      {
        v19 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:?];
        v26 = 0x3F8000003F800000;
        if (v19)
        {
          [v19 getBytes:&v26 length:8];
        }

        if (startOpacity)
        {
          *startOpacity = v26;
        }

        if (endOpacity)
        {
          *endOpacity = *(&v26 + 1);
        }

        if (timeRange)
        {
          if ((~flags & 5) == 0 && v13 + 2 < [(NSMutableArray *)self->_layerInstruction->opacityRamps count])
          {
            v28 = 0u;
            v29 = 0u;
            v27 = 0u;
            v20 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:?];
            if (v20)
            {
              [v20 CMTimeRangeValue];
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
              v27 = 0u;
            }

            *&lhs.value = v27;
            lhs.epoch = v28;
            *&v23.value = v36;
            v23.epoch = v37;
            CMTimeSubtract(&v25, &lhs, &v23);
            *(&v37 + 1) = v25.value;
            flags = v25.flags;
            timescale = v25.timescale;
            epoch = v25.epoch;
          }

          v21 = v37;
          *&timeRange->start.value = v36;
          *&timeRange->start.epoch = v21;
          timeRange->duration.timescale = timescale;
          timeRange->duration.flags = flags;
          timeRange->duration.epoch = epoch;
        }

        v17 = 1;
        goto LABEL_31;
      }

LABEL_15:
      v17 = 0;
LABEL_31:
      _Block_object_dispose(&v32, 8);
      return v17;
    }
  }

  return 0;
}

BOOL __94__AVVideoCompositionLayerInstruction_getOpacityRampForTime_startOpacity_endOpacity_timeRange___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  range = v12;
  v10 = *(a1 + 40);
  if (CMTimeRangeContainsTime(&range, &v10))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  *&range.start.value = *&v12.start.value;
  range.start.epoch = v12.start.epoch;
  v10 = *(a1 + 40);
  v7 = CMTimeCompare(&range.start, &v10);
  result = v7 > 0;
  if (v7 < 1)
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 24) < a3)
    {
      *(v9 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (void)_setCropRectangleRampFromStartCropRectangle:(CGRect)rectangle toEndCropRectangle:(CGRect)cropRectangle timeRange:(id *)range selector:(SEL)selector
{
  height = cropRectangle.size.height;
  width = cropRectangle.size.width;
  y = cropRectangle.origin.y;
  x = cropRectangle.origin.x;
  v12 = rectangle.size.height;
  v13 = rectangle.size.width;
  v14 = rectangle.origin.y;
  v15 = rectangle.origin.x;
  cropRectangleRamps = self->_layerInstruction->cropRectangleRamps;
  v18 = *&range->var0.var3;
  v43 = *&range->var0.var0;
  v44 = v18;
  v45 = *&range->var1.var1;
  if (AVRampsIncludesRampThatOverlapsTimeRange(cropRectangleRamps, &v43))
  {
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{selector, @"The timeRange of a crop rectangle ramp must not overlap the timeRange of an existing crop rectangle ramp.", v19, v20, v21, v22, v23, v36), 0}];
    objc_exception_throw(v35);
  }

  v24 = self->_layerInstruction->cropRectangleRamps;
  if (!v24)
  {
    self->_layerInstruction->cropRectangleRamps = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v24 = self->_layerInstruction->cropRectangleRamps;
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __120__AVVideoCompositionLayerInstruction__setCropRectangleRampFromStartCropRectangle_toEndCropRectangle_timeRange_selector___block_invoke;
  v39[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
  v25 = *&range->var0.var3;
  v40 = *&range->var0.var0;
  v41 = v25;
  v42 = *&range->var1.var1;
  v26 = [(NSMutableArray *)v24 indexOfObjectPassingTest:v39];
  v27 = *&range->var0.var3;
  v43 = *&range->var0.var0;
  v44 = v27;
  v45 = *&range->var1.var1;
  v28 = [MEMORY[0x1E696B098] valueWithCMTimeRange:&v43];
  v29 = MEMORY[0x1E695DF20];
  v46.origin.x = v15;
  v46.origin.y = v14;
  v46.size.width = v13;
  v46.size.height = v12;
  v30 = CGRectCreateDictionaryRepresentation(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v31 = [v29 dictionaryWithObjectsAndKeys:{v30, @"StartCropRectangle", CGRectCreateDictionaryRepresentation(v47), @"EndCropRectangle", 0}];
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps addObject:v28];
    [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps addObject:v31];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v32 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:v26];
    if (v32)
    {
      [v32 CMTimeRangeValue];
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
    }

    *&time1.value = v43;
    time1.epoch = v44;
    time2 = range->var0;
    v33 = CMTimeCompare(&time1, &time2);
    v34 = self->_layerInstruction->cropRectangleRamps;
    if (v33)
    {
      [(NSMutableArray *)v34 insertObject:v28 atIndex:v26];
      [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps insertObject:v31 atIndex:v26 + 1];
    }

    else
    {
      [(NSMutableArray *)v34 replaceObjectAtIndex:v26 withObject:v28];
      [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps replaceObjectAtIndex:v26 + 1 withObject:v31];
    }
  }
}

BOOL __120__AVVideoCompositionLayerInstruction__setCropRectangleRampFromStartCropRectangle_toEndCropRectangle_timeRange_selector___block_invoke(uint64_t a1, void *a2, char a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&time1.value = v10;
  time1.epoch = v11;
  v8 = *(a1 + 32);
  v7 = CMTimeCompare(&time1, &v8);
  result = v7 >= 0;
  if ((v7 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  return result;
}

- (void)setCropRectangle:(CGRect)rectangle atTime:(id *)time
{
  if ((time->var2 & 0x1D) != 1)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The time of a crop rectangle setting must be numeric.", v4, v5, v6, v7, v8, v16.value), 0}];
    objc_exception_throw(v15);
  }

  height = rectangle.size.height;
  width = rectangle.size.width;
  y = rectangle.origin.y;
  x = rectangle.origin.x;
  start = *time;
  v16 = **&MEMORY[0x1E6960C88];
  CMTimeRangeMake(&v18, &start, &v16);
  [(AVVideoCompositionLayerInstruction *)self _setCropRectangleRampFromStartCropRectangle:&v18 toEndCropRectangle:a2 timeRange:x selector:y, width, height, x, y, width, height];
}

- (void)setCropRectangleRampFromStartCropRectangle:(CGRect)rectangle toEndCropRectangle:(CGRect)cropRectangle timeRange:(id *)range
{
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a crop rectangle ramp must have a numeric start time and a numeric duration.", v5, v6, v7, v8, v9, *&v12[0]), 0}];
    objc_exception_throw(v11);
  }

  v10 = *&range->var0.var3;
  v12[0] = *&range->var0.var0;
  v12[1] = v10;
  v12[2] = *&range->var1.var1;
  [(AVVideoCompositionLayerInstruction *)self _setCropRectangleRampFromStartCropRectangle:v12 toEndCropRectangle:a2 timeRange:rectangle.origin.x selector:rectangle.origin.y, rectangle.size.width, rectangle.size.height, cropRectangle.origin.x, cropRectangle.origin.y, cropRectangle.size.width, cropRectangle.size.height];
}

- (BOOL)getCropRectangleRampForTime:(CMTime *)time startCropRectangle:(CGRect *)startCropRectangle endCropRectangle:(CGRect *)endCropRectangle timeRange:(CMTimeRange *)timeRange
{
  v40 = *MEMORY[0x1E69E9840];
  if ((time->flags & 0x1D) == 1)
  {
    cropRectangleRamps = self->_layerInstruction->cropRectangleRamps;
    if (cropRectangleRamps)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v37 = 0x7FFFFFFFFFFFFFFFLL;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __112__AVVideoCompositionLayerInstruction_getCropRectangleRampForTime_startCropRectangle_endCropRectangle_timeRange___block_invoke;
      v32[3] = &unk_1E74638D8;
      v33 = *time;
      v32[4] = &v34;
      v11 = [(NSMutableArray *)cropRectangleRamps indexOfObjectPassingTest:v32];
      if (v35[3] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = v11;
        if (v11 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_15;
        }

        v13 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:v11];
        if (v13)
        {
          [v13 CMTimeRangeValue];
          flags = DWORD1(v31);
          epoch = *(&v31 + 1);
        }

        else
        {
          epoch = 0;
          flags = 0;
          v31 = 0u;
          memset(&rect, 0, sizeof(rect));
        }

        v38 = rect;
        timescale = v31;
      }

      else
      {
        v17 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:?];
        if (v17)
        {
          [v17 CMTimeRangeValue];
          flags = DWORD1(v31);
          epoch = *(&v31 + 1);
        }

        else
        {
          epoch = 0;
          flags = 0;
          v31 = 0u;
          memset(&rect, 0, sizeof(rect));
        }

        v38 = rect;
        timescale = v31;
        v12 = v35[3];
      }

      if (v12 != 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:?];
        v19 = v18;
        if (startCropRectangle)
        {
          v20 = [v18 objectForKey:@"StartCropRectangle"];
          memset(&rect, 0, sizeof(rect));
          CGRectMakeWithDictionaryRepresentation(v20, &rect);
          size = rect.size;
          startCropRectangle->origin = rect.origin;
          startCropRectangle->size = size;
        }

        if (endCropRectangle)
        {
          v22 = [v19 objectForKey:@"EndCropRectangle"];
          memset(&rect, 0, sizeof(rect));
          CGRectMakeWithDictionaryRepresentation(v22, &rect);
          v23 = rect.size;
          endCropRectangle->origin = rect.origin;
          endCropRectangle->size = v23;
        }

        if (timeRange)
        {
          if ((~flags & 5) == 0 && v12 + 2 < [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps count])
          {
            v31 = 0u;
            memset(&rect, 0, sizeof(rect));
            v24 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:?];
            if (v24)
            {
              [v24 CMTimeRangeValue];
            }

            else
            {
              v31 = 0u;
              memset(&rect, 0, sizeof(rect));
            }

            *&lhs.value = rect.origin;
            lhs.epoch = *&rect.size.width;
            v27 = *&v38.origin.x;
            CMTimeSubtract(&v29, &lhs, &v27);
            *&v38.size.height = v29.value;
            flags = v29.flags;
            timescale = v29.timescale;
            epoch = v29.epoch;
          }

          v25 = v38.size;
          *&timeRange->start.value = v38.origin;
          *&timeRange->start.epoch = v25;
          timeRange->duration.timescale = timescale;
          timeRange->duration.flags = flags;
          timeRange->duration.epoch = epoch;
        }

        v16 = 1;
        goto LABEL_29;
      }

LABEL_15:
      v16 = 0;
LABEL_29:
      _Block_object_dispose(&v34, 8);
      return v16;
    }
  }

  return 0;
}

BOOL __112__AVVideoCompositionLayerInstruction_getCropRectangleRampForTime_startCropRectangle_endCropRectangle_timeRange___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  if (a2)
  {
    [a2 CMTimeRangeValue];
  }

  range = v12;
  v10 = *(a1 + 40);
  if (CMTimeRangeContainsTime(&range, &v10))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  *&range.start.value = *&v12.start.value;
  range.start.epoch = v12.start.epoch;
  v10 = *(a1 + 40);
  v7 = CMTimeCompare(&range.start, &v10);
  result = v7 > 0;
  if (v7 < 1)
  {
    v9 = *(*(a1 + 32) + 8);
    if (*(v9 + 24) < a3)
    {
      *(v9 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

- (id)dictionaryRepresentationWithTimeRange:(id *)range
{
  v188 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  time = *&range->var1.var0;
  *time_16 = range->var1.var3;
  Seconds = CMTimeGetSeconds(&time);
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &self->_layerInstruction->trackID);
  if (v7)
  {
    v8 = v7;
    [v5 setObject:v7 forKey:@"SourceVideoTrackID"];
    CFRelease(v8);
  }

  v9 = [(NSMutableArray *)self->_layerInstruction->transformRamps count];
  v10 = MEMORY[0x1E6960CC0];
  v155 = Seconds;
  v143 = v5;
  if (v9 < 2 || (v11 = v9, time = *&range->var1.var0, *time_16 = range->var1.var3, *&time2.a = *MEMORY[0x1E6960CC0], time2.c = *(MEMORY[0x1E6960CC0] + 16), !CMTimeCompare(&time, &time2)))
  {
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    time = *MEMORY[0x1E695EFD0];
    *time_16 = v13;
    *&time_16[16] = *(MEMORY[0x1E695EFD0] + 32);
    v14 = FigCreate3x2MatrixArrayFromCGAffineTransform();
LABEL_8:
    [v5 setObject:v14 forKey:@"ConstantAffineMatrix"];
    goto LABEL_51;
  }

  v166 = v11 >> 1;
  v182 = 0u;
  memset(lhs, 0, sizeof(lhs));
  v12 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:0];
  if (v12)
  {
    [v12 CMTimeRangeValue];
  }

  else
  {
    v182 = 0u;
    memset(lhs, 0, sizeof(lhs));
  }

  v15 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:1];
  v180 = 0u;
  memset(time1, 0, sizeof(time1));
  [v15 objectForKey:@"StartTransform"];
  FigGetCGAffineTransformFrom3x2MatrixArray();
  memset(&v178, 0, sizeof(v178));
  [v15 objectForKey:@"EndTransform"];
  FigGetCGAffineTransformFrom3x2MatrixArray();
  if (v166 == 1)
  {
    time = *lhs;
    *time_16 = *&lhs[16];
    *&time2.a = *&range->var0.var0;
    *&time2.c = range->var0.var3;
    if (!CMTimeCompare(&time, &time2))
    {
      time = *time1;
      *time_16 = *&time1[16];
      *&time_16[16] = v180;
      time2 = v178;
      if (CGAffineTransformEqualToTransform(&time, &time2))
      {
        time = *time1;
        *time_16 = *&time1[16];
        *&time_16[16] = v180;
        v14 = FigCreate3x2MatrixArrayFromCGAffineTransform();
        goto LABEL_8;
      }
    }
  }

  v166 = [MEMORY[0x1E695DF70] arrayWithCapacity:3 * v166];
  time = *lhs;
  *time_16 = *&lhs[16];
  *&time2.a = *&range->var0.var0;
  *&time2.c = range->var0.var3;
  v17 = CMTimeCompare(&time, &time2);
  v18 = MEMORY[0x1E695EFD0];
  if (v17 >= 1)
  {
    v19 = *(MEMORY[0x1E695EFD0] + 16);
    time = *MEMORY[0x1E695EFD0];
    *time_16 = v19;
    *&time_16[16] = *(MEMORY[0x1E695EFD0] + 32);
    v20 = FigCreate3x2MatrixArrayFromCGAffineTransform();
    [v166 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", 0.0)}];
    [v166 addObject:v20];
    v21 = MEMORY[0x1E696AD98];
    *&time2.a = *lhs;
    time2.c = *&lhs[16];
    *&rhs.start.value = *&range->var0.var0;
    rhs.start.epoch = range->var0.var3;
    CMTimeSubtract(&time, &time2, &rhs.start);
    v22 = CMTimeGetSeconds(&time) / Seconds;
    *&v22 = v22;
    [v166 addObject:{objc_msgSend(v21, "numberWithFloat:", v22)}];
    [v166 addObject:v20];
  }

  v23 = 0;
  v24 = v11 >> 1;
  if (v166 <= 1)
  {
    v24 = 1;
  }

  v163 = v24;
  v25 = 0uLL;
  v158 = v18[1];
  v160 = *v18;
  rect1 = v18[2];
  v151 = *(MEMORY[0x1E6960C98] + 16);
  v153 = *MEMORY[0x1E6960C98];
  v149 = *(MEMORY[0x1E6960C98] + 32);
  do
  {
    v26 = 2 * v23;
    v177[1] = v25;
    v177[2] = v25;
    v177[0] = v25;
    v27 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:2 * v23];
    if (v27)
    {
      [v27 CMTimeRangeValue];
    }

    else
    {
      memset(v177, 0, sizeof(v177));
    }

    time = v177[0];
    *time_16 = v177[1];
    *&time_16[16] = v177[2];
    CMTimeRangeGetEnd(&time2, &time);
    v28 = *&range->var0.var3;
    time = *&range->var0.var0;
    *time_16 = v28;
    *&time_16[16] = *&range->var1.var1;
    CMTimeRangeGetEnd(&rhs.start, &time);
    if (CMTimeCompare(&time2, &rhs.start) >= 1)
    {
      time = v177[0];
      *time_16 = *&v177[1];
      *&rhs.start.value = *&range->var0.var0;
      rhs.start.epoch = range->var0.var3;
      CMTimeSubtract(&time2, &time, &rhs.start);
      *&rhs.start.value = *&range->var1.var0;
      rhs.start.epoch = range->var1.var3;
      CMTimeSubtract(&time, &rhs.start, &time2);
      *(&v177[1] + 8) = time;
      *(&v177[2] + 1) = *time_16;
    }

    memset(&v176, 0, sizeof(v176));
    time = v177[0];
    *time_16 = v177[1];
    *&time_16[16] = v177[2];
    CMTimeRangeGetEnd(&v176, &time);
    v29 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:(2 * (v23 & 0x3FFFFFFFFFFFFFFFLL)) | 1];
    memset(&v175, 0, sizeof(v175));
    [v29 objectForKey:@"StartTransform"];
    FigGetCGAffineTransformFrom3x2MatrixArray();
    memset(&v174, 0, sizeof(v174));
    [v29 objectForKey:@"EndTransform"];
    FigGetCGAffineTransformFrom3x2MatrixArray();
    *&v173.a = v160;
    *&v173.c = v158;
    *&v173.tx = rect1;
    v170 = v153;
    v171 = v151;
    ++v23;
    v172 = v149;
    if (v23 < v166)
    {
      v30 = [(NSMutableArray *)self->_layerInstruction->transformRamps objectAtIndex:v26 + 2];
      if (v30)
      {
        [v30 CMTimeRangeValue];
      }

      else
      {
        memset(time_16, 0, 32);
        time = 0u;
      }

      v170 = time;
      v171 = *time_16;
      v172 = *&time_16[16];
      CMTimeRangeGetEnd(&time2, &time);
      v31 = *&range->var0.var3;
      time = *&range->var0.var0;
      *time_16 = v31;
      *&time_16[16] = *&range->var1.var1;
      CMTimeRangeGetEnd(&rhs.start, &time);
      if (CMTimeCompare(&time2, &rhs.start) >= 1)
      {
        *&time2.a = v170;
        *&time2.c = v171;
        *&rhs.start.value = *&range->var0.var0;
        rhs.start.epoch = range->var0.var3;
        CMTimeSubtract(&time, &time2, &rhs.start);
        *&time2.a = *&range->var1.var0;
        *&time2.c = range->var1.var3;
        CMTimeSubtract((&v171 + 8), &time2, &time);
      }

      [-[NSMutableArray objectAtIndex:](self->_layerInstruction->transformRamps objectAtIndex:{v26 + 3), "objectForKey:", @"StartTransform"}];
      FigGetCGAffineTransformFrom3x2MatrixArray();
      time = v170;
      *time_16 = v171;
      *&time2.a = *&v176.value;
      *&time2.c = v176.epoch;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        time = *(&v177[1] + 8);
        *time_16 = *(&v177[2] + 1);
        v32 = CMTimeGetSeconds(&time);
        *&time2.a = v170;
        *&time2.c = v171;
        *&rhs.start.value = v177[0];
        rhs.start.epoch = *&v177[1];
        CMTimeSubtract(&time, &time2, &rhs.start);
        *(&v177[2] + 1) = *time_16;
        *(&v177[1] + 8) = time;
        time = v177[0];
        *time_16 = v177[1];
        *&time_16[16] = v177[2];
        CMTimeRangeGetEnd(&time2, &time);
        *&v176.value = *&time2.a;
        v176.epoch = *&time2.c;
        time = *(&v177[1] + 8);
        *time_16 = *(&v177[2] + 1);
        v33 = CMTimeGetSeconds(&time);
        memset(&v169, 0, sizeof(v169));
        time2 = v175;
        rhs = v174;
        avvc_CGAffineTransformDecompose(&time2, &time);
        avvc_CGAffineTransformDecompose(&rhs, &time2);
        if ((time.f64[0] >= 0.0 || time2.b >= 0.0) && (time.f64[1] >= 0.0 || time2.a >= 0.0))
        {
          v34 = *time_16;
        }

        else
        {
          time = vnegq_f64(time);
          v34 = *time_16 + dbl_196257400[*time_16 < 0.0];
        }

        v35 = fmod(v34, 6.28318531);
        *time_16 = v35;
        v36 = fmod(time2.c, 6.28318531);
        time2.c = v36;
        if (vabdd_f64(v35, v36) > 3.14159265)
        {
          if (v35 <= v36)
          {
            p_time2 = &time2;
          }

          else
          {
            v36 = v35;
            p_time2 = &time;
          }

          p_time2->c = v36 + -6.28318531;
        }

        for (i = 0; i != 9; ++i)
        {
          time.f64[i] = time.f64[i] + v33 / v32 * (*(&time2.a + i * 8) - time.f64[i]);
        }

        v169 = *&time_16[8];
        rhs = *&time_16[8];
        CGAffineTransformRotate(&v169, &rhs, *time_16);
        v183 = v169;
        CGAffineTransformScale(&rhs, &v183, time.f64[0], time.f64[1]);
        v169 = rhs;
        v39 = MEMORY[0x1E695DF20];
        v40 = [v29 objectForKey:@"StartTransform"];
        time = *&v169.a;
        *time_16 = *&v169.c;
        *&time_16[16] = *&v169.tx;
        v29 = [v39 dictionaryWithObjectsAndKeys:{v40, @"StartTransform", FigCreate3x2MatrixArrayFromCGAffineTransform(), @"EndTransform", 0}];
        Seconds = v155;
      }
    }

    v41 = MEMORY[0x1E696AD98];
    *&time2.a = v177[0];
    time2.c = *&v177[1];
    *&rhs.start.value = *&range->var0.var0;
    rhs.start.epoch = range->var0.var3;
    CMTimeSubtract(&time, &time2, &rhs.start);
    v42 = CMTimeGetSeconds(&time) / Seconds;
    *&v42 = v42;
    [v166 addObject:{objc_msgSend(v41, "numberWithFloat:", v42)}];
    [v166 addObject:{objc_msgSend(v29, "objectForKey:", @"StartTransform"}];
    v43 = MEMORY[0x1E696AD98];
    time = v177[0];
    *time_16 = v177[1];
    *&time_16[16] = v177[2];
    CMTimeRangeGetEnd(&time2, &time);
    *&rhs.start.value = *&range->var0.var0;
    rhs.start.epoch = range->var0.var3;
    CMTimeSubtract(&time, &time2, &rhs.start);
    v44 = CMTimeGetSeconds(&time) / Seconds;
    *&v44 = v44;
    [v166 addObject:{objc_msgSend(v43, "numberWithFloat:", v44)}];
    [v166 addObject:{objc_msgSend(v29, "objectForKey:", @"EndTransform"}];
    if (v23 < v166)
    {
      time = v170;
      *time_16 = v171;
      *&time2.a = *&v176.value;
      *&time2.c = v176.epoch;
      if (CMTimeCompare(&time, &time2) >= 1)
      {
        time = *&v174.start.value;
        *time_16 = *&v174.start.epoch;
        *&time_16[16] = *&v174.duration.timescale;
        time2 = v173;
        if (!CGAffineTransformEqualToTransform(&time, &time2))
        {
          v45 = MEMORY[0x1E696AD98];
          time = v177[0];
          *time_16 = v177[1];
          *&time_16[16] = v177[2];
          CMTimeRangeGetEnd(&time2, &time);
          *&rhs.start.value = *&range->var0.var0;
          rhs.start.epoch = range->var0.var3;
          CMTimeSubtract(&time, &time2, &rhs.start);
          v46 = CMTimeGetSeconds(&time) / Seconds;
          *&v46 = v46;
          [v166 addObject:{objc_msgSend(v45, "numberWithFloat:", v46)}];
          [v166 addObject:{objc_msgSend(v29, "objectForKey:", @"EndTransform"}];
          v47 = MEMORY[0x1E696AD98];
          *&time2.a = v170;
          *&time2.c = v171;
          *&rhs.start.value = *&range->var0.var0;
          rhs.start.epoch = range->var0.var3;
          CMTimeSubtract(&time, &time2, &rhs.start);
          v48 = CMTimeGetSeconds(&time) / Seconds;
          *&v48 = v48;
          [v166 addObject:{objc_msgSend(v47, "numberWithFloat:", v48)}];
          [v166 addObject:{objc_msgSend(v29, "objectForKey:", @"EndTransform"}];
        }
      }
    }

    v25 = 0uLL;
  }

  while (v23 != v163);
  v5 = v143;
  [v143 setObject:v166 forKey:{@"TweenedAffineMatrix", 0.0}];
  v10 = MEMORY[0x1E6960CC0];
LABEL_51:
  v49 = [(NSMutableArray *)self->_layerInstruction->opacityRamps count];
  if (v49 <= 1)
  {
    v51 = MEMORY[0x1E696AD98];
    LODWORD(v50) = 1.0;
LABEL_53:
    [v5 setObject:objc_msgSend(v51 forKey:{"numberWithFloat:", v50), @"ConstantOpacity"}];
    goto LABEL_86;
  }

  v52 = v49 >> 1;
  memset(time_16, 0, 32);
  time = 0u;
  v53 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:0];
  if (v53)
  {
    [v53 CMTimeRangeValue];
  }

  else
  {
    memset(time_16, 0, 32);
    time = 0u;
  }

  v54 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:1];
  *&v177[0] = 0x3F8000003F800000;
  [v54 getBytes:v177 length:8];
  if (v52 == 1)
  {
    *&time2.a = time;
    time2.c = *time_16;
    *&rhs.start.value = *&range->var0.var0;
    rhs.start.epoch = range->var0.var3;
    if (!CMTimeCompare(&time2, &rhs.start))
    {
      LODWORD(v50) = v177[0];
      if (*v177 == *(v177 + 1))
      {
        v51 = MEMORY[0x1E696AD98];
        goto LABEL_53;
      }
    }
  }

  v55 = [MEMORY[0x1E695DF70] arrayWithCapacity:3 * v52];
  *&time2.a = time;
  time2.c = *time_16;
  *&rhs.start.value = *&range->var0.var0;
  rhs.start.epoch = range->var0.var3;
  if (CMTimeCompare(&time2, &rhs.start) >= 1)
  {
    LODWORD(v56) = 1.0;
    v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
    [v55 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", 0.0)}];
    [v55 addObject:v57];
    v58 = MEMORY[0x1E696AD98];
    *&rhs.start.value = time;
    rhs.start.epoch = *time_16;
    *&v183.a = *&range->var0.var0;
    *&v183.c = range->var0.var3;
    CMTimeSubtract(&time2, &rhs.start, &v183);
    v59 = CMTimeGetSeconds(&time2) / Seconds;
    *&v59 = v59;
    [v55 addObject:{objc_msgSend(v58, "numberWithFloat:", v59)}];
    [v55 addObject:v57];
  }

  if (v52 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v52;
  }

  v61 = 1;
  v62 = 0uLL;
  v164 = *(MEMORY[0x1E6960C98] + 16);
  v167 = *MEMORY[0x1E6960C98];
  v161 = *(MEMORY[0x1E6960C98] + 32);
  v63 = 1;
  do
  {
    *&time2.c = v62;
    *&time2.tx = v62;
    *&time2.a = v62;
    v64 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:v61 - 1];
    if (v64)
    {
      [v64 CMTimeRangeValue];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    rhs = time2;
    CMTimeRangeGetEnd(&v183, &rhs);
    v65 = *&range->var0.var3;
    *&rhs.start.value = *&range->var0.var0;
    *&rhs.start.epoch = v65;
    *&rhs.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(lhs, &rhs);
    if (CMTimeCompare(&v183, lhs) >= 1)
    {
      *&rhs.start.value = *&time2.a;
      rhs.start.epoch = *&time2.c;
      *lhs = *&range->var0.var0;
      *&lhs[16] = range->var0.var3;
      CMTimeSubtract(&v183, &rhs.start, lhs);
      *lhs = *&range->var1.var0;
      *&lhs[16] = range->var1.var3;
      CMTimeSubtract(&rhs.start, lhs, &v183);
      *&time2.d = *&rhs.start.value;
      *&time2.ty = rhs.start.epoch;
    }

    memset(lhs, 0, 24);
    rhs = time2;
    CMTimeRangeGetEnd(lhs, &rhs);
    v66 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:v61];
    v175.a = 0.00781250185;
    [v66 getBytes:&v175 length:8];
    v174.start.value = 0x3F8000003F800000;
    *&rhs.start.value = v167;
    *&rhs.start.epoch = v164;
    *&rhs.duration.timescale = v161;
    if (v63 < v52)
    {
      v67 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:v61 + 1];
      if (v67)
      {
        [v67 CMTimeRangeValue];
      }

      else
      {
        memset(&v183, 0, sizeof(v183));
      }

      rhs = v183;
      CMTimeRangeGetEnd(time1, &v183);
      v68 = *&range->var0.var3;
      *&v183.a = *&range->var0.var0;
      *&v183.c = v68;
      *&v183.tx = *&range->var1.var1;
      CMTimeRangeGetEnd(&v178, &v183);
      if (CMTimeCompare(time1, &v178) >= 1)
      {
        *time1 = *&rhs.start.value;
        *&time1[16] = rhs.start.epoch;
        *&v178.a = *&range->var0.var0;
        *&v178.c = range->var0.var3;
        CMTimeSubtract(&v183, time1, &v178);
        *time1 = *&range->var1.var0;
        *&time1[16] = range->var1.var3;
        CMTimeSubtract(&rhs.duration, time1, &v183);
      }

      v69 = [(NSMutableArray *)self->_layerInstruction->opacityRamps objectAtIndex:v61 + 2];
      if (v69)
      {
        [v69 getBytes:&v174 length:8];
      }

      *&v183.a = *&rhs.start.value;
      *&v183.c = rhs.start.epoch;
      *time1 = *lhs;
      *&time1[16] = *&lhs[16];
      if (CMTimeCompare(&v183, time1) < 0)
      {
        *&v183.a = *&time2.d;
        v183.c = time2.ty;
        v70 = CMTimeGetSeconds(&v183);
        *time1 = *&rhs.start.value;
        *&time1[16] = rhs.start.epoch;
        *&v178.a = *&time2.a;
        v178.c = time2.c;
        CMTimeSubtract(&v183, time1, &v178);
        time2.ty = v183.c;
        *&time2.d = *&v183.a;
        v183 = time2;
        CMTimeRangeGetEnd(time1, &v183);
        *lhs = *time1;
        *&lhs[16] = *&time1[16];
        *&v183.a = *&time2.d;
        v183.c = time2.ty;
        v71 = CMTimeGetSeconds(&v183);
        *&v71 = v71 * (*(&v175.a + 1) - *&v175.a) / v70 + *&v175.a;
        HIDWORD(v175.a) = LODWORD(v71);
      }
    }

    v72 = MEMORY[0x1E696AD98];
    *time1 = *&time2.a;
    *&time1[16] = time2.c;
    *&v178.a = *&range->var0.var0;
    *&v178.c = range->var0.var3;
    CMTimeSubtract(&v183, time1, &v178);
    v73 = CMTimeGetSeconds(&v183) / Seconds;
    *&v73 = v73;
    [v55 addObject:{objc_msgSend(v72, "numberWithFloat:", v73)}];
    LODWORD(v74) = LODWORD(v175.a);
    [v55 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v74)}];
    v75 = MEMORY[0x1E696AD98];
    v183 = time2;
    CMTimeRangeGetEnd(time1, &v183);
    *&v178.a = *&range->var0.var0;
    *&v178.c = range->var0.var3;
    CMTimeSubtract(&v183, time1, &v178);
    v76 = CMTimeGetSeconds(&v183) / Seconds;
    *&v76 = v76;
    [v55 addObject:{objc_msgSend(v75, "numberWithFloat:", v76)}];
    LODWORD(v77) = HIDWORD(v175.a);
    [v55 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v77)}];
    if (v63 < v52)
    {
      *&v183.a = *&rhs.start.value;
      *&v183.c = rhs.start.epoch;
      *time1 = *lhs;
      *&time1[16] = *&lhs[16];
      if (CMTimeCompare(&v183, time1) >= 1 && *(&v175.a + 1) != *&v174.start.value)
      {
        v78 = MEMORY[0x1E696AD98];
        v183 = time2;
        CMTimeRangeGetEnd(time1, &v183);
        *&v178.a = *&range->var0.var0;
        *&v178.c = range->var0.var3;
        CMTimeSubtract(&v183, time1, &v178);
        v79 = CMTimeGetSeconds(&v183) / Seconds;
        *&v79 = v79;
        [v55 addObject:{objc_msgSend(v78, "numberWithFloat:", v79)}];
        LODWORD(v80) = HIDWORD(v175.a);
        [v55 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v80)}];
        v81 = MEMORY[0x1E696AD98];
        *time1 = *&rhs.start.value;
        *&time1[16] = rhs.start.epoch;
        *&v178.a = *&range->var0.var0;
        *&v178.c = range->var0.var3;
        CMTimeSubtract(&v183, time1, &v178);
        v82 = CMTimeGetSeconds(&v183) / Seconds;
        *&v82 = v82;
        [v55 addObject:{objc_msgSend(v81, "numberWithFloat:", v82)}];
        LODWORD(v83) = HIDWORD(v175.a);
        [v55 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v83)}];
      }
    }

    ++v63;
    v61 += 2;
    --v60;
    v62 = 0uLL;
  }

  while (v60);
  v5 = v143;
  [v143 setObject:v55 forKey:{@"TweenedOpacity", 0.0}];
  v10 = MEMORY[0x1E6960CC0];
LABEL_86:
  v84 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps count];
  if (v84 < 2 || (v85 = v84, time = *&range->var1.var0, *time_16 = range->var1.var3, *&time2.a = *v10, time2.c = *(v10 + 16), !CMTimeCompare(&time, &time2)))
  {
    v87 = CGRectCreateDictionaryRepresentation(*MEMORY[0x1E695F040]);
    v88 = @"ConstantCropRectangle";
LABEL_91:
    v89 = v5;
    goto LABEL_123;
  }

  v168 = v85 >> 1;
  memset(time_16, 0, 32);
  time = 0u;
  v86 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:0];
  if (v86)
  {
    [v86 CMTimeRangeValue];
  }

  else
  {
    memset(time_16, 0, 32);
    time = 0u;
  }

  v90 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:1];
  v91 = [v90 objectForKey:@"StartCropRectangle"];
  memset(&time2, 0, 32);
  CGRectMakeWithDictionaryRepresentation(v91, &time2);
  a = time2.a;
  b = time2.b;
  c = time2.c;
  d = time2.d;
  v96 = [v90 objectForKey:@"EndCropRectangle"];
  memset(&time2, 0, 32);
  CGRectMakeWithDictionaryRepresentation(v96, &time2);
  if (v168 == 1)
  {
    v97 = time2.a;
    v98 = time2.b;
    v99 = time2.c;
    v100 = time2.d;
    *&time2.a = time;
    time2.c = *time_16;
    *&rhs.start.value = *&range->var0.var0;
    rhs.start.epoch = range->var0.var3;
    if (!CMTimeCompare(&time2, &rhs.start))
    {
      v189.origin.x = a;
      v189.origin.y = b;
      v189.size.width = c;
      v189.size.height = d;
      v193.origin.x = v97;
      v193.origin.y = v98;
      v193.size.width = v99;
      v193.size.height = v100;
      if (CGRectEqualToRect(v189, v193))
      {
        v190.origin.x = a;
        v190.origin.y = b;
        v190.size.width = c;
        v190.size.height = d;
        v87 = CGRectCreateDictionaryRepresentation(v190);
        v88 = @"ConstantCropRectangle";
        v5 = v143;
        goto LABEL_91;
      }
    }
  }

  v168 = [MEMORY[0x1E695DF70] arrayWithCapacity:3 * v168];
  *&time2.a = time;
  time2.c = *time_16;
  *&rhs.start.value = *&range->var0.var0;
  rhs.start.epoch = range->var0.var3;
  v102 = CMTimeCompare(&time2, &rhs.start);
  v103 = MEMORY[0x1E695F040];
  if (v102 >= 1)
  {
    v104 = CGRectCreateDictionaryRepresentation(*MEMORY[0x1E695F040]);
    [v168 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", 0.0)}];
    [v168 addObject:v104];
    v105 = MEMORY[0x1E696AD98];
    *&rhs.start.value = time;
    rhs.start.epoch = *time_16;
    *&v183.a = *&range->var0.var0;
    *&v183.c = range->var0.var3;
    CMTimeSubtract(&time2, &rhs.start, &v183);
    v106 = CMTimeGetSeconds(&time2) / v155;
    *&v106 = v106;
    [v168 addObject:{objc_msgSend(v105, "numberWithFloat:", v106)}];
    [v168 addObject:v104];
  }

  v147 = v103[1];
  v148 = *v103;
  v145 = v103[3];
  v146 = v103[2];
  if (v168 <= 1)
  {
    v107 = 1;
  }

  else
  {
    v107 = v85 >> 1;
  }

  v108 = 1;
  v109 = 0uLL;
  v152 = *(MEMORY[0x1E6960C98] + 16);
  v154 = *MEMORY[0x1E6960C98];
  v150 = *(MEMORY[0x1E6960C98] + 32);
  v110 = 1;
  do
  {
    *&time2.c = v109;
    *&time2.tx = v109;
    *&time2.a = v109;
    v111 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:v108 - 1];
    if (v111)
    {
      [v111 CMTimeRangeValue];
    }

    else
    {
      memset(&time2, 0, sizeof(time2));
    }

    rhs = time2;
    CMTimeRangeGetEnd(&v183, &rhs);
    v112 = *&range->var0.var3;
    *&rhs.start.value = *&range->var0.var0;
    *&rhs.start.epoch = v112;
    *&rhs.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(lhs, &rhs);
    if (CMTimeCompare(&v183, lhs) >= 1)
    {
      *&rhs.start.value = *&time2.a;
      rhs.start.epoch = *&time2.c;
      *lhs = *&range->var0.var0;
      *&lhs[16] = range->var0.var3;
      CMTimeSubtract(&v183, &rhs.start, lhs);
      *lhs = *&range->var1.var0;
      *&lhs[16] = range->var1.var3;
      CMTimeSubtract(&rhs.start, lhs, &v183);
      *&time2.d = *&rhs.start.value;
      *&time2.ty = rhs.start.epoch;
    }

    memset(lhs, 0, 24);
    rhs = time2;
    CMTimeRangeGetEnd(lhs, &rhs);
    v113 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:v108];
    v114 = [v113 objectForKey:@"StartCropRectangle"];
    memset(&rhs, 0, 32);
    CGRectMakeWithDictionaryRepresentation(v114, &rhs);
    v115 = *&rhs.start.value;
    v116 = *&rhs.start.timescale;
    v117 = *&rhs.start.epoch;
    v118 = *&rhs.duration.value;
    v119 = [v113 objectForKey:@"EndCropRectangle"];
    memset(&rhs, 0, 32);
    CGRectMakeWithDictionaryRepresentation(v119, &rhs);
    v165 = *&rhs.start.value;
    v162 = *&rhs.start.timescale;
    v159 = *&rhs.start.epoch;
    rect1a = *&rhs.duration.value;
    *&rhs.start.value = v154;
    *&rhs.start.epoch = v152;
    *&rhs.duration.timescale = v150;
    if (v110 >= v168)
    {
      v122 = v147;
      v121 = v148;
      v123 = v145;
      v124 = v146;
    }

    else
    {
      v120 = [(NSMutableArray *)self->_layerInstruction->cropRectangleRamps objectAtIndex:v108 + 1];
      if (v120)
      {
        [v120 CMTimeRangeValue];
      }

      else
      {
        memset(&v183, 0, sizeof(v183));
      }

      rhs = v183;
      CMTimeRangeGetEnd(time1, &v183);
      v125 = *&range->var0.var3;
      *&v183.a = *&range->var0.var0;
      *&v183.c = v125;
      *&v183.tx = *&range->var1.var1;
      CMTimeRangeGetEnd(&v178, &v183);
      if (CMTimeCompare(time1, &v178) >= 1)
      {
        *time1 = *&rhs.start.value;
        *&time1[16] = rhs.start.epoch;
        *&v178.a = *&range->var0.var0;
        *&v178.c = range->var0.var3;
        CMTimeSubtract(&v183, time1, &v178);
        *time1 = *&range->var1.var0;
        *&time1[16] = range->var1.var3;
        CMTimeSubtract(&rhs.duration, time1, &v183);
      }

      v126 = [-[NSMutableArray objectAtIndex:](self->_layerInstruction->cropRectangleRamps objectAtIndex:{v108 + 2), "objectForKey:", @"StartCropRectangle"}];
      memset(&v183, 0, 32);
      CGRectMakeWithDictionaryRepresentation(v126, &v183);
      v121 = v183.a;
      v122 = v183.b;
      v124 = v183.c;
      v123 = v183.d;
      *&v183.a = *&rhs.start.value;
      *&v183.c = rhs.start.epoch;
      *time1 = *lhs;
      *&time1[16] = *&lhs[16];
      if (CMTimeCompare(&v183, time1) < 0)
      {
        *&v183.a = *&time2.d;
        v183.c = time2.ty;
        v144 = CMTimeGetSeconds(&v183);
        *time1 = *&rhs.start.value;
        *&time1[16] = rhs.start.epoch;
        *&v178.a = *&time2.a;
        v178.c = time2.c;
        CMTimeSubtract(&v183, time1, &v178);
        time2.ty = v183.c;
        *&time2.d = *&v183.a;
        v183 = time2;
        CMTimeRangeGetEnd(time1, &v183);
        *lhs = *time1;
        *&lhs[16] = *&time1[16];
        *&v183.a = *&time2.d;
        v183.c = time2.ty;
        v127 = CMTimeGetSeconds(&v183) / v144;
        v128 = v115 + v127 * (v165 - v115);
        v129 = v116 + v127 * (v162 - v116);
        v130 = v117 + v127 * (v159 - v117);
        v131 = v118 + v127 * (rect1a - v118);
        v132 = MEMORY[0x1E695DF20];
        v133 = [v113 objectForKey:@"StartCropRectangle"];
        v191.origin.x = v128;
        v191.origin.y = v129;
        v191.size.width = v130;
        v191.size.height = v131;
        v113 = [v132 dictionaryWithObjectsAndKeys:{v133, @"StartCropRectangle", CGRectCreateDictionaryRepresentation(v191), @"EndCropRectangle", 0}];
      }
    }

    v134 = MEMORY[0x1E696AD98];
    *time1 = *&time2.a;
    *&time1[16] = time2.c;
    *&v178.a = *&range->var0.var0;
    *&v178.c = range->var0.var3;
    CMTimeSubtract(&v183, time1, &v178);
    v135 = CMTimeGetSeconds(&v183) / v155;
    *&v135 = v135;
    [v168 addObject:{objc_msgSend(v134, "numberWithFloat:", v135)}];
    [v168 addObject:{objc_msgSend(v113, "objectForKey:", @"StartCropRectangle"}];
    v136 = MEMORY[0x1E696AD98];
    v183 = time2;
    CMTimeRangeGetEnd(time1, &v183);
    *&v178.a = *&range->var0.var0;
    *&v178.c = range->var0.var3;
    CMTimeSubtract(&v183, time1, &v178);
    v137 = CMTimeGetSeconds(&v183) / v155;
    *&v137 = v137;
    [v168 addObject:{objc_msgSend(v136, "numberWithFloat:", v137)}];
    [v168 addObject:{objc_msgSend(v113, "objectForKey:", @"EndCropRectangle"}];
    if (v110 < v168)
    {
      *&v183.a = *&rhs.start.value;
      *&v183.c = rhs.start.epoch;
      *time1 = *lhs;
      *&time1[16] = *&lhs[16];
      if (CMTimeCompare(&v183, time1) >= 1)
      {
        v192.origin.x = v165;
        v192.origin.y = v162;
        v192.size.width = v159;
        v192.size.height = rect1a;
        v194.origin.x = v121;
        v194.origin.y = v122;
        v194.size.width = v124;
        v194.size.height = v123;
        if (!CGRectEqualToRect(v192, v194))
        {
          v138 = MEMORY[0x1E696AD98];
          v183 = time2;
          CMTimeRangeGetEnd(time1, &v183);
          *&v178.a = *&range->var0.var0;
          *&v178.c = range->var0.var3;
          CMTimeSubtract(&v183, time1, &v178);
          v139 = CMTimeGetSeconds(&v183) / v155;
          *&v139 = v139;
          [v168 addObject:{objc_msgSend(v138, "numberWithFloat:", v139)}];
          [v168 addObject:{objc_msgSend(v113, "objectForKey:", @"EndCropRectangle"}];
          v140 = MEMORY[0x1E696AD98];
          *time1 = *&rhs.start.value;
          *&time1[16] = rhs.start.epoch;
          *&v178.a = *&range->var0.var0;
          *&v178.c = range->var0.var3;
          CMTimeSubtract(&v183, time1, &v178);
          v141 = CMTimeGetSeconds(&v183) / v155;
          *&v141 = v141;
          [v168 addObject:{objc_msgSend(v140, "numberWithFloat:", v141)}];
          [v168 addObject:{objc_msgSend(v113, "objectForKey:", @"EndCropRectangle"}];
        }
      }
    }

    ++v110;
    v108 += 2;
    --v107;
    v109 = 0uLL;
  }

  while (v107);
  v88 = @"TweenedCropRectangle";
  v5 = v143;
  v89 = v143;
  v87 = v168;
LABEL_123:
  [v89 setObject:v87 forKey:v88];
  return v5;
}

- (void)_setValuesFromDictionary:(id)dictionary timeRange:(id *)range
{
  [(AVVideoCompositionLayerInstruction *)self setTrackID:0];
  [(AVVideoCompositionLayerInstruction *)self _setTransformRamps:0];
  [(AVVideoCompositionLayerInstruction *)self _setOpacityRamps:0];
  [(AVVideoCompositionLayerInstruction *)self _setCropRectangleRamps:0];
  valuePtr = 0;
  v7 = [dictionary objectForKey:@"SourceVideoTrackID"];
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
      {
        [(AVVideoCompositionLayerInstruction *)self setTrackID:valuePtr];
      }
    }
  }

  v10 = [dictionary objectForKey:@"ConstantAffineMatrix"];
  if (v10)
  {
    memset(&rect, 0, sizeof(rect));
    FigGetCGAffineTransformFrom3x2MatrixArray();
    memset(&t1, 0, sizeof(t1));
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    *&t2.a = *MEMORY[0x1E695EFD0];
    *&t2.c = v11;
    *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (!CGAffineTransformEqualToTransform(&t1, &t2))
    {
      t1 = rect;
      *&t2.a = *&range->var0.var0;
      *&t2.c = range->var0.var3;
      [(AVVideoCompositionLayerInstruction *)self setTransform:&t1 atTime:&t2];
    }
  }

  v12 = [dictionary objectForKey:@"ConstantOpacity"];
  v13 = v12;
  if (v12)
  {
    [v12 floatValue];
    if (v14 != 1.0)
    {
      *&rect.start.value = *&range->var0.var0;
      rect.start.epoch = range->var0.var3;
      [(AVVideoCompositionLayerInstruction *)self setOpacity:&rect atTime:?];
    }
  }

  v15 = [dictionary objectForKey:@"ConstantCropRectangle"];
  v16 = v15;
  if (v15)
  {
    memset(&rect, 0, 32);
    CGRectMakeWithDictionaryRepresentation(v15, &rect);
    v17 = *&rect.start.value;
    v18 = *&rect.start.timescale;
    v19 = *&rect.start.epoch;
    v20 = *&rect.duration.value;
    *&v80.origin.x = rect.start.value;
    v80.origin.y = *&rect.start.timescale;
    *&v80.size.width = rect.start.epoch;
    *&v80.size.height = rect.duration.value;
    if (!CGRectEqualToRect(v80, *MEMORY[0x1E695F040]))
    {
      *&rect.start.value = *&range->var0.var0;
      rect.start.epoch = range->var0.var3;
      [(AVVideoCompositionLayerInstruction *)self setCropRectangle:&rect atTime:v17, v18, v19, v20];
    }
  }

  *&rect.start.value = *&range->var1.var0;
  rect.start.epoch = range->var1.var3;
  Seconds = CMTimeGetSeconds(&rect.start);
  if (!v10)
  {
    v22 = [dictionary objectForKey:@"TweenedAffineMatrix"];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 count];
      if (v24 >= 4)
      {
        v25 = v24 >> 2;
        v26 = 3;
        do
        {
          [objc_msgSend(v23 objectAtIndex:{v26 - 3), "floatValue"}];
          v28 = v27;
          [objc_msgSend(v23 objectAtIndex:{v26 - 1), "floatValue"}];
          v30 = v29;
          memset(&var0, 0, sizeof(var0));
          if (v26 == 3)
          {
            var0 = range->var0;
          }

          else
          {
            CMTimeMakeWithSeconds(&rect.start, (v28 * Seconds), 600);
            *&t1.a = *&range->var0.var0;
            *&t1.c = range->var0.var3;
            CMTimeAdd(&var0, &t1, &rect.start);
          }

          memset(&v74, 0, sizeof(v74));
          if (v25 == 1)
          {
            *&t1.a = *&var0.value;
            *&t1.c = var0.epoch;
            *&t2.a = *&range->var0.var0;
            *&t2.c = range->var0.var3;
            CMTimeSubtract(&rect.start, &t1, &t2);
            *&t1.a = *&range->var1.var0;
            *&t1.c = range->var1.var3;
            p_t1 = &t1;
            p_rect = &rect;
          }

          else
          {
            CMTimeMakeWithSeconds(&t1, (v30 * Seconds), 600);
            *&t2.a = *&range->var0.var0;
            *&t2.c = range->var0.var3;
            CMTimeAdd(&rect.start, &t2, &t1);
            *&t1.a = *&var0.value;
            *&t1.c = var0.epoch;
            p_t1 = &rect;
            p_rect = &t1;
          }

          CMTimeSubtract(&v74, p_t1, p_rect);
          memset(&rect, 0, sizeof(rect));
          [v23 objectAtIndex:v26 - 2];
          FigGetCGAffineTransformFrom3x2MatrixArray();
          memset(&t1, 0, sizeof(t1));
          [v23 objectAtIndex:v26];
          FigGetCGAffineTransformFrom3x2MatrixArray();
          start.start = var0;
          *&duration.a = v74;
          CMTimeRangeMake(&t2, &start.start, &duration);
          start = rect;
          duration = t1;
          [(AVVideoCompositionLayerInstruction *)self setTransformRampFromStartTransform:&start toEndTransform:&duration timeRange:&t2];
          v26 += 4;
          --v25;
        }

        while (v25);
      }
    }
  }

  if (!v13)
  {
    v33 = [dictionary objectForKey:@"TweenedOpacity"];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 count];
      if (v35 >= 4)
      {
        v36 = v35 >> 2;
        v37 = 3;
        do
        {
          [objc_msgSend(v34 objectAtIndex:{v37 - 3), "floatValue"}];
          v39 = v38;
          [objc_msgSend(v34 objectAtIndex:{v37 - 1), "floatValue"}];
          v41 = v40;
          memset(&t1, 0, 24);
          if (v37 == 3)
          {
            *&t1.a = *&range->var0.var0;
            *&t1.c = range->var0.var3;
          }

          else
          {
            CMTimeMakeWithSeconds(&rect.start, (v39 * Seconds), 600);
            *&t2.a = *&range->var0.var0;
            *&t2.c = range->var0.var3;
            CMTimeAdd(&t1, &t2, &rect.start);
          }

          memset(&t2, 0, 24);
          if (v36 == 1)
          {
            *&start.start.value = *&t1.a;
            start.start.epoch = *&t1.c;
            *&duration.a = *&range->var0.var0;
            *&duration.c = range->var0.var3;
            CMTimeSubtract(&rect.start, &start.start, &duration);
            *&start.start.value = *&range->var1.var0;
            start.start.epoch = range->var1.var3;
            p_start = &start;
            v43 = &rect;
          }

          else
          {
            CMTimeMakeWithSeconds(&start.start, (v41 * Seconds), 600);
            *&duration.a = *&range->var0.var0;
            *&duration.c = range->var0.var3;
            CMTimeAdd(&rect.start, &duration, &start.start);
            *&start.start.value = *&t1.a;
            start.start.epoch = *&t1.c;
            p_start = &rect;
            v43 = &start;
          }

          CMTimeSubtract(&t2, &p_start->start, &v43->start);
          [objc_msgSend(v34 objectAtIndex:{v37 - 2), "floatValue"}];
          v45 = v44;
          [objc_msgSend(v34 objectAtIndex:{v37), "floatValue"}];
          v47 = v46;
          *&start.start.value = *&t1.a;
          start.start.epoch = *&t1.c;
          *&duration.a = *&t2.a;
          duration.c = t2.c;
          CMTimeRangeMake(&rect, &start.start, &duration);
          LODWORD(v48) = v45;
          LODWORD(v49) = v47;
          [(AVVideoCompositionLayerInstruction *)self setOpacityRampFromStartOpacity:&rect toEndOpacity:v48 timeRange:v49];
          v37 += 4;
          --v36;
        }

        while (v36);
      }
    }
  }

  if (!v16)
  {
    v50 = [dictionary objectForKey:@"TweenedCropRectangle"];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 count];
      if (v52 >= 4)
      {
        v53 = v52 >> 2;
        v54 = 3;
        v71 = Seconds;
        do
        {
          [objc_msgSend(v51 objectAtIndex:{v54 - 3), "floatValue"}];
          v56 = v55;
          [objc_msgSend(v51 objectAtIndex:{v54 - 1), "floatValue"}];
          v58 = v57;
          memset(&t1, 0, 24);
          if (v54 == 3)
          {
            *&t1.a = *&range->var0.var0;
            *&t1.c = range->var0.var3;
          }

          else
          {
            CMTimeMakeWithSeconds(&rect.start, (v56 * Seconds), 600);
            *&t2.a = *&range->var0.var0;
            *&t2.c = range->var0.var3;
            CMTimeAdd(&t1, &t2, &rect.start);
          }

          memset(&t2, 0, 24);
          if (v53 == 1)
          {
            *&start.start.value = *&t1.a;
            start.start.epoch = *&t1.c;
            *&duration.a = *&range->var0.var0;
            *&duration.c = range->var0.var3;
            CMTimeSubtract(&rect.start, &start.start, &duration);
            *&start.start.value = *&range->var1.var0;
            start.start.epoch = range->var1.var3;
            v59 = &start;
            v60 = &rect;
          }

          else
          {
            CMTimeMakeWithSeconds(&start.start, (v58 * Seconds), 600);
            *&duration.a = *&range->var0.var0;
            *&duration.c = range->var0.var3;
            CMTimeAdd(&rect.start, &duration, &start.start);
            *&start.start.value = *&t1.a;
            start.start.epoch = *&t1.c;
            v59 = &rect;
            v60 = &start;
          }

          CMTimeSubtract(&t2, &v59->start, &v60->start);
          v61 = [v51 objectAtIndex:v54 - 2];
          memset(&rect, 0, 32);
          CGRectMakeWithDictionaryRepresentation(v61, &rect);
          v62 = *&rect.start.value;
          v63 = *&rect.start.timescale;
          v64 = *&rect.start.epoch;
          v65 = *&rect.duration.value;
          v66 = [v51 objectAtIndex:v54];
          memset(&rect, 0, 32);
          CGRectMakeWithDictionaryRepresentation(v66, &rect);
          v67 = *&rect.start.value;
          v68 = *&rect.start.timescale;
          v69 = *&rect.start.epoch;
          v70 = *&rect.duration.value;
          *&start.start.value = *&t1.a;
          start.start.epoch = *&t1.c;
          *&duration.a = *&t2.a;
          duration.c = t2.c;
          CMTimeRangeMake(&rect, &start.start, &duration);
          [(AVVideoCompositionLayerInstruction *)self setCropRectangleRampFromStartCropRectangle:&rect toEndCropRectangle:v62 timeRange:v63, v64, v65, v67, v68, v69, v70];
          v54 += 4;
          --v53;
          Seconds = v71;
        }

        while (v53);
      }
    }
  }
}

@end