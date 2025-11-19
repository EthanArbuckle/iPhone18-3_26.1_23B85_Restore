@interface UpdateCoalescingCollectionView
- (BOOL)canBecomeFirstResponder;
- (CGRect)bounds;
- (CGSize)contentSize;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)performBatchUpdates:(id)a3 completion:(id)a4;
- (void)safeAreaInsetsDidChange;
- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentSize:(CGSize)a3;
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
  v2 = self;
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  updated = type metadata accessor for UpdateCoalescingCollectionView(0);
  v13.receiver = self;
  v13.super_class = updated;
  v7 = self;
  [(UpdateCoalescingCollectionView *)&v13 contentSize];
  v9 = v8;
  v11 = v10;
  v12.receiver = v7;
  v12.super_class = updated;
  [(UpdateCoalescingCollectionView *)&v12 setContentSize:width, height];
  UpdateCoalescingCollectionView.contentSize.didset(v9, v11);
}

- (void)didMoveToWindow
{
  v2 = self;
  UpdateCoalescingCollectionView.didMoveToWindow()();
}

- (void)safeAreaInsetsDidChange
{
  v2 = self;
  UpdateCoalescingCollectionView.safeAreaInsetsDidChange()();
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  UpdateCoalescingCollectionView.bounds.setter(x, y, width, height);
}

- (BOOL)canBecomeFirstResponder
{
  v2 = self;
  updated = UpdateCoalescingCollectionView.canBecomeFirstResponder.getter();

  return updated & 1;
}

- (void)performBatchUpdates:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
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
  v12 = self;
  UpdateCoalescingCollectionView.performBatchUpdates(_:completion:)(v6, v9, v11, v10);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
}

- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  UpdateCoalescingCollectionView.setAccessory(_:at:)(v6, a4);
}

@end