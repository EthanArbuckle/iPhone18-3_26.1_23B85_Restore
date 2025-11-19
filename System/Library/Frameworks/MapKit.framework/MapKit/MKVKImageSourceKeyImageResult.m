@interface MKVKImageSourceKeyImageResult
- (MKVKImageSourceKeyImageResult)initWithParameters:(id)a3;
- (NSArray)fullBleedColors;
- (NSArray)images;
- (void)addFullBleedColor:(id)a3;
@end

@implementation MKVKImageSourceKeyImageResult

- (void)addFullBleedColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if (self->_sameFullBleedColors && [(NSMutableArray *)self->_mutableFullBleedColors count])
    {
      v5 = [(NSMutableArray *)self->_mutableFullBleedColors lastObject];
      self->_sameFullBleedColors = [v5 isEqual:v6];
    }

    [(NSMutableArray *)self->_mutableFullBleedColors addObject:v6];
    v4 = v6;
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

- (MKVKImageSourceKeyImageResult)initWithParameters:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = MKVKImageSourceKeyImageResult;
  v6 = [(MKVKImageSourceKeyImageResult *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_parameters, a3);
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