@interface CRLChangeEntry
- (CRLChangeEntry)initWithChangeSource:(id)a3 changes:(id)a4;
- (void)i_addChange:(id)a3;
@end

@implementation CRLChangeEntry

- (CRLChangeEntry)initWithChangeSource:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CRLChangeEntry;
  v9 = [(CRLChangeEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_changeSource, a3);
    v11 = [v8 copy];
    changes = v10->_changes;
    v10->_changes = v11;
  }

  return v10;
}

- (void)i_addChange:(id)a3
{
  v4 = [(NSArray *)self->_changes arrayByAddingObject:a3];
  changes = self->_changes;
  self->_changes = v4;
}

@end