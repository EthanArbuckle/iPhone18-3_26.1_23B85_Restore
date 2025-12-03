@interface ARUIRingsImageFactory
+ (id)_renderRingsUsingRingsView:(id)view withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)interspacing;
+ (id)renderRingGroup:(id)group withRenderer:(id)renderer;
+ (id)renderRingGroupController:(id)controller withBackgroundColor:(id)color andRenderer:(id)renderer;
+ (id)renderRingGroupController:(id)controller withRenderer:(id)renderer;
+ (id)renderRingsUsingRingsView:(id)view forMovePercentage:(double)percentage exercisePercentage:(double)exercisePercentage standPercentage:(double)standPercentage withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)interspacing;
+ (id)renderRingsWithBackgroundColor:(id)color usingRingsView:(id)view forMovePercentage:(double)percentage exercisePercentage:(double)exercisePercentage standPercentage:(double)standPercentage withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)self0;
+ (id)renderSingleRingUsingRingsView:(id)view forPercentage:(double)percentage withDiameter:(double)diameter thickness:(double)thickness topColor:(id)color bottomColor:(id)bottomColor;
+ (void)renderRingsUsingRingsView:(id)view forMovePercentage:(double)percentage exercisePercentage:(double)exercisePercentage standPercentage:(double)standPercentage withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)interspacing inRect:(CGRect)self0;
@end

@implementation ARUIRingsImageFactory

+ (id)renderRingGroup:(id)group withRenderer:(id)renderer
{
  groupCopy = group;
  rendererCopy = renderer;
  if (!rendererCopy)
  {
    rendererCopy = objc_alloc_init(ARUIRenderer);
  }

  v7 = [groupCopy copy];
  [v7 groupDiameter];
  v9 = v8;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v12 = v11;

  v13 = v9 + v12 * -0.5;
  *&v13 = v13;
  [v7 setGroupDiameter:v13];
  [v7 setTranslation:0.0];
  [groupCopy groupDiameter];
  v15 = [[ARUIRenderContext alloc] initWithSize:v14, v14];
  rings = [v7 rings];
  spriteSheet = [v7 spriteSheet];
  v18 = [(ARUIRenderer *)rendererCopy snapshotRings:rings spriteSheet:spriteSheet withContext:v15];

  return v18;
}

+ (id)renderRingGroupController:(id)controller withRenderer:(id)renderer
{
  rendererCopy = renderer;
  ringGroup = [controller ringGroup];
  v7 = [ARUIRingsImageFactory renderRingGroup:ringGroup withRenderer:rendererCopy];

  return v7;
}

+ (id)renderRingGroupController:(id)controller withBackgroundColor:(id)color andRenderer:(id)renderer
{
  colorCopy = color;
  controllerCopy = controller;
  v9 = [ARUIRingsImageFactory renderRingGroupController:controllerCopy withRenderer:renderer];
  [controllerCopy ringDiameter];
  v11 = v10;

  v12 = v11;
  v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, v12, v12}];
  layer = [MEMORY[0x1E69794A0] layer];
  [layer setBorderWidth:1.0];
  cGColor = [colorCopy CGColor];

  [layer setFillColor:cGColor];
  [layer setPath:{objc_msgSend(v13, "CGPath")}];
  [v9 scale];
  v17 = v16;
  v21.width = v12;
  v21.height = v12;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v17);
  [layer renderInContext:UIGraphicsGetCurrentContext()];
  [v9 drawAtPoint:{0.0, 0.0}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

+ (id)renderSingleRingUsingRingsView:(id)view forPercentage:(double)percentage withDiameter:(double)diameter thickness:(double)thickness topColor:(id)color bottomColor:(id)bottomColor
{
  bottomColorCopy = bottomColor;
  colorCopy = color;
  viewCopy = view;
  ringGroupController = [viewCopy ringGroupController];
  *&v18 = diameter;
  [ringGroupController setRingDiameter:v18];
  [ringGroupController setRingIconSize:0.0];
  [ringGroupController setPercentage:0 ofRingAtIndex:0 animated:percentage];
  [ringGroupController setTopColor:colorCopy bottomColor:bottomColorCopy ofRingAtIndex:0];

  v19 = [self _renderRingsUsingRingsView:viewCopy withDiameter:diameter thickness:thickness interspacing:0.0];

  return v19;
}

+ (id)renderRingsUsingRingsView:(id)view forMovePercentage:(double)percentage exercisePercentage:(double)exercisePercentage standPercentage:(double)standPercentage withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)interspacing
{
  viewCopy = view;
  ringGroupController = [viewCopy ringGroupController];
  *&v18 = diameter;
  [ringGroupController setRingDiameter:v18];
  [ringGroupController setRingIconSize:0.0];
  [viewCopy setActiveEnergyPercentage:0 animated:percentage];
  [viewCopy setBriskPercentage:0 animated:exercisePercentage];
  [viewCopy setMovingHoursPercentage:0 animated:standPercentage];
  v19 = [self _renderRingsUsingRingsView:viewCopy withDiameter:diameter thickness:thickness interspacing:interspacing];

  return v19;
}

+ (id)_renderRingsUsingRingsView:(id)view withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)interspacing
{
  viewCopy = view;
  ringGroupController = [viewCopy ringGroupController];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = v12;

  [viewCopy setFrame:{0.0, 0.0, diameter, diameter}];
  v14 = diameter + v13 * -0.5;
  *&v14 = v14;
  [ringGroupController setRingDiameter:v14];
  v15 = thickness + -0.5;
  *&v15 = thickness + -0.5;
  [ringGroupController setRingThickness:v15];
  *&v16 = interspacing;
  [ringGroupController setRingInterspacing:v16];
  [ringGroupController setCenter:{0.0, 0.0}];
  snapshot = [viewCopy snapshot];

  [snapshot size];
  v19 = v18;
  [snapshot size];
  v21 = v20 * 0.5 - diameter * 0.5;
  [snapshot scale];
  v23 = v22;
  v27.width = diameter;
  v27.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v27, 0, v23);
  [snapshot drawAtPoint:{-(v19 * 0.5 - diameter * 0.5), -v21}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (id)renderRingsWithBackgroundColor:(id)color usingRingsView:(id)view forMovePercentage:(double)percentage exercisePercentage:(double)exercisePercentage standPercentage:(double)standPercentage withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)self0
{
  colorCopy = color;
  v18 = [ARUIRingsImageFactory renderRingsUsingRingsView:view forMovePercentage:percentage exercisePercentage:exercisePercentage standPercentage:standPercentage withDiameter:diameter thickness:thickness interspacing:interspacing];
  v19 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{0.0, 0.0, diameter, diameter}];
  layer = [MEMORY[0x1E69794A0] layer];
  [layer setBorderWidth:1.0];
  cGColor = [colorCopy CGColor];

  [layer setFillColor:cGColor];
  [layer setPath:{objc_msgSend(v19, "CGPath")}];
  [v18 scale];
  v23 = v22;
  v27.width = diameter;
  v27.height = diameter;
  UIGraphicsBeginImageContextWithOptions(v27, 0, v23);
  [layer renderInContext:UIGraphicsGetCurrentContext()];
  [v18 drawAtPoint:{0.0, 0.0}];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

+ (void)renderRingsUsingRingsView:(id)view forMovePercentage:(double)percentage exercisePercentage:(double)exercisePercentage standPercentage:(double)standPercentage withDiameter:(double)diameter thickness:(double)thickness interspacing:(double)interspacing inRect:(CGRect)self0
{
  viewCopy = view;
  [viewCopy setActiveEnergyPercentage:0 animated:percentage];
  [viewCopy setBriskPercentage:0 animated:exercisePercentage];
  [viewCopy setMovingHoursPercentage:0 animated:standPercentage];
  ringGroupController = [viewCopy ringGroupController];
  [viewCopy setFrame:{0.0, 0.0, diameter, diameter}];
  v17 = diameter + -1.0;
  *&v17 = diameter + -1.0;
  [ringGroupController setRingDiameter:v17];
  v18 = thickness + -0.5;
  *&v18 = thickness + -0.5;
  [ringGroupController setRingThickness:v18];
  *&v19 = interspacing;
  [ringGroupController setRingInterspacing:v19];
  [ringGroupController setCenter:{0.0, 0.0}];
  snapshot = [viewCopy snapshot];

  [snapshot drawInRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
}

@end