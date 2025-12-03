@interface NTKExtragalacticDigitDrawInfo
+ (id)drawInfoWithUnifiedSize:(CGSize)size paths:(id)paths;
- (CGSize)unifiedGlyphSize;
- (NTKExtragalacticDigitDrawInfo)initWithUnifiedSize:(CGSize)size paths:(id)paths;
@end

@implementation NTKExtragalacticDigitDrawInfo

+ (id)drawInfoWithUnifiedSize:(CGSize)size paths:(id)paths
{
  height = size.height;
  width = size.width;
  pathsCopy = paths;
  height = [[NTKExtragalacticDigitDrawInfo alloc] initWithUnifiedSize:pathsCopy paths:width, height];

  return height;
}

- (NTKExtragalacticDigitDrawInfo)initWithUnifiedSize:(CGSize)size paths:(id)paths
{
  height = size.height;
  width = size.width;
  pathsCopy = paths;
  v12.receiver = self;
  v12.super_class = NTKExtragalacticDigitDrawInfo;
  v9 = [(NTKExtragalacticDigitDrawInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_unifiedGlyphSize.width = width;
    v9->_unifiedGlyphSize.height = height;
    objc_storeStrong(&v9->_paths, paths);
  }

  return v10;
}

- (CGSize)unifiedGlyphSize
{
  width = self->_unifiedGlyphSize.width;
  height = self->_unifiedGlyphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end