@interface THPageSpotHistory
+ (id)bookspotWithPageIndex:(unint64_t)a3;
+ (unint64_t)pageIndexFromBookspot:(id)a3;
- (BOOL)gotoBookspot:(id)a3 minor:(BOOL)a4;
- (BOOL)gotoBookspotPageIndex:(unint64_t)a3 minor:(BOOL)a4;
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
- (id)p_bookspotAtCursor:(unint64_t)a3;
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
- (void)p_pushBookspot:(id)a3;
- (void)p_removeStackItemAtIndex:(unint64_t)a3;
- (void)p_setBookspot:(id)a3;
- (void)recordCurrentLocationInHistory;
- (void)recordOutgoingMajorNavigationJumpSuppressingToolbar:(BOOL)a3;
- (void)resetWithDictionaryRepresentation:(id)a3;
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

- (void)resetWithDictionaryRepresentation:(id)a3
{
  [(THPageSpotHistory *)self setCursorIndex:0];
  [(THPageSpotHistory *)self setRejectDuplicates:1];
  [(THPageSpotHistory *)self setSeekDistinctSpots:1];
  [(THPageSpotHistory *)self setStackLimit:20];
  if (!a3)
  {
    goto LABEL_8;
  }

  v5 = [a3 objectForKey:@"stack"];
  v6 = [a3 objectForKey:@"cursor"];
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

- (void)recordOutgoingMajorNavigationJumpSuppressingToolbar:(BOOL)a3
{
  v3 = a3;
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
  v10[2] = [NSNumber numberWithBool:v3];
  [(NSNotificationCenter *)v7 postNotificationName:v8 object:[NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3]];
}

- (void)recordCurrentLocationInHistory
{
  if ([(THPageSpotHistoryDelegate *)[(THPageSpotHistory *)self delegate] currentAbsolutePageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(THPageSpotHistoryDelegate *)[(THPageSpotHistory *)self delegate] currentBookspotLocation];
  }

  [(THPageSpotHistory *)self gotoBookspot:v3 minor:1];
}

- (void)p_removeStackItemAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)[(THPageSpotHistory *)self stack] count]> a3)
  {
    [(NSMutableArray *)[(THPageSpotHistory *)self stack] removeObjectAtIndex:a3];
    if ([(THPageSpotHistory *)self cursorIndex]> a3)
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

- (void)p_pushBookspot:(id)a3
{
  if (!-[THPageSpotHistory rejectDuplicates](self, "rejectDuplicates") || ([a3 isEqual:{-[THPageSpotHistory curBookspot](self, "curBookspot")}] & 1) == 0)
  {
    [(NSMutableArray *)[(THPageSpotHistory *)self stack] addObject:a3];
    [(THPageSpotHistory *)self setCursorIndex:[(NSMutableArray *)[(THPageSpotHistory *)self stack] count]- 1];

    [(THPageSpotHistory *)self p_cleanseStack];
  }
}

- (void)p_clearUpperStack
{
  v3 = [(THPageSpotHistory *)self cursorIndex];
  if (v3 < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count]- 1)
  {
    v4 = [(THPageSpotHistory *)self cursorIndex];
    v5 = [(NSMutableArray *)[(THPageSpotHistory *)self stack] count];
    v6 = ~[(THPageSpotHistory *)self cursorIndex];
    v7 = [(THPageSpotHistory *)self stack];

    [(NSMutableArray *)v7 removeObjectsInRange:v4 + 1, &v5[v6]];
  }
}

- (id)p_bookspotAtCursor:(unint64_t)a3
{
  if ([(NSMutableArray *)[(THPageSpotHistory *)self stack] count]<= a3)
  {
    return 0;
  }

  v5 = [(THPageSpotHistory *)self stack];

  return [(NSMutableArray *)v5 objectAtIndex:a3];
}

- (void)p_setBookspot:(id)a3
{
  if (a3)
  {
    v5 = [(THPageSpotHistory *)self stack];
    v6 = [(THPageSpotHistory *)self cursorIndex];

    [(NSMutableArray *)v5 replaceObjectAtIndex:v6 withObject:a3];
  }
}

+ (id)bookspotWithPageIndex:(unint64_t)a3
{
  v3 = [[THPageLocation alloc] initWithAbsolutePageIndex:a3];

  return v3;
}

+ (unint64_t)pageIndexFromBookspot:(id)a3
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
  v3 = [(THPageSpotHistory *)self cursorIndex];

  return [(THPageSpotHistory *)self p_bookspotAtCursor:v3];
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
  v3 = [(THPageSpotHistory *)self cursorIndex];
  v5 = [-[THPageSpotHistory curBookspot](self "curBookspot")] == 0x7FFFFFFFFFFFFFFFLL && v3 != 0;
  v6 = v3 - v5;
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
  v3 = [(THPageSpotHistory *)self cursorIndex];
  v4 = [(THPageSpotHistory *)self curBookspot];
  if ([v4 pageIndex] == 0x7FFFFFFFFFFFFFFFLL && v3)
  {
    --v3;
  }

  else
  {
    if (v3)
    {
      while (v3)
      {
        if (([v4 isEqual:{-[THPageSpotHistory p_bookspotAtCursor:](self, "p_bookspotAtCursor:", --v3)}] & 1) == 0)
        {
          return v3;
        }
      }
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (id)p_prevDistinctBookspot
{
  v3 = [(THPageSpotHistory *)self p_prevDistinctBookspotCursorIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(THPageSpotHistory *)self p_bookspotAtCursor:v3];
}

- (unint64_t)p_nextDistinctBookspotCursorIndex
{
  v3 = [(THPageSpotHistory *)self curBookspot];
  v4 = [(THPageSpotHistory *)self cursorIndex]+ 1;
  if (v4 < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
  {
    v5 = [(THPageSpotHistory *)self cursorIndex];
    while (++v5 < [(NSMutableArray *)[(THPageSpotHistory *)self stack] count])
    {
      if (([v3 isEqual:{-[THPageSpotHistory p_bookspotAtCursor:](self, "p_bookspotAtCursor:", v5)}] & 1) == 0)
      {
        return v5;
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (id)p_nextDistinctBookspot
{
  v3 = [(THPageSpotHistory *)self p_nextDistinctBookspotCursorIndex];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return [(THPageSpotHistory *)self p_bookspotAtCursor:v3];
}

- (BOOL)gotoBookspot:(id)a3 minor:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      [(THPageSpotHistory *)self p_setBookspot:a3];
      if ([(THPageSpotHistory *)self clearUpperStackOnMinorPaging])
      {
        [(THPageSpotHistory *)self p_clearUpperStack];
      }
    }

    else
    {
      [(THPageSpotHistory *)self p_clearUpperStack];
      [(THPageSpotHistory *)self p_pushBookspot:a3];
    }
  }

  return a3 != 0;
}

- (BOOL)p_gotoPrevImmediateBookspot
{
  v3 = [(THPageSpotHistory *)self p_hasPrevBookspot];
  if (v3)
  {
    [(THPageSpotHistory *)self setCursorIndex:[(THPageSpotHistory *)self cursorIndex]- 1];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return v3;
}

- (BOOL)p_gotoNextImmediateBookspot
{
  v3 = [(THPageSpotHistory *)self p_hasNextBookspot];
  if (v3)
  {
    [(THPageSpotHistory *)self setCursorIndex:[(THPageSpotHistory *)self cursorIndex]+ 1];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return v3;
}

- (BOOL)p_gotoPrevDistinctBookspot
{
  v3 = [(THPageSpotHistory *)self p_prevDistinctBookspotCursorIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THPageSpotHistory *)self setCursorIndex:v3];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return v3 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)p_gotoNextDistinctBookspot
{
  v3 = [(THPageSpotHistory *)self p_nextDistinctBookspotCursorIndex];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THPageSpotHistory *)self setCursorIndex:v3];
  }

  [(THPageSpotHistory *)self p_cleanseStack];
  return v3 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)gotoPrevBookspot
{
  v3 = [(THPageSpotHistory *)self hasPrevBookspot];
  if (v3)
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
    v5 = [(THPageSpotHistory *)self delegate];

    LOBYTE(v3) = [(THPageSpotHistoryDelegate *)v5 jumpToPageLocation:v4 touchHistory:0 minor:1];
  }

  return v3;
}

- (BOOL)gotoNextBookspot
{
  v3 = [(THPageSpotHistory *)self hasNextBookspot];
  if (v3)
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
    v5 = [(THPageSpotHistory *)self delegate];

    LOBYTE(v3) = [(THPageSpotHistoryDelegate *)v5 jumpToPageLocation:v4 touchHistory:0 minor:1];
  }

  return v3;
}

- (BOOL)gotoBookspotPageIndex:(unint64_t)a3 minor:(BOOL)a4
{
  v4 = a4;
  v6 = [THPageSpotHistory bookspotWithPageIndex:a3];

  return [(THPageSpotHistory *)self gotoBookspot:v6 minor:v4];
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