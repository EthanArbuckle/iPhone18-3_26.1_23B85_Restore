@interface SFSettingsAlertContentController
@end

@implementation SFSettingsAlertContentController

void __45___SFSettingsAlertContentController_loadView__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 _addGroupSeparatorIfNeededBeforeItemAtIndex:a3];
  [*(a1 + 32) _addViewForItem:v6];
}

void *__52___SFSettingsAlertContentController_setFocusedItem___block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) _updatePreferredContentSize];
  result = *(a1 + 40);
  if (!result[136])
  {

    return [result _scrollToBottomIfNeeded];
  }

  return result;
}

void __54___SFSettingsAlertContentController__updateSeparators__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  v5 = [v19 viewAsUIView];
  v6 = [*(*(a1 + 32) + 992) lastObject];
  if (v6 == v19)
  {

    v7 = 0;
LABEL_7:
    [v5 setHidesSeparator:1];
    goto LABEL_8;
  }

  v7 = [*(*(a1 + 32) + 992) objectAtIndexedSubscript:a3 + 1];

  if (!v7 || ((*(*(a1 + 40) + 16))() & 1) != 0)
  {
    goto LABEL_7;
  }

  v8 = *(a1 + 40);
  v9 = [v7 viewAsUIView];
  if ((*(v8 + 16))(v8, v9))
  {
    v10 = 1;
  }

  else
  {
    v10 = [*(*(a1 + 32) + 1000) containsIndex:a3 + 1];
  }

  [v5 setHidesSeparator:v10];

LABEL_8:
  v11 = [v19 group];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 subItems];
    v14 = [v13 lastObject];
    v15 = v14 != v19;
  }

  else
  {
    v15 = 0;
  }

  v16 = 4;
  if (!v15)
  {
    v16 = 5;
  }

  v17 = 2;
  if (!v15)
  {
    v17 = 3;
  }

  if (*(*(a1 + 32) + 1074))
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  [v5 setDefaultBackgroundMode:v18];
}

@end