@interface AFConversation
- (AFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4;
- (AFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4 rootNode:(id)a5;
- (AFConversation)initWithLanguageCode:(id)a3;
- (AFConversation)initWithPropertyListRepresentation:(id)a3;
- (AFConversationDelegate)delegate;
- (BOOL)_nodeContainsProvisionalItems:(id)a3;
- (BOOL)containsItemForAceViewWithIdentifier:(id)a3;
- (BOOL)containsItemWithIdentifier:(id)a3;
- (BOOL)hasItemWithIdentifier:(id)a3;
- (BOOL)itemAtIndexPathIsVirgin:(id)a3;
- (id)_changePresentationStateForNodes:(id)a3;
- (id)_childOfNode:(id)a3 withItemWhichCanBeUpdatedWithAceObject:(id)a4 inDialogPhase:(id)a5;
- (id)_indexPathForItemWithIdentifier:(id)a3 ignoreNonExistent:(BOOL)a4;
- (id)_indexPathsForAddingItemsWithCount:(int64_t)a3 asChildrenOfItemWithIdentifier:(id)a4;
- (id)_itemAtIndexPath:(id)a3;
- (id)_nodeAtIndexPath:(id)a3;
- (id)aceCommandIdentifierForItemAtIndexPath:(id)a3;
- (id)aceObjectForItemAtIndexPath:(id)a3;
- (id)additionalSpeechInterpretationsForRefId:(id)a3;
- (id)dialogPhaseForItemAtIndexPath:(id)a3;
- (id)identifierOfItemAtIndexPath:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)itemWithIdentifier:(id)a3;
- (id)lastItem;
- (id)parentOfItemWithIdentifier:(id)a3;
- (id)propertyListRepresentation;
- (int64_t)numberOfChildrenForItemAtIndexPath:(id)a3;
- (int64_t)numberOfChildrenForItemWithIdentifier:(id)a3;
- (int64_t)presentationStateForItemAtIndexPath:(id)a3;
- (int64_t)typeForItemAtIndexPath:(id)a3;
- (void)_addItemsForAceObjects:(id)a3 type:(int64_t)a4 aceCommandIdentifier:(id)a5 dialogPhase:(id)a6 asChildrenOfItemWithIdentifier:(id)a7;
- (void)_addItemsForAceViews:(id)a3 withDialogPhase:(id)a4 fromCommandWithIdentifier:(id)a5 atIndexPaths:(id)a6 isSupplemental:(BOOL)a7 isImmersiveExperience:(BOOL)a8 isPersistentAcrossInvocations:(BOOL)a9;
- (void)_enumerateItemsUsingBlock:(id)a3;
- (void)_processInsertions:(id)a3 inDialogPhase:(id)a4;
- (void)_removeNodes:(id)a3;
- (void)addAdditionalSpeechInterpretation:(id)a3 refId:(id)a4;
- (void)addItemForMusicStartSessionCommand:(id)a3;
- (void)addItemForPartialResultCommand:(id)a3;
- (void)addItemForSpeechRecognizedCommand:(id)a3;
- (void)addItemsForAddViewsCommand:(id)a3;
- (void)addItemsForShowHelpCommand:(id)a3;
- (void)addRecognitionUpdateWithPhrases:(id)a3 utterances:(id)a4 refId:(id)a5;
- (void)addSelectionResponse:(id)a3;
- (void)cancelItemWithIdentifier:(id)a3;
- (void)notifyDelegateOfUpdates:(id)a3 inserts:(id)a4 presentationChanges:(id)a5;
- (void)removeItemsAtIndexPaths:(id)a3;
- (void)removeItemsFollowingItemAtIndexPath:(id)a3;
- (void)removeItemsWithIdentifiers:(id)a3;
- (void)removeTransientItems;
- (void)updateWithUpdateViewsCommand:(id)a3;
@end

@implementation AFConversation

- (id)lastItem
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC88]);
  v4 = [(AFConversation *)self numberOfChildrenForItemAtIndexPath:v3];

  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC88]) initWithIndex:v4 - 1];
    v6 = [(AFConversation *)self _itemAtIndexPath:v5];
  }

  return v6;
}

- (id)propertyListRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:&unk_1F056D758 forKey:@"Version"];
  v4 = [(AFConversation *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKey:@"Identifier"];

  v6 = [(AFConversation *)self languageCode];
  [v3 setObject:v6 forKey:@"LanguageCode"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[AFConversation isSynchronizedWithServer](self, "isSynchronizedWithServer")}];
  [v3 setObject:v7 forKey:@"SynchronizedWithServer"];

  v8 = objc_alloc_init(AFTreeNodePropertyListSerialization);
  v9 = [(AFConversation *)self _rootNode];
  v10 = [(AFTreeNodePropertyListSerialization *)v8 propertyListWithTreeNode:v9 itemPropertyListCreation:&__block_literal_global_58];

  [v3 setObject:v10 forKey:@"RootNode"];

  return v3;
}

- (void)removeTransientItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AFConversation *)self _rootNode];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__AFConversation_removeTransientItems__block_invoke;
  v6[3] = &unk_1E7343D00;
  v7 = v3;
  v5 = v3;
  [v4 enumerateDescendentNodesUsingBlock:v6];

  [(AFConversation *)self _removeNodes:v5];
}

void __38__AFConversation_removeTransientItems__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 item];
  if ([v3 isTransient])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (AFConversationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)notifyDelegateOfUpdates:(id)a3 inserts:(id)a4 presentationChanges:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if ([v23 count])
  {
    v10 = [(AFConversation *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(AFConversation *)self delegate];
      [v12 conversation:self didUpdateItemsAtIndexPaths:v23];
    }
  }

  if ([v8 count])
  {
    v13 = [(AFConversation *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(AFConversation *)self delegate];
      [v15 conversation:self didInsertItemsAtIndexPaths:v8];
    }
  }

  if ([v9 count])
  {
    v16 = [(AFConversation *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = [(AFConversation *)self delegate];
      [v18 conversation:self presentationStateDidChangeForItemsAtIndexPaths:v9];
    }
  }

  if ([v23 count] || objc_msgSend(v8, "count") || objc_msgSend(v9, "count"))
  {
    v19 = [[AFConversationTransaction alloc] initWithUpdatedItemIndexPaths:v23 insertedItemIndexPaths:v8 presentationStateChangedItemIndexPaths:v9];
    v20 = [(AFConversation *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [(AFConversation *)self delegate];
      [v22 conversation:self didChangeWithTransaction:v19];
    }
  }
}

- (AFConversation)initWithPropertyListRepresentation:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(AFDictionarySchema);
  v6 = +[AFCoercion stringToUUIDCoercion];
  [(AFDictionarySchema *)v5 setObjectCoercion:v6 forKey:@"Identifier"];

  v7 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v7 forKey:@"Version"];

  v8 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v8 forKey:@"LanguageCode"];

  v9 = [AFCoercion typeAssertionWithClass:objc_opt_class()];
  [(AFDictionarySchema *)v5 setObjectCoercion:v9 forKey:@"SynchronizedWithServer"];

  v10 = [[AFCoercion alloc] initWithBlock:&__block_literal_global_64];
  [(AFDictionarySchema *)v5 setObjectCoercion:v10 forKey:@"RootNode"];

  v30 = 0;
  v11 = [(AFDictionarySchema *)v5 coerceObject:v4 error:&v30];
  v12 = v30;
  if (!v11)
  {
    v24 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v25 = v24;
      v26 = [v12 localizedFailureReason];
      *buf = 136315650;
      v32 = "[AFConversation initWithPropertyListRepresentation:]";
      v33 = 2112;
      v34 = v26;
      v35 = 2114;
      v36 = v4;
      _os_log_error_impl(&dword_1912FE000, v25, OS_LOG_TYPE_ERROR, "%s passed invalid property list (%@): %{public}@", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v13 = [v11 objectForKey:@"Version"];
  v14 = [v13 integerValue];

  if (v14 != 1)
  {
    v27 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "[AFConversation initWithPropertyListRepresentation:]";
      v33 = 2050;
      v34 = v14;
      _os_log_error_impl(&dword_1912FE000, v27, OS_LOG_TYPE_ERROR, "%s Unable to create conversation from property list with version %{public}ld", buf, 0x16u);
    }

LABEL_10:
    v23 = 0;
    goto LABEL_11;
  }

  v15 = [v11 objectForKey:@"Identifier"];
  v16 = [v11 objectForKey:@"LanguageCode"];
  v17 = [v11 objectForKey:@"SynchronizedWithServer"];
  v18 = [v17 BOOLValue];

  v19 = [v11 objectForKey:@"RootNode"];
  self = [(AFConversation *)self initWithIdentifier:v15 languageCode:v16 rootNode:v19];
  [(AFConversation *)self setSynchronizedWithServer:v18];
  v20 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = v20;
    v22 = [(AFConversation *)self _rootNode];
    *buf = 136315394;
    v32 = "[AFConversation initWithPropertyListRepresentation:]";
    v33 = 2112;
    v34 = v22;
    _os_log_impl(&dword_1912FE000, v21, OS_LOG_TYPE_INFO, "%s rootNode=%@", buf, 0x16u);
  }

  v23 = self;
LABEL_11:

  v28 = *MEMORY[0x1E69E9840];
  return v23;
}

id __53__AFConversation_initWithPropertyListRepresentation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_alloc_init(AFTreeNodePropertyListSerialization);
  v6 = [(AFTreeNodePropertyListSerialization *)v5 treeNodeWithPropertyList:v4 error:a3 itemCreation:&__block_literal_global_66];

  return v6;
}

AFMutableConversationItem *__53__AFConversation_initWithPropertyListRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AFMutableConversationItem alloc] initWithPropertyListRepresentation:v2];

  return v3;
}

- (id)_changePresentationStateForNodes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  if ([v3 count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 parentNode];

          if (v11)
          {
            v12 = [v10 absoluteIndexPath];
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_nodeContainsProvisionalItems:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AFConversation__nodeContainsProvisionalItems___block_invoke;
  v6[3] = &unk_1E7343DA0;
  v6[4] = &v7;
  [v3 enumerateChildNodesWithOptions:2 usingBlock:v6];
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __48__AFConversation__nodeContainsProvisionalItems___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 item];
  if ([v6 presentationState] == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)containsItemForAceViewWithIdentifier:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__AFConversation_containsItemForAceViewWithIdentifier___block_invoke;
  v7[3] = &unk_1E7343D78;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(AFConversation *)self _enumerateItemsUsingBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __55__AFConversation_containsItemForAceViewWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [v10 type] == 3;
  v6 = v10;
  if (v5)
  {
    v7 = [v10 aceObject];
    v8 = [v7 viewId];
    v9 = [v8 isEqualToString:*(a1 + 32)];

    if (v9)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
    }

    v6 = v10;
  }
}

- (void)_enumerateItemsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(AFConversation *)self _rootNode];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__AFConversation__enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_1E7343D50;
  v8 = v4;
  v6 = v4;
  [v5 enumerateDescendentNodesUsingBlock:v7];
}

void __44__AFConversation__enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [a2 item];
  (*(v4 + 16))(v4, v5, a3);
}

- (BOOL)itemAtIndexPathIsVirgin:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 isVirgin];

  return v4;
}

- (id)aceCommandIdentifierForItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 aceCommandIdentifier];

  return v4;
}

- (int64_t)numberOfChildrenForItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _nodeAtIndexPath:a3];
  v4 = [v3 numberOfChildNodes];

  return v4;
}

- (int64_t)numberOfChildrenForItemWithIdentifier:(id)a3
{
  v4 = [(AFConversation *)self indexPathForItemWithIdentifier:a3];
  v5 = [(AFConversation *)self numberOfChildrenForItemAtIndexPath:v4];

  return v5;
}

- (int64_t)presentationStateForItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 presentationState];

  return v4;
}

- (id)aceObjectForItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 aceObject];

  return v4;
}

- (id)dialogPhaseForItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 dialogPhase];

  return v4;
}

- (int64_t)typeForItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 type];

  return v4;
}

- (id)itemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)parentOfItemWithIdentifier:(id)a3
{
  v4 = [(AFConversation *)self indexPathForItemWithIdentifier:a3];
  v5 = [v4 indexPathByRemovingLastIndex];
  v6 = [(AFConversation *)self _itemAtIndexPath:v5];

  return v6;
}

- (id)itemWithIdentifier:(id)a3
{
  v4 = [(AFConversation *)self indexPathForItemWithIdentifier:a3];
  v5 = [(AFConversation *)self itemAtIndexPath:v4];

  return v5;
}

- (BOOL)hasItemWithIdentifier:(id)a3
{
  v3 = [(AFConversation *)self _indexPathForItemWithIdentifier:a3 ignoreNonExistent:1];
  v4 = v3 != 0;

  return v4;
}

- (id)_indexPathForItemWithIdentifier:(id)a3 ignoreNonExistent:(BOOL)a4
{
  v7 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11894;
  v22 = __Block_byref_object_dispose__11895;
  v23 = 0;
  if (v7)
  {
    v8 = [(AFConversation *)self _rootNode];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__AFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke;
    v15[3] = &unk_1E7343D28;
    v16 = v7;
    v17 = &v18;
    [v8 enumerateDescendentNodesUsingBlock:v15];

    v9 = v16;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AC88]);
    v9 = v19[5];
    v19[5] = v10;
  }

  v11 = v19;
  if (!a4 && !v19[5])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"AFConversation.m" lineNumber:726 description:@"Cannot return an index path to an item that is not contained in the conversation"];

    v11 = v19;
  }

  v12 = v11[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __68__AFConversation__indexPathForItemWithIdentifier_ignoreNonExistent___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 item];
  v6 = *(a1 + 32);
  v7 = [v5 identifier];
  LODWORD(v6) = [v6 isEqual:v7];

  if (v6)
  {
    v8 = [v11 absoluteIndexPath];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a3 = 1;
  }
}

- (id)identifierOfItemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _itemAtIndexPath:a3];
  v4 = [v3 identifier];

  return v4;
}

- (BOOL)containsItemWithIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(AFConversation *)self _rootNode];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__AFConversation_containsItemWithIdentifier___block_invoke;
  v8[3] = &unk_1E7343D28;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateDescendentNodesUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __45__AFConversation_containsItemWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = [a2 item];
  v5 = [v7 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)cancelItemWithIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = [(AFConversation *)self _indexPathForItemWithIdentifier:a3 ignoreNonExistent:0];
  v5 = [(AFConversation *)self _itemAtIndexPath:v4];
  if ([v5 presentationState] != 3)
  {
    [v5 setPresentationState:3];
    v8[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [(AFConversation *)self notifyDelegateOfUpdates:0 inserts:0 presentationChanges:v6];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeItemsFollowingItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [v4 indexAtPosition:{objc_msgSend(v4, "length") - 1}];
    v7 = [v4 indexPathByRemovingLastIndex];
    v8 = [(AFConversation *)self _nodeAtIndexPath:v7];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __54__AFConversation_removeItemsFollowingItemAtIndexPath___block_invoke;
    v13 = &unk_1E7343CD8;
    v14 = v5;
    v15 = v6;
    v9 = v5;
    [v8 enumerateChildNodesWithOptions:2 usingBlock:&v10];
    [(AFConversation *)self _removeNodes:v9, v10, v11, v12, v13];
  }
}

uint64_t __54__AFConversation_removeItemsFollowingItemAtIndexPath___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) < a3)
  {
    return [*(result + 32) addObject:a2];
  }

  *a4 = 1;
  return result;
}

- (void)removeItemsAtIndexPaths:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AFConversation *)self _nodeAtIndexPath:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(AFConversation *)self _removeNodes:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)removeItemsWithIdentifiers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(AFConversation *)self indexPathForItemWithIdentifier:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(AFConversation *)self removeItemsAtIndexPaths:v5];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateWithUpdateViewsCommand:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v4;
  obj = [v4 views];
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [(AFConversation *)self _rootNode];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __47__AFConversation_updateWithUpdateViewsCommand___block_invoke;
        v15[3] = &unk_1E7343CB0;
        v15[4] = v10;
        v16 = v5;
        [v11 enumerateDescendentNodesUsingBlock:v15];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  [(AFConversation *)self notifyDelegateOfUpdates:v5 inserts:0 presentationChanges:0];
  v12 = *MEMORY[0x1E69E9840];
}

void __47__AFConversation_updateWithUpdateViewsCommand___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 item];
  if ([v3 type] == 3)
  {
    v4 = [v3 aceObject];
    v5 = [v4 viewId];
    v6 = [*(a1 + 32) viewId];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      [v3 setAceObject:*(a1 + 32)];
      v8 = *(a1 + 40);
      v9 = [v10 absoluteIndexPath];
      [v8 addObject:v9];
    }
  }
}

- (void)addSelectionResponse:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];
  v7 = [AFDialogPhase userRequestDialogPhase:v9];

  [(AFConversation *)self addItemsForAceViews:v6 withDialogPhase:v7 asChildrenOfItemWithIdentifier:0];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)addItemForMusicStartSessionCommand:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v5 aceId];
  v8 = +[AFDialogPhase reflectionDialogPhase];

  [(AFConversation *)self _addItemsForAceObjects:v6 type:5 aceCommandIdentifier:v7 dialogPhase:v8 asChildrenOfItemWithIdentifier:0];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)addItemsForShowHelpCommand:(id)a3
{
  v20 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [(AFConversation *)self _indexPathsForAddingItemsWithCount:2 asChildrenOfItemWithIdentifier:0];
  v6 = [v5 mutableCopy];

  v7 = [v20 text];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C7B08]);
    [v8 setText:v7];
    v9 = [v20 speakableText];
    [v8 setSpeakableText:v9];

    v10 = [v6 firstObject];
    [v6 removeObjectAtIndex:0];
    v11 = [AFConversationInsertion alloc];
    v12 = [v20 aceId];
    LOBYTE(v19) = 0;
    v13 = [(AFConversationInsertion *)v11 initWithConversationItemType:3 aceObject:v8 aceCommandIdentifier:v12 transient:0 supplemental:0 immersiveExperience:0 persistentAcrossInvocations:v19 indexPath:v10];
    [v4 addObject:v13];
  }

  v14 = [AFConversationInsertion alloc];
  v15 = [v20 aceId];
  v16 = [v6 firstObject];
  LOBYTE(v19) = 0;
  v17 = [(AFConversationInsertion *)v14 initWithConversationItemType:4 aceObject:v20 aceCommandIdentifier:v15 transient:0 supplemental:0 immersiveExperience:0 persistentAcrossInvocations:v19 indexPath:v16];
  [v4 addObject:v17];

  v18 = +[AFDialogPhase completionDialogPhase];
  [(AFConversation *)self _processInsertions:v4 inDialogPhase:v18];
}

- (void)addItemForPartialResultCommand:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 refId];
  v7 = [(AFConversation *)self _rootNode];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__AFConversation_addItemForPartialResultCommand___block_invoke;
  v15[3] = &unk_1E7343C88;
  v8 = v6;
  v16 = v8;
  v9 = v4;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  [v7 enumerateDescendentNodesUsingBlock:v15];

  if ([v10 count])
  {
    [(AFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v19[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v12 = [v9 aceId];
    v13 = +[AFDialogPhase userRequestDialogPhase];
    [(AFConversation *)self _addItemsForAceObjects:v11 type:2 aceCommandIdentifier:v12 dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __49__AFConversation_addItemForPartialResultCommand___block_invoke(void *a1, void *a2)
{
  v9 = a2;
  v3 = [v9 item];
  if ([v3 type] == 2)
  {
    v4 = [v3 aceObject];
    v5 = [v4 refId];
    v6 = [v5 isEqualToString:a1[4]];

    if (v6)
    {
      [v3 setAceObject:a1[5]];
      v7 = a1[6];
      v8 = [v9 absoluteIndexPath];
      [v7 addObject:v8];
    }
  }
}

- (void)addRecognitionUpdateWithPhrases:(id)a3 utterances:(id)a4 refId:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (!self->_updatedUserUtteranceForRefId)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    updatedUserUtteranceForRefId = self->_updatedUserUtteranceForRefId;
    self->_updatedUserUtteranceForRefId = v10;
  }

  v12 = [[AFUserUtterance alloc] initWithPhrases:v13 utterances:v8];
  [(NSMutableDictionary *)self->_updatedUserUtteranceForRefId setObject:v12 forKey:v9];
}

- (id)additionalSpeechInterpretationsForRefId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_additionalInterpretationsForRefId objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)addAdditionalSpeechInterpretation:(id)a3 refId:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    if (!additionalInterpretationsForRefId)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = self->_additionalInterpretationsForRefId;
      self->_additionalInterpretationsForRefId = v9;

      additionalInterpretationsForRefId = self->_additionalInterpretationsForRefId;
    }

    v11 = [(NSMutableDictionary *)additionalInterpretationsForRefId objectForKey:v7];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [(NSMutableDictionary *)self->_additionalInterpretationsForRefId setValue:v11 forKey:v7];
    }

    [v11 addObject:v6];
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = [(AFConversation *)self _rootNode];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __58__AFConversation_addAdditionalSpeechInterpretation_refId___block_invoke;
    v20 = &unk_1E7343CB0;
    v21 = v7;
    v14 = v12;
    v22 = v14;
    [v13 enumerateDescendentNodesUsingBlock:&v17];

    if ([v14 count])
    {
      [(AFConversation *)self notifyDelegateOfUpdates:v14 inserts:0 presentationChanges:0];
    }
  }

  else
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[AFConversation addAdditionalSpeechInterpretation:refId:]";
      _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, "%s Unable to add additional speech interpretation, invalid refId", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __58__AFConversation_addAdditionalSpeechInterpretation_refId___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 item];
  v4 = [v3 aceObject];
  v5 = [v4 refId];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [v9 absoluteIndexPath];
    [v7 addObject:v8];
  }
}

- (void)addItemForSpeechRecognizedCommand:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 refId];
  v7 = [(AFConversation *)self _rootNode];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__AFConversation_addItemForSpeechRecognizedCommand___block_invoke;
  v15[3] = &unk_1E7343C88;
  v8 = v6;
  v16 = v8;
  v9 = v4;
  v17 = v9;
  v10 = v5;
  v18 = v10;
  [v7 enumerateDescendentNodesUsingBlock:v15];

  if ([v10 count])
  {
    [(AFConversation *)self notifyDelegateOfUpdates:v10 inserts:0 presentationChanges:0];
  }

  else
  {
    v19[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v12 = [v9 aceId];
    v13 = +[AFDialogPhase userRequestDialogPhase];
    [(AFConversation *)self _addItemsForAceObjects:v11 type:1 aceCommandIdentifier:v12 dialogPhase:v13 asChildrenOfItemWithIdentifier:0];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __52__AFConversation_addItemForSpeechRecognizedCommand___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 item];
  v4 = [v3 aceObject];
  v5 = [v4 refId];
  if ([v5 isEqualToString:a1[4]])
  {
    v6 = [v3 type];

    if (v6 != 2)
    {
      goto LABEL_6;
    }

    [v3 setAceObject:a1[5]];
    [v3 setType:1];
    v7 = a1[6];
    v4 = [v8 absoluteIndexPath];
    [v7 addObject:v4];
  }

  else
  {
  }

LABEL_6:
}

- (void)_addItemsForAceObjects:(id)a3 type:(int64_t)a4 aceCommandIdentifier:(id)a5 dialogPhase:(id)a6 asChildrenOfItemWithIdentifier:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [v15 count];
  v17 = [(AFConversation *)self _indexPathsForAddingItemsWithCount:v16 asChildrenOfItemWithIdentifier:v13];

  v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __110__AFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke;
  v26 = &unk_1E7343C60;
  v27 = v17;
  v28 = v12;
  v29 = v18;
  v30 = a4;
  v19 = v18;
  v20 = v12;
  v21 = v17;
  [v15 enumerateObjectsUsingBlock:&v23];

  v22 = [v19 copy];
  [(AFConversation *)self _processInsertions:v22 inDialogPhase:v14];
}

void __110__AFConversation__addItemsForAceObjects_type_aceCommandIdentifier_dialogPhase_asChildrenOfItemWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndex:a3];
  LOBYTE(v8) = 0;
  v7 = [[AFConversationInsertion alloc] initWithConversationItemType:*(a1 + 56) aceObject:v6 aceCommandIdentifier:*(a1 + 40) transient:0 supplemental:0 immersiveExperience:0 persistentAcrossInvocations:v8 indexPath:v9];

  [*(a1 + 48) addObject:v7];
}

- (void)addItemsForAddViewsCommand:(id)a3
{
  v4 = a3;
  v5 = [v4 dialogPhase];
  v12 = [AFDialogPhase dialogPhaseForAceDialogPhase:v5];

  v6 = [v4 views];
  v7 = [v4 aceId];
  v8 = [v4 supplemental];
  v9 = [v4 immersiveExperience];
  v10 = [v4 persistentAcrossInvocations];

  LOBYTE(v11) = v10;
  [(AFConversation *)self _addItemsForAceViews:v6 withDialogPhase:v12 fromCommandWithIdentifier:v7 asChildrenOfItemWithIdentifier:0 isSupplemental:v8 isImmersiveExperience:v9 isPersistentAcrossInvocations:v11];
}

- (id)_indexPathsForAddingItemsWithCount:(int64_t)a3 asChildrenOfItemWithIdentifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3];
  v8 = [(AFConversation *)self indexPathForItemWithIdentifier:v6];
  v9 = [(AFConversation *)self numberOfChildrenForItemAtIndexPath:v8];
  if (a3 >= 1)
  {
    v10 = v9;
    v11 = v9 + a3;
    do
    {
      v12 = [v8 indexPathByAddingIndex:v10];
      [v7 addObject:v12];

      ++v10;
    }

    while (v10 < v11);
  }

  return v7;
}

- (void)_addItemsForAceViews:(id)a3 withDialogPhase:(id)a4 fromCommandWithIdentifier:(id)a5 atIndexPaths:(id)a6 isSupplemental:(BOOL)a7 isImmersiveExperience:(BOOL)a8 isPersistentAcrossInvocations:(BOOL)a9
{
  v15 = a5;
  v16 = a6;
  v17 = MEMORY[0x1E695DF70];
  v18 = a4;
  v19 = a3;
  v20 = [v17 arrayWithCapacity:{objc_msgSend(v19, "count")}];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __161__AFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience_isPersistentAcrossInvocations___block_invoke;
  v27 = &unk_1E7343C38;
  v28 = v16;
  v29 = v20;
  v30 = v15;
  v31 = a7;
  v32 = a8;
  v33 = a9;
  v21 = v15;
  v22 = v20;
  v23 = v16;
  [v19 enumerateObjectsUsingBlock:&v24];

  [(AFConversation *)self _processInsertions:v22 inDialogPhase:v18, v24, v25, v26, v27];
}

void __161__AFConversation__addItemsForAceViews_withDialogPhase_fromCommandWithIdentifier_atIndexPaths_isSupplemental_isImmersiveExperience_isPersistentAcrossInvocations___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v13 = [v5 objectAtIndex:a3];
  v7 = *(a1 + 40);
  v8 = [AFConversationInsertion alloc];
  v9 = *(a1 + 48);
  v10 = [v6 isTransient];
  LOBYTE(v12) = *(a1 + 58);
  v11 = [(AFConversationInsertion *)v8 initWithConversationItemType:3 aceObject:v6 aceCommandIdentifier:v9 transient:v10 supplemental:*(a1 + 56) immersiveExperience:*(a1 + 57) persistentAcrossInvocations:v12 indexPath:v13];

  [v7 addObject:v11];
}

- (void)_processInsertions:(id)a3 inDialogPhase:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = +[AFDialogPhase completionDialogPhase];
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v60 = "[AFConversation _processInsertions:inDialogPhase:]";
      v61 = 2112;
      v62 = v6;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s No dialog phase provided for conversation insertions; defaulting to %@", buf, 0x16u);
    }
  }

  if (([v6 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v6, "isClarificationDialogPhase"))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v36 = v8;
  v39 = [MEMORY[0x1E695DFA0] orderedSet];
  v9 = [MEMORY[0x1E695DFA0] orderedSet];
  v35 = [MEMORY[0x1E695DFA0] orderedSet];
  v33 = [MEMORY[0x1E695DFA0] orderedSet];
  v10 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke;
  v56[3] = &unk_1E7343BA0;
  v11 = self;
  v56[4] = self;
  v12 = v10;
  v57 = v12;
  [v40 enumerateObjectsUsingBlock:v56];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = v12;
  obj = [v12 keyEnumerator];
  v13 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  v38 = v9;
  if (v13)
  {
    v14 = v13;
    v15 = *v53;
    do
    {
      v16 = 0;
      do
      {
        if (*v53 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v52 + 1) + 8 * v16);
        v18 = [v37 objectForKey:v17];
        v19 = [v40 af_mappedArray:&__block_literal_global_11914];
        if (([v6 isExpository] & 1) == 0 && (objc_msgSend(v6, "isConfirmedDialogPhase") & 1) == 0 && ((objc_msgSend(v19, "containsObject:", &unk_1F056D710) & 1) != 0 || (objc_msgSend(v19, "containsObject:", &unk_1F056D728) & 1) != 0 || objc_msgSend(v19, "containsObject:", &unk_1F056D740)) && -[AFConversation _nodeContainsProvisionalItems:](v11, "_nodeContainsProvisionalItems:", v17))
        {
          if (([v6 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v6, "isClarificationDialogPhase"))
          {
            v50[0] = MEMORY[0x1E69E9820];
            v50[1] = 3221225472;
            v50[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_18;
            v50[3] = &unk_1E7343BE8;
            v51 = v35;
            [v17 enumerateChildNodesUsingBlock:v50];
            v20 = &v51;
          }

          else
          {
            if ([v6 isSummaryDialogPhase])
            {
              goto LABEL_23;
            }

            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_2_19;
            v48[3] = &unk_1E7343BE8;
            v49 = v33;
            [v17 enumerateChildNodesWithOptions:2 usingBlock:v48];
            v20 = &v49;
          }
        }

LABEL_23:
        if (([v19 containsObject:&unk_1F056D710] & 1) != 0 || objc_msgSend(v19, "containsObject:", &unk_1F056D728))
        {
          v46[0] = MEMORY[0x1E69E9820];
          v46[1] = 3221225472;
          v46[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_3;
          v46[3] = &unk_1E7343BE8;
          v47 = v35;
          [v17 enumerateChildNodesUsingBlock:v46];
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __51__AFConversation__processInsertions_inDialogPhase___block_invoke_4;
        v41[3] = &unk_1E7343C10;
        v41[4] = v11;
        v41[5] = v17;
        v42 = v6;
        v45 = v36;
        v9 = v38;
        v43 = v38;
        v44 = v39;
        [v18 enumerateObjectsUsingBlock:v41];

        ++v16;
      }

      while (v14 != v16);
      v21 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      v14 = v21;
    }

    while (v21);
  }

  if ([v9 count])
  {
    v22 = [v9 array];
    v23 = [AFTreeNode absoluteIndexPathsForTreeNodes:v22];
  }

  else
  {
    v23 = 0;
  }

  if ([v39 count])
  {
    v24 = [v39 array];
    v25 = [AFTreeNode absoluteIndexPathsForTreeNodes:v24];
  }

  else
  {
    v25 = 0;
  }

  if ([v33 count])
  {
    v26 = [v33 array];
    v27 = [(AFConversation *)v11 _changePresentationStateForNodes:v26];
  }

  else
  {
    v27 = 0;
  }

  [(AFConversation *)v11 notifyDelegateOfUpdates:v23 inserts:v25 presentationChanges:v27];
  if ([v35 count])
  {
    v28 = [v35 array];
    [(AFConversation *)v11 _removeNodes:v28];
  }

  v29 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v30 = v29;
    v31 = [(AFConversation *)v11 _rootNode];
    *buf = 136315394;
    v60 = "[AFConversation _processInsertions:inDialogPhase:]";
    v61 = 2112;
    v62 = v31;
    _os_log_impl(&dword_1912FE000, v30, OS_LOG_TYPE_INFO, "%s rootNode=%@", buf, 0x16u);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 indexPath];
  v4 = *(a1 + 32);
  v5 = [v3 indexPathByRemovingLastIndex];
  v6 = [v4 _nodeAtIndexPath:v5];

  v7 = [*(a1 + 40) objectForKey:v6];
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    [*(a1 + 40) setObject:v7 forKey:v6];
  }

  [v7 addObject:v8];
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_18(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 item];
  if ([v3 presentationState] == 2)
  {
    v4 = [v3 aceObject];
    v5 = [v4 af_isUtterance];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_2_19(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 item];
  v7 = [v6 dialogPhase];
  if ([v7 isConfirmationDialogPhase])
  {
    v8 = [v6 aceObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if ([v6 presentationState] == 2)
      {
        [v6 setPresentationState:3];
        [*(a1 + 32) addObject:v10];
      }

      *a4 = 1;
    }
  }

  else
  {
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 item];
  if ([v3 isTransient])
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __51__AFConversation__processInsertions_inDialogPhase___block_invoke_4(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v30 = [v3 indexPath];
  v4 = [v3 aceObject];
  v5 = [v3 conversationItemType];
  v6 = [v3 aceCommandIdentifier];
  v7 = [v3 isTransient];
  v8 = [v3 isSupplemental];
  v9 = [v3 isImmersiveExperience];
  v29 = [v3 isPersistentAcrossInvocations];

  v10 = [*(a1 + 32) _childOfNode:*(a1 + 40) withItemWhichCanBeUpdatedWithAceObject:v4 inDialogPhase:*(a1 + 48)];
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[AFConversation _processInsertions:inDialogPhase:]_block_invoke_4";
    v33 = 2112;
    v34 = v4;
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s ACE object: %@", buf, 0x16u);
  }

  if (v10)
  {
    v12 = [v10 item];
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 136315906;
      v32 = "[AFConversation _processInsertions:inDialogPhase:]_block_invoke";
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v12;
      v37 = 2112;
      v38 = v30;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s %@: updating item %@ at %@ from ACE object.", buf, 0x2Au);
    }

    [(AFTreeNode *)v12 setAceObject:v4];
    [(AFTreeNode *)v12 setDialogPhase:*(a1 + 48)];
    [(AFTreeNode *)v12 setPresentationState:*(a1 + 72)];
    [(AFTreeNode *)v12 setAceCommandIdentifier:v6];
    [(AFTreeNode *)v12 setTransient:v7];
    [(AFTreeNode *)v12 setSupplemental:v8];
    [(AFTreeNode *)v12 setImmersiveExperience:v9];
    [(AFTreeNode *)v12 setPersistentAcrossInvocations:v29];
    [*(a1 + 56) addObject:v10];
  }

  else
  {
    v12 = objc_alloc_init(AFTreeNode);
    [*(a1 + 40) addChildNode:v12];
    v15 = v5;
    v16 = [AFMutableConversationItem alloc];
    v28 = v6;
    v17 = *(a1 + 48);
    v18 = *(a1 + 72);
    v19 = objc_alloc_init(AFDataStore);
    v20 = v8;
    v21 = v19;
    BYTE3(v27) = v29;
    BYTE2(v27) = v9;
    BYTE1(v27) = v20;
    LOBYTE(v27) = v7;
    v22 = v17;
    v6 = v28;
    v23 = [AFMutableConversationItem initWithType:v16 aceObject:"initWithType:aceObject:dialogPhase:presentationState:aceCommandIdentifier:virgin:transient:supplemental:immersiveExperience:persistentAcrossInvocations:associatedDataStore:" dialogPhase:v15 presentationState:v4 aceCommandIdentifier:v22 virgin:v18 transient:v28 supplemental:1 immersiveExperience:v27 persistentAcrossInvocations:v19 associatedDataStore:?];

    [(AFTreeNode *)v12 setItem:v23];
    v24 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 136315906;
      v32 = "[AFConversation _processInsertions:inDialogPhase:]_block_invoke";
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v30;
      _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s %@: adding new item %@ at %@ for ACE object.", buf, 0x2Au);
    }

    [*(a1 + 64) addObject:v12];

    v10 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __51__AFConversation__processInsertions_inDialogPhase___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 conversationItemType];

  return [v2 numberWithInteger:v3];
}

- (id)_childOfNode:(id)a3 withItemWhichCanBeUpdatedWithAceObject:(id)a4 inDialogPhase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__11894;
  v28 = __Block_byref_object_dispose__11895;
  v29 = 0;
  if ([(AFConversation *)self _nodeContainsProvisionalItems:v8])
  {
    v11 = [v10 isConfirmedDialogPhase];
  }

  else
  {
    v11 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke;
  v21[3] = &unk_1E7343B50;
  v23 = v11;
  v12 = v9;
  v22 = v12;
  v13 = MEMORY[0x193AFB7B0](v21);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2;
  v17[3] = &unk_1E7343B78;
  v20 = v11;
  v14 = v13;
  v18 = v14;
  v19 = &v24;
  [v8 enumerateChildNodesWithOptions:2 usingBlock:v17];
  v15 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v15;
}

uint64_t __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dialogPhase];
  v5 = [v3 presentationState];
  v6 = [v3 aceObject];

  v7 = [v4 isExpository];
  v8 = v7;
  if (v5 == 2)
  {
    v8 = *(a1 + 40) | v7;
  }

  if (([v4 isConfirmationDialogPhase] & 1) != 0 || objc_msgSend(v4, "isClarificationDialogPhase"))
  {
    v9 = [*(a1 + 32) af_isUtterance] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [*(a1 + 32) encodedClassName];
  v11 = [v6 encodedClassName];
  if ([v10 isEqualToString:v11])
  {
    v12 = [*(a1 + 32) groupIdentifier];
    v13 = [v6 groupIdentifier];
    v14 = [v12 isEqualToString:v13];
  }

  else
  {
    v14 = 0;
  }

  return v9 & v8 & v14;
}

void __84__AFConversation__childOfNode_withItemWhichCanBeUpdatedWithAceObject_inDialogPhase___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 item];
  v8 = v7;
  if ((*(a1 + 48) & 1) != 0 || ([v7 dialogPhase], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isUserRequestDialogPhase"), v9, (v10 & 1) == 0))
  {
    if (!(*(*(a1 + 32) + 16))())
    {
      goto LABEL_6;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  *a4 = 1;
LABEL_6:
}

- (void)_removeNodes:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [MEMORY[0x1E695DF70] array];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __31__AFConversation__removeNodes___block_invoke;
    v38[3] = &unk_1E7343B00;
    v26 = v5;
    v39 = v26;
    v40 = self;
    v23 = self;
    v25 = v6;
    v41 = v25;
    v24 = v7;
    v42 = v24;
    v8 = MEMORY[0x193AFB7B0](v38);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          (v8)[2](v8, v14);
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __31__AFConversation__removeNodes___block_invoke_2;
          v32[3] = &unk_1E7343B28;
          v15 = v8;
          v32[4] = v14;
          v33 = v15;
          [v14 enumerateDescendentNodesUsingBlock:v32];
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v11);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v28 + 1) + 8 * j) removeFromParentNode];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v43 count:16];
      }

      while (v18);
    }

    if ([v26 count])
    {
      v21 = [(AFConversation *)v23 delegate];
      [v21 conversation:v23 didRemoveItemsWithIdentifiers:v26 atIndexPaths:v25 parentItemIdentifiers:v24];
    }

    v4 = v27;
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __31__AFConversation__removeNodes___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 item];
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v14 parentNode];
    v7 = [*(a1 + 40) _rootNode];
    if (v6 == v7)
    {
      v9 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v8 = [v6 item];
      v9 = [v8 identifier];
    }

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = [v3 identifier];
      [v10 addObject:v11];

      v12 = *(a1 + 48);
      v13 = [v14 absoluteIndexPath];
      [v12 addObject:v13];

      [*(a1 + 56) addObject:v9];
    }
  }
}

- (id)_itemAtIndexPath:(id)a3
{
  v3 = [(AFConversation *)self _nodeAtIndexPath:a3];
  v4 = [v3 item];

  return v4;
}

- (id)_nodeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(AFConversation *)self _rootNode];
  v6 = [v5 nodeAtIndexPath:v4];

  return v6;
}

- (AFConversation)initWithLanguageCode:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(AFConversation *)self initWithIdentifier:v6 languageCode:v5];

  return v7;
}

- (AFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(AFTreeNode);
  v9 = [(AFConversation *)self initWithIdentifier:v7 languageCode:v6 rootNode:v8];

  return v9;
}

- (AFConversation)initWithIdentifier:(id)a3 languageCode:(id)a4 rootNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = AFConversation;
  v11 = [(AFConversation *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    objc_storeStrong(&v11->_rootNode, a5);
    v14 = [v9 copy];
    languageCode = v11->_languageCode;
    v11->_languageCode = v14;

    v11->_synchronizedWithServer = 1;
  }

  return v11;
}

@end