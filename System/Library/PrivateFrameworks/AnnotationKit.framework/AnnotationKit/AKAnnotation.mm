@interface AKAnnotation
+ (AKAnnotation)annotationWithData:(id)a3;
+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3;
- (AKAnnotation)childAnnotation;
- (AKAnnotation)init;
- (AKAnnotation)initWithCoder:(id)a3;
- (AKAnnotation)parentAnnotation;
- (BOOL)isUsingAppearanceOverride;
- (CGRect)drawingBounds;
- (CGRect)hitTestBounds;
- (CGRect)initialDrawingBoundsForAppearanceOverride;
- (CGRect)integralDrawingBounds;
- (double)desiredHeadroom;
- (id)appearanceOverride;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)keysForValuesToObserveForUndo;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAppearanceOverride:(id)a3;
- (void)setShouldObserveEdits:(BOOL)a3;
- (void)setShouldUseAppearanceOverride:(BOOL)a3;
@end

@implementation AKAnnotation

- (AKAnnotation)init
{
  v7.receiver = self;
  v7.super_class = AKAnnotation;
  v2 = [(AKAnnotation *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    UUID = v2->_UUID;
    v2->_UUID = v4;

    v2->_shouldUsePlaceholderText = 1;
    v2->_editsDisableAppearanceOverride = 1;
    v2->_conformsToAKStrokedAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D6300];
    v2->_conformsToAKFilledAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D6420];
    v2->_conformsToAKRectangularAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D55D0];
    v2->_conformsToAKFlippableAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D6DA0];
    v2->_conformsToAKRotatableAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D5668];
    v2->_conformsToAKTextAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D6B08];
    v2->_conformsToAKParentAnnotationProtocol = [(AKAnnotation *)v2 conformsToProtocol:&unk_2851D6C68];
  }

  return v2;
}

- (void)dealloc
{
  CGPDFDocumentRelease(self->_appearanceOverridePDF);
  if ([(AKAnnotation *)self shouldObserveEdits])
  {
    [(AKAnnotation *)self setShouldObserveEdits:0];
  }

  if ([(AKAnnotation *)self shouldUseAppearanceOverride])
  {
    [(AKAnnotation *)self setShouldUseAppearanceOverride:0];
  }

  [(AKAnnotation *)self setAppearanceOverride:0];
  v3.receiver = self;
  v3.super_class = AKAnnotation;
  [(AKAnnotation *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(AKAnnotation *)self dataRepresentation];
  if (v3)
  {
    v4 = [AKAnnotation annotationWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)displayNameForUndoablePropertyChangeWithKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"rotationAngle"])
  {
    v4 = +[AKController akBundle];
    v5 = v4;
    v6 = @"Rotation";
LABEL_3:
    v7 = [v4 localizedStringForKey:v6 value:&stru_28519E870 table:@"AnnotationStrings"];

    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"isEdited"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"shouldObserveEdits") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"shouldUseAppearanceOverride"))
  {
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"childAnnotation"])
  {
    v4 = +[AKController akBundle];
    v5 = v4;
    v6 = @"Note";
    goto LABEL_3;
  }

  if ([v3 isEqualToString:@"author"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"modificationDate"))
  {
LABEL_7:
    v7 = &stru_28519E870;
  }

  else
  {
    objc_msgSend(MEMORY[0x277CBEAD8], "raise:format:", *MEMORY[0x277CBE658], @"%s must be overriden by a subclass (key: %@"), "+[AKAnnotation displayNameForUndoablePropertyChangeWithKey:]", v3;
    v7 = 0;
  }

LABEL_8:

  return v7;
}

+ (AKAnnotation)annotationWithData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v5 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD460();
    }

    goto LABEL_10;
  }

  if (![v3 length])
  {
    v5 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD42C();
    }

    goto LABEL_10;
  }

  v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
  if (!v5)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  if (!v6)
  {
    v7 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_23F4BD3EC();
    }

    v6 = 0;
  }

  [v5 finishDecoding];
LABEL_15:

  return v6;
}

- (id)dataRepresentation
{
  v6 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:0 error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD494(v3, v4);
    }

LABEL_4:

    goto LABEL_6;
  }

  if (![v2 length])
  {
    v4 = os_log_create("com.apple.annotationkit", "Serialization");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_23F4BD50C();
    }

    goto LABEL_4;
  }

LABEL_6:

  return v2;
}

- (id)keysForValuesToObserveForUndo
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 addObject:@"isEdited"];
  [v3 addObject:@"shouldObserveEdits"];
  [v3 addObject:@"shouldUseAppearanceOverride"];
  [v3 addObject:@"author"];
  [v3 addObject:@"modificationDate"];
  if ([(AKAnnotation *)self conformsToAKRotatableAnnotationProtocol])
  {
    [v3 addObject:@"rotationAngle"];
  }

  if ([(AKAnnotation *)self conformsToAKParentAnnotationProtocol])
  {
    [v3 addObject:@"childAnnotation"];
  }

  return v3;
}

- (CGRect)hitTestBounds
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s must be overriden by a subclass", "-[AKAnnotation hitTestBounds]"}];
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)drawingBounds
{
  [AKAnnotationRenderer drawingBoundsOfAnnotation:self];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)integralDrawingBounds
{
  [(AKAnnotation *)self drawingBounds];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  if (!CGRectIsInfinite(v14))
  {
    [AKGeometryHelper stableIntegralRectForRect:x, y, width, height];
    x = v6;
    y = v7;
    width = v8;
    height = v9;
  }

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setShouldObserveEdits:(BOOL)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_isObservingForIsEdited != a3)
  {
    v3 = a3;
    self->_isObservingForIsEdited = a3;
    isReallyObservingForIsEdited = self->_isReallyObservingForIsEdited;
    v6 = !a3 & isReallyObservingForIsEdited;
    v7 = [(AKAnnotation *)self keysForValuesToObserveForUndo];
    if (qword_27E39B798 != -1)
    {
      sub_23F4BD540();
    }

    v8 = v3 & ~isReallyObservingForIsEdited;
    if (v6)
    {
      self->_isReallyObservingForIsEdited = 0;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            if (([qword_27E39B790 containsObject:v14] & 1) == 0)
            {
              [(AKAnnotation *)self removeObserver:self forKeyPath:v14 context:@"AKAnnotation.annotationPropertyObservationForIsEditedContext"];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }

    if (v8)
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23F47CD4C;
      block[3] = &unk_278C7B888;
      objc_copyWeak(&v17, &location);
      v16 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

- (void)setAppearanceOverride:(id)a3
{
  v4 = a3;
  appearanceOverride = self->_appearanceOverride;
  if (v4)
  {
    v6 = v4;
    v11 = [v4 copy];

    v7 = MEMORY[0x245CAF110](v11);
    v8 = self->_appearanceOverride;
    self->_appearanceOverride = v7;

    if (!appearanceOverride)
    {
      [(AKAnnotation *)self setShouldUseAppearanceOverride:1];
      [(AKAnnotation *)self drawingBounds];
      [(AKAnnotation *)self setInitialDrawingBoundsForAppearanceOverride:?];
    }

    v9 = v11;
  }

  else
  {
    if (appearanceOverride)
    {
      [(AKAnnotation *)self setShouldUseAppearanceOverride:0];
    }

    v10 = self->_appearanceOverride;
    self->_appearanceOverride = 0;

    v9 = 0;
  }
}

- (id)appearanceOverride
{
  v2 = MEMORY[0x245CAF110](self->_appearanceOverride, a2);

  return v2;
}

- (BOOL)isUsingAppearanceOverride
{
  if (![(AKAnnotation *)self shouldUseAppearanceOverride])
  {
    return 0;
  }

  v3 = [(AKAnnotation *)self appearanceOverride];
  v4 = v3 != 0;

  return v4;
}

- (void)setShouldUseAppearanceOverride:(BOOL)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->_shouldUseAppearanceOverride != a3)
  {
    v3 = a3;
    self->_shouldUseAppearanceOverride = a3;
    isObservingForAppearance = self->_isObservingForAppearance;
    v6 = !a3 & isObservingForAppearance;
    v7 = [(AKAnnotation *)self keysForValuesToObserveForUndo];
    if (qword_27E39B7A8 != -1)
    {
      sub_23F4BD554();
    }

    v8 = v3 & ~isObservingForAppearance;
    if (v6)
    {
      self->_isObservingForAppearance = 0;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            if (([qword_27E39B7A0 containsObject:v14] & 1) == 0)
            {
              [(AKAnnotation *)self removeObserver:self forKeyPath:v14 context:@"AKAnnotation.annotationPropertyObservationForAppearanceContext"];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }

    if (v8)
    {
      objc_initWeak(&location, self);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23F47D238;
      block[3] = &unk_278C7B888;
      objc_copyWeak(&v17, &location);
      v16 = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (a6 == @"AKAnnotation.annotationPropertyObservationForIsEditedContext")
  {
    v14 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
    v15 = [v13 objectForKey:*MEMORY[0x277CCA300]];
    if (([v14 isEqual:v15] & 1) == 0)
    {
      if (![(AKAnnotation *)self isEdited])
      {
        [(AKAnnotation *)self setIsEdited:1];
      }

      if ([(AKAnnotation *)self shouldObserveEdits])
      {
        [(AKAnnotation *)self setShouldObserveEdits:0];
      }
    }

    goto LABEL_14;
  }

  if (a6 == @"AKAnnotation.annotationPropertyObservationForAppearanceContext")
  {
    if (![(AKAnnotation *)self editsDisableAppearanceOverride])
    {
      goto LABEL_15;
    }

    sub_23F4ABA3C();
    v14 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    v15 = [v13 objectForKey:*MEMORY[0x277CCA300]];
    v16 = [v14 isEqual:v15];
    if ([v10 isEqualToString:@"rectangle"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [v15 akRectValue];
      v18 = v17;
      v20 = v19;
      [v14 akRectValue];
      v22 = v18 == v21;
      if (v20 != v23)
      {
        v22 = 0;
      }

      if ((v22 | v16))
      {
        goto LABEL_14;
      }
    }

    else if (v16)
    {
LABEL_14:

      goto LABEL_15;
    }

    [(AKAnnotation *)self setShouldUseAppearanceOverride:0];
    goto LABEL_14;
  }

  v24.receiver = self;
  v24.super_class = AKAnnotation;
  [(AKAnnotation *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_15:
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ((sub_23F4ABA3C() & 1) == 0)
  {
    [(AKAnnotation *)self setAkSerializationVersion:2];
    [(AKAnnotation *)self setAkSerializationPlatform:2];
  }

  [v4 encodeInteger:-[AKAnnotation akSerializationVersion](self forKey:{"akSerializationVersion"), @"akVers"}];
  [v4 encodeInteger:-[AKAnnotation akSerializationPlatform](self forKey:{"akSerializationPlatform"), @"akPlat"}];
  v5 = [(AKAnnotation *)self UUID];
  [v4 encodeObject:v5 forKey:@"UUID"];

  [(AKAnnotation *)self originalModelBaseScaleFactor];
  [v4 encodeDouble:@"originalModelBaseScaleFactor" forKey:?];
  [v4 encodeInteger:-[AKAnnotation originalExifOrientation](self forKey:{"originalExifOrientation"), @"originalExifOrientation"}];
  [v4 encodeBool:-[AKAnnotation textIsClipped](self forKey:{"textIsClipped"), @"textIsClipped"}];
  [v4 encodeBool:-[AKAnnotation textIsFixedWidth](self forKey:{"textIsFixedWidth"), @"textIsFixedWidth"}];
  [v4 encodeBool:-[AKAnnotation textIsFixedHeight](self forKey:{"textIsFixedHeight"), @"textIsFixedHeight"}];
  [v4 encodeBool:-[AKAnnotation shouldUsePlaceholderText](self forKey:{"shouldUsePlaceholderText"), @"shouldUsePlaceholderText"}];
  [v4 encodeInteger:-[AKAnnotation formContentType](self forKey:{"formContentType"), @"formContentType"}];
  v6 = [(AKAnnotation *)self customPlaceholderText];
  [v4 encodeObject:v6 forKey:@"customPlaceholderText"];

  v7 = [(AKAnnotation *)self author];

  if (v7)
  {
    v8 = [(AKAnnotation *)self author];
    [v4 encodeObject:v8 forKey:@"author"];
  }

  v9 = [(AKAnnotation *)self modificationDate];

  if (v9)
  {
    v10 = [(AKAnnotation *)self modificationDate];
    [v4 encodeObject:v10 forKey:@"modificationDate"];
  }

  v11 = [(AKAnnotation *)self parentAnnotation];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 UUID];
    [v4 encodeObject:v13 forKey:@"parentAnnotation.UUID"];
  }

  v14 = [(AKAnnotation *)self childAnnotation];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 UUID];
    [v4 encodeObject:v16 forKey:@"childAnnotation.UUID"];
  }

  [v4 encodeBool:-[AKAnnotation editsDisableAppearanceOverride](self forKey:{"editsDisableAppearanceOverride"), @"editsDisableAppearanceOverride"}];
  if ([(AKAnnotation *)self isBeingCopied])
  {
    v17 = [(AKAnnotation *)self appearanceOverride];
    if (v17 && [(AKAnnotation *)self shouldUseAppearanceOverride])
    {
      v18 = [(AKAnnotation *)self editsDisableAppearanceOverride];

      if (v18)
      {
        goto LABEL_20;
      }

      v17 = [MEMORY[0x277CBEB28] data];
      v19 = CGDataConsumerCreateWithCFData(v17);
      if (v19)
      {
        v20 = v19;
        [(AKAnnotation *)self initialDrawingBoundsForAppearanceOverride];
        v22 = v21;
        v24 = v23;
        v30.origin.x = 0.0;
        v30.origin.y = 0.0;
        v30.size.width = v25;
        v30.size.height = v26;
        v27 = CGPDFContextCreate(v20, &v30, 0);
        if (v27)
        {
          v28 = v27;
          CGPDFContextBeginPage(v27, 0);
          CGContextTranslateCTM(v28, -v22, -v24);
          v29 = [(AKAnnotation *)self appearanceOverride];
          (v29)[2](v29, v28);

          CGPDFContextEndPage(v28);
          CGContextFlush(v28);
          CGPDFContextClose(v28);
          [v4 encodeObject:v17 forKey:@"appearanceOverridePDF"];
          CFRelease(v28);
        }

        CFRelease(v20);
      }
    }
  }

LABEL_20:
  if ([(AKAnnotation *)self conformsToAKRotatableAnnotationProtocol])
  {
    [(AKAnnotation *)self rotationAngle];
    [v4 encodeDouble:@"rotationAngle" forKey:?];
  }

  [v4 encodeBool:-[AKAnnotation isFormField](self forKey:{"isFormField"), @"AKIsFormFieldKey"}];
}

- (AKAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AKAnnotation *)self init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"akVers"])
    {
      v6 = [v4 decodeIntegerForKey:@"akVers"];
    }

    else
    {
      v6 = 0;
    }

    [(AKAnnotation *)v5 setAkSerializationVersion:v6];
    if ([v4 containsValueForKey:@"akPlat"])
    {
      v7 = [v4 decodeIntegerForKey:@"akPlat"];
    }

    else
    {
      v7 = 0;
    }

    [(AKAnnotation *)v5 setAkSerializationPlatform:v7];
    if ([v4 containsValueForKey:@"UUID"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
      UUID = v5->_UUID;
      v5->_UUID = v8;
    }

    v10 = [v4 containsValueForKey:@"originalModelBaseScaleFactor"];
    v11 = 1.0;
    if (v10)
    {
      [v4 decodeDoubleForKey:{@"originalModelBaseScaleFactor", 1.0}];
    }

    [(AKAnnotation *)v5 setOriginalModelBaseScaleFactor:v11];
    if ([v4 containsValueForKey:@"originalExifOrientation"])
    {
      v12 = [v4 decodeIntegerForKey:@"originalExifOrientation"];
    }

    else
    {
      v12 = 1;
    }

    [(AKAnnotation *)v5 setOriginalExifOrientation:v12];
    -[AKAnnotation setTextIsClipped:](v5, "setTextIsClipped:", [v4 decodeBoolForKey:@"textIsClipped"]);
    -[AKAnnotation setTextIsFixedWidth:](v5, "setTextIsFixedWidth:", [v4 decodeBoolForKey:@"textIsFixedWidth"]);
    -[AKAnnotation setTextIsFixedHeight:](v5, "setTextIsFixedHeight:", [v4 decodeBoolForKey:@"textIsFixedHeight"]);
    if ([v4 containsValueForKey:@"shouldUsePlaceholderText"])
    {
      v13 = [v4 decodeBoolForKey:@"shouldUsePlaceholderText"];
    }

    else
    {
      v13 = 0;
    }

    [(AKAnnotation *)v5 setShouldUsePlaceholderText:v13];
    if ([v4 containsValueForKey:@"formContentType"])
    {
      -[AKAnnotation setFormContentType:](v5, "setFormContentType:", [v4 decodeIntForKey:@"formContentType"]);
    }

    if ([v4 containsValueForKey:@"customPlaceholderText"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customPlaceholderText"];
      [(AKAnnotation *)v5 setCustomPlaceholderText:v14];
    }

    else
    {
      [(AKAnnotation *)v5 setCustomPlaceholderText:0];
    }

    if ([v4 containsValueForKey:@"author"])
    {
      v15 = objc_opt_self();
      v16 = [v4 decodeObjectOfClass:v15 forKey:@"author"];
      [(AKAnnotation *)v5 setAuthor:v16];
    }

    if ([v4 containsValueForKey:@"modificationDate"])
    {
      v17 = objc_opt_self();
      v18 = [v4 decodeObjectOfClass:v17 forKey:@"modificationDate"];
      [(AKAnnotation *)v5 setModificationDate:v18];
    }

    if ([v4 containsValueForKey:@"parentAnnotation.UUID"])
    {
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentAnnotation.UUID"];
      objc_setAssociatedObject(v5, @"AKAnnotation.parentAnnotationUUIDAssociatedObjectKey", v19, 0x301);
    }

    if ([v4 containsValueForKey:@"childAnnotation.UUID"])
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childAnnotation.UUID"];
      objc_setAssociatedObject(v5, @"AKAnnotation.childAnnotationUUIDAssociatedObjectKey", v20, 0x301);
    }

    if ([v4 containsValueForKey:@"editsDisableAppearanceOverride"])
    {
      -[AKAnnotation setEditsDisableAppearanceOverride:](v5, "setEditsDisableAppearanceOverride:", [v4 decodeBoolForKey:@"editsDisableAppearanceOverride"]);
    }

    if ([v4 containsValueForKey:@"appearanceOverridePDF"])
    {
      v21 = objc_opt_self();
      v22 = [v4 decodeObjectOfClass:v21 forKey:@"appearanceOverridePDF"];

      if (v22)
      {
        v23 = CGDataProviderCreateWithCFData(v22);
        if (v23)
        {
          v24 = v23;
          v25 = CGPDFDocumentCreateWithProvider(v23);
          v5->_appearanceOverridePDF = v25;
          if (v25)
          {
            Page = CGPDFDocumentGetPage(v25, 1uLL);
            if (Page)
            {
              v27 = Page;
              objc_initWeak(&location, v5);
              v29 = MEMORY[0x277D85DD0];
              v30 = 3221225472;
              v31 = sub_23F47DF88;
              v32 = &unk_278C7C180;
              objc_copyWeak(&v33, &location);
              [(AKAnnotation *)v5 setAppearanceOverride:&v29];
              BoxRect = CGPDFPageGetBoxRect(v27, kCGPDFMediaBox);
              [(AKAnnotation *)v5 setInitialDrawingBoundsForAppearanceOverride:BoxRect.origin.x, BoxRect.origin.y, BoxRect.size.width, BoxRect.size.height, v29, v30, v31, v32];
              objc_destroyWeak(&v33);
              objc_destroyWeak(&location);
            }
          }

          CFRelease(v24);
        }
      }
    }

    if ([v4 containsValueForKey:@"rotationAngle"] && -[AKAnnotation conformsToAKRotatableAnnotationProtocol](v5, "conformsToAKRotatableAnnotationProtocol"))
    {
      [v4 decodeDoubleForKey:@"rotationAngle"];
      [(AKAnnotation *)v5 setRotationAngle:?];
    }

    if ([v4 containsValueForKey:@"AKIsFormFieldKey"])
    {
      -[AKAnnotation setIsFormField:](v5, "setIsFormField:", [v4 decodeBoolForKey:@"AKIsFormFieldKey"]);
    }
  }

  return v5;
}

- (double)desiredHeadroom
{
  [(AKAnnotation *)self conformsToProtocol:&unk_2851D6B08];
  v3 = 1.0;
  if ([(AKAnnotation *)self conformsToProtocol:&unk_2851D6420])
  {
    v4 = [(AKAnnotation *)self fillColorForOptions:0];
    [v4 akHeadroom];
    v6 = v5;

    v3 = fmax(v6, 1.0);
  }

  if ([(AKAnnotation *)self conformsToProtocol:&unk_2851D6300])
  {
    v7 = [(AKAnnotation *)self strokeColorForOptions:0];
    [v7 akHeadroom];
    v9 = v8;

    if (v3 < v9)
    {
      v3 = v9;
    }
  }

  if ([(AKAnnotation *)self conformsToProtocol:&unk_2851D6B08])
  {
    v10 = [(AKAnnotation *)self foregroundColorForOptions:0];
    [v10 akHeadroom];
    v12 = v11;

    if (v3 < v12)
    {
      return v12;
    }
  }

  return v3;
}

- (AKAnnotation)parentAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnnotation);

  return WeakRetained;
}

- (AKAnnotation)childAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_childAnnotation);

  return WeakRetained;
}

- (CGRect)initialDrawingBoundsForAppearanceOverride
{
  objc_copyStruct(v6, &self->_initialDrawingBoundsForAppearanceOverride, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end