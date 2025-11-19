@interface CRLMutableBrushStrokeStorage
- (CRLMutableBrushStrokeStorage)init;
- (id)deepCopy;
- (unint64_t)totalSectionCount;
- (void)addPath:(id)a3 withBounds:(CGRect)a4 shouldSmooth:(BOOL)a5 forKey:(id)a6;
- (void)addTextureIndex:(unint64_t)a3 forKey:(id)a4;
- (void)setImage:(id)a3;
- (void)setLineEnd:(id)a3 forKey:(id)a4;
- (void)setOption:(id)a3 forKey:(id)a4;
@end

@implementation CRLMutableBrushStrokeStorage

- (CRLMutableBrushStrokeStorage)init
{
  v14.receiver = self;
  v14.super_class = CRLMutableBrushStrokeStorage;
  v2 = [(CRLMutableBrushStrokeStorage *)&v14 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    paths = v2->_paths;
    v2->_paths = v3;

    v5 = +[NSMutableDictionary dictionary];
    bounds = v2->_bounds;
    v2->_bounds = v5;

    v7 = +[NSMutableDictionary dictionary];
    textureIndices = v2->_textureIndices;
    v2->_textureIndices = v7;

    v9 = +[NSMutableDictionary dictionary];
    options = v2->_options;
    v2->_options = v9;

    v11 = +[NSMutableDictionary dictionary];
    lineEnds = v2->_lineEnds;
    v2->_lineEnds = v11;
  }

  return v2;
}

- (unint64_t)totalSectionCount
{
  v2 = [(CRLMutableBrushStrokeStorage *)self paths];
  v3 = [CRLImmutableBrushStrokeStorage p_totalSectionCountWithPaths:v2];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = [a3 copy];
  image = self->_image;
  self->_image = v4;
}

- (void)addPath:(id)a3 withBounds:(CGRect)a4 shouldSmooth:(BOOL)a5 forKey:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v24 = a3;
  v13 = a6;
  v14 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:v13];
  if (!v14)
  {
    v14 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_paths setObject:v14 forKeyedSubscript:v13];
  }

  v15 = [(NSMutableDictionary *)self->_bounds objectForKeyedSubscript:v13];
  if (v15)
  {
    if (a5)
    {
LABEL_5:
      v16 = [CRLMutableBrushStrokeStorage p_smoothPath:v24];
      goto LABEL_8;
    }
  }

  else
  {
    v15 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_bounds setObject:v15 forKeyedSubscript:v13];
    if (a5)
    {
      goto LABEL_5;
    }
  }

  v16 = [v24 copy];
LABEL_8:
  v17 = v16;
  v18 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:v13];
  v19 = [CRLBrushStrokeStorageBezierPathContainer alloc];
  v20 = [v24 copy];
  v21 = [(CRLBrushStrokeStorageBezierPathContainer *)v19 initWithOriginalPath:v20 pathWithPossibleSmoothing:v17];
  [v18 addObject:v21];

  v22 = [(NSMutableDictionary *)self->_bounds objectForKeyedSubscript:v13];
  v23 = [NSValue valueWithCGRect:x, y, width, height];
  [v22 addObject:v23];
}

- (void)addTextureIndex:(unint64_t)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(NSMutableDictionary *)self->_textureIndices objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_textureIndices setObject:v6 forKeyedSubscript:v8];
  }

  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [v6 addObject:v7];
}

- (void)setOption:(id)a3 forKey:(id)a4
{
  options = self->_options;
  v6 = a4;
  v7 = [a3 copy];
  [(NSMutableDictionary *)options setObject:v7 forKey:v6];
}

- (void)setLineEnd:(id)a3 forKey:(id)a4
{
  lineEnds = self->_lineEnds;
  v6 = a4;
  v7 = a3;
  v8 = [CRLLineEnd alloc];
  v20 = [v7 path];
  v9 = [v20 copy];
  v10 = [v7 wrapPath];
  v11 = [v10 copy];
  [v7 endPoint];
  v13 = v12;
  v15 = v14;
  v16 = [v7 isFilled];
  v17 = [v7 identifier];
  v18 = [v7 lineJoin];

  v19 = [(CRLLineEnd *)v8 initWithBezierPath:v9 wrapPath:v11 endPoint:v16 isFilled:v17 identifier:v18 lineJoin:v13, v15];
  [(NSMutableDictionary *)lineEnds setObject:v19 forKey:v6];
}

- (id)deepCopy
{
  v2 = [[CRLImmutableBrushStrokeStorage alloc] initWithImage:self->_image paths:self->_paths bounds:self->_bounds textureIndices:self->_textureIndices options:self->_options lineEnds:self->_lineEnds];
  v3 = [(CRLImmutableBrushStrokeStorage *)v2 deepCopy];

  return v3;
}

@end