@interface _HKActivityRingViewSizingDirective
+ (id)activityRingSizingDirectiveWithIdentifier:(id)a3 width:(double)a4 outerRingOffset:(double)a5 ringThickness:(double)a6 ringInterspacing:(double)a7;
+ (id)sortedRingRatioDirectives;
- (id)description;
@end

@implementation _HKActivityRingViewSizingDirective

+ (id)sortedRingRatioDirectives
{
  if (sortedRingRatioDirectives_onceToken != -1)
  {
    +[_HKActivityRingViewSizingDirective sortedRingRatioDirectives];
  }

  v3 = sortedRingRatioDirectives_sortedRingRatioDirectives;

  return v3;
}

+ (id)activityRingSizingDirectiveWithIdentifier:(id)a3 width:(double)a4 outerRingOffset:(double)a5 ringThickness:(double)a6 ringInterspacing:(double)a7
{
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setIdentifier:v11];

  [v12 setWidth:a4];
  [v12 setOuterRingOffset:a5];
  [v12 setRingThickness:a6];
  [v12 setRingInterspacing:a7];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_HKActivityRingViewSizingDirective *)self identifier];
  [(_HKActivityRingViewSizingDirective *)self outerRingOffset];
  v8 = v7;
  [(_HKActivityRingViewSizingDirective *)self ringThickness];
  v10 = v9;
  [(_HKActivityRingViewSizingDirective *)self ringInterspacing];
  v12 = [v3 stringWithFormat:@"<%@ %p %@ outerRingOffset: %f ringThickness: %f ringInterspacing: %f>", v5, self, v6, v8, v10, v11];

  return v12;
}

@end