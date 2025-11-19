@interface SKTileStamp
+ (id)tileStampWithWidth:(unint64_t)a3 height:(unint64_t)a4 tileData:(unsigned int *)a5;
- (BOOL)isEqualToNode:(id)a3;
- (SKTileStamp)init;
- (SKTileStamp)initWithCoder:(id)a3;
- (SKTileStamp)initWithWidth:(unint64_t)a3 height:(unint64_t)a4 tileData:(unsigned int *)a5;
- (id)tileDefinitionsForTileMap:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setTileData:(unsigned int *)a3 size:(unint64_t)a4;
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

- (SKTileStamp)initWithWidth:(unint64_t)a3 height:(unint64_t)a4 tileData:(unsigned int *)a5
{
  v6 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SKTileStamp;
  v8 = [(SKTileStamp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_columns = v7;
    v8->_rows = v6;
    [(SKTileStamp *)v8 setTileData:a5 size:4 * v7 * v6];
  }

  return v9;
}

+ (id)tileStampWithWidth:(unint64_t)a3 height:(unint64_t)a4 tileData:(unsigned int *)a5
{
  v5 = [[SKTileStamp alloc] initWithWidth:a3 height:a4 tileData:a5];

  return v5;
}

- (SKTileStamp)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SKTileStamp;
  v5 = [(SKTileStamp *)&v9 init];
  if (v5)
  {
    v5->_columns = [v4 decodeIntegerForKey:@"_columns"];
    v5->_rows = [v4 decodeIntegerForKey:@"_rows"];
    v8 = 0;
    v6 = [v4 decodeBytesForKey:@"_tileData" returnedLength:&v8];
    if (v8 == 4 * v5->_rows * v5->_columns)
    {
      [(SKTileStamp *)v5 setTileData:v6 size:?];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:self->_columns forKey:@"_columns"];
  [v5 encodeInteger:self->_rows forKey:@"_rows"];
  tileData = self->_tileData;
  if (tileData)
  {
    [v5 encodeBytes:tileData length:4 * self->_columns * self->_rows forKey:@"_tileData"];
  }
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v6 = v4;
    v7 = v6;
    columns = self->_columns;
    v10 = columns == v6->_columns && (rows = self->_rows, rows == v6->_rows) && memcmp(self->_tileData, v6->_tileData, rows * columns) == 0;
  }

  return v10;
}

- (void)setTileData:(unsigned int *)a3 size:(unint64_t)a4
{
  free(self->_tileData);
  v7 = malloc_type_malloc(a4, 0x100004052888210uLL);
  self->_tileData = v7;

  memcpy(v7, a3, a4);
}

- (id)tileDefinitionsForTileMap:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = self->_rows * self->_columns;
  v7 = objc_alloc_init(SKTileDefinition);
  if (v6)
  {
    v8 = 0;
    v9 = 4 * v6;
    do
    {
      v10 = [v4 tileDefinitionForTileID:self->_tileData[v8 / 4]];
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      [v5 addObject:v11];

      v8 += 4;
    }

    while (v9 != v8);
  }

  return v5;
}

@end