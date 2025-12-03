@interface MPSectionedIdentifierListEnumerator
- (MPSectionedIdentifierListEnumerator)initWithSectionedIdentifierList:(id)list options:(unint64_t)options startEntry:(id)entry endEntry:(id)endEntry withExclusiveAccessToken:(id)token;
- (id)nextObject;
- (id)nextObjectWithExclusiveAccessToken:(id)token;
@end

@implementation MPSectionedIdentifierListEnumerator

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
  v5[2] = __49__MPSectionedIdentifierListEnumerator_nextObject__block_invoke;
  v5[3] = &unk_1E76783E8;
  v5[4] = self;
  v5[5] = &v6;
  [(MPSectionedIdentifierList *)sectionedIdentifierList performWithExclusiveAccess:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __49__MPSectionedIdentifierListEnumerator_nextObject__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) nextObjectWithExclusiveAccessToken:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)nextObjectWithExclusiveAccessToken:(id)token
{
  tokenCopy = token;
  [tokenCopy assertHasExclusiveAccessForOwner:self->_sectionedIdentifierList];
  options = self->_options;
  if ([(NSMutableArray *)self->_nextEmittableEnumerationResults count])
  {
    firstObject = [(NSMutableArray *)self->_nextEmittableEnumerationResults firstObject];
    [(NSMutableArray *)self->_nextEmittableEnumerationResults removeObjectAtIndex:0];
    if (options)
    {
      sectionedIdentifierList = [(MPSectionedIdentifierListEnumerator *)self sectionedIdentifierList];
      v8 = [sectionedIdentifierList _endEntryWithExclusiveAccessToken:tokenCopy];

      if (firstObject == v8)
      {
        nextEmittableEnumerationResults = self->_nextEmittableEnumerationResults;
        v10 = +[_MPSectionedIdentifierListProxyEntry endEntry];
        [(NSMutableArray *)nextEmittableEnumerationResults addObject:v10];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = firstObject;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      isDataSourceRemoved = [v11 isDataSourceRemoved];
      if ((isDataSourceRemoved & 1) == 0 && (isKindOfClass & 1) != 0 && (options & 0x20) == 0)
      {
        isDataSourceRemoved = [v11 isRemoved];
      }

      v14 = isDataSourceRemoved ^ 1;
    }

    else
    {
      isKindOfClass = 0;
      v14 = 1;
    }

    if ((options | isKindOfClass) & 1) != 0 && (options >> 1) & 1 | v14 & 1 && ((options & 0x20) == 0 || (_MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(self->_sectionedIdentifierList, firstObject, tokenCopy)))
    {
      goto LABEL_47;
    }
  }

  if ([(NSMutableArray *)self->_contexts count])
  {
    v31 = 32;
    while (1)
    {
      lastObject = [(NSMutableArray *)self->_contexts lastObject];
      nextObject = [lastObject nextObject];
      v17 = nextObject;
      endEntry = self->_endEntry;
      if (endEntry && nextObject == endEntry)
      {
        break;
      }

      if (nextObject)
      {
        if ((self->_options & 0x10) == 0)
        {
          [(MPSectionedIdentifierList *)self->_sectionedIdentifierList _enumerator:self didEncounterEntry:nextObject withExclusiveAccessToken:tokenCopy];
        }

        contexts = self->_contexts;
        nextEntries = [v17 nextEntries];
        reverseObjectEnumerator = [nextEntries reverseObjectEnumerator];
        [(NSMutableArray *)contexts addObject:reverseObjectEnumerator];

        if (options)
        {
          sectionedIdentifierList2 = [(MPSectionedIdentifierListEnumerator *)self sectionedIdentifierList];
          v24 = [sectionedIdentifierList2 _endEntryWithExclusiveAccessToken:tokenCopy];

          if (v17 == v24)
          {
            v25 = *(&self->super.super.isa + v31);
            v26 = +[_MPSectionedIdentifierListProxyEntry endEntry];
            [v25 addObject:v26];
          }
        }

        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        isDataSourceRemoved2 = [v17 isDataSourceRemoved];
        if ((isDataSourceRemoved2 & 1) == 0 && (v27 & 1) != 0 && (options & 0x20) == 0)
        {
          isDataSourceRemoved2 = [v17 isRemoved];
        }

        if (((options | v27) & 1) != 0 && (options >> 1) & 1 | (isDataSourceRemoved2 ^ 1) & 1 && ((options & 0x20) == 0 || _MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(self->_sectionedIdentifierList, v17, tokenCopy)))
        {
          v29 = v17;
          v17 = v29;
          goto LABEL_45;
        }
      }

      else
      {
        [(NSMutableArray *)self->_contexts removeLastObject];
      }

      if (![(NSMutableArray *)self->_contexts count])
      {
        goto LABEL_40;
      }
    }

    [(NSMutableArray *)self->_contexts removeAllObjects];
    [*(&self->super.super.isa + v31) removeAllObjects];
    if ((self->_options & 0x40) == 0)
    {
      firstObject = 0;
      goto LABEL_46;
    }

    v29 = self->_endEntry;
LABEL_45:
    firstObject = v29;
LABEL_46:
  }

  else
  {
LABEL_40:
    firstObject = 0;
  }

LABEL_47:

  return firstObject;
}

- (MPSectionedIdentifierListEnumerator)initWithSectionedIdentifierList:(id)list options:(unint64_t)options startEntry:(id)entry endEntry:(id)endEntry withExclusiveAccessToken:(id)token
{
  v70[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  entryCopy = entry;
  endEntryCopy = endEntry;
  tokenCopy = token;
  optionsCopy = options;
  if ((options & 8) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:45 description:@"Cannot instantiate forward enumerator with MPSectionedIdentifierListEnumerationOptionReverse set"];
  }

  if (entryCopy == endEntryCopy && entryCopy | endEntryCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:46 description:@"endEntry cannot be the same as the startingEntry"];
  }

  v67.receiver = self;
  v67.super_class = MPSectionedIdentifierListEnumerator;
  v17 = [(MPSectionedIdentifierListEnumerator *)&v67 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sectionedIdentifierList, list);
    v18->_options = options;
    array = [MEMORY[0x1E695DF70] array];
    nextEmittableEnumerationResults = v18->_nextEmittableEnumerationResults;
    v18->_nextEmittableEnumerationResults = array;

    array2 = [MEMORY[0x1E695DF70] array];
    contexts = v18->_contexts;
    v18->_contexts = array2;

    objc_storeStrong(&v18->_endEntry, endEntry);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      previousEntry = [entryCopy previousEntry];

      if (!previousEntry)
      {
        v50 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList valueForKey:@"_startEntries"];
        if (([v50 containsObject:entryCopy] & 1) == 0)
        {

          entryCopy = 0;
        }
      }
    }

    options = v18->_options;
    if (entryCopy)
    {
      v54 = endEntryCopy;
      v56 = listCopy;
      if ((options & 0x10) == 0)
      {
        [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _enumerator:v18 didEncounterEntry:entryCopy withExclusiveAccessToken:tokenCopy];
      }

      v55 = entryCopy;
      v24 = entryCopy;
      v58 = *MEMORY[0x1E69B1340];
      v60 = tokenCopy;
      v61 = v24;
      v59 = v18;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFString *)v24 sectionHeadEntry];
        }

        else
        {
          [(__CFString *)v24 previousEntry];
        }
        v25 = ;
        v26 = v25;
        if ((optionsCopy & 0x10) == 0 && v25)
        {
          [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _enumerator:v18 didEncounterEntry:v25 withExclusiveAccessToken:tokenCopy];
        }

        nextEntries = [(__CFString *)v26 nextEntries];
        v28 = nextEntries;
        if (nextEntries)
        {
          v29 = nextEntries;
        }

        else
        {
          v29 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList valueForKey:@"_startEntries"];
        }

        v30 = v29;

        reverseObjectEnumerator = [(__CFString *)v30 reverseObjectEnumerator];
        v32 = [reverseObjectEnumerator nextObjectIdenticalTo:v24];
        if (!v32)
        {
          v33 = dispatch_semaphore_create(0);
          v63 = MEMORY[0x1E69B13D8];
          v68[0] = @"startEntry";
          v68[1] = @"innerEntry";
          v69[0] = v61;
          v69[1] = v24;
          if (v26)
          {
            v34 = v26;
          }

          else
          {
            v34 = @"@";
          }

          v68[2] = @"previousEntry";
          v68[3] = @"previousEntry.nextEntries";
          if (v30)
          {
            v35 = v30;
          }

          else
          {
            v35 = @"@";
          }

          v69[2] = v34;
          v69[3] = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:v68 count:4];
          v70[0] = v36;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:1];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __124__MPSectionedIdentifierListEnumerator_initWithSectionedIdentifierList_options_startEntry_endEntry_withExclusiveAccessToken___block_invoke;
          v65[3] = &unk_1E7682518;
          v66 = v33;
          v38 = v33;
          v18 = v59;
          [v63 snapshotWithDomain:v58 type:@"Bug" subType:@"Invalid-SIL" context:@"innerEntry.previousEntry.nextEntries" triggerThresholdValues:&stru_1F149ECA8 events:v37 completion:v65];

          dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
          tokenCopy = v60;
          currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler3 handleFailureInMethod:a2 object:v59 file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:106 description:@"innerEntry not found in innerEntry.previousEntry.nextEntries"];
        }

        [(NSMutableArray *)v18->_contexts insertObject:reverseObjectEnumerator atIndex:0];

        if (!v26)
        {
          break;
        }

        v24 = v26;
        if ([(__CFString *)v26 entryType]== 2)
        {
          v24 = v26;
          if (![(__CFString *)v26 branchDepth])
          {
            break;
          }
        }
      }

      v40 = v18->_contexts;
      nextEntries2 = [(__CFString *)v61 nextEntries];
      reverseObjectEnumerator2 = [nextEntries2 reverseObjectEnumerator];
      [(NSMutableArray *)v40 addObject:reverseObjectEnumerator2];

      objc_opt_class();
      listCopy = v56;
      endEntryCopy = v54;
      if (objc_opt_isKindOfClass() & 1) != 0 || (options)
      {
        [(NSMutableArray *)v18->_nextEmittableEnumerationResults addObject:v61];
      }

      entryCopy = v55;
    }

    else
    {
      v43 = v18->_contexts;
      v44 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _startEntriesWithExclusiveAccessToken:tokenCopy];
      reverseObjectEnumerator3 = [v44 reverseObjectEnumerator];
      [(NSMutableArray *)v43 addObject:reverseObjectEnumerator3];

      if ((options & 1) == 0)
      {
        goto LABEL_40;
      }

      v46 = v18->_nextEmittableEnumerationResults;
      v47 = +[_MPSectionedIdentifierListProxyEntry startEntry];
      [(NSMutableArray *)v46 addObject:v47];

      v48 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _endEntryWithExclusiveAccessToken:tokenCopy];

      if (v48)
      {
        goto LABEL_40;
      }

      v51 = v18->_nextEmittableEnumerationResults;
      v26 = +[_MPSectionedIdentifierListProxyEntry endEntry];
      [(NSMutableArray *)v51 addObject:v26];
    }

LABEL_40:
    _MPSectionedIdentifierListEnumeratorAdjustForStartItemInclusionIfNeeded(v18, optionsCopy, entryCopy, tokenCopy);
  }

  return v18;
}

@end