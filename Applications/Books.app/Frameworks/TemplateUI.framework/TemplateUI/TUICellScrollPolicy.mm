@interface TUICellScrollPolicy
- (TUICellScrollPolicy)initWithCells:(const void *)a3;
- (id).cxx_construct;
- (id)newScrollableObserverInstanceWithView:(id)a3 host:(id)a4 uuid:(id)a5 uid:(id)a6;
@end

@implementation TUICellScrollPolicy

- (TUICellScrollPolicy)initWithCells:(const void *)a3
{
  v8.receiver = self;
  v8.super_class = TUICellScrollPolicy;
  v4 = [(TUICellScrollPolicy *)&v8 init];
  p_cells = &v4->_cells;
  if (v4)
  {
    v6 = p_cells == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_15CBE0(p_cells, *a3, *(a3 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 1) - *a3) >> 3));
  }

  return v4;
}

- (id)newScrollableObserverInstanceWithView:(id)a3 host:(id)a4 uuid:(id)a5 uid:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [[_TUICellScrollObserver alloc] initWithPolicy:self view:v10 host:v11 uuid:v12 uid:v13];

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