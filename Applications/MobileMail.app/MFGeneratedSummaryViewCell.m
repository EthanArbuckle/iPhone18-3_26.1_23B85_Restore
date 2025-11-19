@interface MFGeneratedSummaryViewCell
- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)a3;
- (ConversationCellViewModel)viewModel;
- (MFGeneratedSummaryViewCellDelegate)delegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (id)presentingViewControllerForSummaryViewManager:(id)a3;
- (void)_displayMetricsDidChange;
- (void)beginSummarizing;
- (void)prepareForReuse;
- (void)setDelegate:(id)a3;
- (void)setViewModel:(id)a3;
- (void)summaryViewManagerDidUpdateSummaryViewSize:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation MFGeneratedSummaryViewCell

- (MFGeneratedSummaryViewCellDelegate)delegate
{
  _objc_retain(self);
  v4 = GeneratedSummaryViewCell.delegate.getter();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  _objc_retain(self);
  GeneratedSummaryViewCell.delegate.setter();
  _objc_release(self);
}

- (ConversationCellViewModel)viewModel
{
  _objc_retain(self);
  v4 = GeneratedSummaryViewCell.viewModel.getter();
  _objc_release(self);

  return v4;
}

- (void)setViewModel:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  GeneratedSummaryViewCell.viewModel.setter(a3);
  _objc_release(self);
}

- (void)beginSummarizing
{
  _objc_retain(self);
  GeneratedSummaryViewCell.beginSummarizing()();
  _objc_release(self);
}

- (void)_displayMetricsDidChange
{
  _objc_retain(self);
  GeneratedSummaryViewCell._displayMetricsDidChange()();
  _objc_release(self);
}

- (void)prepareForReuse
{
  _objc_retain(self);
  GeneratedSummaryViewCell.prepareForReuse()();
  _objc_release(self);
}

- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)a3
{
  _objc_retain(self);
  GeneratedSummaryViewCell.canBeginDragWithTouch(at:)();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  isa = GeneratedSummaryViewCell.preferredLayoutAttributesFitting(_:)(a3).super.isa;
  _objc_release(self);
  _objc_release(a3);

  return isa;
}

- (void)willMoveToWindow:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v6.value.super.super.super.isa = a3;
  GeneratedSummaryViewCell.willMove(toWindow:)(v6);
  _objc_release(self);
  _objc_release(a3);
}

- (id)presentingViewControllerForSummaryViewManager:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  v7 = GeneratedSummaryViewCell.presentingViewController(for:)();
  _objc_release(self);
  _objc_release(a3);

  return v7;
}

- (void)summaryViewManagerDidUpdateSummaryViewSize:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  GeneratedSummaryViewCell.summaryViewManagerDidUpdateSummaryViewSize(_:)();
  _objc_release(self);
  _objc_release(a3);
}

@end