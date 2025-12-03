@interface PKInkingTool
+ ($A0769C887683DBDFD436F0B4017CF2C7)_contextForStroke:(SEL)stroke weight:(id)weight type:(double)type;
+ (CGFloat)defaultWidthForInkType:(PKInkType)inkType;
+ (CGFloat)maximumWidthForInkType:(PKInkType)inkType;
+ (CGFloat)minimumWidthForInkType:(PKInkType)inkType;
+ (UIColor)convertColor:(UIColor *)color fromUserInterfaceStyle:(UIUserInterfaceStyle)fromUserInterfaceStyle to:(UIUserInterfaceStyle)toUserInterfaceStyle;
+ (double)_calculateEdgeWidthForWeight:(double)weight type:(id)type;
+ (double)_calculateWidthForWeight:(double)weight type:(id)type;
+ (double)_weightForWidth:(double)width type:(id)type;
+ (double)_widthForWeight:(double)weight type:(id)type;
+ (id)behaviorForInkType:(id)type;
+ (id)defaultColorForIdentifier:(id)identifier;
+ (id)defaultLocalizedNameForIdentifier:(id)identifier;
+ (void)_computeWeightInfoMapFor:(id)for in:(void *)in;
+ (void)_weightInfoMap;
- (CGFloat)width;
- (NSString)localizedName;
- (PKContentVersion)requiredContentVersion;
- (PKInkType)inkType;
- (PKInkingTool)initWithInk:(PKInk *)ink width:(CGFloat)width;
- (PKInkingTool)initWithInkType:(PKInkType)type color:(UIColor *)color;
- (PKInkingTool)initWithInkType:(PKInkType)type color:(UIColor *)color width:(CGFloat)width;
- (PKInkingTool)initWithInkType:(id)type color:(id)color width:(double)width azimuth:(double)azimuth;
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
  block[4] = self;
  if (_MergedGlobals_130 != -1)
  {
    dispatch_once(&_MergedGlobals_130, block);
  }

  return qword_1ED6A5078;
}

- (PKInkType)inkType
{
  v2 = [(PKTool *)self ink];
  identifier = [v2 identifier];

  return identifier;
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

- (PKInkingTool)initWithInkType:(id)type color:(id)color width:(double)width azimuth:(double)azimuth
{
  typeCopy = type;
  colorCopy = color;
  [PKInkingTool _weightForWidth:typeCopy type:width];
  v11 = [PKInk inkWithType:"inkWithType:color:weight:azimuth:" color:typeCopy weight:colorCopy azimuth:?];
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
  inkType = [(PKInk *)v6 inkType];
  [PKInkingTool _weightForWidth:inkType type:width];
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
  behavior = [v3 behavior];
  useUnclampedWeight = [behavior useUnclampedWeight];

  v6 = [(PKTool *)self ink];
  [v6 weight];
  v8 = v7;
  if (!useUnclampedWeight)
  {
    v9 = [(PKTool *)self ink];
    identifier = [v9 identifier];
    [PKInkingTool _widthForWeight:identifier type:v8];
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
  requiredContentVersion = [v2 requiredContentVersion];

  return requiredContentVersion;
}

- (NSString)localizedName
{
  _configuration = [(PKTool *)self _configuration];
  localizedName = [_configuration localizedName];

  return localizedName;
}

+ (id)defaultLocalizedNameForIdentifier:(id)identifier
{
  v3 = [PKToolConfiguration defaultLocalizedNameForInkingToolWithIdentifier:identifier];

  return v3;
}

+ (id)defaultColorForIdentifier:(id)identifier
{
  v3 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:identifier];

  return v3;
}

+ (double)_widthForWeight:(double)weight type:(id)type
{
  typeCopy = type;
  std::string::basic_string[abi:ne200100]<0>(__p, [typeCopy UTF8String]);
  v6 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      weight = PKFunctionPiecewiseSimpleLinear::_solveLinearPiecewise(*v7, *(v7 + 8), *(v7 + 24), *(v7 + 32), weight);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return weight;
}

+ (double)_weightForWidth:(double)width type:(id)type
{
  typeCopy = type;
  std::string::basic_string[abi:ne200100]<0>(__p, [typeCopy UTF8String]);
  v6 = std::__hash_table<std::__hash_value_type<std::string,WeightInfo>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,WeightInfo>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,WeightInfo>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,WeightInfo>>>::find<std::string>(+[PKInkingTool _weightInfoMap], __p);
  +[PKInkingTool _weightInfoMap];
  if (v6)
  {
    v7 = v6[5];
    if (v7)
    {
      width = PKFunctionPiecewiseSimpleLinear::_solveLinearPiecewise(*(v7 + 24), *(v7 + 32), *v7, *(v7 + 8), width);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return width;
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
  if ([self _isUsingSystemColorPicker])
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

+ ($A0769C887683DBDFD436F0B4017CF2C7)_contextForStroke:(SEL)stroke weight:(id)weight type:(double)type
{
  weightCopy = weight;
  v9 = a6;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v11 = [PKInk inkWithType:v9 color:blackColor weight:type azimuth:0.0];
  [weightCopy setInk:v11];

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
  retstr->var9 = weightCopy;
  retstr->var10 = 23;

  return result;
}

+ (double)_calculateWidthForWeight:(double)weight type:(id)type
{
  typeCopy = type;
  v7 = objc_alloc_init(_PKStrokeConcrete);
  v17 = 0u;
  [self _contextForStroke:v7 weight:typeCopy type:{weight, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v8 = [v17 ink];
  behavior = [v8 behavior];
  [(PKInkBehavior *)behavior radiusForPoint:&v16 context:?];
  v11 = v10;

  v12 = [v17 ink];
  behavior2 = [v12 behavior];
  v14 = [(PKInkBehavior *)behavior2 edgeWidthForPoint:&v16 context:?];

  return v14 + v11 * 2.0;
}

+ (double)_calculateEdgeWidthForWeight:(double)weight type:(id)type
{
  typeCopy = type;
  v7 = objc_alloc_init(_PKStrokeConcrete);
  v13 = 0u;
  [self _contextForStroke:v7 weight:typeCopy type:{weight, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  v8 = [v13 ink];
  behavior = [v8 behavior];
  v10 = [(PKInkBehavior *)behavior edgeWidthForPoint:&v12 context:?];

  return v10;
}

+ (id)behaviorForInkType:(id)type
{
  typeCopy = type;
  v4 = +[PKInkManager defaultInkManager];
  v5 = [v4 supportedInkIdentifierFromIdentifier:typeCopy];

  v6 = +[PKInkManager defaultInkManager];
  v7 = [v6 inkBehaviorForIdentifier:v5 version:+[PKInk currentInkVersionForInkIdentifier:](PKInk variant:{"currentInkVersionForInkIdentifier:", v5), @"default"}];

  return v7;
}

+ (void)_computeWeightInfoMapFor:(id)for in:(void *)in
{
  forCopy = for;
  v6 = [PKInkingTool behaviorForInkType:forCopy];
  if (([v6 useUnclampedWeight] & 1) == 0)
  {
    operator new();
  }

  [v6 useUnclampedWeight];
  [v6 defaultWidth];
  v8 = v7;
  uiWidths = [v6 uiWidths];
  firstObject = [uiWidths firstObject];
  [firstObject doubleValue];
  v21 = v20;

  uiWidths2 = [v6 uiWidths];
  lastObject = [uiWidths2 lastObject];
  [lastObject doubleValue];
  v25 = v24;

  std::string::basic_string[abi:ne200100]<0>(__p, [forCopy UTF8String]);
  v9 = std::__string_hash<char>::operator()[abi:ne200100](in, __p);
  v10 = v9;
  v11 = *(in + 8);
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

  v15 = *(*in + 8 * v14);
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
  inkType = [(PKInkingTool *)self inkType];
  color = [(PKInkingTool *)self color];
  [(PKInkingTool *)self width];
  v9 = [v3 stringWithFormat:@"<%@: %p %@ color=%@ width=%f>", v5, self, inkType, color, v8];

  return v9;
}

@end