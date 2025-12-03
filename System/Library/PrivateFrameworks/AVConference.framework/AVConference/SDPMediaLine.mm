@interface SDPMediaLine
+ (void)fillImageArray:(id)array imageArray:(imageTag *)imageArray;
+ (void)fillImageStruct:(id)struct imageStruct:(imageTag *)imageStruct;
+ (void)fillImageStructWithDictionary:(id)dictionary forInterface:(int)interface imageStruct:(imageTag *)struct;
- (BOOL)supportImage:(id)image width:(int)width height:(int)height rate:(int)rate;
- (BOOL)videoDisplayAttribute:(int *)attribute withHeight:(int *)height;
- (NSString)string;
- (SDPMediaLine)init;
- (SDPMediaLine)initWithParser:(id)parser rtpPort:(int)port payloads:(id)payloads;
- (id)getVideoRecvImages:(id)images;
- (id)getVideoSendImages:(id)images;
- (id)videoImageAttributes:(int)attributes;
- (void)addImageAttributeRules:(id)rules transportType:(unsigned __int8)type payload:(int)payload direction:(int)direction attributeString:(id)string;
- (void)addPayload:(int)payload rtpMap:(id)map formatParameters:(id)parameters;
- (void)addVideoImageAttr:(id)attr ForPayload:(int)payload;
- (void)addWifiRules:(id)rules cellularRules:(id)cellularRules payload:(int)payload direction:(int)direction;
- (void)appendPayload:(int)payload dimensions:(imageTag *)dimensions direction:(int)direction attributeString:(id)string;
- (void)createVideoImageAttr:(int)attr direction:(int)direction dimensions:(imageTag *)dimensions count:(int)count;
- (void)dealloc;
- (void)parseAttribute:(id)attribute;
- (void)parseImageAttributeRules:(id)rules;
- (void)parseMediaLine:(id)line;
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

- (SDPMediaLine)initWithParser:(id)parser rtpPort:(int)port payloads:(id)payloads
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = SDPMediaLine;
  v8 = [(SDPMediaLine *)&v10 init];
  if (v8)
  {
    v8->_attributes = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v8->_imageAttributeRules = objc_opt_new();
    v8->_payloads = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:payloads];
    v8->_rtpPort = port;
    [(SDPMediaLine *)v8 parseMediaLine:parser];
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

- (void)addPayload:(int)payload rtpMap:(id)map formatParameters:(id)parameters
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:*&payload];
  if (([(NSMutableArray *)self->_payloads containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_payloads addObject:v8];
  }

  if (([(NSMutableArray *)self->_attributes containsObject:map]& 1) == 0)
  {
    [(NSMutableArray *)self->_attributes addObject:map];
    [(NSMutableArray *)self->_attributes addObject:parameters];
  }
}

- (void)addVideoImageAttr:(id)attr ForPayload:(int)payload
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageattr:%d", *&payload];
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
          -[NSMutableArray addObject:](self->_attributes, "addObject:", [v12 stringByAppendingFormat:@" %@", attr]);
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

  -[NSMutableArray addObject:](self->_attributes, "addObject:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v6, attr]);
}

- (void)appendPayload:(int)payload dimensions:(imageTag *)dimensions direction:(int)direction attributeString:(id)string
{
  var0 = dimensions->var0;
  if (dimensions->var3 * var0 * dimensions->var6)
  {
    v8 = *&direction;
    v10 = *&payload;
    var2 = dimensions->var2;
    if (var0 == var2)
    {
      [string appendFormat:@" [x=%d, ", dimensions->var0, v17, v19];
    }

    else
    {
      [string appendFormat:@" [x=[%d:%d:%d], ", var0, dimensions->var1, var2];
    }

    var3 = dimensions->var3;
    var5 = dimensions->var5;
    if (var3 == var5)
    {
      [string appendFormat:@"y=%d, ", dimensions->var3, v18, v20];
    }

    else
    {
      [string appendFormat:@"y=[%d:%d:%d], ", var3, dimensions->var4, var5];
    }

    [string appendFormat:@"fps=%d", dimensions->var6];
    if (dimensions->var8 == 1)
    {
      [string appendString:{@", i=1"}];
    }

    var7 = dimensions->var7;
    if (var7 == 0.5)
    {
      [string appendString:@"]"];
    }

    else
    {
      [string appendFormat:@", q=%.2f]", var7];
    }

    LODWORD(v16) = dimensions->var8;
    [(VCImageAttributeRules *)self->_imageAttributeRules addRuleForVideoPayload:v10 withDirection:v8 width:dimensions->var2 height:dimensions->var5 frameRate:dimensions->var6 priority:dimensions->var7 interface:v16];
  }
}

- (void)addImageAttributeRules:(id)rules transportType:(unsigned __int8)type payload:(int)payload direction:(int)direction attributeString:(id)string
{
  v8 = *&direction;
  v9 = *&payload;
  v29 = *MEMORY[0x1E69E9840];
  memset(v21, 170, sizeof(v21));
  v22 = -1431655766;
  if (type == 1)
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
  v13 = [rules countByEnumeratingWithState:&v25 objects:v24 count:16];
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
          objc_enumerationMutation(rules);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        LODWORD(v21[1]) = [v17 iWidth];
        LODWORD(v21[0]) = v21[1];
        iHeight = [v17 iHeight];
        LODWORD(v21[2]) = 0;
        HIDWORD(v21[2]) = iHeight;
        HIDWORD(v21[1]) = iHeight;
        HIDWORD(v21[0]) = 0;
        [v17 fPref];
        HIDWORD(v22) = v19;
        [v17 fRate];
        LODWORD(v22) = v20;
        [(SDPMediaLine *)self appendPayload:v9 dimensions:v21 direction:v8 attributeString:string];
      }

      v14 = [rules countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v14);
  }
}

- (void)addWifiRules:(id)rules cellularRules:(id)cellularRules payload:(int)payload direction:(int)direction
{
  v6 = *&direction;
  v7 = *&payload;
  if (rules && [rules count] || cellularRules && objc_msgSend(cellularRules, "count"))
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
    if (rules && [rules count])
    {
      [(SDPMediaLine *)self addImageAttributeRules:rules transportType:1 payload:v7 direction:v6 attributeString:v13];
    }

    if (cellularRules && [cellularRules count])
    {
      [(SDPMediaLine *)self addImageAttributeRules:cellularRules transportType:2 payload:v7 direction:v6 attributeString:v13];
    }

    [(SDPMediaLine *)self addVideoImageAttr:v13 ForPayload:v7];
  }
}

- (void)createVideoImageAttr:(int)attr direction:(int)direction dimensions:(imageTag *)dimensions count:(int)count
{
  if (dimensions)
  {
    LODWORD(v6) = count;
    if (count >= 1)
    {
      dimensionsCopy = dimensions;
      v8 = *&direction;
      v9 = *&attr;
      v11 = "recv";
      if (!direction)
      {
        v11 = "send";
      }

      v12 = [MEMORY[0x1E696AD60] stringWithFormat:@"%s", v11];
      v6 = v6;
      do
      {
        [(SDPMediaLine *)self appendPayload:v9 dimensions:dimensionsCopy++ direction:v8 attributeString:v12];
        --v6;
      }

      while (v6);

      [(SDPMediaLine *)self addVideoImageAttr:v12 ForPayload:v9];
    }
  }
}

- (id)videoImageAttributes:(int)attributes
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"imageattr:%d", *&attributes];
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

- (id)getVideoSendImages:(id)images
{
  v22 = *MEMORY[0x1E69E9840];
  if (!images)
  {
    return 0;
  }

  objectEnumerator = [images objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v7 = 0;
    *&v5 = 136315650;
    v15 = v5;
    do
    {
      if ([nextObject2 isEqualToString:{@"send", v15}])
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

      else if ([nextObject2 isEqualToString:@"recv"])
      {
        if (v7)
        {
          return v7;
        }
      }

      else if (v7 && [nextObject2 hasPrefix:@"["] && (objc_msgSend(nextObject2, "hasSuffix:", @"]") & 1) != 0)
      {
        v8 = [objc_msgSend(nextObject2 substringToIndex:{objc_msgSend(nextObject2, "length") - 1), "substringFromIndex:", 1}];
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

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getVideoRecvImages:(id)images
{
  v22 = *MEMORY[0x1E69E9840];
  if (!images)
  {
    return 0;
  }

  objectEnumerator = [images objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v7 = 0;
    *&v5 = 136315650;
    v15 = v5;
    do
    {
      if ([nextObject2 isEqualToString:{@"recv", v15}])
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

      else if ([nextObject2 isEqualToString:@"send"])
      {
        if (v7)
        {
          return v7;
        }
      }

      else if (v7 && [nextObject2 hasPrefix:@"["] && (objc_msgSend(nextObject2, "hasSuffix:", @"]") & 1) != 0)
      {
        v8 = [objc_msgSend(nextObject2 substringToIndex:{objc_msgSend(nextObject2, "length") - 1), "substringFromIndex:", 1}];
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

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)fillImageStructWithDictionary:(id)dictionary forInterface:(int)interface imageStruct:(imageTag *)struct
{
  if ([dictionary objectForKeyedSubscript:@"width"] && objc_msgSend(dictionary, "objectForKeyedSubscript:", @"height") && objc_msgSend(dictionary, "objectForKeyedSubscript:", @"frameRate"))
  {
    if ([dictionary objectForKeyedSubscript:@"priority"])
    {
      v8 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"width", "intValue"}];
      struct->var0 = v8;
      struct->var1 = 0;
      struct->var2 = v8;
      v9 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"height", "intValue"}];
      struct->var3 = v9;
      struct->var4 = 0;
      struct->var5 = v9;
      struct->var6 = [objc_msgSend(dictionary objectForKeyedSubscript:{@"frameRate", "intValue"}];
      [objc_msgSend(dictionary objectForKeyedSubscript:{@"priority", "floatValue"}];
      struct->var7 = v10;
      struct->var8 = interface;
    }
  }
}

+ (void)fillImageStruct:(id)struct imageStruct:(imageTag *)imageStruct
{
  v26 = *MEMORY[0x1E69E9840];
  if (struct)
  {
    *&imageStruct->var7 = 0x23F000000;
    objectEnumerator = [struct objectEnumerator];
    nextObject = [objectEnumerator nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      do
      {
        if ([nextObject2 hasPrefix:@"x=["])
        {
          v8 = [objc_msgSend(objc_msgSend(nextObject2 substringToIndex:{objc_msgSend(nextObject2, "length") - 1), "substringFromIndex:", 3), "componentsSeparatedByString:", @":"}];
          if ([v8 count] == 3)
          {
            imageStruct->var0 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
            imageStruct->var1 = [objc_msgSend(v8 objectAtIndexedSubscript:{1), "intValue"}];
            v9 = [objc_msgSend(v8 objectAtIndexedSubscript:{2), "intValue"}];
LABEL_9:
            imageStruct->var2 = v9;
          }
        }

        else
        {
          if ([nextObject2 hasPrefix:@"x="])
          {
            v9 = [objc_msgSend(nextObject2 substringFromIndex:{2), "intValue"}];
            *&imageStruct->var0 = v9;
            goto LABEL_9;
          }

          if (![nextObject2 hasPrefix:@"y=["])
          {
            if (![nextObject2 hasPrefix:@"y="])
            {
              if ([nextObject2 hasPrefix:@"fps="])
              {
                imageStruct->var6 = [objc_msgSend(nextObject2 substringFromIndex:{4), "intValue"}];
              }

              else if ([nextObject2 hasPrefix:@"q="])
              {
                [objc_msgSend(nextObject2 substringFromIndex:{2), "floatValue"}];
                imageStruct->var7 = v12;
              }

              else if ([nextObject2 hasPrefix:@"i="])
              {
                imageStruct->var8 = [objc_msgSend(nextObject2 substringFromIndex:{2), "intValue"}];
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
                    v15 = [objc_msgSend(nextObject2 "description")];
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
                  v16 = [objc_msgSend(nextObject2 "description")];
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

            v11 = [objc_msgSend(nextObject2 substringFromIndex:{2), "intValue"}];
            *&imageStruct->var3 = v11;
            goto LABEL_17;
          }

          v10 = [objc_msgSend(objc_msgSend(nextObject2 substringToIndex:{objc_msgSend(nextObject2, "length") - 1), "substringFromIndex:", 3), "componentsSeparatedByString:", @":"}];
          if ([v10 count] == 3)
          {
            imageStruct->var3 = [objc_msgSend(v10 objectAtIndexedSubscript:{0), "intValue"}];
            imageStruct->var4 = [objc_msgSend(v10 objectAtIndexedSubscript:{1), "intValue"}];
            v11 = [objc_msgSend(v10 objectAtIndexedSubscript:{2), "intValue"}];
LABEL_17:
            imageStruct->var5 = v11;
          }
        }

LABEL_10:
        nextObject2 = [objectEnumerator nextObject];
      }

      while (nextObject2);
    }
  }
}

+ (void)fillImageArray:(id)array imageArray:(imageTag *)imageArray
{
  if (array && [array count] >= 1)
  {
    v7 = 0;
    do
    {
      [self fillImageStruct:objc_msgSend(array imageStruct:{"objectAtIndexedSubscript:", v7++), imageArray++}];
    }

    while (v7 < [array count]);
  }
}

- (BOOL)supportImage:(id)image width:(int)width height:(int)height rate:(int)rate
{
  v17 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    return 0;
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  [SDPMediaLine fillImageStruct:image imageStruct:&v14];
  v9 = 0;
  if (width >= v14 && SDWORD2(v14) >= width)
  {
    if (DWORD1(v14))
    {
      v9 = (width - v14) % SDWORD1(v14) == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  if (height < SHIDWORD(v14) || SDWORD1(v15) < height)
  {
    v12 = 0;
    if (v9)
    {
      return SDWORD2(v15) >= rate && v12;
    }

    return 0;
  }

  if (v15)
  {
    v12 = (height - HIDWORD(v14)) % v15 == 0;
    if (v9)
    {
      return SDWORD2(v15) >= rate && v12;
    }

    return 0;
  }

  v12 = 1;
  if (!v9)
  {
    return 0;
  }

  return SDWORD2(v15) >= rate && v12;
}

- (BOOL)videoDisplayAttribute:(int *)attribute withHeight:(int *)height
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
            nextObject = [v17 nextObject];
            if (nextObject)
            {
              nextObject2 = nextObject;
              do
              {
                if ([nextObject2 hasPrefix:@"x="])
                {
                  *attribute = [objc_msgSend(nextObject2 substringFromIndex:{2), "intValue"}];
                }

                else if ([nextObject2 hasPrefix:@"y="])
                {
                  *height = [objc_msgSend(nextObject2 substringFromIndex:{2), "intValue"}];
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
                      v23 = [objc_msgSend(nextObject2 "description")];
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
                    v24 = [objc_msgSend(nextObject2 "description")];
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

                nextObject2 = [v17 nextObject];
              }

              while (nextObject2);
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

- (void)parseImageAttributeRules:(id)rules
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
            intValue = [v5 intValue];
            LODWORD(v14) = v20;
            [(VCImageAttributeRules *)imageAttributeRules addRuleForVideoPayload:intValue withDirection:0 width:LODWORD(v18[1]) height:HIDWORD(v18[2]) frameRate:v19 priority:*(&v19 + 1) interface:v14];
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
            intValue2 = [v5 intValue];
            LODWORD(v14) = v20;
            [(VCImageAttributeRules *)v12 addRuleForVideoPayload:intValue2 withDirection:1 width:LODWORD(v18[1]) height:HIDWORD(v18[2]) frameRate:v19 priority:*(&v19 + 1) interface:v14];
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

- (void)parseAttribute:(id)attribute
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [attribute componentsSeparatedByString:@";"];
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

- (void)parseMediaLine:(id)line
{
  v5 = 0;
  while (([line parsingDone] & 1) == 0)
  {
    fieldType = [line fieldType];
    if ((fieldType - 1) >= 4)
    {
      if (fieldType != 5)
      {
        return;
      }

      -[SDPMediaLine parseAttribute:](self, "parseAttribute:", [line fieldValue]);
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

    [line nextLine];
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