@interface SKTileDefinition
+ (SKTileDefinition)tileDefinitionWithTexture:(SKTexture *)texture;
+ (SKTileDefinition)tileDefinitionWithTexture:(SKTexture *)texture normalTexture:(SKTexture *)normalTexture size:(CGSize)size;
+ (SKTileDefinition)tileDefinitionWithTexture:(SKTexture *)texture size:(CGSize)size;
+ (SKTileDefinition)tileDefinitionWithTextures:(NSArray *)textures normalTextures:(NSArray *)normalTextures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame;
+ (SKTileDefinition)tileDefinitionWithTextures:(NSArray *)textures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame;
- (BOOL)isEqualToNode:(id)a3;
- (CGSize)size;
- (SKTileDefinition)init;
- (SKTileDefinition)initWithCoder:(id)a3;
- (SKTileDefinition)initWithTexture:(SKTexture *)texture;
- (SKTileDefinition)initWithTexture:(SKTexture *)texture normalTexture:(SKTexture *)normalTexture size:(CGSize)size;
- (SKTileDefinition)initWithTexture:(SKTexture *)texture size:(CGSize)size;
- (SKTileDefinition)initWithTextures:(NSArray *)textures normalTextures:(NSArray *)normalTextures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame;
- (SKTileDefinition)initWithTextures:(NSArray *)textures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame;
- (SKTileGroupRule)parentRule;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDataWithTexture:(id)a3 normalTexture:(id)a4 tileName:(id)a5 size:(CGSize)a6;
- (void)setDataWithTextures:(id)a3 normalTextures:(id)a4 timePerFrame:(double)a5 tileName:(id)a6 size:(CGSize)a7;
- (void)setFlipHorizontally:(BOOL)flipHorizontally;
- (void)setFlipVertically:(BOOL)flipVertically;
- (void)setNormalTextures:(NSArray *)normalTextures;
- (void)setTextures:(NSArray *)textures;
@end

@implementation SKTileDefinition

- (void)setTextures:(NSArray *)textures
{
  v6 = textures;
  [(SKTileDefinition *)self willChangeValueForKey:@"images"];
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
  v5 = self->_textures;
  self->_textures = v4;

  [(SKTileDefinition *)self didChangeValueForKey:@"images"];
}

- (void)setFlipVertically:(BOOL)flipVertically
{
  v3 = 4;
  if (!flipVertically)
  {
    v3 = 0;
  }

  self->_orientation = self->_orientation & 0xFFFFFFFFFFFFFFFBLL | v3;
}

- (void)setFlipHorizontally:(BOOL)flipHorizontally
{
  v3 = 8;
  if (!flipHorizontally)
  {
    v3 = 0;
  }

  self->_orientation = self->_orientation & 0xFFFFFFFFFFFFFFF7 | v3;
}

- (void)setNormalTextures:(NSArray *)normalTextures
{
  v6 = normalTextures;
  [(SKTileDefinition *)self willChangeValueForKey:@"normalTextures"];
  v4 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
  normals = self->_normals;
  self->_normals = v4;

  [(SKTileDefinition *)self didChangeValueForKey:@"normalTextures"];
}

- (SKTileDefinition)initWithCoder:(id)a3
{
  v29[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SKTileDefinition;
  v5 = [(SKTileDefinition *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v29[2] = objc_opt_class();
    v29[3] = objc_opt_class();
    v29[4] = objc_opt_class();
    v29[5] = objc_opt_class();
    v29[6] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];
    [v6 addObjectsFromArray:v7];

    v8 = [v4 allowedClasses];
    [v6 unionSet:v8];

    v9 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v28[2] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    v11 = [v9 setWithArray:v10];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"_textures"];
    textures = v5->_textures;
    v5->_textures = v12;

    v14 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v16 = [v14 setWithArray:v15];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_normals"];
    normals = v5->_normals;
    v5->_normals = v17;

    v19 = [v4 decodeObjectOfClasses:v6 forKey:@"_userData"];
    [(SKTileDefinition *)v5 setUserData:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_uuid"];
    [(SKTileDefinition *)v5 setUid:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    [(SKTileDefinition *)v5 setName:v21];

    [v4 decodeDoubleForKey:@"_width"];
    v23 = v22;
    [v4 decodeDoubleForKey:@"_height"];
    [(SKTileDefinition *)v5 setSize:v23, v24];
    [v4 decodeDoubleForKey:@"_timePerFrame"];
    [(SKTileDefinition *)v5 setTimePerFrame:?];
    -[SKTileDefinition setPlacementWeight:](v5, "setPlacementWeight:", [v4 decodeIntegerForKey:@"_placementWeight"]);
    v5->_orientation = [v4 decodeIntegerForKey:@"_orientation"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeObject:self->_textures forKey:@"_textures"];
  [v8 encodeObject:self->_normals forKey:@"_normals"];
  v4 = [(SKTileDefinition *)self userData];
  [v8 encodeObject:v4 forKey:@"_userData"];

  v5 = [(SKTileDefinition *)self uid];
  [v8 encodeObject:v5 forKey:@"_uid"];

  v6 = [(SKTileDefinition *)self name];
  [v8 encodeObject:v6 forKey:@"_name"];

  [(SKTileDefinition *)self size];
  [v8 encodeDouble:@"_width" forKey:?];
  [(SKTileDefinition *)self size];
  [v8 encodeDouble:@"_height" forKey:v7];
  [(SKTileDefinition *)self timePerFrame];
  [v8 encodeDouble:@"_timePerFrame" forKey:?];
  [v8 encodeInteger:-[SKTileDefinition placementWeight](self forKey:{"placementWeight"), @"_placementWeight"}];
  [v8 encodeInteger:self->_orientation forKey:@"_orientation"];
}

- (BOOL)isEqualToNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (self->_orientation != v6->_orientation)
    {
      goto LABEL_21;
    }

    [(SKTileDefinition *)self size];
    v8 = v7;
    [(SKTileDefinition *)v6 size];
    if (v8 != v9)
    {
      goto LABEL_21;
    }

    [(SKTileDefinition *)self size];
    v11 = v10;
    [(SKTileDefinition *)v6 size];
    if (v11 != v12)
    {
      goto LABEL_21;
    }

    v13 = [(SKTileDefinition *)self name];
    if (v13)
    {
    }

    else
    {
      v15 = [(SKTileDefinition *)v6 name];

      if (!v15)
      {
LABEL_10:
        if (self->_placementWeight == v6->_placementWeight)
        {
          timePerFrame = self->_timePerFrame;
          v20 = v6->_timePerFrame;
          if ((COERCE_UNSIGNED_INT(timePerFrame - v20) & 0x60000000) == 0)
          {
            v21 = [(SKTileDefinition *)self uid];
            if (v21)
            {
            }

            else
            {
              v22 = [(SKTileDefinition *)v6 uid];

              if (!v22)
              {
                goto LABEL_16;
              }
            }

            v23 = [(SKTileDefinition *)self uid];
            v24 = [(SKTileDefinition *)v6 uid];
            v25 = [v23 isEqualToString:v24];

            if (v25)
            {
LABEL_16:
              v26 = 0;
              while ([(NSMutableArray *)self->_textures count]> v26)
              {
                if ([(NSMutableArray *)v6->_textures count]<= v26)
                {
                  goto LABEL_21;
                }

                v27 = [(NSMutableArray *)self->_textures objectAtIndexedSubscript:v26];
                v28 = [(NSMutableArray *)v6->_textures objectAtIndexedSubscript:v26];
                v29 = [v27 isEqualToTexture:v28];

                v14 = 0;
                ++v26;
                if ((v29 & 1) == 0)
                {
                  goto LABEL_22;
                }
              }

              v31 = 0;
              do
              {
                v32 = [(NSMutableArray *)self->_normals count];
                v14 = v32 <= v31;
                if (v32 <= v31)
                {
                  break;
                }

                if ([(NSMutableArray *)v6->_normals count]<= v31)
                {
                  break;
                }

                v33 = [(NSMutableArray *)self->_normals objectAtIndexedSubscript:v31];
                v34 = [(NSMutableArray *)v6->_normals objectAtIndexedSubscript:v31];
                v35 = [v33 isEqualToTexture:v34];

                ++v31;
              }

              while ((v35 & 1) != 0);
              goto LABEL_22;
            }
          }
        }

LABEL_21:
        v14 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v16 = [(SKTileDefinition *)self name];
    v17 = [(SKTileDefinition *)v6 name];
    v18 = [v16 isEqualToString:v17];

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  v14 = 1;
LABEL_23:

  return v14;
}

- (id)copy
{
  v3 = MEMORY[0x21CF09E30](self, a2);

  return [(SKTileDefinition *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setTextures:self->_textures];
    [v5 setNormalTextures:self->_normals];
    v6 = [(SKTileDefinition *)self uid];
    [v5 setUid:v6];

    [(SKTileDefinition *)self size];
    [v5 setSize:?];
    [(SKTileDefinition *)self timePerFrame];
    [v5 setTimePerFrame:?];
    [v5 setPlacementWeight:{-[SKTileDefinition placementWeight](self, "placementWeight")}];
  }

  return v5;
}

- (void)setDataWithTexture:(id)a3 normalTexture:(id)a4 tileName:(id)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v17 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CBEB18] array];
  textures = self->_textures;
  self->_textures = v13;

  if (v17)
  {
    [(NSMutableArray *)self->_textures addObject:v17];
  }

  v15 = [MEMORY[0x277CBEB18] array];
  normals = self->_normals;
  self->_normals = v15;

  if (v11)
  {
    [(NSMutableArray *)self->_normals addObject:v11];
  }

  [v17 setFilteringMode:0];
  self->_timePerFrame = 0.0;
  [(SKTileDefinition *)self setName:v12];
  [(SKTileDefinition *)self setSize:width, height];
  [(SKTileDefinition *)self setPlacementWeight:1];
}

- (void)setDataWithTextures:(id)a3 normalTextures:(id)a4 timePerFrame:(double)a5 tileName:(id)a6 size:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v31 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
  textures = self->_textures;
  self->_textures = v16;

  v18 = [MEMORY[0x277CBEB18] arrayWithArray:v14];
  normals = self->_normals;
  self->_normals = v18;

  self->_timePerFrame = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = self->_textures;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v21)
  {
    v22 = *v27;
    do
    {
      v23 = 0;
      do
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v26 + 1) + 8 * v23++) setFilteringMode:{0, v26}];
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }

  [(SKTileDefinition *)self setName:v15];
  v24 = [MEMORY[0x277CCAD78] UUID];
  v25 = [v24 UUIDString];
  [(SKTileDefinition *)self setUid:v25];

  [(SKTileDefinition *)self setSize:width, height];
  self->_orientation = 0;
}

- (SKTileDefinition)init
{
  v5.receiver = self;
  v5.super_class = SKTileDefinition;
  v2 = [(SKTileDefinition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SKTileDefinition *)v2 setDataWithTexture:0 normalTexture:0 tileName:0 size:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  return v3;
}

- (SKTileDefinition)initWithTexture:(SKTexture *)texture
{
  v4 = texture;
  v7.receiver = self;
  v7.super_class = SKTileDefinition;
  v5 = [(SKTileDefinition *)&v7 init];
  if (v5)
  {
    [(SKTexture *)v4 size];
    [(SKTileDefinition *)v5 setDataWithTexture:v4 normalTexture:0 tileName:0 size:?];
  }

  return v5;
}

- (SKTileDefinition)initWithTexture:(SKTexture *)texture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = texture;
  v11.receiver = self;
  v11.super_class = SKTileDefinition;
  v8 = [(SKTileDefinition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SKTileDefinition *)v8 setDataWithTexture:v7 normalTexture:0 tileName:0 size:width, height];
  }

  return v9;
}

- (SKTileDefinition)initWithTexture:(SKTexture *)texture normalTexture:(SKTexture *)normalTexture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = texture;
  v10 = normalTexture;
  v14.receiver = self;
  v14.super_class = SKTileDefinition;
  v11 = [(SKTileDefinition *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(SKTileDefinition *)v11 setDataWithTexture:v9 normalTexture:v10 tileName:0 size:width, height];
  }

  return v12;
}

- (SKTileDefinition)initWithTextures:(NSArray *)textures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame
{
  height = size.height;
  width = size.width;
  v9 = textures;
  v13.receiver = self;
  v13.super_class = SKTileDefinition;
  v10 = [(SKTileDefinition *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SKTileDefinition *)v10 setDataWithTextures:v9 normalTextures:MEMORY[0x277CBEBF8] timePerFrame:0 tileName:timePerFrame size:width, height];
  }

  return v11;
}

- (SKTileDefinition)initWithTextures:(NSArray *)textures normalTextures:(NSArray *)normalTextures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame
{
  height = size.height;
  width = size.width;
  v11 = textures;
  v12 = normalTextures;
  v16.receiver = self;
  v16.super_class = SKTileDefinition;
  v13 = [(SKTileDefinition *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(SKTileDefinition *)v13 setDataWithTextures:v11 normalTextures:v12 timePerFrame:0 tileName:timePerFrame size:width, height];
  }

  return v14;
}

+ (SKTileDefinition)tileDefinitionWithTexture:(SKTexture *)texture
{
  v3 = texture;
  v4 = [[SKTileDefinition alloc] initWithTexture:v3];

  return v4;
}

+ (SKTileDefinition)tileDefinitionWithTexture:(SKTexture *)texture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = texture;
  v7 = [[SKTileDefinition alloc] initWithTexture:v6 size:width, height];

  return v7;
}

+ (SKTileDefinition)tileDefinitionWithTexture:(SKTexture *)texture normalTexture:(SKTexture *)normalTexture size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = texture;
  v9 = normalTexture;
  v10 = [[SKTileDefinition alloc] initWithTexture:v8 normalTexture:v9 size:width, height];

  return v10;
}

+ (SKTileDefinition)tileDefinitionWithTextures:(NSArray *)textures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame
{
  height = size.height;
  width = size.width;
  v8 = textures;
  v9 = [[SKTileDefinition alloc] initWithTextures:v8 size:width timePerFrame:height, timePerFrame];

  return v9;
}

+ (SKTileDefinition)tileDefinitionWithTextures:(NSArray *)textures normalTextures:(NSArray *)normalTextures size:(CGSize)size timePerFrame:(CGFloat)timePerFrame
{
  height = size.height;
  width = size.width;
  v10 = textures;
  v11 = normalTextures;
  v12 = [[SKTileDefinition alloc] initWithTextures:v10 normalTextures:v11 size:width timePerFrame:height, timePerFrame];

  return v12;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (SKTileGroupRule)parentRule
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRule);

  return WeakRetained;
}

@end