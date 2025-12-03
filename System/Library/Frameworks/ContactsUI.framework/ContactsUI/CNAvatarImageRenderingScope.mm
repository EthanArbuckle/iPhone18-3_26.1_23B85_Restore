@interface CNAvatarImageRenderingScope
+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle;
+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(id)color rightToLeft:(BOOL)left style:(unint64_t)style;
+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(id)color rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle color:(id)self0 maskedAvatarIndices:(id)self1;
+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(id)color rightToLeft:(BOOL)left style:(unint64_t)style color:(id)a9;
@end

@implementation CNAvatarImageRenderingScope

+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(id)color rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle color:(id)self0 maskedAvatarIndices:(id)self1
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  v21 = MEMORY[0x1E6996B98];
  colorCopy = color;
  indicesCopy = indices;
  v24 = a10;
  cGColor = [color CGColor];
  if (backgroundStyle - 1 >= 4)
  {
    backgroundStyleCopy = 0;
  }

  else
  {
    backgroundStyleCopy = backgroundStyle;
  }

  v27 = [v21 renderingScopeWithPointSize:cGColor scale:leftCopy strokeWidth:style == 1 strokeColor:backgroundStyleCopy rightToLeft:v24 style:indicesCopy backgroundStyle:width color:height maskedAvatarIndices:{scale, width}];

  return v27;
}

+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(id)color rightToLeft:(BOOL)left style:(unint64_t)style color:(id)a9
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  v17 = MEMORY[0x1E6996B98];
  colorCopy = color;
  v19 = a9;
  v20 = [v17 renderingScopeWithPointSize:objc_msgSend(color scale:"CGColor") strokeWidth:leftCopy strokeColor:style == 1 rightToLeft:v19 style:width color:{height, scale, width}];

  return v20;
}

+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(id)color rightToLeft:(BOOL)left style:(unint64_t)style
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  v14 = MEMORY[0x1E6996B98];
  cGColor = [color CGColor];

  return [v14 renderingScopeWithPointSize:cGColor scale:leftCopy strokeWidth:style == 1 strokeColor:0 rightToLeft:width style:height color:{scale, width}];
}

+ (id)scopeWithPointSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  v15 = [self scopeWithPointSize:0 scale:leftCopy strokeWidth:style strokeColor:backgroundStyle rightToLeft:0 style:indexSet backgroundStyle:width color:height maskedAvatarIndices:{scale, 0.0}];

  return v15;
}

@end