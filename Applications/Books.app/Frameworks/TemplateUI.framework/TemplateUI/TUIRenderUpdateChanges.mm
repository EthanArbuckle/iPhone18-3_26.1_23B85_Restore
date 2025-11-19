@interface TUIRenderUpdateChanges
- (id)copyWithZone:(_NSZone *)a3;
- (void)unionChanges:(id)a3;
- (void)unionInserts:(id)a3;
@end

@implementation TUIRenderUpdateChanges

- (id)copyWithZone:(_NSZone *)a3
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

- (void)unionChanges:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableSet);
  [(NSSet *)v5 unionSet:self->_inserts];
  v8 = [v4 inserts];
  [(NSSet *)v5 unionSet:v8];

  [(NSSet *)v6 unionSet:self->_updates];
  v9 = [v4 updates];
  [(NSSet *)v6 unionSet:v9];

  [(NSSet *)v7 unionSet:self->_deletes];
  v10 = [v4 deletes];

  [(NSSet *)v7 unionSet:v10];
  inserts = self->_inserts;
  self->_inserts = v5;
  v15 = v5;

  updates = self->_updates;
  self->_updates = v6;
  v13 = v6;

  deletes = self->_deletes;
  self->_deletes = v7;
}

- (void)unionInserts:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableSet alloc] initWithArray:v4];

  [(NSSet *)v5 unionSet:self->_inserts];
  inserts = self->_inserts;
  self->_inserts = v5;
}

@end