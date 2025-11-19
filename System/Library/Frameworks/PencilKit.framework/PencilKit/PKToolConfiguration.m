@interface PKToolConfiguration
+ (BOOL)_supportsAzimuthControlForToolWithIdentifier:(id)a3;
+ (PKToolConfiguration)defaultConfigurationForToolWithIdentifier:(int64_t)a3 inkVersion:;
+ (id)_assetNamesByAzimuthForToolWithIdentifier:(id)a3;
+ (id)_assetNamesByWeightForToolWithIdentifier:(id)a3;
+ (id)_deepCopyStrokeWeightDictionary:(id)a3;
+ (id)_orderedAzimuthValuesForToolWithIdentifier:(id)a3;
+ (id)_weightsForToolWithIdentifier:(id)a3;
+ (id)defaultColorForInkingToolWithIdentifier:(uint64_t)a1;
+ (id)defaultLocalizedNameForInkingToolWithIdentifier:(uint64_t)a1;
+ (id)p_assetImageForToolIdentifier:(id)a3 assetNumber:(unint64_t)a4 bundle:(id)a5;
+ (id)p_azimuthAssetNameForToolIdentifier:(id)a3 assetNumber:(unint64_t)a4;
+ (id)p_bitmapEraserImageWithWeight:(double)a3 imageSize:(CGSize)a4;
+ (id)p_objectEraserImageWithWeight:(double)a3 imageSize:(CGSize)a4;
+ (id)p_widthAssetNameForToolIdentifier:(id)a3 assetNumber:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsStrokeWeight;
- (CGSize)strokeWeightButtonSize;
- (PKToolConfiguration)init;
- (PKToolConfiguration)initWithLocalizedName:(id)a3 baseImage:(id)a4 shadowPath:(id)a5;
- (double)bandThicknessForStrokeWeight:(void *)a1;
- (id)copyWithZone:(_NSZone *)a3;
- (id)p_strokeWeightRange;
- (unint64_t)hash;
- (void)clearTipMaskImageAndShadowPathIncludingTip;
- (void)setBaseImage:(id)a3;
- (void)setLocalizedName:(id)a3;
- (void)setMinimumBandThickness:(double)a3 andMaximumBandThickness:(double)a4;
- (void)setShadowPath:(id)a3;
- (void)setStrokeWeightsToButtonImages:(id)a3;
- (void)setSupportsColor:(BOOL)a3 andOpacity:(BOOL)a4 defaultColor:(id)a5;
- (void)setTipMaskImage:(id)a3 withShadowPathIncludingTip:(id)a4;
@end

@implementation PKToolConfiguration

- (CGSize)strokeWeightButtonSize
{
  if ([(PKToolConfiguration *)self isEraserTool])
  {
    v2 = 44.0;
    v3 = 44.0;
  }

  else
  {

    +[PKLayoutConstants strokeWeightButtonSize];
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (PKToolConfiguration)initWithLocalizedName:(id)a3 baseImage:(id)a4 shadowPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PKToolConfiguration;
  v11 = [(PKToolConfiguration *)&v24 init];
  if (v11)
  {
    if (v8)
    {
      if (v9)
      {
        if (v10)
        {
          v12 = [v8 copy];
          v13 = *(v11 + 3);
          *(v11 + 3) = v12;

          v14 = [v9 copy];
          v15 = *(v11 + 4);
          *(v11 + 4) = v14;

          v16 = [v10 copy];
          v17 = *(v11 + 5);
          *(v11 + 5) = v16;

          v11[18] = 0;
          v18 = *(v11 + 6);
          *(v11 + 6) = 0;

          *(v11 + 19) = 0;
          *(v11 + 7) = 0;
          *(v11 + 10) = 0;
          *(v11 + 15) = 0;
          *(v11 + 16) = 0;
          *(v11 + 8) = 257;
          goto LABEL_6;
        }

        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D940];
        v22 = @"shadowPath must not be nil.";
      }

      else
      {
        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D940];
        v22 = @"baseImage must not be nil.";
      }
    }

    else
    {
      v20 = MEMORY[0x1E695DF30];
      v21 = *MEMORY[0x1E695D940];
      v22 = @"localizedName must not be nil.";
    }

    v23 = [v20 exceptionWithName:v21 reason:v22 userInfo:0];
    objc_exception_throw(v23);
  }

LABEL_6:

  return v11;
}

- (PKToolConfiguration)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
  v4 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v5 = [(PKToolConfiguration *)self initWithLocalizedName:&stru_1F476BD20 baseImage:v3 shadowPath:v4];

  return v5;
}

+ (PKToolConfiguration)defaultConfigurationForToolWithIdentifier:(int64_t)a3 inkVersion:
{
  v176 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v164 = objc_opt_self();
  if (!v4)
  {
    v136 = MEMORY[0x1E695DF30];
    v137 = *MEMORY[0x1E695D940];
    v138 = @"Can not get a default configuration for a nil tool identifier.";
    goto LABEL_256;
  }

  if ([v4 isEqualToString:@"com.apple.ink.custom"])
  {
    v136 = MEMORY[0x1E695DF30];
    v137 = *MEMORY[0x1E695D940];
    v138 = @"Can not get a default configuration for custom ink.";
LABEL_256:
    v139 = [v136 exceptionWithName:v137 reason:v138 userInfo:0];
    objc_exception_throw(v139);
  }

  v5 = v4;
  if ([v5 isEqualToString:@"com.apple.ink.pen"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.ink.pencil") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.ink.marker") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.ink.monoline") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.ink.fountainpen") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.ink.watercolor") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.ink.reedcalligraphy"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v5 isEqualToString:@"com.apple.ink.crayon"];
  }

  v7 = v5;
  if ([v7 isEqualToString:?])
  {
    v157 = 1;
  }

  else
  {
    v157 = [v7 isEqualToString:@"com.apple.ink.objectEraser"];
  }

  v159 = [v7 isEqualToString:@"com.apple.ink.objectEraser"];
  v8 = [v7 isEqualToString:@"com.apple.ink.lasso"];
  v163 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = v7;
  v155 = v8;
  if ([v9 isEqualToString:@"com.apple.ink.pen"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Pen";
LABEL_43:
    v14 = [v11 localizedStringForKey:v13 value:v13 table:@"Localizable"];

    goto LABEL_44;
  }

  if ([v9 isEqualToString:@"com.apple.ink.pencil"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Pencil";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.marker"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Marker";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.monoline"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Monoline";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Fountain Pen";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.watercolor"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Watercolor";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.reedcalligraphy"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Reed";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.crayon"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Crayon";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.lasso"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Lasso";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.eraser"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Pixel Eraser";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.objectEraser"])
  {
    v10 = a3;
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Object Eraser";
    goto LABEL_43;
  }

  v10 = a3;
  if ([v9 isEqualToString:@"com.apple.tool.ruler"])
  {
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Ruler";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.handwriting"])
  {
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Scribble";
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"com.apple.ink.generationtool"])
  {
    v11 = _PencilKitBundle();
    v12 = v11;
    v13 = @"Image Wand";
    goto LABEL_43;
  }

  v14 = 0;
LABEL_44:

  v15 = v9;
  if ([v15 isEqualToString:@"com.apple.ink.pen"])
  {
    v16 = @"palette_tool_pen_base";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.pencil"])
  {
    v16 = @"palette_tool_pencil_base";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.marker"])
  {
    v16 = @"palette_tool_marker_base";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.lasso"])
  {
    v16 = @"palette_tool_selection";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.eraser"])
  {
    v16 = @"palette_tool_bitmap_eraser";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.objectEraser"])
  {
    v16 = @"palette_tool_object_eraser";
  }

  else if ([v15 isEqualToString:@"com.apple.tool.ruler"])
  {
    v16 = @"palette_tool_ruler";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.handwriting"])
  {
    v16 = @"palette_tool_handwriting";
  }

  else if ([v15 isEqualToString:@"com.apple.ink.generationtool"])
  {
    v16 = @"palette_tool_generation";
  }

  else
  {
    v16 = [v15 stringByAppendingString:@"/Base"];
  }

  v152 = [MEMORY[0x1E69DCAB8] imageNamed:v16 inBundle:v163 compatibleWithTraitCollection:0];
  if (!v152)
  {
    v140 = MEMORY[0x1E695DF30];
    v141 = *MEMORY[0x1E695D930];
    v142 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to find image with name '%@' in bundle '%@'.", v16, v163];
    v143 = [v140 exceptionWithName:v141 reason:v142 userInfo:0];
    v144 = v143;

    objc_exception_throw(v143);
  }

  v149 = v16;
  if (v6)
  {
    v150 = [PKToolConfiguration defaultColorForInkingToolWithIdentifier:v15];
  }

  else
  {
    v150 = 0;
  }

  v17 = v15;
  if ([v17 isEqualToString:@"com.apple.ink.pen"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.0;
    [v18 moveToPoint:{12.0, 106.0}];
    v20 = 41.5;
    [v18 addLineToPoint:{12.0, 41.5}];
    [v18 addLineToPoint:{19.5, 11.5}];
    v21 = 26.5;
    v22 = 11.5;
LABEL_71:
    v23 = v18;
LABEL_72:
    [v23 addLineToPoint:{v21, v22}];
    [v18 addLineToPoint:{34.0, v20}];
    [v18 addLineToPoint:{34.0, 106.0}];
    v24 = 12.0;
LABEL_73:
    [v18 addLineToPoint:{v24, v19}];
    [v18 closePath];
LABEL_74:
    v25 = v18;

    goto LABEL_75;
  }

  if ([v17 isEqualToString:@"com.apple.ink.pencil"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.0;
    [v18 moveToPoint:{12.0, 106.0}];
    v20 = 44.5;
    [v18 addLineToPoint:{12.0, 44.5}];
    [v18 addLineToPoint:{19.0, 15.5}];
    v21 = 27.0;
    v22 = 15.5;
    goto LABEL_71;
  }

  if (([v17 isEqualToString:@"com.apple.ink.marker"] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"com.apple.ink.reedcalligraphy"))
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.0;
    [v18 moveToPoint:{12.0, 106.0}];
    v20 = 39.5;
    [v18 addLineToPoint:{12.0, 39.5}];
    [v18 addLineToPoint:{13.0, 35.5}];
    [v18 addLineToPoint:{16.0, 28.5}];
    [v18 addLineToPoint:{16.0, 15.47}];
    [v18 addLineToPoint:{17.0, 14.5}];
    [v18 addLineToPoint:{28.5, 14.5}];
    [v18 addLineToPoint:{30.0, 15.5}];
    [v18 addLineToPoint:{30.0, 28.5}];
    v21 = 33.0;
    v23 = v18;
    v22 = 35.5;
    goto LABEL_72;
  }

  if ([v17 isEqualToString:@"com.apple.ink.monoline"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    [v18 moveToPoint:{12.2618099, 106.0}];
    [v18 addLineToPoint:{12.2618099, 43.2351562}];
    [v18 addLineToPoint:{14.2503486, 43.2351562}];
    [v18 addLineToPoint:{14.2503486, 23.597526}];
    [v18 addLineToPoint:{16.5339738, 23.597526}];
    [v18 addLineToPoint:{16.5339738, 16.4634978}];
    [v18 addLineToPoint:{21.7507188, 16.4634978}];
    [v18 addLineToPoint:{21.7507188, 8.32630841}];
    [v18 addLineToPoint:{21.7507188, 3.32473958}];
    [v18 addLineToPoint:{24.4343841, 3.32473958}];
    [v18 addLineToPoint:{24.4343841, 8.32630841}];
    [v18 addLineToPoint:{24.4343841, 16.4634978}];
    [v18 addLineToPoint:{29.8894292, 16.4634978}];
    [v18 addLineToPoint:{29.8894292, 23.597526}];
    [v18 addLineToPoint:{32.1598719, 23.597526}];
    [v18 addLineToPoint:{32.1598719, 43.2351562}];
    [v18 addLineToPoint:{34.0916241, 43.2351562}];
    [v18 addLineToPoint:{34.0916241, 106.0}];
    goto LABEL_74;
  }

  if ([v17 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    [v18 moveToPoint:12.2601668];
    [v18 addLineToPoint:{13.2601668, 51.9198442}];
    [v18 addLineToPoint:{15.1484375, 48.0507036}];
    [v18 addCurveToPoint:15.0358887 controlPoint1:46.1215105 controlPoint2:{15.0358887, 45.5854492, 14.7400716, 46.943262}];
    [v18 addCurveToPoint:14.9029147 controlPoint1:44.3973689 controlPoint2:{14.6369669, 43.629392, 15.0358887, 45.0493879}];
    [v18 addCurveToPoint:15.0732805 controlPoint1:43.3439394 controlPoint2:{15.9459078, 42.7730341, 14.6369669, 43.629392}];
    [v18 addCurveToPoint:12.2601668 controlPoint1:30.4790039 controlPoint2:{12.2601668, 26.6476707, 15.9459078, 37.9335938}];
    [v18 addCurveToPoint:19.6647949 controlPoint1:10.418457 controlPoint2:{23.0923308, 1.65112305, 12.2601668, 22.8163376}];
    [v18 addCurveToPoint:33.9244948 controlPoint1:22.1508102 controlPoint2:{33.9244948, 26.6476707, 26.543457, 10.4182129}];
    [v18 addCurveToPoint:30.4541991 controlPoint1:37.3776855 controlPoint2:{30.4541991, 42.7730341, 33.9244948, 31.1445313}];
    [v18 addCurveToPoint:31.7211492 controlPoint1:43.3271476 controlPoint2:{32.0599319, 43.629392, 31.1859049, 43.041695}];
    [v18 addCurveToPoint:31.3964844 controlPoint1:45.0633311 controlPoint2:{31.3964844, 45.5854492, 31.6176336, 44.411312}];
    [v18 addCurveToPoint:31.6176336 controlPoint1:46.9293188 controlPoint2:{32.0599319, 48.0507036, 31.3964844, 46.1075674}];
    [v18 addLineToPoint:{33.9244948, 51.9198442}];
    [v18 addLineToPoint:{33.9244948, 106.0}];
    v113 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{18.0, 21.25, 10.0, 10.0}];
    v114 = [v113 bezierPathByReversingPath];
    [v18 appendPath:v114];

    goto LABEL_74;
  }

  if ([v17 isEqualToString:@"com.apple.ink.watercolor"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    [v18 moveToPoint:12.2158203];
    [v18 addCurveToPoint:12.2158203 controlPoint1:49.1869718 controlPoint2:12.2158203];
    [v18 addCurveToPoint:16.4457308 controlPoint1:35.171875 controlPoint2:{12.2158203, 45.659218, 13.7754602, 41.0078087}];
    [v18 addLineToPoint:{16.4457308, 31.4229939}];
    [v18 addCurveToPoint:17.5809329 controlPoint1:31.4229939 controlPoint2:{16.8986844, 31.4229939, 17.2770851, 31.4229939}];
    [v18 addCurveToPoint:23.0 controlPoint1:2.26262478 controlPoint2:{17.5809329, 19.2776602, 20.4644097, 7.17426215}];
    [v18 addCurveToPoint:28.6675323 controlPoint1:31.4229939 controlPoint2:{25.4383789, 7.22929688, 28.6675323, 19.2776602}];
    [v18 addCurveToPoint:29.8027344 controlPoint1:31.4229939 controlPoint2:{28.9713802, 31.4229939, 29.3497808, 31.4229939}];
    [v18 addLineToPoint:{29.8027344, 35.171875}];
    [v18 addCurveToPoint:34.0 controlPoint1:49.1869718 controlPoint2:{32.473005, 41.0078087, 34.0, 45.659218}];
    [v18 addCurveToPoint:34.0 controlPoint1:106.0 controlPoint2:{34.0, 52.7147255, 34.0, 71.6524016}];
    goto LABEL_74;
  }

  if ([v17 isEqualToString:@"com.apple.ink.crayon"])
  {
    v116 = MEMORY[0x1E69DC728];
    v117 = 24.25;
    v118 = 105.25;
    v119 = 12.0;
    v120 = 22.0;
LABEL_208:
    v18 = [v116 bezierPathWithRect:{v119, v117, v120, v118}];
    goto LABEL_74;
  }

  if ([v17 isEqualToString:@"com.apple.ink.lasso"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.0;
    [v18 moveToPoint:{12.0, 106.0}];
    v20 = 41.38;
    [v18 addLineToPoint:{12.0, 41.38}];
    [v18 addLineToPoint:{22.48, 2.0}];
    v21 = 23.52;
    v22 = 2.0;
    goto LABEL_71;
  }

  if (([v17 isEqualToString:@"com.apple.ink.eraser"] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"com.apple.ink.objectEraser"))
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.0;
    [v18 moveToPoint:{12.5, 106.0}];
    [v18 addLineToPoint:{12.5, 40.5}];
    [v18 addLineToPoint:{12.0, 40.5}];
    [v18 addLineToPoint:{12.0, 22.0}];
    [v18 addLineToPoint:{12.5, 22.0}];
    [v18 addLineToPoint:{12.5, 6.52}];
    [v18 addLineToPoint:{13.5, 4.51}];
    [v18 addLineToPoint:{17.5, 2.5}];
    [v18 addLineToPoint:{28.5, 2.5}];
    [v18 addLineToPoint:{32.5, 4.51}];
    [v18 addLineToPoint:{33.5, 6.52}];
    [v18 addLineToPoint:{33.5, 22.0}];
    [v18 addLineToPoint:{34.0, 22.0}];
    [v18 addLineToPoint:{34.0, 40.5}];
    [v18 addLineToPoint:{33.5, 40.5}];
    [v18 addLineToPoint:{33.5, 48.72}];
    v123 = v18;
LABEL_224:
    [v123 addLineToPoint:{33.5, v19}];
    v24 = 12.5;
    goto LABEL_73;
  }

  if ([v17 isEqualToString:@"com.apple.tool.ruler"])
  {
    v116 = MEMORY[0x1E69DC728];
    v120 = 36.0;
    v118 = 103.5;
    v119 = 5.0;
    v117 = 2.5;
    goto LABEL_208;
  }

  if ([v17 isEqualToString:@"com.apple.ink.handwriting"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.5;
    [v18 moveToPoint:{12.5, 106.5}];
    [v18 addLineToPoint:{12.5, 65.5}];
    [v18 addLineToPoint:{13.5, 53.5}];
    [v18 addLineToPoint:{15.5, 36.83}];
    [v18 addLineToPoint:{19.5, 14.5}];
    [v18 addLineToPoint:{20.21, 11.73}];
    [v18 addLineToPoint:{20.5, 10.58}];
    [v18 addLineToPoint:{21.5, 3.51}];
    [v18 addLineToPoint:{22.5, 2.5}];
    [v18 addLineToPoint:{23.5, 2.5}];
    [v18 addLineToPoint:{24.5, 3.51}];
    [v18 addLineToPoint:{25.5, 10.58}];
    [v18 addLineToPoint:{26.5, 14.5}];
    [v18 addLineToPoint:{30.5, 36.83}];
    [v18 addLineToPoint:{32.5, 53.5}];
    [v18 addLineToPoint:{33.5, 65.5}];
    v131 = v18;
    v132 = 106.5;
LABEL_243:
    [v131 addLineToPoint:{33.5, v132}];
    v123 = v18;
    goto LABEL_224;
  }

  if ([v17 isEqualToString:@"com.apple.ink.generationtool"])
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v19 = 106.0;
    [v18 moveToPoint:{12.5, 106.0}];
    [v18 addLineToPoint:{12.5, 6.52}];
    [v18 addLineToPoint:{13.5, 4.51}];
    [v18 addLineToPoint:{17.5, 2.5}];
    [v18 addLineToPoint:{28.5, 2.5}];
    [v18 addLineToPoint:{32.5, 4.51}];
    v131 = v18;
    v132 = 6.52;
    goto LABEL_243;
  }

  v25 = 0;
LABEL_75:

  v26 = [[PKToolConfiguration alloc] initWithLocalizedName:v14 baseImage:v152 shadowPath:v25];
  v26->_isEraserTool = v157;
  v26->_supportsLassoToolEditingView = v155;
  v26->_inkVersion = v10;
  if ([v17 isEqualToString:@"com.apple.ink.eraser"])
  {
    v27 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    weightButtonTintColorOverride = v26->_weightButtonTintColorOverride;
    v26->_weightButtonTintColorOverride = v27;
  }

  v147 = v25;
  [(PKToolConfiguration *)v26 setSupportsColor:v6 andOpacity:v6 defaultColor:v150];
  v29 = 0x1E69DC000uLL;
  if (v6)
  {
    [(PKToolConfiguration *)v26 setOpacityLabelVerticalOffset:70.0];
  }

  v156 = v26;
  v30 = v17;
  if ([v30 isEqualToString:@"com.apple.ink.pen"])
  {
    v31 = @"palette_tool_pen_band";
LABEL_90:

LABEL_91:
    v32 = [MEMORY[0x1E69DCAB8] imageNamed:v31 inBundle:v163 compatibleWithTraitCollection:0];
    [(PKToolConfiguration *)v156 setBandMaskImage:v32];

    goto LABEL_92;
  }

  if ([v30 isEqualToString:@"com.apple.ink.pencil"])
  {
    v31 = @"palette_tool_pencil_band";
    goto LABEL_90;
  }

  if ([v30 isEqualToString:@"com.apple.ink.marker"])
  {
    goto LABEL_87;
  }

  if ([v30 isEqualToString:@"com.apple.ink.watercolor"])
  {
    v31 = @"com.apple.ink.monoline/BandMask";
    goto LABEL_90;
  }

  if ([v30 isEqualToString:@"com.apple.ink.reedcalligraphy"])
  {
LABEL_87:
    v31 = @"palette_tool_marker_band";
    goto LABEL_90;
  }

  v31 = [v30 stringByAppendingString:@"/BandMask"];

  if (v31)
  {
    goto LABEL_91;
  }

LABEL_92:
  v33 = v30;
  if ([v33 isEqualToString:@"com.apple.ink.pen"])
  {
    v34 = @"palette_tool_pen_band_contour";
LABEL_100:

LABEL_101:
    v35 = [MEMORY[0x1E69DCAB8] imageNamed:v34 inBundle:v163 compatibleWithTraitCollection:0];
    [(PKToolConfiguration *)v156 setBandContourImage:v35];

    goto LABEL_102;
  }

  if ([v33 isEqualToString:@"com.apple.ink.pencil"])
  {
    v34 = @"palette_tool_pencil_band_contour";
    goto LABEL_100;
  }

  if ([v33 isEqualToString:@"com.apple.ink.marker"])
  {
    goto LABEL_97;
  }

  if ([v33 isEqualToString:@"com.apple.ink.watercolor"])
  {
    v34 = @"com.apple.ink.monoline/BandContour";
    goto LABEL_100;
  }

  if ([v33 isEqualToString:@"com.apple.ink.reedcalligraphy"])
  {
LABEL_97:
    v34 = @"palette_tool_marker_band_contour";
    goto LABEL_100;
  }

  v34 = [v33 stringByAppendingString:@"/BandContour"];

  if (v34)
  {
    goto LABEL_101;
  }

LABEL_102:
  v36 = v156;
  if (!v6)
  {
    goto LABEL_111;
  }

  v37 = v33;
  if ([v37 isEqualToString:@"com.apple.ink.pen"] & 1) != 0 || (objc_msgSend(v37, "isEqualToString:", @"com.apple.ink.pencil") & 1) != 0 || (objc_msgSend(v37, "isEqualToString:", @"com.apple.ink.marker") & 1) != 0 || (objc_msgSend(v37, "isEqualToString:", @"com.apple.ink.crayon") & 1) != 0 || (objc_msgSend(v37, "isEqualToString:", @"com.apple.ink.reedcalligraphy"))
  {
    *&v38 = 50.0;
  }

  else
  {
    if (([v37 isEqualToString:@"com.apple.ink.monoline"] & 1) == 0 && (objc_msgSend(v37, "isEqualToString:", @"com.apple.ink.fountainpen") & 1) == 0)
    {
      if ([v37 isEqualToString:@"com.apple.ink.watercolor"])
      {
        v39 = 60.0;
      }

      else
      {
        v39 = 0.0;
      }

      goto LABEL_110;
    }

    *&v38 = 60.0;
  }

  v39 = *&v38;
LABEL_110:

  [(PKToolConfiguration *)v156 setBandVerticalOffset:v39];
  v29 = 0x1E69DC000uLL;
LABEL_111:
  v40 = v33;
  if ([v40 isEqualToString:@"com.apple.ink.pen"])
  {
    v41 = @"palette_tool_pen_tip";
LABEL_117:
    v151 = v41;

    goto LABEL_118;
  }

  if ([v40 isEqualToString:@"com.apple.ink.pencil"])
  {
    v41 = @"palette_tool_pencil_tip";
    goto LABEL_117;
  }

  if ([v40 isEqualToString:@"com.apple.ink.marker"])
  {
    v41 = @"palette_tool_marker_tip";
    goto LABEL_117;
  }

  v71 = [v40 stringByAppendingString:@"/Tip"];

  v151 = v71;
  if (v71)
  {
LABEL_118:
    v42 = [MEMORY[0x1E69DCAB8] imageNamed:v151 inBundle:v163 compatibleWithTraitCollection:0];
    if (!v42)
    {
LABEL_126:

      goto LABEL_127;
    }

    v43 = v40;
    v145 = v43;
    if ([v43 isEqualToString:@"com.apple.ink.pen"])
    {
      v44 = [MEMORY[0x1E69DC728] bezierPath];
      [v44 moveToPoint:{12.0, 106.0}];
      v45 = 41.5;
      [v44 addLineToPoint:{12.0, 41.5}];
      [v44 addLineToPoint:{19.5, 11.5}];
      [v44 addLineToPoint:{23.0, 0.0}];
      v46 = 26.5;
      v47 = 11.5;
LABEL_123:
      [v44 addLineToPoint:{v46, v47}];
      [v44 addLineToPoint:{34.0, v45}];
      [v44 addLineToPoint:{34.0, 106.0}];
      [v44 addLineToPoint:{12.0, 106.0}];
      [v44 closePath];
      v48 = v44;
      v49 = v48;
LABEL_124:

LABEL_125:
      [(PKToolConfiguration *)v156 setTipMaskImage:v42 withShadowPathIncludingTip:v49];

      v36 = v156;
      goto LABEL_126;
    }

    if ([v43 isEqualToString:@"com.apple.ink.pencil"])
    {
      v44 = [MEMORY[0x1E69DC728] bezierPath];
      [v44 moveToPoint:{12.0, 106.0}];
      v45 = 44.5;
      [v44 addLineToPoint:{12.0, 44.5}];
      [v44 addLineToPoint:{19.0, 15.5}];
      [v44 addLineToPoint:{23.0, 0.0}];
      v46 = 27.0;
      v47 = 15.5;
      goto LABEL_123;
    }

    if ([v43 isEqualToString:@"com.apple.ink.marker"])
    {
      v69 = [MEMORY[0x1E69DC728] bezierPath];
      [v69 moveToPoint:{12.0, 106.0}];
      [v69 addLineToPoint:{12.0, 39.5}];
      [v69 addLineToPoint:{13.0, 35.5}];
      [v69 addLineToPoint:{16.0, 28.5}];
      [v69 addLineToPoint:{16.0, 15.47}];
      [v69 addLineToPoint:{17.0, 14.5}];
      [v69 addLineToPoint:{17.0, 8.0}];
      [v69 addLineToPoint:{28.5, 2.0}];
      [v69 addLineToPoint:{28.5, 14.5}];
      [v69 addLineToPoint:{30.0, 15.5}];
      [v69 addLineToPoint:{30.0, 28.5}];
      [v69 addLineToPoint:{33.0, 35.5}];
      [v69 addLineToPoint:{34.0, 39.5}];
      [v69 addLineToPoint:{34.0, 106.0}];
      [v69 addLineToPoint:{12.0, 106.0}];
      [v69 closePath];
      v70 = v69;
LABEL_156:
      v48 = v70;
      v49 = v70;
      v29 = 0x1E69DC000;
      goto LABEL_124;
    }

    if (([v43 isEqualToString:@"com.apple.ink.monoline"] & 1) == 0 && (objc_msgSend(v43, "isEqualToString:", @"com.apple.ink.fountainpen") & 1) == 0 && (objc_msgSend(v43, "isEqualToString:", @"com.apple.ink.watercolor") & 1) == 0 && !objc_msgSend(v43, "isEqualToString:", @"com.apple.ink.reedcalligraphy"))
    {
      if (![v43 isEqualToString:@"com.apple.ink.crayon"])
      {
        v49 = 0;
        v29 = 0x1E69DC000;
        goto LABEL_125;
      }

      v121 = [MEMORY[0x1E69DC728] bezierPath];
      [v121 moveToPoint:{12.0, 24.25}];
      [v121 addLineToPoint:{14.5, 24.25}];
      [v121 addLineToPoint:{21.0, 0.0}];
      [v121 addLineToPoint:{25.0, 0.0}];
      [v121 addLineToPoint:{31.5, 24.25}];
      [v121 addLineToPoint:{34.0, 24.25}];
      [v121 addLineToPoint:{34.0, 129.5}];
      [v121 addLineToPoint:{12.0, 129.5}];
      [v121 closePath];
      v70 = v121;
      goto LABEL_156;
    }

    v48 = v43;
    if ([v48 isEqualToString:@"com.apple.ink.pen"])
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      [v108 moveToPoint:{12.0, 106.0}];
      v109 = 41.5;
      [v108 addLineToPoint:{12.0, 41.5}];
      [v108 addLineToPoint:{19.5, 11.5}];
      v110 = 26.5;
      v111 = 11.5;
LABEL_186:
      v112 = v108;
LABEL_187:
      [v112 addLineToPoint:{v110, v111}];
      [v108 addLineToPoint:{34.0, v109}];
      [v108 addLineToPoint:{34.0, 106.0}];
      [v108 addLineToPoint:{12.0, 106.0}];
      [v108 closePath];
      v29 = 0x1E69DC000;
LABEL_188:
      v49 = v108;

      goto LABEL_124;
    }

    if ([v48 isEqualToString:@"com.apple.ink.pencil"])
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      [v108 moveToPoint:{12.0, 106.0}];
      v109 = 44.5;
      [v108 addLineToPoint:{12.0, 44.5}];
      [v108 addLineToPoint:{19.0, 15.5}];
      v110 = 27.0;
      v111 = 15.5;
      goto LABEL_186;
    }

    if (([v48 isEqualToString:@"com.apple.ink.marker"] & 1) != 0 || objc_msgSend(v48, "isEqualToString:", @"com.apple.ink.reedcalligraphy"))
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      [v108 moveToPoint:{12.0, 106.0}];
      v109 = 39.5;
      [v108 addLineToPoint:{12.0, 39.5}];
      [v108 addLineToPoint:{13.0, 35.5}];
      [v108 addLineToPoint:{16.0, 28.5}];
      [v108 addLineToPoint:{16.0, 15.47}];
      [v108 addLineToPoint:{17.0, 14.5}];
      [v108 addLineToPoint:{28.5, 14.5}];
      [v108 addLineToPoint:{30.0, 15.5}];
      [v108 addLineToPoint:{30.0, 28.5}];
      v110 = 33.0;
      v112 = v108;
      v111 = 35.5;
      goto LABEL_187;
    }

    v29 = 0x1E69DC000;
    if ([v48 isEqualToString:@"com.apple.ink.monoline"])
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      [v108 moveToPoint:{12.2618099, 106.0}];
      [v108 addLineToPoint:{12.2618099, 43.2351562}];
      [v108 addLineToPoint:{14.2503486, 43.2351562}];
      [v108 addLineToPoint:{14.2503486, 23.597526}];
      [v108 addLineToPoint:{16.5339738, 23.597526}];
      [v108 addLineToPoint:{16.5339738, 16.4634978}];
      [v108 addLineToPoint:{21.7507188, 16.4634978}];
      [v108 addLineToPoint:{21.7507188, 8.32630841}];
      [v108 addLineToPoint:{21.7507188, 3.32473958}];
      [v108 addLineToPoint:{24.4343841, 3.32473958}];
      [v108 addLineToPoint:{24.4343841, 8.32630841}];
      [v108 addLineToPoint:{24.4343841, 16.4634978}];
      [v108 addLineToPoint:{29.8894292, 16.4634978}];
      [v108 addLineToPoint:{29.8894292, 23.597526}];
      [v108 addLineToPoint:{32.1598719, 23.597526}];
      [v108 addLineToPoint:{32.1598719, 43.2351562}];
      [v108 addLineToPoint:{34.0916241, 43.2351562}];
      [v108 addLineToPoint:{34.0916241, 106.0}];
      goto LABEL_188;
    }

    if ([v48 isEqualToString:@"com.apple.ink.fountainpen"])
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      [v108 moveToPoint:12.2601668];
      [v108 addLineToPoint:{13.2601668, 51.9198442}];
      [v108 addLineToPoint:{15.1484375, 48.0507036}];
      [v108 addCurveToPoint:15.0358887 controlPoint1:46.1215105 controlPoint2:{15.0358887, 45.5854492, 14.7400716, 46.943262}];
      [v108 addCurveToPoint:14.9029147 controlPoint1:44.3973689 controlPoint2:{14.6369669, 43.629392, 15.0358887, 45.0493879}];
      [v108 addCurveToPoint:15.0732805 controlPoint1:43.3439394 controlPoint2:{15.9459078, 42.7730341, 14.6369669, 43.629392}];
      [v108 addCurveToPoint:12.2601668 controlPoint1:30.4790039 controlPoint2:{12.2601668, 26.6476707, 15.9459078, 37.9335938}];
      [v108 addCurveToPoint:19.6647949 controlPoint1:10.418457 controlPoint2:{23.0923308, 1.65112305, 12.2601668, 22.8163376}];
      [v108 addCurveToPoint:33.9244948 controlPoint1:22.1508102 controlPoint2:{33.9244948, 26.6476707, 26.543457, 10.4182129}];
      [v108 addCurveToPoint:30.4541991 controlPoint1:37.3776855 controlPoint2:{30.4541991, 42.7730341, 33.9244948, 31.1445313}];
      [v108 addCurveToPoint:31.7211492 controlPoint1:43.3271476 controlPoint2:{32.0599319, 43.629392, 31.1859049, 43.041695}];
      [v108 addCurveToPoint:31.3964844 controlPoint1:45.0633311 controlPoint2:{31.3964844, 45.5854492, 31.6176336, 44.411312}];
      [v108 addCurveToPoint:31.6176336 controlPoint1:46.9293188 controlPoint2:{32.0599319, 48.0507036, 31.3964844, 46.1075674}];
      [v108 addLineToPoint:{33.9244948, 51.9198442}];
      [v108 addLineToPoint:{33.9244948, 106.0}];
      v154 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{18.0, 21.25, 10.0, 10.0}];
      v122 = [v154 bezierPathByReversingPath];
      [v108 appendPath:v122];

      goto LABEL_188;
    }

    if ([v48 isEqualToString:@"com.apple.ink.watercolor"])
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      [v108 moveToPoint:12.2158203];
      [v108 addCurveToPoint:12.2158203 controlPoint1:49.1869718 controlPoint2:12.2158203];
      [v108 addCurveToPoint:16.4457308 controlPoint1:35.171875 controlPoint2:{12.2158203, 45.659218, 13.7754602, 41.0078087}];
      [v108 addLineToPoint:{16.4457308, 31.4229939}];
      [v108 addCurveToPoint:17.5809329 controlPoint1:31.4229939 controlPoint2:{16.8986844, 31.4229939, 17.2770851, 31.4229939}];
      [v108 addCurveToPoint:23.0 controlPoint1:2.26262478 controlPoint2:{17.5809329, 19.2776602, 20.4644097, 7.17426215}];
      [v108 addCurveToPoint:28.6675323 controlPoint1:31.4229939 controlPoint2:{25.4383789, 7.22929688, 28.6675323, 19.2776602}];
      [v108 addCurveToPoint:29.8027344 controlPoint1:31.4229939 controlPoint2:{28.9713802, 31.4229939, 29.3497808, 31.4229939}];
      [v108 addLineToPoint:{29.8027344, 35.171875}];
      [v108 addCurveToPoint:34.0 controlPoint1:49.1869718 controlPoint2:{32.473005, 41.0078087, 34.0, 45.659218}];
      [v108 addCurveToPoint:34.0 controlPoint1:106.0 controlPoint2:{34.0, 52.7147255, 34.0, 71.6524016}];
      goto LABEL_188;
    }

    if ([v48 isEqualToString:@"com.apple.ink.crayon"])
    {
      v124 = MEMORY[0x1E69DC728];
      v125 = 24.25;
      v126 = 105.25;
      v127 = 12.0;
      v128 = 22.0;
LABEL_229:
      v108 = [v124 bezierPathWithRect:{v127, v125, v128, v126}];
      goto LABEL_188;
    }

    if ([v48 isEqualToString:@"com.apple.ink.lasso"])
    {
      v108 = [MEMORY[0x1E69DC728] bezierPath];
      v129 = 106.0;
      [v108 moveToPoint:{12.0, 106.0}];
      [v108 addLineToPoint:{12.0, 41.38}];
      [v108 addLineToPoint:{22.48, 2.0}];
      [v108 addLineToPoint:{23.52, 2.0}];
      [v108 addLineToPoint:{34.0, 41.38}];
      [v108 addLineToPoint:{34.0, 106.0}];
      v130 = 12.0;
    }

    else
    {
      if (([v48 isEqualToString:@"com.apple.ink.eraser"] & 1) != 0 || objc_msgSend(v48, "isEqualToString:", @"com.apple.ink.objectEraser"))
      {
        v108 = [MEMORY[0x1E69DC728] bezierPath];
        v129 = 106.0;
        [v108 moveToPoint:{12.5, 106.0}];
        [v108 addLineToPoint:{12.5, 40.5}];
        [v108 addLineToPoint:{12.0, 40.5}];
        [v108 addLineToPoint:{12.0, 22.0}];
        [v108 addLineToPoint:{12.5, 22.0}];
        [v108 addLineToPoint:{12.5, 6.52}];
        [v108 addLineToPoint:{13.5, 4.51}];
        [v108 addLineToPoint:{17.5, 2.5}];
        [v108 addLineToPoint:{28.5, 2.5}];
        [v108 addLineToPoint:{32.5, 4.51}];
        [v108 addLineToPoint:{33.5, 6.52}];
        [v108 addLineToPoint:{33.5, 22.0}];
        [v108 addLineToPoint:{34.0, 22.0}];
        [v108 addLineToPoint:{34.0, 40.5}];
        [v108 addLineToPoint:{33.5, 40.5}];
        [v108 addLineToPoint:{33.5, 48.72}];
        v133 = v108;
      }

      else
      {
        if ([v48 isEqualToString:@"com.apple.tool.ruler"])
        {
          v124 = MEMORY[0x1E69DC728];
          v128 = 36.0;
          v126 = 103.5;
          v127 = 5.0;
          v125 = 2.5;
          goto LABEL_229;
        }

        if ([v48 isEqualToString:@"com.apple.ink.handwriting"])
        {
          v108 = [MEMORY[0x1E69DC728] bezierPath];
          v129 = 106.5;
          [v108 moveToPoint:{12.5, 106.5}];
          [v108 addLineToPoint:{12.5, 65.5}];
          [v108 addLineToPoint:{13.5, 53.5}];
          [v108 addLineToPoint:{15.5, 36.83}];
          [v108 addLineToPoint:{19.5, 14.5}];
          [v108 addLineToPoint:{20.21, 11.73}];
          [v108 addLineToPoint:{20.5, 10.58}];
          [v108 addLineToPoint:{21.5, 3.51}];
          [v108 addLineToPoint:{22.5, 2.5}];
          [v108 addLineToPoint:{23.5, 2.5}];
          [v108 addLineToPoint:{24.5, 3.51}];
          [v108 addLineToPoint:{25.5, 10.58}];
          [v108 addLineToPoint:{26.5, 14.5}];
          [v108 addLineToPoint:{30.5, 36.83}];
          [v108 addLineToPoint:{32.5, 53.5}];
          [v108 addLineToPoint:{33.5, 65.5}];
          v134 = v108;
          v135 = 106.5;
        }

        else
        {
          if (![v48 isEqualToString:@"com.apple.ink.generationtool"])
          {
            v49 = 0;
            goto LABEL_124;
          }

          v108 = [MEMORY[0x1E69DC728] bezierPath];
          v129 = 106.0;
          [v108 moveToPoint:{12.5, 106.0}];
          [v108 addLineToPoint:{12.5, 6.52}];
          [v108 addLineToPoint:{13.5, 4.51}];
          [v108 addLineToPoint:{17.5, 2.5}];
          [v108 addLineToPoint:{28.5, 2.5}];
          [v108 addLineToPoint:{32.5, 4.51}];
          v134 = v108;
          v135 = 6.52;
        }

        [v134 addLineToPoint:{33.5, v135}];
        v133 = v108;
      }

      [v133 addLineToPoint:{33.5, v129}];
      v130 = 12.5;
    }

    [v108 addLineToPoint:{v130, v129}];
    [v108 closePath];
    goto LABEL_188;
  }

  v151 = 0;
LABEL_127:
  v50 = v40;
  if ([v50 isEqualToString:@"com.apple.ink.pen"])
  {
    v51 = @"palette_tool_pen_tip_contour";
  }

  else if ([v50 isEqualToString:@"com.apple.ink.pencil"])
  {
    v51 = @"palette_tool_pencil_tip_contour";
  }

  else
  {
    if (![v50 isEqualToString:@"com.apple.ink.marker"])
    {
      v51 = [v50 stringByAppendingString:@"/TipContour"];

      if (!v51)
      {
        goto LABEL_135;
      }

      goto LABEL_134;
    }

    v51 = @"palette_tool_marker_tip_contour";
  }

LABEL_134:
  v52 = [*(v29 + 2744) imageNamed:v51 inBundle:v163 compatibleWithTraitCollection:0];
  [(PKToolConfiguration *)v36 setTipContourImage:v52];

LABEL_135:
  v148 = v14;
  v153 = v51;
  if (((v6 | v157) & 1) == 0)
  {
    goto LABEL_167;
  }

  v53 = +[PKInkManager defaultInkManager];
  v54 = [v53 inkBehaviorForIdentifier:v50 variant:@"default"];

  v146 = v54;
  v36->_shouldShowAzimuthInColorPicker = [v54 uiAzimuthControl];
  [(PKToolConfiguration *)v36 strokeWeightButtonSize];
  v55 = [MEMORY[0x1E695DF90] dictionary];
  [PKToolConfiguration _weightsForToolWithIdentifier:v50];
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v56 = v171 = 0u;
  v57 = [v56 countByEnumeratingWithState:&v168 objects:v175 count:16];
  if (!v57)
  {
    goto LABEL_150;
  }

  v58 = v57;
  v59 = *v169;
  v60 = 1;
  do
  {
    for (i = 0; i != v58; ++i)
    {
      if (*v169 != v59)
      {
        objc_enumerationMutation(v56);
      }

      v62 = *(*(&v168 + 1) + 8 * i);
      if (v6)
      {
        v63 = [v164 p_assetImageForToolIdentifier:v50 assetNumber:v60 bundle:v163];
      }

      else if (v159)
      {
        [*(*(&v168 + 1) + 8 * i) doubleValue];
        v63 = [v164 p_objectEraserImageWithWeight:? imageSize:?];
      }

      else
      {
        if (!v157)
        {
          goto LABEL_148;
        }

        [*(*(&v168 + 1) + 8 * i) doubleValue];
        v63 = [v164 p_bitmapEraserImageWithWeight:? imageSize:?];
      }

      v64 = v63;
      [v55 setObject:v63 forKeyedSubscript:v62];

LABEL_148:
      ++v60;
    }

    v58 = [v56 countByEnumeratingWithState:&v168 objects:v175 count:16];
  }

  while (v58);
LABEL_150:

  [(PKToolConfiguration *)v156 setStrokeWeightsToButtonImages:v55];
  v65 = v50;
  v66 = 8.0;
  if ([v65 isEqualToString:@"com.apple.ink.pen"])
  {
    v67 = 2.0;
    v14 = v148;
    v51 = v153;
    v68 = v146;
  }

  else
  {
    v66 = 12.0;
    v51 = v153;
    v68 = v146;
    if ([v65 isEqualToString:@"com.apple.ink.pencil"])
    {
      v67 = 2.0;
      v14 = v148;
    }

    else
    {
      v66 = 18.0;
      v67 = 6.0;
      v14 = v148;
      if (([v65 isEqualToString:@"com.apple.ink.marker"] & 1) == 0 && (objc_msgSend(v65, "isEqualToString:", @"com.apple.ink.reedcalligraphy") & 1) == 0)
      {
        v66 = 10.0;
        if ([v65 isEqualToString:@"com.apple.ink.monoline"] & 1) != 0 || (objc_msgSend(v65, "isEqualToString:", @"com.apple.ink.fountainpen"))
        {
          v67 = 2.0;
        }

        else
        {
          v67 = 2.0;
          if (([v65 isEqualToString:@"com.apple.ink.watercolor"] & 1) == 0)
          {
            v115 = [v65 isEqualToString:@"com.apple.ink.crayon"];
            if (v115)
            {
              v67 = 2.0;
            }

            else
            {
              v67 = 0.0;
            }

            if (v115)
            {
              v66 = 10.0;
            }

            else
            {
              v66 = 0.0;
            }
          }
        }
      }
    }
  }

  v36 = v156;
  [(PKToolConfiguration *)v156 setMinimumBandThickness:v67 andMaximumBandThickness:v66];

  v29 = 0x1E69DC000uLL;
LABEL_167:
  if ([v50 isEqualToString:@"com.apple.ink.reedcalligraphy"])
  {
    v72 = *(v29 + 2744);
    v165 = [(__CFString *)v149 stringByAppendingString:@"1"];
    v160 = [v72 imageNamed:v165 inBundle:v163 compatibleWithTraitCollection:0];
    v174[0] = v160;
    v73 = *(v29 + 2744);
    v74 = [(__CFString *)v149 stringByAppendingString:@"2"];
    v75 = [v73 imageNamed:v74 inBundle:v163 compatibleWithTraitCollection:0];
    v174[1] = v75;
    v174[2] = v152;
    v76 = *(v29 + 2744);
    v77 = [(__CFString *)v149 stringByAppendingString:@"4"];
    v78 = [v76 imageNamed:v77 inBundle:v163 compatibleWithTraitCollection:0];
    v174[3] = v78;
    v79 = *(v29 + 2744);
    v80 = [(__CFString *)v149 stringByAppendingString:@"5"];
    v81 = [v79 imageNamed:v80 inBundle:v163 compatibleWithTraitCollection:0];
    v174[4] = v81;
    v82 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:5];
    [(PKToolConfiguration *)v156 setBaseImagesForAzimuth:v82];

    v83 = *(v29 + 2744);
    v166 = [v151 stringByAppendingString:@"1"];
    v161 = [v83 imageNamed:v166 inBundle:v163 compatibleWithTraitCollection:0];
    v173[0] = v161;
    v84 = *(v29 + 2744);
    v158 = [v151 stringByAppendingString:@"2"];
    v85 = [v84 imageNamed:v158 inBundle:v163 compatibleWithTraitCollection:0];
    v173[1] = v85;
    v86 = [(PKToolConfiguration *)v156 tipMaskImage];
    v173[2] = v86;
    v87 = *(v29 + 2744);
    v88 = [v151 stringByAppendingString:@"4"];
    v89 = [v87 imageNamed:v88 inBundle:v163 compatibleWithTraitCollection:0];
    v173[3] = v89;
    v90 = *(v29 + 2744);
    v91 = [v151 stringByAppendingString:@"5"];
    v92 = [v90 imageNamed:v91 inBundle:v163 compatibleWithTraitCollection:0];
    v173[4] = v92;
    v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:5];
    [(PKToolConfiguration *)v156 setTipMaskImagesForAzimuth:v93];

    v94 = *(v29 + 2744);
    v167 = [(__CFString *)v153 stringByAppendingString:@"1"];
    v162 = [v94 imageNamed:v167 inBundle:v163 compatibleWithTraitCollection:0];
    v172[0] = v162;
    v95 = *(v29 + 2744);
    v96 = [(__CFString *)v153 stringByAppendingString:@"2"];
    v97 = [v95 imageNamed:v96 inBundle:v163 compatibleWithTraitCollection:0];
    v172[1] = v97;
    v98 = [(PKToolConfiguration *)v156 tipContourImage];
    v172[2] = v98;
    v99 = *(v29 + 2744);
    v100 = [(__CFString *)v153 stringByAppendingString:@"4"];
    v101 = [v99 imageNamed:v100 inBundle:v163 compatibleWithTraitCollection:0];
    v172[3] = v101;
    v102 = *(v29 + 2744);
    v103 = [(__CFString *)v153 stringByAppendingString:@"5"];
    v104 = [v102 imageNamed:v103 inBundle:v163 compatibleWithTraitCollection:0];
    v172[4] = v104;
    v105 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:5];
    [(PKToolConfiguration *)v156 setTipContourImagesForAzimuth:v105];

    v36 = v156;
    v14 = v148;

    v51 = v153;
  }

  v106 = v36;

  return v36;
}

+ (id)defaultColorForInkingToolWithIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v4 = [PKSwatchColor swatchColor:v3 identifier:@"black"];
  v5 = [v4 color];

  if ([v2 isEqualToString:@"com.apple.ink.pencil"])
  {
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.0823529412 green:0.494117647 blue:0.984313725 alpha:1.0];
    v7 = @"blue";
  }

  else if ([v2 isEqualToString:@"com.apple.ink.marker"])
  {
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.996078431 green:0.815686275 blue:0.188235294 alpha:1.0];
    v7 = @"yellow";
  }

  else
  {
    if (![v2 isEqualToString:@"com.apple.ink.crayon"])
    {
      goto LABEL_8;
    }

    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.988235294 green:0.192156863 blue:0.258823529 alpha:1.0];
    v7 = @"red";
  }

  v8 = [PKSwatchColor swatchColor:v6 identifier:v7];
  v9 = [v8 color];

  v5 = v9;
LABEL_8:
  [PKInk defaultOpacityForIdentifier:v2];
  v10 = [v5 colorWithAlphaComponent:?];

  return v10;
}

+ (id)_weightsForToolWithIdentifier:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"com.apple.ink.pen"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ink.pencil") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ink.marker") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ink.monoline") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ink.fountainpen") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.ink.watercolor") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.ink.reedcalligraphy"))
  {

LABEL_9:
    v4 = +[PKInkManager defaultInkManager];
    v5 = [v4 inkBehaviorForIdentifier:v3 variant:@"default"];

    v6 = [v5 uiWidths];
    if ([v6 count])
    {
      v7 = v6;
    }

    else
    {
      v7 = &unk_1F47C1D48;
    }

    goto LABEL_13;
  }

  v9 = [v3 isEqualToString:@"com.apple.ink.crayon"];

  if (v9)
  {
    goto LABEL_9;
  }

  v7 = &unk_1F47C1D48;
LABEL_13:

  return v7;
}

+ (id)defaultLocalizedNameForInkingToolWithIdentifier:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  if ([v3 isEqualToString:@"com.apple.ink.pen"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Pen";
LABEL_29:
    v7 = [v4 localizedStringForKey:v6 value:v6 table:@"Localizable"];

    goto LABEL_30;
  }

  if ([v3 isEqualToString:@"com.apple.ink.pencil"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Pencil";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.marker"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Marker";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.monoline"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Monoline";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.fountainpen"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Fountain Pen";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.watercolor"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Watercolor";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.reedcalligraphy"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Reed";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.crayon"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Crayon";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.lasso"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Lasso";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.eraser"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Pixel Eraser";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.objectEraser"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Object Eraser";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.tool.ruler"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Ruler";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.handwriting"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Scribble";
    goto LABEL_29;
  }

  if ([v3 isEqualToString:@"com.apple.ink.generationtool"])
  {
    v4 = _PencilKitBundle();
    v5 = v4;
    v6 = @"Image Wand";
    goto LABEL_29;
  }

  v7 = 0;
LABEL_30:

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        localizedName = v6->_localizedName;
        v8 = self->_localizedName;
        v9 = localizedName;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_52;
          }

          v11 = [(UIImage *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_53;
          }
        }

        baseImage = v6->_baseImage;
        v8 = self->_baseImage;
        v14 = baseImage;
        if (v8 | v14)
        {
          v10 = v14;
          if (!v8 || !v14)
          {
            goto LABEL_52;
          }

          v27 = [(UIImage *)v8 isEqual:v14];

          if (!v27)
          {
            goto LABEL_53;
          }
        }

        baseImagesForAzimuth = v6->_baseImagesForAzimuth;
        v8 = self->_baseImagesForAzimuth;
        v16 = baseImagesForAzimuth;
        if (v8 | v16)
        {
          v10 = v16;
          if (!v8 || !v16)
          {
            goto LABEL_52;
          }

          v28 = [(UIImage *)v8 isEqual:v16];

          if (!v28)
          {
            goto LABEL_53;
          }
        }

        shadowPath = v6->_shadowPath;
        v8 = self->_shadowPath;
        v18 = shadowPath;
        if (!(v8 | v18))
        {
LABEL_15:
          if (self->_supportsColor == v6->_supportsColor && self->_supportsOpacity == v6->_supportsOpacity)
          {
            opacityLabelVerticalOffset = self->_opacityLabelVerticalOffset;
            v20 = v6->_opacityLabelVerticalOffset;
            if (opacityLabelVerticalOffset == v20 || vabdd_f64(opacityLabelVerticalOffset, v20) < fabs(v20 * 0.000000999999997))
            {
              if (DKUNilsEquivalentEqualObjects(self->_bandMaskImage, v6->_bandMaskImage))
              {
                if (DKUNilsEquivalentEqualObjects(self->_bandContourImage, v6->_bandContourImage))
                {
                  bandVerticalOffset = self->_bandVerticalOffset;
                  v22 = v6->_bandVerticalOffset;
                  if (bandVerticalOffset == v22 || vabdd_f64(bandVerticalOffset, v22) < fabs(v22 * 0.000000999999997))
                  {
                    if (DKUNilsEquivalentEqualObjects(self->_tipMaskImage, v6->_tipMaskImage))
                    {
                      if (DKUNilsEquivalentEqualObjects(self->_tipMaskImagesForAzimuth, v6->_tipMaskImagesForAzimuth))
                      {
                        if (DKUNilsEquivalentEqualObjects(self->_tipContourImage, v6->_tipContourImage))
                        {
                          if (DKUNilsEquivalentEqualObjects(self->_tipContourImagesForAzimuth, v6->_tipContourImagesForAzimuth))
                          {
                            if (DKUNilsEquivalentEqualObjects(self->_shadowPathIncludingTip, v6->_shadowPathIncludingTip))
                            {
                              if (DKUNilsEquivalentEqualHashes(self->_strokeWeightsToButtonImages, v6->_strokeWeightsToButtonImages))
                              {
                                minimumBandThickness = self->_minimumBandThickness;
                                v24 = v6->_minimumBandThickness;
                                if (minimumBandThickness == v24 || vabdd_f64(minimumBandThickness, v24) < fabs(v24 * 0.000000999999997))
                                {
                                  maximumBandThickness = self->_maximumBandThickness;
                                  v26 = v6->_maximumBandThickness;
                                  if ((maximumBandThickness == v26 || vabdd_f64(maximumBandThickness, v26) < fabs(v26 * 0.000000999999997)) && self->_isEraserTool == v6->_isEraserTool && self->_inkVersion == v6->_inkVersion && self->_viewControllerProvider == v6->_viewControllerProvider && self->_imageProvider == v6->_imageProvider && self->_supportsLassoToolEditingView == v6->_supportsLassoToolEditingView && self->_wantsStrokeWeightControl == v6->_wantsStrokeWeightControl)
                                  {
                                    v12 = self->_wantsTopLevelOpacityControl == v6->_wantsTopLevelOpacityControl;
LABEL_54:

                                    goto LABEL_55;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_53:
          v12 = 0;
          goto LABEL_54;
        }

        v10 = v18;
        if (v8 && v18)
        {
          v29 = [(UIImage *)v8 isEqual:v18];

          if (!v29)
          {
            goto LABEL_53;
          }

          goto LABEL_15;
        }

LABEL_52:

        goto LABEL_53;
      }
    }

    v12 = 0;
  }

LABEL_55:

  return v12;
}

- (unint64_t)hash
{
  v21 = [(NSString *)self->_localizedName hash];
  v3 = [(UIImage *)self->_baseImage hash];
  v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_supportsColor) ^ ((0xBF58476D1CE4E5B9 * self->_supportsColor) >> 27));
  v20 = v3;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_supportsOpacity) ^ ((0xBF58476D1CE4E5B9 * self->_supportsOpacity) >> 27));
  v5 = 0xBF58476D1CE4E5B9 * (self->_opacityLabelVerticalOffset ^ (self->_opacityLabelVerticalOffset >> 30));
  v6 = 0x94D049BB133111EBLL * (v5 ^ (v5 >> 27));
  v18 = [(UIImage *)self->_bandMaskImage hash];
  v17 = [(UIImage *)self->_bandContourImage hash];
  v7 = 0xBF58476D1CE4E5B9 * (self->_bandVerticalOffset ^ (self->_bandVerticalOffset >> 30));
  v8 = 0x94D049BB133111EBLL * (v7 ^ (v7 >> 27));
  v9 = [(UIImage *)self->_tipMaskImage hash];
  v10 = [(UIImage *)self->_tipContourImage hash];
  v11 = [(NSDictionary *)self->_strokeWeightsToButtonImages hash];
  v12 = PKHashBytes(&self->_minimumBandThickness, 8);
  v13 = PKHashBytes(&self->_maximumBandThickness, 8);
  v14 = 0xBF58476D1CE4E5B9 * (self->_inkVersion ^ (self->_inkVersion >> 30));
  v15 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_isEraserTool) ^ ((0xBF58476D1CE4E5B9 * self->_isEraserTool) >> 27))) ^ (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_supportsLassoToolEditingView) ^ ((0xBF58476D1CE4E5B9 * self->_supportsLassoToolEditingView) >> 27))) ^ (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_wantsStrokeWeightControl) ^ ((0xBF58476D1CE4E5B9 * self->_wantsStrokeWeightControl) >> 27))) ^ (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * self->_wantsTopLevelOpacityControl) ^ ((0xBF58476D1CE4E5B9 * self->_wantsTopLevelOpacityControl) >> 27))) ^ (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27)));
  return v15 ^ v20 ^ v21 ^ v18 ^ (v19 >> 31) ^ v17 ^ (v4 >> 31) ^ v9 ^ (v6 >> 31) ^ v10 ^ v11 ^ v12 ^ (v8 >> 31) ^ v13 ^ (v15 >> 31) ^ v19 ^ v4 ^ v6 ^ v8;
}

- (void)setLocalizedName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"localizedName must not be nil." userInfo:0];
    objc_exception_throw(v7);
  }

  v8 = v4;
  v5 = [v4 copy];
  localizedName = self->_localizedName;
  self->_localizedName = v5;
}

- (void)setBaseImage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"baseImage must not be nil." userInfo:0];
    objc_exception_throw(v7);
  }

  v8 = v4;
  v5 = [v4 copy];
  baseImage = self->_baseImage;
  self->_baseImage = v5;
}

- (void)setShadowPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"shadowPath must not be nil." userInfo:0];
    objc_exception_throw(v7);
  }

  v8 = v4;
  v5 = [v4 copy];
  shadowPath = self->_shadowPath;
  self->_shadowPath = v5;
}

- (void)setSupportsColor:(BOOL)a3 andOpacity:(BOOL)a4 defaultColor:(id)a5
{
  v5 = a4;
  v8 = a5;
  if (v5 && !a3)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Tools can not support opacity without supporting color." userInfo:0];
    objc_exception_throw(v10);
  }

  self->_supportsColor = a3;
  self->_supportsOpacity = v5;
  defaultColor = self->_defaultColor;
  self->_defaultColor = v8;
}

- (void)clearTipMaskImageAndShadowPathIncludingTip
{
  tipMaskImage = self->_tipMaskImage;
  self->_tipMaskImage = 0;

  shadowPathIncludingTip = self->_shadowPathIncludingTip;
  self->_shadowPathIncludingTip = 0;
}

- (void)setTipMaskImage:(id)a3 withShadowPathIncludingTip:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!v16)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"tipMaskImage must not be nil.";
    goto LABEL_8;
  }

  v7 = v6;
  if (!v6)
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v14 = @"shadowPathIncludingTip must not be nil.";
LABEL_8:
    v15 = [v12 exceptionWithName:v13 reason:v14 userInfo:0];
    objc_exception_throw(v15);
  }

  v8 = [v16 copy];
  tipMaskImage = self->_tipMaskImage;
  self->_tipMaskImage = v8;

  v10 = [v7 copy];
  shadowPathIncludingTip = self->_shadowPathIncludingTip;
  self->_shadowPathIncludingTip = v10;
}

- (BOOL)supportsStrokeWeight
{
  v2 = [(PKToolConfiguration *)self strokeWeightsToButtonImages];
  v3 = v2 != 0;

  return v3;
}

- (void)setStrokeWeightsToButtonImages:(id)a3
{
  v4 = [PKToolConfiguration _deepCopyStrokeWeightDictionary:a3];
  strokeWeightsToButtonImages = self->_strokeWeightsToButtonImages;
  self->_strokeWeightsToButtonImages = v4;

  cachedStrokeWeightRange = self->_cachedStrokeWeightRange;
  self->_cachedStrokeWeightRange = 0;
}

+ (id)_deepCopyStrokeWeightDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:{v10, v15}];
          v12 = [v11 copy];
          [v4 setObject:v12 forKeyedSubscript:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setMinimumBandThickness:(double)a3 andMaximumBandThickness:(double)a4
{
  if (a3 < 0.0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"minimumBandThickness must not be less than zero.";
    goto LABEL_8;
  }

  if (a4 < 0.0)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"maximumBandThickness must not be less than zero.";
    goto LABEL_8;
  }

  if (a4 < a3)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"maximumBandThickness must not be less than minimumBandThickness.";
LABEL_8:
    v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }

  self->_minimumBandThickness = a3;
  self->_maximumBandThickness = a4;
}

- (double)bandThicknessForStrokeWeight:(void *)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if (([a1 supportsStrokeWeight] & 1) == 0)
  {
    v15 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Should not attempt to calculate band thickness a tool configuration that does not support stroke weight." userInfo:0];
    objc_exception_throw(v15);
  }

  v4 = [a1 p_strokeWeightRange];
  [v4 lowerBound];
  v6 = v5;
  [v4 upperBound];
  v8 = v7;
  [a1 minimumBandThickness];
  v10 = v9;
  [a1 maximumBandThickness];
  if (v6 != v8 && vabdd_f64(v6, v8) >= fabs(v8 * 0.000000999999997))
  {
    v12 = (a2 - v6) / (v8 - v6);
    v13 = 0.0;
    if (v12 >= 0.0)
    {
      v13 = (a2 - v6) / (v8 - v6);
      if (v12 > 1.0)
      {
        v13 = 1.0;
      }
    }

    v10 = v10 + (v11 - v10) * v13;
  }

  return v10;
}

+ (id)p_widthAssetNameForToolIdentifier:(id)a3 assetNumber:(unint64_t)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"com.apple.ink.pen"])
  {
    v6 = @"com.apple.ink.pen.";
  }

  else if ([v5 isEqualToString:@"com.apple.ink.pencil"])
  {
    v6 = @"com.apple.ink.pencil.";
  }

  else if ([v5 isEqualToString:@"com.apple.ink.marker"])
  {
    v6 = @"com.apple.ink.marker.";
  }

  else
  {
    v6 = [v5 stringByAppendingString:@"/StrokeWeight/Weight"];
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%zu", v6, a4];

  return v7;
}

+ (id)p_azimuthAssetNameForToolIdentifier:(id)a3 assetNumber:(unint64_t)a4
{
  v5 = [a3 stringByAppendingString:@"/StrokeAngle/Angle-"];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%zu", v5, a4];

  return v6;
}

+ (id)p_assetImageForToolIdentifier:(id)a3 assetNumber:(unint64_t)a4 bundle:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [a1 p_widthAssetNameForToolIdentifier:v8 assetNumber:a4];
  v11 = [MEMORY[0x1E69DCAB8] imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = os_log_create("com.apple.pencilkit", "");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218242;
      v17 = a4;
      v18 = 2112;
      v19 = v8;
      _os_log_fault_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_FAULT, "Unable to find stroke weight asset (%zu) for tool identifier (%@). Defaulting to pen.", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%zu", @"com.apple.ink.pen", a4];

    v12 = [MEMORY[0x1E69DCAB8] imageNamed:v14 inBundle:v9 compatibleWithTraitCollection:0];
    v10 = v14;
  }

  return v12;
}

+ (id)p_objectEraserImageWithWeight:(double)a3 imageSize:(CGSize)a4
{
  v5 = a4.width * 0.5;
  v6 = a4.height * 0.5;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a4.width, a4.height}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKToolConfiguration_p_objectEraserImageWithWeight_imageSize___block_invoke;
  v10[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v10[4] = a3;
  *&v10[5] = v5;
  *&v10[6] = v6;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

void __63__PKToolConfiguration_p_objectEraserImageWithWeight_imageSize___block_invoke(double *a1, void *a2)
{
  v3 = [a2 CGContext];
  if (fabs(a1[4]) < 0.00999999978)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E69DC888] blackColor];
    CGContextSetStrokeColorWithColor(v4, [v5 CGColor]);

    CGContextSetLineWidth(v4, 2.0);
    CGContextSetLineCap(v4, kCGLineCapRound);
    CGContextMoveToPoint(v4, a1[5] + -5.0, a1[5] + -5.0);
    CGContextAddLineToPoint(v4, a1[5] + 5.0, a1[6] + 5.0);
    CGContextStrokePath(v4);
    CGContextMoveToPoint(v4, a1[5] + -5.0, a1[5] + 5.0);
    CGContextAddLineToPoint(v4, a1[5] + 5.0, a1[6] + -5.0);

    CGContextStrokePath(v4);
  }
}

+ (id)p_bitmapEraserImageWithWeight:(double)a3 imageSize:(CGSize)a4
{
  v4 = a4.width * 0.5;
  v5 = a4.height * 0.5;
  v6 = (a3 + 1.0) * 0.5 * 18.0 + 14.0;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a4.width, a4.height}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__PKToolConfiguration_p_bitmapEraserImageWithWeight_imageSize___block_invoke;
  v10[3] = &__block_descriptor_56_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v10[4] = v4;
  *&v10[5] = v5;
  *&v10[6] = v6;
  v8 = [v7 imageWithActions:v10];

  return v8;
}

void __63__PKToolConfiguration_p_bitmapEraserImageWithWeight_imageSize___block_invoke(double *a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = [MEMORY[0x1E69DC888] blackColor];
  CGContextSetStrokeColorWithColor(v3, [v4 CGColor]);

  CGContextSetLineWidth(v3, 2.0);
  v5 = a1[6];
  v6 = a1[4] - v5 * 0.5;
  v7 = a1[5] - v5 * 0.5;
  v8 = v5;

  CGContextStrokeEllipseInRect(v3, *&v6);
}

- (id)p_strokeWeightRange
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_cachedStrokeWeightRange)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    cachedStrokeWeightRange = [(PKToolConfiguration *)self strokeWeightsToButtonImages];
    v4 = [cachedStrokeWeightRange countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v4)
    {
LABEL_18:

      goto LABEL_19;
    }

    v5 = v4;
    v6 = *v17;
    v7 = 1.79769313e308;
    v8 = 2.22507386e-308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(cachedStrokeWeightRange);
        }

        [*(*(&v16 + 1) + 8 * i) floatValue];
        v11 = v10;
        if (v7 > v11)
        {
          v7 = v11;
        }

        if (v8 < v11)
        {
          v8 = v11;
        }
      }

      v5 = [cachedStrokeWeightRange countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);

    if (v7 < 1.79769313e308 && v8 > 2.22507386e-308)
    {
      v13 = [[PKFloatRange alloc] initWithLowerBound:v7 upperBound:v8];
      cachedStrokeWeightRange = self->_cachedStrokeWeightRange;
      self->_cachedStrokeWeightRange = v13;
      goto LABEL_18;
    }
  }

LABEL_19:
  v14 = self->_cachedStrokeWeightRange;

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithLocalizedName:baseImage:shadowPath:", self->_localizedName, self->_baseImage, self->_shadowPath}];
  objc_storeStrong((v4 + 136), self->_baseImagesForAzimuth);
  *(v4 + 18) = self->_supportsColor;
  *(v4 + 19) = self->_supportsOpacity;
  *(v4 + 56) = self->_opacityLabelVerticalOffset;
  v5 = [(UIImage *)self->_bandMaskImage copy];
  v6 = *(v4 + 64);
  *(v4 + 64) = v5;

  v7 = [(UIImage *)self->_bandContourImage copy];
  v8 = *(v4 + 72);
  *(v4 + 72) = v7;

  *(v4 + 80) = self->_bandVerticalOffset;
  v9 = [(UIImage *)self->_tipMaskImage copy];
  v10 = *(v4 + 88);
  *(v4 + 88) = v9;

  v11 = [(NSArray *)self->_tipMaskImagesForAzimuth copy];
  v12 = *(v4 + 144);
  *(v4 + 144) = v11;

  v13 = [(UIImage *)self->_tipContourImage copy];
  v14 = *(v4 + 96);
  *(v4 + 96) = v13;

  v15 = [(NSArray *)self->_tipContourImagesForAzimuth copy];
  v16 = *(v4 + 152);
  *(v4 + 152) = v15;

  v17 = [(UIBezierPath *)self->_shadowPathIncludingTip copy];
  v18 = *(v4 + 104);
  *(v4 + 104) = v17;

  v19 = [PKToolConfiguration _deepCopyStrokeWeightDictionary:self->_strokeWeightsToButtonImages];
  v20 = *(v4 + 112);
  *(v4 + 112) = v19;

  *(v4 + 120) = self->_minimumBandThickness;
  *(v4 + 128) = self->_maximumBandThickness;
  *(v4 + 21) = self->_isEraserTool;
  *(v4 + 176) = self->_inkVersion;
  v21 = [self->_viewControllerProvider copy];
  v22 = *(v4 + 168);
  *(v4 + 168) = v21;

  v23 = [self->_imageProvider copy];
  v24 = *(v4 + 184);
  *(v4 + 184) = v23;

  *(v4 + 20) = self->_supportsLassoToolEditingView;
  *(v4 + 16) = self->_wantsStrokeWeightControl;
  *(v4 + 17) = self->_wantsTopLevelOpacityControl;
  *(v4 + 22) = self->_shouldShowAzimuthInColorPicker;
  return v4;
}

+ (id)_assetNamesByWeightForToolWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [PKToolConfiguration _weightsForToolWithIdentifier:v4];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [a1 p_widthAssetNameForToolIdentifier:v4 assetNumber:v10];
        [v5 setObject:v13 forKeyedSubscript:v12];

        ++v10;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];

  return v14;
}

+ (BOOL)_supportsAzimuthControlForToolWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[PKInkManager defaultInkManager];
  v5 = [v4 inkBehaviorForIdentifier:v3 variant:@"default"];

  LOBYTE(v4) = [v5 uiAzimuthControl];
  return v4;
}

+ (id)_assetNamesByAzimuthForToolWithIdentifier:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  if ([a1 _supportsAzimuthControlForToolWithIdentifier:v4])
  {
    v6 = [a1 _orderedAzimuthValuesForToolWithIdentifier:v4];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [a1 p_azimuthAssetNameForToolIdentifier:v4 assetNumber:v10];
          [v5 setObject:v13 forKeyedSubscript:v12];

          ++v10;
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v5];
  }

  else
  {
    v14 = [MEMORY[0x1E695DF20] dictionary];
  }

  return v14;
}

+ (id)_orderedAzimuthValuesForToolWithIdentifier:(id)a3
{
  if ([a1 _supportsAzimuthControlForToolWithIdentifier:a3])
  {
    return &unk_1F47C1D60;
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

@end