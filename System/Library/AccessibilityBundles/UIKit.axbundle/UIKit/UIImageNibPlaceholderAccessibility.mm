@interface UIImageNibPlaceholderAccessibility
- (UIImageNibPlaceholderAccessibility)initWithCoder:(id)a3;
- (UIImageNibPlaceholderAccessibility)initWithData:(id)a3 andRuntimeResourceName:(id)a4;
@end

@implementation UIImageNibPlaceholderAccessibility

- (UIImageNibPlaceholderAccessibility)initWithData:(id)a3 andRuntimeResourceName:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = UIImageNibPlaceholderAccessibility;
  v11 = [(UIImageNibPlaceholderAccessibility *)&v8 initWithData:location[0] andRuntimeResourceName:v9];
  objc_storeStrong(&v11, v11);
  [(UIImageNibPlaceholderAccessibility *)v11 accessibilitySetIdentification:v9];
  v7 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (UIImageNibPlaceholderAccessibility)initWithCoder:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v17;
  v17 = 0;
  v14.receiver = v3;
  v14.super_class = UIImageNibPlaceholderAccessibility;
  v17 = [(UIImageNibPlaceholderAccessibility *)&v14 initWithCoder:location[0]];
  v15 = MEMORY[0x29EDC9748](v17);
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
  objc_storeStrong(&v17, 0);
  return v5;
}

@end