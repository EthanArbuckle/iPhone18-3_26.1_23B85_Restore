@interface MFGeneratedSummaryViewCell
- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)point;
- (ConversationCellViewModel)viewModel;
- (MFGeneratedSummaryViewCellDelegate)delegate;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (id)presentingViewControllerForSummaryViewManager:(id)manager;
- (void)_displayMetricsDidChange;
- (void)beginSummarizing;
- (void)prepareForReuse;
- (void)setDelegate:(id)delegate;
- (void)setViewModel:(id)model;
- (void)summaryViewManagerDidUpdateSummaryViewSize:(id)size;
- (void)willMoveToWindow:(id)window;
@end

@implementation MFGeneratedSummaryViewCell

- (MFGeneratedSummaryViewCellDelegate)delegate
{
  _objc_retain(self);
  v4 = GeneratedSummaryViewCell.delegate.getter();
  _objc_release(self);

  return v4;
}

- (void)setDelegate:(id)delegate
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

- (void)setViewModel:(id)model
{
  _objc_retain(model);
  _objc_retain(self);
  GeneratedSummaryViewCell.viewModel.setter(model);
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

- (BOOL)canBeginDragWithTouchAtPoint:(CGPoint)point
{
  _objc_retain(self);
  GeneratedSummaryViewCell.canBeginDragWithTouch(at:)();
  _objc_release(self);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  _objc_retain(attributes);
  _objc_retain(self);
  isa = GeneratedSummaryViewCell.preferredLayoutAttributesFitting(_:)(attributes).super.isa;
  _objc_release(self);
  _objc_release(attributes);

  return isa;
}

- (void)willMoveToWindow:(id)window
{
  _objc_retain(window);
  _objc_retain(self);
  v6.value.super.super.super.isa = window;
  GeneratedSummaryViewCell.willMove(toWindow:)(v6);
  _objc_release(self);
  _objc_release(window);
}

- (id)presentingViewControllerForSummaryViewManager:(id)manager
{
  _objc_retain(manager);
  _objc_retain(self);
  v7 = GeneratedSummaryViewCell.presentingViewController(for:)();
  _objc_release(self);
  _objc_release(manager);

  return v7;
}

- (void)summaryViewManagerDidUpdateSummaryViewSize:(id)size
{
  _objc_retain(size);
  _objc_retain(self);
  GeneratedSummaryViewCell.summaryViewManagerDidUpdateSummaryViewSize(_:)();
  _objc_release(self);
  _objc_release(size);
}

@end