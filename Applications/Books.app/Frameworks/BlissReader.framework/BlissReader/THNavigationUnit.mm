@interface THNavigationUnit
+ (THNavigationUnit)navigationUnitWithContext:(id)context andModelNode:(id)node;
+ (id)emptyNavigationUnitWithContext:(id)context;
- (BOOL)containsContentNode:(id)node;
- (THNavigationUnit)initWithContext:(id)context contentNodes:(id)nodes;
- (_NSRange)absolutePageRangeForPresentationType:(id)type;
- (id)contentNodeAfterNode:(id)node;
- (id)contentNodeBeforeNode:(id)node;
- (id)contentNodeForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type;
- (id)contentNodeForInfo:(id)info;
- (id)contentNodeForRelativePageIndex:(unint64_t)index forPresentationType:(id)type;
- (id)contentNodesSurroundingRelativePageRange:(_NSRange)range forPresentationType:(id)type;
- (id)pageInfoForRelativePageIndex:(unint64_t)index forPresentationType:(id)type;
- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)index forPresentationType:(id)type;
- (unint64_t)navUnitRelativePageIndexForContentNode:(id)node forContentNodeRelativePageIndex:(unint64_t)index presentationType:(id)type;
- (unint64_t)nodeRelativePageIndexInContentNode:(id)node forNavigationUnitRelativePageIndex:(unint64_t)index presentationType:(id)type;
- (unint64_t)pageCountForPresentationType:(id)type;
- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type;
- (unint64_t)startPageAbsolutePageIndexForPresentationType:(id)type;
- (void)dealloc;
@end

@implementation THNavigationUnit

- (THNavigationUnit)initWithContext:(id)context contentNodes:(id)nodes
{
  v7.receiver = self;
  v7.super_class = THNavigationUnit;
  v5 = [(THNavigationUnit *)&v7 initWithContext:context];
  if (v5)
  {
    v5->mContentNodes = [[NSMutableArray alloc] initWithArray:nodes];
  }

  return v5;
}

- (void)dealloc
{
  self->mContentNodes = 0;
  v3.receiver = self;
  v3.super_class = THNavigationUnit;
  [(THNavigationUnit *)&v3 dealloc];
}

+ (id)emptyNavigationUnitWithContext:(id)context
{
  v3 = [objc_alloc(objc_opt_class()) initWithContext:context contentNodes:{+[NSArray array](NSArray, "array")}];

  return v3;
}

+ (THNavigationUnit)navigationUnitWithContext:(id)context andModelNode:(id)node
{
  v6 = +[NSMutableArray array];
  sub_62058(node, v6);
  result = [v6 count];
  if (result)
  {
    v8 = [[THNavigationUnit alloc] initWithContext:context contentNodes:v6];

    return v8;
  }

  return result;
}

- (BOOL)containsContentNode:(id)node
{
  if (node)
  {
    return [(NSArray *)self->mContentNodes containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (id)contentNodeForInfo:(id)info
{
  if (!info)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  mContentNodes = self->mContentNodes;
  v5 = [(NSArray *)mContentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(mContentNodes);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([v9 isLoaded])
    {
      if ([v9 containsInfo:info])
      {
        return v9;
      }
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)mContentNodes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }
}

- (unint64_t)absolutePageIndexForRelativePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    contentNodes = [(THNavigationUnit *)self contentNodes];
    v7 = [(NSArray *)contentNodes countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      indexCopy = index;
LABEL_5:
      v11 = 0;
      v12 = indexCopy;
      while (1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(contentNodes);
        }

        v13 = *(*(&v18 + 1) + 8 * v11);
        v14 = [v13 pageCountForPresentationType:type];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        indexCopy = v12 - v14;
        if (v12 < v14)
        {
          if (!v13)
          {
            break;
          }

          v15 = [v13 absolutePageRangeForPresentationType:type];
          result = v15 + v12;
          if (v15 == 0x7FFFFFFFFFFFFFFFLL || result == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          return result;
        }

        v11 = v11 + 1;
        v12 -= v14;
        if (v8 == v11)
        {
          v8 = [(NSArray *)contentNodes countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)relativePageIndexForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(NSArray *)[(THNavigationUnit *)self contentNodes] count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL || ![(NSArray *)[(THNavigationUnit *)self contentNodes] count])
  {
    goto LABEL_24;
  }

  objc_opt_class();
  [(NSArray *)[(THNavigationUnit *)self contentNodes] objectAtIndex:0];
  v7 = [objc_msgSend(objc_msgSend(TSUDynamicCast() "documentRoot")];
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (![(THNavigationUnit *)self containsContentNode:v7])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (!v7 || ![(THNavigationUnit *)self containsContentNode:v7])
  {
    goto LABEL_24;
  }

  v8 = [v7 relativePageIndexForAbsolutePageIndex:index forPresentationType:type];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  v10 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
LABEL_15:
    v13 = 0;
    while (1)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(contentNodes);
      }

      v14 = *(*(&v16 + 1) + 8 * v13);
      if (v14 == v7)
      {
        break;
      }

      v8 = &v8[[v14 pageCountForPresentationType:type]];
      if (v11 == ++v13)
      {
        v11 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          goto LABEL_15;
        }

        break;
      }
    }
  }

  if (v8 >= [(THNavigationUnit *)self pageCountForPresentationType:type])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_24:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (unint64_t)nodeRelativePageIndexInContentNode:(id)node forNavigationUnitRelativePageIndex:(unint64_t)index presentationType:(id)type
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  v9 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(contentNodes);
      }

      v13 = *(*(&v16 + 1) + 8 * v12);
      if (v13 == node)
      {
        break;
      }

      v14 = [*(*(&v16 + 1) + 8 * v12) pageCountForPresentationType:type];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v13 startLoading];
        [v13 waitUntilFinishedLoadingAndPaginating];
        v14 = [v13 pageCountForPresentationType:type];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      index -= v14;
      if (v10 == ++v12)
      {
        v10 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        return index;
      }
    }
  }

  return index;
}

- (unint64_t)navUnitRelativePageIndexForContentNode:(id)node forContentNodeRelativePageIndex:(unint64_t)index presentationType:(id)type
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  v9 = [(NSArray *)contentNodes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v18;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v18 != v12)
      {
        objc_enumerationMutation(contentNodes);
      }

      v14 = *(*(&v17 + 1) + 8 * i);
      if (v14 == node)
      {
        v11 += index;
        return v11;
      }

      v15 = [*(*(&v17 + 1) + 8 * i) pageCountForPresentationType:type];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v14 startLoading];
        [v14 waitUntilFinishedLoadingAndPaginating];
        v15 = [v14 pageCountForPresentationType:type];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      v11 += v15;
    }

    v10 = [(NSArray *)contentNodes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

  return v11;
}

- (id)pageInfoForRelativePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  if (!type)
  {
    return 0;
  }

  indexCopy = index;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  result = [(NSArray *)contentNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      v11 = indexCopy;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(contentNodes);
        }

        v12 = *(*(&v14 + 1) + 8 * v10);
        v13 = [v12 pageCountForPresentationType:type];
        indexCopy = v11 - v13;
        if (v11 < v13)
        {
          return [v12 pageAtRelativeIndex:v11 forPresentationType:type];
        }

        v10 = v10 + 1;
        v11 -= v13;
      }

      while (v8 != v10);
      v8 = [(NSArray *)contentNodes countByEnumeratingWithState:&v14 objects:v18 count:16];
      result = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)contentNodeBeforeNode:(id)node
{
  v4 = [(NSArray *)[(THNavigationUnit *)self contentNodes] indexOfObjectIdenticalTo:node];
  if (v4 < 2)
  {
    return 0;
  }

  v5 = v4;
  contentNodes = [(THNavigationUnit *)self contentNodes];

  return [(NSArray *)contentNodes objectAtIndex:v5 - 1];
}

- (id)contentNodeAfterNode:(id)node
{
  v4 = [(NSArray *)[(THNavigationUnit *)self contentNodes] indexOfObjectIdenticalTo:node];
  if (v4 >= [(NSArray *)[(THNavigationUnit *)self contentNodes] count]- 1)
  {
    return 0;
  }

  contentNodes = [(THNavigationUnit *)self contentNodes];

  return [(NSArray *)contentNodes objectAtIndex:v4 + 1];
}

- (id)contentNodeForRelativePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  if (!type)
  {
    return 0;
  }

  indexCopy = index;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  v7 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v17;
LABEL_6:
  v10 = 0;
  while (1)
  {
    if (*v17 != v9)
    {
      objc_enumerationMutation(contentNodes);
    }

    v11 = *(*(&v16 + 1) + 8 * v10);
    v12 = [v11 pageCountForPresentationType:type];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v11 startLoading];
      [v11 waitUntilFinishedLoadingAndPaginating];
      v12 = [v11 pageCountForPresentationType:type];
    }

    v13 = indexCopy >= v12;
    indexCopy -= v12;
    if (!v13 || v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
      v11 = 0;
      if (v8)
      {
        goto LABEL_6;
      }

      return v11;
    }
  }
}

- (id)contentNodeForAbsolutePageIndex:(unint64_t)index forPresentationType:(id)type
{
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler currentHandler];
    return 0;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  v7 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v17;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v17 != v9)
    {
      objc_enumerationMutation(contentNodes);
    }

    v11 = *(*(&v16 + 1) + 8 * v10);
    v12 = [v11 absolutePageRangeForPresentationType:type];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL && index >= v12 && index - v12 < v13)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [(NSArray *)contentNodes countByEnumeratingWithState:&v16 objects:v20 count:16];
      v11 = 0;
      if (v8)
      {
        goto LABEL_5;
      }

      return v11;
    }
  }
}

- (id)contentNodesSurroundingRelativePageRange:(_NSRange)range forPresentationType:(id)type
{
  length = range.length;
  location = range.location;
  v8 = +[NSMutableIndexSet indexSet];
  v9 = [(NSArray *)[(THNavigationUnit *)self contentNodes] count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = location + length;
    do
    {
      v14 = [-[NSArray objectAtIndex:](-[THNavigationUnit contentNodes](self "contentNodes")];
      v15 = v14;
      if (location < v11 || location - v11 >= v14)
      {
        if (v11 >= v13)
        {
          [v8 addIndex:v12];
          break;
        }
      }

      else if (v12)
      {
        [v8 addIndex:v12 - 1];
      }

      v11 += v15;
      ++v12;
    }

    while (v10 != v12);
  }

  contentNodes = [(THNavigationUnit *)self contentNodes];

  return [(NSArray *)contentNodes objectsAtIndexes:v8];
}

- (_NSRange)absolutePageRangeForPresentationType:(id)type
{
  v5 = NSInvalidRange[0];
  v6 = NSInvalidRange[1];
  v7 = [(THNavigationUnit *)self startPageAbsolutePageIndexForPresentationType:?];
  v8 = [(THNavigationUnit *)self pageCountForPresentationType:type];
  v9 = v7 != 0x7FFFFFFFFFFFFFFFLL;
  v10 = v8 != 0x7FFFFFFFFFFFFFFFLL;
  if (v9 && v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (v9 && v10)
  {
    v12 = v7;
  }

  else
  {
    v12 = v5;
  }

  result.length = v11;
  result.location = v12;
  return result;
}

- (unint64_t)pageCountForPresentationType:(id)type
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  contentNodes = [(THNavigationUnit *)self contentNodes];
  v5 = [(NSArray *)contentNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v13;
  while (2)
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(contentNodes);
      }

      v10 = [*(*(&v12 + 1) + 8 * i) pageCountForPresentationType:type];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      v7 += v10;
    }

    v6 = [(NSArray *)contentNodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

  return v7;
}

- (unint64_t)startPageAbsolutePageIndexForPresentationType:(id)type
{
  v4 = [(NSArray *)[(THNavigationUnit *)self contentNodes] objectAtIndex:0];

  return [v4 absolutePageIndexForRelativePageIndex:0 forPresentationType:type];
}

@end