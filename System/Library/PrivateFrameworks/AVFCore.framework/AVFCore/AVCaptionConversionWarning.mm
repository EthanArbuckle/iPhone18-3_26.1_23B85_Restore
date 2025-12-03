@interface AVCaptionConversionWarning
+ (AVCaptionConversionWarning)captionConversionWarningWithFigDictionary:(__CFDictionary *)dictionary;
- (AVCaptionConversionAdjustment)adjustment;
- (AVCaptionConversionWarning)initWithFigDictionary:(__CFDictionary *)dictionary;
- (AVCaptionConversionWarningType)warningType;
- (NSRange)rangeOfCaptions;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptionConversionWarning

+ (AVCaptionConversionWarning)captionConversionWarningWithFigDictionary:(__CFDictionary *)dictionary
{
  v3 = [objc_alloc(objc_opt_class()) initWithFigDictionary:dictionary];

  return v3;
}

- (AVCaptionConversionWarning)initWithFigDictionary:(__CFDictionary *)dictionary
{
  v6.receiver = self;
  v6.super_class = AVCaptionConversionWarning;
  v4 = [(AVCaptionConversionWarning *)&v6 init];
  if (v4)
  {
    v4->_warningInternal = [(__CFDictionary *)dictionary copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptionConversionWarning;
  [(AVCaptionConversionWarning *)&v3 dealloc];
}

- (AVCaptionConversionWarningType)warningType
{
  if ([objc_msgSend(self->_warningInternal objectForKeyedSubscript:{*MEMORY[0x1E6971858]), "longValue"}] == 1)
  {
    return @"AVCaptionConversionWarningTypeExcessMediaData";
  }

  else
  {
    return 0;
  }
}

- (NSRange)rangeOfCaptions
{
  v2 = [self->_warningInternal objectForKeyedSubscript:*MEMORY[0x1E6971850]];
  v3 = [objc_msgSend(v2 objectForKeyedSubscript:{*MEMORY[0x1E6971828]), "integerValue"}];
  v4 = [objc_msgSend(v2 objectForKeyedSubscript:{*MEMORY[0x1E6971820]), "integerValue"}];
  v5 = v3;
  result.length = v4;
  result.location = v5;
  return result;
}

- (AVCaptionConversionAdjustment)adjustment
{
  v2 = [self->_warningInternal objectForKeyedSubscript:*MEMORY[0x1E6971848]];

  return [AVCaptionConversionAdjustment captionConversionAdjustmentWithFigDictionary:v2];
}

- (id)description
{
  if (description_createWarningTypeMappingOnce != -1)
  {
    [AVCaptionConversionWarning description];
  }

  v3 = [description_warningMapping objectForKeyedSubscript:{-[AVCaptionConversionWarning warningType](self, "warningType")}];
  rangeOfCaptions = [(AVCaptionConversionWarning *)self rangeOfCaptions];
  v6 = v5;
  adjustment = [(AVCaptionConversionWarning *)self adjustment];
  if (v6 < 2)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" = %lu", rangeOfCaptions, v14];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"es = (%lu-%lu)", rangeOfCaptions, v6 + rangeOfCaptions - 1];
  }

  v9 = v8;
  if (adjustment)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"adjustment = %@", adjustment];
  }

  else
  {
    v10 = @"no remedial adjusment available; caption must be omitted during conversion";
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = objc_opt_class();
  return [v11 stringWithFormat:@"<%@: %p, warning = %@, caption index%@, %@", NSStringFromClass(v12), self, v3, v9, v10];
}

id __41__AVCaptionConversionWarning_description__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v1 = @"AVCaptionConversionWarningTypeExcessMediaData";
  v2[0] = @"excess media data";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:&v1 count:1];
  description_warningMapping = result;
  return result;
}

@end