@interface THDisplayPageNumberMap
- (THDisplayPageNumberMap)init;
- (id)absolutePageIndexesForAltsOfAbsolutePageIndex:(unint64_t)index;
- (id)absolutePageIndexesForDisplayPageNumber:(id)number;
- (id)displayPageNumberForAbsolutePageIndex:(unint64_t)index;
- (id)preferredAbsolutePageIndexesForDisplayPageNumber:(id)number;
- (unint64_t)absolutePageIndexForDisplayPageNumber:(id)number;
- (void)buildDisplayPageMapsWithDocumentRoot:(id)root;
- (void)clearDisplayPageMapsWithDocumentRoot:(id)root;
- (void)dealloc;
@end

@implementation THDisplayPageNumberMap

- (THDisplayPageNumberMap)init
{
  v3.receiver = self;
  v3.super_class = THDisplayPageNumberMap;
  return [(THDisplayPageNumberMap *)&v3 init];
}

- (void)dealloc
{
  [(THDisplayPageNumberMap *)self setAbsolutePageIndexArrayForDisplayPageNumberMap:0];
  [(THDisplayPageNumberMap *)self setDisplayPageNumberArray:0];
  v3.receiver = self;
  v3.super_class = THDisplayPageNumberMap;
  [(THDisplayPageNumberMap *)&v3 dealloc];
}

- (void)clearDisplayPageMapsWithDocumentRoot:(id)root
{
  if ([(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    [(THDisplayPageNumberMap *)self setAssignedPageNumbers:0];
    [(THDisplayPageNumberMap *)self setAbsolutePageIndexArrayForDisplayPageNumberMap:0];

    [(THDisplayPageNumberMap *)self setDisplayPageNumberArray:0];
  }
}

- (void)buildDisplayPageMapsWithDocumentRoot:(id)root
{
  if (![(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    v5 = [objc_msgSend(root "rootNode")];
    if (v5 >> 6 <= 0xC34)
    {
      v6 = v5;
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = sub_11F5B4;
      v18 = sub_11F5C4;
      v19 = [[NSMutableDictionary alloc] initWithCapacity:v5];
      v8 = 0;
      v9 = &v8;
      v10 = 0x3052000000;
      v11 = sub_11F5B4;
      v12 = sub_11F5C4;
      v13 = [NSMutableArray arrayWithCapacity:v6];
      objc_opt_class();
      [root rootNode];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_11F5D0;
      v7[3] = &unk_45DC58;
      v7[4] = &v14;
      v7[5] = &v8;
      [TSUDynamicCast() enumerateSubtreeUsingBlock:v7];
      [(THDisplayPageNumberMap *)self setAbsolutePageIndexArrayForDisplayPageNumberMap:v15[5]];
      [(THDisplayPageNumberMap *)self setDisplayPageNumberArray:v9[5]];
      [(THDisplayPageNumberMap *)self setAssignedPageNumbers:1];
      _Block_object_dispose(&v8, 8);
      _Block_object_dispose(&v14, 8);
    }
  }
}

- (id)absolutePageIndexesForDisplayPageNumber:(id)number
{
  absolutePageIndexArrayForDisplayPageNumberMap = [(THDisplayPageNumberMap *)self absolutePageIndexArrayForDisplayPageNumberMap];
  lowercaseString = [number lowercaseString];

  return [(NSDictionary *)absolutePageIndexArrayForDisplayPageNumberMap objectForKey:lowercaseString];
}

- (id)absolutePageIndexesForAltsOfAbsolutePageIndex:(unint64_t)index
{
  indexCopy = index;
  if (![(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    return 0;
  }

  v5 = +[NSMutableSet set];
  v6 = 0;
  do
  {
    v7 = [NSString stringForValue:(indexCopy + 1) withListNumberFormat:v6 includeFormatting:0];
    if (v7)
    {
      v8 = [(THDisplayPageNumberMap *)self absolutePageIndexesForDisplayPageNumber:v7];
      if (v8)
      {
        [v5 addObjectsFromArray:v8];
      }
    }

    v6 = (v6 + 1);
  }

  while (v6 != 14);
  if (!v5)
  {
    return 0;
  }

  return [v5 allObjects];
}

- (id)preferredAbsolutePageIndexesForDisplayPageNumber:(id)number
{
  if (![(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    return 0;
  }

  v5 = [(THDisplayPageNumberMap *)self absolutePageIndexesForDisplayPageNumber:number];
  if (v5)
  {
    v6 = v5;
    if ([v5 count])
    {
      return v6;
    }
  }

  intValue = [number intValue];
  if (intValue < 1)
  {
    return 0;
  }

  return [(THDisplayPageNumberMap *)self absolutePageIndexesForAltsOfAbsolutePageIndex:intValue - 1];
}

- (unint64_t)absolutePageIndexForDisplayPageNumber:(id)number
{
  if (-[THDisplayPageNumberMap assignedPageNumbers](self, "assignedPageNumbers") && (v5 = -[THDisplayPageNumberMap preferredAbsolutePageIndexesForDisplayPageNumber:](self, "preferredAbsolutePageIndexesForDisplayPageNumber:", number)) != 0 && (v6 = v5, [v5 count]))
  {
    return [objc_msgSend(v6 objectAtIndex:{0), "unsignedIntValue"}];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)displayPageNumberForAbsolutePageIndex:(unint64_t)index
{
  assignedPageNumbers = [(THDisplayPageNumberMap *)self assignedPageNumbers];
  if (index == 0x7FFFFFFFFFFFFFFFLL || !assignedPageNumbers || [(NSArray *)[(THDisplayPageNumberMap *)self displayPageNumberArray] count]<= index)
  {
    return 0;
  }

  displayPageNumberArray = [(THDisplayPageNumberMap *)self displayPageNumberArray];

  return [(NSArray *)displayPageNumberArray objectAtIndex:index];
}

@end