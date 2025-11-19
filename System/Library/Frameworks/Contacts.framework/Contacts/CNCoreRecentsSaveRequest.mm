@interface CNCoreRecentsSaveRequest
- (id)deletedRecentContacts;
- (void)deleteRecentContact:(id)a3;
- (void)deleteRecentContacts:(id)a3;
@end

@implementation CNCoreRecentsSaveRequest

- (void)deleteRecentContact:(id)a3
{
  v10 = a3;
  v4 = [v10 coreRecentsDomain];
  if (v4)
  {
    v5 = v4;
    v6 = [v10 coreRecentsIdentifier];

    if (v6)
    {
      mutableDeletedRecentContacts = self->_mutableDeletedRecentContacts;
      if (!mutableDeletedRecentContacts)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v9 = self->_mutableDeletedRecentContacts;
        self->_mutableDeletedRecentContacts = v8;

        mutableDeletedRecentContacts = self->_mutableDeletedRecentContacts;
      }

      [(NSMutableSet *)mutableDeletedRecentContacts addObject:v10];
    }
  }
}

- (void)deleteRecentContacts:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__CNCoreRecentsSaveRequest_deleteRecentContacts___block_invoke;
  v3[3] = &unk_1E7413820;
  v3[4] = self;
  [a3 _cn_each:v3];
}

- (id)deletedRecentContacts
{
  v2 = [(NSMutableSet *)self->_mutableDeletedRecentContacts copy];

  return v2;
}

@end