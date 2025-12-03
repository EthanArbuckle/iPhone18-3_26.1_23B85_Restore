@interface RidesharingAppSelectionSectionHeaderViewComposer
+ (void)configureHeader:(id)header withPrimaryText:(id)text;
@end

@implementation RidesharingAppSelectionSectionHeaderViewComposer

+ (void)configureHeader:(id)header withPrimaryText:(id)text
{
  headerCopy = header;
  localizedUppercaseString = [text localizedUppercaseString];
  [headerCopy setMajorString:localizedUppercaseString];
}

@end