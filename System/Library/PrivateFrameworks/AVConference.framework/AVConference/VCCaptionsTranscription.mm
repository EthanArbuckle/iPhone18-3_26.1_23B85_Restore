@interface VCCaptionsTranscription
- (BOOL)isEqual:(id)equal;
- (NSString)formattedText;
- (VCCaptionsTranscription)initWithCoder:(id)coder;
- (VCCaptionsTranscription)initWithSFTranscription:(id)transcription taskInfo:(id)info isLocal:(BOOL)local isFinal:(BOOL)final;
- (VCCaptionsTranscription)initWithSTTranscriberMultisegmentResult:(id)result taskInfo:(id)info isLocal:(BOOL)local isFinal:(BOOL)final;
- (VCCaptionsTranscription)initWithTextTranscription:(id)transcription taskInfo:(id)info isLocal:(BOOL)local isFinal:(BOOL)final isTranslated:(BOOL)translated;
- (VCCaptionsTranscription)initWithUtteranceNumber:(unsigned int)number updateNumber:(unsigned int)updateNumber isLocal:(BOOL)local isFinal:(BOOL)final streamToken:(int64_t)token isTranslated:(BOOL)translated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)addSegment:(id)segment;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setUpUtteranceStartTimestamp:(double)timestamp andUtteranceDuration:(double)duration;
@end

@implementation VCCaptionsTranscription

- (void)setUpUtteranceStartTimestamp:(double)timestamp andUtteranceDuration:(double)duration
{
  v19 = *MEMORY[0x1E69E9840];
  self->_utteranceStartTimestamp = timestamp;
  self->_utteranceDuration = duration;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      utteranceStartTimestamp = self->_utteranceStartTimestamp;
      utteranceDuration = self->_utteranceDuration;
      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCCaptionsTranscription setUpUtteranceStartTimestamp:andUtteranceDuration:]";
      v13 = 1024;
      v14 = 51;
      v15 = 2048;
      v16 = utteranceStartTimestamp;
      v17 = 2048;
      v18 = utteranceDuration;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d utteranceStartTimestamp=%f utteranceDuration=%f", &v9, 0x30u);
    }
  }
}

- (VCCaptionsTranscription)initWithUtteranceNumber:(unsigned int)number updateNumber:(unsigned int)updateNumber isLocal:(BOOL)local isFinal:(BOOL)final streamToken:(int64_t)token isTranslated:(BOOL)translated
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCCaptionsTranscription;
  v14 = [(VCCaptionsTranscription *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_utteranceNumber = number;
    v14->_updateNumber = updateNumber;
    v14->_isLocal = local;
    v14->_isFinal = final;
    v14->_segments = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15->_streamToken = token;
    *&v15->_utteranceStartTimestamp = vdupq_n_s64(0x7FF8000000000000uLL);
    v15->_isTranslated = translated;
  }

  return v15;
}

- (VCCaptionsTranscription)initWithSFTranscription:(id)transcription taskInfo:(id)info isLocal:(BOOL)local isFinal:(BOOL)final
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = -[VCCaptionsTranscription initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:](self, "initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:", [info utteranceNumber], objc_msgSend(info, "updateNumber"), local, final, objc_msgSend(info, "token"), 0);
  if (v8)
  {
    v9 = v8;
    infoCopy = info;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    segments = [transcription segments];
    v11 = [segments countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v14 = 0.0;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(segments);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [VCCaptionsTranscriptionSegment alloc];
          [v16 confidence];
          v19 = (v18 * 100.0);
          substring = [v16 substring];
          substringRange = [v16 substringRange];
          v23 = [(VCCaptionsTranscriptionSegment *)v17 initWithConfidence:v19 text:substring range:substringRange, v22];
          if (!v23)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                [VCCaptionsTranscription initWithSFTranscription:taskInfo:isLocal:isFinal:];
              }
            }

            return 0;
          }

          v24 = v23;
          [(NSMutableArray *)v9->_segments addObject:v23];

          [v16 duration];
          v14 = v14 + v25;
        }

        v12 = [segments countByEnumeratingWithState:&v29 objects:v28 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v14 = 0.0;
    }

    [(VCCaptionsTranscription *)v9 setUpUtteranceStartTimestamp:VCCaptionTaskInfo_HostTime(infoCopy) andUtteranceDuration:v14];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCaptionsTranscription initWithSFTranscription:taskInfo:isLocal:isFinal:];
      }
    }

    return 0;
  }

  return v9;
}

- (VCCaptionsTranscription)initWithSTTranscriberMultisegmentResult:(id)result taskInfo:(id)info isLocal:(BOOL)local isFinal:(BOOL)final
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = -[VCCaptionsTranscription initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:](self, "initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:", [info utteranceNumber], objc_msgSend(info, "updateNumber"), local, final, objc_msgSend(info, "token"), 0);
  if (!v8)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCaptionsTranscription initWithSTTranscriberMultisegmentResult:taskInfo:isLocal:isFinal:];
      }
    }

    return 0;
  }

  v9 = v8;
  resultCopy = result;
  segments = [result segments];
  if ([segments count])
  {
    v11 = 0;
    v24 = segments;
    while (1)
    {
      v12 = [segments objectAtIndexedSubscript:v11];
      if ([objc_msgSend(v12 "text")])
      {
        break;
      }

LABEL_8:
      ++v11;
      segments = v24;
      if (v11 >= [v24 count])
      {
        goto LABEL_9;
      }
    }

    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = [objc_msgSend(v12 "text")];
      v16 = [objc_msgSend(v15 "text")];
      v17 = [VCCaptionsTranscriptionSegment alloc];
      [v15 confidence];
      v19 = -[VCCaptionsTranscriptionSegment initWithConfidence:text:range:](v17, "initWithConfidence:text:range:", (v18 * 100.0), [v15 text], v13, v16);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      v13 += [objc_msgSend(v15 "text")];
      [(NSMutableArray *)v9->_segments addObject:v20];

      if (++v14 >= [objc_msgSend(v12 "text")])
      {
        goto LABEL_8;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCCaptionsTranscription initWithSTTranscriberMultisegmentResult:taskInfo:isLocal:isFinal:];
      }
    }

    return 0;
  }

LABEL_9:
  v21 = VCCaptionTaskInfo_HostTime(info);
  if (resultCopy)
  {
    [resultCopy recognitionAudioRange];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  time = *&v25[1];
  [(VCCaptionsTranscription *)v9 setUpUtteranceStartTimestamp:v21 andUtteranceDuration:CMTimeGetSeconds(&time)];
  return v9;
}

- (VCCaptionsTranscription)initWithTextTranscription:(id)transcription taskInfo:(id)info isLocal:(BOOL)local isFinal:(BOOL)final isTranslated:(BOOL)translated
{
  v9 = -[VCCaptionsTranscription initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:](self, "initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:", [info utteranceNumber], objc_msgSend(info, "updateNumber"), local, final, objc_msgSend(info, "token"), translated);
  if (v9)
  {
    v10 = [transcription length];
    v11 = [VCCaptionsTranscriptionSegment initWithConfidence:"initWithConfidence:text:range:" text:? range:?];
    if (v11)
    {
      v12 = v11;
      [(NSMutableArray *)v9->_segments addObject:v11];

      [(VCCaptionsTranscription *)v9 setUpUtteranceStartTimestamp:VCCaptionTaskInfo_HostTime(info) andUtteranceDuration:NAN];
      return v9;
    }

    [VCCaptionsTranscription initWithTextTranscription:v9 taskInfo:0 isLocal:v10 isFinal:? isTranslated:?];
  }

  else
  {
    [VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:];
    }
  }

  return 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsTranscription;
  [(VCCaptionsTranscription *)&v3 dealloc];
}

- (NSString)formattedText
{
  result = &self->_formattedText->super;
  if (!result)
  {
    result = [+[VCCaptionsUtilities formattedTextWithTranscription:](VCCaptionsUtilities formattedTextWithTranscription:{self), "copy"}];
    self->_formattedText = result;
  }

  return result;
}

- (void)addSegment:(id)segment
{
  [(NSMutableArray *)self->_segments addObject:segment];

  self->_formattedText = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [+[VCCaptionsTranscription allocWithZone:](VCCaptionsTranscription initWithUtteranceNumber:"initWithUtteranceNumber:updateNumber:isLocal:isFinal:streamToken:isTranslated:" updateNumber:self->_utteranceNumber isLocal:self->_updateNumber isFinal:self->_isLocal streamToken:self->_isFinal isTranslated:self->_streamToken, self->_isTranslated];
  [(VCCaptionsTranscription *)v5 setUpUtteranceStartTimestamp:self->_utteranceStartTimestamp andUtteranceDuration:self->_utteranceDuration];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  segments = self->_segments;
  v7 = [(NSMutableArray *)segments countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(segments);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:zone];
        [(VCCaptionsTranscription *)v5 addSegment:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)segments countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_utteranceNumber forKey:@"utteranceNumber"];
  [coder encodeInt32:self->_updateNumber forKey:@"updateNumber"];
  [coder encodeBool:self->_isLocal forKey:@"isLocal"];
  [coder encodeBool:self->_isFinal forKey:@"isFinal"];
  [coder encodeObject:self->_segments forKey:@"segments"];
  [coder encodeDouble:@"utteranceStartTimestamp" forKey:self->_utteranceStartTimestamp];
  [coder encodeDouble:@"utteranceDuration" forKey:self->_utteranceDuration];
  isTranslated = self->_isTranslated;

  [coder encodeBool:isTranslated forKey:@"isTranslated"];
}

- (VCCaptionsTranscription)initWithCoder:(id)coder
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCCaptionsTranscription;
  v4 = [(VCCaptionsTranscription *)&v8 init];
  if (v4)
  {
    if ([coder containsValueForKey:@"utteranceNumber"])
    {
      v4->_utteranceNumber = [coder decodeInt32ForKey:@"utteranceNumber"];
      if ([coder containsValueForKey:@"updateNumber"])
      {
        v4->_updateNumber = [coder decodeInt32ForKey:@"updateNumber"];
        if ([coder containsValueForKey:@"isLocal"])
        {
          v4->_isLocal = [coder decodeBoolForKey:@"isLocal"];
          if ([coder containsValueForKey:@"isFinal"])
          {
            v4->_isFinal = [coder decodeBoolForKey:@"isFinal"];
            if ([coder containsValueForKey:@"segments"])
            {
              v4->_segments = [objc_msgSend(coder decodeObjectForKey:{@"segments", "copy"}];
              if ([coder containsValueForKey:@"utteranceStartTimestamp"])
              {
                [coder decodeDoubleForKey:@"utteranceStartTimestamp"];
                v4->_utteranceStartTimestamp = v5;
                if ([coder containsValueForKey:@"utteranceDuration"])
                {
                  [coder decodeDoubleForKey:@"utteranceDuration"];
                  v4->_utteranceDuration = v6;
                  if ([coder containsValueForKey:@"isTranslated"])
                  {
                    v4->_isTranslated = [coder decodeBoolForKey:@"isTranslated"];
                    return v4;
                  }

                  [VCCaptionsTranscription initWithCoder:];
                }

                else
                {
                  [VCCaptionsTranscription initWithCoder:];
                }
              }

              else
              {
                [VCCaptionsTranscription initWithCoder:];
              }
            }

            else
            {
              [VCCaptionsTranscription initWithCoder:];
            }
          }

          else
          {
            [VCCaptionsTranscription initWithCoder:];
          }
        }

        else
        {
          [VCCaptionsTranscription initWithCoder:];
        }
      }

      else
      {
        [VCCaptionsTranscription initWithCoder:];
      }
    }

    else
    {
      [VCCaptionsTranscription initWithCoder:];
    }

    return 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@<%p> utteranceNumber=%u, updateNumber=%u, isLocal=%d, isFinal=%d, isTranslated=%d, streamToken=%ld, utteranceStartTimestamp=%f, utteranceDuration=%f, segments=%@", NSStringFromClass(v4), self, self->_utteranceNumber, self->_updateNumber, self->_isLocal, self->_isFinal, self->_isTranslated, self->_streamToken, *&self->_utteranceStartTimestamp, *&self->_utteranceDuration, self->_segments];
}

- (unint64_t)hash
{
  utteranceNumber = self->_utteranceNumber;
  updateNumber = self->_updateNumber;
  isLocal = self->_isLocal;
  isFinal = self->_isFinal;
  v7 = [(NSMutableArray *)self->_segments hash];
  if (isLocal)
  {
    v8 = 4236;
  }

  else
  {
    v8 = 7112;
  }

  v9 = updateNumber ^ utteranceNumber ^ v8;
  if (isFinal)
  {
    v10 = 4236;
  }

  else
  {
    v10 = 7112;
  }

  v11 = v7 ^ *&self->_utteranceStartTimestamp ^ v9 ^ v10;
  if (self->_isTranslated)
  {
    v12 = 4236;
  }

  else
  {
    v12 = 7112;
  }

  return v11 ^ *&self->_utteranceDuration ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [equal utteranceNumber], v5 == -[VCCaptionsTranscription utteranceNumber](self, "utteranceNumber")) && (v6 = objc_msgSend(equal, "updateNumber"), v6 == -[VCCaptionsTranscription updateNumber](self, "updateNumber")) && (v7 = objc_msgSend(equal, "isLocal"), v7 == -[VCCaptionsTranscription isLocal](self, "isLocal")) && (v8 = objc_msgSend(equal, "isFinal"), v8 == -[VCCaptionsTranscription isFinal](self, "isFinal")) && (v9 = objc_msgSend(equal, "isTranslated"), v9 == -[VCCaptionsTranscription isTranslated](self, "isTranslated")))
    {
      v10 = [objc_msgSend(equal "segments")];
      if (v10)
      {
        [equal utteranceStartTimestamp];
        v12 = v11;
        [(VCCaptionsTranscription *)self utteranceStartTimestamp];
        v10 = VCMathUtils_DoubleEqualWithAccuracy(v12, v13, 0.0000625);
        if (v10)
        {
          [equal utteranceDuration];
          v15 = v14;
          [(VCCaptionsTranscription *)self utteranceDuration];

          LOBYTE(v10) = VCMathUtils_DoubleEqualWithAccuracy(v15, v16, 0.0000625);
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (void)initWithSFTranscription:taskInfo:isLocal:isFinal:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 81;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init captions transcription segment from speech framework transcription.", v2);
}

- (void)initWithSFTranscription:taskInfo:isLocal:isFinal:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 74;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init captions transcription VCCaptionsTranscription from speech framework transcription.", v2);
}

- (void)initWithSTTranscriberMultisegmentResult:taskInfo:isLocal:isFinal:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 113;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init captions transcription segment from transcriber multisegment result.", v2);
}

- (void)initWithSTTranscriberMultisegmentResult:taskInfo:isLocal:isFinal:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v3 = 100;
  OUTLINED_FUNCTION_26(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init captions transcription VCCaptionsTranscription from transcriber multisegment result.", v2);
}

- (void)initWithTextTranscription:(NSUInteger)a3 taskInfo:isLocal:isFinal:isTranslated:.cold.1(void *a1, NSUInteger a2, NSUInteger a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v26.location = a2;
    v26.length = a3;
    NSStringFromRange(v26);
    v17 = 136315906;
    v18 = v7;
    v19 = 2080;
    OUTLINED_FUNCTION_4_21();
    v20 = v9;
    v10 = " [%s] %s:%d Failed to init VCCaptionsTranscriptionSegment with range=%@";
    v11 = v8;
    v12 = 38;
LABEL_12:
    _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, v10, &v17, v12);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v27.location = a2;
      v27.length = a3;
      NSStringFromRange(v27);
      v17 = 136316418;
      v18 = v13;
      v19 = 2080;
      OUTLINED_FUNCTION_4_21();
      v20 = v6;
      v21 = 2048;
      v22 = a1;
      v23 = v15;
      v24 = v16;
      v10 = " [%s] %s:%d %@(%p) Failed to init VCCaptionsTranscriptionSegment with range=%@";
      v11 = v14;
      v12 = 58;
      goto LABEL_12;
    }
  }
}

- (void)initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to init captions transcription VCCaptionsTranscription from text result.", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:.cold.3()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCCaptionsTranscription initWithTextTranscription:taskInfo:isLocal:isFinal:isTranslated:]";
  v6 = 1024;
  v7 = 148;
  v8 = 2112;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d VCCaptionsTranscription-init FAILED for taskInfo=%@", v3, 0x26u);
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
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode utterance number", v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode update number", v2, v3, v4, v5, v6);
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
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode is final", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode segments", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode utterance start timestamp", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode utterance duration", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode is translated", v2, v3, v4, v5, v6);
    }
  }
}

@end