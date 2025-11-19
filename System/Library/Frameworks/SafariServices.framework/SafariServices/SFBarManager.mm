@interface SFBarManager
@end

@implementation SFBarManager

void __55___SFBarManager__updateRegistrationWithToken_animated___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = [*(*(a1 + 32) + 48) objectAtIndexedSubscript:a2];
  [*(a1 + 40) setBarItem:a2 enabled:{objc_msgSend(*(a1 + 32), "isBarItemEnabled:", a2)}];
  v4 = *(a1 + 40);
  v5 = [v12 menu];
  [v4 setBarItem:a2 menu:v5];

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setBarItem:a2 hidden:{objc_msgSend(v12, "isHidden")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) setBarItem:a2 selected:{objc_msgSend(v12, "isSelected")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 40);
    v7 = [v12 title];
    [v6 setTitle:v7 forBarItem:a2];
  }

  if ([v12 hasImage] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = *(a1 + 40);
    v9 = [v12 image];
    [v8 setImage:v9 forBarItem:a2];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = *(a1 + 40);
    v11 = [v12 attributedTitle];
    [v10 setAttributedTitle:v11 forBarItem:a2];
  }
}

@end