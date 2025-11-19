@interface MUPlaceRibbonItemViewModelAccessibility
+ (id)amenityItemViewForMapItem:(id)a3 amenityItemConfiguration:(id)a4;
+ (id)costItemViewForMapItem:(id)a3;
+ (id)factoidItemForFactoid:(id)a3;
+ (id)guidesItemViewModelForMapItem:(id)a3;
+ (id)hoursItemViewModelForMapItem:(id)a3;
+ (id)ratingSubmissionStatusViewModelForRatingState:(int64_t)a3;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation MUPlaceRibbonItemViewModelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"hoursItemViewModelForMapItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"amenityItemViewForMapItem:amenityItemConfiguration:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"costItemViewForMapItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"factoidItemForFactoid:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"guidesItemViewModelForMapItem:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"ratingSubmissionStatusViewModelForRatingState:" withFullSignature:{"@", "q", 0}];
}

+ (id)hoursItemViewModelForMapItem:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_hoursItemViewModelForMapItem_, a3);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:1];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)amenityItemViewForMapItem:(id)a3 amenityItemConfiguration:(id)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v4 = objc_msgSendSuper2(&v7, sel_amenityItemViewForMapItem_amenityItemConfiguration_, a3, a4);
  v5 = [MEMORY[0x29EDBA070] numberWithInt:3];
  [v4 _accessibilitySetRetainedValue:v5 forKey:@"RibbonItemViewTypeKey"];

  return v4;
}

+ (id)costItemViewForMapItem:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_costItemViewForMapItem_, a3);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:4];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)factoidItemForFactoid:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_factoidItemForFactoid_, a3);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:6];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)guidesItemViewModelForMapItem:(id)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_guidesItemViewModelForMapItem_, a3);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:5];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)ratingSubmissionStatusViewModelForRatingState:(int64_t)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_ratingSubmissionStatusViewModelForRatingState_, a3);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:7];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

@end