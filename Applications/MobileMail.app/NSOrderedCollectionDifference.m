@interface NSOrderedCollectionDifference
- (id)mf_groupedInsertionsForCollection:(id)a3;
@end

@implementation NSOrderedCollectionDifference

- (id)mf_groupedInsertionsForCollection:(id)a3
{
  v18 = a3;
  v4 = [(NSOrderedCollectionDifference *)self insertions];
  v5 = [v4 count];

  if (!v5)
  {
    v15 = &__NSArray0__struct;
    goto LABEL_18;
  }

  v6 = +[NSMutableArray array];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10023E964;
  v23[3] = &unk_100656510;
  v24 = v18;
  v17 = v6;
  v25 = v17;
  v7 = objc_retainBlock(v23);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(NSOrderedCollectionDifference *)self insertions];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v26 count:16];
  v10 = 0;
  if (!v9)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = *v20;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = [*(*(&v19 + 1) + 8 * i) index];
LABEL_10:
        ++v10;
        continue;
      }

      if ([*(*(&v19 + 1) + 8 * i) index] == (v12 + v10))
      {
        goto LABEL_10;
      }

      (v7[2])(v7, v12, v10);
      v12 = [v14 index];
      v10 = 1;
    }

    v9 = [v8 countByEnumeratingWithState:&v19 objects:v26 count:16];
  }

  while (v9);
LABEL_17:

  (v7[2])(v7, v12, v10);
  v15 = v17;

LABEL_18:

  return v15;
}

@end