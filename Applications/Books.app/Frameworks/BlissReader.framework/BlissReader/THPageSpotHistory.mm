@interface THPageSpotHistory
+ (id)bookspotWithPageIndex:(unint64_t)index;
+ (unint64_t)pageIndexFromBookspot:(id)bookspot;
- (BOOL)gotoBookspot:(id)bookspot minor:(BOOL)minor;
- (BOOL)gotoBookspotPageIndex:(unint64_t)index minor:(BOOL)minor;
- (BOOL)gotoNextBookspot;
- (BOOL)gotoPrevBookspot;
- (BOOL)p_gotoNextDistinctBookspot;
- (BOOL)p_gotoNextImmediateBookspot;
- (BOOL)p_gotoPrevDistinctBookspot;
- (BOOL)p_gotoPrevImmediateBookspot;
- (BOOL)p_hasNextBookspot;
- (BOOL)p_hasPrevBookspot;
- (THPageSpotHistory)init;
- (id)curBookspot;
- (id)dictionaryRepresentation;
- (id)p_bookspotAtCursor:(unint64_t)cursor;
- (id)p_nextBookspot;
- (id)p_nextDistinctBookspot;
- (id)p_nextImmediateBookspot;
- (id)p_prevBookspot;
- (id)p_prevDistinctBookspot;
- (id)p_prevImmediateBookspot;
- (unint64_t)p_nextDistinctBookspotCursorIndex;
- (unint64_t)p_nextImmediateBookspotCursorIndex;
- (unint64_t)p_prevDistinctBookspotCursorIndex;
- (unint64_t)p_prevImmediateBookspotCursorIndex;
- (void)dealloc;
- (void)p_cleanseStack;
- (void)p_clearUpperStack;
- (void)p_pushBookspot:(id)bookspot;
- (void)p_removeStackItemAtIndex:(unint64_t)index;
- (void)p_setBookspot:(id)bookspot;
- (void)recordCurrentLocationInHistory;
- (void)recordOutgoingMajorNavigationJumpSuppressingToolbar:(BOOL)toolbar;
- (void)resetWithDictionaryRepresentation:(id)representation;
@end

@implementation THPageSpotHistory

- (THPageSpotHistory)init
{
  v5.receiver = self;
  v5.super_class = THPageSpotHistory;
  v2 = [(THPageSpotHistory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(THPageSpotHistory *)v2 resetWithDictionaryRepresentation:0];
  }

  return v3;
}

- (void)dealloc
{
  self->mStack = 0;
  v3.receiver = self;
  v3.super_class = THPageSpotHistory;
  [(THPageSpotHistory *)&v3 dealloc];
}

- (void)resetWithDictionaryRepresentation:(id)representation
{
  [(THPageSpotHistory *)self setCursorIndex:0];
  [(THPageSpotHistory *)self setRejectDuplicates:1];
  [(THPageSpotHistory *)self setSeekDistinctSpots:1];
  [(THPageSpotHistory *)self setStackLimit:20];
  if (!representation)
  {
    goto LABEL_8;
  }

  v5 = [representation objectForKey:@"stack"];
  v6 = [representation objectForKey:@"cursor"];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3052000000;
      v13 = sub_10F5D4;
      v14 = sub_10F5E4;
      v15 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10F5F0;
      v9[3] = &unk_45D9D0;
      v9[4] = &v10;
      [v5 enumerateObjectsUsingBlock:v9];
      v8 = [NSMutableArray arrayWithArray:v11[5]];
      -[THPageSpotHistory setCursorIndex:](self, "setCursorIndex:", [v7 unsignedIntValue]);
      _Block_object_dispose(&v10, 8);
      if (v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  if (!v7)
  {
LABEL_7:
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

LABEL_8:
  v8 = [NSMutableArray arrayWithObject:[THPageSpotHistory bookspotWithPageIndex:0]];
LABEL_9:
  if (![(NSMutableArray *)v8 count])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(THPageSpotHistory *)self setStack:v8];
}

- (id)dictionaryRepresentation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_10F5D4;
  v11 = sub_10F5E4;
  v12 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)[(THPageSpotHistory *)self stack] count]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10F7B0;
  v6[3] = &unk_45D9F8;
  v6[4] = &v7;
  [(NSMutableArray *)[(THPageSpotHistory *)self stack] enumerateObjectsUsingBlock:v6];
  v3 = [NSNumber numberWithUnsignedInteger:[(THPageSpotHistory *)self cursorIndex]];
  v4 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"cursor", v8[5], @"stack", 0];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)recordOutgoingMajorNavigationJumpSuppressingToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  [(THPageSpotHistory *)self recordCurrentLocationInHistory];
  v5 = [THPageSpotHistory pageIndexFromBookspot:[(THPageSpotHistory *)self curBookspot]]== 0x7FFFFFFFFFFFFFFFLL;
  v6 = [[THPageLocation alloc] initWithAbsolutePageIndex:0x7FFFFFFFFFFFFFFFLL];
  [(THPageSpotHistory *)self gotoBookspot:v6 minor:v5];
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = THNavigationHistoryDidChangeNotification;
  v10[0] = v6;
  v9[0] = @"pageLocation";
  v9[1] = @"minor";
  v10[1] = [NSNumber numberWithBool:v5];
  v9[2] = @"suppressToolbar";
  v10[2] = [NSNumber numberWithBool:toolbarCopy];
  [(NSNotificationCenter *)v7 postNotificationName:v8 object:[NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3]];
}

- (void)recordCurrentLocationInHistory
{
  if ([(THPageSpotHistoryDelegate *)[(THPageSpotHistory *)self delegate] currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    currentBookspotLocation = 0;
  }

  else
  {
    currentBookspotLocation = [(THPageSpotHistoryDelegate *)[(THPageSpotHistory *)self delegate] currentBookspotLocation];
  }

  [(THPageSpotHistory *)self gotoBookspot:currentBookspotLocation minor:1];
}

- (void)p_removeStackItemAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)[(THPageSpotHistory *)self stack] count]> index)
  {
    [(NSMutableArray *)[(THPageSpotHistory *)self stack] removeObjectAtIndex:index];
    if ([(THPageSpotHistory *)self cursorIndex]> index)
    {
      [(THPageSpotHistory *)self setCursorIndex:[(THPageSpotHistory *)self cursorIndex]- 1];
    }

    v5 = [(THPageSpotHistory *)self cursorIndex]+ 1;
    if (v5 > [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
    {
      if ([(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
      {
        v6 = [(NSMutableArray *)[(THPageSpotHistory *)self stack] count]- 1;
      }

      else
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      [(THPageSpotHistory *)self setCursorIndex:v6];
    }
  }
}

- (void)p_cleanseStack
{
  if ([(THPageSpotHistory *)self rejectDuplicates]&& [(NSMutableArray *)[(THPageSpotHistory *)self stack] count]>= 2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      if ([-[NSMutableArray objectAtIndex:](-[THPageSpotHistory stack](self "stack")])
      {
        if ([(THPageSpotHistory *)self cursorIndex]== v3)
        {
          v5 = v4;
        }

        else
        {
          v5 = v3;
        }

        [(THPageSpotHistory *)self p_removeStackItemAtIndex:v5];
      }

      else
      {
        v3 = v4;
      }

      v4 = (v3 + 1);
    }

    while (v3 + 1 < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count]);
  }

  if ([(THPageSpotHistory *)self stackLimit]&& [(THPageSpotHistory *)self stackLimit]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    while (1)
    {
      v6 = [(NSMutableArray *)[(THPageSpotHistory *)self stack] count];
      if (v6 <= [(THPageSpotHistory *)self stackLimit])
      {
        break;
      }

      [(THPageSpotHistory *)self p_removeStackItemAtIndex:0];
    }
  }
}

- (void)p_pushBookspot:(id)bookspot
{
  if (!-[THPageSpotHistory rejectDuplicates](self, "rejectDuplicates") || ([bookspot isEqual:{-[THPageSpotHistory curBookspot](self, "curBookspot")}] & 1) == 0)
  {
    [(NSMutableArray *)[(THPageSpotHistory *)self stack] addObject:bookspot];
    [(THPageSpotHistory *)self setCursorIndex:[(NSMutableArray *)[(THPageSpotHistory *)self stack] count]- 1];

    [(THPageSpotHistory *)self p_cleanseStack];
  }
}

- (void)p_clearUpperStack
{
  cursorIndex = [(THPageSpotHistory *)self cursorIndex];
  if (cursorIndex < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count]- 1)
  {
    cursorIndex2 = [(THPageSpotHistory *)self cursorIndex];
    v5 = [(NSMutableArray *)[(THPageSpotHistory *)self stack] count];
    v6 = ~[(THPageSpotHistory *)self cursorIndex];
    stack = [(THPageSpotHistory *)self stack];

    [(NSMutableArray *)stack removeObjectsInRange:cursorIndex2 + 1, &v5[v6]];
  }
}

- (id)p_bookspotAtCursor:(unint64_t)cursor
{
  if ([(NSMutableArray *)[(THPageSpotHistory *)self stack] count]<= cursor)
  {
    return 0;
  }

  stack = [(THPageSpotHistory *)self stack];

  return [(NSMutableArray *)stack objectAtIndex:cursor];
}

- (void)p_setBookspot:(id)bookspot
{
  if (bookspot)
  {
    stack = [(THPageSpotHistory *)self stack];
    cursorIndex = [(THPageSpotHistory *)self cursorIndex];

    [(NSMutableArray *)stack replaceObjectAtIndex:cursorIndex withObject:bookspot];
  }
}

+ (id)bookspotWithPageIndex:(unint64_t)index
{
  v3 = [[THPageLocation alloc] initWithAbsolutePageIndex:index];

  return v3;
}

+ (unint64_t)pageIndexFromBookspot:(id)bookspot
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return [v3 absolutePhysicalPageIndex];
}

- (id)curBookspot
{
  cursorIndex = [(THPageSpotHistory *)self cursorIndex];

  return [(THPageSpotHistory *)self p_bookspotAtCursor:cursorIndex];
}

- (unint64_t)p_prevImmediateBookspotCursorIndex
{
  if ([(THPageSpotHistory *)self cursorIndex])
  {
    return [(THPageSpotHistory *)self cursorIndex]- 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)p_prevImmediateBookspot
{
  cursorIndex = [(THPageSpotHistory *)self cursorIndex];
  v5 = [-[THPageSpotHistory curBookspot](self "curBookspot")] == 0x7FFFFFFFFFFFFFFFLL && cursorIndex != 0;
  v6 = cursorIndex - v5;
  if (!v6)
  {
    return 0;
  }

  return [(THPageSpotHistory *)self p_bookspotAtCursor:v6 - 1];
}

- (unint64_t)p_nextImmediateBookspotCursorIndex
{
  v3 = [(THPageSpotHistory *)self cursorIndex]+ 1;
  if (v3 >= [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return [(THPageSpotHistory *)self cursorIndex]+ 1;
  }
}

- (id)p_nextImmediateBookspot
{
  v3 = [(THPageSpotHistory *)self cursorIndex]+ 1;
  if (v3 >= [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
  {
    return 0;
  }

  v4 = [(THPageSpotHistory *)self cursorIndex]+ 1;

  return [(THPageSpotHistory *)self p_bookspotAtCursor:v4];
}

- (unint64_t)p_prevDistinctBookspotCursorIndex
{
  cursorIndex = [(THPageSpotHistory *)self cursorIndex];
  curBookspot = [(THPageSpotHistory *)self curBookspot];
  if ([curBookspot pageIndex] == 0x7FFFFFFFFFFFFFFFLL && cursorIndex)
  {
    --cursorIndex;
  }

  else
  {
    if (cursorIndex)
    {
      while (cursorIndex)
      {
        if (([curBookspot isEqual:{-[THPageSpotHistory p_bookspotAtCursor:](self, "p_bookspotAtCursor:", --cursorIndex)}] & 1) == 0)
        {
          return cursorIndex;
        }
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return cursorIndex;
}

- (id)p_prevDistinctBookspot
{
  p_prevDistinctBookspotCursorIndex = [(THPageSpotHistory *)self p_prevDistinctBookspotCursorIndex];
  if (p_prevDistinctBookspotCursorIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(THPageSpotHistory *)self p_bookspotAtCursor:p_prevDistinctBookspotCursorIndex];
}

- (unint64_t)p_nextDistinctBookspotCursorIndex
{
  curBookspot = [(THPageSpotHistory *)self curBookspot];
  v4 = [(THPageSpotHistory *)self cursorIndex]+ 1;
  if (v4 < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
  {
    cursorIndex = [(THPageSpotHistory *)self cursorIndex];
    while (++cursorIndex < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
    {
      if (([curBookspot isEqual:{-[THPageSpotHistory p_bookspotAtCursor:](self, "p_bookspotAtCursor:", cursorIndex)}] & 1) == 0)
      {
        return cursorIndex;
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)p_nextDistinctBookspot
{
  p_nextDistinctBookspotCursorIndex = [(THPageSpotHistory *)self p_nextDistinctBookspotCursorIndex];
  if (p_nextDistinctBookspotCursorIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(THPageSpotHistory *)self p_bookspotAtCursor:p_nextDistinctBookspotCursorIndex];
}

- (BOOL)gotoBookspot:(id)bookspot minor:(BOOL)minor
{
  if (bookspot)
  {
    if (minor)
    {
      [(THPageSpotHistory *)self p_setBookspot:bookspot];
      if ([(THPageSpotHistory *)self clearUpperStackOnMinorPaging])
      {
        [(THPageSpotHistory *)self p_clearUpperStack];
      }
    }

    else
    {
      [(THPageSpotHistory *)self p_clearUpperStack];
      [(THPageSpotHistory *)self p_pushBookspot:bookspot];
    }
  }

  return bookspot != 0;
}

- (BOOL)p_gotoPrevImmediateBookspot
{
  p_hasPrevBookspot = [(THPageSpotHistory *)self p_hasPrevBookspot];
  if (p_hasPrevBookspot)
  {
    [(THPageSpotHistory *)self setCursorIndex:[(THPageSpotHistory *)self cursorIndex]- 1];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return p_hasPrevBookspot;
}

- (BOOL)p_gotoNextImmediateBookspot
{
  p_hasNextBookspot = [(THPageSpotHistory *)self p_hasNextBookspot];
  if (p_hasNextBookspot)
  {
    [(THPageSpotHistory *)self setCursorIndex:[(THPageSpotHistory *)self cursorIndex]+ 1];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return p_hasNextBookspot;
}

- (BOOL)p_gotoPrevDistinctBookspot
{
  p_prevDistinctBookspotCursorIndex = [(THPageSpotHistory *)self p_prevDistinctBookspotCursorIndex];
  if (p_prevDistinctBookspotCursorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THPageSpotHistory *)self setCursorIndex:p_prevDistinctBookspotCursorIndex];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return p_prevDistinctBookspotCursorIndex != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)p_gotoNextDistinctBookspot
{
  p_nextDistinctBookspotCursorIndex = [(THPageSpotHistory *)self p_nextDistinctBookspotCursorIndex];
  if (p_nextDistinctBookspotCursorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THPageSpotHistory *)self setCursorIndex:p_nextDistinctBookspotCursorIndex];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return p_nextDistinctBookspotCursorIndex != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)gotoPrevBookspot
{
  hasPrevBookspot = [(THPageSpotHistory *)self hasPrevBookspot];
  if (hasPrevBookspot)
  {
    [(THPageSpotHistory *)self recordCurrentLocationInHistory];
    if ([(THPageSpotHistory *)self seekDistinctSpots])
    {
      [(THPageSpotHistory *)self p_gotoPrevDistinctBookspot];
    }

    else
    {
      [(THPageSpotHistory *)self p_gotoPrevImmediateBookspot];
    }

    objc_opt_class();
    [(THPageSpotHistory *)self curBookspot];
    v4 = TSUDynamicCast();
    delegate = [(THPageSpotHistory *)self delegate];

    LOBYTE(hasPrevBookspot) = [(THPageSpotHistoryDelegate *)delegate jumpToPageLocation:v4 touchHistory:0 minor:1];
  }

  return hasPrevBookspot;
}

- (BOOL)gotoNextBookspot
{
  hasNextBookspot = [(THPageSpotHistory *)self hasNextBookspot];
  if (hasNextBookspot)
  {
    [(THPageSpotHistory *)self recordCurrentLocationInHistory];
    if ([(THPageSpotHistory *)self seekDistinctSpots])
    {
      [(THPageSpotHistory *)self p_gotoNextDistinctBookspot];
    }

    else
    {
      [(THPageSpotHistory *)self p_gotoNextImmediateBookspot];
    }

    objc_opt_class();
    [(THPageSpotHistory *)self curBookspot];
    v4 = TSUDynamicCast();
    delegate = [(THPageSpotHistory *)self delegate];

    LOBYTE(hasNextBookspot) = [(THPageSpotHistoryDelegate *)delegate jumpToPageLocation:v4 touchHistory:0 minor:1];
  }

  return hasNextBookspot;
}

- (BOOL)gotoBookspotPageIndex:(unint64_t)index minor:(BOOL)minor
{
  minorCopy = minor;
  v6 = [THPageSpotHistory bookspotWithPageIndex:index];

  return [(THPageSpotHistory *)self gotoBookspot:v6 minor:minorCopy];
}

- (BOOL)p_hasPrevBookspot
{
  if ([(THPageSpotHistory *)self seekDistinctSpots])
  {

    return [(THPageSpotHistory *)self p_hasPrevDistinctBookspot];
  }

  else
  {

    return [(THPageSpotHistory *)self p_hasPrevImmediateBookspot];
  }
}

- (id)p_prevBookspot
{
  if ([(THPageSpotHistory *)self seekDistinctSpots])
  {

    return [(THPageSpotHistory *)self p_prevDistinctBookspot];
  }

  else
  {

    return [(THPageSpotHistory *)self p_prevImmediateBookspot];
  }
}

- (BOOL)p_hasNextBookspot
{
  if ([(THPageSpotHistory *)self seekDistinctSpots])
  {

    return [(THPageSpotHistory *)self p_hasNextDistinctBookspot];
  }

  else
  {

    return [(THPageSpotHistory *)self p_hasNextImmediateBookspot];
  }
}

- (id)p_nextBookspot
{
  if ([(THPageSpotHistory *)self seekDistinctSpots])
  {

    return [(THPageSpotHistory *)self p_nextDistinctBookspot];
  }

  else
  {

    return [(THPageSpotHistory *)self p_nextImmediateBookspot];
  }
}

@end