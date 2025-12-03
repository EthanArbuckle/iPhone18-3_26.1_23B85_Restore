@interface CRLGPUDataBuffer
+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size;
+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size device:(id)device;
+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count;
+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count device:(id)device;
+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount;
+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount device:(id)device;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border device:(id)device;
+ (void)p_addTransparentBorderInsetToTextureRect:(CGRect *)rect vertexRect:(CGRect *)vertexRect;
- ($94F468A8D4C62B317260615823C2B210)GLPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index;
- (BOOL)p_setAttributeUpdateData:(id *)data fromAttribute:(id)attribute;
- (CRLGPUDataBuffer)initWithVertexAttributes:(id)attributes meshSize:(CGSize)size bufferCount:(unint64_t)count;
- (CRLGPUDataBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount bufferCount:(unint64_t)bufferCount;
- (CRLGPUDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border;
- (NSString)description;
- (float)GLfloatForAttribute:(id)attribute atIndex:(unint64_t)index;
- (id)vertexAttributeNamed:(id)named;
- (void)dealloc;
- (void)disableGLElementArrayBuffer;
- (void)disableWithDevice:(id)device;
- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index advanceDynamicBuffer:(BOOL)buffer;
- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index range:(_NSRange)range advanceDynamicBuffer:(BOOL)buffer;
- (void)enableDataBuffer;
- (void)enableGLElementArrayBuffer;
- (void)encodeWithEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)p_setupElementArrayBufferIfNecessary;
- (void)p_setupGLElementArrayBufferIfNecessary;
- (void)setDataForAttribute:(id)attribute atIndex:(unint64_t)index fromAttribute:(id)fromAttribute dataBuffer:(id)buffer index:(unint64_t)a7;
- (void)setGLPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLfloat:(float)lfloat forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)teardown;
- (void)updateDataBufferAttributes:(id)attributes withBlock:(id)block;
- (void)updateDataBufferAttributesWithBlock:(id)block;
- (void)updateMetalDataBufferAttributes:(id)attributes withBlock:(id)block;
@end

@implementation CRLGPUDataBuffer

- (void)p_setupElementArrayBufferIfNecessary
{
  if (!self->_gLElementDataBufferWasSetup)
  {
    if (self->_gLElementData)
    {
      width = self->_gLElementMeshSize.width;
      height = self->_gLElementMeshSize.height;
      if (width != CGSizeZero.width || height != CGSizeZero.height)
      {
        if (height + -1.0 > 0.0)
        {
          v6 = 0;
          v7 = 0;
          v8 = 0.0;
          do
          {
            v9 = ++v7;
            if (width > 0.0)
            {
              v10 = 0.0;
              v11 = 1;
              do
              {
                [(CRLGPUDataBuffer *)self setGLushort:(v10 + v8 * width) forIndexElement:v6];
                v12 = v6 + 2;
                [(CRLGPUDataBuffer *)self setGLushort:(v10 + v9 * self->_gLElementMeshSize.width) forIndexElement:v6 + 1];
                v10 = v11;
                width = self->_gLElementMeshSize.width;
                ++v11;
                v6 += 2;
              }

              while (width > v10);
              height = self->_gLElementMeshSize.height;
              v6 = v12;
            }

            v8 = v7;
          }

          while (height + -1.0 > v9);
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      if (self->_gLElementQuadParticleCount)
      {
        if (self->_conformsToMetalProtocol)
        {
          [(CRLGPUDataBuffer *)self setMetalDrawMode:3];
        }

        else
        {
          [(CRLGPUDataBuffer *)self setDrawMode:4];
        }

        if (self->_gLElementQuadParticleCount)
        {
          v13 = 0;
          v14 = 0;
          do
          {
            [(CRLGPUDataBuffer *)self setGLushort:4 * (v14 & 0x3FFF) forIndexElement:v13];
            [(CRLGPUDataBuffer *)self setGLushort:(4 * v14) | 1u forIndexElement:v13 + 1];
            [(CRLGPUDataBuffer *)self setGLushort:(4 * v14) & 0xFFFC | 2u forIndexElement:v13 + 2];
            [(CRLGPUDataBuffer *)self setGLushort:4 * (v14 & 0x3FFF) forIndexElement:v13 + 3];
            [(CRLGPUDataBuffer *)self setGLushort:(4 * v14) | 2u forIndexElement:v13 + 4];
            v6 = v13 + 6;
            [(CRLGPUDataBuffer *)self setGLushort:(4 * v14++) | 3u forIndexElement:v13 + 5];
            v13 += 6;
          }

          while (v14 < self->_gLElementQuadParticleCount);
LABEL_24:
          if (v6 != self->_elementArrayCount)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101323FEC();
            }

            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_101324000();
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101324088();
            }

            v15 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              sub_10130DA10(v15);
            }

            v16 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer p_setupElementArrayBufferIfNecessary]"];
            v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
            [CRLAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:948 isFatal:0 description:"Element array count Sanity check"];
          }

          goto LABEL_34;
        }

LABEL_23:
        v6 = 0;
        goto LABEL_24;
      }
    }

LABEL_34:
    self->_gLElementDataBufferWasSetup = 1;
  }
}

- (void)p_setupGLElementArrayBufferIfNecessary
{
  if (!self->_gLElementDataBufferWasSetup)
  {
    if (self->_gLElementData)
    {
      [(CRLGPUDataBuffer *)self p_setupElementArrayBufferIfNecessary];
      glGenBuffers(1, &self->_gLElementDataBuffer);
      gLElementDataBuffer = self->_gLElementDataBuffer;
      if (!gLElementDataBuffer)
      {
        +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013240B0();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013240C4();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10132414C();
        }

        v4 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v4);
        }

        v5 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer p_setupGLElementArrayBufferIfNecessary]"];
        v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
        [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:971 isFatal:0 description:"Unable to generate buffer!"];

        gLElementDataBuffer = self->_gLElementDataBuffer;
      }

      glBindBuffer(0x8893u, gLElementDataBuffer);
      glBufferData(0x8893u, 2 * self->_elementArrayCount, self->_gLElementData, 0x88E4u);
      gLElementData = self->_gLElementData;
      if (gLElementData)
      {
        free(gLElementData);
        self->_gLElementData = 0;
      }
    }

    else
    {
      self->_gLElementDataBufferWasSetup = 1;
    }
  }
}

- (CRLGPUDataBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount bufferCount:(unint64_t)bufferCount
{
  attributesCopy = attributes;
  countCopy = count;
  if (count < 0xFFFF)
  {
    v65.receiver = self;
    v65.super_class = CRLGPUDataBuffer;
    v15 = [(CRLGPUDataBuffer *)&v65 init];
    v16 = v15;
    if (v15)
    {
      count = elementCount;
      [(CRLGPUDataBuffer *)v15 setDrawMode:5];
      [(CRLGPUDataBuffer *)v16 setMetalDrawMode:4];
      v17 = [[NSMutableArray alloc] initWithArray:attributesCopy];
      vertexAttributes = v16->_vertexAttributes;
      v16->_vertexAttributes = v17;

      v16->_vertexCount = count;
      v19 = objc_alloc_init(NSMutableArray);
      arrayBuffers = v16->_arrayBuffers;
      v16->_arrayBuffers = v19;

      v21 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSArray count](v16->_vertexAttributes, "count")}];
      attributeToArrayBuffersDictionary = v16->_attributeToArrayBuffersDictionary;
      v16->_attributeToArrayBuffersDictionary = v21;

      v16->_isDynamicallyBuffered = 1;
      v52 = attributesCopy;
      v53 = [NSMutableArray arrayWithArray:attributesCopy];
      if ([v53 count])
      {
        *&v23 = 67109378;
        v50 = v23;
        do
        {
          v24 = [v53 objectAtIndex:{0, v50}];
          v25 = +[NSMutableArray array];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v26 = v53;
          v27 = [v26 countByEnumeratingWithState:&v61 objects:v75 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v62;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v62 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v61 + 1) + 8 * i);
                bufferUsage = [v31 bufferUsage];
                if (bufferUsage == [v24 bufferUsage])
                {
                  [v25 addObject:v31];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v61 objects:v75 count:16];
            }

            while (v28);
          }

          if ([v24 bufferUsage] == 35044)
          {
            v16->_isDynamicallyBuffered = 0;
            bufferCount = 1;
          }

          v33 = [[CRLGLDataArrayBuffer alloc] initWithVertexAttributes:v25 vertexCount:countCopy bufferCount:bufferCount];
          v56 = v25;
          if (v33)
          {
            bufferCountCopy = bufferCount;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v34 = v25;
            v35 = [v34 countByEnumeratingWithState:&v57 objects:v66 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v58;
              do
              {
                for (j = 0; j != v36; j = j + 1)
                {
                  if (*v58 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v57 + 1) + 8 * j);
                  [v39 setDataBuffer:v16];
                  v40 = v16->_attributeToArrayBuffersDictionary;
                  name = [v39 name];
                  [(NSMutableDictionary *)v40 setObject:v33 forKey:name];
                }

                v36 = [v34 countByEnumeratingWithState:&v57 objects:v66 count:16];
              }

              while (v36);
            }

            [(NSMutableArray *)v16->_arrayBuffers addObject:v33];
            bufferCount = bufferCountCopy;
          }

          else
          {
            v42 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101324174();
            }

            v43 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v68 = v42;
              v69 = 2082;
              v70 = "[CRLGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]";
              v71 = 2082;
              v72 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m";
              v73 = 1024;
              v74 = 1023;
              _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Error creating array buffer!", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10132419C();
            }

            v44 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v47 = v44;
              v48 = +[CRLAssertionHandler packedBacktraceString];
              *buf = v50;
              v68 = v42;
              v69 = 2114;
              v70 = v48;
              _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v45 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]"];
            v46 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
            [CRLAssertionHandler handleFailureInFunction:v45 file:v46 lineNumber:1023 isFatal:0 description:"Error creating array buffer!"];
          }

          [v26 removeObjectsInArray:v56];
        }

        while ([v26 count]);
      }

      if (count)
      {
        v16->_elementArrayCount = count;
        v16->_gLElementData = malloc_type_calloc(count, 2uLL, 0x1000040BDFB0063uLL);
      }

      attributesCopy = v52;
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013241C4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013241D8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324260();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:988 isFatal:0 description:"Too many vertices!"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (CRLGPUDataBuffer)initWithVertexAttributes:(id)attributes meshSize:(CGSize)size bufferCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  attributesCopy = attributes;
  if (width <= 1.0 || height <= 1.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324288();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132429C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324324();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer initWithVertexAttributes:meshSize:bufferCount:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1045 isFatal:0 description:"Mesh size is not at least 2x2!"];
  }

  v14 = [(CRLGPUDataBuffer *)self initWithVertexAttributes:attributesCopy vertexCount:(width * height) indexElementCount:((width + width) * (height + -1.0)) bufferCount:count];
  v14->_gLElementMeshSize.width = width;
  v14->_gLElementMeshSize.height = height;

  return v14;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount
{
  attributesCopy = attributes;
  v9 = [[self alloc] initWithVertexAttributes:attributesCopy vertexCount:count indexElementCount:elementCount bufferCount:2];

  return v9;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  attributesCopy = attributes;
  v8 = [[self alloc] initWithVertexAttributes:attributesCopy meshSize:2 bufferCount:{width, height}];

  return v8;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count
{
  v6 = 4 * count;
  v7 = 6 * count;
  attributesCopy = attributes;
  v9 = [[self alloc] initWithVertexAttributes:attributesCopy vertexCount:v6 indexElementCount:v7 bufferCount:2];

  if (v9)
  {
    v9[10] = count;
  }

  return v9;
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute
{
  height = size.height;
  width = size.width;
  v17 = textureRect.size.width;
  v18 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v11 = rect.size.height;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  v15 = [self alloc];

  return [v15 initWithVertexRect:*&width textureRect:*&height meshSize:1 textureFlipped:v14 includeCenterAttribute:v13 addTransparentBorder:{v12, v11, x, y, v17, v18}];
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border
{
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  v19 = textureRect.size.width;
  v20 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  v17 = [self alloc];

  return [v17 initWithVertexRect:*&width textureRect:*&height meshSize:flippedCopy textureFlipped:v16 includeCenterAttribute:v15 addTransparentBorder:{v14, v13, x, y, v19, v20}];
}

+ (void)p_addTransparentBorderInsetToTextureRect:(CGRect *)rect vertexRect:(CGRect *)vertexRect
{
  if (rect)
  {
    if (vertexRect)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10132434C();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101324360();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101324410();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v6);
  }

  v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]");
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1097 isFatal:0 description:"invalid nil value for '%{public}s'", "textureRect"];

  if (!vertexRect)
  {
LABEL_13:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101324460();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324510();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:1098 isFatal:0 description:"invalid nil value for '%{public}s'", "vertexRect"];
  }

LABEL_22:
  width = rect->size.width;
  if (width != 0.0)
  {
    height = rect->size.height;
    if (height != 0.0)
    {
      v14 = vertexRect->size.width;
      if (v14 != 0.0)
      {
        v15 = vertexRect->size.height;
        if (v15 != 0.0)
        {
          v16 = v14 / width;
          x = rect->origin.x;
          y = rect->origin.y;
          v19 = v15 / height;
          if (CGRectGetMinX(*(&width - 2)) == 0.0)
          {
            v20 = -1.0;
          }

          else
          {
            v20 = 0.0;
          }

          if (CGRectGetMaxX(*rect) == 1.0)
          {
            v21 = 1.0;
          }

          else
          {
            v21 = 0.0;
          }

          if (CGRectGetMinY(*rect) == 0.0)
          {
            v22 = -1.0;
          }

          else
          {
            v22 = 0.0;
          }

          CGRectGetMaxY(*rect);
          v23 = v20 / v16 + CGRectGetMinX(*rect);
          v24 = v22 / v19 + CGRectGetMinY(*rect);
          v25 = v21 / v16 + CGRectGetMaxX(*rect);
          CGRectGetMaxY(*rect);
          v26 = sub_10011EC88(v23, v24, v25);
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v33 = CGRectGetMinX(*vertexRect) + v20;
          v34 = CGRectGetMinY(*vertexRect) + v22;
          v35 = CGRectGetMaxX(*vertexRect) + v21;
          CGRectGetMaxY(*vertexRect);
          v36 = sub_10011EC88(v33, v34, v35);
          rect->origin.x = v26;
          rect->origin.y = v28;
          rect->size.width = v30;
          rect->size.height = v32;
          vertexRect->origin.x = v36;
          vertexRect->origin.y = v37;
          vertexRect->size.width = v38;
          vertexRect->size.height = v39;
        }
      }
    }
  }
}

- (CRLGPUDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border
{
  flippedCopy = flipped;
  height_low = LODWORD(size.height);
  width_low = LODWORD(size.width);
  height = textureRect.size.height;
  width = textureRect.size.width;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  rectCopy = rect;
  textureRectCopy = textureRect;
  v44.origin.x = CGRectZero.origin.x;
  v44.origin.y = CGRectZero.origin.y;
  v44.size.width = CGRectZero.size.width;
  v44.size.height = CGRectZero.size.height;
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v15 = CGRectEqualToRect(v43, v44);
  if (flippedCopy)
  {
    [objc_opt_class() p_addTransparentBorderInsetToTextureRect:&textureRectCopy vertexRect:&rectCopy];
  }

  v16 = objc_alloc_init(NSMutableArray);
  v17 = [[CRLGLDataBufferAttribute alloc] initWithName:@"Position" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  [v16 addObject:v17];
  if (v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = [[CRLGLDataBufferAttribute alloc] initWithName:@"TexCoord" bufferUsage:35044 dataType:3 normalized:1 componentCount:2];
    [v16 addObject:v18];
  }

  if (height_low)
  {
    v19 = [[CRLGLDataBufferAttribute alloc] initWithName:@"Center" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
    [v16 addObject:v19];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(CRLGPUDataBuffer *)self initWithVertexAttributes:v16 meshSize:1 bufferCount:v41, v42, v16];
  if (v20)
  {
    v20->_positionAttributeIndex = [v36 indexOfObject:v17];
    if (!v15)
    {
      v20->_texCoordAttributeIndex = [v36 indexOfObject:v18];
    }

    if (height_low)
    {
      v20->_centerAttributeIndex = [v36 indexOfObject:v19];
    }

    v21 = 0;
    v22 = 0;
    v23 = sub_100120414(rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height);
    v37 = (v42 + -1.0);
    v25 = v24;
    v26 = (v41 + -1.0);
    v27 = v37;
    do
    {
      v28 = 0;
      do
      {
        v29 = sub_100121734(v28 / v26, v22 / v27, rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width);
        *&v29 = v29;
        *&v30 = v30;
        [(CRLGPUDataBuffer *)v20 setGLPoint2D:v17 forAttribute:v21 atIndex:v29, v30];
        if (!v15)
        {
          v33 = sub_100121734(v28 / v26, v22 / v27, textureRectCopy.origin.x, textureRectCopy.origin.y, textureRectCopy.size.width);
          *&v33 = v33;
          *&v34 = v34;
          if (width_low)
          {
            *&v34 = 1.0 - *&v34;
          }

          [(CRLGPUDataBuffer *)v20 setGLPoint2D:v18 forAttribute:v21 atIndex:v33, v34];
        }

        if (height_low)
        {
          *&v31 = v23;
          *&v32 = v25;
          [(CRLGPUDataBuffer *)v20 setGLPoint2D:v19 forAttribute:v21 atIndex:v31, v32];
        }

        ++v21;
        ++v28;
      }

      while (v28 <= (v41 + -1.0));
      ++v22;
    }

    while (v22 <= v37);
  }

  return v20;
}

- (void)enableDataBuffer
{
  if (self->_device)
  {
    self->_conformsToMetalProtocol = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = self->_arrayBuffers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v14 + 1) + 8 * i) enableArrayBufferWithDevice:{self->_device, v14}];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    if (!self->_metalElementData && self->_elementArrayCount)
    {
      [(CRLGPUDataBuffer *)self p_setupElementArrayBufferIfNecessary];
      v8 = [(MTLDevice *)self->_device newBufferWithBytes:self->_gLElementData length:2 * self->_elementArrayCount options:0];
      metalElementData = self->_metalElementData;
      self->_metalElementData = v8;

      gLElementData = self->_gLElementData;
      if (gLElementData)
      {
        free(gLElementData);
        self->_gLElementData = 0;
      }
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324538();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132454C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013245D4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer enableDataBuffer]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1233 isFatal:0 description:"Can't initialize metal buffers without a device!"];
  }
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount device:(id)device
{
  deviceCopy = device;
  attributesCopy = attributes;
  v13 = [[self alloc] initWithVertexAttributes:attributesCopy vertexCount:count indexElementCount:elementCount bufferCount:3];

  if (v13)
  {
    objc_storeStrong(v13 + 12, device);
  }

  return v13;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size device:(id)device
{
  height = size.height;
  width = size.width;
  attributesCopy = attributes;
  deviceCopy = device;
  if (width <= 1.0 || height <= 1.0)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013245FC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101324610();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101324698();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLGPUDataBuffer newDataBufferWithVertexAttributes:meshSize:device:]");
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1261 isFatal:0 description:"Mesh size is not at least 2x2!"];
  }

  v14 = [CRLGPUDataBuffer newDataBufferWithVertexAttributes:attributesCopy vertexCount:(width * height) indexElementCount:((width + width) * (height + -1.0)) device:deviceCopy];
  v15 = v14;
  if (v14)
  {
    v14[8] = width;
    v14[9] = height;
  }

  return v15;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count device:(id)device
{
  result = [CRLGPUDataBuffer newDataBufferWithVertexAttributes:attributes vertexCount:4 * count indexElementCount:6 * count device:device];
  if (result)
  {
    *(result + 10) = count;
  }

  return result;
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border device:(id)device
{
  attributeCopy = attribute;
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  v24 = textureRect.size.width;
  v25 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v15 = rect.size.height;
  v16 = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  attributeCopy2 = attribute;
  v21 = [[self alloc] initWithVertexRect:*&width textureRect:*&height meshSize:flippedCopy textureFlipped:v18 includeCenterAttribute:v17 addTransparentBorder:{v16, v15, x, y, v24, v25, v26, v27}];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(v21 + 12, attributeCopy);
  }

  return v22;
}

- (void)teardown
{
  if (self->_didTeardown)
  {
    return;
  }

  vertexAttributes = self->_vertexAttributes;
  self->_vertexAttributes = 0;

  arrayBuffers = self->_arrayBuffers;
  self->_arrayBuffers = 0;

  attributeToArrayBuffersDictionary = self->_attributeToArrayBuffersDictionary;
  self->_attributeToArrayBuffersDictionary = 0;

  gLElementData = self->_gLElementData;
  if (gLElementData)
  {
    free(gLElementData);
    self->_gLElementData = 0;
  }

  if (self->_gLElementDataBuffer)
  {
    glDeleteBuffers(1, &self->_gLElementDataBuffer);
  }

  if (self->_gLVertexArrayObjects[1])
  {
    v7 = 2;
LABEL_10:
    glDeleteVertexArrays(v7, self->_gLVertexArrayObjects);
    goto LABEL_11;
  }

  if (self->_gLVertexArrayObjects[0])
  {
    v7 = 1;
    goto LABEL_10;
  }

LABEL_11:
  metalElementData = self->_metalElementData;
  if (metalElementData)
  {
    self->_metalElementData = 0;
  }

  self->_didTeardown = 1;
}

- (void)dealloc
{
  [(CRLGPUDataBuffer *)self teardown];
  v3.receiver = self;
  v3.super_class = CRLGPUDataBuffer;
  [(CRLGPUDataBuffer *)&v3 dealloc];
}

- (NSString)description
{
  v3 = +[NSMutableArray array];
  v4 = [NSString stringWithFormat:@"vertexCount:%ld", [(CRLGPUDataBuffer *)self vertexCount]];
  [v3 addObject:v4];

  v5 = [NSString stringWithFormat:@"elementArrayCount:%ld", self->_elementArrayCount];
  [v3 addObject:v5];

  elementArrayCount = self->_elementArrayCount;
  if (elementArrayCount)
  {
    v7 = 2 * elementArrayCount;
    if (2 * elementArrayCount <= 0x100000)
    {
      if (v7 < 0x401)
      {
        v10 = 0;
        goto LABEL_8;
      }

      v8 = @"(%0.1fKB)";
      v9 = 0.0009765625;
    }

    else
    {
      v8 = @"(%0.1fMB)";
      v9 = 0.000000953674316;
    }

    v10 = [NSString stringWithFormat:v8, v9 * v7];
LABEL_8:
    v11 = [NSString stringWithFormat:@"elementBufferSize:%ldB%@", v7, v10];
    [v3 addObject:v11];
  }

  v12 = [NSString stringWithFormat:@"arrayBuffers:%@", self->_arrayBuffers];
  [v3 addObject:v12];

  if (self->_conformsToMetalProtocol)
  {
    metalDrawMode = [(CRLGPUDataBuffer *)self metalDrawMode];
    if (metalDrawMode < 5)
    {
      v14 = &off_101842770[metalDrawMode];
LABEL_14:
      v16 = *v14;
      goto LABEL_17;
    }

    v16 = @"Unknown";
  }

  else
  {
    drawMode = [(CRLGPUDataBuffer *)self drawMode];
    if (drawMode < 7)
    {
      v14 = &off_101842798[drawMode];
      goto LABEL_14;
    }

    v16 = @"UNKNOWN";
  }

LABEL_17:
  v17 = [NSString stringWithFormat:@"drawMode:%@", v16];
  [v3 addObject:v17];

  v22.receiver = self;
  v22.super_class = CRLGPUDataBuffer;
  v18 = [(CRLGPUDataBuffer *)&v22 description];
  v19 = [v3 componentsJoinedByString:{@", "}];
  v20 = [NSString stringWithFormat:@"%@: {%@}", v18, v19];

  return v20;
}

- (void)enableGLElementArrayBuffer
{
  [(CRLGPUDataBuffer *)self p_setupGLElementArrayBufferIfNecessary];
  if (self->_gLElementDataBufferWasSetup)
  {
    gLElementDataBuffer = self->_gLElementDataBuffer;

    glBindBuffer(0x8893u, gLElementDataBuffer);
  }
}

- (void)disableGLElementArrayBuffer
{
  if (self->_gLElementDataBufferWasSetup)
  {
    glBindBuffer(0x8893u, 0);
  }
}

- (void)disableWithDevice:(id)device
{
  metalElementData = self->_metalElementData;
  self->_metalElementData = 0;
}

- (void)encodeWithEncoder:(id)encoder atIndex:(unint64_t)index
{
  encoderCopy = encoder;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_arrayBuffers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      indexCopy = index;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        index = indexCopy + 1;
        [*(*(&v13 + 1) + 8 * v11) encodeArrayBufferWithEncoder:encoderCopy atIndex:{indexCopy, v13}];
        v11 = v11 + 1;
        ++indexCopy;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index range:(_NSRange)range advanceDynamicBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  length = range.length;
  location = range.location;
  encoderCopy = encoder;
  [(CRLGPUDataBuffer *)self enableDataBuffer];
  if (!self->_conformsToMetalProtocol)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013246C0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013246D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10132475C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer drawWithEncoder:atIndex:range:advanceDynamicBuffer:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:1502 isFatal:0 description:"Can only be called on a buffer that conforms to metal protocol!"];
  }

  [(CRLGPUDataBuffer *)self encodeWithEncoder:encoderCopy atIndex:index];
  if (self->_gLElementDataBufferWasSetup && self->_elementArrayCount)
  {
    height = self->_gLElementMeshSize.height;
    if (self->_gLElementMeshSize.width == CGSizeZero.width && height == CGSizeZero.height)
    {
      [encoderCopy drawIndexedPrimitives:-[CRLGPUDataBuffer metalDrawMode](self indexCount:"metalDrawMode" indexType:height) indexBuffer:length indexBufferOffset:{0, self->_metalElementData, 2 * location}];
    }

    else if (height + -1.0 > 0.0)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        [encoderCopy drawIndexedPrimitives:-[CRLGPUDataBuffer metalDrawMode](self indexCount:"metalDrawMode") indexType:(self->_gLElementMeshSize.width + self->_gLElementMeshSize.width) indexBuffer:0 indexBufferOffset:{self->_metalElementData, (self->_gLElementMeshSize.width * v17 + self->_gLElementMeshSize.width * v17)}];
        v19 = v18++;
        v17 += 2;
      }

      while (self->_gLElementMeshSize.height + -1.0 > v19);
    }
  }

  else
  {
    [encoderCopy drawPrimitives:-[CRLGPUDataBuffer metalDrawMode](self vertexStart:"metalDrawMode") vertexCount:{location, length}];
  }

  if ([(CRLGPUDataBuffer *)self isDynamicallyBuffered]&& bufferCopy)
  {
    arrayBuffers = self->_arrayBuffers;
    self->_currentBufferIndex = (self->_currentBufferIndex + 1) % 3;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = arrayBuffers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v27 + 1) + 8 * i);
          if ([v26 bufferCount] != 1)
          {
            [v26 setCurrentBufferIndex:self->_currentBufferIndex];
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v23);
    }
  }
}

- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index
{
  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    elementArrayCount = self->_vertexCount;
  }

  [(CRLGPUDataBuffer *)self drawWithEncoder:encoder atIndex:index range:0 advanceDynamicBuffer:elementArrayCount, 1];
}

- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index advanceDynamicBuffer:(BOOL)buffer
{
  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    elementArrayCount = self->_vertexCount;
  }

  [(CRLGPUDataBuffer *)self drawWithEncoder:encoder atIndex:index range:0 advanceDynamicBuffer:elementArrayCount, buffer];
}

- (float)GLfloatForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer GLfloatForAttribute:attributeCopy atIndex:index];
  v8 = v7;

  return v8;
}

- (void)setGLfloat:(float)lfloat forAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v8 = lfloat;
  [dataArrayBuffer setGLfloat:attributeCopy forAttribute:index atIndex:v8];
}

- ($94F468A8D4C62B317260615823C2B210)GLPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer GLPoint2DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (void)setGLPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v9 = var0;
  *&v10 = var1;
  [dataArrayBuffer setGLPoint2D:attributeCopy forAttribute:index atIndex:{v9, v10}];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer GLPoint3DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)setGLPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v10 = var0;
  *&v11 = var1;
  *&v12 = var2;
  [dataArrayBuffer setGLPoint3D:attributeCopy forAttribute:index atIndex:{v10, v11, v12}];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer GLPoint4DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)setGLPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var3 = d.var3;
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v11 = var0;
  *&v12 = var1;
  *&v13 = var2;
  *&v14 = var3;
  [dataArrayBuffer setGLPoint4D:attributeCopy forAttribute:index atIndex:{v11, v12, v13, v14}];
}

- (void)setDataForAttribute:(id)attribute atIndex:(unint64_t)index fromAttribute:(id)fromAttribute dataBuffer:(id)buffer index:(unint64_t)a7
{
  attributeCopy = attribute;
  fromAttributeCopy = fromAttribute;
  bufferCopy = buffer;
  componentCount = [attributeCopy componentCount];
  if (componentCount > 2)
  {
    if (componentCount == 3)
    {
      [bufferCopy GLPoint3DForAttribute:fromAttributeCopy atIndex:a7];
      [(CRLGPUDataBuffer *)self setGLPoint3D:attributeCopy forAttribute:index atIndex:?];
      goto LABEL_19;
    }

    if (componentCount == 4)
    {
      [bufferCopy GLPoint4DForAttribute:fromAttributeCopy atIndex:a7];
      [(CRLGPUDataBuffer *)self setGLPoint4D:attributeCopy forAttribute:index atIndex:?];
      goto LABEL_19;
    }
  }

  else
  {
    if (componentCount == 1)
    {
      [bufferCopy GLfloatForAttribute:fromAttributeCopy atIndex:a7];
      [(CRLGPUDataBuffer *)self setGLfloat:attributeCopy forAttribute:index atIndex:?];
      goto LABEL_19;
    }

    if (componentCount == 2)
    {
      [bufferCopy GLPoint2DForAttribute:fromAttributeCopy atIndex:a7];
      [(CRLGPUDataBuffer *)self setGLPoint2D:attributeCopy forAttribute:index atIndex:?];
      goto LABEL_19;
    }
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_101324784();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_101324798();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101324820();
  }

  v16 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v16);
  }

  v17 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer setDataForAttribute:atIndex:fromAttribute:dataBuffer:index:]"];
  v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
  [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:1626 isFatal:0 description:"Unknown attribute size!"];

LABEL_19:
}

- (id)vertexAttributeNamed:(id)named
{
  namedCopy = named;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  vertexAttributes = [(CRLGPUDataBuffer *)self vertexAttributes];
  v6 = [vertexAttributes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(vertexAttributes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:namedCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [vertexAttributes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateDataBufferAttributesWithBlock:(id)block
{
  blockCopy = block;
  vertexAttributes = [(CRLGPUDataBuffer *)self vertexAttributes];
  [(CRLGPUDataBuffer *)self updateMetalDataBufferAttributes:vertexAttributes withBlock:blockCopy];
}

- (void)updateMetalDataBufferAttributes:(id)attributes withBlock:(id)block
{
  attributesCopy = attributes;
  blockCopy = block;
  if (attributesCopy && [attributesCopy count])
  {
    self->_isUpdatingRawDataBuffer = 1;
    v7 = [attributesCopy count];
    v8 = malloc_type_calloc(0x58uLL, v7, 0xBB058E14uLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [attributesCopy objectAtIndex:v10];
        [(CRLGPUDataBuffer *)self p_setAttributeUpdateData:v11 fromAttribute:v12];

        ++v10;
        v11 += 88;
      }

      while (v7 != v10);
    }

    blockCopy[2](blockCopy, v9, v7);
    self->_isUpdatingRawDataBuffer = 0;
    free(v9);
  }
}

- (void)updateDataBufferAttributes:(id)attributes withBlock:(id)block
{
  attributesCopy = attributes;
  blockCopy = block;
  if (attributesCopy && [attributesCopy count])
  {
    self->_isUpdatingRawDataBuffer = 1;
    v7 = [attributesCopy count];
    v8 = malloc_type_calloc(0x58uLL, v7, 0xCE15204CuLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [attributesCopy objectAtIndex:v10];
        [(CRLGPUDataBuffer *)self p_setAttributeUpdateData:v11 fromAttribute:v12];

        ++v10;
        v11 += 88;
      }

      while (v7 != v10);
      blockCopy[2](blockCopy, v9, v7);
      v13 = 0;
      self->_isUpdatingRawDataBuffer = 0;
      v14 = v9 + 9;
      do
      {
        if (*(v14 - 2))
        {
          v16 = *(v14 - 1);
          v15 = *v14;
          v17 = [attributesCopy objectAtIndex:v13];
          dataArrayBuffer = [v17 dataArrayBuffer];
          [dataArrayBuffer addIndexRangeNeedsUpdate:{v16, v15}];
        }

        ++v13;
        v14 += 11;
      }

      while (v7 != v13);
    }

    else
    {
      blockCopy[2](blockCopy, v8, 0);
      self->_isUpdatingRawDataBuffer = 0;
    }

    free(v9);
  }
}

- (BOOL)p_setAttributeUpdateData:(id *)data fromAttribute:(id)attribute
{
  attributeCopy = attribute;
  v7 = attributeCopy;
  isUpdatingRawDataBuffer = self->_isUpdatingRawDataBuffer;
  if (isUpdatingRawDataBuffer)
  {
    dataArrayBuffer = [attributeCopy dataArrayBuffer];
    data->var3 = [dataArrayBuffer dataPointer];

    data->var0 = [v7 dataType];
    data->var1 = [v7 componentCount];
    data->var2 = [v7 isNormalized];
    data->var4 = [v7 bufferOffset];
    dataArrayBuffer2 = [v7 dataArrayBuffer];
    data->var5 = [dataArrayBuffer2 dataBufferEntrySize];

    dataArrayBuffer3 = [v7 dataArrayBuffer];
    data->var6 = [dataArrayBuffer3 vertexCount];

    data->var7 = 1;
    var6 = data->var6;
    data->var8.location = 0;
    data->var8.length = var6;
    data->var9 = sub_1001792DC([v7 dataType]);
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101324848();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10132485C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013248E4();
    }

    v13 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v13);
    }

    v14 = [NSString stringWithUTF8String:"[CRLGPUDataBuffer p_setAttributeUpdateData:fromAttribute:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLGLDataBuffer.m"];
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:1703 isFatal:0 description:"Can only be called from within update block!"];
  }

  return isUpdatingRawDataBuffer;
}

@end