@interface NTKExtragalacticGlyphShapes
- (NTKExtragalacticGlyphShapes)init;
- (void)removeAllPaths;
- (void)setPath:(id)a3 forGlyphColor:(unint64_t)a4;
- (void)setPosition:(CGPoint)a3;
- (void)setShapeFrame:(CGRect)a3;
- (void)setShapeLayer:(id)a3 atGlyphColor:(unint64_t)a4;
@end

@implementation NTKExtragalacticGlyphShapes

- (NTKExtragalacticGlyphShapes)init
{
  v6.receiver = self;
  v6.super_class = NTKExtragalacticGlyphShapes;
  v2 = [(NTKExtragalacticGlyphShapes *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    glyphLayers = v2->_glyphLayers;
    v2->_glyphLayers = v3;
  }

  return v2;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSMutableDictionary *)self->_glyphLayers allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setPosition:{x, y}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setShapeFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = *MEMORY[0x277D85DE8];
  self->_shapeFrame = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(NSMutableDictionary *)self->_glyphLayers allValues];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) setFrame:{x, y, width, height}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setShapeLayer:(id)a3 atGlyphColor:(unint64_t)a4
{
  glyphLayers = self->_glyphLayers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)glyphLayers setObject:v7 forKeyedSubscript:v8];
}

- (void)setPath:(id)a3 forGlyphColor:(unint64_t)a4
{
  glyphLayers = self->_glyphLayers;
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v10 = [v6 numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)glyphLayers objectForKeyedSubscript:v10];
  v9 = [v7 CGPath];

  [v8 setPath:v9];
}

- (void)removeAllPaths
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_glyphLayers allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) setPath:0];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end