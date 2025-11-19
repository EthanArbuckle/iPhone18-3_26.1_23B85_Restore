@interface THCanvasEditor
- (BOOL)p_canNavigateByBookDirection:(int)a3 bookGranularity:(int)a4;
- (BOOL)p_canNavigateByHistoryDirection:(int)a3;
- (void)insertText:(id)a3 replacementRange:(_NSRange)a4;
- (void)p_navigateByBookDirection:(int)a3 bookGranularity:(int)a4;
- (void)p_navigateByHistoryDirection:(int)a3;
@end

@implementation THCanvasEditor

- (void)insertText:(id)a3 replacementRange:(_NSRange)a4
{
  if ([a3 length] == &dword_0 + 1 && objc_msgSend(a3, "characterAtIndex:", 0) == 32)
  {

    [(THCanvasEditor *)self p_navigateByBookDirection:1 bookGranularity:1];
  }
}

- (BOOL)p_canNavigateByBookDirection:(int)a3 bookGranularity:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  objc_opt_class();
  [(THCanvasEditor *)self interactiveCanvasController];
  v7 = TSUDynamicCast();
  v8 = [v7 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v9 = [v8 documentNavigatorForInteractiveCanvasController:v7];
  if (!v9)
  {
    return 0;
  }

  return [v9 canNavigateByBookDirection:v5 bookGranularity:v4];
}

- (void)p_navigateByBookDirection:(int)a3 bookGranularity:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  if ([THCanvasEditor p_canNavigateByBookDirection:"p_canNavigateByBookDirection:bookGranularity:" bookGranularity:?])
  {
    objc_opt_class();
    [(THCanvasEditor *)self interactiveCanvasController];
    v7 = TSUDynamicCast();
    v8 = [v7 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 documentNavigatorForInteractiveCanvasController:v7];
      if (v9)
      {

        [v9 navigateByBookDirection:v5 bookGranularity:v4];
      }
    }
  }
}

- (BOOL)p_canNavigateByHistoryDirection:(int)a3
{
  v3 = *&a3;
  objc_opt_class();
  [(THCanvasEditor *)self interactiveCanvasController];
  v5 = TSUDynamicCast();
  v6 = [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = [v6 documentNavigatorForInteractiveCanvasController:v5];
  if (!v7)
  {
    return 0;
  }

  return [v7 canNavigateByHistoryDirection:v3];
}

- (void)p_navigateByHistoryDirection:(int)a3
{
  v3 = *&a3;
  if ([(THCanvasEditor *)self p_canNavigateByHistoryDirection:?])
  {
    objc_opt_class();
    [(THCanvasEditor *)self interactiveCanvasController];
    v5 = TSUDynamicCast();
    v6 = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 documentNavigatorForInteractiveCanvasController:v5];
      if (v7)
      {

        [v7 navigateByHistoryDirection:v3];
      }
    }
  }
}

@end