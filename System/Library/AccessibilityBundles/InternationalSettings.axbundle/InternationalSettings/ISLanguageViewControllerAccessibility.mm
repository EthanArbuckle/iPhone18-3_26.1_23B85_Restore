@interface ISLanguageViewControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation ISLanguageViewControllerAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = ISLanguageViewControllerAccessibility;
  v4 = [(ISLanguageViewControllerAccessibility *)&v11 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  attributedText = [textLabel attributedText];

  v7 = [attributedText attributesAtIndex:0 effectiveRange:0];
  v8 = [v7 objectForKey:*MEMORY[0x29EDB9530]];

  textLabel2 = [v4 textLabel];
  [textLabel2 setAccessibilityLanguage:v8];

  return v4;
}

@end