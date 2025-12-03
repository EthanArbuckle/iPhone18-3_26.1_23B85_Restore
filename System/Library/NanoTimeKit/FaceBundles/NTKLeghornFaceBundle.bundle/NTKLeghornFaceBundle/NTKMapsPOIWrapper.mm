@interface NTKMapsPOIWrapper
- (NTKMapsPOIWrapper)initWithmapsPOI:(id)i image:(id)image glyphColor:(id)color fillColor:(id)fillColor;
- (void)showInfo;
@end

@implementation NTKMapsPOIWrapper

- (NTKMapsPOIWrapper)initWithmapsPOI:(id)i image:(id)image glyphColor:(id)color fillColor:(id)fillColor
{
  iCopy = i;
  imageCopy = image;
  colorCopy = color;
  fillColorCopy = fillColor;
  v18.receiver = self;
  v18.super_class = NTKMapsPOIWrapper;
  v15 = [(NTKMapsPOIWrapper *)&v18 init];
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

- (void)showInfo
{
  v3 = objc_msgSend_ntk_mkMapItem(self->_poi, a2, v2);
  if (v3)
  {
    v6 = v3;
    objc_msgSend_openInMapsWithLaunchOptions_(v3, v4, v5, 0);
    v3 = v6;
  }
}

@end