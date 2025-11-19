@interface PKInkingTool
+ ($A0769C887683DBDFD436F0B4017CF2C7)_contextForStroke:(SEL)a3 weight:(id)a4 type:(double)a5;
+ (CGFloat)defaultWidthForInkType:(PKInkType)inkType;
+ (CGFloat)maximumWidthForInkType:(PKInkType)inkType;
+ (CGFloat)minimumWidthForInkType:(PKInkType)inkType;
+ (UIColor)convertColor:(UIColor *)color fromUserInterfaceStyle:(UIUserInterfaceStyle)fromUserInterfaceStyle to:(UIUserInterfaceStyle)toUserInterfaceStyle;
+ (double)_calculateEdgeWidthForWeight:(double)a3 type:(id)a4;
+ (double)_calculateWidthForWeight:(double)a3 type:(id)a4;
+ (double)_weightForWidth:(double)a3 type:(id)a4;
+ (double)_widthForWeight:(double)a3 type:(id)a4;
+ (id)behaviorForInkType:(id)a3;
+ (id)defaultColorForIdentifier:(id)a3;
+ (id)defaultLocalizedNameForIdentifier:(id)a3;
+ (void)_computeWeightInfoMapFor:(id)a3 in:(void *)a4;
+ (void)_weightInfoMap;
- (CGFloat)width;
- (NSString)localizedName;
- (PKContentVersion)requiredContentVersion;
- (PKInkType)inkType;
- (PKInkingTool)initWithInk:(PKInk *)ink width:(CGFloat)width;
- (PKInkingTool)initWithInkType:(PKInkType)type color:(UIColor *)color;
- (PKInkingTool)initWithInkType:(PKInkType)type color:(UIColor *)color width:(CGFloat)width;
- (PKInkingTool)initWithInkType:(id)a3 color:(id)a4 width:(double)a5 azimuth:(double)a6;
- (UIColor)color;
- (double)azimuth;
- (id)description;
@end

@implementation PKInkingTool

+ (void)_weightInfoMap
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PKInkingTool__weightInfoMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_MergedGlobals_130 != -1)
  {
    dispatch_once(&_MergedGlobals_130, block);
  }

  return qword_1ED6A5078;
}

- (PKInkType)inkType
{
  v2 = [(PKTool *)self ink];
  v3 = [v2 identifier];

  return v3;
}

- (PKInkingTool)initWithInkType:(PKInkType)type color:(UIColor *)color width:(CGFloat)width
{
  v8 = type;
  v9 = color;
  [PKInkingTool _weightForWidth:v8 type:width];
  v11 = v10;
  [PKInk defaultAzimuthForIdentifier:v8];
  v13 = [PKInk inkWithType:v8 color:v9 weight:v11 azimuth:v12];
  v16.receiver = self;
  v16.super_class = PKInkingTool;
  v14 = [(PKTool *)&v16 _initWithInk:v13];

  return v14;
}

- (PKInkingTool)initWithInkType:(id)a3 color:(id)a4 width:(double)a5 azimuth:(double)a6
{
  v9 = a3;
  v10 = a4;
  [PKInkingTool _weightForWidth:v9 type:a5];
  v11 = [PKInk inkWithType:"inkWithType:color:weight:azimuth:" color:v9 weight:v10 azimuth:?];
  v14.receiver = self;
  v14.super_class = PKInkingTool;
  v12 = [(PKTool *)&v14 _initWithInk:v11];

  return v12;
}

- (PKInkingTool)initWithInkType:(PKInkType)type color:(UIColor *)color
{
  v6 = type;
  v7 = color;
  [PKInkingTool defaultWidthForInkType:v6];
  v8 = [(PKInkingTool *)self initWithInkType:v6 color:v7 width:?];

  return v8;
}

- (PKInkingTool)initWithInk:(PKInk *)ink width:(CGFloat)width
{
  v6 = ink;
  v7 = [(PKInk *)v6 inkType];
  [PKInkingTool _weightForWidth:v7 type:width];
  v9 = v8;

  v10 = [PKInk inkFromInk:v6 weight:v9];
  v11 = [(PKTool *)self _initWithInk:v10];

  return v11;
}

- (UIColor)color
{
  v2 = [(PKTool *)self ink];
  v3 = [v2 colorForUIAllowHDR:1];

  return v3;
}

- (CGFloat)width
{
  v3 = [(PKTool *)self ink];
  v4 = [v3 behavior];
  v5 = [v4 useUnclampedWeight];

  v6 = [(PKTool *)self ink];
  [v6 weight];
  v8 = v7;
  if (!v5)
  {
    v9 = [(PKTool *)self ink];
    v10 = [v9 identifier];
    [PKInkingTool _widthForWeight:v10 type:v8];
    v8 = v11;
  }

  return v8;
}

- (double)azimuth
{
  v2 = [(PKTool *)self ink];
  [v2 _azimuth];
  v4 = v3;

  return v4;
}

- (PKContentVersion)requiredContentVersion
{
  v2 = [(PKTool *)self ink];
  v3 = [v2 requiredContentVersion];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(PKTool *)self _configuration];
  v3 = [v2 localizedName];

  return v3;
}

+ (id)defaultLocalizedNameForIdentifier:(id)a3
{
  v3 = [PKToolConfiguration defaultLocalizedNameForInkingToolWithIdentifier:a3];

  return v3;
}

+ (id)defaultColorForIdentifier:(id)a3
{
  v3 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:a3];

  return v3;
}

+ (double)_widthForWeight:(double)a3 type:(id)a4
{
  v5 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v6 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      a3 = PKFunctionPiecewiseSimpleLinear::_solveLinearPiecewise(*v7, *(v7 + 8), *(v7 + 24), *(v7 + 32), a3);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return a3;
}

+ (double)_weightForWidth:(double)a3 type:(id)a4
{
  v5 = a4;
  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v6 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      a3 = PKFunctionPiecewiseSimpleLinear::_solveLinearPiecewise(*(v7 + 24), *(v7 + 32), *v7, *(v7 + 8), a3);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return a3;
}

+ (CGFloat)defaultWidthForInkType:(PKInkType)inkType
{
  v3 = inkType;
  std::string::basic_string[abi:ne200100]<0>(__p, -[NSString UTF8String](v3, "UTF8String"));
  v4 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v4)
  {
    v5 = v4[6];
  }

  else
  {
    v5 = 1.0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

+ (CGFloat)minimumWidthForInkType:(PKInkType)inkType
{
  v3 = inkType;
  std::string::basic_string[abi:ne200100]<0>(__p, -[NSString UTF8String](v3, "UTF8String"));
  v4 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v4)
  {
    v5 = v4[7];
  }

  else
  {
    v5 = 1.0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

+ (CGFloat)maximumWidthForInkType:(PKInkType)inkType
{
  v3 = inkType;
  std::string::basic_string[abi:ne200100]<0>(__p, -[NSString UTF8String](v3, "UTF8String"));
  v4 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v4)
  {
    v5 = v4[8];
  }

  else
  {
    v5 = 1.0;
  }

  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

+ (UIColor)convertColor:(UIColor *)color fromUserInterfaceStyle:(UIUserInterfaceStyle)fromUserInterfaceStyle to:(UIUserInterfaceStyle)toUserInterfaceStyle
{
  v8 = color;
  if ([a1 _isUsingSystemColorPicker])
  {
    v9 = [MEMORY[0x1E69DC888] pk_convertColorPickerColor:v8 fromUserInterfaceStyle:fromUserInterfaceStyle to:toUserInterfaceStyle];
LABEL_7:
    v10 = v9;

    goto LABEL_8;
  }

  v10 = v8;
  if (toUserInterfaceStyle)
  {
    v10 = v8;
    if (fromUserInterfaceStyle)
    {
      v10 = v8;
      if (fromUserInterfaceStyle != toUserInterfaceStyle)
      {
        v9 = [MEMORY[0x1E69DC888] colorWithCGColor:{DKUTransformCGColor(-[UIColor CGColor](v8, "CGColor"))}];
        goto LABEL_7;
      }
    }
  }

LABEL_8:

  return v10;
}

+ ($A0769C887683DBDFD436F0B4017CF2C7)_contextForStroke:(SEL)a3 weight:(id)a4 type:(double)a5
{
  v18 = a4;
  v9 = a6;
  v10 = [MEMORY[0x1E69DC888] blackColor];
  v11 = [PKInk inkWithType:v9 color:v10 weight:a5 azimuth:0.0];
  [v18 setInk:v11];

  *&retstr->var1 = 0;
  *&retstr->var0.altitude = 0u;
  *&retstr->var0.radius2 = 0u;
  *&retstr->var0.aspectRatio = 0u;
  *&retstr->var0.force = 0u;
  *&retstr->var0.timestamp = 0u;
  *&retstr->var0.location.y = 0u;
  *&retstr->var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  retstr->var4 = 1;
  __asm { FMOV            V0.2D, #1.0 }

  *&retstr->var5 = _Q0;
  retstr->var7 = 0.0;
  retstr->var8 = 0.0;
  retstr->var9 = v18;
  retstr->var10 = 23;

  return result;
}

+ (double)_calculateWidthForWeight:(double)a3 type:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(_PKStrokeConcrete);
  v17 = 0u;
  [a1 _contextForStroke:v7 weight:v6 type:{a3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v8 = [v17 ink];
  v9 = [v8 behavior];
  [(PKInkBehavior *)v9 radiusForPoint:&v16 context:?];
  v11 = v10;

  v12 = [v17 ink];
  v13 = [v12 behavior];
  v14 = [(PKInkBehavior *)v13 edgeWidthForPoint:&v16 context:?];

  return v14 + v11 * 2.0;
}

+ (double)_calculateEdgeWidthForWeight:(double)a3 type:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(_PKStrokeConcrete);
  v13 = 0u;
  [a1 _contextForStroke:v7 weight:v6 type:{a3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v8 = [v13 ink];
  v9 = [v8 behavior];
  v10 = [(PKInkBehavior *)v9 edgeWidthForPoint:&v12 context:?];

  return v10;
}

+ (id)behaviorForInkType:(id)a3
{
  v3 = a3;
  v4 = +[PKInkManager defaultInkManager];
  v5 = [v4 supportedInkIdentifierFromIdentifier:v3];

  v6 = +[PKInkManager defaultInkManager];
  v7 = [v6 inkBehaviorForIdentifier:v5 version:+[PKInk currentInkVersionForInkIdentifier:](PKInk variant:{"currentInkVersionForInkIdentifier:", v5), @"default"}];

  return v7;
}

+ (void)_computeWeightInfoMapFor:(id)a3 in:(void *)a4
{
  v5 = a3;
  v6 = [PKInkingTool behaviorForInkType:v5];
  if (([v6 useUnclampedWeight] & 1) == 0)
  {
    operator new();
  }

  [v6 useUnclampedWeight];
  [v6 defaultWidth];
  v8 = v7;
  v18 = [v6 uiWidths];
  v19 = [v18 firstObject];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v6 uiWidths];
  v23 = [v22 lastObject];
  [v23 doubleValue];
  v25 = v24;

  std::string::basic_string[abi:ne200100]<0>(__p, [v5 UTF8String]);
  v9 = std::__string_hash<char>::operator()[abi:ne200100](a4, __p);
  v10 = v9;
  v11 = *(a4 + 8);
  if (!*&v11)
  {
    goto LABEL_21;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v14 = v9;
    if (v9 >= *&v11)
    {
      v14 = v9 % *&v11;
    }
  }

  else
  {
    v14 = (*&v11 - 1) & v9;
  }

  v15 = *(*a4 + 8 * v14);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v10)
    {
      break;
    }

    if (v13 > 1)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v14)
    {
      goto LABEL_21;
    }

LABEL_20:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](v16 + 2, __p))
  {
    goto LABEL_20;
  }

  v16[5] = 0;
  v16[6] = v8;
  v16[7] = v21;
  v16[8] = v25;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PKInkingTool *)self inkType];
  v7 = [(PKInkingTool *)self color];
  [(PKInkingTool *)self width];
  v9 = [v3 stringWithFormat:@"<%@: %p %@ color=%@ width=%f>", v5, self, v6, v7, v8];

  return v9;
}

@end