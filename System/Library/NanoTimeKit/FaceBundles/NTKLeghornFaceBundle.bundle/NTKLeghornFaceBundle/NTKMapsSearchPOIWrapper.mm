@interface NTKMapsSearchPOIWrapper
- (NTKMapsSearchPOIWrapper)initWithmapsPOI:(id)i image:(id)image glyphColor:(id)color fillColor:(id)fillColor;
@end

@implementation NTKMapsSearchPOIWrapper

- (NTKMapsSearchPOIWrapper)initWithmapsPOI:(id)i image:(id)image glyphColor:(id)color fillColor:(id)fillColor
{
  iCopy = i;
  imageCopy = image;
  colorCopy = color;
  fillColorCopy = fillColor;
  v18.receiver = self;
  v18.super_class = NTKMapsSearchPOIWrapper;
  v15 = [(NTKMapsSearchPOIWrapper *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_poi, i);
    objc_storeStrong(&v16->_image, image);
    objc_storeStrong(&v16->_glyphColor, color);
    objc_storeStrong(&v16->_fillColor, fillColor);
  }

  return v16;
}

@end