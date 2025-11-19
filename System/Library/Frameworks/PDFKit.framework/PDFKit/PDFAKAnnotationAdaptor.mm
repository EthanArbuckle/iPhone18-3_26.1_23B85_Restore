@interface PDFAKAnnotationAdaptor
+ (PDFAKAnnotationAdaptor)annotationAdaptorWithPDFAnnotation:(id)a3 andCGPDFAnnotation:(CGPDFAnnotation *)a4 andPDFDictionary:(CGPDFDictionary *)a5 updatePDFAnnotationIfNeeded:(BOOL)a6;
+ (id)_akAnnotationInstanceForPDFAnnotationSubtype:(id)a3 withOptionalWidgetFieldType:(id)a4;
+ (id)_pdfAnnotationInstanceForAKAnnotation:(id)a3;
+ (id)getPDFAnnotationAssociatedWith:(id)a3;
+ (id)newPDFAnnotationFromAKAnnotation:(id)a3;
+ (void)associatePDFAnnotation:(id)a3 withAKAnnotation:(id)a4;
- (PDFAKAnnotationAdaptor)initWithPDFAnnotation:(id)a3 andAKAnnotation:(id)a4;
- (PDFAnnotation)pdfAnnotation;
- (id)_colorFromColorOrArray:(id)a3;
- (void)_startObservingAnnotation;
- (void)_stopObservingAnnotation;
- (void)_syncAnnotationTextForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:(BOOL)a3;
- (void)_syncArrowHeadStyleForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncAuthorForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncBorder:(id)a3;
- (void)_syncBorderStyle:(id)a3;
- (void)_syncBoundingRectangleForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncChildAnnotationForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncColor:(id)a3;
- (void)_syncColorForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncContents:(id)a3;
- (void)_syncContentsForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncCornerRadiusForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncDashedForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncDate:(id)a3;
- (void)_syncDefaultAppearance:(id)a3;
- (void)_syncEndPointForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncEverythingToAKAnnotation;
- (void)_syncEverythingToPDFAnnotation;
- (void)_syncInteriorColor:(id)a3;
- (void)_syncLineEndingStyles:(id)a3;
- (void)_syncLinePoints:(id)a3;
- (void)_syncModificationDateForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncPage:(id)a3;
- (void)_syncParent:(id)a3;
- (void)_syncPopup:(id)a3;
- (void)_syncQuadding:(int64_t)a3;
- (void)_syncRect:(CGRect)a3;
- (void)_syncStartPointForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncStrokeWidthForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5;
- (void)_syncSubtype:(id)a3;
- (void)_syncTextLabel:(id)a3;
- (void)_syncWidgetFieldType:(id)a3;
- (void)_teardown;
- (void)_updateDashedPatternForStrokeWidth:(double)a3 isDashed:(BOOL)a4;
- (void)dealloc;
- (void)didRemoveValueForAnnotationKey:(id)a3;
- (void)didReplaceAllValuesWithNewDictionary:(id)a3 andOldDictionary:(id)a4;
- (void)didSetValue:(id)a3 forAnnotationKey:(id)a4;
- (void)invalidateAppearanceStream;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)teardown;
@end

@implementation PDFAKAnnotationAdaptor

+ (PDFAKAnnotationAdaptor)annotationAdaptorWithPDFAnnotation:(id)a3 andCGPDFAnnotation:(CGPDFAnnotation *)a4 andPDFDictionary:(CGPDFDictionary *)a5 updatePDFAnnotationIfNeeded:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [v10 valueForAnnotationKey:@"/Subtype"];
  v12 = 0;
  if (!a4 || !a5 || ([PDFAKAnnotationSerializationHelper akAnnotationFromCGPDFAnnotation:a4 andDictionary:a5], v13 = objc_claimAutoreleasedReturnValue(), v12 = v13 != 0, !v13))
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
      v14 = [v10 valueForAnnotationKey:@"/FT"];
      if ([v14 length])
      {
        v13 = [a1 _akAnnotationInstanceForPDFAnnotationSubtype:v11 withOptionalWidgetFieldType:v14];
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
      v13 = [a1 _akAnnotationInstanceForPDFAnnotationSubtype:v11 withOptionalWidgetFieldType:0];
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

  v17 = [[a1 alloc] initWithPDFAnnotation:v10 andAKAnnotation:v13];
  v15 = v17;
  if (v12)
  {
    [v17 _syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:0];
    if (v6)
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

+ (id)newPDFAnnotationFromAKAnnotation:(id)a3
{
  v5 = a3;
  if (GetDefaultsWriteAKEnabled())
  {
    v6 = [a1 _pdfAnnotationInstanceForAKAnnotation:v5];
    v7 = [MEMORY[0x1E695DFB0] null];

    if (v6 == v7)
    {
      v9 = 0;
    }

    else
    {
      [v6 setupAKAnnotationAdaptorIfNecessary];
      v8 = [v6 akAnnotationAdaptor];
      [v8 _stopObservingAnnotation];
      objc_storeStrong((v8[1] + 24), a3);
      [v8 _syncEverythingToPDFAnnotation];
      [v8 _startObservingAnnotation];
      [a1 associatePDFAnnotation:v6 withAKAnnotation:v5];
      v9 = v6;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PDFAKAnnotationAdaptor)initWithPDFAnnotation:(id)a3 andAKAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PDFAKAnnotationAdaptor;
  v8 = [(PDFAKAnnotationAdaptor *)&v12 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = v8->_private;
    v8->_private = v9;

    objc_storeWeak(&v8->_private->pdfAnnotation, v6);
    objc_storeStrong(&v8->_private->akAnnotation, a4);
    if (v7)
    {
      [objc_opt_class() associatePDFAnnotation:v6 withAKAnnotation:v7];
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

+ (id)getPDFAnnotationAssociatedWith:(id)a3
{
  v3 = objc_getAssociatedObject(a3, @"PDFAnnotationAssociatedObjectKey");
  v4 = [v3 weakObjectValue];

  return v4;
}

+ (void)associatePDFAnnotation:(id)a3 withAKAnnotation:(id)a4
{
  v5 = MEMORY[0x1E696B098];
  v6 = a4;
  v7 = [v5 valueWithWeakObject:a3];
  objc_setAssociatedObject(v6, @"PDFAnnotationAssociatedObjectKey", v7, 0x301);
}

- (void)didSetValue:(id)a3 forAnnotationKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  v8 = self->_private;
  if (!v8->isSyncingFromAKAnnotation)
  {
    isSyncingFromPDFAnnotation = v8->isSyncingFromPDFAnnotation;
    v8->isSyncingFromPDFAnnotation = 1;
    if ([v6 isEqualToString:@"/Subtype"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncSubtype:v12];
    }

    else if ([v7 isEqualToString:@"/Rect"])
    {
      [v12 PDFKitPDFRectValue];
      [(PDFAKAnnotationAdaptor *)self _syncRect:?];
    }

    else if ([v7 isEqualToString:@"/L"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncLinePoints:v12];
    }

    else if ([v7 isEqualToString:@"/C"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncColor:v12];
    }

    else if ([v7 isEqualToString:@"/IC"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncInteriorColor:v12];
    }

    else if ([v7 isEqualToString:@"/Contents"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncContents:v12];
    }

    else if ([v7 isEqualToString:@"/T"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncTextLabel:v12];
    }

    else if ([v7 isEqualToString:@"/Border"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncBorder:v12];
    }

    else if ([v7 isEqualToString:@"/BS"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncBorderStyle:v12];
    }

    else if ([v7 isEqualToString:@"/LE"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncLineEndingStyles:v12];
    }

    else if ([v7 isEqualToString:@"/Q"])
    {
      v10 = [v12 integerValue];
      if (v10 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (v10 == 2);
      }

      [(PDFAKAnnotationAdaptor *)self _syncQuadding:v11];
    }

    else if ([v7 isEqualToString:@"/InkList"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncInklist:v12];
    }

    else if ([v7 isEqualToString:@"/Name"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncIconName:v12];
    }

    else if ([v7 isEqualToString:@"/H"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncHighlightingMode:v12];
    }

    else if ([v7 isEqualToString:@"/AP"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:0];
    }

    else if ([v7 isEqualToString:@"/AS"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAppearanceState:v12];
    }

    else if ([v7 isEqualToString:@"/DA"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncDefaultAppearance:v12];
    }

    else if ([v7 isEqualToString:@"/F"])
    {
      -[PDFAKAnnotationAdaptor _syncFlags:](self, "_syncFlags:", [v12 unsignedLongValue]);
    }

    else if ([v7 isEqualToString:@"/M"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncDate:v12];
    }

    else if ([v7 isEqualToString:@"/NM"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncName:v12];
    }

    else if ([v7 isEqualToString:@"/P"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncPage:v12];
    }

    else if ([v7 isEqualToString:@"/A"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAction:v12];
    }

    else if ([v7 isEqualToString:@"/AA"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncAdditionalAction:v12];
    }

    else if ([v7 isEqualToString:@"/Dest"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncDestination:v12];
    }

    else if ([v7 isEqualToString:@"/Open"])
    {
      -[PDFAKAnnotationAdaptor _syncOpen:](self, "_syncOpen:", [v12 BOOLValue]);
    }

    else if ([v7 isEqualToString:@"/Parent"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncParent:v12];
    }

    else if ([v7 isEqualToString:@"/Popup"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncPopup:v12];
    }

    else if ([v7 isEqualToString:@"/DV"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetDefaultValue:v12];
    }

    else if ([v7 isEqualToString:@"/Ff"])
    {
      -[PDFAKAnnotationAdaptor _syncWidgetFieldFlags:](self, "_syncWidgetFieldFlags:", [v12 unsignedLongValue]);
    }

    else if ([v7 isEqualToString:@"/FT"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetFieldType:v12];
    }

    else if ([v7 isEqualToString:@"/MK"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetAppearance:v12];
    }

    else if ([v7 isEqualToString:@"/MaxLen"])
    {
      -[PDFAKAnnotationAdaptor _syncWidgetMaxLen:](self, "_syncWidgetMaxLen:", [v12 unsignedLongValue]);
    }

    else if ([v7 isEqualToString:@"/Opt"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetOptions:v12];
    }

    else if ([v7 isEqualToString:@"/TU"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetTextLabelUI:v12];
    }

    else if ([v7 isEqualToString:@"/V"])
    {
      [(PDFAKAnnotationAdaptor *)self _syncWidgetValue:v12];
    }

    self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
  }
}

- (void)didRemoveValueForAnnotationKey:(id)a3
{
  v3 = self->_private;
  if (!v3->isSyncingFromAKAnnotation)
  {
    isSyncingFromPDFAnnotation = v3->isSyncingFromPDFAnnotation;
    v3->isSyncingFromPDFAnnotation = 1;
    [(PDFAKAnnotationAdaptor *)self didSetValue:0 forAnnotationKey:a3];
    self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
  }
}

- (void)didReplaceAllValuesWithNewDictionary:(id)a3 andOldDictionary:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self->_private;
  if (!v7->isSyncingFromAKAnnotation)
  {
    isSyncingFromPDFAnnotation = v7->isSyncingFromPDFAnnotation;
    v7->isSyncingFromPDFAnnotation = 1;
    v9 = MEMORY[0x1E695DFA8];
    v10 = [a4 allKeys];
    v11 = [v9 setWithArray:v10];

    v12 = MEMORY[0x1E695DFA8];
    v13 = [v6 allKeys];
    v14 = [v12 setWithArray:v13];
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
    v20 = [v6 allKeys];
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v27 + 1) + 8 * j);
          v26 = [v6 objectForKey:v25];
          [(PDFAKAnnotationAdaptor *)self didSetValue:v26 forAnnotationKey:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v22);
    }

    [(PDFAKAnnotationAdaptor *)self _syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:1];
    self->_private->isSyncingFromPDFAnnotation = isSyncingFromPDFAnnotation;
  }
}

- (void)invalidateAppearanceStream
{
  v2 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  if (v2)
  {
    v4 = v2;
    [v2 setDictionaryRef:0];
    v3 = [v4 page];
    [v3 changedAnnotation:v4];

    v2 = v4;
  }
}

- (void)_syncSubtype:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"/Widget"])
  {
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);
    v6 = [WeakRetained valueForAnnotationKey:@"/FT"];

    if (!v6 || ![v6 length])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v7 = [objc_opt_class() _akAnnotationInstanceForPDFAnnotationSubtype:v4 withOptionalWidgetFieldType:v6];
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = [objc_opt_class() _akAnnotationInstanceForPDFAnnotationSubtype:v4 withOptionalWidgetFieldType:0];
    v6 = 0;
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v8 = [MEMORY[0x1E695DFB0] null];

  v9 = self->_private;
  if (v7 == v8)
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

- (void)_syncWidgetFieldType:(id)a3
{
  isKindOfClass = a3;
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
  v3 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v4 = [v3 annotationKeyValues];
  v5 = [v4 mutableCopy];
  v6 = [v3 valueForAnnotationKey:@"/Subtype"];
  v7 = [v3 sourceDictionary];
  value = 0;
  [v5 removeObjectForKey:@"/Subtype"];
  [v5 removeObjectForKey:@"/AP"];
  [v5 removeObjectForKey:@"/P"];
  Dictionary = CGPDFDictionaryGetDictionary(v7, "AAPL:AKExtras", &value);
  if (([v6 isEqualToString:@"/FreeText"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"/Text") & 1) == 0 && ((Dictionary | objc_msgSend(v6, "isEqualToString:", @"/Popup")) & 1) == 0)
  {
    [v5 removeObjectForKey:@"/Contents"];
  }

  [(PDFAKAnnotationAdaptor *)self didReplaceAllValuesWithNewDictionary:v5 andOldDictionary:MEMORY[0x1E695E0F8]];
  v9 = [v4 objectForKey:@"/P"];
  if (v9)
  {
    [(PDFAKAnnotationAdaptor *)self didSetValue:v9 forAnnotationKey:@"/P"];
  }
}

- (void)_syncAppearanceDictionaryUpdatingEditsDisableAppearanceOverride:(BOOL)a3
{
  v3 = a3;
  v5 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v6 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v7 = self->_private;
  isSyncingFromPDFAnnotation = v7->isSyncingFromPDFAnnotation;
  v7->isSyncingFromPDFAnnotation = 1;
  if ([v5 appearance:0])
  {
    v9 = [v5 page];
    if (!v9)
    {
      NSLog(&cfstr_CouldNotSyncAp.isa);
      goto LABEL_12;
    }

    v10 = v9;
    v11 = [v9 akPageAdaptor];
    [v11 initializeExifAndScaleOnAnnotation:v6];

    objc_initWeak(&location, v5);
    objc_initWeak(&from, v6);
    [v5 bounds];
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
    [v6 setAppearanceOverride:&v24];
    if (v3)
    {
      v20 = [v5 valueForAnnotationKey:{@"/Subtype", v24, v25, v26, v27}];
      if ([v20 isEqualToString:@"/Stamp"] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", @"/Ink"))
      {
        v21 = 0;
      }

      else if ([v20 isEqualToString:@"/Widget"])
      {
        v22 = [v5 valueForAnnotationKey:@"/FT"];
        v23 = [v22 isEqualToString:@"/Sig"];

        v21 = v23 ^ 1;
      }

      else
      {
        v21 = 1;
      }

      [v6 setEditsDisableAppearanceOverride:v21 & 1];
    }

    objc_destroyWeak(v29);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [v6 setAppearanceOverride:0];
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

- (void)_syncBorder:(id)a3
{
  v26 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v5 = [v4 valueForAnnotationKey:@"/BS"];

  if (!v5)
  {
    v6 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    if (!v26)
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 setStrokeWidth:1.0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 setCornerRadius:0.0];
      }

      if (objc_opt_respondsToSelector())
      {
        [v6 setDashed:0];
      }

      goto LABEL_37;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v26;
      if (objc_opt_respondsToSelector())
      {
        [v7 lineWidth];
        [v6 setStrokeWidth:?];
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

        [v6 setCornerRadius:v10];
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
        v23 = [v7 dashPattern];
        v11 = [v23 count] > 1;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSLog(&cfstr_SUnexpectedBor.isa, "[PDFAKAnnotationAdaptor _syncBorder:]", v26);
LABEL_37:

        goto LABEL_38;
      }

      v7 = v26;
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
        [v6 setStrokeWidth:v22];
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

        [v6 setCornerRadius:v25];
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    [v6 setDashed:v11];
    goto LABEL_36;
  }

LABEL_38:
}

- (void)_syncBorderStyle:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    v5 = [v8 objectForKey:@"/W"];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v5 doubleValue];
      [v4 setStrokeWidth:?];
    }

    v6 = [v8 objectForKey:@"/S"];

    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v4 setDashed:{objc_msgSend(v6, "isEqualToString:", @"/D"}];
    }

    if (objc_opt_respondsToSelector())
    {
      [v4 setCornerRadius:0.0];
    }
  }

  else
  {
    v7 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    v4 = [v7 valueForAnnotationKey:@"/Border"];

    [(PDFAKAnnotationAdaptor *)self _syncBorder:v4];
  }
}

- (void)_syncColor:(id)a3
{
  v9 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v5 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v6 = [v4 valueForAnnotationKey:@"/Subtype"];
  v7 = [v6 isEqualToString:@"/FreeText"];

  if (v7)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [(PDFAKAnnotationAdaptor *)self _colorFromColorOrArray:v9];
    [v5 setFillColor:v8];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = [(PDFAKAnnotationAdaptor *)self _colorFromColorOrArray:v9];
    [v5 setStrokeColor:v8];
  }

LABEL_7:
}

- (void)_syncInteriorColor:(id)a3
{
  v6 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(PDFAKAnnotationAdaptor *)self _colorFromColorOrArray:v6];
    [v4 setFillColor:v5];
  }
}

- (void)_syncContents:(id)a3
{
  v8 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if ([v4 conformsToProtocol:&unk_1F41CF078])
  {
    v5 = v4;
    if (v8)
    {
      v6 = [v5 typingAttributes];
      v7 = [objc_alloc(MEMORY[0x1E69DB850]) initWithString:v8 attributes:v6];
      [v5 setAnnotationText:v7];
    }

    else
    {
      [v5 setAnnotationText:0];
    }
  }
}

- (void)_syncDate:(id)a3
{
  v4 = a3;
  v5 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  [v5 setModificationDate:v4];
}

- (void)_syncPage:(id)a3
{
  if (a3)
  {
    v6 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    v4 = [v6 appearanceOverride];

    if (!v4)
    {
      v5 = [MEMORY[0x1E695DFB0] null];
      [(PDFAKAnnotationAdaptor *)self didSetValue:v5 forAnnotationKey:@"/AP"];
    }
  }
}

- (void)_syncRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if (objc_opt_respondsToSelector())
  {
    [v7 setRectangle:{x, y, width, height}];
  }
}

- (void)_syncDefaultAppearance:(id)a3
{
  v19 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if ([v4 conformsToProtocol:&unk_1F41CF078])
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);
    v7 = [WeakRetained getFontFromAppearanceNSString:v19];
    v8 = [WeakRetained getColorFromAppearanceNSString:v19];
    if (v7 | v8)
    {
      v9 = [v5 annotationText];
      v10 = [v5 typingAttributes];
      v11 = [v9 mutableCopy];
      v18 = v10;
      v12 = [v10 mutableCopy];
      v13 = [v9 length];
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

- (void)_syncQuadding:(int64_t)a3
{
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  if (![v4 conformsToProtocol:&unk_1F41CF078])
  {
    goto LABEL_21;
  }

  v5 = v4;
  v6 = [v5 annotationText];
  v7 = v6;
  if (!v6)
  {
    v11 = 0;
    v9 = *MEMORY[0x1E69DB688];
LABEL_8:
    v13 = [v5 typingAttributes];
    v10 = [v13 objectForKey:v9];

    if (!v10)
    {
      v10 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    }

    v12 = 0;
    goto LABEL_11;
  }

  v8 = [v6 length];
  v9 = *MEMORY[0x1E69DB688];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [v7 attribute:*MEMORY[0x1E69DB688] atIndex:0 effectiveRange:0];
  v11 = 1;
  v12 = 1;
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_11:
  if ([v10 alignment] != a3)
  {
    v23 = v12;
    v24 = v11;
    v27 = v7;
    v26 = [v5 typingAttributes];
    v14 = [v26 mutableCopy];
    v15 = [v5 typingAttributes];
    v16 = [v15 objectForKey:v9];
    v17 = [v16 mutableCopy];

    if (!v17)
    {
      v18 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
      v17 = [v18 mutableCopy];
    }

    [v17 setAlignment:a3];
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
        v30 = a3;
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

- (void)_syncLinePoints:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v19 = v4;
    v5 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    AKArrowAnnotationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

    v4 = v19;
  }
}

- (void)_syncLineEndingStyles:(id)a3
{
  v13 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  AKArrowAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v13 objectAtIndex:0];
    v7 = [v13 objectAtIndex:1];
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

- (void)_syncParent:(id)a3
{
  v12 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v12;
  }

  else
  {
    v8 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    v9 = [v8 page];
    v7 = [v9 annotationWithUUID:v12];
  }

  v10 = [v7 akAnnotationAdaptor];
  v11 = [v10 akAnnotation];

  if ([v4 conformsToProtocol:&unk_1F41CF0D8] && ((objc_msgSend(v11, "conformsToProtocol:", &unk_1F41CF138) & 1) != 0 || !v11))
  {
    [v4 setParentAnnotation:v11];
  }
}

- (void)_syncPopup:(id)a3
{
  v12 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = v12;
  }

  else
  {
    v8 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    v9 = [v8 page];
    v7 = [v9 annotationWithUUID:v12];
  }

  v10 = [v7 akAnnotationAdaptor];
  v11 = [v10 akAnnotation];

  if ([v4 conformsToProtocol:&unk_1F41CF138] && ((objc_msgSend(v11, "conformsToProtocol:", &unk_1F41CF0D8) & 1) != 0 || !v11))
  {
    [v4 setChildAnnotation:v11];
  }
}

- (void)_syncTextLabel:(id)a3
{
  v6 = a3;
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  if ([v5 isMarkupAnnotation])
  {
    [v4 setAuthor:v6];
  }

  else
  {
    AKTextFieldAnnotationClass();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setFieldName:v6];
    }
  }
}

- (void)_syncEverythingToPDFAnnotation
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
  v5 = self->_private;
  isSyncingFromAKAnnotation = v5->isSyncingFromAKAnnotation;
  v5->isSyncingFromAKAnnotation = 1;
  v6 = MEMORY[0x1E696B098];
  [v4 drawingBounds];
  [v6 PDFKitValueWithPDFRect:?];
  v24 = v26 = v3;
  [v3 setValue:? forAnnotationKey:?];
  v7 = [v4 keysForValuesToObserveForUndo];
  v8 = [v7 mutableCopy];

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
        v17 = [v4 valueForKey:v16];
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
        [(PDFAKAnnotationAdaptor *)self observeValueForKeyPath:v16 ofObject:v4 change:v23 context:@"PDFAKAnnotationAdaptor.annotationPropertyObservationContext"];
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
      v4 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
      v5 = [v4 keysForValuesToObserveForUndo];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
              objc_enumerationMutation(v5);
            }

            [v4 addObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v9++) options:3 context:@"PDFAKAnnotationAdaptor.annotationPropertyObservationContext"];
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v3 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    v4 = [v3 keysForValuesToObserveForUndo];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 removeObserver:self forKeyPath:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    self->_private->isObservingAKAnnotation = 0;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == @"PDFAKAnnotationAdaptor.annotationPropertyObservationContext")
  {
    if (self->_private->isSyncingFromPDFAnnotation)
    {
      goto LABEL_51;
    }

    v13 = v11;
    v14 = [(PDFAKAnnotationAdaptor *)self akAnnotation];
    v15 = [v12 objectForKey:*MEMORY[0x1E696A4F0]];
    v16 = [v12 objectForKey:*MEMORY[0x1E696A500]];
    if (!v15 || [v15 isEqual:v16])
    {
      v17 = [v12 objectForKey:*MEMORY[0x1E696A4E8]];
      if ([v17 integerValue] == 3)
      {
      }

      else
      {
        v18 = [v10 isEqualToString:@"drawing"];

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
    if ([v10 isEqualToString:@"isEdited"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"shouldObserveEdits"))
    {
LABEL_49:
      self->_private->isSyncingFromAKAnnotation = isSyncingFromAKAnnotation;
      goto LABEL_50;
    }

    if (([v10 isEqualToString:@"typingAttributes"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"shouldUseAppearanceOverride") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"horizontallyFlipped") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"verticallyFlipped") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"magnification") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"brushStyle") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"image") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"drawing") & 1) == 0)
    {
      if (([v10 isEqualToString:@"midPoint"] & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"arrowHeadLength") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"arrowHeadWidth") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"arrowLineWidth") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"pointyBitPoint") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"pointyBitBaseWidthAngle") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"rotationAngle") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"pointCount") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"innerRadiusFactor") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"hasShadow") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"signature") & 1) == 0)
      {
        if ([v10 isEqualToString:@"author"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncAuthorForAnnotation:v13 withKey:v10 andNewValue:v15];
        }

        else if ([v10 isEqualToString:@"modificationDate"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncModificationDateForAnnotation:v13 withKey:v10 andNewValue:v15];
        }

        else if ([v10 isEqualToString:@"annotationText"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncAnnotationTextForAnnotation:v13 withKey:v10 andNewValue:v15];
        }

        else if ([v10 isEqualToString:@"contents"])
        {
          [(PDFAKAnnotationAdaptor *)self _syncContentsForAnnotation:v13 withKey:v10 andNewValue:v15];
        }

        else if (([v10 isEqualToString:@"rectangle"] & 1) == 0)
        {
          if ([v10 isEqualToString:@"startPoint"])
          {
            [(PDFAKAnnotationAdaptor *)self _syncStartPointForAnnotation:v13 withKey:v10 andNewValue:v15];
          }

          else if ([v10 isEqualToString:@"endPoint"])
          {
            [(PDFAKAnnotationAdaptor *)self _syncEndPointForAnnotation:v13 withKey:v10 andNewValue:v15];
          }

          else if ([v10 isEqualToString:@"strokeWidth"])
          {
            [(PDFAKAnnotationAdaptor *)self _syncStrokeWidthForAnnotation:v13 withKey:v10 andNewValue:v15];
          }

          else
          {
            if (([v10 isEqualToString:@"strokeColor"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"fillColor") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"color"))
            {
              [(PDFAKAnnotationAdaptor *)self _syncColorForAnnotation:v13 withKey:v10 andNewValue:v15];
              goto LABEL_46;
            }

            if ([v10 isEqualToString:@"arrowHeadStyle"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncArrowHeadStyleForAnnotation:v13 withKey:v10 andNewValue:v15];
            }

            else if ([v10 isEqualToString:@"dashed"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncDashedForAnnotation:v13 withKey:v10 andNewValue:v15];
            }

            else if ([v10 isEqualToString:@"cornerRadius"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncCornerRadiusForAnnotation:v13 withKey:v10 andNewValue:v15];
            }

            else if ([v10 isEqualToString:@"path"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncInkPathForAnnotation:v13 withKey:v10 andNewValue:v15];
            }

            else if ([v10 isEqualToString:@"childAnnotation"])
            {
              [(PDFAKAnnotationAdaptor *)self _syncChildAnnotationForAnnotation:v13 withKey:v10 andNewValue:v15];
            }

            else
            {
              NSLog(&cfstr_UnhandledAkPro.isa, v10);
            }
          }
        }
      }

      [(PDFAKAnnotationAdaptor *)self _syncBoundingRectangleForAnnotation:v13 withKey:v10 andNewValue:v15];
    }

LABEL_46:
    [(PDFAKAnnotationAdaptor *)self _invalidateAppearanceStreamForAnnotation:v13 withKey:v10 andNewValue:v15];
    WeakRetained = objc_loadWeakRetained(&self->_private->pdfAnnotation);
    if ([WeakRetained isFullyConstructed])
    {
      [WeakRetained page];
      v27 = v15;
      v22 = v16;
      v23 = v13;
      v24 = v14;
      v26 = v25 = isSyncingFromAKAnnotation;
      [v26 postAnnotationsChangedNotification];

      isSyncingFromAKAnnotation = v25;
      v14 = v24;
      v13 = v23;
      v16 = v22;
      v15 = v27;
    }

    goto LABEL_49;
  }

  v28.receiver = self;
  v28.super_class = PDFAKAnnotationAdaptor;
  [(PDFAKAnnotationAdaptor *)&v28 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_51:
}

- (void)_syncBoundingRectangleForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v6 = a3;
  v16 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  [v6 drawingBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [MEMORY[0x1E696B098] PDFKitValueWithPDFRect:{v8, v10, v12, v14}];
  [v16 setValue:v15 forAnnotationKey:@"/Rect"];
}

- (void)_syncAuthorForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v6 = a5;
  if (v6)
  {
    v8 = v6;
    v7 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    if ([v7 isMarkupAnnotation])
    {
      [v7 setValue:v8 forAnnotationKey:@"/T"];
    }

    v6 = v8;
  }
}

- (void)_syncModificationDateForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v6 = a5;
  if (v6)
  {
    v8 = v6;
    v7 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    [v7 setValue:v8 forAnnotationKey:@"/M"];

    v6 = v8;
  }
}

- (void)_syncAnnotationTextForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v13 = a5;
  v6 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v7 = [MEMORY[0x1E695DFB0] null];

  v8 = v13;
  if (v7 == v13)
  {

    v8 = 0;
  }

  v14 = v8;
  v9 = [v8 string];
  v10 = @"/Contents";
  v11 = [v6 valueForAnnotationKey:@"/Subtype"];
  if ([v11 isEqualToString:@"/Widget"])
  {
    v12 = @"/V";

    v10 = v12;
  }

  if (v9)
  {
    [v6 setValue:v9 forAnnotationKey:v10];
  }

  else
  {
    [v6 removeValueForAnnotationKey:v10];
  }
}

- (void)_syncContentsForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v11 = a5;
  v6 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v7 = [v6 valueForAnnotationKey:@"/Subtype"];
  if (([v7 isEqualToString:@"/Text"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"/Popup"))
  {
    v8 = v11;
    [v6 setValue:v8 forAnnotationKey:@"/Contents"];
    if ([v7 isEqualToString:@"/Popup"])
    {
      v9 = [v6 parent];

      if (v9)
      {
        v10 = [v6 parent];
        [v10 setValue:v8 forAnnotationKey:@"/Contents"];
      }
    }
  }

  else
  {
    NSLog(&cfstr_SWasnTExpectin.isa, "[PDFAKAnnotationAdaptor _syncContentsForAnnotation:withKey:andNewValue:]");
  }
}

- (void)_syncStartPointForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v13 = a5;
  v6 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [v13 PDFKitPDFPointValue];
  [v6 setStartPoint:{v11 - v8, v12 - v10}];
}

- (void)_syncEndPointForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v13 = a5;
  v6 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  [v13 PDFKitPDFPointValue];
  [v6 setEndPoint:{v11 - v8, v12 - v10}];
}

- (void)_syncStrokeWidthForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v17 = a3;
  [a5 doubleValue];
  v8 = v7;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v17 isDashed];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v11 = [v10 valueForAnnotationKey:@"/Border"];
  if (!v11)
  {
    v11 = objc_alloc_init(PDFBorder);
    [v10 setValue:v11 forAnnotationKey:@"/Border"];
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
        [v10 setValue:v12 forAnnotationKey:@"/Border"];
      }
    }
  }

  v14 = [v10 valueForAnnotationKey:@"/BS"];

  if (v14)
  {
    v15 = [v14 mutableCopy];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [v15 setObject:v16 forKey:@"/W"];

    [v10 setValue:v15 forAnnotationKey:@"/BS"];
  }

  if (v9)
  {
    [(PDFAKAnnotationAdaptor *)self _updateDashedPatternForStrokeWidth:1 isDashed:v8];
  }
}

- (void)_syncColorForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v12 = a4;
  v7 = a5;
  if ([v12 isEqualToString:@"strokeColor"])
  {
LABEL_2:
    v8 = &PDFAnnotationKeyColor;
    goto LABEL_5;
  }

  if (([v12 isEqualToString:@"fillColor"] & 1) == 0)
  {
    if (![v12 isEqualToString:@"color"])
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
    v11 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    [v11 setValue:v7 forAnnotationKey:v10];
  }

LABEL_7:
}

- (void)_syncArrowHeadStyleForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v14[2] = *MEMORY[0x1E69E9840];
  v6 = [a5 integerValue];
  v7 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v8 = v6 - 1;
  if ((v6 - 1) > 2)
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
  [v7 setValue:v13 forAnnotationKey:@"/LE"];
}

- (void)_syncDashedForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v13 = a3;
  v7 = [a5 BOOLValue];
  if (objc_opt_respondsToSelector())
  {
    [v13 strokeWidth];
    v9 = v8;
  }

  else
  {
    v10 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
    v11 = [v10 valueForAnnotationKey:@"/Border"];

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

  [(PDFAKAnnotationAdaptor *)self _updateDashedPatternForStrokeWidth:v7 isDashed:v9];
}

- (void)_updateDashedPatternForStrokeWidth:(double)a3 isDashed:(BOOL)a4
{
  v4 = a4;
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = a3;
  }

  v6 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v7 = [v6 valueForAnnotationKey:@"/Border"];
  if (!v7)
  {
    v7 = objc_alloc_init(PDFBorder);
    [v6 setValue:v7 forAnnotationKey:@"/Border"];
  }

  if (v4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 3.0 + 4.0];
    v16[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5 + 7.0];
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
    [(PDFBorder *)v11 setStyle:v4];
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
      [v6 setValue:v11 forAnnotationKey:@"/Border"];
    }

    goto LABEL_11;
  }

LABEL_12:
  v12 = [v6 valueForAnnotationKey:@"/BS"];

  if (v12)
  {
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v4)
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

    [v6 setValue:v14 forAnnotationKey:@"/BS"];
  }
}

- (void)_syncCornerRadiusForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  [a5 doubleValue];
  v7 = v6;
  v12 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v8 = [v12 valueForAnnotationKey:@"/Border"];
  if (!v8)
  {
    v8 = objc_alloc_init(PDFBorder);
    [v12 setValue:v8 forAnnotationKey:@"/Border"];
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
      [v12 setValue:v9 forAnnotationKey:@"/Border"];
    }

    goto LABEL_5;
  }

LABEL_9:
}

- (void)_syncChildAnnotationForAnnotation:(id)a3 withKey:(id)a4 andNewValue:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = [(PDFAKAnnotationAdaptor *)self pdfAnnotation];
  v8 = [MEMORY[0x1E695DFB0] null];

  if (v8 != v6)
  {
    v9 = v6;
    if (v9)
    {
      v10 = v9;
      v11 = v7;
      v12 = [v11 page];
      v13 = v12;
      if (v12)
      {
        v22 = v11;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v14 = [v12 annotations];
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v23 + 1) + 8 * v18) akAnnotationAdaptor];
            v20 = [v19 akAnnotation];

            if (v20 == v10)
            {
              break;
            }

            if (v16 == ++v18)
            {
              v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
              if (v16)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          v21 = [v19 pdfAnnotation];

          v11 = v22;
          if (!v21)
          {
            goto LABEL_16;
          }

          [v22 setPopupInternal:v21 scanPage:0];

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

  [v7 setPopupInternal:0 scanPage:0];
LABEL_18:
}

+ (id)_akAnnotationInstanceForPDFAnnotationSubtype:(id)a3 withOptionalWidgetFieldType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"/Link"] || objc_msgSend(v6, "isEqualToString:", @"/Text"))
  {
    goto LABEL_3;
  }

  if ([v6 isEqualToString:@"/FreeText"])
  {
    AKTextBoxAnnotationClass();
  }

  else if ([v6 isEqualToString:@"/Line"])
  {
    AKArrowAnnotationClass();
  }

  else if ([v6 isEqualToString:@"/Square"])
  {
    AKRectAnnotationClass();
  }

  else if ([v6 isEqualToString:@"/Circle"])
  {
    AKOvalAnnotationClass();
  }

  else
  {
    if ([v6 isEqualToString:@"/Highlight"] || objc_msgSend(v6, "isEqualToString:", @"/Underline") || objc_msgSend(v6, "isEqualToString:", @"/StrikeOut"))
    {
      goto LABEL_3;
    }

    if ([v6 isEqualToString:@"/Ink"] || (objc_msgSend(v6, "isEqualToString:", @"/Stamp") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"/SN"))
    {
      AKImageAnnotationClass();
      goto LABEL_12;
    }

    if ([v6 isEqualToString:@"/Popup"] || objc_msgSend(v6, "isEqualToString:", @"/Redact"))
    {
      goto LABEL_3;
    }

    if (![v6 isEqualToString:@"/Widget"])
    {
      if (![v6 isEqualToString:@"/Redact"])
      {
        NSLog(&cfstr_SUnhandledAnno.isa, "+[PDFAKAnnotationAdaptor _akAnnotationInstanceForPDFAnnotationSubtype:withOptionalWidgetFieldType:]", v6);
      }

      goto LABEL_3;
    }

    if (![a1 _akAnnotationSubclassForWidgetFieldType:v7])
    {
LABEL_3:
      v8 = [MEMORY[0x1E695DFB0] null];
      goto LABEL_13;
    }
  }

LABEL_12:
  v8 = objc_opt_new();
LABEL_13:
  v9 = v8;

  return v9;
}

+ (id)_pdfAnnotationInstanceForAKAnnotation:(id)a3
{
  v3 = a3;
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
      [v3 setIsHighlighted:1];
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
    v9 = objc_alloc_init(PDFBorder);
    [(PDFBorder *)v9 setLineWidth:0.0];
    [(PDFAnnotation *)v5 setValue:v9 forAnnotationKey:@"/Border"];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(PDFAnnotation *)v5 setValue:v10 forAnnotationKey:@"/C"];
    [(PDFAnnotation *)v5 setValue:v10 forAnnotationKey:@"/IC"];
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
    v9 = [v3 displayName];
    if (v9)
    {
      [(PDFAnnotation *)v5 setFieldName:v9];
    }

    [(PDFAnnotation *)v5 setShouldBurnIn:1];
    goto LABEL_24;
  }

  AKCropAnnotationClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x1E695DFB0] null];

    v5 = v11;
  }

LABEL_6:
  if (v5)
  {
    v7 = [MEMORY[0x1E695DFB0] null];

    if (v7 != v5)
    {
      -[PDFAnnotation setShouldBurnIn:](v5, "setShouldBurnIn:", [v3 shouldBurnIn]);
    }
  }

  return v5;
}

- (id)_colorFromColorOrArray:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = PDFColorCreateFromNSArray(v3);
  }

  v5 = v4;

  return v5;
}

@end