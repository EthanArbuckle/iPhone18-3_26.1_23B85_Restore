@interface THDocumentNavigationModel
- (NSArray)contentNodes;
- (THDocumentNavigationModel)initWithDocumentRoot:(id)a3 navigationUnitsNodes:(id)a4;
- (THSnippetPair)p_snippetPairForAbsolutePageIndex:(unint64_t)a3 withDocumentRoot:(id)a4 forPresentationType:(id)a5;
- (id)chapterAndNumberStringForNavigationUnit:(id)a3;
- (id)contentNodeForAbsolutePageIndex:(unint64_t)a3;
- (id)contentNodeForBodyStorageID:(id)a3;
- (id)contentNodeForGUID:(id)a3;
- (id)contentNodeForInfoID:(id)a3;
- (id)contentNodeForPageLocation:(id)a3;
- (id)firstNavigationUnit;
- (id)linkForNavigationUnitIndex:(unint64_t)a3;
- (id)navigationUnitContainingContentNode:(id)a3;
- (id)navigationUnitFollowingNavigationUnit:(id)a3;
- (id)navigationUnitPrecedingNavigationUnit:(id)a3;
- (id)pageNumberStringForAbsolutePageIndex:(int64_t)a3 forPresentationType:(id)a4;
- (id)parentTitleForNavigationUnit:(id)a3;
- (id)sectionIdentifierForNavigationUnit:(id)a3;
- (id)titleStringForNavigationUnit:(id)a3;
- (unint64_t)navigationUnitRelativePageIndexForAbsolutePageIndex:(unint64_t)a3 forPresentationType:(id)a4;
- (unint64_t)navigationUnitRelativePageIndexForContentNodeRelativePageIndex:(unint64_t)a3 inContentNode:(id)a4 forPresentationType:(id)a5;
- (unint64_t)pageCount;
- (void)dealloc;
- (void)p_inferNavigationUnits;
@end

@implementation THDocumentNavigationModel

- (THDocumentNavigationModel)initWithDocumentRoot:(id)a3 navigationUnitsNodes:(id)a4
{
  v33.receiver = self;
  v33.super_class = THDocumentNavigationModel;
  v6 = [(THDocumentNavigationModel *)&v33 init];
  v7 = v6;
  if (v6)
  {
    [(THDocumentNavigationModel *)v6 setDocumentRoot:a3];
    if (a4)
    {
      v26 = v7;
      v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a4 count]);
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [a4 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
              objc_enumerationMutation(a4);
            }

            v15 = *(*(&v29 + 1) + 8 * v14);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v16 = v8;
              v17 = a3;
              v18 = p_superclass;
              v19 = v11;
              v20 = a4;
              v21 = +[TSUAssertionHandler currentHandler];
              v22 = [NSString stringWithUTF8String:"[THDocumentNavigationModel initWithDocumentRoot:navigationUnitsNodes:]"];
              v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Navigator/THDocumentNavigationModel.m"];
              v24 = v21;
              a4 = v20;
              v11 = v19;
              p_superclass = v18;
              a3 = v17;
              v8 = v16;
              v13 = v27;
              v10 = v28;
              [v24 handleFailureInFunction:v22 file:v23 lineNumber:62 description:{@"Expected array of content nodes, got something not an array."}];
            }

            -[NSMutableArray addObject:](v8, "addObject:", [objc_alloc((p_superclass + 424)) initWithContext:objc_msgSend(a3 contentNodes:{"context"), objc_msgSend(v15, "copyWithZone:", 0)}]);
            v14 = v14 + 1;
          }

          while (v10 != v14);
          v10 = [a4 countByEnumeratingWithState:&v29 objects:v34 count:16];
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

- (id)linkForNavigationUnitIndex:(unint64_t)a3
{
  v4 = [objc_msgSend(-[NSArray objectAtIndex:](-[THDocumentNavigationModel navigationUnits](self "navigationUnits")];

  return [(THDocumentNavigationModel *)self linkForContentNode:v4 fragment:0];
}

- (id)navigationUnitContainingContentNode:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(THDocumentNavigationModel *)self navigationUnits];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 containsContentNode:a3])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)pageNumberStringForAbsolutePageIndex:(int64_t)a3 forPresentationType:(id)a4
{
  v7 = [THBundle() localizedStringForKey:@"-" value:&stru_471858 table:0];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v7;
  }

  v8 = [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode] contentNodeForRelativePageIndex:a3 forPresentationType:a4];
  if (!v8)
  {
    return v7;
  }

  return [v8 pageNumberStringForAbsolutePageIndex:a3 presentationType:a4];
}

- (id)firstNavigationUnit
{
  v2 = [(THDocumentNavigationModel *)self navigationUnits];

  return [(NSArray *)v2 objectAtIndex:0];
}

- (id)navigationUnitPrecedingNavigationUnit:(id)a3
{
  v4 = [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] indexOfObject:a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = [(THDocumentNavigationModel *)self navigationUnits];

  return [(NSArray *)v7 objectAtIndex:v5 - 1];
}

- (id)navigationUnitFollowingNavigationUnit:(id)a3
{
  v4 = [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = v4 + 1;
  if (v4 + 1 >= [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] count])
  {
    return 0;
  }

  v6 = [(THDocumentNavigationModel *)self navigationUnits];

  return [(NSArray *)v6 objectAtIndex:v5];
}

- (id)sectionIdentifierForNavigationUnit:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v4 = [(NSArray *)[(THDocumentNavigationModel *)self navigationUnits] indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] tocModel];
  if (v5 >= [(NSArray *)[(THTOCModel *)v6 tiles] count])
  {
    return &stru_471858;
  }

  v7 = [objc_msgSend(-[NSArray objectAtIndex:](-[THTOCModel tiles](v6 "tiles")];

  return [v7 sectionIdentifier];
}

- (id)titleStringForNavigationUnit:(id)a3
{
  v5 = [(THDocumentNavigationModel *)self chapterAndNumberStringForNavigationUnit:?];
  v6 = [(THDocumentNavigationModel *)self parentTitleForNavigationUnit:a3];
  if ([v5 length])
  {
    return [NSString stringWithFormat:@"%@: %@", v5, v6];
  }

  else
  {
    return v6;
  }
}

- (id)chapterAndNumberStringForNavigationUnit:(id)a3
{
  v3 = [(THDocumentNavigationModel *)self sectionIdentifierForNavigationUnit:a3];
  if (v3)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [THBundle() localizedStringForKey:@"Chapter %@" value:&stru_471858 table:0], v3);
  }

  else
  {
    return &stru_471858;
  }
}

- (id)parentTitleForNavigationUnit:(id)a3
{
  if (![objc_msgSend(a3 "contentNodes")])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![objc_msgSend(a3 "contentNodes")])
  {
    return &stru_471858;
  }

  objc_opt_class();
  [objc_msgSend(a3 "contentNodes")];
  v4 = [TSUDynamicCast() parent];

  return [v4 title];
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
  v5 = [v3 childNodes];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [THNavigationUnit navigationUnitWithContext:[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] context] andModelNode:*(*(&v11 + 1) + 8 * v9)];
        if (v10)
        {
          [(NSMutableArray *)v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(THDocumentNavigationModel *)self setNavigationUnits:v4];
}

- (THSnippetPair)p_snippetPairForAbsolutePageIndex:(unint64_t)a3 withDocumentRoot:(id)a4 forPresentationType:(id)a5
{
  v6 = [objc_msgSend(a4 "rootNode")];
  v7 = [(THDocumentNavigationModel *)self p_lessonNodeForContentNode:v6];
  v8 = [(THDocumentNavigationModel *)self p_chapterNodeForContentNode:v6];
  v9 = [v7 majorSnippet];
  v10 = [v7 minorSnippet];
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v12 = [objc_msgSend(v7 "parent")];
    v13 = [objc_msgSend(v8 "parent")];
    v14 = THBundle();
    v15 = v13 + 1;
    if (v12)
    {
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v14 localizedStringForKey:@"Lesson %lu.%lu" value:&stru_471858 table:0], v15, v12);
      v8 = v7;
    }

    else
    {
      v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v14 localizedStringForKey:@"Chapter %lu" value:&stru_471858 table:0], v15);
    }

    v16 = [v8 title];
    if (v16)
    {
      v11 = v16;
    }

    else
    {
      v11 = &stru_471858;
    }
  }

  v17 = v9;
  result.var1 = v11;
  result.var0 = v17;
  return result;
}

- (unint64_t)pageCount
{
  v3 = [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode];
  v4 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] context]];

  return [(THModelNode *)v3 pageCountForPresentationType:v4];
}

- (NSArray)contentNodes
{
  v3 = +[NSMutableArray array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(THDocumentNavigationModel *)self navigationUnits];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        -[NSArray addObjectsFromArray:](v3, "addObjectsFromArray:", [*(*(&v10 + 1) + 8 * v8) contentNodes]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)contentNodeForAbsolutePageIndex:(unint64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = [(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode];
  v8 = [THPresentationType paginatedPresentationTypeInContext:[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] context]];

  return [(THModelNode *)v7 contentNodeForRelativePageIndex:a3 forPresentationType:v8];
}

- (id)contentNodeForGUID:(id)a3
{
  v4 = [(THDocumentNavigationModel *)self contentNodeGUIDToContentNodeDictionary];

  return [(NSMutableDictionary *)v4 objectForKey:a3];
}

- (id)contentNodeForInfoID:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(THDocumentNavigationModel *)self contentNodes];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 infoForNodeUniqueID:a3])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)contentNodeForBodyStorageID:(id)a3
{
  v5 = [(THDocumentNavigationModel *)self contentNodeForGUID:?];
  if (!v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(THDocumentNavigationModel *)self contentNodes];
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        v5 = *(*(&v12 + 1) + 8 * v11);
        if ([v5 hasBodyStorageUID:a3])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (id)contentNodeForPageLocation:(id)a3
{
  if ([a3 storageUID])
  {
    result = -[THDocumentNavigationModel contentNodeForInfoID:](self, "contentNodeForInfoID:", [a3 storageUID]);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if ([a3 absolutePhysicalPageIndex] == 0x7FFFFFFFFFFFFFFFLL || (result = -[THDocumentNavigationModel contentNodeForAbsolutePageIndex:](self, "contentNodeForAbsolutePageIndex:", objc_msgSend(a3, "absolutePhysicalPageIndex"))) == 0)
  {
LABEL_6:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  return result;
}

- (unint64_t)navigationUnitRelativePageIndexForAbsolutePageIndex:(unint64_t)a3 forPresentationType:(id)a4
{
  [(THModelNode *)[(THDocumentRoot *)[(THDocumentNavigationModel *)self documentRoot] rootNode] contentNodeForRelativePageIndex:a3 forPresentationType:a4];
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
    v10 = [v8 absolutePageIndexForRelativePageIndex:0 forPresentationType:a4];
    if (a3 >= v10)
    {
      return a3 - v10;
    }
  }

  return v9;
}

- (unint64_t)navigationUnitRelativePageIndexForContentNodeRelativePageIndex:(unint64_t)a3 inContentNode:(id)a4 forPresentationType:(id)a5
{
  if (!a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [a4 absolutePageIndexForRelativePageIndex:a3 forPresentationType:a5];
  v9 = [(THDocumentNavigationModel *)self navigationUnitContainingContentNode:a4];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v9 && v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 absolutePageIndexForRelativePageIndex:0 forPresentationType:a5];
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