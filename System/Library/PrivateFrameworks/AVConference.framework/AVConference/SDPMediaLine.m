@interface SDPMediaLine
+ (void)fillImageArray:(id)a3 imageArray:(imageTag *)a4;
+ (void)fillImageStruct:(id)a3 imageStruct:(imageTag *)a4;
+ (void)fillImageStructWithDictionary:(id)a3 forInterface:(int)a4 imageStruct:(imageTag *)a5;
- (BOOL)supportImage:(id)a3 width:(int)a4 height:(int)a5 rate:(int)a6;
- (BOOL)videoDisplayAttribute:(int *)a3 withHeight:(int *)a4;
- (NSString)string;
- (SDPMediaLine)init;
- (SDPMediaLine)initWithParser:(id)a3 rtpPort:(int)a4 payloads:(id)a5;
- (id)getVideoRecvImages:(id)a3;
- (id)getVideoSendImages:(id)a3;
- (id)videoImageAttributes:(int)a3;
- (void)addImageAttributeRules:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 direction:(int)a6 attributeString:(id)a7;
- (void)addPayload:(int)a3 rtpMap:(id)a4 formatParameters:(id)a5;
- (void)addVideoImageAttr:(id)a3 ForPayload:(int)a4;
- (void)addWifiRules:(id)a3 cellularRules:(id)a4 payload:(int)a5 direction:(int)a6;
- (void)appendPayload:(int)a3 dimensions:(imageTag *)a4 direction:(int)a5 attributeString:(id)a6;
- (void)createVideoImageAttr:(int)a3 direction:(int)a4 dimensions:(imageTag *)a5 count:(int)a6;
- (void)dealloc;
- (void)parseAttribute:(id)a3;
- (void)parseImageAttributeRules:(id)a3;
- (void)parseMediaLine:(id)a3;
@end

@implementation SDPMediaLine

- (SDPMediaLine)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = SDPMediaLine;
  v2 = [(SDPMediaLine *)&v4 init];
  if (v2)
  {
    v2->_attributes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v2->_imageAttributeRules = objc_opt_new();
    v2->_payloads = objc_opt_new();
  }

  return v2;
}

- (SDPMediaLine)initWithParser:(id)a3 rtpPort:(int)a4 payloads:(id)a5
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SDPMediaLine;
  v8 = [(SDPMediaLine *)&v10 init];
  if (v8)
  {
    v8->_attributes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v8->_imageAttributeRules = objc_opt_new();
    v8->_payloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:a5];
    v8->_rtpPort = a4;
    [(SDPMediaLine *)v8 parseMediaLine:a3];
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = SDPMediaLine;
  [(SDPMediaLine *)&v3 dealloc];
}

- (void)addPayload:(int)a3 rtpMap:(id)a4 formatParameters:(id)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&a3];
  if (([(NSMutableArray *)self->_payloads containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_payloads addObject:v8];
  }

  if (([(NSMutableArray *)self->_attributes containsObject:a4]& 1) == 0)
  {
    [(NSMutableArray *)self->_attributes addObject:a4];
    [(NSMutableArray *)self->_attributes addObject:a5];
  }
}

- (void)addVideoImageAttr:(id)a3 ForPayload:(int)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageattr:%d", *&a4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  attributes = self->_attributes;
  v8 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(attributes);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 hasPrefix:v6])
        {
          -[NSMutableArray addObject:](self->_attributes, "addObject:", [v12 stringByAppendingFormat:@" %@", a3]);
          [(NSMutableArray *)self->_attributes removeObject:v12];
          return;
        }
      }

      v9 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  -[NSMutableArray addObject:](self->_attributes, "addObject:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6, a3]);
}

- (void)appendPayload:(int)a3 dimensions:(imageTag *)a4 direction:(int)a5 attributeString:(id)a6
{
  var0 = a4->var0;
  if (a4->var3 * var0 * a4->var6)
  {
    v8 = *&a5;
    v10 = *&a3;
    var2 = a4->var2;
    if (var0 == var2)
    {
      [a6 appendFormat:@" [x=%d, ", a4->var0, v17, v19];
    }

    else
    {
      [a6 appendFormat:@" [x=[%d:%d:%d], ", var0, a4->var1, var2];
    }

    var3 = a4->var3;
    var5 = a4->var5;
    if (var3 == var5)
    {
      [a6 appendFormat:@"y=%d, ", a4->var3, v18, v20];
    }

    else
    {
      [a6 appendFormat:@"y=[%d:%d:%d], ", var3, a4->var4, var5];
    }

    [a6 appendFormat:@"fps=%d", a4->var6];
    if (a4->var8 == 1)
    {
      [a6 appendString:{@", i=1"}];
    }

    var7 = a4->var7;
    if (var7 == 0.5)
    {
      [a6 appendString:@"]"];
    }

    else
    {
      [a6 appendFormat:@", q=%.2f]", var7];
    }

    LODWORD(v16) = a4->var8;
    [(VCImageAttributeRules *)self->_imageAttributeRules addRuleForVideoPayload:v10 withDirection:v8 width:a4->var2 height:a4->var5 frameRate:a4->var6 priority:a4->var7 interface:v16];
  }
}

- (void)addImageAttributeRules:(id)a3 transportType:(unsigned __int8)a4 payload:(int)a5 direction:(int)a6 attributeString:(id)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v29 = *MEMORY[0x1E69E9840];
  memset(v21, 170, sizeof(v21));
  v22 = -1431655766;
  if (a4 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v23 = v12;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(a3);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        LODWORD(v21[1]) = [v17 iWidth];
        LODWORD(v21[0]) = v21[1];
        v18 = [v17 iHeight];
        LODWORD(v21[2]) = 0;
        HIDWORD(v21[2]) = v18;
        HIDWORD(v21[1]) = v18;
        HIDWORD(v21[0]) = 0;
        [v17 fPref];
        HIDWORD(v22) = v19;
        [v17 fRate];
        LODWORD(v22) = v20;
        [(SDPMediaLine *)self appendPayload:v9 dimensions:v21 direction:v8 attributeString:a7];
      }

      v14 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v14);
  }
}

- (void)addWifiRules:(id)a3 cellularRules:(id)a4 payload:(int)a5 direction:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  if (a3 && [a3 count] || a4 && objc_msgSend(a4, "count"))
  {
    v11 = objc_alloc(MEMORY[0x1E696AD60]);
    if (v6)
    {
      v12 = @"recv";
    }

    else
    {
      v12 = @"send";
    }

    v13 = [v11 initWithString:v12];
    if (a3 && [a3 count])
    {
      [(SDPMediaLine *)self addImageAttributeRules:a3 transportType:1 payload:v7 direction:v6 attributeString:v13];
    }

    if (a4 && [a4 count])
    {
      [(SDPMediaLine *)self addImageAttributeRules:a4 transportType:2 payload:v7 direction:v6 attributeString:v13];
    }

    [(SDPMediaLine *)self addVideoImageAttr:v13 ForPayload:v7];
  }
}

- (void)createVideoImageAttr:(int)a3 direction:(int)a4 dimensions:(imageTag *)a5 count:(int)a6
{
  if (a5)
  {
    LODWORD(v6) = a6;
    if (a6 >= 1)
    {
      v7 = a5;
      v8 = *&a4;
      v9 = *&a3;
      v11 = "recv";
      if (!a4)
      {
        v11 = "send";
      }

      v12 = [MEMORY[0x1E696AD60] stringWithFormat:@"%s", v11];
      v6 = v6;
      do
      {
        [(SDPMediaLine *)self appendPayload:v9 dimensions:v7++ direction:v8 attributeString:v12];
        --v6;
      }

      while (v6);

      [(SDPMediaLine *)self addVideoImageAttr:v12 ForPayload:v9];
    }
  }
}

- (id)videoImageAttributes:(int)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageattr:%d", *&a3];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  attributes = self->_attributes;
  v7 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(attributes);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 hasPrefix:v4])
        {
          v12 = [v11 componentsSeparatedByString:@" "];
          if ([v12 count] >= 2)
          {
            v13 = 1;
            do
            {
              [v5 addObject:{objc_msgSend(v12, "objectAtIndexedSubscript:", v13++)}];
            }

            while (v13 < [v12 count]);
          }
        }
      }

      v8 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)getVideoSendImages:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    *&v5 = 136315650;
    v15 = v5;
    do
    {
      if ([v6 isEqualToString:{@"send", v15}])
      {
        if (v7)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v17 = v12;
              v18 = 2080;
              v19 = "[SDPMediaLine getVideoSendImages:]";
              v20 = 1024;
              v21 = 228;
              _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d multiple send markers found!", buf, 0x1Cu);
            }
          }
        }

        else
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }
      }

      else if ([v6 isEqualToString:@"recv"])
      {
        if (v7)
        {
          return v7;
        }
      }

      else if (v7 && [v6 hasPrefix:@"["] && (objc_msgSend(v6, "hasSuffix:", @"]") & 1) != 0)
      {
        v8 = [objc_msgSend(v6 substringToIndex:{objc_msgSend(v6, "length") - 1), "substringFromIndex:", 1}];
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = [v8 componentsSeparatedByString:{@", "}];
        if ([v10 count] >= 1)
        {
          v11 = 0;
          do
          {
            [v9 addObject:{objc_msgSend(v10, "objectAtIndexedSubscript:", v11++)}];
          }

          while (v11 < [v10 count]);
        }

        [v7 addObject:v9];
      }

      v6 = [v3 nextObject];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getVideoRecvImages:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 objectEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    *&v5 = 136315650;
    v15 = v5;
    do
    {
      if ([v6 isEqualToString:{@"recv", v15}])
      {
        if (v7)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v12 = VRTraceErrorLogLevelToCSTR();
            v13 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              *buf = v15;
              v17 = v12;
              v18 = 2080;
              v19 = "[SDPMediaLine getVideoRecvImages:]";
              v20 = 1024;
              v21 = 271;
              _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d multiple recv markers found!", buf, 0x1Cu);
            }
          }
        }

        else
        {
          v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }
      }

      else if ([v6 isEqualToString:@"send"])
      {
        if (v7)
        {
          return v7;
        }
      }

      else if (v7 && [v6 hasPrefix:@"["] && (objc_msgSend(v6, "hasSuffix:", @"]") & 1) != 0)
      {
        v8 = [objc_msgSend(v6 substringToIndex:{objc_msgSend(v6, "length") - 1), "substringFromIndex:", 1}];
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = [v8 componentsSeparatedByString:{@", "}];
        if ([v10 count] >= 1)
        {
          v11 = 0;
          do
          {
            [v9 addObject:{objc_msgSend(v10, "objectAtIndexedSubscript:", v11++)}];
          }

          while (v11 < [v10 count]);
        }

        [v7 addObject:v9];
      }

      v6 = [v3 nextObject];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)fillImageStructWithDictionary:(id)a3 forInterface:(int)a4 imageStruct:(imageTag *)a5
{
  if ([a3 objectForKeyedSubscript:@"width"] && objc_msgSend(a3, "objectForKeyedSubscript:", @"height") && objc_msgSend(a3, "objectForKeyedSubscript:", @"frameRate"))
  {
    if ([a3 objectForKeyedSubscript:@"priority"])
    {
      v8 = [objc_msgSend(a3 objectForKeyedSubscript:{@"width", "intValue"}];
      a5->var0 = v8;
      a5->var1 = 0;
      a5->var2 = v8;
      v9 = [objc_msgSend(a3 objectForKeyedSubscript:{@"height", "intValue"}];
      a5->var3 = v9;
      a5->var4 = 0;
      a5->var5 = v9;
      a5->var6 = [objc_msgSend(a3 objectForKeyedSubscript:{@"frameRate", "intValue"}];
      [objc_msgSend(a3 objectForKeyedSubscript:{@"priority", "floatValue"}];
      a5->var7 = v10;
      a5->var8 = a4;
    }
  }
}

+ (void)fillImageStruct:(id)a3 imageStruct:(imageTag *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *&a4->var7 = 0x23F000000;
    v5 = [a3 objectEnumerator];
    v6 = [v5 nextObject];
    if (v6)
    {
      v7 = v6;
      do
      {
        if ([v7 hasPrefix:@"x=["])
        {
          v8 = [objc_msgSend(objc_msgSend(v7 substringToIndex:{objc_msgSend(v7, "length") - 1), "substringFromIndex:", 3), "componentsSeparatedByString:", @":"}];
          if ([v8 count] == 3)
          {
            a4->var0 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
            a4->var1 = [objc_msgSend(v8 objectAtIndexedSubscript:{1), "intValue"}];
            v9 = [objc_msgSend(v8 objectAtIndexedSubscript:{2), "intValue"}];
LABEL_9:
            a4->var2 = v9;
          }
        }

        else
        {
          if ([v7 hasPrefix:@"x="])
          {
            v9 = [objc_msgSend(v7 substringFromIndex:{2), "intValue"}];
            *&a4->var0 = v9;
            goto LABEL_9;
          }

          if (![v7 hasPrefix:@"y=["])
          {
            if (![v7 hasPrefix:@"y="])
            {
              if ([v7 hasPrefix:@"fps="])
              {
                a4->var6 = [objc_msgSend(v7 substringFromIndex:{4), "intValue"}];
              }

              else if ([v7 hasPrefix:@"q="])
              {
                [objc_msgSend(v7 substringFromIndex:{2), "floatValue"}];
                a4->var7 = v12;
              }

              else if ([v7 hasPrefix:@"i="])
              {
                a4->var8 = [objc_msgSend(v7 substringFromIndex:{2), "intValue"}];
              }

              else if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v17 = VRTraceErrorLogLevelToCSTR();
                v13 = *MEMORY[0x1E6986650];
                v14 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                  {
                    v15 = [objc_msgSend(v7 "description")];
                    *buf = 136315906;
                    v19 = v17;
                    v20 = 2080;
                    v21 = "+[SDPMediaLine fillImageStruct:imageStruct:]";
                    v22 = 1024;
                    v23 = 369;
                    v24 = 2080;
                    v25 = v15;
                    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parameter %s is not supported", buf, 0x26u);
                  }
                }

                else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
                {
                  v16 = [objc_msgSend(v7 "description")];
                  *buf = 136315906;
                  v19 = v17;
                  v20 = 2080;
                  v21 = "+[SDPMediaLine fillImageStruct:imageStruct:]";
                  v22 = 1024;
                  v23 = 369;
                  v24 = 2080;
                  v25 = v16;
                  _os_log_debug_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Parameter %s is not supported", buf, 0x26u);
                }
              }

              goto LABEL_10;
            }

            v11 = [objc_msgSend(v7 substringFromIndex:{2), "intValue"}];
            *&a4->var3 = v11;
            goto LABEL_17;
          }

          v10 = [objc_msgSend(objc_msgSend(v7 substringToIndex:{objc_msgSend(v7, "length") - 1), "substringFromIndex:", 3), "componentsSeparatedByString:", @":"}];
          if ([v10 count] == 3)
          {
            a4->var3 = [objc_msgSend(v10 objectAtIndexedSubscript:{0), "intValue"}];
            a4->var4 = [objc_msgSend(v10 objectAtIndexedSubscript:{1), "intValue"}];
            v11 = [objc_msgSend(v10 objectAtIndexedSubscript:{2), "intValue"}];
LABEL_17:
            a4->var5 = v11;
          }
        }

LABEL_10:
        v7 = [v5 nextObject];
      }

      while (v7);
    }
  }
}

+ (void)fillImageArray:(id)a3 imageArray:(imageTag *)a4
{
  if (a3 && [a3 count] >= 1)
  {
    v7 = 0;
    do
    {
      [a1 fillImageStruct:objc_msgSend(a3 imageStruct:{"objectAtIndexedSubscript:", v7++), a4++}];
    }

    while (v7 < [a3 count]);
  }
}

- (BOOL)supportImage:(id)a3 width:(int)a4 height:(int)a5 rate:(int)a6
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  [SDPMediaLine fillImageStruct:a3 imageStruct:&v14];
  v9 = 0;
  if (a4 >= v14 && SDWORD2(v14) >= a4)
  {
    if (DWORD1(v14))
    {
      v9 = (a4 - v14) % SDWORD1(v14) == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  if (a5 < SHIDWORD(v14) || SDWORD1(v15) < a5)
  {
    v12 = 0;
    if (v9)
    {
      return SDWORD2(v15) >= a6 && v12;
    }

    return 0;
  }

  if (v15)
  {
    v12 = (a5 - HIDWORD(v14)) % v15 == 0;
    if (v9)
    {
      return SDWORD2(v15) >= a6 && v12;
    }

    return 0;
  }

  v12 = 1;
  if (!v9)
  {
    return 0;
  }

  return SDWORD2(v15) >= a6 && v12;
}

- (BOOL)videoDisplayAttribute:(int *)a3 withHeight:(int *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ftdisplayattr:resolution"];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  attributes = self->_attributes;
  v8 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (!v8)
  {
    return 0;
  }

  v10 = v8;
  v11 = 0;
  v12 = *v39;
  *&v9 = 136315906;
  v26 = v9;
  v27 = attributes;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(attributes);
      }

      v14 = *(*(&v38 + 1) + 8 * i);
      if ([v14 hasPrefix:{v6, v26}])
      {
        v15 = [v14 componentsSeparatedByString:@"["];
        if ([v15 count] == 2)
        {
          v16 = [v15 objectAtIndexedSubscript:1];
          if ([v16 hasSuffix:@"]"])
          {
            v17 = [objc_msgSend(objc_msgSend(v16 substringToIndex:{objc_msgSend(v16, "length") - 1), "componentsSeparatedByString:", @", "), "objectEnumerator"}];
            v18 = [v17 nextObject];
            if (v18)
            {
              v19 = v18;
              do
              {
                if ([v19 hasPrefix:@"x="])
                {
                  *a3 = [objc_msgSend(v19 substringFromIndex:{2), "intValue"}];
                }

                else if ([v19 hasPrefix:@"y="])
                {
                  *a4 = [objc_msgSend(v19 substringFromIndex:{2), "intValue"}];
                }

                else if (VRTraceGetErrorLogLevelForModule() >= 8)
                {
                  v20 = VRTraceErrorLogLevelToCSTR();
                  v21 = *MEMORY[0x1E6986650];
                  v22 = *MEMORY[0x1E6986650];
                  if (*MEMORY[0x1E6986640] == 1)
                  {
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      v23 = [objc_msgSend(v19 "description")];
                      *buf = v26;
                      v30 = v20;
                      v31 = 2080;
                      v32 = "[SDPMediaLine videoDisplayAttribute:withHeight:]";
                      v33 = 1024;
                      v34 = 433;
                      v35 = 2080;
                      v36 = v23;
                      _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Parameter %s is not supported", buf, 0x26u);
                    }
                  }

                  else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                  {
                    v24 = [objc_msgSend(v19 "description")];
                    *buf = v26;
                    v30 = v20;
                    v31 = 2080;
                    v32 = "[SDPMediaLine videoDisplayAttribute:withHeight:]";
                    v33 = 1024;
                    v34 = 433;
                    v35 = 2080;
                    v36 = v24;
                    _os_log_debug_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Parameter %s is not supported", buf, 0x26u);
                  }
                }

                v19 = [v17 nextObject];
              }

              while (v19);
            }

            v11 = 1;
            attributes = v27;
          }
        }
      }
    }

    v10 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v38 objects:v37 count:16];
  }

  while (v10);
  return v11;
}

- (void)parseImageAttributeRules:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_payloads;
  v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v17)
  {
    v16 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = -[SDPMediaLine getVideoSendImages:](self, "getVideoSendImages:", -[SDPMediaLine videoImageAttributes:](self, "videoImageAttributes:", [v5 intValue]));
        if ([v6 count] >= 1)
        {
          v7 = 0;
          do
          {
            memset(v18, 170, sizeof(v18));
            v19 = -1431655766;
            v20 = -1431655766;
            +[SDPMediaLine fillImageStruct:imageStruct:](SDPMediaLine, "fillImageStruct:imageStruct:", [v6 objectAtIndexedSubscript:v7], v18);
            imageAttributeRules = self->_imageAttributeRules;
            v9 = [v5 intValue];
            LODWORD(v14) = v20;
            [(VCImageAttributeRules *)imageAttributeRules addRuleForVideoPayload:v9 withDirection:0 width:LODWORD(v18[1]) height:HIDWORD(v18[2]) frameRate:v19 priority:*(&v19 + 1) interface:v14];
            ++v7;
          }

          while (v7 < [v6 count]);
        }

        v10 = -[SDPMediaLine getVideoRecvImages:](self, "getVideoRecvImages:", -[SDPMediaLine videoImageAttributes:](self, "videoImageAttributes:", [v5 intValue]));
        if ([v10 count] >= 1)
        {
          v11 = 0;
          do
          {
            memset(v18, 170, sizeof(v18));
            v19 = -1431655766;
            v20 = -1431655766;
            +[SDPMediaLine fillImageStruct:imageStruct:](SDPMediaLine, "fillImageStruct:imageStruct:", [v10 objectAtIndexedSubscript:v11], v18);
            v12 = self->_imageAttributeRules;
            v13 = [v5 intValue];
            LODWORD(v14) = v20;
            [(VCImageAttributeRules *)v12 addRuleForVideoPayload:v13 withDirection:1 width:LODWORD(v18[1]) height:HIDWORD(v18[2]) frameRate:v19 priority:*(&v19 + 1) interface:v14];
            ++v11;
          }

          while (v11 < [v10 count]);
        }
      }

      v17 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v17);
  }
}

- (void)parseAttribute:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 componentsSeparatedByString:@";"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [objc_msgSend(v9 componentsSeparatedByString:{@":", "objectAtIndexedSubscript:", 0}];
        v11 = v10;
        if (self->_allowRTCPFB || ![v10 isEqualToString:@"rtcp-fb"])
        {
          if ([v11 isEqualToString:@"rtpID"])
          {
            self->_rtpId = [objc_msgSend(objc_msgSend(v9 componentsSeparatedByString:{@":", "objectAtIndex:", 1), "longLongValue"}];
          }

          else if ([v11 isEqualToString:@"rtcp"])
          {
            self->_rtcpPort = [objc_msgSend(objc_msgSend(v9 componentsSeparatedByString:{@":", "objectAtIndex:", 1), "intValue"}];
          }

          else
          {
            v12 = [v11 isEqualToString:@"imageattr"];
            [(NSMutableArray *)self->_attributes addObject:v9];
            if (v12)
            {
              [(SDPMediaLine *)self parseImageAttributeRules:v9];
            }
          }
        }

        else
        {
          self->_allowRTCPFB = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)parseMediaLine:(id)a3
{
  v5 = 0;
  while (([a3 parsingDone] & 1) == 0)
  {
    v6 = [a3 fieldType];
    if ((v6 - 1) >= 4)
    {
      if (v6 != 5)
      {
        return;
      }

      -[SDPMediaLine parseAttribute:](self, "parseAttribute:", [a3 fieldValue]);
      v5 = 1;
    }

    else
    {
      if (v5)
      {
        return;
      }

      v5 = 0;
    }

    [a3 nextLine];
  }
}

- (NSString)string
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:256];
  v4 = v3;
  if (self->_rtpId)
  {
    [v3 appendFormat:@"%@=%@:%u%@", @"a", @"rtpID", self->_rtpId, @"\r\n"];
  }

  if (self->_rtcpPort)
  {
    [v4 appendFormat:@"%@=%@:%@%@", @"a", @"rtcp", @"%VRTCP-PORT%", @"\r\n"];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  attributes = self->_attributes;
  v6 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(attributes);
        }

        [v4 appendFormat:@"%@=%@%@", @"a", *(*(&v12 + 1) + 8 * v9++), @"\r\n"];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)attributes countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  return v4;
}

@end