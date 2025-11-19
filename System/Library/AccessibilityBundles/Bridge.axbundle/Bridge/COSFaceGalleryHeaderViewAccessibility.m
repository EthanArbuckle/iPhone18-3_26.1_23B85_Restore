@interface COSFaceGalleryHeaderViewAccessibility
- (id)accessibilityElements;
@end

@implementation COSFaceGalleryHeaderViewAccessibility

- (id)accessibilityElements
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = [(COSFaceGalleryHeaderViewAccessibility *)self safeValueForKey:@"galleryView"];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

@end