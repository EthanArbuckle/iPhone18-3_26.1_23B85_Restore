@interface PDFAKAnnotationSerializationHelper
+ (BOOL)_annotationClassHasSeniority:(id)seniority;
+ (BOOL)_shouldUseAKAnnotation:(id)annotation toRepresentCGPDFDictionary:(CGPDFDictionary *)dictionary;
+ (id)akAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)annotation andDictionary:(CGPDFDictionary *)dictionary;
+ (void)addAKAnnotation:(id)annotation toAnnotationDictionary:(__CFDictionary *)dictionary;
@end

@implementation PDFAKAnnotationSerializationHelper

+ (void)addAKAnnotation:(id)annotation toAnnotationDictionary:(__CFDictionary *)dictionary
{
  annotationCopy = annotation;
  v6 = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  dataRepresentation = [annotationCopy dataRepresentation];
  v10 = dataRepresentation;
  if (dataRepresentation)
  {
    v11 = [dataRepresentation base64EncodedStringWithOptions:0];
    if ([self _annotationClassHasSeniority:annotationCopy])
    {
      v12 = @"/AAPL:AKAnnotationObject";
    }

    else
    {
      v12 = @"/AAPL:AKAnnotationV2";
    }

    CFDictionarySetValue(Mutable, v12, v11);
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, dictionary);
    if (MutableCopy)
    {
      v14 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"/AAPL:PaperKit");
      CFDictionarySetValue(Mutable, @"/AAPL:AKPDFAnnotationDictionary", v14);
      CFRelease(v14);
    }

    CFDictionarySetValue(dictionary, @"/AAPL:AKExtras", Mutable);
    CFRelease(Mutable);
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)akAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)annotation andDictionary:(CGPDFDictionary *)dictionary
{
  v4 = 0;
  if (annotation && dictionary)
  {
    IsVersioned = CGPDFAnnotationIsVersioned();
    v8 = objc_autoreleasePoolPush();
    if (!IsVersioned || CGPDFAnnotationIsPristine())
    {
      value = 0;
      if (CGPDFDictionaryGetDictionary(dictionary, "AAPL:AKExtras", &value) && ((string = 0, CGPDFDictionaryGetString(value, "AAPL:AKAnnotationObject", &string)) || CGPDFDictionaryGetString(value, "AAPL:AKAnnotationV2", &string)) && (v9 = CGPDFStringCopyTextString(string)) != 0)
      {
        v10 = v9;
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

        v12 = [AKAnnotationClass() annotationWithData:v11];

        objc_autoreleasePoolPop(v8);
        if (!((v12 == 0) | IsVersioned & 1) && ([self _shouldUseAKAnnotation:v12 toRepresentCGPDFDictionary:dictionary] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v8);
        v12 = 0;
      }

      v12 = v12;
      v4 = v12;
LABEL_16:

      goto LABEL_17;
    }

    objc_autoreleasePoolPop(v8);
    v12 = 0;
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

LABEL_17:

  return v4;
}

+ (BOOL)_annotationClassHasSeniority:(id)seniority
{
  seniorityCopy = seniority;
  if ([seniorityCopy isMemberOfClass:AKInkAnnotationClass()])
  {
    v4 = 0;
  }

  else if ([seniorityCopy isMemberOfClass:AKDoodleAnnotationClass()] & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKArrowAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKRectAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKOvalAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKTextBoxAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKTextFieldAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKArrowShapeAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKBorderMaskAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKCropAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKHeartAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKImageAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKLoupeAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKPolygonAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKSignatureAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKSpeechBubbleAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKStarAnnotationClass()) & 1) != 0 || (objc_msgSend(seniorityCopy, "isMemberOfClass:", AKThoughtBubbleAnnotationClass()))
  {
    v4 = 1;
  }

  else
  {
    v4 = [seniorityCopy isMemberOfClass:AKTriangleAnnotationClass()];
  }

  return v4;
}

+ (BOOL)_shouldUseAKAnnotation:(id)annotation toRepresentCGPDFDictionary:(CGPDFDictionary *)dictionary
{
  annotationCopy = annotation;
  if (!dictionary)
  {
    goto LABEL_12;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(dictionary, "AAPL:AKExtras", &value))
  {
LABEL_9:
    v10 = 0;
    goto LABEL_13;
  }

  v28 = 0;
  if (!CGPDFDictionaryGetDictionary(value, "AAPL:AKPDFAnnotationDictionary", &v28))
  {
    AKBorderMaskAnnotationClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = *(MEMORY[0x1E695F058] + 16);
      v26 = *MEMORY[0x1E695F058];
      v27 = v11;
      if (CGPDFDictionaryGetRect())
      {
        [annotationCopy drawingBounds];
        v24 = v12;
        [annotationCopy drawingBounds];
        v23 = v13;
        [annotationCopy drawingBounds];
        v22 = v14;
        [annotationCopy drawingBounds];
        v15.f64[0] = v24;
        v15.f64[1] = v23;
        v16.f64[1] = v22;
        v17 = vabdq_f64(v27, v16);
        v18 = vdupq_n_s64(0x3F747AE147AE147BuLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v18, vabdq_f64(v26, v15)), vcgeq_f64(v18, v17))))))
        {
          goto LABEL_9;
        }

        AKArrowShapeAnnotationClass();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          AKArrowAnnotationClass();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0 || ([annotationCopy annotationText], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "string"), v6 = objc_claimAutoreleasedReturnValue(), v20, !v6))
            {
              v6 = &stru_1F416DF70;
            }

            string = 0;
            v7 = &stru_1F416DF70;
            if (CGPDFDictionaryGetString(dictionary, "Contents", &string))
            {
              v21 = CGPDFStringCopyTextString(string);
              if (v21)
              {
                v7 = v21;
              }
            }

            v10 = [(__CFString *)v6 isEqualToString:v7];
            goto LABEL_5;
          }
        }
      }
    }

LABEL_12:
    v10 = 1;
    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
  v7 = _dictionaryForPDFDictionary(v28, v6);
  v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
  v9 = _dictionaryForPDFDictionary(dictionary, v8);
  [(__CFString *)v7 removeObjectForKey:@"AAPL:AKExtras"];
  [v9 removeObjectForKey:@"AAPL:AKExtras"];
  [v9 removeObjectForKey:@"AP"];
  [(__CFString *)v7 removeObjectForKey:@"AP"];
  [v9 removeObjectForKey:@"Parent"];
  [(__CFString *)v7 removeObjectForKey:@"Popup"];
  v10 = [v9 isEqualToDictionary:v7];

LABEL_5:
LABEL_13:

  return v10;
}

@end