@interface COSSecurePairingViewControllerAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation COSSecurePairingViewControllerAccessibility

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = COSSecurePairingViewControllerAccessibility;
  v4 = [(COSSecurePairingViewControllerAccessibility *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = MEMORY[0x29EDBD7E8];
  v6 = [v4 textLabel];
  v7 = [v6 text];
  v8 = [v5 stringWithString:v7];

  [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9D0]];
  [v4 setAccessibilityLabel:v8];

  return v4;
}

@end