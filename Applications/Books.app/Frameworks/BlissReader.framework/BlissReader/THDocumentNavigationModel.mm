@interface THDocumentNavigationModel
- (NSArray)contentNodes;
- (THDocumentNavigationModel)initWithDocumentRoot:(id)root navigationUnitsNodes:(id)nodes;
- (THSnippetPair)p_snippetPairForAbsolutePageIndex:(unint64_t)index withDocumentRoot:(id)root forPresentationType:(id)type;
- (id)chapterAndNumberStringForNavigationUnit:(id)unit;
- (id)contentNodeForAbsolutePageIndex:(unint64_t)index;
- (id)contentNodeForBodyStorageID:(id)d;
- (id)contentNodeForGUID:(id)d;
- (id)contentNodeForInfoID:(id)d;
- (id)contentNodeForPageLocation:(id)location;
- (id)firstNavigationUnit;
- (id)linkForNavigationUnitIndex:(unint64_t)index;
- (id)navigationUnitContainingContentNode:(id)node;
- (id)navigationUnitFollowingNavigationUnit:(id)unit;
- (id)navigationUnitPrecedingNavigationUnit:(id)unit;
- (id)pageNumberStringForAbsolutePageIndex:(int64_t)index forPresentationType:(id)type;
- (id)parentTitleForNavigationUnit:(id)unit;
- (id)sectionIdentifierForNavigationUnit:(id)unit;
- (id)titleStringForNavigationUnit:(id)unit;
- (unint64_t)navigationUnitRelativePageIndexForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type;
- (unint64_t)navigationUnitRelativePageIndexForContentNodeRelativePageIndex:(unint64_t)index inContentNode:(id)node forPresentationType:(id)type;
- (unint64_t)pageCount;
- (void)dealloc;
- (void)p_inferNavigationUnits;
@end

@implementation THDocumentNavigationModel

- (THDocumentNavigationModel)initWithDocumentRoot:(id)root navigationUnitsNodes:(id)nodes
{
  v33.receiver = self;
  v33.super_class = THDocumentNavigationModel;
  v6 = [(THDocumentNavigationModel *)&v33 init];
  v7 = v6;
  if (v6)
  {
    [(THDocumentNavigationModel *)v6 setDocumentRoot:root];
    if (nodes)
    {
      v26 = v7;
      v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [nodes count]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [nodes countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = NSArray_ptr;
        p_superclass = THWConstants.superclass;
        v13 = *v30;
        v27 = *v30;
        do
        {
          v14 = 0;
          v28 = v10;
          do
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(nodes);
            }

            v15 = *(*(&v29 + 1) + 8 * v14);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v16 = v8;
              rootCopy = root;
              v18 = p_superclass;
              v19 = v11;
              nodesCopy = nodes;
              v21 = +[TSUAssertionHandler currentHandler];
              v22 = [NSString stringWithUTF8String:"[THDocumentNavigationModel initWithDocumentRoot:navigationUnitsNodes:]"];
              v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigationModel.m"];
              v24 = v21;
              nodes = nodesCopy;
              v11 = v19;
              p_superclass = v18;
              root = rootCopy;
              v8 = v16;
              v13 = v27;
              v10 = v28;
              [v24 handleFailureInFunction:v22 file:v23 lineNumber:62 description:{@"Expected array of content nodes, got something not an array."}];
            }

            -[NSMutableArray addObject:](v8, "addObject:", [objc_alloc((p_superclass + 424)) initWithContext:objc_msgSend(root contentNodes:{"context"), objc_msgSend(v15, "copyWithZone:", 0)}]);
            v14 = v14 + 1;
          }

          while (v10 != v14);
          v10 = [nodes countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v10);
      }

      v7 = v26;
      [(THDocumentNavigationModel *)v26 setNavigationUnits:v8];
    }

    else
    {
      [(THDocumentNavigationModel *)v7 p_inferNavigationUnits];
    }

    [(THDocumentNavigationModel *)v7 setContentNodeGUIDToContentNodeDictionary:+[NSMutableDictionary dictionary]];
    [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigationModel *)v7 documentRoot] rootNode] addMappingFromGUIDToNodeToDictionary:[(THDocumentNavigationModel *)v7 contentNodeGUIDToContentNodeDictionary]];
  }

  return v7;
}

- (void)dealloc
{
  [(THDocumentNavigationModel *)self setDocumentRoot:0];
  [(THDocumentNavigationModel *)self setNavigationUnits:0];
  [(THDocumentNavigationModel *)self setContentNodeGUIDToContentNodeDictionary:0];
  v3.receiver = self;
  v3.super_class = THDocumentNavigationModel;
  [(THDocumentNavigationModel *)&v3 dealloc];
}

- (id)linkForNavigationUnitIndex:(unint64_t)index
{
  v4 = [objc_msgSend(-[NSArray objectAtIndex:](-[THDocumentNavigationModel navigationUnits](self "navigationUnits")];

  return [(THDocumentNavigationModel *)self linkForContentNode:v4 fragment:0];
}

- (id)navigationUnitContainingContentNode:(id)node
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  navigationUnits = [(THDocumentNavigationModel *)self navigationUnits];
  v5 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(navigationUnits);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 containsContentNode:node])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)pageNumberStringForAbsolutePageIndex:(int64_t)index forPresentationType:(id)type
{
  v7 = [THBundle() localizedStringForKey:@"-" value:&stru_471858 table:0];
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v7;
  }

  v8 = [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode] contentNodeForRelativePageIndex:index forPresentationType:type];
  if (!v8)
  {
    return v7;
  }

  return [v8 pageNumberStringForAbsolutePageIndex:index presentationType:type];
}

- (id)firstNavigationUnit
{
  navigationUnits = [(THDocumentNavigationModel *)self navigationUnits];

  return [(NSArray *)navigationUnits objectAtIndex:0];
}

- (id)navigationUnitPrecedingNavigationUnit:(id)unit
{
  v4 = [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] indexOfObject:unit];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  navigationUnits = [(THDocumentNavigationModel *)self navigationUnits];

  return [(NSArray *)navigationUnits objectAtIndex:v5 - 1];
}

- (id)navigationUnitFollowingNavigationUnit:(id)unit
{
  v4 = [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] indexOfObject:unit];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = v4 + 1;
  if (v4 + 1 >= [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] count])
  {
    return 0;
  }

  navigationUnits = [(THDocumentNavigationModel *)self navigationUnits];

  return [(NSArray *)navigationUnits objectAtIndex:v5];
}

- (id)sectionIdentifierForNavigationUnit:(id)unit
{
  if (!unit)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v4 = [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] indexOfObject:unit];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = v4;
  tocModel = [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] tocModel];
  if (v5 >= [(NSArray *)[(THTOCModel *)tocModel tiles] count])
  {
    return &stru_471858;
  }

  v7 = [objc_msgSend(-[NSArray objectAtIndex:](-[THTOCModel tiles](tocModel "tiles")];

  return [v7 sectionIdentifier];
}

- (id)titleStringForNavigationUnit:(id)unit
{
  v5 = [(THDocumentNavigationModel *)self chapterAndNumberStringForNavigationUnit:?];
  v6 = [(THDocumentNavigationModel *)self parentTitleForNavigationUnit:unit];
  if ([v5 length])
  {
    return [NSString stringWithFormat:@"%@: %@", v5, v6];
  }

  else
  {
    return v6;
  }
}

- (id)chapterAndNumberStringForNavigationUnit:(id)unit
{
  v3 = [(THDocumentNavigationModel *)self sectionIdentifierForNavigationUnit:unit];
  if (v3)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Chapter %@" value:&stru_471858 table:0], v3);
  }

  else
  {
    return &stru_471858;
  }
}

- (id)parentTitleForNavigationUnit:(id)unit
{
  if (![objc_msgSend(unit "contentNodes")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![objc_msgSend(unit "contentNodes")])
  {
    return &stru_471858;
  }

  objc_opt_class();
  [objc_msgSend(unit "contentNodes")];
  parent = [TSUDynamicCast() parent];

  return [parent title];
}

- (void)p_inferNavigationUnits
{
  objc_opt_class();
  [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode];
  v3 = TSUDynamicCast();
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [objc_msgSend(v3 "childNodes")]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  childNodes = [v3 childNodes];
  v6 = [childNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(childNodes);
        }

        v10 = [THNavigationUnit navigationUnitWithContext:[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] context] andModelNode:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          [(NSMutableArray *)v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [childNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(THDocumentNavigationModel *)self setNavigationUnits:v4];
}

- (THSnippetPair)p_snippetPairForAbsolutePageIndex:(unint64_t)index withDocumentRoot:(id)root forPresentationType:(id)type
{
  v6 = [objc_msgSend(root "rootNode")];
  v7 = [(THDocumentNavigationModel *)self p_lessonNodeForContentNode:v6];
  v8 = [(THDocumentNavigationModel *)self p_chapterNodeForContentNode:v6];
  majorSnippet = [v7 majorSnippet];
  minorSnippet = [v7 minorSnippet];
  if (majorSnippet)
  {
    v11 = minorSnippet;
  }

  else
  {
    v12 = [objc_msgSend(v7 "parent")];
    v13 = [objc_msgSend(v8 "parent")];
    v14 = THBundle();
    v15 = v13 + 1;
    if (v12)
    {
      majorSnippet = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v14 localizedStringForKey:@"Lesson %lu.%lu" value:&stru_471858 table:0], v15, v12);
      v8 = v7;
    }

    else
    {
      majorSnippet = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v14 localizedStringForKey:@"Chapter %lu" value:&stru_471858 table:0], v15);
    }

    title = [v8 title];
    if (title)
    {
      v11 = title;
    }

    else
    {
      v11 = &stru_471858;
    }
  }

  v17 = majorSnippet;
  result.var1 = v11;
  result.var0 = v17;
  return result;
}

- (unint64_t)pageCount
{
  rootNode = [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode];
  v4 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] context]];

  return [(THModelNode *)rootNode pageCountForPresentationType:v4];
}

- (NSArray)contentNodes
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  navigationUnits = [(THDocumentNavigationModel *)self navigationUnits];
  v5 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(navigationUnits);
        }

        -[NSArray addObjectsFromArray:](v3, "addObjectsFromArray:", [*(*(&v10 + 1) + 8 * v8) contentNodes]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)navigationUnits countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)contentNodeForAbsolutePageIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  rootNode = [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode];
  v8 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] context]];

  return [(THModelNode *)rootNode contentNodeForRelativePageIndex:index forPresentationType:v8];
}

- (id)contentNodeForGUID:(id)d
{
  contentNodeGUIDToContentNodeDictionary = [(THDocumentNavigationModel *)self contentNodeGUIDToContentNodeDictionary];

  return [(NSMutableDictionary *)contentNodeGUIDToContentNodeDictionary objectForKey:d];
}

- (id)contentNodeForInfoID:(id)d
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contentNodes = [(THDocumentNavigationModel *)self contentNodes];
  v5 = [(NSArray *)contentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(contentNodes);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 infoForNodeUniqueID:d])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)contentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)contentNodeForBodyStorageID:(id)d
{
  v5 = [(THDocumentNavigationModel *)self contentNodeForGUID:?];
  if (!v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    contentNodes = [(THDocumentNavigationModel *)self contentNodes];
    v8 = [(NSArray *)contentNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_5:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(contentNodes);
        }

        v5 = *(*(&v12 + 1) + 8 * v11);
        if ([v5 hasBodyStorageUID:d])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSArray *)contentNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
          v5 = 0;
          if (v9)
          {
            goto LABEL_5;
          }

          return v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)contentNodeForPageLocation:(id)location
{
  if ([location storageUID])
  {
    result = -[THDocumentNavigationModel contentNodeForInfoID:](self, "contentNodeForInfoID:", [location storageUID]);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ([location absolutePhysicalPageIndex] == 0x7FFFFFFFFFFFFFFFLL || (result = -[THDocumentNavigationModel contentNodeForAbsolutePageIndex:](self, "contentNodeForAbsolutePageIndex:", objc_msgSend(location, "absolutePhysicalPageIndex"))) == 0)
  {
LABEL_6:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (unint64_t)navigationUnitRelativePageIndexForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type
{
  [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode] contentNodeForRelativePageIndex:index forPresentationType:type];
  objc_opt_class();
  v7 = TSUDynamicCast();
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(THDocumentNavigationModel *)self navigationUnitContainingContentNode:v7];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v10 = [v8 absolutePageIndexForRelativePageIndex:0 forPresentationType:type];
    if (index >= v10)
    {
      return index - v10;
    }
  }

  return v9;
}

- (unint64_t)navigationUnitRelativePageIndexForContentNodeRelativePageIndex:(unint64_t)index inContentNode:(id)node forPresentationType:(id)type
{
  if (!node)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [node absolutePageIndexForRelativePageIndex:index forPresentationType:type];
  v9 = [(THDocumentNavigationModel *)self navigationUnitContainingContentNode:node];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 absolutePageIndexForRelativePageIndex:0 forPresentationType:type];
    if (v8 >= v11)
    {
      return v8 - v11;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

@end