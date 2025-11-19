@interface TCControlContents
+ (CGSize)_shadowOffset;
+ (TCControlContents)contentsWithImages:(id)a3;
+ (double)scaleFactor;
+ (id)buttonContentsForLabel:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6;
+ (id)buttonContentsForSystemImageNamed:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6;
+ (id)buttonImageWithSize:(CGSize)a3 shape:(int64_t)a4 fillColor:(id)a5 strokeColor:(id)a6 shadowColor:(id)a7;
+ (id)buttonLabelWithSize:(CGSize)a3 label:(id)a4;
+ (id)directionPadContentsForLabel:(id)a3 size:(CGSize)a4 style:(int64_t)a5 direction:(int64_t)a6 controller:(id)a7;
+ (id)dpadImageWithSize:(CGSize)a3 fillColor:(id)a4 strokeColor:(id)a5 shadowColor:(id)a6;
+ (id)rotateImageData:(id)a3 byAngle:(double)a4;
+ (id)switchedOnContentsForLabel:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6;
+ (id)switchedOnContentsForSystemImageNamed:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6;
+ (id)symbolForLabel:(id)a3;
+ (id)systemImageNamed:(id)a3 color:(id)a4 size:(CGSize)a5;
+ (id)textForLabel:(id)a3;
+ (id)textureForImage:(id)a3 controller:(id)a4;
+ (id)throttleBackgroundContentsOfSize:(CGSize)a3 controller:(id)a4;
+ (id)throttleImageWithSize:(CGSize)a3 fillColor:(id)a4 strokeColor:(id)a5 shadowColor:(id)a6;
+ (id)throttleIndicatorContentsOfSize:(CGSize)a3 controller:(id)a4;
+ (id)thumbstickBackgroundContentsOfSize:(CGSize)a3 controller:(id)a4;
+ (id)thumbstickStickContentsOfSize:(CGSize)a3 controller:(id)a4;
- (TCControlContents)initWithImages:(id)a3;
@end

@implementation TCControlContents

+ (TCControlContents)contentsWithImages:(id)a3
{
  v3 = a3;
  v4 = [[TCControlContents alloc] initWithImages:v3];

  return v4;
}

- (TCControlContents)initWithImages:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TCControlContents;
  v6 = [(TCControlContents *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_images, a3);
  }

  return v7;
}

+ (double)scaleFactor
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  return v4;
}

+ (id)textForLabel:(id)a3
{
  v3 = textForLabel__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TCControlContents textForLabel:];
  }

  v5 = textForLabel___textLookup;
  v6 = [v4 name];

  v7 = [v5 objectForKey:v6];

  return v7;
}

void __34__TCControlContents_textForLabel___block_invoke()
{
  v0 = textForLabel___textLookup;
  textForLabel___textLookup = MEMORY[0x277CBEC10];
}

+ (id)symbolForLabel:(id)a3
{
  v3 = symbolForLabel__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TCControlContents symbolForLabel:];
  }

  v5 = symbolForLabel___textLookup;
  v6 = [v4 name];

  v7 = [v5 objectForKey:v6];

  return v7;
}

void __36__TCControlContents_symbolForLabel___block_invoke()
{
  v0 = symbolForLabel___textLookup;
  symbolForLabel___textLookup = MEMORY[0x277CBEC10];
}

+ (CGSize)_shadowOffset
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)buttonContentsForLabel:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a6;
  v13 = objc_opt_new();
  v14 = +[TCControlContents _fillColor];
  v15 = +[TCControlContents _shadowColor];
  v16 = [a1 buttonImageWithSize:a5 shape:v14 fillColor:0 strokeColor:v15 shadowColor:{width, height}];
  v17 = [a1 textureForImage:v16 controller:v12];

  v18 = [[TCControlImage alloc] initWithTexture:v17 size:width, height];
  [v13 addObject:v18];
  v19 = [a1 textForLabel:v11];
  if (v19)
  {
    v28 = v11;
    v20 = [a1 buttonLabelWithSize:v19 label:{width, height}];
    v21 = [a1 textureForImage:v20 controller:v12];

    v22 = [[TCControlImage alloc] initWithTexture:v21 size:width, height];
    [v13 addObject:v22];
  }

  else
  {
    v21 = [a1 symbolForLabel:v11];
    if (!v21)
    {
      goto LABEL_6;
    }

    v28 = v11;
    v23 = +[TCControlContents _iconColor];
    v24 = [a1 systemImageNamed:v21 color:v23 size:{width, height}];
    v22 = [a1 textureForImage:v24 controller:v12];

    v25 = [[TCControlImage alloc] initWithTexture:v22 size:width, height];
    [v13 addObject:v25];
  }

  v11 = v28;
LABEL_6:

  v26 = [TCControlContents contentsWithImages:v13];

  return v26;
}

+ (id)buttonContentsForSystemImageNamed:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = +[TCControlContents _fillColor];
  v15 = +[TCControlContents _shadowColor];
  v16 = [a1 buttonImageWithSize:a5 shape:v14 fillColor:0 strokeColor:v15 shadowColor:{width, height}];
  v17 = [a1 textureForImage:v16 controller:v11];

  v18 = [[TCControlImage alloc] initWithTexture:v17 size:width, height];
  [v13 addObject:v18];
  v19 = +[TCControlContents _iconColor];
  v20 = [a1 systemImageNamed:v12 color:v19 size:{width, height}];

  v21 = [a1 textureForImage:v20 controller:v11];

  v22 = [[TCControlImage alloc] initWithTexture:v21 size:width, height];
  [v13 addObject:v22];
  v23 = [TCControlContents contentsWithImages:v13];

  return v23;
}

+ (id)switchedOnContentsForLabel:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = +[TCControlContents _switchFillColor];
  v15 = +[TCControlContents _switchStrokeColor];
  v16 = +[TCControlContents _shadowColor];
  v17 = [a1 buttonImageWithSize:a5 shape:v14 fillColor:v15 strokeColor:v16 shadowColor:{width, height}];
  v18 = [a1 textureForImage:v17 controller:v11];

  v19 = [[TCControlImage alloc] initWithTexture:v18 size:width, height];
  [v13 addObject:v19];
  v20 = [a1 textForLabel:v12];

  if (v20)
  {
    v21 = [a1 buttonLabelWithSize:v20 label:{width, height}];
    v22 = [a1 textureForImage:v21 controller:v11];

    v23 = [[TCControlImage alloc] initWithTexture:v22 size:width, height];
    [v13 addObject:v23];
  }

  v24 = [TCControlContents contentsWithImages:v13];

  return v24;
}

+ (id)switchedOnContentsForSystemImageNamed:(id)a3 size:(CGSize)a4 shape:(int64_t)a5 controller:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = +[TCControlContents _switchFillColor];
  v15 = +[TCControlContents _switchStrokeColor];
  v16 = +[TCControlContents _shadowColor];
  v17 = [a1 buttonImageWithSize:a5 shape:v14 fillColor:v15 strokeColor:v16 shadowColor:{width, height}];
  v18 = [a1 textureForImage:v17 controller:v11];

  v19 = [[TCControlImage alloc] initWithTexture:v18 size:width, height];
  [v13 addObject:v19];
  v20 = +[TCControlContents _iconColor];
  v21 = [a1 systemImageNamed:v12 color:v20 size:{width, height}];

  v22 = [a1 textureForImage:v21 controller:v11];

  v23 = [[TCControlImage alloc] initWithTexture:v22 size:width, height];
  [v13 addObject:v23];
  v24 = [TCControlContents contentsWithImages:v13];

  return v24;
}

+ (id)directionPadContentsForLabel:(id)a3 size:(CGSize)a4 style:(int64_t)a5 direction:(int64_t)a6 controller:(id)a7
{
  height = a4.height;
  width = a4.width;
  v12 = a7;
  v13 = objc_opt_new();
  v14 = +[TCControlContents _fillColor];
  v15 = +[TCControlContents _shadowColor];
  if (a5)
  {
    v16 = [a1 dpadImageWithSize:v14 fillColor:0 strokeColor:v15 shadowColor:{width, height}];

    if (a6)
    {
      if (a6 == 2)
      {
        v17 = 1.57079633;
      }

      else
      {
        if (a6 != 3)
        {
LABEL_12:
          v19 = [a1 textureForImage:v16 controller:v12];
          v21 = [[TCControlImage alloc] initWithTexture:v19 size:width, height];
          [v13 addObject:v21];
          goto LABEL_13;
        }

        v17 = -1.57079633;
      }
    }

    else
    {
      v17 = 3.14159265;
    }

    v25 = [a1 rotateImageData:v16 byAngle:v17];

    v16 = v25;
    goto LABEL_12;
  }

  v18 = [a1 buttonImageWithSize:0 shape:v14 fillColor:0 strokeColor:v15 shadowColor:{width, height}];
  v16 = [a1 textureForImage:v18 controller:v12];

  v19 = [[TCControlImage alloc] initWithTexture:v16 size:width, height];
  [v13 addObject:v19];
  v20 = +[TCControlContents _iconColor];
  v21 = [a1 systemImageNamed:@"triangle.fill" color:v20 size:{width, height}];

  if ((a6 - 1) <= 2)
  {
    v22 = [a1 rotateImageData:v21 byAngle:dbl_23AAEDFB0[a6 - 1]];

    v21 = v22;
  }

  v23 = [a1 textureForImage:v21 controller:v12];
  v24 = [[TCControlImage alloc] initWithTexture:v23 size:width, height];
  [v13 addObject:v24];

LABEL_13:
  v26 = [TCControlContents contentsWithImages:v13];

  return v26;
}

+ (id)thumbstickStickContentsOfSize:(CGSize)a3 controller:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = +[TCControlContents _iconColor];
  v10 = +[TCControlContents _strokeColor];
  v11 = +[TCControlContents _shadowColor];
  v12 = [a1 buttonImageWithSize:0 shape:v9 fillColor:v10 strokeColor:v11 shadowColor:{width, height}];
  v13 = [a1 textureForImage:v12 controller:v7];

  v14 = [[TCControlImage alloc] initWithTexture:v13 size:width, height];
  [v8 addObject:v14];
  v15 = [TCControlContents contentsWithImages:v8];

  return v15;
}

+ (id)thumbstickBackgroundContentsOfSize:(CGSize)a3 controller:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = +[TCControlContents _fillColor];
  v10 = +[TCControlContents _shadowColor];
  v11 = [a1 buttonImageWithSize:0 shape:v9 fillColor:0 strokeColor:v10 shadowColor:{width, height}];
  v12 = [a1 textureForImage:v11 controller:v7];

  v13 = [[TCControlImage alloc] initWithTexture:v12 size:width, height];
  [v8 addObject:v13];
  v14 = [TCControlContents contentsWithImages:v8];

  return v14;
}

+ (id)throttleIndicatorContentsOfSize:(CGSize)a3 controller:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = +[TCControlContents _iconColor];
  v10 = +[TCControlContents _shadowColor];
  v11 = [a1 buttonImageWithSize:0 shape:v9 fillColor:0 strokeColor:v10 shadowColor:{width, height}];
  v12 = [a1 textureForImage:v11 controller:v7];

  v13 = [[TCControlImage alloc] initWithTexture:v12 size:width, height];
  [v8 addObject:v13];
  v14 = [TCControlContents contentsWithImages:v8];

  return v14;
}

+ (id)throttleBackgroundContentsOfSize:(CGSize)a3 controller:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = +[TCControlContents _fillColor];
  v10 = +[TCControlContents _shadowColor];
  v11 = [a1 throttleImageWithSize:v9 fillColor:0 strokeColor:v10 shadowColor:{width, height}];
  v12 = [a1 textureForImage:v11 controller:v7];

  v13 = [[TCControlImage alloc] initWithTexture:v12 size:width, height];
  [v8 addObject:v13];
  v14 = [TCControlContents contentsWithImages:v8];

  return v14;
}

+ (id)buttonImageWithSize:(CGSize)a3 shape:(int64_t)a4 fillColor:(id)a5 strokeColor:(id)a6 shadowColor:(id)a7
{
  height = a3.height;
  width = a3.width;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  [a1 scaleFactor];
  v17 = width * v16;
  [a1 scaleFactor];
  v19 = height * v18;
  v55.width = v17;
  v55.height = v19;
  UIGraphicsBeginImageContextWithOptions(v55, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v21 = [MEMORY[0x277D75348] clearColor];
  [v21 setFill];

  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = v17;
  v57.size.height = v19;
  UIRectFill(v57);
  +[TCControlContents _shadowOffset];
  v23 = v22;
  v25 = v24;
  +[TCControlContents _shadowBlurRadius];
  v27 = v26;
  v28 = [v15 CGColor];

  v56.width = v23;
  v56.height = v25;
  CGContextSetShadowWithColor(CurrentContext, v56, v27, v28);
  +[TCControlContents _shadowBlurRadius];
  v30 = v29 * 2.0 + 1.0;
  v58.origin.x = 0.0;
  v58.origin.y = 0.0;
  v58.size.width = v17;
  v58.size.height = v19;
  v59 = CGRectInset(v58, v30, v30);
  x = v59.origin.x;
  y = v59.origin.y;
  v33 = v59.size.width;
  v34 = v59.size.height;
  +[TCControlContents _strokeWidth];
  v36 = v35;
  v37 = v35 * 0.5;
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = v33;
  v60.size.height = v34;
  v61 = CGRectInset(v60, v37, v37);
  v38 = v61.origin.x;
  v39 = v61.origin.y;
  v40 = v61.size.width;
  v53 = v61.size.height;
  if (v13)
  {
    v41 = MEMORY[0x277D75208];
    if (a4)
    {
      +[TCControlContents _cornerRadius];
      [v41 bezierPathWithRoundedRect:x cornerRadius:{y, v33, v34, v42}];
    }

    else
    {
      [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, v33, v34}];
    }
    v43 = ;
    [v13 setFill];
    [v43 fill];
  }

  if (v14)
  {
    if (a4)
    {
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = v33;
      v62.size.height = v34;
      v63 = CGRectInset(v62, v36 / -3.0, v36 / -3.0);
      v44 = v63.origin.x;
      v45 = v63.origin.y;
      v46 = v63.size.width;
      v47 = v63.size.height;
      v48 = MEMORY[0x277D75208];
      +[TCControlContents _cornerRadius];
      [v48 bezierPathWithRoundedRect:v44 cornerRadius:{v45, v46, v47, v49}];
    }

    else
    {
      [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v38, v39, v40, v53}];
    }
    v50 = ;
    [v50 setLineWidth:v36];
    [v14 setStroke];
    [v50 stroke];
  }

  CGContextSetShadowWithColor(CurrentContext, *MEMORY[0x277CBF3A8], 0.0, 0);
  v51 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v51;
}

+ (id)buttonLabelWithSize:(CGSize)a3 label:(id)a4
{
  height = a3.height;
  width = a3.width;
  v25[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  [a1 scaleFactor];
  v9 = width * v8;
  [a1 scaleFactor];
  v11 = height * v10;
  v27.width = v9;
  v27.height = v11;
  UIGraphicsBeginImageContextWithOptions(v27, 0, 1.0);
  v12 = [MEMORY[0x277D75348] clearColor];
  [v12 setFill];

  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v9;
  v28.size.height = v11;
  UIRectFill(v28);
  [v7 length];
  v13 = [MEMORY[0x277D74300] systemFontOfSize:v11 * 0.45 weight:*MEMORY[0x277D743F8]];
  v14 = objc_alloc_init(MEMORY[0x277D74240]);
  [v14 setAlignment:1];
  v15 = *MEMORY[0x277D740A8];
  v25[0] = v13;
  v16 = *MEMORY[0x277D740C0];
  v24[0] = v15;
  v24[1] = v16;
  v17 = +[TCControlContents _iconColor];
  v24[2] = *MEMORY[0x277D74118];
  v25[1] = v17;
  v25[2] = v14;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];

  [v7 sizeWithAttributes:v18];
  [v7 drawInRect:v18 withAttributes:{(v9 - v19) * 0.5, (v11 - v20) * 0.5, v19}];

  v21 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)throttleImageWithSize:(CGSize)a3 fillColor:(id)a4 strokeColor:(id)a5 shadowColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a5;
  v12 = a6;
  v13 = a4;
  [a1 scaleFactor];
  v15 = width * v14;
  [a1 scaleFactor];
  v17 = height * v16;
  v33.width = v15;
  v33.height = v17;
  UIGraphicsBeginImageContextWithOptions(v33, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v19 = [MEMORY[0x277D75348] clearColor];
  [v19 setFill];

  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v15;
  v35.size.height = v17;
  UIRectFill(v35);
  +[TCControlContents _shadowOffset];
  v21 = v20;
  v23 = v22;
  +[TCControlContents _shadowBlurRadius];
  v25 = v24;
  v26 = [v12 CGColor];

  v34.width = v21;
  v34.height = v23;
  CGContextSetShadowWithColor(CurrentContext, v34, v25, v26);
  if (v17 <= v15)
  {
    v27 = v17;
  }

  else
  {
    v27 = v15;
  }

  v28 = v27 * 0.5;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v15;
  v36.size.height = v17;
  v37 = CGRectInset(v36, 0.0, 0.0);
  v29 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v37.origin.x cornerRadius:{v37.origin.y, v37.size.width, v37.size.height, v28}];
  [v13 setFill];

  [v29 fill];
  if (v11)
  {
    [v11 setStroke];
    +[TCControlContents _strokeWidth];
    [v29 setLineWidth:?];
    [v29 stroke];
  }

  CGContextSetShadowWithColor(CurrentContext, *MEMORY[0x277CBF3A8], 0.0, 0);
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v30;
}

+ (id)dpadImageWithSize:(CGSize)a3 fillColor:(id)a4 strokeColor:(id)a5 shadowColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [a1 scaleFactor];
  v15 = width * v14;
  [a1 scaleFactor];
  v17 = height * v16;
  v18 = v15 * 0.0078125 * 8.0;
  v19 = v15 * 0.0078125 * -20.0;
  +[TCControlContents _strokeWidth];
  v43 = v20;
  v45.width = v15;
  v45.height = v17;
  UIGraphicsBeginImageContextWithOptions(v45, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v22 = [MEMORY[0x277D75348] clearColor];
  [v22 setFill];

  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = v15;
  v47.size.height = v17;
  UIRectFill(v47);
  v48.size.height = v15 * 0.85;
  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v48.size.width = v15;
  v49 = CGRectInset(v48, v15 * 0.0078125 * 30.0, v15 * 0.0078125 * 30.0);
  x = v49.origin.x;
  y = v49.origin.y;
  v25 = v49.size.width;
  v26 = v49.size.height;
  v27 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:12 byRoundingCorners:? cornerRadii:?];
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = v25;
  v50.size.height = v26;
  MidX = CGRectGetMidX(v50);
  v29 = y + v19;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = v25;
  v51.size.height = v26;
  MinX = CGRectGetMinX(v51);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = v25;
  v52.size.height = v26;
  MaxX = CGRectGetMaxX(v52);
  v32 = [MEMORY[0x277D75208] bezierPath];
  [v32 moveToPoint:{MinX, y}];
  [v32 addLineToPoint:{MinX, y}];
  [v32 addArcWithCenter:1 radius:MidX startAngle:v29 endAngle:v18 clockwise:{-2.35619449, -0.785398163}];
  [v32 addLineToPoint:{MaxX, y}];
  [v32 closePath];
  v33 = [MEMORY[0x277D75208] bezierPathWithCGPath:{CGPathCreateCopyByUnioningPath(objc_msgSend(v27, "CGPath"), objc_msgSend(v32, "CGPath"), 0)}];
  +[TCControlContents _shadowOffset];
  v35 = v34;
  v37 = v36;
  +[TCControlContents _shadowBlurRadius];
  v39 = v38;
  v40 = [v13 CGColor];

  v46.width = v35;
  v46.height = v37;
  CGContextSetShadowWithColor(CurrentContext, v46, v39, v40);
  if (v11)
  {
    [v11 setFill];
    [v33 fill];
  }

  if (v12)
  {
    [v12 setStroke];
    [v33 setLineWidth:v43];
    [v33 stroke];
  }

  CGContextSetShadowWithColor(CurrentContext, *MEMORY[0x277CBF3A8], 0.0, 0);
  v41 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v41;
}

+ (id)rotateImageData:(id)a3 byAngle:(double)a4
{
  v5 = a3;
  [v5 size];
  UIGraphicsBeginImageContextWithOptions(v20, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v5 size];
  v8 = v7 * 0.5;
  [v5 size];
  CGContextTranslateCTM(CurrentContext, v8, v9 * 0.5);
  CGContextRotateCTM(CurrentContext, a4);
  [v5 size];
  v11 = v10 * -0.5;
  [v5 size];
  v13 = v12 * -0.5;
  [v5 size];
  v15 = v14;
  [v5 size];
  [v5 drawInRect:{v11, v13, v15, v16}];

  v17 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v17;
}

+ (id)systemImageNamed:(id)a3 color:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = a3;
  [a1 scaleFactor];
  v12 = width * v11;
  [a1 scaleFactor];
  v14 = height * v13;
  v15 = [MEMORY[0x277D74300] systemFontOfSize:v14 * 0.4 weight:*MEMORY[0x277D74418]];
  v16 = [MEMORY[0x277D755D0] configurationWithFont:v15];
  v17 = [MEMORY[0x277D755B8] systemImageNamed:v10 withConfiguration:v16];

  v18 = [v17 imageWithTintColor:v9 renderingMode:1];

  v29.width = v12;
  v29.height = v14;
  UIGraphicsBeginImageContextWithOptions(v29, 0, 1.0);
  [v18 size];
  v20 = (v12 - v19) * 0.5;
  [v18 size];
  v22 = (v14 - v21) * 0.5;
  [v18 size];
  v24 = v23;
  [v18 size];
  [v18 drawInRect:{v20, v22, v24, v25}];
  v26 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v26;
}

+ (id)textureForImage:(id)a3 controller:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a3 CGImage];
  Width = CGImageGetWidth(v8);
  Height = CGImageGetHeight(v8);
  v11 = malloc_type_calloc(4 * Width * Height, 1uLL, 0x100004077774924uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = CGBitmapContextCreate(v11, Width, Height, 8uLL, 4 * Width, DeviceRGB, 0x4001u);
  v20.size.width = Width;
  v20.size.height = Height;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  CGContextDrawImage(v13, v20, v8);
  CGColorSpaceRelease(DeviceRGB);
  CGContextRelease(v13);
  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:70 width:Width height:Height mipmapped:0];
  [v14 setUsage:1];
  v15 = [v7 device];

  v16 = [v15 newTextureWithDescriptor:v14];
  memset(v18, 0, 24);
  v18[3] = Width;
  v18[4] = Height;
  v18[5] = 1;
  [v16 replaceRegion:v18 mipmapLevel:0 withBytes:v11 bytesPerRow:4 * Width];
  free(v11);

  return v16;
}

@end