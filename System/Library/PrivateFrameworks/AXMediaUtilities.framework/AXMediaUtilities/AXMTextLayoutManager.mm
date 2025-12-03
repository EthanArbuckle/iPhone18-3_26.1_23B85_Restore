@interface AXMTextLayoutManager
- (AXMTextLayoutManager)initWithSemanticTextFactory:(id)factory;
- (BOOL)hasConsecutiveCharacters:(id)characters withLength:(unint64_t)length;
- (BOOL)hasConsecutiveDigits:(id)digits withLength:(unint64_t)length;
- (BOOL)isBoundary:(CGRect)boundary withinBoundary:(CGRect)withinBoundary withNormalizedThreshold:(double)threshold;
- (BOOL)isBoundary:(CGRect)boundary withinNormalizedDistance:(double)distance ofBoundary:(CGRect)ofBoundary;
- (BOOL)verifyTable:(id)table sortedColumns:(id)columns;
- (CGRect)detectCenterContourFromContours:(id)contours withImageExtent:(CGRect)extent;
- (CGRect)imageRectForNormalizedRect:(CGRect)rect imageWidth:(unint64_t)width imageHeight:(unint64_t)height;
- (NSMeasurementFormatter)measurementFormatter;
- (NSNumberFormatter)numberFormatter;
- (id)_assembleLayoutCellsWithFeatures:(id)features;
- (id)_assembleLayoutColumn:(id)column;
- (id)_assembleLayoutHeader:(id)header;
- (id)_assembleLayoutLines:(id)lines;
- (id)_assembleLayoutRegions:(id)regions;
- (id)_assembleLayoutRow:(id)row;
- (id)_assembleLayoutRowFromCell:(id)cell;
- (id)_assembleLayoutSequences:(id)sequences;
- (id)_assembleLayoutTable:(id)table header:(id)header columnItems:(id)items;
- (id)_assembleNutritionLabelLayoutWithRows:(id)rows;
- (id)_assembleReceipt:(id)receipt;
- (id)documentWithNutritionLabel:(id)label canvasSize:(CGSize)size requestHandler:(id)handler metrics:(id)metrics error:(id *)error;
- (id)documentWithReceipt:(id)receipt withTextSkew:(double)skew canvasSize:(CGSize)size preferredLocales:(id)locales requestHandler:(id)handler metrics:(id)metrics error:(id *)error;
- (id)documentWithTable:(id)table canvasSize:(CGSize)size preferredLocales:(id)locales requestHandler:(id)handler metrics:(id)metrics error:(id *)error;
- (id)documentWithTextFeatures:(id)features canvasSize:(CGSize)size preferredLocales:(id)locales applySemanticAnalysis:(BOOL)analysis error:(id *)error;
- (id)envelopeWithTextFeatures:(id)features canvasSize:(CGSize)size preferredLocales:(id)locales applySemanticAnalysis:(BOOL)analysis error:(id *)error;
- (id)extractDataFromEnvelopeWithFeatures:(id)features preferredLocales:(id)locales canvasSize:(CGSize)size;
- (id)featureCellsForNutritionLabelRows:(id)rows withRequestHandler:(id)handler withCanvasSize:(CGSize)size;
- (id)filterReceiptForGarbageText:(id)text;
- (id)fractionDenominatorValues;
- (id)fractionDenominatorValuesWithOneAsNumerator;
- (id)getReceiptRows:(id)rows preferredLocales:(id)locales canvasSize:(CGSize)size;
- (id)getTableColumns:(id)columns;
- (id)getTableRows:(id)rows;
- (id)largestDetectedContoursForImage:(id)image;
- (id)measurementAbbreviationsToVerboseString;
- (id)nutritionLabelRowsForContourResults:(double)results normalizedNutritionLabelFrame:(double)frame fullImageFrame:(double)imageFrame processedImageFrame:(double)processedImageFrame;
- (id)preprocessNutritionLabel:(id)label finalFrame:(CGRect *)frame;
- (id)preprocessReceipt:(id)receipt withTextSkew:(double)skew width:(unint64_t)width height:(unint64_t)height metrics:(id)metrics requestHandler:(id)handler finalFrame:(CGRect *)frame;
- (id)preprocessTable:(id)table width:(unint64_t)width height:(unint64_t)height metrics:(id)metrics;
- (id)processFraction:(id)fraction;
- (id)processMeasurement:(id)measurement;
- (id)processNutritionLabelText:(id)text;
- (id)processReceiptText:(id)text foundMerchantName:(BOOL *)name preferredLocales:(id)locales;
- (id)receiptRegularExpressions;
- (id)sortContourColumnResults:(id)results maxWidth:(double)width maxHeight:(double)height;
- (id)sortContourRowResults:(id)results maxWidth:(double)width maxHeight:(double)height minWidth:(double)minWidth minHeight:(double)minHeight;
- (id)textColumnsForTable:(id)table sourceImage:(id)image requestHandler:(id)handler canvasSize:(CGSize)size;
- (id)textRowsForTable:(id)table sourceImage:(id)image requestHandler:(id)handler canvasSize:(CGSize)size;
@end

@implementation AXMTextLayoutManager

- (AXMTextLayoutManager)initWithSemanticTextFactory:(id)factory
{
  factoryCopy = factory;
  v8.receiver = self;
  v8.super_class = AXMTextLayoutManager;
  v5 = [(AXMTextLayoutManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AXMTextLayoutManager *)v5 setSemanticTextFactory:factoryCopy];
  }

  return v6;
}

- (NSNumberFormatter)numberFormatter
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:5];
    numberFormatter = self->_numberFormatter;
  }

  return numberFormatter;
}

- (NSMeasurementFormatter)measurementFormatter
{
  measurementFormatter = self->_measurementFormatter;
  if (!measurementFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD30]);
    v5 = self->_measurementFormatter;
    self->_measurementFormatter = v4;

    [(NSMeasurementFormatter *)self->_measurementFormatter setUnitStyle:3];
    measurementFormatter = self->_measurementFormatter;
  }

  return measurementFormatter;
}

- (id)fractionDenominatorValuesWithOneAsNumerator
{
  v19 = MEMORY[0x1E695DEC8];
  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v24 = [v22 localizedStringForKey:@"image.value.one" value:&stru_1F23EA908 table:@"Accessibility"];
  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v16 = [v21 localizedStringForKey:@"image.value.half" value:&stru_1F23EA908 table:@"Accessibility"];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v23 = [v20 localizedStringForKey:@"image.value.third" value:&stru_1F23EA908 table:@"Accessibility"];
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v13 = [v18 localizedStringForKey:@"image.value.fourth" value:&stru_1F23EA908 table:@"Accessibility"];
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v11 = [v17 localizedStringForKey:@"image.value.fifth" value:&stru_1F23EA908 table:@"Accessibility"];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v2 = [v15 localizedStringForKey:@"image.value.sixth" value:&stru_1F23EA908 table:@"Accessibility"];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v14 localizedStringForKey:@"image.value.seventh" value:&stru_1F23EA908 table:@"Accessibility"];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v4 = [v12 localizedStringForKey:@"image.value.eighth" value:&stru_1F23EA908 table:@"Accessibility"];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v6 = [v5 localizedStringForKey:@"image.value.nineth" value:&stru_1F23EA908 table:@"Accessibility"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v8 = [v7 localizedStringForKey:@"image.value.tenth" value:&stru_1F23EA908 table:@"Accessibility"];
  v9 = [v19 arrayWithObjects:{&stru_1F23EA908, v24, v16, v23, v13, v11, v2, v3, v4, v6, v8, 0}];

  return v9;
}

- (id)fractionDenominatorValues
{
  v19 = MEMORY[0x1E695DEC8];
  v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v24 = [v22 localizedStringForKey:@"image.value.one" value:&stru_1F23EA908 table:@"Accessibility"];
  v21 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v16 = [v21 localizedStringForKey:@"image.value.halves" value:&stru_1F23EA908 table:@"Accessibility"];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v23 = [v20 localizedStringForKey:@"image.value.thirds" value:&stru_1F23EA908 table:@"Accessibility"];
  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v13 = [v18 localizedStringForKey:@"image.value.fourths" value:&stru_1F23EA908 table:@"Accessibility"];
  v17 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v11 = [v17 localizedStringForKey:@"image.value.fifth" value:&stru_1F23EA908 table:@"Accessibility"];
  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v2 = [v15 localizedStringForKey:@"image.value.sixths" value:&stru_1F23EA908 table:@"Accessibility"];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v3 = [v14 localizedStringForKey:@"image.value.sevenths" value:&stru_1F23EA908 table:@"Accessibility"];
  v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v4 = [v12 localizedStringForKey:@"image.value.eighths" value:&stru_1F23EA908 table:@"Accessibility"];
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v6 = [v5 localizedStringForKey:@"image.value.nineths" value:&stru_1F23EA908 table:@"Accessibility"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
  v8 = [v7 localizedStringForKey:@"image.value.tenths" value:&stru_1F23EA908 table:@"Accessibility"];
  v9 = [v19 arrayWithObjects:{&stru_1F23EA908, v24, v16, v23, v13, v11, v2, v3, v4, v6, v8, 0}];

  return v9;
}

- (id)measurementAbbreviationsToVerboseString
{
  v48[6] = *MEMORY[0x1E69E9840];
  v47[0] = @"g";
  v3 = MEMORY[0x1E695DEC8];
  v4 = MEMORY[0x1E696AEC0];
  measurementFormatter = [(AXMTextLayoutManager *)self measurementFormatter];
  grams = [MEMORY[0x1E696B060] grams];
  v44 = [measurementFormatter stringFromUnit:grams];
  v43 = [v4 stringWithFormat:@" %@", v44];
  v42 = [v3 arrayWithObjects:{@"[\\d]+ ?g(\\s|\\)|$|, "}], @"g", v43, 0);
  v48[0] = v42;
  v47[1] = @"mg";
  v5 = MEMORY[0x1E695DEC8];
  v6 = MEMORY[0x1E696AEC0];
  measurementFormatter2 = [(AXMTextLayoutManager *)self measurementFormatter];
  milligrams = [MEMORY[0x1E696B060] milligrams];
  v39 = [measurementFormatter2 stringFromUnit:milligrams];
  v38 = [v6 stringWithFormat:@" %@", v39];
  v37 = [v5 arrayWithObjects:{@"[\\d]+ ?mg(\\s|\\)|$|, "}], @"mg", v38, 0);
  v48[1] = v37;
  v47[2] = @"mcg";
  v7 = MEMORY[0x1E695DEC8];
  v8 = MEMORY[0x1E696AEC0];
  measurementFormatter3 = [(AXMTextLayoutManager *)self measurementFormatter];
  micrograms = [MEMORY[0x1E696B060] micrograms];
  v34 = [measurementFormatter3 stringFromUnit:micrograms];
  v33 = [v8 stringWithFormat:@" %@", v34];
  v32 = [v7 arrayWithObjects:{@"[\\d]+ ?mcg(\\s|\\)|$|, "}], @"mcg", v33, 0);
  v48[2] = v32;
  v47[3] = @"ml";
  v9 = MEMORY[0x1E695DEC8];
  v10 = MEMORY[0x1E696AEC0];
  measurementFormatter4 = [(AXMTextLayoutManager *)self measurementFormatter];
  milliliters = [MEMORY[0x1E696B088] milliliters];
  v29 = [measurementFormatter4 stringFromUnit:milliliters];
  v28 = [v10 stringWithFormat:@" %@", v29];
  v27 = [v9 arrayWithObjects:{@"[\\d]+ ?ml(\\s|\\)|$|, "}], @"ml", v28, 0);
  v48[3] = v27;
  v47[4] = @"kcal";
  v11 = MEMORY[0x1E695DEC8];
  v12 = MEMORY[0x1E696AEC0];
  measurementFormatter5 = [(AXMTextLayoutManager *)self measurementFormatter];
  kilocalories = [MEMORY[0x1E696B030] kilocalories];
  v14 = [measurementFormatter5 stringFromUnit:kilocalories];
  v15 = [v12 stringWithFormat:@" %@", v14];
  v16 = [v11 arrayWithObjects:{@"[\\d]+ ?kcal(\\s|\\)|$|, "}], @"kcal", v15, 0);
  v48[4] = v16;
  v47[5] = @"kg";
  v17 = MEMORY[0x1E695DEC8];
  v18 = MEMORY[0x1E696AEC0];
  measurementFormatter6 = [(AXMTextLayoutManager *)self measurementFormatter];
  kilograms = [MEMORY[0x1E696B060] kilograms];
  v21 = [measurementFormatter6 stringFromUnit:kilograms];
  v22 = [v18 stringWithFormat:@" %@", v21];
  v23 = [v17 arrayWithObjects:{@"[\\d]+ ?kg(\\s|\\)|$|, "}], @"kg", v22, 0);
  v48[5] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:6];

  return v24;
}

- (id)receiptRegularExpressions
{
  v2 = MEMORY[0x1E695DEC8];
  v22 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(?:subtotal|sub total) ?[$|€|R$]? ?[\\d]+\\.[\\d][\\d]" options:1 error:&v22];
  v4 = v22;
  v21 = v4;
  v5 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(?:sales tax)(?:[\\d][\\d]\\.[\\d][\\d][\\d]?%) ?[$|€|R$]? ?[\\d]+\\.[\\d][\\d]" options:1 error:&v21];
  v6 = v21;

  v20 = v6;
  v7 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(?:total) ?[$|€|R$]? ?[\\d]+\\.[\\d][\\d]" options:1 error:&v20];
  v8 = v20;

  v19 = v8;
  v9 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"([a-zA-Z 0-9]+)([$|€]?[\\d]+\\.[\\d][\\d]) ([$|€|R$]?[\\d]+\\.[\\d][\\d])" options:1 error:&v19];
  v10 = v19;

  v18 = v10;
  v11 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"([a-zA-Z 0-9]+) ([\\d]+) ([$|€|R$]?[\\d]+\\.[\\d][\\d]) ([$|€]?[\\d]+\\.[\\d][\\d])" options:1 error:&v18];
  v12 = v18;

  v17 = v12;
  v13 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[a-zA-Z 0-9]+ [$|€|R$]?[\\d]+\\.[\\d][\\d]" options:1 error:&v17];
  v14 = v17;

  v15 = [v2 arrayWithObjects:{v3, v5, v7, v9, v11, v13, 0}];

  return v15;
}

- (id)_assembleLayoutSequences:(id)sequences
{
  v17 = *MEMORY[0x1E69E9840];
  sequencesCopy = sequences;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = sequencesCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [AXMLayoutSequence sequence:*(*(&v12 + 1) + 8 * i), v12];
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)_assembleLayoutLines:(id)lines
{
  v48 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  v4 = AXMediaLogTextLayout();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXMTextLayoutManager _assembleLayoutLines:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = linesCopy;
  v29 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v29)
  {
    v27 = *v39;
    do
    {
      v5 = 0;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * v5);
        v7 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v43 = v6;
          _os_log_debug_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEBUG, "  Next sequence: %@", buf, 0xCu);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v8 = array;
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v35;
LABEL_12:
          v12 = 0;
          while (1)
          {
            if (*v35 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v34 + 1) + 8 * v12);
            v14 = AXMediaLogTextLayout();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v43 = v13;
              _os_log_debug_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEBUG, "   Compare w/ line %@", buf, 0xCu);
            }

            [v13 height];
            v16 = v15 * 0.3;
            v17 = AXMediaLogTextLayout();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v43 = 0x403E000000000000;
              v44 = 2048;
              v45 = v16;
              _os_log_debug_impl(&dword_1AE37B000, v17, OS_LOG_TYPE_DEBUG, "   threshold (%.0f%% of lineItem.height): %.2f", buf, 0x16u);
            }

            v18 = [v13 metric:0 inProximityOfMetric:0 item:v6 threshold:v16];
            v19 = [v13 metric:1 inProximityOfMetric:1 item:v6 threshold:v16];
            v20 = v19;
            if (v18)
            {
              if (v19)
              {
                break;
              }
            }

            v21 = AXMediaLogTextLayout();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v43 = v18;
              v44 = 2048;
              *&v45 = v20;
              _os_log_debug_impl(&dword_1AE37B000, v21, OS_LOG_TYPE_DEBUG, "   sequence and line differ. height:%ld top:%ld", buf, 0x16u);
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v10)
              {
                goto LABEL_12;
              }

              goto LABEL_25;
            }
          }

          v22 = v13;

          if (!v22)
          {
            goto LABEL_30;
          }

          v23 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v32 _assembleLayoutLines:v33];
          }

          [v22 addSequence:v6];
        }

        else
        {
LABEL_25:

LABEL_30:
          v24 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v30 _assembleLayoutLines:v31];
          }

          v22 = [AXMLayoutLine line:v6];
          [v8 addObject:v22];
        }

        ++v5;
      }

      while (v5 != v29);
      v29 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v29);
  }

  return array;
}

- (id)_assembleLayoutRegions:(id)regions
{
  v50 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  v4 = AXMediaLogTextLayout();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXMTextLayoutManager _assembleLayoutRegions:];
  }

  array = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = regionsCopy;
  v31 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v31)
  {
    v29 = *v41;
    do
    {
      v5 = 0;
      do
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v40 + 1) + 8 * v5);
        v7 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v45 = v6;
          _os_log_debug_impl(&dword_1AE37B000, v7, OS_LOG_TYPE_DEBUG, "  Next line: %@", buf, 0xCu);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v8 = array;
        v9 = [v8 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
LABEL_12:
          v12 = 0;
          while (1)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v36 + 1) + 8 * v12);
            v14 = AXMediaLogTextLayout();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v45 = v13;
              _os_log_debug_impl(&dword_1AE37B000, v14, OS_LOG_TYPE_DEBUG, "   Compare w/ region %@", buf, 0xCu);
            }

            firstLine = [v13 firstLine];
            [firstLine height];
            v17 = v16 * 0.3;

            v18 = AXMediaLogTextLayout();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v45 = 0x403E000000000000;
              v46 = 2048;
              v47 = v17;
              _os_log_debug_impl(&dword_1AE37B000, v18, OS_LOG_TYPE_DEBUG, "   threshold (%.0f%% of regionItem.firstLine.height): %.2f", buf, 0x16u);
            }

            firstLine2 = [v13 firstLine];
            v20 = [firstLine2 metric:0 inProximityOfMetric:0 item:v6 threshold:v17];

            v21 = [v13 metric:6 inProximityOfMetric:6 item:v6 threshold:v17];
            v22 = [v13 metric:4 inProximityOfMetric:4 item:v6 threshold:5.0];
            if (v20)
            {
              if (v21)
              {
                break;
              }
            }

            v23 = AXMediaLogTextLayout();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v45 = v20;
              v46 = 2048;
              *&v47 = v22;
              _os_log_debug_impl(&dword_1AE37B000, v23, OS_LOG_TYPE_DEBUG, "   line and region differ. height:%ld left:%ld", buf, 0x16u);
            }

            if (v10 == ++v12)
            {
              v10 = [v8 countByEnumeratingWithState:&v36 objects:v48 count:16];
              if (v10)
              {
                goto LABEL_12;
              }

              goto LABEL_25;
            }
          }

          v24 = v13;

          if (!v24)
          {
            goto LABEL_30;
          }

          v25 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v34 _assembleLayoutRegions:v35];
          }

          [v24 addLine:v6];
        }

        else
        {
LABEL_25:

LABEL_30:
          v26 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v32 _assembleLayoutRegions:v33];
          }

          v24 = [AXMLayoutRegion region:v6];
          [v8 addObject:v24];
        }

        ++v5;
      }

      while (v5 != v31);
      v31 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v31);
  }

  return array;
}

- (id)_assembleLayoutCellsWithFeatures:(id)features
{
  v17 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = featuresCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [AXMLayoutCell sequence:*(*(&v12 + 1) + 8 * i), v12];
        [array addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)_assembleLayoutRow:(id)row
{
  v22 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [rowCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(rowCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_debug_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEBUG, "  Next cell: %@", buf, 0xCu);
        }

        if (v9)
        {
          v11 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v13 _assembleLayoutRow:v14];
          }

          if (v6)
          {
            [v6 addCell:v9];
          }

          else
          {
            v6 = [AXMLayoutRow row:v9];
          }
        }
      }

      v5 = [rowCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_assembleLayoutHeader:(id)header
{
  v22 = *MEMORY[0x1E69E9840];
  headerCopy = header;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [headerCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(headerCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_debug_impl(&dword_1AE37B000, v10, OS_LOG_TYPE_DEBUG, "  Next cell: %@", buf, 0xCu);
        }

        if (v9)
        {
          v11 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v13 _assembleLayoutHeader:v14];
          }

          if (v6)
          {
            [v6 addCell:v9];
          }

          else
          {
            v6 = [AXMLayoutHeader header:v9];
          }
        }
      }

      v5 = [headerCopy countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_assembleLayoutColumn:(id)column
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  columnCopy = column;
  reverseObjectEnumerator = [columnCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  v5 = [allObjects countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v22 = v10;
          _os_log_debug_impl(&dword_1AE37B000, v11, OS_LOG_TYPE_DEBUG, "  Next cell: %@", buf, 0xCu);
        }

        if (v10)
        {
          v12 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [(AXMTextLayoutManager *)&v15 _assembleLayoutColumn:v16];
          }

          if (v7)
          {
            [v7 addCell:v10];
          }

          else
          {
            v7 = [AXMLayoutColumn column:v10];
          }
        }
      }

      v6 = [allObjects countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_assembleLayoutRowFromCell:(id)cell
{
  v3 = [AXMLayoutCell sequence:cell];
  v4 = AXMediaLogTextLayout();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXMTextLayoutManager _assembleLayoutRowFromCell:];
  }

  if (v3)
  {
    v5 = AXMediaLogTextLayout();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [AXMTextLayoutManager _assembleLayoutRowFromCell:];
    }

    v6 = [AXMLayoutRow row:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_assembleLayoutTable:(id)table header:(id)header columnItems:(id)items
{
  v48 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  headerCopy = header;
  itemsCopy = items;
  v9 = AXMediaLogTextLayout();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AXMTextLayoutManager _assembleLayoutTable:header:columnItems:];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = tableCopy;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v16;
          _os_log_debug_impl(&dword_1AE37B000, v17, OS_LOG_TYPE_DEBUG, "  Next row: %@", buf, 0xCu);
        }

        v18 = AXMediaLogTextLayout();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
        if (v13)
        {
          if (v19)
          {
            [AXMTextLayoutManager _assembleLayoutTable:v39 header:? columnItems:?];
          }

          [v13 addRow:v16];
        }

        else
        {
          if (v19)
          {
            [AXMTextLayoutManager _assembleLayoutTable:v37 header:? columnItems:?];
          }

          v13 = [AXMLayoutTable region:headerCopy row:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = itemsCopy;
  v21 = [v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v33;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v32 + 1) + 8 * j);
        v26 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v46 = v25;
          _os_log_debug_impl(&dword_1AE37B000, v26, OS_LOG_TYPE_DEBUG, "  Next column: %@", buf, 0xCu);
        }

        if (v13)
        {
          v27 = AXMediaLogTextLayout();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            [AXMTextLayoutManager _assembleLayoutTable:v31 header:? columnItems:?];
          }

          [v13 addColumn:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v22);
  }

  return v13;
}

- (id)_assembleNutritionLabelLayoutWithRows:(id)rows
{
  v27 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  v4 = AXMediaLogTextLayout();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXMTextLayoutManager _assembleNutritionLabelLayoutWithRows:];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = rowsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_debug_impl(&dword_1AE37B000, v12, OS_LOG_TYPE_DEBUG, "  Next row: %@", buf, 0xCu);
        }

        v13 = AXMediaLogTextLayout();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          if (v14)
          {
            [(AXMTextLayoutManager *)&v18 _assembleNutritionLabelLayoutWithRows:v19];
          }

          [v8 addRow:v11];
        }

        else
        {
          if (v14)
          {
            [(AXMTextLayoutManager *)&v16 _assembleNutritionLabelLayoutWithRows:v17];
          }

          v8 = [AXMLayoutNutritionLabel region:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_assembleReceipt:(id)receipt
{
  v27 = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  v4 = AXMediaLogTextLayout();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [AXMTextLayoutManager _assembleReceipt:];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = receiptCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = AXMediaLogTextLayout();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v25 = v11;
          _os_log_debug_impl(&dword_1AE37B000, v12, OS_LOG_TYPE_DEBUG, "  Next row: %@", buf, 0xCu);
        }

        v13 = AXMediaLogTextLayout();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v8)
        {
          if (v14)
          {
            [(AXMTextLayoutManager *)&v18 _assembleReceipt:v19];
          }

          [v8 addRow:v11];
        }

        else
        {
          if (v14)
          {
            [(AXMTextLayoutManager *)&v16 _assembleReceipt:v17];
          }

          v8 = [AXMLayoutReceipt region:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)documentWithTextFeatures:(id)features canvasSize:(CGSize)size preferredLocales:(id)locales applySemanticAnalysis:(BOOL)analysis error:(id *)error
{
  analysisCopy = analysis;
  height = size.height;
  width = size.width;
  v93 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  localesCopy = locales;
  if ([featuresCopy count])
  {
    v66 = featuresCopy;
    v65 = [(AXMTextLayoutManager *)self _assembleLayoutSequences:featuresCopy];
    [(AXMTextLayoutManager *)self _assembleLayoutLines:?];
    v64 = v67 = self;
    v19 = [(AXMTextLayoutManager *)self _assembleLayoutRegions:?];
    array = [MEMORY[0x1E695DF70] array];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v19;
    v73 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v73)
    {
      v70 = *v87;
      do
      {
        v20 = 0;
        do
        {
          if (*v87 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v75 = v20;
          v21 = *(*(&v86 + 1) + 8 * v20);
          array2 = [MEMORY[0x1E695DF70] array];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v74 = v21;
          lines = [v21 lines];
          v22 = [lines countByEnumeratingWithState:&v82 objects:v91 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v83;
            do
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v83 != v24)
                {
                  objc_enumerationMutation(lines);
                }

                v26 = *(*(&v82 + 1) + 8 * i);
                array3 = [MEMORY[0x1E695DF70] array];
                v78 = 0u;
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                sequences = [v26 sequences];
                v29 = [sequences countByEnumeratingWithState:&v78 objects:v90 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v79;
                  do
                  {
                    for (j = 0; j != v30; ++j)
                    {
                      if (*v79 != v31)
                      {
                        objc_enumerationMutation(sequences);
                      }

                      feature = [*(*(&v78 + 1) + 8 * j) feature];
                      [array3 addObject:feature];
                    }

                    v30 = [sequences countByEnumeratingWithState:&v78 objects:v90 count:16];
                  }

                  while (v30);
                }

                v34 = [array3 ax_mappedArrayUsingBlock:&__block_literal_global_14];
                v35 = [v34 componentsJoinedByString:@" "];

                [v26 normalizedFrame];
                v37 = v36;
                v39 = v38;
                v41 = v40;
                v43 = v42;
                recognizedTextFeatures = [v26 recognizedTextFeatures];
                height = [AXMVisionFeature textLineWithText:v35 boundingBox:recognizedTextFeatures recognizedTextFeatures:v37 canvasSize:v39, v41, v43, width, height];

                [array2 addObject:height];
              }

              v23 = [lines countByEnumeratingWithState:&v82 objects:v91 count:16];
            }

            while (v23);
          }

          v46 = [array2 ax_mappedArrayUsingBlock:&__block_literal_global_419];
          v47 = [v46 componentsJoinedByString:@" "];

          if (analysisCopy)
          {
            semanticTextFactory = [(AXMTextLayoutManager *)v67 semanticTextFactory];
            firstObject = [localesCopy firstObject];
            v50 = [semanticTextFactory semanticTextForText:v47 withLocale:firstObject];

            isSemanticallyComplete = [v50 isSemanticallyComplete];
            transformedSpeechText = [v50 transformedSpeechText];

            v47 = transformedSpeechText;
          }

          else
          {
            isSemanticallyComplete = 1;
          }

          [v74 normalizedFrame];
          v53 = [AXMVisionFeature textRegionWithText:"textRegionWithText:isSpeakable:boundingBox:lines:canvasSize:" isSpeakable:v47 boundingBox:isSemanticallyComplete lines:array2 canvasSize:?];
          [array addObject:v53];

          v20 = v75 + 1;
        }

        while (v75 + 1 != v73);
        v73 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v73);
    }

    v54 = [array ax_filteredArrayUsingBlock:&__block_literal_global_422];
    v55 = [v54 ax_mappedArrayUsingBlock:&__block_literal_global_424];
    v56 = [v55 componentsJoinedByString:@". "];

    v57 = [v56 length] != 0;
    [AXMLayoutItem normalizedBoundingFrameForItems:obj];
    v58 = [AXMVisionFeature textDocumentWithText:"textDocumentWithText:isSpeakable:boundingBox:regions:canvasSize:" isSpeakable:v56 boundingBox:v57 regions:array canvasSize:?];

    v59 = v58;
    featuresCopy = v66;
  }

  else
  {
    v60 = _AXMMakeError(0, @"no source texts provided", v13, v14, v15, v16, v17, v18, v63);
    v58 = v60;
    if (error)
    {
      v61 = v60;
      v59 = 0;
      *error = v58;
    }

    else
    {
      v59 = 0;
    }
  }

  return v59;
}

- (id)envelopeWithTextFeatures:(id)features canvasSize:(CGSize)size preferredLocales:(id)locales applySemanticAnalysis:(BOOL)analysis error:(id *)error
{
  analysisCopy = analysis;
  height = size.height;
  width = size.width;
  v112 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  localesCopy = locales;
  if ([featuresCopy count])
  {
    v84 = featuresCopy;
    v83 = [(AXMTextLayoutManager *)self _assembleLayoutSequences:featuresCopy];
    [(AXMTextLayoutManager *)self _assembleLayoutLines:?];
    v82 = v85 = self;
    v19 = [(AXMTextLayoutManager *)self _assembleLayoutRegions:?];
    array = [MEMORY[0x1E695DF70] array];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v21 = v19;
    v90 = v21;
    v91 = [v21 countByEnumeratingWithState:&v105 objects:v111 count:16];
    if (v91)
    {
      v87 = *v106;
      v88 = array;
      do
      {
        v22 = 0;
        do
        {
          if (*v106 != v87)
          {
            objc_enumerationMutation(v21);
          }

          v93 = v22;
          v23 = *(*(&v105 + 1) + 8 * v22);
          array2 = [MEMORY[0x1E695DF70] array];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v92 = v23;
          obj = [v23 lines];
          v24 = [obj countByEnumeratingWithState:&v101 objects:v110 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v102;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v102 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v101 + 1) + 8 * i);
                array3 = [MEMORY[0x1E695DF70] array];
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                sequences = [v28 sequences];
                v31 = [sequences countByEnumeratingWithState:&v97 objects:v109 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v98;
                  do
                  {
                    for (j = 0; j != v32; ++j)
                    {
                      if (*v98 != v33)
                      {
                        objc_enumerationMutation(sequences);
                      }

                      feature = [*(*(&v97 + 1) + 8 * j) feature];
                      [array3 addObject:feature];
                    }

                    v32 = [sequences countByEnumeratingWithState:&v97 objects:v109 count:16];
                  }

                  while (v32);
                }

                v36 = [array3 ax_mappedArrayUsingBlock:&__block_literal_global_430];
                v37 = [v36 componentsJoinedByString:@" "];

                [v28 normalizedFrame];
                v39 = v38;
                v41 = v40;
                v43 = v42;
                v45 = v44;
                recognizedTextFeatures = [v28 recognizedTextFeatures];
                height = [AXMVisionFeature textLineWithText:v37 boundingBox:recognizedTextFeatures recognizedTextFeatures:v39 canvasSize:v41, v43, v45, width, height];

                [array2 addObject:height];
              }

              v25 = [obj countByEnumeratingWithState:&v101 objects:v110 count:16];
            }

            while (v25);
          }

          v48 = [array2 ax_mappedArrayUsingBlock:&__block_literal_global_432];
          v49 = [v48 componentsJoinedByString:@" "];

          if (analysisCopy)
          {
            semanticTextFactory = [(AXMTextLayoutManager *)v85 semanticTextFactory];
            firstObject = [localesCopy firstObject];
            v52 = [semanticTextFactory semanticTextForText:v49 withLocale:firstObject];

            isSemanticallyComplete = [v52 isSemanticallyComplete];
            transformedSpeechText = [v52 transformedSpeechText];

            v49 = transformedSpeechText;
          }

          else
          {
            isSemanticallyComplete = 1;
          }

          array = v88;
          v21 = v90;
          [v92 normalizedFrame];
          v55 = [AXMVisionFeature textRegionWithText:"textRegionWithText:isSpeakable:boundingBox:lines:canvasSize:" isSpeakable:v49 boundingBox:isSemanticallyComplete lines:array2 canvasSize:?];
          [v88 addObject:v55];

          v22 = v93 + 1;
        }

        while (v93 + 1 != v91);
        v91 = [v90 countByEnumeratingWithState:&v105 objects:v111 count:16];
      }

      while (v91);
    }

    v96 = [array ax_filteredArrayUsingBlock:&__block_literal_global_434];
    v56 = [v96 ax_mappedArrayUsingBlock:&__block_literal_global_436];
    v57 = [v56 componentsJoinedByString:@". "];

    height2 = [(AXMTextLayoutManager *)v85 extractDataFromEnvelopeWithFeatures:v84 preferredLocales:localesCopy canvasSize:width, height];
    firstObject2 = [height2 firstObject];
    value = [firstObject2 value];

    lastObject = [height2 lastObject];
    value2 = [lastObject value];

    if (value && value2)
    {
      v63 = MEMORY[0x1E696AEC0];
      v64 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v65 = [v64 localizedStringForKey:@"envelope.address.formatter" value:&stru_1F23EA908 table:@"Accessibility"];
      null = [v63 stringWithFormat:v65, value, value2];

      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:{null, v57, 0}];
      v68 = [null length] != 0;
      v69 = v90;
      [AXMLayoutItem normalizedBoundingFrameForItems:v90];
      v70 = v67;
      v71 = v68;
      v72 = height2;
    }

    else
    {
      v77 = MEMORY[0x1E695DEC8];
      null = [MEMORY[0x1E695DFB0] null];
      v67 = [v77 arrayWithObjects:{null, v57, 0}];
      v78 = [v57 length] != 0;
      v69 = v90;
      [AXMLayoutItem normalizedBoundingFrameForItems:v90];
      v70 = v67;
      v71 = v78;
      v72 = array;
    }

    v79 = [AXMVisionFeature envelopeWithText:"envelopeWithText:isSpeakable:boundingBox:regions:canvasSize:" isSpeakable:v70 boundingBox:v71 regions:v72 canvasSize:?];

    v74 = v79;
    v76 = v74;
    featuresCopy = v84;
  }

  else
  {
    v73 = _AXMMakeError(0, @"no source texts provided", v13, v14, v15, v16, v17, v18, v81);
    v74 = v73;
    if (error)
    {
      v75 = v73;
      v76 = 0;
      *error = v74;
    }

    else
    {
      v76 = 0;
    }
  }

  return v76;
}

- (id)extractDataFromEnvelopeWithFeatures:(id)features preferredLocales:(id)locales canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v82 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  localesCopy = locales;
  array = [MEMORY[0x1E695DF70] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v9 = featuresCopy;
  v74 = [v9 countByEnumeratingWithState:&v77 objects:v81 count:16];
  if (!v74)
  {
    v11 = 0;
    goto LABEL_29;
  }

  v10 = 0;
  v11 = 0;
  x = *MEMORY[0x1E695F058];
  y = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v14 = *(MEMORY[0x1E695F058] + 24);
  v72 = *v78;
  v71 = 0.0;
  v16 = 0.005;
  v73 = 0.0;
  v70 = 0.0;
  v17 = 0.0;
  do
  {
    for (i = 0; i != v74; ++i)
    {
      if (*v78 != v72)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v77 + 1) + 8 * i);
      v76 = 0;
      v20 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:16 error:&v76];
      v21 = v76;
      value = [v19 value];
      value2 = [v19 value];
      v24 = [v20 numberOfMatchesInString:value options:0 range:{0, objc_msgSend(value2, "length")}];

      if (v24)
      {
        if (v10)
        {
          [v19 normalizedFrame];
          if (vabdd_f64(v25, v73) < v16)
          {
            [v19 normalizedFrame];
            if (v71 - v26 < v70 + 0.01)
            {
              v27 = MEMORY[0x1E696AEC0];
              value3 = [v19 value];
              value4 = [v27 stringWithFormat:@"%@, %@", v11, value3];

              [v19 normalizedFrame];
              v88.origin.x = v30;
              v88.origin.y = v31;
              v88.size.width = v32;
              v88.size.height = v33;
              v84.origin.x = x;
              v84.origin.y = y;
              v84.size.width = v15;
              v84.size.height = v14;
              v85 = CGRectUnion(v84, v88);
              x = v85.origin.x;
              y = v85.origin.y;
              v15 = v85.size.width;
              v14 = v85.size.height;
              goto LABEL_17;
            }
          }
        }

        else
        {
          value4 = [v19 value];

          [v19 normalizedFrame];
          x = v47;
          y = v48;
          v15 = v49;
          v14 = v50;
          [v19 confidence];
          v17 = v51;
          v10 = [v9 indexOfObject:v19];
LABEL_17:
          v11 = value4;
        }

        [v19 normalizedFrame];
        v70 = v52;
        [v19 normalizedFrame];
        v73 = v53;
        [v19 normalizedFrame];
        v71 = v54;
        goto LABEL_25;
      }

      if (!v10)
      {
        goto LABEL_25;
      }

      v34 = [v9 objectAtIndexedSubscript:v10 - 1];
      v35 = [v9 objectAtIndexedSubscript:v10];
      [v34 normalizedFrame];
      v68 = v35;
      v69 = v34;
      if (vabdd_f64(x, v36) >= v16)
      {
        v43 = v11;
      }

      else
      {
        v65 = v17;
        v37 = v16;
        v38 = width;
        v39 = height;
        [v34 normalizedFrame];
        v41 = v40 - y;
        [v35 normalizedFrame];
        v43 = v11;
        if (v41 < v42 + 0.01)
        {
          v44 = MEMORY[0x1E696AEC0];
          value5 = [v34 value];
          v46 = [v44 stringWithFormat:@"%@, %@", value5, v11];

          [v34 normalizedFrame];
          v89.origin.x = x;
          v89.origin.y = y;
          v89.size.width = v15;
          v89.size.height = v14;
          v87 = CGRectUnion(v86, v89);
          x = v87.origin.x;
          y = v87.origin.y;
          v15 = v87.size.width;
          v14 = v87.size.height;
          v43 = v46;
        }

        height = v39;
        width = v38;
        v16 = v37;
        v17 = v65;
      }

      v55 = v9;
      firstObject = [localesCopy firstObject];
      localeIdentifier = [firstObject localeIdentifier];
      if ([localeIdentifier isEqual:@"en-US"])
      {

LABEL_23:
        v75 = v43;
        [AXMAddressFormatter replaceDirectionalAbbreviations:&v75];
        v61 = v75;

        v43 = v61;
        goto LABEL_24;
      }

      firstObject2 = [localesCopy firstObject];
      localeIdentifier2 = [firstObject2 localeIdentifier];
      v60 = [localeIdentifier2 isEqual:@"en-CA"];

      if (v60)
      {
        goto LABEL_23;
      }

LABEL_24:
      v9 = v55;
      v11 = v43;
      height = [AXMVisionFeature envelopeRegion:v43 boundingBox:x confidence:y canvasSize:v15, v14, v17, width, height];
      [array addObject:height];

      v10 = 0;
LABEL_25:
    }

    v74 = [v9 countByEnumeratingWithState:&v77 objects:v81 count:16];
  }

  while (v74);
LABEL_29:

  v63 = [array sortedArrayUsingComparator:&__block_literal_global_454];

  return v63;
}

uint64_t __88__AXMTextLayoutManager_extractDataFromEnvelopeWithFeatures_preferredLocales_canvasSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 normalizedFrame];
  v7 = v6;
  [v5 normalizedFrame];
  if (v7 >= v8)
  {
    [v4 normalizedFrame];
    v11 = v10;
    [v5 normalizedFrame];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (id)documentWithTable:(id)table canvasSize:(CGSize)size preferredLocales:(id)locales requestHandler:(id)handler metrics:(id)metrics error:(id *)error
{
  height = size.height;
  width = size.width;
  v174[1] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  localesCopy = locales;
  handlerCopy = handler;
  metricsCopy = metrics;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v129 = metricsCopy;
  v130 = localesCopy;
  v138 = array2;
  v139 = handlerCopy;
  if (!tableCopy)
  {
    v42 = array2;
    v137 = 0;
    v128 = 0;
    v43 = 0;
    goto LABEL_22;
  }

  [tableCopy extent];
  v20 = v19;
  [tableCopy extent];
  v22 = [(AXMTextLayoutManager *)self preprocessTable:tableCopy width:v20 height:v21 metrics:metricsCopy];
  v23 = [objc_alloc(getVNImageRequestHandlerClass_0()) initWithCIImage:v22 options:MEMORY[0x1E695E0F8]];
  v24 = objc_alloc_init(getVNDetectContoursRequestClass());
  v174[0] = v24;
  v25 = 1;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:1];
  v168 = 0;
  v27 = [v23 performRequests:v26 error:&v168];
  v144 = v168;

  v146 = v24;
  if (v27)
  {
    obj = v23;
    results = [v24 results];
    firstObject = [results firstObject];

    v135 = [(AXMTextLayoutManager *)self sortContourRowResults:firstObject maxWidth:0.9 maxHeight:0.5 minWidth:0.0 minHeight:0.0];
    v30 = [(AXMTextLayoutManager *)self getTableRows:?];
    reverseObjectEnumerator = [v30 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v33 = allObjects;
    v34 = firstObject;

    v35 = [(AXMTextLayoutManager *)self sortContourColumnResults:firstObject maxWidth:0.5 maxHeight:0.5];
    v137 = [(AXMTextLayoutManager *)self getTableColumns:v35];
    v25 = [(AXMTextLayoutManager *)self verifyTable:v33 sortedColumns:?];
    v133 = v35;
    if (v25)
    {
      v125 = v22;
      v127 = v33;
      v131 = tableCopy;
      height = [(AXMTextLayoutManager *)self textRowsForTable:v33 sourceImage:tableCopy requestHandler:v139 canvasSize:width, height];
      if ([height count])
      {
        v37 = 0;
        v38 = 0;
        do
        {
          v39 = [height objectAtIndex:v37];
          v40 = [(AXMTextLayoutManager *)self _assembleLayoutCellsWithFeatures:v39];
          if (v37)
          {
            v41 = [(AXMTextLayoutManager *)self _assembleLayoutRow:v40];
            [array addObject:v41];
          }

          else
          {
            [(AXMTextLayoutManager *)self _assembleLayoutHeader:v40];
            v38 = v41 = v38;
          }

          ++v37;
        }

        while ([height count] > v37);
      }

      else
      {
        v38 = 0;
      }

      height2 = [(AXMTextLayoutManager *)self textColumnsForTable:v137 sourceImage:v131 requestHandler:v139 canvasSize:width, height];
      if ([height2 count])
      {
        v46 = 0;
        do
        {
          v47 = [height2 objectAtIndex:v46];
          v48 = [(AXMTextLayoutManager *)self _assembleLayoutCellsWithFeatures:v47];
          v49 = [(AXMTextLayoutManager *)self _assembleLayoutColumn:v48];
          [v138 addObject:v49];

          ++v46;
        }

        while ([height2 count] > v46);
      }

      localesCopy = v130;
      tableCopy = v131;
      v44 = v139;
      v33 = v127;
      metricsCopy = v129;
      v43 = v38;
      v22 = v125;
    }

    else
    {
      v43 = 0;
      v44 = v139;
    }

    v23 = obj;
  }

  else
  {
    v137 = 0;
    v33 = 0;
    v43 = 0;
    v44 = v139;
  }

  if (v25)
  {
    v128 = v33;
    v42 = v138;
LABEL_22:
    v50 = [array copy];
    v51 = [v42 copy];
    v52 = [(AXMTextLayoutManager *)self _assembleLayoutTable:v50 header:v43 columnItems:v51];

    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    array5 = [MEMORY[0x1E695DF70] array];
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    cells = [v43 cells];
    v56 = [cells countByEnumeratingWithState:&v164 objects:v173 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v165;
      do
      {
        for (i = 0; i != v57; ++i)
        {
          if (*v165 != v58)
          {
            objc_enumerationMutation(cells);
          }

          feature = [*(*(&v164 + 1) + 8 * i) feature];
          [array5 addObject:feature];
        }

        v57 = [cells countByEnumeratingWithState:&v164 objects:v173 count:16];
      }

      while (v57);
    }

    v132 = tableCopy;

    v61 = [array5 count];
    v62 = [array5 ax_mappedArrayUsingBlock:&__block_literal_global_456];
    v63 = [v62 componentsJoinedByString:{@", "}];

    v134 = v43;
    [v43 normalizedFrame];
    v124 = v63;
    v126 = array5;
    v123 = [AXMVisionFeature tableRowWithText:"tableRowWithText:boundingBox:cells:canvasSize:" boundingBox:v63 cells:array5 canvasSize:?];
    [array3 addObject:?];
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v136 = v52;
    obja = [v52 rows];
    v64 = [obja countByEnumeratingWithState:&v160 objects:v172 count:16];
    v145 = array3;
    if (v64)
    {
      v65 = v64;
      v66 = *v161;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v161 != v66)
          {
            objc_enumerationMutation(obja);
          }

          v68 = *(*(&v160 + 1) + 8 * j);
          array6 = [MEMORY[0x1E695DF70] array];
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v159 = 0u;
          cells2 = [v68 cells];
          v71 = [cells2 countByEnumeratingWithState:&v156 objects:v171 count:16];
          if (v71)
          {
            v72 = v71;
            v73 = *v157;
            do
            {
              for (k = 0; k != v72; ++k)
              {
                if (*v157 != v73)
                {
                  objc_enumerationMutation(cells2);
                }

                feature2 = [*(*(&v156 + 1) + 8 * k) feature];
                [array6 addObject:feature2];
              }

              v72 = [cells2 countByEnumeratingWithState:&v156 objects:v171 count:16];
            }

            while (v72);
          }

          v61 = v61 + [array6 count];
          v76 = [array6 ax_mappedArrayUsingBlock:&__block_literal_global_461];
          v77 = [v76 componentsJoinedByString:{@", "}];

          [v68 normalizedFrame];
          v78 = [AXMVisionFeature tableRowWithText:"tableRowWithText:boundingBox:cells:canvasSize:" boundingBox:v77 cells:array6 canvasSize:?];
          array3 = v145;
          [v145 addObject:v78];
        }

        v65 = [obja countByEnumeratingWithState:&v160 objects:v172 count:16];
      }

      while (v65);
    }

    v79 = [array3 ax_mappedArrayUsingBlock:&__block_literal_global_463];
    v122 = [v79 componentsJoinedByString:@" "];;

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    objb = [v136 columns];
    v80 = [objb countByEnumeratingWithState:&v152 objects:v170 count:16];
    v81 = array4;
    if (v80)
    {
      v82 = v80;
      v83 = *v153;
      do
      {
        for (m = 0; m != v82; ++m)
        {
          if (*v153 != v83)
          {
            objc_enumerationMutation(objb);
          }

          v85 = *(*(&v152 + 1) + 8 * m);
          array7 = [MEMORY[0x1E695DF70] array];
          v148 = 0u;
          v149 = 0u;
          v150 = 0u;
          v151 = 0u;
          cells3 = [v85 cells];
          v88 = [cells3 countByEnumeratingWithState:&v148 objects:v169 count:16];
          if (v88)
          {
            v89 = v88;
            v90 = *v149;
            do
            {
              for (n = 0; n != v89; ++n)
              {
                if (*v149 != v90)
                {
                  objc_enumerationMutation(cells3);
                }

                feature3 = [*(*(&v148 + 1) + 8 * n) feature];
                [array7 addObject:feature3];
              }

              v89 = [cells3 countByEnumeratingWithState:&v148 objects:v169 count:16];
            }

            while (v89);
          }

          v93 = [array7 ax_mappedArrayUsingBlock:&__block_literal_global_468];
          v94 = [v93 componentsJoinedByString:{@", "}];

          [v85 normalizedFrame];
          v95 = [AXMVisionFeature tableColumnWithText:"tableColumnWithText:boundingBox:cells:canvasSize:" boundingBox:v94 cells:array7 canvasSize:?];
          v81 = array4;
          [array4 addObject:v95];
        }

        v82 = [objb countByEnumeratingWithState:&v152 objects:v170 count:16];
      }

      while (v82);
    }

    v96 = MEMORY[0x1E696AEC0];
    v97 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v98 = [v97 localizedStringForKey:@"math.table.row.format" value:&stru_1F23EA908 table:@"Accessibility"];
    v99 = [v96 localizedStringWithFormat:v98, objc_msgSend(v145, "count")];

    v100 = MEMORY[0x1E696AEC0];
    v101 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v102 = [v101 localizedStringForKey:@"math.table.column.format" value:&stru_1F23EA908 table:@"Accessibility"];
    v103 = [v100 localizedStringWithFormat:v102, objc_msgSend(v81, "count")];

    v103 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v99, v103];
    v105 = [v145 count];
    v106 = v61 / ([v81 count] * v105) * 100.0;
    v107 = v106 < 100.0 && v106 >= 60.0;
    if (v107)
    {
      v108 = MEMORY[0x1E696AEC0];
      v109 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v110 = [v109 localizedStringForKey:@"table.incomplete" value:&stru_1F23EA908 table:@"Accessibility"];
      v104 = [v108 localizedStringWithFormat:v110, v103];

      v103 = v104;
      v112 = v138;
    }

    else
    {
      v112 = v138;
      if (v106 < 60.0)
      {
        v113 = 0;
        v114 = v139;
        v115 = v145;
        v116 = v136;
        v117 = array4;
        v118 = v122;
LABEL_65:

        v33 = v128;
        metricsCopy = v129;
        v44 = v114;
        localesCopy = v130;
        tableCopy = v132;
        goto LABEL_67;
      }
    }

    v119 = [v122 length] != 0;
    v116 = v136;
    [v136 normalizedFrame];
    v120 = v119;
    v115 = v145;
    v118 = v122;
    v117 = array4;
    v113 = [AXMVisionFeature tableWithText:"tableWithText:isSpeakable:boundingBox:rows:columns:canvasSize:isIncomplete:" isSpeakable:v103 boundingBox:v120 rows:v145 columns:array4 canvasSize:v107 isIncomplete:?];
    v114 = v139;
    goto LABEL_65;
  }

  v134 = v43;
  v113 = 0;
  v112 = v138;
LABEL_67:

  return v113;
}

- (id)documentWithNutritionLabel:(id)label canvasSize:(CGSize)size requestHandler:(id)handler metrics:(id)metrics error:(id *)error
{
  height = size.height;
  width = size.width;
  v107[1] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  handlerCopy = handler;
  v13 = *(MEMORY[0x1E695F058] + 16);
  v102 = *MEMORY[0x1E695F058];
  v103 = v13;
  properties = [labelCopy properties];
  v15 = [properties objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  integerValue = [v15 integerValue];

  if (integerValue == 6)
  {
    v17 = [labelCopy imageByApplyingOrientation:6];

    labelCopy = v17;
  }

  v18 = [(AXMTextLayoutManager *)self preprocessNutritionLabel:labelCopy finalFrame:&v102];
  v19 = [objc_alloc(getVNImageRequestHandlerClass_0()) initWithCIImage:v18 options:MEMORY[0x1E695E0F8]];
  v20 = objc_alloc_init(getVNDetectContoursRequestClass());
  v107[0] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:1];
  v22 = [v19 performRequests:v21 error:0];

  v23 = 0;
  if (v22)
  {
    v83 = v20;
    v84 = v19;
    results = [v20 results];
    firstObject = [results firstObject];

    v82 = firstObject;
    v26 = [(AXMTextLayoutManager *)self sortContourRowResults:firstObject maxWidth:1.0 maxHeight:1.0 minWidth:0.0 minHeight:0.0];
    reverseObjectEnumerator = [v26 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v87 = labelCopy;
    [labelCopy extent];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v85 = v18;
    [v18 extent];
    v81 = allObjects;
    v80 = [(AXMTextLayoutManager *)self nutritionLabelRowsForContourResults:allObjects normalizedNutritionLabelFrame:v102 fullImageFrame:v103 processedImageFrame:v30, v32, v34, v36, v37, v38, v39, v40];
    v86 = handlerCopy;
    v41 = [(AXMTextLayoutManager *)self featureCellsForNutritionLabelRows:width withRequestHandler:height withCanvasSize:?];
    array = [MEMORY[0x1E695DF70] array];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v43 = v41;
    v44 = [v43 countByEnumeratingWithState:&v98 objects:v106 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v99;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v99 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v98 + 1) + 8 * i);
          value = [v48 value];
          v50 = [value isEqualToString:&stru_1F23EA908];

          if ((v50 & 1) == 0)
          {
            v51 = [(AXMTextLayoutManager *)self _assembleLayoutRowFromCell:v48];
            [array addObject:v51];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v98 objects:v106 count:16];
      }

      while (v45);
    }

    v78 = v43;

    v79 = array;
    v52 = [array copy];
    v53 = [(AXMTextLayoutManager *)self _assembleNutritionLabelLayoutWithRows:v52];

    array2 = [MEMORY[0x1E695DF70] array];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v77 = v53;
    obj = [v53 rows];
    v54 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v95;
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v95 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v94 + 1) + 8 * j);
          array3 = [MEMORY[0x1E695DF70] array];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          cells = [v58 cells];
          v61 = [cells countByEnumeratingWithState:&v90 objects:v104 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v91;
            do
            {
              for (k = 0; k != v62; ++k)
              {
                if (*v91 != v63)
                {
                  objc_enumerationMutation(cells);
                }

                feature = [*(*(&v90 + 1) + 8 * k) feature];
                [array3 addObject:feature];
              }

              v62 = [cells countByEnumeratingWithState:&v90 objects:v104 count:16];
            }

            while (v62);
          }

          v66 = [array3 ax_mappedArrayUsingBlock:&__block_literal_global_482];
          v67 = [v66 componentsJoinedByString:{@", "}];

          [v58 normalizedFrame];
          v68 = [AXMVisionFeature tableRowWithText:"tableRowWithText:boundingBox:cells:canvasSize:" boundingBox:v67 cells:array3 canvasSize:?];
          [array2 addObject:v68];
        }

        v55 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
      }

      while (v55);
    }

    v69 = MEMORY[0x1E696AEC0];
    v70 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v71 = [v70 localizedStringForKey:@"nutrition.label.row.format" value:&stru_1F23EA908 table:@"Accessibility"];
    v72 = [v69 stringWithFormat:v71, objc_msgSend(array2, "count")];

    v73 = [array2 ax_mappedArrayUsingBlock:&__block_literal_global_487];
    v74 = [v73 componentsJoinedByString:@" "];;

    v75 = [v74 length] != 0;
    [v77 normalizedFrame];
    v23 = [AXMVisionFeature nutritionLabelWithText:"nutritionLabelWithText:isSpeakable:boundingBox:rows:canvasSize:" isSpeakable:v72 boundingBox:v75 rows:array2 canvasSize:?];

    handlerCopy = v86;
    labelCopy = v87;
    v19 = v84;
    v18 = v85;
    v20 = v83;
  }

  return v23;
}

- (id)documentWithReceipt:(id)receipt withTextSkew:(double)skew canvasSize:(CGSize)size preferredLocales:(id)locales requestHandler:(id)handler metrics:(id)metrics error:(id *)error
{
  height = size.height;
  width = size.width;
  v106[1] = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  localesCopy = locales;
  handlerCopy = handler;
  metricsCopy = metrics;
  [MEMORY[0x1E695DF70] array];
  v79 = v78 = receiptCopy;
  v99 = 0.0;
  v100 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v101 = _Q0;
  if (!receiptCopy)
  {
    goto LABEL_20;
  }

  v82 = _Q0;
  [receiptCopy extent];
  v23 = v22;
  [receiptCopy extent];
  v25 = [(AXMTextLayoutManager *)self preprocessReceipt:receiptCopy withTextSkew:v23 width:v24 height:metricsCopy metrics:handlerCopy requestHandler:&v99 finalFrame:skew];
  v26 = [objc_alloc(getVNImageRequestHandlerClass_0()) initWithCIImage:v25 options:MEMORY[0x1E695E0F8]];
  v27 = objc_alloc_init(getVNRecognizeTextRequestClass_0());
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [v27 setRecognitionLanguages:preferredLanguages];

  [v27 setRecognitionLevel:0];
  [v27 setUsesLanguageCorrection:0];
  v106[0] = v27;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:1];
  v98 = 0;
  v30 = [v26 performRequests:v29 error:&v98];
  v31 = v98;

  if (v30)
  {
    results = [v27 results];
    if (![results count])
    {
      v33 = [objc_alloc(getVNImageRequestHandlerClass_0()) initWithCIImage:v78 options:MEMORY[0x1E695E0F8]];

      v105 = v27;
      v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v105 count:1];
      v97 = v31;
      v35 = [v33 performRequests:v34 error:&v97];
      v36 = v97;

      if (v35)
      {
        results2 = [v27 results];

        v99 = 0.0;
        v100 = 0.0;
        results = results2;
        v101 = v82;
      }

      goto LABEL_8;
    }
  }

  else
  {
    results = 0;
  }

  v36 = v31;
  v33 = v26;
LABEL_8:
  if ([results count])
  {
    v72 = v36;
    v73 = v33;
    obj = v27;
    v83 = v25;
    v71 = [results sortedArrayUsingComparator:&__block_literal_global_491];
    v38 = [(AXMTextLayoutManager *)self getReceiptRows:width preferredLocales:height canvasSize:?];
    array = [MEMORY[0x1E695DF70] array];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v40 = v38;
    v41 = [v40 countByEnumeratingWithState:&v93 objects:v104 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v94;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v94 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v93 + 1) + 8 * i);
          value = [v45 value];
          v47 = [value isEqual:&stru_1F23EA908];

          if ((v47 & 1) == 0)
          {
            [array addObject:v45];
            v48 = [(AXMTextLayoutManager *)self _assembleLayoutRowFromCell:v45];
            [v79 addObject:v48];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v93 objects:v104 count:16];
      }

      while (v42);
    }

    v27 = obj;
    v25 = v83;
    v33 = v73;
    v36 = v72;
  }

LABEL_20:
  v49 = [v79 copy];
  v50 = [(AXMTextLayoutManager *)self _assembleReceipt:v49];

  array2 = [MEMORY[0x1E695DF70] array];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = v50;
  obja = [v50 rows];
  v51 = [obja countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v90;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v90 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v55 = *(*(&v89 + 1) + 8 * j);
        array3 = [MEMORY[0x1E695DF70] array];
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        cells = [v55 cells];
        v58 = [cells countByEnumeratingWithState:&v85 objects:v102 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v86;
          do
          {
            for (k = 0; k != v59; ++k)
            {
              if (*v86 != v60)
              {
                objc_enumerationMutation(cells);
              }

              feature = [*(*(&v85 + 1) + 8 * k) feature];
              [array3 addObject:feature];
            }

            v59 = [cells countByEnumeratingWithState:&v85 objects:v102 count:16];
          }

          while (v59);
        }

        v63 = [array3 ax_mappedArrayUsingBlock:&__block_literal_global_493];
        v64 = [v63 componentsJoinedByString:{@", "}];

        [v55 normalizedFrame];
        v65 = [AXMVisionFeature tableRowWithText:"tableRowWithText:boundingBox:cells:canvasSize:" boundingBox:v64 cells:array3 canvasSize:?];
        [array2 addObject:v65];
      }

      v52 = [obja countByEnumeratingWithState:&v89 objects:v103 count:16];
    }

    while (v52);
  }

  v66 = [array2 ax_mappedArrayUsingBlock:&__block_literal_global_495];
  v67 = [v66 componentsJoinedByString:@" "];;

  v68 = [v67 length] != 0;
  height = [AXMVisionFeature receiptWithText:v67 isSpeakable:v68 boundingBox:array2 regions:v99 canvasSize:v100, v101, width, height];

  return height;
}

uint64_t __114__AXMTextLayoutManager_documentWithReceipt_withTextSkew_canvasSize_preferredLocales_requestHandler_metrics_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 boundingBox];
  MaxY = CGRectGetMaxY(v16);
  [v5 boundingBox];
  if (MaxY >= CGRectGetMaxY(v17))
  {
    [v4 boundingBox];
    v8 = CGRectGetMaxY(v18);
    [v5 boundingBox];
    if (v8 <= CGRectGetMaxY(v19) && ([v4 boundingBox], v10 = v9, objc_msgSend(v5, "boundingBox"), v10 >= v11))
    {
      [v4 boundingBox];
      v13 = v12;
      [v5 boundingBox];
      v7 = v13 > v14;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)preprocessTable:(id)table width:(unint64_t)width height:(unint64_t)height metrics:(id)metrics
{
  v85[2] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  metricsCopy = metrics;
  v73 = tableCopy;
  v9 = [tableCopy imageByApplyingFilter:@"CIPhotoEffectNoir"];
  v10 = [v9 imageByApplyingFilter:@"CIColorInvert"];

  v68 = *MEMORY[0x1E695FA68];
  v11 = *MEMORY[0x1E695FA68];
  v69 = *MEMORY[0x1E695FA88];
  v84[0] = *MEMORY[0x1E695FA88];
  v84[1] = v11;
  v85[0] = &unk_1F240B150;
  v85[1] = &unk_1F240B160;
  v12 = 0x1E695D000uLL;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v14 = [v10 imageByApplyingFilter:@"CIColorControls" withInputParameters:v13];

  v15 = [v14 imageByApplyingFilter:@"CIColorThresholdOtsu"];

  heightCopy = height;
  v16 = (height / 0x1E);
  v17 = v15;
  v18 = 3;
  v19 = v16;
  v66 = v17;
  do
  {
    v20 = v17;
    imageByClampingToExtent = [v17 imageByClampingToExtent];
    v82[1] = @"inputHeight";
    v83[0] = &unk_1F240A8D0;
    v82[0] = @"inputWidth";
    *&v22 = v19;
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    v83[1] = v23;
    [*(v12 + 3872) dictionaryWithObjects:v83 forKeys:v82 count:2];
    v25 = v24 = v12;
    v26 = [imageByClampingToExtent imageByApplyingFilter:@"AXMCIMorphologyRectangleMinimum" withInputParameters:v25];
    [tableCopy extent];
    v17 = [v26 imageByCroppingToRect:?];

    v12 = v24;
    --v18;
  }

  while (v18);
  v27 = 3;
  do
  {
    v28 = v17;
    imageByClampingToExtent2 = [v17 imageByClampingToExtent];
    v80[1] = @"inputHeight";
    v81[0] = &unk_1F240A8D0;
    v80[0] = @"inputWidth";
    *&v30 = v19;
    v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
    v81[1] = v31;
    v32 = [*(v12 + 3872) dictionaryWithObjects:v81 forKeys:v80 count:2];
    v33 = [imageByClampingToExtent2 imageByApplyingFilter:@"AXMCIMorphologyRectangleMaximum" withInputParameters:v32];
    [tableCopy extent];
    v17 = [v33 imageByCroppingToRect:?];

    v12 = v24;
    v34 = @"inputWidth";

    --v27;
  }

  while (v27);
  v65 = v17;
  v35 = v66;
  v36 = 3;
  v67 = v35;
  v37 = v12;
  v38 = 0x1E696A000uLL;
  do
  {
    v39 = v35;
    imageByClampingToExtent3 = [v35 imageByClampingToExtent];
    v78[0] = v34;
    *&v41 = (width / 0x28);
    [*(v38 + 3480) numberWithFloat:v41];
    v43 = v42 = v34;
    v78[1] = @"inputHeight";
    v79[0] = v43;
    v79[1] = &unk_1F240A8D0;
    [*(v37 + 3872) dictionaryWithObjects:v79 forKeys:v78 count:2];
    v45 = v44 = v37;
    [imageByClampingToExtent3 imageByApplyingFilter:@"AXMCIMorphologyRectangleMinimum" withInputParameters:v45];
    v47 = v46 = v38;
    [v73 extent];
    v35 = [v47 imageByCroppingToRect:?];

    v38 = v46;
    v37 = v44;

    v34 = v42;
    --v36;
  }

  while (v36);
  v48 = 3;
  do
  {
    v49 = v35;
    imageByClampingToExtent4 = [v35 imageByClampingToExtent];
    v76[0] = v34;
    *&v51 = (width / 0x28);
    v52 = [*(v38 + 3480) numberWithFloat:v51];
    v76[1] = @"inputHeight";
    v77[0] = v52;
    v77[1] = &unk_1F240A8D0;
    v53 = [*(v37 + 3872) dictionaryWithObjects:v77 forKeys:v76 count:2];
    v54 = [imageByClampingToExtent4 imageByApplyingFilter:@"AXMCIMorphologyRectangleMaximum" withInputParameters:v53];
    [v73 extent];
    v35 = [v54 imageByCroppingToRect:?];

    v38 = v46;
    v37 = v44;

    v34 = v42;
    --v48;
  }

  while (v48);
  v55 = [v65 mergeWithImage:v35 withSize:metricsCopy withMetrics:{width, heightCopy}];
  v74[0] = v69;
  v74[1] = v68;
  v75[0] = &unk_1F240B150;
  v75[1] = &unk_1F240B170;
  v56 = [*(v44 + 3872) dictionaryWithObjects:v75 forKeys:v74 count:2];
  v57 = [v55 imageByApplyingFilter:@"CIColorControls" withInputParameters:v56];

  v58 = [v57 imageByApplyingFilter:@"CIColorInvert"];

  v59 = 3;
  do
  {
    v60 = v58;
    imageByClampingToExtent5 = [v58 imageByClampingToExtent];
    v62 = [imageByClampingToExtent5 imageByApplyingFilter:@"AXMCIMorphologyRectangleMinimum" withInputParameters:&unk_1F240B5E0];
    [v73 extent];
    v58 = [v62 imageByCroppingToRect:?];

    --v59;
  }

  while (v59);
  v63 = [v58 imageByApplyingFilter:@"CIColorThresholdOtsu"];

  return v63;
}

- (id)preprocessNutritionLabel:(id)label finalFrame:(CGRect *)frame
{
  v62[4] = *MEMORY[0x1E69E9840];
  labelCopy = label;
  v7 = *MEMORY[0x1E695FA88];
  v61[0] = *MEMORY[0x1E695FAB0];
  v61[1] = v7;
  v62[0] = labelCopy;
  v62[1] = &unk_1F240B150;
  v8 = *MEMORY[0x1E695FB18];
  v61[2] = *MEMORY[0x1E695FA68];
  v61[3] = v8;
  v62[2] = &unk_1F240B180;
  v62[3] = &unk_1F240B190;
  v9 = 0x1E695D000uLL;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:4];
  v11 = [labelCopy imageByApplyingFilter:@"CIColorControls" withInputParameters:v10];

  v12 = [v11 imageByApplyingFilter:@"CIColorInvert"];

  v13 = [(AXMTextLayoutManager *)self largestDetectedContoursForImage:v12];
  if ([v13 count])
  {
    [labelCopy extent];
    v54 = v13;
    [(AXMTextLayoutManager *)self detectCenterContourFromContours:v13 withImageExtent:?];
    frame->origin.x = v14;
    frame->origin.y = v15;
    frame->size.width = v16;
    frame->size.height = v17;
    [labelCopy extent];
    v19 = v18;
    v56 = labelCopy;
    [labelCopy extent];
    [(AXMTextLayoutManager *)self imageRectForNormalizedRect:v19 imageWidth:v20 imageHeight:frame->origin.x, frame->origin.y, frame->size.width, frame->size.height];
    v55 = v12;
    v21 = [v12 imageByCroppingToRect:?];
    [v21 extent];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v21 extent];
    v31 = v30 / 55.0;
    v32 = v21;
    v33 = 6;
    v34 = @"inputWidth";
    v53 = v32;
    do
    {
      v35 = v32;
      imageByClampingToExtent = [v32 imageByClampingToExtent];
      v59[0] = v34;
      [MEMORY[0x1E696AD98] numberWithDouble:v31];
      v38 = v37 = v34;
      v59[1] = @"inputHeight";
      v60[0] = v38;
      v60[1] = &unk_1F240A8D0;
      [*(v9 + 3872) dictionaryWithObjects:v60 forKeys:v59 count:2];
      v40 = v39 = v9;
      v41 = [imageByClampingToExtent imageByApplyingFilter:@"AXMCIMorphologyRectangleMinimum" withInputParameters:v40];
      v32 = [v41 imageByCroppingToRect:{v23, v25, v27, v29}];

      v9 = v39;
      v34 = v37;

      --v33;
    }

    while (v33);
    v42 = v31 + 40.0;
    v43 = 6;
    do
    {
      v44 = v32;
      imageByClampingToExtent2 = [v32 imageByClampingToExtent];
      v57[0] = v34;
      v46 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
      v57[1] = @"inputHeight";
      v58[0] = v46;
      v58[1] = &unk_1F240A8D0;
      v47 = [*(v9 + 3872) dictionaryWithObjects:v58 forKeys:v57 count:2];
      v48 = [imageByClampingToExtent2 imageByApplyingFilter:@"AXMCIMorphologyRectangleMaximum" withInputParameters:v47];
      v32 = [v48 imageByCroppingToRect:{v23, v25, v27, v29}];

      v9 = v39;
      v34 = v37;

      --v43;
    }

    while (v43);
    v49 = [v32 imageByApplyingFilter:@"CIColorInvert"];

    [v53 extent];
    v51 = [v49 addBorderWithBorderSize:v50 * 0.01];

    v12 = v55;
    labelCopy = v56;
    v13 = v54;
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

- (id)preprocessReceipt:(id)receipt withTextSkew:(double)skew width:(unint64_t)width height:(unint64_t)height metrics:(id)metrics requestHandler:(id)handler finalFrame:(CGRect *)frame
{
  v48[3] = *MEMORY[0x1E69E9840];
  receiptCopy = receipt;
  v14 = [receiptCopy imageByApplyingFilter:@"CIColorThresholdOtsu"];
  v15 = *MEMORY[0x1E695FA68];
  v47[0] = *MEMORY[0x1E695FA88];
  v47[1] = v15;
  v48[0] = &unk_1F240B150;
  v48[1] = &unk_1F240B170;
  v47[2] = *MEMORY[0x1E695FB18];
  v48[2] = &unk_1F240B190;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
  v17 = [v14 imageByApplyingFilter:@"CIColorControls" withInputParameters:v16];

  v18 = [(AXMTextLayoutManager *)self largestDetectedContoursForImage:v17];
  v19 = [v18 count];
  [receiptCopy extent];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  if (v19)
  {
    [(AXMTextLayoutManager *)self detectCenterContourFromContours:v18 withImageExtent:v21, v23, v25, v27];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [(AXMTextLayoutManager *)self imageRectForNormalizedRect:width imageWidth:height imageHeight:?];
    v21 = v36;
    v23 = v37;
    v25 = v38;
    v27 = v39;
  }

  else
  {
    v33 = 1.0;
    v29 = 0.0;
    v31 = 0.0;
    v35 = 1.0;
  }

  frame->origin.x = v29;
  frame->origin.y = v31;
  frame->size.width = v33;
  frame->size.height = v35;
  v40 = [v17 imageByCroppingToRect:{v21, v23, v25, v27}];
  v41 = *(MEMORY[0x1E695EFD0] + 16);
  *&v46.a = *MEMORY[0x1E695EFD0];
  *&v46.c = v41;
  *&v46.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&v45.a = *&v46.a;
  *&v45.c = v41;
  *&v45.tx = *&v46.tx;
  CGAffineTransformRotate(&v46, &v45, -skew);
  v45 = v46;
  v42 = [v40 imageByApplyingTransform:&v45];

  return v42;
}

- (id)largestDetectedContoursForImage:(id)image
{
  v51[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v5 = objc_alloc_init(getVNDetectContoursRequestClass());
  v6 = [objc_alloc(getVNImageRequestHandlerClass_0()) initWithCIImage:imageCopy options:MEMORY[0x1E695E0F8]];
  v51[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  v48 = 0;
  v8 = [v6 performRequests:v7 error:&v48];
  v9 = v48;

  if (v8)
  {
    v36 = imageCopy;
    results = [v5 results];
    firstObject = [results firstObject];

    array = [MEMORY[0x1E695DF70] array];
    v35 = v5;
    if ([firstObject contourCount] >= 1)
    {
      v13 = 0;
      v14 = v9;
      do
      {
        v47 = v14;
        v15 = [firstObject contourAtIndex:v13 error:&v47];
        v9 = v47;

        [array addObject:v15];
        ++v13;
        v14 = v9;
      }

      while ([firstObject contourCount] > v13);
    }

    v33 = firstObject;
    v34 = v9;
    v16 = [array sortedArrayUsingComparator:&__block_literal_global_535];
    v37 = array;
    [array removeAllObjects];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v16;
    v17 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          BoundingBox = CGPathGetBoundingBox([v21 normalizedPath]);
          x = BoundingBox.origin.x;
          y = BoundingBox.origin.y;
          width = BoundingBox.size.width;
          height = BoundingBox.size.height;
          if (![(AXMTextLayoutManager *)self isBoundary:0 withinNormalizedDistance:0 ofBoundary:0x3FF0000000000000, 0x3FF0000000000000])
          {
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v26 = v37;
            v27 = [v26 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v40;
              while (2)
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v40 != v29)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v54 = CGPathGetBoundingBox([*(*(&v39 + 1) + 8 * j) normalizedPath]);
                  if ([(AXMTextLayoutManager *)self isBoundary:x withinNormalizedDistance:y ofBoundary:width, height, 0.02, *&v54.origin.x, *&v54.origin.y, *&v54.size.width, *&v54.size.height])
                  {

                    goto LABEL_21;
                  }
                }

                v28 = [v26 countByEnumeratingWithState:&v39 objects:v49 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }

            [v26 addObject:v21];
          }

LABEL_21:
          ;
        }

        v18 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v18);
    }

    v31 = [v37 ax_filteredArrayUsingBlock:&__block_literal_global_538];

    v5 = v35;
    imageCopy = v36;
    v9 = v34;
  }

  else
  {
    v31 = MEMORY[0x1E695E0F0];
  }

  return v31;
}

uint64_t __56__AXMTextLayoutManager_largestDetectedContoursForImage___block_invoke(int a1, id a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  BoundingBox = CGPathGetBoundingBox([a2 normalizedPath]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  v11 = [v6 normalizedPath];

  v17 = CGPathGetBoundingBox(v11);
  if (height > v17.size.height && width > v17.size.width && y < v17.origin.y && x < v17.origin.x)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

BOOL __56__AXMTextLayoutManager_largestDetectedContoursForImage___block_invoke_2(int a1, id a2)
{
  BoundingBox = CGPathGetBoundingBox([a2 normalizedPath]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  result = 0;
  if (CGRectGetWidth(BoundingBox) > 0.25)
  {
    v8.origin.x = x;
    v8.origin.y = y;
    v8.size.width = width;
    v8.size.height = height;
    if (CGRectGetHeight(v8) > 0.25)
    {
      return 1;
    }
  }

  return result;
}

- (CGRect)detectCenterContourFromContours:(id)contours withImageExtent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  x = extent.origin.x;
  y = extent.origin.y;
  v56 = *MEMORY[0x1E69E9840];
  contoursCopy = contours;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v12 = [contoursCopy countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    v38 = v11;
    v39 = width;
    v15 = width;
    v46 = v11;
    v47 = v10;
    v36 = v9;
    v37 = v10;
    v35 = v8;
    v16 = height;
    v17 = v8;
    v18 = v9;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        v50 = v17;
        if (*v52 != v14)
        {
          objc_enumerationMutation(contoursCopy);
        }

        BoundingBox = CGPathGetBoundingBox([*(*(&v51 + 1) + 8 * i) normalizedPath]);
        v44 = BoundingBox.origin.y;
        v45 = BoundingBox.origin.x;
        v42 = BoundingBox.size.height;
        v43 = BoundingBox.size.width;
        [(AXMTextLayoutManager *)self imageRectForNormalizedRect:v15 imageWidth:height imageHeight:?];
        v21 = v20;
        v48 = v22;
        v24 = v23;
        v26 = v25;
        v49 = AXMRectDistance(x, y, v39, v16, v20, v22, v23, v25);
        v27 = AXMRectDistance(x, y, v39, v16, v17, v18, v47, v46);
        v58.origin.x = v50;
        v58.origin.y = v18;
        v58.size.width = v47;
        v58.size.height = v46;
        v60.origin.x = v21;
        v60.origin.y = v48;
        v60.size.width = v24;
        v60.size.height = v26;
        v28 = CGRectContainsRect(v58, v60);
        v29 = v49 < v27;
        v17 = v50;
        if (v29 || v28)
        {
          v17 = v21;
          v18 = v48;
          v46 = v26;
          v47 = v24;
          v37 = v43;
          v38 = v42;
          v35 = v45;
          v36 = v44;
        }

        v16 = height;
      }

      v13 = [contoursCopy countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v13);
  }

  else
  {
    v37 = v10;
    v38 = v11;
    v35 = v8;
    v36 = v9;
  }

  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (BOOL)isBoundary:(CGRect)boundary withinNormalizedDistance:(double)distance ofBoundary:(CGRect)ofBoundary
{
  v6 = vabdd_f64(boundary.origin.x, ofBoundary.origin.x) > distance;
  v5 = vabdd_f64(boundary.origin.y, ofBoundary.origin.y);
  v6 = v6 || v5 > distance;
  v7 = vabdd_f64(boundary.size.width, ofBoundary.size.width);
  v8 = v6 || v7 > distance;
  v9 = vabdd_f64(boundary.size.height, ofBoundary.size.height);
  return !v8 && v9 <= distance;
}

- (BOOL)isBoundary:(CGRect)boundary withinBoundary:(CGRect)withinBoundary withNormalizedThreshold:(double)threshold
{
  height = withinBoundary.size.height;
  width = withinBoundary.size.width;
  y = withinBoundary.origin.y;
  x = withinBoundary.origin.x;
  v9 = boundary.origin.y;
  v10 = boundary.origin.x;
  v16 = boundary.size.width;
  v17 = boundary.size.height;
  MinX = CGRectGetMinX(boundary);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  result = 0;
  if (MinX >= CGRectGetMinX(v18) - threshold)
  {
    v19.origin.x = v10;
    v19.origin.y = v9;
    v19.size.width = v16;
    v19.size.height = v17;
    MinY = CGRectGetMinY(v19);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (MinY >= CGRectGetMinY(v20) - threshold)
    {
      v21.origin.x = v10;
      v21.origin.y = v9;
      v21.size.width = v16;
      v21.size.height = v17;
      MaxX = CGRectGetMaxX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      if (MaxX <= CGRectGetMaxX(v22) + threshold)
      {
        v23.origin.x = v10;
        v23.origin.y = v9;
        v23.size.width = v16;
        v23.size.height = v17;
        MaxY = CGRectGetMaxY(v23);
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        if (MaxY <= CGRectGetMaxY(v24) + threshold)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

- (CGRect)imageRectForNormalizedRect:(CGRect)rect imageWidth:(unint64_t)width imageHeight:(unint64_t)height
{
  v5 = rect.origin.x * width;
  v6 = rect.size.width * width;
  v7 = rect.origin.y * height;
  v8 = rect.size.height * height;
  result.size.height = v8;
  result.size.width = v6;
  result.origin.y = v7;
  result.origin.x = v5;
  return result;
}

- (id)processReceiptText:(id)text foundMerchantName:(BOOL *)name preferredLocales:(id)locales
{
  v120 = *MEMORY[0x1E69E9840];
  textCopy = text;
  localesCopy = locales;
  v110 = textCopy;
  if (*name)
  {
    v114 = 0;
    v9 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:16 error:&v114];
    obj = v114;
    if ([v9 numberOfMatchesInString:textCopy options:0 range:{0, objc_msgSend(textCopy, "length")}])
    {
      v113 = textCopy;
      v10 = textCopy;
      [AXMAddressFormatter replaceDirectionalAbbreviations:&v113];
      v11 = v113;

      v12 = v11;
      v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
      v14 = [v13 localizedStringForKey:@"image.text.address" value:&stru_1F23EA908 table:@"Accessibility"];
      v15 = [v14 stringByAppendingFormat:@", %@", v12];
      textCopy = v12;
    }

    else
    {
      v107 = v9;
      v35 = objc_alloc_init(MEMORY[0x1E696AD48]);
      symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
      [v35 formUnionWithCharacterSet:symbolCharacterSet];

      punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      [v35 formUnionWithCharacterSet:punctuationCharacterSet];

      v109 = v35;
      [v35 removeCharactersInString:{@", $.€"}];
      v14 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(textCopy, "length")}];
      if ([textCopy length])
      {
        v38 = 0;
        do
        {
          v39 = [textCopy characterAtIndex:v38];
          v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%C", v39];
          if ([v40 rangeOfCharacterFromSet:v35] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 appendFormat:@"%C", v39];
          }

          else
          {
            [v14 appendFormat:@"%s", " "];
          }

          ++v38;
          textCopy = v110;
        }

        while (v38 < [v110 length]);
      }

      v41 = [v14 length];
      receiptRegularExpressions = [(AXMTextLayoutManager *)self receiptRegularExpressions];
      v43 = [receiptRegularExpressions objectAtIndex:0];
      v12 = [v43 firstMatchInString:v14 options:0 range:{0, v41}];

      if (v12)
      {
        range = [v12 range];
        v15 = [v14 substringWithRange:{range, v45}];
        v13 = v35;
      }

      else
      {
        receiptRegularExpressions2 = [(AXMTextLayoutManager *)self receiptRegularExpressions];
        v47 = [receiptRegularExpressions2 objectAtIndex:1];
        v48 = [v47 firstMatchInString:v14 options:0 range:{0, v41}];

        if (v48)
        {
          range2 = [v48 range];
          v15 = [v14 substringWithRange:{range2, v50}];
          v13 = v35;
        }

        else
        {
          receiptRegularExpressions3 = [(AXMTextLayoutManager *)self receiptRegularExpressions];
          v52 = [receiptRegularExpressions3 objectAtIndex:2];
          v53 = [v52 firstMatchInString:v14 options:0 range:{0, v41}];

          if (v53)
          {
            range3 = [v53 range];
            v15 = [v14 substringWithRange:{range3, v55}];
            v13 = v109;
          }

          else
          {
            receiptRegularExpressions4 = [(AXMTextLayoutManager *)self receiptRegularExpressions];
            v57 = [receiptRegularExpressions4 objectAtIndex:3];
            v58 = [v57 firstMatchInString:v14 options:0 range:{0, v41}];

            if (v58)
            {
              v59 = [v58 rangeAtIndex:1];
              v61 = v60;
              v62 = [v58 rangeAtIndex:2];
              v103 = v63;
              v64 = [v58 rangeAtIndex:3];
              v99 = v65;
              v101 = v64;
              v66 = MEMORY[0x1E696AEC0];
              v105 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
              v67 = [v105 localizedStringForKey:@"receipt.product.unitprice.total.formatter" value:&stru_1F23EA908 table:@"Accessibility"];
              v68 = [v14 substringWithRange:{v59, v61}];
              v69 = [v14 substringWithRange:{v62, v103}];
              v70 = [v14 substringWithRange:{v101, v99}];
              v71 = [v66 stringWithFormat:v67, v68, v69, v70];

              textCopy = v110;
              v15 = [(AXMTextLayoutManager *)self filterReceiptForGarbageText:v71];
              v72 = v58;
              v9 = v107;
              v13 = v109;
            }

            else
            {
              receiptRegularExpressions5 = [(AXMTextLayoutManager *)self receiptRegularExpressions];
              v74 = [receiptRegularExpressions5 objectAtIndex:4];
              v75 = [v74 firstMatchInString:v14 options:0 range:{0, v41}];

              v106 = v75;
              if (v75)
              {
                v76 = [v75 rangeAtIndex:1];
                v78 = v77;
                v79 = [v75 rangeAtIndex:2];
                v102 = v80;
                v100 = [v75 rangeAtIndex:3];
                v98 = v81;
                v96 = [v75 rangeAtIndex:4];
                v83 = v82;
                v104 = MEMORY[0x1E696AEC0];
                v97 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
                v84 = [v97 localizedStringForKey:@"receipt.product.qty.unitprice.total.formatter" value:&stru_1F23EA908 table:@"Accessibility"];
                v85 = [v14 substringWithRange:{v76, v78}];
                v86 = [v14 substringWithRange:{v79, v102}];
                v87 = [v14 substringWithRange:{v100, v98}];
                v88 = [v14 substringWithRange:{v96, v83}];
                v89 = [v104 stringWithFormat:v84, v85, v86, v87, v88];

                textCopy = v110;
                v15 = [(AXMTextLayoutManager *)self filterReceiptForGarbageText:v89];
              }

              else
              {
                receiptRegularExpressions6 = [(AXMTextLayoutManager *)self receiptRegularExpressions];
                v91 = [receiptRegularExpressions6 objectAtIndex:5];
                v89 = [v91 firstMatchInString:v14 options:0 range:{0, v41}];

                if (v89)
                {
                  range4 = [v89 range];
                  v94 = [v14 substringWithRange:{range4, v93}];
                  v15 = [(AXMTextLayoutManager *)self filterReceiptForGarbageText:v94];
                }

                else
                {
                  v15 = &stru_1F23EA908;
                }
              }

              v9 = v107;
              v13 = v109;

              v72 = 0;
              v71 = v106;
            }

            v53 = 0;
          }
        }
      }
    }
  }

  else
  {
    nameCopy = name;
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v17 = textCopy;
    v18 = whitespaceCharacterSet;
    v19 = [v17 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
    v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
    v21 = [v19 filteredArrayUsingPredicate:v20];

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXMediaUtilities"];
    v23 = [v22 localizedStringForKey:@"image.text.name" value:&stru_1F23EA908 table:@"Accessibility"];
    v24 = [v23 stringByAppendingString:{@", "}];

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v21;
    v25 = [obj countByEnumeratingWithState:&v115 objects:v119 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v116;
      while (2)
      {
        v28 = 0;
        v29 = v24;
        do
        {
          if (*v116 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v115 + 1) + 8 * v28);
          semanticTextFactory = [(AXMTextLayoutManager *)self semanticTextFactory];
          firstObject = [localesCopy firstObject];
          v33 = [semanticTextFactory _textExistsInLexicon:v30 withLocale:firstObject];

          if ((v33 & 1) == 0 && ![v30 intValue])
          {

            v24 = &stru_1F23EA908;
            goto LABEL_15;
          }

          v34 = [(__CFString *)v29 stringByAppendingString:@" "];
          v24 = [v34 stringByAppendingString:v30];

          ++v28;
          v29 = v24;
        }

        while (v26 != v28);
        v26 = [obj countByEnumeratingWithState:&v115 objects:v119 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v15 = [(AXMTextLayoutManager *)self filterReceiptForGarbageText:v24];

    if (([(__CFString *)v15 isEqualToString:&stru_1F23EA908]& 1) == 0)
    {
      *nameCopy ^= 1u;
    }

    textCopy = v110;
  }

  return v15;
}

- (id)filterReceiptForGarbageText:(id)text
{
  v29 = *MEMORY[0x1E69E9840];
  textCopy = text;
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [textCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
  v8 = [v6 filteredArrayUsingPredicate:v7];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    v13 = &stru_1F23EA908;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 length] >= 3 && objc_msgSend(v15, "length") <= 0x28 && !-[AXMTextLayoutManager hasConsecutiveCharacters:withLength:](self, "hasConsecutiveCharacters:withLength:", v15, 5) && !-[AXMTextLayoutManager hasConsecutiveDigits:withLength:](self, "hasConsecutiveDigits:withLength:", v15, 3))
        {
          v16 = [(__CFString *)v13 stringByAppendingString:@" "];
          v17 = [v16 stringByAppendingString:v15];

          v13 = v17;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = &stru_1F23EA908;
  }

  whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v19 = [(__CFString *)v13 componentsSeparatedByCharactersInSet:whitespaceCharacterSet2];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF != ''"];
  v21 = [v19 filteredArrayUsingPredicate:v20];

  if ([v21 count] >= 2)
  {
    v22 = v13;
  }

  else
  {
    v22 = &stru_1F23EA908;
  }

  return v22;
}

- (BOOL)hasConsecutiveCharacters:(id)characters withLength:(unint64_t)length
{
  v5 = MEMORY[0x1E696AE70];
  charactersCopy = characters;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(.)\\1{%lu}", length];
  v12 = 0;
  v9 = [v7 initWithPattern:v8 options:1 error:&v12];

  v10 = [v9 firstMatchInString:charactersCopy options:0 range:{0, objc_msgSend(charactersCopy, "length")}];

  return v10 != 0;
}

- (BOOL)hasConsecutiveDigits:(id)digits withLength:(unint64_t)length
{
  v5 = MEMORY[0x1E696AE70];
  digitsCopy = digits;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\\d{%lu}", length];
  v12 = 0;
  v9 = [v7 initWithPattern:v8 options:1 error:&v12];

  v10 = [v9 firstMatchInString:digitsCopy options:0 range:{0, objc_msgSend(digitsCopy, "length")}];

  return v10 != 0;
}

- (id)sortContourRowResults:(id)results maxWidth:(double)width maxHeight:(double)height minWidth:(double)minWidth minHeight:(double)minHeight
{
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  if ([resultsCopy contourCount] >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v14;
      v23 = v14;
      v16 = [resultsCopy contourAtIndex:v13 error:&v23];
      v14 = v23;

      BoundingBox = CGPathGetBoundingBox([v16 normalizedPath]);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      if (CGRectGetHeight(BoundingBox) <= height)
      {
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        if (CGRectGetHeight(v26) >= minHeight)
        {
          v27.origin.x = x;
          v27.origin.y = y;
          v27.size.width = width;
          v27.size.height = height;
          if (CGRectGetWidth(v27) <= width)
          {
            v28.origin.x = x;
            v28.origin.y = y;
            v28.size.width = width;
            v28.size.height = height;
            if (CGRectGetWidth(v28) >= minWidth)
            {
              v21 = [MEMORY[0x1E696B098] axmValueWithCGRect:{x, y, width, height}];
              [array addObject:v21];
            }
          }
        }
      }

      ++v13;
    }

    while ([resultsCopy contourCount] > v13);
  }

  [array sortUsingComparator:&__block_literal_global_583];

  return array;
}

uint64_t __84__AXMTextLayoutManager_sortContourRowResults_maxWidth_maxHeight_minWidth_minHeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  memset(&v9, 0, sizeof(v9));
  v4 = a3;
  [a2 getValue:&v9];
  memset(&v8, 0, sizeof(v8));
  [v4 getValue:&v8];

  MinY = CGRectGetMinY(v9);
  if (MinY < CGRectGetMinY(v8))
  {
    return -1;
  }

  v7 = CGRectGetMinY(v9);
  return v7 > CGRectGetMinY(v8);
}

- (id)sortContourColumnResults:(id)results maxWidth:(double)width maxHeight:(double)height
{
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  if ([resultsCopy contourCount] >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v10;
      v19 = v10;
      v12 = [resultsCopy contourAtIndex:v9 error:&v19];
      v10 = v19;

      BoundingBox = CGPathGetBoundingBox([v12 normalizedPath]);
      x = BoundingBox.origin.x;
      y = BoundingBox.origin.y;
      width = BoundingBox.size.width;
      height = BoundingBox.size.height;
      if (CGRectGetHeight(BoundingBox) < height)
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        if (CGRectGetWidth(v22) < width)
        {
          v17 = [MEMORY[0x1E696B098] axmValueWithCGRect:{x, y, width, height}];
          [array addObject:v17];
        }
      }

      ++v9;
    }

    while ([resultsCopy contourCount] > v9);
  }

  [array sortUsingComparator:&__block_literal_global_585];

  return array;
}

uint64_t __68__AXMTextLayoutManager_sortContourColumnResults_maxWidth_maxHeight___block_invoke(uint64_t a1, void *a2, void *a3)
{
  memset(&v9, 0, sizeof(v9));
  v4 = a3;
  [a2 getValue:&v9];
  memset(&v8, 0, sizeof(v8));
  [v4 getValue:&v8];

  MinX = CGRectGetMinX(v9);
  if (MinX < CGRectGetMinX(v8))
  {
    return -1;
  }

  v7 = CGRectGetMinX(v9);
  return v7 > CGRectGetMinX(v8);
}

- (id)getTableRows:(id)rows
{
  rowsCopy = rows;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([rowsCopy count])
  {
    v6 = 0;
    do
    {
      memset(&v26, 0, sizeof(v26));
      v7 = [rowsCopy objectAtIndex:v6];
      [v7 getValue:&v26];

      v8 = MEMORY[0x1E696AD98];
      MinY = CGRectGetMinY(v26);
      *&MinY = MinY;
      v10 = [v8 numberWithFloat:MinY];
      v11 = [array2 containsObject:v10];

      if ((v11 & 1) == 0)
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = CGRectGetMinY(v26);
        *&v13 = v13;
        v14 = [v12 numberWithFloat:v13];
        [array2 addObject:v14];
      }

      ++v6;
    }

    while ([rowsCopy count] > v6);
  }

  v15 = array;
  if ([array2 count])
  {
    v16 = 0;
    do
    {
      v17 = [array2 objectAtIndex:v16];
      [v17 floatValue];
      v19 = v18;

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __37__AXMTextLayoutManager_getTableRows___block_invoke;
      v25[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
      *&v25[4] = v19;
      v20 = [MEMORY[0x1E696AE18] predicateWithBlock:v25];
      v21 = [rowsCopy filteredArrayUsingPredicate:v20];
      v22 = [v21 sortedArrayUsingComparator:&__block_literal_global_589];
      [v15 addObject:v22];

      ++v16;
    }

    while ([array2 count] > v16);
  }

  v23 = [v15 copy];

  return v23;
}

BOOL __37__AXMTextLayoutManager_getTableRows___block_invoke(uint64_t a1, void *a2)
{
  memset(&v4, 0, sizeof(v4));
  [a2 getValue:&v4];
  return CGRectGetMinY(v4) == *(a1 + 32);
}

uint64_t __37__AXMTextLayoutManager_getTableRows___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  memset(&v9, 0, sizeof(v9));
  v4 = a3;
  [a2 getValue:&v9];
  memset(&v8, 0, sizeof(v8));
  [v4 getValue:&v8];

  MinX = CGRectGetMinX(v9);
  if (MinX < CGRectGetMinX(v8))
  {
    return -1;
  }

  v7 = CGRectGetMinX(v9);
  return v7 > CGRectGetMinX(v8);
}

- (id)getTableColumns:(id)columns
{
  columnsCopy = columns;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([columnsCopy count])
  {
    v6 = 0;
    do
    {
      memset(&v26, 0, sizeof(v26));
      v7 = [columnsCopy objectAtIndex:v6];
      [v7 getValue:&v26];

      v8 = MEMORY[0x1E696AD98];
      MinX = CGRectGetMinX(v26);
      *&MinX = MinX;
      v10 = [v8 numberWithFloat:MinX];
      v11 = [array2 containsObject:v10];

      if ((v11 & 1) == 0)
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = CGRectGetMinX(v26);
        *&v13 = v13;
        v14 = [v12 numberWithFloat:v13];
        [array2 addObject:v14];
      }

      ++v6;
    }

    while ([columnsCopy count] > v6);
  }

  v15 = array;
  if ([array2 count])
  {
    v16 = 0;
    do
    {
      v17 = [array2 objectAtIndex:v16];
      [v17 floatValue];
      v19 = v18;

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __40__AXMTextLayoutManager_getTableColumns___block_invoke;
      v25[3] = &__block_descriptor_40_e25_B24__0_8__NSDictionary_16l;
      *&v25[4] = v19;
      v20 = [MEMORY[0x1E696AE18] predicateWithBlock:v25];
      v21 = [columnsCopy filteredArrayUsingPredicate:v20];
      v22 = [v21 sortedArrayUsingComparator:&__block_literal_global_591];
      [v15 addObject:v22];

      ++v16;
    }

    while ([array2 count] > v16);
  }

  v23 = [v15 copy];

  return v23;
}

BOOL __40__AXMTextLayoutManager_getTableColumns___block_invoke(uint64_t a1, void *a2)
{
  memset(&v4, 0, sizeof(v4));
  [a2 getValue:&v4];
  return CGRectGetMinX(v4) == *(a1 + 32);
}

uint64_t __40__AXMTextLayoutManager_getTableColumns___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  memset(&v9, 0, sizeof(v9));
  v4 = a3;
  [a2 getValue:&v9];
  memset(&v8, 0, sizeof(v8));
  [v4 getValue:&v8];

  MinY = CGRectGetMinY(v9);
  if (MinY < CGRectGetMinY(v8))
  {
    return -1;
  }

  v7 = CGRectGetMinY(v9);
  return v7 > CGRectGetMinY(v8);
}

- (BOOL)verifyTable:(id)table sortedColumns:(id)columns
{
  tableCopy = table;
  columnsCopy = columns;
  if ([tableCopy count] < 2 || objc_msgSend(columnsCopy, "count") < 2)
  {
    goto LABEL_26;
  }

  if ([tableCopy count])
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = [tableCopy objectAtIndex:v7];
      if ([v9 count] < 2)
      {
        ++v8;
      }

      v24 = 0u;
      v25 = 0u;
      v10 = [v9 objectAtIndex:0];
      [v10 getValue:&v24];

      v11 = *(&v25 + 1);
      if ([v9 count])
      {
        break;
      }

LABEL_11:

      if ([tableCopy count] <= ++v7)
      {
        goto LABEL_14;
      }
    }

    v12 = 0;
    while (1)
    {
      v23 = 0u;
      v13 = [v9 objectAtIndex:{v12, 0, 0, 0}];
      [v13 getValue:&v22];

      if (vabdd_f64(*(&v23 + 1), v11) > 0.005)
      {
        goto LABEL_25;
      }

      if ([v9 count] <= ++v12)
      {
        goto LABEL_11;
      }
    }
  }

  v8 = 0;
LABEL_14:
  if (v8 == [tableCopy count])
  {
    goto LABEL_26;
  }

  if ([columnsCopy count])
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v9 = [columnsCopy objectAtIndex:v14];
      if ([v9 count] < 2)
      {
        ++v15;
      }

      v24 = 0u;
      v25 = 0u;
      v16 = [v9 objectAtIndex:0];
      [v16 getValue:&v24];

      v17 = *&v25;
      if ([v9 count])
      {
        break;
      }

LABEL_23:

      if ([columnsCopy count] <= ++v14)
      {
        goto LABEL_29;
      }
    }

    v18 = 0;
    while (1)
    {
      v23 = 0u;
      v19 = [v9 objectAtIndex:{v18, 0, 0}];
      [v19 getValue:&v22];

      if (vabdd_f64(*&v23, v17) > 0.005)
      {
        break;
      }

      if ([v9 count] <= ++v18)
      {
        goto LABEL_23;
      }
    }

LABEL_25:

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

  v15 = 0;
LABEL_29:
  v20 = v15 != [columnsCopy count];
LABEL_27:

  return v20;
}

- (id)nutritionLabelRowsForContourResults:(double)results normalizedNutritionLabelFrame:(double)frame fullImageFrame:(double)imageFrame processedImageFrame:(double)processedImageFrame
{
  v23 = a11;
  array = [MEMORY[0x1E695DF70] array];
  if ([v23 count])
  {
    v25 = 0;
    v26 = 0.0;
    do
    {
      v27 = [v23 objectAtIndex:v25];
      [v27 AXMRectValue];
      v29 = v28;

      if (v25)
      {
        v30 = [v23 objectAtIndex:v25 - 1];
        [v30 AXMRectValue];
        v32 = v31;

        v33 = v32 - v29;
      }

      else
      {
        v33 = 1.0 - v29 + -0.005;
        v26 = frame + a2;
      }

      v26 = v26 - a15 * v33 / a8;
      v34 = [MEMORY[0x1E696B098] valueWithRect:{self, v26, results + 0.01}];
      [array addObject:v34];

      ++v25;
    }

    while ([v23 count] > v25);
  }

  lastObject = [array lastObject];
  [lastObject AXMRectValue];
  v37 = v36 - a2;

  if (v37 > 0.05)
  {
    v38 = [MEMORY[0x1E696B098] valueWithRect:{self, a2, results, v37}];
    [array addObject:v38];
  }

  return array;
}

- (id)getReceiptRows:(id)rows preferredLocales:(id)locales canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v67 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  localesCopy = locales;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([rowsCopy count])
  {
    v10 = 0;
    MaxY = 1.0;
    do
    {
      v12 = [rowsCopy objectAtIndex:v10];
      [v12 boundingBox];
      v17 = v13;
      v18 = v14;
      v19 = v15;
      v20 = v16;
      if (v10 && MaxY - CGRectGetMaxY(*&v13) <= 0.006)
      {
        lastObject = [array lastObject];
        [lastObject addObject:v12];
      }

      else
      {
        v21 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
        [array addObject:v21];

        v69.origin.x = v17;
        v69.origin.y = v18;
        v69.size.width = v19;
        v69.size.height = v20;
        MaxY = CGRectGetMaxY(v69);
      }

      ++v10;
    }

    while ([rowsCopy count] > v10);
  }

  v53 = rowsCopy;
  v65 = 0;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = array;
  v59 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v59)
  {
    v56 = *v62;
    do
    {
      v23 = 0;
      do
      {
        if (*v62 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v23;
        v24 = [*(*(&v61 + 1) + 8 * v23) sortedArrayUsingComparator:&__block_literal_global_593];
        v25 = [v24 objectAtIndex:0];
        v26 = [v25 topCandidates:1];
        firstObject = [v26 firstObject];

        string = [firstObject string];
        v29 = [v24 objectAtIndex:0];
        [v29 boundingBox];
        x = v30;
        y = v32;
        v35 = v34;
        v37 = v36;

        [firstObject confidence];
        v39 = v38;
        if ([v24 count] < 2)
        {
          v46 = string;
        }

        else
        {
          v40 = 1;
          do
          {
            v41 = [v24 objectAtIndex:v40];
            v42 = [v41 topCandidates:1];
            firstObject2 = [v42 firstObject];

            v44 = MEMORY[0x1E696AEC0];
            string2 = [firstObject2 string];
            v46 = [v44 stringWithFormat:@"%@ %@", string, string2, v53];

            [v41 boundingBox];
            v72.origin.x = x;
            v72.origin.y = y;
            v72.size.width = v35;
            v72.size.height = v37;
            v71 = CGRectUnion(v70, v72);
            x = v71.origin.x;
            y = v71.origin.y;
            v35 = v71.size.width;
            v37 = v71.size.height;
            [firstObject confidence];
            v39 = v39 + v47;

            ++v40;
            string = v46;
          }

          while ([v24 count] > v40);
        }

        if ([v24 count])
        {
          v39 = v39 / [v24 count];
        }

        v48 = [(AXMTextLayoutManager *)self processReceiptText:v46 foundMerchantName:&v65 preferredLocales:localesCopy];
        height = [AXMVisionFeature tableCellWithText:v48 boundingBox:MEMORY[0x1E695E0F0] confidence:0 recognizedTextFeatures:x canvasSize:y isHeader:v35, v37, v39, width, height];
        [height confidence];
        if (v50 > 0.0)
        {
          [array2 addObject:height];
        }

        v23 = v60 + 1;
      }

      while (v60 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v59);
  }

  v51 = [array2 copy];

  return v51;
}

uint64_t __67__AXMTextLayoutManager_getReceiptRows_preferredLocales_canvasSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 boundingBox];
  v7 = v6;
  [v5 boundingBox];
  if (v7 >= v8)
  {
    [v4 boundingBox];
    v11 = v10;
    [v5 boundingBox];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

- (id)textRowsForTable:(id)table sourceImage:(id)image requestHandler:(id)handler canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v66[1] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v11 = objc_alloc_init(getVNRecognizeTextRequestClass_0());
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [v11 setRecognitionLanguages:preferredLanguages];

  [v11 setRecognitionLevel:0];
  [v11 setUsesLanguageCorrection:0];
  v66[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v64 = 0;
  v14 = [handlerCopy performRequests:v13 error:&v64];
  v15 = v64;

  if (v14)
  {
    v42 = v15;
    v43 = v11;
    v44 = handlerCopy;
    results = [v11 results];
    if ([tableCopy count])
    {
      v16 = 0;
      v46 = tableCopy;
      do
      {
        v17 = [tableCopy objectAtIndex:v16];
        array2 = [MEMORY[0x1E695DF70] array];
        if ([v17 count])
        {
          v18 = 0;
          v49 = v17;
          v50 = v16;
          do
          {
            v62 = 0u;
            v63 = 0u;
            v52 = v18;
            v19 = [v17 objectAtIndex:v18];
            [v19 getValue:&v62];

            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __79__AXMTextLayoutManager_textRowsForTable_sourceImage_requestHandler_canvasSize___block_invoke;
            v59[3] = &__block_descriptor_64_e25_B24__0_8__NSDictionary_16l;
            v60 = v62;
            v61 = v63;
            v51 = [MEMORY[0x1E696AE18] predicateWithBlock:v59];
            v20 = [results filteredArrayUsingPredicate:?];
            array3 = [MEMORY[0x1E695DF70] array];
            v55 = 0u;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            obj = v20;
            v21 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v56;
              v24 = 0.0;
              v25 = &stru_1F23EA908;
              do
              {
                v26 = 0;
                v27 = v25;
                do
                {
                  if (*v56 != v23)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v28 = [*(*(&v55 + 1) + 8 * v26) topCandidates:1];
                  firstObject = [v28 firstObject];

                  string = [firstObject string];
                  v31 = [string stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F23EA908}];

                  v32 = [v31 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F23EA908];;

                  if ([(__CFString *)v27 length])
                  {
                    v33 = [(__CFString *)v27 length]+ 1;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  v34 = [v32 length];
                  if ([(__CFString *)v27 isEqualToString:&stru_1F23EA908])
                  {
                    v35 = v32;
                  }

                  else
                  {
                    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v27, v32];
                  }

                  v25 = v35;

                  [firstObject confidence];
                  v24 = v24 + v36;
                  v37 = [[AXMVisionFeatureRecognizedText alloc] initWithRecognizedText:firstObject range:v33, v34];
                  [array3 addObject:v37];

                  ++v26;
                  v27 = v25;
                }

                while (v22 != v26);
                v22 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
              }

              while (v22);
            }

            else
            {
              v24 = 0.0;
              v25 = &stru_1F23EA908;
            }

            v16 = v50;

            v38 = [obj count];
            height = [AXMVisionFeature tableCellWithText:v25 boundingBox:array3 confidence:v50 == 0 recognizedTextFeatures:v62 canvasSize:v63 isHeader:v24 / v38, width, height];
            [height confidence];
            if (v40 > 0.0)
            {
              [array2 addObject:height];
            }

            v18 = v52 + 1;
            v17 = v49;
          }

          while ([v49 count] > (v52 + 1));
        }

        if ([array2 count])
        {
          [array addObject:array2];
        }

        ++v16;
        tableCopy = v46;
      }

      while ([v46 count] > v16);
    }

    v11 = v43;
    handlerCopy = v44;
    v15 = v42;
  }

  return array;
}

BOOL __79__AXMTextLayoutManager_textRowsForTable_sourceImage_requestHandler_canvasSize___block_invoke(CGRect *a1, void *a2)
{
  [a2 boundingBox];
  v13 = CGRectInset(v12, 0.005, 0.005);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MinX = CGRectGetMinX(v13);
  if (MinX < CGRectGetMinX(a1[1]))
  {
    return 0;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxX = CGRectGetMaxX(v14);
  if (MaxX > CGRectGetMaxX(a1[1]))
  {
    return 0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MinY = CGRectGetMinY(v15);
  if (MinY < CGRectGetMinY(a1[1]))
  {
    return 0;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxY = CGRectGetMaxY(v16);
  return MaxY <= CGRectGetMaxY(a1[1]);
}

- (id)textColumnsForTable:(id)table sourceImage:(id)image requestHandler:(id)handler canvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v69[1] = *MEMORY[0x1E69E9840];
  tableCopy = table;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v11 = objc_alloc_init(getVNRecognizeTextRequestClass_0());
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [v11 setRecognitionLanguages:preferredLanguages];

  [v11 setRecognitionLevel:0];
  [v11 setUsesLanguageCorrection:0];
  v69[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  v67 = 0;
  v14 = [handlerCopy performRequests:v13 error:&v67];
  v15 = v67;

  if (v14)
  {
    v45 = v15;
    v46 = v11;
    v47 = handlerCopy;
    results = [v11 results];
    if ([tableCopy count])
    {
      v16 = 0;
      v17 = &stru_1F23EA908;
      v18 = @",";
      v19 = @";";
      v49 = tableCopy;
      do
      {
        v50 = v16;
        v20 = [tableCopy objectAtIndex:v16];
        array2 = [MEMORY[0x1E695DF70] array];
        if ([v20 count])
        {
          v21 = 0;
          v53 = v20;
          do
          {
            v65 = 0u;
            v66 = 0u;
            v55 = v21;
            v22 = [v20 objectAtIndex:v21];
            [v22 getValue:&v65];

            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __82__AXMTextLayoutManager_textColumnsForTable_sourceImage_requestHandler_canvasSize___block_invoke;
            v62[3] = &__block_descriptor_64_e25_B24__0_8__NSDictionary_16l;
            v63 = v65;
            v64 = v66;
            v54 = [MEMORY[0x1E696AE18] predicateWithBlock:v62];
            v23 = [results filteredArrayUsingPredicate:?];
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            obj = v23;
            v24 = [v23 countByEnumeratingWithState:&v58 objects:v68 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v59;
              v27 = 0.0;
              v28 = v17;
              do
              {
                v29 = 0;
                v56 = v25;
                do
                {
                  if (*v59 != v26)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v30 = [*(*(&v58 + 1) + 8 * v29) topCandidates:1];
                  firstObject = [v30 firstObject];

                  if ([v28 isEqualToString:v17])
                  {
                    string = [firstObject string];
                    v33 = [string stringByReplacingOccurrencesOfString:v18 withString:v17];
                  }

                  else
                  {
                    v34 = MEMORY[0x1E696AEC0];
                    string = [firstObject string];
                    [string stringByReplacingOccurrencesOfString:v18 withString:v17];
                    v35 = v26;
                    v36 = v17;
                    v37 = v19;
                    v39 = v38 = v18;
                    v33 = [v34 stringWithFormat:@"%@ %@", v28, v39];

                    v28 = v39;
                    v18 = v38;
                    v19 = v37;
                    v17 = v36;
                    v26 = v35;
                    v25 = v56;
                  }

                  v28 = [v33 stringByReplacingOccurrencesOfString:v19 withString:v17];

                  [firstObject confidence];
                  v27 = v27 + v40;

                  ++v29;
                }

                while (v25 != v29);
                v25 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
              }

              while (v25);
            }

            else
            {
              v27 = 0.0;
              v28 = v17;
            }

            v41 = [obj count];
            height = [AXMVisionFeature tableCellWithText:v28 boundingBox:MEMORY[0x1E695E0F0] confidence:0 recognizedTextFeatures:v65 canvasSize:v66 isHeader:v27 / v41, width, height];
            [height confidence];
            if (v43 > 0.0)
            {
              [array2 addObject:height];
            }

            v21 = v55 + 1;
            v20 = v53;
          }

          while ([v53 count] > (v55 + 1));
        }

        if ([array2 count])
        {
          [array addObject:array2];
        }

        tableCopy = v49;
        v16 = v50 + 1;
      }

      while ([v49 count] > (v50 + 1));
    }

    v11 = v46;
    handlerCopy = v47;
    v15 = v45;
  }

  return array;
}

BOOL __82__AXMTextLayoutManager_textColumnsForTable_sourceImage_requestHandler_canvasSize___block_invoke(CGRect *a1, void *a2)
{
  [a2 boundingBox];
  v13 = CGRectInset(v12, 0.005, 0.005);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MinX = CGRectGetMinX(v13);
  if (MinX < CGRectGetMinX(a1[1]))
  {
    return 0;
  }

  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxX = CGRectGetMaxX(v14);
  if (MaxX > CGRectGetMaxX(a1[1]))
  {
    return 0;
  }

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MinY = CGRectGetMinY(v15);
  if (MinY < CGRectGetMinY(a1[1]))
  {
    return 0;
  }

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MaxY = CGRectGetMaxY(v16);
  return MaxY <= CGRectGetMaxY(a1[1]);
}

- (id)featureCellsForNutritionLabelRows:(id)rows withRequestHandler:(id)handler withCanvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v65[1] = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc_init(getVNRecognizeTextRequestClass_0());
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  [v10 setRecognitionLanguages:preferredLanguages];

  [v10 setRecognitionLevel:0];
  [v10 setUsesLanguageCorrection:0];
  v65[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:1];
  v63 = 0;
  v13 = [handlerCopy performRequests:v12 error:&v63];
  v14 = v63;

  if (v13)
  {
    v42 = v14;
    v43 = v10;
    v44 = handlerCopy;
    results = [v10 results];
    if ([rowsCopy count])
    {
      v15 = 0;
      v47 = rowsCopy;
      do
      {
        v61 = 0u;
        v62 = 0u;
        v51 = v15;
        v16 = [rowsCopy objectAtIndex:v15];
        [v16 getValue:&v61];

        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __92__AXMTextLayoutManager_featureCellsForNutritionLabelRows_withRequestHandler_withCanvasSize___block_invoke;
        v58[3] = &unk_1E7A1DA68;
        v58[4] = self;
        v59 = v61;
        v60 = v62;
        v50 = [MEMORY[0x1E696AE18] predicateWithBlock:v58];
        v17 = [results filteredArrayUsingPredicate:?];
        v18 = [v17 sortedArrayUsingComparator:&__block_literal_global_600];

        array2 = [MEMORY[0x1E695DF70] array];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v18;
        v19 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v55;
          v22 = 0.0;
          v23 = &stru_1F23EA908;
          do
          {
            v24 = 0;
            v25 = v23;
            do
            {
              if (*v55 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v26 = [*(*(&v54 + 1) + 8 * v24) topCandidates:1];
              firstObject = [v26 firstObject];

              string = [firstObject string];
              v29 = [string stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F23EA908}];

              v30 = [v29 stringByReplacingOccurrencesOfString:@"" withString:&stru_1F23EA908];;

              if ([(__CFString *)v25 length])
              {
                v31 = [(__CFString *)v25 length]+ 2;
              }

              else
              {
                v31 = 0;
              }

              v32 = [v30 length];
              if ([(__CFString *)v25 isEqualToString:&stru_1F23EA908])
              {
                v33 = v30;
              }

              else
              {
                v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, %@", v25, v30];
              }

              v23 = v33;

              [firstObject confidence];
              v22 = v22 + v34;
              v35 = [[AXMVisionFeatureRecognizedText alloc] initWithRecognizedText:firstObject range:v31, v32];
              [array2 addObject:v35];

              ++v24;
              v25 = v23;
            }

            while (v20 != v24);
            v20 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v20);
        }

        else
        {
          v22 = 0.0;
          v23 = &stru_1F23EA908;
        }

        v36 = AXMIsRunningInServiceProcess();
        v37 = v23;
        if ((v36 & 1) == 0)
        {
          v37 = [(AXMTextLayoutManager *)self processNutritionLabelText:v23];
          v46 = v37;
        }

        v38 = [obj count];
        height = [AXMVisionFeature tableCellWithText:v37 boundingBox:array2 confidence:0 recognizedTextFeatures:v61 canvasSize:v62 isHeader:v22 / v38, width, height];
        if ((v36 & 1) == 0)
        {
        }

        [height confidence];
        if (v40 > 0.0)
        {
          [array addObject:height];
        }

        v15 = v51 + 1;
        rowsCopy = v47;
      }

      while ([v47 count] > (v51 + 1));
    }

    v10 = v43;
    handlerCopy = v44;
    v14 = v42;
  }

  return array;
}

uint64_t __92__AXMTextLayoutManager_featureCellsForNutritionLabelRows_withRequestHandler_withCanvasSize___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 topCandidates:1];
  v3 = [v2 firstObject];

  v4 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"\\d+%" options:1 error:0];
  v5 = [v3 string];
  v6 = [v3 string];
  v7 = [v4 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v6, "length")}];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)processNutritionLabelText:(id)text
{
  v30 = *MEMORY[0x1E69E9840];
  textCopy = text;
  v28 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"[0-9]/[0-9]" options:1 error:&v28];
  v6 = v28;
  v7 = [textCopy length];
  v8 = [v5 firstMatchInString:textCopy options:0 range:{0, v7}];

  v9 = textCopy;
  if (v8)
  {
    v22 = v6;
    v23 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [v5 matchesInString:textCopy options:0 range:{0, v7}];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    v9 = textCopy;
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      v9 = textCopy;
      do
      {
        v14 = 0;
        v15 = v9;
        do
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          range = [*(*(&v24 + 1) + 8 * v14) range];
          v18 = [v15 substringWithRange:{range, v17}];
          v19 = [(AXMTextLayoutManager *)self processFraction:v18];
          v9 = [v15 stringByReplacingOccurrencesOfString:v18 withString:v19];

          ++v14;
          v15 = v9;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    v6 = v22;
    v5 = v23;
  }

  v20 = [(AXMTextLayoutManager *)self processMeasurement:v9];

  return v20;
}

- (id)processFraction:(id)fraction
{
  fractionCopy = fraction;
  v5 = [fractionCopy componentsSeparatedByString:@"/"];
  v6 = [v5 objectAtIndex:0];

  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [v5 objectAtIndex:0];
    v9 = [v7 numberWithInt:{objc_msgSend(v8, "intValue")}];

    numberFormatter = [(AXMTextLayoutManager *)self numberFormatter];
    v11 = [numberFormatter stringFromNumber:v9];

    v12 = [v5 objectAtIndex:1];

    if (v12)
    {
      v13 = [v5 objectAtIndex:0];
      intValue = [v13 intValue];

      v15 = MEMORY[0x1E696AEC0];
      if (intValue == 1)
      {
        [(AXMTextLayoutManager *)self fractionDenominatorValuesWithOneAsNumerator];
      }

      else
      {
        [(AXMTextLayoutManager *)self fractionDenominatorValues];
      }
      v16 = ;
      v17 = [v5 objectAtIndex:1];
      v18 = [v16 objectAtIndex:{objc_msgSend(v17, "intValue")}];
      v19 = [v15 stringWithFormat:@"%@ %@", v11, v18];

      v11 = v19;
    }

    fractionCopy = v11;
  }

  return fractionCopy;
}

- (id)processMeasurement:(id)measurement
{
  v44 = *MEMORY[0x1E69E9840];
  measurementCopy = measurement;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(AXMTextLayoutManager *)self measurementAbbreviationsToVerboseString];
  v29 = measurementCopy;
  v32 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v32)
  {
    v31 = *v40;
    do
    {
      v5 = 0;
      do
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v5;
        v6 = *(*(&v39 + 1) + 8 * v5);
        v7 = [measurementCopy length];
        v8 = objc_alloc(MEMORY[0x1E696AE70]);
        measurementAbbreviationsToVerboseString = [(AXMTextLayoutManager *)self measurementAbbreviationsToVerboseString];
        v10 = [measurementAbbreviationsToVerboseString objectForKeyedSubscript:v6];
        v11 = [v10 objectAtIndex:0];
        v38 = 0;
        v12 = [v8 initWithPattern:v11 options:1 error:&v38];
        v33 = v38;

        v13 = [v12 firstMatchInString:measurementCopy options:0 range:{0, v7}];

        if (v13)
        {
          v14 = measurementCopy;
          v35 = v6;
          do
          {
            v37 = [v12 firstMatchInString:v14 options:0 range:{0, v7}];
            range = [v37 range];
            v17 = [v14 substringWithRange:{range, v16}];
            measurementAbbreviationsToVerboseString2 = [(AXMTextLayoutManager *)self measurementAbbreviationsToVerboseString];
            v18 = [measurementAbbreviationsToVerboseString2 objectForKeyedSubscript:v6];
            v19 = [v18 objectAtIndex:1];
            [(AXMTextLayoutManager *)self measurementAbbreviationsToVerboseString];
            v21 = v20 = v12;
            v22 = [v21 objectForKeyedSubscript:v6];
            [v22 objectAtIndex:2];
            v24 = v23 = self;
            v25 = [v17 stringByReplacingOccurrencesOfString:v19 withString:v24];

            self = v23;
            v12 = v20;

            v26 = v17;
            measurementCopy = [v14 stringByReplacingOccurrencesOfString:v17 withString:v25];

            v7 = [measurementCopy length];
            v6 = v35;

            v27 = [v20 firstMatchInString:measurementCopy options:0 range:{0, v7}];

            v14 = measurementCopy;
          }

          while (v27);
        }

        v5 = v34 + 1;
      }

      while (v34 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v32);
  }

  return measurementCopy;
}

- (void)_assembleLayoutRowFromCell:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_1AE37B000, v0, OS_LOG_TYPE_DEBUG, "  Next cell: %@", v1, 0xCu);
}

@end