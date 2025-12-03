@interface UpdateCoalescingCollectionView
- (BOOL)canBecomeFirstResponder;
- (CGRect)bounds;
- (CGSize)contentSize;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)safeAreaInsetsDidChange;
- (void)setAccessoryView:(id)view atEdge:(int64_t)edge;
- (void)setBounds:(CGRect)bounds;
- (void)setContentSize:(CGSize)size;
@end

@implementation UpdateCoalescingCollectionView

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  [(UpdateCoalescingCollectionView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  UpdateCoalescingCollectionView.layoutSubviews()();
}

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UpdateCoalescingCollectionView(0);
  [(UpdateCoalescingCollectionView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  updated = type metadata accessor for UpdateCoalescingCollectionView(0);
  v13.receiver = self;
  v13.super_class = updated;
  selfCopy = self;
  [(UpdateCoalescingCollectionView *)&v13 contentSize];
  v9 = v8;
  v11 = v10;
  v12.receiver = selfCopy;
  v12.super_class = updated;
  [(UpdateCoalescingCollectionView *)&v12 setContentSize:width, height];
  UpdateCoalescingCollectionView.contentSize.didset(v9, v11);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  UpdateCoalescingCollectionView.didMoveToWindow()();
}

- (void)safeAreaInsetsDidChange
{
  selfCopy = self;
  UpdateCoalescingCollectionView.safeAreaInsetsDidChange()();
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  selfCopy = self;
  UpdateCoalescingCollectionView.bounds.setter(x, y, width, height);
}

- (BOOL)canBecomeFirstResponder
{
  selfCopy = self;
  updated = UpdateCoalescingCollectionView.canBecomeFirstResponder.getter();

  return updated & 1;
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
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
    if (v8)
    {
LABEL_3:
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
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
  UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(v6, v9, v11, v10);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
}

- (void)setAccessoryView:(id)view atEdge:(int64_t)edge
{
  viewCopy = view;
  selfCopy = self;
  UpdateCoalescingCollectionView.setAccessory(_:at:)(viewCopy, edge);
}

@end