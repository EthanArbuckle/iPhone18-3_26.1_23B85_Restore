@interface UIImageNibPlaceholderAccessibility
- (UIImageNibPlaceholderAccessibility)initWithCoder:(id)coder;
- (UIImageNibPlaceholderAccessibility)initWithData:(id)data andRuntimeResourceName:(id)name;
@end

@implementation UIImageNibPlaceholderAccessibility

- (UIImageNibPlaceholderAccessibility)initWithData:(id)data andRuntimeResourceName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v9 = 0;
  objc_storeStrong(&v9, name);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = UIImageNibPlaceholderAccessibility;
  selfCopy = [(UIImageNibPlaceholderAccessibility *)&v8 initWithData:location[0] andRuntimeResourceName:v9];
  objc_storeStrong(&selfCopy, selfCopy);
  [(UIImageNibPlaceholderAccessibility *)selfCopy accessibilitySetIdentification:v9];
  v7 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (UIImageNibPlaceholderAccessibility)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = UIImageNibPlaceholderAccessibility;
  selfCopy = [(UIImageNibPlaceholderAccessibility *)&v14 initWithCoder:location[0]];
  v15 = MEMORY[0x29EDC9748](selfCopy);
  v13 = [location[0] decodeObjectForKey:@"UIResourceName"];
  v6 = MEMORY[0x29EDCA5F8];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__UIImageNibPlaceholderAccessibility_initWithCoder___block_invoke;
  v10 = &unk_29F30C888;
  v11 = MEMORY[0x29EDC9748](v15);
  v12 = MEMORY[0x29EDC9748](v13);
  AXPerformSafeBlock();
  v5 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

@end