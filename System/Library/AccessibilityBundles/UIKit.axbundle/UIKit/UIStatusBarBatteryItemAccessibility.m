@interface UIStatusBarBatteryItemAccessibility
@end

@implementation UIStatusBarBatteryItemAccessibility

double __66___UIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke(id *a1)
{
  v29[2] = a1;
  v29[1] = a1;
  v29[0] = objc_loadWeakRetained(a1 + 4);
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [v29[0] frame];
  r1.origin.x = v1;
  r1.origin.y = v2;
  r1.size.width = v3;
  r1.size.height = v4;
  [WeakRetained frame];
  r2.origin.x = v5;
  r2.origin.y = v6;
  r2.size.width = v7;
  r2.size.height = v8;
  v27 = CGRectUnion(r1, r2);
  v19 = [v29[0] superview];
  [v19 convertRect:v27.origin.x toView:{v27.origin.y, v27.size.width, v27.size.height}];
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  MEMORY[0x29EDC9740](v19);
  v30 = 0u;
  v31 = 0u;
  v20 = [v29[0] window];
  [v20 convertRect:0 toWindow:{v21, v22, v23, v24}];
  *&v30 = v13;
  *(&v30 + 1) = v14;
  *&v31 = v15;
  *(&v31 + 1) = v16;
  MEMORY[0x29EDC9740](v20);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v29, 0);
  return *&v30;
}

double __66___UIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke_2(id *a1)
{
  v20[2] = a1;
  v20[1] = a1;
  v20[0] = objc_loadWeakRetained(a1 + 4);
  v14 = [v20[0] superview];
  [v20[0] frame];
  [v14 convertRect:v1 toView:{v2, v3, v4}];
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  MEMORY[0x29EDC9740](v14);
  v21 = 0u;
  v22 = 0u;
  v15 = [v20[0] window];
  [v15 convertRect:0 toWindow:{v16, v17, v18, v19}];
  *&v21 = v9;
  *(&v21 + 1) = v10;
  *&v22 = v11;
  *(&v22 + 1) = v12;
  MEMORY[0x29EDC9740](v15);
  objc_storeStrong(v20, 0);
  return *&v21;
}

@end