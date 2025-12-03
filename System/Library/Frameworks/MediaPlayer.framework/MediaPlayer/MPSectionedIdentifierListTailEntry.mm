@interface MPSectionedIdentifierListTailEntry
+ (id)tailEntryWithSectionHeadEntry:(id)entry;
- (MPSectionedIdentifierListHeadEntry)sectionHeadEntry;
- (id)previousEntry;
@end

@implementation MPSectionedIdentifierListTailEntry

+ (id)tailEntryWithSectionHeadEntry:(id)entry
{
  entryCopy = entry;
  v5 = [self alloc];
  v6 = [MPSectionedIdentifierListEntryPositionKey positionKeyWithDeviceIdentifier:&stru_1F149ECA8 generation:@"1"];
  sectionIdentifier = [entryCopy sectionIdentifier];
  v8 = [v5 initWithPositionKey:v6 sectionIdentifier:sectionIdentifier];

  objc_storeWeak(v8 + 8, entryCopy);

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
  lastItemEntry = [WeakRetained lastItemEntry];
  v4 = lastItemEntry;
  if (lastItemEntry)
  {
    nextEntries = [lastItemEntry nextEntries];
    v6 = v4;
    firstObject = [nextEntries firstObject];

    if (firstObject)
    {
      do
      {
        firstObject2 = [nextEntries firstObject];

        nextEntries2 = [firstObject2 nextEntries];

        firstObject3 = [nextEntries2 firstObject];

        v6 = firstObject2;
        nextEntries = nextEntries2;
      }

      while (firstObject3);
      goto LABEL_9;
    }

LABEL_8:
    nextEntries2 = nextEntries;
    firstObject2 = v6;
    goto LABEL_9;
  }

  nextEntries3 = [WeakRetained nextEntries];
  nextEntries = [nextEntries3 msv_suffixFromIndex:1];

  v6 = WeakRetained;
  firstObject4 = [nextEntries firstObject];

  if (!firstObject4)
  {
    goto LABEL_8;
  }

  do
  {
    firstObject2 = [nextEntries firstObject];

    nextEntries2 = [firstObject2 nextEntries];

    firstObject5 = [nextEntries2 firstObject];

    v6 = firstObject2;
    nextEntries = nextEntries2;
  }

  while (firstObject5);
LABEL_9:

  return firstObject2;
}

@end