@interface AFChildConversationItemList
- (AFChildConversationItemList)initWithConversation:(id)conversation parentItemIdentifier:(id)identifier;
- (BOOL)itemIsRestoredAtIndex:(int64_t)index;
- (id)_identifierOfItemAtIndex:(int64_t)index;
- (id)_indexPathForItemAtIndex:(int64_t)index;
- (id)_indexPathForLastRestoredItem;
- (id)identifiersForItemsAtIndexes:(id)indexes;
- (id)itemAtIndex:(int64_t)index;
- (id)itemWithIdentifier:(id)identifier;
- (int64_t)numberOfItems;
- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)identifier;
- (void)addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemAtIndex:(int64_t)index;
- (void)removeItemsAtIndexes:(id)indexes;
- (void)removeItemsWithIdentifiers:(id)identifiers;
@end

@implementation AFChildConversationItemList

- (void)_addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  phaseCopy = phase;
  objectsCopy = objects;
  _conversation = [(AFChildConversationItemList *)self _conversation];
  [_conversation addItemsForAceObjects:objectsCopy type:type dialogPhase:phaseCopy asChildrenOfItemWithIdentifier:identifierCopy];
}

- (id)_indexPathForLastRestoredItem
{
  _conversation = [(AFChildConversationItemList *)self _conversation];
  lastRestoredItem = [_conversation lastRestoredItem];
  v4 = lastRestoredItem;
  if (lastRestoredItem && ([lastRestoredItem identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(_conversation, "hasItemWithIdentifier:", v5), v5, v6))
  {
    identifier = [v4 identifier];
    v8 = [_conversation indexPathForItemWithIdentifier:identifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_indexPathForItemAtIndex:(int64_t)index
{
  _conversation = [(AFChildConversationItemList *)self _conversation];
  _parentItemIdentifier = [(AFChildConversationItemList *)self _parentItemIdentifier];
  v7 = [_conversation indexPathForItemWithIdentifier:_parentItemIdentifier];
  v8 = [v7 indexPathByAddingIndex:index];

  return v8;
}

- (id)_identifierOfItemAtIndex:(int64_t)index
{
  v3 = [(AFChildConversationItemList *)self itemAtIndex:index];
  identifier = [v3 identifier];

  return identifier;
}

- (BOOL)itemIsRestoredAtIndex:(int64_t)index
{
  _indexPathForLastRestoredItem = [(AFChildConversationItemList *)self _indexPathForLastRestoredItem];
  if (_indexPathForLastRestoredItem)
  {
    v6 = [(AFChildConversationItemList *)self _indexPathForItemAtIndex:index];
    v7 = [v6 compare:_indexPathForLastRestoredItem] != 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeItemsWithIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E695DFA8];
  identifiersCopy = identifiers;
  v6 = [v4 setWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58__AFChildConversationItemList_removeItemsWithIdentifiers___block_invoke;
  v12 = &unk_1E7349300;
  selfCopy = self;
  v14 = v6;
  v7 = v6;
  [identifiersCopy enumerateObjectsUsingBlock:&v9];

  v8 = [(AFChildConversationItemList *)self _conversation:v9];
  [v8 removeItemsWithIdentifiers:v7];
}

void __58__AFChildConversationItemList_removeItemsWithIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) _conversation];
  v4 = [v3 hasItemWithIdentifier:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (void)removeItemsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x1E695DFA8];
  indexesCopy = indexes;
  v6 = [v4 setWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __52__AFChildConversationItemList_removeItemsAtIndexes___block_invoke;
  v12 = &unk_1E73492D8;
  v13 = v6;
  selfCopy = self;
  v7 = v6;
  [indexesCopy enumerateIndexesUsingBlock:&v9];

  v8 = [(AFChildConversationItemList *)self _conversation:v9];
  [v8 removeItemsWithIdentifiers:v7];
}

void __52__AFChildConversationItemList_removeItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierOfItemAtIndex:a2];
  [v2 addObject:v3];
}

- (id)identifiersForItemsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x1E695DFA8];
  indexesCopy = indexes;
  v6 = [v4 setWithCapacity:{objc_msgSend(indexesCopy, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__AFChildConversationItemList_identifiersForItemsAtIndexes___block_invoke;
  v10[3] = &unk_1E73492D8;
  v7 = v6;
  v11 = v7;
  selfCopy = self;
  [indexesCopy enumerateIndexesUsingBlock:v10];

  v8 = v7;
  return v7;
}

void __60__AFChildConversationItemList_identifiersForItemsAtIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _identifierOfItemAtIndex:a2];
  [v2 addObject:v3];
}

- (void)addItemsForAceObjects:(id)objects type:(int64_t)type dialogPhase:(id)phase asChildrenOfItemAtIndex:(int64_t)index
{
  phaseCopy = phase;
  objectsCopy = objects;
  v12 = [(AFChildConversationItemList *)self _identifierOfItemAtIndex:index];
  [(AFChildConversationItemList *)self _addItemsForAceObjects:objectsCopy type:type dialogPhase:phaseCopy asChildrenOfItemWithIdentifier:v12];
}

- (id)itemWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _conversation = [(AFChildConversationItemList *)self _conversation];
  v6 = [_conversation itemWithIdentifier:identifierCopy];

  identifier = [v6 identifier];
  v8 = [_conversation parentOfItemWithIdentifier:identifier];

  identifier2 = [v8 identifier];
  _parentItemIdentifier = [(AFChildConversationItemList *)self _parentItemIdentifier];
  v11 = _parentItemIdentifier;
  if (identifier2 == _parentItemIdentifier)
  {
  }

  else
  {
    identifier3 = [v8 identifier];
    _parentItemIdentifier2 = [(AFChildConversationItemList *)self _parentItemIdentifier];
    v14 = [identifier3 isEqual:_parentItemIdentifier2];

    if (v14)
    {
      goto LABEL_6;
    }

    identifier2 = v6;
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (id)itemAtIndex:(int64_t)index
{
  _conversation = [(AFChildConversationItemList *)self _conversation];
  v6 = [(AFChildConversationItemList *)self _indexPathForItemAtIndex:index];
  v7 = [_conversation itemAtIndexPath:v6];

  return v7;
}

- (int64_t)numberOfItems
{
  _conversation = [(AFChildConversationItemList *)self _conversation];
  _parentItemIdentifier = [(AFChildConversationItemList *)self _parentItemIdentifier];
  v5 = [_conversation numberOfChildrenForItemWithIdentifier:_parentItemIdentifier];

  return v5;
}

- (AFChildConversationItemList)initWithConversation:(id)conversation parentItemIdentifier:(id)identifier
{
  conversationCopy = conversation;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = AFChildConversationItemList;
  v9 = [(AFChildConversationItemList *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_conversation, conversation);
    v11 = [identifierCopy copy];
    parentItemIdentifier = v10->_parentItemIdentifier;
    v10->_parentItemIdentifier = v11;
  }

  return v10;
}

@end