@interface COSSecurePairingViewControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation COSSecurePairingViewControllerAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = COSSecurePairingViewControllerAccessibility;
  v4 = [(COSSecurePairingViewControllerAccessibility *)&v10 tableView:view cellForRowAtIndexPath:path];
  v5 = MEMORY[0x29EDBD7E8];
  textLabel = [v4 textLabel];
  text = [textLabel text];
  v8 = [v5 stringWithString:text];

  [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9D0]];
  [v4 setAccessibilityLabel:v8];

  return v4;
}

@end