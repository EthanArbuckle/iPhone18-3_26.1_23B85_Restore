@interface BEAccessibilityTextMarkerRange
- (BEAccessibilityTextMarkerRange)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BEAccessibilityTextMarkerRange

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[BEAccessibilityTextMarkerRange allocWithZone:](BEAccessibilityTextMarkerRange init];
  v6 = [(BEAccessibilityTextMarkerRange *)self startMarker];
  v7 = [v6 copyWithZone:a3];
  [(BEAccessibilityTextMarkerRange *)v5 setStartMarker:v7];

  v8 = [(BEAccessibilityTextMarkerRange *)self endMarker];
  v9 = [v8 copyWithZone:a3];
  [(BEAccessibilityTextMarkerRange *)v5 setEndMarker:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BEAccessibilityTextMarkerRange *)self startMarker];
  [v4 encodeObject:v5 forKey:@"startMarker"];

  v6 = [(BEAccessibilityTextMarkerRange *)self endMarker];
  [v4 encodeObject:v6 forKey:@"endMarker"];
}

- (BEAccessibilityTextMarkerRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(BEAccessibilityTextMarkerRange);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startMarker"];
  [(BEAccessibilityTextMarkerRange *)v5 setStartMarker:v6];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endMarker"];

  [(BEAccessibilityTextMarkerRange *)v5 setEndMarker:v7];
  return v5;
}

@end