@interface SKTileStamp
+ (id)tileStampWithWidth:(unint64_t)width height:(unint64_t)height tileData:(unsigned int *)data;
- (BOOL)isEqualToNode:(id)node;
- (SKTileStamp)init;
- (SKTileStamp)initWithCoder:(id)coder;
- (SKTileStamp)initWithWidth:(unint64_t)width height:(unint64_t)height tileData:(unsigned int *)data;
- (id)tileDefinitionsForTileMap:(id)map;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setTileData:(unsigned int *)data size:(unint64_t)size;
@end

@implementation SKTileStamp

- (void)dealloc
{
  free(self->_tileData);
  self->_tileData = 0;
  v3.receiver = self;
  v3.super_class = SKTileStamp;
  [(SKTileStamp *)&v3 dealloc];
}

- (SKTileStamp)init
{
  v3.receiver = self;
  v3.super_class = SKTileStamp;
  result = [(SKTileStamp *)&v3 init];
  if (result)
  {
    *&result->_columns = 0;
    result->_tileData = 0;
  }

  return result;
}

- (SKTileStamp)initWithWidth:(unint64_t)width height:(unint64_t)height tileData:(unsigned int *)data
{
  heightCopy = height;
  widthCopy = width;
  v11.receiver = self;
  v11.super_class = SKTileStamp;
  v8 = [(SKTileStamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_columns = widthCopy;
    v8->_rows = heightCopy;
    [(SKTileStamp *)v8 setTileData:data size:4 * widthCopy * heightCopy];
  }

  return v9;
}

+ (id)tileStampWithWidth:(unint64_t)width height:(unint64_t)height tileData:(unsigned int *)data
{
  v5 = [[SKTileStamp alloc] initWithWidth:width height:height tileData:data];

  return v5;
}

- (SKTileStamp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKTileStamp;
  v5 = [(SKTileStamp *)&v9 init];
  if (v5)
  {
    v5->_columns = [coderCopy decodeIntegerForKey:@"_columns"];
    v5->_rows = [coderCopy decodeIntegerForKey:@"_rows"];
    v8 = 0;
    v6 = [coderCopy decodeBytesForKey:@"_tileData" returnedLength:&v8];
    if (v8 == 4 * v5->_rows * v5->_columns)
    {
      [(SKTileStamp *)v5 setTileData:v6 size:?];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:self->_columns forKey:@"_columns"];
  [coderCopy encodeInteger:self->_rows forKey:@"_rows"];
  tileData = self->_tileData;
  if (tileData)
  {
    [coderCopy encodeBytes:tileData length:4 * self->_columns * self->_rows forKey:@"_tileData"];
  }
}

- (BOOL)isEqualToNode:(id)node
{
  nodeCopy = node;
  v5 = nodeCopy;
  if (self == nodeCopy)
  {
    v10 = 1;
  }

  else
  {
    v6 = nodeCopy;
    v7 = v6;
    columns = self->_columns;
    v10 = columns == v6->_columns && (rows = self->_rows, rows == v6->_rows) && memcmp(self->_tileData, v6->_tileData, rows * columns) == 0;
  }

  return v10;
}

- (void)setTileData:(unsigned int *)data size:(unint64_t)size
{
  free(self->_tileData);
  v7 = malloc_type_malloc(size, 0x100004052888210uLL);
  self->_tileData = v7;

  memcpy(v7, data, size);
}

- (id)tileDefinitionsForTileMap:(id)map
{
  mapCopy = map;
  array = [MEMORY[0x277CBEB18] array];
  v6 = self->_rows * self->_columns;
  v7 = objc_alloc_init(SKTileDefinition);
  if (v6)
  {
    v8 = 0;
    v9 = 4 * v6;
    do
    {
      v10 = [mapCopy tileDefinitionForTileID:self->_tileData[v8 / 4]];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      [array addObject:v11];

      v8 += 4;
    }

    while (v9 != v8);
  }

  return array;
}

@end