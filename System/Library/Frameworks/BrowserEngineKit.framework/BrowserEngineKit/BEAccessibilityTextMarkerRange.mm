@interface BEAccessibilityTextMarkerRange
- (BEAccessibilityTextMarkerRange)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BEAccessibilityTextMarkerRange

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[BEAccessibilityTextMarkerRange allocWithZone:](BEAccessibilityTextMarkerRange init];
  startMarker = [(BEAccessibilityTextMarkerRange *)self startMarker];
  v7 = [startMarker copyWithZone:zone];
  [(BEAccessibilityTextMarkerRange *)v5 setStartMarker:v7];

  endMarker = [(BEAccessibilityTextMarkerRange *)self endMarker];
  v9 = [endMarker copyWithZone:zone];
  [(BEAccessibilityTextMarkerRange *)v5 setEndMarker:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  startMarker = [(BEAccessibilityTextMarkerRange *)self startMarker];
  [coderCopy encodeObject:startMarker forKey:@"startMarker"];

  endMarker = [(BEAccessibilityTextMarkerRange *)self endMarker];
  [coderCopy encodeObject:endMarker forKey:@"endMarker"];
}

- (BEAccessibilityTextMarkerRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(BEAccessibilityTextMarkerRange);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startMarker"];
  [(BEAccessibilityTextMarkerRange *)v5 setStartMarker:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endMarker"];

  [(BEAccessibilityTextMarkerRange *)v5 setEndMarker:v7];
  return v5;
}

@end