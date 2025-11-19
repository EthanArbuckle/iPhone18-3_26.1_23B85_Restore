@interface CRLCommandSelectionBehavior
- (CRLCommandSelectionBehavior)initWithCommitSelectionPath:(id)a3 forwardSelectionPath:(id)a4 reverseSelectionPath:(id)a5 usePersistableCommitSelectionPath:(BOOL)a6;
- (CRLCommandSelectionBehavior)initWithForwardSelectionPath:(id)a3 reverseSelectionPath:(id)a4 selectionFlags:(unint64_t)a5 commitSelectionFlags:(unint64_t)a6 forwardSelectionFlags:(unint64_t)a7 reverseSelectionFlags:(unint64_t)a8;
- (CRLCommandSelectionBehavior)initWithPersistableForwardSelectionPath:(id)a3 persistableReverseSelectionPath:(id)a4 commitSelectionPath:(id)a5 selectionFlags:(unint64_t)a6 commitSelectionFlags:(unint64_t)a7 forwardSelectionFlags:(unint64_t)a8 reverseSelectionFlags:(unint64_t)a9;
- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)a3;
- (void)setCommitSelectionPath:(id)a3;
- (void)setForwardSelectionPath:(id)a3;
- (void)setReverseSelectionPath:(id)a3;
@end

@implementation CRLCommandSelectionBehavior

- (CRLCommandSelectionBehavior)initWithPersistableForwardSelectionPath:(id)a3 persistableReverseSelectionPath:(id)a4 commitSelectionPath:(id)a5 selectionFlags:(unint64_t)a6 commitSelectionFlags:(unint64_t)a7 forwardSelectionFlags:(unint64_t)a8 reverseSelectionFlags:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22.receiver = self;
  v22.super_class = CRLCommandSelectionBehavior;
  v19 = [(CRLCommandSelectionBehavior *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_persistableForwardSelectionPath, a3);
    objc_storeStrong(&v20->_persistableReverseSelectionPath, a4);
    objc_storeStrong(&v20->_commitSelectionPath, a5);
    v20->_selectionFlags = a6;
    v20->_additionalForwardSelectionFlags = a8;
    v20->_additionalReverseSelectionFlags = a9;
    v20->_additionalCommitSelectionFlags = a7;
    v20->_usePersistableCommitSelectionPath = 0;
  }

  return v20;
}

- (CRLCommandSelectionBehavior)initWithForwardSelectionPath:(id)a3 reverseSelectionPath:(id)a4 selectionFlags:(unint64_t)a5 commitSelectionFlags:(unint64_t)a6 forwardSelectionFlags:(unint64_t)a7 reverseSelectionFlags:(unint64_t)a8
{
  v14 = a4;
  v15 = a3;
  v16 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v15];
  v17 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v14];

  v18 = [(CRLCommandSelectionBehavior *)self initWithPersistableForwardSelectionPath:v16 persistableReverseSelectionPath:v17 commitSelectionPath:v15 selectionFlags:a5 commitSelectionFlags:a6 forwardSelectionFlags:a7 reverseSelectionFlags:a8];
  return v18;
}

- (CRLCommandSelectionBehavior)initWithCommitSelectionPath:(id)a3 forwardSelectionPath:(id)a4 reverseSelectionPath:(id)a5 usePersistableCommitSelectionPath:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [(CRLCommandSelectionBehavior *)self initWithForwardSelectionPath:a4 reverseSelectionPath:a5];
  v12 = v11;
  if (v11)
  {
    [(CRLCommandSelectionBehavior *)v11 setUsePersistableCommitSelectionPath:v6];
    [(CRLCommandSelectionBehavior *)v12 setCommitSelectionPath:v10];
  }

  return v12;
}

- (void)setCommitSelectionPath:(id)a3
{
  v7 = a3;
  if (self->_commitSelectionPath != v7)
  {
    objc_storeStrong(&self->_commitSelectionPath, a3);
  }

  if ([(CRLCommandSelectionBehavior *)self usePersistableCommitSelectionPath])
  {
    v5 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v7];
    persistableCommitSelectionPath = self->_persistableCommitSelectionPath;
    self->_persistableCommitSelectionPath = v5;
  }
}

- (void)setForwardSelectionPath:(id)a3
{
  v6 = a3;
  v4 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v6];
  if (v4 != self->_persistableForwardSelectionPath)
  {
    v5 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:self->_commitSelectionPath];
    if (v5 == self->_persistableForwardSelectionPath)
    {
      [(CRLCommandSelectionBehavior *)self setCommitSelectionPath:v6];
    }

    objc_storeStrong(&self->_persistableForwardSelectionPath, v4);
  }
}

- (void)setReverseSelectionPath:(id)a3
{
  v4 = a3;
  v5 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:v4];

  persistableReverseSelectionPath = self->_persistableReverseSelectionPath;
  self->_persistableReverseSelectionPath = v5;
}

- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)a3
{
  v4 = a3;
  v5 = [CRLCommandSelectionBehavior alloc];
  v6 = [v4 persistableForwardSelectionPath];
  v7 = [(CRLCommandSelectionBehavior *)self persistableReverseSelectionPath];
  v8 = [(CRLCommandSelectionBehavior *)self commitSelectionPath];
  v9 = [(CRLCommandSelectionBehavior *)self selectionFlags];
  v10 = [v4 additionalForwardSelectionFlags];

  v11 = [(CRLCommandSelectionBehavior *)v5 initWithPersistableForwardSelectionPath:v6 persistableReverseSelectionPath:v7 commitSelectionPath:v8 selectionFlags:v9 commitSelectionFlags:0 forwardSelectionFlags:v10 reverseSelectionFlags:[(CRLCommandSelectionBehavior *)self additionalReverseSelectionFlags]];

  return v11;
}

@end