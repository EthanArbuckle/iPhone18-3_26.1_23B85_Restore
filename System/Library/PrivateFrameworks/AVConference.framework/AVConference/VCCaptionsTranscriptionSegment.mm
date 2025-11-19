@interface VCCaptionsTranscriptionSegment
- (BOOL)isEqual:(id)a3;
- (VCCaptionsTranscriptionSegment)initWithCoder:(id)a3;
- (VCCaptionsTranscriptionSegment)initWithConfidence:(unsigned int)a3 text:(id)a4 range:(_NSRange)a5;
- (_NSRange)range;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VCCaptionsTranscriptionSegment

- (VCCaptionsTranscriptionSegment)initWithConfidence:(unsigned int)a3 text:(id)a4 range:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCCaptionsTranscriptionSegment;
  v9 = [(VCCaptionsTranscriptionSegment *)&v11 init];
  if (v9)
  {
    v9->_text = [a4 copy];
    v9->_range.location = location;
    v9->_range.length = length;
    v9->_confidence = a3;
    if (a3 >= 0x65)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [VCCaptionsTranscriptionSegment allocWithZone:a3];
  confidence = self->_confidence;
  text = self->_text;
  location = self->_range.location;
  length = self->_range.length;

  return [(VCCaptionsTranscriptionSegment *)v4 initWithConfidence:confidence text:text range:location, length];
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_text forKey:@"segmentText"];
  [a3 encodeInt32:self->_confidence forKey:@"segmentConfidence"];
  [a3 encodeInt32:LODWORD(self->_range.length) forKey:@"segmentLength"];
  location_low = LODWORD(self->_range.location);

  [a3 encodeInt32:location_low forKey:@"segmentLocation"];
}

- (VCCaptionsTranscriptionSegment)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VCCaptionsTranscriptionSegment;
  v4 = [(VCCaptionsTranscriptionSegment *)&v6 init];
  if (v4)
  {
    if ([a3 containsValueForKey:@"segmentConfidence"])
    {
      v4->_confidence = [a3 decodeInt32ForKey:@"segmentConfidence"];
      if ([a3 containsValueForKey:@"segmentLength"])
      {
        v4->_range.length = [a3 decodeInt32ForKey:@"segmentLength"];
        if ([a3 containsValueForKey:@"segmentLocation"])
        {
          v4->_range.location = [a3 decodeInt32ForKey:@"segmentLocation"];
          if ([a3 containsValueForKey:@"segmentText"])
          {
            v4->_text = [a3 decodeObjectForKey:@"segmentText"];
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 confidence];
  if (v5 != [(VCCaptionsTranscriptionSegment *)self confidence])
  {
    return 0;
  }

  v6 = [a3 range];
  v8 = v7;
  v10 = [(VCCaptionsTranscriptionSegment *)self range];
  result = 0;
  if (v6 == v10 && v8 == v9)
  {
    v12 = [a3 text];
    v13 = [(VCCaptionsTranscriptionSegment *)self text];

    return [v12 isEqual:v13];
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