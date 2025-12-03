@interface UIImageAccessibility
+ (id)imageAtPath:(id)path;
+ (id)imageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection;
+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation;
+ (id)imageWithContentsOfFile:(id)file;
+ (id)kitImageNamed:(id)named;
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGImage)CGImage;
- (UIImageAccessibility)initWithCoder:(id)coder;
- (UIImageAccessibility)initWithContentsOfFile:(id)file;
- (UIImageAccessibility)initWithContentsOfFile:(id)file cache:(BOOL)cache;
- (id)_accessibilityPhotoDescription;
- (id)_bezeledImageWithShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha fillRed:(double)fillRed green:(double)a8 blue:(double)a9 alpha:(double)self0 drawShadow:(BOOL)self1;
- (id)_doubleBezeledImageWithExteriorShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha interiorShadowRed:(double)shadowRed green:(double)a8 blue:(double)a9 alpha:(double)self0 fillRed:(double)self1 green:(double)self2 blue:(double)self3 alpha:(double)self4;
- (id)_flatImageWithColor:(id)color;
- (id)_flatImageWithWhite:(double)white alpha:(double)alpha;
- (id)_imageScaledToProportion:(double)proportion interpolationQuality:(int)quality;
- (id)_imageTintedWithColor:(id)color renderingMode:(int64_t)mode withUpdatedCGImage:(BOOL)image;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)imageFlippedForRightToLeftLayoutDirection;
- (id)imageWithAlignmentRectInsets:(UIEdgeInsets)insets;
- (id)imageWithRenderingMode:(int64_t)mode;
- (id)resizableImageWithCapInsets:(UIEdgeInsets)insets resizingMode:(int64_t)mode;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIImageAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "{UIEdgeInsets=dddd}";
  v5 = "q";
  v6 = @"UIImage";
  v7 = "@";
  [location[0] validateClass:"{UIEdgeInsets=dddd}" hasInstanceMethod:"q" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"_flatImageWithColor:" withFullSignature:{v7, 0}];
  v4 = "^{CGImage=}";
  [location[0] validateClass:v6 hasInstanceMethod:@"CGImage" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"imageWithAlignmentRectInsets:" withFullSignature:{v7, v3, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"imageWithRenderingMode:" withFullSignature:{v7, v5, 0}];
  [location[0] validateClass:v6 hasClassMethod:@"imageWithCGImage:scale:orientation:" withFullSignature:{v7, v4, "d", v5, 0}];
  [location[0] validateClass:v6 hasClassMethod:@"imageNamed:inBundle:compatibleWithTraitCollection:" withFullSignature:{v7, v7, v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"imageFlippedForRightToLeftLayoutDirection" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"_imageTintedWithColor:renderingMode:withUpdatedCGImage:" withFullSignature:{v7, v5, "B", 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"encodeWithCoder:" withFullSignature:{"v", v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"initWithCoder:" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [location[0] validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v9.receiver = selfCopy;
  v9.super_class = UIImageAccessibility;
  [(UIImageAccessibility *)&v9 encodeWithCoder:location[0]];
  _accessibilityEncodedHierarchyData = [(UIImageAccessibility *)selfCopy _accessibilityEncodedHierarchyData];
  if (_accessibilityEncodedHierarchyData)
  {
    [location[0] encodeObject:_accessibilityEncodedHierarchyData forKey:@"_accessibilityEncodedHierarchyData"];
  }

  v4 = location[0];
  accessibilityHint = [(UIImageAccessibility *)selfCopy accessibilityHint];
  [v4 encodeObject:? forKey:?];
  *&v3 = MEMORY[0x29EDC9740](accessibilityHint).n128_u64[0];
  v6 = location[0];
  accessibilityValue = [(UIImageAccessibility *)selfCopy accessibilityValue];
  [v6 encodeObject:? forKey:?];
  MEMORY[0x29EDC9740](accessibilityValue);
  objc_storeStrong(&_accessibilityEncodedHierarchyData, 0);
  objc_storeStrong(location, 0);
}

- (UIImageAccessibility)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = UIImageAccessibility;
  selfCopy = [(UIImageAccessibility *)&v9 initWithCoder:location[0]];
  v10 = MEMORY[0x29EDC9748](selfCopy);
  v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"_accessibilityEncodedHierarchyData"];
  if (v8)
  {
    [v10 _setAccessibilityEncodedHierarchyData:v8];
  }

  v5 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityHint"];
  [(UIImageAccessibility *)selfCopy setAccessibilityHint:?];
  MEMORY[0x29EDC9740](v5);
  v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityValue"];
  [(UIImageAccessibility *)selfCopy setAccessibilityValue:?];
  MEMORY[0x29EDC9740](v6);
  v7 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (id)_accessibilityPhotoDescription
{
  v18[2] = self;
  v18[1] = a2;
  v18[0] = [(UIImageAccessibility *)self accessibilityIdentification];
  if (v18[0])
  {
    v16 = [objc_alloc(MEMORY[0x29EDB8E70]) initFileURLWithPath:v18[0]];
    v15 = 0;
    if (v16)
    {
      v14 = UIAccessibilityPhotoCreationDate();
      v13 = UIAccessibilityEmojiDescription();
      if ([v13 length])
      {
        v12 = accessibilityUIKitLocalizedString();
        v2 = __UIAXStringForVariables();
        v3 = v15;
        v15 = v2;
        MEMORY[0x29EDC9740](v3);
        objc_storeStrong(&v12, 0);
      }

      else
      {
        v11 = UIAccessibilityMetadataDescriptionForImage();
        v10 = 0;
        if (UIAccessibilityIsImageScreenshot())
        {
          v4 = accessibilityUIKitLocalizedString();
          v5 = v10;
          v10 = v4;
          MEMORY[0x29EDC9740](v5);
        }

        v6 = __UIAXStringForVariables();
        v7 = v15;
        v15 = v6;
        MEMORY[0x29EDC9740](v7);
        objc_storeStrong(&v10, 0);
        objc_storeStrong(&v11, 0);
      }

      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    v19 = MEMORY[0x29EDC9748](v15);
    v17 = 1;
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v19 = 0;
    v17 = 1;
  }

  objc_storeStrong(v18, 0);
  v8 = v19;

  return v8;
}

- (CGImage)CGImage
{
  selfCopy = self;
  v6 = a2;
  v4.receiver = self;
  v4.super_class = UIImageAccessibility;
  cGImage = [(UIImageAccessibility *)&v4 CGImage];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    location = [(UIImageAccessibility *)selfCopy accessibilityLabel];
    if (location)
    {
      [(CGImage *)cGImage setAccessibilityLabel:location];
    }

    objc_storeStrong(&location, 0);
  }

  return cGImage;
}

+ (id)imageWithCGImage:(CGImage *)image scale:(double)scale orientation:(int64_t)orientation
{
  v10[5] = self;
  v10[4] = a2;
  v10[3] = image;
  v10[2] = *&scale;
  v10[1] = orientation;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___UIImageAccessibility;
  v10[0] = objc_msgSendSuper2(&v9, sel_imageWithCGImage_scale_orientation_, image, orientation, scale);
  CurrentContext = UIGraphicsGetCurrentContext();
  v7 = [MEMORY[0x29EDBDE10] annotationsForContext:CurrentContext];
  [v10[0] _accessibilitySetContextDrawingAnnotations:v7];
  v6 = MEMORY[0x29EDC9748](v10[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v10, 0);

  return v6;
}

- (id)resizableImageWithCapInsets:(UIEdgeInsets)insets resizingMode:(int64_t)mode
{
  insetsCopy = insets;
  selfCopy = self;
  v9[2] = a2;
  v9[1] = mode;
  v8.receiver = self;
  v8.super_class = UIImageAccessibility;
  v9[0] = [(UIImageAccessibility *)&v8 resizableImageWithCapInsets:mode resizingMode:insets.top, insets.left, insets.bottom, insets.right];
  v6 = MEMORY[0x29EDC9748](v9[0]);
  v7 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v5 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v9, 0);

  return v5;
}

double __65__UIImageAccessibility_resizableImageWithCapInsets_resizingMode___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (UIImageAccessibility)initWithContentsOfFile:(id)file cache:(BOOL)cache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, file);
  cacheCopy = cache;
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = UIImageAccessibility;
  selfCopy = [(UIImageAccessibility *)&v10 initWithContentsOfFile:location[0] cache:cache];
  objc_storeStrong(&selfCopy, selfCopy);
  v8 = MEMORY[0x29EDC9748](selfCopy);
  v9 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThread();
  v7 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

+ (id)imageAtPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v7.receiver = selfCopy;
  v7.super_class = &OBJC_METACLASS___UIImageAccessibility;
  v8 = objc_msgSendSuper2(&v7, sel_imageAtPath_, location[0]);
  v5 = MEMORY[0x29EDC9748](v8);
  v6 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThread();
  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

double __36__UIImageAccessibility_imageAtPath___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lastPathComponent];
  [v2 accessibilitySetIdentification:?];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (UIImageAccessibility)initWithContentsOfFile:(id)file
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, file);
  v3 = selfCopy;
  selfCopy = 0;
  v13.receiver = v3;
  v13.super_class = UIImageAccessibility;
  selfCopy = [(UIImageAccessibility *)&v13 initWithContentsOfFile:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __47__UIImageAccessibility_initWithContentsOfFile___block_invoke;
  v10 = &unk_29F30C888;
  v11 = MEMORY[0x29EDC9748](selfCopy);
  v12 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThread();
  v5 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

+ (id)imageWithContentsOfFile:(id)file
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, file);
  v7.receiver = selfCopy;
  v7.super_class = &OBJC_METACLASS___UIImageAccessibility;
  v8 = objc_msgSendSuper2(&v7, sel_imageWithContentsOfFile_, location[0]);
  v5 = MEMORY[0x29EDC9748](v8);
  v6 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThread();
  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)imageNamed:(id)named inBundle:(id)bundle compatibleWithTraitCollection:(id)collection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, named);
  v14 = 0;
  objc_storeStrong(&v14, bundle);
  v13 = 0;
  objc_storeStrong(&v13, collection);
  v11.receiver = selfCopy;
  v11.super_class = &OBJC_METACLASS___UIImageAccessibility;
  v12 = objc_msgSendSuper2(&v11, sel_imageNamed_inBundle_compatibleWithTraitCollection_, location[0], v14, v13);
  v9 = MEMORY[0x29EDC9748](v12);
  v10 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThread();
  v8 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v8;
}

+ (id)kitImageNamed:(id)named
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, named);
  v7.receiver = selfCopy;
  v7.super_class = &OBJC_METACLASS___UIImageAccessibility;
  v8 = objc_msgSendSuper2(&v7, sel_kitImageNamed_, location[0]);
  v5 = MEMORY[0x29EDC9748](v8);
  v6 = MEMORY[0x29EDC9748](location[0]);
  AXPerformBlockOnMainThread();
  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_imageScaledToProportion:(double)proportion interpolationQuality:(int)quality
{
  selfCopy = self;
  v12 = a2;
  proportionCopy = proportion;
  qualityCopy = quality;
  v8.receiver = self;
  v8.super_class = UIImageAccessibility;
  v9 = [(UIImageAccessibility *)&v8 _imageScaledToProportion:quality interpolationQuality:proportion];
  v6 = MEMORY[0x29EDC9748](v9);
  v7 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v5 = MEMORY[0x29EDC9748](v9);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v9, 0);

  return v5;
}

uint64_t __70__UIImageAccessibility__imageScaledToProportion_interpolationQuality___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) accessibilityIdentifier];
  [v5 setAccessibilityIdentifier:?];
  return [*(a1 + 32) setAccessibilityLabel:{0, MEMORY[0x29EDC9740](v6).n128_f64[0]}];
}

- (id)imageWithAlignmentRectInsets:(UIEdgeInsets)insets
{
  insetsCopy = insets;
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = UIImageAccessibility;
  v8[0] = [(UIImageAccessibility *)&v7 imageWithAlignmentRectInsets:insets.top, insets.left, insets.bottom, insets.right];
  v5 = MEMORY[0x29EDC9748](v8[0]);
  v6 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v4 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v8, 0);

  return v4;
}

double __53__UIImageAccessibility_imageWithAlignmentRectInsets___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)imageWithRenderingMode:(int64_t)mode
{
  selfCopy = self;
  v8[2] = a2;
  v8[1] = mode;
  v7.receiver = self;
  v7.super_class = UIImageAccessibility;
  v8[0] = [(UIImageAccessibility *)&v7 imageWithRenderingMode:mode];
  v5 = MEMORY[0x29EDC9748](v8[0]);
  v6 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v4 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v8, 0);

  return v4;
}

void __47__UIImageAccessibility_imageWithRenderingMode___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  v2 = a1[4];
  v3 = [a1[5] accessibilityIdentification];
  [v2 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4 = a1[4];
  v5 = [a1[5] accessibilityIdentifier];
  [v4 setAccessibilityIdentifier:?];
  location[0] = [a1[5] accessibilityUserDefinedLabel];
  if (location[0])
  {
    [a1[4] setAccessibilityLabel:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)_flatImageWithWhite:(double)white alpha:(double)alpha
{
  selfCopy = self;
  v9[3] = a2;
  v9[2] = *&white;
  v9[1] = *&alpha;
  v8.receiver = self;
  v8.super_class = UIImageAccessibility;
  v9[0] = [(UIImageAccessibility *)&v8 _flatImageWithWhite:white alpha:alpha];
  v6 = MEMORY[0x29EDC9748](v9[0]);
  v7 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v5 = MEMORY[0x29EDC9748](v9[0]);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v9, 0);

  return v5;
}

double __50__UIImageAccessibility__flatImageWithWhite_alpha___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)_flatImageWithColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  v7.receiver = selfCopy;
  v7.super_class = UIImageAccessibility;
  v8 = [(UIImageAccessibility *)&v7 _flatImageWithColor:location[0]];
  v5 = MEMORY[0x29EDC9748](v8);
  v6 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v4 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);

  return v4;
}

double __44__UIImageAccessibility__flatImageWithColor___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)_bezeledImageWithShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha fillRed:(double)fillRed green:(double)a8 blue:(double)a9 alpha:(double)self0 drawShadow:(BOOL)self1
{
  selfCopy = self;
  v26 = a2;
  redCopy = red;
  greenCopy = green;
  blueCopy = blue;
  alphaCopy = alpha;
  fillRedCopy = fillRed;
  v20 = a8;
  v19 = a9;
  v18 = a10;
  shadowCopy = shadow;
  v15.receiver = self;
  v15.super_class = UIImageAccessibility;
  v16 = [(UIImageAccessibility *)&v15 _bezeledImageWithShadowRed:shadow green:red blue:green alpha:blue fillRed:alpha green:fillRed blue:a8 alpha:a9 drawShadow:a10];
  v13 = MEMORY[0x29EDC9748](v16);
  v14 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v12 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);

  return v12;
}

double __104__UIImageAccessibility__bezeledImageWithShadowRed_green_blue_alpha_fillRed_green_blue_alpha_drawShadow___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)_doubleBezeledImageWithExteriorShadowRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha interiorShadowRed:(double)shadowRed green:(double)a8 blue:(double)a9 alpha:(double)self0 fillRed:(double)self1 green:(double)self2 blue:(double)self3 alpha:(double)self4
{
  selfCopy = self;
  v33[13] = a2;
  *&v33[12] = red;
  *&v33[11] = green;
  *&v33[10] = blue;
  *&v33[9] = alpha;
  *&v33[8] = shadowRed;
  *&v33[7] = a8;
  *&v33[6] = a9;
  *&v33[5] = a10;
  *&v33[4] = fillRed;
  *&v33[3] = a12;
  *&v33[2] = a13;
  *&v33[1] = a14;
  v32.receiver = self;
  v32.super_class = UIImageAccessibility;
  v14 = [(UIImageAccessibility *)&v32 _doubleBezeledImageWithExteriorShadowRed:red green:green blue:blue alpha:alpha interiorShadowRed:shadowRed green:a8 blue:a9 alpha:a10 fillRed:*&fillRed green:*&a12 blue:*&a13 alpha:*&a14];
  v22 = v33;
  v33[0] = v14;
  v19 = &v25;
  v25 = MEMORY[0x29EDCA5F8];
  v26 = -1073741824;
  v27 = 0;
  v28 = __142__UIImageAccessibility__doubleBezeledImageWithExteriorShadowRed_green_blue_alpha_interiorShadowRed_green_blue_alpha_fillRed_green_blue_alpha___block_invoke;
  v29 = &unk_29F30C888;
  v15 = MEMORY[0x29EDC9748](v14);
  v21 = (v19 + 4);
  v30 = v15;
  v16 = MEMORY[0x29EDC9748](selfCopy);
  location = (v19 + 5);
  v31 = v16;
  AXPerformBlockOnMainThread();
  v24 = MEMORY[0x29EDC9748](v33[0]);
  obj = 0;
  objc_storeStrong(location, 0);
  objc_storeStrong(v21, obj);
  objc_storeStrong(v22, obj);
  v17 = v24;

  return v17;
}

double __142__UIImageAccessibility__doubleBezeledImageWithExteriorShadowRed_green_blue_alpha_interiorShadowRed_green_blue_alpha_fillRed_green_blue_alpha___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)accessibilityLabel
{
  v32 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v28[1] = a2;
  v28[0] = [(UIImageAccessibility *)self accessibilityUserDefinedLabel];
  if ([v28[0] length])
  {
    accessibilityLabel = MEMORY[0x29EDC9748](v28[0]);
    v27 = 1;
  }

  else
  {
    _accessibilityContextDrawingAnnotations = [(UIImageAccessibility *)selfCopy _accessibilityContextDrawingAnnotations];
    if ([_accessibilityContextDrawingAnnotations count])
    {
      array = [MEMORY[0x29EDB8DE8] array];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](_accessibilityContextDrawingAnnotations);
      v17 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
      if (v17)
      {
        v13 = *__b[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*__b[2] != v13)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(__b[1] + 8 * v14);
          v10 = array;
          label = [v24 label];
          [v10 addObject:?];
          *&v2 = MEMORY[0x29EDC9740](label).n128_u64[0];
          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [obj countByEnumeratingWithState:__b objects:v31 count:{16, v2}];
            if (!v15)
            {
              break;
            }
          }
        }
      }

      v3 = MEMORY[0x29EDC9740](obj);
      accessibilityLabel = MEMORY[0x29ED3D9D0](array, v3);
      v27 = 1;
      objc_storeStrong(&array, 0);
    }

    else
    {
      v9 = [(UIImageAccessibility *)selfCopy safeValueForKey:@"_imageAsset"];
      v22 = [v9 safeStringForKey:@"assetName"];
      v4 = MEMORY[0x29EDC9740](v9);
      v21 = MEMORY[0x29ED3E010](selfCopy, v4);
      if ((v21 & 1) == 0)
      {
        goto LABEL_32;
      }

      v20 = accessibilityUIKitSymbolNamesLocalizedString();
      if (![v20 length] || (objc_msgSend(v20, "isEqualToString:", v22) & 1) != 0)
      {
        v5 = accessibilityUIKitLocalizedString();
        v6 = v20;
        v20 = v5;
        MEMORY[0x29EDC9740](v6);
      }

      if ([v20 length])
      {
        v19 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v20];
        if ([v20 isEqualToString:v22])
        {
          [v19 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD900]];
        }

        [v19 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD908]];
        accessibilityLabel = MEMORY[0x29EDC9748](v19);
        v27 = 1;
        objc_storeStrong(&v19, 0);
      }

      else
      {
        v27 = 0;
      }

      objc_storeStrong(&v20, 0);
      if (!v27)
      {
LABEL_32:
        if ([v22 isEqualToString:@"magnifyingglass"] & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"SearchIcon") & 1) != 0 || (objc_msgSend(v22, "containsString:", @"ellipsis.circle") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"plus.circle.fill") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"square.and.arrow.up") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"trash") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"xmark") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"UIButtonBarKeyboardCutGroup") & 1) != 0 || (objc_msgSend(v22, "isEqualToString:", @"UIButtonBarKeyboardUndoGroup"))
        {
          accessibilityLabel = accessibilityUIKitLocalizedString();
          v27 = 1;
        }

        else
        {
          if ([v22 isEqualToString:@"mic_badge_xmark"])
          {
            accessibilityLabel = accessibilityUIKitLocalizedString();
          }

          else
          {
            v18.receiver = selfCopy;
            v18.super_class = UIImageAccessibility;
            accessibilityLabel = [(UIImageAccessibility *)&v18 accessibilityLabel];
          }

          v27 = 1;
        }
      }

      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&_accessibilityContextDrawingAnnotations, 0);
  }

  objc_storeStrong(v28, 0);
  v7 = accessibilityLabel;

  return v7;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = [(UIImageAccessibility *)self accessibilityUserDefinedIdentifier];
  if (!v5[0])
  {
    v5[0] = [(UIImageAccessibility *)selfCopy accessibilityIdentification];
    MEMORY[0x29EDC9740](0);
  }

  if (!v5[0])
  {
    v4 = [(UIImageAccessibility *)selfCopy safeValueForKey:@"_imageAsset"];
    v5[0] = [v4 safeStringForKey:@"assetName"];
    MEMORY[0x29EDC9740](0);
    MEMORY[0x29EDC9740](v4);
  }

  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (id)imageFlippedForRightToLeftLayoutDirection
{
  selfCopy = self;
  v7[1] = a2;
  v6.receiver = self;
  v6.super_class = UIImageAccessibility;
  v7[0] = [(UIImageAccessibility *)&v6 imageFlippedForRightToLeftLayoutDirection];
  v4 = MEMORY[0x29EDC9748](v7[0]);
  v5 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v3 = MEMORY[0x29EDC9748](v7[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v4, 0);
  objc_storeStrong(v7, 0);

  return v3;
}

double __65__UIImageAccessibility_imageFlippedForRightToLeftLayoutDirection__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (id)_imageTintedWithColor:(id)color renderingMode:(int64_t)mode withUpdatedCGImage:(BOOL)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  modeCopy = mode;
  imageCopy = image;
  v11.receiver = selfCopy;
  v11.super_class = UIImageAccessibility;
  v12 = [(UIImageAccessibility *)&v11 _imageTintedWithColor:location[0] renderingMode:mode withUpdatedCGImage:image];
  v9 = MEMORY[0x29EDC9748](v12);
  v10 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThread();
  v8 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v8;
}

double __79__UIImageAccessibility__imageTintedWithColor_renderingMode_withUpdatedCGImage___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) accessibilityIdentification];
  [v3 accessibilitySetIdentification:?];
  *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) accessibilityIdentifier];
  [v6 setAccessibilityIdentifier:?];
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(UIImageAccessibility *)self _accessibilityUnregister];
  v2.receiver = selfCopy;
  v2.super_class = UIImageAccessibility;
  [(UIImageAccessibility *)&v2 dealloc];
}

@end