@interface AVCaption
+ (id)captionFromFigCaption:(OpaqueFigCaption *)caption;
+ (void)_appendFigStyleKey:(__CFString *)key value:(void *)value range:(id)range toArray:(id)array;
- (AVCaption)init;
- (AVCaption)initWithCoder:(id)coder;
- (AVCaption)initWithFigCaptionData:(OpaqueFigCaptionData *)data timeRange:(id *)range;
- (AVCaption)initWithFigMutableCaptionData:(OpaqueFigCaptionData *)data timeRange:(id *)range;
- (AVCaption)initWithText:(NSString *)text timeRange:(CMTimeRange *)timeRange;
- (AVCaptionAnimation)animation;
- (AVCaptionDecoration)decorationAtIndex:(NSInteger)index range:(NSRange *)outRange;
- (AVCaptionFontStyle)fontStyleAtIndex:(NSInteger)index range:(NSRange *)outRange;
- (AVCaptionFontWeight)fontWeightAtIndex:(NSInteger)index range:(NSRange *)outRange;
- (AVCaptionRegion)region;
- (AVCaptionTextAlignment)textAlignment;
- (AVCaptionTextCombine)textCombineAtIndex:(NSInteger)index range:(NSRange *)outRange;
- (CGColor)copyBackgroundColorAtIndex:(int64_t)index range:(_NSRange *)range;
- (CGColor)copyTextColorAtIndex:(int64_t)index range:(_NSRange *)range;
- (CMTimeRange)timeRange;
- (NSString)text;
- (id)_stylePropertiesForArchive;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)rubyTextAtIndex:(int64_t)index range:(_NSRange *)range;
- (void)_setAnimation:(int64_t)animation;
- (void)_setBackgroundColor:(CGColor *)color inRange:(_NSRange)range;
- (void)_setDecoration:(unint64_t)decoration inRange:(_NSRange)range;
- (void)_setFontStyle:(int64_t)style inRange:(_NSRange)range;
- (void)_setFontWeight:(int64_t)weight inRange:(_NSRange)range;
- (void)_setRegion:(id)region;
- (void)_setRuby:(id)ruby inRange:(_NSRange)range;
- (void)_setStylePropertiesForArchive:(id)archive;
- (void)_setText:(id)text;
- (void)_setTextAlignment:(int64_t)alignment;
- (void)_setTextColor:(CGColor *)color inRange:(_NSRange)range;
- (void)_setTextCombine:(int64_t)combine inRange:(_NSRange)range;
- (void)_setTimeRange:(id *)range;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCaption

- (AVCaption)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithText_timeRange_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVCaption)initWithFigMutableCaptionData:(OpaqueFigCaptionData *)data timeRange:(id *)range
{
  if (!data)
  {
    selfCopy3 = self;
    v13 = a2;
    selfCopy2 = self;
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = "figCaptionData != NULL";
LABEL_11:
    v24 = [v20 exceptionWithName:v21 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy3 userInfo:{v13, @"invalid parameter not satisfying: %s", v15, v16, v17, v18, v19, v22), 0}];
    objc_exception_throw(v24);
  }

  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    selfCopy3 = self;
    v13 = a2;
    selfCopy4 = self;
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = "isValidCaptionTimeRange(timeRange)";
    goto LABEL_11;
  }

  v25.receiver = self;
  v25.super_class = AVCaption;
  v6 = [(AVCaption *)&v25 init];
  if (v6)
  {
    v7 = objc_alloc_init(AVCaptionInternal);
    v6->_internal = v7;
    if (v7)
    {
      CFRetain(v7);
      internal = v6->_internal;
      v9 = *&range->var0.var0;
      v10 = *&range->var1.var1;
      *&internal->timeRange.start.epoch = *&range->var0.var3;
      *&internal->timeRange.duration.timescale = v10;
      *&internal->timeRange.start.value = v9;
      v6->_internal->figCaptionData = CFRetain(data);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (AVCaption)initWithFigCaptionData:(OpaqueFigCaptionData *)data timeRange:(id *)range
{
  selfCopy = self;
  if ((range->var0.var2 & 0x1D) != 1 || (range->var1.var2 & 0x1D) != 1)
  {
    selfCopy2 = self;
    v16 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy userInfo:{a2, @"invalid parameter not satisfying: %s", v11, v12, v13, v14, v15, "CMTIME_IS_NUMERIC(timeRange.start) && CMTIME_IS_NUMERIC(timeRange.duration)"), 0}];
    objc_exception_throw(v16);
  }

  v18 = 0;
  if (FigCaptionDataCreateMutableCopy())
  {

    selfCopy = 0;
  }

  v6 = *&range->var0.var3;
  v17[0] = *&range->var0.var0;
  v17[1] = v6;
  v17[2] = *&range->var1.var1;
  v7 = [(objc_class *)selfCopy initWithFigMutableCaptionData:v18 timeRange:v17];
  if (v18)
  {
    CFRelease(v18);
  }

  return v7;
}

- (AVCaption)initWithText:(NSString *)text timeRange:(CMTimeRange *)timeRange
{
  selfCopy = self;
  if (!text)
  {
    v11 = a2;
    selfCopy2 = self;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "text != nil";
LABEL_14:
    v22 = [v18 exceptionWithName:v19 reason:AVMethodExceptionReasonWithObjectAndSelector(selfCopy userInfo:{v11, @"invalid parameter not satisfying: %s", v13, v14, v15, v16, v17, v20), 0}];
    objc_exception_throw(v22);
  }

  if ((timeRange->start.flags & 0x1D) != 1 || (timeRange->duration.flags & 0x1D) != 1)
  {
    v11 = a2;
    selfCopy3 = self;
    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D940];
    v20 = "CMTIME_IS_NUMERIC(timeRange.start) && CMTIME_IS_NUMERIC(timeRange.duration)";
    goto LABEL_14;
  }

  v24 = 0;
  if (FigCaptionDataCreateMutable())
  {

    selfCopy = 0;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7 || v7(v24, text))
  {

    selfCopy = 0;
  }

  v8 = *&timeRange->start.epoch;
  v23[0] = *&timeRange->start.value;
  v23[1] = v8;
  v23[2] = *&timeRange->duration.timescale;
  v9 = [(objc_class *)selfCopy initWithFigMutableCaptionData:v24 timeRange:v23];
  if (v24)
  {
    CFRelease(v24);
  }

  return v9;
}

- (AVCaption)initWithCoder:(id)coder
{
  v18 = 0;
  if (FigCaptionDataCreateMutable())
  {
    goto LABEL_2;
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if (!coder)
  {
    goto LABEL_2;
  }

  [coder decodeCMTimeRangeForKey:@"AVCaptionArchiveKeyTimeRange"];
  if ((BYTE12(v15) & 0x1D) != 1 || (BYTE4(v17) & 0x1D) != 1)
  {
    goto LABEL_2;
  }

  v14[0] = v15;
  v14[1] = v16;
  v14[2] = v17;
  self = [(AVCaption *)self initWithFigMutableCaptionData:v18 timeRange:v14];
  if (!self)
  {
    goto LABEL_3;
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionArchiveKeyText"];
  if (!v6)
  {
LABEL_2:

    self = 0;
    goto LABEL_3;
  }

  [(AVCaption *)self _setText:v6];
  -[AVCaption _setAnimation:](self, "_setAnimation:", [coder decodeIntegerForKey:@"AVCaptionArchiveKeyAnimation"]);
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionArchiveKeyRegion"];
  if (v7)
  {
    [(AVCaption *)self _setRegion:v7];
  }

  if ([coder containsValueForKey:@"AVCaptionArchiveKeyTextAlignment"])
  {
    -[AVCaption _setTextAlignment:](self, "_setTextAlignment:", [coder decodeIntegerForKey:@"AVCaptionArchiveKeyTextAlignment"]);
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [coder decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, v10, v11, v12, objc_opt_class(), 0), @"AVCaptionArchiveKeyStyleProperties"}];
  if (v13)
  {
    [(AVCaption *)self _setStylePropertiesForArchive:v13];
  }

LABEL_3:
  if (v18)
  {
    CFRelease(v18);
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInteger:2 forKey:@"AVCaptionArchiveKeyVersion"];
  [coder encodeObject:-[AVCaption text](self forKey:{"text"), @"AVCaptionArchiveKeyText"}];
  if (self)
  {
    [(AVCaption *)self timeRange];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [coder encodeCMTimeRange:v5 forKey:@"AVCaptionArchiveKeyTimeRange"];
  [coder encodeObject:-[AVCaption region](self forKey:{"region"), @"AVCaptionArchiveKeyRegion"}];
  [coder encodeInteger:-[AVCaption animation](self forKey:{"animation"), @"AVCaptionArchiveKeyAnimation"}];
  [coder encodeInteger:-[AVCaption textAlignment](self forKey:{"textAlignment"), @"AVCaptionArchiveKeyTextAlignment"}];
  [coder encodeObject:-[AVCaption _stylePropertiesForArchive](self forKey:{"_stylePropertiesForArchive"), @"AVCaptionArchiveKeyStyleProperties"}];
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    if (internal->figCaptionData)
    {
      CFRelease(internal->figCaptionData);
      internal = self->_internal;
    }

    CFRelease(internal);
    v4 = self->_internal;
  }

  else
  {
    v4 = 0;
  }

  v5.receiver = self;
  v5.super_class = AVCaption;
  [(AVCaption *)&v5 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [AVMutableCaption alloc];
  _figCaptionData = [(AVCaption *)self _figCaptionData];
  if (self)
  {
    [(AVCaption *)self timeRange];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  return [(AVCaption *)v4 initWithFigCaptionData:_figCaptionData timeRange:v7];
}

- (NSString)text
{
  figCaptionData = self->_internal->figCaptionData;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3)
  {
    return &stru_1F0A8E470;
  }

  return v3(figCaptionData);
}

- (AVCaptionRegion)region
{
  cf = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(CMBaseObject, *MEMORY[0x1E6961240], *MEMORY[0x1E695E480], &cf);
  v5 = cf;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf == 0;
  }

  if (v6)
  {
    v8 = 0;
    if (!cf)
    {
      return v8;
    }

    goto LABEL_7;
  }

  v7 = [AVCaptionRegion alloc];
  v8 = [(AVCaptionRegion *)v7 initWithFigCaptionRegion:cf];
  v5 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v5);
  }

  return v8;
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

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(AVCaption *)self timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v4 = CMTimeRangeCopyDescription(v3, &range);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@: %p, timeRange = %@ text=%@>", NSStringFromClass(v6), self, v4, -[AVCaption text](self, "text")];
}

- (void)_setText:(id)text
{
  figCaptionData = self->_internal->figCaptionData;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v5)
  {

    v5(figCaptionData, text);
  }
}

- (void)_setTimeRange:(id *)range
{
  internal = self->_internal;
  v4 = *&range->var0.var0;
  v5 = *&range->var1.var1;
  *&internal->timeRange.start.epoch = *&range->var0.var3;
  *&internal->timeRange.duration.timescale = v5;
  *&internal->timeRange.start.value = v4;
}

- (void)_setRegion:(id)region
{
  v34 = 0;
  if (![region endPosition])
  {
    goto LABEL_9;
  }

  v6 = [objc_msgSend(region "endPosition")];
  if (!v6)
  {
    v22 = [objc_msgSend(region "endPosition")];
    v23 = [objc_msgSend(region "position")];
    v24 = [objc_msgSend(region "endPosition")];
    v25 = [objc_msgSend(region "position")];
    if (v22 >= v23)
    {
      if (v24 <= v25)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v6 != 1)
  {
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"Unit type not valid";
LABEL_23:
    v32 = [v19 exceptionWithName:v20 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v21, v7, v8, v9, v10, v11, v33), 0}];
    objc_exception_throw(v32);
  }

  [objc_msgSend(region "endPosition")];
  v13 = v12;
  [objc_msgSend(region "position")];
  v15 = v13 - v14;
  [objc_msgSend(region "endPosition")];
  v17 = v16;
  [objc_msgSend(region "position")];
  if (v15 <= 0.0)
  {
LABEL_21:
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"region width is negative.";
    goto LABEL_23;
  }

  if ((v17 - v18) <= 0.0)
  {
LABEL_6:
    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v21 = @"region height is negative.";
    goto LABEL_23;
  }

LABEL_9:
  _figCaptionRegion = [region _figCaptionRegion];
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v28)
  {
    v28(CMBaseObject, *MEMORY[0x1E6961240], _figCaptionRegion);
  }

  v29 = FigCaptionDataGetCMBaseObject();
  v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v30 || (v30(v29, *MEMORY[0x1E6961278], *MEMORY[0x1E695E480], &v34), !v34))
  {
    if (+[AVCaptionRegion appleiTTTop](AVCaptionRegion, "appleiTTTop") == region || +[AVCaptionRegion appleiTTBottom]== region)
    {
      v31 = 2;
      goto LABEL_19;
    }

    if (+[AVCaptionRegion appleiTTLeft](AVCaptionRegion, "appleiTTLeft") == region || +[AVCaptionRegion appleiTTRight]== region)
    {
      v31 = 0;
LABEL_19:
      [(AVCaption *)self _setTextAlignment:v31];
    }
  }
}

- (void)_setAnimation:(int64_t)animation
{
  if (animation)
  {
    if (animation != 1)
    {
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"animation property must be one of the values defined in AVCaptionAnimation.", v3, v4, v5, v6, v7, v14), 0}];
      objc_exception_throw(v13);
    }

    v8 = MEMORY[0x1E6961160];
  }

  else
  {
    v8 = MEMORY[0x1E6961168];
  }

  v9 = *v8;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v12 = *MEMORY[0x1E6961200];

    v11(CMBaseObject, v12, v9);
  }
}

- (void)_setTextAlignment:(int64_t)alignment
{
  v10 = 0;
  if (alignment >= 5)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"textAlignment is not one of the supported value.", v3, v4, v5, v6, v7, v9), 0}];
    objc_exception_throw(v8);
  }

  [(AVCaption *)alignment _setTextAlignment:?];
}

- (void)_setFontWeight:(int64_t)weight inRange:(_NSRange)range
{
  cf = 0;
  if (range.length)
  {
    length = range.length;
    switch(weight)
    {
      case 0:
        goto LABEL_8;
      case 1:
        range.length = MEMORY[0x1E69614B0];
        break;
      case 2:
        range.length = MEMORY[0x1E69614A8];
        break;
      default:
        v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"fontWeight property must be one of the values defined in AVCaptionFontWeight.", range.location, range.length, v4, v5, v6, v9), 0}];
        objc_exception_throw(v8);
    }

    if (([(AVCaption *)range.location _setFontWeight:self inRange:&cf, range.length]& 1) != 0)
    {
LABEL_8:
      [AVCaption _setFontWeight:inRange:];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_setFontStyle:(int64_t)style inRange:(_NSRange)range
{
  cf = 0;
  if (range.length)
  {
    length = range.length;
    switch(style)
    {
      case 0:
        goto LABEL_8;
      case 1:
        range.length = MEMORY[0x1E6961490];
        break;
      case 2:
        range.length = MEMORY[0x1E6961488];
        break;
      default:
        v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"fontStyle property must be one of the values defined in AVCaptionFontStyle.", range.location, range.length, v4, v5, v6, v9), 0}];
        objc_exception_throw(v8);
    }

    if (([(AVCaption *)range.location _setFontStyle:self inRange:&cf, range.length]& 1) != 0)
    {
LABEL_8:
      [AVCaption _setFontStyle:inRange:];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_setTextCombine:(int64_t)combine inRange:(_NSRange)range
{
  if (range.length)
  {
    if (combine > 1)
    {
      if (combine == 2 || combine == 3 || combine == 4)
      {
LABEL_14:
        [AVCaption _setTextCombine:inRange:];
        return;
      }
    }

    else
    {
      switch(combine)
      {
        case -1:
          goto LABEL_14;
        case 0:
          [AVCaption _setTextCombine:inRange:];
          return;
        case 1:
          goto LABEL_14;
      }
    }

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"textCombine is not one of the supported value.", range.location, range.length, v4, v5, v6, v8), 0}];
    objc_exception_throw(v7);
  }
}

+ (void)_appendFigStyleKey:(__CFString *)key value:(void *)value range:(id)range toArray:(id)array
{
  var1 = range.var1;
  var0 = range.var0;
  v14[3] = *MEMORY[0x1E69E9840];
  if (CFEqual(key, *MEMORY[0x1E69614A0]))
  {
    if (CFEqual(value, *MEMORY[0x1E69614B0]))
    {
      value = @"AVCaptionArchiveKeyStylePropertyName_FontWeightNormal";
    }

    else
    {
      if (!CFEqual(value, *MEMORY[0x1E69614A8]))
      {
        return;
      }

      value = @"AVCaptionArchiveKeyStylePropertyName_FontWeightBold";
    }

    v12 = @"AVCaptionArchiveKeyStylePropertyName_FontWeight";
    goto LABEL_13;
  }

  if (CFEqual(key, *MEMORY[0x1E69614E8]))
  {
    v11 = FigCopyCGColorSRGBAsCFArray();
    v12 = @"AVCaptionArchiveKeyStylePropertyName_TextColor";
LABEL_11:
    value = v11;
    goto LABEL_12;
  }

  if (CFEqual(key, *MEMORY[0x1E6961458]))
  {
    v11 = FigCopyCGColorSRGBAsCFArray();
    v12 = @"AVCaptionArchiveKeyStylePropertyName_BackgroundColor";
    goto LABEL_11;
  }

  if (!CFEqual(key, *MEMORY[0x1E6961480]))
  {
    if (CFEqual(key, *MEMORY[0x1E6961460]))
    {
      v12 = @"AVCaptionArchiveKeyStylePropertyName_Decoration";
    }

    else
    {
      if (!CFEqual(key, *MEMORY[0x1E69614F0]))
      {
        if (CFEqual(key, *MEMORY[0x1E69614E0]))
        {
          v11 = [[AVCaptionRuby alloc] initWithFigCaptionData:value];
          v12 = @"AVCaptionArchiveKeyStylePropertyName_RubyText";
          goto LABEL_11;
        }

        return;
      }

      v12 = @"AVCaptionArchiveKeyStylePropertyName_TextCombine";
    }

LABEL_12:
    if (!value)
    {
      return;
    }

    goto LABEL_13;
  }

  if (CFEqual(value, *MEMORY[0x1E6961490]))
  {
    value = @"AVCaptionArchiveStylePropertyValue_FontStyleNormal";
LABEL_22:
    v12 = @"AVCaptionArchiveKeyStylePropertyName_FontStyle";
LABEL_13:
    v15.location = var0;
    v15.length = var1;
    v13[0] = @"AVCaptionArchiveKeyStylePropertyName";
    v13[1] = @"AVCaptionArchiveKeyStylePropertyValue";
    v14[0] = v12;
    v14[1] = value;
    v13[2] = @"AVCaptionArchiveKeyStylePropertyRange";
    v14[2] = NSStringFromRange(v15);
    [array addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v14, v13, 3)}];
    return;
  }

  if (CFEqual(value, *MEMORY[0x1E6961488]))
  {
    value = @"AVCaptionArchiveStylePropertyValue_FontStyleItalic";
    goto LABEL_22;
  }
}

- (CGColor)copyTextColorAtIndex:(int64_t)index range:(_NSRange *)range
{
  cf = 0;
  figCaptionData = self->_internal->figCaptionData;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = v7(figCaptionData, index, *MEMORY[0x1E69614E8], *MEMORY[0x1E695E480], &cf, range);
  v9 = cf;
  if (v8)
  {
    InitialValue = 0;
    if (!cf)
    {
      return InitialValue;
    }

    goto LABEL_4;
  }

  InitialValue = FigCaptionDynamicStyleGetInitialValue();
  CGColorRetain(InitialValue);
  v9 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v9);
  }

  return InitialValue;
}

- (CGColor)copyBackgroundColorAtIndex:(int64_t)index range:(_NSRange *)range
{
  cf = 0;
  figCaptionData = self->_internal->figCaptionData;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    return 0;
  }

  v8 = v7(figCaptionData, index, *MEMORY[0x1E6961458], *MEMORY[0x1E695E480], &cf, range);
  v9 = cf;
  if (v8)
  {
    InitialValue = 0;
    if (!cf)
    {
      return InitialValue;
    }

    goto LABEL_4;
  }

  InitialValue = FigCaptionDynamicStyleGetInitialValue();
  CGColorRetain(InitialValue);
  v9 = cf;
  if (cf)
  {
LABEL_4:
    CFRelease(v9);
  }

  return InitialValue;
}

- (AVCaptionTextCombine)textCombineAtIndex:(NSInteger)index range:(NSRange *)outRange
{
  cf = 0;
  figCaptionData = self->_internal->figCaptionData;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9(figCaptionData, index, *MEMORY[0x1E69614F0], *MEMORY[0x1E695E480], &cf, outRange);
  v11 = cf;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = cf == 0;
  }

  if (v12)
  {
    v13 = AVCaptionTextCombineNone;
    if (!cf)
    {
      return v13;
    }

    goto LABEL_9;
  }

  FigCaptionDynamicStyleGetInitialValue();
  if (!FigCFEqual())
  {
    if (FigCFEqual())
    {
      v13 = AVCaptionTextCombineAll;
    }

    else if (FigCFEqual())
    {
      v13 = AVCaptionTextCombineOneDigit;
    }

    else if (FigCFEqual())
    {
      v13 = AVCaptionTextCombineTwoDigits;
    }

    else if (FigCFEqual())
    {
      v13 = AVCaptionTextCombineThreeDigits;
    }

    else
    {
      if (!FigCFEqual())
      {
        v20 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"textCombine value is unrecognizable; it is a programming error.", v15, v16, v17, v18, v19, v21), 0}];
        objc_exception_throw(v20);
      }

      v13 = AVCaptionTextCombineFourDigits;
    }
  }

  else
  {
LABEL_7:
    v13 = AVCaptionTextCombineNone;
  }

  v11 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v11);
  }

  return v13;
}

- (id)rubyTextAtIndex:(int64_t)index range:(_NSRange *)range
{
  cf = 0;
  figCaptionData = self->_internal->figCaptionData;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v7)
  {
    v12 = 0;
    return v12;
  }

  v8 = v7(figCaptionData, index, *MEMORY[0x1E69614E0], *MEMORY[0x1E695E480], &cf, range);
  v9 = cf;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = cf == 0;
  }

  if (v10)
  {
    v12 = 0;
    if (!cf)
    {
      return v12;
    }

    goto LABEL_7;
  }

  v11 = [AVCaptionRuby alloc];
  v12 = [(AVCaptionRuby *)v11 initWithFigCaptionData:cf];
  v9 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v9);
  }

  return v12;
}

- (AVCaptionAnimation)animation
{
  cf1 = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(CMBaseObject, *MEMORY[0x1E6961200], *MEMORY[0x1E695E480], &cf1);
  v5 = cf1;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = cf1 == 0;
  }

  if (v6 || (v7 = CFEqual(cf1, *MEMORY[0x1E6961168]), v5 = cf1, v7))
  {
    v8 = AVCaptionAnimationNone;
    if (!v5)
    {
      return v8;
    }

    goto LABEL_11;
  }

  v8 = (CFEqual(cf1, *MEMORY[0x1E6961160]) != 0);
  v5 = cf1;
  if (cf1)
  {
LABEL_11:
    CFRelease(v5);
  }

  return v8;
}

- (AVCaptionTextAlignment)textAlignment
{
  cf = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5 && !v5(CMBaseObject, *MEMORY[0x1E6961278], *MEMORY[0x1E695E480], &cf) && (InitialValue = FigCaptionDynamicStyleGetInitialValue()) != 0 && (v7 = InitialValue, !CFEqual(InitialValue, *MEMORY[0x1E6961570])))
  {
    if (CFEqual(v7, *MEMORY[0x1E6961558]))
    {
      v8 = AVCaptionTextAlignmentEnd;
    }

    else if (CFEqual(v7, *MEMORY[0x1E6961550]))
    {
      v8 = AVCaptionTextAlignmentCenter;
    }

    else if (CFEqual(v7, *MEMORY[0x1E6961560]))
    {
      v8 = AVCaptionTextAlignmentLeft;
    }

    else
    {
      if (!CFEqual(v7, *MEMORY[0x1E6961568]))
      {
        v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"textAlignment value is unrecognizable; it is a programming error.", v10, v11, v12, v13, v14, v16), 0}];
        objc_exception_throw(v15);
      }

      v8 = AVCaptionTextAlignmentRight;
    }
  }

  else
  {
    v8 = AVCaptionTextAlignmentStart;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

+ (id)captionFromFigCaption:(OpaqueFigCaption *)caption
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v5)
  {
    v5(&v15, caption);
  }

  else
  {
    v6 = *(MEMORY[0x1E6960C98] + 16);
    v15 = *MEMORY[0x1E6960C98];
    v16 = v6;
    v17 = *(MEMORY[0x1E6960C98] + 32);
  }

  cf = 0;
  v14 = 0;
  CMBaseObject = FigCaptionGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8 || v8(CMBaseObject, *MEMORY[0x1E6971870], *MEMORY[0x1E695E480], &v14) || FigCaptionDataCreateMutableCopy())
  {
    v10 = 0;
  }

  else
  {
    v9 = [self alloc];
    v12[0] = v15;
    v12[1] = v16;
    v12[2] = v17;
    v10 = [v9 initWithFigMutableCaptionData:cf timeRange:v12];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v10;
}

- (void)_setTextColor:(CGColor *)color inRange:(_NSRange)range
{
  if (range.length)
  {
    OUTLINED_FUNCTION_11();
    if (v4)
    {
      if (!FigCaptionDynamicStyleCreate())
      {
        if (*(*(OUTLINED_FUNCTION_13() + 16) + 32))
        {
          v5 = OUTLINED_FUNCTION_0_3();
          v6(v5);
        }
      }
    }

    else if (*(*(OUTLINED_FUNCTION_7() + 16) + 40))
    {
      v7 = OUTLINED_FUNCTION_1_2();
      v8(v7);
    }
  }
}

- (void)_setBackgroundColor:(CGColor *)color inRange:(_NSRange)range
{
  if (range.length)
  {
    OUTLINED_FUNCTION_11();
    if (v4)
    {
      if (!FigCaptionDynamicStyleCreate())
      {
        if (*(*(OUTLINED_FUNCTION_13() + 16) + 32))
        {
          v5 = OUTLINED_FUNCTION_0_3();
          v6(v5);
        }
      }
    }

    else if (*(*(OUTLINED_FUNCTION_7() + 16) + 40))
    {
      v7 = OUTLINED_FUNCTION_1_2();
      v8(v7);
    }
  }
}

- (void)_setDecoration:(unint64_t)decoration inRange:(_NSRange)range
{
  valuePtr = decoration;
  if (range.length)
  {
    OUTLINED_FUNCTION_11();
    v5 = v4;
    if (v6)
    {
      v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberNSIntegerType, &valuePtr);
      if (!FigCaptionDynamicStyleCreate())
      {
        v8 = *(*(v5 + 8) + 8);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v9)
        {
          v9(v8, *MEMORY[0x1E6961460], 0);
        }
      }
    }

    else
    {
      if (*(*(OUTLINED_FUNCTION_7() + 16) + 40))
      {
        v10 = OUTLINED_FUNCTION_1_2();
        v11(v10);
      }

      v7 = 0;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

- (void)_setRuby:(id)ruby inRange:(_NSRange)range
{
  if (range.length)
  {
    OUTLINED_FUNCTION_11();
    if (v4)
    {
      copyFigCaptionData = [v4 copyFigCaptionData];
      if (*(*(CMBaseObjectGetVTable() + 16) + 32))
      {
        v6 = OUTLINED_FUNCTION_0_3();
        v7(v6);
      }

      if (copyFigCaptionData)
      {

        CFRelease(copyFigCaptionData);
      }
    }

    else if (*(*(OUTLINED_FUNCTION_7() + 16) + 40))
    {
      v8 = OUTLINED_FUNCTION_1_2();

      v9(v8);
    }
  }
}

- (void)_setStylePropertiesForArchive:(id)archive
{
  v9 = OUTLINED_FUNCTION_14(self, a2, archive, v3, v4, v5, v6, v7, v31, v33, v35, v37, v39, v41, v43, v45, self, v48, v50, v52, v54, v56, 0, 0, 0, 0, 0, 0, 0, 0, v66, 0, v69);
  if (!v9)
  {
    goto LABEL_49;
  }

  v10 = v9;
  v57 = 0;
  v11 = *v60;
  v34 = *MEMORY[0x1E69614E0];
  v51 = *MEMORY[0x1E695E480];
  v38 = *MEMORY[0x1E69614F0];
  v40 = *MEMORY[0x1E6961460];
  v44 = *MEMORY[0x1E6961480];
  v32 = *MEMORY[0x1E6961488];
  v36 = *MEMORY[0x1E6961490];
  v49 = *MEMORY[0x1E6961458];
  v53 = *MEMORY[0x1E69614E8];
  v55 = *MEMORY[0x1E69614A0];
  v42 = *MEMORY[0x1E69614A8];
  v46 = *MEMORY[0x1E69614B0];
  do
  {
    v12 = 0;
    do
    {
      if (*v60 != v11)
      {
        objc_enumerationMutation(archive);
      }

      v13 = *(v59 + 8 * v12);
      objc_opt_class();
      location = OUTLINED_FUNCTION_8();
      if (location)
      {
        location = [v13 objectForKeyedSubscript:@"AVCaptionArchiveKeyStylePropertyName"];
        if (location)
        {
          v22 = location;
          location = [v13 objectForKeyedSubscript:@"AVCaptionArchiveKeyStylePropertyRange"];
          if (location)
          {
            v23 = NSRangeFromString(location);
            length = v23.length;
            location = v23.location;
            if (v23.length)
            {
              location = [v13 objectForKeyedSubscript:@"AVCaptionArchiveKeyStylePropertyValue"];
              if (location)
              {
                v24 = location;
                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if ([v22 isEqualToString:{@"AVCaptionArchiveKeyStylePropertyName_FontWeight", v32}])
                {
                  objc_opt_class();
                  location = OUTLINED_FUNCTION_8();
                  v57 = v55;
                  if ((location & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  location = [v24 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_FontWeightNormal"];
                  if (!location)
                  {
                    location = [v24 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_FontWeightBold"];
                    v57 = v55;
                    if (!location)
                    {
                      goto LABEL_31;
                    }
                  }

                  OUTLINED_FUNCTION_5(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51);
                  location = FigCaptionDynamicStyleCreate();
                  v26 = v55;
                }

                else if ([v22 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_TextColor"])
                {
                  objc_opt_class();
                  location = OUTLINED_FUNCTION_8();
                  v57 = v53;
                  if ((location & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  location = FigCreateCGColorSRGBFromCFArray();
                  v57 = v53;
                  if (!location)
                  {
                    goto LABEL_31;
                  }

                  v25 = location;
                  OUTLINED_FUNCTION_5(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51);
                  FigCaptionDynamicStyleCreate();
                  CGColorRelease(v25);
                  v26 = v53;
                }

                else if ([v22 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_BackgroundColor"])
                {
                  objc_opt_class();
                  location = OUTLINED_FUNCTION_8();
                  v57 = v49;
                  if ((location & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  location = FigCreateCGColorSRGBFromCFArray();
                  v57 = v49;
                  if (!location)
                  {
                    goto LABEL_31;
                  }

                  v27 = location;
                  OUTLINED_FUNCTION_5(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51);
                  FigCaptionDynamicStyleCreate();
                  CGColorRelease(v27);
                  v26 = v49;
                }

                else if ([v22 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_FontStyle"])
                {
                  objc_opt_class();
                  location = OUTLINED_FUNCTION_8();
                  v57 = v44;
                  if ((location & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  location = [v24 isEqualToString:@"AVCaptionArchiveStylePropertyValue_FontStyleNormal"];
                  if (!location)
                  {
                    location = [v24 isEqualToString:@"AVCaptionArchiveStylePropertyValue_FontStyleItalic"];
                    v57 = v44;
                    if (!location)
                    {
                      goto LABEL_31;
                    }
                  }

                  OUTLINED_FUNCTION_5(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51);
                  location = FigCaptionDynamicStyleCreate();
                  v26 = v44;
                }

                else if ([v22 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_Decoration"])
                {
                  objc_opt_class();
                  location = OUTLINED_FUNCTION_8();
                  v57 = v40;
                  if ((location & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  OUTLINED_FUNCTION_5(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51);
                  location = FigCaptionDynamicStyleCreate();
                  v26 = v40;
                }

                else if ([v22 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_TextCombine"])
                {
                  objc_opt_class();
                  location = OUTLINED_FUNCTION_8();
                  v57 = v38;
                  if ((location & 1) == 0)
                  {
                    goto LABEL_31;
                  }

                  OUTLINED_FUNCTION_5(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51);
                  location = FigCaptionDynamicStyleCreate();
                  v26 = v38;
                }

                else
                {
                  location = [v22 isEqualToString:@"AVCaptionArchiveKeyStylePropertyName_RubyText"];
                  v26 = v57;
                  if (location)
                  {
                    objc_opt_class();
                    location = OUTLINED_FUNCTION_8();
                    v57 = v34;
                    if ((location & 1) == 0)
                    {
                      goto LABEL_31;
                    }

                    location = [v24 copyFigCaptionData];
                    cf = location;
                    v26 = v34;
                  }
                }

                v57 = v26;
                if (v26)
                {
                  if (cf)
                  {
                    v28 = *(*(v47 + 8) + 8);
                    v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                    if (!v29)
                    {
                      goto LABEL_49;
                    }

                    location = v29(v28, v57, cf, v23.location, v23.length);
                    if (location)
                    {
                      goto LABEL_49;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_31:
      ++v12;
    }

    while (v10 != v12);
    v30 = OUTLINED_FUNCTION_14(location, length, v16, v17, v18, v19, v20, v21, v32, v34, v36, v38, v40, v42, v44, v46, v47, v49, v51, v53, v55, v57, v58, v59, v60, v61, v62, v63, v64, v65, v67, cf, v70);
    v10 = v30;
  }

  while (v30);
LABEL_49:
  if (cf)
  {
    CFRelease(cf);
  }
}

- (id)_stylePropertiesForArchive
{
  cf = 0;
  theArray = 0;
  array = [MEMORY[0x1E695DF70] array];
  FigCaptionDataGetCMBaseObject();
  if (*(*(CMBaseObjectGetVTable() + 8) + 48))
  {
    v4 = OUTLINED_FUNCTION_2_1();
    if (!v5(v4))
    {
      figCaptionData = self->_internal->figCaptionData;
      v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v7)
      {
        v8 = v7(figCaptionData);
      }

      else
      {
        v8 = &stru_1F0A8E470;
      }

      CFStringGetLength(v8);
    }
  }

  return array;
}

- (AVCaptionFontWeight)fontWeightAtIndex:(NSInteger)index range:(NSRange *)outRange
{
  OUTLINED_FUNCTION_9();
  if (!*(*(OUTLINED_FUNCTION_4() + 16) + 24))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_3();
  if (v5(v4))
  {
    return 0;
  }

  FigCaptionDynamicStyleGetInitialValue();
  if (FigCFEqual())
  {
    return 1;
  }

  else
  {
    return 2 * (FigCFEqual() != 0);
  }
}

- (AVCaptionFontStyle)fontStyleAtIndex:(NSInteger)index range:(NSRange *)outRange
{
  OUTLINED_FUNCTION_9();
  if (!*(*(OUTLINED_FUNCTION_4() + 16) + 24))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_3();
  if (v5(v4))
  {
    return 0;
  }

  FigCaptionDynamicStyleGetInitialValue();
  if (FigCFEqual())
  {
    return 1;
  }

  else
  {
    return 2 * (FigCFEqual() != 0);
  }
}

- (AVCaptionDecoration)decorationAtIndex:(NSInteger)index range:(NSRange *)outRange
{
  OUTLINED_FUNCTION_9();
  v8 = 0;
  cf = 0;
  if (*(*(OUTLINED_FUNCTION_4() + 16) + 24))
  {
    v4 = OUTLINED_FUNCTION_3();
    if (!v5(v4))
    {
      InitialValue = FigCaptionDynamicStyleGetInitialValue();
      if (InitialValue)
      {
        CFNumberGetValue(InitialValue, kCFNumberNSIntegerType, &v8);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

- (void)_setTextAlignment:(uint64_t)a1 .cold.1(uint64_t a1, CFTypeRef *a2)
{
  if (!FigCaptionDynamicStyleCreate())
  {
    v3 = *a2;
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(CMBaseObject, *MEMORY[0x1E6961278], v3);
    }
  }

  if (*a2)
  {
    CFRelease(*a2);
  }
}

- (uint64_t)_setFontWeight:(uint64_t)a3 inRange:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*a5)
  {
    return 1;
  }

  if (!FigCaptionDynamicStyleCreate())
  {
    if (*(*(OUTLINED_FUNCTION_6() + 16) + 32))
    {
      v5 = OUTLINED_FUNCTION_0_3();
      v6(v5);
    }
  }

  return 0;
}

- (uint64_t)_setFontWeight:inRange:.cold.2()
{
  v0 = OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  result = v0 + 16;
  if (*(v2 + 40))
  {
    v3 = OUTLINED_FUNCTION_1_2();

    return v4(v3);
  }

  return result;
}

- (uint64_t)_setFontStyle:(uint64_t)a3 inRange:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!*a5)
  {
    return 1;
  }

  if (!FigCaptionDynamicStyleCreate())
  {
    if (*(*(OUTLINED_FUNCTION_6() + 16) + 32))
    {
      v5 = OUTLINED_FUNCTION_0_3();
      v6(v5);
    }
  }

  return 0;
}

- (uint64_t)_setFontStyle:inRange:.cold.2()
{
  v0 = OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  result = v0 + 16;
  if (*(v2 + 40))
  {
    v3 = OUTLINED_FUNCTION_1_2();

    return v4(v3);
  }

  return result;
}

- (uint64_t)_setTextCombine:inRange:.cold.1()
{
  result = FigCaptionDynamicStyleCreate();
  if (!result)
  {
    v1 = OUTLINED_FUNCTION_6();
    v2 = *(v1 + 16);
    result = v1 + 16;
    if (*(v2 + 32))
    {
      v3 = OUTLINED_FUNCTION_0_3();
      return v4(v3);
    }
  }

  return result;
}

- (uint64_t)_setTextCombine:inRange:.cold.2()
{
  v0 = OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  result = v0 + 16;
  if (*(v2 + 40))
  {
    v3 = OUTLINED_FUNCTION_1_2();

    return v4(v3);
  }

  return result;
}

@end