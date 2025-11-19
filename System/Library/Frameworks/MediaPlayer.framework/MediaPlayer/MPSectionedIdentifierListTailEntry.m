@interface MPSectionedIdentifierListTailEntry
+ (id)tailEntryWithSectionHeadEntry:(id)a3;
- (MPSectionedIdentifierListHeadEntry)sectionHeadEntry;
- (id)previousEntry;
@end

@implementation MPSectionedIdentifierListTailEntry

+ (id)tailEntryWithSectionHeadEntry:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [MPSectionedIdentifierListEntryPositionKey positionKeyWithDeviceIdentifier:&stru_1F149ECA8 generation:@"1"];
  v7 = [v4 sectionIdentifier];
  v8 = [v5 initWithPositionKey:v6 sectionIdentifier:v7];

  objc_storeWeak(v8 + 8, v4);

  return v8;
}

- (MPSectionedIdentifierListHeadEntry)sectionHeadEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionHeadEntry);

  return WeakRetained;
}

- (id)previousEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionHeadEntry);
  v3 = [WeakRetained lastItemEntry];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nextEntries];
    v6 = v4;
    v7 = [v5 firstObject];

    if (v7)
    {
      do
      {
        v8 = [v5 firstObject];

        v9 = [v8 nextEntries];

        v10 = [v9 firstObject];

        v6 = v8;
        v5 = v9;
      }

      while (v10);
      goto LABEL_9;
    }

LABEL_8:
    v9 = v5;
    v8 = v6;
    goto LABEL_9;
  }

  v11 = [WeakRetained nextEntries];
  v5 = [v11 msv_suffixFromIndex:1];

  v6 = WeakRetained;
  v12 = [v5 firstObject];

  if (!v12)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = [v5 firstObject];

    v9 = [v8 nextEntries];

    v13 = [v9 firstObject];

    v6 = v8;
    v5 = v9;
  }

  while (v13);
LABEL_9:

  return v8;
}

@end