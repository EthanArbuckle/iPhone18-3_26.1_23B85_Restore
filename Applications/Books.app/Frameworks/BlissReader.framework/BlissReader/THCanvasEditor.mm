@interface THCanvasEditor
- (BOOL)p_canNavigateByBookDirection:(int)direction bookGranularity:(int)granularity;
- (BOOL)p_canNavigateByHistoryDirection:(int)direction;
- (void)insertText:(id)text replacementRange:(_NSRange)range;
- (void)p_navigateByBookDirection:(int)direction bookGranularity:(int)granularity;
- (void)p_navigateByHistoryDirection:(int)direction;
@end

@implementation THCanvasEditor

- (void)insertText:(id)text replacementRange:(_NSRange)range
{
  if ([text length] == &dword_0 + 1 && objc_msgSend(text, "characterAtIndex:", 0) == 32)
  {

    [(THCanvasEditor *)self p_navigateByBookDirection:1 bookGranularity:1];
  }
}

- (BOOL)p_canNavigateByBookDirection:(int)direction bookGranularity:(int)granularity
{
  v4 = *&granularity;
  v5 = *&direction;
  objc_opt_class();
  [(THCanvasEditor *)self interactiveCanvasController];
  v7 = TSUDynamicCast();
  delegate = [v7 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v9 = [delegate documentNavigatorForInteractiveCanvasController:v7];
  if (!v9)
  {
    return 0;
  }

  return [v9 canNavigateByBookDirection:v5 bookGranularity:v4];
}

- (void)p_navigateByBookDirection:(int)direction bookGranularity:(int)granularity
{
  v4 = *&granularity;
  v5 = *&direction;
  if ([THCanvasEditor p_canNavigateByBookDirection:"p_canNavigateByBookDirection:bookGranularity:" bookGranularity:?])
  {
    objc_opt_class();
    [(THCanvasEditor *)self interactiveCanvasController];
    v7 = TSUDynamicCast();
    delegate = [v7 delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [delegate documentNavigatorForInteractiveCanvasController:v7];
      if (v9)
      {

        [v9 navigateByBookDirection:v5 bookGranularity:v4];
      }
    }
  }
}

- (BOOL)p_canNavigateByHistoryDirection:(int)direction
{
  v3 = *&direction;
  objc_opt_class();
  [(THCanvasEditor *)self interactiveCanvasController];
  v5 = TSUDynamicCast();
  delegate = [v5 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v7 = [delegate documentNavigatorForInteractiveCanvasController:v5];
  if (!v7)
  {
    return 0;
  }

  return [v7 canNavigateByHistoryDirection:v3];
}

- (void)p_navigateByHistoryDirection:(int)direction
{
  v3 = *&direction;
  if ([(THCanvasEditor *)self p_canNavigateByHistoryDirection:?])
  {
    objc_opt_class();
    [(THCanvasEditor *)self interactiveCanvasController];
    v5 = TSUDynamicCast();
    delegate = [v5 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [delegate documentNavigatorForInteractiveCanvasController:v5];
      if (v7)
      {

        [v7 navigateByHistoryDirection:v3];
      }
    }
  }
}

@end