@interface UIColor(AuthKit)
+ (id)ak_colorWithServerRGBRepresentation:()AuthKit;
@end

@implementation UIColor(AuthKit)

+ (id)ak_colorWithServerRGBRepresentation:()AuthKit
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  if ([location[0] length] == 6)
  {
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v31 = 0;
    v30 = 2;
    v32 = 0;
    v33 = 2;
    v14[1] = 0;
    v14[2] = 2;
    v15 = [location[0] substringWithRange:{0, 2}];
    v27 = 2;
    v26 = 2;
    v28 = 2;
    v29 = 2;
    v13[1] = 2;
    v13[2] = 2;
    v14[0] = [location[0] substringWithRange:{2, 2}];
    v23 = 4;
    v22 = 2;
    v24 = 4;
    v25 = 2;
    v12[1] = 4;
    v12[2] = 2;
    v13[0] = [location[0] substringWithRange:{4, 2}];
    v12[0] = [MEMORY[0x277CCAC80] scannerWithString:v15];
    [v12[0] scanHexInt:&v18];
    v11 = [MEMORY[0x277CCAC80] scannerWithString:v14[0]];
    [v11 scanHexInt:&v17];
    v10 = [MEMORY[0x277CCAC80] scannerWithString:v13[0]];
    [v10 scanHexInt:&v16];
    LODWORD(v3) = v18;
    *&v4 = v3 / 255.0;
    v9 = *&v4;
    LODWORD(v4) = v17;
    *&v5 = v4 / 255.0;
    v8 = *&v5;
    LODWORD(v5) = v16;
    v21 = [MEMORY[0x277D75348] colorWithRed:v9 green:v8 blue:v5 / 255.0 alpha:1.0];
    v19 = 1;
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(v12, 0);
    objc_storeStrong(v13, 0);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v21 = 0;
    v19 = 1;
  }

  objc_storeStrong(location, 0);
  v6 = v21;

  return v6;
}

@end