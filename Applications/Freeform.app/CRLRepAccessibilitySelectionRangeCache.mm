@interface CRLRepAccessibilitySelectionRangeCache
- (BOOL)isSafeToRestoreSelectionInRep:(id)rep;
- (CRLRepAccessibilitySelectionRangeCache)initWithRep:(id)rep selectedRangeInStorage:(_NSRange)storage;
- (_NSRange)rangeInStorage;
- (id)description;
@end

@implementation CRLRepAccessibilitySelectionRangeCache

- (CRLRepAccessibilitySelectionRangeCache)initWithRep:(id)rep selectedRangeInStorage:(_NSRange)storage
{
  length = storage.length;
  location = storage.location;
  v7.receiver = self;
  v7.super_class = CRLRepAccessibilitySelectionRangeCache;
  result = [(CRLRepAccessibilitySelectionRangeCache *)&v7 init];
  if (result)
  {
    result->_rangeInStorage.location = location;
    result->_rangeInStorage.length = length;
  }

  return result;
}

- (BOOL)isSafeToRestoreSelectionInRep:(id)rep
{
  repCopy = rep;
  crlaxStorage = [repCopy crlaxStorage];
  crlaxRange = [crlaxStorage crlaxRange];
  v8 = v7;
  rangeInStorage = [(CRLRepAccessibilitySelectionRangeCache *)self rangeInStorage];
  if (crlaxRange > rangeInStorage)
  {
    v11 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v12 = &crlaxRange[v8];
  v13 = &rangeInStorage[v10];

  if (v12 >= v13)
  {
    versionNumber = [(CRLRepAccessibilitySelectionRangeCache *)self versionNumber];
    crlaxStorage = [repCopy crlaxStorage];
    v11 = versionNumber == [crlaxStorage crlaxChangeCount];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v9.location = [(CRLRepAccessibilitySelectionRangeCache *)self rangeInStorage];
  v5 = NSStringFromRange(v9);
  v6 = [NSString stringWithFormat:@"<%@: %p Range: %@; Version: %lu>", v4, self, v5, [(CRLRepAccessibilitySelectionRangeCache *)self versionNumber]];;

  return v6;
}

- (_NSRange)rangeInStorage
{
  length = self->_rangeInStorage.length;
  location = self->_rangeInStorage.location;
  result.length = length;
  result.location = location;
  return result;
}

@end