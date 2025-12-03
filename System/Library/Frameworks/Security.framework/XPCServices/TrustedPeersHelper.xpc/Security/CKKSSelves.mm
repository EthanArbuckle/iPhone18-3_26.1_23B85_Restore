@interface CKKSSelves
- (CKKSSelves)initWithCurrent:(id)current allSelves:(id)selves;
- (id)description;
@end

@implementation CKKSSelves

- (id)description
{
  allSelves = [(CKKSSelves *)self allSelves];
  v4 = [allSelves mutableCopy];

  currentSelf = [(CKKSSelves *)self currentSelf];
  [(__CFString *)v4 removeObject:currentSelf];

  currentSelf2 = [(CKKSSelves *)self currentSelf];
  v7 = [(__CFString *)v4 count];
  v8 = @"(no past selves)";
  if (v7)
  {
    v8 = v4;
  }

  v9 = [NSString stringWithFormat:@"<CKKSSelves: %@ %@>", currentSelf2, v8];

  return v9;
}

- (CKKSSelves)initWithCurrent:(id)current allSelves:(id)selves
{
  currentCopy = current;
  selvesCopy = selves;
  v14.receiver = self;
  v14.super_class = CKKSSelves;
  v9 = [(CKKSSelves *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentSelf, current);
    if (selvesCopy)
    {
      v11 = [selvesCopy setByAddingObject:currentCopy];
    }

    else
    {
      if (currentCopy)
      {
        [NSSet setWithObject:currentCopy];
      }

      else
      {
        +[NSSet set];
      }
      v11 = ;
    }

    allSelves = v10->_allSelves;
    v10->_allSelves = v11;
  }

  return v10;
}

@end