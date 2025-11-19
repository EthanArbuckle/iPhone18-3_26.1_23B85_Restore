@interface RidesharingAppSelectionSectionHeaderViewComposer
+ (void)configureHeader:(id)a3 withPrimaryText:(id)a4;
@end

@implementation RidesharingAppSelectionSectionHeaderViewComposer

+ (void)configureHeader:(id)a3 withPrimaryText:(id)a4
{
  v5 = a3;
  v6 = [a4 localizedUppercaseString];
  [v5 setMajorString:v6];
}

@end