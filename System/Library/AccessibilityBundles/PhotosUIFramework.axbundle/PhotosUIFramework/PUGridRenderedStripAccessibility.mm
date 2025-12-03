@interface PUGridRenderedStripAccessibility
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityLabel;
- (void)_axClearData;
- (void)_axGenerateIsElement:(id)element;
- (void)_axGenerateLabel:(id)label;
- (void)_axInitializeDataForElement;
- (void)_render;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation PUGridRenderedStripAccessibility

- (void)_axClearData
{
  [(PUGridRenderedStripAccessibility *)self setAccessibilityLabel:0];

  [(PUGridRenderedStripAccessibility *)self _accessibilityRemoveValueForKey:@"IsAXElementSet"];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUGridRenderedStripAccessibility;
  [(PUGridRenderedStripAccessibility *)&v3 layoutSubviews];
  [(PUGridRenderedStripAccessibility *)self _axClearData];
}

- (void)_render
{
  v3.receiver = self;
  v3.super_class = PUGridRenderedStripAccessibility;
  [(PUGridRenderedStripAccessibility *)&v3 _render];
  [(PUGridRenderedStripAccessibility *)self _axClearData];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  if ([(PUGridRenderedStripAccessibility *)self isAccessibilityElement]&& (UIAccessibilityPointForPoint(), v6 = v5, v8 = v7, [(PUGridRenderedStripAccessibility *)self accessibilityFrame], v12.x = v6, v12.y = v8, CGRectContainsPoint(v13, v12)))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_axGenerateLabel:(id)label
{
  labelCopy = label;
  v4 = [labelCopy indexOfObject:self];
  if (v4 < 0)
  {
LABEL_6:
    accessibilityLabel = 0;
  }

  else
  {
    v5 = v4;
    while (1)
    {
      v6 = [labelCopy objectAtIndex:v5];
      NSClassFromString(&cfstr_Pxphotossectio.isa);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v5-- <= 0)
      {
        goto LABEL_6;
      }
    }

    v10 = [labelCopy objectAtIndex:v5];
    accessibilityLabel = [v10 accessibilityLabel];
  }

  if ([accessibilityLabel length])
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityPULocalizedString(@"small.photos.group.with.title");
    v13 = [v11 stringWithFormat:v12, accessibilityLabel];

    accessibilityLabel = v12;
  }

  else
  {
    v13 = accessibilityPULocalizedString(@"small.photos.group");
  }

  [(PUGridRenderedStripAccessibility *)self setAccessibilityLabel:v13];
}

- (void)_axGenerateIsElement:(id)element
{
  elementCopy = element;
  v4 = [elementCopy indexOfObject:self];
  v5 = v4;
  if (v4 < 1)
  {
    v7 = v4;
    goto LABEL_14;
  }

  v6 = v4 + 1;
  v7 = v4;
  while (1)
  {
    v8 = [elementCopy objectAtIndex:v6 - 2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (([v8 isHidden] & 1) == 0 && objc_msgSend(v8, "isAccessibilityElement"))
      {
        v7 = v6 - 2;
      }

      goto LABEL_10;
    }

    NSClassFromString(&cfstr_Pxphotossectio.isa);
    if (objc_opt_isKindOfClass())
    {
      accessibilityLabel = [v8 accessibilityLabel];
      v10 = [accessibilityLabel length];

      if (v10)
      {
        break;
      }
    }

LABEL_10:

    if (--v6 <= 1)
    {
      goto LABEL_14;
    }
  }

LABEL_14:
  [(PUGridRenderedStripAccessibility *)self setIsAccessibilityElement:v7 == v5];
  [(PUGridRenderedStripAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"IsAXElementSet"];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:@"AXPhotoCollectionViewScrolled" object:0];

  v4.receiver = self;
  v4.super_class = PUGridRenderedStripAccessibility;
  [(PUGridRenderedStripAccessibility *)&v4 dealloc];
}

- (void)_axInitializeDataForElement
{
  if ([(PUGridRenderedStripAccessibility *)self _accessibilityBoolValueForKey:@"AXDidRegister"])
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:self selector:sel__axClearData name:@"AXPhotoCollectionViewScrolled" object:0];

    [(PUGridRenderedStripAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXDidRegister"];
  }

  superview = [(PUGridRenderedStripAccessibility *)self superview];
  subviews = [superview subviews];

  v6 = [subviews sortedArrayUsingSelector:sel__accessibilitySimpleSort_];

  [(PUGridRenderedStripAccessibility *)self _axGenerateIsElement:v6];
  v7.receiver = self;
  v7.super_class = PUGridRenderedStripAccessibility;
  if ([(PUGridRenderedStripAccessibility *)&v7 isAccessibilityElement])
  {
    [(PUGridRenderedStripAccessibility *)self _axGenerateLabel:v6];
  }
}

- (BOOL)isAccessibilityElement
{
  if ([(PUGridRenderedStripAccessibility *)self _accessibilityBoolValueForKey:@"IsAXElementSet"])
  {
    v8.receiver = self;
    v8.super_class = PUGridRenderedStripAccessibility;
    return [(PUGridRenderedStripAccessibility *)&v8 isAccessibilityElement];
  }

  else if (([(PUGridRenderedStripAccessibility *)self isHidden]& 1) != 0)
  {
    return 0;
  }

  else
  {
    superview = [(PUGridRenderedStripAccessibility *)self superview];
    subviews = [superview subviews];

    if ([subviews indexOfObject:self] == 0x7FFFFFFFFFFFFFFFLL)
    {
      isAccessibilityElement = 0;
    }

    else
    {
      [(PUGridRenderedStripAccessibility *)self _axInitializeDataForElement];
      v7.receiver = self;
      v7.super_class = PUGridRenderedStripAccessibility;
      isAccessibilityElement = [(PUGridRenderedStripAccessibility *)&v7 isAccessibilityElement];
    }
  }

  return isAccessibilityElement;
}

- (CGRect)accessibilityFrame
{
  superview = [(PUGridRenderedStripAccessibility *)self superview];
  subviews = [superview subviews];

  v5 = [subviews sortedArrayUsingSelector:sel__accessibilitySimpleSort_];

  v6 = [v5 indexOfObject:self];
  [(PUGridRenderedStripAccessibility *)self frame];
  x = v7;
  y = v9;
  width = v11;
  height = v13;
  v15 = [v5 count];
  if (v6 < v15)
  {
    v16 = v15;
    do
    {
      v17 = [v5 objectAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([v17 isHidden] & 1) == 0)
        {
          [v17 frame];
          v38.origin.x = v18;
          v38.origin.y = v19;
          v38.size.width = v20;
          v38.size.height = v21;
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v34 = CGRectUnion(v33, v38);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
        }
      }

      else
      {
        NSClassFromString(&cfstr_Pxphotossectio.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v17 accessibilityLabel], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v23))
        {

          break;
        }
      }

      ++v6;
    }

    while (v16 != v6);
  }

  superview2 = [(PUGridRenderedStripAccessibility *)self superview];
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v36 = UIAccessibilityConvertFrameToScreenCoordinates(v35, superview2);
  v25 = v36.origin.x;
  v26 = v36.origin.y;
  v27 = v36.size.width;
  v28 = v36.size.height;

  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = PUGridRenderedStripAccessibility;
  accessibilityLabel = [(PUGridRenderedStripAccessibility *)&v9 accessibilityLabel];

  if (accessibilityLabel)
  {
    selfCopy = self;
    v4 = &selfCopy;
  }

  else
  {
    [(PUGridRenderedStripAccessibility *)self _axInitializeDataForElement];
    selfCopy2 = self;
    v4 = &selfCopy2;
  }

  v4[1] = PUGridRenderedStripAccessibility;
  v5 = objc_msgSendSuper2(v4, sel_accessibilityLabel, selfCopy2);

  return v5;
}

@end