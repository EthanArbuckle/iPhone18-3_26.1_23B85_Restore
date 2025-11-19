@interface NTKMapsSearchPOIWrapper
- (NTKMapsSearchPOIWrapper)initWithmapsPOI:(id)a3 image:(id)a4 glyphColor:(id)a5 fillColor:(id)a6;
@end

@implementation NTKMapsSearchPOIWrapper

- (NTKMapsSearchPOIWrapper)initWithmapsPOI:(id)a3 image:(id)a4 glyphColor:(id)a5 fillColor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NTKMapsSearchPOIWrapper;
  v15 = [(NTKMapsSearchPOIWrapper *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_poi, a3);
    objc_storeStrong(&v16->_image, a4);
    objc_storeStrong(&v16->_glyphColor, a5);
    objc_storeStrong(&v16->_fillColor, a6);
  }

  return v16;
}

@end