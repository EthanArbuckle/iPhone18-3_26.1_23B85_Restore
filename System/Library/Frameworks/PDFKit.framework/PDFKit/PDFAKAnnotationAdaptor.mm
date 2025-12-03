@interface PDFAKAnnotationAdaptor
+ (PDFAKAnnotationAdaptor)annotationAdaptorWithPDFAnnotation:(id)annotation andCGPDFAnnotation:(CGPDFAnnotation *)fAnnotation andPDFDictionary:(CGPDFDictionary *)dictionary updatePDFAnnotationIfNeeded:(BOOL)needed;
+ (id)_akAnnotationInstanceForPDFAnnotationSubtype:(id)subtype withOptionalWidgetFieldType:(id)type;
+ (id)_pdfAnnotationInstanceForAKAnnotation:(id)annotation;
+ (id)getPDFAnnotationAssociatedWith:(id)with;
+ (id)newPDFAnnotationFromAKAnnotation:(id)annotation;
+ (void)associatePDFAnnotation:(id)annotation withAKAnnotation:(id)kAnnotation;
- (PDFAKAnnotationAdaptor)initWithPDFAnnotation:(id)annotation andAKAnnotation:(id)kAnnotation;
- (PDFAnnotation)pdfAnnotation;
- (id)_colorFromColorOrArray:(id)array;
- (void)_startObservingAnnotation;
- (void)_stopObservingAnnotation;
- (void)_syncAnnotationTextForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:(BOOL)override;
- (void)_syncArrowHeadStyleForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncAuthorForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncBorder:(id)border;
- (void)_syncBorderStyle:(id)style;
- (void)_syncBoundingRectangleForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncChildAnnotationForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncColor:(id)color;
- (void)_syncColorForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncContents:(id)contents;
- (void)_syncContentsForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncCornerRadiusForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncDashedForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncDate:(id)date;
- (void)_syncDefaultAppearance:(id)appearance;
- (void)_syncEndPointForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncEverythingToAKAnnotation;
- (void)_syncEverythingToPDFAnnotation;
- (void)_syncInteriorColor:(id)color;
- (void)_syncLineEndingStyles:(id)styles;
- (void)_syncLinePoints:(id)points;
- (void)_syncModificationDateForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncPage:(id)page;
- (void)_syncParent:(id)parent;
- (void)_syncPopup:(id)popup;
- (void)_syncQuadding:(int64_t)quadding;
- (void)_syncRect:(CGRect)rect;
- (void)_syncStartPointForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncStrokeWidthForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value;
- (void)_syncSubtype:(id)subtype;
- (void)_syncTextLabel:(id)label;
- (void)_syncWidgetFieldType:(id)type;
- (void)_teardown;
- (void)_updateDashedPatternForStrokeWidth:(double)width isDashed:(BOOL)dashed;
- (void)dealloc;
- (void)didRemoveValueForAnnotationKey:(id)key;
- (void)didReplaceAllValuesWithNewDictionary:(id)dictionary andOldDictionary:(id)oldDictionary;
- (void)didSetValue:(id)value forAnnotationKey:(id)key;
- (void)invalidateAppearanceStream;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)teardown;
@end

@implementation PDFAKAnnotationAdaptor

+ (PDFAKAnnotationAdaptor)annotationAdaptorWithPDFAnnotation:(id)annotation andCGPDFAnnotation:(CGPDFAnnotation *)fAnnotation andPDFDictionary:(CGPDFDictionary *)dictionary updatePDFAnnotationIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  annotationCopy = annotation;
  v11 = [annotationCopy valueForAnnotationKey:@"/Subtype"];
  v12 = 0;
  if (!fAnnotation || !dictionary || ([PDFAKAnnotationSerializationHelper akAnnotationFromCGPDFAnnotation:fAnnotation andDictionary:dictionary], v13 = objc_claimAutoreleasedReturnValue(), v12 = v13 != 0, !v13))
  {
    if (![v11 length])
    {
      v13 = 0;
LABEL_14:
      v15 = 0;
      goto LABEL_15;
    }

    if ([v11 isEqualToString:@"/Widget"])
    {
      v14 = [annotationCopy valueForAnnotationKey:@"/FT"];
      if ([v14 length])
      {
        v13 = [self _akAnnotationInstanceForPDFAnnotationSubtype:v11 withOptionalWidgetFieldType:v14];
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = [self _akAnnotationInstanceForPDFAnnotationSubtype:v11 withOptionalWidgetFieldType:0];
      if (!v13)
      {
        goto LABEL_14;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_14;
  }

  v17 = [[self alloc] initWithPDFAnnotation:annotationCopy andAKAnnotation:v13];
  v15 = v17;
  if (v12)
  {
    [v17 _syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:0];
    if (neededCopy)
    {
      [v15 _syncEverythingToPDFAnnotation];
    }
  }

  else
  {
    [v17 _syncEverythingToAKAnnotation];
  }

LABEL_15:

  return v15;
}

+ (id)newPDFAnnotationFromAKAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (GetDefaultsWriteAKEnabled())
  {
    v6 = [self _pdfAnnotationInstanceForAKAnnotation:annotationCopy];
    null = [MEMORY[0x1E695DFB0] null];

    if (v6 == null)
    {
      v9 = 0;
    }

    else
    {
      [v6 setupAKAnnotationAdaptorIfNecessary];
      akAnnotationAdaptor = [v6 akAnnotationAdaptor];
      [akAnnotationAdaptor _stopObservingAnnotation];
      objc_storeStrong((akAnnotationAdaptor[1] + 24), annotation);
      [akAnnotationAdaptor _syncEverythingToPDFAnnotation];
      [akAnnotationAdaptor _startObservingAnnotation];
      [self associatePDFAnnotation:v6 withAKAnnotation:annotationCopy];
      v9 = v6;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PDFAKAnnotationAdaptor)initWithPDFAnnotation:(id)annotation andAKAnnotation:(id)kAnnotation
{
  annotationCopy = annotation;
  kAnnotationCopy = kAnnotation;
  v12.receiver = self;
  v12.super_class = PDFAKAnnotationAdaptor;
  v8 = [(PDFAKAnnotationAdaptor *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = v8->_private;
    v8->_private = v9;

    objc_storeWeak(&v8->_private->pdfAnnotation, annotationCopy);
    objc_storeStrong(&v8->_private->akAnnotation, kAnnotation);
    if (kAnnotationCopy)
    {
      [objc_opt_class() associatePDFAnnotation:annotationCopy withAKAnnotation:kAnnotationCopy];
      [(PDFAKAnnotationAdaptor *)v8 _startObservingAnnotation];
    }
  }

  return v8;
}

- (void)dealloc
{
  if (!self->_private->isTornDown)
  {
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      [(PDFAKAnnotationAdaptor *)self _teardown];
    }

    else
    {
      NSLog(&cfstr_SCalledFromABa.isa, "[PDFAKAnnotationAdaptor dealloc]");
    }
  }

  v3.receiver = self;
  v3.super_class = PDFAKAnnotationAdaptor;
  [(PDFAKAnnotationAdaptor *)&v3 dealloc];
}

- (void)teardown
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {

    [(PDFAKAnnotationAdaptor *)self _teardown];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__PDFAKAnnotationAdaptor_teardown__block_invoke;
    block[3] = &unk_1E8150990;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_teardown
{
  v3 = self->_private;
  if (v3 && !v3->isTornDown)
  {
    v3->isTornDown = 1;
    [(PDFAKAnnotationAdaptor *)self _stopObservingAnnotation];
    v5 = self->_private;
    akAnnotation = v5->akAnnotation;
    v5->akAnnotation = 0;

    p_pdfAnnotation = &self->_private->pdfAnnotation;

    objc_storeWeak(p_pdfAnnotation, 0);
  }
}

- (PDFAnnotation)pdfAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);

  return WeakRetained;
}

+ (id)getPDFAnnotationAssociatedWith:(id)with
{
  v3 = objc_getAssociatedObject(with, @"PDFAnnotationAssociatedObjectKey");
  weakObjectValue = [v3 weakObjectValue];

  return weakObjectValue;
}

+ (void)associatePDFAnnotation:(id)annotation withAKAnnotation:(id)kAnnotation
{
  v5 = MEMORY[0x1E696B098];
  kAnnotationCopy = kAnnotation;
  v7 = [v5 valueWithWeakObject:annotation];
  objc_setAssociatedObject(kAnnotationCopy, @"PDFAnnotationAssociatedObjectKey", v7, 0x301);
}

- (void)didSetValue:(id)value forAnnotationKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = keyCopy;
  v8 = self->_private;
  if (!v8->isSyncingFromAKAnnotation)
  {
    isSyncingFromPDFAnnotation = v8->isSyncingFromPDFAnnotation;
    v8->isSyncingFromPDFAnnotation = 1;
    if ([keyCopy isEqualToString:@"/Subtype"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncSubtype:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Rect"])
    {
      [valueCopy PDFKitPDFRectValue];
      [(PDFAKAnnotationAdaptor *)self _syncRect:?];
    }

    else if ([v7 isEqualToString:@"/L"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncLinePoints:valueCopy];
    }

    else if ([v7 isEqualToString:@"/C"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncColor:valueCopy];
    }

    else if ([v7 isEqualToString:@"/IC"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncInteriorColor:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Contents"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncContents:valueCopy];
    }

    else if ([v7 isEqualToString:@"/T"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncTextLabel:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Border"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncBorder:valueCopy];
    }

    else if ([v7 isEqualToString:@"/BS"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncBorderStyle:valueCopy];
    }

    else if ([v7 isEqualToString:@"/LE"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncLineEndingStyles:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Q"])
    {
      integerValue = [valueCopy integerValue];
      if (integerValue == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (integerValue == 2);
      }

      [(PDFAKAnnotationAdaptor *)self _syncQuadding:v11];
    }

    else if ([v7 isEqualToString:@"/InkList"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncInklist:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Name"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncIconName:valueCopy];
    }

    else if ([v7 isEqualToString:@"/H"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncHighlightingMode:valueCopy];
    }

    else if ([v7 isEqualToString:@"/AP"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:0];
    }

    else if ([v7 isEqualToString:@"/AS"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAppearanceState:valueCopy];
    }

    else if ([v7 isEqualToString:@"/DA"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncDefaultAppearance:valueCopy];
    }

    else if ([v7 isEqualToString:@"/F"])
    {
      -[PDFAKAnnotationAdaptor _syncFlags:](self, "_syncFlags:", [valueCopy unsignedLongValue]);
    }

    else if ([v7 isEqualToString:@"/M"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncDate:valueCopy];
    }

    else if ([v7 isEqualToString:@"/NM"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncName:valueCopy];
    }

    else if ([v7 isEqualToString:@"/P"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncPage:valueCopy];
    }

    else if ([v7 isEqualToString:@"/A"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAction:valueCopy];
    }

    else if ([v7 isEqualToString:@"/AA"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAdditionalAction:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Dest"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncDestination:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Open"])
    {
      -[PDFAKAnnotationAdaptor _syncOpen:](self, "_syncOpen:", [valueCopy BOOLValue]);
    }

    else if ([v7 isEqualToString:@"/Parent"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncParent:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Popup"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncPopup:valueCopy];
    }

    else if ([v7 isEqualToString:@"/DV"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetDefaultValue:valueCopy];
    }

    else if ([v7 isEqualToString:@"/Ff"])
    {
      -[PDFAKAnnotationAdaptor _syncWidgetFieldFlags:](self, "_syncWidgetFieldFlags:", [valueCopy unsignedLongValue]);
    }

    else if ([v7 isEqualToString:@"/FT"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetFieldType:valueCopy];
    }

    else if ([v7 isEqualToString:@"/MK"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetAppearance:valueCopy];
    }

    else if ([v7 isEqualToString:@"/MaxLen"])
    {
      -[PDFAKAnnotationAdaptor _syncWidgetMaxLen:](self, "_syncWidgetMaxLen:", [valueCopy unsignedLongValue]);
    }

    else if ([v7 isEqualToString:@"/Opt"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetOptions:valueCopy];
    }

    else if ([v7 isEqualToString:@"/TU"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetTextLabelUI:valueCopy];
    }

    else if ([v7 isEqualToString:@"/V"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetValue:valueCopy];
    }

    self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
  }
}

- (void)didRemoveValueForAnnotationKey:(id)key
{
  v3 = self->_private;
  if (!v3->isSyncingFromAKAnnotation)
  {
    isSyncingFromPDFAnnotation = v3->isSyncingFromPDFAnnotation;
    v3->isSyncingFromPDFAnnotation = 1;
    [(PDFAKAnnotationAdaptor *)self didSetValue:0 forAnnotationKey:key];
    self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
  }
}

- (void)didReplaceAllValuesWithNewDictionary:(id)dictionary andOldDictionary:(id)oldDictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = self->_private;
  if (!v7->isSyncingFromAKAnnotation)
  {
    isSyncingFromPDFAnnotation = v7->isSyncingFromPDFAnnotation;
    v7->isSyncingFromPDFAnnotation = 1;
    v9 = MEMORY[0x1E695DFA8];
    allKeys = [oldDictionary allKeys];
    v11 = [v9 setWithArray:allKeys];

    v12 = MEMORY[0x1E695DFA8];
    allKeys2 = [dictionaryCopy allKeys];
    v14 = [v12 setWithArray:allKeys2];
    [v11 minusSet:v14];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(PDFAKAnnotationAdaptor *)self didSetValue:0 forAnnotationKey:*(*(&v31 + 1) + 8 * i)];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v17);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    allKeys3 = [dictionaryCopy allKeys];
    v21 = [allKeys3 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(allKeys3);
          }

          v25 = *(*(&v27 + 1) + 8 * j);
          v26 = [dictionaryCopy objectForKey:v25];
          [(PDFAKAnnotationAdaptor *)self didSetValue:v26 forAnnotationKey:v25];
        }

        v22 = [allKeys3 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v22);
    }

    [(PDFAKAnnotationAdaptor *)self _syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:1];
    self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
  }
}

- (void)invalidateAppearanceStream
{
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  if (pdfAnnotation)
  {
    v4 = pdfAnnotation;
    [pdfAnnotation setDictionaryRef:0];
    page = [v4 page];
    [page changedAnnotation:v4];

    pdfAnnotation = v4;
  }
}

- (void)_syncSubtype:(id)subtype
{
  subtypeCopy = subtype;
  if ([subtypeCopy isEqualToString:@"/Widget"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);
    v6 = [WeakRetained valueForAnnotationKey:@"/FT"];

    if (!v6 || ![v6 length])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v7 = [objc_opt_class() _akAnnotationInstanceForPDFAnnotationSubtype:subtypeCopy withOptionalWidgetFieldType:v6];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = [objc_opt_class() _akAnnotationInstanceForPDFAnnotationSubtype:subtypeCopy withOptionalWidgetFieldType:0];
    v6 = 0;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  null = [MEMORY[0x1E695DFB0] null];

  v9 = self->_private;
  if (v7 == null)
  {
    v10 = objc_loadWeakRetained(&v9->pdfAnnotation);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PDFAKAnnotationAdaptor__syncSubtype___block_invoke;
    block[3] = &unk_1E8150990;
    v13 = v10;
    v11 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    objc_storeStrong(&v9->akAnnotation, v7);
    [(PDFAKAnnotationAdaptor *)self _startObservingAnnotation];
  }

LABEL_11:
}

- (void)_syncWidgetFieldType:(id)type
{
  isKindOfClass = type;
  v5 = isKindOfClass;
  if (isKindOfClass)
  {
    v14 = isKindOfClass;
    isKindOfClass = [isKindOfClass length];
    v5 = v14;
    if (isKindOfClass)
    {
      v6 = self->_private;
      if (v6->akAnnotation)
      {
        v7 = [objc_opt_class() _akAnnotationSubclassForWidgetFieldType:v14];
        v6 = self->_private;
        if (v7)
        {
          isKindOfClass = objc_opt_isKindOfClass();
          v5 = v14;
          if (isKindOfClass)
          {
            goto LABEL_13;
          }

          v6 = self->_private;
        }
      }

      WeakRetained = objc_loadWeakRetained(&v6->pdfAnnotation);
      v9 = [WeakRetained valueForAnnotationKey:@"/Subtype"];

      if ([v9 isEqualToString:@"/Widget"])
      {
        v10 = [objc_opt_class() _akAnnotationInstanceForPDFAnnotationSubtype:v9 withOptionalWidgetFieldType:v14];
        if (v10)
        {
          v11 = self->_private;
          akAnnotation = v11->akAnnotation;
          v11->akAnnotation = v10;
          v13 = v10;

          [(PDFAKAnnotationAdaptor *)self _startObservingAnnotation];
        }
      }

      else if (v9)
      {
        NSLog(&cfstr_SSettingWidget.isa, "[PDFAKAnnotationAdaptor _syncWidgetFieldType:]", v14, v9);
      }

      v5 = v14;
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8](isKindOfClass, v5);
}

- (void)_syncEverythingToAKAnnotation
{
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  annotationKeyValues = [pdfAnnotation annotationKeyValues];
  v5 = [annotationKeyValues mutableCopy];
  v6 = [pdfAnnotation valueForAnnotationKey:@"/Subtype"];
  sourceDictionary = [pdfAnnotation sourceDictionary];
  value = 0;
  [v5 removeObjectForKey:@"/Subtype"];
  [v5 removeObjectForKey:@"/AP"];
  [v5 removeObjectForKey:@"/P"];
  Dictionary = CGPDFDictionaryGetDictionary(sourceDictionary, "AAPL:AKExtras", &value);
  if (([v6 isEqualToString:@"/FreeText"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"/Text") & 1) == 0 && ((Dictionary | objc_msgSend(v6, "isEqualToString:", @"/Popup")) & 1) == 0)
  {
    [v5 removeObjectForKey:@"/Contents"];
  }

  [(PDFAKAnnotationAdaptor *)self didReplaceAllValuesWithNewDictionary:v5 andOldDictionary:MEMORY[0x1E695E0F8]];
  v9 = [annotationKeyValues objectForKey:@"/P"];
  if (v9)
  {
    [(PDFAKAnnotationAdaptor *)self didSetValue:v9 forAnnotationKey:@"/P"];
  }
}

- (void)_syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:(BOOL)override
{
  overrideCopy = override;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v7 = self->_private;
  isSyncingFromPDFAnnotation = v7->isSyncingFromPDFAnnotation;
  v7->isSyncingFromPDFAnnotation = 1;
  if ([pdfAnnotation appearance:0])
  {
    page = [pdfAnnotation page];
    if (!page)
    {
      NSLog(&cfstr_CouldNotSyncAp.isa);
      goto LABEL_12;
    }

    v10 = page;
    akPageAdaptor = [page akPageAdaptor];
    [akPageAdaptor initializeExifAndScaleOnAnnotation:akAnnotation];

    objc_initWeak(&location, pdfAnnotation);
    objc_initWeak(&from, akAnnotation);
    [pdfAnnotation bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __90__PDFAKAnnotationAdaptor__syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride___block_invoke;
    v27 = &unk_1E81512F0;
    objc_copyWeak(&v28, &location);
    v29[1] = v13;
    v29[2] = v15;
    v29[3] = v17;
    v29[4] = v19;
    objc_copyWeak(v29, &from);
    [akAnnotation setAppearanceOverride:&v24];
    if (overrideCopy)
    {
      v20 = [pdfAnnotation valueForAnnotationKey:{@"/Subtype", v24, v25, v26, v27}];
      if ([v20 isEqualToString:@"/Stamp"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"/Ink"))
      {
        v21 = 0;
      }

      else if ([v20 isEqualToString:@"/Widget"])
      {
        v22 = [pdfAnnotation valueForAnnotationKey:@"/FT"];
        v23 = [v22 isEqualToString:@"/Sig"];

        v21 = v23 ^ 1;
      }

      else
      {
        v21 = 1;
      }

      [akAnnotation setEditsDisableAppearanceOverride:v21 & 1];
    }

    objc_destroyWeak(v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [akAnnotation setAppearanceOverride:0];
  }

  self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
LABEL_12:
}

void __90__PDFAKAnnotationAdaptor__syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride___block_invoke(uint64_t a1, CGContext *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained appearance:0];
    if (v6)
    {
      v7 = v6;
      CGContextSaveGState(a2);
      v8 = +[PDFPage isNativeRotationDrawingEnabledForThisThread];
      [PDFPage setNativeRotationDrawingEnabledForThisThread:1];
      v9 = [v5 page];
      [v9 boundsForBox:0];
      v11 = v10;
      v13 = v12;

      if (v11 != *MEMORY[0x1E695EFF8] || v13 != *(MEMORY[0x1E695EFF8] + 8))
      {
        CGAffineTransformMakeTranslation(&v17, v11, v13);
        CGContextConcatCTM(a2, &v17);
      }

      [v5 drawAppearance:v7 withBox:0 inContext:a2 inRect:1 scaleProportional:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
      [PDFPage setNativeRotationDrawingEnabledForThisThread:v8];
      CGContextRestoreGState(a2);
    }

    else
    {
      v15 = objc_loadWeakRetained((a1 + 40));
      v16 = v15;
      if (v15)
      {
        [v15 setAppearanceOverride:0];
      }
    }
  }
}

- (void)_syncBorder:(id)border
{
  borderCopy = border;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v5 = [pdfAnnotation valueForAnnotationKey:@"/BS"];

  if (!v5)
  {
    akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    if (!borderCopy)
    {
      if (objc_opt_respondsToSelector())
      {
        [akAnnotation setStrokeWidth:1.0];
      }

      if (objc_opt_respondsToSelector())
      {
        [akAnnotation setCornerRadius:0.0];
      }

      if (objc_opt_respondsToSelector())
      {
        [akAnnotation setDashed:0];
      }

      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = borderCopy;
      if (objc_opt_respondsToSelector())
      {
        [v7 lineWidth];
        [akAnnotation setStrokeWidth:?];
      }

      if (objc_opt_respondsToSelector())
      {
        [v7 horizontalCornerRadius];
        v9 = v8;
        [v7 verticalCornerRadius];
        if (v9 >= v10)
        {
          v10 = v9;
        }

        [akAnnotation setCornerRadius:v10];
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_36;
      }

      if ([v7 style] == 1)
      {
        v11 = 1;
      }

      else
      {
        dashPattern = [v7 dashPattern];
        v11 = [dashPattern count] > 1;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_SUnexpectedBor.isa, "[PDFAKAnnotationAdaptor _syncBorder:]", borderCopy);
LABEL_37:

        goto LABEL_38;
      }

      v7 = borderCopy;
      v12 = [v7 count];
      if (v12 < 3)
      {
        v11 = 0;
        v22 = 1.0;
        v16 = 0.0;
        v19 = 0.0;
      }

      else
      {
        v13 = v12;
        v14 = [v7 objectAtIndex:0];
        [v14 doubleValue];
        v16 = v15;

        v17 = [v7 objectAtIndex:1];
        [v17 doubleValue];
        v19 = v18;

        v20 = [v7 objectAtIndex:2];
        [v20 doubleValue];
        v22 = v21;

        if (v13 == 3)
        {
          v11 = 0;
        }

        else
        {
          v24 = [v7 objectAtIndex:3];
          v11 = v24 != 0;
        }
      }

      if (objc_opt_respondsToSelector())
      {
        [akAnnotation setStrokeWidth:v22];
      }

      if (objc_opt_respondsToSelector())
      {
        if (v16 >= v19)
        {
          v25 = v16;
        }

        else
        {
          v25 = v19;
        }

        [akAnnotation setCornerRadius:v25];
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    [akAnnotation setDashed:v11];
    goto LABEL_36;
  }

LABEL_38:
}

- (void)_syncBorderStyle:(id)style
{
  styleCopy = style;
  if (styleCopy)
  {
    akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    v5 = [styleCopy objectForKey:@"/W"];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 doubleValue];
      [akAnnotation setStrokeWidth:?];
    }

    v6 = [styleCopy objectForKey:@"/S"];

    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [akAnnotation setDashed:{objc_msgSend(v6, "isEqualToString:", @"/D"}];
    }

    if (objc_opt_respondsToSelector())
    {
      [akAnnotation setCornerRadius:0.0];
    }
  }

  else
  {
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    akAnnotation = [pdfAnnotation valueForAnnotationKey:@"/Border"];

    [(PDFAKAnnotationAdaptor *)self _syncBorder:akAnnotation];
  }
}

- (void)_syncColor:(id)color
{
  colorCopy = color;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v6 = [pdfAnnotation valueForAnnotationKey:@"/Subtype"];
  v7 = [v6 isEqualToString:@"/FreeText"];

  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [(PDFAKAnnotationAdaptor *)self _colorFromColorOrArray:colorCopy];
    [akAnnotation setFillColor:v8];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [(PDFAKAnnotationAdaptor *)self _colorFromColorOrArray:colorCopy];
    [akAnnotation setStrokeColor:v8];
  }

LABEL_7:
}

- (void)_syncInteriorColor:(id)color
{
  colorCopy = color;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PDFAKAnnotationAdaptor *)self _colorFromColorOrArray:colorCopy];
    [akAnnotation setFillColor:v5];
  }
}

- (void)_syncContents:(id)contents
{
  contentsCopy = contents;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if ([akAnnotation conformsToProtocol:&unk_1F41CF078])
  {
    v5 = akAnnotation;
    if (contentsCopy)
    {
      typingAttributes = [v5 typingAttributes];
      v7 = [objc_alloc(MEMORY[0x1E69DB850]) initWithString:contentsCopy attributes:typingAttributes];
      [v5 setAnnotationText:v7];
    }

    else
    {
      [v5 setAnnotationText:0];
    }
  }
}

- (void)_syncDate:(id)date
{
  dateCopy = date;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  [akAnnotation setModificationDate:dateCopy];
}

- (void)_syncPage:(id)page
{
  if (page)
  {
    akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    appearanceOverride = [akAnnotation appearanceOverride];

    if (!appearanceOverride)
    {
      null = [MEMORY[0x1E695DFB0] null];
      [(PDFAKAnnotationAdaptor *)self didSetValue:null forAnnotationKey:@"/AP"];
    }
  }
}

- (void)_syncRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if (objc_opt_respondsToSelector())
  {
    [akAnnotation setRectangle:{x, y, width, height}];
  }
}

- (void)_syncDefaultAppearance:(id)appearance
{
  appearanceCopy = appearance;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if ([akAnnotation conformsToProtocol:&unk_1F41CF078])
  {
    v5 = akAnnotation;
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);
    v7 = [WeakRetained getFontFromAppearanceNSString:appearanceCopy];
    v8 = [WeakRetained getColorFromAppearanceNSString:appearanceCopy];
    if (v7 | v8)
    {
      annotationText = [v5 annotationText];
      typingAttributes = [v5 typingAttributes];
      v11 = [annotationText mutableCopy];
      v18 = typingAttributes;
      v12 = [typingAttributes mutableCopy];
      v13 = [annotationText length];
      if (v7)
      {
        v14 = *MEMORY[0x1E69DB648];
        [v11 addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{0, v13}];
        [v12 setObject:v7 forKey:v14];
      }

      if (v8)
      {
        v15 = *MEMORY[0x1E69DB650];
        [v11 addAttribute:*MEMORY[0x1E69DB650] value:v8 range:{0, v13}];
        [v12 setObject:v8 forKey:v15];
      }

      v16 = [objc_alloc(MEMORY[0x1E69DB850]) initWithAttributedString:v11];
      [v5 setAnnotationText:v16];

      v17 = [v12 copy];
      [v5 setTypingAttributes:v17];
    }
  }
}

- (void)_syncQuadding:(int64_t)quadding
{
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if (![akAnnotation conformsToProtocol:&unk_1F41CF078])
  {
    goto LABEL_21;
  }

  v5 = akAnnotation;
  annotationText = [v5 annotationText];
  v7 = annotationText;
  if (!annotationText)
  {
    v11 = 0;
    v9 = *MEMORY[0x1E69DB688];
LABEL_8:
    typingAttributes = [v5 typingAttributes];
    defaultParagraphStyle = [typingAttributes objectForKey:v9];

    if (!defaultParagraphStyle)
    {
      defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    }

    v12 = 0;
    goto LABEL_11;
  }

  v8 = [annotationText length];
  v9 = *MEMORY[0x1E69DB688];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_8;
  }

  defaultParagraphStyle = [v7 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:0];
  v11 = 1;
  v12 = 1;
  if (!defaultParagraphStyle)
  {
    goto LABEL_8;
  }

LABEL_11:
  if ([defaultParagraphStyle alignment] != quadding)
  {
    v23 = v12;
    v24 = v11;
    v27 = v7;
    typingAttributes2 = [v5 typingAttributes];
    v14 = [typingAttributes2 mutableCopy];
    typingAttributes3 = [v5 typingAttributes];
    v16 = [typingAttributes3 objectForKey:v9];
    v17 = [v16 mutableCopy];

    if (!v17)
    {
      defaultParagraphStyle2 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
      v17 = [defaultParagraphStyle2 mutableCopy];
    }

    [v17 setAlignment:quadding];
    [v14 setObject:v17 forKey:v9];
    v19 = [v14 copy];
    [v5 setTypingAttributes:v19];

    if (v24)
    {
      v20 = [v27 mutableCopy];
      v25 = [v27 length];
      if (v23)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __40__PDFAKAnnotationAdaptor__syncQuadding___block_invoke;
        v28[3] = &unk_1E8151318;
        quaddingCopy = quadding;
        v29 = v20;
        [v27 enumerateAttribute:v9 inRange:0 options:v25 usingBlock:{0x100000, v28}];
      }

      else
      {
        v21 = [v17 copy];
        [v20 addAttribute:v9 value:v21 range:{0, v25}];
      }

      v22 = [objc_alloc(MEMORY[0x1E69DB850]) initWithAttributedString:v20];
      [v5 setAnnotationText:v22];
    }
  }

LABEL_21:
}

void __40__PDFAKAnnotationAdaptor__syncQuadding___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 mutableCopy];
  [v7 setAlignment:*(a1 + 40)];
  [*(a1 + 32) addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{a3, a4}];
}

- (void)_syncLinePoints:(id)points
{
  pointsCopy = points;
  if (pointsCopy)
  {
    v19 = pointsCopy;
    akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    AKArrowAnnotationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = akAnnotation;
      v7 = [v19 objectAtIndex:0];
      [v7 doubleValue];
      v9 = v8;

      v10 = [v19 objectAtIndex:1];
      [v10 doubleValue];
      v12 = v11;

      v13 = [v19 objectAtIndex:2];
      [v13 doubleValue];
      v15 = v14;

      v16 = [v19 objectAtIndex:3];
      [v16 doubleValue];
      v18 = v17;

      [v6 setStartPoint:{v9, v12}];
      [v6 setEndPoint:{v15, v18}];
      [v6 setMidPoint:{(v9 + v15) * 0.5, (v12 + v18) * 0.5}];
    }

    pointsCopy = v19;
  }
}

- (void)_syncLineEndingStyles:(id)styles
{
  stylesCopy = styles;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  AKArrowAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = akAnnotation;
    v6 = [stylesCopy objectAtIndex:0];
    v7 = [stylesCopy objectAtIndex:1];
    v8 = [v6 isEqualToString:@"/None"];
    v9 = [v7 isEqualToString:@"/None"];
    v10 = 3;
    if ((v8 | v9))
    {
      v10 = 1;
    }

    v11 = 2;
    if (v9)
    {
      v11 = 0;
    }

    if (v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    [v5 setArrowHeadStyle:v12];
  }
}

- (void)_syncParent:(id)parent
{
  parentCopy = parent;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = parentCopy;
  }

  else
  {
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    page = [pdfAnnotation page];
    v7 = [page annotationWithUUID:parentCopy];
  }

  akAnnotationAdaptor = [v7 akAnnotationAdaptor];
  akAnnotation2 = [akAnnotationAdaptor akAnnotation];

  if ([akAnnotation conformsToProtocol:&unk_1F41CF0D8] && ((objc_msgSend(akAnnotation2, "conformsToProtocol:", &unk_1F41CF138) & 1) != 0 || !akAnnotation2))
  {
    [akAnnotation setParentAnnotation:akAnnotation2];
  }
}

- (void)_syncPopup:(id)popup
{
  popupCopy = popup;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = popupCopy;
  }

  else
  {
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    page = [pdfAnnotation page];
    v7 = [page annotationWithUUID:popupCopy];
  }

  akAnnotationAdaptor = [v7 akAnnotationAdaptor];
  akAnnotation2 = [akAnnotationAdaptor akAnnotation];

  if ([akAnnotation conformsToProtocol:&unk_1F41CF138] && ((objc_msgSend(akAnnotation2, "conformsToProtocol:", &unk_1F41CF0D8) & 1) != 0 || !akAnnotation2))
  {
    [akAnnotation setChildAnnotation:akAnnotation2];
  }
}

- (void)_syncTextLabel:(id)label
{
  labelCopy = label;
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  if ([pdfAnnotation isMarkupAnnotation])
  {
    [akAnnotation setAuthor:labelCopy];
  }

  else
  {
    AKTextFieldAnnotationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [akAnnotation setFieldName:labelCopy];
    }
  }
}

- (void)_syncEverythingToPDFAnnotation
{
  v37 = *MEMORY[0x1E69E9840];
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = self->_private;
  isSyncingFromAKAnnotation = v5->isSyncingFromAKAnnotation;
  v5->isSyncingFromAKAnnotation = 1;
  v6 = MEMORY[0x1E696B098];
  [akAnnotation drawingBounds];
  [v6 PDFKitValueWithPDFRect:?];
  v24 = v26 = pdfAnnotation;
  [pdfAnnotation setValue:? forAnnotationKey:?];
  keysForValuesToObserveForUndo = [akAnnotation keysForValuesToObserveForUndo];
  v8 = [keysForValuesToObserveForUndo mutableCopy];

  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4183F40];
  [v8 minusSet:v9];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v13 = *MEMORY[0x1E696A4E8];
    v14 = *MEMORY[0x1E696A4F0];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [akAnnotation valueForKey:v16];
        v18 = v17;
        if (v17)
        {
          v34[0] = v13;
          v34[1] = v14;
          v35[0] = &unk_1F4184108;
          v35[1] = v17;
          v19 = MEMORY[0x1E695DF20];
          v20 = v35;
          v21 = v34;
          v22 = 2;
        }

        else
        {
          v32 = v13;
          v33 = &unk_1F4184120;
          v19 = MEMORY[0x1E695DF20];
          v20 = &v33;
          v21 = &v32;
          v22 = 1;
        }

        v23 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
        [(PDFAKAnnotationAdaptor *)self observeValueForKeyPath:v16 ofObject:akAnnotation change:v23 context:@"PDFAKAnnotationAdaptor.annotationPropertyObservationContext"];
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v11);
  }

  self->_private->isSyncingFromAKAnnotation = isSyncingFromAKAnnotation;
}

- (void)_startObservingAnnotation
{
  v15 = *MEMORY[0x1E69E9840];
  if (GetDefaultsWriteAKEnabled())
  {
    v3 = self->_private;
    if (!v3->isObservingAKAnnotation)
    {
      v3->isObservingAKAnnotation = 1;
      akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
      keysForValuesToObserveForUndo = [akAnnotation keysForValuesToObserveForUndo];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(keysForValuesToObserveForUndo);
            }

            [akAnnotation addObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v9++) options:3 context:@"PDFAKAnnotationAdaptor.annotationPropertyObservationContext"];
          }

          while (v7 != v9);
          v7 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)_stopObservingAnnotation
{
  v14 = *MEMORY[0x1E69E9840];
  if (GetDefaultsWriteAKEnabled() && self->_private->isObservingAKAnnotation)
  {
    akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    keysForValuesToObserveForUndo = [akAnnotation keysForValuesToObserveForUndo];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(keysForValuesToObserveForUndo);
          }

          [akAnnotation removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [keysForValuesToObserveForUndo countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    self->_private->isObservingAKAnnotation = 0;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == @"PDFAKAnnotationAdaptor.annotationPropertyObservationContext")
  {
    if (self->_private->isSyncingFromPDFAnnotation)
    {
      goto LABEL_51;
    }

    v13 = objectCopy;
    akAnnotation = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    v15 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    v16 = [changeCopy objectForKey:*MEMORY[0x1E696A500]];
    if (!v15 || [v15 isEqual:v16])
    {
      v17 = [changeCopy objectForKey:*MEMORY[0x1E696A4E8]];
      if ([v17 integerValue] == 3)
      {
      }

      else
      {
        v18 = [pathCopy isEqualToString:@"drawing"];

        if (!v18)
        {
LABEL_50:

          goto LABEL_51;
        }
      }
    }

    v19 = self->_private;
    isSyncingFromAKAnnotation = v19->isSyncingFromAKAnnotation;
    v19->isSyncingFromAKAnnotation = 1;
    if ([pathCopy isEqualToString:@"isEdited"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"shouldObserveEdits"))
    {
LABEL_49:
      self->_private->isSyncingFromAKAnnotation = isSyncingFromAKAnnotation;
      goto LABEL_50;
    }

    if (([pathCopy isEqualToString:@"typingAttributes"] & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"shouldUseAppearanceOverride") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"horizontallyFlipped") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"verticallyFlipped") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"magnification") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"brushStyle") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"image") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"drawing") & 1) == 0)
    {
      if (([pathCopy isEqualToString:@"midPoint"] & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"arrowHeadLength") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"arrowHeadWidth") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"arrowLineWidth") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"pointyBitPoint") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"pointyBitBaseWidthAngle") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"rotationAngle") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"pointCount") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"innerRadiusFactor") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"hasShadow") & 1) == 0 && (objc_msgSend(pathCopy, "isEqualToString:", @"signature") & 1) == 0)
      {
        if ([pathCopy isEqualToString:@"author"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncAuthorForAnnotation:v13 withKey:pathCopy andNewValue:v15];
        }

        else if ([pathCopy isEqualToString:@"modificationDate"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncModificationDateForAnnotation:v13 withKey:pathCopy andNewValue:v15];
        }

        else if ([pathCopy isEqualToString:@"annotationText"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncAnnotationTextForAnnotation:v13 withKey:pathCopy andNewValue:v15];
        }

        else if ([pathCopy isEqualToString:@"contents"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncContentsForAnnotation:v13 withKey:pathCopy andNewValue:v15];
        }

        else if (([pathCopy isEqualToString:@"rectangle"] & 1) == 0)
        {
          if ([pathCopy isEqualToString:@"startPoint"])
          {
            [(PDFAKAnnotationAdaptor *)self _syncStartPointForAnnotation:v13 withKey:pathCopy andNewValue:v15];
          }

          else if ([pathCopy isEqualToString:@"endPoint"])
          {
            [(PDFAKAnnotationAdaptor *)self _syncEndPointForAnnotation:v13 withKey:pathCopy andNewValue:v15];
          }

          else if ([pathCopy isEqualToString:@"strokeWidth"])
          {
            [(PDFAKAnnotationAdaptor *)self _syncStrokeWidthForAnnotation:v13 withKey:pathCopy andNewValue:v15];
          }

          else
          {
            if (([pathCopy isEqualToString:@"strokeColor"] & 1) != 0 || (objc_msgSend(pathCopy, "isEqualToString:", @"fillColor") & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"color"))
            {
              [(PDFAKAnnotationAdaptor *)self _syncColorForAnnotation:v13 withKey:pathCopy andNewValue:v15];
              goto LABEL_46;
            }

            if ([pathCopy isEqualToString:@"arrowHeadStyle"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncArrowHeadStyleForAnnotation:v13 withKey:pathCopy andNewValue:v15];
            }

            else if ([pathCopy isEqualToString:@"dashed"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncDashedForAnnotation:v13 withKey:pathCopy andNewValue:v15];
            }

            else if ([pathCopy isEqualToString:@"cornerRadius"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncCornerRadiusForAnnotation:v13 withKey:pathCopy andNewValue:v15];
            }

            else if ([pathCopy isEqualToString:@"path"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncInkPathForAnnotation:v13 withKey:pathCopy andNewValue:v15];
            }

            else if ([pathCopy isEqualToString:@"childAnnotation"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncChildAnnotationForAnnotation:v13 withKey:pathCopy andNewValue:v15];
            }

            else
            {
              NSLog(&cfstr_UnhandledAkPro.isa, pathCopy);
            }
          }
        }
      }

      [(PDFAKAnnotationAdaptor *)self _syncBoundingRectangleForAnnotation:v13 withKey:pathCopy andNewValue:v15];
    }

LABEL_46:
    [(PDFAKAnnotationAdaptor *)self _invalidateAppearanceStreamForAnnotation:v13 withKey:pathCopy andNewValue:v15];
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);
    if ([WeakRetained isFullyConstructed])
    {
      [WeakRetained page];
      v27 = v15;
      v22 = v16;
      v23 = v13;
      v24 = akAnnotation;
      v26 = v25 = isSyncingFromAKAnnotation;
      [v26 postAnnotationsChangedNotification];

      isSyncingFromAKAnnotation = v25;
      akAnnotation = v24;
      v13 = v23;
      v16 = v22;
      v15 = v27;
    }

    goto LABEL_49;
  }

  v28.receiver = self;
  v28.super_class = PDFAKAnnotationAdaptor;
  [(PDFAKAnnotationAdaptor *)&v28 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
LABEL_51:
}

- (void)_syncBoundingRectangleForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  annotationCopy = annotation;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  [annotationCopy drawingBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v8, v10, v12, v14}];
  [pdfAnnotation setValue:v15 forAnnotationKey:@"/Rect"];
}

- (void)_syncAuthorForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v8 = valueCopy;
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    if ([pdfAnnotation isMarkupAnnotation])
    {
      [pdfAnnotation setValue:v8 forAnnotationKey:@"/T"];
    }

    valueCopy = v8;
  }
}

- (void)_syncModificationDateForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    v8 = valueCopy;
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    [pdfAnnotation setValue:v8 forAnnotationKey:@"/M"];

    valueCopy = v8;
  }
}

- (void)_syncAnnotationTextForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  valueCopy = value;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  null = [MEMORY[0x1E695DFB0] null];

  v8 = valueCopy;
  if (null == valueCopy)
  {

    v8 = 0;
  }

  v14 = v8;
  string = [v8 string];
  v10 = @"/Contents";
  v11 = [pdfAnnotation valueForAnnotationKey:@"/Subtype"];
  if ([v11 isEqualToString:@"/Widget"])
  {
    v12 = @"/V";

    v10 = v12;
  }

  if (string)
  {
    [pdfAnnotation setValue:string forAnnotationKey:v10];
  }

  else
  {
    [pdfAnnotation removeValueForAnnotationKey:v10];
  }
}

- (void)_syncContentsForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  valueCopy = value;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v7 = [pdfAnnotation valueForAnnotationKey:@"/Subtype"];
  if (([v7 isEqualToString:@"/Text"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/Popup"))
  {
    v8 = valueCopy;
    [pdfAnnotation setValue:v8 forAnnotationKey:@"/Contents"];
    if ([v7 isEqualToString:@"/Popup"])
    {
      parent = [pdfAnnotation parent];

      if (parent)
      {
        parent2 = [pdfAnnotation parent];
        [parent2 setValue:v8 forAnnotationKey:@"/Contents"];
      }
    }
  }

  else
  {
    NSLog(&cfstr_SWasnTExpectin.isa, "[PDFAKAnnotationAdaptor _syncContentsForAnnotation:withKey:andNewValue:]");
  }
}

- (void)_syncStartPointForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  valueCopy = value;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  [pdfAnnotation bounds];
  v8 = v7;
  v10 = v9;
  [valueCopy PDFKitPDFPointValue];
  [pdfAnnotation setStartPoint:{v11 - v8, v12 - v10}];
}

- (void)_syncEndPointForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  valueCopy = value;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  [pdfAnnotation bounds];
  v8 = v7;
  v10 = v9;
  [valueCopy PDFKitPDFPointValue];
  [pdfAnnotation setEndPoint:{v11 - v8, v12 - v10}];
}

- (void)_syncStrokeWidthForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  annotationCopy = annotation;
  [value doubleValue];
  v8 = v7;
  if (objc_opt_respondsToSelector())
  {
    isDashed = [annotationCopy isDashed];
  }

  else
  {
    isDashed = 0;
  }

  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v11 = [pdfAnnotation valueForAnnotationKey:@"/Border"];
  if (!v11)
  {
    v11 = objc_alloc_init(PDFBorder);
    [pdfAnnotation setValue:v11 forAnnotationKey:@"/Border"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDFBorder *)v11 setLineWidth:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(PDFBorder *)v11 mutableCopy];
      if ([v12 count] >= 3)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
        [v12 replaceObjectAtIndex:2 withObject:v13];
        [pdfAnnotation setValue:v12 forAnnotationKey:@"/Border"];
      }
    }
  }

  v14 = [pdfAnnotation valueForAnnotationKey:@"/BS"];

  if (v14)
  {
    v15 = [v14 mutableCopy];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [v15 setObject:v16 forKey:@"/W"];

    [pdfAnnotation setValue:v15 forAnnotationKey:@"/BS"];
  }

  if (isDashed)
  {
    [(PDFAKAnnotationAdaptor *)self _updateDashedPatternForStrokeWidth:1 isDashed:v8];
  }
}

- (void)_syncColorForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if ([keyCopy isEqualToString:@"strokeColor"])
  {
LABEL_2:
    v8 = &PDFAnnotationKeyColor;
    goto LABEL_5;
  }

  if (([keyCopy isEqualToString:@"fillColor"] & 1) == 0)
  {
    if (![keyCopy isEqualToString:@"color"])
    {
      goto LABEL_7;
    }

    goto LABEL_2;
  }

  v8 = &PDFAnnotationKeyInteriorColor;
LABEL_5:
  v9 = *v8;
  if (v9)
  {
    v10 = v9;
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    [pdfAnnotation setValue:valueCopy forAnnotationKey:v10];
  }

LABEL_7:
}

- (void)_syncArrowHeadStyleForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  v14[2] = *MEMORY[0x1E69E9840];
  integerValue = [value integerValue];
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v8 = integerValue - 1;
  if ((integerValue - 1) > 2)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v9 = qword_1C1D79C10[v8];
    v10 = qword_1C1D79C28[v8];
  }

  v11 = [PDFAnnotation nameForLineStyle:v9];
  v12 = [PDFAnnotation nameForLineStyle:v10];
  v14[0] = v11;
  v14[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [pdfAnnotation setValue:v13 forAnnotationKey:@"/LE"];
}

- (void)_syncDashedForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  annotationCopy = annotation;
  bOOLValue = [value BOOLValue];
  if (objc_opt_respondsToSelector())
  {
    [annotationCopy strokeWidth];
    v9 = v8;
  }

  else
  {
    pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    v11 = [pdfAnnotation valueForAnnotationKey:@"/Border"];

    if (v11)
    {
      [v11 lineWidth];
      v9 = v12;
    }

    else
    {
      v9 = 1.0;
    }
  }

  [(PDFAKAnnotationAdaptor *)self _updateDashedPatternForStrokeWidth:bOOLValue isDashed:v9];
}

- (void)_updateDashedPatternForStrokeWidth:(double)width isDashed:(BOOL)dashed
{
  dashedCopy = dashed;
  v16[2] = *MEMORY[0x1E69E9840];
  if (width <= 0.0)
  {
    widthCopy = 1.0;
  }

  else
  {
    widthCopy = width;
  }

  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v7 = [pdfAnnotation valueForAnnotationKey:@"/Border"];
  if (!v7)
  {
    v7 = objc_alloc_init(PDFBorder);
    [pdfAnnotation setValue:v7 forAnnotationKey:@"/Border"];
  }

  if (dashedCopy)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:widthCopy * 3.0 + 4.0];
    v16[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:widthCopy + 7.0];
    v16[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    [(PDFBorder *)v11 setStyle:dashedCopy];
    [(PDFBorder *)v11 setDashPattern:v10];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v10)
  {
    v11 = [(PDFBorder *)v7 mutableCopy];
    if ([(PDFBorder *)v11 count]>= 4)
    {
      [(PDFBorder *)v11 replaceObjectAtIndex:3 withObject:v10];
      [pdfAnnotation setValue:v11 forAnnotationKey:@"/Border"];
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = [pdfAnnotation valueForAnnotationKey:@"/BS"];

  if (v12)
  {
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (dashedCopy)
    {
      [v13 setObject:@"/D" forKey:@"/S"];
      v15 = [v10 copy];

      [v14 setObject:v15 forKey:@"/D"];
      v10 = v15;
    }

    else
    {
      [v13 setObject:@"/S" forKey:@"/S"];
      [v14 removeObjectForKey:@"/D"];
    }

    [pdfAnnotation setValue:v14 forAnnotationKey:@"/BS"];
  }
}

- (void)_syncCornerRadiusForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  [value doubleValue];
  v7 = v6;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v8 = [pdfAnnotation valueForAnnotationKey:@"/Border"];
  if (!v8)
  {
    v8 = objc_alloc_init(PDFBorder);
    [pdfAnnotation setValue:v8 forAnnotationKey:@"/Border"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    [(PDFBorder *)v9 setHorizontalCornerRadius:v7];
    [(PDFBorder *)v9 setVerticalCornerRadius:v7];
LABEL_5:

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(PDFBorder *)v8 mutableCopy];
    if ([(PDFBorder *)v9 count]>= 2)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
      [(PDFBorder *)v9 replaceObjectAtIndex:0 withObject:v10];
      [(PDFBorder *)v9 replaceObjectAtIndex:1 withObject:v11];
      [pdfAnnotation setValue:v9 forAnnotationKey:@"/Border"];
    }

    goto LABEL_5;
  }

LABEL_9:
}

- (void)_syncChildAnnotationForAnnotation:(id)annotation withKey:(id)key andNewValue:(id)value
{
  v28 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  pdfAnnotation = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  null = [MEMORY[0x1E695DFB0] null];

  if (null != valueCopy)
  {
    v9 = valueCopy;
    if (v9)
    {
      v10 = v9;
      v11 = pdfAnnotation;
      page = [v11 page];
      v13 = page;
      if (page)
      {
        v22 = v11;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        annotations = [page annotations];
        v15 = [annotations countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v24;
LABEL_6:
          v18 = 0;
          while (1)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(annotations);
            }

            akAnnotationAdaptor = [*(*(&v23 + 1) + 8 * v18) akAnnotationAdaptor];
            akAnnotation = [akAnnotationAdaptor akAnnotation];

            if (akAnnotation == v10)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [annotations countByEnumeratingWithState:&v23 objects:v27 count:16];
              if (v16)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          pdfAnnotation2 = [akAnnotationAdaptor pdfAnnotation];

          v11 = v22;
          if (!pdfAnnotation2)
          {
            goto LABEL_16;
          }

          [v22 setPopupInternal:pdfAnnotation2 scanPage:0];

          goto LABEL_17;
        }

LABEL_12:

        v11 = v22;
      }

LABEL_16:
      NSLog(&cfstr_SDidNotFindPdf.isa, "[PDFAKAnnotationAdaptor _syncChildAnnotationForAnnotation:withKey:andNewValue:]", v10);
LABEL_17:

      goto LABEL_18;
    }
  }

  [pdfAnnotation setPopupInternal:0 scanPage:0];
LABEL_18:
}

+ (id)_akAnnotationInstanceForPDFAnnotationSubtype:(id)subtype withOptionalWidgetFieldType:(id)type
{
  subtypeCopy = subtype;
  typeCopy = type;
  if ([subtypeCopy isEqualToString:@"/Link"] || objc_msgSend(subtypeCopy, "isEqualToString:", @"/Text"))
  {
    goto LABEL_3;
  }

  if ([subtypeCopy isEqualToString:@"/FreeText"])
  {
    AKTextBoxAnnotationClass();
  }

  else if ([subtypeCopy isEqualToString:@"/Line"])
  {
    AKArrowAnnotationClass();
  }

  else if ([subtypeCopy isEqualToString:@"/Square"])
  {
    AKRectAnnotationClass();
  }

  else if ([subtypeCopy isEqualToString:@"/Circle"])
  {
    AKOvalAnnotationClass();
  }

  else
  {
    if ([subtypeCopy isEqualToString:@"/Highlight"] || objc_msgSend(subtypeCopy, "isEqualToString:", @"/Underline") || objc_msgSend(subtypeCopy, "isEqualToString:", @"/StrikeOut"))
    {
      goto LABEL_3;
    }

    if ([subtypeCopy isEqualToString:@"/Ink"] || (objc_msgSend(subtypeCopy, "isEqualToString:", @"/Stamp") & 1) != 0 || objc_msgSend(subtypeCopy, "isEqualToString:", @"/SN"))
    {
      AKImageAnnotationClass();
      goto LABEL_12;
    }

    if ([subtypeCopy isEqualToString:@"/Popup"] || objc_msgSend(subtypeCopy, "isEqualToString:", @"/Redact"))
    {
      goto LABEL_3;
    }

    if (![subtypeCopy isEqualToString:@"/Widget"])
    {
      if (![subtypeCopy isEqualToString:@"/Redact"])
      {
        NSLog(&cfstr_SUnhandledAnno.isa, "+[PDFAKAnnotationAdaptor _akAnnotationInstanceForPDFAnnotationSubtype:withOptionalWidgetFieldType:]", subtypeCopy);
      }

      goto LABEL_3;
    }

    if (![self _akAnnotationSubclassForWidgetFieldType:typeCopy])
    {
LABEL_3:
      null = [MEMORY[0x1E695DFB0] null];
      goto LABEL_13;
    }
  }

LABEL_12:
  null = objc_opt_new();
LABEL_13:
  v9 = null;

  return v9;
}

+ (id)_pdfAnnotationInstanceForAKAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v4 = [PDFAnnotation alloc];
  v5 = [(PDFAnnotation *)v4 initWithBounds:&stru_1F416DF70 forType:0 withProperties:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  AKTextBoxAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &PDFAnnotationSubtypeFreeText;
LABEL_5:
    [(PDFAnnotation *)v5 setValue:*v6 forAnnotationKey:@"/Subtype"];
    goto LABEL_6;
  }

  AKRectAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &PDFAnnotationSubtypeSquare;
    goto LABEL_5;
  }

  AKRedactionRectAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDFAnnotation *)v5 setValue:@"/Square" forAnnotationKey:@"/Subtype"];
    if (GetDefaultsWriteHighlightRedactions())
    {
      [annotationCopy setIsHighlighted:1];
    }

    goto LABEL_6;
  }

  AKOvalAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &PDFAnnotationSubtypeCircle;
    goto LABEL_5;
  }

  AKArrowShapeAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_18;
  }

  AKArrowAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = &PDFAnnotationSubtypeLine;
    goto LABEL_5;
  }

  AKDoodleAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_18;
  }

  AKInkAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDFAnnotation *)v5 setValue:@"/Square" forAnnotationKey:@"/Subtype"];
    displayName = objc_alloc_init(PDFBorder);
    [(PDFBorder *)displayName setLineWidth:0.0];
    [(PDFAnnotation *)v5 setValue:displayName forAnnotationKey:@"/Border"];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PDFAnnotation *)v5 setValue:clearColor forAnnotationKey:@"/C"];
    [(PDFAnnotation *)v5 setValue:clearColor forAnnotationKey:@"/IC"];
    [(PDFAnnotation *)v5 setReadOnlyAnnotation:1];
    [(PDFAnnotation *)v5 setLocked:1];
    [(PDFAnnotation *)v5 setContentsLocked:1];

LABEL_24:
    goto LABEL_6;
  }

  AKLoupeAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (AKThoughtBubbleAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKSpeechBubbleAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKTriangleAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKPolygonAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKStarAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKHeartAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKBorderMaskAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()) || (AKImageAnnotationClass(), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
LABEL_18:
    v6 = &PDFAnnotationSubtypeStamp;
    goto LABEL_5;
  }

  AKSignatureAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(PDFAnnotation *)v5 setValue:@"/SN" forAnnotationKey:@"/Subtype"];
    displayName = [annotationCopy displayName];
    if (displayName)
    {
      [(PDFAnnotation *)v5 setFieldName:displayName];
    }

    [(PDFAnnotation *)v5 setShouldBurnIn:1];
    goto LABEL_24;
  }

  AKCropAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    null = [MEMORY[0x1E695DFB0] null];

    v5 = null;
  }

LABEL_6:
  if (v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];

    if (null2 != v5)
    {
      -[PDFAnnotation setShouldBurnIn:](v5, "setShouldBurnIn:", [annotationCopy shouldBurnIn]);
    }
  }

  return v5;
}

- (id)_colorFromColorOrArray:(id)array
{
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = arrayCopy;
  }

  else
  {
    v4 = PDFColorCreateFromNSArray(arrayCopy);
  }

  v5 = v4;

  return v5;
}

@end