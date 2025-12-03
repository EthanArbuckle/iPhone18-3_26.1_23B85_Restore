@interface _HKActivityRingViewSizingDirective
+ (id)activityRingSizingDirectiveWithIdentifier:(id)identifier width:(double)width outerRingOffset:(double)offset ringThickness:(double)thickness ringInterspacing:(double)interspacing;
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

+ (id)activityRingSizingDirectiveWithIdentifier:(id)identifier width:(double)width outerRingOffset:(double)offset ringThickness:(double)thickness ringInterspacing:(double)interspacing
{
  identifierCopy = identifier;
  v12 = objc_opt_new();
  [v12 setIdentifier:identifierCopy];

  [v12 setWidth:width];
  [v12 setOuterRingOffset:offset];
  [v12 setRingThickness:thickness];
  [v12 setRingInterspacing:interspacing];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(_HKActivityRingViewSizingDirective *)self identifier];
  [(_HKActivityRingViewSizingDirective *)self outerRingOffset];
  v8 = v7;
  [(_HKActivityRingViewSizingDirective *)self ringThickness];
  v10 = v9;
  [(_HKActivityRingViewSizingDirective *)self ringInterspacing];
  v12 = [v3 stringWithFormat:@"<%@ %p %@ outerRingOffset: %f ringThickness: %f ringInterspacing: %f>", v5, self, identifier, v8, v10, v11];

  return v12;
}

@end