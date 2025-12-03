@interface PKDrawingPaletteStatisticsEventLogger
- (void)recordHandwritingToolSelected;
- (void)recordHandwritingToolUsedOverDrawingAttachmentWithTimestamp:(double)timestamp;
- (void)recordInkingToolUsedOverNonDrawingAttachmentWithTimestamp:(double)timestamp;
@end

@implementation PKDrawingPaletteStatisticsEventLogger

- (void)recordHandwritingToolSelected
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"handwritingtool.selected"];
  AnalyticsSendEventLazy();
}

- (void)recordHandwritingToolUsedOverDrawingAttachmentWithTimestamp:(double)timestamp
{
  [(PKDrawingPaletteStatisticsEventLogger *)self lastHandwritingToolUsedOverDrawingAttachmentTimestamp];
  if (v5 != timestamp && vabdd_f64(v5, timestamp) >= fabs(timestamp * 1.0e-10))
  {
    [(PKDrawingPaletteStatisticsEventLogger *)self setLastHandwritingToolUsedOverDrawingAttachmentTimestamp:timestamp];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"handwritingtool.usedOverDrawingAttachment"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordInkingToolUsedOverNonDrawingAttachmentWithTimestamp:(double)timestamp
{
  [(PKDrawingPaletteStatisticsEventLogger *)self lastInkingToolUsedOverNonDrawingAttachmentTimestamp];
  if (v5 != timestamp && vabdd_f64(v5, timestamp) >= fabs(timestamp * 1.0e-10))
  {
    [(PKDrawingPaletteStatisticsEventLogger *)self setLastInkingToolUsedOverNonDrawingAttachmentTimestamp:timestamp];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"inkingtool.usedOverNonDrawingAttachment"];
    AnalyticsSendEventLazy();
  }
}

@end