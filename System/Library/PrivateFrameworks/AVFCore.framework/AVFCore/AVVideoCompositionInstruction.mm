@interface AVVideoCompositionInstruction
+ (void)initialize;
- (AVVideoCompositionInstruction)init;
- (AVVideoCompositionInstruction)initWithCoder:(id)a3;
- (BOOL)containsTweening;
- (BOOL)isEqual:(id)a3;
- (CMTimeRange)timeRange;
- (NSArray)requiredSourceTrackIDs;
- (id)_deepCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_setValuesFromDictionary:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundColor:(CGColor *)a3;
- (void)setBlendingTransferFunction:(id)a3;
- (void)setLayerInstructions:(id)a3;
- (void)setRequiredSourceSampleDataTrackIDs:(id)a3;
- (void)setTimeRange:(id *)a3;
@end

@implementation AVVideoCompositionInstruction

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (AVVideoCompositionInstruction)init
{
  v7.receiver = self;
  v7.super_class = AVVideoCompositionInstruction;
  v2 = [(AVVideoCompositionInstruction *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVVideoCompositionInstructionInternal);
    v2->_instruction = v3;
    if (v3)
    {
      CFRetain(v3);
      v4 = *(MEMORY[0x1E6960C98] + 16);
      v6[0] = *MEMORY[0x1E6960C98];
      v6[1] = v4;
      v6[2] = *(MEMORY[0x1E6960C98] + 32);
      [(AVVideoCompositionInstruction *)v2 setTimeRange:v6];
      [(AVVideoCompositionInstruction *)v2 setEnablePostProcessing:1];
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (AVVideoCompositionInstruction)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = AVVideoCompositionInstruction;
  v4 = [(AVVideoCompositionInstruction *)&v12 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVVideoCompositionInstructionInternal);
    v4->_instruction = v5;
    if (v5)
    {
      CFRetain(v5);
      v6 = MEMORY[0x1E695DFD8];
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      -[AVVideoCompositionInstruction _setValuesFromDictionary:](v4, "_setValuesFromDictionary:", [a3 decodeObjectOfClasses:objc_msgSend(v6 forKey:{"setWithObjects:", v7, v8, v9, v10, objc_opt_class(), 0), @"AVVideoCompositionInstruction"}]);
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = [(AVVideoCompositionInstruction *)self dictionaryRepresentation];

  [a3 encodeObject:v4 forKey:@"AVVideoCompositionInstruction"];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  instruction = self->_instruction;
  if (a3)
  {
    [a3 timeRange];
  }

  else
  {
    memset(&range2, 0, sizeof(range2));
  }

  v6 = *&instruction->timeRange.start.value;
  v7 = *&instruction->timeRange.duration.timescale;
  *&v15.start.epoch = *&instruction->timeRange.start.epoch;
  *&v15.duration.timescale = v7;
  *&v15.start.value = v6;
  v8 = CMTimeRangeEqual(&v15, &range2);
  if (v8)
  {
    backgroundColor = self->_instruction->backgroundColor;
    v10 = [a3 backgroundColor];
    if (backgroundColor)
    {
      if (!CGColorEqualToColor(backgroundColor, v10))
      {
        goto LABEL_14;
      }
    }

    else if (v10)
    {
      goto LABEL_14;
    }

    layerInstructions = self->_instruction->layerInstructions;
    v12 = [a3 layerInstructions];
    if (layerInstructions)
    {
      if (([(NSArray *)layerInstructions isEqual:v12]& 1) != 0)
      {
LABEL_12:
        enablePostProcessing = self->_instruction->enablePostProcessing;
        LOBYTE(v8) = enablePostProcessing == [a3 enablePostProcessing];
        return v8;
      }
    }

    else if (!v12)
    {
      goto LABEL_12;
    }

LABEL_14:
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(AVVideoCompositionInstruction *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = [[AVVideoCompositionInstruction allocWithZone:?]];
    if (v5)
    {
      if (self)
      {
        [(AVVideoCompositionInstruction *)self timeRange];
      }

      else
      {
        memset(v7, 0, sizeof(v7));
      }

      [(AVVideoCompositionInstruction *)v5 setTimeRange:v7];
      [(AVVideoCompositionInstruction *)v5 setBackgroundColor:[(AVVideoCompositionInstruction *)self backgroundColor]];
      [(AVVideoCompositionInstruction *)v5 setLayerInstructions:[(AVVideoCompositionInstruction *)self layerInstructions]];
      [(AVVideoCompositionInstruction *)v5 setRequiredSourceSampleDataTrackIDs:[(AVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs]];
      [(AVVideoCompositionInstruction *)v5 setEnablePostProcessing:[(AVVideoCompositionInstruction *)self enablePostProcessing]];
    }

    return v5;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(AVVideoCompositionInstruction *)[AVMutableVideoCompositionInstruction allocWithZone:?]];
  if (v4)
  {
    if (self)
    {
      [(AVVideoCompositionInstruction *)self timeRange];
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    [(AVMutableVideoCompositionInstruction *)v4 setTimeRange:v6];
    [(AVMutableVideoCompositionInstruction *)v4 setBackgroundColor:[(AVVideoCompositionInstruction *)self backgroundColor]];
    [(AVMutableVideoCompositionInstruction *)v4 setLayerInstructions:[(AVVideoCompositionInstruction *)self layerInstructions]];
    [(AVMutableVideoCompositionInstruction *)v4 setRequiredSourceSampleDataTrackIDs:[(AVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs]];
    [(AVMutableVideoCompositionInstruction *)v4 setEnablePostProcessing:[(AVVideoCompositionInstruction *)self enablePostProcessing]];
  }

  return v4;
}

- (id)_deepCopy
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(AVVideoCompositionInstruction *)self mutableCopy];
  v4 = [(AVVideoCompositionInstruction *)self layerInstructions];
  v5 = [(AVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v4);
        }

        [v6 addObject:{objc_msgSend(*(*(&v21 + 1) + 8 * v10++), "copy")}];
      }

      while (v8 != v10);
      v8 = [(NSArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  [v3 setLayerInstructions:v6];
  if ([(AVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs])
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v5, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v5);
          }

          [v11 addObject:{objc_msgSend(*(*(&v17 + 1) + 8 * v15++), "copy")}];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v13);
    }

    [v3 setRequiredSourceSampleDataTrackIDs:v11];
  }

  return [v3 copy];
}

- (void)dealloc
{
  instruction = self->_instruction;
  if (instruction)
  {
    backgroundColor = instruction->backgroundColor;
    if (backgroundColor)
    {
      CFRelease(backgroundColor);
      instruction = self->_instruction;
    }

    CFRelease(self->_instruction);
  }

  v5.receiver = self;
  v5.super_class = AVVideoCompositionInstruction;
  [(AVVideoCompositionInstruction *)&v5 dealloc];
}

- (NSArray)requiredSourceTrackIDs
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  layerInstructions = self->_instruction->layerInstructions;
  v5 = [(NSArray *)layerInstructions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(layerInstructions);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) trackID];
        -[NSArray addObject:](v3, "addObject:", [MEMORY[0x1E696AD98] numberWithInt:v9]);
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)layerInstructions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)containsTweening
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  layerInstructions = self->_instruction->layerInstructions;
  v4 = [(NSArray *)layerInstructions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(layerInstructions);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [(AVVideoCompositionInstruction *)self timeRange];
        v9 = [v8 dictionaryRepresentationWithTimeRange:&v11];
        if ([v9 objectForKey:@"TweenedAffineMatrix"] || objc_msgSend(v9, "objectForKey:", @"TweenedOpacity") || objc_msgSend(v9, "objectForKey:", @"TweenedCropRectangle"))
        {
          LOBYTE(v4) = 1;
          return v4;
        }
      }

      v5 = [(NSArray *)layerInstructions countByEnumeratingWithState:&v12 objects:v16 count:16];
      LOBYTE(v4) = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (CMTimeRange)timeRange
{
  v3 = *&self->start.timescale;
  v4 = *(v3 + 24);
  *&retstr->start.value = *(v3 + 8);
  *&retstr->start.epoch = v4;
  *&retstr->duration.timescale = *(v3 + 40);
  return self;
}

- (void)setTimeRange:(id *)a3
{
  instruction = self->_instruction;
  v4 = *&a3->var0.var0;
  v5 = *&a3->var0.var3;
  *&instruction->timeRange.duration.timescale = *&a3->var1.var1;
  *&instruction->timeRange.start.epoch = v5;
  *&instruction->timeRange.start.value = v4;
}

- (void)setBackgroundColor:(CGColor *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  instruction = self->_instruction;
  backgroundColor = instruction->backgroundColor;
  if (backgroundColor)
  {
    CFRelease(backgroundColor);
    instruction = self->_instruction;
  }

  instruction->backgroundColor = a3;
}

- (void)setLayerInstructions:(id)a3
{
  layerInstructions = self->_instruction->layerInstructions;
  if (layerInstructions != a3)
  {

    self->_instruction->layerInstructions = [a3 copy];
  }
}

- (void)setBlendingTransferFunction:(id)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  instruction = self->_instruction;
  blendingTransferFunction = instruction->blendingTransferFunction;
  if (blendingTransferFunction)
  {
    CFRelease(blendingTransferFunction);
    instruction = self->_instruction;
  }

  instruction->blendingTransferFunction = a3;
}

- (void)setRequiredSourceSampleDataTrackIDs:(id)a3
{
  requiredSourceSampleDataTrackIDs = self->_instruction->requiredSourceSampleDataTrackIDs;
  if (requiredSourceSampleDataTrackIDs != a3)
  {

    self->_instruction->requiredSourceSampleDataTrackIDs = [a3 copy];
  }
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:5];
  memset(&v38, 0, sizeof(v38));
  if (self)
  {
    [(AVVideoCompositionInstruction *)self timeRange];
  }

  v4 = *MEMORY[0x1E695E480];
  *&time.start.value = *&v38.start.value;
  time.start.epoch = v38.start.epoch;
  v5 = CMTimeCopyAsDictionary(&time.start, v4);
  [v3 setObject:v5 forKey:@"StartTime"];
  if (v5)
  {
    CFRelease(v5);
  }

  time = v38;
  CMTimeRangeGetEnd(&v37, &time);
  v6 = CMTimeCopyAsDictionary(&v37, v4);
  [v3 setObject:v6 forKey:@"EndTime"];
  if (v6)
  {
    CFRelease(v6);
  }

  if ([(AVVideoCompositionInstruction *)self requiredSourceSampleDataTrackIDs])
  {
    [v3 setObject:-[AVVideoCompositionInstruction requiredSourceSampleDataTrackIDs](self forKey:{"requiredSourceSampleDataTrackIDs"), @"RequiredSampleDataTrackIDArray"}];
  }

  backgroundColor = self->_instruction->backgroundColor;
  if (backgroundColor)
  {
    Components = CGColorGetComponents(backgroundColor);
    ColorSpace = CGColorGetColorSpace(self->_instruction->backgroundColor);
    if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
    {
      v10 = *Components;
      v11 = Components[1];
      v12 = Components[2];
      v13 = Components[3];
      v14 = NSArrayFromRGBAComponents(v10, v11, v12, v13);
      if (v14)
      {
        [v3 setObject:v14 forKey:@"BackgroundColorARGB"];
      }

      v15 = CGColorGetColorSpace(self->_instruction->backgroundColor);
      if (v15)
      {
        v16 = CGColorSpaceCopyICCData(v15);
        if (v16)
        {
          v17 = v16;
          [v3 setObject:v16 forKey:@"BackgroundColorICCProfile"];
          CFRelease(v17);
        }
      }
    }
  }

  v18 = [(NSArray *)self->_instruction->layerInstructions count];
  if (v18 >= 1)
  {
    v31 = v3;
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:v18];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = self;
    layerInstructions = self->_instruction->layerInstructions;
    v21 = [(NSArray *)layerInstructions countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      LOBYTE(v23) = 0;
      v24 = *v33;
      do
      {
        v25 = 0;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(layerInstructions);
          }

          v26 = *(*(&v32 + 1) + 8 * v25);
          time = v38;
          v27 = [v26 dictionaryRepresentationWithTimeRange:&time];
          if (v27)
          {
            [v19 addObject:v27];
          }

          v23 = v23 || [v27 objectForKey:@"TweenedAffineMatrix"] || objc_msgSend(v27, "objectForKey:", @"TweenedOpacity") || objc_msgSend(v27, "objectForKey:", @"TweenedCropRectangle") != 0;
          ++v25;
        }

        while (v22 != v25);
        v28 = [(NSArray *)layerInstructions countByEnumeratingWithState:&v32 objects:v39 count:16];
        v22 = v28;
      }

      while (v28);
    }

    else
    {
      v23 = 0;
    }

    v3 = v31;
    if ([v19 count])
    {
      [v31 setObject:v19 forKey:@"LayerStack"];
    }

    self = v30;
    if (v23)
    {
      [v31 setObject:*MEMORY[0x1E695E4D0] forKey:@"ContainsTweening"];
    }
  }

  if (![(AVVideoCompositionInstruction *)self enablePostProcessing])
  {
    [v3 setObject:*MEMORY[0x1E695E4C0] forKey:@"EnablePostProcessing"];
  }

  return v3;
}

- (void)_setValuesFromDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v6 = *(MEMORY[0x1E6960C98] + 16);
  v33 = *MEMORY[0x1E6960C98];
  *v34 = v6;
  *&v34[16] = *(MEMORY[0x1E6960C98] + 32);
  *v37 = v33;
  *&v37[16] = v6;
  v38 = *&v34[16];
  [(AVVideoCompositionInstruction *)self setTimeRange:v37];
  [(AVVideoCompositionInstruction *)self setBackgroundColor:0];
  [(AVVideoCompositionInstruction *)self setLayerInstructions:0];
  [(AVVideoCompositionInstruction *)self setEnablePostProcessing:1];
  [(AVVideoCompositionInstruction *)self setRequiredSourceSampleDataTrackIDs:MEMORY[0x1E695E0F0]];
  v7 = [a3 objectForKey:@"StartTime"];
  v8 = [a3 objectForKey:@"EndTime"];
  if (v7)
  {
    v9 = v8;
    if (v8)
    {
      CMTimeMakeFromDictionary(&v33, v7);
      CMTimeMakeFromDictionary(&lhs, v9);
      *&rhs.value = v33;
      rhs.epoch = *v34;
      CMTimeSubtract(v37, &lhs, &rhs);
      *&v34[24] = *&v37[16];
      *&v34[8] = *v37;
      *v37 = v33;
      *&v37[16] = *v34;
      v38 = *&v34[16];
      [(AVVideoCompositionInstruction *)self setTimeRange:v37];
    }
  }

  v10 = [a3 objectForKey:@"BackgroundColorICCProfile"];
  if (v10)
  {
    v11 = CGColorSpaceCreateWithICCData(v10);
    v12 = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v12 = v5;
  }

  v13 = [a3 objectForKey:@"BackgroundColorARGB"];
  if (v13)
  {
    memset(v37, 0, sizeof(v37));
    lhs.value = 0;
    *&lhs.timescale = 0;
    NSArrayGetRGBAComponents(v13, &lhs, &lhs.value + 1, &lhs.timescale, (&lhs | 0xC));
    *v37 = vcvtq_f64_f32(lhs.value);
    *&v37[16] = vcvt_hight_f64_f32(*&lhs.value);
    v14 = CGColorCreate(v12, v37);
    if (v14)
    {
      v15 = v14;
      [(AVVideoCompositionInstruction *)self setBackgroundColor:v14];
      CFRelease(v15);
    }
  }

  v16 = [a3 objectForKey:@"LayerStack"];
  v17 = [v16 count];
  if (v17 >= 1)
  {
    v27 = v12;
    v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = [v16 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        v22 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v28 + 1) + 8 * v22);
          v24 = objc_alloc_init(AVVideoCompositionLayerInstruction);
          *v37 = v33;
          *&v37[16] = *v34;
          v38 = *&v34[16];
          [(AVVideoCompositionLayerInstruction *)v24 _setValuesFromDictionary:v23 timeRange:v37];
          [v18 addObject:v24];
          ++v22;
        }

        while (v20 != v22);
        v20 = [v16 countByEnumeratingWithState:&v28 objects:v35 count:16];
      }

      while (v20);
    }

    [(AVVideoCompositionInstruction *)self setLayerInstructions:v18];
    v12 = v27;
  }

  v25 = [a3 objectForKey:@"EnablePostProcessing"];
  if (v25)
  {
    -[AVVideoCompositionInstruction setEnablePostProcessing:](self, "setEnablePostProcessing:", [v25 BOOLValue]);
  }

  v26 = [a3 objectForKey:@"RequiredSampleDataTrackIDArray"];
  if (v26)
  {
    [(AVVideoCompositionInstruction *)self setRequiredSourceSampleDataTrackIDs:v26];
  }

  CGColorSpaceRelease(v12);
}

@end