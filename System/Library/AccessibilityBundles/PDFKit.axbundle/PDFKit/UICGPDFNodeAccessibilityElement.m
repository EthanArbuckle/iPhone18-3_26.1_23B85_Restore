@interface UICGPDFNodeAccessibilityElement
+ (BOOL)_containsOnlyTextChildren:(id)a3;
+ (BOOL)_isValidTextFieldElement:(id)a3;
+ (id)_findCaptionChildrenNodesOfFigureNode:(id)a3;
+ (id)_findFigureChildrenNodesOfTableCellNode:(id)a3;
+ (id)_findLabelBodyChildNodeOfListItem:(id)a3;
+ (id)_findLabelChildNodeOfListItem:(id)a3;
+ (id)_findLinkChildrenNodesOfNode:(id)a3;
+ (id)_findOverlappingChild:(CGRect)a3 children:(id)a4;
+ (id)_findTableCellNodesOfTableNode:(id)a3 withHeadersOnly:(BOOL)a4;
- (BOOL)_accessibilityInsertAnnotation:(id)a3;
- (BOOL)_accessibilityRemoveAnnotation:(id)a3;
- (BOOL)_isContainerOfOnlyOneLinkNodeChild;
- (BOOL)_isSubFigure;
- (BOOL)_pdfElementHasLinkContainer;
- (BOOL)isAccessibilityElement;
- (CGRect)_axConvertBoundsFromScreenCoordinatesToPageView:(CGRect)a3;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)bounds;
- (UICGPDFNodeAccessibilityElement)initWithAccessibilityContainer:(id)a3 pdfNodeRef:(CGPDFTaggedNode *)a4 withPage:(id)a5;
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityHeadingLevel;
- (id)_accessibilityLinks;
- (id)_accessibilityStringForListType:(int)a3;
- (id)_attributedAccessibilityLabelForNode:(CGPDFTaggedNode *)a3;
- (id)_findTOCIChildNodeOfNode:(id)a3;
- (id)_getPDFPageView;
- (id)accessibilityCustomRotors;
- (id)accessibilityDataTableCellElementForRow:(unint64_t)a3 column:(unint64_t)a4;
- (id)accessibilityElements;
- (id)accessibilityHeaderElementsForColumn:(unint64_t)a3;
- (id)accessibilityHeaderElementsForRow:(unint64_t)a3;
- (id)accessibilityIdentification;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (int)type;
- (int64_t)accessibilityContainerType;
- (unint64_t)_findTraitsForTableCellElements;
- (unint64_t)accessibilityColumnCount;
- (unint64_t)accessibilityRowCount;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityIndexForInsertingBounds:(CGRect)a3;
- (void)_axHandleUpdateVisibility:(id)a3;
- (void)_axInsertChild:(id)a3 atIndex:(unint64_t)a4;
- (void)_axRemoveChild:(id)a3;
- (void)dealloc;
@end

@implementation UICGPDFNodeAccessibilityElement

- (UICGPDFNodeAccessibilityElement)initWithAccessibilityContainer:(id)a3 pdfNodeRef:(CGPDFTaggedNode *)a4 withPage:(id)a5
{
  v9.receiver = self;
  v9.super_class = UICGPDFNodeAccessibilityElement;
  v6 = [(AXPDFNodeElement *)&v9 initWithAccessibilityContainer:a3 withPage:a5];
  if (a4)
  {
    CGPDFTaggedNodeRetain();
    [(UICGPDFNodeAccessibilityElement *)v6 setNodeRef:a4];
    [(UICGPDFNodeAccessibilityElement *)v6 setAltText:CGPDFTaggedNodeGetAltText()];
  }

  v7 = [MEMORY[0x29EDBA068] defaultCenter];
  [v7 addObserver:v6 selector:sel__axHandleUpdateVisibility_ name:AXPDFVisibiltyUpdatedNotification object:0];

  return v6;
}

- (void)dealloc
{
  if ([(UICGPDFNodeAccessibilityElement *)self nodeRef])
  {
    [(UICGPDFNodeAccessibilityElement *)self nodeRef];
    CGPDFTaggedNodeRelease();
  }

  v3.receiver = self;
  v3.super_class = UICGPDFNodeAccessibilityElement;
  [(UICGPDFNodeAccessibilityElement *)&v3 dealloc];
}

- (int)type
{
  [(UICGPDFNodeAccessibilityElement *)self nodeRef];

  return CGPDFTaggedNodeGetType();
}

- (id)accessibilityElements
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self cachedAXElements];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    [(UICGPDFNodeAccessibilityElement *)self nodeRef];
    if (CGPDFTaggedNodeGetType())
    {
      [(UICGPDFNodeAccessibilityElement *)self nodeRef];
      ChildCount = CGPDFTaggedNodeGetChildCount();
      if (ChildCount)
      {
        v5 = ChildCount;
        v6 = 0;
        do
        {
          [(UICGPDFNodeAccessibilityElement *)self nodeRef];
          if (CGPDFTaggedNodeGetType() == 300 || ([(UICGPDFNodeAccessibilityElement *)self nodeRef], CGPDFTaggedNodeGetChildAtIndex(), CGPDFTaggedNodeGetType() != 301))
          {
            [(UICGPDFNodeAccessibilityElement *)self nodeRef];
            ChildAtIndex = CGPDFTaggedNodeGetChildAtIndex();
            Type = CGPDFTaggedNodeGetType();
            if (Type != 1)
            {
              v15 = Type;
              if (Type == 800)
              {
                v16 = [PDFAnnotationAccessibilityElement alloc];
                v17 = [(AXPDFNodeElement *)self page];
                v18 = [(PDFAnnotationAccessibilityElement *)v16 initWithAccessibilityContainer:self pdfNodeRef:ChildAtIndex withPage:v17];
              }

              else
              {
                v19 = [UICGPDFNodeAccessibilityElement alloc];
                v20 = [(AXPDFNodeElement *)self page];
                v18 = [(UICGPDFNodeAccessibilityElement *)v19 initWithAccessibilityContainer:self pdfNodeRef:ChildAtIndex withPage:v20];

                if (v15 == 300)
                {
                  [(PDFAnnotationAccessibilityElement *)v18 setListItemNumber:v6];
                }
              }

              [v3 axSafelyAddObject:v18];
            }

            ++v6;
          }

          else
          {
            v7 = [[UICGPDFListContainerAccessibilityElement alloc] initWithAccessibilityContainer:self];
            v8 = [MEMORY[0x29EDB8DE8] array];
            if (v6 < v5)
            {
              do
              {
                v9 = [UICGPDFNodeAccessibilityElement alloc];
                [(UICGPDFNodeAccessibilityElement *)self nodeRef];
                v10 = CGPDFTaggedNodeGetChildAtIndex();
                v11 = [(AXPDFNodeElement *)self page];
                v12 = [(UICGPDFNodeAccessibilityElement *)v9 initWithAccessibilityContainer:v7 pdfNodeRef:v10 withPage:v11];

                [(UICGPDFNodeAccessibilityElement *)v12 setListItemNumber:v6];
                [v8 axSafelyAddObject:v12];

                ++v6;
              }

              while (v5 != v6);
              v6 = v5;
            }

            [(UICGPDFListContainerAccessibilityElement *)v7 setAccessibilityElements:v8];
            [v3 axSafelyAddObject:v7];
          }
        }

        while (v6 < v5);
      }

      [(UICGPDFNodeAccessibilityElement *)self setCachedAXElements:v3];
    }
  }

  return v3;
}

- (CGRect)accessibilityFrameForScrolling
{
  [(UICGPDFNodeAccessibilityElement *)self accessibilityFrame];

  return CGRectInset(*&v2, 0.0, -80.0);
}

- (CGRect)bounds
{
  [(UICGPDFNodeAccessibilityElement *)self nodeRef];

  CGPDFTaggedNodeGetBounds();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)accessibilityFrame
{
  [(UICGPDFNodeAccessibilityElement *)self nodeRef];
  CGPDFTaggedNodeGetBounds();

  [(AXPDFNodeElement *)self convertedAccessibilityFrame:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)accessibilityLabel
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self type];
  if (v3 == 301)
  {
    v4 = [UICGPDFNodeAccessibilityElement _findLabelChildNodeOfListItem:self];
    v5 = [UICGPDFNodeAccessibilityElement _findLabelBodyChildNodeOfListItem:self];
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v11 = MEMORY[0x29EDBD7E8];
      v12 = [v5 accessibilityLabel];
      v13 = [v11 axAttributedStringWithString:v12];

      [(UICGPDFNodeAccessibilityElement *)self nodeRef];
      v14 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityStringForListType:CGPDFTaggedNodeGetListStyle()];
      v15 = v14;
      if (v14)
      {
        [v13 setAttribute:v14 forKey:*MEMORY[0x29EDBD928]];
        v16 = [MEMORY[0x29EDBA070] numberWithInteger:{-[UICGPDFNodeAccessibilityElement listItemNumber](self, "listItemNumber")}];
        [v13 setAttribute:v16 forKey:*MEMORY[0x29EDBD920]];
      }

      goto LABEL_20;
    }

    v25.receiver = self;
    v25.super_class = UICGPDFNodeAccessibilityElement;
    [(UICGPDFNodeAccessibilityElement *)&v25 accessibilityLabel];
    goto LABEL_8;
  }

  if ((v3 & 0xFFFFFFFE) == 0x192)
  {
    v13 = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
    if (!v13)
    {
      v13 = [MEMORY[0x29EDBD7E8] string];
    }

    v4 = [(UICGPDFNodeAccessibilityElement *)self cachedAXFigureChildrenNodesOfTableCellNode];
    if (!v4)
    {
      v4 = [UICGPDFNodeAccessibilityElement _findFigureChildrenNodesOfTableCellNode:self];
      v9 = [v4 mutableCopy];
      [(UICGPDFNodeAccessibilityElement *)self setCachedAXFigureChildrenNodesOfTableCellNode:v9];
    }

    if (![v4 count])
    {
      goto LABEL_30;
    }

    v10 = UIAXStringForAllChildren();
    [v13 appendStringOrAXAttributedString:v10];
    goto LABEL_29;
  }

  switch(v3)
  {
    case 107:
      v21 = accessibilityLocalizedString(@"table.of.contents");
      break;
    case 506:
      goto LABEL_36;
    case 700:
      v4 = [(UICGPDFNodeAccessibilityElement *)self cachedAXCaptionChildrenNodesOfFigureNode];
      if (!v4)
      {
        v4 = [UICGPDFNodeAccessibilityElement _findCaptionChildrenNodesOfFigureNode:self];
        v17 = [v4 mutableCopy];
        [(UICGPDFNodeAccessibilityElement *)self setCachedAXCaptionChildrenNodesOfFigureNode:v17];
      }

      if (![v4 count])
      {
        v18 = [(UICGPDFNodeAccessibilityElement *)self altText];
        v19 = [v18 length];

        if (!v19)
        {
          v6 = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
          if ([v6 length])
          {
            v8 = v6;
            goto LABEL_9;
          }

          v24.receiver = self;
          v24.super_class = UICGPDFNodeAccessibilityElement;
          [(UICGPDFNodeAccessibilityElement *)&v24 accessibilityLabel];
          v8 = LABEL_8:;
LABEL_9:
          v13 = v8;
LABEL_20:

LABEL_30:
          goto LABEL_31;
        }
      }

      v10 = [(UICGPDFNodeAccessibilityElement *)self altText];
      v22 = MEMORY[0x29C2E44B0](v4);
      v13 = __UIAXStringForVariables();

LABEL_29:
      goto LABEL_30;
    default:
      if ([UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:self])
      {
LABEL_36:
        v21 = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
      }

      else
      {
        v23.receiver = self;
        v23.super_class = UICGPDFNodeAccessibilityElement;
        v21 = [(UICGPDFNodeAccessibilityElement *)&v23 accessibilityLabel];
      }

      break;
  }

  v13 = v21;
LABEL_31:

  return v13;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityValueForKey:@"StoredTraits"];
  v4 = v3;
  if (!v3)
  {
    v13.receiver = self;
    v13.super_class = UICGPDFNodeAccessibilityElement;
    v5 = [(UICGPDFNodeAccessibilityElement *)&v13 accessibilityTraits];
    if (![(UICGPDFNodeAccessibilityElement *)self isAccessibilityElement])
    {
      v8 = MEMORY[0x29EDC7578];
      goto LABEL_8;
    }

    v6 = [(UICGPDFNodeAccessibilityElement *)self type];
    if (v6 <= 401)
    {
      if ((v6 - 201) < 7)
      {
        v7 = *MEMORY[0x29EDC7F80] | *MEMORY[0x29EDC7FD0];
LABEL_17:
        v5 |= v7;
        goto LABEL_18;
      }

      if (v6 != 1 && v6 != 200)
      {
        goto LABEL_18;
      }

      v9 = MEMORY[0x29EDC7FD0];
LABEL_16:
      v7 = *v9;
      goto LABEL_17;
    }

    switch(v6)
    {
      case 402:
        v12 = [(UICGPDFNodeAccessibilityElement *)self _findTraitsForTableCellElements];
        v5 |= v12 | *MEMORY[0x29EDC7F80];
        break;
      case 403:
        v5 |= [(UICGPDFNodeAccessibilityElement *)self _findTraitsForTableCellElements];
        break;
      case 700:
        v9 = MEMORY[0x29EDC7F88];
        goto LABEL_16;
      default:
        break;
    }

LABEL_18:
    if ([(UICGPDFNodeAccessibilityElement *)self _isContainerOfOnlyOneLinkNodeChild]|| [(UICGPDFNodeAccessibilityElement *)self _pdfElementHasLinkContainer])
    {
      v5 |= *MEMORY[0x29EDC7F98];
    }

    if (![(AXPDFNodeElement *)self pdfViewRequiresPageTurning]|| ![(AXPDFNodeElement *)self isLastNodeInPage])
    {
      goto LABEL_24;
    }

    v8 = MEMORY[0x29EDC7F78];
LABEL_8:
    v5 |= *v8;
LABEL_24:
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v5];
    [(UICGPDFNodeAccessibilityElement *)self _accessibilitySetRetainedValue:v10 forKey:@"StoredTraits"];

    goto LABEL_25;
  }

  v5 = [v3 unsignedLongLongValue];
LABEL_25:

  return v5;
}

- (BOOL)isAccessibilityElement
{
  [(UICGPDFNodeAccessibilityElement *)self nodeRef];
  CGPDFTaggedNodeGetBounds();
  if (CGRectIsNull(v12))
  {
    return 0;
  }

  v3 = [(UICGPDFNodeAccessibilityElement *)self type];
  if ((v3 - 103) < 2)
  {
    return 0;
  }

  v4 = 1;
  if (v3 <= 401)
  {
    if (v3 == 108)
    {
      return 0;
    }

    if (v3 == 301)
    {
      return v4;
    }
  }

  else
  {
    if ((v3 - 402) < 2 || v3 == 506)
    {
      return v4;
    }

    if (v3 == 700)
    {
      v6 = [(UICGPDFNodeAccessibilityElement *)self cachedAXCaptionChildrenNodesOfFigureNode];
      v7 = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
      if ([v7 length])
      {
LABEL_16:

        return v4;
      }

      if (!v6)
      {
        v6 = [UICGPDFNodeAccessibilityElement _findCaptionChildrenNodesOfFigureNode:self];
        v8 = [v6 mutableCopy];
        [(UICGPDFNodeAccessibilityElement *)self setCachedAXCaptionChildrenNodesOfFigureNode:v8];
      }

      v9 = [(UICGPDFNodeAccessibilityElement *)self altText];
      if ([v9 length] || objc_msgSend(v6, "count"))
      {

LABEL_15:
        v4 = 1;
        goto LABEL_16;
      }

      [(UICGPDFNodeAccessibilityElement *)self nodeRef];
      if (CGPDFTaggedNodeIsImageFigure())
      {
        v10 = [(UICGPDFNodeAccessibilityElement *)self _isSubFigure];

        if (!v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      v4 = 0;
      goto LABEL_16;
    }
  }

  return [UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:self];
}

- (id)accessibilityLanguage
{
  [(UICGPDFNodeAccessibilityElement *)self nodeRef];
  if (CGPDFTaggedNodeGetLanguageText())
  {
    [(UICGPDFNodeAccessibilityElement *)self nodeRef];
    v3 = CGPDFTaggedNodeGetLanguageText();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UICGPDFNodeAccessibilityElement;
    v3 = [(UICGPDFNodeAccessibilityElement *)&v5 accessibilityLanguage];
  }

  return v3;
}

- (int64_t)accessibilityContainerType
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self type];
  switch(v3)
  {
    case 107:
      return 14;
    case 400:
      return 1;
    case 300:
      return 2;
  }

  v5.receiver = self;
  v5.super_class = UICGPDFNodeAccessibilityElement;
  return [(UICGPDFNodeAccessibilityElement *)&v5 accessibilityContainerType];
}

- (id)accessibilityIdentification
{
  v2 = [(UICGPDFNodeAccessibilityElement *)self type];
  v3 = v2;
  if (v2 <= 302)
  {
    result = @"AX_Tagged_Node_Paragraph";
    if (v3 <= 109)
    {
      if (v3 > 103)
      {
        if (v3 > 106)
        {
          if (v3 == 107)
          {
            return @"AX_Tagged_Node_Table_of_Contents";
          }

          else if (v3 == 108)
          {
            return @"AX_Tagged_Node_Table_of_Contents_Item";
          }

          else
          {
            return @"AX_Tagged_Node_Index";
          }
        }

        else if (v3 == 104)
        {
          return @"AX_Tagged_Node_Div";
        }

        else if (v3 == 105)
        {
          return @"AX_Tagged_Node_BlockQuote";
        }

        else
        {
          return @"AX_Tagged_Node_Captioh";
        }
      }

      else
      {
        if (v3 <= 100)
        {
          switch(v3)
          {
            case 0:
              return result;
            case 1:
              return @"AX_Tagged_Node_Word";
            case 100:
              return @"AX_Tagged_Node_Document";
          }

          return @"AX_Tagged_Unknown";
        }

        if (v3 == 101)
        {
          return @"AX_Tagged_Node_Part";
        }

        else if (v3 == 102)
        {
          return @"AX_Tagged_Node_Art";
        }

        else
        {
          return @"AX_Tagged_Node_Sect";
        }
      }
    }

    else if (v3 <= 203)
    {
      if (v3 <= 200)
      {
        switch(v3)
        {
          case 110:
            return @"AX_Tagged_Node_NonStruct";
          case 111:
            return @"AX_Tagged_Node_Private";
          case 200:
            return result;
        }

        return @"AX_Tagged_Unknown";
      }

      if (v3 == 201)
      {
        return @"AX_Tagged_Node_Heading";
      }

      else if (v3 == 202)
      {
        return @"AX_Tagged_Node_Heading_Level_1";
      }

      else
      {
        return @"AX_Tagged_Node_Heading_Level_2";
      }
    }

    else
    {
      if (v3 > 206)
      {
        if (v3 > 300)
        {
          if (v3 == 301)
          {
            return @"AX_Tagged_Node_List_Item";
          }

          if (v3 == 302)
          {
            return @"AX_Tagged_Node_List_Item_Label";
          }
        }

        else
        {
          if (v3 == 207)
          {
            return @"AX_Tagged_Node_Heading_Level_6";
          }

          if (v3 == 300)
          {
            return @"AX_Tagged_Node_List_Container";
          }
        }

        return @"AX_Tagged_Unknown";
      }

      if (v3 == 204)
      {
        return @"AX_Tagged_Node_Heading_Level_3";
      }

      else if (v3 == 205)
      {
        return @"AX_Tagged_Node_Heading_Level_4";
      }

      else
      {
        return @"AX_Tagged_Node_Heading_Level_5";
      }
    }
  }

  else if (v2 > 504)
  {
    if (v2 <= 602)
    {
      if (v2 <= 599)
      {
        switch(v2)
        {
          case 505:
            return @"AX_Tagged_Node_Code";
          case 506:
            return @"AX_Tagged_Node_Link";
          case 507:
            return @"AX_Tagged_Node_Annotation";
        }

        return @"AX_Tagged_Unknown";
      }

      if (v2 == 600)
      {
        return @"AX_Tagged_Node_Ruby";
      }

      else if (v2 == 601)
      {
        return @"AX_Tagged_Node_Ruby_B";
      }

      else
      {
        return @"AX_Tagged_Node_Ruby_T";
      }
    }

    else
    {
      if (v2 > 605)
      {
        if (v2 > 700)
        {
          if (v2 == 701)
          {
            return @"AX_Tagged_Node_Formula";
          }

          if (v2 == 702)
          {
            return @"AX_Tagged_Node_Form";
          }
        }

        else
        {
          if (v2 == 606)
          {
            return @"AX_Tagged_Node_Warichu_Punctuation";
          }

          if (v2 == 700)
          {
            return @"AX_Tagged_Node_Figure";
          }
        }

        return @"AX_Tagged_Unknown";
      }

      if (v2 == 603)
      {
        return @"AX_Tagged_Node_Ruby_Punctuation";
      }

      else if (v2 == 604)
      {
        return @"AX_Tagged_Node_Warichu";
      }

      else
      {
        return @"AX_Tagged_Node_Warichu_T";
      }
    }
  }

  else
  {
    if (v2 > 404)
    {
      if (v2 > 500)
      {
        if (v2 > 502)
        {
          if (v2 == 503)
          {
            return @"AX_Tagged_Node_Reference";
          }

          else
          {
            return @"AX_Tagged_Node_BibEntry";
          }
        }

        else if (v2 == 501)
        {
          return @"AX_Tagged_Node_Quote";
        }

        else
        {
          return @"AX_Tagged_Node_Note";
        }
      }

      switch(v2)
      {
        case 405:
          return @"AX_Tagged_Node_Table_Body";
        case 406:
          return @"AX_Tagged_Node_Table_Footer";
        case 500:
          return @"AX_Tagged_Node_Span";
      }

      return @"AX_Tagged_Unknown";
    }

    if (v2 <= 401)
    {
      switch(v2)
      {
        case 303:
          return @"AX_Tagged_Node_List_Item_Body";
        case 400:
          return @"AX_Tagged_Node_Table";
        case 401:
          return @"AX_Tagged_Node_Table_Row";
      }

      return @"AX_Tagged_Unknown";
    }

    if (v2 == 402)
    {
      return @"AX_Tagged_Node_Table_Header_Cell";
    }

    else if (v2 == 403)
    {
      return @"AX_Tagged_Node_Table_Data_Cell";
    }

    else
    {
      return @"AX_Tagged_Node_Table_Header";
    }
  }
}

- (id)accessibilityCustomRotors
{
  v15[1] = *MEMORY[0x29EDCA608];
  v3 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityLinks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityPDFCustomLinksRotor];
    if (!v5)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x29EDC78E8]);
      v9 = MEMORY[0x29EDCA5F8];
      v10 = 3221225472;
      v11 = __60__UICGPDFNodeAccessibilityElement_accessibilityCustomRotors__block_invoke;
      v12 = &unk_29F2E0900;
      objc_copyWeak(&v13, &location);
      v5 = [v6 initWithSystemType:1 itemSearchBlock:&v9];
      [(UICGPDFNodeAccessibilityElement *)self _accessibilitySetPDFCustomLinksRotor:v5, v9, v10, v11, v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    v15[0] = v5;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __60__UICGPDFNodeAccessibilityElement_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 _accessibilityLinks];

    if ([v6 count])
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8 = [v7 _accessibilityCustomRotorResultHelper:v3 array:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)accessibilityRowCount
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]!= 400)
  {
    return 0;
  }

  v3 = [(UICGPDFNodeAccessibilityElement *)self nodeRef];

  return MEMORY[0x2A1C5FC40](v3);
}

- (unint64_t)accessibilityColumnCount
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]!= 400)
  {
    return 0;
  }

  v3 = [(UICGPDFNodeAccessibilityElement *)self nodeRef];

  return MEMORY[0x2A1C5FC38](v3);
}

- (id)accessibilityHeaderElementsForRow:(unint64_t)a3
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  v6 = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFTableCellNodes];
  if (!v6)
  {
    v6 = [UICGPDFNodeAccessibilityElement _findTableCellNodesOfTableNode:v5 withHeadersOnly:1];
    v7 = [v6 mutableCopy];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFTableCellNodes:v7];
  }

  v8 = [MEMORY[0x29EDB8DE8] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if ([v14 accessibilityRowRange] == a3)
        {
          [v8 axSafelyAddObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (*(*(&v23 + 1) + 8 * j) == self)
        {

          v20 = [MEMORY[0x29EDB8D80] array];
          goto LABEL_22;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v20 = v15;
LABEL_22:
  v21 = v20;

  return v21;
}

- (id)accessibilityHeaderElementsForColumn:(unint64_t)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityFindAncestor:&__block_literal_global_465 startWithSelf:0];
  v6 = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFTableCellNodes];
  if (!v6)
  {
    v6 = [UICGPDFNodeAccessibilityElement _findTableCellNodesOfTableNode:v5 withHeadersOnly:1];
    v7 = [v6 mutableCopy];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFTableCellNodes:v7];
  }

  v8 = [MEMORY[0x29EDB8DE8] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 _accessibilityFindAncestor:&__block_literal_global_467 startWithSelf:{1, v18}];
        if ([v14 accessibilityColumnRange] == a3 && v15 != 0)
        {
          [v8 axSafelyAddObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

BOOL __72__UICGPDFNodeAccessibilityElement_accessibilityHeaderElementsForColumn___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 type] == 404;

  return v3;
}

- (id)accessibilityDataTableCellElementForRow:(unint64_t)a3 column:(unint64_t)a4
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityFindAncestor:&__block_literal_global_469 startWithSelf:0];
  [UICGPDFNodeAccessibilityElement _findTableCellNodesOfTableNode:v6 withHeadersOnly:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 nodeRef];
        if (CGPDFTaggedNodeGetTableCellColumnSpan() == a4)
        {
          [v12 nodeRef];
          if (CGPDFTaggedNodeGetTableCellRowSpan() == a3)
          {
            v13 = v12;
            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (_NSRange)accessibilityRowRange
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]- 401 > 5 || ([(UICGPDFNodeAccessibilityElement *)self nodeRef], TableCellRowSpan = CGPDFTaggedNodeGetTableCellRowSpan(), TableCellRowSpan == 0x7FFFFFFF) || TableCellRowSpan == -1)
  {
    v4 = 0;
    TableCellRowSpan = 0x7FFFFFFFLL;
  }

  result.length = v4;
  result.location = TableCellRowSpan;
  return result;
}

- (_NSRange)accessibilityColumnRange
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]- 401 > 5 || ([(UICGPDFNodeAccessibilityElement *)self nodeRef], TableCellColumnSpan = CGPDFTaggedNodeGetTableCellColumnSpan(), TableCellColumnSpan == 0x7FFFFFFF) || TableCellColumnSpan == -1)
  {
    v4 = 0;
    TableCellColumnSpan = 0x7FFFFFFFLL;
  }

  result.length = v4;
  result.location = TableCellColumnSpan;
  return result;
}

- (void)_axHandleUpdateVisibility:(id)a3
{
  v4 = [a3 name];
  v5 = [v4 isEqualToString:AXPDFVisibiltyUpdatedNotification];

  if (v5)
  {

    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFOtherLinks:0];
  }
}

- (id)_accessibilityHeadingLevel
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self type];
  if (v3 <= 203)
  {
    if (v3 == 201)
    {
      v11.receiver = self;
      v11.super_class = UICGPDFNodeAccessibilityElement;
      v8 = [(UICGPDFNodeAccessibilityElement *)&v11 _accessibilityHeadingLevel];
    }

    else
    {
      v9 = &unk_2A2263F20;
      if (v3 != 203)
      {
        v9 = 0;
      }

      if (v3 == 202)
      {
        v8 = &unk_2A2263F08;
      }

      else
      {
        v8 = v9;
      }
    }
  }

  else
  {
    v4 = &unk_2A2263F68;
    v5 = &unk_2A2263F80;
    if (v3 != 207)
    {
      v5 = 0;
    }

    if (v3 != 206)
    {
      v4 = v5;
    }

    v6 = &unk_2A2263F38;
    v7 = &unk_2A2263F50;
    if (v3 != 205)
    {
      v7 = 0;
    }

    if (v3 != 204)
    {
      v6 = v7;
    }

    if (v3 <= 205)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  return v8;
}

- (id)_accessibilityStringForListType:(int)a3
{
  if (a3 != 257 && a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(@"bullet");
  }

  return v4;
}

+ (BOOL)_containsOnlyTextChildren:(id)a3
{
  v3 = [a3 accessibilityElements];
  v4 = [v3 count];
  if (v4 >= 0x64)
  {
    v5 = 100;
  }

  else
  {
    v5 = v4;
  }

  if (v4)
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v3 objectAtIndex:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v9 = [v8 type];
      if (v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 == 1;
      }

      v11 = v10;
      v6 |= v11;
      if (v6)
      {
        if (v9 != 1)
        {
          if (v9 == 700)
          {
            [v8 nodeRef];
            v12 = CGPDFTaggedNodeIsImageFigure() ^ 1;
            goto LABEL_24;
          }

          break;
        }
      }

      else if (v9 != 200 && !IsCGPDFTaggedNodeTypeInline() || ![UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:v8])
      {
        break;
      }

      if (v5 == ++v7)
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v12) = 0;
LABEL_24:
  }

  else
  {
LABEL_20:
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (id)_attributedAccessibilityLabelForNode:(CGPDFTaggedNode *)a3
{
  AttributedString = CGPDFTaggedNodeCreateAttributedString();
  v5 = MEMORY[0x29EDBD7E8];
  v6 = [AttributedString string];
  v7 = [v5 axAttributedStringWithString:v6];

  StringRange = CGPDFTaggedNodeGetStringRange();
  v10 = v9;
  if (StringRange == -1)
  {
    v11 = 0x7FFFFFFFLL;
  }

  else
  {
    v11 = StringRange;
  }

  v12 = [(UICGPDFNodeAccessibilityElement *)self accessibilityLanguage];

  if (v12)
  {
    v13 = [(UICGPDFNodeAccessibilityElement *)self accessibilityLanguage];
    [v7 setAttribute:v13 forKey:*MEMORY[0x29EDBD950] withRange:{v11, v10}];
  }

  v14 = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinks];
  if (!v14)
  {
    v14 = [UICGPDFNodeAccessibilityElement _findLinkChildrenNodesOfNode:self];
  }

  if ([v14 count])
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __72__UICGPDFNodeAccessibilityElement__attributedAccessibilityLabelForNode___block_invoke;
    v20[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
    v20[4] = v11;
    v20[5] = v10;
    [v14 enumerateObjectsUsingBlock:v20];
  }

  v15 = [AttributedString length];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __72__UICGPDFNodeAccessibilityElement__attributedAccessibilityLabelForNode___block_invoke_2;
  v18[3] = &unk_29F2E0968;
  v16 = v7;
  v19 = v16;
  [AttributedString enumerateAttributesInRange:0 options:v15 usingBlock:{0, v18}];

  return v16;
}

void __72__UICGPDFNodeAccessibilityElement__attributedAccessibilityLabelForNode___block_invoke(NSRange *a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 nodeRef];
    v3.location = CGPDFTaggedNodeGetStringRange();
    if (v3.location == -1)
    {
      v3.location = 0x7FFFFFFFLL;
    }

    NSIntersectionRange(v3, a1[2]);
  }
}

void __72__UICGPDFNodeAccessibilityElement__attributedAccessibilityLabelForNode___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v7 = [v15 valueForKey:*MEMORY[0x29EDB9520]];
  if (v7)
  {
    v8 = v7;
    v9 = CTFontCopyPostScriptName(v7);
    v10 = CTFontCopyFamilyName(v8);
    v11 = [MEMORY[0x29EDBA070] numberWithDouble:CTFontGetSize(v8)];
    [*(a1 + 32) addAttribute:v9 forKey:*MEMORY[0x29EDBD8D0] withRange:{a3, a4}];
    [*(a1 + 32) addAttribute:v11 forKey:*MEMORY[0x29EDBD8D8] withRange:{a3, a4}];
    [*(a1 + 32) addAttribute:v10 forKey:*MEMORY[0x29EDBD8C8] withRange:{a3, a4}];
    SymbolicTraits = CTFontGetSymbolicTraits(v8);
    if ((SymbolicTraits & 2) != 0)
    {
      [*(a1 + 32) addAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD870] withRange:{a3, a4}];
    }

    if (SymbolicTraits)
    {
      [*(a1 + 32) addAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD910] withRange:{a3, a4}];
    }
  }

  v13 = [v15 valueForKey:*MEMORY[0x29EDB90B0]];

  if (v13)
  {
    [*(a1 + 32) addAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBDA28] withRange:{a3, a4}];
  }

  v14 = [v15 valueForKey:*MEMORY[0x29EDB90A8]];

  if (v14)
  {
    [*(a1 + 32) addAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9F0] withRange:{a3, a4}];
  }
}

- (BOOL)_isSubFigure
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  if ([v5 type] == 700)
  {
    [v5 nodeRef];
    IsImageFigure = CGPDFTaggedNodeIsImageFigure();
  }

  else
  {
    IsImageFigure = 0;
  }

  return IsImageFigure;
}

+ (BOOL)_isValidTextFieldElement:(id)a3
{
  v3 = a3;
  if (!v3 || (MEMORY[0x29C2E4220](@"UICGPDFNodeAccessibilityElement"), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 type];

  if (v5 != 200)
  {
    if ((IsCGPDFTaggedNodeTypeHeader() & 1) == 0 && (IsCGPDFTaggedNodeTypeIllustration() & 1) == 0)
    {
      IsCGPDFTaggedNodeTypeGroup();
    }

    goto LABEL_8;
  }

  v6 = [UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:v3];
LABEL_9:

  return v6;
}

- (id)_accessibilityLinks
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinks];
  if (!v3)
  {
    if ([(UICGPDFNodeAccessibilityElement *)self isAccessibilityElement]&& ![(UICGPDFNodeAccessibilityElement *)self _isContainerOfOnlyOneLinkNodeChild])
    {
      v3 = [MEMORY[0x29EDB8DE8] array];
      v4 = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinkNodes];
      if (!v4)
      {
        v4 = [UICGPDFNodeAccessibilityElement _findLinkChildrenNodesOfNode:self];
        [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFLinkNodes:v4];
      }

      [v3 axSafelyAddObjectsFromArray:v4];
      [v3 enumerateObjectsUsingBlock:&__block_literal_global_494];
      [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFLinks:v3];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)_isContainerOfOnlyOneLinkNodeChild
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]== 506)
  {
    return 1;
  }

  v4 = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinkNodes];
  if (!v4)
  {
    v4 = [UICGPDFNodeAccessibilityElement _findLinkChildrenNodesOfNode:self];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFLinkNodes:v4];
  }

  if ([v4 count] == 1)
  {
    v5 = [(UICGPDFNodeAccessibilityElement *)self accessibilityLabel];
    v6 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];

    v8 = [v4 objectAtIndex:0];
    v9 = [v8 accessibilityLabel];
    v10 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:v10];

    v3 = [v7 isEqualToString:v11];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_pdfElementHasLinkContainer
{
  v2 = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 type] == 506;

  return v3;
}

- (id)_getPDFPageView
{
  v2 = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  if (v2)
  {
    do
    {
      MEMORY[0x29C2E4220](@"PDFPageView");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 accessibilityContainer];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (CGRect)_axConvertBoundsFromScreenCoordinatesToPageView:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UICGPDFNodeAccessibilityElement *)self _getPDFPageView];
  v9 = [(AXPDFNodeElement *)self pdfView];
  v10 = [v8 safeValueForKey:@"page"];
  v11 = [v9 window];
  [v11 convertRect:v9 toView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 convertRect:v10 toPage:{v13, v15, v17, v19}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = v21;
  v29 = v23;
  v30 = v25;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (BOOL)_accessibilityInsertAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
  [v4 accessibilityFrame];
  [(UICGPDFNodeAccessibilityElement *)self _axConvertBoundsFromScreenCoordinatesToPageView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [UICGPDFNodeAccessibilityElement _findOverlappingChild:v5 children:?];
  v15 = v14;
  if (v14)
  {
    if ([v14 type] == 200)
    {
      if (_accessibilityInsertAnnotation__onceToken != -1)
      {
        [UICGPDFNodeAccessibilityElement _accessibilityInsertAnnotation:];
      }

      [v15 nodeRef];
      CGPDFTaggedNodeGetBounds();
      x = v51.origin.x;
      v53.origin.x = v7;
      v53.origin.y = v9;
      v53.size.width = v11;
      v53.size.height = v13;
      v52 = CGRectIntersection(v51, v53);
      v17 = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      [(UICGPDFNodeAccessibilityElement *)self nodeRef];
      StringRange = CGPDFTaggedNodeGetStringRange();
      v48 = v22;
      v49 = StringRange;
      v23 = self;
      v24 = [(AXPDFNodeElement *)v23 page];
      v25 = [v24 selectionForRect:{v17, y, width, height}];
      v50 = v24;
      v26 = [v25 rangeAtIndex:0 onPage:v24];
      v28 = v27;
      v29 = [v25 string];
      if ([v29 length])
      {
        v30 = 0;
        while (([_accessibilityInsertAnnotation__charsToRemove characterIsMember:{objc_msgSend(v29, "characterAtIndex:", v30)}] & 1) != 0)
        {
          if (++v30 >= [v29 length])
          {
            goto LABEL_9;
          }
        }

        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
        {
          [UICGPDFNodeAccessibilityElement _accessibilityInsertAnnotation:];
        }

        LOBYTE(CopyWithStringRange) = 0;
        goto LABEL_25;
      }

LABEL_9:
      v31 = [(UICGPDFNodeAccessibilityElement *)v23 accessibilityElements];
      v47 = [v31 indexOfObject:v15];

      [(UICGPDFNodeAccessibilityElement *)v23 _axRemoveChild:v15];
      if (v28)
      {
        v32 = v26 + v28;
      }

      else
      {
        v34 = [v50 selectionForRect:{x, y, v17 - x, height * 0.5}];

        v35 = [v34 rangeAtIndex:0 onPage:v50];
        v26 = v35 + v36;
        v32 = v35 + v36 + 1;
        v25 = v34;
      }

      v37 = v49;
      if (v26 <= v49)
      {
        v41 = v47;
      }

      else
      {
        [v15 nodeRef];
        CopyWithStringRange = CGPDFTaggedNodeCreateCopyWithStringRange();
        if (!CopyWithStringRange)
        {
          goto LABEL_25;
        }

        v38 = [UICGPDFNodeAccessibilityElement alloc];
        v39 = [(AXPDFNodeElement *)v23 page];
        v40 = [(UICGPDFNodeAccessibilityElement *)v38 initWithAccessibilityContainer:v23 pdfNodeRef:CopyWithStringRange withPage:v39];

        CFRelease(CopyWithStringRange);
        v41 = v47 + 1;
        [(UICGPDFNodeAccessibilityElement *)v23 _axInsertChild:v40 atIndex:?];

        v37 = v49;
      }

      [(UICGPDFNodeAccessibilityElement *)v23 _axInsertChild:v4 atIndex:v41];
      if (v37 + v48 - 1 <= v32)
      {
LABEL_24:
        LOBYTE(CopyWithStringRange) = 1;
        goto LABEL_25;
      }

      [v15 nodeRef];
      CopyWithStringRange = CGPDFTaggedNodeCreateCopyWithStringRange();
      if (CopyWithStringRange)
      {
        v42 = [UICGPDFNodeAccessibilityElement alloc];
        [(AXPDFNodeElement *)v23 page];
        v44 = v43 = v41;
        v45 = [(UICGPDFNodeAccessibilityElement *)v42 initWithAccessibilityContainer:v23 pdfNodeRef:CopyWithStringRange withPage:v44];

        CFRelease(CopyWithStringRange);
        [(UICGPDFNodeAccessibilityElement *)v23 _axInsertChild:v45 atIndex:v43 + 1];

        goto LABEL_24;
      }

LABEL_25:

      goto LABEL_26;
    }

    LOBYTE(CopyWithStringRange) = [v15 _accessibilityInsertAnnotation:v4];
  }

  else
  {
    [(UICGPDFNodeAccessibilityElement *)self _axInsertChild:v4 atIndex:[(UICGPDFNodeAccessibilityElement *)self _accessibilityIndexForInsertingBounds:v7, v9, v11, v13]];
    LOBYTE(CopyWithStringRange) = 1;
  }

LABEL_26:

  return CopyWithStringRange;
}

uint64_t __66__UICGPDFNodeAccessibilityElement__accessibilityInsertAnnotation___block_invoke()
{
  _accessibilityInsertAnnotation__charsToRemove = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@" _"];

  return MEMORY[0x2A1C71028]();
}

- (unsigned)_accessibilityIndexForInsertingBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MinY = CGRectGetMinY(v23);
  if ([v7 count])
  {
    v9 = 0;
    v10 = 0;
    v11 = MinY;
    v12 = (height * 0.25 + v11);
    while (1)
    {
      v13 = [v7 objectAtIndex:v9];
      [v13 accessibilityFrame];
      v15 = v14;
      v17 = v16;
      v19 = v18;

      if (v17 < v11)
      {
        v20 = v17 + v19;
        if (v17 + v19 < v12 || v15 > x)
        {
          break;
        }
      }

      v9 = ++v10;
      if ([v7 count] <= v10)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v9) = v10;
  }

  else
  {
    LODWORD(v9) = 0;
  }

LABEL_12:

  return v9;
}

- (BOOL)_accessibilityRemoveAnnotation:(id)a3
{
  v4 = a3;
  v5 = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
  [v4 accessibilityFrame];
  [(UICGPDFNodeAccessibilityElement *)self _axConvertBoundsFromScreenCoordinatesToPageView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([v5 containsObject:v4])
  {
    [(UICGPDFNodeAccessibilityElement *)self _axRemoveChild:v4];
    v14 = 1;
  }

  else
  {
    v15 = [UICGPDFNodeAccessibilityElement _findOverlappingChild:v5 children:v7, v9, v11, v13];
    v16 = v15;
    if (v15)
    {
      v14 = [v15 _accessibilityRemoveAnnotation:v4];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)_axInsertChild:(id)a3 atIndex:(unint64_t)a4
{
  if (a3)
  {
    v6 = MEMORY[0x29EDB8DE8];
    v7 = a3;
    v8 = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
    v9 = [v6 arrayWithArray:v8];

    [v9 insertObject:v7 atIndex:a4];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXElements:v9];
    [(UICGPDFNodeAccessibilityElement *)self _accessibilityRemoveValueForKey:@"StoredTraits"];
  }
}

- (void)_axRemoveChild:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(UICGPDFNodeAccessibilityElement *)self cachedAXElements];
    [v5 removeObject:v4];

    [(UICGPDFNodeAccessibilityElement *)self setCachedAXElements:v5];
    [(UICGPDFNodeAccessibilityElement *)self _accessibilityRemoveValueForKey:@"StoredTraits"];
  }
}

+ (id)_findOverlappingChild:(CGRect)a3 children:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v27 = *MEMORY[0x29EDCA608];
  v8 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([v15 type] != 500 || (objc_msgSend(v15, "accessibilityElements"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17))
          {
            [v15 bounds];
            v31.origin.x = x;
            v31.origin.y = y;
            v31.size.width = width;
            v31.size.height = height;
            v30 = CGRectIntersection(v29, v31);
            v18 = (v30.size.width * v30.size.height);
            if ((width * height) * 0.1 < v18 && v11 < v18)
            {
              v20 = v15;

              v11 = v18;
              v12 = v20;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_findLinkChildrenNodesOfNode:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [v4 nodeRef];
  v6 = [MEMORY[0x29EDB8DE8] array];
  if (v5 && [v4 type] == 506)
  {
    [v6 axSafelyAddObject:v4];
  }

  else
  {
    v7 = [v4 accessibilityElements];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [a1 _findLinkChildrenNodesOfNode:v12];
            [v6 axSafelyAddObjectsFromArray:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v6;
}

+ (id)_findCaptionChildrenNodesOfFigureNode:(id)a3
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = [a3 accessibilityElements];
  v4 = [MEMORY[0x29EDB8DE8] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 type] == 106)
        {
          [v4 axSafelyAddObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)_findFigureChildrenNodesOfTableCellNode:(id)a3
{
  v20[1] = *MEMORY[0x29EDCA608];
  v4 = a3;
  if ([v4 type] == 700 && objc_msgSend(v4, "isAccessibilityElement"))
  {
    v20[0] = v4;
    v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];
  }

  else
  {
    v6 = [v4 accessibilityElements];
    v5 = [MEMORY[0x29EDB8DE8] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [a1 _findFigureChildrenNodesOfTableCellNode:{v12, v15}];
            [v5 axSafelyAddObjectsFromArray:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return v5;
}

+ (id)_findTableCellNodesOfTableNode:(id)a3 withHeadersOnly:(BOOL)a4
{
  v4 = a4;
  v26[1] = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = [v6 type];
  if (v4)
  {
    if (v7 == 402)
    {
      v26[0] = v6;
      v8 = MEMORY[0x29EDB8D80];
      v9 = v26;
LABEL_6:
      v10 = [v8 arrayWithObjects:v9 count:1];
      goto LABEL_17;
    }
  }

  else if ((v7 & 0xFFFFFFFE) == 0x192)
  {
    v25 = v6;
    v8 = MEMORY[0x29EDB8D80];
    v9 = &v25;
    goto LABEL_6;
  }

  v11 = [v6 accessibilityElements];
  v10 = [MEMORY[0x29EDB8DE8] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [a1 _findTableCellNodesOfTableNode:v17 withHeadersOnly:{v4, v20}];
          [v10 axSafelyAddObjectsFromArray:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

LABEL_17:

  return v10;
}

+ (id)_findLabelChildNodeOfListItem:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  [a3 accessibilityElements];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 type] == 302)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

+ (id)_findLabelBodyChildNodeOfListItem:(id)a3
{
  v14 = *MEMORY[0x29EDCA608];
  [a3 accessibilityElements];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 type] == 303)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (id)_findTOCIChildNodeOfNode:(id)a3
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = v4;
  if (v4 == self || [(UICGPDFNodeAccessibilityElement *)v4 type]!= 108)
  {
    [(UICGPDFNodeAccessibilityElement *)v5 accessibilityElements];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [(UICGPDFNodeAccessibilityElement *)self _findTOCIChildNodeOfNode:v12, v15];
            if (v13)
            {
              v6 = v13;
              goto LABEL_15;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_15:
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (unint64_t)_findTraitsForTableCellElements
{
  v8.receiver = self;
  v8.super_class = UICGPDFNodeAccessibilityElement;
  v3 = [(UICGPDFNodeAccessibilityElement *)&v8 accessibilityTraits];
  v4 = [(UICGPDFNodeAccessibilityElement *)self cachedAXFigureChildrenNodesOfTableCellNode];
  if (!v4)
  {
    v4 = [UICGPDFNodeAccessibilityElement _findFigureChildrenNodesOfTableCellNode:self];
    v5 = [v4 mutableCopy];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXFigureChildrenNodesOfTableCellNode:v5];
  }

  if ([v4 count])
  {
    v6 = *MEMORY[0x29EDC7F88];
  }

  else
  {
    v6 = 0;
  }

  return v6 | v3;
}

@end