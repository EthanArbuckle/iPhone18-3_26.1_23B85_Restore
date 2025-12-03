@interface MDLLight(SCNModelIO)
+ (id)lightWithSCNLight:()SCNModelIO;
@end

@implementation MDLLight(SCNModelIO)

+ (id)lightWithSCNLight:()SCNModelIO
{
  v4 = objc_alloc_init(MEMORY[0x277CD7B28]);
  objc_setAssociatedObject(v4, @"SCNSceneKitAssociatedObject", a3, 0x301);
  [v4 setColorSpace:*MEMORY[0x277CBF4B8]];
  [a3 color];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  color = [a3 color];
  cGColor = color;
  if (isKindOfClass)
  {
    cGColor = [color CGColor];
  }

  [v4 setColor:cGColor];
  [a3 attenuationStartDistance];
  *&v8 = v8;
  [v4 setAttenuationStartDistance:v8];
  [a3 attenuationEndDistance];
  *&v9 = v9;
  [v4 setAttenuationEndDistance:v9];
  [a3 attenuationFalloffExponent];
  *&v10 = v10;
  [v4 setAttenuationFalloffExponent:v10];
  [a3 spotInnerAngle];
  *&v11 = v11;
  [v4 setInnerConeAngle:v11];
  [a3 spotOuterAngle];
  *&v12 = v12;
  [v4 setOuterConeAngle:v12];
  if ([objc_msgSend(a3 "type")])
  {
    v13 = 1;
  }

  else if ([objc_msgSend(a3 "type")])
  {
    v13 = 3;
  }

  else if ([objc_msgSend(a3 "type")])
  {
    v13 = 2;
  }

  else
  {
    if (![objc_msgSend(a3 "type")])
    {
      goto LABEL_12;
    }

    v13 = 4;
  }

  [v4 setLightType:v13];
LABEL_12:

  return v4;
}

@end