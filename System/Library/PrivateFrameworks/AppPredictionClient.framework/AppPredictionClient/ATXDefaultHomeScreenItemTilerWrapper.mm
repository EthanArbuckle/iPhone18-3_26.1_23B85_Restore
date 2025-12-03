@interface ATXDefaultHomeScreenItemTilerWrapper
- (ATXDefaultHomeScreenItemTilerWrapper)initWithDefaultStack:(id)stack defaultWidgetsSmall:(id)small defaultWidgetsMedium:(id)medium defaultWidgetsLarge:(id)large defaultWidgetsExtraLarge:(id)extraLarge widgetFamilyMask:(unint64_t)mask gridSize:(unint64_t)size galleryRequest:(id)self0;
@end

@implementation ATXDefaultHomeScreenItemTilerWrapper

- (ATXDefaultHomeScreenItemTilerWrapper)initWithDefaultStack:(id)stack defaultWidgetsSmall:(id)small defaultWidgetsMedium:(id)medium defaultWidgetsLarge:(id)large defaultWidgetsExtraLarge:(id)extraLarge widgetFamilyMask:(unint64_t)mask gridSize:(unint64_t)size galleryRequest:(id)self0
{
  stackCopy = stack;
  smallCopy = small;
  mediumCopy = medium;
  largeCopy = large;
  extraLargeCopy = extraLarge;
  requestCopy = request;
  v32.receiver = self;
  v32.super_class = ATXDefaultHomeScreenItemTilerWrapper;
  v22 = [(ATXDefaultHomeScreenItemTilerWrapper *)&v32 init];
  if (!v22)
  {
    goto LABEL_24;
  }

  if (size <= 1)
  {
    if (!size)
    {
      if (requestCopy)
      {
        clientIdentity = [requestCopy clientIdentity];
        if ([clientIdentity widgetClient] == 2)
        {
          limit = [requestCopy limit];
          unsignedIntegerValue = [limit unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 12;
        }
      }

      else
      {
        unsignedIntegerValue = 12;
      }

      v27 = [[ATXDefaultHomeScreenItemTilerGridSize2 alloc] initWithDefaultStack:stackCopy defaultWidgetsSmall:smallCopy defaultWidgetsMedium:mediumCopy defaultWidgetsLarge:largeCopy defaultWidgetsExtraLarge:extraLargeCopy widgetFamilyMask:mask targetNumberOfSuggestions:unsignedIntegerValue];
      goto LABEL_22;
    }

    if (size != 1)
    {
      goto LABEL_24;
    }

    v24 = ATXDefaultHomeScreenItemTilerGridSize3;
    goto LABEL_12;
  }

  switch(size)
  {
    case 2uLL:
      v24 = ATXDefaultHomeScreenItemTilerGridSize4;
LABEL_12:
      v25 = [v24 alloc];
      v26 = 7;
LABEL_14:
      v27 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)v25 initWithDefaultStack:stackCopy defaultWidgetsSmall:smallCopy defaultWidgetsMedium:mediumCopy defaultWidgetsLarge:largeCopy defaultWidgetsExtraLarge:extraLargeCopy widgetFamilyMask:mask targetNumberOfSuggestions:v26];
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