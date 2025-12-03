@interface NSOrderedCollectionDifference
- (id)mf_groupedInsertionsForCollection:(id)collection;
@end

@implementation NSOrderedCollectionDifference

- (id)mf_groupedInsertionsForCollection:(id)collection
{
  collectionCopy = collection;
  insertions = [(NSOrderedCollectionDifference *)self insertions];
  v5 = [insertions count];

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
  v24 = collectionCopy;
  v17 = v6;
  v25 = v17;
  v7 = objc_retainBlock(v23);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  insertions2 = [(NSOrderedCollectionDifference *)self insertions];
  v9 = [insertions2 countByEnumeratingWithState:&v19 objects:v26 count:16];
  v10 = 0;
  if (!v9)
  {
    index = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_17;
  }

  v11 = *v20;
  index = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(insertions2);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if (index == 0x7FFFFFFFFFFFFFFFLL)
      {
        index = [*(*(&v19 + 1) + 8 * i) index];
LABEL_10:
        ++v10;
        continue;
      }

      if ([*(*(&v19 + 1) + 8 * i) index] == (index + v10))
      {
        goto LABEL_10;
      }

      (v7[2])(v7, index, v10);
      index = [v14 index];
      v10 = 1;
    }

    v9 = [insertions2 countByEnumeratingWithState:&v19 objects:v26 count:16];
  }

  while (v9);
LABEL_17:

  (v7[2])(v7, index, v10);
  v15 = v17;

LABEL_18:

  return v15;
}

@end