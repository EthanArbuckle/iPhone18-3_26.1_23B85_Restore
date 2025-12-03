@interface CRLChangeEntry
- (CRLChangeEntry)initWithChangeSource:(id)source changes:(id)changes;
- (void)i_addChange:(id)change;
@end

@implementation CRLChangeEntry

- (CRLChangeEntry)initWithChangeSource:(id)source changes:(id)changes
{
  sourceCopy = source;
  changesCopy = changes;
  v14.receiver = self;
  v14.super_class = CRLChangeEntry;
  v9 = [(CRLChangeEntry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_changeSource, source);
    v11 = [changesCopy copy];
    changes = v10->_changes;
    v10->_changes = v11;
  }

  return v10;
}

- (void)i_addChange:(id)change
{
  v4 = [(NSArray *)self->_changes arrayByAddingObject:change];
  changes = self->_changes;
  self->_changes = v4;
}

@end