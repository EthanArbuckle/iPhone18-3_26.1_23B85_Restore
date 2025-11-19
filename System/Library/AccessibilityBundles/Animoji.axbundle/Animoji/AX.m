@interface AX
@end

@implementation AX

void __71__AX_AvatarCarousel_initWithMessagesController_accessibilityContainer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axContainerAvatarController];
  v3 = [v2 indexPathForItemClosestToCenter];

  [*(a1 + 32) _setAXCurrentIndex:{objc_msgSend(v3, "row")}];
}

void __50__AX_AvatarCarousel__accessibilityScrollCarousel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 < 1)
  {
    if (!v2)
    {
      [*(a1 + 32) scrollToViewAtIndex:0 animated:1];
      [*(a1 + 40) _setAXCurrentIndex:*(a1 + 56)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  else
  {
    v3 = [*(a1 + 32) loadRecords];
    v4 = *(a1 + 56);
    v7 = v3;
    if (v4 <= [v3 count])
    {
      v5 = *(a1 + 32);
      v6 = [v7 objectAtIndex:*(a1 + 56) - 1];
      [v5 displayAvatarForRecord:v6 animated:0];

      [*(a1 + 40) _setAXCurrentIndex:*(a1 + 56)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }
}

@end