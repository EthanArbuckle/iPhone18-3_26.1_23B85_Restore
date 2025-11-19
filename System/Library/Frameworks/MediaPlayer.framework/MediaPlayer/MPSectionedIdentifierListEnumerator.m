@interface MPSectionedIdentifierListEnumerator
- (MPSectionedIdentifierListEnumerator)initWithSectionedIdentifierList:(id)a3 options:(unint64_t)a4 startEntry:(id)a5 endEntry:(id)a6 withExclusiveAccessToken:(id)a7;
- (id)nextObject;
- (id)nextObjectWithExclusiveAccessToken:(id)a3;
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

- (id)nextObjectWithExclusiveAccessToken:(id)a3
{
  v4 = a3;
  [v4 assertHasExclusiveAccessForOwner:self->_sectionedIdentifierList];
  options = self->_options;
  if ([(NSMutableArray *)self->_nextEmittableEnumerationResults count])
  {
    v6 = [(NSMutableArray *)self->_nextEmittableEnumerationResults firstObject];
    [(NSMutableArray *)self->_nextEmittableEnumerationResults removeObjectAtIndex:0];
    if (options)
    {
      v7 = [(MPSectionedIdentifierListEnumerator *)self sectionedIdentifierList];
      v8 = [v7 _endEntryWithExclusiveAccessToken:v4];

      if (v6 == v8)
      {
        nextEmittableEnumerationResults = self->_nextEmittableEnumerationResults;
        v10 = +[_MPSectionedIdentifierListProxyEntry endEntry];
        [(NSMutableArray *)nextEmittableEnumerationResults addObject:v10];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v13 = [v11 isDataSourceRemoved];
      if ((v13 & 1) == 0 && (isKindOfClass & 1) != 0 && (options & 0x20) == 0)
      {
        v13 = [v11 isRemoved];
      }

      v14 = v13 ^ 1;
    }

    else
    {
      isKindOfClass = 0;
      v14 = 1;
    }

    if ((options | isKindOfClass) & 1) != 0 && (options >> 1) & 1 | v14 & 1 && ((options & 0x20) == 0 || (_MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(self->_sectionedIdentifierList, v6, v4)))
    {
      goto LABEL_47;
    }
  }

  if ([(NSMutableArray *)self->_contexts count])
  {
    v31 = 32;
    while (1)
    {
      v15 = [(NSMutableArray *)self->_contexts lastObject];
      v16 = [v15 nextObject];
      v17 = v16;
      endEntry = self->_endEntry;
      if (endEntry && v16 == endEntry)
      {
        break;
      }

      if (v16)
      {
        if ((self->_options & 0x10) == 0)
        {
          [(MPSectionedIdentifierList *)self->_sectionedIdentifierList _enumerator:self didEncounterEntry:v16 withExclusiveAccessToken:v4];
        }

        contexts = self->_contexts;
        v21 = [v17 nextEntries];
        v22 = [v21 reverseObjectEnumerator];
        [(NSMutableArray *)contexts addObject:v22];

        if (options)
        {
          v23 = [(MPSectionedIdentifierListEnumerator *)self sectionedIdentifierList];
          v24 = [v23 _endEntryWithExclusiveAccessToken:v4];

          if (v17 == v24)
          {
            v25 = *(&self->super.super.isa + v31);
            v26 = +[_MPSectionedIdentifierListProxyEntry endEntry];
            [v25 addObject:v26];
          }
        }

        objc_opt_class();
        v27 = objc_opt_isKindOfClass();
        v28 = [v17 isDataSourceRemoved];
        if ((v28 & 1) == 0 && (v27 & 1) != 0 && (options & 0x20) == 0)
        {
          v28 = [v17 isRemoved];
        }

        if (((options | v27) & 1) != 0 && (options >> 1) & 1 | (v28 ^ 1) & 1 && ((options & 0x20) == 0 || _MPSectionedIdentifierListEnumeratorShouldEmitAsDataSourceEntry(self->_sectionedIdentifierList, v17, v4)))
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
      v6 = 0;
      goto LABEL_46;
    }

    v29 = self->_endEntry;
LABEL_45:
    v6 = v29;
LABEL_46:
  }

  else
  {
LABEL_40:
    v6 = 0;
  }

LABEL_47:

  return v6;
}

- (MPSectionedIdentifierListEnumerator)initWithSectionedIdentifierList:(id)a3 options:(unint64_t)a4 startEntry:(id)a5 endEntry:(id)a6 withExclusiveAccessToken:(id)a7
{
  v70[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v64 = a4;
  if ((a4 & 8) != 0)
  {
    v53 = [MEMORY[0x1E696AAA8] currentHandler];
    [v53 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:45 description:@"Cannot instantiate forward enumerator with MPSectionedIdentifierListEnumerationOptionReverse set"];
  }

  if (v14 == v15 && v14 | v15)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:46 description:@"endEntry cannot be the same as the startingEntry"];
  }

  v67.receiver = self;
  v67.super_class = MPSectionedIdentifierListEnumerator;
  v17 = [(MPSectionedIdentifierListEnumerator *)&v67 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sectionedIdentifierList, a3);
    v18->_options = a4;
    v19 = [MEMORY[0x1E695DF70] array];
    nextEmittableEnumerationResults = v18->_nextEmittableEnumerationResults;
    v18->_nextEmittableEnumerationResults = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    contexts = v18->_contexts;
    v18->_contexts = v21;

    objc_storeStrong(&v18->_endEntry, a6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v14 previousEntry];

      if (!v23)
      {
        v50 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList valueForKey:@"_startEntries"];
        if (([v50 containsObject:v14] & 1) == 0)
        {

          v14 = 0;
        }
      }
    }

    options = v18->_options;
    if (v14)
    {
      v54 = v15;
      v56 = v13;
      if ((a4 & 0x10) == 0)
      {
        [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _enumerator:v18 didEncounterEntry:v14 withExclusiveAccessToken:v16];
      }

      v55 = v14;
      v24 = v14;
      v58 = *MEMORY[0x1E69B1340];
      v60 = v16;
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
        if ((v64 & 0x10) == 0 && v25)
        {
          [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _enumerator:v18 didEncounterEntry:v25 withExclusiveAccessToken:v16];
        }

        v27 = [(__CFString *)v26 nextEntries];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList valueForKey:@"_startEntries"];
        }

        v30 = v29;

        v31 = [(__CFString *)v30 reverseObjectEnumerator];
        v32 = [v31 nextObjectIdenticalTo:v24];
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
          v16 = v60;
          v39 = [MEMORY[0x1E696AAA8] currentHandler];
          [v39 handleFailureInMethod:a2 object:v59 file:@"MPSectionedIdentifierListEnumerator.m" lineNumber:106 description:@"innerEntry not found in innerEntry.previousEntry.nextEntries"];
        }

        [(NSMutableArray *)v18->_contexts insertObject:v31 atIndex:0];

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
      v41 = [(__CFString *)v61 nextEntries];
      v42 = [v41 reverseObjectEnumerator];
      [(NSMutableArray *)v40 addObject:v42];

      objc_opt_class();
      v13 = v56;
      v15 = v54;
      if (objc_opt_isKindOfClass() & 1) != 0 || (options)
      {
        [(NSMutableArray *)v18->_nextEmittableEnumerationResults addObject:v61];
      }

      v14 = v55;
    }

    else
    {
      v43 = v18->_contexts;
      v44 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _startEntriesWithExclusiveAccessToken:v16];
      v45 = [v44 reverseObjectEnumerator];
      [(NSMutableArray *)v43 addObject:v45];

      if ((options & 1) == 0)
      {
        goto LABEL_40;
      }

      v46 = v18->_nextEmittableEnumerationResults;
      v47 = +[_MPSectionedIdentifierListProxyEntry startEntry];
      [(NSMutableArray *)v46 addObject:v47];

      v48 = [(MPSectionedIdentifierList *)v18->_sectionedIdentifierList _endEntryWithExclusiveAccessToken:v16];

      if (v48)
      {
        goto LABEL_40;
      }

      v51 = v18->_nextEmittableEnumerationResults;
      v26 = +[_MPSectionedIdentifierListProxyEntry endEntry];
      [(NSMutableArray *)v51 addObject:v26];
    }

LABEL_40:
    _MPSectionedIdentifierListEnumeratorAdjustForStartItemInclusionIfNeeded(v18, v64, v14, v16);
  }

  return v18;
}

@end