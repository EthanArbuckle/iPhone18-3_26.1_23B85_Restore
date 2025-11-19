@interface HKActivityRingViewSizingDirective
@end

@implementation HKActivityRingViewSizingDirective

void __63___HKActivityRingViewSizingDirective_sortedRingRatioDirectives__block_invoke()
{
  v15[12] = *MEMORY[0x277D85DE8];
  v14 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Lower sentinel" width:0.0 outerRingOffset:0.0 ringThickness:1.0 ringInterspacing:1.0];
  v15[0] = v14;
  v13 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"NLSessionSummaryTableViewController small" width:20.0 outerRingOffset:0.0 ringThickness:2.0 ringInterspacing:1.5];
  v15[1] = v13;
  v0 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"NLSessionSummaryTableViewController large" width:22.0 outerRingOffset:0.0 ringThickness:2.5 ringInterspacing:1.5];
  v15[2] = v0;
  v1 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Interactive Chart Annotation" width:25.0 outerRingOffset:0.0 ringThickness:2.0 ringInterspacing:2.0];
  v15[3] = v1;
  v2 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Phone Social Friend List small" width:41.0 outerRingOffset:1.0 ringThickness:5.0 ringInterspacing:1.0];
  v15[4] = v2;
  v3 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Phone Social Friend List medium" width:48.0 outerRingOffset:1.0 ringThickness:5.5 ringInterspacing:1.0];
  v15[5] = v3;
  v4 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Phone Social Friend List large" width:52.0 outerRingOffset:1.0 ringThickness:6.0 ringInterspacing:1.0];
  v15[6] = v4;
  v5 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Watch Social Friends View" width:62.0 outerRingOffset:0.0 ringThickness:6.0 ringInterspacing:3.0];
  v15[7] = v5;
  v6 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Phone Social Friends View" width:128.0 outerRingOffset:0.0 ringThickness:13.0 ringInterspacing:1.5];
  v15[8] = v6;
  v7 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"There's no directives here so this value make them look better" width:200.0 outerRingOffset:0.0 ringThickness:18.0 ringInterspacing:3.0];
  v15[9] = v7;
  v8 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"CHSharingRingImageForActivitySummaryDateWheelchairUser" width:816.0 outerRingOffset:0.0 ringThickness:111.0 ringInterspacing:6.0];
  v15[10] = v8;
  v9 = [_HKActivityRingViewSizingDirective activityRingSizingDirectiveWithIdentifier:@"Upper sentinel" width:2000.0 outerRingOffset:0.0 ringThickness:200.0 ringInterspacing:16.0];
  v15[11] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:12];
  v11 = sortedRingRatioDirectives_sortedRingRatioDirectives;
  sortedRingRatioDirectives_sortedRingRatioDirectives = v10;

  v12 = *MEMORY[0x277D85DE8];
}

@end