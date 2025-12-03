@interface MKVKImageSourceKeyImageResult
- (MKVKImageSourceKeyImageResult)initWithParameters:(id)parameters;
- (NSArray)fullBleedColors;
- (NSArray)images;
- (void)addFullBleedColor:(id)color;
@end

@implementation MKVKImageSourceKeyImageResult

- (void)addFullBleedColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v6 = colorCopy;
    if (self->_sameFullBleedColors && [(NSMutableArray *)self->_mutableFullBleedColors count])
    {
      lastObject = [(NSMutableArray *)self->_mutableFullBleedColors lastObject];
      self->_sameFullBleedColors = [lastObject isEqual:v6];
    }

    [(NSMutableArray *)self->_mutableFullBleedColors addObject:v6];
    colorCopy = v6;
  }
}

- (NSArray)images
{
  v2 = [(NSMutableArray *)self->_mutableImages copy];

  return v2;
}

- (NSArray)fullBleedColors
{
  v2 = [(NSMutableArray *)self->_mutableFullBleedColors copy];

  return v2;
}

- (MKVKImageSourceKeyImageResult)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v17.receiver = self;
  v17.super_class = MKVKImageSourceKeyImageResult;
  v6 = [(MKVKImageSourceKeyImageResult *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameters, parameters);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    triedKeys = v7->_triedKeys;
    v7->_triedKeys = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableFullBleedColors = v7->_mutableFullBleedColors;
    v7->_mutableFullBleedColors = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableImages = v7->_mutableImages;
    v7->_mutableImages = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    imageDatas = v7->_imageDatas;
    v7->_imageDatas = v14;

    v7->_sameFullBleedColors = 1;
  }

  return v7;
}

@end