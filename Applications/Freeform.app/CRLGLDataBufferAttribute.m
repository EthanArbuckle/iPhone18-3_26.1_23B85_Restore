@interface CRLGLDataBufferAttribute
+ (id)attributeWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7;
- (CRLGLDataBufferAttribute)initWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7;
- (id)description;
@end

@implementation CRLGLDataBufferAttribute

+ (id)attributeWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7
{
  v8 = a6;
  v10 = *&a4;
  v11 = a3;
  v12 = [[CRLGLDataBufferAttribute alloc] initWithName:v11 bufferUsage:v10 dataType:a5 normalized:v8 componentCount:a7];

  return v12;
}

- (CRLGLDataBufferAttribute)initWithName:(id)a3 bufferUsage:(unsigned int)a4 dataType:(int64_t)a5 normalized:(BOOL)a6 componentCount:(unint64_t)a7
{
  v7 = a7;
  v12 = a3;
  v17.receiver = self;
  v17.super_class = CRLGLDataBufferAttribute;
  v13 = [(CRLGLDataBufferAttribute *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(CRLGLDataBufferAttribute *)v13 setName:v12];
    v15 = 5;
    if (a5 != 3)
    {
      v15 = a5;
    }

    v14->_dataType = v15;
    v14->_bufferUsage = a4;
    v14->_componentCount = v7;
    v14->_isNormalized = a6;
    v14->_locationInShader = -1;
  }

  return v14;
}

- (id)description
{
  v3 = +[NSMutableArray array];
  v4 = [(CRLGLDataBufferAttribute *)self name];
  v5 = [NSString stringWithFormat:@"%@", v4];
  [v3 addObject:v5];

  v6 = [(CRLGLDataBufferAttribute *)self dataType];
  if (v6 > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_101842740[v6];
  }

  v8 = [NSString stringWithFormat:@"dataType:%@", v7];
  [v3 addObject:v8];

  v9 = [NSString stringWithFormat:@"components:%d", [(CRLGLDataBufferAttribute *)self componentCount]];
  [v3 addObject:v9];

  v10 = [(CRLGLDataBufferAttribute *)self bufferUsage];
  switch(v10)
  {
    case 0x88E0u:
      v11 = @"GL_STREAM_DRAW";
      break;
    case 0x88E8u:
      v11 = @"GL_DYNAMIC_DRAW";
      break;
    case 0x88E4u:
      v11 = @"GL_STATIC_DRAW";
      break;
    default:
      v11 = @"UNKNOWN";
      break;
  }

  v12 = [NSString stringWithFormat:@"bufferUsage:%@", v11];
  [v3 addObject:v12];

  if ([(CRLGLDataBufferAttribute *)self isNormalized])
  {
    [v3 addObject:@"normalized"];
  }

  v17.receiver = self;
  v17.super_class = CRLGLDataBufferAttribute;
  v13 = [(CRLGLDataBufferAttribute *)&v17 description];
  v14 = [v3 componentsJoinedByString:{@", "}];
  v15 = [NSString stringWithFormat:@"%@: {%@}", v13, v14];

  return v15;
}

@end