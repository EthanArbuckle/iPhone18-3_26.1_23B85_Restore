@interface AVMutableCaption
- (AVCaptionAnimation)animation;
- (AVCaptionTextAlignment)textAlignment;
- (CMTimeRange)timeRange;
- (NSString)text;
- (id)copyWithZone:(_NSZone *)zone;
- (void)removeBackgroundColorInRange:(NSRange)range;
- (void)removeDecorationInRange:(NSRange)range;
- (void)removeFontStyleInRange:(NSRange)range;
- (void)removeFontWeightInRange:(NSRange)range;
- (void)removeRuby:(_NSRange)ruby;
- (void)removeTextColorInRange:(NSRange)range;
- (void)removeTextCombineInRange:(NSRange)range;
- (void)setBackgroundColor:(CGColorRef)color inRange:(NSRange)range;
- (void)setDecoration:(AVCaptionDecoration)decoration inRange:(NSRange)range;
- (void)setFontStyle:(AVCaptionFontStyle)fontStyle inRange:(NSRange)range;
- (void)setFontWeight:(AVCaptionFontWeight)fontWeight inRange:(NSRange)range;
- (void)setRegion:(AVCaptionRegion *)region;
- (void)setRuby:(AVCaptionRuby *)ruby inRange:(NSRange)range;
- (void)setText:(NSString *)text;
- (void)setTextColor:(CGColorRef)color inRange:(NSRange)range;
- (void)setTextCombine:(AVCaptionTextCombine)textCombine inRange:(NSRange)range;
- (void)setTimeRange:(CMTimeRange *)timeRange;
@end

@implementation AVMutableCaption

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVCaption alloc];
  _figCaptionData = [(AVCaption *)self _figCaptionData];
  if (self)
  {
    [(AVMutableCaption *)self timeRange];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  return [(AVCaption *)v4 initWithFigCaptionData:_figCaptionData timeRange:v7];
}

- (NSString)text
{
  v3.receiver = self;
  v3.super_class = AVMutableCaption;
  return [(AVCaption *)&v3 text];
}

- (CMTimeRange)timeRange
{
  v4.receiver = self;
  v4.super_class = AVMutableCaption;
  return [(CMTimeRange *)&v4 timeRange];
}

- (void)setText:(NSString *)text
{
  if (!text)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, "text != nil"), 0}];
    objc_exception_throw(v9);
  }

  [(AVCaption *)self _setText:?];
}

- (void)setTimeRange:(CMTimeRange *)timeRange
{
  if ((timeRange->start.flags & 0x1D) != 1)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "CMTIME_IS_NUMERIC(timeRange.start)";
    goto LABEL_6;
  }

  if ((timeRange->duration.flags & 0x1D) != 1)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = "CMTIME_IS_NUMERIC(timeRange.duration)";
LABEL_6:
    v12 = [v9 exceptionWithName:v10 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, v11), 0}];
    objc_exception_throw(v12);
  }

  v8 = *&timeRange->start.epoch;
  v13[0] = *&timeRange->start.value;
  v13[1] = v8;
  v13[2] = *&timeRange->duration.timescale;
  [(AVCaption *)self _setTimeRange:v13];
}

- (void)setRegion:(AVCaptionRegion *)region
{
  if (region)
  {
    position = [(AVCaptionRegion *)region position];
    height = [(AVCaptionRegion *)region height];
    scroll = [(AVCaptionRegion *)region scroll];
    if (height)
    {
      v9 = scroll;
      if (![(AVCaptionLength *)height numberOfCells])
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = "[height numberOfCells] != 0";
        goto LABEL_21;
      }

      if ([(AVCaptionLength *)height numberOfCells]!= 1 && v9 != AVCaptionRegionScrollRollUp)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = "scroll == AVCaptionRegionScrollRollUp";
        goto LABEL_21;
      }
    }

    if (position && ![(AVCaptionPosition *)position unitType])
    {
      if ([(AVCaptionPosition *)position cellX]<= 0)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = "[position cellX] >= 1";
      }

      else if ([(AVCaptionPosition *)position cellX]>= 33)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = "[position cellX] <= 32";
      }

      else if ([(AVCaptionPosition *)position cellY]<= 0)
      {
        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = "[position cellY] >= 1";
      }

      else
      {
        if ([(AVCaptionPosition *)position cellY]< 16)
        {
          goto LABEL_12;
        }

        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = "[position cellY] <= 15";
      }

LABEL_21:
      v18 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, v17), 0}];
      objc_exception_throw(v18);
    }
  }

LABEL_12:

  [(AVCaption *)self _setRegion:region];
}

- (void)setTextColor:(CGColorRef)color inRange:(NSRange)range
{
  if (!color)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "color != NULL"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setTextColor:"_setTextColor:inRange:" inRange:?];
}

- (void)setBackgroundColor:(CGColorRef)color inRange:(NSRange)range
{
  if (!color)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "color != NULL"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setBackgroundColor:"_setBackgroundColor:inRange:" inRange:?];
}

- (void)setFontWeight:(AVCaptionFontWeight)fontWeight inRange:(NSRange)range
{
  if ((fontWeight - 1) >= 2)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "fontWeight == AVCaptionFontWeightNormal || fontWeight == AVCaptionFontWeightBold"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setFontWeight:"_setFontWeight:inRange:" inRange:?];
}

- (void)setFontStyle:(AVCaptionFontStyle)fontStyle inRange:(NSRange)range
{
  if ((fontStyle - 1) >= 2)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "fontStyle == AVCaptionFontStyleNormal || fontStyle == AVCaptionFontStyleItalic"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setFontStyle:"_setFontStyle:inRange:" inRange:?];
}

- (void)setDecoration:(AVCaptionDecoration)decoration inRange:(NSRange)range
{
  if (decoration >= 8)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "(decoration & ~( AVCaptionDecorationNone | AVCaptionDecorationUnderline | AVCaptionDecorationLineThrough | AVCaptionDecorationOverline)) == 0"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setDecoration:"_setDecoration:inRange:" inRange:?];
}

- (void)setTextCombine:(AVCaptionTextCombine)textCombine inRange:(NSRange)range
{
  if ((textCombine + 1) >= 6)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "textCombine == AVCaptionTextCombineNone || textCombine == AVCaptionTextCombineAll || textCombine == AVCaptionTextCombineOneDigit || textCombine == AVCaptionTextCombineTwoDigits || textCombine == AVCaptionTextCombineThreeDigits|| textCombine == AVCaptionTextCombineFourDigits"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setTextCombine:"_setTextCombine:inRange:" inRange:?];
}

- (void)setRuby:(AVCaptionRuby *)ruby inRange:(NSRange)range
{
  if (!ruby)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", range.location, range.length, v4, v5, v6, "ruby != nil"), 0}];
    objc_exception_throw(v8);
  }

  [AVCaption _setRuby:"_setRuby:inRange:" inRange:?];
}

- (AVCaptionAnimation)animation
{
  v3.receiver = self;
  v3.super_class = AVMutableCaption;
  return [(AVCaption *)&v3 animation];
}

- (AVCaptionTextAlignment)textAlignment
{
  v3.receiver = self;
  v3.super_class = AVMutableCaption;
  return [(AVCaption *)&v3 textAlignment];
}

- (void)removeTextColorInRange:(NSRange)range
{
  if (range.length)
  {
    [(AVCaption *)self _setTextColor:0 inRange:range.location, range.length];
  }
}

- (void)removeBackgroundColorInRange:(NSRange)range
{
  if (range.length)
  {
    [(AVCaption *)self _setBackgroundColor:0 inRange:range.location, range.length];
  }
}

- (void)removeFontWeightInRange:(NSRange)range
{
  if (range.length)
  {
    [(AVCaption *)self _setFontWeight:0 inRange:range.location, range.length];
  }
}

- (void)removeFontStyleInRange:(NSRange)range
{
  if (range.length)
  {
    [(AVCaption *)self _setFontStyle:0 inRange:range.location, range.length];
  }
}

- (void)removeDecorationInRange:(NSRange)range
{
  if (range.length)
  {
    [(AVCaption *)self _setDecoration:0 inRange:range.location, range.length];
  }
}

- (void)removeTextCombineInRange:(NSRange)range
{
  if (range.length)
  {
    [(AVCaption *)self _setTextCombine:0 inRange:range.location, range.length];
  }
}

- (void)removeRuby:(_NSRange)ruby
{
  if (ruby.length)
  {
    [(AVCaption *)self _setRuby:0 inRange:ruby.location, ruby.length];
  }
}

@end