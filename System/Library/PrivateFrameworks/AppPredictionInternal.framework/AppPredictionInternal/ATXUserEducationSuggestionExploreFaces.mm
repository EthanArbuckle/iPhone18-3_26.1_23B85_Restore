@interface ATXUserEducationSuggestionExploreFaces
@end

@implementation ATXUserEducationSuggestionExploreFaces

void __64__ATXUserEducationSuggestionExploreFaces_Internal__logFeedback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = &off_283AFD930;
  objc_msgSendSuper2(&v7, sel_logFeedback_, v2);
  v3 = [*(a1 + 32) feedbackType];
  if (v3 == 6 || v3 == 4)
  {
    v5 = +[ATXUserEducationSuggestionServer sharedInstance];
    v6 = [v5 exploreFacesServer];
    [v6 cancelBacklightEventSubscription];
  }

  else
  {
    if (v3 != 1)
    {
      return;
    }

    v5 = +[ATXUserEducationSuggestionServer sharedInstance];
    v6 = [v5 exploreFacesServer];
    [v6 startUpSubscriberToBacklightBiomeStreamForTheFirstTime];
  }
}

@end