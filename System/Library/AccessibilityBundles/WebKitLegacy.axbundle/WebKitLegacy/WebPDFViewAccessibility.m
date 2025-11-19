@interface WebPDFViewAccessibility
- (BOOL)hasSpaces:(CGPDFTextString *)a3;
- (id)_accessibilityPages;
- (id)accessibilityContainer;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)accessibilityHitTest:(CGPoint)a3;
- (int64_t)accessibilityElementCount;
- (int64_t)indexOfAccessibilityElement:(id)a3;
@end

@implementation WebPDFViewAccessibility

- (id)_accessibilityPages
{
  v2 = self;
  v3 = MEMORY[0x29EDC7620];
  v4 = [(WebPDFViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (v4)
  {
    goto LABEL_100;
  }

  v4 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
  [(WebPDFViewAccessibility *)v2 _accessibilitySetRetainedValue:v4 forKey:*v3];
  v5 = [(WebPDFViewAccessibility *)v2 doc];
  NumberOfPages = CGPDFDocumentGetNumberOfPages(v5);
  if (!NumberOfPages)
  {
    goto LABEL_100;
  }

  v7 = NumberOfPages;
  v8 = 1;
  v67 = v4;
  v68 = v2;
  v66 = v5;
  v69 = NumberOfPages;
  do
  {
    Page = CGPDFDocumentGetPage(v5, v8);
    v10 = CGPDFPageCopyTextString();
    if (!v10)
    {
      goto LABEL_99;
    }

    v11 = v10;
    v71 = v8;
    Length = CGPDFTextStringGetLength();
    v13 = [(WebPDFViewAccessibility *)v2 hasSpaces:v11];
    v14 = 0.0900000036;
    if (v13)
    {
      v14 = 1.0;
    }

    v70 = v14;
    v15 = malloc_type_calloc(1uLL, 4 * Length, 0x1000040BDFB0063uLL);
    v16 = malloc_type_calloc(1uLL, 16 * Length, 0x100004000313F17uLL);
    v17 = malloc_type_calloc(1uLL, Length << 6, 0x1000040E0EAB150uLL);
    BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFMediaBox);
    x = BoxRect.origin.x;
    y = BoxRect.origin.y;
    height = BoxRect.size.height;
    width = BoxRect.size.width;
    v20 = CGPDFPageGetRotationAngle(Page) % 360;
    if (v20 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 + 360;
    }

    v85 = 0;
    v22 = CGPDFTextStringGetLength();
    v83 = v16;
    v84 = v15;
    ptr = v17;
    v82 = v17;
    gXFormRange = 0;
    qword_2A1794320 = 0;
    v72 = v21;
    if (v21)
    {
      v23 = v21 == 180;
    }

    else
    {
      v23 = 1;
    }

    v24 = !v23;
    v76 = v24;
    gBoundsRange = 0;
    qword_2A1794330 = 0;
    v78 = v22;
    if (v22 < 1)
    {
      v25 = 0;
      goto LABEL_98;
    }

    v25 = 0;
    v26 = 0;
    v77 = 0;
    v27 = 2 * Length;
    v74 = x;
    v75 = 0.0;
    v28 = 0.0;
    v29 = 1;
    v30 = v15;
    v31 = 0.0;
    v73 = y;
    do
    {
      v32 = v16;
      if (v25 + 5 > v27)
      {
        v15 = malloc_type_realloc(v15, 4 * v27, 0x1000040BDFB0063uLL);
        v33 = malloc_type_realloc(v16, 16 * v27, 0x100004000313F17uLL);
        v34 = malloc_type_realloc(ptr, v27 << 6, 0x1000040E0EAB150uLL);
        v30 = &v15[v25];
        v32 = v33;
        v83 = &v33[8 * v25];
        v84 = v30;
        ptr = v34;
        v82 = &v34[v25];
        v27 *= 2;
      }

      if (gBoundsRange > v26 || !v26 || qword_2A1794330 + gBoundsRange <= v26)
      {
        CGPDFTextStringGetBBoxForIndex();
        gBounds_1 = v35;
        gBounds_2 = v36;
        gBounds_3 = v37;
      }

      v87 = 0.0;
      v88 = 0;
      if (gXFormRange > v26 || !v26 || qword_2A1794320 + gXFormRange <= v26)
      {
        CGPDFTextStringGetTransformForIndex();
        *gXForm = v86;
        gXFormIsIdentity = CGAffineTransformIsIdentity(&v86);
      }

      CGPDFTextStringGetPositionForIndex();
      v40 = v38;
      v41 = *&gBounds_3;
      v42 = v39 + *&gBounds_1;
      if (v87 == 0.0)
      {
        v43 = *&gBounds_2;
      }

      else
      {
        v43 = v87;
      }

      if (!gXFormIsIdentity)
      {
        v86 = *gXForm;
        v44 = v39 + *&gBounds_1;
        v45 = v43;
        v46 = gBounds_3;
        v91 = CGRectApplyAffineTransform(*&v38, &v86);
        v40 = v91.origin.x;
        v42 = v91.origin.y;
        v43 = v91.size.width;
        v41 = v91.size.height;
      }

      v92.origin.x = v40;
      v92.origin.y = v42;
      v92.size.width = v43;
      v92.size.height = v41;
      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.height = height;
      v93.size.width = width;
      if (!CGRectIntersectsRect(v92, v93))
      {
        v16 = v32;
        goto LABEL_85;
      }

      CharacterAtIndex = CGPDFTextStringGetCharacterAtIndex();
      if (!CharacterAtIndex)
      {
        v49 = v28;
        v51 = v75;
        v16 = v32;
        goto LABEL_81;
      }

      v48 = CharacterAtIndex;
      if (v76)
      {
        v49 = v40;
      }

      else
      {
        v49 = v42;
      }

      if ((v77 & 1) == 0)
      {
        if (v76)
        {
          v51 = v42;
        }

        else
        {
          v51 = v40;
        }

        v16 = v32;
        goto LABEL_63;
      }

      if (v76)
      {
        v50 = v43;
      }

      else
      {
        v50 = v41;
      }

      if (v76)
      {
        v51 = v42;
      }

      else
      {
        v51 = v40;
      }

      v16 = v32;
      v52 = v49 > v28 + v50 || v49 < v28 + v50 * -0.25 || v31 + v51 < v75;
      if (v30 <= v15)
      {
        NSLog(&cfstr_WeShouldnTBeHe.isa);
        goto LABEL_61;
      }

      if (!v52)
      {
        if (v51 <= v75 + v31 * v70)
        {
          goto LABEL_61;
        }

        v57 = *(v30 - 1);
        if (v57 == 32)
        {
          goto LABEL_61;
        }

        LOBYTE(v58) = 0;
        LODWORD(v86.a) = 0;
        if ((v57 - 12352) >= 0xC0 && (v57 + 155) >= 0x3Bu)
        {
          Script = uscript_getScript();
          if (Script > 0x16)
          {
            LOBYTE(v58) = 1;
          }

          else
          {
            v58 = 0x2DFFFFu >> Script;
          }
        }

        if (((LODWORD(v86.a) = 0, v60 = CGPDFTextStringGetCharacterAtIndex(), (v60 - 12352) < 0xC0) || (v60 + 155) < 0x3Bu || (v61 = uscript_getScript(), v61 <= 0x16) && ((1 << v61) & 0x520000) != 0) && (v58 & 1) == 0)
        {
LABEL_61:
          v29 = 0;
        }

        else
        {
          insertChar(32, &v84, &v83, &v82, &v85, v72, -2);
          v29 = 1;
        }

        v49 = v28;
        goto LABEL_63;
      }

      if (*(v30 - 1) != 32)
      {
        insertChar(32, &v84, &v83, &v82, &v85, v72, -1);
      }

      insertChar(10, &v84, &v83, &v82, &v85, v72, -1);
      v29 = 1;
LABEL_63:
      v53 = v83;
      v54 = v84;
      *v84 = v48;
      v30 = v54 + 1;
      *v53 = v26;
      v83 = v53 + 1;
      v84 = v30;
      v55 = v82;
      v82->origin.x = v40;
      v55->origin.y = v42;
      v55->size.width = v43;
      v55->size.height = v41;
      v82 = v55 + 1;
      v56 = v85;
      v25 = v85 + 1;
      v77 = 1;
      ++v85;
      if ((v29 & 1) == 0 && v56 >= 1)
      {
        v29 = 0;
        v77 = 1;
        if (v72 > 179)
        {
          if (v72 == 180)
          {
            v29 = 0;
            v55[-1].size.width = v55[-1].size.width + v55[-1].origin.x - (v43 + v40);
            v55[-1].origin.x = v43 + v40;
            goto LABEL_80;
          }

          if (v72 == 270)
          {
            v29 = 0;
            v55[-1].size.height = v55[-1].size.height + v55[-1].origin.y - v42 - v41;
            v55[-1].origin.y = v41 + v42;
            goto LABEL_80;
          }
        }

        else
        {
          if (!v72)
          {
            v29 = 0;
            v55[-1].size.width = v55[-1].size.width + v40 - (v55[-1].origin.x + v55[-1].size.width);
            goto LABEL_80;
          }

          if (v72 == 90)
          {
            v29 = 0;
            v55[-1].size.height = v55[-1].size.height + v42 - (v55[-1].origin.y + v55[-1].size.height);
LABEL_80:
            v77 = 1;
          }
        }
      }

LABEL_81:
      if (v76)
      {
        v31 = v41;
      }

      else
      {
        v31 = v43;
      }

      v75 = v31 + v51;
      v28 = v49;
      y = v73;
      x = v74;
LABEL_85:
      ++v26;
    }

    while (v78 != v26);
    v4 = v67;
    v17 = ptr;
    if (v25 >= 1)
    {
      v15 = malloc_type_realloc(v15, 2 * v25, 0x1000040BDFB0063uLL);
      v16 = malloc_type_realloc(v16, 8 * v25, 0x100004000313F17uLL);
      v17 = malloc_type_realloc(ptr, 32 * v25, 0x1000040E0EAB150uLL);
    }

    v2 = v68;
    v5 = v66;
LABEL_98:
    v62 = [MEMORY[0x29EDBA0F8] stringWithCharacters:v15 length:{v25, v66}];
    free(v15);
    free(v16);
    free(v17);
    CGPDFTextStringRelease();
    v63 = [objc_allocWithZone(UIAccessibilityPDFElement) initWithAccessibilityContainer:v2];
    v8 = v71;
    [v63 setPage:v71 - 1];
    v7 = v69;
    [v63 setPageCount:v69];
    [v63 setAccessibilityLabel:v62];
    [v4 addObject:v63];

LABEL_99:
    ++v8;
  }

  while (v8 <= v7);
LABEL_100:
  v64 = v4;

  return v64;
}

- (id)accessibilityContainer
{
  v2 = self;
  if (v2)
  {
    v3 = v2;
    while (([(WebPDFViewAccessibility *)v3 isMemberOfClass:NSClassFromString(&cfstr_Webview.isa)]& 1) == 0)
    {
      v4 = [(WebPDFViewAccessibility *)v3 superview];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    v5 = [(WebPDFViewAccessibility *)v3 accessibilityContainer];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_11:

  return v4;
}

- (id)accessibilityHitTest:(CGPoint)a3
{
  [(WebPDFViewAccessibility *)self convertPoint:0 toView:a3.x, a3.y];
  v5 = v4;
  v7 = v6;
  v8 = [(WebPDFViewAccessibility *)self accessibilityElementCount];
  if (v8 < 1)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      v11 = [(WebPDFViewAccessibility *)self accessibilityElementAtIndex:v10];
      [v11 frame];
      v14.x = v5;
      v14.y = v7;
      if (CGRectContainsPoint(v15, v14))
      {
        break;
      }

      if (v9 == ++v10)
      {
        goto LABEL_5;
      }
    }
  }

  return v11;
}

- (int64_t)accessibilityElementCount
{
  v2 = [(WebPDFViewAccessibility *)self _accessibilityPages];
  v3 = [v2 count];

  return v3;
}

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v4 = [(WebPDFViewAccessibility *)self _accessibilityPages];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
  v5 = [(WebPDFViewAccessibility *)self _accessibilityPages];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (BOOL)hasSpaces:(CGPDFTextString *)a3
{
  Length = CGPDFTextStringGetLength();
  if (Length >= 0x200)
  {
    v4 = 512;
  }

  else
  {
    v4 = Length;
  }

  if (Length)
  {
    v5 = 0;
    v6 = -1;
    v7 = 1;
    do
    {
      CharacterAtIndex = CGPDFTextStringGetCharacterAtIndex();
      v9 = v5;
      if (CharacterAtIndex == 32)
      {
        v9 = v6;
        if ((v6 & 0x8000000000000000) == 0)
        {
          break;
        }
      }

      v7 = ++v5 < v4;
      v6 = v9;
    }

    while (v4 != v5);
  }

  else
  {
    return 0;
  }

  return v7;
}

@end