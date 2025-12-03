@interface SuggestionsItemSource
+ (int64_t)itemSourceSubtypeForSuggestionsEntryType:(int64_t)type;
- (SuggestionsItemSource)init;
- (id)allItems;
- (void)setSuggestions:(id)suggestions;
@end

@implementation SuggestionsItemSource

- (SuggestionsItemSource)init
{
  v8.receiver = self;
  v8.super_class = SuggestionsItemSource;
  v2 = [(PersonalizedItemSource *)&v8 initWithSourceType:9 sourceSubtype:0];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SuggestionsItemSource.lock", v3);
    lockQueue = v2->_lockQueue;
    v2->_lockQueue = v4;

    suggestions = v2->_suggestions;
    v2->_suggestions = &__NSArray0__struct;
  }

  return v2;
}

- (void)setSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = [suggestionsCopy copy];
  suggestions = self->_suggestions;
  self->_suggestions = v5;

  v20 = suggestionsCopy;
  v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [suggestionsCopy count]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_suggestions;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 1;
    v11 = *v25;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([v13 type] != 5 && objc_msgSend(v13, "type") != 24 && (!+[LibraryUIUtilities isMyPlacesEnabled](_TtC4Maps18LibraryUIUtilities, "isMyPlacesEnabled") || objc_msgSend(v13, "type") != 18 && objc_msgSend(v13, "type") != 1 && objc_msgSend(v13, "type") != 2 && objc_msgSend(v13, "type") != 19))
        {
          sourceType = [(PersonalizedItemSource *)self sourceType];
          sourceSubtype = [(PersonalizedItemSource *)self sourceSubtype];
          if (sourceType)
          {
            v16 = sourceSubtype;
          }

          else
          {
            sourceType = 9;
            v16 = 0;
          }

          if (sourceType == 9 && !v16)
          {
            v16 = +[SuggestionsItemSource itemSourceSubtypeForSuggestionsEntryType:](SuggestionsItemSource, "itemSourceSubtypeForSuggestionsEntryType:", [v13 type]);
          }

          v17 = [[SuggestionsItem alloc] initWithSuggestion:v13 order:v10 sourceType:sourceType sourceSubtype:v16 hasPriorityOverride:0 priorityOverride:0];
          if (v17)
          {
            [v21 addObject:v17];
            ++v10;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  lockQueue = self->_lockQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005EB794;
  block[3] = &unk_101661A90;
  block[4] = self;
  v23 = v21;
  v19 = v21;
  dispatch_sync(lockQueue, block);
  [(PersonalizedItemSource *)self _notifyObserversItemsDidChange];
}

- (id)allItems
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1005EB8E8;
  v10 = sub_1005EB8F8;
  v11 = 0;
  lockQueue = self->_lockQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005EB900;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(lockQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (int64_t)itemSourceSubtypeForSuggestionsEntryType:(int64_t)type
{
  if (type > 0x19)
  {
    return 14;
  }

  else
  {
    return qword_101213008[type];
  }
}

@end