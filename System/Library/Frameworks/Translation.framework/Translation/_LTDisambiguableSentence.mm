@interface _LTDisambiguableSentence
- (BOOL)_hasOverlapInRangeArray:(id)array;
- (BOOL)_restoreChanges:(id)changes;
- (BOOL)hasDisambiguationsOfType:(unint64_t)type;
- (NSArray)history;
- (NSString)romanization;
- (NSString)targetText;
- (_LTDisambiguableSentence)initWithCoder:(id)coder;
- (_LTDisambiguableSentence)initWithSourceText:(id)text targetPhrases:(id)phrases selectedPhraseIndex:(unint64_t)index;
- (_LTDisambiguableSentenceDelegate)delegate;
- (_LTDisambiguableSentenceHistoryProviding)historyProvider;
- (_LTDisambiguationNode)selectedTargetPhrase;
- (id)_directedEdgeFromUnvalidatedEdge:(id)edge;
- (id)_genderForLinkIndex:(unint64_t)index inPhraseIndex:(unint64_t)phraseIndex;
- (id)_generateAttributedStringForLocation:(unint64_t)location result:(id)result excludedTypes:(id)types globalAttributes:(id)attributes attributeProvider:(id)provider;
- (id)_historyForEncoding;
- (id)_includedTypesFromDelegate;
- (id)_includedTypesFromExcludedTypes:(id)types;
- (id)_preferredEdgeFromEdgesWithDuplicateMeaning:(id)meaning forLinkIndex:(unint64_t)index inPhrase:(unint64_t)phrase;
- (id)_userSelectionFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (id)copyWithZone:(_NSZone *)zone;
- (id)meaningDescriptionForLinkIndex:(unint64_t)index inTargetPhrase:(unint64_t)phrase;
- (id)menuConfigurationsForLinkIndex:(unint64_t)index;
- (id)sourceTextSnippetForLinkIndex:(unint64_t)index;
- (unint64_t)_preferredGenderFromEdgesWithDuplicateMeaning:(id)meaning forLinkIndex:(unint64_t)index inPhrase:(unint64_t)phrase;
- (void)_commonInit;
- (void)_insertPrefix:(id)prefix;
- (void)_removeRomanization;
- (void)_removeUnvalidatedAdjacencyLists;
- (void)_validateAndPopulateEdges;
- (void)addNodeIndexToHistory:(unint64_t)history;
- (void)encodeWithCoder:(id)coder;
- (void)setHistoryProvider:(id)provider;
- (void)setSelectedPhraseIndex:(unint64_t)index;
@end

@implementation _LTDisambiguableSentence

- (_LTDisambiguableSentence)initWithSourceText:(id)text targetPhrases:(id)phrases selectedPhraseIndex:(unint64_t)index
{
  textCopy = text;
  phrasesCopy = phrases;
  v19.receiver = self;
  v19.super_class = _LTDisambiguableSentence;
  v10 = [(_LTDisambiguableSentence *)&v19 init];
  if (v10)
  {
    v11 = [textCopy copy];
    sourceText = v10->_sourceText;
    v10->_sourceText = v11;

    v13 = [phrasesCopy copy];
    targetPhrases = v10->_targetPhrases;
    v10->_targetPhrases = v13;

    v10->_selectedPhraseIndex = index;
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v10->_UUID;
    v10->_UUID = uUID;

    [(_LTDisambiguableSentence *)v10 _commonInit];
    [(_LTDisambiguableSentence *)v10 _validateAndPopulateEdges];
    v17 = v10;
  }

  return v10;
}

- (void)_commonInit
{
  objc_storeWeak(&self->_historyProvider, self);
  v3 = MEMORY[0x277CBEB18];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_selectedPhraseIndex];
  v4 = [v3 arrayWithObject:v6];
  history = self->_history;
  self->_history = v4;
}

- (_LTDisambiguationNode)selectedTargetPhrase
{
  selectedPhraseIndex = self->_selectedPhraseIndex;
  if (selectedPhraseIndex >= [(NSArray *)self->_targetPhrases count])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:self->_selectedPhraseIndex];
  }

  return v4;
}

- (BOOL)hasDisambiguationsOfType:(unint64_t)type
{
  targetPhrases = self->_targetPhrases;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___LTDisambiguableSentence_hasDisambiguationsOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e31_B16__0___LTDisambiguationNode_8l;
  v5[4] = type;
  return [(NSArray *)targetPhrases lt_hasObjectPassingTest:v5];
}

- (NSString)targetText
{
  selectedTargetPhrase = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  text = [selectedTargetPhrase text];
  v4 = text;
  if (text)
  {
    v5 = text;
  }

  else
  {
    v5 = &stru_284DBB9B8;
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)romanization
{
  selectedTargetPhrase = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  romanization = [selectedTargetPhrase romanization];

  return romanization;
}

- (id)menuConfigurationsForLinkIndex:(unint64_t)index
{
  v59 = *MEMORY[0x277D85DE8];
  selectedTargetPhrase = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  v41 = selectedTargetPhrase;
  if (!selectedTargetPhrase)
  {
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_31;
  }

  links = [selectedTargetPhrase links];
  v4 = links;
  v5 = [links count];
  v6 = MEMORY[0x277CBEBF8];
  if (v5 <= index)
  {
    goto LABEL_29;
  }

  v37 = [links objectAtIndexedSubscript:?];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  adjacencyList = [v37 adjacencyList];
  v9 = [adjacencyList countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = *v54;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v54 != v10)
      {
        objc_enumerationMutation(adjacencyList);
      }

      v12 = *(*(&v53 + 1) + 8 * i);
      type = [v12 type];
      v14 = array;
      if (type)
      {
        if (type != 1)
        {
          continue;
        }

        v14 = array2;
      }

      [v14 addObject:v12];
    }

    v9 = [adjacencyList countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v9);
LABEL_14:

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = array;
  v17 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v17)
  {
    v18 = *v50;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v50 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v49 + 1) + 8 * j);
        menuDescription = [v20 menuDescription];
        v22 = [dictionary objectForKeyedSubscript:menuDescription];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v6;
        }

        v25 = v24;

        v26 = [v25 arrayByAddingObject:v20];

        [dictionary setObject:v26 forKeyedSubscript:menuDescription];
      }

      v17 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v17);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __59___LTDisambiguableSentence_menuConfigurationsForLinkIndex___block_invoke;
  v45[3] = &unk_278B6CA98;
  objc_copyWeak(v47, &location);
  v28 = dictionary2;
  v46 = v28;
  v47[1] = index;
  [dictionary enumerateKeysAndObjectsUsingBlock:v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __59___LTDisambiguableSentence_menuConfigurationsForLinkIndex___block_invoke_2;
  v43[3] = &unk_278B6CAC0;
  v29 = v28;
  v44 = v29;
  v30 = [v16 _ltCompactMap:v43];
  v31 = [v30 sortedArrayUsingSelector:sel_compare_];
  v32 = [array2 sortedArrayUsingSelector:sel_compare_];
  _includedTypesFromDelegate = [(_LTDisambiguableSentence *)self _includedTypesFromDelegate];
  array3 = [MEMORY[0x277CBEB18] array];
  if ([_includedTypesFromDelegate containsObject:&unk_284DC9918])
  {
    [array3 addObjectsFromArray:v31];
  }

  if ([_includedTypesFromDelegate containsObject:&unk_284DC9930])
  {
    [array3 addObjectsFromArray:v32];
  }

  v6 = [array3 copy];

  objc_destroyWeak(v47);
  objc_destroyWeak(&location);

  v4 = links;
LABEL_29:

LABEL_31:
  v35 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sourceTextSnippetForLinkIndex:(unint64_t)index
{
  selectedTargetPhrase = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  v6 = selectedTargetPhrase;
  if (selectedTargetPhrase)
  {
    links = [selectedTargetPhrase links];
    v8 = [links count];

    if (v8 > index)
    {
      links2 = [v6 links];
      v10 = [links2 objectAtIndexedSubscript:index];

      sourceText = [(_LTDisambiguableSentence *)self sourceText];
      sourceRange = [v10 sourceRange];
      v14 = [sourceText substringWithRange:{sourceRange, v13}];

      goto LABEL_7;
    }

    v15 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LTDisambiguableSentence sourceTextSnippetForLinkIndex:];
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)meaningDescriptionForLinkIndex:(unint64_t)index inTargetPhrase:(unint64_t)phrase
{
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  v8 = [targetPhrases count];

  if (v8 <= phrase)
  {
    menuDescription = 0;
  }

  else
  {
    targetPhrases2 = [(_LTDisambiguableSentence *)self targetPhrases];
    v10 = [targetPhrases2 objectAtIndexedSubscript:phrase];

    links = [v10 links];
    v12 = [links count];

    if (v12 <= index)
    {
      v18 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LTDisambiguableSentence meaningDescriptionForLinkIndex:inTargetPhrase:];
      }

      menuDescription = 0;
    }

    else
    {
      links2 = [v10 links];
      v14 = [links2 objectAtIndexedSubscript:index];

      adjacencyList = [v14 adjacencyList];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __74___LTDisambiguableSentence_meaningDescriptionForLinkIndex_inTargetPhrase___block_invoke;
      v21[3] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
      v21[4] = phrase;
      v16 = [adjacencyList lt_firstObjectPassingTest:v21];

      if (v16)
      {
        menuDescription = [v16 menuDescription];
      }

      else
      {
        v19 = _LTOSLogDisambiguation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [_LTDisambiguableSentence meaningDescriptionForLinkIndex:inTargetPhrase:];
        }

        menuDescription = 0;
      }
    }
  }

  return menuDescription;
}

- (void)_insertPrefix:(id)prefix
{
  v18 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  if ([prefixCopy length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", prefixCopy, self->_sourceText];
    sourceText = self->_sourceText;
    self->_sourceText = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
    v8 = [targetPhrases countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(targetPhrases);
          }

          [*(*(&v13 + 1) + 8 * v11++) _insertPrefix:prefixCopy];
        }

        while (v9 != v11);
        v9 = [targetPhrases countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)history
{
  v2 = [(NSMutableArray *)self->_history copy];

  return v2;
}

- (void)addNodeIndexToHistory:(unint64_t)history
{
  history = self->_history;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:history];
  [(NSMutableArray *)history addObject:v4];
}

- (void)setHistoryProvider:(id)provider
{
  v18 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  WeakRetained = objc_loadWeakRetained(&self->_historyProvider);

  if (WeakRetained != providerCopy)
  {
    v6 = objc_loadWeakRetained(&self->_historyProvider);
    objc_storeWeak(&self->_historyProvider, providerCopy);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    history = [(_LTDisambiguableSentence *)v6 history];
    v8 = [history countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(history);
          }

          [providerCopy addNodeIndexToHistory:{objc_msgSend(*(*(&v13 + 1) + 8 * v11++), "unsignedIntegerValue")}];
        }

        while (v9 != v11);
        v9 = [history countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if (v6 == self)
    {
      [(NSMutableArray *)self->_history removeAllObjects];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setSelectedPhraseIndex:(unint64_t)index
{
  if (self->_selectedPhraseIndex != index && [(NSArray *)self->_targetPhrases count]> index)
  {
    v9 = [(_LTDisambiguableSentence *)self _userSelectionFromIndex:self->_selectedPhraseIndex toIndex:index];
    self->_selectedPhraseIndex = index;
    WeakRetained = objc_loadWeakRetained(&self->_historyProvider);
    [WeakRetained addNodeIndexToHistory:index];

    v6 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:index];
      [v7 disambiguableSentence:self didSelectNode:v8 atIndex:index withSelection:v9];
    }
  }
}

- (BOOL)_restoreChanges:(id)changes
{
  v39 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  changeMapping = [changesCopy changeMapping];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___LTDisambiguableSentence__restoreChanges___block_invoke;
  aBlock[3] = &unk_278B6CB08;
  aBlock[4] = self;
  v6 = changeMapping;
  v34 = v6;
  v7 = _Block_copy(aBlock);
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  if ([targetPhrases count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(targetPhrases, "count")}];
    targetPhrases2 = [(_LTDisambiguableSentence *)self targetPhrases];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __44___LTDisambiguableSentence__restoreChanges___block_invoke_2;
    v30[3] = &unk_278B6CB58;
    v32 = v7;
    v11 = v9;
    v31 = v11;
    [targetPhrases2 enumerateObjectsUsingBlock:v30];

    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x2020000000;
    firstObject = [v11 firstObject];
    [firstObject doubleValue];
    v14 = v13;

    v29[2] = v14;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44___LTDisambiguableSentence__restoreChanges___block_invoke_4;
    v23[3] = &unk_278B6CB80;
    v23[4] = &v28;
    v23[5] = &v24;
    [v11 enumerateObjectsUsingBlock:v23];
    v15 = v25[3];
    v16 = v15 != 0;
    if (v15)
    {
      v17 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = v25[3];
        v19 = *(v29[0] + 24);
        *buf = 134218240;
        v36 = v18;
        v37 = 2048;
        v38 = v19;
        _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Highest scoring node was %zu with score %f; making this the selected node in the sentence to restore user selections", buf, 0x16u);
      }

      self->_selectedPhraseIndex = v25[3];
    }

    else
    {
      v20 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(_LTDisambiguableSentence *)v29 _restoreChanges:v20];
      }
    }

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)_userSelectionFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v34 = *MEMORY[0x277D85DE8];
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  v8 = [targetPhrases count];

  v9 = 0;
  if (index != toIndex && v8 > index && v8 > toIndex)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    targetPhrases2 = [(_LTDisambiguableSentence *)self targetPhrases];
    v11 = [targetPhrases2 objectAtIndexedSubscript:index];

    links = [v11 links];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60___LTDisambiguableSentence__userSelectionFromIndex_toIndex___block_invoke;
    v19[3] = &unk_278B6CBA8;
    v19[4] = &v24;
    v19[5] = &v20;
    v19[6] = toIndex;
    [links enumerateObjectsUsingBlock:v19];

    v13 = [(_LTDisambiguableSentence *)self sourceTextSnippetForLinkIndex:v21[3]];
    v14 = v13;
    if (v25[5] && v21[3] != 0x7FFFFFFFFFFFFFFFLL && v13)
    {
      v15 = [_LTDisambiguationUserSelection alloc];
      v9 = [(_LTDisambiguationUserSelection *)v15 initWithEdge:v25[5] sourceSnippet:v14 linkIndex:v21[3]];
    }

    else
    {
      v16 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        indexCopy = index;
        v32 = 2048;
        toIndexCopy = toIndex;
        _os_log_impl(&dword_23AAF5000, v16, OS_LOG_TYPE_INFO, "Failed to find source edge when moving from node %zu to %zu; not providing user selection info", buf, 0x16u);
      }

      v9 = 0;
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_genderForLinkIndex:(unint64_t)index inPhraseIndex:(unint64_t)phraseIndex
{
  if ([(NSArray *)self->_targetPhrases count]<= phraseIndex)
  {
    gender = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:phraseIndex];
    links = [v7 links];
    if ([links count] <= index)
    {
      gender = 0;
    }

    else
    {
      v9 = [links objectAtIndexedSubscript:index];
      gender = [v9 gender];
    }
  }

  return gender;
}

- (unint64_t)_preferredGenderFromEdgesWithDuplicateMeaning:(id)meaning forLinkIndex:(unint64_t)index inPhrase:(unint64_t)phrase
{
  v46 = *MEMORY[0x277D85DE8];
  meaningCopy = meaning;
  v9 = [(_LTDisambiguableSentence *)self _genderForLinkIndex:index inPhraseIndex:phrase];
  v10 = v9;
  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    indexCopy = index;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_historyProvider);
    history = [WeakRetained history];
    reverseObjectEnumerator = [history reverseObjectEnumerator];

    obj = reverseObjectEnumerator;
    v15 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      v18 = v40;
LABEL_5:
      v19 = 0;
      v36 = v16;
      while (1)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntegerValue2 = [*(*(&v41 + 1) + 8 * v19) unsignedIntegerValue];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v40[0] = __96___LTDisambiguableSentence__preferredGenderFromEdgesWithDuplicateMeaning_forLinkIndex_inPhrase___block_invoke;
        v40[1] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
        v40[2] = unsignedIntegerValue2;
        v21 = [meaningCopy lt_firstObjectPassingTest:v39];
        targetGender = [v21 targetGender];
        v23 = targetGender;
        if (targetGender)
        {
          break;
        }

        if (unsignedIntegerValue2 < [(NSArray *)self->_targetPhrases count])
        {
          v24 = v18;
          v25 = v17;
          v26 = meaningCopy;
          v27 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:unsignedIntegerValue2];
          links = [v27 links];
          v29 = [links count];

          if (v29 > indexCopy)
          {
            links2 = [v27 links];
            v31 = [links2 objectAtIndexedSubscript:indexCopy];

            gender = [v31 gender];
            if (gender)
            {
              v35 = gender;
              unsignedIntegerValue = [gender unsignedIntegerValue];

              meaningCopy = v26;
              goto LABEL_18;
            }
          }

          meaningCopy = v26;
          v17 = v25;
          v18 = v24;
          v16 = v36;
        }

        if (v16 == ++v19)
        {
          v16 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v16)
          {
            goto LABEL_5;
          }

          goto LABEL_16;
        }
      }

      unsignedIntegerValue = [targetGender unsignedIntegerValue];
LABEL_18:

      goto LABEL_19;
    }

LABEL_16:

    unsignedIntegerValue = 0;
LABEL_19:
    v10 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)_preferredEdgeFromEdgesWithDuplicateMeaning:(id)meaning forLinkIndex:(unint64_t)index inPhrase:(unint64_t)phrase
{
  meaningCopy = meaning;
  v9 = [(_LTDisambiguableSentence *)self _preferredGenderFromEdgesWithDuplicateMeaning:meaningCopy forLinkIndex:index inPhrase:phrase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94___LTDisambiguableSentence__preferredEdgeFromEdgesWithDuplicateMeaning_forLinkIndex_inPhrase___block_invoke;
  v15[3] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
  v15[4] = v9;
  v10 = [meaningCopy lt_firstObjectPassingTest:v15];
  v11 = v10;
  if (v10)
  {
    firstObject = v10;
  }

  else
  {
    firstObject = [meaningCopy firstObject];
  }

  v13 = firstObject;

  return v13;
}

- (id)_generateAttributedStringForLocation:(unint64_t)location result:(id)result excludedTypes:(id)types globalAttributes:(id)attributes attributeProvider:(id)provider
{
  resultCopy = result;
  typesCopy = types;
  attributesCopy = attributes;
  providerCopy = provider;
  if (location)
  {
    [(_LTDisambiguableSentence *)self targetText];
  }

  else
  {
    [(_LTDisambiguableSentence *)self sourceText];
  }
  v16 = ;
  v17 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v16];
  v18 = v17;
  if (attributesCopy)
  {
    [v17 addAttributes:attributesCopy range:{0, objc_msgSend(v17, "length")}];
  }

  selectedTargetPhrase = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  if (selectedTargetPhrase)
  {
    [(_LTDisambiguableSentence *)self _includedTypesFromExcludedTypes:typesCopy];
    v20 = v26 = v16;
    links = [selectedTargetPhrase links];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __121___LTDisambiguableSentence__generateAttributedStringForLocation_result_excludedTypes_globalAttributes_attributeProvider___block_invoke;
    v27[3] = &unk_278B6CBD0;
    v28 = v20;
    locationCopy = location;
    v33 = providerCopy;
    v29 = resultCopy;
    selfCopy = self;
    v31 = selectedTargetPhrase;
    v22 = v18;
    v32 = v22;
    v23 = v20;
    [links enumerateObjectsUsingBlock:v27];

    v24 = [v22 copy];
    v16 = v26;
  }

  else
  {
    v24 = [v18 copy];
  }

  return v24;
}

- (id)_includedTypesFromExcludedTypes:(id)types
{
  typesCopy = types;
  v4 = [MEMORY[0x277CBEB58] setWithArray:&unk_284DC9870];
  if (!typesCopy)
  {
    typesCopy = [MEMORY[0x277CBEB98] set];
  }

  [v4 minusSet:typesCopy];
  v5 = [v4 copy];

  return v5;
}

- (id)_includedTypesFromDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained excludedTypesForDisambiguableSentence:self];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_LTDisambiguableSentence *)self _includedTypesFromExcludedTypes:v4];

  return v5;
}

- (void)_validateAndPopulateEdges
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  objc_initWeak(&location, self);
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke;
  v14[3] = &unk_278B6CC20;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  v14[5] = &v17;
  [targetPhrases enumerateObjectsUsingBlock:v14];

  if (v18[3])
  {
    [(_LTDisambiguableSentence *)self _removeUnvalidatedAdjacencyLists];
    if ([(_LTDisambiguableSentence *)self hasDisambiguationsOfType:1])
    {
      [(_LTDisambiguableSentence *)self _removeRomanization];
    }
  }

  else
  {
    v4 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(_LTDisambiguableSentence *)v4 _validateAndPopulateEdges];
    }

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    targetPhrases2 = [(_LTDisambiguableSentence *)self targetPhrases];
    v6 = [targetPhrases2 countByEnumeratingWithState:&v10 objects:v21 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(targetPhrases2);
          }

          [*(*(&v10 + 1) + 8 * v8++) _removeAllLinks];
        }

        while (v6 != v8);
        v6 = [targetPhrases2 countByEnumeratingWithState:&v10 objects:v21 count:16];
      }

      while (v6);
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v17, 8);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeUnvalidatedAdjacencyLists
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  v3 = [targetPhrases countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(targetPhrases);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        links = [v7 links];
        v9 = [links countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            v12 = 0;
            do
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(links);
              }

              [*(*(&v14 + 1) + 8 * v12++) _finishValidating];
            }

            while (v10 != v12);
            v10 = [links countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [targetPhrases countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_removeRomanization
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  v3 = [targetPhrases countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(targetPhrases);
        }

        [*(*(&v8 + 1) + 8 * v6++) _removeRomanization];
      }

      while (v4 != v6);
      v4 = [targetPhrases countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_directedEdgeFromUnvalidatedEdge:(id)edge
{
  edgeCopy = edge;
  targetPhrases = [(_LTDisambiguableSentence *)self targetPhrases];
  targetPhraseIndex = [edgeCopy targetPhraseIndex];
  if (targetPhraseIndex >= [targetPhrases count])
  {
    v30 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(_LTDisambiguableSentence *)targetPhraseIndex _directedEdgeFromUnvalidatedEdge:v30, v31, v32, v33, v34, v35, v36];
    }

    v37 = 0;
  }

  else
  {
    v7 = [targetPhrases objectAtIndexedSubscript:targetPhraseIndex];
    targetLinkIndex = [edgeCopy targetLinkIndex];
    links = [v7 links];
    v10 = [links count];

    if (targetLinkIndex >= v10)
    {
      v38 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(_LTDisambiguableSentence *)targetLinkIndex _directedEdgeFromUnvalidatedEdge:v38, v39, v40, v41, v42, v43, v44];
      }

      v37 = 0;
    }

    else
    {
      links2 = [v7 links];
      v12 = [links2 objectAtIndexedSubscript:targetLinkIndex];

      sourceRange = [v12 sourceRange];
      v15 = v14;
      sourceText = [(_LTDisambiguableSentence *)self sourceText];
      if ([sourceText lt_validSubrange:{sourceRange, v15}])
      {
        targetRange = [v12 targetRange];
        v19 = v18;
        text = [v7 text];
        if ([text lt_validSubrange:{targetRange, v19}])
        {
          v21 = [text substringWithRange:{targetRange, v19}];
          v22 = [v12 _unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex:targetPhraseIndex];
          targetGender = [v22 targetGender];
          v51 = v22;
          defaultGender = [v22 defaultGender];
          type = [edgeCopy type];
          v50 = targetGender;
          if (type == 1)
          {
            [edgeCopy targetGender];
            meaningDescription = v28 = defaultGender;
            v29 = +[_LTDirectedEdge genderEdgeWithTargetPhraseIndex:targetPreview:gender:defaultGender:](_LTDirectedEdge, "genderEdgeWithTargetPhraseIndex:targetPreview:gender:defaultGender:", targetPhraseIndex, v21, [meaningDescription unsignedIntegerValue], objc_msgSend(v28, "unsignedIntegerValue"));
          }

          else
          {
            v49 = defaultGender;
            if (type)
            {
              v48 = unexpectedDisambiguationTypeException([edgeCopy type]);
              objc_exception_throw(v48);
            }

            meaningDescription = [edgeCopy meaningDescription];
            v27 = targetGender;
            v28 = v49;
            v29 = [_LTDirectedEdge meaningEdgeWithTargetPhraseIndex:targetPhraseIndex targetPreview:v21 meaningDescription:meaningDescription targetGender:v27 defaultGender:v49];
          }

          v37 = v29;
        }

        else
        {
          v46 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [(_LTDisambiguableSentence *)v46 _directedEdgeFromUnvalidatedEdge:targetRange, v19, text];
          }

          v37 = 0;
        }
      }

      else
      {
        v45 = _LTOSLogDisambiguation();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [(_LTDisambiguableSentence *)v45 _directedEdgeFromUnvalidatedEdge:sourceRange, v15, sourceText];
        }

        v37 = 0;
      }
    }
  }

  return v37;
}

- (BOOL)_hasOverlapInRangeArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  [array sortedArrayUsingComparator:&__block_literal_global_41];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        rangeValue = [*(*(&v12 + 1) + 8 * i) rangeValue];
        if (rangeValue < v5)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }

        v5 = rangeValue + v9;
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_historyForEncoding
{
  WeakRetained = objc_loadWeakRetained(&self->_historyProvider);
  history = [WeakRetained history];

  v4 = [history lt_suffixWithMaxLength:10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  sourceText = self->_sourceText;
  coderCopy = coder;
  [coderCopy encodeObject:sourceText forKey:@"sourceText"];
  [coderCopy encodeObject:self->_targetPhrases forKey:@"targetPhrases"];
  [coderCopy encodeInteger:self->_selectedPhraseIndex forKey:@"selectedPhraseIndex"];
  [coderCopy encodeObject:self->_UUID forKey:@"UUID"];
  _historyForEncoding = [(_LTDisambiguableSentence *)self _historyForEncoding];
  [coderCopy encodeObject:_historyForEncoding forKey:@"history"];
}

- (_LTDisambiguableSentence)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = _LTDisambiguableSentence;
  v5 = [(_LTDisambiguableSentence *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceText"];
    sourceText = v5->_sourceText;
    v5->_sourceText = v6;

    v8 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"targetPhrases"];
    targetPhrases = v5->_targetPhrases;
    v5->_targetPhrases = v11;

    v5->_selectedPhraseIndex = [coderCopy decodeIntegerForKey:@"selectedPhraseIndex"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v13;

    [(_LTDisambiguableSentence *)v5 _commonInit];
    v15 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"history"];

    if ([v18 count])
    {
      v19 = [MEMORY[0x277CBEB18] arrayWithArray:v18];
      history = v5->_history;
      v5->_history = v19;
    }

    v21 = v5;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(MEMORY[0x277CBEA60] "allocWithZone:{"initWithArray:copyItems:", self->_targetPhrases, 1}")];
  v6 = [objc_opt_class() allocWithZone:zone];
  v7 = [(NSString *)self->_sourceText copy];
  v8 = [v6 initWithSourceText:v7 targetPhrases:v5 selectedPhraseIndex:self->_selectedPhraseIndex];

  return v8;
}

- (_LTDisambiguableSentenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_LTDisambiguableSentenceHistoryProviding)historyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_historyProvider);

  return WeakRetained;
}

- (void)sourceTextSnippetForLinkIndex:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_23AAF5000, v0, v1, "Requested source snippet for out of bounds link index %zu of %zu, not providing a source snippet", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)meaningDescriptionForLinkIndex:inTargetPhrase:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_23AAF5000, v0, v1, "Requested meaning description for out of bounds link index %zu of %zu, not providing a meaning description", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)meaningDescriptionForLinkIndex:inTargetPhrase:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_23AAF5000, v0, OS_LOG_TYPE_DEBUG, "There are no meaning edges in phase %zu at link %zu; can't return a meaning description", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_restoreChanges:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 24);
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_DEBUG, "Highest scoring node was initial node with score %f; no need to change selected node to restore previous user selections", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_directedEdgeFromUnvalidatedEdge:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_23AAF5000, a2, a3, "Failed to create directed edge; an edge references targetNode %zu which doesn't exist", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_directedEdgeFromUnvalidatedEdge:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_23AAF5000, a2, a3, "Failed to create directed edge; configuration references link index %zu which doesn't exist on this target node", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_directedEdgeFromUnvalidatedEdge:(NSUInteger)a3 .cold.3(void *a1, NSUInteger a2, NSUInteger a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v18.location = a2;
  v18.length = a3;
  v8 = NSStringFromRange(v18);
  [a4 length];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_23AAF5000, v9, v10, "Failed to create directed edge; range %{public}@ invalid in source string of length %zu", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_directedEdgeFromUnvalidatedEdge:(NSUInteger)a3 .cold.4(void *a1, NSUInteger a2, NSUInteger a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v18.location = a2;
  v18.length = a3;
  v8 = NSStringFromRange(v18);
  [a4 length];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_23AAF5000, v9, v10, "Failed to create directed edge; range %{public}@ invalid in target string of length %zu", v11, v12, v13, v14, v16);

  v15 = *MEMORY[0x277D85DE8];
}

@end