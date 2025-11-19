@interface PDFAnnotation
+ (BOOL)annotationPageLayerEffectIsFlipped;
+ (NSString)nameForLineStyle:(PDFLineStyle)style;
+ (PDFLineStyle)lineStyleFromName:(NSString *)name;
+ (id)PDFAnnotationKeysForRedactionDiscoverability;
+ (id)PDFAnnotationKeysWithStringValues;
+ (id)PDFFormFieldBackgroundColor;
+ (id)PDFKitAnnotationKeys;
+ (id)PDFKitAnnotationUndoManagerDisplayNames;
+ (id)PDFKitAppearanceDictionaryArray;
+ (id)PDFKitBorderStyleArray;
+ (id)PDFKitFieldTypeArray;
+ (id)PDFKitHighlightingModeArray;
+ (id)PDFKitSubtypeArray;
+ (id)PDFMarkupColors;
+ (id)PDFMarkupStyleLabels;
+ (id)PDFTextBorderColorForMarkupStyle:(unint64_t)a3;
+ (id)PDFTextBorderColors;
+ (id)PDFTextColorForMarkupStyle:(unint64_t)a3;
+ (id)PDFTextColors;
+ (id)PresentableStringForAnnotationKey:(id)a3;
+ (id)SubtypeForPDFMarkupStyle:(unint64_t)a3;
+ (id)createDetectedTextFieldWithBounds:(CGRect)a3 font:(id)a4 textContentType:(id)a5 page:(id)a6;
+ (id)createWithPKDrawing:(id)a3 bounds:(CGRect)a4;
+ (id)getProperNameStringFromString:(id)a3;
+ (int64_t)MarkupTypeForMarkupStyle:(unint64_t)a3;
+ (void)setAnnotationPageLayerEffectIsFlipped:(BOOL)a3;
- ($551CBC2907AB7FBA347AD90B6ACC2124)_calculatePDFAnnotationLayerOutsetForAction:(int)a3;
- (BOOL)_BOOLValueForAnnotationFlag:(unint64_t)a3 withDefaultValue:(BOOL)a4;
- (BOOL)_BOOLValueForWidgetFieldFlag:(unint64_t)a3;
- (BOOL)_annotationAllowsCommenting:(id)a3;
- (BOOL)_isTextMarkupRedaction;
- (BOOL)_isValidAnnotationKey:(id)a3;
- (BOOL)_setArray:(id)a3 forAnnotationKey:(id)a4;
- (BOOL)_setDictionary:(id)a3 forAnnotationKey:(id)a4;
- (BOOL)_setInteger:(id)a3 forAnnotationKey:(id)a4;
- (BOOL)_setString:(id)a3 forAnnotationKey:(id)a4;
- (BOOL)_setVarious:(id)a3 forAnnotationKey:(id)a4;
- (BOOL)_shouldReadAppearanceStreams;
- (BOOL)addDestinationToDictionaryRef:(__CFDictionary *)a3;
- (BOOL)akAnnotationIsSelected;
- (BOOL)allowsToggleToOff;
- (BOOL)containsPoint:(CGPoint)a3;
- (BOOL)handledByPDFKitCheckAKEnabled:(BOOL)a3;
- (BOOL)inFormFillingMode;
- (BOOL)intersectsWithRedactionPath;
- (BOOL)isActivatableTextField;
- (BOOL)isAppearanceStreamEmpty;
- (BOOL)isDetectedTextField;
- (BOOL)isFormField;
- (BOOL)isMarkupAnnotation;
- (BOOL)isMarkupAnnotationSubtype;
- (BOOL)isNoteAnnotation;
- (BOOL)isOpen;
- (BOOL)isRedaction;
- (BOOL)isSignature;
- (BOOL)isSignatureMarker;
- (BOOL)isSignatureWidget;
- (BOOL)isSynthesizedFormField;
- (BOOL)isTextFormField;
- (BOOL)isTextMarkupOrNoteAnnotation;
- (BOOL)isTextWidget;
- (BOOL)isWidgetOrMarkupAnnotation;
- (BOOL)noteContainsPoint:(CGPoint)a3;
- (BOOL)radiosInUnison;
- (BOOL)setBoolean:(BOOL)value forAnnotationKey:(PDFAnnotationKey)key;
- (BOOL)setRect:(CGRect)value forAnnotationKey:(PDFAnnotationKey)key;
- (BOOL)setValue:(id)value forAnnotationKey:(PDFAnnotationKey)key;
- (BOOL)shouldComb;
- (CGDisplayList)cachedAppearance:(int)a3;
- (CGPDFForm)appearance:(int)a3;
- (CGPoint)_pointOutsetFrom:(CGPoint)a3 startPoint1:(CGPoint)a4 startPoint2:(CGPoint)a5 lineWidth:(double)a6;
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (CGRect)_drawingRectForLineStyle:(int64_t)a3 from:(CGPoint)a4 to:(CGPoint)a5 borderWidth:(double)a6;
- (CGRect)bounds;
- (CGRect)extendedBoundsForAction:(int)a3;
- (CGRect)noteBounds;
- (CRNormalizedQuad)boundingQuad;
- (NSArray)choices;
- (NSArray)quadrilateralPoints;
- (NSArray)values;
- (NSDictionary)annotationKeyValues;
- (NSInteger)maximumLength;
- (NSString)caption;
- (NSString)description;
- (NSString)toolTip;
- (NSString)type;
- (NSString)userName;
- (NSString)widgetDefaultStringValue;
- (NSString)widgetStringValue;
- (NSTextAlignment)alignment;
- (NSURL)URL;
- (PDFAction)action;
- (PDFAnnotation)initWithAnnotationDictionary:(CGPDFDictionary *)a3 forPage:(id)a4;
- (PDFAnnotation)initWithBounds:(CGRect)bounds forType:(PDFAnnotationSubtype)annotationType withProperties:(NSDictionary *)properties;
- (PDFAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)a3 forPage:(id)a4;
- (PDFAnnotation)initWithCoder:(id)a3;
- (PDFAnnotation)initWithDictionary:(NSDictionary *)dictionary forPage:(PDFPage *)page;
- (PDFDestination)destination;
- (PDFLineStyle)endLineStyle;
- (PDFLineStyle)startLineStyle;
- (PDFMarkupType)markupType;
- (PDFPage)page;
- (PDFTextAnnotationIconType)iconType;
- (PDFWidgetCellState)buttonWidgetState;
- (PDFWidgetControlType)widgetControlType;
- (UIColor)backgroundColor;
- (UIColor)fontColor;
- (UIFont)font;
- (__CFDictionary)commonCreateDictionaryRef;
- (__CFDictionary)dictionaryRef;
- (__CFDictionary)dictionaryRefExcludingParentOrPopup;
- (__CFDictionary)gcCreateAttributesForFont:(id)a3 color:(id)a4;
- (double)pointSizeFromAppearanceTokens:(id)a3;
- (double)scaleFactor;
- (id)_PDFMarkupColorForColor:(id)a3;
- (id)_PDFTextColorForColor:(id)a3;
- (id)_accessibilityTypeString;
- (id)_createArrayForCGRect:(CGRect)a3;
- (id)_createArrayForColor:(id)a3;
- (id)_getFullFieldNameFromDictionary:(CGPDFDictionary *)a3;
- (id)_selectionForMarkupAnnotation;
- (id)_textForValue:(id)a3;
- (id)accessibilityNode;
- (id)autoFillTextContentType;
- (id)colorFromAppearanceTokens:(id)a3;
- (id)control;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createAKAnnotation;
- (id)createAttributedStringForTextWidget;
- (id)createDefaultAppearanceStringWithFont:(id)a3 fontColor:(id)a4;
- (id)debugQuickLookObject;
- (id)displayName;
- (id)fontNameFromAppearanceTokens:(id)a3;
- (id)formData;
- (id)getAKTextView;
- (id)getColorFromAppearanceNSString:(id)a3;
- (id)getColorFromAppearanceString:(CGPDFString *)a3;
- (id)getFontFromAppearanceNSString:(id)a3;
- (id)getFontFromAppearanceString:(CGPDFString *)a3;
- (id)getPDFKeyMappingDictionary;
- (id)indexSetForQuadPoints;
- (id)initCommonWithBounds:(CGRect)a3;
- (id)interactiveBackgroundColor;
- (id)parent;
- (id)replaceTextWidgetWithString:(id)a3;
- (id)scaledFontForTextWidget;
- (id)textMarkupString;
- (id)tokenizeAppearanceString:(id)a3;
- (id)uiControl;
- (id)valueForAnnotationKey:(PDFAnnotationKey)key;
- (id)valueForCGPDFObject:(CGPDFObject *)a3 visitedSet:(__CFSet *)a4 isInternalObject:(BOOL *)a5;
- (int64_t)priority;
- (unint64_t)fieldType;
- (unint64_t)flags;
- (unint64_t)markupStyle;
- (void)_addAKAnnotationToDictionary:(__CFDictionary *)a3;
- (void)_addUnknownPropertiesToDictionaryRef:(__CFDictionary *)a3;
- (void)_didRemoveValueForAnnotationKey:(id)a3;
- (void)_didSetValue:(id)a3 forAnnotationKey:(id)a4;
- (void)_generateFormFieldName;
- (void)_printDictionary:(id)a3 atDepth:(int)a4;
- (void)_releaseDictionaryRef;
- (void)_restorePropertiesAfterSetBounds;
- (void)_sanitizeValue:(id)a3 forKey:(id)a4;
- (void)_savePropertiesBeforeSetBounds;
- (void)_setBoolValue:(BOOL)a3 forAnnotationFlag:(unint64_t)a4;
- (void)_setBoolValue:(BOOL)a3 forWidgetFieldFlag:(unint64_t)a4;
- (void)addActionToDictionaryRef:(__CFDictionary *)a3;
- (void)addAdditionalActionsToDictionaryRef:(__CFDictionary *)a3;
- (void)addAlternateFieldNameToDictionaryRef:(__CFDictionary *)a3;
- (void)addAppearanceCharacteristicsToDictionaryRef:(__CFDictionary *)a3;
- (void)addAppearanceForKey:(__CFString *)a3 toDictionaryRef:(__CFDictionary *)a4;
- (void)addBezierPath:(UIBezierPath *)path;
- (void)addBorderStyleToDictionaryRef:(__CFDictionary *)a3;
- (void)addBorderToDictionaryRef:(__CFDictionary *)a3;
- (void)addColor:(id)a3 forKey:(__CFString *)a4 toDictionaryRef:(__CFDictionary *)a5;
- (void)addContentsToDictionaryRef:(__CFDictionary *)a3;
- (void)addControl;
- (void)addDefaultAppearanceDictionaryRef:(__CFDictionary *)a3;
- (void)addDefaultFieldValueToDictionaryRef:(__CFDictionary *)a3;
- (void)addFieldFlagsToDictionaryRef:(__CFDictionary *)a3;
- (void)addFieldNameToDictionaryRef:(__CFDictionary *)a3;
- (void)addFieldTypeToDictionaryRef:(__CFDictionary *)a3;
- (void)addFieldValueToDictionaryRef:(__CFDictionary *)a3;
- (void)addFlagsToDictionaryRef:(__CFDictionary *)a3;
- (void)addHighlightingModeToDictionaryRef:(__CFDictionary *)a3;
- (void)addInkListToDictionaryRef:(__CFDictionary *)a3;
- (void)addLineEndingStylesToDictionaryRef:(__CFDictionary *)a3;
- (void)addLineToDictionaryRef:(__CFDictionary *)a3;
- (void)addMaxLenToDictionaryRef:(__CFDictionary *)a3;
- (void)addModificationDateToDictionaryRef:(__CFDictionary *)a3;
- (void)addNameToDictionaryRef:(__CFDictionary *)a3;
- (void)addNormalAndDownAppearanceToDictionaryRef:(__CFDictionary *)a3;
- (void)addNormalAndDownAppearanceWithStateToDictionaryRef:(__CFDictionary *)a3;
- (void)addNormalAppearanceToDictionaryRef:(__CFDictionary *)a3;
- (void)addNormalAppearanceWithStateToDictionaryRef:(__CFDictionary *)a3;
- (void)addOpenToDictionaryRef:(__CFDictionary *)a3;
- (void)addOptionsToDictionaryRef:(__CFDictionary *)a3;
- (void)addPageReferenceToDictionaryRef:(__CFDictionary *)a3;
- (void)addPopupToDictionaryRef:(__CFDictionary *)a3;
- (void)addQuadPointsToDictionaryRef:(__CFDictionary *)a3;
- (void)addQuaddingToDictionaryRef:(__CFDictionary *)a3;
- (void)addRect:(CGRect)a3 forKey:(__CFString *)a4 toDictionaryRef:(__CFDictionary *)a5;
- (void)addTextLabelToDictionaryRef:(__CFDictionary *)a3;
- (void)addToPageView;
- (void)cacheAppearances;
- (void)clearFormData;
- (void)commonInit;
- (void)dealloc;
- (void)decodeUnknownAnnotationProperties;
- (void)drawAppearance:(CGPDFForm *)a3 withBox:(int64_t)a4 inContext:(CGContext *)a5 inRect:(CGRect)a6 scaleProportional:(BOOL)a7 suppressTextRendering:(BOOL)a8;
- (void)drawAppearance:(CGPDFForm *)a3 withBox:(int64_t)a4 inContext:(CGContext *)a5 scaleProportional:(BOOL)a6;
- (void)drawCachedAppearance:(CGDisplayList *)a3 withBox:(int64_t)a4 inContext:(CGContext *)a5 inRect:(CGRect)a6 scaleProportional:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
- (void)getAppearancesFromDictionary:(CGPDFDictionary *)a3 ofType:(int)a4;
- (void)highlightRedaction:(BOOL)a3;
- (void)postAnnotationsChangedNotification;
- (void)printDictionaryKeyValues;
- (void)releaseCGPathArray;
- (void)removeAKAnnotationAdaptor;
- (void)removeBezierPath:(UIBezierPath *)path;
- (void)removeFromPageView;
- (void)removeValueForAnnotationKey:(PDFAnnotationKey)key;
- (void)secondaryInit;
- (void)setAlignment:(NSTextAlignment)alignment;
- (void)setAllowsToggleToOff:(BOOL)allowsToggleToOff;
- (void)setAppearance:(CGPDFForm *)a3 forType:(int)a4;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setBorder:(PDFBorder *)border;
- (void)setBounds:(CGRect)bounds;
- (void)setBoundsWithUndo:(CGRect)a3;
- (void)setButtonWidgetState:(PDFWidgetCellState)buttonWidgetState;
- (void)setButtonWidgetStateString:(NSString *)buttonWidgetStateString;
- (void)setCGPDFAnnotation:(CGPDFAnnotation *)a3;
- (void)setCaption:(NSString *)caption;
- (void)setChoices:(NSArray *)choices;
- (void)setColor:(UIColor *)color;
- (void)setContents:(NSString *)contents;
- (void)setContents:(id)a3 withUndo:(BOOL)a4;
- (void)setControl:(id)a3;
- (void)setDestination:(PDFDestination *)destination;
- (void)setDictionaryRef:(__CFDictionary *)a3;
- (void)setEndLineStyle:(PDFLineStyle)endLineStyle;
- (void)setEndPoint:(CGPoint)endPoint;
- (void)setFieldName:(NSString *)fieldName;
- (void)setFont:(UIFont *)font;
- (void)setFontColor:(UIColor *)fontColor;
- (void)setIconType:(PDFTextAnnotationIconType)iconType;
- (void)setInteriorColor:(UIColor *)interiorColor;
- (void)setIsSelected:(BOOL)a3;
- (void)setIsTransparent:(BOOL)a3;
- (void)setMarkupType:(PDFMarkupType)markupType;
- (void)setMaximumLength:(NSInteger)maximumLength;
- (void)setModificationDate:(NSDate *)modificationDate;
- (void)setOpen:(BOOL)open;
- (void)setPDFAnnotationDictionary:(id)a3;
- (void)setPage:(PDFPage *)page;
- (void)setParent:(id)a3;
- (void)setPointerIsOverAnnotation:(BOOL)a3;
- (void)setPopupInternal:(id)a3 scanPage:(BOOL)a4;
- (void)setQuadPointsForIndexSet:(id)a3 withUndo:(BOOL)a4;
- (void)setQuadrilateralPoints:(NSArray *)quadrilateralPoints;
- (void)setRadiosInUnison:(BOOL)radiosInUnison;
- (void)setScaleFactor:(double)a3;
- (void)setShouldBurnIn:(BOOL)a3;
- (void)setShouldDisplay:(BOOL)shouldDisplay;
- (void)setSignatureAnnotationForRendering:(id)a3;
- (void)setStampName:(NSString *)stampName;
- (void)setStartLineStyle:(PDFLineStyle)startLineStyle;
- (void)setStartPoint:(CGPoint)startPoint;
- (void)setTextContentType:(unint64_t)a3;
- (void)setType:(NSString *)type;
- (void)setURL:(NSURL *)URL;
- (void)setUserName:(NSString *)userName;
- (void)setValues:(NSArray *)values;
- (void)setWidgetControlType:(PDFWidgetControlType)widgetControlType;
- (void)setWidgetDefaultStringValue:(NSString *)widgetDefaultStringValue;
- (void)setWidgetFieldType:(NSString *)widgetFieldType;
- (void)setWidgetStringValue:(NSString *)widgetStringValue;
- (void)setupAKAnnotationAdaptorIfNecessary;
- (void)updateAnnotationEffect;
- (void)updateFormData;
@end

@implementation PDFAnnotation

- (id)initCommonWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = PDFAnnotation;
  v7 = [(PDFAnnotation *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(PDFAnnotation *)v7 commonInit];
    [(PDFAnnotation *)v8 setBounds:x, y, width, height];
    [(PDFAnnotation *)v8 secondaryInit];
    v8->_isFullyConstructed = 1;
  }

  return v8;
}

- (PDFAnnotation)initWithBounds:(CGRect)bounds forType:(PDFAnnotationSubtype)annotationType withProperties:(NSDictionary *)properties
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  v11 = annotationType;
  v12 = properties;
  v32.receiver = self;
  v32.super_class = PDFAnnotation;
  v13 = [(PDFAnnotation *)&v32 init];
  v14 = v13;
  if (!v13)
  {
LABEL_18:
    v24 = v14;
    goto LABEL_25;
  }

  [(PDFAnnotation *)v13 commonInit];
  if (v11)
  {
    [(PDFAnnotation *)v14 setRect:@"/Rect" forAnnotationKey:x, y, width, height];
    [(PDFAnnotation *)v14 setValue:v11 forAnnotationKey:@"/Subtype"];
    [(PDFAnnotation *)v14 secondaryInit];
    if (v12)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v12;
      v16 = [(NSDictionary *)v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v26 = v12;
        v27 = v11;
        v18 = 0;
        v19 = *v29;
        while (2)
        {
          v20 = 0;
          v21 = v18;
          do
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v28 + 1) + 8 * v20);
            v18 = [(NSDictionary *)v15 objectForKey:v22];

            v23 = [(PDFAnnotation *)v14 setValue:v18 forAnnotationKey:v22];
            if ([v22 isEqualToString:@"/Subtype"])
            {
              if (!v23)
              {
                goto LABEL_22;
              }
            }

            else if (!(v23 | (([v22 isEqualToString:@"/Rect"] & 1) == 0)))
            {
LABEL_22:
              if (v14->_loggingEnabled)
              {
                NSLog(&cfstr_ErrorCannotCre_0.isa, v22);
              }

              v24 = 0;
              v12 = v26;
              v11 = v27;
              goto LABEL_25;
            }

            ++v20;
            v21 = v18;
          }

          while (v17 != v20);
          v17 = [(NSDictionary *)v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v12 = v26;
        v11 = v27;
      }
    }

    v14->_isFullyConstructed = 1;
    goto LABEL_18;
  }

  if (v14->_loggingEnabled)
  {
    NSLog(&cfstr_ErrorCannotCre.isa);
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (PDFAnnotation)initWithDictionary:(NSDictionary *)dictionary forPage:(PDFPage *)page
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = dictionary;
  v7 = page;
  v29.receiver = self;
  v29.super_class = PDFAnnotation;
  v8 = [(PDFAnnotation *)&v29 init];
  v9 = v8;
  if (v8)
  {
    [(PDFAnnotation *)v8 commonInit];
    v10 = [(NSDictionary *)v6 objectForKey:@"/Subtype"];

    if (v10)
    {
      v11 = [(NSDictionary *)v6 objectForKey:@"/Rect"];

      if (v11)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = v6;
        v13 = [(NSDictionary *)v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v23 = v7;
          v24 = v6;
          v15 = 0;
          v16 = *v26;
          while (2)
          {
            v17 = 0;
            v18 = v15;
            do
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v25 + 1) + 8 * v17);
              v15 = [(NSDictionary *)v12 objectForKey:v19];

              v20 = [(PDFAnnotation *)v9 setValue:v15 forAnnotationKey:v19];
              if ([v19 isEqualToString:@"/Subtype"])
              {
                if (!v20)
                {
                  goto LABEL_22;
                }
              }

              else if (!(v20 | (([v19 isEqualToString:@"/Rect"] & 1) == 0)))
              {
LABEL_22:
                if (v9->_loggingEnabled)
                {
                  NSLog(&cfstr_ErrorCannotCre_0.isa, v19);
                }

                v21 = 0;
                v7 = v23;
                v6 = v24;
                goto LABEL_28;
              }

              ++v17;
              v18 = v15;
            }

            while (v14 != v17);
            v14 = [(NSDictionary *)v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

          v7 = v23;
          v6 = v24;
        }

        objc_storeWeak(&v9->_page, v7);
        [(PDFAnnotation *)v9 setValue:v7 forAnnotationKey:@"/P"];
        if (v7)
        {
          [(PDFPage *)v7 addAnnotation:v9];
        }

        v9->_isFullyConstructed = 1;
        goto LABEL_19;
      }

      if (v9->_loggingEnabled)
      {
        NSLog(&cfstr_ErrorCannotCre_2.isa);
      }
    }

    else if (v9->_loggingEnabled)
    {
      NSLog(&cfstr_ErrorCannotCre_1.isa);
    }

    v21 = 0;
    goto LABEL_28;
  }

LABEL_19:
  v21 = v9;
LABEL_28:

  return v21;
}

- (void)commonInit
{
  self->_sourceDictionary = 0;
  self->_dictionaryRef = 0;
  objc_storeWeak(&self->_page, 0);
  v3 = [MEMORY[0x1E696AFB0] UUID];
  pdfAnnotationUUID = self->_pdfAnnotationUUID;
  self->_pdfAnnotationUUID = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  PDFAnnotationDictionary = self->_PDFAnnotationDictionary;
  self->_PDFAnnotationDictionary = v5;

  v7 = [(PDFAnnotation *)self getPDFKeyMappingDictionary];
  PDFAnnotationKeyMapping = self->_PDFAnnotationKeyMapping;
  self->_PDFAnnotationKeyMapping = v7;

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  internalPDFAnnotationDictionary = self->_internalPDFAnnotationDictionary;
  self->_internalPDFAnnotationDictionary = v9;

  akAnnotationForCopying = self->_akAnnotationForCopying;
  self->_akAnnotationForCopying = 0;

  self->_loggingEnabled = GetDefaultsWriteAnnotationLoggingEnabled();
  self->_shouldExport = 1;
  [(PDFAnnotation *)self setShouldPrint:1];
  *&self->_downAppearance = 0u;
  *&self->_rolloverOffAppearance = 0u;
  *&self->_normalAppearance = 0u;
  self->_saveAppearance = 1;
  self->_cachedAppearancesLock._os_unfair_lock_opaque = 0;
  *&self->_isSelected = 0;
  quadPointsIndexSet = self->_quadPointsIndexSet;
  self->_quadPointsIndexSet = 0;

  self->_quadPointsPath = 0;
  objc_storeWeak(&self->_parent, 0);
  popup = self->_popup;
  self->_popup = 0;

  self->_popupDictionary = 0;
  *&self->_popupDrawCloseWidget = 257;
  self->_cgPaths = 0;
  v14 = objc_alloc_init(MEMORY[0x1E696AD10]);
  pathLock = self->_pathLock;
  self->_pathLock = v14;

  *&self->_isSignatureWidget = 0;
  signatureAnnotationForRendering = self->_signatureAnnotationForRendering;
  self->_signatureAnnotationForRendering = 0;

  widgetOnStateString = self->_widgetOnStateString;
  self->_widgetOnStateString = @"Yes";

  objc_storeWeak(&self->_control, 0);
  *&self->_pointerIsOverAnnotation = 0;
  self->_formContentType = 0;
  self->_autofillEntryType = 0;
  labelText = self->_labelText;
  self->_labelText = 0;
  self->_shouldReportAnalytics = 1;
  self->_suppressAppearanceStreamText = 0;

  *&self->_restoreLinePoints = 0;
  v19 = *MEMORY[0x1E695EFF8];
  self->_startPoint = *MEMORY[0x1E695EFF8];
  self->_endPoint = v19;
  quadPoints = self->_quadPoints;
  self->_quadPoints = 0;

  self->_isTransparent = 0;
  objc_storeWeak(&self->_accessibilityNode, 0);
  self->_scaleFactor = 1.0;
  *&self->_isFullyConstructed = 0;
  v21 = self->_PDFAnnotationDictionary;
  v22 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(NSMutableDictionary *)v21 setObject:v22 forKey:@"/Rect"];
}

- (void)secondaryInit
{
  v35 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  [(PDFAnnotation *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = NSFullUserName();
  [(PDFAnnotation *)self setUserName:v11];

  v12 = [MEMORY[0x1E695DF00] now];
  [(PDFAnnotation *)self setModificationDate:v12];

  if ([v35 isEqualToString:@"/Circle"])
  {
    goto LABEL_2;
  }

  if ([v35 isEqualToString:@"/FreeText"])
  {
    v15 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] systemFontSize];
    v16 = [v15 systemFontOfSize:?];
    [(PDFAnnotation *)self setFont:v16];

    v17 = [MEMORY[0x1E69DC888] blackColor];
    [(PDFAnnotation *)self setFontColor:v17];

    v18 = [MEMORY[0x1E69DC888] yellowColor];
LABEL_5:
    v14 = v18;
    [(PDFAnnotation *)self setColor:v18];
    goto LABEL_11;
  }

  if ([v35 isEqualToString:@"/Ink"])
  {
    goto LABEL_2;
  }

  if ([v35 isEqualToString:@"/Line"])
  {
    [(PDFAnnotation *)self setStartPoint:PDFPointMake(0.5, 0.5)];
    [(PDFAnnotation *)self setEndPoint:PDFPointMake(v8 + -0.5, v10 + -0.5)];
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"/None", 0}];
    [(PDFAnnotation *)self setValue:v14 forAnnotationKey:@"/LE"];
    v19 = objc_alloc_init(PDFBorder);
    [(PDFAnnotation *)self setBorder:v19];
    v20 = [MEMORY[0x1E69DC888] blackColor];
    [(PDFAnnotation *)self setColor:v20];
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  if (([v35 isEqualToString:@"/Link"] & 1) == 0)
  {
    if ([(PDFAnnotation *)self isMarkupAnnotationSubtype])
    {
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
      v21 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{PDFPointMake(0.0, v10)}];
      [(PDFBorder *)v14 addObject:v21];

      v22 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{PDFPointMake(v8, v10)}];
      [(PDFBorder *)v14 addObject:v22];

      v23 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{PDFPointMake(0.0, 0.0)}];
      [(PDFBorder *)v14 addObject:v23];

      v24 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{PDFPointMake(v8, 0.0)}];
      [(PDFBorder *)v14 addObject:v24];

      [(PDFAnnotation *)self setQuadrilateralPoints:v14];
      v19 = [MEMORY[0x1E69DC888] yellowColor];
      [(PDFAnnotation *)self setColor:v19];
      goto LABEL_10;
    }

    if (([v35 isEqualToString:@"/Popup"] & 1) == 0)
    {
      if (![v35 isEqualToString:@"/Square"])
      {
        if ([v35 isEqualToString:@"/Stamp"])
        {
          v18 = [MEMORY[0x1E69DC888] blackColor];
          goto LABEL_5;
        }

        if ([v35 isEqualToString:@"/Text"])
        {
          v25 = [MEMORY[0x1E69DC888] blackColor];
          [(PDFAnnotation *)self setColor:v25];

          v26 = objc_alloc([(PDFAnnotation *)self annotationSubclassForPopup]);
          v27 = PDFRectGetMaxX(v4, v6, v8) + 4.0;
          v28.n128_f64[0] = PDFRectGetMaxY(v4, v6, v8, v10) + 4.0;
          v29.n128_f64[0] = v27;
          PDFRectMake(v29, v28, 72.0, 36.0);
          v14 = [v26 initWithBounds:@"/Popup" forType:0 withProperties:?];
          [(PDFAnnotation *)self setPopup:v14];
          goto LABEL_11;
        }

        if ([v35 isEqualToString:@"/Widget"])
        {
          [(PDFAnnotation *)self _generateFormFieldName];
          v14 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
          if (![(PDFBorder *)v14 isEqualToString:@"/Btn"])
          {
            if (([(PDFBorder *)v14 isEqualToString:@"/Ch"]& 1) != 0)
            {
              goto LABEL_11;
            }

            if (![(PDFBorder *)v14 isEqualToString:@"/Tx"])
            {
              [(PDFBorder *)v14 isEqualToString:@"/Sig"];
              goto LABEL_11;
            }

            v34 = MEMORY[0x1E69DB878];
            [MEMORY[0x1E69DB878] systemFontSize];
            v19 = [v34 systemFontOfSize:?];
            [(PDFAnnotation *)self setFont:v19];
            goto LABEL_10;
          }

          [(PDFAnnotation *)self setValue:@"Off" forAnnotationKey:@"/V"];
          [(PDFAnnotation *)self setWidgetOnStateString:@"Yes"];
          v30 = [MEMORY[0x1E69DC888] blackColor];
          [(PDFAnnotation *)self setValue:v30 forAnnotationKey:@"/C"];

          v19 = [[PDFAppearanceCharacteristics alloc] initWithAnnotationDictionary:0 forControlType:-1];
          v31 = PDFColorCreateFromWhiteAlpha([(PDFAnnotation *)self setValue:v19 forAnnotationKey:@"/MK"], 0.75, 1.0);
          [(PDFAnnotation *)self setBackgroundColor:v31];

          v32 = MEMORY[0x1E69DB878];
          [MEMORY[0x1E69DB878] systemFontSize];
          v33 = [v32 systemFontOfSize:?];
          [(PDFAnnotation *)self setFont:v33];

          v20 = [MEMORY[0x1E69DC888] blackColor];
          [(PDFAnnotation *)self setFontColor:v20];
          goto LABEL_9;
        }

        goto LABEL_12;
      }

LABEL_2:
      v13 = [MEMORY[0x1E69DC888] blackColor];
      [(PDFAnnotation *)self setColor:v13];

      v14 = objc_alloc_init(PDFBorder);
      [(PDFAnnotation *)self setBorder:v14];
LABEL_11:
    }
  }

LABEL_12:
}

- (void)_generateFormFieldName
{
  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v7 isEqualToString:@"/Btn"])
  {
    v3 = @"button%d";
    v4 = &buttonWidgetCount;
  }

  else if ([v7 isEqualToString:@"/Ch"])
  {
    v3 = @"choice%d";
    v4 = &choiceWidgetCount;
  }

  else
  {
    if (![v7 isEqualToString:@"/Tx"])
    {
      goto LABEL_9;
    }

    v3 = @"text%d";
    v4 = &textWidgetCount;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v3, *v4];
  ++*v4;
  if (v5)
  {
    v6 = v5;
    [(PDFAnnotation *)self setFieldName:v5];
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = a3;
  v49 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() allocWithZone:a3];
  [(PDFAnnotation *)self bounds];
  v6 = [v5 initCommonWithBounds:?];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(v6 + 56);
    *(v6 + 56) = v9;

    v11 = [(PDFAnnotation *)self getPDFKeyMappingDictionary];
    v12 = *(v6 + 64);
    *(v6 + 64) = v11;

    [v6 setSavesAppearanceStream:{-[PDFAnnotation savesAppearanceStream](self, "savesAppearanceStream")}];
    *(v6 + 8) = self->_loggingEnabled;
    *(v6 + 9) = self->_shouldExport;
    *(v6 + 145) = self->_isHighlighted;
    *(v6 + 192) = self->_popupDrawCloseWidget;
    *(v6 + 193) = self->_popupDrawText;
    v13 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v14 = *(v6 + 208);
    *(v6 + 208) = v13;

    *(v6 + 216) = self->_isSignatureWidget;
    objc_storeStrong((v6 + 224), self->_signatureAnnotationForRendering);
    objc_storeStrong((v6 + 232), self->_widgetOnStateString);
    v15 = [(NSMutableDictionary *)self->_internalPDFAnnotationDictionary mutableCopyWithZone:v3];
    v16 = *(v6 + 72);
    *(v6 + 72) = v15;

    *(v6 + 264) = self->_formContentType;
    objc_storeStrong((v6 + 256), self->_autoFillTextContentType);
    *(v6 + 272) = self->_autofillEntryType;
    *(v6 + 290) = self->_shouldReportAnalytics;
    *(v6 + 292) = self->_suppressAppearanceStreamText;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = self->_PDFAnnotationDictionary;
    v17 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v45;
      do
      {
        v20 = 0;
        v42 = v18;
        do
        {
          if (*v45 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v44 + 1) + 8 * v20);
          v22 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:v21, v42];
          if ([v22 conformsToProtocol:&unk_1F4190350])
          {
            v23 = self;
            v24 = *(v6 + 56);
            v25 = v19;
            v26 = v3;
            v27 = [v22 copyWithZone:v3];
            v28 = v24;
            self = v23;
            [v28 setObject:v27 forKey:v21];

            v3 = v26;
            v19 = v25;
            v18 = v42;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v18);
    }

    v29 = 0;
    do
    {
      if ([(PDFAnnotation *)self appearance:v29])
      {
        CGPDFFormGetStream();
        [v6 setAppearance:CGPDFFormCreate() forType:v29];
      }

      v29 = (v29 + 1);
    }

    while (v29 != 6);
    v30 = self->_popup;
    if (v30)
    {
      v31 = v30;
      v32 = [(PDFAnnotation *)v30 copyWithZone:v3];

      [v6 setPopupInternal:v32 scanPage:0];
    }

    v33 = [(PDFAnnotation *)self border];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 copyWithZone:v3];

      [v6 setBorder:v35];
    }

    akAnnotationAdaptor = self->_akAnnotationAdaptor;
    if (akAnnotationAdaptor)
    {
      v37 = [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor akAnnotation];
      v38 = [v37 copyWithZone:v3];
    }

    else
    {
      akAnnotationForCopying = self->_akAnnotationForCopying;
      if (akAnnotationForCopying)
      {
        v38 = [(NSCopying *)akAnnotationForCopying copyWithZone:v3];
      }

      else
      {
        v38 = 0;
      }
    }

    v40 = *(v6 + 392);
    *(v6 + 392) = v38;

    *(v6 + 376) = 1;
  }

  return v6;
}

- (PDFAnnotation)initWithCoder:(id)a3
{
  v5 = a3;
  if ([v5 allowsKeyedCoding])
  {
    self = [(PDFAnnotation *)self init];
    if (self)
    {
      v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"PDFAnnotDictionary"];
      [(PDFAnnotation *)self setPDFAnnotationDictionary:v6];

      -[PDFAnnotation setSavesAppearanceStream:](self, "setSavesAppearanceStream:", [v5 decodeBoolForKey:@"PDFAnnotBaseSaveAppearance"]);
      -[PDFAnnotation setForExport:](self, "setForExport:", [v5 decodeBoolForKey:@"PDFAnnotBaseExport"]);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E696A4C8];
    v9 = NSStringFromSelector(a2);
    [v7 raise:v8 format:{@"%@ - only keyed coders are supported by %@", v9, objc_opt_class()}];
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  PDFAnnotationDictionary = self->_PDFAnnotationDictionary;
  v5 = a3;
  [v5 encodeObject:PDFAnnotationDictionary forKey:@"PDFAnnotDictionary"];
  [v5 encodeBool:-[PDFAnnotation savesAppearanceStream](self forKey:{"savesAppearanceStream"), @"PDFAnnotBaseSaveAppearance"}];
  [v5 encodeBool:self->_shouldExport forKey:@"PDFAnnotBaseExport"];
}

- (void)dealloc
{
  [(PDFAnnotation *)self removeAKAnnotationAdaptor];
  [(PDFAnnotation *)self _releaseDictionaryRef];
  if (self->_normalAppearance)
  {
    CGPDFFormRelease();
  }

  if (self->_rolloverAppearance)
  {
    CGPDFFormRelease();
  }

  if (self->_downAppearance)
  {
    CGPDFFormRelease();
  }

  if (self->_normalOffAppearance)
  {
    CGPDFFormRelease();
  }

  if (self->_rolloverOffAppearance)
  {
    CGPDFFormRelease();
  }

  if (self->_downOffAppearance)
  {
    CGPDFFormRelease();
  }

  quadPointsPath = self->_quadPointsPath;
  if (quadPointsPath)
  {
    CGPathRelease(quadPointsPath);
  }

  if (self->_cgPaths)
  {
    [(PDFAnnotation *)self releaseCGPathArray];
  }

  cgAnnotation = self->_cgAnnotation;
  if (cgAnnotation)
  {
    CFRelease(cgAnnotation);
  }

  v5.receiver = self;
  v5.super_class = PDFAnnotation;
  [(PDFAnnotation *)&v5 dealloc];
}

- (void)_releaseDictionaryRef
{
  dictionaryRef = self->_dictionaryRef;
  if (dictionaryRef)
  {
    CFDictionaryRemoveValue(dictionaryRef, @"/Parent");
    CFDictionaryRemoveValue(self->_dictionaryRef, @"/Popup");
    v4 = self->_dictionaryRef;

    CFRelease(v4);
  }
}

- (void)setupAKAnnotationAdaptorIfNecessary
{
  if (GetDefaultsWriteAKEnabled() && !self->_akAnnotationAdaptor)
  {
    isFullyConstructed = self->_isFullyConstructed;
    self->_isFullyConstructed = 0;
    akAnnotationForCopying = self->_akAnnotationForCopying;
    v10 = akAnnotationForCopying;
    if (akAnnotationForCopying)
    {
      v5 = [[PDFAKAnnotationAdaptor alloc] initWithPDFAnnotation:self andAKAnnotation:akAnnotationForCopying];
      akAnnotationAdaptor = self->_akAnnotationAdaptor;
      self->_akAnnotationAdaptor = v5;

      v7 = self->_akAnnotationForCopying;
      self->_akAnnotationForCopying = 0;
    }

    else
    {
      v8 = 0;
      v9 = [PDFAKAnnotationAdaptor annotationAdaptorWithPDFAnnotation:self andCGPDFAnnotation:[(PDFAnnotation *)self CGPDFAnnotation] andPDFDictionary:[(PDFAnnotation *)self sourceDictionary]];
      v7 = self->_akAnnotationAdaptor;
      self->_akAnnotationAdaptor = v9;
    }

    self->_isFullyConstructed = isFullyConstructed;
  }
}

- (void)removeAKAnnotationAdaptor
{
  akAnnotationAdaptor = self->_akAnnotationAdaptor;
  if (akAnnotationAdaptor)
  {
    [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor teardown];
    v4 = self->_akAnnotationAdaptor;
    self->_akAnnotationAdaptor = 0;
  }
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

- (void)setPage:(PDFPage *)page
{
  v4 = page;
  objc_storeWeak(&self->_page, v4);
  if (v4)
  {
    [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/P"];
  }

  else
  {
    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/P"];
  }
}

- (NSString)type
{
  v2 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:@"/Subtype"];
  v3 = [v2 substringFromIndex:1];

  return v3;
}

- (void)setType:(NSString *)type
{
  v4 = [(NSString *)type copy];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/Subtype"];
}

- (CGRect)bounds
{
  v2 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:@"/Rect"];
  [v2 PDFKitPDFRectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PDFAnnotation *)self _annotationAllowsCommenting:@"setBounds:"])
  {
    [(PDFAnnotation *)self _savePropertiesBeforeSetBounds];
    v8 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{x, y, width, height}];
    [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v8 forKey:@"/Rect"];
    [(PDFAnnotation *)self _restorePropertiesAfterSetBounds];
    [(PDFAnnotation *)self _didSetValue:v8 forAnnotationKey:@"/Rect"];
    [(PDFAnnotation *)self updateAnnotationEffect];
  }
}

- (void)setBoundsWithUndo:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PDFAnnotation *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(PDFAnnotation *)self setBounds:x, y, width, height];
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v26 = [WeakRetained view];

  if (v26)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = PDFKitLocalizedString(@"Change of %@ %@");
    v19 = [(PDFAnnotation *)self displayName];
    v20 = [PDFAnnotation PresentableStringForAnnotationKey:@"/Rect"];
    v21 = [v17 stringWithFormat:v18, v19, v20];

    v22 = [v26 undoManager];
    v23 = [v22 prepareWithInvocationTarget:self];
    [v23 setBoundsWithUndo:{v9, v11, v13, v15}];

    v24 = [v26 undoManager];
    v25 = PDFKitLocalizedString(v21);
    [v24 setActionName:v25];
  }
}

- (void)_savePropertiesBeforeSetBounds
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/L"];
  self->_restoreLinePoints = v3 != 0;

  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/QuadPoints"];
  self->_restoreQuadPoints = v4 != 0;

  if (self->_restoreLinePoints)
  {
    [(PDFAnnotation *)self startPoint];
    self->_startPoint.x = v5;
    self->_startPoint.y = v6;
    [(PDFAnnotation *)self endPoint];
    self->_endPoint.x = v7;
    self->_endPoint.y = v8;
  }

  if (self->_restoreQuadPoints)
  {
    v9 = [(PDFAnnotation *)self quadrilateralPoints];
    quadPoints = self->_quadPoints;
    self->_quadPoints = v9;

    MEMORY[0x1EEE66BB8](v9, quadPoints);
  }
}

- (void)_restorePropertiesAfterSetBounds
{
  if (self->_restoreLinePoints)
  {
    [(PDFAnnotation *)self setStartPoint:self->_startPoint.x, self->_startPoint.y];
    [(PDFAnnotation *)self setEndPoint:self->_endPoint.x, self->_endPoint.y];
  }

  if (self->_restoreQuadPoints)
  {
    quadPoints = self->_quadPoints;

    [(PDFAnnotation *)self setQuadrilateralPoints:quadPoints];
  }
}

- (void)setModificationDate:(NSDate *)modificationDate
{
  if (modificationDate)
  {
    v4 = [(NSDate *)modificationDate copy];
    [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/M"];
  }

  else
  {

    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/M"];
  }
}

- (NSString)userName
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v4 = [v3 isEqualToString:@"/Widget"];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:@"/T"];
  }

  return v5;
}

- (void)setUserName:(NSString *)userName
{
  v5 = userName;
  if ([(PDFAnnotation *)self isMarkupAnnotation])
  {
    if (v5)
    {
      v4 = [(NSString *)v5 copy];
      [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/T"];
    }

    else
    {
      [(PDFAnnotation *)self removeValueForAnnotationKey:@"/T"];
    }
  }
}

- (BOOL)isSignature
{
  if (self->_isSignatureWidget)
  {
    return ![(PDFAnnotation *)self isSignatureMarker:v2];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isSignatureWidget
{
  if (self->_isSignatureWidget)
  {
    return ![(PDFAnnotation *)self isSignatureMarker:v2];
  }

  else
  {
    return 0;
  }
}

- (void)setShouldBurnIn:(BOOL)a3
{
  self->_shouldBurnIn = a3;
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_page);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v4 = [WeakRetained document];
      [v4 setDocumentHasBurnInAnnotations:1];

      WeakRetained = v5;
    }
  }
}

- (id)control
{
  WeakRetained = objc_loadWeakRetained(&self->_control);

  return WeakRetained;
}

- (id)uiControl
{
  WeakRetained = objc_loadWeakRetained(&self->_control);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [WeakRetained textView];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [WeakRetained view];
    }

    else
    {
      v3 = WeakRetained;
    }
  }

  v4 = v3;

  return v4;
}

- (void)setControl:(id)a3
{
  objc_storeWeak(&self->_control, a3);

  [(PDFAnnotation *)self updateAnnotationEffect];
}

- (void)setPointerIsOverAnnotation:(BOOL)a3
{
  if (self->_pointerIsOverAnnotation != a3)
  {
    self->_pointerIsOverAnnotation = a3;
    [(PDFAnnotation *)self updateAnnotationEffect];
  }
}

- (BOOL)shouldComb
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v3 isEqualToString:@"/Widget"] && objc_msgSend(v4, "isEqualToString:", @"/Tx") && -[PDFAnnotation hasComb](self, "hasComb"))
  {
    v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MaxLen"];
    if (v5 && ![(PDFAnnotation *)self isMultiline])
    {
      v6 = ![(PDFAnnotation *)self isPasswordField];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)inFormFillingMode
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained view], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 isInFormFillingMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)interactiveBackgroundColor
{
  if (self->_shouldHideInteractiveBackgroundColor)
  {
    goto LABEL_2;
  }

  if ([(PDFAnnotation *)self inFormFillingMode]|| [(PDFAnnotation *)self pointerIsOverAnnotation]&& ([(PDFAnnotation *)self isTextWidget]|| [(PDFAnnotation *)self isSignatureWidget]))
  {
    v2 = +[PDFAnnotation PDFFormFieldBackgroundColor];
    goto LABEL_5;
  }

  if (!GetDefaultsWriteColorWidgetBackgrounds() || (-[PDFAnnotation valueForAnnotationKey:](self, "valueForAnnotationKey:", @"/Subtype"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"/Widget"], v5, !v6))
  {
LABEL_2:
    v2 = 0;
    goto LABEL_5;
  }

  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v7 isEqualToString:@"/Btn"])
  {
    v8 = [(PDFAnnotation *)self widgetControlType];
    if (v8)
    {
      if (v8 == kPDFWidgetRadioButtonControl)
      {
        v9 = [MEMORY[0x1E69DC888] redColor];
      }

      else
      {
        if (v8 == kPDFWidgetCheckBoxControl)
        {
          [MEMORY[0x1E69DC888] greenColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] orangeColor];
        }
        v9 = ;
      }
    }

    else
    {
      v9 = [MEMORY[0x1E69DC888] purpleColor];
    }

    goto LABEL_28;
  }

  if ([v7 isEqualToString:@"/Ch"])
  {
    v9 = [MEMORY[0x1E69DC888] yellowColor];
LABEL_28:
    v10 = v9;
    v2 = [v9 colorWithAlphaComponent:0.2];

    goto LABEL_29;
  }

  if (![v7 isEqualToString:@"/Tx"])
  {
    if (![v7 isEqualToString:@"/Sig"])
    {
      v2 = 0;
      goto LABEL_29;
    }

    v9 = [MEMORY[0x1E69DC888] cyanColor];
    goto LABEL_28;
  }

  v2 = +[PDFAnnotation PDFFormFieldBackgroundColor];
LABEL_29:

LABEL_5:

  return v2;
}

- (unint64_t)markupStyle
{
  v3 = [(PDFAnnotation *)self markupType];
  v4 = 8;
  if (v3 > kPDFMarkupTypeStrikeOut)
  {
    v6 = 5;
    if (v3 == kPDFMarkupTypeRedact)
    {
      v4 = 7;
    }

    v5 = v3 == kPDFMarkupTypeUnderline;
    goto LABEL_7;
  }

  if (v3)
  {
    v5 = v3 == kPDFMarkupTypeStrikeOut;
    v6 = 6;
LABEL_7:
    if (v5)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  v9 = [(PDFAnnotation *)self color];
  v10 = +[PDFAnnotation PDFMarkupColors];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__PDFAnnotation_markupStyle__block_invoke;
  v12[3] = &unk_1E8150B48;
  v13 = v9;
  v11 = v9;
  v7 = [v10 indexOfObjectPassingTest:v12];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  return v7;
}

- (CGRect)noteBounds
{
  v3 = [(PDFAnnotation *)self popup];

  if (v3)
  {
    [(PDFAnnotation *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
    v13 = [v12 isEqualToString:@"/Text"];

    if ((v13 & 1) == 0)
    {
      v14 = PDFRectGetMaxX(v5, v7, v9) + 4.0;
      v15.n128_f64[0] = PDFRectGetMaxY(v5, v7, v9, v11) + 4.0;
      v16.n128_f64[0] = v14;
      v5 = PDFRectMake(v16, v15, 15.0, 15.0);
      v7 = v17;
      v9 = v18;
      v11 = v19;
    }
  }

  else
  {
    v5 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (BOOL)noteContainsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PDFAnnotation *)self noteBounds];
  v9 = x;
  v10 = y;

  return PDFRectContainsPoint(*&v5, *&v9);
}

- (id)indexSetForQuadPoints
{
  quadPointsIndexSet = self->_quadPointsIndexSet;
  if (quadPointsIndexSet)
  {
    v3 = quadPointsIndexSet;
  }

  else
  {
    location = &self->_quadPointsIndexSet;
    WeakRetained = objc_loadWeakRetained(&self->_page);
    v53 = [WeakRetained string];
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/QuadPoints"];
    v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if ([v6 count] >= 4)
    {
      v8 = 0;
      v9 = 3;
      v52 = v7;
      do
      {
        v10 = [v6 objectAtIndex:{v9 - 3, location}];
        [v10 PDFKitPDFPointValue];
        v12 = v11;
        v14 = v13;

        v15 = [v6 objectAtIndex:v9 - 1];
        [v15 PDFKitPDFPointValue];
        v17 = v16;
        v19 = v18;

        v20 = PDFPointMake((v12 + v17) * 0.5, (v14 + v19) * 0.5);
        v22 = v21;
        v23 = [v6 objectAtIndex:v9 - 2];
        [v23 PDFKitPDFPointValue];
        v25 = v24;
        v27 = v26;

        v28 = [v6 objectAtIndex:v9];
        [v28 PDFKitPDFPointValue];
        v30 = v29;
        v32 = v31;

        v33 = PDFPointMake((v25 + v30) * 0.5, (v27 + v32) * 0.5);
        v56 = [WeakRetained selectionFromPoint:0 toPoint:v20 type:{v22, v33, v34}];
        v35 = [v56 rangeAtIndex:0 onPage:WeakRetained];
        v37 = v36;
        v38 = [v7 lastIndex];
        if ([v7 lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = v38 + 1;
          v40 = v35 - (v38 + 1);
          if (v37 && v40 >= 1)
          {
            v54 = [v53 substringWithRange:{objc_msgSend(v7, "lastIndex") + 1, v40}];
            [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v42 = v55 = v8;
            [v54 stringByTrimmingCharactersInSet:v42];
            v44 = v43 = WeakRetained;
            v45 = v6;
            v46 = [v44 length];

            WeakRetained = v43;
            v47 = v46 == 0;
            v6 = v45;
            v7 = v52;
            if (v47)
            {
              v35 = v39;
              v48 = v40;
            }

            else
            {
              v48 = 0;
            }

            v37 += v48;
            v8 = v55;
          }
        }

        [v7 addIndexesInRange:{v35, v37}];

        ++v8;
        v9 += 4;
      }

      while (v8 < [v6 count] >> 2);
    }

    if ([v7 count])
    {
      objc_storeStrong(locationa, v7);
    }

    v3 = *locationa;
  }

  return v3;
}

- (void)setQuadPointsForIndexSet:(id)a3 withUndo:(BOOL)a4
{
  v5 = a3;
  v40 = self;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v6 = [MEMORY[0x1E695DF70] array];
  if ([v5 rangeCount])
  {
    v7 = 0;
    v41 = v5;
    do
    {
      v8 = [v5 rangeAtIndex:v7];
      v43 = [WeakRetained selectionForRange:{v8, v9}];
      if (v43)
      {
        v10 = [v43 cgSelections];
        Count = CFArrayGetCount(v10);
        if (Count >= 1)
        {
          v12 = Count;
          for (i = 0; i != v12; ++i)
          {
            CFArrayGetValueAtIndex(v10, i);
            NumberOfRectsAndTransforms = CGPDFSelectionGetNumberOfRectsAndTransforms();
            if (NumberOfRectsAndTransforms >= 1)
            {
              v15 = NumberOfRectsAndTransforms;
              for (j = 0; j != v15; ++j)
              {
                v49 = 0u;
                *v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v46 = 0u;
                if ((CGPDFSelectionGetRectAndTransform() & 1) == 0)
                {
                  v17 = (*(&v49 + 1) + v50[1]) * *&v47;
                  v18 = (*(&v49 + 1) + v50[1]) * *(&v47 + 1);
                  v19 = *&v48 + v17 + *&v46 * (*&v49 + v50[0]);
                  v20 = *(&v48 + 1) + v18 + *(&v46 + 1) * (*&v49 + v50[0]);
                  v21 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{*&v48 + v17 + *&v46 * *&v49, *(&v48 + 1) + v18 + *(&v46 + 1) * *&v49}];
                  [v6 addObject:v21];

                  v22 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{v19, v20}];
                  [v6 addObject:v22];

                  v23 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{*&v48 + *(&v49 + 1) * *&v47 + *&v46 * *&v49, *(&v48 + 1) + *(&v49 + 1) * *(&v47 + 1) + *(&v46 + 1) * *&v49}];
                  [v6 addObject:v23];

                  v24 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{*&v48 + *(&v49 + 1) * *&v47 + *&v46 * (*&v49 + v50[0]), *(&v48 + 1) + *(&v49 + 1) * *(&v47 + 1) + *(&v46 + 1) * (*&v49 + v50[0])}];
                  [v6 addObject:v24];
                }
              }
            }
          }
        }
      }

      ++v7;
      v5 = v41;
    }

    while (v7 < [v41 rangeCount]);
  }

  v25 = v40->_quadPointsIndexSet;
  v45 = 0.0;
  *&v46 = 0;
  *&v49 = 0;
  v44 = 0.0;
  PDFPointsGetMinMaxValues(v6, &v46, &v49, &v45, &v44);
  v26.n128_u64[0] = v46;
  v27.n128_u64[0] = v49;
  [(PDFAnnotation *)v40 setBounds:PDFRectMake(v26, v27, v45 - *&v46, v44 - *&v49)];
  objc_storeStrong(&v40->_quadPointsIndexSet, a3);
  [(PDFAnnotation *)v40 setValue:v6 forAnnotationKey:@"/QuadPoints"];
  v28 = [WeakRetained view];
  if (v28 && a4)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = PDFKitLocalizedString(@"Change of %@ %@");
    v31 = [(PDFAnnotation *)v40 displayName];
    v32 = [PDFAnnotation PresentableStringForAnnotationKey:@"/QuadPoints"];
    v33 = [v29 stringWithFormat:v30, v31, v32];

    v34 = [v28 undoManager];
    v35 = [v34 prepareWithInvocationTarget:v40];
    [v35 setQuadPointsForIndexSet:v25 withUndo:1];

    v36 = [v28 undoManager];
    v37 = PDFKitLocalizedString(v33);
    [v36 setActionName:v37];
  }
}

- (BOOL)isTextMarkupOrNoteAnnotation
{
  if ([(PDFAnnotation *)self isTextMarkupAnnotation])
  {
    return 1;
  }

  return [(PDFAnnotation *)self isNoteAnnotation];
}

- (BOOL)isNoteAnnotation
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v3 = [v2 isEqualToString:@"/Text"];

  return v3;
}

- (id)displayName
{
  akAnnotationAdaptor = self->_akAnnotationAdaptor;
  if (akAnnotationAdaptor)
  {
    v4 = [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor akAnnotation];
    v5 = [(__CFString *)v4 displayName];
  }

  else
  {
    v4 = [(PDFAnnotation *)self type];
    if ([(__CFString *)v4 isEqualToString:@"StrikeOut"])
    {

      v4 = @"Strikethrough";
    }

    if ([(__CFString *)v4 isEqualToString:@"Text"])
    {

      v4 = @"Note";
    }

    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
    v7 = v6;
    if (v6)
    {
      if ([v6 isEqualToString:@"/Btn"])
      {
        v8 = [(PDFAnnotation *)self widgetControlType];

        v9 = @"Button";
        if (v8 == kPDFWidgetCheckBoxControl)
        {
          v9 = @"Checkbox";
        }

        if (v8 == kPDFWidgetRadioButtonControl)
        {
          v4 = @"Radio Button";
        }

        else
        {
          v4 = v9;
        }
      }

      else if ([v7 isEqualToString:@"/Ch"])
      {
        v10 = [(PDFAnnotation *)self isListChoice];
        v11 = @"Combo Box";
        if (v10)
        {
          v11 = @"List Box";
        }

        v12 = v11;

        v4 = v12;
      }

      else if ([v7 isEqualToString:@"/Tx"])
      {

        v4 = @"Text Field";
      }

      else if ([v7 isEqualToString:@"/Sig"])
      {

        v4 = @"Signature";
      }
    }

    v5 = PDFKitLocalizedString(v4);
  }

  return v5;
}

- (id)textMarkupString
{
  v2 = [(PDFAnnotation *)self _selectionForMarkupAnnotation];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 string];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_selectionForMarkupAnnotation
{
  if ([(PDFAnnotation *)self isMarkupAnnotationSubtype])
  {
    WeakRetained = objc_loadWeakRetained(&self->_page);
    v4 = [(PDFAnnotation *)self indexSetForQuadPoints];
    if ([v4 rangeCount])
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = [v4 rangeAtIndex:v5];
        v9 = [WeakRetained selectionForRange:{v7, v8}];
        v10 = v9;
        if (v6)
        {
          [v6 addSelection:v9];
        }

        else
        {
          v6 = v9;
        }

        ++v5;
      }

      while (v5 < [v4 rangeCount]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityNode
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityNode);

  return WeakRetained;
}

- (double)scaleFactor
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained view];
    if (v5)
    {
      BackingScaleFactor = PDFScreenGetBackingScaleFactor();
      [v5 scaleFactor];
      v8 = BackingScaleFactor * v7;
      if (v8 > 0.0 && vabdd_f64(self->_scaleFactor, v8) > 0.00000011920929)
      {
        self->_scaleFactor = v8;
      }
    }
  }

  scaleFactor = self->_scaleFactor;

  return scaleFactor;
}

- (void)setScaleFactor:(double)a3
{
  if (vabdd_f64(self->_scaleFactor, a3) > 0.00000011920929)
  {
    self->_scaleFactor = a3;
    [(PDFAnnotation *)self updateAnnotationEffect];
  }
}

- (void)_printDictionary:(id)a3 atDepth:(int)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v25 = a4;
  if (a4 >= 1)
  {
    do
    {
      [v6 appendString:@"\t"];
      --a4;
    }

    while (a4);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        v13 = [v5 objectForKey:v12];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          NSLog(&cfstr_String.isa, v6, v12, v13);
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 description];
          NSLog(&cfstr_Nsvalue.isa, v6, v12, v14);
LABEL_14:

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 description];
          NSLog(&cfstr_Nsdate.isa, v6, v12, v14);
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v13 allKeys];
          NSLog(&cfstr_DictionaryDKey.isa, v6, v12, [v15 count]);

          [(PDFAnnotation *)self _printDictionary:v5 atDepth:(v25 + 1)];
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 appearanceCharacteristicsKeyValues];
          v16 = [v14 allKeys];
          NSLog(&cfstr_Pdfappearancec.isa, v6, v12, [v16 count]);

          [(PDFAnnotation *)self _printDictionary:v14 atDepth:(v25 + 1)];
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v13 description];
          NSLog(&cfstr_NscolorUicolor.isa, v6, v12, v17);
LABEL_28:

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v13 borderKeyValues];
          v18 = [v17 allKeys];
          NSLog(&cfstr_PdfborderDKeyV.isa, v6, v12, [v18 count]);

LABEL_27:
          [(PDFAnnotation *)self _printDictionary:v17 atDepth:(v25 + 1)];
          goto LABEL_28;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          NSLog(&cfstr_PdfannotationC.isa, v6, v12);
          v17 = [v13 annotationKeyValues];
          goto LABEL_27;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = objc_opt_class();
          v17 = NSStringFromClass(v21);
          NSLog(&cfstr_UnknownType.isa, v6, v12, v17);
          goto LABEL_28;
        }

        v19 = v13;
        v23 = [v19 count];
        v20 = [v19 description];

        NSLog(&cfstr_NsarrayDElemen.isa, v6, v12, v23, v20);
LABEL_15:

        ++v11;
      }

      while (v9 != v11);
      v22 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      v9 = v22;
    }

    while (v22);
  }
}

- (void)printDictionaryKeyValues
{
  v3 = [(PDFAnnotation *)self annotationKeyValues];
  [(PDFAnnotation *)self _printDictionary:v3 atDepth:1];
}

- (void)setBorder:(PDFBorder *)border
{
  v4 = border;
  v5 = v4;
  if (v4)
  {
    [(PDFBorder *)v4 setAnnotation:self];
    [(PDFAnnotation *)self setValue:v5 forAnnotationKey:@"/Border"];
  }

  else
  {
    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/Border"];
  }
}

- (void)setColor:(UIColor *)color
{
  if (color)
  {
    v4 = color;
    [(PDFAnnotation *)self removeAllAppearanceStreams];
    v9 = [(UIColor *)v4 copy];

    v5 = v9;
    if (CGColorGetPattern([v9 CGColor]))
    {
      NSLog(&cfstr_PdfkitSetfontc.isa);
      v6 = [MEMORY[0x1E69DC888] clearColor];

      v7 = v6;
    }

    else
    {
      v7 = v9;
    }

    v10 = v7;
    [(PDFAnnotation *)self setValue:v7 forAnnotationKey:@"/C"];
    popup = self->_popup;
    if (popup)
    {
      [(PDFAnnotation *)popup setColor:v10];
    }
  }
}

- (PDFAction)action
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/A"];
  if (!v3)
  {
    v4 = [(PDFAnnotation *)self destination];
    v5 = [(PDFAnnotation *)self URL];
    v6 = v5;
    if (v4)
    {
      v7 = [[PDFActionGoTo alloc] initWithDestination:v4];
    }

    else
    {
      if (!v5)
      {
        v3 = 0;
LABEL_9:

        goto LABEL_10;
      }

      v7 = [[PDFActionURL alloc] initWithURL:v5];
    }

    v3 = v7;
    if (v7)
    {
      [(PDFAnnotation *)self setValue:v7 forAnnotationKey:@"/A"];
    }

    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

- (void)setContents:(NSString *)contents
{
  if (contents)
  {
    v4 = [(NSString *)contents copy];
    [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/Contents"];
  }

  else
  {

    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/Contents"];
  }
}

- (void)setContents:(id)a3 withUndo:(BOOL)a4
{
  v4 = a4;
  v38 = a3;
  v6 = [(PDFAnnotation *)self contents];
  if (v6 != v38 && ([v38 isEqualToString:v6] & 1) == 0)
  {
    [(PDFAnnotation *)self setContents:v38];
    if (v38)
    {
      v7 = [(PDFAnnotation *)self popup];

      if (!v7)
      {
        [(PDFAnnotation *)self bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v16 = objc_alloc([(PDFAnnotation *)self annotationSubclassForPopup]);
        v17 = PDFRectGetMaxX(v9, v11, v13) + 4.0;
        v18.n128_f64[0] = PDFRectGetMaxY(v9, v11, v13, v15) + 4.0;
        v19.n128_f64[0] = v17;
        v20 = [v16 initWithBounds:@"/Popup" forType:0 withProperties:{PDFRectMake(v19, v18, 72.0, 36.0)}];
        [(PDFAnnotation *)self setPopup:v20];
      }
    }

    else
    {
      [(PDFAnnotation *)self setPopup:0];
    }

    if ([v38 isEqualToString:&stru_1F416DF70])
    {
      v21 = 0;
    }

    else
    {
      v21 = v38;
    }

    v22 = v21;

    if ([v6 isEqualToString:&stru_1F416DF70])
    {
      v23 = 0;
    }

    else
    {
      v23 = v6;
    }

    v24 = v23;

    v6 = 0;
    v38 = 0;
    if (v22 | v24)
    {
      v38 = v22;
      v6 = v24;
      WeakRetained = objc_loadWeakRetained(&self->_page);
      v26 = [WeakRetained view];
      v27 = v26;
      if (v26 && v4 && [v26 allowsUndo])
      {
        v28 = MEMORY[0x1E696AEC0];
        v29 = PDFKitLocalizedString(@"Change of %@ %@");
        v30 = [(PDFAnnotation *)self displayName];
        v31 = [PDFAnnotation PresentableStringForAnnotationKey:@"/Contents"];
        v32 = [v28 stringWithFormat:v29, v30, v31];

        v33 = [v27 undoManager];
        v34 = [v33 prepareWithInvocationTarget:self];
        [v34 setContents:v6 withUndo:1];

        v35 = [v27 undoManager];
        v36 = PDFKitLocalizedString(v32);
        [v35 setActionName:v36];

        v37 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
        if (!v38 && [v37 isEqualToString:@"/Text"])
        {
          [WeakRetained removeAnnotation:self withUndo:1];
        }
      }
    }
  }
}

- (NSString)toolTip
{
  v3 = [(PDFAnnotation *)self contents];

  if (v3)
  {
    v4 = [(PDFAnnotation *)self contents];
  }

  else
  {
    v5 = [(PDFAnnotation *)self action];

    if (v5)
    {
      v6 = [(PDFAnnotation *)self action];
      v4 = [v6 toolTip];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_annotationAllowsCommenting:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v6 = [WeakRetained document];
  v7 = v6;
  v8 = 1;
  if (WeakRetained && v6 && self->_isFullyConstructed)
  {
    v9 = [v6 allowsCommenting];
    v10 = [v7 allowsFormFieldEntry];
    v11 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
    v12 = [v11 isEqualToString:@"/Widget"];

    v13 = [v7 permissionsStatus];
    v14 = @"user";
    if (v13 == 2)
    {
      v14 = @"owner";
    }

    v15 = v14;
    v16 = v15;
    if (v9 & 1) != 0 || (v12)
    {
      if (v10 & 1 | ((v12 & 1) == 0))
      {
        v8 = 1;
LABEL_13:

        goto LABEL_14;
      }

      NSLog(&cfstr_Pdfannotations_0.isa, v15);
    }

    else
    {
      NSLog(&cfstr_Pdfannotations.isa, v4, v15);
    }

    v8 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (BOOL)_isValidAnnotationKey:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length] && objc_msgSend(v4, "characterAtIndex:", 0) == 47)
  {
    if ([v4 length] == 1)
    {
      v5 = 1;
    }

    else
    {
      if (_isValidAnnotationKey__onceToken != -1)
      {
        [PDFAnnotation _isValidAnnotationKey:];
      }

      v7 = [v4 substringFromIndex:1];
      [v7 rangeOfCharacterFromSet:_isValidAnnotationKey__invalidCharacters];
      v5 = v8 == 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __39__PDFAnnotation__isValidAnnotationKey___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v1 = [v0 mutableCopy];
  v2 = _isValidAnnotationKey__invalidCharacters;
  _isValidAnnotationKey__invalidCharacters = v1;

  v3 = _isValidAnnotationKey__invalidCharacters;

  return [v3 addCharactersInString:@"()<>[]{}/%"];
}

- (BOOL)setValue:(id)value forAnnotationKey:(PDFAnnotationKey)key
{
  v6 = value;
  v7 = key;
  if ([(PDFAnnotation *)self _annotationAllowsCommenting:@"setValue:forAnnotationKey:"])
  {
    v8 = [PDFAnnotation getProperNameStringFromString:v7];
    if ([(PDFAnnotation *)self _isValidAnnotationKey:v8])
    {
      if (v6)
      {
        v9 = [(PDFAnnotation *)self valueForAnnotationKey:v7];
        v10 = [(NSDictionary *)self->_PDFAnnotationKeyMapping objectForKey:v8];
        v11 = v10;
        if (!v10)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                objc_opt_class();
                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                {
                                  [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Invalid value for annotation key: %@", v8];
                                  goto LABEL_48;
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

          [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v6 forKey:v8];
          goto LABEL_27;
        }

        v12 = [v10 integerValue];
        if (v12 <= 2)
        {
          switch(v12)
          {
            case 0:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![(PDFAnnotation *)self _setArray:v6 forAnnotationKey:v8])
              {
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Key %@ requires an array value.", v8];
                goto LABEL_48;
              }

              goto LABEL_27;
            case 1:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v14 = 0;
                  goto LABEL_49;
                }
              }

              v15 = -[PDFAnnotation setBoolean:forAnnotationKey:](self, "setBoolean:forAnnotationKey:", [v6 BOOLValue], v8);
LABEL_53:
              v13 = v15;
              v14 = 0;
LABEL_54:
              [(PDFAnnotation *)self updateAnnotationEffect];
              [(PDFAnnotation *)self presentRedactionDiscoverabilityAlertWithOldValue:v9 forAnnotationKey:v8];
              loggingEnabled = self->_loggingEnabled;
              if (!loggingEnabled && v14)
              {
                if (setValue_forAnnotationKey__onceToken != -1)
                {
                  [PDFAnnotation setValue:forAnnotationKey:];
                }

                loggingEnabled = self->_loggingEnabled;
              }

              if (loggingEnabled && v14)
              {
                NSLog(&stru_1F416E170.isa, v14);
              }

              goto LABEL_63;
            case 2:
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![(PDFAnnotation *)self _setDictionary:v6 forAnnotationKey:v8])
              {
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Key %@ requires a dictionary value.", v8];
                goto LABEL_48;
              }

LABEL_27:
              v14 = 0;
              v13 = 1;
              goto LABEL_54;
          }
        }

        else
        {
          if (v12 <= 4)
          {
            if (v12 == 3)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(PDFAnnotation *)self _setInteger:v6 forAnnotationKey:v8])
              {
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Key %@ requires an integer value.", v8];
                goto LABEL_48;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 PDFKitPDFRectValue], !-[PDFAnnotation setRect:forAnnotationKey:](self, "setRect:forAnnotationKey:", v8)))
              {
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Key %@ requires an NSValue of either rectValue or CGRectValue.", v8];
                v14 = LABEL_48:;
LABEL_49:
                v13 = 0;
                goto LABEL_54;
              }
            }

            goto LABEL_27;
          }

          if (v12 == 5)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || ![(PDFAnnotation *)self _setString:v6 forAnnotationKey:v8])
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Key %@ requires a string value.", v8];
              goto LABEL_48;
            }

            goto LABEL_27;
          }

          if (v12 == 6)
          {
            v15 = [(PDFAnnotation *)self _setVarious:v6 forAnnotationKey:v8];
            goto LABEL_53;
          }
        }

        [MEMORY[0x1E696AEC0] stringWithFormat:@"Error: Could not resolve type for known key %@.", v8];
        goto LABEL_48;
      }

      [(PDFAnnotation *)self removeValueForAnnotationKey:v8];
      v13 = 1;
    }

    else
    {
      NSLog(&cfstr_ErrorKeyIsInva.isa, v7);
      v13 = 0;
    }

LABEL_63:

    goto LABEL_64;
  }

  v13 = 0;
LABEL_64:

  return v13;
}

- (BOOL)setBoolean:(BOOL)value forAnnotationKey:(PDFAnnotationKey)key
{
  v4 = value;
  v6 = key;
  if ([(PDFAnnotation *)self _annotationAllowsCommenting:@"setBoolean:forAnnotationKey:"])
  {
    v7 = [PDFAnnotation getProperNameStringFromString:v6];
    if ([(PDFAnnotation *)self _isValidAnnotationKey:v7])
    {
      v8 = [(NSDictionary *)self->_PDFAnnotationKeyMapping objectForKey:v7];
      v9 = v8;
      if (v8 && [v8 integerValue] != 1)
      {
        if (self->_loggingEnabled)
        {
          NSLog(&cfstr_ErrorDoesNotTa.isa, v7);
        }

        v11 = 0;
      }

      else
      {
        v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
        [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v10 forKey:v7];
        [(PDFAnnotation *)self _didSetValue:v10 forAnnotationKey:v7];

        v11 = 1;
      }
    }

    else
    {
      NSLog(&cfstr_ErrorIsNotAVal.isa, v6);
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)setRect:(CGRect)value forAnnotationKey:(PDFAnnotationKey)key
{
  height = value.size.height;
  width = value.size.width;
  y = value.origin.y;
  x = value.origin.x;
  v9 = key;
  if ([(PDFAnnotation *)self _annotationAllowsCommenting:@"setRect:forAnnotationKey:"])
  {
    v10 = [PDFAnnotation getProperNameStringFromString:v9];
    if ([(PDFAnnotation *)self _isValidAnnotationKey:v10])
    {
      v11 = [(NSDictionary *)self->_PDFAnnotationKeyMapping objectForKey:v10];
      v12 = v11;
      if (v11 && [v11 integerValue] != 4)
      {
        if (self->_loggingEnabled)
        {
          NSLog(&cfstr_ErrorDoesNotTa_0.isa, v10);
        }

        v14 = 0;
      }

      else
      {
        v13 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{x, y, width, height}];
        if ([v10 isEqualToString:@"/Rect"])
        {
          [(PDFAnnotation *)self setBounds:x, y, width, height];
        }

        else
        {
          [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v13 forKey:v10];
        }

        [(PDFAnnotation *)self _didSetValue:v13 forAnnotationKey:v10];

        v14 = 1;
      }
    }

    else
    {
      NSLog(&cfstr_ErrorKeyIsInva.isa, v9);
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_setString:(id)a3 forAnnotationKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v7 isEqualToString:@"/FT"])
  {
    v9 = [PDFAnnotation getProperNameStringFromString:v8];

    v10 = +[PDFAnnotation PDFKitFieldTypeArray];
LABEL_5:
    v11 = v10;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"/H"])
  {
    v9 = [PDFAnnotation getProperNameStringFromString:v8];

    v10 = +[PDFAnnotation PDFKitHighlightingModeArray];
    goto LABEL_5;
  }

  if ([v7 isEqualToString:@"/Contents"] && self->_isFullyConstructed)
  {
    v14 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
    v15 = [(PDFAnnotation *)self popup];
    if ([v14 isEqualToString:@"/FreeText"])
    {
      [(PDFAnnotation *)self removeAllAppearanceStreams];
    }

    else if (v15 && [v15 isOpen])
    {
      [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v8 forKey:v7];
      [v15 removeAllAppearanceStreams];
      [v15 updateAnnotationEffect];
    }
  }

  else if ([v7 isEqualToString:@"/Subtype"])
  {
    v9 = [PDFAnnotation getProperNameStringFromString:v8];

    v11 = 0;
    goto LABEL_6;
  }

  v11 = 0;
  v9 = v8;
LABEL_6:
  if ([v7 isEqualToString:@"/V"])
  {
    [(PDFAnnotation *)self setWidgetStringValue:v9];
  }

  if (v11 && ![v11 containsObject:v9])
  {
    v12 = 0;
  }

  else
  {
    [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v9 forKey:v7];
    [(PDFAnnotation *)self _didSetValue:v9 forAnnotationKey:v7];
    v12 = 1;
  }

  return v12;
}

- (BOOL)_setArray:(id)a3 forAnnotationKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 count];
  v10 = v8;
  if ([v7 isEqualToString:@"/InkList"])
  {
    goto LABEL_2;
  }

  if ([v7 isEqualToString:@"/L"])
  {
    if (v9 != 4)
    {
      goto LABEL_43;
    }

    v12 = 1;
    v13 = 4;
    do
    {
      v14 = [v8 objectAtIndex:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v12 &= isKindOfClass;
      --v13;
    }

    while (v13);
    v10 = v8;
    if ((v12 & 1) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_2;
  }

  if ([v7 isEqualToString:@"/LE"])
  {
    if (v9 != 2)
    {
      goto LABEL_43;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0;
    v17 = 1;
LABEL_12:
    v52 = v17;
    do
    {
      v18 = v16;
      v19 = [v8 objectAtIndex:v16];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = +[PDFAnnotation nameForLineStyle:](PDFAnnotation, "nameForLineStyle:", [v19 integerValue]);
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v17 = 0;
          v16 = 1;
          if (!v18)
          {
            goto LABEL_12;
          }

          goto LABEL_42;
        }

        v20 = [PDFAnnotation getProperNameStringFromString:v19];
      }

      v21 = v20;
      [v10 addObject:v20];

      v16 = 1;
    }

    while (!v18);
    if ((v52 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_2;
  }

  if (![v7 isEqualToString:@"/Opt"])
  {
    v10 = v8;
    if ([v7 isEqualToString:@"/QuadPoints"])
    {
      quadPointsPath = self->_quadPointsPath;
      if (quadPointsPath)
      {
        CGPathRelease(quadPointsPath);
      }

      self->_quadPointsPath = CGPathCreateMutable();
      v10 = v8;
      if ([v8 count] >= 4)
      {
        v28 = 0;
        do
        {
          v29 = [v8 objectAtIndex:v28];
          [v29 PDFKitPDFPointValue];
          v31 = v30;
          v33 = v32;

          v34 = [v8 objectAtIndex:v28 + 1];
          [v34 PDFKitPDFPointValue];
          v36 = v35;
          v38 = v37;

          v39 = [v8 objectAtIndex:v28 + 2];
          [v39 PDFKitPDFPointValue];
          v41 = v40;
          v43 = v42;

          v44 = [v8 objectAtIndex:v28 + 3];
          [v44 PDFKitPDFPointValue];
          v46 = v45;
          v48 = v47;

          CGPathMoveToPoint(self->_quadPointsPath, 0, v31, v33);
          CGPathAddLineToPoint(self->_quadPointsPath, 0, v36, v38);
          CGPathAddLineToPoint(self->_quadPointsPath, 0, v46, v48);
          CGPathAddLineToPoint(self->_quadPointsPath, 0, v41, v43);
          CGPathAddLineToPoint(self->_quadPointsPath, 0, v31, v33);
          CGPathCloseSubpath(self->_quadPointsPath);
          v49 = [v8 count];
          v50 = v28 + 7;
          v28 += 4;
        }

        while (v50 < v49);
LABEL_38:
        v10 = v8;
      }
    }

    goto LABEL_2;
  }

  v10 = v8;
  if (!v9)
  {
LABEL_2:
    [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v10 forKey:v7];
    [(PDFAnnotation *)self _didSetValue:v10 forAnnotationKey:v7];
    v11 = 1;
    goto LABEL_46;
  }

  v22 = 0;
  while (1)
  {
    v10 = [v8 objectAtIndex:v22];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_30;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_42;
    }

    v10 = v10;
    if ([v10 count] != 2)
    {
      break;
    }

    v23 = [v10 objectAtIndex:0];
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();

    v25 = [v10 objectAtIndex:1];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    if ((v26 & 1) == 0 || (v24 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_30:
    if (v9 == ++v22)
    {
      goto LABEL_38;
    }
  }

LABEL_42:
LABEL_43:
  if (self->_loggingEnabled)
  {
    NSLog(&cfstr_ErrorImproperV.isa, v7);
  }

  v11 = 0;
  v10 = v8;
LABEL_46:

  return v11;
}

- (BOOL)_setDictionary:(id)a3 forAnnotationKey:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (([v7 isEqualToString:@"/AP"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/MK"))
  {
    v9 = +[PDFAnnotation PDFKitAppearanceDictionaryArray];
  }

  else
  {
    if (![v7 isEqualToString:@"/BS"])
    {
      v10 = 0;
      goto LABEL_21;
    }

    v9 = +[PDFAnnotation PDFKitBorderStyleArray];
  }

  v10 = v9;
  if (!v9)
  {
LABEL_21:
    [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v8 forKey:v7];
    [(PDFAnnotation *)self _didSetValue:v8 forAnnotationKey:v7];
    v18 = 1;
    goto LABEL_22;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v12)
  {

    goto LABEL_21;
  }

  v13 = v12;
  v20 = self;
  v14 = *v22;
  v15 = 1;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = [PDFAnnotation getProperNameStringFromString:*(*(&v21 + 1) + 8 * i)];
      v15 &= [v10 containsObject:v17];
    }

    v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v13);

  if (v15)
  {
    self = v20;
    goto LABEL_21;
  }

  if (v20->_loggingEnabled)
  {
    NSLog(&cfstr_ErrorImproperV.isa, v7);
  }

  v18 = 0;
LABEL_22:

  return v18;
}

- (BOOL)_setInteger:(id)a3 forAnnotationKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objCType];
  if ((*v8 != 105 || v8[1]) && ((v9 = [v6 objCType], *v9 != 113) || v9[1]) || objc_msgSend(v7, "isEqualToString:", @"/Q") && objc_msgSend(v6, "integerValue") > 2)
  {
    if (self->_loggingEnabled)
    {
      NSLog(&cfstr_ErrorImproperV.isa, v7);
    }

    v10 = 0;
  }

  else
  {
    [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v6 forKey:v7];
    [(PDFAnnotation *)self _didSetValue:v6 forAnnotationKey:v7];
    v10 = 1;
  }

  return v10;
}

- (BOOL)_setVarious:(id)a3 forAnnotationKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 isEqualToString:@"/A"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/AA"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

LABEL_5:
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"/Border"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(PDFAnnotation *)v6 setAnnotation:self];
        goto LABEL_4;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_4;
      }

      v6 = v6;
      v19 = [(PDFAnnotation *)v6 count];
      if ((v19 - 3) > 1)
      {
        goto LABEL_48;
      }

      v42 = v19;
      v20 = 0;
      isKindOfClass = 1;
      do
      {
        v21 = [(PDFAnnotation *)v6 objectAtIndex:v20];
        v22 = [v21 objCType];
        if (*v22 == 105 && !v22[1])
        {
        }

        else
        {
          v23 = [(PDFAnnotation *)v6 objectAtIndex:v20];
          v24 = strcmp([v23 objCType], "q") == 0;

          isKindOfClass &= v24;
        }

        ++v20;
      }

      while (v20 != 3);
      if (((v42 == 4) & isKindOfClass) == 0)
      {
        goto LABEL_94;
      }

      v25 = [(PDFAnnotation *)v6 objectAtIndex:3];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [(PDFAnnotation *)v6 objectAtIndex:3];
        v27 = [v26 count];

        if (v27 > 2)
        {
LABEL_48:
          isKindOfClass = 0;
LABEL_94:

          goto LABEL_6;
        }

        v25 = [(PDFAnnotation *)v6 objectAtIndex:3];
        v33 = [v25 count];
        if (v33)
        {
          v34 = v33;
          v35 = [v25 objectAtIndex:0];
          if (IsObcCEquivalent(v35, "i"))
          {
            if ((v35 & 0x8000000000000000) == 0)
            {
              v36 = 1;
              goto LABEL_75;
            }
          }

          else
          {
            v37 = IsObcCEquivalent(v35, "q");
            v36 = 1;
            if ((v35 & 0x8000000000000000) == 0 || !v37)
            {
              goto LABEL_75;
            }
          }

          v36 = 0;
LABEL_75:
          if (v34 == 1)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0;
          }

          if (v35)
          {
            v38 = 0;
          }

          isKindOfClass = v36 ^ v38;
          if (v34 != 2 || !v36)
          {
            goto LABEL_92;
          }

          v39 = [v25 objectAtIndex:1];
          if (IsObcCEquivalent(v39, "i"))
          {
            if ((v39 & 0x8000000000000000) == 0)
            {
              v40 = 1;
              goto LABEL_88;
            }
          }

          else
          {
            v41 = IsObcCEquivalent(v39, "q");
            v40 = 1;
            if ((v39 & 0x8000000000000000) == 0 || !v41)
            {
LABEL_88:
              if (v35)
              {
                isKindOfClass = v40;
              }

              else
              {
                isKindOfClass = 0;
              }

LABEL_92:
              goto LABEL_93;
            }
          }

          v40 = 0;
          goto LABEL_88;
        }

        isKindOfClass = 1;
      }

      else
      {
        isKindOfClass = 0;
      }

LABEL_93:

      goto LABEL_94;
    }

LABEL_55:
    isKindOfClass = 0;
    goto LABEL_56;
  }

  if ([v7 isEqualToString:@"/Dest"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  if (([v7 isEqualToString:@"/C"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/IC"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v9 = v6;
    v10 = [(PDFAnnotation *)v9 count];
    v11 = v10;
    if ((v10 - 3) < 2)
    {
      goto LABEL_24;
    }

    if (!v10)
    {
LABEL_31:
      v6 = PDFColorCreateFromNSArray(v9);

      isKindOfClass = 1;
LABEL_50:

      goto LABEL_6;
    }

    if (v10 == 1)
    {
LABEL_24:
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = [(PDFAnnotation *)v9 objectAtIndex:v12];
        v15 = [(PDFAnnotation *)v9 objectAtIndex:v12];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if ((v16 & 1) == 0 || ([v14 floatValue], v17 < 0.0) || (objc_msgSend(v14, "floatValue"), v18 > 1.0))
        {
          v13 = 0;
        }

        ++v12;
      }

      while (v11 != v12);
      if (v13)
      {
        goto LABEL_31;
      }
    }

    isKindOfClass = 0;
    v6 = v9;
    goto LABEL_50;
  }

  if ([v7 isEqualToString:@"/M"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    goto LABEL_5;
  }

  if ([v7 isEqualToString:@"/P"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v28 = [MEMORY[0x1E695DFB0] null];
LABEL_62:
    v30 = v28;

    isKindOfClass = 1;
    v6 = v30;
    goto LABEL_6;
  }

  if (![v7 isEqualToString:@"/Parent"])
  {
    if ([v7 isEqualToString:@"/Popup"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        popup = self->_popup;
        self->_popup = v6;
        v32 = v6;

        v6 = [(PDFAnnotation *)v32 pdfAnnotationUUID];
      }
    }

    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeWeak(&self->_parent, v6);
    v28 = [(PDFAnnotation *)v6 pdfAnnotationUUID];
    goto LABEL_62;
  }

LABEL_4:
  isKindOfClass = 1;
LABEL_6:
  if ((isKindOfClass & 1) != 0 && v6)
  {
    [(NSMutableDictionary *)self->_PDFAnnotationDictionary setObject:v6 forKey:v7];
    [(PDFAnnotation *)self _didSetValue:v6 forAnnotationKey:v7];
    isKindOfClass = 1;
    goto LABEL_58;
  }

LABEL_56:
  if (self->_loggingEnabled)
  {
    NSLog(&cfstr_ErrorImproperV.isa, v7);
  }

LABEL_58:

  return isKindOfClass & 1;
}

- (NSDictionary)annotationKeyValues
{
  v2 = self;
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary allKeys];
  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v9 = @"/Parent";
    do
    {
      v10 = 0;
      v11 = sel_copyWithZone_;
      v22 = v7;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v23 + 1) + 8 * v10);
        if (([v12 isEqualToString:v9] & 1) == 0)
        {
          v13 = [(NSMutableDictionary *)v2->_PDFAnnotationDictionary objectForKey:v12];
          if (objc_opt_respondsToSelector())
          {
            v14 = v8;
            v15 = v11;
            v16 = v9;
            v17 = v5;
            v18 = v4;
            v19 = v2;
            v20 = [v13 copyWithZone:0];

            v13 = v20;
            v2 = v19;
            v4 = v18;
            v5 = v17;
            v9 = v16;
            v11 = v15;
            v8 = v14;
            v7 = v22;
          }

          [v4 setObject:v13 forKey:v12];
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)valueForAnnotationKey:(PDFAnnotationKey)key
{
  if (key)
  {
    v4 = [PDFAnnotation getProperNameStringFromString:?];
    if ([v4 isEqualToString:@"/Parent"])
    {
      WeakRetained = objc_loadWeakRetained(&self->_parent);
    }

    else if ([v4 isEqualToString:@"/Popup"])
    {
      WeakRetained = self->_popup;
    }

    else
    {
      WeakRetained = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:v4];
    }

    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained;
    }

    else if (self->_loggingEnabled)
    {
      NSLog(&cfstr_ErrorNoValueCu.isa, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeValueForAnnotationKey:(PDFAnnotationKey)key
{
  v8 = key;
  v4 = [PDFAnnotation getProperNameStringFromString:?];
  if (![(PDFAnnotation *)self _isValidAnnotationKey:v4])
  {
    NSLog(&cfstr_ErrorKeyIsInva.isa, v8);
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"/AP"])
  {
    [(PDFAnnotation *)self setAppearance:0 forType:0];
    [(PDFAnnotation *)self setAppearance:0 forType:1];
    [(PDFAnnotation *)self setAppearance:0 forType:2];
    [(PDFAnnotation *)self setAppearance:0 forType:3];
    [(PDFAnnotation *)self setAppearance:0 forType:4];
    [(PDFAnnotation *)self setAppearance:0 forType:5];
  }

  if ([v4 isEqualToString:@"/Border"])
  {
    v5 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:v4];
    [v5 setAnnotation:0];
  }

  if (v4)
  {
    v6 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:v4];
    if (v6)
    {
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_internalPDFAnnotationDictionary objectForKey:v4];

      if (!v7)
      {
        goto LABEL_12;
      }
    }

    [(NSMutableDictionary *)self->_PDFAnnotationDictionary removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_internalPDFAnnotationDictionary removeObjectForKey:v4];
    [(PDFAnnotation *)self _didRemoveValueForAnnotationKey:v4];
    [(PDFAnnotation *)self updateAnnotationEffect];
  }

LABEL_12:
}

- (void)_didSetValue:(id)a3 forAnnotationKey:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  if (WeakRetained && ([v7 isEqualToString:@"/P"] & 1) == 0 && self->_isFullyConstructed)
  {
    [WeakRetained changedAnnotation:self];
  }

  akAnnotationAdaptor = self->_akAnnotationAdaptor;
  if (akAnnotationAdaptor)
  {
    [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor didSetValue:v6 forAnnotationKey:v7];
  }

  [(PDFAnnotation *)self postAnnotationsChangedNotification];
  v10 = [WeakRetained view];
  v11 = [v10 allowsMarkupAnnotationEditing];

  if (v11)
  {
    v12 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
    if ([v12 isEqualToString:@"/Widget"] && objc_msgSend(v7, "isEqualToString:", @"/V") && -[PDFAnnotation isFullyConstructed](self, "isFullyConstructed"))
    {
      [(PDFAnnotation *)self updateFormData];
    }

    if ([(PDFAnnotation *)self isFullyConstructed])
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      v14 = [WeakRetained view];
      v16[0] = @"annotation";
      v16[1] = @"key";
      v17[0] = self;
      v17[1] = v7;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
      [v13 postNotificationName:@"PDFAnnotationPropertiesChangedNotificationNotification" object:v14 userInfo:v15];
    }
  }
}

- (void)_didRemoveValueForAnnotationKey:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  if (WeakRetained && ([v4 isEqualToString:@"/P"] & 1) == 0 && self->_isFullyConstructed)
  {
    [WeakRetained changedAnnotation:self];
  }

  akAnnotationAdaptor = self->_akAnnotationAdaptor;
  if (akAnnotationAdaptor)
  {
    [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor didRemoveValueForAnnotationKey:v4];
  }

  v7 = [WeakRetained view];
  v8 = [v7 allowsMarkupAnnotationEditing];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [WeakRetained view];
    v12[0] = @"annotation";
    v12[1] = @"key";
    v13[0] = self;
    v13[1] = v4;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [v9 postNotificationName:@"PDFAnnotationPropertiesChangedNotificationNotification" object:v10 userInfo:v11];
  }
}

- (id)getPDFKeyMappingDictionary
{
  if (getPDFKeyMappingDictionary_onceToken != -1)
  {
    [PDFAnnotation getPDFKeyMappingDictionary];
  }

  v3 = getPDFKeyMappingDictionary_kPDFKeyMappingDictionary;

  return v3;
}

void __43__PDFAnnotation_getPDFKeyMappingDictionary__block_invoke()
{
  v45[42] = *MEMORY[0x1E69E9840];
  v44[0] = @"/A";
  v43 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[0] = v43;
  v44[1] = @"/AC";
  v42 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[1] = v42;
  v44[2] = @"/AA";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[2] = v41;
  v44[3] = @"/AP";
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v45[3] = v40;
  v44[4] = @"/AS";
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[4] = v39;
  v44[5] = @"/BC";
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[5] = v38;
  v44[6] = @"/BG";
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[6] = v37;
  v44[7] = @"/Border";
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[7] = v36;
  v44[8] = @"/BS";
  v35 = [MEMORY[0x1E696AD98] numberWithInteger:2];
  v45[8] = v35;
  v44[9] = @"/C";
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[9] = v34;
  v44[10] = @"/CA";
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[10] = v33;
  v44[11] = @"/Contents";
  v32 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[11] = v32;
  v44[12] = @"/DA";
  v31 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[12] = v31;
  v44[13] = @"/Dest";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[13] = v30;
  v44[14] = @"/DV";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[14] = v29;
  v44[15] = @"/F";
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v45[15] = v28;
  v44[16] = @"/Ff";
  v27 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v45[16] = v27;
  v44[17] = @"/FT";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[17] = v26;
  v44[18] = @"/H";
  v25 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[18] = v25;
  v44[19] = @"/IC";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[19] = v24;
  v44[20] = @"/Inklist";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v45[20] = v23;
  v44[21] = @"/L";
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v45[21] = v22;
  v44[22] = @"/LE";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v45[22] = v21;
  v44[23] = @"/M";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[23] = v20;
  v44[24] = @"/MaxLen";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v45[24] = v19;
  v44[25] = @"/MK";
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[25] = v18;
  v44[26] = @"/Name";
  v17 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[26] = v17;
  v44[27] = @"/Open";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v45[27] = v16;
  v44[28] = @"/Opt";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v45[28] = v15;
  v44[29] = @"/P";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[29] = v14;
  v44[30] = @"/Parent";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[30] = v13;
  v44[31] = @"/Popup";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[31] = v12;
  v44[32] = @"/Q";
  v0 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v45[32] = v0;
  v44[33] = @"/QuadPoints";
  v1 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v45[33] = v1;
  v44[34] = @"/R";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  v45[34] = v2;
  v44[35] = @"/RC";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[35] = v3;
  v44[36] = @"/Rect";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:4];
  v45[36] = v4;
  v44[37] = @"/Subtype";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[37] = v5;
  v44[38] = @"/Type";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[38] = v6;
  v44[39] = @"/T";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[39] = v7;
  v44[40] = @"/TU";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:5];
  v45[40] = v8;
  v44[41] = @"/V";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:6];
  v45[41] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:42];
  v11 = getPDFKeyMappingDictionary_kPDFKeyMappingDictionary;
  getPDFKeyMappingDictionary_kPDFKeyMappingDictionary = v10;
}

+ (id)getProperNameStringFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ![v3 hasPrefix:@"/"])
  {
    v5 = [@"/" stringByAppendingString:v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (__CFDictionary)dictionaryRef
{
  if (!self->_dictionaryRef)
  {
    v3 = [(PDFAnnotation *)self commonCreateDictionaryRef];
    if (v3)
    {
      v4 = v3;
      [(PDFAnnotation *)self _addAKAnnotationToDictionary:v3];
      [(PDFAnnotation *)self setDictionaryRef:v4];
      CFRelease(v4);
    }
  }

  return self->_dictionaryRef;
}

- (__CFDictionary)dictionaryRefExcludingParentOrPopup
{
  v2 = [(PDFAnnotation *)self dictionaryRef];
  v3 = v2;
  if (v2)
  {
    CFDictionaryRemoveValue(v2, @"/Parent");
    CFDictionaryRemoveValue(v3, @"/Popup");
    Value = CFDictionaryGetValue(v3, @"/AAPL:AKExtras");
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(Value, @"/AAPL:AKPDFAnnotationDictionary");
      if (v6)
      {
        v7 = v6;
        if (CFDictionaryGetValue(v6, @"/Parent") || CFDictionaryGetValue(v7, @"/Popup"))
        {
          v8 = *MEMORY[0x1E695E480];
          MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
          if (MutableCopy)
          {
            v10 = MutableCopy;
            v11 = CFDictionaryCreateMutableCopy(v8, 0, v7);
            if (v11)
            {
              v12 = v11;
              CFDictionaryRemoveValue(v11, @"/Parent");
              CFDictionaryRemoveValue(v12, @"/Popup");
              CFDictionarySetValue(v10, @"/AAPL:AKPDFAnnotationDictionary", v12);
              CFRelease(v12);
            }

            CFDictionarySetValue(v3, @"/AAPL:AKExtras", v10);
            CFRelease(v10);
          }
        }
      }
    }
  }

  return v3;
}

- (void)_addAKAnnotationToDictionary:(__CFDictionary *)a3
{
  v5 = [(PDFAnnotation *)self akAnnotation];
  if (v5 || (v5 = self->_akAnnotationForCopying) != 0)
  {
    v6 = v5;
    [PDFAKAnnotationSerializationHelper addAKAnnotation:v5 toAnnotationDictionary:a3];
  }
}

- (void)setCGPDFAnnotation:(CGPDFAnnotation *)a3
{
  cgAnnotation = self->_cgAnnotation;
  if (cgAnnotation != a3)
  {
    if (cgAnnotation)
    {
      CFRelease(cgAnnotation);
    }

    self->_cgAnnotation = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)setIsSelected:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v5 = [WeakRetained view];
  if (([v5 isUpdatingSelectionMarkups] & 1) == 0)
  {
    self->_isSelected = v3;
    if (GetDefaultsWriteAKEnabled())
    {
      v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
      if ([(PDFAnnotation *)self isMarkupAnnotationSubtype])
      {
        v7 = [v5 activeMarkupStyle];
        [v5 setActiveMarkupStyle:8];
        if (v3)
        {
          v8 = [(PDFAnnotation *)self _selectionForMarkupAnnotation];
          if (v8)
          {
            v9 = [v5 currentSelection];
            [v8 addSelection:v9];
            [v5 setCurrentSelection:v8];
          }
        }

        else
        {
          [v5 setCurrentSelection:0];
        }

        [v5 setActiveMarkupStyle:v7];
      }

      else
      {
        if ([v6 isEqualToString:@"/Link"])
        {
          v10 = !v3;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (self->_akAnnotationAdaptor)
          {
            v11 = [WeakRetained akPageAdaptor];
            v12 = [v11 akPageModelController];

            if (v3)
            {
              v13 = [(PDFAKAnnotationAdaptor *)self->_akAnnotationAdaptor akAnnotation];
              [v12 selectAnnotation:v13 byExtendingSelection:1];
            }

            else
            {
              v13 = [MEMORY[0x1E696AC90] indexSet];
              [v12 selectAnnotationsAtIndexes:v13 byExtendingSelection:0];
            }
          }
        }

        else
        {
          v14 = [v5 document];
          v15 = [v14 indexForPage:WeakRetained];

          v16 = [v5 pageViewForPageAtIndex:v15];
          v17 = [v16 pageLayer];
          v18 = [PDFPageLayerEffect createFlashEffectForPDFLinkAnnotation:self withLayer:v17 forType:0];
        }
      }
    }

    [(PDFAnnotation *)self updateAnnotationEffect];
  }
}

- (BOOL)akAnnotationIsSelected
{
  v3 = [(PDFAnnotation *)self page];
  v4 = [v3 akPageAdaptor];

  v5 = [v4 akPageModelController];
  v6 = [v5 selectedAnnotations];
  v7 = [v6 allObjects];

  v8 = [(PDFAnnotation *)self akAnnotation];
  v9 = v8 && ([v7 containsObject:v8] & 1) != 0;

  return v9;
}

- (void)setPopupInternal:(id)a3 scanPage:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  p_popup = &self->_popup;
  if (self->_popup != v7)
  {
    v20 = v7;
    if (v7)
    {
      objc_storeStrong(&self->_popup, a3);
      [(PDFAnnotation *)self->_popup setParent:self];
      [(PDFAnnotation *)self setValue:v20 forAnnotationKey:@"/Popup"];
      [(PDFAnnotation *)self->_popup setValue:self forAnnotationKey:@"/Parent"];
      if (!v4)
      {
        goto LABEL_17;
      }

      v9 = [(PDFAnnotation *)self page];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = v9;
      v11 = [v9 annotations];
      v12 = v11;
      if (v11)
      {
        v13 = [(PDFAnnotation *)v11 count];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          while (1)
          {
            v16 = [(PDFAnnotation *)v12 objectAtIndex:v15];
            v17 = *p_popup;

            if (v16 == v17)
            {
              break;
            }

            if (v14 == ++v15)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          [v10 addAnnotation:*p_popup];
        }
      }
    }

    else
    {
      v18 = [(PDFAnnotation *)self page];
      v10 = v18;
      if (v18)
      {
        [v18 removeAnnotation:*p_popup];
      }

      [(PDFAnnotation *)self removeValueForAnnotationKey:@"/Contents"];
      popup = self->_popup;
      if (popup)
      {
        [(PDFAnnotation *)popup removeValueForAnnotationKey:@"/Parent"];
      }

      [(PDFAnnotation *)self removeValueForAnnotationKey:@"/Popup"];
      v12 = self->_popup;
      self->_popup = 0;
    }

LABEL_17:
    [(PDFAnnotation *)self updateAnnotationEffect];
    v7 = v20;
  }
}

- (PDFAnnotation)initWithAnnotationDictionary:(CGPDFDictionary *)a3 forPage:(id)a4
{
  v6 = a4;
  v160 = 0u;
  v161 = 0u;
  v159 = 0;
  v157 = 0.0;
  v158 = 0;
  array = 0;
  string = 0;
  value = 0;
  dict = 0;
  v152 = 0;
  if (a3)
  {
    v151.receiver = self;
    v151.super_class = PDFAnnotation;
    self = [(PDFAnnotation *)&v151 init];

    if (self)
    {
      [(PDFAnnotation *)self commonInit];
      self->_isFullyConstructed = 0;
      self->_sourceDictionary = a3;
      if (CGPDFDictionaryGetRect())
      {
        v7 = PDFRectFromCGRect(*&v160, *(&v160 + 1), *&v161, *(&v161 + 1));
        v9 = v8;
        v11 = v10;
        v13 = v12;
        [(PDFAnnotation *)self setRect:@"/Rect" forAnnotationKey:?];
        if (!CGPDFDictionaryGetDictionary(a3, "Parent", &value))
        {
          value = 0;
        }

        if (CGPDFDictionaryGetName(a3, "Subtype", &v152))
        {
          v14 = objc_alloc(MEMORY[0x1E696AEC0]);
          v15 = [v14 initWithUTF8String:v152];
          v16 = [PDFAnnotation getProperNameStringFromString:v15];

          [(PDFAnnotation *)self setValue:v16 forAnnotationKey:@"/Subtype"];
          if ([v16 isEqualToString:?] && (CGPDFDictionaryGetName(a3, "FT", &v152) || value && CGPDFDictionaryGetName(value, "FT", &v152)))
          {
            v17 = objc_alloc(MEMORY[0x1E696AEC0]);
            v18 = [v17 initWithUTF8String:v152];
            v19 = [PDFAnnotation getProperNameStringFromString:v18];

            [(PDFAnnotation *)self setValue:v19 forAnnotationKey:@"/FT"];
          }

          else
          {
            v19 = 0;
          }

          objc_storeWeak(&self->_page, v6);
          v21 = [v6 document];
          if (CGPDFDictionaryGetDictionary(a3, "A", &dict))
          {
            v22 = [PDFAction actionWithActionDictionary:dict forDocument:v21 forPage:v6];
            v23 = v22;
            if (v22)
            {
              v24 = [v22 type];

              if (v24)
              {
                [(PDFAnnotation *)self setValue:v23 forAnnotationKey:@"/A"];
              }
            }
          }

          else
          {
            v23 = 0;
          }

          if (!CGPDFDictionaryGetDictionary(a3, "AA", &dict))
          {
            v143 = 0;
LABEL_37:
            if ([(PDFAnnotation *)self _shouldReadAppearanceStreams]&& CGPDFDictionaryGetDictionary(a3, "AP", &dict))
            {
              [(PDFAnnotation *)self getAppearancesFromDictionary:dict ofType:0];
              [(PDFAnnotation *)self getAppearancesFromDictionary:dict ofType:1];
              [(PDFAnnotation *)self getAppearancesFromDictionary:dict ofType:2];
            }

            if (CGPDFDictionaryGetArray(a3, "Border", &array) || CGPDFDictionaryGetDictionary(a3, "BS", &dict))
            {
              v30 = [[PDFBorder alloc] initWithAnnotationDictionary:a3 forPage:v6];
              [(PDFAnnotation *)self setValue:v30 forAnnotationKey:@"/Border"];
            }

            if (CGPDFDictionaryGetArray(a3, "C", &array))
            {
              v31 = PDFColorCreateFromCGPDFArray(array);
              if ([(PDFAnnotation *)self isMarkupAnnotationSubtype])
              {
                v32 = [(PDFAnnotation *)self _PDFMarkupColorForColor:v31];
              }

              else
              {
                if (![v16 isEqualToString:@"/Text"])
                {
LABEL_53:
                  [(PDFAnnotation *)self setValue:v31 forAnnotationKey:@"/C"];

LABEL_54:
                  if (CGPDFDictionaryGetString(a3, "Contents", &string))
                  {
                    v34 = CGPDFStringCopyTextString(string);
                    [(PDFAnnotation *)self setValue:v34 forAnnotationKey:@"/Contents"];
                  }

                  if (CGPDFDictionaryGetInteger(a3, "F", &v158))
                  {
                    v35 = [MEMORY[0x1E696AD98] numberWithLong:v158];
                    [(PDFAnnotation *)self setValue:v35 forAnnotationKey:@"/F"];
                  }

                  if (CGPDFDictionaryGetString(a3, "M", &string))
                  {
                    v36 = CGPDFStringCopyDate(string);
                    if (v36)
                    {
                      v37 = v36;
                      [(PDFAnnotation *)self setValue:v36 forAnnotationKey:@"/M"];
                    }
                  }

                  if (CGPDFDictionaryGetString(a3, "NM", &string))
                  {
                    v38 = CGPDFStringCopyTextString(string);
                    [(PDFAnnotation *)self setValue:v38 forAnnotationKey:@"/NM"];
                  }

                  if (([v16 isEqualToString:?] & 1) == 0 && CGPDFDictionaryGetDictionary(a3, "Popup", &dict))
                  {
                    self->_popupDictionary = dict;
                  }

                  if (([v16 isEqualToString:@"/Widget"] & 1) != 0 || !CGPDFDictionaryGetString(a3, "T", &string))
                  {
                    [(PDFAnnotation *)self _generateFormFieldName];
                  }

                  else
                  {
                    v39 = CGPDFStringCopyTextString(string);
                    [(PDFAnnotation *)self setValue:v39 forAnnotationKey:@"/T"];
                  }

                  if (CGPDFDictionaryGetString(a3, "DA", &string))
                  {
                    v40 = [(PDFAnnotation *)self getFontFromAppearanceString:string];
                    [(PDFAnnotation *)self setFont:v40];

                    v41 = [(PDFAnnotation *)self getColorFromAppearanceString:string];
                    [(PDFAnnotation *)self setFontColor:v41];
                  }

                  if (![v16 isEqualToString:@"/Link"])
                  {
LABEL_82:
                    if (CGPDFDictionaryGetArray(a3, "IC", &array))
                    {
                      v44 = PDFColorCreateFromCGPDFArray(array);
                      [(PDFAnnotation *)self setValue:v44 forAnnotationKey:@"/IC"];
                    }

                    if (CGPDFDictionaryGetName(a3, "H", &v152))
                    {
                      v45 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v46 = [v45 initWithUTF8String:v152];
                      v47 = [PDFAnnotation getProperNameStringFromString:v46];

                      [(PDFAnnotation *)self setValue:v47 forAnnotationKey:@"/H"];
                    }

                    v145 = v21;
                    v146 = v19;
                    v144 = v23;
                    if (CGPDFDictionaryGetArray(a3, "InkList", &array))
                    {
                      v139 = v6;
                      v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      v150 = 0;
                      Count = CGPDFArrayGetCount(array);
                      v50 = Count;
                      if (Count)
                      {
                        v51 = 0;
                        do
                        {
                          if (CGPDFArrayGetArray(array, v51, &v150))
                          {
                            v52 = v150;
                            *&v148 = 0.0;
                            v162[0] = 0.0;
                            v53 = CGPDFArrayGetCount(v150);
                            if (v53 && (v53 & 1) == 0)
                            {
                              v55 = [MEMORY[0x1E69DC728] bezierPath];
                              if (!CGPDFArrayGetNumber(v52, 0, &v148))
                              {
                                *&v148 = 0.0;
                              }

                              if (CGPDFArrayGetNumber(v52, 1uLL, v162))
                              {
                                v56 = v162[0];
                              }

                              else
                              {
                                v162[0] = 0.0;
                                v56 = 0.0;
                              }

                              [v55 moveToPoint:{PDFPointMake(*&v148 - v7, v56 - v9)}];
                              if (v53 >= 3)
                              {
                                v57 = v53 >> 1;
                                if (v53 >> 1 <= 2)
                                {
                                  v57 = 2;
                                }

                                v58 = 2 * v57;
                                v59 = 2;
                                do
                                {
                                  if (!CGPDFArrayGetNumber(v52, v59, &v148))
                                  {
                                    *&v148 = 0.0;
                                  }

                                  if (CGPDFArrayGetNumber(v52, v59 + 1, v162))
                                  {
                                    v60 = v162[0];
                                  }

                                  else
                                  {
                                    v162[0] = 0.0;
                                    v60 = 0.0;
                                  }

                                  [v55 addLineToPoint:{PDFPointMake(*&v148 - v7, v60 - v9)}];
                                  v59 += 2;
                                }

                                while (v58 != v59);
                              }

                              if (v55)
                              {
                                [v48 addObject:v55];
                              }
                            }
                          }

                          ++v51;
                        }

                        while (v51 != v50);
                      }

                      [(PDFAnnotation *)self setValue:v48 forAnnotationKey:@"/InkList"];

                      v6 = v139;
                      v21 = v145;
                      v19 = v146;
                      v23 = v144;
                    }

                    if (CGPDFDictionaryGetArray(a3, "L", &array) && CGPDFArrayGetCount(array) == 4)
                    {
                      v61 = *MEMORY[0x1E695EFF8];
                      v62 = *(MEMORY[0x1E695EFF8] + 8);
                      if (CGPDFArrayGetNumber(array, 0, &v157))
                      {
                        v63 = v157;
                      }

                      else
                      {
                        v63 = v61;
                      }

                      if (CGPDFArrayGetNumber(array, 1uLL, &v157))
                      {
                        v64 = v157;
                      }

                      else
                      {
                        v64 = v62;
                      }

                      if (CGPDFArrayGetNumber(array, 2uLL, &v157))
                      {
                        v61 = v157;
                      }

                      if (CGPDFArrayGetNumber(array, 3uLL, &v157))
                      {
                        v62 = v157;
                      }

                      v65 = objc_alloc(MEMORY[0x1E695DEC8]);
                      v66 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
                      v67 = [MEMORY[0x1E696AD98] numberWithDouble:v64];
                      v68 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                      v69 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
                      v70 = [v65 initWithObjects:{v66, v67, v68, v69, 0}];

                      [(PDFAnnotation *)self setValue:v70 forAnnotationKey:@"/L"];
                    }

                    else if ([v16 isEqualToString:@"/Line"])
                    {
                      a3 = 0;
LABEL_287:

                      goto LABEL_13;
                    }

                    if (CGPDFDictionaryGetArray(a3, "LE", &array) && CGPDFArrayGetCount(array) == 2)
                    {
                      if (CGPDFArrayGetName(array, 0, &v152))
                      {
                        v71 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v72 = [v71 initWithUTF8String:v152];
                        v73 = [PDFAnnotation getProperNameStringFromString:v72];

                        v74 = [PDFAnnotation lineStyleFromName:v73];
                      }

                      else
                      {
                        v74 = kPDFLineStyleNone;
                        v73 = 0;
                      }

                      if (CGPDFArrayGetName(array, 1uLL, &v152))
                      {
                        v75 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v76 = [v75 initWithUTF8String:v152];
                        v77 = [PDFAnnotation getProperNameStringFromString:v76];

                        v78 = [PDFAnnotation lineStyleFromName:v77];
                        v73 = v77;
                      }

                      else
                      {
                        v78 = kPDFLineStyleNone;
                      }

                      v79 = objc_alloc(MEMORY[0x1E695DEC8]);
                      v80 = [MEMORY[0x1E696AD98] numberWithInteger:v74];
                      v81 = [MEMORY[0x1E696AD98] numberWithInteger:v78];
                      v82 = [v79 initWithObjects:{v80, v81, 0}];

                      [(PDFAnnotation *)self setValue:v82 forAnnotationKey:@"/LE"];
                    }

                    if (CGPDFDictionaryGetName(a3, "Name", &v152))
                    {
                      v83 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v84 = [v83 initWithUTF8String:v152];
                      v85 = [PDFAnnotation getProperNameStringFromString:v84];

                      [(PDFAnnotation *)self setValue:v85 forAnnotationKey:@"/Name"];
                    }

                    else if ([v16 isEqualToString:@"/Stamp"])
                    {
                      [(PDFAnnotation *)self setValue:@"/Draft" forAnnotationKey:@"/Name"];
                    }

                    if (CGPDFDictionaryGetBoolean(a3, "Open", &v159))
                    {
                      v86 = [MEMORY[0x1E696AD98] numberWithBool:v159 != 0];
                      [(PDFAnnotation *)self setValue:v86 forAnnotationKey:@"/Open"];
                    }

                    if (value && [v16 isEqualToString:@"/Popup"])
                    {
                      *&v148 = 0.0;
                      v162[0] = 0.0;
                      if (CGPDFDictionaryGetString(value, "Contents", &v148))
                      {
                        v87 = CGPDFStringCopyTextString(v148);
                        if ([(__CFString *)v87 length])
                        {
                          [(PDFAnnotation *)self setContents:v87];
                        }
                      }

                      if (CGPDFDictionaryGetString(value, "M", &v148))
                      {
                        v88 = CGPDFStringCopyDate(v148);
                        if (v88)
                        {
                          v89 = v88;
                          [(PDFAnnotation *)self setModificationDate:v88];
                        }
                      }

                      if (CGPDFDictionaryGetArray(value, "C", v162))
                      {
                        v90 = PDFColorCreateFromCGPDFArray(*&v162[0]);
                        [(PDFAnnotation *)self setValue:v90 forAnnotationKey:@"/C"];
                      }
                    }

                    if ([v16 isEqualToString:@"/Text"] && !-[PDFAnnotation popupDictionary](self, "popupDictionary"))
                    {
                      v91 = objc_alloc([(PDFAnnotation *)self annotationSubclassForPopup]);
                      v163.origin.x = v7;
                      v163.origin.y = v9;
                      v163.size.width = v11;
                      v163.size.height = v13;
                      v164 = PDFRectOffset(v163, 30.0, 0.0);
                      v92 = [v91 initCommonWithBounds:{v164.origin.x, v164.origin.y, v164.size.width, v164.size.height}];
                      [v92 setType:@"/Popup"];
                      [v92 setOpen:{-[PDFAnnotation isOpen](self, "isOpen")}];
                      [(PDFAnnotation *)self setPopupInternal:v92 scanPage:0];
                    }

                    if (CGPDFDictionaryGetInteger(a3, "Q", &v158))
                    {
                      if (v158 == 1)
                      {
                        v93 = 1;
                      }

                      else
                      {
                        v93 = 2 * (v158 == 2);
                      }

                      [(PDFAnnotation *)self setAlignment:v93];
                    }

                    if (CGPDFDictionaryGetArray(a3, "QuadPoints", &array))
                    {
                      v94 = CGPDFArrayGetCount(array);
                      if (v94 >= 2)
                      {
                        v95 = v94 >> 1;
                        v96 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v95];
                        v97 = 0;
                        if (v95 <= 1)
                        {
                          v98 = 1;
                        }

                        else
                        {
                          v98 = v95;
                        }

                        while (1)
                        {
                          *&v148 = 0.0;
                          v149 = 0.0;
                          if (!CGPDFArrayGetNumber(array, v97, &v148))
                          {
                            break;
                          }

                          v99 = v97 + 1;
                          if (!CGPDFArrayGetNumber(array, v99, &v149))
                          {
                            break;
                          }

                          v100 = [MEMORY[0x1E696B098] valueWithCGPoint:{*&v148, v149}];
                          [v96 addObject:v100];

                          v97 = v99 + 1;
                          if (!--v98)
                          {
                            [(PDFAnnotation *)self setValue:v96 forAnnotationKey:@"/QuadPoints"];
                            [(PDFAnnotation *)self updateAnnotationEffect];
                            break;
                          }
                        }

                        v19 = v146;
                      }
                    }

                    if (([v16 isEqualToString:@"/Circle"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"/FreeText") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"/Line") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"/Ink") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"/Square"))
                    {
                      v101 = [(PDFAnnotation *)self border];

                      if (!v101)
                      {
                        v102 = objc_alloc_init(PDFBorder);
                        [(PDFAnnotation *)self setBorder:v102];
                      }
                    }

                    if ([v16 isEqualToString:@"/Text"])
                    {
                      [(PDFAnnotation *)self setBounds:v7, PDFRectGetMaxY(v7, v9, v11, v13) + -24.0, 24.0, 24.0];
                    }

                    if (![v16 isEqualToString:@"/Widget"])
                    {
                      goto LABEL_285;
                    }

                    if ([v19 isEqualToString:@"/Sig"])
                    {
                      [(PDFAnnotation *)self setIsSignatureWidget:1];
                    }

                    else if (CGPDFDictionaryGetName(value, "FT", &v152))
                    {
                      v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v104 = [v103 initWithUTF8String:v152];
                      v105 = [PDFAnnotation getProperNameStringFromString:v104];

                      if ([v105 isEqualToString:@"/Sig"])
                      {
                        [(PDFAnnotation *)self setIsSignatureWidget:1];
                      }
                    }

                    if ([v19 isEqualToString:?])
                    {
                      self->_suppressAppearanceStreamText = 1;
                    }

                    if (CGPDFDictionaryGetInteger(a3, "Ff", &v158) || value && CGPDFDictionaryGetInteger(value, "Ff", &v158))
                    {
                      v106 = v158;
                    }

                    else
                    {
                      v106 = 0;
                    }

                    v107 = [MEMORY[0x1E696AD98] numberWithLong:v106];
                    [(PDFAnnotation *)self setValue:v107 forAnnotationKey:@"/Ff"];

                    v108 = [(PDFAnnotation *)self _getFullFieldNameFromDictionary:a3];
                    if (v108)
                    {
                      [(PDFAnnotation *)self setValue:v108 forAnnotationKey:@"/T"];
                    }

                    if (CGPDFDictionaryGetString(a3, "TU", &string) || value && CGPDFDictionaryGetString(value, "TU", &string))
                    {
                      v109 = CGPDFStringCopyTextString(string);
                      [(PDFAnnotation *)self setValue:v109 forAnnotationKey:@"/TU"];
                    }

                    v147 = v108;
                    if (CGPDFDictionaryGetName(a3, "V", &v152) || value && CGPDFDictionaryGetName(value, "V", &v152))
                    {
                      v110 = [MEMORY[0x1E696AEC0] stringWithCString:v152 encoding:1];
                    }

                    else
                    {
                      if (!CGPDFDictionaryGetString(a3, "V", &string) && (!value || !CGPDFDictionaryGetString(value, "V", &string)))
                      {
                        v112 = v16;
                        CGPDFDictionaryGetDictionary(a3, "V", &dict);
                        v111 = 0;
                        goto LABEL_213;
                      }

                      v110 = CGPDFStringCopyTextString(string);
                    }

                    v111 = v110;
                    v112 = v16;
                    if (v110)
                    {
                      [(PDFAnnotation *)self setValue:v110 forAnnotationKey:@"/V"];
                      v113 = 0;
                      goto LABEL_214;
                    }

LABEL_213:
                    v113 = 1;
LABEL_214:
                    if ([v19 isEqualToString:?])
                    {
                      v114 = 0;
                      goto LABEL_225;
                    }

                    if (CGPDFDictionaryGetString(a3, "DV", &string) || value && CGPDFDictionaryGetString(value, "DV", &string))
                    {
                      v114 = CGPDFStringCopyTextString(string);
                      [(PDFAnnotation *)self setValue:v114 forAnnotationKey:@"/DV"];
                      if (!v113)
                      {
                        goto LABEL_225;
                      }

                      [(PDFAnnotation *)self setValue:v114 forAnnotationKey:@"/V"];
                    }

                    else
                    {
                      if (v113)
                      {
                        v114 = 0;
                        v111 = 0;
                        goto LABEL_225;
                      }

                      [(PDFAnnotation *)self setValue:v111 forAnnotationKey:@"/DV"];
                      v114 = v111;
                    }

                    v114 = v114;
                    v111 = v114;
LABEL_225:
                    v16 = v112;
                    if (CGPDFDictionaryGetInteger(a3, "MaxLen", &v158) || value && CGPDFDictionaryGetInteger(value, "MaxLen", &v158))
                    {
                      v115 = [MEMORY[0x1E696AD98] numberWithInteger:v158];
                      [(PDFAnnotation *)self setValue:v115 forAnnotationKey:@"/MaxLen"];

                      if (v111)
                      {
                        v116 = [(__CFString *)v111 length];
                        if (v116 > v158)
                        {
                          v117 = [(__CFString *)v111 substringToIndex:?];

                          [(PDFAnnotation *)self setValue:v117 forAnnotationKey:@"/V"];
                          v111 = v117;
                        }
                      }

                      if (v114)
                      {
                        v118 = [(__CFString *)v114 length];
                        if (v118 > v158)
                        {
                          v119 = [(__CFString *)v114 substringToIndex:?];

                          [(PDFAnnotation *)self setValue:v119 forAnnotationKey:@"/DV"];
                          v114 = v119;
                        }
                      }
                    }

                    if (CGPDFDictionaryGetArray(a3, "Opt", &array) || value && CGPDFDictionaryGetArray(value, "Opt", &array))
                    {
                      v140 = v106;
                      v141 = v114;
                      v120 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      v121 = CGPDFArrayGetCount(array);
                      if (v121)
                      {
                        v122 = v121;
                        v123 = 0;
                        while (1)
                        {
                          *&v148 = 0.0;
                          if (CGPDFArrayGetString(array, v123, &string))
                          {
                            break;
                          }

                          if (!CGPDFArrayGetArray(array, v123, &v148))
                          {
                            NSLog(&cfstr_NoStringForOpt.isa);
                            goto LABEL_249;
                          }

                          if (CGPDFArrayGetCount(v148) != 2)
                          {
                            NSLog(&cfstr_IncorrectArray.isa);
                            goto LABEL_249;
                          }

                          v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
                          if (CGPDFArrayGetString(v148, 0, &string))
                          {
                            v125 = CGPDFStringCopyTextString(string);
                            [(__CFString *)v124 addObject:v125];
                          }

                          else
                          {
                            NSLog(&cfstr_NoValueForArra.isa);
                          }

                          if (CGPDFArrayGetString(v148, 1uLL, &string))
                          {
                            v126 = CGPDFStringCopyTextString(string);
                            [(__CFString *)v124 addObject:v126];
                          }

                          else
                          {
                            NSLog(&cfstr_NoTextForArray.isa);
                          }

                          v19 = v146;
                          if ([(__CFString *)v124 count]== 2)
                          {
                            goto LABEL_241;
                          }

LABEL_242:

LABEL_249:
                          if (v122 == ++v123)
                          {
                            goto LABEL_257;
                          }
                        }

                        v124 = CGPDFStringCopyTextString(string);
LABEL_241:
                        [v120 addObject:v124];
                        goto LABEL_242;
                      }

LABEL_257:
                      [(PDFAnnotation *)self setValue:v120 forAnnotationKey:@"/Opt"];

                      LODWORD(v106) = v140;
                      v114 = v141;
                    }

                    else if ([v19 isEqualToString:@"/Ch"])
                    {

                      a3 = 0;
LABEL_286:

                      v23 = v144;
                      v21 = v145;
                      goto LABEL_287;
                    }

                    if ([v19 isEqualToString:@"/Btn"])
                    {
                      if ((v106 & 0x8000) != 0)
                      {
                        v127 = 1;
                      }

                      else if ((v106 & 0x10000) != 0)
                      {
                        [(PDFAnnotation *)self setButtonWidgetState:1];
                        v127 = 0;
                      }

                      else
                      {
                        v127 = 2;
                      }

                      [(PDFAnnotation *)self setWidgetControlType:v127];
                      if (CGPDFDictionaryGetName(a3, "AS", &v152))
                      {
                        v142 = v114;
                        v128 = [MEMORY[0x1E696AEC0] stringWithCString:v152 encoding:1];
                        v129 = [(PDFAnnotation *)self widgetOnStateString];
                        v130 = [v128 caseInsensitiveCompare:@"Off"];
                        if (((-[__CFString isEqualToString:](v111, "isEqualToString:", v128) & 1) != 0 || [v129 isEqualToString:v128]) && v130)
                        {
                          [(PDFAnnotation *)self setButtonWidgetState:1];
                        }

                        v114 = v142;
                      }
                    }

                    else if ([v19 isEqualToString:@"/Ch"])
                    {
                      v127 = 4;
                    }

                    else if ([v19 isEqualToString:@"/Tx"])
                    {
                      v127 = 3;
                    }

                    else
                    {
                      v127 = -1;
                    }

                    if (CGPDFDictionaryGetDictionary(a3, "MK", &dict))
                    {
                      v131 = [PDFAppearanceCharacteristics alloc];
                      v132 = [(PDFAppearanceCharacteristics *)v131 initWithAnnotationDictionary:dict forControlType:v127];
                      v133 = v132;
                      if (v132)
                      {
                        v134 = [(PDFAppearanceCharacteristics *)v132 borderColor];

                        if (v134)
                        {
                          v135 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Border"];
                          if (!v135)
                          {
                            v135 = objc_alloc_init(PDFBorder);
                            [(PDFAnnotation *)self setValue:v135 forAnnotationKey:@"/Border"];
                          }
                        }
                      }

                      [(PDFAnnotation *)self setValue:v133 forAnnotationKey:@"/MK"];
                    }

LABEL_285:
                    [(PDFAnnotation *)self decodeUnknownAnnotationProperties];
                    v136 = self;
                    v137 = [MEMORY[0x1E696AFB0] UUID];
                    pdfAnnotationUUID = v136->_pdfAnnotationUUID;
                    v136->_pdfAnnotationUUID = v137;

                    self->_isFullyConstructed = 1;
                    v111 = v136;
                    a3 = v111;
                    goto LABEL_286;
                  }

                  if (v23)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        [(PDFAnnotation *)self setDestination:0];
                        [(PDFAnnotation *)self setAction:v23];
                      }

                      v43 = 0;
                      goto LABEL_81;
                    }

                    v42 = [v23 destination];
                  }

                  else
                  {
                    v42 = [[PDFDestination alloc] initWithDictionary:a3 forDocument:v21];
                  }

                  v43 = v42;
LABEL_81:
                  [(PDFAnnotation *)self setValue:v43 forAnnotationKey:@"/Dest"];

                  goto LABEL_82;
                }

                v32 = [(PDFAnnotation *)self _PDFTextColorForColor:v31];
              }

              v33 = v32;
              if (v32)
              {
                v33 = v32;

                v31 = v33;
              }
            }

            else
            {
              if (![(PDFAnnotation *)self isMarkupAnnotationSubtype])
              {
                goto LABEL_54;
              }

              v33 = +[PDFAnnotation PDFMarkupColors];
              v31 = [v33 objectAtIndex:{-[PDFAnnotation markupStyle](self, "markupStyle")}];
            }

            goto LABEL_53;
          }

          *&v148 = 0.0;
          if (CGPDFDictionaryGetDictionary(dict, "D", &v148))
          {
            v25 = [PDFAction actionWithActionDictionary:v148 forDocument:v21 forPage:v6];
            if (v25)
            {
              v26 = v25;
              v27 = [v25 type];

              if (v27)
              {
                [(PDFAnnotation *)self setValue:v26 forAnnotationKey:@"/AA"];
              }

              goto LABEL_36;
            }
          }

          else if (CGPDFDictionaryGetDictionary(dict, "U", &v148))
          {
            if (!v23)
            {
              v28 = [PDFAction actionWithActionDictionary:v148 forDocument:v21 forPage:v6];
              v23 = v28;
              if (v28)
              {
                v29 = [v28 type];

                if (v29)
                {
                  [(PDFAnnotation *)self setValue:v23 forAnnotationKey:@"/A"];
                }
              }
            }
          }

          else if (!CGPDFDictionaryGetDictionary(dict, "K", &v148) && !CGPDFDictionaryGetDictionary(dict, "F", &v148) && !CGPDFDictionaryGetDictionary(dict, "V", &v148))
          {
            CGPDFDictionaryGetDictionary(dict, "C", &v148);
          }

          v26 = 0;
LABEL_36:
          v143 = v26;
          goto LABEL_37;
        }
      }
    }

    a3 = 0;
  }

LABEL_13:

  return a3;
}

- (PDFAnnotation)initWithCGPDFAnnotation:(CGPDFAnnotation *)a3 forPage:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v6 = a4;
    v7 = [(PDFAnnotation *)self initWithAnnotationDictionary:CGPDFAnnotationGetCGPDFDictionary() forPage:v6];

    self = v7;
    v5 = self;
  }

  return v5;
}

- (void)decodeUnknownAnnotationProperties
{
  sourceDictionary = self->_sourceDictionary;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PDFAnnotation_decodeUnknownAnnotationProperties__block_invoke;
  block[3] = &unk_1E8150B70;
  block[4] = self;
  CGPDFDictionaryApplyBlock(sourceDictionary, block, 0);
}

uint64_t __50__PDFAnnotation_decodeUnknownAnnotationProperties__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v6 = [PDFAnnotation getProperNameStringFromString:v5];

  if (v6)
  {
    v7 = +[PDFAnnotation PDFKitAnnotationKeys];
    v8 = [v7 containsObject:v6];

    if (a3)
    {
      if ((v8 & 1) == 0)
      {
        Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        v13 = 0;
        v10 = [*(a1 + 32) valueForCGPDFObject:a3 visitedSet:Mutable isInternalObject:&v13];
        if (v10)
        {
          v11 = 56;
          if (v13)
          {
            v11 = 72;
          }

          [*(*(a1 + 32) + v11) setObject:v10 forKey:v6];
        }

        CFRelease(Mutable);
      }
    }
  }

  return 1;
}

- (id)valueForCGPDFObject:(CGPDFObject *)a3 visitedSet:(__CFSet *)a4 isInternalObject:(BOOL *)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    if (CFSetContainsValue(a4, a3))
    {
      v5 = 0;
      goto LABEL_13;
    }

    CFSetAddValue(a4, a3);
    value = 0;
    v35 = 0.0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    v30 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PDFAnnotation_valueForCGPDFObject_visitedSet_isInternalObject___block_invoke;
    aBlock[3] = &__block_descriptor_40_e35___PDFAnnotationCGPDFObject_16__0_B8l;
    aBlock[4] = a3;
    v10 = _Block_copy(aBlock);
    CGPDFObjectGetType(a3);
    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeBoolean, &value))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithBool:value != 0];
LABEL_11:
      v5 = v11;
LABEL_12:

      goto LABEL_13;
    }

    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeInteger, &v36))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v36];
      goto LABEL_11;
    }

    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeReal, &v35))
    {
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
      goto LABEL_11;
    }

    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeName, &v34))
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = [v13 initWithUTF8String:v34];
      v5 = [PDFAnnotation getProperNameStringFromString:v14];

      goto LABEL_12;
    }

    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeString, &v33))
    {
      v11 = CGPDFStringCopyTextString(v33);
      goto LABEL_11;
    }

    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeStream, &v30))
    {
      Dictionary = CGPDFStreamGetDictionary(v30);
      __s1 = 0;
      if (CGPDFDictionaryGetName(Dictionary, "Type", &__s1) && !strncmp(__s1, "Data", 4uLL))
      {
        v11 = CGPDFStreamCopyData(v30, 0);
        goto LABEL_11;
      }

LABEL_31:
      v11 = (*(v10 + 2))(v10, a5);
      goto LABEL_11;
    }

    if (CGPDFObjectGetValue(a3, kCGPDFObjectTypeArray, &v32))
    {
      v16 = [MEMORY[0x1E695DF70] array];
      v17 = v32;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PDFAnnotation_valueForCGPDFObject_visitedSet_isInternalObject___block_invoke_2;
      block[3] = &unk_1E8150BB8;
      block[4] = self;
      v27 = a4;
      v18 = v16;
      v26 = v18;
      CGPDFArrayApplyBlock(v17, block, 0);
      v19 = v26;
    }

    else
    {
      if (!CGPDFObjectGetValue(a3, kCGPDFObjectTypeDictionary, &v31))
      {
        goto LABEL_31;
      }

      __s1 = 0;
      if (CGPDFDictionaryGetName(v31, "Type", &__s1) && !strncmp(__s1, "Annot", 5uLL))
      {
        v5 = 0;
        goto LABEL_12;
      }

      v20 = [MEMORY[0x1E695DF90] dictionary];
      v21 = v31;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __65__PDFAnnotation_valueForCGPDFObject_visitedSet_isInternalObject___block_invoke_3;
      v22[3] = &unk_1E8150BE0;
      v22[4] = self;
      v24 = a4;
      v18 = v20;
      v23 = v18;
      CGPDFDictionaryApplyBlock(v21, v22, 0);
      v19 = v23;
    }

    v5 = v18;

    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

PDFAnnotationCGPDFObject *__65__PDFAnnotation_valueForCGPDFObject_visitedSet_isInternalObject___block_invoke(uint64_t a1, _BYTE *a2)
{
  CFObject = CGPDFAppenderCreateCFObject();
  if (CFObject)
  {
    v4 = CFObject;
    v5 = [[PDFAnnotationCGPDFObject alloc] initWithCFObject:CFObject];
    CFRelease(v4);
    *a2 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __65__PDFAnnotation_valueForCGPDFObject_visitedSet_isInternalObject___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v4 = [*(a1 + 32) valueForCGPDFObject:a3 visitedSet:*(a1 + 48) isInternalObject:&v7];
  if (v4)
  {
    if (v7 == 1)
    {
      v5 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
      if (!v5)
      {
        v5 = [MEMORY[0x1E695DF70] array];
        [*(*(a1 + 32) + 72) setObject:v5 forKey:*(a1 + 40)];
      }

      [v5 addObject:v4];
    }

    else
    {
      [*(a1 + 40) addObject:v4];
    }
  }

  return 1;
}

uint64_t __65__PDFAnnotation_valueForCGPDFObject_visitedSet_isInternalObject___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v6 = [PDFAnnotation getProperNameStringFromString:v5];

  if (v6)
  {
    v10 = 0;
    v7 = [*(a1 + 32) valueForCGPDFObject:a3 visitedSet:*(a1 + 48) isInternalObject:&v10];
    if (v7)
    {
      if (v10 == 1)
      {
        v8 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
        if (!v8)
        {
          v8 = [MEMORY[0x1E695DF90] dictionary];
          [*(*(a1 + 32) + 72) setObject:v8 forKey:*(a1 + 40)];
        }

        [v8 setObject:v7 forKey:v6];
      }

      else
      {
        [*(a1 + 40) setObject:v7 forKey:v6];
      }
    }
  }

  return 1;
}

- (id)_PDFMarkupColorForColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = [(PDFAnnotation *)self markupType];
  if (v5 == kPDFMarkupTypeUnderline)
  {
    v15 = +[PDFAnnotation PDFMarkupColors];
    v6 = 5;
    v16 = [v15 objectAtIndex:5];
    v17 = PDFColorComponentsAreEqual(v4, v16);

    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v5;
  if (v5 == kPDFMarkupTypeStrikeOut)
  {
    v10 = +[PDFAnnotation PDFMarkupColors];
    v6 = 6;
    v11 = [v10 objectAtIndex:6];
    v12 = PDFColorComponentsAreEqual(v4, v11);

    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    v13 = +[PDFAnnotation PDFMarkupColors];
    v14 = [v13 objectAtIndex:v6];

    goto LABEL_12;
  }

  if (v5 == kPDFMarkupTypeHighlight)
  {
    do
    {
      v7 = +[PDFAnnotation PDFMarkupColors];
      v8 = [v7 objectAtIndex:v6];
      v9 = PDFColorComponentsAreEqual(v4, v8);

      if (v9)
      {
        goto LABEL_9;
      }
    }

    while (++v6 != 5);
  }

LABEL_11:
  v14 = 0;
LABEL_12:

  return v14;
}

- (id)_PDFTextColorForColor:(id)a3
{
  v3 = a3;
  if (v3 && (+[PDFAnnotation PDFTextColors](PDFAnnotation, "PDFTextColors"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v5))
  {
    v6 = 0;
    while (1)
    {
      v7 = +[PDFAnnotation PDFTextColors];
      v8 = [v7 objectAtIndex:v6];
      v9 = PDFColorComponentsAreEqual(v3, v8);

      if (v9)
      {
        break;
      }

      ++v6;
      v10 = +[PDFAnnotation PDFTextColors];
      v11 = [v10 count];

      if (v6 >= v11)
      {
        goto LABEL_6;
      }
    }

    v14 = +[PDFAnnotation PDFTextColors];
    v12 = [v14 objectAtIndex:v6];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  return v12;
}

- (int64_t)priority
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v2 isEqualToString:@"/StrikeOut"])
  {
    v3 = 0;
  }

  else if ([v2 isEqualToString:@"/Underline"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"/Highlight"])
  {
    v3 = 2;
  }

  else if ([v2 isEqualToString:@"/Link"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"/Text"])
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  return v3;
}

- (BOOL)containsPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_quadPointsPath)
  {
    quadPointsPath = self->_quadPointsPath;

    return CGPathContainsPoint(quadPointsPath, 0, a3, 0);
  }

  else
  {
    PDFRectToCGRect([(PDFAnnotation *)self bounds]);
    v11 = x;
    v12 = y;

    return CGRectContainsPoint(*&v7, *&v11);
  }
}

- (BOOL)isMarkupAnnotation
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v3 = ([v2 isEqualToString:@"/Text"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/FreeText") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Line") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Square") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Circle") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Highlight") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Underline") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/StrikeOut") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Stamp") & 1) != 0 || objc_msgSend(v2, "isEqualToString:", @"/Ink");

  return v3;
}

- (id)_getFullFieldNameFromDictionary:(CGPDFDictionary *)a3
{
  dict = 0;
  value = 0;
  if (CGPDFDictionaryGetString(a3, "T", &value) && (v4 = CGPDFStringCopyTextString(value)) != 0)
  {
    v5 = v4;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v4);
    CFRelease(v5);
  }

  else
  {
    MutableCopy = 0;
  }

  if (!CGPDFDictionaryGetDictionary(a3, "Parent", &dict))
  {
    goto LABEL_23;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = dict;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    if (!CGPDFDictionaryGetString(v8, "T", &value))
    {
      dict = 0;
      goto LABEL_23;
    }

    if (MutableCopy)
    {
      CFStringInsert(MutableCopy, 0, @".");
      v11 = CGPDFStringCopyTextString(value);
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = v11;
      CFStringInsert(MutableCopy, 0, v11);
      goto LABEL_13;
    }

    v13 = CGPDFStringCopyTextString(value);
    if (v13)
    {
      v12 = v13;
      MutableCopy = CFStringCreateMutableCopy(v7, 0, v13);
LABEL_13:
      CFRelease(v12);
      goto LABEL_14;
    }

    MutableCopy = 0;
LABEL_14:
    if (!CGPDFDictionaryGetDictionary(v8, "Parent", &dict))
    {
      break;
    }

    v8 = dict;
    if (dict)
    {
      v9 = v10 + 1;
      if (v10 < 0x63)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  dict = 0;
LABEL_21:
  if (v10 >= 0x63)
  {
    NSLog(&cfstr_Getfullfieldna.isa);
  }

LABEL_23:
  if (MutableCopy)
  {
    v14 = [MEMORY[0x1E696AD60] stringWithString:MutableCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isWidgetOrMarkupAnnotation
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v2 isEqualToString:@"/Highlight"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/StrikeOut") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"/Underline"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"/Widget"];
  }

  return v3;
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)setParent:(id)a3
{
  v7 = a3;
  objc_storeWeak(&self->_parent, v7);
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [v4 isEqualToString:@"/Popup"];

  if (v5)
  {
    v6 = [v7 color];
    [(PDFAnnotation *)self setColor:v6];
  }
}

- (BOOL)isMarkupAnnotationSubtype
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v4 = ([v3 isEqualToString:@"/Highlight"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"/StrikeOut") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"/Underline") & 1) != 0 || -[PDFAnnotation _isTextMarkupRedaction](self, "_isTextMarkupRedaction");

  return v4;
}

- (BOOL)isRedaction
{
  if ([(PDFAnnotation *)self _isTextMarkupRedaction])
  {
    v3 = 1;
  }

  else
  {
    v4 = [(PDFAKAnnotationAdaptor *)self->_akAnnotationAdaptor akAnnotation];
    AKRedactionRectAnnotationClass();
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
    LOBYTE(v4) = [v6 isEqualToString:@"/Redact"];

    v3 = isKindOfClass | v4;
  }

  return v3 & 1;
}

- (BOOL)_isTextMarkupRedaction
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v3 isEqualToString:@"/Redact"])
  {
    v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/QuadPoints"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 count] != 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIsTransparent:(BOOL)a3
{
  v3 = a3;
  if ([(PDFAnnotation *)self isRedaction])
  {
    self->_isTransparent = v3;
    akAnnotationAdaptor = self->_akAnnotationAdaptor;
    if (akAnnotationAdaptor)
    {
      v6 = [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor akAnnotation];
      [v6 setIsOpaque:!v3];
    }

    else
    {

      [(PDFAnnotation *)self updateAnnotationEffect];
    }
  }
}

- (void)highlightRedaction:(BOOL)a3
{
  v3 = a3;
  if ([(PDFAnnotation *)self isRedaction])
  {
    akAnnotationAdaptor = self->_akAnnotationAdaptor;
    if (akAnnotationAdaptor)
    {
      v6 = [(PDFAKAnnotationAdaptor *)akAnnotationAdaptor akAnnotation];
      [v6 setIsHighlighted:v3];
    }

    else
    {

      [(PDFAnnotation *)self updateAnnotationEffect];
    }
  }
}

- (BOOL)intersectsWithRedactionPath
{
  if ([(PDFAnnotation *)self isRedaction])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_page);
  v5 = WeakRetained;
  if (self->_quadPointsPath)
  {
    v6 = [WeakRetained pathIntersectsWithRedactionPath:?];
  }

  else
  {
    [(PDFAnnotation *)self bounds];
    v6 = [v5 rectIntersectsWithRedactionPath:?];
  }

  v3 = v6;

  return v3;
}

- (BOOL)isTextFormField
{
  if ([(PDFAnnotation *)self isDetectedTextField])
  {
    return 1;
  }

  return [(PDFAnnotation *)self isTextWidget];
}

- (BOOL)isTextWidget
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  v5 = [v3 isEqualToString:@"/Widget"] && (objc_msgSend(v4, "isEqualToString:", @"/Tx") & 1) != 0;

  return v5;
}

- (BOOL)isSynthesizedFormField
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/AAPL:SFF"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isSignatureMarker
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/AAPL:isSignatureMarker"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isDetectedTextField
{
  v3 = [(PDFAnnotation *)self isSynthesizedFormField];
  if (v3)
  {
    if ([(PDFAnnotation *)self isDetectedCheckbox])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PDFAnnotation *)self isDetectedSignature];
    }
  }

  return v3;
}

- (BOOL)isFormField
{
  if ([(PDFAnnotation *)self isTextWidget])
  {
    return 1;
  }

  return [(PDFAnnotation *)self isSynthesizedFormField];
}

- (id)_accessibilityTypeString
{
  v3 = [(PDFAnnotation *)self type];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [v4 isEqualToString:@"/Widget"];

  if (v5)
  {
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
    if ([v6 isEqualToString:@"/Tx"])
    {
      v7 = @"Text ";
    }

    else if ([v6 isEqualToString:@"/Ch"])
    {
      v7 = @"Choice ";
    }

    else
    {
      if (![v6 isEqualToString:@"/Btn"])
      {
LABEL_9:

        goto LABEL_10;
      }

      v7 = @"Button ";
    }

    v8 = [(__CFString *)v7 stringByAppendingString:v3];

    v3 = v8;
    goto LABEL_9;
  }

LABEL_10:

  return v3;
}

- (id)createAKAnnotation
{
  v3 = [(PDFAKAnnotationAdaptor *)self->_akAnnotationAdaptor akAnnotation];

  if (v3)
  {
    v4 = [(PDFAKAnnotationAdaptor *)self->_akAnnotationAdaptor akAnnotation];
  }

  else if ([(PDFAnnotation *)self handledByPDFKitCheckAKEnabled:0])
  {
    v4 = 0;
  }

  else
  {
    v5 = [PDFAKAnnotationAdaptor annotationAdaptorWithPDFAnnotation:self andCGPDFAnnotation:[(PDFAnnotation *)self CGPDFAnnotation] andPDFDictionary:[(PDFAnnotation *)self sourceDictionary] updatePDFAnnotationIfNeeded:0];
    v4 = [v5 akAnnotation];
  }

  return v4;
}

- (id)getAKTextView
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v4 = [WeakRetained document];

  v5 = [v4 akController];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 textEditorController];
    v7 = [v6 annotation];
    v8 = [(PDFAnnotation *)self akAnnotation];

    if (v7 == v8)
    {
      v9 = [v6 textView];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)createWithPKDrawing:(id)a3 bounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = [[PDFAnnotationPKDrawing alloc] initWithPKDrawing:v8 bounds:x, y, width, height];

  return v9;
}

- (void)addPageReferenceToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self page];
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [v4 document];
    v5 = v8;
    if (v4)
    {
      v6 = v4;
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/#%ld", objc_msgSend(v4, "indexForPage:", v8) + 1];
      CFDictionarySetValue(a3, @"/P", v7);

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (id)_createArrayForCGRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinX(a3)];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMinY(v14)];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMaxX(v15)];
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:CGRectGetMaxY(v16)];
  v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, v8, v9, v10, 0}];

  return v11;
}

- (void)addRect:(CGRect)a3 forKey:(__CFString *)a4 toDictionaryRef:(__CFDictionary *)a5
{
  x = PDFRectToCGRect(self);
  y = v9;
  width = v11;
  height = v13;
  v15 = [(PDFAnnotation *)self page];
  v16 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
  if (!+[PDFDocument pdfDocumentAppendModeActiveForThisThread]&& v15 && CFStringCompare(a4, @"/Rect", 0) == kCFCompareEqualTo)
  {
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v20.a = *MEMORY[0x1E695EFD0];
    *&v20.c = v17;
    *&v20.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v15 getDrawingTransformForBox:0];
    v19 = v20;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectApplyAffineTransform(v21, &v19);
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
  }

  [PDFPage setNativeRotationDrawingEnabledForThisThread:v16];
  v18 = [(PDFAnnotation *)self _createArrayForCGRect:x, y, width, height];
  CFDictionarySetValue(a5, a4, v18);
}

- (void)addFlagsToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self flags];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];

  CFDictionarySetValue(a3, @"/F", v5);
}

- (void)addModificationDateToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/M"];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/M", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addTextLabelToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/T"];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/T", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addPopupToDictionaryRef:(__CFDictionary *)a3
{
  popup = self->_popup;
  if (popup)
  {
    v5 = [(PDFAnnotation *)popup dictionaryRef];
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(v5, @"/Parent", a3);

      CFDictionarySetValue(a3, @"/Popup", v6);
    }
  }
}

- (id)_createArrayForColor:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || CGColorGetAlpha([v3 CGColor]) == 0.0)
  {
    goto LABEL_3;
  }

  v7 = [v4 CGColor];
  NumberOfComponents = CGColorGetNumberOfComponents(v7);
  Components = CGColorGetComponents(v7);
  v10 = Components;
  if (NumberOfComponents == 5)
  {
    v15 = objc_alloc(MEMORY[0x1E695DEC8]);
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*v10];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10[1]];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10[2]];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v10[3]];
    v5 = [v15 initWithObjects:{v12, v13, v14, v16, 0}];

    goto LABEL_14;
  }

  if (NumberOfComponents == 4)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEC8]);
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:*v10];
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10[1]];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v10[2]];
    v5 = [v11 initWithObjects:{v12, v13, v14, 0}];
LABEL_14:

    goto LABEL_15;
  }

  if (NumberOfComponents != 2)
  {
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  if (Components[1] == 0.0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    goto LABEL_4;
  }

  v17 = objc_alloc(MEMORY[0x1E695DEC8]);
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:*v10];
  v5 = [v17 initWithObjects:{v12, 0}];
LABEL_15:

LABEL_4:

  return v5;
}

- (void)addColor:(id)a3 forKey:(__CFString *)a4 toDictionaryRef:(__CFDictionary *)a5
{
  v7 = [(PDFAnnotation *)self _createArrayForColor:a3];
  if (v7)
  {
    CFDictionarySetValue(a5, a4, v7);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addNormalAppearanceToDictionaryRef:(__CFDictionary *)a3
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(PDFAnnotation *)self addAppearanceForKey:@"/N" toDictionaryRef:Mutable];
  CFDictionarySetValue(a3, @"/AP", Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

- (void)addAppearanceForKey:(__CFString *)a3 toDictionaryRef:(__CFDictionary *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
  [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
  x = PDFRectToCGRect([(PDFAnnotation *)self extendedBoundsForAction:1]);
  y = v9;
  width = v11;
  height = v13;
  v15 = [(PDFAnnotation *)self page];
  v16 = v15;
  if (v15)
  {
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v25.a = *MEMORY[0x1E695EFD0];
    *&v25.c = v17;
    *&v25.tx = *(MEMORY[0x1E695EFD0] + 32);
    [v15 getDrawingTransformForBox:0];
    v24 = v25;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v29 = CGRectApplyAffineTransform(v28, &v24);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
  }

  *&v25.a = 0uLL;
  v25.c = width;
  v25.d = height;
  v26 = *MEMORY[0x1E695F200];
  v18 = [MEMORY[0x1E695DEF0] dataWithBytes:&v25 length:32];
  v27[0] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];

  v20 = CGDisplayListCreateWithRect();
  if (v20)
  {
    v21 = v20;
    CGDisplayListSetBoundingBox();
    v22 = CGDisplayListContextCreate();
    if (!v22)
    {
      [PDFPage setNativeRotationDrawingEnabledForThisThread:v7];
      CGDisplayListRelease();
      goto LABEL_8;
    }

    v23 = v22;
    CGContextTranslateCTM(v22, -x, -y);
    [(PDFAnnotation *)self drawWithBox:0 inContext:v23];
    CFDictionarySetValue(a4, a3, v21);
    CGContextRelease(v23);
    CGDisplayListRelease();
  }

  [PDFPage setNativeRotationDrawingEnabledForThisThread:v7];
LABEL_8:
}

- (void)addBorderToDictionaryRef:(__CFDictionary *)a3
{
  v17 = [(PDFAnnotation *)self border];
  if (!v17 || ([v17 dashPattern], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, !v5))
  {
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    v8 = MEMORY[0x1E696AD98];
    [v17 horizontalCornerRadius];
    *&v9 = v9;
    v10 = [v8 numberWithFloat:v9];
    v11 = MEMORY[0x1E696AD98];
    [v17 verticalCornerRadius];
    *&v12 = v12;
    v13 = [v11 numberWithFloat:v12];
    v14 = MEMORY[0x1E696AD98];
    [v17 lineWidth];
    *&v15 = v15;
    v16 = [v14 numberWithFloat:v15];
    v6 = [v7 initWithObjects:{v10, v13, v16, 0}];

    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v6 = [v17 dashPattern];
  if (v6)
  {
LABEL_6:
    CFDictionarySetValue(a3, @"/Border", v6);
  }

LABEL_7:
}

- (void)addBorderStyleToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self border];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 createDictionaryRef];
    v4 = v6;
    if (v5)
    {
      CFDictionarySetValue(a3, @"/BS", v5);
      CFRelease(v5);
      v4 = v6;
    }
  }
}

- (void)addContentsToDictionaryRef:(__CFDictionary *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  [(PDFAnnotation *)self noteBounds];
  if (([WeakRetained rectIntersectsWithRedactionPath:?] & 1) == 0)
  {
    v5 = [(PDFAnnotation *)self contents];
    v6 = v5;
    if (v5 && [v5 length])
    {
      v7 = [v6 mutableCopy];
      [v7 replaceOccurrencesOfString:@"/" withString:@"//" options:2 range:{0, 1}];
      CFDictionarySetValue(a3, @"/Contents", v7);
    }
  }
}

- (void)addDefaultAppearanceDictionaryRef:(__CFDictionary *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = xmmword_1C1D79AC0;
  *v31 = unk_1C1D79AD0;
  v5 = [(PDFAnnotation *)self font];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fontName];
    v8 = MEMORY[0x1E696AEC0];
    [v6 pointSize];
    v10 = [v8 stringWithFormat:@"%.0f", round(v9)];
    v11 = [(PDFAnnotation *)self fontColor];
    v12 = v11;
    if (v7)
    {
      if (v11)
      {
        PDFKitPlatformColorGetRGBA(v11, &v30, &v30 + 8, v31, &v31[1]);
        v14 = *(&v30 + 1);
        v13 = *&v30;
        v15 = v31[0];
      }

      else
      {
        v15 = 0.0;
        v14 = 0.0;
        v13 = 0.0;
      }

      v16 = v13 * 100.0;
      v17 = round(v13 * 100.0);
      if (v13 == v14 && v13 == v15)
      {
        if (v17 == v16)
        {
          if (round(v13 * 10.0) == v13 * 10.0)
          {
            if (round(v13) == v13)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f g", *&v13, v28, v29];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f g", *&v13, v28, v29];
            }
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f g", *&v13, v28, v29];
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f g", *&v13, v28, v29];
        }
      }

      else
      {
        v19 = v17 == v16;
        v18 = round(v14 * 100.0);
        v19 = v19 && v18 == v14 * 100.0;
        v20 = round(v15 * 100.0);
        if (v19 && v20 == v15 * 100.0)
        {
          v24 = round(v14 * 10.0);
          v25 = round(v13 * 10.0) == v13 * 10.0 && v24 == v14 * 10.0;
          v26 = round(v15 * 10.0);
          if (v25 && v26 == v15 * 10.0)
          {
            if (round(v13) == v13 && round(v14) == v14 && round(v15) == v15)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f %.0f %.0f rg", *&v13, *&v14, *&v15];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f %.1f %.1f rg", *&v13, *&v14, *&v15];
            }
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f %.2f %.2f rg", *&v13, *&v14, *&v15];
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f %.3f %.3f rg", *&v13, *&v14, *&v15];
        }
      }
      v22 = ;
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"//%@ %@ Tf %@", v7, v10, v22];
      CFDictionarySetValue(a3, @"/DA", v23);
    }
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v7 = 0;
  }
}

- (void)addQuaddingToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self alignment];
  if (v4)
  {
    if (v4 == NSTextAlignmentRight)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (v4 == NSTextAlignmentCenter)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    CFDictionarySetValue(a3, @"/Q", v7);
  }
}

- (void)addQuadPointsToDictionaryRef:(__CFDictionary *)a3
{
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/QuadPoints"];
  v6 = +[PDFDocument pdfDocumentAppendModeActiveForThisThread];
  v7 = [v5 count];
  if (v7)
  {
    v8 = (v7 & 3) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = v7;
    v10 = [(PDFAnnotation *)self page];
    v11 = v10;
    if (v10)
    {
      [v10 getDrawingTransformForBox:0];
      v12 = v32;
      v13 = v33;
      v14 = v34;
      v15 = v35;
      v16 = v36;
      v17 = v37;
    }

    else
    {
      v12 = *MEMORY[0x1E695EFD0];
      v13 = *(MEMORY[0x1E695EFD0] + 8);
      v14 = *(MEMORY[0x1E695EFD0] + 16);
      v15 = *(MEMORY[0x1E695EFD0] + 24);
      v16 = *(MEMORY[0x1E695EFD0] + 32);
      v17 = *(MEMORY[0x1E695EFD0] + 40);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0;
    do
    {
      v20 = [v5 objectAtIndex:v19];
      [v20 PDFKitPDFPointValue];
      v22 = v21;
      v24 = v23;

      if (!v6)
      {
        v26 = PDFPointToCGPoint(v22, v24);
        v25 = PDFPointFromCGPoint(v16 + v14 * v27 + v12 * v26, v17 + v15 * v27 + v13 * v26);
        v22 = v25;
        v24 = v28;
      }

      *&v25 = v22;
      v29 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
      [v18 addObject:v29];

      *&v30 = v24;
      v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
      [v18 addObject:v31];

      ++v19;
    }

    while (v9 != v19);
    CFDictionarySetValue(a3, @"/QuadPoints", v18);
  }
}

- (void)addActionToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self action];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 createDictionaryRef];
    v4 = v6;
    if (v5)
    {
      CFDictionarySetValue(a3, @"/A", v5);
      CFRelease(v5);
      v4 = v6;
    }
  }
}

- (void)addAdditionalActionsToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self mouseDownAction];
  v5 = v4;
  if (v4)
  {
    values = [v4 createDictionaryRef];
    if (values)
    {
      v9 = @"/D";
      v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], &v9, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(a3, @"/AA", v6);
        CFRelease(v7);
        v8 = values;
        if (!values)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = values;
      }

      CFRelease(v8);
    }
  }

LABEL_8:
}

- (void)addLineToDictionaryRef:(__CFDictionary *)a3
{
  v5 = +[PDFDocument pdfDocumentAppendModeActiveForThisThread];
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/L"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectAtIndex:0];
    [v8 doubleValue];
    v10 = v9;
    v11 = [v7 objectAtIndex:1];
    [v11 doubleValue];
    v13 = PDFPointMake(v10, v12);
    v15 = v14;

    v16 = [v7 objectAtIndex:2];
    [v16 doubleValue];
    v18 = v17;
    v19 = [v7 objectAtIndex:3];
    [v19 doubleValue];
    v46 = PDFPointMake(v18, v20);
    v47 = v21;

    v22 = [(PDFAnnotation *)self page];
    v23 = v22;
    if (v22)
    {
      [v22 getDrawingTransformForBox:0];
      v24 = v48;
      v45 = v49;
      v26 = v50;
      v25 = v51;
      v27 = v52;
      v28 = v53;
    }

    else
    {
      v24 = *MEMORY[0x1E695EFD0];
      v45 = *(MEMORY[0x1E695EFD0] + 8);
      v26 = *(MEMORY[0x1E695EFD0] + 16);
      v25 = *(MEMORY[0x1E695EFD0] + 24);
      v27 = *(MEMORY[0x1E695EFD0] + 32);
      v28 = *(MEMORY[0x1E695EFD0] + 40);
    }

    v29 = PDFPointToCGPoint(v13, v15);
    v31 = v29;
    v32 = v30;
    if (v5)
    {
      v33 = PDFPointToCGPoint(v46, v47);
      v35 = v34;
      v36 = v31;
    }

    else
    {
      v36 = v27 + v26 * v30 + v24 * v29;
      v32 = v28 + v25 * v30 + v45 * v29;
      v37 = PDFPointToCGPoint(v46, v47);
      v33 = v27 + v26 * v38 + v24 * v37;
      v35 = v28 + v25 * v38 + v45 * v37;
    }

    v39 = objc_alloc(MEMORY[0x1E695DEC8]);
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
    v43 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
    v44 = [v39 initWithObjects:{v40, v41, v42, v43, 0}];

    CFDictionarySetValue(a3, @"/L", v44);
  }
}

- (void)addLineEndingStylesToDictionaryRef:(__CFDictionary *)a3
{
  v7 = [PDFAnnotation nameForLineStyle:[(PDFAnnotation *)self startLineStyle]];
  v5 = [PDFAnnotation nameForLineStyle:[(PDFAnnotation *)self endLineStyle]];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, v5, 0}];
  CFDictionarySetValue(a3, @"/LE", v6);
}

- (void)addNameToDictionaryRef:(__CFDictionary *)a3
{
  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Name"];
  if (v5)
  {
    if ([v7 isEqualToString:@"/Stamp"])
    {
      if ([v5 isEqualToString:@"Draft"])
      {
        goto LABEL_7;
      }
    }

    else if (![v7 isEqualToString:@"/Text"])
    {
      goto LABEL_7;
    }

    v6 = [PDFAnnotation getProperNameStringFromString:v5];

    CFDictionarySetValue(a3, @"/Name", v6);
    v5 = v6;
  }

LABEL_7:
}

- (void)addOpenToDictionaryRef:(__CFDictionary *)a3
{
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v6 isEqualToString:@"/Popup"])
  {
    if (![(PDFAnnotation *)self isOpen])
    {
      goto LABEL_8;
    }

LABEL_7:
    CFDictionarySetValue(a3, @"/Open", *MEMORY[0x1E695E4D0]);
    goto LABEL_8;
  }

  if ([v6 isEqualToString:@"/Text"])
  {
    popup = self->_popup;
    if (popup)
    {
      if ([(PDFAnnotation *)popup isOpen])
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
}

- (void)addHighlightingModeToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/H"];
  if (v4)
  {
    value = v4;
    if (([v4 isEqualToString:@"/I"] & 1) == 0)
    {
      CFDictionarySetValue(a3, @"/H", value);
    }
  }

  MEMORY[0x1EEE66C30]();
}

- (BOOL)addDestinationToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Dest"];
  v5 = v4;
  if (v4 && (v6 = [v4 createArrayRef]) != 0)
  {
    v7 = v6;
    CFDictionarySetValue(a3, @"/Dest", v6);
    CFRelease(v7);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addInkListToDictionaryRef:(__CFDictionary *)a3
{
  v26 = [(PDFAnnotation *)self valueForAnnotationKey:@"/InkList"];
  v4 = [v26 count];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v4, MEMORY[0x1E695E9C0]);
  [(PDFAnnotation *)self bounds];
  if (v4 >= 1)
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = 0;
    v15 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v18 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v19 = [v26 objectAtIndex:v14];
      v20 = [v19 CGPath];
      v21 = [MEMORY[0x1E695DF90] dictionary];
      v22 = [MEMORY[0x1E695DF70] array];
      v23 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v10, v11, v12, v13}];
      [v21 setObject:v23 forKey:@"bounds"];

      v24 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v15, v16, v17, v18}];
      [v21 setObject:v24 forKey:@"firstPoint"];

      [v21 setObject:&unk_1F4183FA0 forKey:@"elementCount"];
      [v21 setObject:v22 forKey:@"pathArray"];
      CGPathApply(v20, v21, PDFAnnotationCGPathApplierFunc);
      CFArrayAppendValue(Mutable, v22);

      ++v14;
    }

    while (v4 != v14);
  }

  CFDictionarySetValue(a3, @"/InkList", Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (void)addNormalAndDownAppearanceToDictionaryRef:(__CFDictionary *)a3
{
  v8 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v8 isEqualToString:@"/Widget"])
  {
    if ([v5 isEqualToString:@"/Btn"])
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v7 = [(PDFAnnotation *)self isHighlighted];
      [(PDFAnnotation *)self setHighlighted:0];
      [(PDFAnnotation *)self addAppearanceForKey:@"/N" toDictionaryRef:Mutable];
      [(PDFAnnotation *)self setHighlighted:1];
      [(PDFAnnotation *)self addAppearanceForKey:@"/D" toDictionaryRef:Mutable];
      CFDictionarySetValue(a3, @"/AP", Mutable);
      [(PDFAnnotation *)self setHighlighted:v7];
      CFDictionarySetValue(a3, @"/H", @"/P");
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

- (void)addNormalAppearanceWithStateToDictionaryRef:(__CFDictionary *)a3
{
  v16 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if (![v16 isEqualToString:@"/Widget"] || !objc_msgSend(v5, "isEqualToString:", @"/Btn"))
  {
    goto LABEL_11;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
  v11 = [(PDFAnnotation *)self widgetOnStateString];
  if (v11)
  {
    v12 = [(PDFAnnotation *)self buttonWidgetState];
    v13 = [(PDFAnnotation *)self isHighlighted];
    [(PDFAnnotation *)self setHighlighted:0];
    [(PDFAnnotation *)self setButtonWidgetState:1];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v11];
    [(PDFAnnotation *)self addAppearanceForKey:v14 toDictionaryRef:v10];

    [(PDFAnnotation *)self setButtonWidgetState:0];
    [(PDFAnnotation *)self addAppearanceForKey:@"/Off" toDictionaryRef:v10];
    [(PDFAnnotation *)self setButtonWidgetState:v12];
    [(PDFAnnotation *)self setHighlighted:v13];
    CFDictionarySetValue(Mutable, @"/N", v10);
    CFDictionarySetValue(a3, @"/AP", Mutable);
    if ([(PDFAnnotation *)self buttonWidgetState]!= kPDFWidgetOnState)
    {
      CFDictionarySetValue(a3, @"/AS", @"/Off");
      if (!v10)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v11];
    CFDictionarySetValue(a3, @"/AS", v15);
  }

  if (v10)
  {
LABEL_7:
    CFRelease(v10);
  }

LABEL_8:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_11:
}

- (void)addNormalAndDownAppearanceWithStateToDictionaryRef:(__CFDictionary *)a3
{
  v18 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v18 isEqualToString:@"/Widget"] && objc_msgSend(v5, "isEqualToString:", @"/Btn"))
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1E695E9D8];
    v8 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v11 = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v12 = [(PDFAnnotation *)self widgetOnStateString];
    if (v12)
    {
      v17 = [(PDFAnnotation *)self buttonWidgetState];
      v16 = [(PDFAnnotation *)self isHighlighted];
      [(PDFAnnotation *)self setHighlighted:0];
      [(PDFAnnotation *)self setButtonWidgetState:1];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v12];
      [(PDFAnnotation *)self addAppearanceForKey:v13 toDictionaryRef:v10];

      [(PDFAnnotation *)self setHighlighted:0];
      [(PDFAnnotation *)self setButtonWidgetState:0];
      [(PDFAnnotation *)self addAppearanceForKey:@"/Off" toDictionaryRef:v10];
      [(PDFAnnotation *)self setHighlighted:1];
      [(PDFAnnotation *)self setButtonWidgetState:1];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v12];
      [(PDFAnnotation *)self addAppearanceForKey:v14 toDictionaryRef:v11];

      [(PDFAnnotation *)self setHighlighted:1];
      [(PDFAnnotation *)self setButtonWidgetState:0];
      [(PDFAnnotation *)self addAppearanceForKey:@"/Off" toDictionaryRef:v11];
      [(PDFAnnotation *)self setButtonWidgetState:v17];
      [(PDFAnnotation *)self setHighlighted:v16];
      CFDictionarySetValue(Mutable, @"/N", v10);
      CFDictionarySetValue(Mutable, @"/D", v11);
      CFDictionarySetValue(a3, @"/AP", Mutable);
      if ([(PDFAnnotation *)self buttonWidgetState]== kPDFWidgetOnState)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v12];
        CFDictionarySetValue(a3, @"/AS", v15);
      }

      else
      {
        CFDictionarySetValue(a3, @"/AS", @"/Off");
      }

      CFDictionarySetValue(a3, @"/H", @"/P");
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

- (void)addAppearanceCharacteristicsToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MK"];
  if (v4)
  {
    v6 = v4;
    v5 = [v4 createDictionaryRef];
    v4 = v6;
    if (v5)
    {
      CFDictionarySetValue(a3, @"/MK", v5);
      CFRelease(v5);
      v4 = v6;
    }
  }
}

- (void)addFieldTypeToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/FT", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addFieldValueToDictionaryRef:(__CFDictionary *)a3
{
  v9 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/V"];
  if ([v9 isEqualToString:@"/Widget"])
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([v5 isEqualToString:@"/Btn"])
    {
      v8 = [@"/" stringByAppendingString:v6];

      v6 = v8;
    }

    CFDictionarySetValue(a3, @"/V", v6);
  }
}

- (void)addDefaultFieldValueToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/DV"];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/DV", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addFieldNameToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/T"];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/T", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addAlternateFieldNameToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/TU"];
  if (v4)
  {
    CFDictionarySetValue(a3, @"/TU", v4);
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addFieldFlagsToDictionaryRef:(__CFDictionary *)a3
{
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v5 isEqualToString:@"/Widget"])
  {
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Ff"];
    v7 = [v6 integerValue];

    valuePtr = v7;
    v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(a3, @"/Ff", v8);
      CFRelease(v9);
    }
  }
}

- (void)addMaxLenToDictionaryRef:(__CFDictionary *)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MaxLen"];
  v5 = [v4 integerValue];

  valuePtr = v5;
  if (v5)
  {
    v6 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a3, @"/MaxLen", v6);
      CFRelease(v7);
    }
  }
}

- (void)addOptionsToDictionaryRef:(__CFDictionary *)a3
{
  v14 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v14 isEqualToString:@"/Widget"] && objc_msgSend(v5, "isEqualToString:", @"/Ch"))
  {
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Opt"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 count];
      if ([v7 count])
      {
        v9 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v8, MEMORY[0x1E695E9C0]);
        if (v8 >= 1)
        {
          for (i = 0; i != v8; ++i)
          {
            v12 = [v7 objectAtIndex:i];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              CFArrayAppendValue(Mutable, v12);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v13 = CFArrayCreateMutable(v9, 2, MEMORY[0x1E695E9C0]);
                CFArrayAppendValue(v13, [v12 objectAtIndex:0]);
                CFArrayAppendValue(v13, [v12 objectAtIndex:1]);
                CFArrayAppendValue(Mutable, v13);
                if (v13)
                {
                  CFRelease(v13);
                }
              }
            }
          }
        }

        CFDictionarySetValue(a3, @"/Opt", Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }
  }
}

- (void)_sanitizeValue:(id)a3 forKey:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!strcmp([v6 objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
    {
      v8 = -[PDFAnnotation _createArrayForCGRect:](self, "_createArrayForCGRect:", PDFRectToCGRect([v6 PDFKitPDFRectValue]));
      goto LABEL_3;
    }

LABEL_7:
    Mutable = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (v11 = 0x1E696A000uLL, objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_2:
    v8 = v6;
LABEL_3:
    Mutable = v8;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
    v13 = v6;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v65;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v65 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [(PDFAnnotation *)self _sanitizeValue:*(*(&v64 + 1) + 8 * i) forKey:v7];
          if (v19)
          {
            v20 = v19;
            CFArrayAppendValue(Mutable, v19);
            CFRelease(v20);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v64 objects:v71 count:16];
      }

      while (v16);
    }

    v21 = [(NSMutableDictionary *)self->_internalPDFAnnotationDictionary objectForKey:v14];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v60 objects:v70 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v61;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v61 != v24)
          {
            objc_enumerationMutation(v21);
          }

          CFArrayAppendValue(Mutable, *(*(*(&v60 + 1) + 8 * j) + 8));
        }

        v23 = [v21 countByEnumeratingWithState:&v60 objects:v70 count:16];
      }

      while (v23);
    }

    if (CFArrayGetCount(Mutable) <= 0)
    {
      NSLog(&cfstr_ErrorCouldNotC.isa, v7);
      Mutable = 0;
    }

    v6 = v12;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = v6;
      v51 = self;
      v26 = v6;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v56 objects:v69 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v57;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v57 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v56 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = v7;
              v34 = v11;
              v35 = [PDFAnnotation getProperNameStringFromString:v32];
              v36 = v27;
              v37 = [v27 objectForKey:v32];
              v38 = [(PDFAnnotation *)v51 _sanitizeValue:v37 forKey:v32];
              if (v38)
              {
                v39 = v38;
                CFDictionarySetValue(Mutable, v35, v38);
                CFRelease(v39);
              }

              v11 = v34;
              v7 = v33;
              v27 = v36;
            }

            else
            {
              NSLog(&cfstr_ErrorAttemptin.isa, v32);
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v56 objects:v69 count:16];
        }

        while (v29);
      }

      v40 = [(NSMutableDictionary *)v51->_internalPDFAnnotationDictionary objectForKey:v27];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v41 = [v40 countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v53;
        do
        {
          for (m = 0; m != v42; ++m)
          {
            if (*v53 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v52 + 1) + 8 * m);
            v46 = [v40 objectForKey:v45];
            v47 = v46;
            if (v46)
            {
              CFDictionarySetValue(Mutable, v45, *(v46 + 8));
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v52 objects:v68 count:16];
        }

        while (v42);
      }

      if (!CFDictionaryGetCount(Mutable))
      {
        NSLog(&cfstr_ErrorCouldNotC_0.isa, v7);
        Mutable = 0;
      }

      v6 = v50;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_63;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v6 createArrayRef];
            goto LABEL_3;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_63:
            v8 = [v6 createDictionaryRef];
            goto LABEL_3;
          }

          NSLog(&cfstr_ErrorCannotSav.isa, v7);
        }

        goto LABEL_7;
      }

      v48 = [(PDFAnnotation *)self _createArrayForColor:v6];
      Mutable = v48;
      if (v48)
      {
        v49 = v48;
      }
    }
  }

LABEL_4:

  return Mutable;
}

- (void)_addUnknownPropertiesToDictionaryRef:(__CFDictionary *)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary allKeys];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = +[PDFAnnotation PDFKitAnnotationKeys];
  [v6 addObjectsFromArray:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (([v6 containsObject:v13] & 1) == 0)
        {
          v14 = [(NSMutableDictionary *)self->_PDFAnnotationDictionary objectForKey:v13];
          v15 = [(PDFAnnotation *)self _sanitizeValue:v14 forKey:v13];
          if (v15)
          {
            v16 = v15;
            CFDictionarySetValue(a3, v13, v15);
            CFRelease(v16);
          }

          else
          {
            NSLog(&cfstr_ErrorCannotSav.isa, v13);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  if (+[PDFDocument pdfDocumentAppendModeActiveForThisThread])
  {
    internalPDFAnnotationDictionary = self->_internalPDFAnnotationDictionary;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __54__PDFAnnotation__addUnknownPropertiesToDictionaryRef___block_invoke;
    v18[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
    v18[4] = a3;
    [(NSMutableDictionary *)internalPDFAnnotationDictionary enumerateKeysAndObjectsUsingBlock:v18];
  }
}

void __54__PDFAnnotation__addUnknownPropertiesToDictionaryRef___block_invoke(uint64_t a1, void *a2, void *a3)
{
  key = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFDictionarySetValue(*(a1 + 32), key, v5[1]);
    }
  }
}

- (id)createDefaultAppearanceStringWithFont:(id)a3 fontColor:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v30 = xmmword_1C1D79AC0;
  *v31 = unk_1C1D79AD0;
  if (a3)
  {
    v6 = a3;
    v7 = [v6 fontName];
    v8 = MEMORY[0x1E696AEC0];
    [v6 pointSize];
    v10 = v9;

    v11 = [v8 stringWithFormat:@"%.0f", round(v10)];
    if (v7)
    {
      if (v5)
      {
        PDFKitPlatformColorGetRGBA(v5, &v30, &v30 + 8, v31, &v31[1]);
        v13 = *(&v30 + 1);
        v12 = *&v30;
        v14 = v31[0];
      }

      else
      {
        v14 = 0.0;
        v13 = 0.0;
        v12 = 0.0;
      }

      v17 = v12 * 100.0;
      v18 = round(v12 * 100.0);
      if (v12 == v13 && v12 == v14)
      {
        if (v18 == v17)
        {
          if (round(v12 * 10.0) == v12 * 10.0)
          {
            if (round(v12) == v12)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f g", *&v12, v28, v29];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f g", *&v12, v28, v29];
            }
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f g", *&v12, v28, v29];
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f g", *&v12, v28, v29];
        }
      }

      else
      {
        v20 = v18 == v17;
        v19 = round(v13 * 100.0);
        v20 = v20 && v19 == v13 * 100.0;
        v21 = round(v14 * 100.0);
        if (v20 && v21 == v14 * 100.0)
        {
          v24 = round(v13 * 10.0);
          v25 = round(v12 * 10.0) == v12 * 10.0 && v24 == v13 * 10.0;
          v26 = round(v14 * 10.0);
          if (v25 && v26 == v14 * 10.0)
          {
            if (round(v12) == v12 && round(v13) == v13 && round(v14) == v14)
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f %.0f %.0f rg", *&v12, *&v13, *&v14];
            }

            else
            {
              [MEMORY[0x1E696AEC0] stringWithFormat:@"%.1f %.1f %.1f rg", *&v12, *&v13, *&v14];
            }
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f %.2f %.2f rg", *&v12, *&v13, *&v14];
          }
        }

        else
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3f %.3f %.3f rg", *&v12, *&v13, *&v14];
        }
      }
      v16 = ;
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@ %@ Tf %@", v7, v11, v16];
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)flags
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/F"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (void)setPDFAnnotationDictionary:(id)a3
{
  v8 = a3;
  PDFAnnotationDictionary = self->_PDFAnnotationDictionary;
  self = (self + 56);
  v6 = PDFAnnotationDictionary;
  objc_storeStrong(&self->super.isa, a3);
  x = self->_endPoint.x;
  if (x != 0.0)
  {
    [*&x didReplaceAllValuesWithNewDictionary:v8 andOldDictionary:v6];
  }
}

- (void)setSignatureAnnotationForRendering:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  objc_storeStrong(&self->_signatureAnnotationForRendering, a3);
  v5 = a3;
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = [(PDFAnnotation *)self page];
  v8 = [v7 view];
  v10[0] = @"annotation";
  v10[1] = @"key";
  v11[0] = self;
  v11[1] = @"/V";
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  [v6 postNotificationName:@"PDFAnnotationPropertiesChangedNotificationNotification" object:v8 userInfo:v9];
}

- (void)releaseCGPathArray
{
  if (self->_cgPaths)
  {
    v3 = [(PDFAnnotation *)self paths];
    v4 = [v3 count];

    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        CGPathRelease(self->_cgPaths[i]);
      }
    }

    NSZoneReallyFree();
    self->_cgPaths = 0;
  }
}

- (id)replaceTextWidgetWithString:(id)a3
{
  v4 = a3;
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v5 isEqualToString:@"/Widget"] && objc_msgSend(v6, "isEqualToString:", @"/Tx") && (v7 = -[PDFAnnotation maximumLength](self, "maximumLength")) != 0 && (v8 = v7, objc_msgSend(v4, "length") > v7))
  {
    v9 = [v4 substringToIndex:v8];
    v10 = v9;
    if (v9 && [v9 length] <= v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = &stru_1F416DF70;
    }
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

- (CGPDFForm)appearance:(int)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return *(&self->_normalAppearance + (8 * a3));
  }
}

- (void)setAppearance:(CGPDFForm *)a3 forType:(int)a4
{
  if (a4 <= 2)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        p_rolloverAppearance = &self->_rolloverAppearance;
        if (!self->_rolloverAppearance)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (a4 != 2)
        {
          return;
        }

        p_rolloverAppearance = &self->_downAppearance;
        if (!self->_downAppearance)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      p_rolloverAppearance = &self->_normalAppearance;
      if (!self->_normalAppearance)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  if (a4 == 3)
  {
    p_rolloverAppearance = &self->_normalOffAppearance;
    if (!self->_normalOffAppearance)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a4 == 4)
  {
    p_rolloverAppearance = &self->_rolloverOffAppearance;
    if (!self->_rolloverOffAppearance)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a4 != 5)
  {
    return;
  }

  p_rolloverAppearance = &self->_downOffAppearance;
  if (self->_downOffAppearance)
  {
LABEL_15:
    CGPDFFormRelease();
  }

LABEL_16:
  *p_rolloverAppearance = a3;
}

- (CGDisplayList)cachedAppearance:(int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&self->_cachedAppearancesLock);
  cachedAppearances = self->_cachedAppearances;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v7 = [(NSMutableDictionary *)cachedAppearances objectForKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_cachedAppearancesLock);
  return v7;
}

- (void)cacheAppearances
{
  os_unfair_lock_lock(&self->_cachedAppearancesLock);
  if (!self->_cachedAppearances)
  {
    v3 = objc_opt_new();
    cachedAppearances = self->_cachedAppearances;
    self->_cachedAppearances = v3;
  }

  v5 = 0;
  do
  {
    v6 = [(PDFAnnotation *)self appearance:v5];
    if (v6)
    {
      v7 = v6;
      v8 = self->_cachedAppearances;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];

      if (!v10)
      {
        [(PDFAnnotation *)self bounds];
        v11 = CGDisplayListCreateWithRect();
        if (v11)
        {
          v12 = v11;
          v13 = CGDisplayListContextCreate();
          if (v13)
          {
            v14 = v13;
            [(PDFAnnotation *)self drawAppearance:v7 withBox:1 inContext:v13];
            v15 = self->_cachedAppearances;
            v16 = [MEMORY[0x1E696AD98] numberWithInt:v5];
            [(NSMutableDictionary *)v15 setObject:v12 forKeyedSubscript:v16];

            CGContextRelease(v14);
          }
        }
      }
    }

    v5 = (v5 + 1);
  }

  while (v5 != 6);

  os_unfair_lock_unlock(&self->_cachedAppearancesLock);
}

- (BOOL)isAppearanceStreamEmpty
{
  v3 = [(PDFAnnotation *)self appearance:0];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  [(PDFAnnotation *)self bounds];
  v5 = CGDisplayListCreateWithRect();
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = CGDisplayListContextCreate();
  if (v7)
  {
    v8 = v7;
    [(PDFAnnotation *)self drawAppearance:v4 withBox:1 inContext:v7];
    v9 = CGDisplayListGetNumberOfEntries() == 0;
    CFRelease(v8);
  }

  else
  {
    v9 = 1;
  }

  CFRelease(v6);
  return v9;
}

- (void)getAppearancesFromDictionary:(CGPDFDictionary *)a3 ofType:(int)a4
{
  value = 0;
  v16 = 0;
  if (a4 == 2)
  {
    self->_downAppearance = 0;
    p_downAppearance = &self->_downAppearance;
    self->_downOffAppearance = 0;
    p_downOffAppearance = &self->_downOffAppearance;
    if (!CGPDFDictionaryGetObject(a3, "D", &value))
    {
      return;
    }

    goto LABEL_9;
  }

  if (a4 == 1)
  {
    self->_rolloverAppearance = 0;
    p_downAppearance = &self->_rolloverAppearance;
    self->_rolloverOffAppearance = 0;
    p_downOffAppearance = &self->_rolloverOffAppearance;
    v7 = "R";
  }

  else
  {
    if (a4)
    {
      return;
    }

    self->_normalAppearance = 0;
    p_downAppearance = &self->_normalAppearance;
    self->_normalOffAppearance = 0;
    p_downOffAppearance = &self->_normalOffAppearance;
    v7 = "N";
  }

  if (CGPDFDictionaryGetObject(a3, v7, &value))
  {
LABEL_9:
    if (CGPDFObjectGetValue(value, kCGPDFObjectTypeStream, &v16))
    {
      *p_downAppearance = CGPDFFormCreate();
    }

    else
    {
      dict = 0;
      if (CGPDFObjectGetValue(value, kCGPDFObjectTypeDictionary, &dict))
      {
        info = dict;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        CGPDFDictionaryApplyFunction(dict, getStreams, &info);
        if (v12)
        {
          *p_downAppearance = CGPDFFormCreate();
        }

        if (v13)
        {
          *p_downOffAppearance = CGPDFFormCreate();
        }

        v8 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
        v9 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
        if (v14 && [v8 isEqualToString:@"/Widget"])
        {
          if ([v9 isEqualToString:@"/Btn"])
          {
            v10 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:1];
            [(PDFAnnotation *)self setWidgetOnStateString:v10];
          }
        }
      }
    }
  }
}

- (id)tokenizeAppearanceString:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v5 = [v3 length];
  v6 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if ([v3 characterAtIndex:i] == 32)
      {
        if (i == v6)
        {
          ++v6;
        }

        else
        {
          v8 = [v3 substringWithRange:{v6, i - v6}];
          [v4 addObject:v8];

          v6 = i + 1;
        }
      }
    }
  }

  v9 = [v3 substringWithRange:{v6, v5 - v6}];
  [v4 addObject:v9];

  return v4;
}

- (double)pointSizeFromAppearanceTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  v5 = 0.0;
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    while (1)
    {
      if (v7)
      {
        v8 = [v3 objectAtIndex:v7];
        v9 = [v8 isEqualToString:@"Tf"];

        if (v9)
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }

    v10 = [v3 objectAtIndex:v7 - 1];
    [v10 floatValue];
    v5 = v11;
  }

LABEL_8:

  return v5;
}

- (id)fontNameFromAppearanceTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if (v5 >= 2)
      {
        v6 = [v3 objectAtIndex:v5];
        v7 = [v6 isEqualToString:@"Tf"];

        if (v7)
        {
          v8 = [v3 objectAtIndex:v5 - 2];
          v9 = [v8 length];

          if (v9)
          {
            break;
          }
        }
      }

      if (v4 == ++v5)
      {
        v4 = 0;
        goto LABEL_9;
      }
    }

    v10 = [v3 objectAtIndex:v5 - 2];
    v4 = [v10 substringWithRange:{1, v9 - 1}];
  }

LABEL_9:

  return v4;
}

- (id)colorFromAppearanceTokens:(id)a3
{
  v3 = a3;
  v4 = [v3 count];
  if (!v4)
  {
LABEL_9:
    v25 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  v6 = 0;
  v7 = 0xFFFFFFFF00000000;
  v8 = 0xFFFFFFFE00000000;
  v9 = 0xFFFFFFFD00000000;
  while (v6 < 3)
  {
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_8:
    ++v6;
    v7 += 0x100000000;
    v8 += 0x100000000;
    v9 += 0x100000000;
    if (v5 == v6)
    {
      goto LABEL_9;
    }
  }

  v10 = [v3 objectAtIndex:v6];
  v11 = [v10 isEqualToString:@"rg"];

  if (v11)
  {
    v16 = MEMORY[0x1E69DC888];
    v17 = [v3 objectAtIndex:v9 >> 32];
    [v17 floatValue];
    v19 = v18;
    v20 = [v3 objectAtIndex:v8 >> 32];
    [v20 floatValue];
    v22 = v21;
    v23 = [v3 objectAtIndex:v7 >> 32];
    [v23 floatValue];
    v25 = [v16 colorWithRed:v19 green:v22 blue:v24 alpha:1.0];

    goto LABEL_11;
  }

LABEL_7:
  v12 = [v3 objectAtIndex:v6];
  v13 = [v12 isEqualToString:@"g"];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = MEMORY[0x1E69DC888];
  v17 = [v3 objectAtIndex:v7 >> 32];
  [v17 floatValue];
  v25 = [v14 colorWithWhite:v15 alpha:1.0];
LABEL_11:

LABEL_12:

  return v25;
}

- (id)getFontFromAppearanceString:(CGPDFString *)a3
{
  v4 = CGPDFStringCopyTextString(a3);
  v5 = [(PDFAnnotation *)self getFontFromAppearanceNSString:v4];

  return v5;
}

- (id)getColorFromAppearanceString:(CGPDFString *)a3
{
  v4 = CGPDFStringCopyTextString(a3);
  v5 = [(PDFAnnotation *)self getColorFromAppearanceNSString:v4];

  return v5;
}

- (id)getFontFromAppearanceNSString:(id)a3
{
  v4 = a3;
  v27 = 0;
  v28 = 0;
  v5 = [(PDFAnnotation *)self page];
  v6 = [v5 document];
  if (!v4)
  {
    v10 = 0;
    v12 = 0;
    v7 = 0;
    v9 = 0.0;
    goto LABEL_29;
  }

  v7 = [(PDFAnnotation *)self tokenizeAppearanceString:v4];
  [(PDFAnnotation *)self pointSizeFromAppearanceTokens:v7];
  v9 = v8;
  v10 = [(PDFAnnotation *)self fontNameFromAppearanceTokens:v7];
  if (!v10)
  {
    v12 = 0;
    goto LABEL_29;
  }

  if ([v6 createdWithWithHighLatencyDataProvider] && (objc_msgSend(MEMORY[0x1E696AF00], "isMainThread") & 1) != 0 || (value = 0, (Catalog = CGPDFDocumentGetCatalog(objc_msgSend(v6, "documentRef", 0))) == 0) || !CGPDFDictionaryGetDictionary(Catalog, "AcroForm", &value) || !CGPDFDictionaryGetDictionary(value, "DR", &dict) || !CGPDFDictionaryGetDictionary(dict, "Font", &v28) || !CGPDFDictionaryGetObject(v28, objc_msgSend(v10, "cStringUsingEncoding:", 1), &v27))
  {
    v12 = 0;
    goto LABEL_23;
  }

  v12 = CGPDFFontCreateWithObject();
  if (!v12 || (Font = CGPDFFontGetFont(), (v14 = CGFontCopyPostScriptName(Font)) == 0))
  {
LABEL_23:
    if (v9 > 0.0)
    {
      v22 = PDFFontWithNameAndSize(v10, v9);
      if (v22)
      {
        goto LABEL_30;
      }

      if ([v10 isEqualToString:@"Helv"])
      {
        v23 = @"Helvetica";
      }

      else if ([v10 isEqualToString:@"HeBo"])
      {
        v23 = @"Helvetica-Bold";
      }

      else if ([v10 isEqualToString:@"Cour"])
      {
        v23 = @"Courier";
      }

      else
      {
        if (![v10 isEqualToString:@"ZaDb"])
        {
          goto LABEL_29;
        }

        v23 = @"ZapfDingbats";
      }

      v22 = PDFFontWithNameAndSize(v23, v9);
      if (v22)
      {
LABEL_30:
        v16 = v22;
        if (!v12)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

LABEL_29:
    v22 = PDFFontWithNameAndSize(@"Helvetica", v9);
    goto LABEL_30;
  }

  v15 = v14;
  v16 = PDFFontWithNameAndSize(v14, v9);

  if (!v16)
  {
    CGPDFFontGetFontDescriptor();
    Flags = CGPDFFontDescriptorGetFlags();
    v18 = @"Courier";
    if ((Flags & 1) == 0)
    {
      v18 = @"Times";
    }

    v19 = @"Helvetica";
    if (Flags)
    {
      v19 = @"Monaco";
    }

    if ((Flags & 2) != 0)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    v21 = PDFFontWithNameAndSize(v20, v9);
    if (v21)
    {
      v16 = v21;
      goto LABEL_31;
    }

    goto LABEL_23;
  }

LABEL_31:
  CGPDFFontRelease();
LABEL_32:

  return v16;
}

- (id)getColorFromAppearanceNSString:(id)a3
{
  if (a3)
  {
    v4 = [(PDFAnnotation *)self tokenizeAppearanceString:?];
    v5 = [(PDFAnnotation *)self colorFromAppearanceTokens:v4];
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v5;
}

- (BOOL)_shouldReadAppearanceStreams
{
  if (![(PDFAnnotation *)self isMarkupAnnotationSubtype])
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_page);
  Document = CGPDFPageGetDocument([WeakRetained pageRef]);

  if (!Document)
  {
    return 1;
  }

  *minorVersion = 0;
  CGPDFDocumentGetVersion(Document, &minorVersion[1], minorVersion);
  return minorVersion[1] != 1 || minorVersion[0] > 3;
}

- (void)setDictionaryRef:(__CFDictionary *)a3
{
  [(PDFAnnotation *)self _releaseDictionaryRef];
  self->_dictionaryRef = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (__CFDictionary)commonCreateDictionaryRef
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  self->_constructingDictionaryRef = 1;
  pointerIsOverAnnotation = self->_pointerIsOverAnnotation;
  self->_pointerIsOverAnnotation = 0;
  isSelected = self->_isSelected;
  self->_isSelected = 0;
  CFDictionarySetValue(Mutable, @"/Type", @"/Annot");
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"/Subtype", v6);
    [(PDFAnnotation *)self extendedBoundsForAction:1];
    [(PDFAnnotation *)self addRect:@"/Rect" forKey:Mutable toDictionaryRef:?];
    [(PDFAnnotation *)self addActionToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addAdditionalActionsToDictionaryRef:Mutable];
    if (-[PDFAnnotation savesAppearanceStream](self, "savesAppearanceStream") && ([v6 isEqualToString:@"/Popup"] & 1) == 0)
    {
      v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
      v8 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
      if ([v7 isEqualToString:@"/Widget"] && objc_msgSend(v8, "isEqualToString:", @"/Btn"))
      {
        v9 = [(PDFAnnotation *)self formData];
        if (v9)
        {
          v10 = [(PDFAnnotation *)self fieldName];
          v11 = [v9 stringValueForFieldNamed:v10];
        }

        else
        {
          v11 = 0;
        }

        v12 = [(PDFAnnotation *)self widgetControlType];
        v13 = [(PDFAnnotation *)self appearance:2];
        if (v12)
        {
          if (v13)
          {
            [(PDFAnnotation *)self addNormalAndDownAppearanceWithStateToDictionaryRef:Mutable];
          }

          else
          {
            [(PDFAnnotation *)self addNormalAppearanceWithStateToDictionaryRef:Mutable];
          }
        }

        else if (v13)
        {
          [(PDFAnnotation *)self addNormalAndDownAppearanceToDictionaryRef:Mutable];
        }

        else
        {
          [(PDFAnnotation *)self addNormalAppearanceToDictionaryRef:Mutable];
        }

        if (v11)
        {
          v14 = [(PDFAnnotation *)self fieldName];
          [v9 setStringValue:v11 forFieldNamed:v14 postFormChangeNotification:!self->_constructingDictionaryRef];
        }
      }

      else
      {
        [(PDFAnnotation *)self addNormalAppearanceToDictionaryRef:Mutable];
      }
    }

    [(PDFAnnotation *)self addBorderToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addBorderStyleToDictionaryRef:Mutable];
    v15 = [(PDFAnnotation *)self color];
    [(PDFAnnotation *)self addColor:v15 forKey:@"/C" toDictionaryRef:Mutable];

    [(PDFAnnotation *)self addContentsToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addDefaultAppearanceDictionaryRef:Mutable];
    if (![(PDFAnnotation *)self addDestinationToDictionaryRef:Mutable])
    {
      [(PDFAnnotation *)self addActionToDictionaryRef:Mutable];
    }

    [(PDFAnnotation *)self addFlagsToDictionaryRef:Mutable];
    v16 = [(PDFAnnotation *)self valueForAnnotationKey:@"/IC"];
    [(PDFAnnotation *)self addColor:v16 forKey:@"/IC" toDictionaryRef:Mutable];

    [(PDFAnnotation *)self addHighlightingModeToDictionaryRef:Mutable];
    if ([v6 isEqualToString:@"/Ink"])
    {
      [(PDFAnnotation *)self addInkListToDictionaryRef:Mutable];
    }

    if ([v6 isEqualToString:@"/Line"])
    {
      [(PDFAnnotation *)self addLineToDictionaryRef:Mutable];
    }

    if ([v6 isEqualToString:@"/Line"])
    {
      [(PDFAnnotation *)self addLineEndingStylesToDictionaryRef:Mutable];
    }

    [(PDFAnnotation *)self addModificationDateToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addNameToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addOpenToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addPopupToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addQuaddingToDictionaryRef:Mutable];
    if ([(PDFAnnotation *)self isMarkupAnnotationSubtype])
    {
      [(PDFAnnotation *)self addQuadPointsToDictionaryRef:Mutable];
    }

    [(PDFAnnotation *)self addTextLabelToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addDefaultFieldValueToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addFieldFlagsToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addFieldTypeToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addMaxLenToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addAppearanceCharacteristicsToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addOptionsToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addAlternateFieldNameToDictionaryRef:Mutable];
    [(PDFAnnotation *)self addFieldValueToDictionaryRef:Mutable];
    [(PDFAnnotation *)self _addUnknownPropertiesToDictionaryRef:Mutable];
    self->_isSelected = isSelected;
    self->_pointerIsOverAnnotation = pointerIsOverAnnotation;
    self->_constructingDictionaryRef = 0;
  }

  else
  {
    NSLog(&cfstr_PdfkitSerializ.isa);
    Mutable = 0;
  }

  return Mutable;
}

- (void)drawAppearance:(CGPDFForm *)a3 withBox:(int64_t)a4 inContext:(CGContext *)a5 scaleProportional:(BOOL)a6
{
  v6 = a6;
  [(PDFAnnotation *)self bounds];

  [(PDFAnnotation *)self drawAppearance:a3 withBox:a4 inContext:a5 inRect:v6 scaleProportional:?];
}

- (void)drawAppearance:(CGPDFForm *)a3 withBox:(int64_t)a4 inContext:(CGContext *)a5 inRect:(CGRect)a6 scaleProportional:(BOOL)a7 suppressTextRendering:(BOOL)a8
{
  x = a6.origin.x;
  memset(&v37, 0, sizeof(v37));
  if (a3)
  {
    if (a4 <= 4)
    {
      v10 = a7;
      height = a6.size.height;
      width = a6.size.width;
      y = a6.origin.y;
      CurrentContext = a5;
      if (a5 || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
      {
        v35 = height;
        v33 = y;
        CGPDFFormGetMatrix();
        CGPDFFormGetBBox();
        v16 = v38.origin.x;
        v17 = v38.origin.y;
        v18 = v38.size.width;
        v19 = v38.size.height;
        transform = v37;
        v39 = CGRectApplyAffineTransform(v38, &transform);
        v32 = v39.origin.x;
        rect = v39.origin.y;
        v20 = v39.size.width;
        v21 = v39.size.height;
        CGContextSaveGState(CurrentContext);
        v22 = [(PDFAnnotation *)self page];
        [v22 transformContext:CurrentContext forBox:a4];

        if (v20 <= 0.0 || v21 <= 0.0)
        {
          CGContextRestoreGState(CurrentContext);
          return;
        }

        v23 = width / v20;
        v24 = v35 / v21;
        if (v10)
        {
          if (v23 >= v24)
          {
            v31 = v35 / v21;
            if (v24 < v23)
            {
              v30 = v35 / v21;
LABEL_13:
              MinX = PDFRectGetMinX(x, v33, width);
              v40.origin.x = v32;
              v40.origin.y = rect;
              v40.size.width = v20;
              v40.size.height = v21;
              v29 = (width - v30 * v20) * 0.5 + MinX - v30 * CGRectGetMinX(v40);
              MinY = PDFRectGetMinY(x, v33, width, v35);
              v41.origin.x = v32;
              v41.origin.y = rect;
              v41.size.width = v20;
              v41.size.height = v21;
              v26 = CGRectGetMinY(v41);
              transform.a = v30;
              transform.b = 0.0;
              transform.c = 0.0;
              transform.d = v31;
              transform.tx = v29;
              transform.ty = (v35 - v31 * v21) * 0.5 + MinY - v31 * v26;
              CGContextConcatCTM(CurrentContext, &transform);
              CGPDFFormGetStream();
              CGPDFFormGetResources();
              v27 = CGPDFDrawingContextCreateWithStream();
              transform = v37;
              CGContextConcatCTM(CurrentContext, &transform);
              v42.origin.y = v17;
              v42.origin.x = v16;
              v42.size.height = v19;
              v42.size.width = v18;
              CGContextClipToRect(CurrentContext, v42);
              CGPDFDrawingContextDrawWithContentTypes();
              CGContextRestoreGState(CurrentContext);
              if (v27)
              {
                CGPDFDrawingContextRelease();
              }

              return;
            }
          }

          else
          {
            v31 = width / v20;
          }
        }

        else
        {
          v31 = v35 / v21;
        }

        v30 = width / v20;
        goto LABEL_13;
      }
    }
  }
}

- (void)drawCachedAppearance:(CGDisplayList *)a3 withBox:(int64_t)a4 inContext:(CGContext *)a5 inRect:(CGRect)a6 scaleProportional:(BOOL)a7
{
  if (a3)
  {
    if (a4 <= 4)
    {
      v8 = a7;
      height = a6.size.height;
      width = a6.size.width;
      y = a6.origin.y;
      x = a6.origin.x;
      CurrentContext = a5;
      if (a5 || (CurrentContext = PDFGraphicsGetCurrentContext()) != 0)
      {
        [(PDFAnnotation *)self bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        CGContextSaveGState(CurrentContext);
        v23 = [(PDFAnnotation *)self page];
        [v23 transformContext:CurrentContext forBox:a4];

        if (v20 > 0.0 && v22 > 0.0)
        {
          v24 = x;
          v25 = y;
          v34 = v16;
          v35 = v18;
          v26 = width / v20;
          v27 = height;
          v28 = height / v22;
          if (v8)
          {
            if (v26 >= v28)
            {
              v33 = height / v22;
              if (v28 < v26)
              {
                v26 = height / v22;
              }
            }

            else
            {
              v33 = width / v20;
            }
          }

          else
          {
            v33 = height / v22;
          }

          v29 = v24;
          MinX = PDFRectGetMinX(v24, v25, width);
          v37.origin.x = v34;
          v37.origin.y = v35;
          v37.size.width = v20;
          v37.size.height = v22;
          v32 = (width - v26 * v20) * 0.5 + MinX - v26 * CGRectGetMinX(v37);
          MinY = PDFRectGetMinY(v29, v25, width, v27);
          v38.origin.x = v34;
          v38.origin.y = v35;
          v38.size.width = v20;
          v38.size.height = v22;
          transform.a = v26;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.d = v33;
          transform.tx = v32;
          transform.ty = (v27 - v33 * v22) * 0.5 + MinY - v33 * CGRectGetMinY(v38);
          CGContextConcatCTM(CurrentContext, &transform);
          v39.origin.x = v34;
          v39.origin.y = v35;
          v39.size.width = v20;
          v39.size.height = v22;
          CGContextClipToRect(CurrentContext, v39);
          CGDisplayListDrawInContext();
        }

        CGContextRestoreGState(CurrentContext);
      }
    }
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  [(PDFAnnotation *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v13 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  [v3 appendFormat:@"Type: '%@', Bounds: (%.0f, %.0f) [%.0f, %.0f]", v12, v5, v7, v9, v11];
  if ([v12 isEqualToString:@"/Widget"] && (objc_msgSend(v13, "isEqualToString:", @"/Tx") & 1) != 0)
  {
    v14 = @", WidgetValue: %@";
    v15 = @"/V";
  }

  else
  {
    if (![v12 isEqualToString:@"/FreeText"])
    {
      goto LABEL_7;
    }

    v14 = @", Contents: %@";
    v15 = @"/Contents";
  }

  v16 = [(PDFAnnotation *)self valueForAnnotationKey:v15];
  [v3 appendFormat:v14, v16];

LABEL_7:

  return v3;
}

- (id)debugQuickLookObject
{
  [(PDFAnnotation *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v7, v9}];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__PDFAnnotation_debugQuickLookObject__block_invoke;
  v14[3] = &unk_1E8150C28;
  v14[5] = v4;
  v14[6] = v6;
  *&v14[7] = v8;
  *&v14[8] = v10;
  v14[4] = self;
  v12 = [v11 imageWithActions:v14];

  return v12;
}

void __37__PDFAnnotation_debugQuickLookObject__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  if (v3)
  {
    v4 = v3;
    CGContextSaveGState(v3);
    CGContextScaleCTM(v4, 1.0, -1.0);
    CGContextTranslateCTM(v4, -*(a1 + 40), -*(a1 + 48) - *(a1 + 64));
    [*(a1 + 32) drawWithBox:1 inContext:v4];

    CGContextRestoreGState(v4);
  }
}

- (__CFDictionary)gcCreateAttributesForFont:(id)a3 color:(id)a4
{
  v5 = a3;
  v6 = a4;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = Mutable;
  if (Mutable)
  {
    if (v5)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965658], v5);
    }

    if (v6)
    {
      ColorSpace = CGColorGetColorSpace([v6 CGColor]);
      Components = CGColorGetComponents([v6 CGColor]);
      v11 = CGColorCreate(ColorSpace, Components);
      if (v11)
      {
        v12 = v11;
        CFDictionarySetValue(v8, *MEMORY[0x1E69659D8], v11);
        CGColorRelease(v12);
      }
    }
  }

  return v8;
}

- (void)addToPageView
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v4 = [WeakRetained view];

    WeakRetained = v10;
    if (v4)
    {
      v5 = [v10 view];
      v6 = [v5 document];
      v7 = [v6 indexForPage:v10];

      v8 = [v5 pageViewForPageAtIndex:v7];
      v9 = v8;
      if (v8)
      {
        [v8 addAnnotation:self];
      }

      WeakRetained = v10;
    }
  }
}

- (void)removeFromPageView
{
  v3 = [(PDFAnnotation *)self page];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 view];

    v3 = v10;
    if (v4)
    {
      v5 = [v10 view];
      v6 = [v5 document];
      v7 = [v6 indexForPage:v10];

      v8 = [v5 pageViewForPageAtIndex:v7];
      v9 = v8;
      if (v8)
      {
        [v8 removeAnnotation:self];
      }

      v3 = v10;
    }
  }
}

- (void)updateAnnotationEffect
{
  if (!self->_constructingDictionaryRef && self->_isFullyConstructed)
  {
    v3 = [(PDFAnnotation *)self page];
    if (v3)
    {
      v10 = v3;
      v4 = [v3 view];

      v3 = v10;
      if (v4)
      {
        v5 = [v10 view];
        v6 = [v5 document];
        v7 = [v6 indexForPage:v10];

        v8 = [v5 pageViewForPageAtIndex:v7];
        v9 = v8;
        if (v8)
        {
          [v8 updateAnnotation:self];
        }

        v3 = v10;
      }
    }
  }
}

- (void)addControl
{
  v3 = [(PDFAnnotation *)self page];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 view];

    v3 = v10;
    if (v4)
    {
      v5 = [v10 view];
      v6 = [v5 document];
      v7 = [v6 indexForPage:v10];

      v8 = [v5 pageViewForPageAtIndex:v7];
      v9 = v8;
      if (v8)
      {
        [v8 addControlForAnnotation:self];
      }

      v3 = v10;
    }
  }
}

- (void)postAnnotationsChangedNotification
{
  if (!self->_constructingDictionaryRef && self->_isFullyConstructed)
  {
    WeakRetained = objc_loadWeakRetained(&self->_page);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [WeakRetained postAnnotationsChangedNotification];
      WeakRetained = v3;
    }
  }
}

- (CGRect)extendedBoundsForAction:(int)a3
{
  v3 = *&a3;
  [(PDFAnnotation *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PDFAnnotation *)self _calculatePDFAnnotationLayerOutsetForAction:v3];
  v16 = v15 + v10 + v13;
  v18 = v17 + v12 + v14;
  v19 = v6 - v13;
  v20 = v8 - v14;
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- ($551CBC2907AB7FBA347AD90B6ACC2124)_calculatePDFAnnotationLayerOutsetForAction:(int)a3
{
  v5 = 0.0;
  if (-[PDFAnnotation hasAppearanceStream](self, "hasAppearanceStream") || (-[PDFAnnotation valueForAnnotationKey:](self, "valueForAnnotationKey:", @"/Subtype"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:@"/Line"], v6, a3 == 1) && !v7)
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
  }

  else
  {
    v15 = [(PDFAnnotation *)self border];
    [v15 lineWidth];
    v17 = v16;

    v18 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MK"];
    [v18 borderColor];

    if (!v7)
    {
      if (v17 <= 0.0)
      {
        v8 = 0.0;
        v9 = 0.0;
        v10 = 0.0;
        if (![(PDFAnnotation *)self _isTextMarkupRedaction])
        {
          goto LABEL_5;
        }

        v57 = 0.8;
      }

      else
      {
        v57 = ceil(v17);
      }

      v10 = PDFPointMake(v57, v57);
      v9 = v58;
      v8 = PDFPointMake(v57, v57);
      v5 = v59;
      goto LABEL_5;
    }

    [(PDFAnnotation *)self bounds];
    v65 = v20;
    v66 = v19;
    [(PDFAnnotation *)self startPoint];
    v22 = v21;
    v24 = v23;
    [(PDFAnnotation *)self endPoint];
    v26 = v25;
    v28 = v27;
    v29 = [(PDFAnnotation *)self startLineStyle];
    v30 = [(PDFAnnotation *)self endLineStyle];
    [(PDFAnnotation *)self _drawingRectForLineStyle:v29 from:v26 to:v28 borderWidth:v22, v24, v17];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    recta = v37;
    [(PDFAnnotation *)self _drawingRectForLineStyle:v30 from:v22 to:v24 borderWidth:v26, v28, v17];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v67.origin.x = v32;
    v67.origin.y = v34;
    v67.size.width = v36;
    v67.size.height = recta;
    v68 = PDFRectInset(v67, -1.0, -1.0);
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
    v68.origin.x = v39;
    v68.origin.y = v41;
    v68.size.width = v43;
    v68.size.height = v45;
    v50 = x;
    v69 = PDFRectInset(v68, -1.0, -1.0);
    v62 = v69.origin.y;
    rect = v69.origin.x;
    v60 = v69.size.height;
    v61 = v69.size.width;
    v51 = *MEMORY[0x1E695EFF8];
    v52 = *(MEMORY[0x1E695EFF8] + 8);
    v69.origin.x = *MEMORY[0x1E695EFF8];
    v69.origin.y = v52;
    v69.size.height = v65;
    v69.size.width = v66;
    v76.origin.x = v50;
    v76.origin.y = y;
    v76.size.width = width;
    v76.size.height = height;
    if (PDFRectIntersectsRect(v69, v76))
    {
      v70.origin.x = v51;
      v70.origin.y = v52;
      v70.size.width = v66;
      v70.size.height = v65;
      v77.origin.x = v50;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      v71 = PDFRectUnion(v70, v77);
      v53 = v71.origin.x;
      v54 = v71.origin.y;
      v55 = v71.size.width;
      v56 = v71.size.height;
    }

    else
    {
      v53 = v51;
      v54 = v52;
      v55 = v66;
      v56 = v65;
    }

    v72.size.width = v66;
    v72.origin.x = v51;
    v72.origin.y = v52;
    v72.size.height = v65;
    v78.origin.x = rect;
    v78.origin.y = v62;
    v78.size.width = v61;
    v78.size.height = v60;
    if (PDFRectIntersectsRect(v72, v78))
    {
      v73.origin.x = v53;
      v73.origin.y = v54;
      v73.size.width = v55;
      v73.size.height = v56;
      v79.origin.x = rect;
      v79.origin.y = v62;
      v79.size.width = v61;
      v79.size.height = v60;
      v74 = PDFRectUnion(v73, v79);
      v53 = v74.origin.x;
      v54 = v74.origin.y;
      v55 = v74.size.width;
      v56 = v74.size.height;
    }

    v10 = fabs(PDFRectGetMinX(v53, v54, v55));
    v9 = fabs(PDFRectGetMinY(v53, v54, v55, v56));
    v8 = PDFRectGetMaxX(v53, v54, v55) - v66;
    v5 = PDFRectGetMaxY(v53, v54, v55, v56) - v65;
  }

LABEL_5:
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v5;
  result.var1.y = v14;
  result.var1.x = v13;
  result.var0.y = v12;
  result.var0.x = v11;
  return result;
}

- (CGRect)_drawingRectForLineStyle:(int64_t)a3 from:(CGPoint)a4 to:(CGPoint)a5 borderWidth:(double)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a4.y;
  v10 = a4.x;
  v13 = PDFRectMakeFromCenter(a5.x, a5.y, 2.0);
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v17 = a6 * 1.5 * 0.25 + a6 * 1.5;
        v18 = 0.375;
        goto LABEL_12;
      case 4:
        v82 = sqrt((y - v9) * (y - v9) + (x - v10) * (x - v10));
        v83 = (x - v10) * a6;
        v84 = (y - v9) * a6;
        v85 = PDFPointMake(x - v83 * 3.0 / v82, y - v84 * 3.0 / v82);
        v87 = v86;
        v88 = v84 * 1.5 / v82;
        v89 = v83 * 1.5 / v82;
        v90 = PDFPointMake(v85 - v88, v89 + v86);
        v127 = v91;
        v92 = PDFPointMake(v88 + v85, v87 - v89);
        v94 = v93;
        [(PDFAnnotation *)self _pointOutsetFrom:x startPoint1:y startPoint2:v90 lineWidth:v127, v92, v93, a6];
        v96 = v95 + v95;
        v98 = v97 + v97;
        v99.n128_f64[0] = x - v95;
        v100.n128_f64[0] = y - v97;
        PDFRectMake(v99, v100, v96, v98);
        v101 = PDFPointMake(a6 * 0.5, a6 * 0.5);
        v103 = v102;
        v104.n128_f64[0] = v90 - v101;
        v105.n128_f64[0] = v127 - v102;
        PDFRectMake(v104, v105, v101 + v101, v103 + v103);
        v106.n128_f64[0] = v92 - v101;
        v107.n128_f64[0] = v94 - v103;
        PDFRectMake(v106, v107, v101 + v101, v103 + v103);
        v109 = PDFRectToCGRect(v108);
        v132 = v110;
        v134 = v109;
        v128 = v112;
        v130 = v111;
        v114 = PDFRectToCGRect(v113);
        v116 = v115;
        v118 = v117;
        v120 = v119;
        v142.origin.x = PDFRectToCGRect(v121);
        v142.origin.y = v122;
        v142.size.width = v123;
        v142.size.height = v124;
        v137.origin.x = v114;
        v137.origin.y = v116;
        v137.size.width = v118;
        v137.size.height = v120;
        v138 = CGRectUnion(v137, v142);
        v68 = v138.origin.x;
        v69 = v138.origin.y;
        width = v138.size.width;
        height = v138.size.height;
        v73 = v132;
        v72 = v134;
        v75 = v128;
        v74 = v130;
        break;
      case 5:
        v19 = y - v9;
        v20 = sqrt(v19 * v19 + (x - v10) * (x - v10));
        v21 = (x - v10) * a6;
        v22 = v19 * a6;
        v23 = PDFPointMake(x - v21 * 3.0 / v20, y - v19 * a6 * 3.0 / v20);
        v25 = v24;
        v26 = v22 * 1.5 / v20;
        v27 = v21 * 1.5 / v20;
        v125 = PDFPointMake(v23 - v26, v27 + v24);
        v29 = v28;
        v30 = PDFPointMake(v26 + v23, v25 - v27);
        v32 = v31;
        [(PDFAnnotation *)self _pointOutsetFrom:x startPoint1:y startPoint2:v125 lineWidth:v29, v30, v31, a6];
        v34 = v33 + v33;
        v36 = v35 + v35;
        v37.n128_f64[0] = x - v33;
        v38.n128_f64[0] = y - v35;
        PDFRectMake(v37, v38, v34, v36);
        [(PDFAnnotation *)self _pointOutsetFrom:v125 startPoint1:v29 startPoint2:x lineWidth:y, v30, v32, a6];
        v40 = v39 + v39;
        v42 = v41 + v41;
        v43.n128_f64[0] = v125 - v39;
        v44.n128_f64[0] = v29 - v41;
        PDFRectMake(v43, v44, v40, v42);
        [(PDFAnnotation *)self _pointOutsetFrom:v30 startPoint1:v32 startPoint2:x lineWidth:y, v125, v29, a6];
        v46 = v45 + v45;
        v48 = v47 + v47;
        v49.n128_f64[0] = v30 - v45;
        v50.n128_f64[0] = v32 - v47;
        PDFRectMake(v49, v50, v46, v48);
        v52 = PDFRectToCGRect(v51);
        v131 = v53;
        v133 = v52;
        v129 = v54;
        v126 = v55;
        v57 = PDFRectToCGRect(v56);
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v141.origin.x = PDFRectToCGRect(v64);
        v141.origin.y = v65;
        v141.size.width = v66;
        v141.size.height = v67;
        v135.origin.x = v57;
        v135.origin.y = v59;
        v135.size.width = v61;
        v135.size.height = v63;
        v136 = CGRectUnion(v135, v141);
        v68 = v136.origin.x;
        v69 = v136.origin.y;
        width = v136.size.width;
        height = v136.size.height;
        v73 = v131;
        v72 = v133;
        v74 = v129;
        v75 = v126;
        break;
      default:
        goto LABEL_15;
    }

    v139 = CGRectUnion(*&v72, *&v68);
    v13 = PDFRectFromCGRect(v139.origin.x, v139.origin.y, v139.size.width, v139.size.height);
    goto LABEL_15;
  }

  if (a3)
  {
    if (a3 == 1 || a3 == 2)
    {
      v17 = a6 * 0.5;
      v18 = 1.5;
LABEL_12:
      v13 = PDFRectMakeFromCenter(x, y, v17 + a6 * v18 + v17 + a6 * v18);
    }
  }

  else
  {
    v76 = PDFPointMake(a6 * 0.5, a6 * 0.5);
    v77 = v76 + v76;
    v79 = v78 + v78;
    v80.n128_f64[0] = x - v76;
    v81.n128_f64[0] = y - v78;
    v13 = PDFRectMake(v80, v81, v77, v79);
  }

LABEL_15:
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGPoint)_pointOutsetFrom:(CGPoint)a3 startPoint1:(CGPoint)a4 startPoint2:(CGPoint)a5 lineWidth:(double)a6
{
  y = a5.y;
  x = a5.x;
  v9 = a3.y;
  v10 = a3.x;
  v11 = PDFNormalizedCGVectorFromPoints(a3.x, a3.y, a4.x, a4.y);
  v13 = v12;
  v14 = PDFNormalizedCGVectorFromPoints(v10, v9, x, y);
  v16 = v15;
  v17 = PDFNormalizeCGVector((v11 + v14) * 0.5, (v13 + v15) * 0.5);
  v19 = v18;
  v20 = PDFGetAngleBetweenCGVectors(v11, v13, v14, v16);
  v21 = a6 / sin(v20 * 0.5) * 0.5;
  v22 = v17 * v21;
  v23 = v19 * v21;

  v24 = PDFPointMake(v22, v23);
  result.y = v25;
  result.x = v24;
  return result;
}

- (void)updateFormData
{
  v17 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  WeakRetained = objc_loadWeakRetained(&self->_page);
  if ([v17 isEqualToString:@"/Widget"])
  {
    v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
    v5 = [(PDFAnnotation *)self formData];
    if (!v5)
    {
      v6 = [WeakRetained document];
      v5 = objc_alloc_init(PDFForm);
      [(PDFForm *)v5 setDocument:v6];
      [v6 setFormData:v5];
    }

    v7 = [(PDFAnnotation *)self fieldName];
    if (![v4 isEqualToString:@"/Btn"])
    {
      if ([v4 isEqualToString:@"/Ch"])
      {
        v13 = [(PDFForm *)v5 fieldNamed:v7];

        if (!v13)
        {
          v14 = [[PDFFormField alloc] initWithAnnotation:self];
          [(PDFForm *)v5 addFormField:v14];
        }

        v8 = [(PDFAnnotation *)self valueForAnnotationKey:@"/V"];
      }

      else
      {
        if (![v4 isEqualToString:@"/Tx"])
        {
LABEL_22:

          goto LABEL_23;
        }

        v8 = [(PDFAnnotation *)self valueForAnnotationKey:@"/V"];
        v15 = [(PDFForm *)v5 fieldNamed:v7];

        if (!v15)
        {
          [WeakRetained addAnnotationFormField:self];
        }
      }

      [(PDFForm *)v5 setStringValue:v8 forFieldNamed:v7 postFormChangeNotification:!self->_constructingDictionaryRef];
LABEL_21:

      goto LABEL_22;
    }

    v8 = [(PDFAnnotation *)self widgetOnStateString];
    v9 = [(PDFAnnotation *)self valueForAnnotationKey:@"/V"];
    v10 = [v9 isEqualToString:v8];
    v11 = [(PDFForm *)v5 fieldNamed:v7];

    if (v11)
    {
      if (v10)
      {
LABEL_7:
        v12 = [(PDFAnnotation *)self widgetOnStateString];
        if (v12)
        {
          [(PDFForm *)v5 setStringValue:v12 forFieldNamed:v7 postFormChangeNotification:!self->_constructingDictionaryRef];
        }

        goto LABEL_20;
      }
    }

    else
    {
      v16 = [[PDFFormField alloc] initWithAnnotation:self];
      [(PDFForm *)v5 addFormField:v16];

      if (v10)
      {
        goto LABEL_7;
      }
    }

    [(PDFForm *)v5 setStringValue:0 forFieldNamed:v7 postFormChangeNotification:!self->_constructingDictionaryRef];
LABEL_20:

    goto LABEL_21;
  }

LABEL_23:
}

- (void)clearFormData
{
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v5 isEqualToString:@"/Widget"])
  {
    v3 = [(PDFAnnotation *)self fieldName];

    if (v3)
    {
      [(PDFAnnotation *)self setFieldName:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v4 = [(PDFAnnotation *)self alternateFieldName];

      if (v4)
      {
        if (objc_opt_respondsToSelector())
        {
          [(PDFAnnotation *)self setAlternateFieldName:0];
        }
      }
    }
  }
}

- (id)formData
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v3 isEqualToString:@"/Widget"] && (-[PDFAnnotation page](self, "page"), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 document];
    if (v6)
    {
      v7 = v6;
      v8 = [(PDFAnnotation *)self fieldName];
      if (v8)
      {
        v9 = v8;
        v10 = [v7 formData];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)scaledFontForTextWidget
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [(PDFAnnotation *)self font];
  if (![(PDFAnnotation *)self isTextWidget])
  {
    goto LABEL_7;
  }

  if (v3)
  {
    [v3 pointSize];
    if (v4 == 0.0)
    {
      [MEMORY[0x1E69DB878] smallSystemFontSize];
      v5 = [v3 fontWithSize:?];

      v3 = v5;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69DB878];
    [MEMORY[0x1E69DB878] smallSystemFontSize];
    v3 = [v6 systemFontOfSize:?];
  }

  if (![(PDFAnnotation *)self isMultiline])
  {
    [v3 pointSize];
    v9 = v8;
    [(PDFAnnotation *)self bounds];
    v11 = v10;
    v13 = v12;
    v14 = [(PDFAnnotation *)self widgetStringValue];
    v15 = *MEMORY[0x1E69DB648];
    do
    {
      v16 = v9;
      if (v9 <= 4.0)
      {
        break;
      }

      v24 = v15;
      v17 = [MEMORY[0x1E69DB878] systemFontOfSize:v9];
      v25[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v19 = PDFSizeToCGSize([v14 sizeWithAttributes:v18]);
      v21 = v20;

      v9 = v9 + -1.0;
    }

    while (v19 > v11 || v21 > v13);
    v7 = [v3 fontWithSize:round(v16)];
  }

  else
  {
LABEL_7:
    v3 = v3;
    v7 = v3;
  }

  return v7;
}

- (id)createAttributedStringForTextWidget
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(PDFAnnotation *)self widgetStringValue];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [(PDFAnnotation *)self scaledFontForTextWidget];
    v6 = [(PDFAnnotation *)self fontColor];
    v7 = [(PDFAnnotation *)self alignment];
    v8 = [v4 length];
    v9 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v4];
    [v9 addAttribute:*MEMORY[0x1E69DB668] value:&unk_1F4183FA0 range:{0, v8}];
    v10 = MEMORY[0x1E69DB648];
    if (v5)
    {
      [v9 addAttribute:*MEMORY[0x1E69DB648] value:v5 range:{0, v8}];
    }

    if (v6)
    {
      [v9 addAttribute:*MEMORY[0x1E69DB650] value:v6 range:{0, v8}];
    }

    v11 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v12 = [v11 mutableCopy];

    [v12 setAlignment:v7];
    if ([(PDFAnnotation *)self shouldComb])
    {
      v13 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MaxLen"];
      v14 = [v13 integerValue];

      v23 = *v10;
      v24[0] = v5;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      [v4 sizeWithAttributes:v15];
      v17 = v16;

      v18 = [v4 length];
      [(PDFAnnotation *)self bounds];
      v20 = *MEMORY[0x1E69DB660];
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:(v19 + -v17 / v18 * v14) / v14];
      [v9 addAttribute:v20 value:v21 range:{0, v8}];

      [v12 setLineBreakMode:2];
    }

    [v9 addAttribute:*MEMORY[0x1E69DB688] value:v12 range:{0, v8}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)autoFillTextContentType
{
  if (!self->_autoFillTextContentType && [(PDFAnnotation *)self isTextWidget])
  {
    v3 = [(PDFAnnotation *)self fieldName];
    v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/TU"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__PDFAnnotation_autoFillTextContentType__block_invoke;
    v11[3] = &unk_1E8150C50;
    v5 = v3;
    v12 = v5;
    v6 = v4;
    v13 = v6;
    v7 = _Block_copy(v11);
    if (v7[2](v7, @"user"))
    {
      v8 = MEMORY[0x1E69DE588];
    }

    else if (v7[2](v7, @"password"))
    {
      v8 = MEMORY[0x1E69DE528];
    }

    else if (v7[2](v7, @"email"))
    {
      v8 = MEMORY[0x1E69DE4A0];
    }

    else if (v7[2](v7, @"url"))
    {
      v8 = MEMORY[0x1E69DE580];
    }

    else if (v7[2](v7, @"address"))
    {
      objc_storeStrong(&self->_autoFillTextContentType, *MEMORY[0x1E69DE4C0]);
      if (v7[2](v7, @"first") & 1) != 0 || (v7[2](v7, @"1"))
      {
        v8 = MEMORY[0x1E69DE540];
      }

      else
      {
        if ((v7[2](v7, @"second") & 1) == 0 && (v7[2](v7, @"2") & 1) == 0)
        {
          goto LABEL_33;
        }

        v8 = MEMORY[0x1E69DE548];
      }
    }

    else if (v7[2](v7, @"city") && (v7[2](v7, @"state") & 1) != 0)
    {
      v8 = MEMORY[0x1E69DE400];
    }

    else if (v7[2](v7, @"city"))
    {
      v8 = MEMORY[0x1E69DE3F8];
    }

    else if (v7[2](v7, @"state"))
    {
      v8 = MEMORY[0x1E69DE408];
    }

    else if (v7[2](v7, @"sublocal"))
    {
      v8 = MEMORY[0x1E69DE550];
    }

    else if (v7[2](v7, @"country"))
    {
      v8 = MEMORY[0x1E69DE440];
    }

    else if (v7[2](v7, @"postal") & 1) != 0 || (v7[2](v7, @"postcode"))
    {
      v8 = MEMORY[0x1E69DE530];
    }

    else if (v7[2](v7, @"location"))
    {
      v8 = MEMORY[0x1E69DE4D8];
    }

    else if (v7[2](v7, @"job"))
    {
      v8 = MEMORY[0x1E69DE4D0];
    }

    else if (v7[2](v7, @"organization") & 1) != 0 || (v7[2](v7, @"company"))
    {
      v8 = MEMORY[0x1E69DE520];
    }

    else if (v7[2](v7, @"prefix"))
    {
      v8 = MEMORY[0x1E69DE4F0];
    }

    else if (v7[2](v7, @"suffix"))
    {
      v8 = MEMORY[0x1E69DE4F8];
    }

    else if (v7[2](v7, @"name"))
    {
      objc_storeStrong(&self->_autoFillTextContentType, *MEMORY[0x1E69DE4E8]);
      if (v7[2](v7, @"first") & 1) != 0 || (v7[2](v7, @"given"))
      {
        v8 = MEMORY[0x1E69DE4C8];
      }

      else if (v7[2](v7, @"middle"))
      {
        v8 = MEMORY[0x1E69DE4E0];
      }

      else if (v7[2](v7, @"last") & 1) != 0 || (v7[2](v7, @"family") & 1) != 0 || (v7[2](v7, @"surname"))
      {
        v8 = MEMORY[0x1E69DE4B0];
      }

      else
      {
        if ((v7[2](v7, @"nickname") & 1) == 0)
        {
          goto LABEL_33;
        }

        v8 = MEMORY[0x1E69DE508];
      }
    }

    else if (v7[2](v7, @"phone") & 1) != 0 || (v7[2](v7, @"mobile"))
    {
      v8 = MEMORY[0x1E69DE578];
    }

    else
    {
      if (!v7[2](v7, @"credit"))
      {
        goto LABEL_33;
      }

      v8 = MEMORY[0x1E69DE480];
    }

    objc_storeStrong(&self->_autoFillTextContentType, *v8);
LABEL_33:
  }

  autoFillTextContentType = self->_autoFillTextContentType;

  return autoFillTextContentType;
}

uint64_t __40__PDFAnnotation_autoFillTextContentType__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) localizedCaseInsensitiveContainsString:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(a1 + 40) localizedCaseInsensitiveContainsString:v3];
  }

  return v4;
}

- (BOOL)handledByPDFKitCheckAKEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v6 = ShouldRenderAnnotationsInPDFKit();
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v8 = [WeakRetained view];

  if (v8)
  {
    v6 = [v8 allowsMarkupAnnotationEditing] ^ 1;
  }

  v9 = v3 && (v6 & 1) != 0 || ([v5 isEqualToString:@"/Widget"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"/Link") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"/Text") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"/Popup") & 1) != 0 || -[PDFAnnotation isMarkupAnnotationSubtype](self, "isMarkupAnnotationSubtype");

  return v9;
}

+ (void)setAnnotationPageLayerEffectIsFlipped:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v4 threadDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [v6 setObject:v5 forKeyedSubscript:@"PDFAnnotationPageLayerEffectIsFlippedKey"];
}

+ (BOOL)annotationPageLayerEffectIsFlipped
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"PDFAnnotationPageLayerEffectIsFlippedKey"];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)PDFKitAnnotationKeys
{
  if (PDFKitAnnotationKeys_pred != -1)
  {
    +[PDFAnnotation PDFKitAnnotationKeys];
  }

  v3 = PDFKitAnnotationKeys_array;

  return v3;
}

uint64_t __37__PDFAnnotation_PDFKitAnnotationKeys__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/AP", @"/AS", @"/Border", @"/C", @"/Contents", @"/F", @"/M", @"/NM", @"/P", @"/Rect", @"/Type", @"/Subtype", @"/A", @"/AA", @"/BS", @"/DA", @"/Dest", @"/H", @"/InkList", @"/IC", @"/L", @"/LE", @"/Name", @"/Open", @"/Parent", @"/Popup", @"/Q", @"/QuadPoints", @"/T", @"/AC", @"/BC", @"/BG", @"/CA", @"/DV", @"/Ff", @"/FT", @"/MK", @"/MaxLen", @"/Opt", @"/R", @"/RC", @"/TU", @"/V", 0}];
  v1 = PDFKitAnnotationKeys_array;
  PDFKitAnnotationKeys_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFKitFieldTypeArray
{
  if (PDFKitFieldTypeArray_pred != -1)
  {
    +[PDFAnnotation PDFKitFieldTypeArray];
  }

  v3 = PDFKitFieldTypeArray_array;

  return v3;
}

uint64_t __37__PDFAnnotation_PDFKitFieldTypeArray__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/Btn", @"/Ch", @"/Tx", @"/Sig", 0}];
  v1 = PDFKitFieldTypeArray_array;
  PDFKitFieldTypeArray_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFKitHighlightingModeArray
{
  if (PDFKitHighlightingModeArray_pred != -1)
  {
    +[PDFAnnotation PDFKitHighlightingModeArray];
  }

  v3 = PDFKitHighlightingModeArray_array;

  return v3;
}

uint64_t __44__PDFAnnotation_PDFKitHighlightingModeArray__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/N", @"/I", @"/O", @"/P", @"/T", 0}];
  v1 = PDFKitHighlightingModeArray_array;
  PDFKitHighlightingModeArray_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFKitSubtypeArray
{
  if (PDFKitSubtypeArray_pred != -1)
  {
    +[PDFAnnotation PDFKitSubtypeArray];
  }

  v3 = PDFKitSubtypeArray_array;

  return v3;
}

uint64_t __35__PDFAnnotation_PDFKitSubtypeArray__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/Text", @"/Link", @"/FreeText", @"/Line", @"/Square", @"/Circle", @"/Highlight", @"/Underline", @"/StrikeOut", @"/Stamp", @"/Ink", @"/Popup", @"/Widget", 0}];
  v1 = PDFKitSubtypeArray_array;
  PDFKitSubtypeArray_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFKitAppearanceDictionaryArray
{
  if (PDFKitAppearanceDictionaryArray_pred != -1)
  {
    +[PDFAnnotation PDFKitAppearanceDictionaryArray];
  }

  v3 = PDFKitAppearanceDictionaryArray_array;

  return v3;
}

uint64_t __48__PDFAnnotation_PDFKitAppearanceDictionaryArray__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/N", @"/R", @"/D", 0}];
  v1 = PDFKitAppearanceDictionaryArray_array;
  PDFKitAppearanceDictionaryArray_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFKitBorderStyleArray
{
  if (PDFKitBorderStyleArray_pred != -1)
  {
    +[PDFAnnotation PDFKitBorderStyleArray];
  }

  v3 = PDFKitBorderStyleArray_array;

  return v3;
}

uint64_t __39__PDFAnnotation_PDFKitBorderStyleArray__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/Type", @"/W", @"/S", @"/D", 0}];
  v1 = PDFKitBorderStyleArray_array;
  PDFKitBorderStyleArray_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (int64_t)MarkupTypeForMarkupStyle:(unint64_t)a3
{
  if (MarkupTypeForMarkupStyle__onceToken != -1)
  {
    +[PDFAnnotation MarkupTypeForMarkupStyle:];
  }

  v4 = MarkupTypeForMarkupStyle__styles;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 integerValue];

  return v7;
}

void __42__PDFAnnotation_MarkupTypeForMarkupStyle___block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4183FB8;
  v2[1] = &unk_1F4183FE8;
  v3[0] = &unk_1F4183FD0;
  v3[1] = &unk_1F4183FD0;
  v2[2] = &unk_1F4184000;
  v2[3] = &unk_1F4184018;
  v3[2] = &unk_1F4183FD0;
  v3[3] = &unk_1F4183FD0;
  v2[4] = &unk_1F4184030;
  v2[5] = &unk_1F4184048;
  v3[4] = &unk_1F4183FD0;
  v3[5] = &unk_1F4184060;
  v2[6] = &unk_1F4184078;
  v2[7] = &unk_1F41840A8;
  v3[6] = &unk_1F4184090;
  v3[7] = &unk_1F41840C0;
  v2[8] = &unk_1F41840D8;
  v3[8] = &unk_1F41840F0;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = MarkupTypeForMarkupStyle__styles;
  MarkupTypeForMarkupStyle__styles = v0;
}

+ (id)SubtypeForPDFMarkupStyle:(unint64_t)a3
{
  if (SubtypeForPDFMarkupStyle__onceToken != -1)
  {
    +[PDFAnnotation SubtypeForPDFMarkupStyle:];
  }

  v4 = SubtypeForPDFMarkupStyle__subtypes;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

void __42__PDFAnnotation_SubtypeForPDFMarkupStyle___block_invoke()
{
  v3[9] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F4183FB8;
  v2[1] = &unk_1F4183FE8;
  v3[0] = @"/Highlight";
  v3[1] = @"/Highlight";
  v2[2] = &unk_1F4184000;
  v2[3] = &unk_1F4184018;
  v3[2] = @"/Highlight";
  v3[3] = @"/Highlight";
  v2[4] = &unk_1F4184030;
  v2[5] = &unk_1F4184048;
  v3[4] = @"/Highlight";
  v3[5] = @"/Underline";
  v2[6] = &unk_1F4184078;
  v2[7] = &unk_1F41840A8;
  v3[6] = @"/StrikeOut";
  v3[7] = @"/Redact";
  v2[8] = &unk_1F41840D8;
  v3[8] = &stru_1F416DF70;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:9];
  v1 = SubtypeForPDFMarkupStyle__subtypes;
  SubtypeForPDFMarkupStyle__subtypes = v0;
}

+ (id)PDFMarkupColors
{
  if (PDFMarkupColors_pred != -1)
  {
    +[PDFAnnotation PDFMarkupColors];
  }

  v3 = PDFMarkupColors_array;

  return v3;
}

void __32__PDFAnnotation_PDFMarkupColors__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v10 = [MEMORY[0x1E69DC888] colorWithRed:0.980392 green:0.803922 blue:0.352941 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.486275 green:0.784314 blue:0.407843 alpha:1.0];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.411765 green:0.690196 blue:0.945098 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.984314 green:0.360784 blue:0.537255 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.784314 green:0.521569 blue:0.854902 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.92549 green:0.156863 blue:0.078431 alpha:1.0];
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.92549 green:0.156863 blue:0.078431 alpha:1.0];
  v7 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v8 = [v0 initWithObjects:{v10, v1, v2, v3, v4, v5, v6, v7, 0}];
  v9 = PDFMarkupColors_array;
  PDFMarkupColors_array = v8;
}

+ (id)PDFTextColors
{
  if (PDFTextColors_pred != -1)
  {
    +[PDFAnnotation PDFTextColors];
  }

  v3 = PDFTextColors_array;

  return v3;
}

void __30__PDFAnnotation_PDFTextColors__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.92 blue:0.42 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.75 green:0.93 blue:0.45 alpha:1.0];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.67 green:0.85 blue:1.0 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.69 blue:0.79 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.85 green:0.7 blue:1.0 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v6 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v7 = [v0 initWithObjects:{v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = PDFTextColors_array;
  PDFTextColors_array = v7;
}

+ (id)PDFTextColorForMarkupStyle:(unint64_t)a3
{
  v4 = [a1 PDFTextColors];
  if ([v4 count] <= a3)
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "Annotations", "markupStyle (%lu) is out of range", v5, v6, v7, v8, v9, a3);
    a3 = 0;
  }

  v10 = [v4 objectAtIndexedSubscript:a3];

  return v10;
}

+ (id)PDFTextBorderColors
{
  if (PDFTextBorderColors_pred != -1)
  {
    +[PDFAnnotation PDFTextBorderColors];
  }

  v3 = PDFTextBorderColors_array;

  return v3;
}

void __36__PDFAnnotation_PDFTextBorderColors__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [MEMORY[0x1E69DC888] colorWithRed:0.9 green:0.79 blue:0.39 alpha:1.0];
  v1 = [MEMORY[0x1E69DC888] colorWithRed:0.65 green:0.8 blue:0.38 alpha:1.0];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.57 green:0.71 blue:0.85 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.85 green:0.59 blue:0.67 alpha:1.0];
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.71 green:0.59 blue:0.84 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  v7 = [v0 initWithObjects:{v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = PDFTextBorderColors_array;
  PDFTextBorderColors_array = v7;
}

+ (id)PDFTextBorderColorForMarkupStyle:(unint64_t)a3
{
  v4 = [a1 PDFTextBorderColors];
  if ([v4 count] <= a3)
  {
    _PDFLog(OS_LOG_TYPE_ERROR, "Annotations", "markupStyle (%lu) is out of range", v5, v6, v7, v8, v9, a3);
    a3 = 0;
  }

  v10 = [v4 objectAtIndexedSubscript:a3];

  return v10;
}

+ (id)PDFFormFieldBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.12];

  return v3;
}

+ (id)PDFMarkupStyleLabels
{
  if (PDFMarkupStyleLabels_pred != -1)
  {
    +[PDFAnnotation PDFMarkupStyleLabels];
  }

  v3 = PDFMarkupStyleLabels_array;

  return v3;
}

void __37__PDFAnnotation_PDFMarkupStyleLabels__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = PDFKitLocalizedString(@"Yellow");
  v1 = PDFKitLocalizedString(@"Green");
  v2 = PDFKitLocalizedString(@"Blue");
  v3 = PDFKitLocalizedString(@"Pink");
  v4 = PDFKitLocalizedString(@"Purple");
  v5 = PDFKitLocalizedString(@"Underline");
  v6 = PDFKitLocalizedString(@"Strikethrough");
  v7 = [v0 initWithObjects:{v9, v1, v2, v3, v4, v5, v6, 0}];
  v8 = PDFMarkupStyleLabels_array;
  PDFMarkupStyleLabels_array = v7;
}

+ (id)PDFAnnotationKeysWithStringValues
{
  if (PDFAnnotationKeysWithStringValues_pred != -1)
  {
    +[PDFAnnotation PDFAnnotationKeysWithStringValues];
  }

  v3 = PDFAnnotationKeysWithStringValues_array;

  return v3;
}

uint64_t __50__PDFAnnotation_PDFAnnotationKeysWithStringValues__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"/Contents", @"/DA", @"/NM", @"/T", @"/AC", @"/CA", @"/RC", @"/TU", 0}];
  v1 = PDFAnnotationKeysWithStringValues_array;
  PDFAnnotationKeysWithStringValues_array = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFAnnotationKeysForRedactionDiscoverability
{
  if (PDFAnnotationKeysForRedactionDiscoverability_pred != -1)
  {
    +[PDFAnnotation PDFAnnotationKeysForRedactionDiscoverability];
  }

  v3 = PDFAnnotationKeysForRedactionDiscoverability_set;

  return v3;
}

uint64_t __61__PDFAnnotation_PDFAnnotationKeysForRedactionDiscoverability__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"/P", @"/IC", @"/LE", @"/Border", 0}];
  v1 = PDFAnnotationKeysForRedactionDiscoverability_set;
  PDFAnnotationKeysForRedactionDiscoverability_set = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)PDFKitAnnotationUndoManagerDisplayNames
{
  if (PDFKitAnnotationUndoManagerDisplayNames_pred != -1)
  {
    +[PDFAnnotation PDFKitAnnotationUndoManagerDisplayNames];
  }

  v3 = PDFKitAnnotationUndoManagerDisplayNames_array;

  return v3;
}

void __56__PDFAnnotation_PDFKitAnnotationUndoManagerDisplayNames__block_invoke()
{
  v0 = PDFKitAnnotationUndoManagerDisplayNames_array;
  PDFKitAnnotationUndoManagerDisplayNames_array = &unk_1F4183F28;
}

+ (id)PresentableStringForAnnotationKey:(id)a3
{
  v3 = a3;
  if (PresentableStringForAnnotationKey__onceToken != -1)
  {
    +[PDFAnnotation PresentableStringForAnnotationKey:];
  }

  v4 = [PresentableStringForAnnotationKey__strings objectForKeyedSubscript:v3];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Annotation Property";
  }

  return v5;
}

void __51__PDFAnnotation_PresentableStringForAnnotationKey___block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"/Rect";
  v0 = PDFKitLocalizedString(@"Bounds");
  v6[0] = v0;
  v5[1] = @"/Contents";
  v1 = PDFKitLocalizedString(@"Contents");
  v6[1] = v1;
  v5[2] = @"/QuadPoints";
  v2 = PDFKitLocalizedString(@"Range");
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v4 = PresentableStringForAnnotationKey__strings;
  PresentableStringForAnnotationKey__strings = v3;
}

+ (id)createDetectedTextFieldWithBounds:(CGRect)a3 font:(id)a4 textContentType:(id)a5 page:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v13 = a4;
  v14 = objc_alloc_init([a6 annotationSubclassForSubtype:@"/FreeText"]);
  [v14 setValue:MEMORY[0x1E695E118] forAnnotationKey:@"/AAPL:SFF"];
  [v14 setAutoFillTextContentType:v12];

  v15 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{x, y, width, height}];
  [v14 setValue:v15 forAnnotationKey:@"/Rect"];

  [v14 setValue:@"/FreeText" forAnnotationKey:@"/Subtype"];
  [v14 setFont:v13];

  v16 = [MEMORY[0x1E69DC888] blackColor];
  [v14 setFontColor:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  [v14 setValue:v17 forAnnotationKey:@"/Q"];

  return v14;
}

- (CRNormalizedQuad)boundingQuad
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v4 = [WeakRetained renderingProperties];
  [WeakRetained boundsForBox:{objc_msgSend(v4, "displayBox")}];
  v6 = v5;
  v8 = v7;
  CGAffineTransformMakeTranslation(&v20, 0.0, 1.0);
  v18 = v20;
  CGAffineTransformScale(&v19, &v18, 1.0 / v6, -1.0 / v8);
  v20 = v19;
  [(PDFAnnotation *)self bounds];
  v19 = v20;
  v23 = CGRectApplyAffineTransform(v22, &v19);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v18.a = 0.0;
  *&v18.b = &v18;
  *&v18.c = 0x2050000000;
  v13 = getCRNormalizedQuadClass_softClass;
  *&v18.d = getCRNormalizedQuadClass_softClass;
  if (!getCRNormalizedQuadClass_softClass)
  {
    *&v19.a = MEMORY[0x1E69E9820];
    *&v19.b = 3221225472;
    *&v19.c = __getCRNormalizedQuadClass_block_invoke;
    *&v19.d = &unk_1E8150C78;
    *&v19.tx = &v18;
    __getCRNormalizedQuadClass_block_invoke(&v19);
    v13 = *(*&v18.b + 24);
  }

  v14 = v13;
  _Block_object_dispose(&v18, 8);
  v15 = [v13 alloc];
  v16 = [v15 initWithNormalizedBoundingBox:x size:{y, width, height, v6, v8, *&v18.a}];

  return v16;
}

- (unint64_t)fieldType
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v3 isEqualToString:@"/Widget"])
  {
    v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
    if ([v4 isEqualToString:@"/Tx"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"/Ch"])
    {
      v5 = 2;
    }

    else
    {
      v5 = -1;
    }
  }

  else if ([v3 isEqualToString:@"/FreeText"])
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (void)setTextContentType:(unint64_t)a3
{
  self->_formContentType = a3;
  if (a3 == 50)
  {
    self->_isDetectedSignature = 1;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = getVKCFormRegionClass_softClass;
    v13 = getVKCFormRegionClass_softClass;
    if (!getVKCFormRegionClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getVKCFormRegionClass_block_invoke;
      v9[3] = &unk_1E8150C78;
      v9[4] = &v10;
      __getVKCFormRegionClass_block_invoke(v9);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    v7 = [v5 autoFillContentTypeForCRContentType:a3];
    autoFillTextContentType = self->_autoFillTextContentType;
    self->_autoFillTextContentType = v7;
  }
}

- (UIFont)font
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/DA"];
  v4 = [(PDFAnnotation *)self getFontFromAppearanceNSString:v3];

  return v4;
}

- (void)setFont:(UIFont *)font
{
  v6 = [(UIFont *)font copy];
  v4 = [(PDFAnnotation *)self fontColor];
  v5 = [(PDFAnnotation *)self createDefaultAppearanceStringWithFont:v6 fontColor:v4];
  if (v5)
  {
    [(PDFAnnotation *)self setValue:v5 forAnnotationKey:@"/DA"];
  }
}

- (UIColor)fontColor
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/DA"];
  v4 = [(PDFAnnotation *)self getColorFromAppearanceNSString:v3];
  if (!v4)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v4;
}

- (void)setFontColor:(UIColor *)fontColor
{
  v7 = [(UIColor *)fontColor copy];
  if (CGColorGetPattern([v7 CGColor]))
  {
    NSLog(&cfstr_PdfkitSetfontc.isa);
    v4 = [MEMORY[0x1E69DC888] clearColor];

    v7 = v4;
  }

  v5 = [(PDFAnnotation *)self font];
  v6 = [(PDFAnnotation *)self createDefaultAppearanceStringWithFont:v5 fontColor:v7];
  if (v6)
  {
    [(PDFAnnotation *)self setValue:v6 forAnnotationKey:@"/DA"];
  }
}

- (void)setInteriorColor:(UIColor *)interiorColor
{
  v4 = [(UIColor *)interiorColor copy];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/IC"];
}

- (NSTextAlignment)alignment
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Q"];
  v3 = [v2 integerValue];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (void)setAlignment:(NSTextAlignment)alignment
{
  if ((alignment - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_1C1D79E10[alignment - 1];
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
  [(PDFAnnotation *)self setValue:v5 forAnnotationKey:@"/Q"];
}

- (CGPoint)startPoint
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/L"];
  v4 = [v3 objectAtIndex:0];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectAtIndex:1];
  [v7 doubleValue];
  v9 = PDFPointMake(v6, v8);
  v11 = v10;

  [(PDFAnnotation *)self bounds];
  v13 = v9 - v12;
  v15 = v11 - v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setStartPoint:(CGPoint)startPoint
{
  y = startPoint.y;
  x = startPoint.x;
  v17 = [(PDFAnnotation *)self valueForAnnotationKey:@"/L"];
  if (!v17)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v6, v6, v6, 0}];
  }

  [(PDFAnnotation *)self bounds];
  v8 = x + v7;
  v10 = y + v9;
  v11 = objc_alloc(MEMORY[0x1E695DEC8]);
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v14 = [v17 objectAtIndex:2];
  v15 = [v17 objectAtIndex:3];
  v16 = [v11 initWithObjects:{v12, v13, v14, v15, 0}];

  [(PDFAnnotation *)self setValue:v16 forAnnotationKey:@"/L"];
}

- (CGPoint)endPoint
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/L"];
  v4 = [v3 objectAtIndex:2];
  [v4 doubleValue];
  v6 = v5;
  v7 = [v3 objectAtIndex:3];
  [v7 doubleValue];
  v9 = PDFPointMake(v6, v8);
  v11 = v10;

  [(PDFAnnotation *)self bounds];
  v13 = v9 - v12;
  v15 = v11 - v14;

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)setEndPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v17 = [(PDFAnnotation *)self valueForAnnotationKey:@"/L"];
  if (!v17)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v6, v6, v6, 0}];
  }

  [(PDFAnnotation *)self bounds];
  v8 = x + v7;
  v10 = y + v9;
  v11 = objc_alloc(MEMORY[0x1E695DEC8]);
  v12 = [v17 objectAtIndex:0];
  v13 = [v17 objectAtIndex:1];
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v16 = [v11 initWithObjects:{v12, v13, v14, v15, 0}];

  [(PDFAnnotation *)self setValue:v16 forAnnotationKey:@"/L"];
}

- (PDFLineStyle)startLineStyle
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/LE"];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"/None", 0}];
  }

  v3 = [v2 objectAtIndex:0];
  v4 = [PDFAnnotation lineStyleFromName:v3];

  return v4;
}

- (void)setStartLineStyle:(PDFLineStyle)startLineStyle
{
  if (startLineStyle < (kPDFLineStyleOpenArrow|kPDFLineStyleCircle))
  {
    v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/LE"];
    if (!v5)
    {
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"/None", 0}];
    }

    v10 = v5;
    v6 = [PDFAnnotation nameForLineStyle:startLineStyle];
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    v8 = [v10 objectAtIndex:1];
    v9 = [v7 initWithObjects:{v6, v8, 0}];

    [(PDFAnnotation *)self setValue:v9 forAnnotationKey:@"/LE"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setStartLineStyle: %ld out of range", startLineStyle}];
  }
}

- (PDFLineStyle)endLineStyle
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/LE"];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"/None", 0}];
  }

  v3 = [v2 objectAtIndex:1];
  v4 = [PDFAnnotation lineStyleFromName:v3];

  return v4;
}

- (void)setEndLineStyle:(PDFLineStyle)endLineStyle
{
  if (endLineStyle < (kPDFLineStyleOpenArrow|kPDFLineStyleCircle))
  {
    v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/LE"];
    if (!v5)
    {
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"/None", 0}];
    }

    v10 = v5;
    v6 = [PDFAnnotation nameForLineStyle:endLineStyle];
    v7 = objc_alloc(MEMORY[0x1E695DEC8]);
    v8 = [v10 objectAtIndex:0];
    v9 = [v7 initWithObjects:{v8, v6, 0}];

    [(PDFAnnotation *)self setValue:v9 forAnnotationKey:@"/LE"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setEndLineStyle: %ld out of range", endLineStyle}];
  }
}

- (PDFTextAnnotationIconType)iconType
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Name"];
  if ([v2 isEqualToString:@"/Comment"])
  {
    v3 = kPDFTextAnnotationIconComment;
  }

  else if ([v2 isEqualToString:@"/Key"])
  {
    v3 = kPDFTextAnnotationIconKey;
  }

  else if ([v2 isEqualToString:@"/Note"])
  {
    v3 = kPDFTextAnnotationIconNote;
  }

  else if ([v2 isEqualToString:@"/Help"])
  {
    v3 = kPDFTextAnnotationIconHelp;
  }

  else if ([v2 isEqualToString:@"/NewParagraph"])
  {
    v3 = kPDFTextAnnotationIconNewParagraph;
  }

  else if ([v2 isEqualToString:@"/Paragraph"])
  {
    v3 = kPDFTextAnnotationIconParagraph;
  }

  else if ([v2 isEqualToString:@"/Insert"])
  {
    v3 = kPDFTextAnnotationIconInsert;
  }

  else
  {
    v3 = kPDFTextAnnotationIconNote;
  }

  return v3;
}

- (void)setIconType:(PDFTextAnnotationIconType)iconType
{
  if (iconType >= (kPDFTextAnnotationIconInsert|kPDFTextAnnotationIconKey))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695DA20] format:{@"setIconType: %ld out of range", iconType}];
  }

  if (iconType <= kPDFTextAnnotationIconInsert)
  {
    v5 = off_1E81519B0[iconType];

    [(PDFAnnotation *)self setValue:v5 forAnnotationKey:@"/Name"];
  }
}

- (NSArray)quadrilateralPoints
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/QuadPoints"];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PDFAnnotation *)self bounds];
  v6 = v5;
  v8 = v7;
  if ([v3 count])
  {
    v9 = 0;
    do
    {
      v10 = [v3 objectAtIndex:v9];
      [v10 PDFKitPDFPointValue];
      v12 = v11;
      v14 = v13;

      v15 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{v12 - v6, v14 - v8}];
      [v4 addObject:v15];

      ++v9;
    }

    while ([v3 count] > v9);
  }

  return v4;
}

- (void)setQuadrilateralPoints:(NSArray *)quadrilateralPoints
{
  v16 = quadrilateralPoints;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(PDFAnnotation *)self bounds];
  v6 = v5;
  v8 = v7;
  if ([(NSArray *)v16 count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)v16 objectAtIndex:v9];
      [v10 PDFKitPDFPointValue];
      v12 = v11;
      v14 = v13;

      v15 = [MEMORY[0x1E696B098] PDFKitValueWithPDFPoint:{v6 + v12, v8 + v14}];
      [v4 addObject:v15];

      ++v9;
    }

    while ([(NSArray *)v16 count]> v9);
  }

  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/QuadPoints"];
  [(PDFAnnotation *)self updateAnnotationEffect];
}

- (PDFMarkupType)markupType
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v2 isEqualToString:@"/Underline"])
  {
    v3 = kPDFMarkupTypeUnderline;
  }

  else if ([v2 isEqualToString:@"/StrikeOut"])
  {
    v3 = kPDFMarkupTypeStrikeOut;
  }

  else if ([v2 isEqualToString:@"/Redact"])
  {
    v3 = kPDFMarkupTypeRedact;
  }

  else
  {
    v3 = kPDFMarkupTypeHighlight;
  }

  return v3;
}

- (void)setMarkupType:(PDFMarkupType)markupType
{
  if (markupType <= kPDFMarkupTypeUnderline)
  {
    [(PDFAnnotation *)self setValue:off_1E81519E8[markupType] forAnnotationKey:@"/Subtype"];
  }
}

- (void)setWidgetFieldType:(NSString *)widgetFieldType
{
  v5 = [(NSString *)widgetFieldType copy];
  v4 = [(PDFAnnotation *)self widgetFieldType];

  [(PDFAnnotation *)self setValue:v5 forAnnotationKey:@"/FT"];
  if (!v4)
  {
    [(PDFAnnotation *)self secondaryInit];
  }
}

- (PDFWidgetControlType)widgetControlType
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Ff"];
  v3 = [v2 integerValue];

  if ((v3 & 0x8000) != 0)
  {
    return 1;
  }

  else
  {
    return (~(v3 >> 15) & 2);
  }
}

- (void)setWidgetControlType:(PDFWidgetControlType)widgetControlType
{
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Ff"];
  v6 = [v5 integerValue];

  v7 = [(PDFAnnotation *)self widgetControlType];
  if (v7)
  {
    if (v7 == kPDFWidgetRadioButtonControl)
    {
      v8 = v6 & 0xFFFFFFFFFFFF7FFFLL;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v6 & 0xFFFFFFFFFFFEFFFFLL;
  }

  v9 = v8 | 0x10000;
  if (widgetControlType == kPDFWidgetRadioButtonControl)
  {
    v8 |= 0x8000uLL;
  }

  if (widgetControlType)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  [(PDFAnnotation *)self setValue:v11 forAnnotationKey:@"/Ff"];
}

- (BOOL)_BOOLValueForAnnotationFlag:(unint64_t)a3 withDefaultValue:(BOOL)a4
{
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/F"];
  v7 = v6;
  if (v6)
  {
    a4 = (a3 & ~[v6 unsignedIntegerValue]) == 0;
  }

  return a4;
}

- (void)_setBoolValue:(BOOL)a3 forAnnotationFlag:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/F"];
  v8 = [v7 unsignedIntegerValue];

  if (v5)
  {
    v9 = v8 | v4;
  }

  else
  {
    v9 = v8 & ~v4;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  [(PDFAnnotation *)self setValue:v10 forAnnotationKey:@"/F"];
}

- (void)setShouldDisplay:(BOOL)shouldDisplay
{
  [(PDFAnnotation *)self _setBoolValue:!shouldDisplay forAnnotationFlag:32];

  [(PDFAnnotation *)self updateAnnotationEffect];
}

- (BOOL)_BOOLValueForWidgetFieldFlag:(unint64_t)a3
{
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Ff"];
  v5 = [v4 integerValue];

  return (a3 & ~v5) == 0;
}

- (void)_setBoolValue:(BOOL)a3 forWidgetFieldFlag:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Ff"];
  v8 = [v7 integerValue];

  if (v5)
  {
    v9 = v8 | v4;
  }

  else
  {
    v9 = v8 & ~v4;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  [(PDFAnnotation *)self setValue:v10 forAnnotationKey:@"/Ff"];
}

- (BOOL)isActivatableTextField
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/AAPL:SFF"];

  if (v3)
  {
    return 1;
  }

  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v5 isEqualToString:@"/Widget"])
  {
    v7 = [v6 isEqualToString:@"/Tx"] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  if ([(PDFAnnotation *)self shouldDisplay])
  {
    v8 = [(PDFAnnotation *)self isHidden];
  }

  else
  {
    v8 = 1;
  }

  v9 = [(PDFAnnotation *)self shouldDisplay];
  v10 = v9 & ![(PDFAnnotation *)self isReadOnly];
  if ((v7 | v8))
  {
    v4 = 0;
  }

  else
  {
    v4 = v10;
  }

  return v4;
}

- (NSInteger)maximumLength
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MaxLen"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setMaximumLength:(NSInteger)maximumLength
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:maximumLength];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/MaxLen"];
}

- (NSString)widgetStringValue
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/V"];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v4 isEqualToString:@"/Widget"])
  {
    v6 = [(PDFAnnotation *)self fieldName];
    if (v6)
    {
      v7 = [(PDFAnnotation *)self page];
      v8 = [v7 document];
      v9 = [v8 formData];
      v10 = [v9 stringValueForFieldNamed:v6];
    }

    else
    {
      v10 = 0;
    }

    if ([v5 isEqualToString:@"/Ch"])
    {
      v12 = [(PDFAnnotation *)self _textForValue:v10];

      v10 = v12;
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v3;
    }

    v11 = v13;
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

- (void)setWidgetStringValue:(NSString *)widgetStringValue
{
  v7 = [(NSString *)widgetStringValue copy];
  v4 = [(PDFAnnotation *)self replaceTextWidgetWithString:?];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/V"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v5 isEqualToString:@"/Widget"] && -[PDFAnnotation isFullyConstructed](self, "isFullyConstructed"))
  {
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
    if ([v6 isEqualToString:@"/Ch"])
    {
      [(PDFAnnotation *)self removeValueForAnnotationKey:@"/AP"];
    }

    [(PDFAnnotation *)self updateFormData];
  }
}

- (NSString)widgetDefaultStringValue
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/DV"];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if (!v3)
  {
    if ([v4 isEqualToString:@"/Widget"])
    {
      if ([v5 isEqualToString:@"/Tx"])
      {
        v3 = &stru_1F416DF70;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)setWidgetDefaultStringValue:(NSString *)widgetDefaultStringValue
{
  v4 = [(NSString *)widgetDefaultStringValue copy];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/DV"];
}

- (BOOL)allowsToggleToOff
{
  v3 = [(PDFAnnotation *)self widgetControlType];
  if (v3)
  {
    LOBYTE(v3) = ![(PDFAnnotation *)self _BOOLValueForWidgetFieldFlag:0x4000];
  }

  return v3;
}

- (void)setAllowsToggleToOff:(BOOL)allowsToggleToOff
{
  v3 = allowsToggleToOff;
  if ([(PDFAnnotation *)self widgetControlType])
  {

    [(PDFAnnotation *)self _setBoolValue:!v3 forWidgetFieldFlag:0x4000];
  }
}

- (BOOL)radiosInUnison
{
  v3 = [(PDFAnnotation *)self widgetControlType];
  if (v3)
  {

    LOBYTE(v3) = [(PDFAnnotation *)self _BOOLValueForWidgetFieldFlag:0x2000000];
  }

  return v3;
}

- (void)setRadiosInUnison:(BOOL)radiosInUnison
{
  v3 = radiosInUnison;
  if ([(PDFAnnotation *)self widgetControlType])
  {

    [(PDFAnnotation *)self _setBoolValue:v3 forWidgetFieldFlag:0x2000000];
  }
}

- (NSArray)choices
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Opt"];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v2 count])
  {
    v4 = 0;
    do
    {
      v5 = [v2 objectAtIndex:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObject:v5];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = [v5 objectAtIndex:1];
          [v3 addObject:v6];
        }
      }

      ++v4;
    }

    while ([v2 count] > v4);
  }

  return v3;
}

- (void)setChoices:(NSArray *)choices
{
  v15 = choices;
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Opt"];
  v5 = v4;
  if (v4 && (v6 = [v4 count], v6 == -[NSArray count](v15, "count")) && (objc_msgSend(v5, "objectAtIndex:", 0), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) == 0))
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v5 count])
    {
      v10 = 0;
      do
      {
        v11 = [v5 objectAtIndex:v10];
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = [v11 objectAtIndex:0];
        [v12 addObject:v13];

        v14 = [(NSArray *)v15 objectAtIndex:v10];
        [v12 addObject:v14];

        [v9 addObject:v12];
        ++v10;
      }

      while ([v5 count] > v10);
    }

    [(PDFAnnotation *)self setValue:v9 forAnnotationKey:@"/Opt"];
  }

  else
  {
    [(PDFAnnotation *)self setValue:v15 forAnnotationKey:@"/Opt"];
  }
}

- (NSArray)values
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Opt"];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v2 count])
  {
    v4 = 0;
    do
    {
      v5 = [v2 objectAtIndex:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 objectAtIndex:0];
        [v3 addObject:v6];
      }

      ++v4;
    }

    while ([v2 count] > v4);
  }

  return v3;
}

- (void)setValues:(NSArray *)values
{
  v13 = values;
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Opt"];
  v5 = v4;
  if (v4 && (v6 = [v4 count], v6 == -[NSArray count](v13, "count")))
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndex:v8];
        v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v11 = [(NSArray *)v13 objectAtIndex:v8];
        [v10 addObject:v11];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 addObject:v9];
        }

        else
        {
          v12 = [v9 objectAtIndex:1];
          [v10 addObject:v12];
        }

        [v7 addObject:v10];

        ++v8;
      }

      while ([v5 count] > v8);
    }

    [(PDFAnnotation *)self setValue:v7 forAnnotationKey:@"/Opt"];
  }

  else
  {
    [(PDFAnnotation *)self setValue:v13 forAnnotationKey:@"/Opt"];
  }
}

- (id)_textForValue:(id)a3
{
  v4 = a3;
  v5 = [(PDFAnnotation *)self choices];
  v6 = [(PDFAnnotation *)self values];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = [v6 count];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    v11 = [v7 objectAtIndex:v10];
    v12 = [v11 isEqualToString:v4];

    if (v12)
    {
      break;
    }

    if (v9 == ++v10)
    {
      goto LABEL_9;
    }
  }

  if ([v5 count] <= v10 || (objc_msgSend(v5, "objectAtIndex:", v10), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_9:
    v13 = v4;
  }

  return v13;
}

- (PDFWidgetCellState)buttonWidgetState
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v3 isEqualToString:@"/Widget"] && objc_msgSend(v4, "isEqualToString:", @"/Btn"))
  {
    v5 = [(PDFAnnotation *)self widgetOnStateString];
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/V"];
    v7 = [v6 isEqualToString:v5];
    v8 = [(PDFAnnotation *)self fieldName];
    if (v8)
    {
      v9 = [(PDFAnnotation *)self page];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 document];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 formData];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 fieldNamed:v8];
            v16 = v15;
            if (v15)
            {
              v18 = [v15 stringValue];
              v7 = [v18 isEqualToString:v5];
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = kPDFWidgetMixedState;
  }

  return v7;
}

- (void)setButtonWidgetState:(PDFWidgetCellState)buttonWidgetState
{
  v8 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/FT"];
  if ([v8 isEqualToString:@"/Widget"] && objc_msgSend(v5, "isEqualToString:", @"/Btn") && -[PDFAnnotation widgetControlType](self, "widgetControlType"))
  {
    if (buttonWidgetState)
    {
      v6 = [(PDFAnnotation *)self widgetOnStateString];
      v7 = v6 ? v6 : @"Yes";
      [(PDFAnnotation *)self setValue:v7 forAnnotationKey:@"/V"];
    }

    else
    {
      [(PDFAnnotation *)self setValue:@"Off" forAnnotationKey:@"/V"];
    }

    if ([(PDFAnnotation *)self isFullyConstructed])
    {
      [(PDFAnnotation *)self updateFormData];
    }
  }
}

- (void)setButtonWidgetStateString:(NSString *)buttonWidgetStateString
{
  v4 = [(NSString *)buttonWidgetStateString copy];
  [(PDFAnnotation *)self setWidgetOnStateString:v4];
}

- (BOOL)isOpen
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Open"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOpen:(BOOL)open
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:open];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/Open"];
}

- (PDFDestination)destination
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if (![v3 isEqualToString:@"/Link"])
  {
    v6 = 0;
    goto LABEL_10;
  }

  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/A"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = [v4 destination];
  }

  else
  {
    v5 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Dest"];
  }

  v6 = v5;
LABEL_9:

LABEL_10:

  return v6;
}

- (void)setDestination:(PDFDestination *)destination
{
  v5 = destination;
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v4 isEqualToString:@"/Link"])
  {
    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/A"];
    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/Dest"];
    [(PDFAnnotation *)self setValue:v5 forAnnotationKey:@"/Dest"];
  }
}

- (NSURL)URL
{
  v3 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v3 isEqualToString:@"/Link"])
  {
    v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/A"];
    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = [v4 URL];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setURL:(NSURL *)URL
{
  v8 = URL;
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/Subtype"];
  if ([v4 isEqualToString:@"/Link"])
  {
    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/A"];
    [(PDFAnnotation *)self removeValueForAnnotationKey:@"/Dest"];
    v5 = [(NSURL *)v8 copy];
    v6 = [(PDFAnnotation *)self valueForAnnotationKey:@"/A"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v6 setURL:v5];
    }

    else
    {
      v7 = [[PDFActionURL alloc] initWithURL:v5];

      v6 = v7;
    }

    [(PDFAnnotation *)self setValue:v6 forAnnotationKey:@"/A"];
  }
}

- (void)setFieldName:(NSString *)fieldName
{
  v4 = [(NSString *)fieldName copy];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/T"];
}

- (NSString)caption
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MK"];
  v3 = [v2 caption];

  return v3;
}

- (void)setCaption:(NSString *)caption
{
  v5 = [(NSString *)caption copy];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MK"];
  if (!v4)
  {
    v4 = objc_alloc_init(PDFAppearanceCharacteristics);
    [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/MK"];
  }

  [(PDFAppearanceCharacteristics *)v4 setCaption:v5];
  [(PDFAnnotation *)self updateAnnotationEffect];
}

- (UIColor)backgroundColor
{
  v2 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MK"];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v5 = [(UIColor *)backgroundColor copy];
  v4 = [(PDFAnnotation *)self valueForAnnotationKey:@"/MK"];
  if (!v4)
  {
    v4 = objc_alloc_init(PDFAppearanceCharacteristics);
    [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/MK"];
  }

  [(PDFAppearanceCharacteristics *)v4 setBackgroundColor:v5];
  [(PDFAnnotation *)self updateAnnotationEffect];
}

- (void)setStampName:(NSString *)stampName
{
  v4 = [(NSString *)stampName copy];
  [(PDFAnnotation *)self setValue:v4 forAnnotationKey:@"/Name"];
}

+ (PDFLineStyle)lineStyleFromName:(NSString *)name
{
  v3 = name;
  if ([(NSString *)v3 isEqualToString:@"/Square"])
  {
    v4 = kPDFLineStyleSquare;
  }

  else if ([(NSString *)v3 isEqualToString:@"/Circle"])
  {
    v4 = kPDFLineStyleCircle;
  }

  else if ([(NSString *)v3 isEqualToString:@"/Diamond"])
  {
    v4 = kPDFLineStyleDiamond;
  }

  else if ([(NSString *)v3 isEqualToString:@"/OpenArrow"])
  {
    v4 = kPDFLineStyleOpenArrow;
  }

  else if ([(NSString *)v3 isEqualToString:@"/ClosedArrow"])
  {
    v4 = kPDFLineStyleClosedArrow;
  }

  else
  {
    v4 = kPDFLineStyleNone;
  }

  return v4;
}

+ (NSString)nameForLineStyle:(PDFLineStyle)style
{
  if ((style - 1) > 4)
  {
    return @"/None";
  }

  else
  {
    return &off_1E8151A00[style - 1]->isa;
  }
}

- (void)addBezierPath:(UIBezierPath *)path
{
  v4 = path;
  v5 = [(PDFAnnotation *)self pathLock];
  [v5 lock];

  v6 = MEMORY[0x1E695DF70];
  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/InkList"];
  v9 = [v6 arrayWithArray:v7];

  [(PDFAnnotation *)self releaseCGPathArray];
  [v9 addObject:v4];

  [(PDFAnnotation *)self setValue:v9 forAnnotationKey:@"/InkList"];
  v8 = [(PDFAnnotation *)self pathLock];
  [v8 unlock];
}

- (void)removeBezierPath:(UIBezierPath *)path
{
  v4 = path;
  v5 = [(PDFAnnotation *)self pathLock];
  [v5 lock];

  v6 = MEMORY[0x1E695DF70];
  v7 = [(PDFAnnotation *)self valueForAnnotationKey:@"/InkList"];
  v9 = [v6 arrayWithArray:v7];

  [(PDFAnnotation *)self releaseCGPathArray];
  [v9 removeObject:v4];

  [(PDFAnnotation *)self setValue:v9 forAnnotationKey:@"/InkList"];
  v8 = [(PDFAnnotation *)self pathLock];
  [v8 unlock];
}

@end