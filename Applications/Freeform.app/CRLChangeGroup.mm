@interface CRLChangeGroup
- (CRLChangeGroup)init;
- (CRLChangeGroup)initWithChangesArray:(id)array;
- (NSArray)changesArray;
- (id)copyWithZone:(_NSZone *)zone;
- (void)registerChange:(unsigned int)change details:(id)details forChangeSource:(id)source;
@end

@implementation CRLChangeGroup

- (CRLChangeGroup)initWithChangesArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = CRLChangeGroup;
  v6 = [(CRLChangeGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changesArray, array);
  }

  return v7;
}

- (CRLChangeGroup)init
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(CRLChangeGroup *)self initWithChangesArray:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(NSMutableArray *)self->_changesArray mutableCopy];
  v6 = [v4 initWithChangesArray:v5];

  return v6;
}

- (NSArray)changesArray
{
  v2 = [(NSMutableArray *)self->_changesArray copy];

  return v2;
}

- (void)registerChange:(unsigned int)change details:(id)details forChangeSource:(id)source
{
  v6 = *&change;
  detailsCopy = details;
  sourceCopy = source;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v10 = self->_changesArray;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v25;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        changeSource = [v16 changeSource];

        if (changeSource == sourceCopy)
        {
          v18 = v16;

          v13 = v18;
        }
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v19 = [[_TtC8Freeform15CRLChangeRecord alloc] initWithKind:v6 details:detailsCopy];
  if (v13)
  {
    [v13 i_addChange:v19];
  }

  else
  {
    v20 = [CRLChangeEntry alloc];
    v28 = v19;
    v21 = [NSArray arrayWithObjects:&v28 count:1];
    v22 = [(CRLChangeEntry *)v20 initWithChangeSource:sourceCopy changes:v21];

    [(NSMutableArray *)selfCopy->_changesArray addObject:v22];
  }
}

@end