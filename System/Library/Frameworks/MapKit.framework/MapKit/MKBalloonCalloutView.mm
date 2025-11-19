@interface MKBalloonCalloutView
@end

@implementation MKBalloonCalloutView

uint64_t __55___MKBalloonCalloutView__showAnimated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MKBalloonCalloutDidShowNotification" object:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __55___MKBalloonCalloutView__showAnimated_completionBlock___block_invoke_164(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"MKBalloonCalloutDidShowNotification" object:*(a1 + 32)];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

_BYTE *__54___MKBalloonCalloutView_showAnimated_completionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[602] & 1) == 0)
  {
    return [result _showAnimated:*(a1 + 48) completionBlock:*(a1 + 40)];
  }

  return result;
}

uint64_t __51___MKBalloonCalloutView_updateWithNewCalloutOffset__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _idealFrame];
  v2 = *(a1 + 32);

  return [v2 setFrame:?];
}

uint64_t __48___MKBalloonCalloutView_setShowsArrow_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _configureForArrowStateWithDuration:*(a1 + 40)];
  [*(a1 + 32) _mapkit_setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 _mapkit_layoutIfNeeded];
}

@end