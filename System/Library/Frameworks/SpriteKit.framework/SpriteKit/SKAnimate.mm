@interface SKAnimate
+ (id)animateWithNormalTextures:(id)a3 timePerFrame:(double)a4 resize:(BOOL)a5 restore:(BOOL)a6;
+ (id)animateWithTextures:(id)a3 timePerFrame:(double)a4 resize:(BOOL)a5 restore:(BOOL)a6;
- (SKAnimate)init;
- (SKAnimate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reversedAction;
- (void)encodeWithCoder:(id)a3;
- (void)setDuration:(double)a3;
- (void)setTimePerFrame:(double)a3;
@end

@implementation SKAnimate

- (SKAnimate)init
{
  v3.receiver = self;
  v3.super_class = SKAnimate;
  if ([(SKAction *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (SKAnimate)initWithCoder:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKAnimate;
  if ([(SKAction *)&v6 initWithCoder:v4])
  {
    operator new();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = SKAnimate;
  [(SKAction *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(self->_mycaction + 17)];
  [v4 encodeObject:v5 forKey:@"_timePerFrame"];

  [v4 encodeObject:self->_textures forKey:@"_textures"];
  [v4 encodeBool:*(self->_mycaction + 161) forKey:@"_resize"];
  [v4 encodeBool:*(self->_mycaction + 160) forKey:@"_restore"];
}

+ (id)animateWithTextures:(id)a3 timePerFrame:(double)a4 resize:(BOOL)a5 restore:(BOOL)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (![v9 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction animateWithTextures: textures array cannot be empty"];
  }

  v10 = objc_alloc_init(SKAnimate);
  v11 = [v9 copy];
  textures = v10->_textures;
  v10->_textures = v11;

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v10->_textures;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v23 = *(*(&v19 + 1) + 8 * i);
        std::vector<SKTexture * {__strong}>::push_back[abi:ne200100](v10->_mycaction + 14, &v23);
      }

      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  *(v10->_mycaction + 17) = a4;
  -[SKAnimate setDuration:](v10, "setDuration:", [v9 count] * a4);
  mycaction = v10->_mycaction;
  mycaction[160] = a6;
  mycaction[161] = a5;

  return v10;
}

+ (id)animateWithNormalTextures:(id)a3 timePerFrame:(double)a4 resize:(BOOL)a5 restore:(BOOL)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (![v9 count])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"SKAction animateWithNormalTextures: textures array cannot be empty"];
  }

  v10 = objc_alloc_init(SKAnimate);
  v11 = [v9 copy];
  textures = v10->_textures;
  v10->_textures = v11;

  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v10->_textures;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v14)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v23 = *(*(&v19 + 1) + 8 * i);
        std::vector<SKTexture * {__strong}>::push_back[abi:ne200100](v10->_mycaction + 14, &v23);
      }

      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v14);
  }

  *(v10->_mycaction + 17) = a4;
  -[SKAnimate setDuration:](v10, "setDuration:", [v9 count] * a4);
  mycaction = v10->_mycaction;
  mycaction[160] = a6;
  mycaction[161] = a5;
  mycaction[162] = 1;

  return v10;
}

- (void)setDuration:(double)a3
{
  v5.receiver = self;
  v5.super_class = SKAnimate;
  [(SKAction *)&v5 setDuration:?];
  *(self->_mycaction + 17) = a3 / [(NSArray *)self->_textures count];
}

- (void)setTimePerFrame:(double)a3
{
  *(self->_mycaction + 17) = a3;
  v4 = [(NSArray *)self->_textures count]* a3;

  [(SKAnimate *)self setDuration:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  textures = self->_textures;
  [(SKAnimate *)self timePerFrame];
  v5 = [SKAnimate animateWithTextures:textures timePerFrame:*(self->_mycaction + 161) resize:*(self->_mycaction + 160) restore:?];
  [v5 setTimingMode:{-[SKAction timingMode](self, "timingMode")}];
  *(v5[2] + 162) = *(self->_mycaction + 162);
  return v5;
}

- (id)reversedAction
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_textures, "count")}];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_textures;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 insertObject:*(*(&v12 + 1) + 8 * i) atIndex:{0, v12}];
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = [SKAnimate animateWithTextures:v3 timePerFrame:*(self->_mycaction + 161) resize:*(self->_mycaction + 160) restore:*(self->_mycaction + 17)];
  mycaction = self->_mycaction;
  v10 = v8[2];
  *(v10 + 60) = mycaction[15];
  *(v10 + 162) = *(mycaction + 162);

  return v8;
}

@end