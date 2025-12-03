@interface TUIRenderUpdateChanges
- (id)copyWithZone:(_NSZone *)zone;
- (void)unionChanges:(id)changes;
- (void)unionInserts:(id)inserts;
@end

@implementation TUIRenderUpdateChanges

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TUIRenderUpdateChanges allocWithZone:?]];
  if (v4)
  {
    v5 = [(NSSet *)self->_inserts copy];
    inserts = v4->_inserts;
    v4->_inserts = v5;

    v7 = [(NSSet *)self->_updates copy];
    updates = v4->_updates;
    v4->_updates = v7;

    v9 = [(NSSet *)self->_deletes copy];
    deletes = v4->_deletes;
    v4->_deletes = v9;
  }

  return v4;
}

- (void)unionChanges:(id)changes
{
  changesCopy = changes;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableSet);
  [(NSSet *)v5 unionSet:self->_inserts];
  inserts = [changesCopy inserts];
  [(NSSet *)v5 unionSet:inserts];

  [(NSSet *)v6 unionSet:self->_updates];
  updates = [changesCopy updates];
  [(NSSet *)v6 unionSet:updates];

  [(NSSet *)v7 unionSet:self->_deletes];
  deletes = [changesCopy deletes];

  [(NSSet *)v7 unionSet:deletes];
  inserts = self->_inserts;
  self->_inserts = v5;
  v15 = v5;

  updates = self->_updates;
  self->_updates = v6;
  v13 = v6;

  deletes = self->_deletes;
  self->_deletes = v7;
}

- (void)unionInserts:(id)inserts
{
  insertsCopy = inserts;
  v5 = [[NSMutableSet alloc] initWithArray:insertsCopy];

  [(NSSet *)v5 unionSet:self->_inserts];
  inserts = self->_inserts;
  self->_inserts = v5;
}

@end