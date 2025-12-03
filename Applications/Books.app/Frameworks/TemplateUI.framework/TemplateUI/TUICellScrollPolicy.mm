@interface TUICellScrollPolicy
- (TUICellScrollPolicy)initWithCells:(const void *)cells;
- (id).cxx_construct;
- (id)newScrollableObserverInstanceWithView:(id)view host:(id)host uuid:(id)uuid uid:(id)uid;
@end

@implementation TUICellScrollPolicy

- (TUICellScrollPolicy)initWithCells:(const void *)cells
{
  v8.receiver = self;
  v8.super_class = TUICellScrollPolicy;
  v4 = [(TUICellScrollPolicy *)&v8 init];
  p_cells = &v4->_cells;
  if (v4)
  {
    v6 = p_cells == cells;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_15CBE0(p_cells, *cells, *(cells + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(cells + 1) - *cells) >> 3));
  }

  return v4;
}

- (id)newScrollableObserverInstanceWithView:(id)view host:(id)host uuid:(id)uuid uid:(id)uid
{
  viewCopy = view;
  hostCopy = host;
  uuidCopy = uuid;
  uidCopy = uid;
  v14 = [[_TUICellScrollObserver alloc] initWithPolicy:self view:viewCopy host:hostCopy uuid:uuidCopy uid:uidCopy];

  return v14;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end