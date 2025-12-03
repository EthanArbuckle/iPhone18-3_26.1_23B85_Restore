@interface MUPlaceRibbonItemViewModelAccessibility
+ (id)amenityItemViewForMapItem:(id)item amenityItemConfiguration:(id)configuration;
+ (id)costItemViewForMapItem:(id)item;
+ (id)factoidItemForFactoid:(id)factoid;
+ (id)guidesItemViewModelForMapItem:(id)item;
+ (id)hoursItemViewModelForMapItem:(id)item;
+ (id)ratingSubmissionStatusViewModelForRatingState:(int64_t)state;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation MUPlaceRibbonItemViewModelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"hoursItemViewModelForMapItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"amenityItemViewForMapItem:amenityItemConfiguration:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"costItemViewForMapItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"factoidItemForFactoid:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"guidesItemViewModelForMapItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"MUPlaceRibbonItemViewModel" hasClassMethod:@"ratingSubmissionStatusViewModelForRatingState:" withFullSignature:{"@", "q", 0}];
}

+ (id)hoursItemViewModelForMapItem:(id)item
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_hoursItemViewModelForMapItem_, item);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:1];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)amenityItemViewForMapItem:(id)item amenityItemConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v4 = objc_msgSendSuper2(&v7, sel_amenityItemViewForMapItem_amenityItemConfiguration_, item, configuration);
  v5 = [MEMORY[0x29EDBA070] numberWithInt:3];
  [v4 _accessibilitySetRetainedValue:v5 forKey:@"RibbonItemViewTypeKey"];

  return v4;
}

+ (id)costItemViewForMapItem:(id)item
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_costItemViewForMapItem_, item);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:4];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)factoidItemForFactoid:(id)factoid
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_factoidItemForFactoid_, factoid);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:6];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)guidesItemViewModelForMapItem:(id)item
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_guidesItemViewModelForMapItem_, item);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:5];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

+ (id)ratingSubmissionStatusViewModelForRatingState:(int64_t)state
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MUPlaceRibbonItemViewModelAccessibility;
  v3 = objc_msgSendSuper2(&v6, sel_ratingSubmissionStatusViewModelForRatingState_, state);
  v4 = [MEMORY[0x29EDBA070] numberWithInt:7];
  [v3 _accessibilitySetRetainedValue:v4 forKey:@"RibbonItemViewTypeKey"];

  return v3;
}

@end