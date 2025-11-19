@interface SKTileMapNode
+ (SKTileMapNode)tileMapNodeWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize;
+ (SKTileMapNode)tileMapNodeWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize fillWithTileGroup:(SKTileGroup *)tileGroup;
+ (SKTileMapNode)tileMapNodeWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize tileGroupLayout:(NSArray *)tileGroupLayout;
+ (id)debugHierarchyPropertyDescriptions;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)Mutable;
- (BOOL)isEqualToNode:(id)a3;
- (CGPoint)anchorPoint;
- (CGPoint)centerOfTileAtColumn:(NSUInteger)column row:(NSUInteger)row;
- (CGSize)mapSize;
- (CGSize)tileSize;
- (NSUInteger)tileColumnIndexFromPosition:(CGPoint)position;
- (NSUInteger)tileRowIndexFromPosition:(CGPoint)position;
- (SKAttributeValue)valueForAttributeNamed:(NSString *)key;
- (SKTileDefinition)tileDefinitionAtColumn:(NSUInteger)column row:(NSUInteger)row;
- (SKTileGroup)tileGroupAtColumn:(NSUInteger)column row:(NSUInteger)row;
- (SKTileMapNode)init;
- (SKTileMapNode)initWithCoder:(id)a3;
- (SKTileMapNode)initWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize;
- (SKTileMapNode)initWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize fillWithTileGroup:(SKTileGroup *)tileGroup;
- (SKTileMapNode)initWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize tileGroupLayout:(NSArray *)tileGroupLayout;
- (UIColor)color;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createTileStampFromColumn:(unint64_t)a3 row:(unint64_t)a4 withWidth:(unint64_t)a5 height:(unint64_t)a6 addToTileSet:(BOOL)a7;
- (id)tileDefinitionForTileID:(unsigned int)a3;
- (unsigned)getTileIDWithTileGroup:(id)a3 andTileDefinition:(id)a4;
- (void)_didMakeBackingNode;
- (void)applyTileStamp:(id)a3 inColumn:(int64_t)a4 row:(int64_t)a5;
- (void)calculateSize;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)fillWithTileDefinition:(id)a3;
- (void)fillWithTileGroup:(SKTileGroup *)tileGroup;
- (void)forceRedraw;
- (void)getTileModifiedData:(int64_t *)a3 outMinRowModified:(int64_t *)a4 outMaxColumnModified:(int64_t *)a5 outmaxRowModified:(int64_t *)a6;
- (void)rebuildTileSprites;
- (void)removeAllTiles;
- (void)setAlpha:(double)a3;
- (void)setAnchorPoint:(CGPoint)anchorPoint;
- (void)setColor:(UIColor *)color;
- (void)setColorBlendFactor:(CGFloat)colorBlendFactor;
- (void)setColumns:(unint64_t)a3 andRows:(int64_t)a4;
- (void)setEnableAutomapping:(BOOL)enableAutomapping;
- (void)setNumberOfColumns:(NSUInteger)numberOfColumns;
- (void)setNumberOfRows:(NSUInteger)numberOfRows;
- (void)setShader:(SKShader *)shader;
- (void)setStartData:(unint64_t)a3 rows:(unint64_t)a4 tileSize:(CGSize)a5 tileSet:(id)a6;
- (void)setTileGroup:(SKTileGroup *)tileGroup andTileDefinition:(SKTileDefinition *)tileDefinition forColumn:(NSUInteger)column row:(NSUInteger)row;
- (void)setTileGroup:(SKTileGroup *)tileGroup forColumn:(NSUInteger)column row:(NSUInteger)row;
- (void)setTileGroup:(id)a3 andTileDefinition:(id)a4 forTileIndicies:(id)a5;
- (void)setTileGroup:(id)a3 forTileIndicies:(id)a4;
- (void)setTileGroupWithoutUpdate:(id)a3 forColumn:(unint64_t)a4 row:(unint64_t)a5;
- (void)setTileGroupWithoutUpdate:(id)a3 tileDefinition:(id)a4 forColumn:(unint64_t)a5 row:(unint64_t)a6;
- (void)setTileSet:(SKTileSet *)tileSet;
- (void)setTileSize:(CGSize)tileSize;
- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key;
- (void)updateTileDefinitionWithoutAutomappingAtX:(unint64_t)a3 y:(unint64_t)a4;
- (void)updateTileGroupsAtX:(unint64_t)a3 y:(unint64_t)a4;
- (void)validateAllTiles;
@end

@implementation SKTileMapNode

- (void)setNumberOfColumns:(NSUInteger)numberOfColumns
{
  v5 = [(SKTileMapNode *)self numberOfRows];

  [(SKTileMapNode *)self setColumns:numberOfColumns andRows:v5];
}

- (void)setNumberOfRows:(NSUInteger)numberOfRows
{
  v5 = [(SKTileMapNode *)self numberOfColumns];

  [(SKTileMapNode *)self setColumns:v5 andRows:numberOfRows];
}

- (CGSize)tileSize
{
  width = self->_tileSize.width;
  height = self->_tileSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setTileSize:(CGSize)tileSize
{
  self->_tileSize = tileSize;
  [(SKTileMapNode *)self calculateSize];
  skcTileMapNode = self->_skcTileMapNode;

  SKCTileMapNode::forceRedraw(skcTileMapNode, 0);
}

- (CGSize)mapSize
{
  v2 = vcvtq_f64_f32(*(self->_skcTileMapNode + 336));
  v3 = v2.f64[1];
  result.width = v2.f64[0];
  result.height = v3;
  return result;
}

- (void)setTileSet:(SKTileSet *)tileSet
{
  v8 = tileSet;
  if (self->_tileSet != v8)
  {
    objc_storeStrong(&self->_tileSet, tileSet);
    SKCTileMapNode::setTileSetType(self->_skcTileMapNode, [(SKTileSet *)v8 type]);
    v5 = self->_tileSet;
    if (v5)
    {
      [(SKTileSet *)v5 defaultTileSize];
    }

    else
    {
      v6 = *MEMORY[0x277CBF3A8];
      v7 = *(MEMORY[0x277CBF3A8] + 8);
    }

    [(SKTileMapNode *)self setTileSize:v6, v7];
    [(SKTileMapNode *)self calculateSize];
    [(SKTileMapNode *)self rebuildTileSprites];
    SKCTileMapNode::forceRedraw(self->_skcTileMapNode, 1);
  }
}

- (void)setColorBlendFactor:(CGFloat)colorBlendFactor
{
  skcTileMapNode = self->_skcTileMapNode;
  v4 = colorBlendFactor;
  v5 = fminf(fmaxf(v4, 0.0), 1.0);
  (*(*skcTileMapNode + 192))(skcTileMapNode, &v5);
}

- (UIColor)color
{
  LODWORD(v2) = HIDWORD(*(self->_skcTileMapNode + 38));
  LODWORD(v3) = *(self->_skcTileMapNode + 39);
  LODWORD(v4) = HIDWORD(*(self->_skcTileMapNode + 19));
  return [MEMORY[0x277D75348] colorWithComponentRGBA:{*(self->_skcTileMapNode + 38), v2, v3, v4}];
}

- (void)setColor:(UIColor *)color
{
  v4 = color;
  [(UIColor *)v4 componentRGBA];
  skcTileMapNode = self->_skcTileMapNode;
  DWORD1(v7) = v6;
  *(&v7 + 1) = __PAIR64__(v9, v8);
  v10 = v7;
  (*(*skcTileMapNode + 184))(skcTileMapNode, &v10);
}

- (CGPoint)anchorPoint
{
  v2 = vcvtq_f64_f32(*(self->_skcTileMapNode + 352));
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setAnchorPoint:(CGPoint)anchorPoint
{
  *&v4 = anchorPoint.x;
  *&v5 = anchorPoint.y;
  v6 = __PAIR64__(v5, v4);
  SKCNode::setAnchor(self->_skcTileMapNode, &v6);
  SKCTileMapNode::forceRedraw(self->_skcTileMapNode, 0);
}

- (void)setShader:(SKShader *)shader
{
  v4 = shader;
  [*(self->_skcTileMapNode + 71) _removeTargetNode:self];
  SKCTileMapNode::setShader(self->_skcTileMapNode, v4);
  [(SKShader *)v4 _addTargetNode:self];
}

- (void)_didMakeBackingNode
{
  v3.receiver = self;
  v3.super_class = SKTileMapNode;
  [(SKNode *)&v3 _didMakeBackingNode];
  self->_skcTileMapNode = [(SKNode *)self _backingNode];
}

- (void)setEnableAutomapping:(BOOL)enableAutomapping
{
  if (self->_enableAutomapping != enableAutomapping)
  {
    self->_enableAutomapping = enableAutomapping;
    if (enableAutomapping)
    {
      [(SKTileMapNode *)self rebuildTileSprites];
    }
  }
}

- (void)setAlpha:(double)a3
{
  skcTileMapNode = self->_skcTileMapNode;
  v5 = a3;
  v6 = v5;
  SKCNode::setAlpha(skcTileMapNode, &v6);
  SKCTileMapNode::forceRedraw(self->_skcTileMapNode, 0);
}

- (SKTileMapNode)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = SKTileMapNode;
  v5 = [(SKNode *)&v41 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    [(SKTileMapNode *)v5 commonInit];
    v7 = [v4 decodeIntegerForKey:@"_currentColumns"];
    v8 = [v4 decodeIntegerForKey:@"_currentRows"];
    [v4 decodeDoubleForKey:@"_tileWidth"];
    v6->_tileSize.width = v9;
    [v4 decodeDoubleForKey:@"_tileHeight"];
    v6->_tileSize.height = v10;
    if ([(SKTileMapNode *)v6 shouldUnarchiveTileSet])
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tileSetName"];
      [(SKTileMapNode *)v6 setTileSetName:v11];

      v12 = [(SKTileMapNode *)v6 tileSetName];

      if (v12)
      {
        v13 = [(SKTileMapNode *)v6 tileSetName];
        v14 = [SKTileSet tileSetNamed:v13];
        tileSet = v6->_tileSet;
        v6->_tileSet = v14;
      }

      v16 = v6->_tileSet;
      if (!v16)
      {
        v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_tileSet"];
        v18 = v6->_tileSet;
        v6->_tileSet = v17;

        v16 = v6->_tileSet;
      }

      SKCTileMapNode::setTileSetType(v6->_skcTileMapNode, [(SKTileSet *)v16 type]);
    }

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorR"];
    [v19 doubleValue];
    v21 = v20;
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorG"];
    [v22 doubleValue];
    v24 = v23;
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorB"];
    [v25 doubleValue];
    v27 = v26;
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_baseColorA"];
    [v28 doubleValue];
    v30 = v29;

    *&v21 = v21;
    LODWORD(v31) = LODWORD(v21);
    *&v24 = v24;
    LODWORD(v32) = LODWORD(v24);
    *&v27 = v27;
    LODWORD(v33) = LODWORD(v27);
    *&v34 = v30;
    v35 = [MEMORY[0x277D75348] colorWithComponentRGBA:{v31, v32, v33, v34}];
    [(SKTileMapNode *)v6 setColor:v35];

    [v4 decodeDoubleForKey:@"_colorBlendFactor"];
    [(SKTileMapNode *)v6 setColorBlendFactor:?];
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_blendMode"];
    -[SKTileMapNode setBlendMode:](v6, "setBlendMode:", [v36 intValue]);

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_shader"];
    [(SKTileMapNode *)v6 setShader:v37];

    -[SKTileMapNode setLightingBitMask:](v6, "setLightingBitMask:", [v4 decodeInt32ForKey:@"_lightingBitMask"]);
    v6->_enableAutomapping = [v4 decodeBoolForKey:@"_enableAutomapping"];
    v40 = 0;
    v38 = [v4 decodeBytesForKey:@"_rawTiles" returnedLength:&v40];
    [(SKTileMapNode *)v6 calculateSize];
    [(SKTileMapNode *)v6 setColumns:v7 andRows:v8];
    if (v40 == 4 * v7 * v8)
    {
      SKCTileMapNode::setRawTiles(v6->_skcTileMapNode, v38, v7, v8);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SKTileMapNode;
  [(SKNode *)&v20 encodeWithCoder:v4];
  v5 = [(SKTileMapNode *)self numberOfColumns];
  v6 = [(SKTileMapNode *)self numberOfRows];
  [v4 encodeInteger:v5 forKey:@"_currentColumns"];
  [v4 encodeInteger:v6 forKey:@"_currentRows"];
  [v4 encodeDouble:@"_tileWidth" forKey:self->_tileSize.width];
  [v4 encodeDouble:@"_tileHeight" forKey:self->_tileSize.height];
  v7 = [(SKTileMapNode *)self tileSetName];
  [v4 encodeObject:v7 forKey:@"_tileSetName"];

  [v4 encodeObject:self->_tileSet forKey:@"_tileSet"];
  v19 = *(self->_skcTileMapNode + 19);
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:{*&v19, v19}];
  [v4 encodeObject:v8 forKey:@"_baseColorR"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v19 + 1)];
  [v4 encodeObject:v9 forKey:@"_baseColorG"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v19 + 2)];
  [v4 encodeObject:v10 forKey:@"_baseColorB"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:*(&v19 + 3)];
  [v4 encodeObject:v11 forKey:@"_baseColorA"];

  v12 = MEMORY[0x277CCABB0];
  [(SKTileMapNode *)self colorBlendFactor];
  v13 = [v12 numberWithDouble:?];
  [v4 encodeObject:v13 forKey:@"_colorMix"];

  v14 = [MEMORY[0x277CCABB0] numberWithLong:{-[SKTileMapNode blendMode](self, "blendMode")}];
  [v4 encodeObject:v14 forKey:@"_blendMode"];

  v15 = [(SKTileMapNode *)self shader];
  [v4 encodeObject:v15 forKey:@"_shader"];

  [v4 encodeInt32:-[SKTileMapNode lightingBitMask](self forKey:{"lightingBitMask"), @"_lightingBitMask"}];
  [v4 encodeBool:self->_enableAutomapping forKey:@"_enableAutomapping"];
  v16 = MEMORY[0x277CCAE60];
  [(SKTileMapNode *)self anchorPoint];
  v17 = [v16 valueWithCGPoint:?];
  [v4 encodeObject:v17 forKey:@"_anchorPoint"];

  RawTilesCopy = SKCTileMapNode::getRawTilesCopy(self->_skcTileMapNode);
  [v4 encodeBytes:RawTilesCopy length:4 * v5 * v6 forKey:@"_rawTiles"];
  if (RawTilesCopy)
  {
    free(RawTilesCopy);
  }
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v31 = 1;
    goto LABEL_30;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = 0;
    goto LABEL_30;
  }

  v5 = v4;
  v36.receiver = self;
  v36.super_class = SKTileMapNode;
  if (![(SKNode *)&v36 isEqualToNode:v5])
  {
    goto LABEL_26;
  }

  v6 = [(SKTileMapNode *)self numberOfColumns];
  if (v6 != [(SKTileMapNode *)v5 numberOfColumns])
  {
    goto LABEL_26;
  }

  v7 = [(SKTileMapNode *)self numberOfRows];
  if (v7 != [(SKTileMapNode *)v5 numberOfRows])
  {
    goto LABEL_26;
  }

  width = self->_tileSize.width;
  if (width != v5->_tileSize.width || width != v5->_tileSize.height)
  {
    goto LABEL_26;
  }

  tileSetName = self->_tileSetName;
  if (!tileSetName)
  {
    v10 = [(SKTileMapNode *)v5 tileSetName];

    if (!v10)
    {
      goto LABEL_12;
    }

    tileSetName = self->_tileSetName;
  }

  v11 = [(SKTileMapNode *)v5 tileSetName];
  v12 = [(NSString *)tileSetName isEqualToString:v11];

  if (!v12)
  {
    goto LABEL_26;
  }

LABEL_12:
  tileSet = self->_tileSet;
  if (tileSet)
  {
    goto LABEL_15;
  }

  v14 = [(SKTileMapNode *)v5 tileSet];

  if (v14)
  {
    tileSet = self->_tileSet;
LABEL_15:
    v15 = [(SKTileMapNode *)v5 tileSet];
    v16 = [(SKTileSet *)tileSet isEqualToNode:v15];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  v17 = vsubq_f32(*(self->_skcTileMapNode + 19), *(v5->_skcTileMapNode + 19));
  if ((v17.i32[0] & 0x60000000) != 0 && (v17.i32[1] & 0x60000000) != 0 && (v17.i32[2] & 0x60000000) != 0 && (v17.i32[3] & 0x60000000) != 0)
  {
    [(SKTileMapNode *)self colorBlendFactor];
    v19 = v18;
    [(SKTileMapNode *)v5 colorBlendFactor];
    v20 = v19;
    *&v21 = v21;
    if ((COERCE_UNSIGNED_INT(v20 - *&v21) & 0x60000000) != 0)
    {
      v22 = [(SKTileMapNode *)self blendMode];
      if (v22 == [(SKTileMapNode *)v5 blendMode])
      {
        v23 = [(SKTileMapNode *)self enableAutomapping];
        if (v23 == [(SKTileMapNode *)v5 enableAutomapping])
        {
          v24 = [(SKTileMapNode *)self lightingBitMask];
          if (v24 == [(SKTileMapNode *)v5 lightingBitMask])
          {
            [(SKTileMapNode *)self anchorPoint];
            v26 = v25;
            v28 = v27;
            [(SKTileMapNode *)v5 anchorPoint];
            if (v26 != v30 || v28 != v29)
            {
              v33 = [(SKTileMapNode *)self shader];
              v34 = [(SKTileMapNode *)v5 shader];
              v35 = [v33 isEqualToShader:v34];

              v31 = v35 ^ 1;
              goto LABEL_27;
            }
          }
        }
      }
    }
  }

LABEL_26:
  v31 = 0;
LABEL_27:

LABEL_30:
  return v31;
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKTileMapNode *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = SKTileMapNode;
  v4 = [(SKNode *)&v7 copyWithZone:a3];
  RawTilesCopy = SKCTileMapNode::getRawTilesCopy(self->_skcTileMapNode);
  SKCTileMapNode::setRawTiles(v4[17], RawTilesCopy, [(SKTileMapNode *)self numberOfColumns], [(SKTileMapNode *)self numberOfRows]);
  if (RawTilesCopy)
  {
    free(RawTilesCopy);
  }

  return v4;
}

- (void)setStartData:(unint64_t)a3 rows:(unint64_t)a4 tileSize:(CGSize)a5 tileSet:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a6;
  objc_storeStrong(&self->_tileSet, a6);
  SKCTileMapNode::setTileSetType(self->_skcTileMapNode, [v12 type]);
  self->_tileSize.width = width;
  self->_tileSize.height = height;
  self->_enableAutomapping = 1;
  [(SKNode *)self setName:@"Default Tile Map"];
  [(SKTileMapNode *)self setLightingBitMask:0];
  [(SKTileMapNode *)self calculateSize];
  [(SKTileMapNode *)self setColumns:a3 andRows:a4];
}

- (SKTileMapNode)init
{
  v5.receiver = self;
  v5.super_class = SKTileMapNode;
  v2 = [(SKNode *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKTileMapNode *)v2 commonInit];
    [(SKTileMapNode *)v3 setStartData:0 rows:0 tileSize:0 tileSet:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  return v3;
}

- (SKTileMapNode)initWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize
{
  height = tileSize.height;
  width = tileSize.width;
  v11 = tileSet;
  v15.receiver = self;
  v15.super_class = SKTileMapNode;
  v12 = [(SKNode *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(SKTileMapNode *)v12 commonInit];
    [(SKTileMapNode *)v13 setStartData:columns rows:rows tileSize:v11 tileSet:width, height];
  }

  return v13;
}

- (SKTileMapNode)initWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize fillWithTileGroup:(SKTileGroup *)tileGroup
{
  height = tileSize.height;
  width = tileSize.width;
  v13 = tileSet;
  v14 = tileGroup;
  v18.receiver = self;
  v18.super_class = SKTileMapNode;
  v15 = [(SKNode *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(SKTileMapNode *)v15 commonInit];
    [(SKTileMapNode *)v16 setStartData:columns rows:rows tileSize:v13 tileSet:width, height];
    [(SKTileMapNode *)v16 fillWithTileGroup:v14];
  }

  return v16;
}

- (SKTileMapNode)initWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize tileGroupLayout:(NSArray *)tileGroupLayout
{
  height = tileSize.height;
  width = tileSize.width;
  v13 = tileSet;
  v14 = tileGroupLayout;
  v29.receiver = self;
  v29.super_class = SKTileMapNode;
  v15 = [(SKNode *)&v29 init];
  v16 = v15;
  if (v15)
  {
    [(SKTileMapNode *)v15 commonInit];
    [(SKTileMapNode *)v16 setStartData:columns rows:rows tileSize:v13 tileSet:width, height];
    v28 = v13;
    v17 = (rows * columns);
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        if ([(NSArray *)v14 count]<= i)
        {
          v26 = 0x7FFFFFFF;
        }

        else
        {
          v19 = [(SKTileMapNode *)v16 tileSet];
          v20 = [v19 tileGroups];
          v21 = [(NSArray *)v14 objectAtIndexedSubscript:i];
          v22 = [v20 indexOfObject:v21];

          v23 = [(SKTileMapNode *)v16 tileSet];
          v24 = [v23 tileGroups];
          v25 = [v24 count];

          if (v22 >= v25)
          {
            v26 = 0x7FFFFFFF;
          }

          else
          {
            v26 = ((v22 & 0x7FFF) << 16) | 0xFFFF;
          }
        }

        SKCTileMapNode::setTile(v16->_skcTileMapNode, i, v26);
      }
    }

    v13 = v28;
    [(SKTileMapNode *)v16 rebuildTileSprites];
  }

  return v16;
}

+ (SKTileMapNode)tileMapNodeWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize
{
  height = tileSize.height;
  width = tileSize.width;
  v10 = tileSet;
  v11 = [objc_alloc(objc_opt_class()) initWithTileSet:v10 columns:columns rows:rows tileSize:{width, height}];

  return v11;
}

+ (SKTileMapNode)tileMapNodeWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize fillWithTileGroup:(SKTileGroup *)tileGroup
{
  height = tileSize.height;
  width = tileSize.width;
  v12 = tileSet;
  v13 = tileGroup;
  v14 = [objc_alloc(objc_opt_class()) initWithTileSet:v12 columns:columns rows:rows tileSize:v13 fillWithTileGroup:{width, height}];

  return v14;
}

+ (SKTileMapNode)tileMapNodeWithTileSet:(SKTileSet *)tileSet columns:(NSUInteger)columns rows:(NSUInteger)rows tileSize:(CGSize)tileSize tileGroupLayout:(NSArray *)tileGroupLayout
{
  height = tileSize.height;
  width = tileSize.width;
  v12 = tileSet;
  v13 = tileGroupLayout;
  v14 = [objc_alloc(objc_opt_class()) initWithTileSet:v12 columns:columns rows:rows tileSize:v13 tileGroupLayout:{width, height}];

  return v14;
}

- (void)dealloc
{
  [(SKTileMapNode *)self removeAllTiles];
  v3.receiver = self;
  v3.super_class = SKTileMapNode;
  [(SKNode *)&v3 dealloc];
}

- (unsigned)getTileIDWithTileGroup:(id)a3 andTileDefinition:(id)a4
{
  v6 = a3;
  v7 = a4;
  tileSet = self->_tileSet;
  if (!tileSet)
  {
    v12 = 0xFFFF;
    LOWORD(v10) = 0x7FFF;
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = [(SKTileSet *)tileSet tileGroups];
    v10 = [v9 indexOfObject:v6];

    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      LOWORD(v10) = 0x7FFF;
    }

    if (v7)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = 0xFFFF;
    goto LABEL_10;
  }

  LOWORD(v10) = 0x7FFF;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = [(SKTileSet *)self->_tileSet tileDefinitions];
  LOWORD(v12) = [v11 indexOfObject:v7];

  v12 = v12;
LABEL_10:

  return v12 & 0x8000FFFF | ((v10 & 0x7FFF) << 16);
}

- (void)fillWithTileDefinition:(id)a3
{
  v13 = a3;
  if (v13 && (tileSet = self->_tileSet) != 0 && ([(SKTileSet *)tileSet tileDefinitions], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(SKTileSet *)self->_tileSet tileDefinitions];
    v7 = [v6 indexOfObject:v13];

    v8 = [(SKTileSet *)self->_tileSet tileDefinitions];
    v9 = [v8 count];

    if (v7 >= v9)
    {
      v10 = 0x7FFFFFFF;
    }

    else
    {
      v10 = v7 | 0x7FFF0000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = (*(self->_skcTileMapNode + 152) * *(self->_skcTileMapNode + 151));
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      SKCTileMapNode::setTile(self->_skcTileMapNode, i, v10);
    }
  }

  [(SKTileMapNode *)self updateTileGroupsAtX:0 y:0];
}

- (void)fillWithTileGroup:(SKTileGroup *)tileGroup
{
  v19 = tileGroup;
  if (v19 && (-[SKTileMapNode tileSet](self, "tileSet"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SKTileMapNode tileSet](self, "tileSet"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tileGroups], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, v6))
  {
    v7 = [(SKTileMapNode *)self tileSet];
    v8 = [v7 tileGroups];
    v9 = [v8 indexOfObject:v19];

    v10 = [(SKTileSet *)self->_tileSet tileGroups];
    v11 = [v10 count];

    if (v9 >= v11)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = ((v9 & 0x7FFF) << 16) | 0xFFFF;
    }
  }

  else
  {
    v12 = 0x7FFFFFFF;
  }

  skcTileMapNode = self->_skcTileMapNode;
  v14 = skcTileMapNode[152];
  v15 = v14 * skcTileMapNode[151];
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      SKCTileMapNode::setTile(self->_skcTileMapNode, i, v12);
    }

    skcTileMapNode = self->_skcTileMapNode;
    v14 = skcTileMapNode[152];
  }

  if (v14)
  {
    v17 = 0;
    do
    {
      if (skcTileMapNode[151])
      {
        v18 = 0;
        do
        {
          [(SKTileMapNode *)self updateTileDefinitionWithoutAutomappingAtX:v18++ y:v17];
          skcTileMapNode = self->_skcTileMapNode;
        }

        while (v18 < skcTileMapNode[151]);
      }

      ++v17;
    }

    while (v17 < skcTileMapNode[152]);
  }
}

- (SKTileDefinition)tileDefinitionAtColumn:(NSUInteger)column row:(NSUInteger)row
{
  v5 = column;
  if (-[SKTileMapNode numberOfColumns](self, "numberOfColumns") > column && -[SKTileMapNode numberOfRows](self, "numberOfRows") > row && (-[SKTileMapNode tileSet](self, "tileSet"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[SKTileMapNode tileSet](self, "tileSet"), v9 = objc_claimAutoreleasedReturnValue(), [v9 tileDefinitions], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10) && (RawTile = SKCTileMapNode::getRawTile(self->_skcTileMapNode, v5 + *(self->_skcTileMapNode + 151) * row), -[SKTileMapNode tileSet](self, "tileSet"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "tileDefinitions"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, v14 > RawTile))
  {
    v15 = [(SKTileMapNode *)self tileSet];
    v16 = [v15 tileDefinitions];
    v17 = [v16 objectAtIndex:RawTile];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (SKTileGroup)tileGroupAtColumn:(NSUInteger)column row:(NSUInteger)row
{
  v5 = column;
  if (-[SKTileMapNode numberOfColumns](self, "numberOfColumns") > column && -[SKTileMapNode numberOfRows](self, "numberOfRows") > row && (-[SKTileMapNode tileSet](self, "tileSet"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, -[SKTileMapNode tileSet](self, "tileSet"), v9 = objc_claimAutoreleasedReturnValue(), [v9 tileGroups], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10) && (RawTile = SKCTileMapNode::getRawTile(self->_skcTileMapNode, v5 + *(self->_skcTileMapNode + 151) * row), -[SKTileMapNode tileSet](self, "tileSet"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "tileGroups"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v15 = HIWORD(RawTile) & 0x7FFF, v13, v12, v14 > v15))
  {
    v16 = [(SKTileMapNode *)self tileSet];
    v17 = [v16 tileGroups];
    v18 = [v17 objectAtIndex:v15];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)setTileGroup:(SKTileGroup *)tileGroup forColumn:(NSUInteger)column row:(NSUInteger)row
{
  v19 = tileGroup;
  if ([(SKTileMapNode *)self numberOfColumns]> column && [(SKTileMapNode *)self numberOfRows]> row)
  {
    if (v19 && (-[SKTileMapNode tileSet](self, "tileSet"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SKTileMapNode tileSet](self, "tileSet"), v9 = objc_claimAutoreleasedReturnValue(), [v9 tileGroups], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
    {
      v11 = [(SKTileMapNode *)self tileSet];
      v12 = v19;
      v13 = v11;
      v14 = [v13 tileGroups];
      v15 = [v14 indexOfObject:v12];

      v16 = [v13 tileGroups];
      v17 = [v16 count];

      if (v15 >= v17)
      {
        v18 = 0x7FFFFFFF;
      }

      else
      {
        v18 = ((v15 & 0x7FFF) << 16) | 0xFFFF;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    SKCTileMapNode::setTile(self->_skcTileMapNode, column + *(self->_skcTileMapNode + 151) * row, v18);
    [(SKTileMapNode *)self updateTileGroupsAtX:column y:row];
  }
}

- (void)setTileGroup:(SKTileGroup *)tileGroup andTileDefinition:(SKTileDefinition *)tileDefinition forColumn:(NSUInteger)column row:(NSUInteger)row
{
  v32 = tileGroup;
  v10 = tileDefinition;
  if ([(SKTileMapNode *)self numberOfColumns]> column && [(SKTileMapNode *)self numberOfRows]> row)
  {
    v11 = [(SKTileMapNode *)self tileSet];
    if (v11)
    {
      v12 = [(SKTileMapNode *)self tileSet];
      v13 = [v12 tileGroups];
      if (v13)
      {
        v14 = [(SKTileMapNode *)self tileSet];
        v15 = [v14 tileDefinitions];

        if (v15)
        {
          if (v32)
          {
            v16 = [(SKTileMapNode *)self tileSet];
            v17 = v32;
            v18 = v16;
            v19 = [v18 tileGroups];
            v20 = [v19 indexOfObject:v17];

            v21 = [v18 tileGroups];
            v22 = [v21 count];

            if (v20 >= v22)
            {
              v23 = 2147418112;
            }

            else
            {
              v23 = (v20 & 0x7FFF) << 16;
            }
          }

          else
          {
            v23 = 2147418112;
          }

          v24 = [(SKTileMapNode *)self tileSet];
          v25 = v10;
          v26 = v24;
          v27 = [v26 tileDefinitions];
          v28 = [v27 indexOfObject:v25];

          v29 = [v26 tileDefinitions];
          v30 = [v29 count];

          v31 = v28;
          if (v28 >= v30)
          {
            v31 = 0xFFFF;
          }

          SKCTileMapNode::setTile(self->_skcTileMapNode, column + *(self->_skcTileMapNode + 151) * row, v31 | v23);
          [(SKTileMapNode *)self updateTileGroupsAtX:column y:row];
        }
      }

      else
      {
      }
    }
  }
}

- (void)setTileGroupWithoutUpdate:(id)a3 forColumn:(unint64_t)a4 row:(unint64_t)a5
{
  v20 = a3;
  if ([(SKTileMapNode *)self numberOfColumns]> a4 && [(SKTileMapNode *)self numberOfRows]> a5)
  {
    v8 = [(SKTileMapNode *)self tileSet];
    if (v8)
    {
      v9 = [(SKTileMapNode *)self tileSet];
      v10 = [v9 tileGroups];

      if (v10)
      {
        v11 = [(SKTileMapNode *)self tileSet];
        v12 = v20;
        v13 = v11;
        v14 = [v13 tileGroups];
        v15 = [v14 indexOfObject:v12];

        v16 = [v13 tileGroups];
        v17 = [v16 count];

        v18 = [(SKTileMapNode *)self numberOfColumns];
        if (v15 >= v17)
        {
          v19 = 0x7FFFFFFF;
        }

        else
        {
          v19 = ((v15 & 0x7FFF) << 16) | 0xFFFF;
        }

        SKCTileMapNode::setTile(self->_skcTileMapNode, a4 + v18 * a5, v19);
      }
    }
  }
}

- (void)setTileGroupWithoutUpdate:(id)a3 tileDefinition:(id)a4 forColumn:(unint64_t)a5 row:(unint64_t)a6
{
  v33 = a3;
  v10 = a4;
  if ([(SKTileMapNode *)self numberOfColumns]> a5 && [(SKTileMapNode *)self numberOfRows]> a6)
  {
    v11 = [(SKTileMapNode *)self tileSet];
    if (v11)
    {
      v12 = [(SKTileMapNode *)self tileSet];
      v13 = [v12 tileGroups];
      if (v13)
      {
        v14 = [(SKTileMapNode *)self tileSet];
        v15 = [v14 tileDefinitions];

        if (v15)
        {
          v16 = [(SKTileMapNode *)self tileSet];
          v17 = v33;
          v18 = v16;
          v19 = [v18 tileGroups];
          v20 = [v19 indexOfObject:v17];

          v21 = [v18 tileGroups];
          v32 = [v21 count];

          v22 = [(SKTileMapNode *)self tileSet];
          v23 = v10;
          v24 = v22;
          v25 = [v24 tileDefinitions];
          v26 = [v25 indexOfObject:v23];

          v27 = [v24 tileDefinitions];
          v28 = [v27 count];

          v29 = [(SKTileMapNode *)self numberOfColumns];
          v30 = (v20 & 0x7FFF) << 16;
          if (v20 >= v32)
          {
            v30 = 2147418112;
          }

          v31 = v26;
          if (v26 >= v28)
          {
            v31 = 0xFFFF;
          }

          SKCTileMapNode::setTile(self->_skcTileMapNode, a5 + v29 * a6, v31 | v30);
        }
      }

      else
      {
      }
    }
  }
}

- (void)setTileGroup:(id)a3 forTileIndicies:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && (-[SKTileMapNode tileSet](self, "tileSet"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (-[SKTileMapNode tileSet](self, "tileSet"), v9 = objc_claimAutoreleasedReturnValue(), [v9 tileGroups], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v10))
  {
    v11 = [(SKTileMapNode *)self tileSet];
    v12 = v6;
    v13 = v11;
    v14 = [v13 tileGroups];
    v15 = [v14 indexOfObject:v12];

    v16 = [v13 tileGroups];
    v17 = [v16 count];

    if (v15 >= v17)
    {
      v18 = 0x7FFFFFFF;
    }

    else
    {
      v18 = ((v15 & 0x7FFF) << 16) | 0xFFFF;
    }
  }

  else
  {
    v18 = 0x7FFFFFFF;
  }

  v19 = [(SKTileMapNode *)self numberOfColumns];
  v20 = [(SKTileMapNode *)self numberOfRows];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
  v23 = v20 * v19;
  if (v22)
  {
    v24 = *v40;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v39 + 1) + 8 * i);
        if (v26)
        {
          v27 = [v26 unsignedIntegerValue];
          if (v27 < v23)
          {
            SKCTileMapNode::setTile(self->_skcTileMapNode, v27, v18);
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v22);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = v21;
  v29 = [v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v29)
  {
    v30 = *v36;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v35 + 1) + 8 * j);
        if (v32)
        {
          v33 = [v32 unsignedIntegerValue];
          if (v33 < v23)
          {
            v34 = [(SKTileMapNode *)self numberOfColumns];
            [(SKTileMapNode *)self updateTileGroupsAtX:v33 % v34 y:v33 / v34 * v34 / [(SKTileMapNode *)self numberOfRows]];
          }
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v29);
  }
}

- (void)setTileGroup:(id)a3 andTileDefinition:(id)a4 forTileIndicies:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v47 = a4;
  v8 = a5;
  v9 = [(SKTileMapNode *)self tileSet];
  if (v9)
  {
    v10 = [(SKTileMapNode *)self tileSet];
    v11 = [v10 tileGroups];
    if (v11)
    {
      v12 = [(SKTileMapNode *)self tileSet];
      v13 = [v12 tileDefinitions];

      if (v13)
      {
        v14 = [(SKTileMapNode *)self tileSet];
        v15 = v46;
        v16 = v14;
        v17 = [v16 tileGroups];
        v18 = [v17 indexOfObject:v15];

        v19 = [v16 tileGroups];
        v20 = [v19 count];

        v21 = [(SKTileMapNode *)self tileSet];
        v22 = v47;
        v23 = v21;
        v24 = [v23 tileDefinitions];
        v25 = [v24 indexOfObject:v22];

        v26 = [v23 tileDefinitions];
        v27 = [v26 count];

        if (v25 >= v27)
        {
          v28 = 0xFFFF;
        }

        else
        {
          v28 = v25;
        }

        if (v18 >= v20)
        {
          v29 = 2147418112;
        }

        else
        {
          v29 = (v18 & 0x7FFF) << 16;
        }

        v30 = [(SKTileMapNode *)self numberOfColumns];
        v31 = [(SKTileMapNode *)self numberOfRows];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v32 = v8;
        v33 = [v32 countByEnumeratingWithState:&v52 objects:v57 count:16];
        v34 = v31 * v30;
        if (v33)
        {
          v35 = *v53;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v53 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v52 + 1) + 8 * i);
              if (v37)
              {
                v38 = [v37 unsignedIntegerValue];
                if (v38 < v34)
                {
                  SKCTileMapNode::setTile(self->_skcTileMapNode, v38, v28 | v29);
                }
              }
            }

            v33 = [v32 countByEnumeratingWithState:&v52 objects:v57 count:16];
          }

          while (v33);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v39 = v32;
        v40 = [v39 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v40)
        {
          v41 = *v49;
          do
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v49 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v48 + 1) + 8 * j);
              if (v43)
              {
                v44 = [v43 unsignedIntegerValue];
                if (v44 < v34)
                {
                  v45 = [(SKTileMapNode *)self numberOfColumns];
                  [(SKTileMapNode *)self updateTileGroupsAtX:v44 % v45 y:v44 / v45 * v45 / [(SKTileMapNode *)self numberOfRows]];
                }
              }
            }

            v40 = [v39 countByEnumeratingWithState:&v48 objects:v56 count:16];
          }

          while (v40);
        }
      }
    }

    else
    {
    }
  }
}

- (void)validateAllTiles
{
  if ([(SKTileMapNode *)self numberOfRows])
  {
    v3 = 0;
    do
    {
      if ([(SKTileMapNode *)self numberOfColumns])
      {
        v4 = 0;
        do
        {
          [(SKTileMapNode *)self updateTileGroupsAtX:v4++ y:v3];
        }

        while (v4 < [(SKTileMapNode *)self numberOfColumns]);
      }

      ++v3;
    }

    while (v3 < [(SKTileMapNode *)self numberOfRows]);
  }
}

- (void)getTileModifiedData:(int64_t *)a3 outMinRowModified:(int64_t *)a4 outMaxColumnModified:(int64_t *)a5 outmaxRowModified:(int64_t *)a6
{
  skcTileMapNode = self->_skcTileMapNode;
  *a3 = skcTileMapNode[156];
  *a4 = skcTileMapNode[157];
  *a5 = skcTileMapNode[158];
  *a6 = skcTileMapNode[159];
}

- (void)removeAllTiles
{
  skcTileMapNode = self->_skcTileMapNode;
  if (skcTileMapNode && *(skcTileMapNode + 151))
  {
    if (*(skcTileMapNode + 152))
    {
      SKCTileMapNode::setAllTiles(skcTileMapNode, 0x7FFFFFFF);
    }
  }
}

- (void)rebuildTileSprites
{
  skcTileMapNode = self->_skcTileMapNode;
  if (skcTileMapNode[152])
  {
    v4 = 0;
    do
    {
      if (skcTileMapNode[151])
      {
        v5 = 0;
        do
        {
          [(SKTileMapNode *)self updateTileGroupsAtX:v5++ y:v4];
          skcTileMapNode = self->_skcTileMapNode;
        }

        while (v5 < skcTileMapNode[151]);
      }

      ++v4;
    }

    while (v4 < skcTileMapNode[152]);
  }
}

- (void)updateTileDefinitionWithoutAutomappingAtX:(unint64_t)a3 y:(unint64_t)a4
{
  v47 = *MEMORY[0x277D85DE8];
  skcTileMapNode = self->_skcTileMapNode;
  v6 = a3 + *(skcTileMapNode + 151) * a4;
  RawTile = SKCTileMapNode::getRawTile(skcTileMapNode, v6);
  v8 = HIWORD(RawTile) & 0x7FFF;
  if (v8 != 0x7FFF)
  {
    v9 = RawTile;
    v10 = [(SKTileSet *)self->_tileSet tileGroups];
    v11 = [v10 count];

    if (v11 > v8)
    {
      v12 = [(SKTileSet *)self->_tileSet tileDefinitions];
      v13 = [v12 count];

      if (v9 == 0xFFFF || v13 <= v9)
      {
        v15 = [(SKTileSet *)self->_tileSet tileGroups];
        v16 = [v15 objectAtIndexedSubscript:v8];

        if (!v16)
        {
          goto LABEL_35;
        }

        v17 = [v16 rules];
        if (!v17)
        {
          goto LABEL_35;
        }

        v18 = [v16 rules];
        v19 = [v18 count];

        if (!v19)
        {
          goto LABEL_35;
        }

        v20 = [v16 rules];
        v21 = [v20 firstObject];

        v35 = v21;
        v36 = [v21 tileDefinitions];
        if ([v36 count] == 1)
        {
          v22 = [v36 firstObject];
        }

        else
        {
          if (![v36 count])
          {
            v30 = 0;
LABEL_34:
            SKCTileMapNode::setTile(self->_skcTileMapNode, v6, [(SKTileMapNode *)self getTileIDWithTileGroup:v16 andTileDefinition:v30]);

LABEL_35:
            return;
          }

          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v23 = v36;
          v24 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
          if (v24)
          {
            v25 = 0;
            v26 = *v42;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v42 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v25 += [*(*(&v41 + 1) + 8 * i) placementWeight];
              }

              v24 = [v23 countByEnumeratingWithState:&v41 objects:v46 count:16];
            }

            while (v24);

            if (v25)
            {
              v28 = arc4random_uniform(v25);
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v29 = v23;
              v30 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
              if (v30)
              {
                v31 = v28;
                v32 = *v38;
                while (2)
                {
                  for (j = 0; j != v30; j = j + 1)
                  {
                    if (*v38 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v37 + 1) + 8 * j);
                    if (v31 < [v34 placementWeight])
                    {
                      v30 = v34;
                      goto LABEL_38;
                    }

                    v31 -= [v34 placementWeight];
                  }

                  v30 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_38:

              goto LABEL_34;
            }
          }

          else
          {
          }

          v22 = [v23 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v23, "count"))}];
        }

        v30 = v22;
        goto LABEL_34;
      }
    }
  }
}

- (void)updateTileGroupsAtX:(unint64_t)a3 y:(unint64_t)a4
{
  v153 = *MEMORY[0x277D85DE8];
  if ([(SKTileMapNode *)self enableAutomapping])
  {
    v144 = 0u;
    v145 = 0u;
    v143 = 0u;
    v7 = a3 + *(self->_skcTileMapNode + 151) * a4;
    LODWORD(v118) = v7;
    std::deque<unsigned int>::push_back(&v143, &v118);
    v111 = v7;
    RawTile = SKCTileMapNode::getRawTile(self->_skcTileMapNode, v7);
    v9 = [(SKTileSet *)self->_tileSet tileDefinitions];
    [v9 count];

    v10 = *(&v145 + 1);
    if (!*(&v145 + 1))
    {
      goto LABEL_166;
    }

    v112 = 0;
    v103 = HIWORD(RawTile) & 0x7FFF;
    while (1)
    {
      v11 = *(*(*(&v143 + 1) + ((v145 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v145 & 0x3FF));
      *&v145 = v145 + 1;
      *(&v145 + 1) = v10 - 1;
      if (v145 >= 0x800)
      {
        operator delete(**(&v143 + 1));
        *(&v143 + 1) += 8;
        *&v145 = v145 - 1024;
      }

      skcTileMapNode = self->_skcTileMapNode;
      v13 = skcTileMapNode[151];
      v114 = SKCTileMapNode::getRawTile(skcTileMapNode, v11);
      v14 = [(SKTileSet *)self->_tileSet type];
      v116 = v11 % v13;
      v115 = (v11 - v116) / v13;
      *v110 = v11;
      if (v14 >= SKTileSetTypeHexagonalFlat)
      {
        if (v14 == SKTileSetTypeHexagonalPointy)
        {
          v15 = (((v11 - v116) / v13) & 1) == 0;
          if (v115)
          {
            v16 = &kHexPointyOddRowXOffsets;
          }

          else
          {
            v16 = &kHexPointyEvenRowXOffsets;
          }

          v17 = &kHexPointyOddRowYOffsets;
          v18 = &kHexPointyEvenRowYOffsets;
          goto LABEL_18;
        }

        if (v14 == SKTileSetTypeHexagonalFlat)
        {
          v15 = (v116 & 1) == 0;
          if (v116)
          {
            v16 = &kHexFlatOddColumnXOffsets;
          }

          else
          {
            v16 = &kHexFlatEvenColumnXOffsets;
          }

          v17 = &kHexFlatOddColumnYOffsets;
          v18 = &kHexFlatEvenColumnYOffsets;
LABEL_18:
          if (v15)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }

          v20 = 6;
          goto LABEL_22;
        }
      }

      v19 = &kYOffsets;
      v16 = &kXOffsets;
      v20 = 8;
LABEL_22:
      v106 = HIWORD(v114) & 0x7FFF;
      if (v106 == 0x7FFF)
      {
        goto LABEL_29;
      }

      v21 = [(SKTileSet *)self->_tileSet tileGroups];
      v22 = [v21 count] > v106;

      if (!v22)
      {
        SKCTileMapNode::setTile(self->_skcTileMapNode, v110[0], 0x7FFFFFFF);
LABEL_29:
        if (v111 != *v110)
        {
          goto LABEL_134;
        }

        goto LABEL_30;
      }

      v23 = [(SKTileSet *)self->_tileSet tileGroups];
      v113 = [v23 objectAtIndexedSubscript:v106];

      if ([v113 type] == 1 || (objc_msgSend(v113, "rules"), v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "count") == 1, v24, v25))
      {
        v26 = [v113 rules];
        v27 = [v26 firstObject];
        v107 = [v27 tileDefinitions];

        if ([v107 count] == 1)
        {
          v28 = [v107 firstObject];
          goto LABEL_100;
        }

        if (![v107 count])
        {
          v54 = 0;
          goto LABEL_133;
        }

        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v43 = v107;
        v44 = [v43 countByEnumeratingWithState:&v139 objects:v151 count:16];
        if (v44)
        {
          v45 = 0;
          v46 = *v140;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v140 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v45 += [*(*(&v139 + 1) + 8 * i) placementWeight];
            }

            v44 = [v43 countByEnumeratingWithState:&v139 objects:v151 count:16];
          }

          while (v44);

          if (v45)
          {
            v48 = arc4random_uniform(v45);
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            obj = v43;
            v49 = [obj countByEnumeratingWithState:&v135 objects:v150 count:16];
            if (v49)
            {
              v50 = v48;
              v51 = *v136;
              while (2)
              {
                for (j = 0; j != v49; ++j)
                {
                  if (*v136 != v51)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v53 = *(*(&v135 + 1) + 8 * j);
                  if (v50 < [v53 placementWeight])
                  {
                    v54 = v53;
                    goto LABEL_116;
                  }

                  v50 -= [v53 placementWeight];
                }

                v49 = [obj countByEnumeratingWithState:&v135 objects:v150 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }
            }

            v54 = 0;
LABEL_116:

            goto LABEL_101;
          }
        }

        else
        {
        }

        v28 = [v43 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v43, "count"))}];
LABEL_100:
        v54 = v28;
LABEL_101:
        if (v54)
        {
          v77 = [(SKTileMapNode *)self getTileIDWithTileGroup:v113 andTileDefinition:v54];
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          obja = v107;
          v78 = [obja countByEnumeratingWithState:&v131 objects:v149 count:16];
          if (v78)
          {
            v79 = *v132;
            while (2)
            {
              for (k = 0; k != v78; ++k)
              {
                if (*v132 != v79)
                {
                  objc_enumerationMutation(obja);
                }

                if (*(*(&v131 + 1) + 8 * k) && v114 == [(SKTileMapNode *)self getTileIDWithTileGroup:v113 andTileDefinition:?])
                {
                  v81 = obja;
                  goto LABEL_132;
                }
              }

              v78 = [obja countByEnumeratingWithState:&v131 objects:v149 count:16];
              if (v78)
              {
                continue;
              }

              break;
            }
          }

          if (v77 != v114)
          {
            SKCTileMapNode::setTile(self->_skcTileMapNode, v110[0], v77);
            goto LABEL_162;
          }

          v107 = obja;
        }

        goto LABEL_133;
      }

      v55 = 0;
      do
      {
        v56 = v19[v55 / 4] + v115;
        v57 = v116 + v16[v55 / 4];
        if (v57 >= 0)
        {
          v58 = self->_skcTileMapNode;
          v59 = *(v58 + 151);
          if (v57 < v59)
          {
            if ((v56 & 0x80000000) != 0)
            {
              v62 = v59 + v59 * v56 + v57;
            }

            else
            {
              v60 = v57 + v59 * v56;
              v61 = v57 + v59 * (v56 - 1);
              if (*(v58 + 152) <= v56)
              {
                v62 = v61;
              }

              else
              {
                v62 = v60;
              }
            }

LABEL_75:
            v63 = SKCTileMapNode::getRawTile(v58, v62);
            goto LABEL_76;
          }
        }

        v63 = v114;
        if ((v56 & 0x80000000) == 0)
        {
          v58 = self->_skcTileMapNode;
          v63 = v114;
          if (*(v58 + 152) > v56)
          {
            v64 = v57 + *(v58 + 151) * v56;
            if (v57 < 0)
            {
              v62 = v64 + 1;
            }

            else
            {
              v62 = v64 - 1;
            }

            goto LABEL_75;
          }
        }

LABEL_76:
        v152[v55 / 8] = HIWORD(v63) & 0x7FFF;
        v55 += 8;
      }

      while (8 * v20 != v55);
      obja = [(SKTileSet *)self->_tileSet findTileDefinitionsForGroup:v113 withGroupAdjacency:v152];
      if ([obja count] == 1)
      {
        v65 = [obja firstObject];
        goto LABEL_119;
      }

      if (![obja count])
      {
        goto LABEL_138;
      }

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v66 = obja;
      v67 = [v66 countByEnumeratingWithState:&v127 objects:v148 count:16];
      if (!v67)
      {

LABEL_118:
        v65 = [v66 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v66, "count"))}];
LABEL_119:
        v73 = v65;
        if (v65)
        {
          goto LABEL_120;
        }

LABEL_138:
        if (v106 == v103 && v111 == *v110)
        {
          v85 = [(SKTileSet *)self->_tileSet getCenterTileDefinitionForGroup:v113 withRequiredOutputGroupAdjacency:v152];
          v86 = 0;
          do
          {
            v87 = v152[v86];
            if (v87 != 0x7FFF)
            {
              v88 = v116 + v16[2 * v86];
              v89 = self->_skcTileMapNode;
              v90 = *(v89 + 151);
              if (v88 >= v90 || (v91 = v19[2 * v86] + v115, *(v89 + 152) <= v91))
              {
                v152[v86] = 0x7FFFLL;
              }

              else
              {
                v118 = v88 + v90 * v91;
                SKCTileMapNode::setTile(v89, v88 + v90 * v91, (v87 << 16) | 0xFFFF);
                v92 = (*(&v143 + 1) + 8 * (v145 >> 10));
                if (v144 == *(&v143 + 1))
                {
                  v93 = 0;
                  v95 = 0;
                  v94 = (*(&v143 + 1) + 8 * ((*(&v145 + 1) + v145) >> 10));
                }

                else
                {
                  v93 = (*v92 + 4 * (v145 & 0x3FF));
                  v94 = (*(&v143 + 1) + 8 * ((*(&v145 + 1) + v145) >> 10));
                  v95 = (*v94 + 4 * ((*(&v145 + 1) + v145) & 0x3FF));
                }

                std::__find_segment_if[abi:ne200100]<std::__deque_iterator<unsigned int,unsigned int *,unsigned int &,unsigned int **,long,1024l>,std::__find_segment<unsigned long>,std::__identity>(v92, v93, v94, v95, &v118);
                if (v144 == *(&v143 + 1))
                {
                  v97 = 0;
                }

                else
                {
                  v97 = *(*(&v143 + 1) + (((*(&v145 + 1) + v145) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v145 + 1) + v145) & 0x3FF);
                }

                if (v97 == v96)
                {
                  v98 = v118;
                  if ((v112 & (v118 == v111)) != 0)
                  {
                    v112 = 1;
                  }

                  else
                  {
                    v117 = v118;
                    std::deque<unsigned int>::push_back(&v143, &v117);
                    v112 |= v98 == v111;
                  }
                }
              }
            }

            ++v86;
          }

          while (v86 < v20);
          v107 = obja;
          v54 = v85;
          goto LABEL_133;
        }

        if (!v113 || ([(SKTileSet *)self->_tileSet defaultTileGroup], v99 = objc_claimAutoreleasedReturnValue(), v100 = v113 == v99, v99, v100))
        {
          SKCTileMapNode::setTile(self->_skcTileMapNode, v110[0], [(SKTileMapNode *)self getTileIDWithTileGroup:0 andTileDefinition:0]);
        }

        else
        {
          v101 = self->_skcTileMapNode;
          v102 = [(SKTileSet *)self->_tileSet defaultTileGroup];
          SKCTileMapNode::setTile(v101, v110[0], [(SKTileMapNode *)self getTileIDWithTileGroup:v102 andTileDefinition:0]);
        }

        v54 = 0;
LABEL_162:

        do
        {
LABEL_30:
          v29 = *v16;
          v16 += 2;
          v30 = v116 + v29;
          v32 = *v19;
          v19 += 2;
          v31 = v32;
          v33 = self->_skcTileMapNode;
          v34 = v33[151];
          if (v30 < v34)
          {
            v35 = v31 + v115;
            if (v33[152] > v35)
            {
              v118 = v30 + v34 * v35;
              v36 = (*(&v143 + 1) + 8 * (v145 >> 10));
              if (v144 == *(&v143 + 1))
              {
                v37 = 0;
                v39 = 0;
                v38 = (*(&v143 + 1) + 8 * ((*(&v145 + 1) + v145) >> 10));
              }

              else
              {
                v37 = (*v36 + 4 * (v145 & 0x3FF));
                v38 = (*(&v143 + 1) + 8 * ((*(&v145 + 1) + v145) >> 10));
                v39 = (*v38 + 4 * ((*(&v145 + 1) + v145) & 0x3FF));
              }

              std::__find_segment_if[abi:ne200100]<std::__deque_iterator<unsigned int,unsigned int *,unsigned int &,unsigned int **,long,1024l>,std::__find_segment<unsigned long>,std::__identity>(v36, v37, v38, v39, &v118);
              if (v144 == *(&v143 + 1))
              {
                v41 = 0;
              }

              else
              {
                v41 = *(*(&v143 + 1) + (((*(&v145 + 1) + v145) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(&v145 + 1) + v145) & 0x3FF);
              }

              if (v41 == v40)
              {
                v42 = v118;
                if ((v112 & (v118 == v111)) != 0)
                {
                  v112 = 1;
                }

                else
                {
                  v117 = v118;
                  std::deque<unsigned int>::push_back(&v143, &v117);
                  v112 |= v42 == v111;
                }
              }
            }
          }

          --v20;
        }

        while (v20);
        goto LABEL_134;
      }

      v68 = 0;
      v69 = *v128;
      do
      {
        for (m = 0; m != v67; ++m)
        {
          if (*v128 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v68 += [*(*(&v127 + 1) + 8 * m) placementWeight];
        }

        v67 = [v66 countByEnumeratingWithState:&v127 objects:v148 count:16];
      }

      while (v67);

      if (!v68)
      {
        goto LABEL_118;
      }

      v71 = arc4random_uniform(v68);
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v72 = v66;
      v73 = [v72 countByEnumeratingWithState:&v123 objects:v147 count:16];
      if (v73)
      {
        v74 = v71;
        *v104 = *v124;
        while (2)
        {
          for (n = 0; n != v73; n = n + 1)
          {
            if (*v124 != *v104)
            {
              objc_enumerationMutation(v72);
            }

            v76 = *(*(&v123 + 1) + 8 * n);
            if (v74 < [v76 placementWeight])
            {
              v73 = v76;
              goto LABEL_137;
            }

            v74 -= [v76 placementWeight];
          }

          v73 = [v72 countByEnumeratingWithState:&v123 objects:v147 count:16];
          if (v73)
          {
            continue;
          }

          break;
        }
      }

LABEL_137:

      if (!v73)
      {
        goto LABEL_138;
      }

LABEL_120:
      v54 = v73;
      v105 = [(SKTileMapNode *)self getTileIDWithTileGroup:v113 andTileDefinition:v73];
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v107 = obja;
      v82 = [v107 countByEnumeratingWithState:&v119 objects:v146 count:16];
      if (v82)
      {
        v83 = *v120;
        while (2)
        {
          for (ii = 0; ii != v82; ++ii)
          {
            if (*v120 != v83)
            {
              objc_enumerationMutation(v107);
            }

            if (*(*(&v119 + 1) + 8 * ii) && v114 == [(SKTileMapNode *)self getTileIDWithTileGroup:v113 andTileDefinition:?])
            {
              v81 = v107;
LABEL_132:
              v107 = v81;

              goto LABEL_133;
            }
          }

          v82 = [v107 countByEnumeratingWithState:&v119 objects:v146 count:16];
          if (v82)
          {
            continue;
          }

          break;
        }
      }

      if (v105 != v114)
      {
        SKCTileMapNode::setTile(self->_skcTileMapNode, v110[0], v105);
        goto LABEL_162;
      }

LABEL_133:

LABEL_134:
      v10 = *(&v145 + 1);
      if (!*(&v145 + 1))
      {
LABEL_166:
        std::deque<unsigned int>::~deque[abi:ne200100](&v143);
        return;
      }
    }
  }

  [(SKTileMapNode *)self updateTileDefinitionWithoutAutomappingAtX:a3 y:a4];
}

- (void)setColumns:(unint64_t)a3 andRows:(int64_t)a4
{
  RawTilesCopy = SKCTileMapNode::getRawTilesCopy(self->_skcTileMapNode);
  v8 = 0;
  v9 = a4 > 0;
  if (a3 && a4 >= 1)
  {
    v8 = malloc_type_malloc(4 * a3 * a4, 0x100004052888210uLL);
    memset(v8, 255, 4 * a3 * a4);
  }

  skcTileMapNode = self->_skcTileMapNode;
  v11 = skcTileMapNode[151];
  if (v11)
  {
    v12 = skcTileMapNode[152];
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      v16 = v8;
      v17 = skcTileMapNode[151];
      v18 = 1;
      v19 = 1;
      do
      {
        v19 &= v15;
        v18 &= v9;
        v20 = v17 != 0;
        if (v17 | a3)
        {
          v21 = 1;
          v22 = v16;
          v23 = RawTilesCopy;
          v24 = a3 != 0;
          v25 = 1;
          v26 = 1;
          while (1)
          {
            v27 = v21;
            v26 &= v20;
            v25 &= v24;
            if (v26 & v19 & v25 & v18)
            {
              *v22 = *(v23 + v13 * v17);
              v11 = skcTileMapNode[151];
            }

            v24 = v21 < a3;
            ++v23;
            ++v22;
            ++v21;
            v17 = v11;
            v20 = v27 < v11;
            if (v27 >= v11)
            {
              v17 = v11;
              if (v27 >= a3)
              {
                break;
              }
            }
          }

          v12 = skcTileMapNode[152];
          v17 = v11;
        }

        else
        {
          v17 = 0;
        }

        v9 = ++v14 < a4;
        v13 += 4;
        v16 += a3;
        v15 = v14 < v12;
      }

      while (v14 < v12 || v14 < a4);
    }
  }

  SKCTileMapNode::setRawTiles(skcTileMapNode, v8, a3, a4);
  free(v8);
  if (RawTilesCopy)
  {
    free(RawTilesCopy);
  }

  [(SKTileMapNode *)self calculateSize];
}

- (void)calculateSize
{
  v3 = [(SKTileMapNode *)self tileSet];
  if (!v3 || (v4 = v3, -[SKTileMapNode tileSet](self, "tileSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 type], v5, v4, !v6))
  {
    skcTileMapNode = self->_skcTileMapNode;
    v27 = [(SKTileMapNode *)self numberOfColumns];
    [(SKTileMapNode *)self tileSize];
    *&v28 = v28 * v27;
    v52 = LODWORD(v28);
    v29 = [(SKTileMapNode *)self numberOfRows];
    [(SKTileMapNode *)self tileSize];
    *&v31 = v30 * v29;
    v55 = __PAIR64__(v31, v52);
    v32 = skcTileMapNode;
LABEL_6:
    SKCNode::setSize(v32, &v55);
    return;
  }

  v7 = [(SKTileMapNode *)self tileSet];
  v8 = [v7 type];

  if (v8 == 1)
  {
    v9 = [(SKTileMapNode *)self numberOfColumns];
    v10 = ([(SKTileMapNode *)self numberOfRows]+ v9);
    [(SKTileMapNode *)self tileSize];
    *&v11 = v11 * v10 * 0.5;
    v51 = LODWORD(v11);
    v12 = [(SKTileMapNode *)self numberOfColumns];
    v13 = ([(SKTileMapNode *)self numberOfRows]+ v12);
    [(SKTileMapNode *)self tileSize];
    *&v15 = v14 * v13 * 0.5;
    v55 = __PAIR64__(v15, v51);
    SKCNode::setSize(self->_skcTileMapNode, &v55);
    [(SKTileMapNode *)self tileSize];
    *&v10 = v16;
    [(SKTileMapNode *)self tileSize];
    *&v13 = v17;
    self->_isoHeightScalar = *&v10 / *&v13;
    v18 = [(SKTileMapNode *)self numberOfColumns];
    LODWORD(v19) = 0;
    *(&v19 + 1) = self->_isoHeightScalar * ((*&v13 * 0.5) * v18);
    *self->_isoOrigin = v19;
    *&v20 = *&v10 * 0.5;
    *&v21 = *&v10 * 0.5;
    *(&v21 + 1) = (*&v13 * -0.5) * self->_isoHeightScalar;
    *self->_isoColumnVector = v21;
    *(&v20 + 1) = (*&v13 * 0.5) * self->_isoHeightScalar;
    *self->_isoRowVector = v20;
    p_isoColumnWidth = &self->_isoColumnWidth;
    self->_isoColumnWidth = sqrtf(vaddv_f32(vmul_f32(*self->_isoColumnVector, *self->_isoColumnVector)));
    p_isoRowHeight = &self->_isoRowHeight;
    self->_isoRowHeight = sqrtf(vaddv_f32(vmul_f32(*self->_isoRowVector, *self->_isoRowVector)));
    v24 = vld1_dup_f32(p_isoColumnWidth);
    *self->_isoColumnVector = vdiv_f32(*self->_isoColumnVector, v24);
    v25 = vld1_dup_f32(p_isoRowHeight);
    *self->_isoRowVector = vdiv_f32(*self->_isoRowVector, v25);
    return;
  }

  v33 = [(SKTileMapNode *)self tileSet];
  v34 = [v33 type];

  if (v34 == 2)
  {
    width = self->_tileSize.width;
    v36 = width * 0.5;
    self->_hexRadius = v36;
    self->_tileSize.height = (v36 * 1.7321);
    v37 = floorf(vcvts_n_f32_u64([(SKTileMapNode *)self numberOfColumns], 1uLL));
    v38 = self->_tileSize.width;
    v53 = (self->_hexRadius * (v37 + -1.0)) + (v38 * v37);
    if (([(SKTileMapNode *)self numberOfColumns]& 1) == 0)
    {
      v53 = v53 + (self->_hexRadius * 1.5);
    }

    height = self->_tileSize.height;
    v40 = [(SKTileMapNode *)self numberOfRows];
    *&v41 = v53;
    *(&v41 + 1) = (v40 + 0.5) * height;
    v55 = v41;
LABEL_17:
    v32 = self->_skcTileMapNode;
    goto LABEL_6;
  }

  v42 = [(SKTileMapNode *)self tileSet];
  v43 = [v42 type];

  if (v43 == 3)
  {
    v44 = self->_tileSize.height;
    v45 = v44 * 0.5;
    self->_hexRadius = v45;
    self->_tileSize.width = (v45 * 1.7321);
    v46 = floorf(vcvts_n_f32_u64([(SKTileMapNode *)self numberOfRows], 1uLL));
    v47 = self->_tileSize.width;
    v54 = ([(SKTileMapNode *)self numberOfColumns]+ 0.5) * v47;
    v48 = self->_tileSize.height;
    v50 = (self->_hexRadius * (v46 + -1.0)) + (v48 * v46);
    if (([(SKTileMapNode *)self numberOfRows]& 1) != 0)
    {
      v49 = v50;
    }

    else
    {
      v49 = v50 + (self->_hexRadius * 1.5);
    }

    v55 = __PAIR64__(LODWORD(v49), LODWORD(v54));
    goto LABEL_17;
  }
}

- (NSUInteger)tileColumnIndexFromPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v42 = *(self->_skcTileMapNode + 21);
  v4 = [(SKTileMapNode *)self tileSet];
  if (!v4 || (v5 = v4, -[SKTileMapNode tileSet](self, "tileSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 type], v6, v5, !v7))
  {
    [(SKTileMapNode *)self anchorPoint];
    v17 = x + v16 * *&v42;
    [(SKTileMapNode *)self tileSize];
    return vcvtmd_u64_f64(v17 / v18);
  }

  v8 = [(SKTileMapNode *)self tileSet];
  v9 = [v8 type];

  if (v9 == 1)
  {
    v10 = x;
    [(SKTileMapNode *)self anchorPoint];
    *&v11 = v11 * *&v42;
    v39 = v10 + *&v11;
    v12 = y;
    [(SKTileMapNode *)self anchorPoint];
    v14 = v13 * *(&v42 + 1);
    *&v13 = v39;
    *(&v13 + 1) = self->_isoHeightScalar * (v12 + v14);
    return vcvtms_u32_f32(vaddv_f32(vmul_f32(*self->_isoColumnVector, vsub_f32(*&v13, *self->_isoOrigin))) / self->_isoColumnWidth);
  }

  v19 = [(SKTileMapNode *)self tileSet];
  v20 = [v19 type];

  if (v20 == 2)
  {
    v21.f64[0] = x;
    v21.f64[1] = y;
    v22 = vcvt_f32_f64(v21);
    [(SKTileMapNode *)self anchorPoint];
    v40 = v23;
    [(SKTileMapNode *)self anchorPoint];
    v24.f64[0] = v40;
    v24.f64[1] = v25;
    v45 = vadd_f32(v22, vcvt_f32_f64(vmulq_f64(v24, vcvtq_f64_f32(*&v42))));
    hexRadius = self->_hexRadius;
    v44 = -1;
    height = self->_tileSize.height;
    v28 = &v44;
    v29 = v43;
LABEL_10:
    getHexIndexFromPoint(&v45, v28, v29, hexRadius, height);
    return v44;
  }

  v30 = [(SKTileMapNode *)self tileSet];
  v31 = [v30 type];

  if (v31 == 3)
  {
    v32.f64[0] = y;
    v32.f64[1] = x;
    v33 = vcvt_f32_f64(v32);
    [(SKTileMapNode *)self anchorPoint];
    v41 = v34;
    [(SKTileMapNode *)self anchorPoint];
    v35.f64[0] = v41;
    v35.f64[1] = v36;
    v45 = vadd_f32(vrev64_s32(vcvt_f32_f64(vmulq_f64(v35, vcvtq_f64_f32(*&v42)))), v33);
    hexRadius = self->_hexRadius;
    v44 = -1;
    height = self->_tileSize.width;
    v28 = v43;
    v29 = &v44;
    goto LABEL_10;
  }

  return -1;
}

- (NSUInteger)tileRowIndexFromPosition:(CGPoint)position
{
  x = position.x;
  y = position.y;
  v42 = *(self->_skcTileMapNode + 21);
  v4 = [(SKTileMapNode *)self tileSet];
  if (!v4 || (v5 = v4, -[SKTileMapNode tileSet](self, "tileSet"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 type], v6, v5, !v7))
  {
    [(SKTileMapNode *)self anchorPoint];
    v17 = y + v16 * *(&v42 + 1);
    [(SKTileMapNode *)self tileSize];
    return vcvtmd_u64_f64(v17 / v18);
  }

  v8 = [(SKTileMapNode *)self tileSet];
  v9 = [v8 type];

  if (v9 == 1)
  {
    v10 = x;
    [(SKTileMapNode *)self anchorPoint];
    *&v11 = v11 * *&v42;
    v38 = v10 + *&v11;
    v12 = y;
    [(SKTileMapNode *)self anchorPoint];
    v14 = v13 * *(&v42 + 1);
    *&v13 = v38;
    *(&v13 + 1) = self->_isoHeightScalar * (v12 + v14);
    return vcvtms_u32_f32(vaddv_f32(vmul_f32(*self->_isoRowVector, vsub_f32(*&v13, *self->_isoOrigin))) / self->_isoRowHeight);
  }

  v19 = [(SKTileMapNode *)self tileSet];
  v20 = [v19 type];

  if (v20 == 2)
  {
    v21.f64[0] = x;
    v21.f64[1] = y;
    v22 = vcvt_f32_f64(v21);
    [(SKTileMapNode *)self anchorPoint];
    v40 = v23;
    [(SKTileMapNode *)self anchorPoint];
    v24.f64[0] = v40;
    v24.f64[1] = v25;
    v45 = vadd_f32(v22, vcvt_f32_f64(vmulq_f64(v24, vcvtq_f64_f32(*&v42))));
    hexRadius = self->_hexRadius;
    v43 = -1;
    height = self->_tileSize.height;
    v28 = v44;
    v29 = &v43;
LABEL_10:
    getHexIndexFromPoint(&v45, v28, v29, hexRadius, height);
    return v43;
  }

  v30 = [(SKTileMapNode *)self tileSet];
  v31 = [v30 type];

  if (v31 == 3)
  {
    v32.f64[0] = y;
    v32.f64[1] = x;
    v33 = vcvt_f32_f64(v32);
    [(SKTileMapNode *)self anchorPoint];
    v41 = v34;
    [(SKTileMapNode *)self anchorPoint];
    v35.f64[0] = v41;
    v35.f64[1] = v36;
    v45 = vadd_f32(vrev64_s32(vcvt_f32_f64(vmulq_f64(v35, vcvtq_f64_f32(*&v42)))), v33);
    hexRadius = self->_hexRadius;
    v43 = -1;
    height = self->_tileSize.width;
    v28 = &v43;
    v29 = v44;
    goto LABEL_10;
  }

  return -1;
}

- (CGPoint)centerOfTileAtColumn:(NSUInteger)column row:(NSUInteger)row
{
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v35 = *(self->_skcTileMapNode + 21);
  v9 = [(SKTileMapNode *)self tileSet];
  if (v9 && (v10 = v9, -[SKTileMapNode tileSet](self, "tileSet"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 type], v11, v10, v12))
  {
    v13 = [(SKTileMapNode *)self tileSet];
    v14 = [v13 type];

    if (v14 == 1)
    {
      v15 = vmla_n_f32(vmla_n_f32(*self->_isoOrigin, vmul_n_f32(*self->_isoColumnVector, self->_isoColumnWidth), column + 0.5), vmul_n_f32(*self->_isoRowVector, self->_isoRowHeight), row + 0.5);
      v7 = v15.f32[0];
      v8 = (v15.f32[1] / self->_isoHeightScalar);
    }

    else
    {
      v23 = [(SKTileMapNode *)self tileSet];
      v24 = [v23 type];

      if (v24 == 2)
      {
        v25 = column * self->_hexRadius;
        [(SKTileMapNode *)self tileSize];
        v7 = v26 * 0.5 + v25 * 1.5;
        [(SKTileMapNode *)self tileSize];
        v8 = (row + 0.5) * v27;
        if (column)
        {
          [(SKTileMapNode *)self tileSize];
          v8 = v8 + v28 * 0.5;
        }
      }

      else
      {
        v29 = [(SKTileMapNode *)self tileSet];
        v30 = [v29 type];

        if (v30 == 3)
        {
          [(SKTileMapNode *)self tileSize];
          v7 = (column + 0.5) * v31;
          v32 = row * self->_hexRadius;
          [(SKTileMapNode *)self tileSize];
          v8 = v33 * 0.5 + v32 * 1.5;
          if (row)
          {
            [(SKTileMapNode *)self tileSize];
            v7 = v7 + v34 * 0.5;
          }
        }
      }
    }
  }

  else
  {
    [(SKTileMapNode *)self tileSize];
    v7 = (column + 0.5) * v16;
    [(SKTileMapNode *)self tileSize];
    v8 = (row + 0.5) * v17;
  }

  [(SKTileMapNode *)self anchorPoint];
  v19 = v7 - v18 * *&v35;
  [(SKTileMapNode *)self anchorPoint];
  v21 = v8 - v20 * *(&v35 + 1);
  v22 = v19;
  result.y = v21;
  result.x = v22;
  return result;
}

- (id)createTileStampFromColumn:(unint64_t)a3 row:(unint64_t)a4 withWidth:(unint64_t)a5 height:(unint64_t)a6 addToTileSet:(BOOL)a7
{
  v12 = [(SKTileMapNode *)self tileSet];
  if (!v12 || !self->_skcTileMapNode || [(SKTileMapNode *)self numberOfColumns]<= a3)
  {

    goto LABEL_18;
  }

  v13 = [(SKTileMapNode *)self numberOfRows];

  if (v13 <= a4)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v27 = a7;
  if (a5 + a3 >= [(SKTileMapNode *)self numberOfColumns])
  {
    a5 = [(SKTileMapNode *)self numberOfColumns]- a3;
  }

  v14 = a6 + a4;
  if (a6 + a4 >= [(SKTileMapNode *)self numberOfRows])
  {
    v14 = [(SKTileMapNode *)self numberOfRows];
    a6 = v14 - a4;
  }

  v26 = a6;
  v28 = malloc_type_malloc(4 * a5 * a6, 0x100004052888210uLL);
  bzero(v28, 4 * a5 * a6);
  if (v14 > a4)
  {
    v15 = v28;
    do
    {
      v16 = v15;
      v17 = a3;
      v18 = a5;
      if (a5 + a3 > a3)
      {
        do
        {
          *v16++ = SKCTileMapNode::getRawTile(self->_skcTileMapNode, v17 + a4 * [(SKTileMapNode *)self numberOfColumns]);
          ++v17;
          --v18;
        }

        while (v18);
      }

      ++a4;
      v15 += a5;
    }

    while (a4 != v14);
  }

  v19 = [SKTileStamp tileStampWithWidth:a5 height:v26 tileData:v28, v26];
  if (v27)
  {
    v20 = MEMORY[0x277CBEB18];
    v21 = [(SKTileMapNode *)self tileSet];
    v22 = [v21 stamps];
    v23 = [v20 arrayWithArray:v22];

    [v23 addObject:v19];
    v24 = [(SKTileMapNode *)self tileSet];
    [v24 setStamps:v23];
  }

  free(v28);
LABEL_19:

  return v19;
}

- (void)applyTileStamp:(id)a3 inColumn:(int64_t)a4 row:(int64_t)a5
{
  v31 = a3;
  v7 = [(SKTileMapNode *)self tileSet];
  if (v7 && self->_skcTileMapNode && -[SKTileMapNode numberOfColumns](self, "numberOfColumns") > a4 && -[SKTileMapNode numberOfRows](self, "numberOfRows") > a5 && [v31 numberOfColumns] + a4 >= 1)
  {
    v27 = self;
    v8 = [v31 numberOfRows] + a5;

    v9 = v8 < 1;
    v10 = v27;
    if (!v9)
    {
      v25 = [v31 tileData];
      v28 = 0;
      for (i = a5; i < -[SKTileMapNode numberOfRows](v10, "numberOfRows", v25) && i < [v31 numberOfRows] + a5; ++i)
      {
        if ((i & 0x8000000000000000) == 0)
        {
          v30 = v25;
          for (j = a4; j < -[SKTileMapNode numberOfColumns](v10, "numberOfColumns") && j < [v31 numberOfColumns] + a4; ++j)
          {
            if ((j & 0x8000000000000000) == 0)
            {
              v12 = [v31 numberOfColumns];
              v13 = [(SKTileMapNode *)v10 numberOfColumns];
              v14 = *(v30 + v28 * v12);
              v15 = [(SKTileMapNode *)v10 tileSet];
              v16 = [v15 tileGroups];
              v17 = [v16 count];

              v18 = [(SKTileMapNode *)v10 tileSet];
              v19 = [v18 tileDefinitions];
              v20 = [v19 count];

              v21 = v14 & 0x7FFF0000;
              if (v17 <= ((v14 >> 16) & 0x7FFF))
              {
                v21 = 2147418112;
              }

              if (v20 <= v14)
              {
                v22 = 0xFFFF;
              }

              else
              {
                v22 = v14;
              }

              v10 = v27;
              SKCTileMapNode::setTile(v27->_skcTileMapNode, j + i * v13, v22 | v21);
            }

            v30 += 4;
          }
        }

        v28 += 4;
      }

      if ([(SKTileMapNode *)v10 enableAutomapping])
      {
        for (k = a5; k < -[SKTileMapNode numberOfRows](v10, "numberOfRows") && k < [v31 numberOfRows] + a5; ++k)
        {
          if ((k & 0x8000000000000000) == 0)
          {
            for (m = a4; m < -[SKTileMapNode numberOfColumns](v10, "numberOfColumns") && m < [v31 numberOfColumns] + a4; ++m)
            {
              if ((m & 0x8000000000000000) == 0)
              {
                [(SKTileMapNode *)v10 updateTileGroupsAtX:m y:k];
              }
            }
          }
        }
      }
    }
  }

  else
  {
  }
}

- (id)tileDefinitionForTileID:(unsigned int)a3
{
  tileSet = self->_tileSet;
  if (tileSet && (v5 = a3, -[SKTileSet tileDefinitions](tileSet, "tileDefinitions"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 > v5))
  {
    v8 = [(SKTileSet *)self->_tileSet tileDefinitions];
    v9 = [v8 objectAtIndexedSubscript:v5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)forceRedraw
{
  skcTileMapNode = self->_skcTileMapNode;
  if (skcTileMapNode)
  {
    SKCTileMapNode::forceRedraw(skcTileMapNode, 1);
  }
}

- (SKAttributeValue)valueForAttributeNamed:(NSString *)key
{
  v5.receiver = self;
  v5.super_class = SKTileMapNode;
  v3 = [(SKNode *)&v5 valueForAttributeNamed:key];

  return v3;
}

- (void)setValue:(SKAttributeValue *)value forAttributeNamed:(NSString *)key
{
  v4.receiver = self;
  v4.super_class = SKTileMapNode;
  [(SKNode *)&v4 setValue:value forAttributeNamed:key];
}

+ (id)debugHierarchyPropertyDescriptions
{
  v26[13] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBED60];
  v3 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, @"propertyName", @"anchorPoint");
  CFDictionaryAddValue(Mutable, @"propertyRuntimeType", @"CGPoint");
  CFDictionaryAddValue(Mutable, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypePoint");
  CFDictionaryAddValue(Mutable, @"propertyFormat", @"CGf, CGf");
  v24 = Mutable;
  v26[0] = Mutable;
  v5 = CFDictionaryCreateMutable(0, 7, v2, v3);
  CFDictionaryAddValue(v5, @"propertyName", @"color");
  CFDictionaryAddValue(v5, @"propertyRuntimeType", @"CGColor");
  CFDictionaryAddValue(v5, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeColor");
  CFDictionaryAddValue(v5, @"propertyFormat", @"color");
  v23 = v5;
  v26[1] = v5;
  v6 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v6, @"propertyName", @"colorBlendFactor");
  CFDictionaryAddValue(v6, @"propertyRuntimeType", @"CGFloat");
  CFDictionaryAddValue(v6, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v6, @"propertyFormat", @"CGf");
  v22 = v6;
  v26[2] = v6;
  v7 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v7, @"propertyName", @"enableAutomapping");
  CFDictionaryAddValue(v7, @"propertyRuntimeType", @"BOOL");
  CFDictionaryAddValue(v7, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeBool");
  CFDictionaryAddValue(v7, @"propertyFormat", @"b");
  v21 = v7;
  v26[3] = v7;
  v8 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v8, @"propertyName", @"lightingBitMask");
  CFDictionaryAddValue(v8, @"propertyRuntimeType", @"unsigned long");
  CFDictionaryAddValue(v8, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v8, @"propertyFormat", @"ul");
  v26[4] = v8;
  v9 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v9, @"propertyName", @"mapSize");
  CFDictionaryAddValue(v9, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v9, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v9, @"propertyFormat", @"CGf, CGf");
  v26[5] = v9;
  v10 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v10, @"propertyName", @"numberOfColumns");
  CFDictionaryAddValue(v10, @"propertyRuntimeType", @"NSUInteger");
  CFDictionaryAddValue(v10, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v10, @"propertyFormat", @"uinteger");
  v26[6] = v10;
  v11 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v11, @"propertyName", @"numberOfRows");
  CFDictionaryAddValue(v11, @"propertyRuntimeType", @"NSUInteger");
  CFDictionaryAddValue(v11, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeNumber");
  CFDictionaryAddValue(v11, @"propertyFormat", @"uinteger");
  v26[7] = v11;
  v12 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v12, @"propertyName", @"shader");
  CFDictionaryAddValue(v12, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v12, @"propertyFormat", @"objectInfo");
  v26[8] = v12;
  v13 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v13, @"propertyName", @"tileSet");
  CFDictionaryAddValue(v13, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeObjectInfo");
  CFDictionaryAddValue(v13, @"propertyFormat", @"objectInfo");
  v26[9] = v13;
  v14 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v14, @"propertyName", @"tileSize");
  CFDictionaryAddValue(v14, @"propertyRuntimeType", @"CGSize");
  CFDictionaryAddValue(v14, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeSize");
  CFDictionaryAddValue(v14, @"propertyFormat", @"CGf, CGf");
  v26[10] = v14;
  v15 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v15, @"propertyName", @"blendMode");
  CFDictionaryAddValue(v15, @"propertyRuntimeType", @"SKBlendMode");
  CFDictionaryAddValue(v15, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeEnum");
  CFDictionaryAddValue(v15, @"propertyFormat", @"integer");
  v26[11] = v15;
  v16 = CFDictionaryCreateMutable(0, 7, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(v16, @"propertyName", @"visualRepresentation");
  CFDictionaryAddValue(v16, @"propertyRuntimeType", @"CGImage");
  CFDictionaryAddValue(v16, @"propertyLogicalType", @"DebugHierarchyLogicalPropertyTypeImage");
  CFDictionaryAddValue(v16, @"propertyFormat", @"public.data");
  valuePtr = 8;
  v17 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v16, @"visibility", v17);
  CFRelease(v17);
  valuePtr = 1;
  v18 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionaryAddValue(v16, @"propertyOptions", v18);
  CFRelease(v18);
  v26[12] = v16;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:13];

  return v19;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 outOptions:(id *)a5 outError:(id *)Mutable
{
  v50[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v46 = a4;
  if ([v9 isEqualToString:@"visualRepresentation"])
  {
    Mutable = [v46 createDebugHierarchyVisualRepresentation];
    v47 = @"propertyFormat";
    v10 = [*MEMORY[0x277CE1E10] identifier];
    v48 = v10;
    *a5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];

    goto LABEL_61;
  }

  if (![v9 isEqualToString:@"color"])
  {
    v19 = v46;
    v20 = v9;
    if ([(NSString *)v20 length])
    {
      NSSelectorFromString(v20);
      if (objc_opt_respondsToSelector())
      {
        v21 = v20;
        if (v21)
        {
LABEL_16:
          Mutable = [v19 valueForKey:v21];
LABEL_60:

          goto LABEL_61;
        }
      }

      else
      {
        if ([(NSString *)v20 length]< 2)
        {
          v25 = [(NSString *)v20 uppercaseString];
        }

        else
        {
          v22 = [(NSString *)v20 substringToIndex:1];
          v23 = [v22 uppercaseString];
          v24 = [(NSString *)v20 substringFromIndex:1];
          v25 = [v23 stringByAppendingString:v24];
        }

        v34 = [@"is" stringByAppendingString:v25];
        NSSelectorFromString(v34);
        if (objc_opt_respondsToSelector())
        {
          v21 = v34;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          goto LABEL_16;
        }
      }
    }

    if (Mutable)
    {
      v35 = v19;
      v36 = v20;
      if (v35)
      {
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v35];
      }

      else
      {
        v37 = &stru_282E190D8;
      }

      if (v36)
      {
        v38 = v36;
      }

      else
      {
        v38 = &stru_282E190D8;
      }

      v39 = v38;
      v49[0] = @"propertyName";
      v49[1] = @"objectDescription";
      v50[0] = v39;
      v50[1] = v37;
      v49[2] = @"errorDescription";
      v50[2] = &stru_282E190D8;
      v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
      v41 = [MEMORY[0x277CCA9B8] errorWithDomain:@"DebugHierarchyErrorDomain" code:100 userInfo:v40];

      v42 = v41;
      *Mutable = v41;

      v21 = 0;
      Mutable = 0;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_60;
  }

  v45 = [v46 color];
  v11 = [v45 CGColor];
  if (v11)
  {
    Mutable = CFDictionaryCreateMutable(0, 20, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    space = CGColorGetColorSpace(v11);
    v12 = CGColorSpaceCopyName(space);
    NumberOfComponents = CGColorGetNumberOfComponents(v11);
    v14 = NumberOfComponents << 32;
    v15 = NumberOfComponents;
    if (NumberOfComponents << 32)
    {
      v16 = CFStringCreateMutable(0, 0);
      v17 = v15 - 1;
      if (v15 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v15;
      }

      do
      {
        CFStringAppend(v16, @"CGf");
        if (v17)
        {
          CFStringAppend(v16, @", ");
        }

        --v17;
        --v18;
      }

      while (v18);
    }

    else
    {
      v16 = &stru_282E190D8;
    }

    Components = CGColorGetComponents(v11);
    v27 = malloc_type_malloc(v14 >> 29, 0x6004044C4A2DFuLL);
    v28 = v27;
    if (v14)
    {
      if (v15 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v15;
      }

      v30 = v27;
      do
      {
        *v30++ = CFNumberCreate(0, kCFNumberCGFloatType, Components++);
        --v29;
      }

      while (v29);
    }

    v31 = CFArrayCreate(0, v28, v15, MEMORY[0x277CBF128]);
    if (v14)
    {
      if (v15 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v15;
      }

      v33 = v28;
      do
      {
        CFRelease(*v33++);
        --v32;
      }

      while (v32);
    }

    free(v28);
    CGColorSpaceGetModel(space);
    if (v31)
    {
      CFDictionaryAddValue(Mutable, @"componentValues", v31);
    }

    if (v16)
    {
      CFDictionaryAddValue(Mutable, @"componentValuesFormat", v16);
    }

    if (v12)
    {
      CFDictionaryAddValue(Mutable, @"colorSpaceName", v12);
    }

    if (v31)
    {
      CFRelease(v31);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_61:

  return Mutable;
}

@end