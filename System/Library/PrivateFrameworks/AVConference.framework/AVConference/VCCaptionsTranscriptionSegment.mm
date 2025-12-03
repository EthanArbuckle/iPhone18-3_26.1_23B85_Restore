@interface VCCaptionsTranscriptionSegment
- (BOOL)isEqual:(id)equal;
- (VCCaptionsTranscriptionSegment)initWithCoder:(id)coder;
- (VCCaptionsTranscriptionSegment)initWithConfidence:(unsigned int)confidence text:(id)text range:(_NSRange)range;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCCaptionsTranscriptionSegment

- (VCCaptionsTranscriptionSegment)initWithConfidence:(unsigned int)confidence text:(id)text range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCCaptionsTranscriptionSegment;
  v9 = [(VCCaptionsTranscriptionSegment *)&v11 init];
  if (v9)
  {
    v9->_text = [text copy];
    v9->_range.location = location;
    v9->_range.length = length;
    v9->_confidence = confidence;
    if (confidence >= 0x65)
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsTranscriptionSegment;
  [(VCCaptionsTranscriptionSegment *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [VCCaptionsTranscriptionSegment allocWithZone:zone];
  confidence = self->_confidence;
  text = self->_text;
  location = self->_range.location;
  length = self->_range.length;

  return [(VCCaptionsTranscriptionSegment *)v4 initWithConfidence:confidence text:text range:location, length];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_text forKey:@"segmentText"];
  [coder encodeInt32:self->_confidence forKey:@"segmentConfidence"];
  [coder encodeInt32:LODWORD(self->_range.length) forKey:@"segmentLength"];
  location_low = LODWORD(self->_range.location);

  [coder encodeInt32:location_low forKey:@"segmentLocation"];
}

- (VCCaptionsTranscriptionSegment)initWithCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCCaptionsTranscriptionSegment;
  v4 = [(VCCaptionsTranscriptionSegment *)&v6 init];
  if (v4)
  {
    if ([coder containsValueForKey:@"segmentConfidence"])
    {
      v4->_confidence = [coder decodeInt32ForKey:@"segmentConfidence"];
      if ([coder containsValueForKey:@"segmentLength"])
      {
        v4->_range.length = [coder decodeInt32ForKey:@"segmentLength"];
        if ([coder containsValueForKey:@"segmentLocation"])
        {
          v4->_range.location = [coder decodeInt32ForKey:@"segmentLocation"];
          if ([coder containsValueForKey:@"segmentText"])
          {
            v4->_text = [coder decodeObjectForKey:@"segmentText"];
          }

          else
          {
            [VCCaptionsTranscriptionSegment initWithCoder:];
          }
        }

        else
        {
          [VCCaptionsTranscriptionSegment initWithCoder:];
        }
      }

      else
      {
        [VCCaptionsTranscriptionSegment initWithCoder:];
      }
    }

    else
    {
      [VCCaptionsTranscriptionSegment initWithCoder:];
    }

    if (!v4->_text)
    {

      return 0;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  return [v3 stringWithFormat:@"%@<%p> confidence=%u range=%@", v5, self, self->_confidence, NSStringFromRange(self->_range)];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  confidence = [equal confidence];
  if (confidence != [(VCCaptionsTranscriptionSegment *)self confidence])
  {
    return 0;
  }

  range = [equal range];
  v8 = v7;
  range2 = [(VCCaptionsTranscriptionSegment *)self range];
  result = 0;
  if (range == range2 && v8 == v9)
  {
    text = [equal text];
    text2 = [(VCCaptionsTranscriptionSegment *)self text];

    return [text isEqual:text2];
  }

  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)initWithCoder:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode update number", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode is local", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode is local", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode segment text", v2, v3, v4, v5, v6);
    }
  }
}

@end