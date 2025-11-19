@interface AXMoviesAssistantGlue
+ (void)accessibilityInitializeBundle;
@end

@implementation AXMoviesAssistantGlue

+ (void)accessibilityInitializeBundle
{
  if (accessibilityInitializeBundle_onceToken != -1)
  {
    +[AXMoviesAssistantGlue accessibilityInitializeBundle];
  }
}

void __54__AXMoviesAssistantGlue_accessibilityInitializeBundle__block_invoke()
{
  v0 = [MEMORY[0x29EDBD6E8] sharedInstance];
  [v0 performValidations:&__block_literal_global_291 withPreValidationHandler:&__block_literal_global_365 postValidationHandler:0 safeCategoryInstallationHandler:&__block_literal_global_374];
}

uint64_t __54__AXMoviesAssistantGlue_accessibilityInitializeBundle__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 validateClass:@"SiriMoviesChevronButton"];
  [v2 validateClass:@"SiriMoviesMovieListCellView" hasInstanceVariable:@"_movieTitleLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriMoviesMovieListCellView" hasInstanceVariable:@"_showtimeLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriMoviesMovieListCellView" hasInstanceVariable:@"_ratingView" withType:"SiriUIBorderedLabelView"];
  [v2 validateClass:@"SiriMoviesMovieListCellView" hasInstanceVariable:@"_tomatoView" withType:"SiriMoviesRottenTomatoesRatingView"];
  [v2 validateClass:@"SiriUIBorderedLabelView" hasInstanceVariable:@"_ratingLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriMoviesRottenTomatoesRatingView" hasInstanceVariable:@"_percentageLabel" withType:"UILabel"];
  [v2 validateClass:@"SiriMoviesDetailView" hasInstanceVariable:@"_watchTrailerButton" withType:"UIButton"];
  [v2 validateClass:@"SiriMoviesDetailView" hasInstanceVariable:@"_reviewsButton" withType:"SiriUIChevronButton"];
  [v2 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"primaryString" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"secondaryString" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriMoviesChevronButton" hasInstanceMethod:@"showtimeListView" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SiriMoviesShowtimeListView" hasInstanceMethod:@"showtimes" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SAMovieShowtime" hasInstanceMethod:@"showtime" withFullSignature:{"@", 0}];
  [v2 validateClass:@"SACalendar" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];

  return 1;
}

uint64_t __54__AXMoviesAssistantGlue_accessibilityInitializeBundle__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"Assistant Movies AX Bundle"];
  [v2 setOverrideProcessName:@"Assistant Movies"];

  return MEMORY[0x2A1C5E698]();
}

void __54__AXMoviesAssistantGlue_accessibilityInitializeBundle__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"SiriMoviesMovieListCellViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriUIBorderedLabelViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesRottenTomatoesRatingViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesDetailViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesChevronButtonAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesMovieCreditsViewAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesChevronCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesAttributionCellAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"SiriMoviesIndividualShowtimeViewAccessibility" canInteractWithTargetClass:1];
}

@end