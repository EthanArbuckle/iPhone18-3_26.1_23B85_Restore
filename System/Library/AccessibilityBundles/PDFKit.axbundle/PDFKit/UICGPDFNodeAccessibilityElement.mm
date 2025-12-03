@interface UICGPDFNodeAccessibilityElement
+ (BOOL)_containsOnlyTextChildren:(id)children;
+ (BOOL)_isValidTextFieldElement:(id)element;
+ (id)_findCaptionChildrenNodesOfFigureNode:(id)node;
+ (id)_findFigureChildrenNodesOfTableCellNode:(id)node;
+ (id)_findLabelBodyChildNodeOfListItem:(id)item;
+ (id)_findLabelChildNodeOfListItem:(id)item;
+ (id)_findLinkChildrenNodesOfNode:(id)node;
+ (id)_findOverlappingChild:(CGRect)child children:(id)children;
+ (id)_findTableCellNodesOfTableNode:(id)node withHeadersOnly:(BOOL)only;
- (BOOL)_accessibilityInsertAnnotation:(id)annotation;
- (BOOL)_accessibilityRemoveAnnotation:(id)annotation;
- (BOOL)_isContainerOfOnlyOneLinkNodeChild;
- (BOOL)_isSubFigure;
- (BOOL)_pdfElementHasLinkContainer;
- (BOOL)isAccessibilityElement;
- (CGRect)_axConvertBoundsFromScreenCoordinatesToPageView:(CGRect)view;
- (CGRect)accessibilityFrame;
- (CGRect)accessibilityFrameForScrolling;
- (CGRect)bounds;
- (UICGPDFNodeAccessibilityElement)initWithAccessibilityContainer:(id)container pdfNodeRef:(CGPDFTaggedNode *)ref withPage:(id)page;
- (_NSRange)accessibilityColumnRange;
- (_NSRange)accessibilityRowRange;
- (id)_accessibilityHeadingLevel;
- (id)_accessibilityLinks;
- (id)_accessibilityStringForListType:(int)type;
- (id)_attributedAccessibilityLabelForNode:(CGPDFTaggedNode *)node;
- (id)_findTOCIChildNodeOfNode:(id)node;
- (id)_getPDFPageView;
- (id)accessibilityCustomRotors;
- (id)accessibilityDataTableCellElementForRow:(unint64_t)row column:(unint64_t)column;
- (id)accessibilityElements;
- (id)accessibilityHeaderElementsForColumn:(unint64_t)column;
- (id)accessibilityHeaderElementsForRow:(unint64_t)row;
- (id)accessibilityIdentification;
- (id)accessibilityLabel;
- (id)accessibilityLanguage;
- (int)type;
- (int64_t)accessibilityContainerType;
- (unint64_t)_findTraitsForTableCellElements;
- (unint64_t)accessibilityColumnCount;
- (unint64_t)accessibilityRowCount;
- (unint64_t)accessibilityTraits;
- (unsigned)_accessibilityIndexForInsertingBounds:(CGRect)bounds;
- (void)_axHandleUpdateVisibility:(id)visibility;
- (void)_axInsertChild:(id)child atIndex:(unint64_t)index;
- (void)_axRemoveChild:(id)child;
- (void)dealloc;
@end

@implementation UICGPDFNodeAccessibilityElement

- (UICGPDFNodeAccessibilityElement)initWithAccessibilityContainer:(id)container pdfNodeRef:(CGPDFTaggedNode *)ref withPage:(id)page
{
  v9.receiver = self;
  v9.super_class = UICGPDFNodeAccessibilityElement;
  v6 = [(AXPDFNodeElement *)&v9 initWithAccessibilityContainer:container withPage:page];
  if (ref)
  {
    CGPDFTaggedNodeRetain();
    [(UICGPDFNodeAccessibilityElement *)v6 setNodeRef:ref];
    [(UICGPDFNodeAccessibilityElement *)v6 setAltText:CGPDFTaggedNodeGetAltText()];
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:v6 selector:sel__axHandleUpdateVisibility_ name:AXPDFVisibiltyUpdatedNotification object:0];

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
  cachedAXElements = [(UICGPDFNodeAccessibilityElement *)self cachedAXElements];
  if (!cachedAXElements)
  {
    cachedAXElements = [MEMORY[0x29EDB8DE8] array];
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
                page = [(AXPDFNodeElement *)self page];
                v18 = [(PDFAnnotationAccessibilityElement *)v16 initWithAccessibilityContainer:self pdfNodeRef:ChildAtIndex withPage:page];
              }

              else
              {
                v19 = [UICGPDFNodeAccessibilityElement alloc];
                page2 = [(AXPDFNodeElement *)self page];
                v18 = [(UICGPDFNodeAccessibilityElement *)v19 initWithAccessibilityContainer:self pdfNodeRef:ChildAtIndex withPage:page2];

                if (v15 == 300)
                {
                  [(PDFAnnotationAccessibilityElement *)v18 setListItemNumber:v6];
                }
              }

              [cachedAXElements axSafelyAddObject:v18];
            }

            ++v6;
          }

          else
          {
            v7 = [[UICGPDFListContainerAccessibilityElement alloc] initWithAccessibilityContainer:self];
            array = [MEMORY[0x29EDB8DE8] array];
            if (v6 < v5)
            {
              do
              {
                v9 = [UICGPDFNodeAccessibilityElement alloc];
                [(UICGPDFNodeAccessibilityElement *)self nodeRef];
                v10 = CGPDFTaggedNodeGetChildAtIndex();
                page3 = [(AXPDFNodeElement *)self page];
                v12 = [(UICGPDFNodeAccessibilityElement *)v9 initWithAccessibilityContainer:v7 pdfNodeRef:v10 withPage:page3];

                [(UICGPDFNodeAccessibilityElement *)v12 setListItemNumber:v6];
                [array axSafelyAddObject:v12];

                ++v6;
              }

              while (v5 != v6);
              v6 = v5;
            }

            [(UICGPDFListContainerAccessibilityElement *)v7 setAccessibilityElements:array];
            [cachedAXElements axSafelyAddObject:v7];
          }
        }

        while (v6 < v5);
      }

      [(UICGPDFNodeAccessibilityElement *)self setCachedAXElements:cachedAXElements];
    }
  }

  return cachedAXElements;
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
  type = [(UICGPDFNodeAccessibilityElement *)self type];
  if (type == 301)
  {
    cachedAXFigureChildrenNodesOfTableCellNode = [UICGPDFNodeAccessibilityElement _findLabelChildNodeOfListItem:self];
    v5 = [UICGPDFNodeAccessibilityElement _findLabelBodyChildNodeOfListItem:self];
    v6 = v5;
    if (cachedAXFigureChildrenNodesOfTableCellNode)
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
      accessibilityLabel = [v5 accessibilityLabel];
      string = [v11 axAttributedStringWithString:accessibilityLabel];

      [(UICGPDFNodeAccessibilityElement *)self nodeRef];
      v14 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityStringForListType:CGPDFTaggedNodeGetListStyle()];
      v15 = v14;
      if (v14)
      {
        [string setAttribute:v14 forKey:*MEMORY[0x29EDBD928]];
        v16 = [MEMORY[0x29EDBA070] numberWithInteger:{-[UICGPDFNodeAccessibilityElement listItemNumber](self, "listItemNumber")}];
        [string setAttribute:v16 forKey:*MEMORY[0x29EDBD920]];
      }

      goto LABEL_20;
    }

    v25.receiver = self;
    v25.super_class = UICGPDFNodeAccessibilityElement;
    [(UICGPDFNodeAccessibilityElement *)&v25 accessibilityLabel];
    goto LABEL_8;
  }

  if ((type & 0xFFFFFFFE) == 0x192)
  {
    string = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
    if (!string)
    {
      string = [MEMORY[0x29EDBD7E8] string];
    }

    cachedAXFigureChildrenNodesOfTableCellNode = [(UICGPDFNodeAccessibilityElement *)self cachedAXFigureChildrenNodesOfTableCellNode];
    if (!cachedAXFigureChildrenNodesOfTableCellNode)
    {
      cachedAXFigureChildrenNodesOfTableCellNode = [UICGPDFNodeAccessibilityElement _findFigureChildrenNodesOfTableCellNode:self];
      v9 = [cachedAXFigureChildrenNodesOfTableCellNode mutableCopy];
      [(UICGPDFNodeAccessibilityElement *)self setCachedAXFigureChildrenNodesOfTableCellNode:v9];
    }

    if (![cachedAXFigureChildrenNodesOfTableCellNode count])
    {
      goto LABEL_30;
    }

    altText2 = UIAXStringForAllChildren();
    [string appendStringOrAXAttributedString:altText2];
    goto LABEL_29;
  }

  switch(type)
  {
    case 107:
      accessibilityLabel2 = accessibilityLocalizedString(@"table.of.contents");
      break;
    case 506:
      goto LABEL_36;
    case 700:
      cachedAXFigureChildrenNodesOfTableCellNode = [(UICGPDFNodeAccessibilityElement *)self cachedAXCaptionChildrenNodesOfFigureNode];
      if (!cachedAXFigureChildrenNodesOfTableCellNode)
      {
        cachedAXFigureChildrenNodesOfTableCellNode = [UICGPDFNodeAccessibilityElement _findCaptionChildrenNodesOfFigureNode:self];
        v17 = [cachedAXFigureChildrenNodesOfTableCellNode mutableCopy];
        [(UICGPDFNodeAccessibilityElement *)self setCachedAXCaptionChildrenNodesOfFigureNode:v17];
      }

      if (![cachedAXFigureChildrenNodesOfTableCellNode count])
      {
        altText = [(UICGPDFNodeAccessibilityElement *)self altText];
        v19 = [altText length];

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
          string = v8;
LABEL_20:

LABEL_30:
          goto LABEL_31;
        }
      }

      altText2 = [(UICGPDFNodeAccessibilityElement *)self altText];
      v22 = MEMORY[0x29C2E44B0](cachedAXFigureChildrenNodesOfTableCellNode);
      string = __UIAXStringForVariables();

LABEL_29:
      goto LABEL_30;
    default:
      if ([UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:self])
      {
LABEL_36:
        accessibilityLabel2 = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
      }

      else
      {
        v23.receiver = self;
        v23.super_class = UICGPDFNodeAccessibilityElement;
        accessibilityLabel2 = [(UICGPDFNodeAccessibilityElement *)&v23 accessibilityLabel];
      }

      break;
  }

  string = accessibilityLabel2;
LABEL_31:

  return string;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityValueForKey:@"StoredTraits"];
  v4 = v3;
  if (!v3)
  {
    v13.receiver = self;
    v13.super_class = UICGPDFNodeAccessibilityElement;
    accessibilityTraits = [(UICGPDFNodeAccessibilityElement *)&v13 accessibilityTraits];
    if (![(UICGPDFNodeAccessibilityElement *)self isAccessibilityElement])
    {
      v8 = MEMORY[0x29EDC7578];
      goto LABEL_8;
    }

    type = [(UICGPDFNodeAccessibilityElement *)self type];
    if (type <= 401)
    {
      if ((type - 201) < 7)
      {
        v7 = *MEMORY[0x29EDC7F80] | *MEMORY[0x29EDC7FD0];
LABEL_17:
        accessibilityTraits |= v7;
        goto LABEL_18;
      }

      if (type != 1 && type != 200)
      {
        goto LABEL_18;
      }

      v9 = MEMORY[0x29EDC7FD0];
LABEL_16:
      v7 = *v9;
      goto LABEL_17;
    }

    switch(type)
    {
      case 402:
        _findTraitsForTableCellElements = [(UICGPDFNodeAccessibilityElement *)self _findTraitsForTableCellElements];
        accessibilityTraits |= _findTraitsForTableCellElements | *MEMORY[0x29EDC7F80];
        break;
      case 403:
        accessibilityTraits |= [(UICGPDFNodeAccessibilityElement *)self _findTraitsForTableCellElements];
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
      accessibilityTraits |= *MEMORY[0x29EDC7F98];
    }

    if (![(AXPDFNodeElement *)self pdfViewRequiresPageTurning]|| ![(AXPDFNodeElement *)self isLastNodeInPage])
    {
      goto LABEL_24;
    }

    v8 = MEMORY[0x29EDC7F78];
LABEL_8:
    accessibilityTraits |= *v8;
LABEL_24:
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:accessibilityTraits];
    [(UICGPDFNodeAccessibilityElement *)self _accessibilitySetRetainedValue:v10 forKey:@"StoredTraits"];

    goto LABEL_25;
  }

  accessibilityTraits = [v3 unsignedLongLongValue];
LABEL_25:

  return accessibilityTraits;
}

- (BOOL)isAccessibilityElement
{
  [(UICGPDFNodeAccessibilityElement *)self nodeRef];
  CGPDFTaggedNodeGetBounds();
  if (CGRectIsNull(v12))
  {
    return 0;
  }

  type = [(UICGPDFNodeAccessibilityElement *)self type];
  if ((type - 103) < 2)
  {
    return 0;
  }

  v4 = 1;
  if (type <= 401)
  {
    if (type == 108)
    {
      return 0;
    }

    if (type == 301)
    {
      return v4;
    }
  }

  else
  {
    if ((type - 402) < 2 || type == 506)
    {
      return v4;
    }

    if (type == 700)
    {
      cachedAXCaptionChildrenNodesOfFigureNode = [(UICGPDFNodeAccessibilityElement *)self cachedAXCaptionChildrenNodesOfFigureNode];
      v7 = [(UICGPDFNodeAccessibilityElement *)self _attributedAccessibilityLabelForNode:[(UICGPDFNodeAccessibilityElement *)self nodeRef]];
      if ([v7 length])
      {
LABEL_16:

        return v4;
      }

      if (!cachedAXCaptionChildrenNodesOfFigureNode)
      {
        cachedAXCaptionChildrenNodesOfFigureNode = [UICGPDFNodeAccessibilityElement _findCaptionChildrenNodesOfFigureNode:self];
        v8 = [cachedAXCaptionChildrenNodesOfFigureNode mutableCopy];
        [(UICGPDFNodeAccessibilityElement *)self setCachedAXCaptionChildrenNodesOfFigureNode:v8];
      }

      altText = [(UICGPDFNodeAccessibilityElement *)self altText];
      if ([altText length] || objc_msgSend(cachedAXCaptionChildrenNodesOfFigureNode, "count"))
      {

LABEL_15:
        v4 = 1;
        goto LABEL_16;
      }

      [(UICGPDFNodeAccessibilityElement *)self nodeRef];
      if (CGPDFTaggedNodeIsImageFigure())
      {
        _isSubFigure = [(UICGPDFNodeAccessibilityElement *)self _isSubFigure];

        if (!_isSubFigure)
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
    accessibilityLanguage = CGPDFTaggedNodeGetLanguageText();
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UICGPDFNodeAccessibilityElement;
    accessibilityLanguage = [(UICGPDFNodeAccessibilityElement *)&v5 accessibilityLanguage];
  }

  return accessibilityLanguage;
}

- (int64_t)accessibilityContainerType
{
  type = [(UICGPDFNodeAccessibilityElement *)self type];
  switch(type)
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
  type = [(UICGPDFNodeAccessibilityElement *)self type];
  v3 = type;
  if (type <= 302)
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

  else if (type > 504)
  {
    if (type <= 602)
    {
      if (type <= 599)
      {
        switch(type)
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

      if (type == 600)
      {
        return @"AX_Tagged_Node_Ruby";
      }

      else if (type == 601)
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
      if (type > 605)
      {
        if (type > 700)
        {
          if (type == 701)
          {
            return @"AX_Tagged_Node_Formula";
          }

          if (type == 702)
          {
            return @"AX_Tagged_Node_Form";
          }
        }

        else
        {
          if (type == 606)
          {
            return @"AX_Tagged_Node_Warichu_Punctuation";
          }

          if (type == 700)
          {
            return @"AX_Tagged_Node_Figure";
          }
        }

        return @"AX_Tagged_Unknown";
      }

      if (type == 603)
      {
        return @"AX_Tagged_Node_Ruby_Punctuation";
      }

      else if (type == 604)
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
    if (type > 404)
    {
      if (type > 500)
      {
        if (type > 502)
        {
          if (type == 503)
          {
            return @"AX_Tagged_Node_Reference";
          }

          else
          {
            return @"AX_Tagged_Node_BibEntry";
          }
        }

        else if (type == 501)
        {
          return @"AX_Tagged_Node_Quote";
        }

        else
        {
          return @"AX_Tagged_Node_Note";
        }
      }

      switch(type)
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

    if (type <= 401)
    {
      switch(type)
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

    if (type == 402)
    {
      return @"AX_Tagged_Node_Table_Header_Cell";
    }

    else if (type == 403)
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
  _accessibilityLinks = [(UICGPDFNodeAccessibilityElement *)self _accessibilityLinks];
  v4 = [_accessibilityLinks count];

  if (v4)
  {
    _accessibilityPDFCustomLinksRotor = [(UICGPDFNodeAccessibilityElement *)self _accessibilityPDFCustomLinksRotor];
    if (!_accessibilityPDFCustomLinksRotor)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc(MEMORY[0x29EDC78E8]);
      v9 = MEMORY[0x29EDCA5F8];
      v10 = 3221225472;
      v11 = __60__UICGPDFNodeAccessibilityElement_accessibilityCustomRotors__block_invoke;
      v12 = &unk_29F2E0900;
      objc_copyWeak(&v13, &location);
      _accessibilityPDFCustomLinksRotor = [v6 initWithSystemType:1 itemSearchBlock:&v9];
      [(UICGPDFNodeAccessibilityElement *)self _accessibilitySetPDFCustomLinksRotor:_accessibilityPDFCustomLinksRotor, v9, v10, v11, v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    v15[0] = _accessibilityPDFCustomLinksRotor;
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

  nodeRef = [(UICGPDFNodeAccessibilityElement *)self nodeRef];

  return MEMORY[0x2A1C5FC40](nodeRef);
}

- (unint64_t)accessibilityColumnCount
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]!= 400)
  {
    return 0;
  }

  nodeRef = [(UICGPDFNodeAccessibilityElement *)self nodeRef];

  return MEMORY[0x2A1C5FC38](nodeRef);
}

- (id)accessibilityHeaderElementsForRow:(unint64_t)row
{
  v33 = *MEMORY[0x29EDCA608];
  v5 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityFindAncestor:&__block_literal_global_1 startWithSelf:0];
  cachedAXPDFTableCellNodes = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFTableCellNodes];
  if (!cachedAXPDFTableCellNodes)
  {
    cachedAXPDFTableCellNodes = [UICGPDFNodeAccessibilityElement _findTableCellNodesOfTableNode:v5 withHeadersOnly:1];
    v7 = [cachedAXPDFTableCellNodes mutableCopy];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFTableCellNodes:v7];
  }

  array = [MEMORY[0x29EDB8DE8] array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = cachedAXPDFTableCellNodes;
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
        if ([v14 accessibilityRowRange] == row)
        {
          [array axSafelyAddObject:v14];
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
  v15 = array;
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

          array2 = [MEMORY[0x29EDB8D80] array];
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

  array2 = v15;
LABEL_22:
  v21 = array2;

  return v21;
}

- (id)accessibilityHeaderElementsForColumn:(unint64_t)column
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = [(UICGPDFNodeAccessibilityElement *)self _accessibilityFindAncestor:&__block_literal_global_465 startWithSelf:0];
  cachedAXPDFTableCellNodes = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFTableCellNodes];
  if (!cachedAXPDFTableCellNodes)
  {
    cachedAXPDFTableCellNodes = [UICGPDFNodeAccessibilityElement _findTableCellNodesOfTableNode:v5 withHeadersOnly:1];
    v7 = [cachedAXPDFTableCellNodes mutableCopy];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFTableCellNodes:v7];
  }

  array = [MEMORY[0x29EDB8DE8] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = cachedAXPDFTableCellNodes;
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
        if ([v14 accessibilityColumnRange] == column && v15 != 0)
        {
          [array axSafelyAddObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return array;
}

BOOL __72__UICGPDFNodeAccessibilityElement_accessibilityHeaderElementsForColumn___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [v2 type] == 404;

  return v3;
}

- (id)accessibilityDataTableCellElementForRow:(unint64_t)row column:(unint64_t)column
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
        if (CGPDFTaggedNodeGetTableCellColumnSpan() == column)
        {
          [v12 nodeRef];
          if (CGPDFTaggedNodeGetTableCellRowSpan() == row)
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

- (void)_axHandleUpdateVisibility:(id)visibility
{
  name = [visibility name];
  v5 = [name isEqualToString:AXPDFVisibiltyUpdatedNotification];

  if (v5)
  {

    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFOtherLinks:0];
  }
}

- (id)_accessibilityHeadingLevel
{
  type = [(UICGPDFNodeAccessibilityElement *)self type];
  if (type <= 203)
  {
    if (type == 201)
    {
      v11.receiver = self;
      v11.super_class = UICGPDFNodeAccessibilityElement;
      _accessibilityHeadingLevel = [(UICGPDFNodeAccessibilityElement *)&v11 _accessibilityHeadingLevel];
    }

    else
    {
      v9 = &unk_2A2263F20;
      if (type != 203)
      {
        v9 = 0;
      }

      if (type == 202)
      {
        _accessibilityHeadingLevel = &unk_2A2263F08;
      }

      else
      {
        _accessibilityHeadingLevel = v9;
      }
    }
  }

  else
  {
    v4 = &unk_2A2263F68;
    v5 = &unk_2A2263F80;
    if (type != 207)
    {
      v5 = 0;
    }

    if (type != 206)
    {
      v4 = v5;
    }

    v6 = &unk_2A2263F38;
    v7 = &unk_2A2263F50;
    if (type != 205)
    {
      v7 = 0;
    }

    if (type != 204)
    {
      v6 = v7;
    }

    if (type <= 205)
    {
      _accessibilityHeadingLevel = v6;
    }

    else
    {
      _accessibilityHeadingLevel = v4;
    }
  }

  return _accessibilityHeadingLevel;
}

- (id)_accessibilityStringForListType:(int)type
{
  if (type != 257 && type)
  {
    v4 = 0;
  }

  else
  {
    v4 = accessibilityLocalizedString(@"bullet");
  }

  return v4;
}

+ (BOOL)_containsOnlyTextChildren:(id)children
{
  accessibilityElements = [children accessibilityElements];
  v4 = [accessibilityElements count];
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
      v8 = [accessibilityElements objectAtIndex:v7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      type = [v8 type];
      if (v7)
      {
        v10 = 0;
      }

      else
      {
        v10 = type == 1;
      }

      v11 = v10;
      v6 |= v11;
      if (v6)
      {
        if (type != 1)
        {
          if (type == 700)
          {
            [v8 nodeRef];
            v12 = CGPDFTaggedNodeIsImageFigure() ^ 1;
            goto LABEL_24;
          }

          break;
        }
      }

      else if (type != 200 && !IsCGPDFTaggedNodeTypeInline() || ![UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:v8])
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

- (id)_attributedAccessibilityLabelForNode:(CGPDFTaggedNode *)node
{
  AttributedString = CGPDFTaggedNodeCreateAttributedString();
  v5 = MEMORY[0x29EDBD7E8];
  string = [AttributedString string];
  v7 = [v5 axAttributedStringWithString:string];

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

  accessibilityLanguage = [(UICGPDFNodeAccessibilityElement *)self accessibilityLanguage];

  if (accessibilityLanguage)
  {
    accessibilityLanguage2 = [(UICGPDFNodeAccessibilityElement *)self accessibilityLanguage];
    [v7 setAttribute:accessibilityLanguage2 forKey:*MEMORY[0x29EDBD950] withRange:{v11, v10}];
  }

  cachedAXPDFLinks = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinks];
  if (!cachedAXPDFLinks)
  {
    cachedAXPDFLinks = [UICGPDFNodeAccessibilityElement _findLinkChildrenNodesOfNode:self];
  }

  if ([cachedAXPDFLinks count])
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __72__UICGPDFNodeAccessibilityElement__attributedAccessibilityLabelForNode___block_invoke;
    v20[3] = &__block_descriptor_48_e15_v32__0_8Q16_B24l;
    v20[4] = v11;
    v20[5] = v10;
    [cachedAXPDFLinks enumerateObjectsUsingBlock:v20];
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
  accessibilityContainer = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  accessibilityContainer2 = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  if ([accessibilityContainer2 type] == 700)
  {
    [accessibilityContainer2 nodeRef];
    IsImageFigure = CGPDFTaggedNodeIsImageFigure();
  }

  else
  {
    IsImageFigure = 0;
  }

  return IsImageFigure;
}

+ (BOOL)_isValidTextFieldElement:(id)element
{
  elementCopy = element;
  if (!elementCopy || (MEMORY[0x29C2E4220](@"UICGPDFNodeAccessibilityElement"), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  type = [v4 type];

  if (type != 200)
  {
    if ((IsCGPDFTaggedNodeTypeHeader() & 1) == 0 && (IsCGPDFTaggedNodeTypeIllustration() & 1) == 0)
    {
      IsCGPDFTaggedNodeTypeGroup();
    }

    goto LABEL_8;
  }

  v6 = [UICGPDFNodeAccessibilityElement _containsOnlyTextChildren:elementCopy];
LABEL_9:

  return v6;
}

- (id)_accessibilityLinks
{
  cachedAXPDFLinks = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinks];
  if (!cachedAXPDFLinks)
  {
    if ([(UICGPDFNodeAccessibilityElement *)self isAccessibilityElement]&& ![(UICGPDFNodeAccessibilityElement *)self _isContainerOfOnlyOneLinkNodeChild])
    {
      cachedAXPDFLinks = [MEMORY[0x29EDB8DE8] array];
      cachedAXPDFLinkNodes = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinkNodes];
      if (!cachedAXPDFLinkNodes)
      {
        cachedAXPDFLinkNodes = [UICGPDFNodeAccessibilityElement _findLinkChildrenNodesOfNode:self];
        [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFLinkNodes:cachedAXPDFLinkNodes];
      }

      [cachedAXPDFLinks axSafelyAddObjectsFromArray:cachedAXPDFLinkNodes];
      [cachedAXPDFLinks enumerateObjectsUsingBlock:&__block_literal_global_494];
      [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFLinks:cachedAXPDFLinks];
    }

    else
    {
      cachedAXPDFLinks = 0;
    }
  }

  return cachedAXPDFLinks;
}

- (BOOL)_isContainerOfOnlyOneLinkNodeChild
{
  if ([(UICGPDFNodeAccessibilityElement *)self type]== 506)
  {
    return 1;
  }

  cachedAXPDFLinkNodes = [(UICGPDFNodeAccessibilityElement *)self cachedAXPDFLinkNodes];
  if (!cachedAXPDFLinkNodes)
  {
    cachedAXPDFLinkNodes = [UICGPDFNodeAccessibilityElement _findLinkChildrenNodesOfNode:self];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXPDFLinkNodes:cachedAXPDFLinkNodes];
  }

  if ([cachedAXPDFLinkNodes count] == 1)
  {
    accessibilityLabel = [(UICGPDFNodeAccessibilityElement *)self accessibilityLabel];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v7 = [accessibilityLabel stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v8 = [cachedAXPDFLinkNodes objectAtIndex:0];
    accessibilityLabel2 = [v8 accessibilityLabel];
    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v11 = [accessibilityLabel2 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

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
  accessibilityContainer = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  objc_opt_class();
  v3 = (objc_opt_isKindOfClass() & 1) != 0 && [accessibilityContainer type] == 506;

  return v3;
}

- (id)_getPDFPageView
{
  accessibilityContainer = [(UICGPDFNodeAccessibilityElement *)self accessibilityContainer];
  if (accessibilityContainer)
  {
    do
    {
      MEMORY[0x29C2E4220](@"PDFPageView");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2AccessibilityContainer = [accessibilityContainer accessibilityContainer];

      accessibilityContainer = v2AccessibilityContainer;
    }

    while (v2AccessibilityContainer);
  }

  return accessibilityContainer;
}

- (CGRect)_axConvertBoundsFromScreenCoordinatesToPageView:(CGRect)view
{
  height = view.size.height;
  width = view.size.width;
  y = view.origin.y;
  x = view.origin.x;
  _getPDFPageView = [(UICGPDFNodeAccessibilityElement *)self _getPDFPageView];
  pdfView = [(AXPDFNodeElement *)self pdfView];
  v10 = [_getPDFPageView safeValueForKey:@"page"];
  window = [pdfView window];
  [window convertRect:pdfView toView:{x, y, width, height}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [pdfView convertRect:v10 toPage:{v13, v15, v17, v19}];
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

- (BOOL)_accessibilityInsertAnnotation:(id)annotation
{
  annotationCopy = annotation;
  accessibilityElements = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
  [annotationCopy accessibilityFrame];
  [(UICGPDFNodeAccessibilityElement *)self _axConvertBoundsFromScreenCoordinatesToPageView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [UICGPDFNodeAccessibilityElement _findOverlappingChild:accessibilityElements children:?];
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
      selfCopy = self;
      page = [(AXPDFNodeElement *)selfCopy page];
      v25 = [page selectionForRect:{v17, y, width, height}];
      v50 = page;
      v26 = [v25 rangeAtIndex:0 onPage:page];
      v28 = v27;
      string = [v25 string];
      if ([string length])
      {
        v30 = 0;
        while (([_accessibilityInsertAnnotation__charsToRemove characterIsMember:{objc_msgSend(string, "characterAtIndex:", v30)}] & 1) != 0)
        {
          if (++v30 >= [string length])
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
      accessibilityElements2 = [(UICGPDFNodeAccessibilityElement *)selfCopy accessibilityElements];
      v47 = [accessibilityElements2 indexOfObject:v15];

      [(UICGPDFNodeAccessibilityElement *)selfCopy _axRemoveChild:v15];
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
        page2 = [(AXPDFNodeElement *)selfCopy page];
        v40 = [(UICGPDFNodeAccessibilityElement *)v38 initWithAccessibilityContainer:selfCopy pdfNodeRef:CopyWithStringRange withPage:page2];

        CFRelease(CopyWithStringRange);
        v41 = v47 + 1;
        [(UICGPDFNodeAccessibilityElement *)selfCopy _axInsertChild:v40 atIndex:?];

        v37 = v49;
      }

      [(UICGPDFNodeAccessibilityElement *)selfCopy _axInsertChild:annotationCopy atIndex:v41];
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
        [(AXPDFNodeElement *)selfCopy page];
        v44 = v43 = v41;
        v45 = [(UICGPDFNodeAccessibilityElement *)v42 initWithAccessibilityContainer:selfCopy pdfNodeRef:CopyWithStringRange withPage:v44];

        CFRelease(CopyWithStringRange);
        [(UICGPDFNodeAccessibilityElement *)selfCopy _axInsertChild:v45 atIndex:v43 + 1];

        goto LABEL_24;
      }

LABEL_25:

      goto LABEL_26;
    }

    LOBYTE(CopyWithStringRange) = [v15 _accessibilityInsertAnnotation:annotationCopy];
  }

  else
  {
    [(UICGPDFNodeAccessibilityElement *)self _axInsertChild:annotationCopy atIndex:[(UICGPDFNodeAccessibilityElement *)self _accessibilityIndexForInsertingBounds:v7, v9, v11, v13]];
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

- (unsigned)_accessibilityIndexForInsertingBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  accessibilityElements = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MinY = CGRectGetMinY(v23);
  if ([accessibilityElements count])
  {
    v9 = 0;
    v10 = 0;
    v11 = MinY;
    v12 = (height * 0.25 + v11);
    while (1)
    {
      v13 = [accessibilityElements objectAtIndex:v9];
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
      if ([accessibilityElements count] <= v10)
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

- (BOOL)_accessibilityRemoveAnnotation:(id)annotation
{
  annotationCopy = annotation;
  accessibilityElements = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
  [annotationCopy accessibilityFrame];
  [(UICGPDFNodeAccessibilityElement *)self _axConvertBoundsFromScreenCoordinatesToPageView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if ([accessibilityElements containsObject:annotationCopy])
  {
    [(UICGPDFNodeAccessibilityElement *)self _axRemoveChild:annotationCopy];
    v14 = 1;
  }

  else
  {
    v15 = [UICGPDFNodeAccessibilityElement _findOverlappingChild:accessibilityElements children:v7, v9, v11, v13];
    v16 = v15;
    if (v15)
    {
      v14 = [v15 _accessibilityRemoveAnnotation:annotationCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)_axInsertChild:(id)child atIndex:(unint64_t)index
{
  if (child)
  {
    v6 = MEMORY[0x29EDB8DE8];
    childCopy = child;
    accessibilityElements = [(UICGPDFNodeAccessibilityElement *)self accessibilityElements];
    v9 = [v6 arrayWithArray:accessibilityElements];

    [v9 insertObject:childCopy atIndex:index];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXElements:v9];
    [(UICGPDFNodeAccessibilityElement *)self _accessibilityRemoveValueForKey:@"StoredTraits"];
  }
}

- (void)_axRemoveChild:(id)child
{
  if (child)
  {
    childCopy = child;
    cachedAXElements = [(UICGPDFNodeAccessibilityElement *)self cachedAXElements];
    [cachedAXElements removeObject:childCopy];

    [(UICGPDFNodeAccessibilityElement *)self setCachedAXElements:cachedAXElements];
    [(UICGPDFNodeAccessibilityElement *)self _accessibilityRemoveValueForKey:@"StoredTraits"];
  }
}

+ (id)_findOverlappingChild:(CGRect)child children:(id)children
{
  height = child.size.height;
  width = child.size.width;
  y = child.origin.y;
  x = child.origin.x;
  v27 = *MEMORY[0x29EDCA608];
  childrenCopy = children;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [childrenCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(childrenCopy);
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

      v10 = [childrenCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_findLinkChildrenNodesOfNode:(id)node
{
  v20 = *MEMORY[0x29EDCA608];
  nodeCopy = node;
  nodeRef = [nodeCopy nodeRef];
  array = [MEMORY[0x29EDB8DE8] array];
  if (nodeRef && [nodeCopy type] == 506)
  {
    [array axSafelyAddObject:nodeCopy];
  }

  else
  {
    accessibilityElements = [nodeCopy accessibilityElements];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [accessibilityElements countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(accessibilityElements);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [self _findLinkChildrenNodesOfNode:v12];
            [array axSafelyAddObjectsFromArray:v13];
          }
        }

        v9 = [accessibilityElements countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return array;
}

+ (id)_findCaptionChildrenNodesOfFigureNode:(id)node
{
  v17 = *MEMORY[0x29EDCA608];
  accessibilityElements = [node accessibilityElements];
  array = [MEMORY[0x29EDB8DE8] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = accessibilityElements;
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
          [array axSafelyAddObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

+ (id)_findFigureChildrenNodesOfTableCellNode:(id)node
{
  v20[1] = *MEMORY[0x29EDCA608];
  nodeCopy = node;
  if ([nodeCopy type] == 700 && objc_msgSend(nodeCopy, "isAccessibilityElement"))
  {
    v20[0] = nodeCopy;
    array = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];
  }

  else
  {
    accessibilityElements = [nodeCopy accessibilityElements];
    array = [MEMORY[0x29EDB8DE8] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = accessibilityElements;
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
            v13 = [self _findFigureChildrenNodesOfTableCellNode:{v12, v15}];
            [array axSafelyAddObjectsFromArray:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  return array;
}

+ (id)_findTableCellNodesOfTableNode:(id)node withHeadersOnly:(BOOL)only
{
  onlyCopy = only;
  v26[1] = *MEMORY[0x29EDCA608];
  nodeCopy = node;
  type = [nodeCopy type];
  if (onlyCopy)
  {
    if (type == 402)
    {
      v26[0] = nodeCopy;
      v8 = MEMORY[0x29EDB8D80];
      v9 = v26;
LABEL_6:
      array = [v8 arrayWithObjects:v9 count:1];
      goto LABEL_17;
    }
  }

  else if ((type & 0xFFFFFFFE) == 0x192)
  {
    v25 = nodeCopy;
    v8 = MEMORY[0x29EDB8D80];
    v9 = &v25;
    goto LABEL_6;
  }

  accessibilityElements = [nodeCopy accessibilityElements];
  array = [MEMORY[0x29EDB8DE8] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = accessibilityElements;
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
          v18 = [self _findTableCellNodesOfTableNode:v17 withHeadersOnly:{onlyCopy, v20}];
          [array axSafelyAddObjectsFromArray:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

LABEL_17:

  return array;
}

+ (id)_findLabelChildNodeOfListItem:(id)item
{
  v14 = *MEMORY[0x29EDCA608];
  [item accessibilityElements];
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

+ (id)_findLabelBodyChildNodeOfListItem:(id)item
{
  v14 = *MEMORY[0x29EDCA608];
  [item accessibilityElements];
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

- (id)_findTOCIChildNodeOfNode:(id)node
{
  v20 = *MEMORY[0x29EDCA608];
  nodeCopy = node;
  v5 = nodeCopy;
  if (nodeCopy == self || [(UICGPDFNodeAccessibilityElement *)nodeCopy type]!= 108)
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
  accessibilityTraits = [(UICGPDFNodeAccessibilityElement *)&v8 accessibilityTraits];
  cachedAXFigureChildrenNodesOfTableCellNode = [(UICGPDFNodeAccessibilityElement *)self cachedAXFigureChildrenNodesOfTableCellNode];
  if (!cachedAXFigureChildrenNodesOfTableCellNode)
  {
    cachedAXFigureChildrenNodesOfTableCellNode = [UICGPDFNodeAccessibilityElement _findFigureChildrenNodesOfTableCellNode:self];
    v5 = [cachedAXFigureChildrenNodesOfTableCellNode mutableCopy];
    [(UICGPDFNodeAccessibilityElement *)self setCachedAXFigureChildrenNodesOfTableCellNode:v5];
  }

  if ([cachedAXFigureChildrenNodesOfTableCellNode count])
  {
    v6 = *MEMORY[0x29EDC7F88];
  }

  else
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

@end