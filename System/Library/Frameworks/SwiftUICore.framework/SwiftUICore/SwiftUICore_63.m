id _NSTextLayoutFragmentLayoutFragmentWithKeyframe(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 layoutFragmentWithKeyframe:v4];
    [v5 layout];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v7 = v6;
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

id _NSTextLineFragmentGetOverridesHandler(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 _renderingAttributeOverridesProvider];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _NSTextAttachmentDraw(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v20 = a1;
  v19 = a5;
  if (objc_opt_respondsToSelector())
  {
    [v20 _showWithBounds:a2 attributes:a3 runRange:a4 textLayoutFragment:v19 inContext:{a6, a7, a8, a9, a10}];
  }
}

void _NSTextCustomRenderingDelegateInvalidateInteractionGeometry(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _invalidateInteractionGeometry];
  }
}

void _NSTextCustomRenderingDelegateSetNeedsFrameUpdate(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v1 _setNeedsFrameUpdateForCustomRendering];
  }

  else
  {
    [v1 setNeedsFrameUpdateForSurface:0];
  }
}

void _NSTextCustomRenderingDelegateWillDraw(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v7 _willDrawContentOfSurface:v5 withBlock:v6];
  }

  else
  {
    v6[2](v6);
  }
}

uint64_t GetAttributedStringKey(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"NSColor"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"NSParagraphStyle"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"NSFont"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"NSAttachment"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"CTAdaptiveImageProvider"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"NSBaselineOffset"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"NSKern"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"CTTracking"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"NSStrikethrough"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"NSStrikethroughColor"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"NSUnderline"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"NSUnderlineColor"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"NSShadow"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E696A518]])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableDateInterval"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableAbsoluteDate"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableCurrentDate"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableTimerInterval"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableCLKTextProvider"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"SwiftUI.resolvableAttributeConfiguration"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableProgress"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"SwiftUI.ResolvableTimeDataFormatting"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"SwiftUI.resolvableTextSegment"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DB720]])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"UIAccessibilityTokenDurationTimeMMSS"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"UIAccessibilitySpeechAttributePunctuation"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"UIAccessibilitySpeechAttributeSpellOut"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"UIAccessibilitySpeechAttributePitch"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"UIAccessibilitySpeechAttributeLanguage"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"UIAccessibilitySpeechAttributeIPANotation"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"UIAccessibilitySpeechAttributeAnnouncementPriority"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"UIAccessibilityTextAttributeContext"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"UIAccessibilityTextAttributeHeadingLevel"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"SwiftUI.accessibilityLabel"])
  {
    v2 = 30;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _LocalizeString(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = _getBestLocalization(v9, a4);
  if (v10)
  {
    [v9 localizedStringForKey:v8 value:0 table:v7 localization:v10];
  }

  else
  {
    [v9 localizedStringForKey:v8 value:0 table:v7];
  }
  v11 = ;

  return v11;
}

CGImageRef _CGImageCreateCopyForImageIODestination(CGImage *a1)
{
  if (!CGImageGetDecode(a1) && !CGImageGetMask() && !CGImageGetMatte() && !CGImageGetMaskingColors())
  {
    goto LABEL_18;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  if (BitsPerComponent >= 9)
  {
    v5 = 4353;
  }

  else
  {
    v5 = 8194;
  }

  if (BitsPerComponent >= 9)
  {
    v6 = 16;
  }

  else
  {
    v6 = 8;
  }

  v7 = MEMORY[0x1E695F1C0];
  if (BitsPerComponent >= 9)
  {
    v7 = MEMORY[0x1E695F110];
  }

  v8 = CGColorSpaceCreateWithName(*v7);
  v9 = CGBitmapContextCreate(0, Width, Height, v6, 0, v8, v5);
  CGColorSpaceRelease(v8);
  if (v9 && (CGContextSetBlendMode(v9, kCGBlendModeCopy), v13.size.width = Width, v13.size.height = Height, v13.origin.x = 0.0, v13.origin.y = 0.0, CGContextDrawImage(v9, v13, a1), Image = CGBitmapContextCreateImage(v9), CGContextRelease(v9), Image))
  {
    if ((v5 & 0x100) != 0)
    {
      CGImageCopyHeadroomFromOriginal();
    }

    return Image;
  }

  else
  {
LABEL_18:

    return CGImageRetain(a1);
  }
}

void _RBDrawingStateSetTextRunRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = *MEMORY[0x1E69E9840];
  if (a3 | a4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:a2];
    v8[1] = v5;
    v6 = [MEMORY[0x1E696AD98] numberWithLong:a4];
    v8[2] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

    RBDrawingStateSetAttribute();
  }

  else
  {

    RBDrawingStateSetAttribute();
  }
}

void _CGContextSetShapeDistance(double a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (a1 < 0.0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v6[0] = @"value";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
  v6[1] = @"argument";
  v7[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:fabs(a1)];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

  CGContextGetDelegate();
  CGContextGetRenderingState();
  CGContextGetGState();
  CGContextDelegateOperation();
}

void _NSMarkedTextAttributes(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [a2 textLineFragmentRange];
  [v6 markedTextAttributesForRange:v7 usingBlock:v5];
}

BOOL _CGFontRenderingStyleShouldQueryDilationParameters(int a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = 112;
  }

  else
  {
    v1 = 3456;
  }

  return (v1 & a1) != 0;
}

BOOL _isBeginningOfSentence(CFStringRef theString, const __CFString *a2, const __CFLocale *a3)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  CFStringUppercase(MutableCopy, 0);
  Copy = CFStringCreateCopy(0, MutableCopy);
  CFRelease(MutableCopy);
  v7 = *MEMORY[0x1E695E480];
  v14.length = CFStringGetLength(Copy);
  v14.location = 0;
  v8 = CFStringTokenizerCreate(v7, Copy, v14, 1uLL, a3);
  for (i = v8; ; v8 = i)
  {
    if (!CFStringTokenizerAdvanceToNextToken(v8))
    {
      v12 = 0;
      goto LABEL_7;
    }

    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(i);
    v10 = CFStringCreateWithSubstring(0, Copy, CurrentTokenRange);
    location = CFStringFind(v10, a2, 0).location;
    if (location != -1)
    {
      break;
    }

    CFRelease(v10);
  }

  v12 = location == 0;
  CFRelease(v10);
LABEL_7:
  CFRelease(Copy);
  CFRelease(i);
  return v12;
}

uint64_t __SwiftUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SwiftUILibraryCore_frameworkLibrary = result;
  return result;
}

void _MovableLockDestroy(uint64_t a1)
{
  pthread_cond_destroy((a1 + 64));
  pthread_mutex_destroy(a1);

  free(a1);
}

id CoreMakeNSShadowWithCustomStyleIndex(char a1, double a2)
{
  v4 = objc_alloc_init(CoreShadowClass());
  [v4 setShadowBlurRadius:a2];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __custom_shadow_style_color_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a1;
  if (custom_shadow_style_color_once != -1)
  {
    dispatch_once(&custom_shadow_style_color_once, block);
  }

  [v4 setShadowColor:custom_shadow_style_color_color];

  return v4;
}

void __custom_shadow_style_color_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = xmmword_18DD85258;
  v7 = unk_18DD85268;
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  v3 = CGColorCreate(v2, &v6);
  CGColorSpaceRelease(v2);
  v4 = [CoreColorGetKitColorClass(*(a1 + 32)) colorWithCGColor:{v3, v6, v7}];
  v5 = custom_shadow_style_color_color;
  custom_shadow_style_color_color = v4;

  CGColorRelease(v3);
}

uint64_t CoreViewSpeculativeLayer(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a1;
  }

  if (_once != -1)
  {
    CoreViewLayerView_cold_1();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a1 layer];
}

uint64_t CoreViewSetNeedsDisplay(uint64_t result, void *a2)
{
  if (result <= 1)
  {
    return [a2 setNeedsDisplay];
  }

  return result;
}

uint64_t CoreViewSetSize(uint64_t result, void *a2)
{
  if (result <= 1)
  {
    [a2 bounds];

    return [a2 setBounds:?];
  }

  return result;
}

uint64_t __CoreViewSetGeometry_block_invoke()
{
  result = objc_opt_respondsToSelector();
  CoreViewSetGeometry_supportsGeometryObservation = result & 1;
  return result;
}

uint64_t CoreViewDefaultAction(void *a1, void *a2)
{
  if (!pthread_main_np() || ([a1 hasBeenCommitted] & 1) == 0 || objc_msgSend(a2, "isEqualToString:", @"delegate"))
  {
    return *MEMORY[0x1E695E738];
  }

  if (CoreViewDefaultAction_onceToken != -1)
  {
    CoreViewDefaultAction_cold_1();
  }

  if (!CoreViewDefaultAction__sharedUIView)
  {
    return *MEMORY[0x1E695E738];
  }

  v4 = [a1 delegate];
  [a1 setDelegate:0];
  v5 = [CoreViewDefaultAction__sharedUIView actionForLayer:a1 forKey:a2];
  [a1 setDelegate:v4];
  return v5;
}

id __CoreViewDefaultAction_block_invoke()
{
  if (_once != -1)
  {
    CoreViewLayerView_cold_1();
  }

  result = objc_alloc_init(_uiViewClass);
  CoreViewDefaultAction__sharedUIView = result;
  return result;
}

uint64_t CoreViewSDFDefaultAction(void *a1, void *a2)
{
  if (([a2 isEqualToString:@"position"] & 1) == 0 && !objc_msgSend(a2, "isEqualToString:", @"bounds"))
  {
    return *MEMORY[0x1E695E738];
  }

  return CoreViewDefaultAction(a1, a2);
}

void *CoreViewMakeIntelligenceLightSourceView(int a1)
{
  v2 = NSClassFromString(&cfstr_Uivisualeffect.isa);
  if (!v2)
  {
    return 0;
  }

  v3 = [[v2 alloc] initWithEffect:0];
  CoreViewUpdateIntelligenceLightSourceView(v3, a1);
  return v3;
}

Class CoreViewUpdateIntelligenceLightSourceView(void *a1, int a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = NSClassFromString(&cfstr_Uiintelligence.isa);
  result = NSClassFromString(&cfstr_Uiintelligence_0.isa);
  if (result)
  {
    v6 = result;
    if (a2)
    {
      v7 = [(objc_class *)v4 sharedReactiveLight];
    }

    else
    {
      v7 = [(objc_class *)v4 sharedLight];
    }

    v8[0] = [[v6 alloc] initWithLightSource:v7];
    return [a1 setBackgroundEffects:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 1)}];
  }

  return result;
}

CorePlatformClockKitTextProvider *CoreMakeCorePlatformClockKitTextProvider(void *a1)
{
  v1 = a1;
  v2 = [[CorePlatformClockKitTextProvider alloc] initWithProvider:v1];

  return v2;
}

BOOL _CGPathParseString(CGMutablePathRef path, char *a2)
{
  v3 = 0;
  v23 = *MEMORY[0x1E69E9840];
  v19 = a2;
  v4 = 0.0;
  height = 0.0;
  v6 = 0.0;
LABEL_2:
  width = 0.0;
LABEL_3:
  for (i = a2 + 1; ; ++i)
  {
    v9 = *(i - 1);
    if (v9 <= 0x1F)
    {
      break;
    }

    if (*(i - 1) > 0x62u)
    {
      if (*(i - 1) > 0x70u)
      {
        if (*(i - 1) > 0x75u)
        {
          if (v9 != 118)
          {
            if (v9 == 120)
            {
              goto LABEL_12;
            }

            if (v9 == 121 && v3 == 4)
            {
              x = v20.origin.x;
              y = v20.origin.y;
              width = v20.size.width;
              height = v20.size.height;
              v13 = path;
              v14 = v20.size.width;
              v15 = v20.size.height;
              goto LABEL_40;
            }

            return 0;
          }

          if (v3 != 4)
          {
            return 0;
          }

          v6 = v20.origin.x;
          v4 = v20.origin.y;
          v16 = v20.size.width;
          v17 = v20.size.height;
          CGPathAddCurveToPoint(path, 0, width, height, v20.origin.x, v20.origin.y, v20.size.width, v20.size.height);
          v3 = 0;
          a2 = ++v19;
          height = v17;
          width = v16;
        }

        else
        {
          if (v9 == 113)
          {
            if (v3 != 4)
            {
              return 0;
            }

            v6 = v20.origin.x;
            v4 = v20.origin.y;
            width = v20.size.width;
            height = v20.size.height;
            goto LABEL_43;
          }

          if (v9 != 114)
          {
            if (v9 != 116 || v3 != 2)
            {
              return 0;
            }

            v6 = -(v6 - width * 2.0);
            v4 = -(v4 - height * 2.0);
            width = v20.origin.x;
            height = v20.origin.y;
LABEL_43:
            CGPathAddQuadCurveToPoint(path, 0, v6, v4, width, height);
LABEL_44:
            v3 = 0;
            a2 = ++v19;
            goto LABEL_3;
          }

          result = 0;
          if (*i != 101 || v3 != 4)
          {
            return result;
          }

          width = v20.size.width;
          height = v20.size.height;
          CGPathAddRect(path, 0, v20);
          v3 = 0;
          a2 = v19 + 2;
          v19 += 2;
        }

        goto LABEL_3;
      }

      if (*(i - 1) > 0x6Bu)
      {
        switch(v9)
        {
          case 'l':
            if (v3 != 2)
            {
              return 0;
            }

            v6 = v20.origin.x;
            v4 = v20.origin.y;
            CGPathAddLineToPoint(path, 0, v20.origin.x, v20.origin.y);
            break;
          case 'm':
            if (v3 != 2)
            {
              return 0;
            }

            v6 = v20.origin.x;
            v4 = v20.origin.y;
            CGPathMoveToPoint(path, 0, v20.origin.x, v20.origin.y);
            break;
          case 'p':
            goto LABEL_12;
          default:
            return 0;
        }

        v3 = 0;
        a2 = ++v19;
        height = v4;
        width = v6;
        goto LABEL_3;
      }

      if (v9 == 99)
      {
        if (v3 != 6)
        {
          return 0;
        }

        x = v20.origin.x;
        y = v20.origin.y;
        v6 = v20.size.width;
        v4 = v20.size.height;
        width = v21;
        height = v22;
        v13 = path;
        v14 = v20.size.width;
        v15 = v20.size.height;
LABEL_40:
        CGPathAddCurveToPoint(v13, 0, x, y, v14, v15, width, height);
        goto LABEL_44;
      }

      if (v9 == 101)
      {
        goto LABEL_12;
      }

      if (v9 != 104 || v3)
      {
        return 0;
      }

      CGPathCloseSubpath(path);
      a2 = ++v19;
      height = 0.0;
      goto LABEL_2;
    }

    v10 = v9 - 32;
    if (v10 > 0x38)
    {
      return 0;
    }

    if (v10)
    {
      if (((1 << v10) & 0x101002003FF6800) != 0)
      {
LABEL_12:
        if (v3 != 6)
        {
          *(&v20.origin.x + v3++) = strtod_l(i - 1, &v19, 0);
          a2 = v19;
          goto LABEL_3;
        }

        return 0;
      }

      if (v10 != 41)
      {
        return 0;
      }

      a2 = i - 1;
      if (*i == 110 && i[1] == 102)
      {
        goto LABEL_12;
      }

      goto LABEL_3;
    }

LABEL_7:
    v19 = i;
  }

  if (v9 > 0xD)
  {
    return 0;
  }

  if (((1 << v9) & 0x3600) != 0)
  {
    goto LABEL_7;
  }

  return !*(i - 1);
}

uint64_t _CGPathCopyDescription(const CGPath *a1, double a2)
{
  info[0] = CFStringCreateMutable(0, 0);
  *&info[1] = a2;
  *&info[2] = 1.0 / a2;
  CGPathApply(a1, info, copy_path_iter);
  return info[0];
}

void copy_path_iter(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (CFStringGetLength(*a1))
  {
    CFStringAppend(*a1, @" ");
  }

  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = 108;
    }

    else
    {
      v5 = 109;
    }

    chars = v5;
    v6 = 2;
  }

  else
  {
    switch(v4)
    {
      case 2:
        chars = 113;
        v6 = 4;
        break;
      case 3:
        chars = 99;
        v6 = 6;
        break;
      case 4:
        chars = 104;
        goto LABEL_19;
      default:
        return;
    }
  }

  v7 = 0;
  v8 = 8 * v6;
  do
  {
    v9 = *(*(a2 + 8) + v7);
    v10 = *(a1 + 8);
    if (v10 != 0.0)
    {
      v9 = v10 * round(v9 * *(a1 + 16));
    }

    snprintf_l(cStr, 0x40uLL, 0, "%g ", v9);
    CFStringAppendCString(*a1, cStr, 0x8000100u);
    v7 += 8;
  }

  while (v8 != v7);
LABEL_19:
  CFStringAppendCharacters(*a1, &chars, 1);
}

CGPathRef _CGPathCreateRoundedRect(char a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  if (a6 >= 0.0)
  {
    v11 = a6;
  }

  else
  {
    v11 = 0.0;
  }

  if (a7 >= 0.0)
  {
    v12 = a7;
  }

  else
  {
    v12 = 0.0;
  }

  if (v11 == 0.0 || v12 == 0.0 || CGRectIsEmpty(*&a2))
  {
    goto LABEL_21;
  }

  if (a1)
  {
    RBPathMakeRoundedRect();
    v14 = RBPathCopyCGPath();
    RBPathRelease();
    return v14;
  }

  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  Width = CGRectGetWidth(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Height = CGRectGetHeight(v29);
  if (v11 + v11 > Width)
  {
    v11 = nextafter(Width * 0.5, 0.0);
  }

  if (v12 + v12 > Height)
  {
    v12 = nextafter(Height * 0.5, 0.0);
  }

  v18 = v11 < 0.0 || v11 + v11 > Width;
  if (v18 || v12 < 0.0 || v12 + v12 > Height)
  {
LABEL_21:
    v19 = a2;
    v20 = a3;
    v21 = a4;
    v22 = a5;

    return CGPathCreateWithRect(*&v19, 0);
  }

  else
  {
    v23 = a2;
    v24 = a3;
    v25 = a4;
    v26 = a5;

    return CGPathCreateWithRoundedRect(*&v23, v11, v12, 0);
  }
}

uint64_t NSCalendarUnitSmallestUnit(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = qword_18DD85278[v1];
    if ((v2 & a1) != 0)
    {
      break;
    }

    if (++v1 == 14)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _isWeekdayDayTemplate(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EEE d"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"EEEE d"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"ccccc d"];
  }

  return v2;
}

void sub_18D3CE84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXSwiftUIInteractionLocationDescriptorDefaultName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXInteractionLocationDescriptorDefaultNameSymbolLoc_ptr;
  v8 = getAXInteractionLocationDescriptorDefaultNameSymbolLoc_ptr;
  if (!getAXInteractionLocationDescriptorDefaultNameSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "AXInteractionLocationDescriptorDefaultName");
    getAXInteractionLocationDescriptorDefaultNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = _initializeCoreGlue2_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id AXAttributedStringConvert(void *a1)
{
  v1 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v2 = getAXGetCFAttributedStringFromAXAttributedStringSymbolLoc_ptr;
  v12 = getAXGetCFAttributedStringFromAXAttributedStringSymbolLoc_ptr;
  if (!getAXGetCFAttributedStringFromAXAttributedStringSymbolLoc_ptr)
  {
    v3 = AXRuntimeLibrary();
    v10[3] = dlsym(v3, "AXGetCFAttributedStringFromAXAttributedString");
    getAXGetCFAttributedStringFromAXAttributedStringSymbolLoc_ptr = v10[3];
    v2 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v2)
  {
    v8 = _initializeCoreGlue2_cold_1();
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v4 = v2(v1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v1];
  }

  v6 = v5;

  return v6;
}

id AXSwiftUIDescriptionForSymbolName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (AccessibilitySharedSupportLibraryCore())
  {
    v5 = v3;
    v6 = v4;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v7 = getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_ptr;
    v15 = getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_ptr;
    if (!getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_ptr)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_block_invoke;
      v11[3] = &unk_1E7242108;
      v11[4] = &v12;
      __getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_block_invoke(v11);
      v7 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v7)
    {
      v10 = _initializeCoreGlue2_cold_1();
      _Block_object_dispose(&v12, 8);
      _Unwind_Resume(v10);
    }

    v8 = v7(v5, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *__getAXInteractionLocationDescriptorDefaultNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "AXInteractionLocationDescriptorDefaultName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXInteractionLocationDescriptorDefaultNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXRuntimeLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AXRuntimeLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E72422A8;
    v5 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXRuntimeLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AXRuntimeLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXGetCFAttributedStringFromAXAttributedStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "AXGetCFAttributedStringFromAXAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXGetCFAttributedStringFromAXAttributedStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilitySharedSupportLibraryCore()
{
  if (!AccessibilitySharedSupportLibraryCore_frameworkLibrary)
  {
    AccessibilitySharedSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AccessibilitySharedSupportLibraryCore_frameworkLibrary;
}

uint64_t __AccessibilitySharedSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilitySharedSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilitySharedSupportLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "AXSSAccessibilityDescriptionForSymbolName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXSSAccessibilityDescriptionForSymbolNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

BOOL _CGImageNeedsPrepareCALayerContents(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    return 0;
  }

  if (a2 & 1) != 0 && (CGImageIsSubimage())
  {
    return 0;
  }

  return CGImageGetProperty() == 0;
}

id LocalizedString(void *a1, void *a2)
{
  v3 = Bundle_onceToken;
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    LocalizedString_cold_1();
  }

  v6 = _LocalizeString(Bundle___bundle, v5, @"CoreDateProvider", v4);

  return v6;
}

BOOL DropLeftRedundantDesignator(void *a1)
{
  v1 = LocalizedString(@"INTERVAL_DROP_LEFTMOST_REDUNDANT_DESIGNATOR", a1);
  v2 = v1;
  v3 = !v1 || [v1 BOOLValue];

  return v3;
}

uint64_t RemovesPunctuationFromWeekdayDay(void *a1)
{
  v1 = LocalizedString(@"DATE_WEEKDAY_DAY_REMOVE_PUNCTUATION", a1);
  v2 = [v1 BOOLValue];

  return v2;
}

unint64_t LocaleIs24HourMode(void *a1)
{
  v1 = a1;
  if (LocaleIs24HourMode_onceToken != -1)
  {
    LocaleIs24HourMode_cold_1();
  }

  v2 = [LocaleIs24HourMode_cache objectForKeyedSubscript:v1];
  if (!v2)
  {
    v2 = CFDateFormatterCreate(0, v1, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    [LocaleIs24HourMode_cache setObject:v2 forKeyedSubscript:v1];
  }

  Format = CFDateFormatterGetFormat(v2);
  v4 = Format;
  if (Format)
  {
    v4 = CFStringFind(Format, @"H", 0).location != -1 || CFStringFind(v4, @"k", 0).location != -1;
  }

  CFRelease(v2);

  return v4;
}

void __LocaleIs24HourMode_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = LocaleIs24HourMode_cache;
  LocaleIs24HourMode_cache = v0;
}

uint64_t LocaleIsCJK(void *a1)
{
  v1 = LocaleIsCJK_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    LocaleIsCJK_cold_1();
  }

  v3 = [v2 objectForKey:*MEMORY[0x1E695D9B0]];

  v4 = [LocaleIsCJK__cjkSet containsObject:v3];
  return v4;
}

void __LocaleIsCJK_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"zh", @"ja", @"ko", 0}];
  v1 = LocaleIsCJK__cjkSet;
  LocaleIsCJK__cjkSet = v0;
}

void __Bundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = Bundle___bundle;
  Bundle___bundle = v0;
}

uint64_t _AppKitAddSubview(void *a1, void *a2, uint64_t a3)
{
  if (classOnce != -1)
  {
    _AppKitAddSubview_cold_1();
  }

  v6 = [a2 layer];
  v7 = [v6 sublayers];
  v8 = [v7 count];
  v9 = [a1 layer];
  if (v8 <= a3 || (result = [v7 objectAtIndexedSubscript:a3], result != v9))
  {
    if ([a1 superview] == a2 && a3 + 1 < v8 && objc_msgSend(v7, "objectAtIndexedSubscript:") == v9)
    {
      v9 = [v7 objectAtIndexedSubscript:a3];
      Delegate = CALayerGetDelegate();
      if (objc_opt_isKindOfClass())
      {
        a1 = Delegate;
      }

      else
      {
        a1 = 0;
      }

      a3 = v8;
    }

    v12 = &unk_1EAB50000;
    [nsAnimationContextClass beginGrouping];
    [objc_msgSend(nsAnimationContextClass "currentContext")];
    if (a3 == v8)
    {
      v13 = a2;
      v14 = a1;
      v15 = 1;
    }

    else
    {
      if (a3)
      {
        if (!a1)
        {
LABEL_28:
          [v6 insertSublayer:v9 atIndex:a3];
          v19 = v12[277];

          return [v19 endGrouping];
        }

        if (a3 >= v8)
        {
          v17 = 0;
        }

        else
        {
          v16 = a3;
          while (1)
          {
            [v7 objectAtIndexedSubscript:v16];
            v17 = CALayerGetDelegate();
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v8 == ++v16)
            {
              v17 = 0;
              break;
            }
          }

          v12 = &unk_1EAB50000;
        }

        v13 = a2;
        v14 = a1;
        v15 = -1;
        v18 = v17;
LABEL_27:
        [v13 swiftui_addManagedSubview:v14 positioned:v15 relativeTo:v18];
        goto LABEL_28;
      }

      v13 = a2;
      v14 = a1;
      v15 = -1;
    }

    v18 = 0;
    goto LABEL_27;
  }

  return result;
}

Class initClasses()
{
  nsAnimationContextClass = NSClassFromString(&cfstr_Nsanimationcon.isa);
  result = NSClassFromString(&cfstr_Nsview.isa);
  nsViewClass = result;
  return result;
}

uint64_t _ViewInputs.base.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v7 = v1[2];
  v3 = v7;
  *a1 = v6[0];
  a1[1] = v2;
  a1[2] = v3;
  return outlined init with copy of _GraphInputs(v6, &v5);
}

__n128 _ViewInputs.base.setter(uint64_t a1)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  outlined destroy of _GraphInputs(v6);
  v4 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v4;
  result = *(a1 + 32);
  v1[2] = result;
  return result;
}

uint64_t _ViewInputs.preferences.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t _ViewInputs.preferences.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t key path setter for _ViewInputs.customInputs : _ViewInputs(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t _ViewInputs.customInputs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*_ViewInputs.customInputs.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return _ViewInputs.customInputs.modify;
}

uint64_t _ViewInputs.customInputs.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }

  return result;
}

uint64_t _ViewInputs.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  specialized _ViewInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*_ViewInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(Swift::Int **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v4;
  *v10 = a2;
  v12 = *(a4 + 8);
  v10[3] = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v11[5] = v14;
  v15 = *(v14 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v14 + 64));
    v16 = malloc(v15);
  }

  v11[7] = v16;
  _GraphInputs.subscript.getter(a2, a3, v12);
  return _ViewInputs.subscript.modify;
}

void _ViewInputs.subscript.modify(Swift::Int **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized _ViewListCountInputs.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized _ViewListCountInputs.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[4];
  v8 = (*a1)[1];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);
    specialized _GraphInputs.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized _GraphInputs.subscript.setter((*a1)[8], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _ViewInputs.subscript.setter(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4)
{
  specialized _ViewInputs.subscript.setter(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*_ViewInputs.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(Swift::Int **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a2;
  v12[1] = a3;
  v14 = *(a4 + 8);
  v12[4] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13[5] = AssociatedTypeWitness;
  v16 = *(AssociatedTypeWitness - 8);
  v13[6] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v13[8] = v18;
  _GraphInputs.subscript.getter(a2, a3, v14);
  return _ViewInputs.subscript.modify;
}

_DWORD *(*_ViewInputs.time.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return _ViewInputs.time.modify;
}

uint64_t _ViewInputs.environment.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t key path getter for _ViewInputs.environment : _ViewInputs@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

void (*_ViewInputs.environment.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 16);
  return _ViewInputs.environment.modify;
}

void _ViewInputs.environment.modify(uint64_t a1)
{
  v1 = *a1;
  _GraphInputs.environment.setter(*(*a1 + 32));

  free(v1);
}

_DWORD *key path setter for _ViewInputs.viewPhase : _ViewInputs(_DWORD *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  v2 = *(a2 + 32);
  if ((v2 & 0x40) == 0)
  {
    *(a2 + 32) = v2 | 0x40;
  }

  return result;
}

uint64_t _ViewInputs.viewPhase.setter(uint64_t result)
{
  *(v1 + 24) = result;
  v2 = *(v1 + 32);
  if ((v2 & 0x40) == 0)
  {
    *(v1 + 32) = v2 | 0x40;
  }

  return result;
}

uint64_t *(*_ViewInputs.viewPhase.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return _ViewInputs.viewPhase.modify;
}

uint64_t *_ViewInputs.viewPhase.modify(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(a1 + 2);
  result = a1 + 1;
  *(v1 + 24) = v3;
  v4 = *(v1 + 32);
  if ((v4 & 0x40) == 0)
  {
    *(v1 + 32) = v4 | 0x40;
  }

  return result;
}

_DWORD *(*_ViewInputs.transaction.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 28);
  return _ViewInputs.transaction.modify;
}

_DWORD *key path setter for _ViewInputs.transform : _ViewInputs(_DWORD *result, uint64_t a2)
{
  *(a2 + 60) = *result;
  *(a2 + 32) |= 4u;
  return result;
}

uint64_t _ViewInputs.transform.setter(uint64_t result)
{
  *(v1 + 60) = result;
  *(v1 + 32) |= 4u;
  return result;
}

uint64_t _ViewInputs.transform.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 32) |= 4u;
  }

  return result;
}

_DWORD *key path setter for _ViewInputs.position : _ViewInputs(_DWORD *result, uint64_t a2)
{
  *(a2 + 64) = *result;
  *(a2 + 32) |= 8u;
  return result;
}

uint64_t _ViewInputs.position.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 32) |= 8u;
  return result;
}

uint64_t _ViewInputs.position.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 32) |= 8u;
  }

  return result;
}

_DWORD *key path setter for _ViewInputs.size : _ViewInputs(_DWORD *result, uint64_t a2)
{
  *(a2 + 72) = *result;
  *(a2 + 32) |= 0x10u;
  return result;
}

uint64_t _ViewInputs.size.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 32) |= 0x10u;
  return result;
}

uint64_t _ViewInputs.size.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 32) |= 0x10u;
  }

  return result;
}

_BYTE *key path setter for _ViewInputs.requestsLayoutComputer : _ViewInputs(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t _ViewInputs.requestsLayoutComputer.setter(uint64_t result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFFFFD | v2;
  return result;
}

uint64_t (*_ViewInputs.requestsLayoutComputer.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 2) != 0;
  return _ViewInputs.requestsLayoutComputer.modify;
}

uint64_t _ViewInputs.requestsLayoutComputer.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFFFFD;
  return result;
}

_BYTE *key path setter for _ViewInputs.needsGeometry : _ViewInputs(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t _ViewInputs.needsGeometry.setter(uint64_t result)
{
  if (result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFFFDF | v2;
  return result;
}

uint64_t (*_ViewInputs.needsGeometry.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x20) != 0;
  return _ViewInputs.needsGeometry.modify;
}

uint64_t _ViewInputs.needsGeometry.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 32;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFFFDF;
  return result;
}

_BYTE *key path setter for _ViewInputs.needsDisplayListAccessibility : _ViewInputs(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t _ViewInputs.needsDisplayListAccessibility.setter(uint64_t result)
{
  if (result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFFFEF | v2;
  return result;
}

uint64_t (*_ViewInputs.needsDisplayListAccessibility.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x10) != 0;
  return _ViewInputs.needsDisplayListAccessibility.modify;
}

uint64_t _ViewInputs.needsDisplayListAccessibility.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 16;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFFFEF;
  return result;
}

_BYTE *key path setter for _ViewInputs.needsAccessibilityGeometry : _ViewInputs(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 36) = *(a2 + 36) & 0xFFFFFFBF | v2;
  return result;
}

uint64_t _ViewInputs.needsAccessibilityGeometry.setter(uint64_t result)
{
  if (result)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(v1 + 36) = *(v1 + 36) & 0xFFFFFFBF | v2;
  return result;
}

uint64_t (*_ViewInputs.needsAccessibilityGeometry.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  *(a1 + 12) = (v2 & 0x40) != 0;
  return _ViewInputs.needsAccessibilityGeometry.modify;
}

uint64_t _ViewInputs.needsAccessibilityGeometry.modify(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = 64;
  }

  else
  {
    v1 = 0;
  }

  *(*result + 36) = v1 | *(result + 8) & 0xFFFFFFBF;
  return result;
}

uint64_t _ViewInputs.stackOrientation.getter()
{
  if ((*(v0 + 36) & 4) != 0)
  {
    return (*(v0 + 36) & 8) == 0;
  }

  else
  {
    return 2;
  }
}

uint64_t key path getter for _ViewInputs.stackOrientation : _ViewInputs@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((*(result + 36) & 4) != 0)
  {
    v2 = (*(result + 36) & 8) == 0;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t _ViewInputs.stackOrientation.setter(uint64_t result)
{
  v2 = *(v1 + 36);
  if (result == 2)
  {
    v3 = v2 & 0xFFFFFFFB;
  }

  else
  {
    if ((result & 1) == 0)
    {
      *(v1 + 36) = v2 | 0xC;
      return result;
    }

    v3 = v2 | 4;
  }

  *(v1 + 36) = v3 & 0xFFFFFFF7;
  return result;
}

uint64_t (*_ViewInputs.stackOrientation.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *(v1 + 36);
  *(a1 + 8) = v2;
  if ((v2 & 4) != 0)
  {
    v3 = (v2 & 8) == 0;
  }

  else
  {
    v3 = 2;
  }

  *(a1 + 12) = v3;
  return _ViewInputs.stackOrientation.modify;
}

uint64_t _ViewInputs.stackOrientation.modify(uint64_t result)
{
  v1 = *(result + 12);
  v2 = *(result + 8);
  if (v1 == 2)
  {
    v3 = v2 & 0xFFFFFFFB;
LABEL_6:
    v4 = v3 & 0xFFFFFFF7;
    goto LABEL_7;
  }

  if (v1)
  {
    v3 = v2 | 4;
    goto LABEL_6;
  }

  v4 = v2 | 0xC;
LABEL_7:
  *(*result + 36) = v4;
  return result;
}

_DWORD *(*_ViewInputs.changedDebugProperties.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 32);
  return _ViewInputs.changedDebugProperties.modify;
}

__n128 _ViewInputs.init(_:position:size:transform:containerPosition:hostPreferenceKeys:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *MEMORY[0x1E698D3F8];
  *(a7 + 80) = *MEMORY[0x1E698D3F8];
  v8 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v8;
  result = *(a1 + 32);
  *(a7 + 32) = result;
  *(a7 + 48) = MEMORY[0x1E69E7CC0];
  *(a7 + 72) = a3;
  *(a7 + 76) = v7;
  *(a7 + 56) = a6;
  *(a7 + 60) = a4;
  *(a7 + 64) = a2;
  *(a7 + 68) = a5;
  return result;
}

uint64_t static _ViewInputs.invalidInputs(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v8[0] = *a1;
  v2 = v8[0];
  v8[1] = v3;
  v9 = a1[2];
  v4 = v9;
  v5 = *MEMORY[0x1E698D3F8];
  *(a2 + 80) = *MEMORY[0x1E698D3F8];
  *a2 = v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = MEMORY[0x1E69E7CC0];
  *(a2 + 72) = v5;
  *(a2 + 76) = v5;
  *(a2 + 56) = vdupq_n_s32(v5);
  return outlined init with copy of _GraphInputs(v8, &v7);
}

uint64_t _ViewInputs.mapEnvironment<A>(id:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v16[0] = *v3;
  v16[1] = v6;
  v8 = *v3;
  v7 = v3[1];
  v16[2] = v3[2];
  v9 = *a1;
  v13 = v8;
  v14 = v7;
  v15 = v3[2];
  v12 = v9;
  outlined init with copy of _GraphInputs(v16, v17);
  v10 = _GraphInputs.mapEnvironment<A>(id:_:)(&v12, a2, a3);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  outlined destroy of _GraphInputs(v17);
  return v10;
}

Swift::Void __swiftcall _ViewInputs.copyCaches()()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = v1[3];
  v7[1] = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v7[0] = v1[1];
  type metadata accessor for MutableBox<CachedEnvironment>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  memmove((v5 + 16), v1 + 1, 0x50uLL);
  outlined init with copy of CachedEnvironment(v7, v6);

  *(v0 + 16) = v5;
}

Swift::Void __swiftcall _ViewInputs.resetCaches()()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19ResolvedShapeStyles33_B62A4B04AF9F1325924A089D63071424LLV_14AttributeGraph0O0VyAC01_F10Style_PackVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<CachedEnvironment>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 256;
  *(v5 + 88) = v4;

  *(v0 + 16) = v5;
}

uint64_t _ViewInputs.top<A, B>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v14[0] = *v3;
  v14[1] = v7;
  v9 = *v3;
  v8 = v3[1];
  v14[2] = v3[2];
  v11 = v9;
  v12 = v8;
  v13 = v3[2];
  outlined init with copy of _GraphInputs(v14, v15);
  _GraphInputs.top<A, B>(_:)(a1, *(a2 + 8), a3);
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = v13;
  return outlined destroy of _GraphInputs(v15);
}

uint64_t static DynamicStackOrientation.defaultValue.getter()
{
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  return static DynamicStackOrientation.defaultValue;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance DynamicStackOrientation@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static DynamicStackOrientation.defaultValue;
  return result;
}

uint64_t specialized GraphHost.intern<A>(_:for:id:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v8 = *(v4 + 120);
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if (v10)
    {
      return *(*(v8 + 56) + 4 * v9);
    }
  }

  swift_beginAccess();
  v12 = *(v5 + 24);
  AGGraphClearUpdate();
  v13 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v11 = Attribute.init<A>(body:value:flags:update:)();
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v5 + 120);
  *(v5 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v5 + 120) = v16;
  swift_endAccess();
  return v11;
}

__n128 _ViewInputs.init(withoutGeometry:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(v4 + 248);
  v6 = specialized GraphHost.intern<A>(_:for:id:)(&type metadata for ViewSize, 0);
  memset(v13, 0, sizeof(v13));
  v7 = specialized GraphHost.intern<A>(_:for:id:)(v13, &type metadata for ViewTransform, 0);
  outlined destroy of ViewTransform(v13);
  v8 = *(v4 + 248);
  v9 = MEMORY[0x1E69E7CC0];
  LODWORD(v4) = Attribute.init<A>(body:value:flags:update:)();
  v10 = *MEMORY[0x1E698D3F8];

  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v9;
  *(a2 + 56) = v4;
  *(a2 + 60) = v7;
  *(a2 + 64) = v5;
  *(a2 + 68) = v8;
  *(a2 + 72) = v6;
  *(a2 + 76) = v10;
  *(a2 + 80) = v10;
  return result;
}

uint64_t _ViewListInputs.withoutGeometryDependencies.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v5[0] = *v1;
  v5[1] = v3;
  v5[2] = v1[2];
  outlined init with copy of _GraphInputs(v5, v6);
  _ViewInputs.init(withoutGeometry:)(v1, v6);
  _ViewInputs.withoutGeometryDependencies.getter(a1);
  return outlined destroy of _ViewInputs(v6);
}

uint64_t static ResetDeltaModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v33 = a2[2];
  v34 = v5;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v6 = a2[1];
  v32[0] = *a2;
  v32[1] = v6;
  v7 = HIDWORD(v6);
  v8 = v33;
  v9 = DWORD2(v6);
  outlined init with copy of _ViewInputs(v32, &v24);
  *&v24 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v9);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type ResetDeltaModifier.ChildPhase and conformance ResetDeltaModifier.ChildPhase();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  v8 |= 0x40u;
  *&v20 = *(a2 + 2);
  *(&v20 + 1) = __PAIR64__(v7, v10);
  *v21 = v8;
  *&v21[36] = *(a2 + 68);
  *&v21[20] = *(a2 + 52);
  *&v21[4] = *(a2 + 36);
  v15 = *v21;
  v16 = *&v21[16];
  v17 = *&v21[32];
  v19 = *a2;
  v18 = *&v21[48];
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(&v19, &v24);
  a3(v11, &v13);
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v23 = v18;
  v22[0] = v13;
  v22[1] = v14;
  outlined destroy of _ViewInputs(v22);
  v24 = *a2;
  v25 = *(a2 + 2);
  v26 = v10;
  v27 = v7;
  v28 = v8;
  v29 = *(a2 + 36);
  v30 = *(a2 + 52);
  v31 = *(a2 + 68);
  return outlined destroy of _ViewInputs(&v24);
}

_DWORD *protocol witness for Rule.value.getter in conformance ResetDeltaModifier.ChildPhase@<X0>(_DWORD *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a1 = v2 + 2 * *result;
  return result;
}

uint64_t _ViewInputs.resolvedShapeStyles(role:mode:)(unsigned __int8 *a1, unint64_t a2)
{
  v4 = *a1;
  v9 = *v2;
  v5 = *(v2 + 2);
  v11 = *(v2 + 24);
  v12 = *(v2 + 40);
  v13[0] = *(v2 + 56);
  *(v13 + 12) = *(v2 + 68);
  v10 = v5;
  v8 = v4;
  swift_beginAccess();
  v6 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(&v9, &v8, a2 | ((HIDWORD(a2) & 1) << 32));
  swift_endAccess();
  return v6;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

void variable initialization expression of DisplayList.InterpolatorAnimation.value(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = 1;
}

uint64_t default argument 2 of RasterizationOptions.init(colorMode:allowedDynamicRange:flags:)@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static RasterizationOptions.Flags.defaultFlags;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultPadding : EnvironmentValues(double *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(a2, v3, v4, v5, v6);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014DefaultPaddingK033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Ttg5(v7, *a2);
  }
}

double variable initialization expression of ScrollStateEnqueueRequests.cycleDetector@<D0>(uint64_t a1@<X8>)
{
  v2 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

uint64_t variable initialization expression of ScrollStateEnqueueRequests.enqueuedUpdates()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI18ScrollStateRequest_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(0, &lazy cache variable for type metadata for MutableBox<[ObjectIdentifier : ScrollStateRequest]>, type metadata accessor for [ObjectIdentifier : ScrollStateRequest], type metadata accessor for MutableBox);
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t default argument 1 of ResolvedGradient.init(stops:colorSpace:headroom:)@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ResolvedGradient.ColorSpace.default;
  return result;
}

uint64_t variable initialization expression of ArchivedViewCore.Metadata.preferredBundleLanguage()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 preferredLocalizations];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t variable initialization expression of GestureGraph.eventBindingManager()
{
  type metadata accessor for EventBindingManager();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t default argument 3 of View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignment:insetLayoutBehavior:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return default argument 3 of View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignment:insetLayoutBehavior:_:)(a1, a2, a3, a4, a5, a6, a7, &one-time initialization token for center, &static HorizontalAlignment.center);
}

{
  return default argument 3 of View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignment:insetLayoutBehavior:_:)(a1, a2, a3, a4, a5, a6, a7, &one-time initialization token for center, &static VerticalAlignment.center);
}

uint64_t default argument 3 of View.safeAreaInsetPreferenceValue<A, each B>(_:edge:spacing:alignment:insetLayoutBehavior:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (*a8 != -1)
  {
    swift_once();
  }

  return *a9;
}

void variable initialization expression of DisplayList.GraphicsRenderer.index(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t default argument 3 of ResolvedStyledText.draw(in:with:applyingMarginOffsets:context:renderer:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

void variable initialization expression of DisplayList.UnaryInterpolatorGroup.layer(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 40) = 0x7FF0000000000000;
  *(a1 + 48) = 0;
  *(a1 + 52) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = v1;
  *(a1 + 80) = 0;
}

double variable initialization expression of GlassContainer.SettingsOverride.transition@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

double variable initialization expression of GlassContainer.SettingsOverride.scalePulse@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOi0_(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

double variable initialization expression of GlassContainer.SettingsOverride.translationKick@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  return result;
}

uint64_t variable initialization expression of RangeSet<>.IndexSequence.Iterator.offset()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  swift_checkMetadataState();
  return dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
}

double variable initialization expression of AttributeInvalidatingSubscriber.state@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)@<X0>(_DWORD *a1@<X8>)
{
  result = _threadTransactionID();
  *a1 = result;
  return result;
}

double variable initialization expression of ViewGraphHost.initialInheritedEnvironment@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18DD85500;
  return result;
}

uint64_t variable initialization expression of CAHostingLayer.eventBindingManager()
{
  type metadata accessor for EventBindingManager();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  return v0;
}

uint64_t variable initialization expression of CAHostingLayer.$__lazy_storage_$_eventContext@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CAHostingLayerEvent.Context();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double variable initialization expression of LeafLayoutEngine.cache@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1;
  return result;
}

double default argument 0 of ViewSizeCache.init(cache:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1;
  return result;
}

uint64_t variable initialization expression of PlatformViewChild.coordinator@<X0>(uint64_t a1@<X8>)
{
  return variable initialization expression of PlatformViewChild.coordinator(a1);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

void variable initialization expression of ResolvedGradient.Stop.interpolation(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t variable initialization expression of UpdateCycleDetector.updateSeed()
{
  v0 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t variable initialization expression of ValueCycleDetector.updateSeed()
{
  v0 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

double variable initialization expression of ContentResponderHelper.transform@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double variable initialization expression of ContentResponderHelper.cache@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of Cache3.store(uint64_t a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(*(TupleTypeMetadata2 - 8) + 56);
  (v8)((TupleTypeMetadata2 - 8), a1, 1, 1, TupleTypeMetadata2);
  v8(a2, 1, 1, TupleTypeMetadata2);

  return (v8)(a3, 1, 1, TupleTypeMetadata2);
}

uint64_t variable initialization expression of InsertedPlaceholderCollection.insertionIndex@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of FlexibleButtonFrameModifier._buttonSizing@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t variable initialization expression of LinkDestination._openURL@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  return result;
}

uint64_t variable initialization expression of LinkDestination._openSensitiveURL@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  return result;
}

void variable initialization expression of LayoutTrace.Recorder.cacheLookup(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 512;
}

uint64_t variable initialization expression of ViewStatePredicate.state@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Binding();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void variable initialization expression of _SymbolEffect.Phase.scaleOptions(uint64_t a1@<X8>)
{
  *a1 = 1065353216;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1;
}

void variable initialization expression of _SymbolEffect.Phase.hidden(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 1;
}

uint64_t variable initialization expression of SystemListStyleMetrics.Sidebar.headerFont()
{
  type metadata accessor for FontBox<Font.SystemProvider>();
  result = swift_allocObject();
  *(result + 16) = 0x4034000000000000;
  *(result + 24) = 0x3FD3333333333333;
  *(result + 32) = 0;
  *(result + 33) = 3588;
  *(result + 40) = 0;
  *(result + 48) = 1;
  return result;
}

uint64_t variable initialization expression of SystemListStyleMetrics._sidebar@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FontBox<Font.SystemProvider>();
  result = swift_allocObject();
  *(result + 16) = 0x4034000000000000;
  *(result + 24) = 0x3FD3333333333333;
  *(result + 32) = 0;
  *(result + 33) = 3588;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *a1 = result;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  return result;
}

double variable initialization expression of PlatformViewResponderBase.lastResult@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t variable initialization expression of FullGestureCallbacks.StateType.oldPhase@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GesturePhase();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double default argument 6 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = -0.0;
  *(a1 + 40) = xmmword_18DD85510;
  return result;
}

uint64_t default argument 7 of static ResolvedStyledText.styledText(storage:stylePadding:environment:archiveOptions:isCollapsible:features:suffix:attachments:styles:transitions:writingMode:sizeFitting:multilineTextAlignment:links:)@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];

  *a1 = v2;
  return result;
}

double variable initialization expression of AccessibilityDataSeriesConfiguration.xAxisConfiguration@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t variable initialization expression of Stack3.store(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a4 - 8) + 56);
  v8(a4 - 8, a1, 1, 1);
  v8(a2, 1, 1, a4);

  return v8(a3, 1, 1, a4);
}

uint64_t variable initialization expression of GeometryActionBinder.legacyCycleDetector@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced >= v2)
    {
      goto LABEL_7;
    }

LABEL_9:
    v6 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v7 = *(v6 + 64);

    v5 = 0;
    v4 = *&v7 | 0xFFFFFFFF00000000;
    goto LABEL_10;
  }

  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v4 = 0;
  v5 = 0x200000000;
LABEL_10:
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = BYTE4(v5);
  return result;
}

uint64_t variable initialization expression of _LazyStack_Cache.minor@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MinorProperties();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of _LazyStack_Cache.estimations@<X0>(unint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a1[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v2);
  type metadata accessor for EstimationCache();
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  type metadata accessor for MutableBox<CachedEnvironment>(0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

double variable initialization expression of VariableBlurStyle.mask@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = 0x80000000;
  return result;
}

double variable initialization expression of _ShapeStyle_RenderedLayers.layers@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x20000000;
  *(a1 + 72) = 0;
  return result;
}

uint64_t variable initialization expression of DisplayList.UnaryInterpolatorGroup.rasterizationOptions@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = static RasterizationOptions.Flags.defaultFlags;
  *a1 = -1;
  *(a1 + 4) = 768;
  *(a1 + 8) = v1;
  *(a1 + 12) = 3;
  return result;
}

double variable initialization expression of StyledTextResponder.helper@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

double variable initialization expression of MultiViewResponder.cache@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double variable initialization expression of ViewResponder.ContainsPointsCache.storage@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of PlatformViewChild.tracker()
{
  type metadata accessor for PropertyList.Tracker();
  v0 = swift_allocObject();
  type metadata accessor for MutableBox<CachedEnvironment>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = 0;
  *(v0 + 16) = v1;
  return v0;
}

double variable initialization expression of GraphicsImage.resizingInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t default argument 4 of static GraphicsContext.Shading.angularGradient(_:center:startAngle:endAngle:options:)()
{
  return 0;
}

{
  return 0;
}

double variable initialization expression of GraphicsContext.ResolvedImage.shading@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = -1;
  return result;
}

uint64_t default argument 0 of HeterogeneousCollection.init(_:)()
{
  result = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v1 = MEMORY[0x1E69E7CC0];
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      v1 = v2;
      v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs10AnyKeyPathC_Tt1g5(v2, 0);
      specialized Array._copyContents(initializing:)(v3 + 32, v1, MEMORY[0x1E69E7CC0]);
      v5 = v4;

      result = v3;
      if (v5 == v1)
      {
        return result;
      }

      __break(1u);
    }

    return v1;
  }

  return result;
}

double variable initialization expression of HeterogeneousViewIDsAccumulator.currentExplicitID@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 25) = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t variable initialization expression of TypesettingConfiguration.language@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypesettingLanguage(0);
  v3 = __swift_project_value_buffer(v2, static TypesettingLanguage.automatic);

  return outlined init with copy of TypesettingLanguage(v3, a1);
}

double variable initialization expression of NamedImage._BitmapInfo.resizingInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

void variable initialization expression of NamedImage.Cache.data(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC8];
  *(a1 + 8) = MEMORY[0x1E69E7CC8];
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
}

void variable initialization expression of _ViewListInputs.contentOffset(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

double variable initialization expression of _ViewListCountInputs.customViewCache@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of _ShapeStyle_Shape.bounds@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

unint64_t variable initialization expression of LocationBox._cache@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12AnyHashable2V_AC7WeakBoxVyAC0E12LocationBaseCGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void variable initialization expression of DisplayList.ViewUpdater.lastList(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
}

uint64_t variable initialization expression of SubscriptionLifetime.state()
{
  type metadata accessor for SubscriptionLifetime.StateType();

  return swift_storeEnumTagMultiPayload();
}

double variable initialization expression of Path.PathBox.data@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t default argument 1 of Path.contains(points:eoFill:origin:)()
{
  return 0;
}

{
  return 0;
}

double default argument 2 of Path.contains(points:eoFill:origin:)()
{
  return 0.0;
}

{
  return 0.0;
}

void variable initialization expression of DisplayList.ViewRenderer.configuration(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *a1 = 0;
}

uint64_t variable initialization expression of SeedValues.base(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SeedValue();
  swift_getTupleTypeMetadata2();
  v6 = static Array._allocateUninitialized(_:)();
  v7 = specialized Dictionary.init(dictionaryLiteral:)(v6, a1, v5, a3);

  return v7;
}

void variable initialization expression of CodableAccessibilityValueStorage.text(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
}

uint64_t variable initialization expression of WhitespaceRemovingFormatStyle.prefixValue@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of ScaledMetric._dynamicTypeSize@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t variable initialization expression of VelocitySampler.sample1@<X0>(uint64_t a1@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v3(a1, 1, 1, TupleTypeMetadata2);
}

uint64_t variable initialization expression of GeometryActionBinder.cycleDetector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return a6(AssociatedTypeWitness, AssociatedConformanceWitness);
}

double variable initialization expression of CachedEnvironment.animatedFrame@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

void variable initialization expression of HoverEffectContext.State.leafContext(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

double variable initialization expression of PlatformGlassInteractionContext.toGlass@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18DD85500;
  *(a1 + 40) = 0;
  return result;
}

__n128 variable initialization expression of PlatformItem.content@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v9[14];
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

void variable initialization expression of PlatformItem.selection(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
}

double variable initialization expression of PlatformItem.accessibility@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 281) = 0u;
  return result;
}

double variable initialization expression of PlatformItem.PrimaryContent.image@<D0>(_OWORD *a1@<X8>)
{
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(v8);
  v2 = v16;
  a1[8] = v15;
  a1[9] = v2;
  a1[10] = v17[0];
  *(a1 + 171) = *(v17 + 11);
  v3 = v12;
  a1[4] = v11;
  a1[5] = v3;
  v4 = v14;
  a1[6] = v13;
  a1[7] = v4;
  v5 = v8[1];
  *a1 = v8[0];
  a1[1] = v5;
  result = *&v9;
  v7 = v10;
  a1[2] = v9;
  a1[3] = v7;
  return result;
}

uint64_t variable initialization expression of AnimatorState.forks()
{
  type metadata accessor for AnimatorState.Fork();

  return Array.init()();
}

uint64_t default argument 1 of _ViewInputs.setContainerShape<A>(_:isSystemShape:)()
{
  return 0;
}

{
  return 0;
}

uint64_t variable initialization expression of ObservableLocation.observers()
{
  type metadata accessor for ObservableLocation.Observer();

  return Array.init()();
}

double variable initialization expression of ArchiveWriter.currentHasher@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  return result;
}

double variable initialization expression of ValueActionDispatcher.cycleDetector@<D0>(uint64_t a1@<X8>)
{
  v2 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

void variable initialization expression of _LayoutTraits.width(void *a1@<X8>)
{
  _LayoutTraits.Dimension._checkInvariant()();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x7FF0000000000000;
}

uint64_t variable initialization expression of Text.Resolved.properties@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = MEMORY[0x1E69E7CC0];
  *(a1 + 48) = v2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = xmmword_18DD85510;

  v4 = MEMORY[0x1E69E7CD0];
  *(a1 + 112) = v2;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = v4;
  *(a1 + 152) = 3;
  return result;
}

double variable initialization expression of Text.Style.encapsulation@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return result;
}

double variable initialization expression of Text.Style.accessibility@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t variable initialization expression of Text.Style.typesettingConfiguration@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TypesettingLanguage(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for automatic != -1)
  {
    v9 = v3;
    swift_once();
    v3 = v9;
  }

  v6 = __swift_project_value_buffer(v3, static TypesettingLanguage.automatic);
  outlined init with copy of TypesettingLanguage(v6, v5);
  outlined init with copy of TypesettingLanguage(v6, a1);
  v7 = a1 + *(type metadata accessor for TypesettingConfiguration() + 20);
  *v7 = 0;
  *(v7 + 8) = 1;
  result = outlined assign with take of TypesettingLanguage(v5, a1);
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

void variable initialization expression of Text.ResolvedProperties.paragraph(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = 0;
  a1[1] = v1;
  a1[2] = 0;
  a1[3] = 0;
}

double variable initialization expression of LazyLayoutViewCache.lru@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *&result = 16;
  *(a1 + 8) = xmmword_18DD85520;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t variable initialization expression of _ResolvedKeyframeTrackContent.segments()
{
  type metadata accessor for _ResolvedKeyframeTrackContent.Segment();

  return static Array._allocateUninitialized(_:)();
}

double variable initialization expression of AccessibilityImageConfiguration.label@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *&result = 0x1FFFFFFFELL;
  *(a1 + 16) = xmmword_18DD85530;
  return result;
}

void variable initialization expression of PropertyList.Tracker._data(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC8];
  *a1 = 0;
  *(a1 + 8) = v1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
}

uint64_t variable initialization expression of PropertyList.Element.id@<X0>(uint64_t *a1@<X8>)
{
  result = AGMakeUniqueID();
  *a1 = result;
  return result;
}

uint64_t default argument 0 of View.appearanceAnimation<A>(animation:strategy:modifier:)()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }
}

double variable initialization expression of StrongHasher.state@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double default argument 0 of View.contentShapeSecondaryView<A>(in:kind:fallbackKind:alignment:modifier:)@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2;
  return result;
}

uint64_t default argument 3 of View.contentShapeSecondaryView<A>(in:kind:fallbackKind:alignment:modifier:)()
{
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  return static Alignment.center;
}

uint64_t variable initialization expression of _TestApp.RootView._state@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AnyViewStorage<TestIDView<EmptyView, Int>>();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[1] = result;
  return result;
}

void default argument 0 of ContentTransition.NamedTransition.init(name:layoutDirection:style:)(uint64_t a1@<X8>)
{
  *a1 = 0x8000000000;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
}

uint64_t default argument 0 of ContentTransition.State.init(transition:style:animation:options:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.default;
  v3 = byte_1ED53699C;
  v4 = dword_1ED536998;
  v5 = dword_1ED536998 | (byte_1ED53699C << 32);
  v6 = byte_1ED53699E;
  *a1 = static ContentTransition.default;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = byte_1ED53699D;
  *(a1 + 13) = byte_1ED53699D;
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

uint64_t variable initialization expression of ImageRenderer.objectWillChange()
{
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  return PassthroughSubject.init()();
}

void variable initialization expression of ImageRendererHost.options(uint64_t a1@<X8>)
{
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 3;
}

uint64_t variable initialization expression of ImageRendererHost.renderer()
{
  v1 = 3;
  type metadata accessor for DisplayList.GraphicsRenderer();
  swift_allocObject();
  return DisplayList.GraphicsRenderer.init(platformViewMode:)(&v1);
}

uint64_t variable initialization expression of Canvas.rasterizationOptions@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = static RasterizationOptions.Flags.defaultFlags;
  *a1 = -1;
  *(a1 + 4) = 768;
  *(a1 + 8) = v1;
  *(a1 + 12) = 3;
  return result;
}

void variable initialization expression of Material.Context.shapeMetrics(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t variable initialization expression of _ShapeStyle_RenderedShape.blendMode@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for normal != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = static GraphicsBlendMode.normal;
  v3 = byte_1ED52F818;
  *a1 = static GraphicsBlendMode.normal;
  *(a1 + 8) = v3;

  return outlined copy of GraphicsBlendMode(v2, v3);
}

__n128 variable initialization expression of Material.Layer.SDFLayer.Contents.GlassKeyFillHighlight.keyColor@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = result;
  a1[1].n128_u32[0] = 2143289344;
  return result;
}

uint64_t variable initialization expression of ViewGraphGeometryObservers.store()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for ViewGraphGeometryObservers.Observer();
  swift_getTupleTypeMetadata2();
  v2 = static Array._allocateUninitialized(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = specialized Dictionary.init(dictionaryLiteral:)(v2, AssociatedTypeWitness, v1, AssociatedConformanceWitness);

  return v4;
}

void variable initialization expression of AccessibilityProperties.identifier(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void variable initialization expression of AccessibilityProperties.traits(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void variable initialization expression of AccessibilityProperties.value(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  a1[4] = 0;
  a1[5] = 0;
}

double variable initialization expression of AccessibilityProperties.textLayoutProperties@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v8;
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

double variable initialization expression of AccessibilityAttachment.properties@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v7);
  v2 = v7[7];
  *(a1 + 224) = v7[6];
  *(a1 + 240) = v2;
  *(a1 + 256) = v7[8];
  *(a1 + 272) = v8;
  v3 = v7[3];
  *(a1 + 160) = v7[2];
  *(a1 + 176) = v3;
  v4 = v7[5];
  *(a1 + 192) = v7[4];
  *(a1 + 208) = v4;
  result = *v7;
  v6 = v7[1];
  *(a1 + 128) = v7[0];
  *(a1 + 144) = v6;
  *(a1 + 280) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t variable initialization expression of ContentSizedSceneFeature.dispatcher()
{
  type metadata accessor for SizingPreferencesChangeDispatcher();
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  return v0;
}

double default argument 1 of BackdropEffect.init(scale:color:filters:captureOnly:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DD85540;
  *(a1 + 16) = 2143289344;
  return result;
}

double default argument 2 of HoverEffectGroupInfo.init(id:behavior:scope:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18DD85550;
  return result;
}

double variable initialization expression of SafeAreaInsets.Element.cornerInsets@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  return result;
}

uint64_t variable initialization expression of SafeAreaPaddingModifier._defaultPadding@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

double variable initialization expression of AnimatedRootSizeFeature.lastSizeInfo@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t variable initialization expression of SystemFormatStyle.Timer._superscript@<X0>(void *a1@<X8>)
{

  *a1 = 0;
  return result;
}

uint64_t variable initialization expression of MaterialBackdropProxy.storage()
{
  type metadata accessor for MaterialBackdropProxy.Storage();
  result = swift_allocObject();
  *(result + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 24) = 0;
  *(result + 32) = v1;
  *(result + 28) = 1;
  return result;
}

void variable initialization expression of CodableAccessibilityAttachmentStorage.VBase.roleDescription(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 18) = -1;
  *(a1 + 16) = 0;
}

uint64_t variable initialization expression of EveryMinuteTimelineSchedule.Entries.nextDate@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

double variable initialization expression of CodableAccessibilityAttachmentStorage.V3.value@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = xmmword_18DD85500;
  return result;
}

void variable initialization expression of SectionAccumulator.Item.sectionList(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

double variable initialization expression of SectionAccumulator.list@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of ViewGraphHostEnvironmentWrapper.environment@<X0>(uint64_t *a1@<X8>)
{
  v6 = 0;
  v7 = 0;
  swift_beginAccess();
  if (static ViewGraphHost.isDefaultEnvironmentConfigured == 1)
  {
    if (one-time initialization token for _defaultEnvironment != -1)
    {
      swift_once();
    }

    result = static ViewGraphHost._defaultEnvironment;
    if (static ViewGraphHost._defaultEnvironment)
    {
      v3 = *(static ViewGraphHost._defaultEnvironment + 64);
      if (!v3)
      {
        result = 0;
        goto LABEL_11;
      }
    }

    v3 = 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x68);
    v5 = static CoreGlue2.shared;
    v4(&v6);

    result = v6;
    v3 = v7;
  }

LABEL_11:
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t variable initialization expression of ViewGraph.sizeThatFitsObservers@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_AC26ViewGraphGeometryObserversV8Observer33_4717DAAA68693648A460F26E88C7D804LLCyAC0F16ThatFitsMeasurerV_GTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

int64x2_t variable initialization expression of ViewGraph.nextUpdate(int64x2_t *a1, int64x2_t *a2)
{
  result = vdupq_n_s64(0x7FF0000000000000uLL);
  *a1 = result;
  a1[1].i8[0] = 0;
  v3 = MEMORY[0x1E69E7CD0];
  a1[1].i64[1] = MEMORY[0x1E69E7CD0];
  *a2 = result;
  a2[1].i8[0] = 0;
  a2[1].i64[1] = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CGColorRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x193AC12C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v3 = static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RBShaderType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RBShaderType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CTFontRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CoreSystem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFDictionaryRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSTextEncapsulationScale()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSTextEncapsulationScale()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x193ABEC20](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CTGlyphInfoRef()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGAttribute()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance RBDisplayListInterpolatorOptionKey()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey, type metadata accessor for RBDisplayListInterpolatorOptionKey);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBDisplayListInterpolatorOptionKey and conformance RBDisplayListInterpolatorOptionKey, type metadata accessor for RBDisplayListInterpolatorOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSRunLoopMode()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CAGradientLayerType()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type CAGradientLayerType and conformance CAGradientLayerType, type metadata accessor for CAGradientLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGNamedTraceEventID()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AGNamedTraceEventID and conformance AGNamedTraceEventID, type metadata accessor for AGNamedTraceEventID);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AGNamedTraceEventID and conformance AGNamedTraceEventID, type metadata accessor for AGNamedTraceEventID);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance RBSymbolAnimationOptionKey()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey, type metadata accessor for RBSymbolAnimationOptionKey);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey, type metadata accessor for RBSymbolAnimationOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGDescriptionOption()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption, type metadata accessor for AGDescriptionOption);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption, type metadata accessor for AGDescriptionOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNotificationName()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSNotificationName and conformance NSNotificationName, type metadata accessor for NSNotificationName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance RBDisplayListRenderKey()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey, type metadata accessor for RBDisplayListRenderKey);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey, type metadata accessor for RBDisplayListRenderKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x193ABEC20](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance RBImageRendererProperty()
{
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty, type metadata accessor for RBImageRendererProperty);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty, type metadata accessor for RBImageRendererProperty);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x193ABEE70](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

double _s7SwiftUI14GlassContainerO18ScalePulseSettingsVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 152) = 1;
  return result;
}

double _s7SwiftUI36AccessibilityDataSeriesConfigurationV04AxisF0VSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance [A])
  {
    type metadata accessor for MutableBox<CachedEnvironment>(255, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of TypesettingLanguage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypesettingLanguage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  return result;
}

void type metadata accessor for AnyViewStorage<TestIDView<EmptyView, Int>>()
{
  if (!lazy cache variable for type metadata for AnyViewStorage<TestIDView<EmptyView, Int>>)
  {
    type metadata accessor for TestIDView<EmptyView, Int>();
    v0 = type metadata accessor for AnyViewStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyViewStorage<TestIDView<EmptyView, Int>>);
    }
  }
}

void type metadata accessor for TestIDView<EmptyView, Int>()
{
  if (!lazy cache variable for type metadata for TestIDView<EmptyView, Int>)
  {
    v0 = type metadata accessor for TestIDView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TestIDView<EmptyView, Int>);
    }
  }
}

uint64_t assignWithCopy for _ViewInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

__n128 __swift_memcpy84_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _ViewInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t storeEnumTagSinglePayload for _ViewInputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 84) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 84) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGTraceType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGTraceType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t storeEnumTagSinglePayload for CC_SHA1state_st(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type [AnyFontModifier] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MutableBox<[ObjectIdentifier : ScrollStateRequest]>(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResetDeltaModifier.ChildPhase and conformance ResetDeltaModifier.ChildPhase()
{
  result = lazy protocol witness table cache variable for type ResetDeltaModifier.ChildPhase and conformance ResetDeltaModifier.ChildPhase;
  if (!lazy protocol witness table cache variable for type ResetDeltaModifier.ChildPhase and conformance ResetDeltaModifier.ChildPhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResetDeltaModifier.ChildPhase and conformance ResetDeltaModifier.ChildPhase);
  }

  return result;
}

void type metadata accessor for _UnaryViewAdaptor<EmptyView>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>)
  {
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<EmptyView>);
    }
  }
}

uint64_t getEnumTagSinglePayload for _AGAttributeVTable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGAttributeVTable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGClosureStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGClosureStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RBDrawingState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for RBDrawingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGAttributeType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGAttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicStackOrientation(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DynamicStackOrientation(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__C::CGRect __swiftcall LayoutDirection.convert(_:to:in:)(__C::CGRect _, SwiftUI::LayoutDirection to, CGSize in)
{
  if (*to != *v3)
  {
    v4 = in.width - _.origin.x;
    y = _.origin.y;
    width = _.size.width;
    height = _.size.height;
    v8 = CGRectGetWidth(_);
    _.origin.y = y;
    _.size.width = width;
    _.size.height = height;
    _.origin.x = v4 - v8;
  }

  return _;
}

Swift::Int LayoutDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LayoutDirection()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LayoutDirection()
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](*v0);
  return Hasher._finalize()();
}

void (*EnvironmentValues.layoutDirection.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.layoutDirection.modify;
}

void EnvironmentValues.layoutDirection.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV015LayoutDirectionF0VG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Ttg5Tm(*(v1 + 24), **(v1 + 16), &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LayoutDirectionKey>, &type metadata for EnvironmentValues.LayoutDirectionKey, &protocol witness table for EnvironmentValues.LayoutDirectionKey);
  }

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodableLayoutDirection.CodingValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableLayoutDirection.CodingValue()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableLayoutDirection.CodingValue()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CodableLayoutDirection.CodingValue@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CodableLayoutDirection.CodingValue(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t CodableLayoutDirection.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v6 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  lazy protocol witness table accessor for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CodableLayoutDirection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CodableLayoutDirection.CodingValue and conformance CodableLayoutDirection.CodingValue();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZ14AttributeGraph08OptionalE0VyAA16ScrollPhaseStateVG_Tt1B5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 && *(a1 + 16) == *(a2 + 16))
    {
      v2 = *(a1 + 24);
      v3 = *(a2 + 24);

      LOBYTE(v2) = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZ14AttributeGraph08OptionalE0VyAA16ScrollPhaseStateVG_Tt1B5(v2, v3);

      return v2 & 1;
    }

    return 0;
  }

  return !a2;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016ReducedLuminanceI033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ReducedLuminanceKey>, &type metadata for ReducedLuminanceKey, &protocol witness table for ReducedLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016ReducedLuminanceS033_0F38C9BE5EB47FD38EBFADF6C616C18DLLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ReducedLuminanceKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028SymbolBackgroundCornerRadiusI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, &v22);
        v10 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        v11(v21);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15[9];
          v17 = *(v15 + 80);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        *&v21[0] = v16;
        BYTE8(v21[0]) = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>>();
        v24 = v18;
        v25 = &protocol witness table for TrackedValue<A>;
        v22 = v16;
        v23 = v17;
        specialized Dictionary.subscript.setter(&v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA028SymbolBackgroundCornerRadiusS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
  if (v13)
  {
    v14 = v13[9];
    v12 = *(v13 + 80);
  }

  else
  {
    v14 = 0;
  }

  *&v21[0] = v14;
  BYTE8(v21[0]) = v12;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA026SymbolsGrowToFitBackgroundI033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA026SymbolsGrowToFitBackgroundS033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for MaterialColorRenderingMode, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA20BackgroundProminenceVAAE0I0VG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for BackgroundProminence, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<BackgroundProminence.Key>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA031AccessibilitySettingsDefinitionI033_DD012B99EE4F6885B033D7D23FEF69C0LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(a1);
    if (v14)
    {
      v15 = *(v14 + 80);
      *a2 = v14[9];
      *(a2 + 8) = v15;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 1;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v21);
    outlined init with take of AnyTrackedValue(v21, &v22);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AccessibilitySettingsDefinitionKey?, &type metadata for AccessibilitySettingsDefinitionKey, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA031AccessibilitySettingsDefinitionS0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0g5(a1);
    if (v16)
    {
      v17 = v16[9];
      v18 = *(v16 + 80);
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    *a2 = v17;
    *(a2 + 8) = v18;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>>();
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v22 = v17;
    v23 = v18;
    specialized Dictionary.subscript.setter(&v22, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<UnredactSymbolImage>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultFontKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV022MaxAllowedDynamicRangeI0VG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 3;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Image.DynamicRange?, &type metadata for Image.DynamicRange, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV022MaxAllowedDynamicRangeS0VG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 3;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultAccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAccentColorKey>, &type metadata for DefaultAccentColorKey, &protocol witness table for DefaultAccentColorKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Color?, &type metadata for Color, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultAccentColorKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA23ContainerBackgroundKindO0I0VG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 6;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ContainerBackgroundKind?, &type metadata for ContainerBackgroundKind, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA23ContainerBackgroundKindO0S0VG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 6;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContainerBackgroundKind.Key>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 2;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsVibrantBlendingKey>, &type metadata for AllowsVibrantBlendingKey, &protocol witness table for AllowsVibrantBlendingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 2;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllowsVibrantBlendingKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019PlatformColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for ColorScheme, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019PlatformColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019ExplicitColorSchemeI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ColorScheme?, &type metadata for ColorScheme, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019ExplicitColorSchemeS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 2;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016RedactionReasonsI033_18671928047E57F039DC339288B6FAFBLLVG_Tt1g5@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = v14[9];
    }

    else
    {
      *a2 = 0;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RedactionReasonsKey>, &type metadata for RedactionReasonsKey, &protocol witness table for RedactionReasonsKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for RedactionReasons, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016RedactionReasonsS033_18671928047E57F039DC339288B6FAFBLLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = v15[9];
    }

    else
    {
      v16 = 0;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<RedactionReasonsKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    v20[0] = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(a1);
    if (v14)
    {
      v15 = v14[11];
      *a2 = *(v14 + 9);
      *(a2 + 16) = v15;
    }

    else
    {
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 2;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>, &type metadata for EnvironmentValues.__Key_textShape, &protocol witness table for EnvironmentValues.__Key_textShape, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v24;
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (v13[1])(&type metadata for TextShape, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE02__S10_textShape33_0B075DB77A31A3DA949C6F4F810CBA16LLVG_Tt0g5(a1);
    if (v16)
    {
      v18 = v16[9];
      v17 = v16[10];
      v19 = v16[11];
    }

    else
    {
      v17 = 0;
      v19 = 0;
      v18 = 2;
    }

    *a2 = v18;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_textShape>>();
    v24 = v20;
    v25 = &protocol witness table for TrackedValue<A>;
    v23[0] = v18;
    v23[1] = v17;
    v23[2] = v19;
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextSizingKey>, &type metadata for TextSizingKey, &protocol witness table for TextSizingKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v24);
        outlined init with take of AnyTrackedValue(v24, v25);
        v12 = v26;
        v13 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (v13[1])(&type metadata for Text.Sizing, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v25);
      }

      else
      {
        v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(a1);
        if (v17)
        {
          v18 = (v17 + 9);
          v19 = v17 + 10;
        }

        else
        {
          v18 = &static TextSizingKey.defaultValue;
          v19 = &qword_1ED537550;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }
        }

        v20 = *v18;
        v21 = *v19;
        *a2 = v20;
        *(a2 + 8) = v21;

        type metadata accessor for TrackedValue<EnvironmentPropertyKey<TextSizingKey>>();
        v26 = v22;
        v27 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v25[0]) = v20;
        v25[1] = v21;

        specialized Dictionary.subscript.setter(v25, v8);
      }

      goto LABEL_18;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(a1);
  if (v14)
  {
    v15 = *(v14 + 72);
    v16 = v14[10];
    *a2 = v15;
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v16 = qword_1ED537550;
    *a2 = static TextSizingKey.defaultValue;
  }

  *(a2 + 8) = v16;

LABEL_18:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019HyphenationDisabledI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      LOBYTE(v18[0]) = *(v12 + 72);
    }

    else
    {
      LOBYTE(v18[0]) = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationDisabledKey>, &type metadata for HyphenationDisabledKey, &protocol witness table for HyphenationDisabledKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019HyphenationDisabledS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    LOBYTE(v18[0]) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HyphenationDisabledKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v19[0]) = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = LOBYTE(v18[0]);
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017HyphenationFactorI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HyphenationFactorKey>, &type metadata for HyphenationFactorKey, &protocol witness table for HyphenationFactorKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017HyphenationFactorS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HyphenationFactorKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MinimumLineHeightI0VG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumLineHeightKey>, &type metadata for MinimumLineHeightKey, &protocol witness table for MinimumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MinimumLineHeightS0VG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<MinimumLineHeightKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017MaximumLineHeightI0VG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaximumLineHeightKey>, &type metadata for MaximumLineHeightKey, &protocol witness table for MaximumLineHeightKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017MaximumLineHeightS0VG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<MaximumLineHeightKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018LineHeightMultipleI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineHeightMultipleKey>, &type metadata for LineHeightMultipleKey, &protocol witness table for LineHeightMultipleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018LineHeightMultipleS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<LineHeightMultipleKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011LineSpacingI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 0;
    }

    *&v18[0] = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<LineSpacingKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(a1);
    if (v12)
    {
      *&v18[0] = v12[9];
    }

    else
    {
      *&v18[0] = 1.0;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v11[1])(v18, MEMORY[0x1E69E7DE0], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
    }

    else
    {
      v14 = 1.0;
    }

    *v18 = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<MinimumScaleFactorKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    *v19 = v14;
    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_14:
  v16 = *v18;
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV014LowerLineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, &v22);
        v10 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
        v11(v21);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15[9];
          v17 = *(v15 + 80);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        *&v21[0] = v16;
        BYTE8(v21[0]) = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>();
        v24 = v18;
        v25 = &protocol witness table for TrackedValue<A>;
        v22 = v16;
        v23 = v17;
        specialized Dictionary.subscript.setter(&v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(a1);
  if (v13)
  {
    v14 = v13[9];
    v12 = *(v13 + 80);
  }

  else
  {
    v14 = 0;
  }

  *&v21[0] = v14;
  BYTE8(v21[0]) = v12;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV09LineLimitI033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, &v22);
        v10 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
        v11(v21);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15[9];
          v17 = *(v15 + 80);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        *&v21[0] = v16;
        BYTE8(v21[0]) = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>();
        v24 = v18;
        v25 = &protocol witness table for TrackedValue<A>;
        v22 = v16;
        v23 = v17;
        specialized Dictionary.subscript.setter(&v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(a1);
  if (v13)
  {
    v14 = v13[9];
    v12 = *(v13 + 80);
  }

  else
  {
    v14 = 0;
  }

  *&v21[0] = v14;
  BYTE8(v21[0]) = v12;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 3;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Text.TruncationMode?, &type metadata for Text.TruncationMode, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 3;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<TruncationModeKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017DefaultSymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultSymbolFontKey>, &type metadata for DefaultSymbolFontKey, &protocol witness table for DefaultSymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultSymbolFontKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010SymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolFontKey>, &type metadata for SymbolFontKey, &protocol witness table for SymbolFontKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<SymbolFontKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Font?, &type metadata for Font, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontKey>>();
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE019WatchDisplayVariantI0VG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>, &type metadata for EnvironmentValues.WatchDisplayVariantKey, &protocol witness table for EnvironmentValues.WatchDisplayVariantKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
        outlined init with take of AnyTrackedValue(v20, v21);
        v12 = v22;
        v13 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        (v13[1])(&type metadata for WatchDisplayVariant, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v21);
      }

      else
      {
        v16 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(a1);
        if (v16)
        {
          v17 = *(v16 + 72);
        }

        else
        {
          v17 = 1;
        }

        *a2 = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.WatchDisplayVariantKey>>();
        v22 = v18;
        v23 = &protocol witness table for TrackedValue<A>;
        LOBYTE(v21[0]) = v17;
        specialized Dictionary.subscript.setter(v21, v8);
      }

      goto LABEL_14;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v14 = 1;
  *(v5 + 56) = 1;
  v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE019WatchDisplayVariantS0VG_Tt0g5(a1);
  if (v15)
  {
    v14 = *(v15 + 72);
  }

  *a2 = v14;
LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014FontDefinitionI0019_C17A136ED11B3E0D21R11D182F3B80B2LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v23);
        outlined init with take of AnyTrackedValue(v23, v24);
        v10 = v25;
        v11 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (v11[1])(v23, &type metadata for FontDefinitionType, v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v24);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = (v15 + 9);
          v17 = v15 + 10;
        }

        else
        {
          v16 = &static FontDefinitionKey.defaultValue;
          v17 = &static FontDefinitionKey.defaultValue + 1;
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }
        }

        v19 = *v17;
        *&v23[0] = *v16;
        *(&v23[0] + 1) = v19;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<FontDefinitionKey>>();
        v25 = v20;
        v26 = &protocol witness table for TrackedValue<A>;
        v24[0] = *&v23[0];
        v24[1] = v19;
        specialized Dictionary.subscript.setter(v24, v6);
      }

      goto LABEL_17;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(a1);
  if (v12)
  {
    v13 = (v12 + 9);
    v14 = v12 + 10;
  }

  else
  {
    v13 = &static FontDefinitionKey.defaultValue;
    v14 = &static FontDefinitionKey.defaultValue + 1;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  v18 = *v14;
  *&v23[0] = *v13;
  *(&v23[0] + 1) = v18;
LABEL_17:
  v21 = *&v23[0];
  os_unfair_lock_unlock((v3 + 16));

  return v21;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021NearestScrollableAxesjI033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>, &type metadata for NearestScrollableAxesEnvironmentKey, &protocol witness table for NearestScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, &type metadata for Axis.Set, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021NearestScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<NearestScrollableAxesEnvironmentKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017AllScrollableAxesjI033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017AllScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>, &type metadata for AllScrollableAxesEnvironmentKey, &protocol witness table for AllScrollableAxesEnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, &type metadata for Axis.Set, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA017AllScrollableAxesgF033_70EED0686586E4A728468B96DBF4A6DFLLOG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AllScrollableAxesEnvironmentKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerShapeKey>, &type metadata for ContainerShapeKey, &protocol witness table for ContainerShapeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v12 = v20;
    v13 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (v13[1])(&type metadata for ContainerShapeData, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(a1, a2);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<ContainerShapeKey>>();
    v20 = v14;
    v21 = &protocol witness table for TrackedValue<A>;
    v15 = swift_allocObject();
    v19[0] = v15;
    v16 = a2[1];
    v15[1] = *a2;
    v15[2] = v16;
    v15[3] = a2[2];
    *(v15 + 57) = *(a2 + 41);
    specialized Dictionary.subscript.setter(v19, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

double _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v25 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(a1);
    *(&v25 + 1) = v12;
    v26 = v13;
    v27 = v14;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPaddingKey>, &type metadata for DefaultPaddingKey, &protocol witness table for DefaultPaddingKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, &v25);
    outlined init with take of AnyTrackedValue(&v25, v28);
    v10 = v29;
    v11 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (v11[1])(&v25, &type metadata for EdgeInsets, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v15 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultPaddingF033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt2g5(a1);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    *&v25 = v15;
    *(&v25 + 1) = v16;
    v26 = v18;
    v27 = v20;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPaddingKey>>();
    v29 = v22;
    v30 = &protocol witness table for TrackedValue<A>;
    v23 = swift_allocObject();
    v28[0] = v23;
    v23[2] = v15;
    *(v23 + 3) = v17;
    *(v23 + 4) = v19;
    *(v23 + 5) = v21;
    specialized Dictionary.subscript.setter(v28, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v25;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA040AccessibilityPrefersCrossFadeTransitionsI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>, &type metadata for AccessibilityPrefersCrossFadeTransitionsKey, &protocol witness table for AccessibilityPrefersCrossFadeTransitionsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA040AccessibilityPrefersCrossFadeTransitionsF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityPrefersCrossFadeTransitionsKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>, &type metadata for EnvironmentValues.StringResolutionDate, &protocol witness table for EnvironmentValues.StringResolutionDate, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v25);
        outlined init with take of AnyTrackedValue(v25, v26);
        v12 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        v13 = v12[1];
        type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
        v13();
        __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15 + *(*v15 + 248);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
          v16 = __swift_project_value_buffer(v20, static EnvironmentValues.StringResolutionDate.defaultValue);
        }

        v21 = MEMORY[0x1E69E6720];
        outlined init with copy of WeakBox<GlassContainerCache>(v16, a2, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.StringResolutionDate>>();
        v27 = v22;
        v28 = &protocol witness table for TrackedValue<A>;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
        outlined init with copy of WeakBox<GlassContainerCache>(a2, boxed_opaque_existential_1, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v21);
        specialized Dictionary.subscript.setter(v26, v8);
      }

      goto LABEL_18;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE20StringResolutionDate33_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(a1);
  if (v14)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14 + *(*v14 + 248), a2, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = MEMORY[0x1E69E6720];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, MEMORY[0x1E69E6720]);
    v19 = __swift_project_value_buffer(v18, static EnvironmentValues.StringResolutionDate.defaultValue);
    outlined init with copy of WeakBox<GlassContainerCache>(v19, a2, &lazy cache variable for type metadata for EnvironmentValues.StringResolutionDate.ResolvableDate?, type metadata accessor for EnvironmentValues.StringResolutionDate.ResolvableDate, v17);
  }

LABEL_18:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA4TextVAAE17AlignmentStrategyV0jI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>, &type metadata for Text.AlignmentStrategy.EnvironmentKey, &protocol witness table for Text.AlignmentStrategy.EnvironmentKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for Text.AlignmentStrategy, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA4TextVAAE17AlignmentStrategyV0gF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<Text.AlignmentStrategy.EnvironmentKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV040AccessibilitySpeechAnnouncementsPriorityI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AccessibilityAnnouncementPriority?, &type metadata for AccessibilityAnnouncementPriority, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV040AccessibilitySpeechAnnouncementsPriorityF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAnnouncementsPriorityKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV044AccessibilitySpeechAlwaysIncludesPunctuationF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAlwaysIncludesPunctuationKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV038AccessibilitySpeechSpellsOutCharactersI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>, &type metadata for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV038AccessibilitySpeechSpellsOutCharactersF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechSpellsOutCharactersKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV032AccessibilitySpeechAdjustedPitchI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    BYTE8(v17[0]) = v12 & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>, &type metadata for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, &protocol witness table for EnvironmentValues.AccessibilitySpeechAdjustedPitchKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    *&v17[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV032AccessibilitySpeechAdjustedPitchF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    v14 = v13 & 1;
    BYTE8(v17[0]) = v13 & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.AccessibilitySpeechAdjustedPitchKey>>();
    v20 = v15;
    v21 = &protocol witness table for TrackedValue<A>;
    v18 = *&v17[0];
    v19 = v14;
    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE029ResolvableStringReferenceDateI033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (a1)
  {
    if (v6 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>, &type metadata for EnvironmentValues.ResolvableStringReferenceDateKey, &protocol witness table for EnvironmentValues.ResolvableStringReferenceDateKey, type metadata accessor for EnvironmentPropertyKey);
      v8 = v7;
      v9 = *(v5 + 32);
      if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v27);
        outlined init with take of AnyTrackedValue(v27, v28);
        v12 = v30;
        __swift_project_boxed_opaque_existential_1(v28, v29);
        v13 = v12[1];
        type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        v13();
        __swift_destroy_boxed_opaque_existential_1(v28);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15 + *(*v15 + 248);
        }

        else
        {
          if (one-time initialization token for defaultValue != -1)
          {
            swift_once();
          }

          type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          v16 = __swift_project_value_buffer(v21, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
        }

        v22 = MEMORY[0x1E6969530];
        v23 = MEMORY[0x1E69E6720];
        outlined init with copy of WeakBox<GlassContainerCache>(v16, a2, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ResolvableStringReferenceDateKey>>();
        v29 = v24;
        v30 = &protocol witness table for TrackedValue<A>;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
        outlined init with copy of WeakBox<GlassContainerCache>(a2, boxed_opaque_existential_1, &lazy cache variable for type metadata for Date?, v22, v23);
        specialized Dictionary.subscript.setter(v28, v8);
      }

      goto LABEL_18;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = 1;
  v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE029ResolvableStringReferenceDateS033_6237733B8EBAC19656F21E79CFCF2D67LLVG_Tt0g5(a1);
  if (v14)
  {
    outlined init with copy of WeakBox<GlassContainerCache>(v14 + *(*v14 + 248), a2, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v17 = MEMORY[0x1E6969530];
    v18 = MEMORY[0x1E69E6720];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v20 = __swift_project_value_buffer(v19, static EnvironmentValues.ResolvableStringReferenceDateKey.defaultValue);
    outlined init with copy of WeakBox<GlassContainerCache>(v20, a2, &lazy cache variable for type metadata for Date?, v17, v18);
  }

LABEL_18:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>, &type metadata for EnvironmentValues.__Key_timeDataSource, &protocol witness table for EnvironmentValues.__Key_timeDataSource, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for TimeDataSource<Date>, MEMORY[0x1E6969530], type metadata accessor for TimeDataSource);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_timeDataSource33_C8A98712CE9284278805F6E671356D1BLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_timeDataSource>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>, &type metadata for EnvironmentValues.__Key_attributeScopeContext, &protocol witness table for EnvironmentValues.__Key_attributeScopeContext, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for AttributeScopeContext, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F22_attributeScopeContext33_F292DF68746B29BB2072B6FAA73BF5DCLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 24);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_attributeScopeContext>>();
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    v17 = swift_allocObject();
    v20[0] = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = *(a2 + 8);
    *(v17 + 40) = v15;

    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028ContainerBackgroundLuminanceI033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>, &type metadata for EnvironmentValues.ContainerBackgroundLuminanceKey, &protocol witness table for EnvironmentValues.ContainerBackgroundLuminanceKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v21);
    outlined init with take of AnyTrackedValue(v21, v22);
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v22, v26);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for ContainerBackgroundLuminance?, &type metadata for ContainerBackgroundLuminance, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028ContainerBackgroundLuminanceF033_8D5CD1C02D0C201DDE64A5D11F6A296DLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 20);
    v18 = *(a2 + 21);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContainerBackgroundLuminanceKey>>();
    v26 = v19;
    v27 = &protocol witness table for TrackedValue<A>;
    v22[0] = v14;
    v22[1] = v15;
    v24 = v17;
    v23 = v16;
    v25 = v18;
    specialized Dictionary.subscript.setter(v22, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018HoverEffectContextI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HoverEffectContextKey>, &type metadata for HoverEffectContextKey, &protocol witness table for HoverEffectContextKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v24);
    outlined init with take of AnyTrackedValue(v24, v25);
    v12 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for HoverEffectContext?, &type metadata for HoverEffectContext, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA018HoverEffectContextF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    v19 = a2[5];
    v20 = a2[6];
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HoverEffectContextKey>>();
    v26 = v21;
    v27 = &protocol witness table for TrackedValue<A>;
    v22 = swift_allocObject();
    v25[0] = v22;
    v22[2] = v14;
    v22[3] = v15;
    v22[4] = v16;
    v22[5] = v17;
    v22[6] = v18;
    v22[7] = v19;
    v22[8] = v20;
    outlined copy of HoverEffectContext?(v14, v15, v16, v17, v18, v19, v20);
    specialized Dictionary.subscript.setter(v25, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE016HoverEffectStateI033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>, &type metadata for EnvironmentValues.HoverEffectStateKey, &protocol witness table for EnvironmentValues.HoverEffectStateKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for HoverEffectContext.State, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE016HoverEffectStateF033_B2E20BEC96D7E01EE3D55A38320E6294LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v16 = *(a2 + 8);
    v15 = *(a2 + 16);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.HoverEffectStateKey>>();
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v14;
    v20[1] = v16;
    v20[2] = v15;

    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012SystemAccenthI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for _SystemAccentValue?, &type metadata for _SystemAccentValue, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<SystemAccentValueKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021PresentingContextMenuI033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentingContextMenuKey>, &type metadata for PresentingContextMenuKey, &protocol witness table for PresentingContextMenuKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<PresentingContextMenuKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I15_hasGlassEffect08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>, &type metadata for EnvironmentValues.__Key_hasGlassEffect, &protocol witness table for EnvironmentValues.__Key_hasGlassEffect, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F15_hasGlassEffect08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_hasGlassEffect>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I18_glassEffectHidden08_3DF70D9P23D7473F4D189A049B764CFEFLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>, &type metadata for EnvironmentValues.__Key_glassEffectHidden, &protocol witness table for EnvironmentValues.__Key_glassEffectHidden, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F18_glassEffectHidden08_3DF70D9M23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectHidden>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA028GlassEffectBackdropGroupNameI008_3DF70D9Q23D7473F4D189A049B764CFEFLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v18[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1);
    *(&v18[0] + 1) = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>, &type metadata for GlassEffectBackdropGroupNameKey, &protocol witness table for GlassEffectBackdropGroupNameKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
    outlined init with take of AnyTrackedValue(v18, v19);
    v10 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v11(v18);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v13 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA028GlassEffectBackdropGroupNameF008_3DF70D9N23D7473F4D189A049B764CFEFLLVG_Tt2g5(a1);
    v15 = v14;
    *&v18[0] = v13;
    *(&v18[0] + 1) = v14;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<GlassEffectBackdropGroupNameKey>>();
    v20 = v16;
    v21 = &protocol witness table for TrackedValue<A>;
    v19[0] = v13;
    v19[1] = v15;

    specialized Dictionary.subscript.setter(v19, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v18[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022HasSystemOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<HasSystemOpenURLActionKey>, &type metadata for HasSystemOpenURLActionKey, &protocol witness table for HasSystemOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022HasSystemOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<HasSystemOpenURLActionKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV020DefaultOpenURLActionI033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>, &type metadata for EnvironmentValues.DefaultOpenURLActionKey, &protocol witness table for EnvironmentValues.DefaultOpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV020DefaultOpenURLActionF033_B30D3CE6A753616B2150C4E3EFDA1ED9LLVG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.DefaultOpenURLActionKey>>();
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v20 = swift_allocObject();
    v23[0] = v20;
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    outlined copy of OpenURLAction?(v14, v15, v16, v17, v18);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013OpenURLActionI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenURLActionKey>>();
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v20 = swift_allocObject();
    v23[0] = v20;
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    outlined copy of OpenURLAction?(v14, v15, v16, v17, v18);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022OpenSensitiveURLActionI0VG_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenSensitiveURLActionKey>, &type metadata for OpenSensitiveURLActionKey, &protocol witness table for OpenSensitiveURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v22);
    outlined init with take of AnyTrackedValue(v22, v23);
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = v12[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    v13();
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA022OpenSensitiveURLActionF0VG_Tt2g5(a1, a2);
    v14 = *a2;
    v15 = *(a2 + 8);
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    v18 = *(a2 + 32);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<OpenSensitiveURLActionKey>>();
    v24 = v19;
    v25 = &protocol witness table for TrackedValue<A>;
    v20 = swift_allocObject();
    v23[0] = v20;
    *(v20 + 16) = v14;
    *(v20 + 24) = v15;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    *(v20 + 48) = v18;
    outlined copy of OpenURLAction?(v14, v15, v16, v17, v18);
    specialized Dictionary.subscript.setter(v23, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I13_buttonSizing014_B3F6B53DB8F35N17F9F84F34C99C79B2CLLVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>, &type metadata for EnvironmentValues.__Key_buttonSizing, &protocol witness table for EnvironmentValues.__Key_buttonSizing, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ButtonSizing, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F13_buttonSizing014_B3F6B53DB8F35K17F9F84F34C99C79B2CLLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_buttonSizing>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v18[0]) = v14;
    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE02__I28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>, &type metadata for EnvironmentValues.__Key_glassEffectBackdropObserver, &protocol witness table for EnvironmentValues.__Key_glassEffectBackdropObserver, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE02__F28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];

    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v14[0];
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV013ContentShapesI033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt1g5@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(a1, a2);
    goto LABEL_9;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>, &type metadata for EnvironmentValues.ContentShapesKey, &protocol witness table for EnvironmentValues.ContentShapesKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (v13[1])(&type metadata for ContentShapes, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV013ContentShapesF033_6E67AD6866B38627EB183D41FF0BA80ALLVG_Tt2g5(a1, a2);
    v14 = *a2;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.ContentShapesKey>>();
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE028TextRendererAddsDrawingGroupI033_7F70C8A76EE0356881289646072938C0LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028TextRendererAddsDrawingGroupF033_7F70C8A76EE0356881289646072938C0LLVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE028TextRendererAddsDrawingGroupF033_7F70C8A76EE0356881289646072938C0LLVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}