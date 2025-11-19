@interface PKDrawingPaletteStatisticsEventLogger
- (void)recordHandwritingToolSelected;
- (void)recordHandwritingToolUsedOverDrawingAttachmentWithTimestamp:(double)a3;
- (void)recordInkingToolUsedOverNonDrawingAttachmentWithTimestamp:(double)a3;
@end

@implementation PKDrawingPaletteStatisticsEventLogger

- (void)recordHandwritingToolSelected
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"handwritingtool.selected"];
  AnalyticsSendEventLazy();
}

- (void)recordHandwritingToolUsedOverDrawingAttachmentWithTimestamp:(double)a3
{
  [(PKDrawingPaletteStatisticsEventLogger *)self lastHandwritingToolUsedOverDrawingAttachmentTimestamp];
  if (v5 != a3 && vabdd_f64(v5, a3) >= fabs(a3 * 1.0e-10))
  {
    [(PKDrawingPaletteStatisticsEventLogger *)self setLastHandwritingToolUsedOverDrawingAttachmentTimestamp:a3];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"handwritingtool.usedOverDrawingAttachment"];
    AnalyticsSendEventLazy();
  }
}

- (void)recordInkingToolUsedOverNonDrawingAttachmentWithTimestamp:(double)a3
{
  [(PKDrawingPaletteStatisticsEventLogger *)self lastInkingToolUsedOverNonDrawingAttachmentTimestamp];
  if (v5 != a3 && vabdd_f64(v5, a3) >= fabs(a3 * 1.0e-10))
  {
    [(PKDrawingPaletteStatisticsEventLogger *)self setLastInkingToolUsedOverNonDrawingAttachmentTimestamp:a3];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pencilkit.%@", @"inkingtool.usedOverNonDrawingAttachment"];
    AnalyticsSendEventLazy();
  }
}

@end