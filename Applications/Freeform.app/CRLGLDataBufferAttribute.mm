@interface CRLGLDataBufferAttribute
+ (id)attributeWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count;
- (CRLGLDataBufferAttribute)initWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count;
- (id)description;
@end

@implementation CRLGLDataBufferAttribute

+ (id)attributeWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count
{
  normalizedCopy = normalized;
  v10 = *&usage;
  nameCopy = name;
  v12 = [[CRLGLDataBufferAttribute alloc] initWithName:nameCopy bufferUsage:v10 dataType:type normalized:normalizedCopy componentCount:count];

  return v12;
}

- (CRLGLDataBufferAttribute)initWithName:(id)name bufferUsage:(unsigned int)usage dataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count
{
  countCopy = count;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = CRLGLDataBufferAttribute;
  v13 = [(CRLGLDataBufferAttribute *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(CRLGLDataBufferAttribute *)v13 setName:nameCopy];
    typeCopy = 5;
    if (type != 3)
    {
      typeCopy = type;
    }

    v14->_dataType = typeCopy;
    v14->_bufferUsage = usage;
    v14->_componentCount = countCopy;
    v14->_isNormalized = normalized;
    v14->_locationInShader = -1;
  }

  return v14;
}

- (id)description
{
  v3 = +[NSMutableArray array];
  name = [(CRLGLDataBufferAttribute *)self name];
  v5 = [NSString stringWithFormat:@"%@", name];
  [v3 addObject:v5];

  dataType = [(CRLGLDataBufferAttribute *)self dataType];
  if (dataType > 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_101842740[dataType];
  }

  v8 = [NSString stringWithFormat:@"dataType:%@", v7];
  [v3 addObject:v8];

  v9 = [NSString stringWithFormat:@"components:%d", [(CRLGLDataBufferAttribute *)self componentCount]];
  [v3 addObject:v9];

  bufferUsage = [(CRLGLDataBufferAttribute *)self bufferUsage];
  switch(bufferUsage)
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