@interface EKUITravelUtilities
- (id)travelTimePopupMenuForCurrentTravelTime:(double)time selectionHandler:(id)handler;
@end

@implementation EKUITravelUtilities

- (id)travelTimePopupMenuForCurrentTravelTime:(double)time selectionHandler:(id)handler
{
  v33[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v7 = EventKitUIBundle();
  v8 = [v7 localizedStringForKey:@"Travel time menu no travel time" value:@"None" table:0];

  v9 = MEMORY[0x1E69DC628];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __80__EKUITravelUtilities_travelTimePopupMenuForCurrentTravelTime_selectionHandler___block_invoke;
  v31[3] = &unk_1E8442858;
  v10 = handlerCopy;
  v32 = v10;
  v27 = v8;
  v11 = [v9 actionWithTitle:v8 image:0 identifier:0 handler:v31];
  v12 = v11;
  if (time == 0.0)
  {
    [v11 setState:1];
  }

  v26 = v12;
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  CUIKAddInlineMenuItemArrayToArray();

  array2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 6; ++i)
  {
    v16 = *&_travelTimeDurations_0[i];
    v17 = MEMORY[0x1E69DC628];
    v18 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __80__EKUITravelUtilities_travelTimePopupMenuForCurrentTravelTime_selectionHandler___block_invoke_2;
    v28[3] = &unk_1E8442880;
    v19 = v10;
    v29 = v19;
    v30 = v16;
    v20 = [v17 actionWithTitle:v18 image:0 identifier:0 handler:v28];

    v21 = MEMORY[0x1E696AEC0];
    v22 = CUIKDisplayStringForTravelTimeUsingShortFormat();
    v23 = [v21 stringWithFormat:@"tavel-time-menu-option:%@", v22];
    [v20 setAccessibilityIdentifier:v23];

    if (v16 == time)
    {
      [v20 setState:1];
    }

    [array2 addObject:v20];
  }

  CUIKAddInlineMenuItemArrayToArray();
  v24 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F4EF6790 image:0 identifier:@"travel-time-pop-up-menu" options:1 children:array];

  return v24;
}

@end