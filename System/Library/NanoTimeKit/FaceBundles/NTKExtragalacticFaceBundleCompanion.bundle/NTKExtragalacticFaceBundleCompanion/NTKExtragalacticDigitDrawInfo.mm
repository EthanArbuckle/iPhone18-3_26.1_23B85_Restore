@interface NTKExtragalacticDigitDrawInfo
+ (id)drawInfoWithUnifiedSize:(CGSize)a3 paths:(id)a4;
- (CGSize)unifiedGlyphSize;
- (NTKExtragalacticDigitDrawInfo)initWithUnifiedSize:(CGSize)a3 paths:(id)a4;
@end

@implementation NTKExtragalacticDigitDrawInfo

+ (id)drawInfoWithUnifiedSize:(CGSize)a3 paths:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [[NTKExtragalacticDigitDrawInfo alloc] initWithUnifiedSize:v6 paths:width, height];

  return v7;
}

- (NTKExtragalacticDigitDrawInfo)initWithUnifiedSize:(CGSize)a3 paths:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NTKExtragalacticDigitDrawInfo;
  v9 = [(NTKExtragalacticDigitDrawInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_unifiedGlyphSize.width = width;
    v9->_unifiedGlyphSize.height = height;
    objc_storeStrong(&v9->_paths, a4);
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