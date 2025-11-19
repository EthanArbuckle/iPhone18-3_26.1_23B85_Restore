@interface _PFFreeMapEntry
- (_PFFreeMapEntry)init;
- (void)dealloc;
@end

@implementation _PFFreeMapEntry

- (_PFFreeMapEntry)init
{
  v4.receiver = self;
  v4.super_class = _PFFreeMapEntry;
  v2 = [(_PFFreeMapEntry *)&v4 init];
  if (v2)
  {
    v2->_owners = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v2;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  owners = self->_owners;
  v4 = [(NSMutableSet *)owners countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(owners);
        }

        [*(*(&v10 + 1) + 8 * i) invalidate];
      }

      v5 = [(NSMutableSet *)owners countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = _PFFreeMapEntry;
  [(_PFFreeMapEntry *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

@end