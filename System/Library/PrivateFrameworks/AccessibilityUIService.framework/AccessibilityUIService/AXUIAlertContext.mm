@interface AXUIAlertContext
- (id)description;
@end

@implementation AXUIAlertContext

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(AXUIAlertContext *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier = %@>", v5, self, identifier];;

  return v7;
}

@end