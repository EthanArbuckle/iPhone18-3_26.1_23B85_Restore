@interface LibraryQueryPlanner
- (void)visitPredicate:(id)predicate;
@end

@implementation LibraryQueryPlanner

- (void)visitPredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = predicateCopy;
    subpredicates = [v5 subpredicates];
    v7 = [subpredicates count];

    if (v7)
    {
      v8 = sub_100279DE4(self->_stack, v7);
      if ([v5 compoundPredicateType] == 1)
      {
        v9 = [LibraryLazyResultsEnumerator alloc];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100341D18;
        v24[3] = &unk_100523EC8;
        v25 = v8;
        v27 = v7;
        v26 = v5;
        v10 = sub_1002669D8(v9, 1, v24);
        stack = self->_stack;
        if (stack)
        {
          [(NSMutableArray *)stack addObject:v10];
        }

        v12 = v25;
      }

      else if ([v5 compoundPredicateType] == 2)
      {
        v14 = [LibraryLazyResultsEnumerator alloc];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_100341EC8;
        v22[3] = &unk_100523EF0;
        v23 = v8;
        v15 = sub_1002669D8(v14, 2, v22);
        v16 = self->_stack;
        if (v16)
        {
          [(NSMutableArray *)v16 addObject:v15];
        }

        v12 = v23;
      }

      else
      {
        classifier = self->_classifier;
        v21 = 0;
        v18 = sub_100213CF4(classifier, v5, &v21);
        v12 = v21;
        v19 = self->_stack;
        if (v18)
        {
          if (v19)
          {
            [(NSMutableArray *)v19 addObject:v18];
          }
        }

        else
        {
          v20 = sub_100214708([LibraryErrorResultEnumerator alloc], v12);
          if (v19)
          {
            [(NSMutableArray *)v19 addObject:v20];
          }
        }
      }
    }
  }

  else
  {
    v5 = sub_100213CF4(self->_classifier, predicateCopy, 0);
    if (v5)
    {
      v13 = self->_stack;
      if (v13)
      {
        [(NSMutableArray *)v13 addObject:v5];
      }
    }
  }
}

@end