@interface AVCaptionRuby
- (AVCaptionRuby)init;
- (AVCaptionRuby)initWithCoder:(id)a3;
- (AVCaptionRuby)initWithFigCaptionData:(OpaqueFigCaptionData *)a3;
- (AVCaptionRuby)initWithText:(NSString *)text;
- (AVCaptionRuby)initWithText:(NSString *)text position:(AVCaptionRubyPosition)position alignment:(AVCaptionRubyAlignment)alignment;
- (BOOL)isEqual:(id)a3;
- (OpaqueFigCaptionData)copyFigCaptionData;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVCaptionRuby

- (AVCaptionRuby)init
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(sel_initWithText_);
  v12 = [v4 exceptionWithName:v5 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Use %@ instead.", v7, v8, v9, v10, v11, v6), 0}];
  objc_exception_throw(v12);
}

- (AVCaptionRuby)initWithText:(NSString *)text
{
  v7.receiver = self;
  v7.super_class = AVCaptionRuby;
  v4 = [(AVCaptionRuby *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCaptionRubyInternal);
    v4->_internal = v5;
    if (v5)
    {
      CFRetain(v5);
      v4->_internal->text = [(NSString *)text copy];
      v4->_internal->position = 0;
      v4->_internal->alignment = 2;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (AVCaptionRuby)initWithText:(NSString *)text position:(AVCaptionRubyPosition)position alignment:(AVCaptionRubyAlignment)alignment
{
  result = [(AVCaptionRuby *)self initWithText:text];
  if (result)
  {
    result->_internal->position = position;
    result->_internal->alignment = alignment;
  }

  return result;
}

- (AVCaptionRuby)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"AVCaptionRubyArchiveKeyText"];
  if (v5)
  {
    v6 = v5;
    if ([a3 containsValueForKey:@"AVCaptionRubyArchiveKeyPosition"])
    {
      v7 = [a3 decodeIntegerForKey:@"AVCaptionRubyArchiveKeyPosition"];
    }

    else
    {
      v7 = 0;
    }

    if ([a3 containsValueForKey:@"AVCaptionRubyArchiveKeyAlignment"])
    {
      v9 = [a3 decodeIntegerForKey:@"AVCaptionRubyArchiveKeyAlignment"];
    }

    else
    {
      v9 = 2;
    }

    return [(AVCaptionRuby *)self initWithText:v6 position:v7 alignment:v9];
  }

  else
  {

    return 0;
  }
}

- (AVCaptionRuby)initWithFigCaptionData:(OpaqueFigCaptionData *)a3
{
  v16 = 0;
  v17 = 0;
  cf = 0;
  CMBaseObject = FigCaptionDataGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || (v6 = *MEMORY[0x1E695E480], v5(CMBaseObject, *MEMORY[0x1E6961270], *MEMORY[0x1E695E480], &v17)) || (v7 = FigCaptionDataGetCMBaseObject(), (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v8(v7, *MEMORY[0x1E6961250], v6, &v16) || (v9 = FigCaptionDataGetCMBaseObject(), (v10 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v10(v9, *MEMORY[0x1E6961248], v6, &cf))
  {

    v11 = 0;
  }

  else
  {
    if (v16)
    {
      FigCaptionDynamicStyleGetInitialValue();
    }

    if (cf)
    {
      FigCaptionDynamicStyleGetInitialValue();
    }

    if (FigCFEqual())
    {
      v13 = 0;
    }

    else
    {
      v13 = FigCFEqual() != 0;
    }

    if (FigCFEqual())
    {
      v14 = 0;
    }

    else if (FigCFEqual())
    {
      v14 = 1;
    }

    else if (FigCFEqual())
    {
      v14 = 2;
    }

    else if (FigCFEqual())
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v11 = [(AVCaptionRuby *)self initWithText:v17 position:v13 alignment:v14];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInteger:2 forKey:@"AVCaptionRubyArchiveKeyVersion"];
  [a3 encodeObject:-[AVCaptionRuby text](self forKey:{"text"), @"AVCaptionRubyArchiveKeyText"}];
  [a3 encodeInteger:-[AVCaptionRuby position](self forKey:{"position"), @"AVCaptionRubyArchiveKeyPosition"}];
  v5 = [(AVCaptionRuby *)self alignment];

  [a3 encodeInteger:v5 forKey:@"AVCaptionRubyArchiveKeyAlignment"];
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
  v4.super_class = AVCaptionRuby;
  [(AVCaptionRuby *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  result = 0;
  if (objc_opt_isKindOfClass())
  {
    if (-[NSString isEqual:](-[AVCaptionRuby text](self, "text"), "isEqual:", [a3 text]))
    {
      v5 = [(AVCaptionRuby *)self position];
      if (v5 == [a3 position])
      {
        v6 = [(AVCaptionRuby *)self alignment];
        if (v6 == [a3 alignment])
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (id)description
{
  if ([(AVCaptionRuby *)self position])
  {
    if ([(AVCaptionRuby *)self position]== AVCaptionRubyPositionAfter)
    {
      v3 = @"after";
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = @"before";
  }

  if ([(AVCaptionRuby *)self alignment])
  {
    if ([(AVCaptionRuby *)self alignment]== AVCaptionRubyAlignmentCenter)
    {
      v4 = @"center";
    }

    else if ([(AVCaptionRuby *)self alignment]== AVCaptionRubyAlignmentDistributeSpaceBetween)
    {
      v4 = @"spaceBetween";
    }

    else if ([(AVCaptionRuby *)self alignment]== AVCaptionRubyAlignmentDistributeSpaceAround)
    {
      v4 = @"spaceAround";
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = @"start";
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  return [v5 stringWithFormat:@"<%@: %p, text=%@ position=%@ alignment=%@>", NSStringFromClass(v6), self, -[AVCaptionRuby text](self, "text"), v3, v4];
}

- (OpaqueFigCaptionData)copyFigCaptionData
{
  if (FigCaptionDataCreateMutable())
  {
    return 0;
  }

  FigCaptionDataGetCMBaseObject();
  if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_2_1();
  if (v4(v3))
  {
    return 0;
  }

  internal = self->_internal;
  position = internal->position;
  if (position == 1)
  {
    v7 = MEMORY[0x1E6961428];
    goto LABEL_8;
  }

  if (!position)
  {
    v7 = MEMORY[0x1E6961430];
LABEL_8:
    v8 = *v7;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:
  switch(internal->alignment)
  {
    case 0:
      v9 = MEMORY[0x1E6961420];
      goto LABEL_15;
    case 1:
      v9 = MEMORY[0x1E69613F8];
      goto LABEL_15;
    case 2:
      v9 = MEMORY[0x1E6961408];
      goto LABEL_15;
    case 3:
      v9 = MEMORY[0x1E6961400];
LABEL_15:
      v10 = *v9;
      if (v8)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    default:
      v10 = 0;
      if (!v8)
      {
        goto LABEL_21;
      }

LABEL_16:
      if (!FigCaptionDynamicStyleCreate())
      {
        FigCaptionDataGetCMBaseObject();
        if (*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          v11 = OUTLINED_FUNCTION_2_1();
          if (!v12(v11))
          {
LABEL_21:
            if (v10)
            {
              if (!FigCaptionDynamicStyleCreate())
              {
                CMBaseObject = FigCaptionDataGetCMBaseObject();
                v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v14)
                {
                  v14(CMBaseObject, *MEMORY[0x1E6961248], 0);
                }
              }
            }
          }
        }
      }

      break;
  }

  return 0;
}

@end