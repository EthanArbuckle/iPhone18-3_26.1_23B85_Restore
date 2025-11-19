@interface CNAvatarImageRenderingScope
+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5 style:(unint64_t)a6 backgroundStyle:(unint64_t)a7;
+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(id)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8;
+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(id)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 backgroundStyle:(unint64_t)a9 color:(id)a10 maskedAvatarIndices:(id)a11;
+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(id)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 color:(id)a9;
@end

@implementation CNAvatarImageRenderingScope

+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(id)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 backgroundStyle:(unint64_t)a9 color:(id)a10 maskedAvatarIndices:(id)a11
{
  v15 = a7;
  height = a3.height;
  width = a3.width;
  v21 = MEMORY[0x1E6996B98];
  v22 = a6;
  v23 = a11;
  v24 = a10;
  v25 = [a6 CGColor];
  if (a9 - 1 >= 4)
  {
    v26 = 0;
  }

  else
  {
    v26 = a9;
  }

  v27 = [v21 renderingScopeWithPointSize:v25 scale:v15 strokeWidth:a8 == 1 strokeColor:v26 rightToLeft:v24 style:v23 backgroundStyle:width color:height maskedAvatarIndices:{a4, a5}];

  return v27;
}

+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(id)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 color:(id)a9
{
  v11 = a7;
  height = a3.height;
  width = a3.width;
  v17 = MEMORY[0x1E6996B98];
  v18 = a6;
  v19 = a9;
  v20 = [v17 renderingScopeWithPointSize:objc_msgSend(a6 scale:"CGColor") strokeWidth:v11 strokeColor:a8 == 1 rightToLeft:v19 style:width color:{height, a4, a5}];

  return v20;
}

+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(id)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8
{
  v9 = a7;
  height = a3.height;
  width = a3.width;
  v14 = MEMORY[0x1E6996B98];
  v15 = [a6 CGColor];

  return [v14 renderingScopeWithPointSize:v15 scale:v9 strokeWidth:a8 == 1 strokeColor:0 rightToLeft:width style:height color:{a4, a5}];
}

+ (id)scopeWithPointSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5 style:(unint64_t)a6 backgroundStyle:(unint64_t)a7
{
  v9 = a5;
  height = a3.height;
  width = a3.width;
  v14 = [MEMORY[0x1E696AC90] indexSet];
  v15 = [a1 scopeWithPointSize:0 scale:v9 strokeWidth:a6 strokeColor:a7 rightToLeft:0 style:v14 backgroundStyle:width color:height maskedAvatarIndices:{a4, 0.0}];

  return v15;
}

@end