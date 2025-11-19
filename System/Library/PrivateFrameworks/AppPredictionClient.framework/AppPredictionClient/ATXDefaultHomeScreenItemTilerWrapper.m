@interface ATXDefaultHomeScreenItemTilerWrapper
- (ATXDefaultHomeScreenItemTilerWrapper)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 gridSize:(unint64_t)a9 galleryRequest:(id)a10;
@end

@implementation ATXDefaultHomeScreenItemTilerWrapper

- (ATXDefaultHomeScreenItemTilerWrapper)initWithDefaultStack:(id)a3 defaultWidgetsSmall:(id)a4 defaultWidgetsMedium:(id)a5 defaultWidgetsLarge:(id)a6 defaultWidgetsExtraLarge:(id)a7 widgetFamilyMask:(unint64_t)a8 gridSize:(unint64_t)a9 galleryRequest:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a10;
  v32.receiver = self;
  v32.super_class = ATXDefaultHomeScreenItemTilerWrapper;
  v22 = [(ATXDefaultHomeScreenItemTilerWrapper *)&v32 init];
  if (!v22)
  {
    goto LABEL_24;
  }

  if (a9 <= 1)
  {
    if (!a9)
    {
      if (v21)
      {
        v28 = [v21 clientIdentity];
        if ([v28 widgetClient] == 2)
        {
          v31 = [v21 limit];
          v29 = [v31 unsignedIntegerValue];
        }

        else
        {
          v29 = 12;
        }
      }

      else
      {
        v29 = 12;
      }

      v27 = [[ATXDefaultHomeScreenItemTilerGridSize2 alloc] initWithDefaultStack:v16 defaultWidgetsSmall:v17 defaultWidgetsMedium:v18 defaultWidgetsLarge:v19 defaultWidgetsExtraLarge:v20 widgetFamilyMask:a8 targetNumberOfSuggestions:v29];
      goto LABEL_22;
    }

    if (a9 != 1)
    {
      goto LABEL_24;
    }

    v24 = ATXDefaultHomeScreenItemTilerGridSize3;
    goto LABEL_12;
  }

  switch(a9)
  {
    case 2uLL:
      v24 = ATXDefaultHomeScreenItemTilerGridSize4;
LABEL_12:
      v25 = [v24 alloc];
      v26 = 7;
LABEL_14:
      v27 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)v25 initWithDefaultStack:v16 defaultWidgetsSmall:v17 defaultWidgetsMedium:v18 defaultWidgetsLarge:v19 defaultWidgetsExtraLarge:v20 widgetFamilyMask:a8 targetNumberOfSuggestions:v26];
LABEL_22:
      tiler = v22->_tiler;
      v22->_tiler = v27;
LABEL_23:

      break;
    case 3uLL:
      v25 = [ATXDefaultHomeScreenItemTilerGridSize5 alloc];
      v26 = 10;
      goto LABEL_14;
    case 4uLL:
      tiler = __atxlog_handle_modes();
      if (os_log_type_enabled(tiler, OS_LOG_TYPE_FAULT))
      {
        [ATXDefaultHomeScreenItemTilerWrapper initWithDefaultStack:? defaultWidgetsSmall:? defaultWidgetsMedium:? defaultWidgetsLarge:? defaultWidgetsExtraLarge:? widgetFamilyMask:? gridSize:? galleryRequest:?];
      }

      goto LABEL_23;
  }

LABEL_24:

  return v22;
}

- (void)initWithDefaultStack:(os_log_t)log defaultWidgetsSmall:defaultWidgetsMedium:defaultWidgetsLarge:defaultWidgetsExtraLarge:widgetFamilyMask:gridSize:galleryRequest:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = 4;
  _os_log_fault_impl(&dword_1BF549000, log, OS_LOG_TYPE_FAULT, "ATXDefaultHomeScreenItemTiler: grid size is not valid: %lu", &v1, 0xCu);
}

@end