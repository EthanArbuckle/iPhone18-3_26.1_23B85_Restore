@interface _TUICellScrollObserver
- (_TUICellScrollObserver)initWithPolicy:(id)policy view:(id)view host:(id)host uuid:(id)uuid uid:(id)uid;
- (id)_computeHiddenCells;
- (void)reset;
- (void)updateScrollingWithVisibleBounds:(CGRect)bounds active:(BOOL)active;
@end

@implementation _TUICellScrollObserver

- (_TUICellScrollObserver)initWithPolicy:(id)policy view:(id)view host:(id)host uuid:(id)uuid uid:(id)uid
{
  policyCopy = policy;
  viewCopy = view;
  hostCopy = host;
  uuidCopy = uuid;
  uidCopy = uid;
  v22.receiver = self;
  v22.super_class = _TUICellScrollObserver;
  v18 = [(_TUICellScrollObserver *)&v22 init];
  v19 = v18;
  if (v18)
  {
    v18->_view = viewCopy;
    objc_storeStrong(&v18->_policy, policy);
    renderOverrideProvider = [hostCopy renderOverrideProvider];
    v19->_provider = renderOverrideProvider;

    objc_storeStrong(&v19->_uuid, uuid);
    objc_storeStrong(&v19->_uid, uid);
  }

  return v19;
}

- (void)reset
{
  overrides = self->_overrides;
  if (overrides)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_15C580;
    v6[3] = &unk_262D38;
    v6[4] = self;
    [(NSArray *)overrides enumerateObjectsUsingBlock:v6];
    v4 = self->_overrides;
    self->_overrides = 0;
  }

  self->_active = 0;
  size = CGRectNull.size;
  self->_visibleBounds.origin = CGRectNull.origin;
  self->_visibleBounds.size = size;
}

- (id)_computeHiddenCells
{
  v3 = objc_opt_new();
  cells = [(TUICellScrollPolicy *)self->_policy cells];
  v5 = *cells;
  v6 = cells[1];
  if (*cells != v6)
  {
    v7 = 0;
    do
    {
      v11.origin.x = *v5;
      v11.size.width = v5[2];
      visibleBounds = self->_visibleBounds;
      v11.origin.y = visibleBounds.origin.y;
      v11.size.height = visibleBounds.size.height;
      if (!CGRectIntersectsRect(visibleBounds, v11))
      {
        [v3 addIndex:v7];
      }

      ++v7;
      v5 += 5;
    }

    while (v5 != v6);
  }

  return v3;
}

- (void)updateScrollingWithVisibleBounds:(CGRect)bounds active:(BOOL)active
{
  self->_active = active;
  self->_visibleBounds = bounds;
  cells = [(TUICellScrollPolicy *)self->_policy cells];
  if (self->_active)
  {
    _computeHiddenCells = 0;
  }

  else
  {
    _computeHiddenCells = [(_TUICellScrollObserver *)self _computeHiddenCells];
  }

  hiddenCells = self->_hiddenCells;
  if (hiddenCells != _computeHiddenCells && ![(NSIndexSet *)hiddenCells isEqualToIndexSet:_computeHiddenCells])
  {
    overrides = self->_overrides;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_15C93C;
    v24[3] = &unk_262D38;
    v24[4] = self;
    [(NSArray *)overrides enumerateObjectsUsingBlock:v24];
    objc_storeStrong(&self->_hiddenCells, _computeHiddenCells);
    v9 = self->_overrides;
    self->_overrides = 0;

    if (self->_hiddenCells)
    {
      v10 = objc_opt_new();
      v11 = self->_hiddenCells;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_15C94C;
      v21[3] = &unk_262D60;
      v21[4] = self;
      v23 = cells;
      v12 = v10;
      v22 = v12;
      [(NSIndexSet *)v11 enumerateIndexesUsingBlock:v21];
      v13 = [(NSIndexSet *)_computeHiddenCells mutableCopy];
      [v13 shiftIndexesStartingAtIndex:0 by:1];
      [v13 addIndexes:_computeHiddenCells];
      [v13 removeIndex:0xCCCCCCCCCCCCCCCDLL * ((cells[1] - *cells) >> 3)];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_15CA5C;
      v18[3] = &unk_262D60;
      v18[4] = self;
      v20 = cells;
      v14 = v12;
      v19 = v14;
      [v13 enumerateIndexesUsingBlock:v18];
      v15 = [v14 copy];
      v16 = self->_overrides;
      self->_overrides = v15;
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_15CB6C;
  v17[3] = &unk_262240;
  v17[4] = self;
  [UIView animateWithDuration:v17 animations:0.25];
}

@end