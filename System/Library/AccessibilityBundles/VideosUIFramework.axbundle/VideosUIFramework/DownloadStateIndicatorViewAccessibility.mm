@interface DownloadStateIndicatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_localizedStringForDownloadState:(unint64_t)state;
- (id)accessibilityLabel;
@end

@implementation DownloadStateIndicatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.DownloadStateIndicatorView" hasSwiftField:@"viewModel" withSwiftType:"Optional<DownloadStateIndicatorViewModel>"];
  [validationsCopy validateClass:@"VideosUI.DownloadStateIndicatorViewModel" hasSwiftField:@"downloadModel" withSwiftType:"VUIDownloadButtonViewModel"];
  [validationsCopy validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadState" withType:"Q"];
}

- (id)accessibilityLabel
{
  v3 = [(DownloadStateIndicatorViewAccessibility *)self safeSwiftValueForKey:@"viewModel"];
  v4 = [v3 safeSwiftValueForKey:@"downloadModel"];
  v5 = -[DownloadStateIndicatorViewAccessibility _localizedStringForDownloadState:](self, "_localizedStringForDownloadState:", [v4 safeIntegerForKey:@"_downloadState"]);

  return v5;
}

- (id)_localizedStringForDownloadState:(unint64_t)state
{
  if (_localizedStringForDownloadState__onceToken != -1)
  {
    [DownloadStateIndicatorViewAccessibility _localizedStringForDownloadState:];
  }

  v4 = _localizedStringForDownloadState__stateToKeyMap;
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:state];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = accessibilityLocalizedString(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __76__DownloadStateIndicatorViewAccessibility__localizedStringForDownloadState___block_invoke()
{
  v4[5] = *MEMORY[0x29EDCA608];
  v3[0] = &unk_2A23AB1E8;
  v3[1] = &unk_2A23AB200;
  v4[0] = @"download.button.connecting";
  v4[1] = @"download.button.downloading";
  v3[2] = &unk_2A23AB218;
  v3[3] = &unk_2A23AB230;
  v4[2] = @"download.button.downloaded";
  v4[3] = @"download.button.paused";
  v3[4] = &unk_2A23AB248;
  v4[4] = @"download.button.enqueued";
  v0 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v4 forKeys:v3 count:5];
  v1 = _localizedStringForDownloadState__stateToKeyMap;
  _localizedStringForDownloadState__stateToKeyMap = v0;

  v2 = *MEMORY[0x29EDCA608];
}

@end