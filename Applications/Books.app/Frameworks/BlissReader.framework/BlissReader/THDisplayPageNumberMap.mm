@interface THDisplayPageNumberMap
- (THDisplayPageNumberMap)init;
- (id)absolutePageIndexesForAltsOfAbsolutePageIndex:(unint64_t)a3;
- (id)absolutePageIndexesForDisplayPageNumber:(id)a3;
- (id)displayPageNumberForAbsolutePageIndex:(unint64_t)a3;
- (id)preferredAbsolutePageIndexesForDisplayPageNumber:(id)a3;
- (unint64_t)absolutePageIndexForDisplayPageNumber:(id)a3;
- (void)buildDisplayPageMapsWithDocumentRoot:(id)a3;
- (void)clearDisplayPageMapsWithDocumentRoot:(id)a3;
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

- (void)clearDisplayPageMapsWithDocumentRoot:(id)a3
{
  if ([(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    [(THDisplayPageNumberMap *)self setAssignedPageNumbers:0];
    [(THDisplayPageNumberMap *)self setAbsolutePageIndexArrayForDisplayPageNumberMap:0];

    [(THDisplayPageNumberMap *)self setDisplayPageNumberArray:0];
  }
}

- (void)buildDisplayPageMapsWithDocumentRoot:(id)a3
{
  if (![(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    v5 = [objc_msgSend(a3 "rootNode")];
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
      [a3 rootNode];
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

- (id)absolutePageIndexesForDisplayPageNumber:(id)a3
{
  v4 = [(THDisplayPageNumberMap *)self absolutePageIndexArrayForDisplayPageNumberMap];
  v5 = [a3 lowercaseString];

  return [(NSDictionary *)v4 objectForKey:v5];
}

- (id)absolutePageIndexesForAltsOfAbsolutePageIndex:(unint64_t)a3
{
  v3 = a3;
  if (![(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    return 0;
  }

  v5 = +[NSMutableSet set];
  v6 = 0;
  do
  {
    v7 = [NSString stringForValue:(v3 + 1) withListNumberFormat:v6 includeFormatting:0];
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

- (id)preferredAbsolutePageIndexesForDisplayPageNumber:(id)a3
{
  if (![(THDisplayPageNumberMap *)self assignedPageNumbers])
  {
    return 0;
  }

  v5 = [(THDisplayPageNumberMap *)self absolutePageIndexesForDisplayPageNumber:a3];
  if (v5)
  {
    v6 = v5;
    if ([v5 count])
    {
      return v6;
    }
  }

  v7 = [a3 intValue];
  if (v7 < 1)
  {
    return 0;
  }

  return [(THDisplayPageNumberMap *)self absolutePageIndexesForAltsOfAbsolutePageIndex:v7 - 1];
}

- (unint64_t)absolutePageIndexForDisplayPageNumber:(id)a3
{
  if (-[THDisplayPageNumberMap assignedPageNumbers](self, "assignedPageNumbers") && (v5 = -[THDisplayPageNumberMap preferredAbsolutePageIndexesForDisplayPageNumber:](self, "preferredAbsolutePageIndexesForDisplayPageNumber:", a3)) != 0 && (v6 = v5, [v5 count]))
  {
    return [objc_msgSend(v6 objectAtIndex:{0), "unsignedIntValue"}];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)displayPageNumberForAbsolutePageIndex:(unint64_t)a3
{
  v5 = [(THDisplayPageNumberMap *)self assignedPageNumbers];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL || !v5 || [(NSArray *)[(THDisplayPageNumberMap *)self displayPageNumberArray] count]<= a3)
  {
    return 0;
  }

  v6 = [(THDisplayPageNumberMap *)self displayPageNumberArray];

  return [(NSArray *)v6 objectAtIndex:a3];
}

@end