@interface CRLGLDataArrayBuffer
- ($94F468A8D4C62B317260615823C2B210)GLPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index;
- (BOOL)hasUpdatedData;
- (CRLGLDataArrayBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count bufferCount:(unint64_t)bufferCount;
- (NSString)description;
- (char)dataPointer;
- (float)GLfloatForAttribute:(id)attribute atIndex:(unint64_t)index;
- (unint64_t)p_bufferOffsetOfAttribute:(id)attribute atIndex:(unint64_t)index component:(unint64_t)component;
- (void)addIndexNeedsUpdate:(int64_t)update;
- (void)addIndexRangeNeedsUpdate:(_NSRange)update;
- (void)dealloc;
- (void)encodeArrayBufferWithEncoder:(id)encoder atIndex:(int64_t)index;
- (void)p_setupGLDataBufferIfNecessary;
- (void)p_setupMetalDataBufferIfNecessaryWithDevice:(id)device;
- (void)setGLPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLfloat:(float)lfloat forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)swapGPUDataBuffers;
- (void)updateDataBufferIfNecessary;
@end

@implementation CRLGLDataArrayBuffer

- (void)p_setupGLDataBufferIfNecessary
{
  if (!self->_dataBufferHasBeenSetup)
  {
    self->_gLDataBuffers = malloc_type_malloc(4 * [(CRLGLDataArrayBuffer *)self bufferCount], 0x100004052888210uLL);
    glGenBuffers([(CRLGLDataArrayBuffer *)self bufferCount], self->_gLDataBuffers);
    if (!*self->_gLDataBuffers)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101323C5C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101323C70();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101323CF8();
      }

      v3 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v3);
      }

      v4 = [NSString stringWithUTF8String:"[CRLGLDataArrayBuffer p_setupGLDataBufferIfNecessary]"];
      v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
      [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:531 isFatal:0 description:"Unable to generate buffer(s)!"];
    }

    if ([(CRLGLDataArrayBuffer *)self bufferCount])
    {
      v6 = 0;
      do
      {
        glBindBuffer(0x8892u, self->_gLDataBuffers[v6]);
        glBufferData(0x8892u, self->_vertexCount * [(CRLGLDataArrayBuffer *)self dataBufferEntrySize], self->_gLData, self->_bufferUsage);
        needsUpdateLastIndex = self->_needsUpdateLastIndex;
        self->_needsUpdateFirstIndex[v6] = -1;
        needsUpdateLastIndex[v6++] = -1;
      }

      while (v6 < [(CRLGLDataArrayBuffer *)self bufferCount]);
    }

    self->_dataBufferHasBeenSetup = 1;
  }
}

- (void)updateDataBufferIfNecessary
{
  [(CRLGLDataArrayBuffer *)self p_setupGLDataBufferIfNecessary];
  if ([(CRLGLDataArrayBuffer *)self hasUpdatedData])
  {
    if (self->_bufferUsage == 35044)
    {
      if (qword_101AD5A08 != -1)
      {
        sub_101323D20();
      }

      v3 = off_1019EDA60;
      if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
      {
        sub_101323D34(v3);
      }
    }

    else
    {
      if ([(CRLGLDataArrayBuffer *)self bufferCount])
      {
        v4 = 0;
        v5 = -1;
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v8 = self->_needsUpdateFirstIndex[v4];
          if (v6 >= v8)
          {
            v9 = self->_needsUpdateFirstIndex[v4];
          }

          else
          {
            v9 = v6;
          }

          v10 = v8 == -1;
          needsUpdateLastIndex = self->_needsUpdateLastIndex;
          v11 = needsUpdateLastIndex[v4];
          if (!v10)
          {
            v6 = v9;
          }

          if (v5 <= v11)
          {
            v12 = needsUpdateLastIndex[v4];
          }

          else
          {
            v12 = v5;
          }

          if (v11 != -1)
          {
            v5 = v12;
          }

          ++v4;
        }

        while (v4 < [(CRLGLDataArrayBuffer *)self bufferCount]);
        v13 = v5 + 1;
      }

      else
      {
        v13 = 0;
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v14 = v13 - v6;
      v15 = [(CRLGLDataArrayBuffer *)self dataBufferEntrySize]* v6;
      v16 = [(CRLGLDataArrayBuffer *)self dataBufferEntrySize]* v14;
      glBindBuffer(0x8892u, self->_gLDataBuffers[[(CRLGLDataArrayBuffer *)self currentBufferIndex]]);
      glBufferSubData(0x8892u, v15, v16, self->_gLData);
      needsUpdateFirstIndex = self->_needsUpdateFirstIndex;
      needsUpdateFirstIndex[[(CRLGLDataArrayBuffer *)self currentBufferIndex]] = -1;
      v18 = self->_needsUpdateLastIndex;
      v18[[(CRLGLDataArrayBuffer *)self currentBufferIndex]] = -1;
    }
  }
}

- (void)p_setupMetalDataBufferIfNecessaryWithDevice:(id)device
{
  deviceCopy = device;
  if (!self->_dataBufferHasBeenSetup)
  {
    v16 = deviceCopy;
    vertexCount = self->_vertexCount;
    v6 = [(CRLGLDataArrayBuffer *)self dataBufferEntrySize]* vertexCount;
    if (v6 > 0xFFF)
    {
      v7 = [NSMutableArray arrayWithCapacity:[(CRLGLDataArrayBuffer *)self bufferCount]];
      bufferCount = [(CRLGLDataArrayBuffer *)self bufferCount];
      v9 = v16;
      if (bufferCount)
      {
        for (i = 0; i < bufferCount2; ++i)
        {
          v11 = [v9 newBufferWithBytes:self->_gLData length:v6 options:0];
          [v7 addObject:v11];

          bufferCount2 = [(CRLGLDataArrayBuffer *)self bufferCount];
          v9 = v16;
        }
      }

      v13 = [v7 copy];
      metalDataBuffers = self->_metalDataBuffers;
      self->_metalDataBuffers = v13;

      self->_currentBufferIndex = 0;
      self->_usesMetalBuffer = 1;
      self->_dataBufferHasBeenSetup = 1;
      gLData = self->_gLData;
      if (gLData)
      {
        free(gLData);
        self->_gLData = 0;
      }
    }

    else
    {
      self->_bufferCount = 1;
      self->_dataBufferHasBeenSetup = 1;
    }

    deviceCopy = v16;
  }
}

- (unint64_t)p_bufferOffsetOfAttribute:(id)attribute atIndex:(unint64_t)index component:(unint64_t)component
{
  attributeCopy = attribute;
  dataBufferEntrySize = [(CRLGLDataArrayBuffer *)self dataBufferEntrySize];
  v10 = [attributeCopy bufferOffset] + dataBufferEntrySize * index;
  if (component)
  {
    v10 += sub_1001792DC([attributeCopy dataType]) * component;
  }

  return v10;
}

- (CRLGLDataArrayBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count bufferCount:(unint64_t)bufferCount
{
  attributesCopy = attributes;
  if ([attributesCopy count])
  {
    if (count)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101323D78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101323D8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323E14();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLGLDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:641 isFatal:0 description:"no attributes!"];

    if (count)
    {
LABEL_3:
      if (bufferCount)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101323E3C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101323E64();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101323EEC();
  }

  v12 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v12);
  }

  v13 = [NSString stringWithUTF8String:"[CRLGLDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:642 isFatal:0 description:"vertexCount==0!"];

  if (!bufferCount)
  {
LABEL_23:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101323F14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101323F3C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101323FC4();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v16 = [NSString stringWithUTF8String:"[CRLGLDataArrayBuffer initWithVertexAttributes:vertexCount:bufferCount:]"];
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:643 isFatal:0 description:"bufferCount==0!"];
  }

LABEL_32:
  v18 = [attributesCopy count];
  selfCopy = 0;
  if (bufferCount && count && v18)
  {
    v42.receiver = self;
    v42.super_class = CRLGLDataArrayBuffer;
    v20 = [(CRLGLDataArrayBuffer *)&v42 init];
    if (v20)
    {
      v21 = [[NSMutableArray alloc] initWithArray:attributesCopy];
      vertexAttributes = v20->_vertexAttributes;
      v20->_vertexAttributes = v21;

      v20->_vertexCount = count;
      v23 = objc_alloc_init(NSMutableDictionary);
      attributeOffsetsDictionary = v20->_attributeOffsetsDictionary;
      v20->_attributeOffsetsDictionary = v23;

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v25 = v20->_vertexAttributes;
      v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v37 = attributesCopy;
        v28 = 0;
        v29 = *v39;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v38 + 1) + 8 * i);
            [v31 setDataArrayBuffer:v20];
            v32 = sub_1001792DC([v31 dataType]);
            if (!v20->_bufferUsage)
            {
              v20->_bufferUsage = [v31 bufferUsage];
            }

            [v31 setBufferOffset:v28];
            v28 += (v32 * [v31 componentCount] + 3) & 0xFFFFFFFC;
            [v31 componentCount];
          }

          v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v27);
        v33 = v28;
        attributesCopy = v37;
      }

      else
      {
        v33 = 0;
      }

      v20->_dataBufferEntrySize = v33;
      if ([(CRLGLDataArrayBuffer *)v20 dataBufferEntrySize])
      {
        v20->_gLData = malloc_type_calloc(v20->_vertexCount, [(CRLGLDataArrayBuffer *)v20 dataBufferEntrySize], 0xBF81BB9EuLL);
      }

      v20->_bufferCount = bufferCount;
      v20->_needsUpdateFirstIndex = malloc_type_malloc(8 * bufferCount, 0x100004000313F17uLL);
      v34 = malloc_type_malloc(8 * bufferCount, 0x100004000313F17uLL);
      v20->_needsUpdateLastIndex = v34;
      needsUpdateFirstIndex = v20->_needsUpdateFirstIndex;
      do
      {
        *needsUpdateFirstIndex++ = -1;
        *v34++ = -1;
        --bufferCount;
      }

      while (bufferCount);
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  free(self->_needsUpdateFirstIndex);
  free(self->_needsUpdateLastIndex);
  if (self->_gLDataBuffers)
  {
    glDeleteBuffers([(CRLGLDataArrayBuffer *)self bufferCount], self->_gLDataBuffers);
    gLDataBuffers = self->_gLDataBuffers;
    if (gLDataBuffers)
    {
      free(gLDataBuffers);
      self->_gLDataBuffers = 0;
    }
  }

  gLData = self->_gLData;
  if (gLData)
  {
    free(gLData);
    self->_gLData = 0;
  }

  v5.receiver = self;
  v5.super_class = CRLGLDataArrayBuffer;
  [(CRLGLDataArrayBuffer *)&v5 dealloc];
}

- (void)addIndexRangeNeedsUpdate:(_NSRange)update
{
  length = update.length;
  location = update.location;
  [(CRLGLDataArrayBuffer *)self addIndexNeedsUpdate:?];

  [(CRLGLDataArrayBuffer *)self addIndexNeedsUpdate:length + location - 1];
}

- (void)addIndexNeedsUpdate:(int64_t)update
{
  currentBufferIndex = self->_currentBufferIndex;
  needsUpdateFirstIndex = self->_needsUpdateFirstIndex;
  needsUpdateLastIndex = self->_needsUpdateLastIndex;
  v6 = needsUpdateFirstIndex[currentBufferIndex];
  if (v6 >= update)
  {
    updateCopy = update;
  }

  else
  {
    updateCopy = needsUpdateFirstIndex[currentBufferIndex];
  }

  if (v6 == -1)
  {
    updateCopy2 = update;
  }

  else
  {
    updateCopy2 = updateCopy;
  }

  needsUpdateFirstIndex[currentBufferIndex] = updateCopy2;
  v9 = self->_currentBufferIndex;
  v10 = needsUpdateLastIndex[v9];
  if (v10 <= update)
  {
    updateCopy3 = update;
  }

  else
  {
    updateCopy3 = needsUpdateLastIndex[v9];
  }

  if (v10 == -1)
  {
    updateCopy4 = update;
  }

  else
  {
    updateCopy4 = updateCopy3;
  }

  needsUpdateLastIndex[v9] = updateCopy4;
}

- (void)encodeArrayBufferWithEncoder:(id)encoder atIndex:(int64_t)index
{
  v5 = self->_dataBufferEntrySize * self->_vertexCount;
  if (v5 <= 0x1000)
  {
    gLData = self->_gLData;
    encoderCopy = encoder;
    [encoderCopy setVertexBytes:gLData length:v5 atIndex:index];
  }

  else
  {
    metalDataBuffers = self->_metalDataBuffers;
    currentBufferIndex = self->_currentBufferIndex;
    encoderCopy2 = encoder;
    encoderCopy = [(NSArray *)metalDataBuffers objectAtIndexedSubscript:currentBufferIndex];
    [encoderCopy2 setVertexBuffer:? offset:? atIndex:?];
  }
}

- (void)swapGPUDataBuffers
{
  [(CRLGLDataArrayBuffer *)self setCurrentBufferIndex:([(CRLGLDataArrayBuffer *)self currentBufferIndex]+ 1) % [(CRLGLDataArrayBuffer *)self bufferCount]];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_vertexAttributes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setDataArrayBuffer:{self, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (char)dataPointer
{
  if (!self->_usesMetalBuffer)
  {
    return self->_gLData;
  }

  v2 = [(NSArray *)self->_metalDataBuffers objectAtIndexedSubscript:self->_currentBufferIndex];
  contents = [v2 contents];

  return contents;
}

- (BOOL)hasUpdatedData
{
  if (![(CRLGLDataArrayBuffer *)self bufferCount])
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = self->_needsUpdateFirstIndex[v3];
    v5 = v4 != -1;
    if (v4 != -1)
    {
      break;
    }

    ++v3;
  }

  while (v3 < [(CRLGLDataArrayBuffer *)self bufferCount]);
  return v5;
}

- (float)GLfloatForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  return sub_1001794D4(&gLData[v7], dataType, isNormalized, v11);
}

- (void)setGLfloat:(float)lfloat forAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v9 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  sub_10017971C(&gLData[v9], dataType, isNormalized, lfloat);

  [(CRLGLDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- ($94F468A8D4C62B317260615823C2B210)GLPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  v12 = sub_100179954(&gLData[v7], dataType, isNormalized, v11);
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setGLPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  v10 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  sub_100179BF0(&gLData[v10], dataType, isNormalized, var0, var1);

  [(CRLGLDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  v12 = sub_100179E8C(&gLData[v7], dataType, isNormalized, v11);
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)setGLPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  v11 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  sub_10017A17C(&gLData[v11], dataType, isNormalized, var0, var1, var2);

  [(CRLGLDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  v7 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  LODWORD(v11) = sub_10017A454(&gLData[v7], dataType, isNormalized).u32[0];
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (void)setGLPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var3 = d.var3;
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  v12 = [(CRLGLDataArrayBuffer *)self p_bufferOffsetOfAttribute:attributeCopy atIndex:index component:0];
  gLData = self->_gLData;
  dataType = [attributeCopy dataType];
  isNormalized = [attributeCopy isNormalized];

  sub_10017A6DC(&gLData[v12], dataType, isNormalized, var0, var1, var2, var3);

  [(CRLGLDataArrayBuffer *)self addIndexNeedsUpdate:index];
}

- (NSString)description
{
  v3 = +[NSMutableArray array];
  bufferUsage = self->_bufferUsage;
  switch(bufferUsage)
  {
    case 0x88E0u:
      v5 = @"GL_STREAM_DRAW";
      break;
    case 0x88E8u:
      v5 = @"GL_DYNAMIC_DRAW";
      break;
    case 0x88E4u:
      v5 = @"GL_STATIC_DRAW";
      break;
    default:
      v5 = @"UNKNOWN";
      break;
  }

  v6 = [NSString stringWithFormat:@"bufferUsage:%@", v5];
  [v3 addObject:v6];

  v7 = self->_vertexCount * [(CRLGLDataArrayBuffer *)self dataBufferEntrySize];
  if (v7 > 0x100000)
  {
    v8 = @"(%0.1fMB)";
    v9 = 0.000000953674316;
LABEL_12:
    v10 = [NSString stringWithFormat:v8, v9 * v7];
    goto LABEL_14;
  }

  if (v7 >= 0x401)
  {
    v8 = @"(%0.1fKB)";
    v9 = 0.0009765625;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_14:
  v11 = [NSString stringWithFormat:@"bufferSize:%ldB%@", v7, v10];
  [v3 addObject:v11];

  v12 = [NSString stringWithFormat:@"attributes:%@", self->_vertexAttributes];
  [v3 addObject:v12];

  if ([(CRLGLDataArrayBuffer *)self bufferCount]!= 1)
  {
    v13 = [NSString stringWithFormat:@"bufferCount:%d", [(CRLGLDataArrayBuffer *)self bufferCount]];
    [v3 addObject:v13];
  }

  v18.receiver = self;
  v18.super_class = CRLGLDataArrayBuffer;
  v14 = [(CRLGLDataArrayBuffer *)&v18 description];
  v15 = [v3 componentsJoinedByString:{@", "}];
  v16 = [NSString stringWithFormat:@"%@: {%@}", v14, v15];

  return v16;
}

@end