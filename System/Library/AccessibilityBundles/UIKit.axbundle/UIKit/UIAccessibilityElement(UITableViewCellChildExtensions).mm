@interface UIAccessibilityElement(UITableViewCellChildExtensions)
- (void)setTableCellYOffset:()UITableViewCellChildExtensions;
@end

@implementation UIAccessibilityElement(UITableViewCellChildExtensions)

- (void)setTableCellYOffset:()UITableViewCellChildExtensions
{
  selfCopy = self;
  v8 = a2;
  v7 = a3;
  v6 = [self _accessibilityValueForKey:@"TableViewStorage"];
  if (!v6)
  {
    v6 = [objc_allocWithZone(MEMORY[0x29EDB8E00]) init];
    [selfCopy _accessibilitySetRetainedValue:v6 forKey:{@"TableViewStorage", MEMORY[0x29EDC9740](0).n128_f64[0]}];
  }

  *&v3 = v7;
  v5 = [MEMORY[0x29EDBA070] numberWithFloat:{v3, v6}];
  [v4 setObject:? forKey:?];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(&v6, 0);
}

@end