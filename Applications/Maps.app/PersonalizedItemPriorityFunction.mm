@interface PersonalizedItemPriorityFunction
+ (id)defaultPriorityFunction;
+ (id)defaultPriorityFunctionForAutocompleteObject;
+ (id)priorityFunctionForGEOSortPriorityMapping:(id)mapping;
+ (int64_t)sourceSubtypeForGEOResultSubtype:(int64_t)subtype;
+ (int64_t)sourceTypeForGEOResultType:(int64_t)type;
- (PersonalizedItemPriorityFunction)initWithEntries:(id)entries;
- (int64_t)priorityForPersonalizedAutocompleteItem:(id)item;
@end

@implementation PersonalizedItemPriorityFunction

+ (id)defaultPriorityFunction
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A130;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195CC08 != -1)
  {
    dispatch_once(&qword_10195CC08, block);
  }

  if (qword_10195CC10)
  {
    v2 = qword_10195CC10;
  }

  else
  {
    v2 = qword_10195CC18;
  }

  return v2;
}

- (int64_t)priorityForPersonalizedAutocompleteItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasPriorityOverride])
  {
    priorityOverride = [itemCopy priorityOverride];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    entries = [(PersonalizedItemPriorityFunction *)self entries];
    v7 = [entries countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(entries);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 matches:itemCopy])
          {
            priorityOverride = [v11 priority];

            goto LABEL_13;
          }
        }

        v8 = [entries countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    priorityOverride = 0;
  }

LABEL_13:

  return priorityOverride;
}

- (PersonalizedItemPriorityFunction)initWithEntries:(id)entries
{
  entriesCopy = entries;
  v9.receiver = self;
  v9.super_class = PersonalizedItemPriorityFunction;
  v5 = [(PersonalizedItemPriorityFunction *)&v9 init];
  if (v5)
  {
    v6 = [entriesCopy copy];
    entries = v5->_entries;
    v5->_entries = v6;
  }

  return v5;
}

+ (id)defaultPriorityFunctionForAutocompleteObject
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F2A60;
  block[3] = &unk_1016611D0;
  block[4] = self;
  if (qword_10195CC20 != -1)
  {
    dispatch_once(&qword_10195CC20, block);
  }

  v2 = qword_10195CC28;

  return v2;
}

+ (int64_t)sourceSubtypeForGEOResultSubtype:(int64_t)subtype
{
  if ((subtype - 2) > 0x1D)
  {
    return 0;
  }

  else
  {
    return qword_1012130D8[subtype - 2];
  }
}

+ (int64_t)sourceTypeForGEOResultType:(int64_t)type
{
  if ((type - 2) >= 9)
  {
    return 0;
  }

  else
  {
    return type - 1;
  }
}

+ (id)priorityFunctionForGEOSortPriorityMapping:(id)mapping
{
  mappingCopy = mapping;
  v15 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = mappingCopy;
  obj = [mappingCopy entries];
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = -[PersonalizedItemPriorityFunctionEntry initWithPriority:matchesAnySourceType:sourceType:matchesAnySourceSubtype:sourceSubtype:matchBlock:]([PersonalizedItemPriorityFunctionEntry alloc], "initWithPriority:matchesAnySourceType:sourceType:matchesAnySourceSubtype:sourceSubtype:matchBlock:", [v9 priority], objc_msgSend(v9, "resultType") == 1, objc_msgSend(self, "sourceTypeForGEOResultType:", objc_msgSend(v9, "resultType")), objc_msgSend(v9, "resultSubtype") == 1, objc_msgSend(self, "sourceSubtypeForGEOResultSubtype:", objc_msgSend(v9, "resultSubtype")), 0);
        [v15 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = [[PersonalizedItemPriorityFunction alloc] initWithEntries:v15];

  return v11;
}

@end