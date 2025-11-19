@interface SDPParser
- (BOOL)nextLine;
- (BOOL)parseMediaLineHeader:(id)a3 mediaType:(int *)a4 supportedPayloads:(id)a5 rtpPort:(int *)a6;
- (SDPParser)initWithString:(id)a3;
- (int)stringToMediaType:(id)a3;
- (void)dealloc;
@end

@implementation SDPParser

- (SDPParser)initWithString:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = SDPParser;
  v4 = [(SDPParser *)&v7 init];
  if (v4)
  {
    v5 = [a3 componentsSeparatedByString:@"\r\n"];
    v4->_lines = v5;
    v4->_lineEnumerator = [(NSArray *)v5 objectEnumerator];
    v4->_fieldNameMap = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{&unk_1F579C720, @"a", &unk_1F579C738, @"i", &unk_1F579C750, @"c", &unk_1F579C768, @"b", &unk_1F579C780, @"k", &unk_1F579C798, @"v", &unk_1F579C7B0, @"m", &unk_1F579C7C8, @"o", &unk_1F579C7E0, @"s", &unk_1F579C7F8, @"u", &unk_1F579C810, @"e", &unk_1F579C828, @"p", &unk_1F579C840, @"t", &unk_1F579C858, @"r", &unk_1F579C870, @"z", 0}];
    [(SDPParser *)v4 nextLine];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = SDPParser;
  [(SDPParser *)&v3 dealloc];
}

- (int)stringToMediaType:(id)a3
{
  if ([a3 isEqualToString:@"audio"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"video"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"screen"])
  {
    return 3;
  }

  return -1;
}

- (BOOL)nextLine
{
  v3 = [(NSEnumerator *)self->_lineEnumerator nextObject];
  if (!v3)
  {
    self->_parsingDone = 1;
  }

  v4 = [v3 componentsSeparatedByString:@"="];
  self->_fieldName = [v4 objectAtIndexedSubscript:0];
  if ([v4 count] < 2)
  {
    v5 = &stru_1F570E008;
  }

  else
  {
    v5 = [objc_msgSend(v4 subarrayWithRange:{1, objc_msgSend(v4, "count") - 1), "componentsJoinedByString:", @"="}];
  }

  self->_fieldValue = &v5->isa;
  v6 = [(NSDictionary *)self->_fieldNameMap objectForKeyedSubscript:self->_fieldName];
  if (v6)
  {
    v7 = [v6 unsignedCharValue];
  }

  else
  {
    v7 = 255;
  }

  self->_fieldType = v7;
  return v7 != 255;
}

- (BOOL)parseMediaLineHeader:(id)a3 mediaType:(int *)a4 supportedPayloads:(id)a5 rtpPort:(int *)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = [a3 componentsSeparatedByString:@" "];
  if (a4 && a5 && a6)
  {
    v11 = v10;
    if ([v10 count] <= 3)
    {
      [SDPParser parseMediaLineHeader:? mediaType:? supportedPayloads:? rtpPort:?];
      return v17;
    }

    else
    {
      v12 = -[SDPParser stringToMediaType:](self, "stringToMediaType:", [v11 objectAtIndexedSubscript:0]);
      *a4 = v12;
      if (v12 == -1)
      {
        [SDPParser parseMediaLineHeader:? mediaType:? supportedPayloads:? rtpPort:?];
        return v16;
      }

      else
      {
        v13 = 1;
        *a6 = [objc_msgSend(v11 objectAtIndexedSubscript:{1), "intValue"}];
        if ([v11 count] >= 4)
        {
          v14 = 3;
          do
          {
            [a5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", v14++), "intValue"))}];
          }

          while (v14 < [v11 count]);
          return 1;
        }
      }
    }
  }

  else
  {
    [SDPParser parseMediaLineHeader:? mediaType:? supportedPayloads:? rtpPort:?];
    return v18;
  }

  return v13;
}

- (void)parseMediaLineHeader:(_BYTE *)a1 mediaType:supportedPayloads:rtpPort:.cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to match the media line type", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

- (void)parseMediaLineHeader:(_BYTE *)a1 mediaType:supportedPayloads:rtpPort:.cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Corrupted media line header", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

- (void)parseMediaLineHeader:(_BYTE *)a1 mediaType:supportedPayloads:rtpPort:.cold.3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Invalid parameters passed to parseMediaLineHeader", v4, v5, v6, v7, v8);
    }
  }

  *a1 = 0;
}

@end