@interface EKAllDayRow
- (EKAllDayRow)init;
- (id)description;
- (unint64_t)spaceGapFor:(id)a3;
@end

@implementation EKAllDayRow

- (EKAllDayRow)init
{
  v6.receiver = self;
  v6.super_class = EKAllDayRow;
  v2 = [(EKAllDayRow *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    blocks = v2->_blocks;
    v2->_blocks = v3;
  }

  return v2;
}

- (unint64_t)spaceGapFor:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_blocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) gapBetweenBlock:{v4, v13}];
        if (v11 == -1)
        {
          v8 = -1;
          goto LABEL_14;
        }

        if (v11 > v8)
        {
          v8 = v11;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (id)description
{
  v3 = objc_msgSend([NSMutableString alloc], "initWithFormat:", @"<%@: %p>(\n"), objc_opt_class(), self;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(EKAllDayRow *)self occurrenceBlocks];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) description];
        [v3 appendString:v9];

        [v3 appendString:@"\n"];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [v3 appendString:@""]);

  return v3;
}

@end