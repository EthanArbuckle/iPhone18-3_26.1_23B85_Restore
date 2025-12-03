@interface CRLCommandSelectionBehavior
- (CRLCommandSelectionBehavior)initWithCommitSelectionPath:(id)path forwardSelectionPath:(id)selectionPath reverseSelectionPath:(id)reverseSelectionPath usePersistableCommitSelectionPath:(BOOL)commitSelectionPath;
- (CRLCommandSelectionBehavior)initWithForwardSelectionPath:(id)path reverseSelectionPath:(id)selectionPath selectionFlags:(unint64_t)flags commitSelectionFlags:(unint64_t)selectionFlags forwardSelectionFlags:(unint64_t)forwardSelectionFlags reverseSelectionFlags:(unint64_t)reverseSelectionFlags;
- (CRLCommandSelectionBehavior)initWithPersistableForwardSelectionPath:(id)path persistableReverseSelectionPath:(id)selectionPath commitSelectionPath:(id)commitSelectionPath selectionFlags:(unint64_t)flags commitSelectionFlags:(unint64_t)selectionFlags forwardSelectionFlags:(unint64_t)forwardSelectionFlags reverseSelectionFlags:(unint64_t)reverseSelectionFlags;
- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)behavior;
- (void)setCommitSelectionPath:(id)path;
- (void)setForwardSelectionPath:(id)path;
- (void)setReverseSelectionPath:(id)path;
@end

@implementation CRLCommandSelectionBehavior

- (CRLCommandSelectionBehavior)initWithPersistableForwardSelectionPath:(id)path persistableReverseSelectionPath:(id)selectionPath commitSelectionPath:(id)commitSelectionPath selectionFlags:(unint64_t)flags commitSelectionFlags:(unint64_t)selectionFlags forwardSelectionFlags:(unint64_t)forwardSelectionFlags reverseSelectionFlags:(unint64_t)reverseSelectionFlags
{
  pathCopy = path;
  selectionPathCopy = selectionPath;
  commitSelectionPathCopy = commitSelectionPath;
  v22.receiver = self;
  v22.super_class = CRLCommandSelectionBehavior;
  v19 = [(CRLCommandSelectionBehavior *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_persistableForwardSelectionPath, path);
    objc_storeStrong(&v20->_persistableReverseSelectionPath, selectionPath);
    objc_storeStrong(&v20->_commitSelectionPath, commitSelectionPath);
    v20->_selectionFlags = flags;
    v20->_additionalForwardSelectionFlags = forwardSelectionFlags;
    v20->_additionalReverseSelectionFlags = reverseSelectionFlags;
    v20->_additionalCommitSelectionFlags = selectionFlags;
    v20->_usePersistableCommitSelectionPath = 0;
  }

  return v20;
}

- (CRLCommandSelectionBehavior)initWithForwardSelectionPath:(id)path reverseSelectionPath:(id)selectionPath selectionFlags:(unint64_t)flags commitSelectionFlags:(unint64_t)selectionFlags forwardSelectionFlags:(unint64_t)forwardSelectionFlags reverseSelectionFlags:(unint64_t)reverseSelectionFlags
{
  selectionPathCopy = selectionPath;
  pathCopy = path;
  v16 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:pathCopy];
  v17 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:selectionPathCopy];

  v18 = [(CRLCommandSelectionBehavior *)self initWithPersistableForwardSelectionPath:v16 persistableReverseSelectionPath:v17 commitSelectionPath:pathCopy selectionFlags:flags commitSelectionFlags:selectionFlags forwardSelectionFlags:forwardSelectionFlags reverseSelectionFlags:reverseSelectionFlags];
  return v18;
}

- (CRLCommandSelectionBehavior)initWithCommitSelectionPath:(id)path forwardSelectionPath:(id)selectionPath reverseSelectionPath:(id)reverseSelectionPath usePersistableCommitSelectionPath:(BOOL)commitSelectionPath
{
  commitSelectionPathCopy = commitSelectionPath;
  pathCopy = path;
  v11 = [(CRLCommandSelectionBehavior *)self initWithForwardSelectionPath:selectionPath reverseSelectionPath:reverseSelectionPath];
  v12 = v11;
  if (v11)
  {
    [(CRLCommandSelectionBehavior *)v11 setUsePersistableCommitSelectionPath:commitSelectionPathCopy];
    [(CRLCommandSelectionBehavior *)v12 setCommitSelectionPath:pathCopy];
  }

  return v12;
}

- (void)setCommitSelectionPath:(id)path
{
  pathCopy = path;
  if (self->_commitSelectionPath != pathCopy)
  {
    objc_storeStrong(&self->_commitSelectionPath, path);
  }

  if ([(CRLCommandSelectionBehavior *)self usePersistableCommitSelectionPath])
  {
    v5 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:pathCopy];
    persistableCommitSelectionPath = self->_persistableCommitSelectionPath;
    self->_persistableCommitSelectionPath = v5;
  }
}

- (void)setForwardSelectionPath:(id)path
{
  pathCopy = path;
  v4 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:pathCopy];
  if (v4 != self->_persistableForwardSelectionPath)
  {
    v5 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:self->_commitSelectionPath];
    if (v5 == self->_persistableForwardSelectionPath)
    {
      [(CRLCommandSelectionBehavior *)self setCommitSelectionPath:pathCopy];
    }

    objc_storeStrong(&self->_persistableForwardSelectionPath, v4);
  }
}

- (void)setReverseSelectionPath:(id)path
{
  pathCopy = path;
  v5 = [[_TtC8Freeform27CRLPersistableSelectionPath alloc] initWithSelectionPath:pathCopy];

  persistableReverseSelectionPath = self->_persistableReverseSelectionPath;
  self->_persistableReverseSelectionPath = v5;
}

- (id)commandSelectionBehaviorByCoalescingWithCommandSelectionBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v5 = [CRLCommandSelectionBehavior alloc];
  persistableForwardSelectionPath = [behaviorCopy persistableForwardSelectionPath];
  persistableReverseSelectionPath = [(CRLCommandSelectionBehavior *)self persistableReverseSelectionPath];
  commitSelectionPath = [(CRLCommandSelectionBehavior *)self commitSelectionPath];
  selectionFlags = [(CRLCommandSelectionBehavior *)self selectionFlags];
  additionalForwardSelectionFlags = [behaviorCopy additionalForwardSelectionFlags];

  v11 = [(CRLCommandSelectionBehavior *)v5 initWithPersistableForwardSelectionPath:persistableForwardSelectionPath persistableReverseSelectionPath:persistableReverseSelectionPath commitSelectionPath:commitSelectionPath selectionFlags:selectionFlags commitSelectionFlags:0 forwardSelectionFlags:additionalForwardSelectionFlags reverseSelectionFlags:[(CRLCommandSelectionBehavior *)self additionalReverseSelectionFlags]];

  return v11;
}

@end