@interface CITextDetector
- (CGAffineTransform)ctmForImageWithBounds:(SEL)bounds orientation:(CGRect)orientation;
- (CITextDetector)initWithContext:(id)context options:(id)options;
- (id)adjustedImageFromImage:(id)image orientation:(int)orientation inverseCTM:(CGAffineTransform *)m;
- (id)featuresInImage:(id)image options:(id)options;
- (void)dealloc;
@end

@implementation CITextDetector

- (CITextDetector)initWithContext:(id)context options:(id)options
{
  v13.receiver = self;
  v13.super_class = CITextDetector;
  v6 = [(CIDetector *)&v13 init];
  if (v6)
  {
    if (initWithContext_options__onceToken != -1)
    {
      [CITextDetector initWithContext:options:];
    }

    if (initWithContext_options__loadedOK)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3052000000;
      v18 = __Block_byref_object_copy__16;
      v7 = getFKTextDetectorClass_softClass;
      v19 = __Block_byref_object_dispose__16;
      v20 = getFKTextDetectorClass_softClass;
      if (!getFKTextDetectorClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getFKTextDetectorClass_block_invoke;
        v14[3] = &unk_1E75C1E10;
        v14[4] = &v15;
        __getFKTextDetectorClass_block_invoke(v14);
        v7 = v16[5];
      }

      _Block_object_dispose(&v15, 8);
      v6->textDetector = [[v7 alloc] initWithDimensions:{128.0, 128.0}];
      if (!context)
      {
        context = +[CIContext _singletonContext];
      }

      [(CITextDetector *)v6 setContext:context];
      if (!v6->featureOptions)
      {
        v6->featureOptions = [MEMORY[0x1E695DF90] dictionary];
      }

      v8 = [options objectForKey:@"CIDetectorMinFeatureSize"];
      if (v8)
      {
        v9 = v8;
        [v8 floatValue];
        if (v10 >= 0.0 && ([v9 floatValue], v11 <= 1.0))
        {
          [(NSMutableDictionary *)v6->featureOptions setObject:v9 forKey:@"CIDetectorMinFeatureSize"];
        }

        else
        {
          NSLog(&cfstr_UnknownCidetec_1.isa);
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

void __42__CITextDetector_initWithContext_options___block_invoke()
{
  if (FutharkLibraryCore())
  {
    initWithContext_options__loadedOK = 1;
  }

  else
  {
    NSLog(&cfstr_Fktextdetector.isa);
  }
}

- (void)dealloc
{
  [(CITextDetector *)self setContext:0];
  textDetector = self->textDetector;
  if (textDetector)
  {

    self->textDetector = 0;
  }

  featureOptions = self->featureOptions;
  if (featureOptions)
  {
  }

  v5.receiver = self;
  v5.super_class = CITextDetector;
  [(CITextDetector *)&v5 dealloc];
}

- (id)featuresInImage:(id)image options:(id)options
{
  v79[1] = *MEMORY[0x1E69E9840];
  v7 = ci_signpost_log_detector();
  if (&self->super.super.isa + 1 >= 2)
  {
    v56 = v7;
    if (os_signpost_enabled(v7))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v56, OS_SIGNPOST_INTERVAL_BEGIN, self, "CITextDetector", &unk_19CFBCBAE, &buf, 2u);
    }
  }

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v8 = __42__CITextDetector_featuresInImage_options___block_invoke;
  v75 = __42__CITextDetector_featuresInImage_options___block_invoke;
  v76 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  if (!image || !self->textDetector)
  {
    v59 = MEMORY[0x1E695E0F0];
    goto LABEL_33;
  }

  v72 = 0;
  pixelBufferOut = 0;
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(&buf, 0, sizeof(buf));
  v9 = -[CITextDetector adjustedImageFromImage:orientation:inverseCTM:](self, "adjustedImageFromImage:orientation:inverseCTM:", image, [objc_msgSend(options valueForKey:{@"CIDetectorImageOrientation", "intValue"}], &buf);
  [v9 extent];
  x = v80.origin.x;
  y = v80.origin.y;
  width = v80.size.width;
  height = v80.size.height;
  self->_width = CGRectGetWidth(v80);
  v81.origin.x = x;
  v81.origin.y = y;
  v81.size.width = width;
  v81.size.height = height;
  self->_height = CGRectGetHeight(v81);
  [(FKTextDetector *)self->textDetector resetOptions];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->featureOptions];
  [v14 addEntriesFromDictionary:options];
  v15 = [v14 objectForKey:@"CIDetectorMinFeatureSize"];
  if (v15)
  {
    [v15 floatValue];
    [(FKTextDetector *)self->textDetector setMinimumCharacterHeight:(self->_height * v16)];
  }

  v17 = [v14 objectForKey:@"CIDetectorDetectDiacritics"];
  if (v17)
  {
    -[FKTextDetector setDetectDiacritics:](self->textDetector, "setDetectDiacritics:", [v17 BOOLValue]);
  }

  v18 = [v14 objectForKey:@"CIDetectorReturnSubFeatures"];
  if (v18)
  {
    -[FKTextDetector setReturnSubFeatures:](self->textDetector, "setReturnSubFeatures:", [v18 BOOLValue]);
  }

  v19 = [v14 objectForKey:@"CITextDetectorMinimizeFalseDetections"];
  if (v19)
  {
    -[FKTextDetector setMinimizeFalseDetections:](self->textDetector, "setMinimizeFalseDetections:", [v19 BOOLValue]);
  }

  v20 = [v14 objectForKey:@"CIDetectorLanguage"];
  v21 = [v14 objectForKey:@"CIDetectorExtraCharacters"];
  if (v20)
  {
    v22 = v21;
    if (([v20 isEqualToString:@"CIDetectorLanguageNone"] & 1) == 0)
    {
      if ([v20 isEqualToString:@"CIDetectorLanguageASCII"])
      {
        v23 = @"ASCII";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageEnglish"])
      {
        v23 = @"en";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageDanish"])
      {
        v23 = @"da";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageDutch"])
      {
        v23 = @"nl";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageFrench"])
      {
        v23 = @"fr";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageGerman"])
      {
        v23 = @"de";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageIcelandic"])
      {
        v23 = @"is";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageItalian"])
      {
        v23 = @"it";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguageNorwegian"])
      {
        v23 = @"no";
      }

      else if ([v20 isEqualToString:@"CIDetectorLanguagePortuguese"])
      {
        v23 = @"pt";
      }

      else
      {
        if (([v20 isEqualToString:@"CIDetectorLanguageSpanish"] & 1) == 0)
        {
          v58 = [v20 isEqualToString:@"CIDetectorLanguageSwedish"];
          if (v58)
          {
            v23 = @"se";
          }

          else
          {
            v23 = 0;
          }

          if (!v22)
          {
            goto LABEL_15;
          }

          goto LABEL_57;
        }

        v23 = @"es";
      }

      v58 = 1;
      if (!v22)
      {
        goto LABEL_15;
      }

LABEL_57:
      if (v58)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@;%@", v23, v22];
      }

      goto LABEL_15;
    }
  }

  v23 = 0;
LABEL_15:
  [(FKTextDetector *)self->textDetector setRecognitionLanguage:v23];
  v78 = *MEMORY[0x1E69660D8];
  v79[0] = MEMORY[0x1E695E0F8];
  CVPixelBufferCreate(0, self->_width, self->_height, 0x34323066u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1], &pixelBufferOut);
  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
  if (pixelBufferOut)
  {
    context = [(CITextDetector *)self context];
    [(CIContext *)context render:v9 toCVPixelBuffer:pixelBufferOut];
    height = [(FKTextDetector *)self->textDetector detectFeaturesInBuffer:pixelBufferOut withRegionOfInterest:&v72 error:x, y, width, height];
    if (v72)
    {
      NSLog(&cfstr_TextDetectionF.isa, v72);
    }

    CVPixelBufferRelease(pixelBufferOut);
    v26 = 0;
    v60 = height;
    while ([height count] > v26)
    {
      v61 = v26;
      v27 = [height objectAtIndex:v26];
      v28 = self->_width;
      BoundingBox = makeBoundingBox(v27, v28);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v70.x = 0.0;
      v70.y = 0.0;
      v69.x = 0.0;
      v69.y = 0.0;
      v68.x = 0.0;
      v68.y = 0.0;
      v67.x = 0.0;
      v67.y = 0.0;
      v36 = self->_width;
      *&v30 = self->_height;
      subFeatures = [v27 subFeatures];
      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(subFeatures, "count")}];
      for (i = 0; [subFeatures count] > i; ++i)
      {
        v40 = [subFeatures objectAtIndex:i];
        v41 = self->_width;
        v42 = makeBoundingBox(v40, v41);
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v66.x = 0.0;
        v66.y = 0.0;
        v65.x = 0.0;
        v65.y = 0.0;
        v64.x = 0.0;
        v64.y = 0.0;
        v63.x = 0.0;
        v63.y = 0.0;
        v49 = self->_width;
        *&v43 = self->_height;
        text = [v40 text];
        v51 = [CITextFeature alloc];
        v62 = buf;
        v82.origin.x = v42;
        v82.origin.y = v44;
        v82.size.width = v46;
        v82.size.height = v48;
        v83 = CGRectApplyAffineTransform(v82, &v62);
        v52 = [(CITextFeature *)v51 initWithBounds:0 topLeft:text topRight:v83.origin.x bottomLeft:v83.origin.y bottomRight:v83.size.width subFeatures:v83.size.height messageString:buf.tx + v66.y * buf.c + buf.a * v66.x, buf.ty + v66.y * buf.d + buf.b * v66.x, buf.tx + buf.c * v64.y + buf.a * v64.x, buf.ty + buf.d * v64.y + buf.b * v64.x, buf.tx + buf.c * v65.y + buf.a * v65.x, buf.ty + buf.d * v65.y + buf.b * v65.x, buf.tx + buf.c * v63.y + buf.a * v63.x, buf.ty + buf.d * v63.y + buf.b * v63.x];
        if (v52)
        {
          [v38 addObject:v52];
        }
      }

      text2 = [v27 text];
      v54 = [CITextFeature alloc];
      v62 = buf;
      v84.origin.x = BoundingBox;
      v84.origin.y = v31;
      v84.size.width = v33;
      v84.size.height = v35;
      v85 = CGRectApplyAffineTransform(v84, &v62);
      v55 = [(CITextFeature *)v54 initWithBounds:v38 topLeft:text2 topRight:v85.origin.x bottomLeft:v85.origin.y bottomRight:v85.size.width subFeatures:v85.size.height messageString:buf.tx + v70.y * buf.c + buf.a * v70.x, buf.ty + v70.y * buf.d + buf.b * v70.x, buf.tx + buf.c * v68.y + buf.a * v68.x, buf.ty + buf.d * v68.y + buf.b * v68.x, buf.tx + buf.c * v69.y + buf.a * v69.x, buf.ty + buf.d * v69.y + buf.b * v69.x, buf.tx + buf.c * v67.y + buf.a * v67.x, buf.ty + buf.d * v67.y + buf.b * v67.x];
      if (v55)
      {
        [v59 addObject:v55];
      }

      height = v60;
      v26 = v61 + 1;
    }
  }

  else
  {
    v59 = MEMORY[0x1E695E0F0];
  }

  v8 = v75;
LABEL_33:
  v8(v74);
  return v59;
}

void __42__CITextDetector_featuresInImage_options___block_invoke(uint64_t a1)
{
  v2 = ci_signpost_log_detector();
  v3 = *(a1 + 32);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CITextDetector", &unk_19CFBCBAE, v5, 2u);
    }
  }
}

- (CGAffineTransform)ctmForImageWithBounds:(SEL)bounds orientation:(CGRect)orientation
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = fmax(orientation.size.width, orientation.size.height);
  t1.b = 0.0;
  t1.c = 0.0;
  v16[0] = 0x3FF0000000000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0x3FF0000000000000;
  v16[4] = 0;
  v16[5] = 0;
  v16[6] = 0xBFF0000000000000;
  v16[7] = 0;
  v16[8] = 0;
  v16[9] = 0x3FF0000000000000;
  v6 = 1024.0 / v5;
  v7 = v5 <= 1228.0;
  v8 = 1.0;
  if (!v7)
  {
    v8 = v6;
  }

  *&v16[10] = orientation.size.width * v8;
  v17 = xmmword_19CF26640;
  v18 = 0;
  v19 = 0;
  v20 = 0xBFF0000000000000;
  v21 = orientation.size.width * v8;
  v22 = orientation.size.height * v8;
  v24 = 0;
  v25 = 0;
  v23 = 0x3FF0000000000000;
  v26 = xmmword_19CF25100;
  v28 = xmmword_19CF26640;
  v29 = xmmword_19CF25100;
  v27 = orientation.size.height * v8;
  v30 = orientation.size.height * v8;
  v31 = orientation.size.width * v8;
  v32 = xmmword_19CF26640;
  v34 = 0;
  v35 = 0;
  v33 = 0x3FF0000000000000;
  v36 = orientation.size.width * v8;
  v37 = xmmword_19CF26650;
  v39 = 0u;
  v40 = 0u;
  v38 = 0x3FF0000000000000;
  v41 = 0x3FF0000000000000;
  v42 = xmmword_19CF25100;
  v43 = orientation.size.height * v8;
  v44 = 0;
  if ((a5 - 9) >= 0xFFFFFFF8)
  {
    v9 = a5 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = &v16[6 * v9];
  t1.a = v8;
  t1.d = v8;
  y = orientation.origin.y;
  *&t1.tx = vandq_s8(vmulq_n_f64(vnegq_f64(orientation.origin), v8), vcgtq_f64(vabsq_f64(orientation.origin), vdupq_n_s64(0x3F847AE147AE147BuLL)));
  v12 = v10[1];
  *&v14.a = *v10;
  *&v14.c = v12;
  *&v14.tx = v10[2];
  return CGAffineTransformConcat(retstr, &t1, &v14);
}

- (id)adjustedImageFromImage:(id)image orientation:(int)orientation inverseCTM:(CGAffineTransform *)m
{
  v6 = *&orientation;
  imageCopy = image;
  memset(&v13, 0, sizeof(v13));
  [image extent];
  if (self)
  {
    [(CITextDetector *)self ctmForImageWithBounds:v6 orientation:?];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v11 = v13;
  CGAffineTransformInvert(&v12, &v11);
  v9 = *&v12.c;
  *&m->a = *&v12.a;
  *&m->c = v9;
  *&m->tx = *&v12.tx;
  v12 = v13;
  if (!CGAffineTransformIsIdentity(&v12))
  {
    v12 = v13;
    return [imageCopy imageByApplyingTransform:&v12];
  }

  return imageCopy;
}

@end