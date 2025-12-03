@interface UpdateCoalescingTableView
- (BOOL)_sectionContentInsetFollowsLayoutMargins;
- (CGRect)bounds;
- (double)_alignedContentMarginGivenMargin:(double)result;
- (double)_rowSpacing;
- (void)_setSectionContentInsetFollowsLayoutMargins:(BOOL)margins;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)safeAreaInsetsDidChange;
- (void)setBounds:(CGRect)bounds;
@end

@implementation UpdateCoalescingTableView

- (BOOL)_sectionContentInsetFollowsLayoutMargins
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateCoalescingTableView();
  return [(UpdateCoalescingTableView *)&v3 _sectionContentInsetFollowsLayoutMargins];
}

- (void)_setSectionContentInsetFollowsLayoutMargins:(BOOL)margins
{
  marginsCopy = margins;
  selfCopy = self;
  if ([(UpdateCoalescingTableView *)selfCopy _sectionContentInsetFollowsLayoutMargins]== marginsCopy)
  {
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = type metadata accessor for UpdateCoalescingTableView();
    [(UpdateCoalescingTableView *)&v5 _setSectionContentInsetFollowsLayoutMargins:marginsCopy];
  }
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for UpdateCoalescingTableView();
  [(UpdateCoalescingTableView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  UpdateCoalescingTableView.bounds.setter(x, y, width, height);
}

- (void)layoutMarginsDidChange
{
  selfCopy = self;
  UpdateCoalescingTableView.layoutMarginsDidChange()(&selRef_layoutMarginsDidChange);
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  UpdateCoalescingTableView.layoutMarginsDidChange()(&selRef_safeAreaInsetsDidChange);
}

- (double)_alignedContentMarginGivenMargin:(double)result
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_isSidebarStyle))
  {
    return result + 8.0;
  }

  return result;
}

- (double)_rowSpacing
{
  if ((*(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_rowSpacing) & 1) == 0)
  {
    return *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_rowSpacing);
  }

  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateCoalescingTableView();
  [(UpdateCoalescingTableView *)&v3 _rowSpacing];
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UpdateCoalescingTableView();
  v2 = v3.receiver;
  [(UpdateCoalescingTableView *)&v3 layoutSubviews];
  UpdateCoalescingTableView.updateInsetStyleIfNeeded()();
  UpdateCoalescingTableView.updateAlignmentInsetsIfNeeded()();
  UpdateCoalescingTableView.updateVisibleCellsIfNeeded()();
  UpdateCoalescingTableView.updateContent()();
}

- (void)performBatchUpdates:(id)updates completion:(id)completion
{
  v6 = _Block_copy(updates);
  v7 = _Block_copy(completion);
  v8 = v7;
  if (v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    v6 = _sIeyB_Ieg_TRTA_0;
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Bool) -> ();
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_6:
  selfCopy = self;
  UpdateCoalescingTableView.performBatchUpdates(_:completion:)(v6, v9, v11, v10);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
}

@end