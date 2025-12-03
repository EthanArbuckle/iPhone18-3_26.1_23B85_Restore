@interface CRLMutableBrushStrokeStorage
- (CRLMutableBrushStrokeStorage)init;
- (id)deepCopy;
- (unint64_t)totalSectionCount;
- (void)addPath:(id)path withBounds:(CGRect)bounds shouldSmooth:(BOOL)smooth forKey:(id)key;
- (void)addTextureIndex:(unint64_t)index forKey:(id)key;
- (void)setImage:(id)image;
- (void)setLineEnd:(id)end forKey:(id)key;
- (void)setOption:(id)option forKey:(id)key;
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
  paths = [(CRLMutableBrushStrokeStorage *)self paths];
  v3 = [CRLImmutableBrushStrokeStorage p_totalSectionCountWithPaths:paths];

  return v3;
}

- (void)setImage:(id)image
{
  v4 = [image copy];
  image = self->_image;
  self->_image = v4;
}

- (void)addPath:(id)path withBounds:(CGRect)bounds shouldSmooth:(BOOL)smooth forKey:(id)key
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  pathCopy = path;
  keyCopy = key;
  v14 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:keyCopy];
  if (!v14)
  {
    v14 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_paths setObject:v14 forKeyedSubscript:keyCopy];
  }

  v15 = [(NSMutableDictionary *)self->_bounds objectForKeyedSubscript:keyCopy];
  if (v15)
  {
    if (smooth)
    {
LABEL_5:
      v16 = [CRLMutableBrushStrokeStorage p_smoothPath:pathCopy];
      goto LABEL_8;
    }
  }

  else
  {
    v15 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_bounds setObject:v15 forKeyedSubscript:keyCopy];
    if (smooth)
    {
      goto LABEL_5;
    }
  }

  v16 = [pathCopy copy];
LABEL_8:
  v17 = v16;
  v18 = [(NSMutableDictionary *)self->_paths objectForKeyedSubscript:keyCopy];
  v19 = [CRLBrushStrokeStorageBezierPathContainer alloc];
  v20 = [pathCopy copy];
  v21 = [(CRLBrushStrokeStorageBezierPathContainer *)v19 initWithOriginalPath:v20 pathWithPossibleSmoothing:v17];
  [v18 addObject:v21];

  v22 = [(NSMutableDictionary *)self->_bounds objectForKeyedSubscript:keyCopy];
  height = [NSValue valueWithCGRect:x, y, width, height];
  [v22 addObject:height];
}

- (void)addTextureIndex:(unint64_t)index forKey:(id)key
{
  keyCopy = key;
  v6 = [(NSMutableDictionary *)self->_textureIndices objectForKeyedSubscript:?];
  if (!v6)
  {
    v6 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_textureIndices setObject:v6 forKeyedSubscript:keyCopy];
  }

  v7 = [NSNumber numberWithUnsignedInteger:index];
  [v6 addObject:v7];
}

- (void)setOption:(id)option forKey:(id)key
{
  options = self->_options;
  keyCopy = key;
  v7 = [option copy];
  [(NSMutableDictionary *)options setObject:v7 forKey:keyCopy];
}

- (void)setLineEnd:(id)end forKey:(id)key
{
  lineEnds = self->_lineEnds;
  keyCopy = key;
  endCopy = end;
  v8 = [CRLLineEnd alloc];
  path = [endCopy path];
  v9 = [path copy];
  wrapPath = [endCopy wrapPath];
  v11 = [wrapPath copy];
  [endCopy endPoint];
  v13 = v12;
  v15 = v14;
  isFilled = [endCopy isFilled];
  identifier = [endCopy identifier];
  lineJoin = [endCopy lineJoin];

  v19 = [(CRLLineEnd *)v8 initWithBezierPath:v9 wrapPath:v11 endPoint:isFilled isFilled:identifier identifier:lineJoin lineJoin:v13, v15];
  [(NSMutableDictionary *)lineEnds setObject:v19 forKey:keyCopy];
}

- (id)deepCopy
{
  v2 = [[CRLImmutableBrushStrokeStorage alloc] initWithImage:self->_image paths:self->_paths bounds:self->_bounds textureIndices:self->_textureIndices options:self->_options lineEnds:self->_lineEnds];
  deepCopy = [(CRLImmutableBrushStrokeStorage *)v2 deepCopy];

  return deepCopy;
}

@end