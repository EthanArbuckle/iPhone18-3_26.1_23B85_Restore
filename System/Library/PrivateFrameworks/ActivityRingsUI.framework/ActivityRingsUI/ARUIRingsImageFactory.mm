@interface ARUIRingsImageFactory
+ (id)_renderRingsUsingRingsView:(id)a3 withDiameter:(double)a4 thickness:(double)a5 interspacing:(double)a6;
+ (id)renderRingGroup:(id)a3 withRenderer:(id)a4;
+ (id)renderRingGroupController:(id)a3 withBackgroundColor:(id)a4 andRenderer:(id)a5;
+ (id)renderRingGroupController:(id)a3 withRenderer:(id)a4;
+ (id)renderRingsUsingRingsView:(id)a3 forMovePercentage:(double)a4 exercisePercentage:(double)a5 standPercentage:(double)a6 withDiameter:(double)a7 thickness:(double)a8 interspacing:(double)a9;
+ (id)renderRingsWithBackgroundColor:(id)a3 usingRingsView:(id)a4 forMovePercentage:(double)a5 exercisePercentage:(double)a6 standPercentage:(double)a7 withDiameter:(double)a8 thickness:(double)a9 interspacing:(double)a10;
+ (id)renderSingleRingUsingRingsView:(id)a3 forPercentage:(double)a4 withDiameter:(double)a5 thickness:(double)a6 topColor:(id)a7 bottomColor:(id)a8;
+ (void)renderRingsUsingRingsView:(id)a3 forMovePercentage:(double)a4 exercisePercentage:(double)a5 standPercentage:(double)a6 withDiameter:(double)a7 thickness:(double)a8 interspacing:(double)a9 inRect:(CGRect)a10;
@end

@implementation ARUIRingsImageFactory

+ (id)renderRingGroup:(id)a3 withRenderer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = objc_alloc_init(ARUIRenderer);
  }

  v7 = [v5 copy];
  [v7 groupDiameter];
  v9 = v8;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = v9 + v12 * -0.5;
  *&v13 = v13;
  [v7 setGroupDiameter:v13];
  [v7 setTranslation:0.0];
  [v5 groupDiameter];
  v15 = [[ARUIRenderContext alloc] initWithSize:v14, v14];
  v16 = [v7 rings];
  v17 = [v7 spriteSheet];
  v18 = [(ARUIRenderer *)v6 snapshotRings:v16 spriteSheet:v17 withContext:v15];

  return v18;
}

+ (id)renderRingGroupController:(id)a3 withRenderer:(id)a4
{
  v5 = a4;
  v6 = [a3 ringGroup];
  v7 = [ARUIRingsImageFactory renderRingGroup:v6 withRenderer:v5];

  return v7;
}

+ (id)renderRingGroupController:(id)a3 withBackgroundColor:(id)a4 andRenderer:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [ARUIRingsImageFactory renderRingGroupController:v8 withRenderer:a5];
  [v8 ringDiameter];
  v11 = v10;

  v12 = v11;
  v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, v12, v12}];
  v14 = [MEMORY[0x1E69794A0] layer];
  [v14 setBorderWidth:1.0];
  v15 = [v7 CGColor];

  [v14 setFillColor:v15];
  [v14 setPath:{objc_msgSend(v13, "CGPath")}];
  [v9 scale];
  v17 = v16;
  v21.width = v12;
  v21.height = v12;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v17);
  [v14 renderInContext:UIGraphicsGetCurrentContext()];
  [v9 drawAtPoint:{0.0, 0.0}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (id)renderSingleRingUsingRingsView:(id)a3 forPercentage:(double)a4 withDiameter:(double)a5 thickness:(double)a6 topColor:(id)a7 bottomColor:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v17 = [v16 ringGroupController];
  *&v18 = a5;
  [v17 setRingDiameter:v18];
  [v17 setRingIconSize:0.0];
  [v17 setPercentage:0 ofRingAtIndex:0 animated:a4];
  [v17 setTopColor:v15 bottomColor:v14 ofRingAtIndex:0];

  v19 = [a1 _renderRingsUsingRingsView:v16 withDiameter:a5 thickness:a6 interspacing:0.0];

  return v19;
}

+ (id)renderRingsUsingRingsView:(id)a3 forMovePercentage:(double)a4 exercisePercentage:(double)a5 standPercentage:(double)a6 withDiameter:(double)a7 thickness:(double)a8 interspacing:(double)a9
{
  v16 = a3;
  v17 = [v16 ringGroupController];
  *&v18 = a7;
  [v17 setRingDiameter:v18];
  [v17 setRingIconSize:0.0];
  [v16 setActiveEnergyPercentage:0 animated:a4];
  [v16 setBriskPercentage:0 animated:a5];
  [v16 setMovingHoursPercentage:0 animated:a6];
  v19 = [a1 _renderRingsUsingRingsView:v16 withDiameter:a7 thickness:a8 interspacing:a9];

  return v19;
}

+ (id)_renderRingsUsingRingsView:(id)a3 withDiameter:(double)a4 thickness:(double)a5 interspacing:(double)a6
{
  v9 = a3;
  v10 = [v9 ringGroupController];
  v11 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v11 scale];
  v13 = v12;

  [v9 setFrame:{0.0, 0.0, a4, a4}];
  v14 = a4 + v13 * -0.5;
  *&v14 = v14;
  [v10 setRingDiameter:v14];
  v15 = a5 + -0.5;
  *&v15 = a5 + -0.5;
  [v10 setRingThickness:v15];
  *&v16 = a6;
  [v10 setRingInterspacing:v16];
  [v10 setCenter:{0.0, 0.0}];
  v17 = [v9 snapshot];

  [v17 size];
  v19 = v18;
  [v17 size];
  v21 = v20 * 0.5 - a4 * 0.5;
  [v17 scale];
  v23 = v22;
  v27.width = a4;
  v27.height = a4;
  UIGraphicsBeginImageContextWithOptions(v27, 0, v23);
  [v17 drawAtPoint:{-(v19 * 0.5 - a4 * 0.5), -v21}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (id)renderRingsWithBackgroundColor:(id)a3 usingRingsView:(id)a4 forMovePercentage:(double)a5 exercisePercentage:(double)a6 standPercentage:(double)a7 withDiameter:(double)a8 thickness:(double)a9 interspacing:(double)a10
{
  v17 = a3;
  v18 = [ARUIRingsImageFactory renderRingsUsingRingsView:a4 forMovePercentage:a5 exercisePercentage:a6 standPercentage:a7 withDiameter:a8 thickness:a9 interspacing:a10];
  v19 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, a8, a8}];
  v20 = [MEMORY[0x1E69794A0] layer];
  [v20 setBorderWidth:1.0];
  v21 = [v17 CGColor];

  [v20 setFillColor:v21];
  [v20 setPath:{objc_msgSend(v19, "CGPath")}];
  [v18 scale];
  v23 = v22;
  v27.width = a8;
  v27.height = a8;
  UIGraphicsBeginImageContextWithOptions(v27, 0, v23);
  [v20 renderInContext:UIGraphicsGetCurrentContext()];
  [v18 drawAtPoint:{0.0, 0.0}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (void)renderRingsUsingRingsView:(id)a3 forMovePercentage:(double)a4 exercisePercentage:(double)a5 standPercentage:(double)a6 withDiameter:(double)a7 thickness:(double)a8 interspacing:(double)a9 inRect:(CGRect)a10
{
  v16 = a3;
  [v16 setActiveEnergyPercentage:0 animated:a4];
  [v16 setBriskPercentage:0 animated:a5];
  [v16 setMovingHoursPercentage:0 animated:a6];
  v21 = [v16 ringGroupController];
  [v16 setFrame:{0.0, 0.0, a7, a7}];
  v17 = a7 + -1.0;
  *&v17 = a7 + -1.0;
  [v21 setRingDiameter:v17];
  v18 = a8 + -0.5;
  *&v18 = a8 + -0.5;
  [v21 setRingThickness:v18];
  *&v19 = a9;
  [v21 setRingInterspacing:v19];
  [v21 setCenter:{0.0, 0.0}];
  v20 = [v16 snapshot];

  [v20 drawInRect:{a10.origin.x, a10.origin.y, a10.size.width, a10.size.height}];
}

@end