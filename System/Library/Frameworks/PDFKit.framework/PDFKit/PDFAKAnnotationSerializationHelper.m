@interface PDFAKAnnotationSerializationHelper
+ (BOOL)_annotationClassHasSeniority:(id)a3;
+ (BOOL)_shouldUseAKAnnotation:(id)a3 toRepresentCGPDFDictionary:(CGPDFDictionary *)a4;
+ (id)akAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)a3 andDictionary:(CGPDFDictionary *)a4;
+ (void)addAKAnnotation:(id)a3 toAnnotationDictionary:(__CFDictionary *)a4;
@end

@implementation PDFAKAnnotationSerializationHelper

+ (void)addAKAnnotation:(id)a3 toAnnotationDictionary:(__CFDictionary *)a4
{
  v15 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = [v15 dataRepresentation];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 base64EncodedStringWithOptions:0];
    if ([a1 _annotationClassHasSeniority:v15])
    {
      v12 = @"/AAPL:AKAnnotationObject";
    }

    else
    {
      v12 = @"/AAPL:AKAnnotationV2";
    }

    CFDictionarySetValue(Mutable, v12, v11);
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, a4);
    if (MutableCopy)
    {
      v14 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"/AAPL:PaperKit");
      CFDictionarySetValue(Mutable, @"/AAPL:AKPDFAnnotationDictionary", v14);
      CFRelease(v14);
    }

    CFDictionarySetValue(a4, @"/AAPL:AKExtras", Mutable);
    CFRelease(Mutable);
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)akAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)a3 andDictionary:(CGPDFDictionary *)a4
{
  v4 = 0;
  if (a3 && a4)
  {
    IsVersioned = CGPDFAnnotationIsVersioned();
    v8 = objc_autoreleasePoolPush();
    if (!IsVersioned || CGPDFAnnotationIsPristine())
    {
      value = 0;
      if (CGPDFDictionaryGetDictionary(a4, "AAPL:AKExtras", &value) && ((string = 0, CGPDFDictionaryGetString(value, "AAPL:AKAnnotationObject", &string)) || CGPDFDictionaryGetString(value, "AAPL:AKAnnotationV2", &string)) && (v9 = CGPDFStringCopyTextString(string)) != 0)
      {
        v10 = v9;
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

        v12 = [AKAnnotationClass() annotationWithData:v11];

        objc_autoreleasePoolPop(v8);
        if (!((v12 == 0) | IsVersioned & 1) && ([a1 _shouldUseAKAnnotation:v12 toRepresentCGPDFDictionary:a4] & 1) == 0)
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

+ (BOOL)_annotationClassHasSeniority:(id)a3
{
  v3 = a3;
  if ([v3 isMemberOfClass:AKInkAnnotationClass()])
  {
    v4 = 0;
  }

  else if ([v3 isMemberOfClass:AKDoodleAnnotationClass()] & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKArrowAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKRectAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKOvalAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKTextBoxAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKTextFieldAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKArrowShapeAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKBorderMaskAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKCropAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKHeartAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKImageAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKLoupeAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKPolygonAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKSignatureAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKSpeechBubbleAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKStarAnnotationClass()) & 1) != 0 || (objc_msgSend(v3, "isMemberOfClass:", AKThoughtBubbleAnnotationClass()))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isMemberOfClass:AKTriangleAnnotationClass()];
  }

  return v4;
}

+ (BOOL)_shouldUseAKAnnotation:(id)a3 toRepresentCGPDFDictionary:(CGPDFDictionary *)a4
{
  v5 = a3;
  if (!a4)
  {
    goto LABEL_12;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(a4, "AAPL:AKExtras", &value))
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
        [v5 drawingBounds];
        v24 = v12;
        [v5 drawingBounds];
        v23 = v13;
        [v5 drawingBounds];
        v22 = v14;
        [v5 drawingBounds];
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
            if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 annotationText], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "string"), v6 = objc_claimAutoreleasedReturnValue(), v20, !v6))
            {
              v6 = &stru_1F416DF70;
            }

            string = 0;
            v7 = &stru_1F416DF70;
            if (CGPDFDictionaryGetString(a4, "Contents", &string))
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
  v9 = _dictionaryForPDFDictionary(a4, v8);
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