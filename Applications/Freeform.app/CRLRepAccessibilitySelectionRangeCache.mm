@interface CRLRepAccessibilitySelectionRangeCache
- (BOOL)isSafeToRestoreSelectionInRep:(id)a3;
- (CRLRepAccessibilitySelectionRangeCache)initWithRep:(id)a3 selectedRangeInStorage:(_NSRange)a4;
- (_NSRange)rangeInStorage;
- (id)description;
@end

@implementation CRLRepAccessibilitySelectionRangeCache

- (CRLRepAccessibilitySelectionRangeCache)initWithRep:(id)a3 selectedRangeInStorage:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
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

- (BOOL)isSafeToRestoreSelectionInRep:(id)a3
{
  v4 = a3;
  v5 = [v4 crlaxStorage];
  v6 = [v5 crlaxRange];
  v8 = v7;
  v9 = [(CRLRepAccessibilitySelectionRangeCache *)self rangeInStorage];
  if (v6 > v9)
  {
    v11 = 0;
LABEL_6:

    goto LABEL_7;
  }

  v12 = &v6[v8];
  v13 = &v9[v10];

  if (v12 >= v13)
  {
    v14 = [(CRLRepAccessibilitySelectionRangeCache *)self versionNumber];
    v5 = [v4 crlaxStorage];
    v11 = v14 == [v5 crlaxChangeCount];
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