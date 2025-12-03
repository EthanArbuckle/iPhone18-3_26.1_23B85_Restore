@interface MPSectionedIdentifierListReverseEnumerator
- (MPSectionedIdentifierListReverseEnumerator)initWithSectionedIdentifierList:(id)list options:(unint64_t)options startEntry:(id)entry endEntry:(id)endEntry withExclusiveAccessToken:(id)token;
- (id)_startEntryProxy;
- (id)nextObject;
- (id)nextObjectWithExclusiveAccessToken:(id)token;
@end

@implementation MPSectionedIdentifierListReverseEnumerator

- (id)_startEntryProxy
{
  startEntryProxy = self->_startEntryProxy;
  if (!startEntryProxy)
  {
    v4 = +[_MPSectionedIdentifierListProxyEntry startEntry];
    v5 = self->_startEntryProxy;
    self->_startEntryProxy = v4;

    startEntryProxy = self->_startEntryProxy;
  }

  return startEntryProxy;
}

- (id)nextObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13509;
  v10 = __Block_byref_object_dispose__13510;
  v11 = 0;
  sectionedIdentifierList = self->_sectionedIdentifierList;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MPSectionedIdentifierListReverseEnumerator_nextObject__block_invoke;
  v5[3] = &unk_1E76783E8;
  v5[4] = self;
  v5[5] = &v6;
  [(MPSectionedIdentifierList *)sectionedIdentifierList performWithExclusiveAccess:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __56__MPSectionedIdentifierListReverseEnumerator_nextObject__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) nextObjectWithExclusiveAccessToken:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)nextObjectWithExclusiveAccessToken:(id)token
{
  v54[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self->_sectionedIdentifierList];
  options = self->_options;
  v6 = &OBJC_IVAR___MPAVRoute__batteryLevel;
  v7 = &OBJC_IVAR___MPAVRoute__batteryLevel;
  v41 = *MEMORY[0x1E69B1340];
  v46 = options;
  v47 = tokenCopy;
  while (1)
  {
    v8 = [(NSMutableArray *)self->_contexts count];
    v9 = v6[317];
    if (!v8 && ![*(&self->super.super.isa + v9) count])
    {
      firstObject = 0;
      goto LABEL_57;
    }

    if ([*(&self->super.super.isa + v9) count])
    {
      firstObject = [*(&self->super.super.isa + v9) firstObject];
      [*(&self->super.super.isa + v9) removeObjectAtIndex:0];
      if (options & 0x20) == 0 || (_MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(self->_sectionedIdentifierList, firstObject, tokenCopy))
      {
        goto LABEL_57;
      }
    }

    lastObject = [(NSMutableArray *)self->_contexts lastObject];
    nextObject = [lastObject nextObject];
    v13 = nextObject;
    if (nextObject)
    {
      nextEntries = [nextObject nextEntries];
      objectEnumerator = [nextEntries objectEnumerator];

      [(NSMutableArray *)self->_contexts addObject:objectEnumerator];
      [*(&self->super.super.isa + v7[319]) addObject:v13];

      goto LABEL_45;
    }

    v16 = v7[319];
    lastObject2 = [*(&self->super.super.isa + v16) lastObject];
    contexts = self->_contexts;
    if (lastObject2 == self->_endEntry)
    {
      break;
    }

    [(NSMutableArray *)contexts removeLastObject];
    [*(&self->super.super.isa + v16) removeLastObject];
    v19 = self->_options;
    if (lastObject2 == self->_startEntryProxy)
    {
      if (v19)
      {
        endEntry = lastObject2;
      }

      else
      {
        endEntry = 0;
      }

      tokenCopy = v47;
      goto LABEL_54;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    previousEntry = [(MPSectionedIdentifierListEntry *)lastObject2 previousEntry];
    v48 = previousEntry;
    if (isKindOfClass)
    {
      sectionHeadEntry = [(MPSectionedIdentifierListEntry *)lastObject2 sectionHeadEntry];
LABEL_16:
      _startEntryProxy = sectionHeadEntry;
      nextEntries2 = [(__CFString *)sectionHeadEntry nextEntries];
      goto LABEL_17;
    }

    if (previousEntry)
    {
      sectionHeadEntry = previousEntry;
      goto LABEL_16;
    }

    _startEntryProxy = [(MPSectionedIdentifierListReverseEnumerator *)self _startEntryProxy];
    nextEntries2 = [(MPSectionedIdentifierList *)self->_sectionedIdentifierList _startEntriesWithExclusiveAccessToken:v47];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = lastObject2;
      if ([(MPSectionedIdentifierListEntry *)v37 isShuffledHead])
      {
        v45 = [(__CFString *)nextEntries2 arrayByAddingObject:v37];

        nextEntries2 = v45;
      }
    }

LABEL_17:
    if ([*(&self->super.super.isa + v16) indexOfObjectIdenticalTo:_startEntryProxy] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(&self->super.super.isa + v16) addObject:_startEntryProxy];
      objectEnumerator2 = [(__CFString *)nextEntries2 objectEnumerator];
      v25 = [objectEnumerator2 nextObjectIdenticalTo:lastObject2];
      if (!v25)
      {
        v26 = dispatch_semaphore_create(0);
        v44 = MEMORY[0x1E69B13D8];
        v52[0] = @"entryToEmit";
        v52[1] = @"nextEntryToEmit";
        v53[0] = lastObject2;
        v53[1] = _startEntryProxy;
        if (nextEntries2)
        {
          v27 = nextEntries2;
        }

        else
        {
          v27 = @"@";
        }

        v52[2] = @"nextEntries";
        v52[3] = @"previousEntry";
        v28 = v48;
        if (!v48)
        {
          v28 = @"@";
        }

        v53[2] = v27;
        v53[3] = v28;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];
        v54[0] = v43;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __81__MPSectionedIdentifierListReverseEnumerator_nextObjectWithExclusiveAccessToken___block_invoke;
        v50[3] = &unk_1E7682518;
        v51 = v26;
        v30 = v26;
        [v44 snapshotWithDomain:v41 type:@"Bug" subType:@"Invalid-SIL" context:@"entryToEmit.previousEntry.nextEntries-2" triggerThresholdValues:&stru_1F149ECA8 events:v29 completion:v50];

        dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:340 description:@"entryToEmit not found in entryToEmit.previousEntry.nextEntries"];

        v25 = 0;
      }

      [(NSMutableArray *)self->_contexts addObject:objectEnumerator2];
    }

    objc_opt_class();
    v32 = objc_opt_isKindOfClass();
    v33 = v32;
    if ((v19 & 1) == 0 && (v32 & 1) == 0)
    {
      v34 = 1;
      LOBYTE(options) = v46;
      tokenCopy = v47;
      goto LABEL_44;
    }

    v35 = self->_options;
    isDataSourceRemoved = [(MPSectionedIdentifierListEntry *)lastObject2 isDataSourceRemoved];
    LOBYTE(options) = v46;
    if (isDataSourceRemoved & 1) != 0 || ((v33 ^ 1))
    {
      tokenCopy = v47;
      if ((v35 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      tokenCopy = v47;
      if ((v46 & 0x20) == 0)
      {
        isDataSourceRemoved = [(MPSectionedIdentifierListEntry *)lastObject2 isRemoved];
      }

      if ((v35 & 2) != 0)
      {
        goto LABEL_41;
      }
    }

    if (isDataSourceRemoved)
    {
      goto LABEL_35;
    }

LABEL_41:
    if ((v46 & 0x20) != 0 && !_MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(self->_sectionedIdentifierList, lastObject2, tokenCopy))
    {
LABEL_35:
      v34 = 1;
      goto LABEL_44;
    }

    v40 = lastObject2;
    v34 = 0;
LABEL_44:

    v6 = &OBJC_IVAR___MPAVRoute__batteryLevel;
    v7 = &OBJC_IVAR___MPAVRoute__batteryLevel;
    if ((v34 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_45:
  }

  [(NSMutableArray *)contexts removeAllObjects];
  [*(&self->super.super.isa + v9) removeAllObjects];
  [*(&self->super.super.isa + v16) removeAllObjects];
  if ((self->_options & 0x40) == 0)
  {
    v40 = 0;
    goto LABEL_55;
  }

  endEntry = self->_endEntry;
LABEL_54:
  v40 = endEntry;
LABEL_55:

LABEL_56:
  firstObject = v40;
LABEL_57:

  return firstObject;
}

- (MPSectionedIdentifierListReverseEnumerator)initWithSectionedIdentifierList:(id)list options:(unint64_t)options startEntry:(id)entry endEntry:(id)endEntry withExclusiveAccessToken:(id)token
{
  listCopy = list;
  entryCopy = entry;
  endEntryCopy = endEntry;
  tokenCopy = token;
  if (entryCopy == endEntryCopy && entryCopy | endEntryCopy)
  {
    [MEMORY[0x1E696AAA8] currentHandler];
    v37 = v36 = options;
    [v37 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:234 description:@"endEntry cannot be the same as the startingEntry"];

    options = v36;
  }

  v39.receiver = self;
  v39.super_class = MPSectionedIdentifierListReverseEnumerator;
  v18 = [(MPSectionedIdentifierListReverseEnumerator *)&v39 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sectionedIdentifierList, list);
    v19->_options = options;
    array = [MEMORY[0x1E695DF70] array];
    nextEmittableEnumerationResults = v19->_nextEmittableEnumerationResults;
    v19->_nextEmittableEnumerationResults = array;

    array2 = [MEMORY[0x1E695DF70] array];
    contexts = v19->_contexts;
    v19->_contexts = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    entriesToEmit = v19->_entriesToEmit;
    v19->_entriesToEmit = array3;

    objc_storeStrong(&v19->_endEntry, endEntry);
    if ((options & 0x10) == 0 && !entryCopy)
    {
      [(MPSectionedIdentifierList *)v19->_sectionedIdentifierList _reverseEnumeratorWillStartAtEnd:v19 withExclusiveAccessToken:tokenCopy];
    }

    options = v19->_options;
    v27 = v19->_contexts;
    objectEnumerator = [MEMORY[0x1E695E0F0] objectEnumerator];
    [(NSMutableArray *)v27 addObject:objectEnumerator];

    if (entryCopy)
    {
      v29 = entryCopy;
    }

    else
    {
      v29 = [(MPSectionedIdentifierList *)v19->_sectionedIdentifierList _endEntryWithExclusiveAccessToken:tokenCopy];
      if (!v29)
      {
        goto LABEL_12;
      }
    }

    [(NSMutableArray *)v19->_entriesToEmit addObject:v29];
LABEL_12:
    if (!entryCopy && (options & 1) != 0)
    {
      v30 = *(&v19->super.super.isa + v38);
      v31 = +[_MPSectionedIdentifierListProxyEntry endEntry];
      [v30 addObject:v31];

      v32 = [(MPSectionedIdentifierList *)v19->_sectionedIdentifierList _endEntryWithExclusiveAccessToken:tokenCopy];

      if (!v32)
      {
        v33 = *(&v19->super.super.isa + v38);
        v34 = +[_MPSectionedIdentifierListProxyEntry startEntry];
        [v33 addObject:v34];
      }
    }

    _MPSectionedIdentifierListEnumeratorAdjustForStartItemInclusionIfNeeded(v19, options, entryCopy, tokenCopy);
  }

  return v19;
}

@end