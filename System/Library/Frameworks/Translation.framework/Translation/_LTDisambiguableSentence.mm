@interface _LTDisambiguableSentence
- (BOOL)_hasOverlapInRangeArray:(id)a3;
- (BOOL)_restoreChanges:(id)a3;
- (BOOL)hasDisambiguationsOfType:(unint64_t)a3;
- (NSArray)history;
- (NSString)romanization;
- (NSString)targetText;
- (_LTDisambiguableSentence)initWithCoder:(id)a3;
- (_LTDisambiguableSentence)initWithSourceText:(id)a3 targetPhrases:(id)a4 selectedPhraseIndex:(unint64_t)a5;
- (_LTDisambiguableSentenceDelegate)delegate;
- (_LTDisambiguableSentenceHistoryProviding)historyProvider;
- (_LTDisambiguationNode)selectedTargetPhrase;
- (id)_directedEdgeFromUnvalidatedEdge:(id)a3;
- (id)_genderForLinkIndex:(unint64_t)a3 inPhraseIndex:(unint64_t)a4;
- (id)_generateAttributedStringForLocation:(unint64_t)a3 result:(id)a4 excludedTypes:(id)a5 globalAttributes:(id)a6 attributeProvider:(id)a7;
- (id)_historyForEncoding;
- (id)_includedTypesFromDelegate;
- (id)_includedTypesFromExcludedTypes:(id)a3;
- (id)_preferredEdgeFromEdgesWithDuplicateMeaning:(id)a3 forLinkIndex:(unint64_t)a4 inPhrase:(unint64_t)a5;
- (id)_userSelectionFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)meaningDescriptionForLinkIndex:(unint64_t)a3 inTargetPhrase:(unint64_t)a4;
- (id)menuConfigurationsForLinkIndex:(unint64_t)a3;
- (id)sourceTextSnippetForLinkIndex:(unint64_t)a3;
- (unint64_t)_preferredGenderFromEdgesWithDuplicateMeaning:(id)a3 forLinkIndex:(unint64_t)a4 inPhrase:(unint64_t)a5;
- (void)_commonInit;
- (void)_insertPrefix:(id)a3;
- (void)_removeRomanization;
- (void)_removeUnvalidatedAdjacencyLists;
- (void)_validateAndPopulateEdges;
- (void)addNodeIndexToHistory:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHistoryProvider:(id)a3;
- (void)setSelectedPhraseIndex:(unint64_t)a3;
@end

@implementation _LTDisambiguableSentence

- (_LTDisambiguableSentence)initWithSourceText:(id)a3 targetPhrases:(id)a4 selectedPhraseIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = _LTDisambiguableSentence;
  v10 = [(_LTDisambiguableSentence *)&v19 init];
  if (v10)
  {
    v11 = [v8 copy];
    sourceText = v10->_sourceText;
    v10->_sourceText = v11;

    v13 = [v9 copy];
    targetPhrases = v10->_targetPhrases;
    v10->_targetPhrases = v13;

    v10->_selectedPhraseIndex = a5;
    v15 = [MEMORY[0x277CCAD78] UUID];
    UUID = v10->_UUID;
    v10->_UUID = v15;

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

- (BOOL)hasDisambiguationsOfType:(unint64_t)a3
{
  targetPhrases = self->_targetPhrases;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___LTDisambiguableSentence_hasDisambiguationsOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e31_B16__0___LTDisambiguationNode_8l;
  v5[4] = a3;
  return [(NSArray *)targetPhrases lt_hasObjectPassingTest:v5];
}

- (NSString)targetText
{
  v2 = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  v3 = [v2 text];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v2 = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  v3 = [v2 romanization];

  return v3;
}

- (id)menuConfigurationsForLinkIndex:(unint64_t)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  v41 = v3;
  if (!v3)
  {
    v6 = MEMORY[0x277CBEBF8];
    goto LABEL_31;
  }

  v38 = [v3 links];
  v4 = v38;
  v5 = [v38 count];
  v6 = MEMORY[0x277CBEBF8];
  if (v5 <= a3)
  {
    goto LABEL_29;
  }

  v37 = [v38 objectAtIndexedSubscript:?];
  v7 = [MEMORY[0x277CBEB18] array];
  v42 = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = [v37 adjacencyList];
  v9 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
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
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v53 + 1) + 8 * i);
      v13 = [v12 type];
      v14 = v7;
      if (v13)
      {
        if (v13 != 1)
        {
          continue;
        }

        v14 = v42;
      }

      [v14 addObject:v12];
    }

    v9 = [v8 countByEnumeratingWithState:&v53 objects:v58 count:16];
  }

  while (v9);
LABEL_14:

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v16 = v7;
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
        v21 = [v20 menuDescription];
        v22 = [v15 objectForKeyedSubscript:v21];
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

        [v15 setObject:v26 forKeyedSubscript:v21];
      }

      v17 = [v16 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v17);
  }

  v27 = [MEMORY[0x277CBEB38] dictionary];
  objc_initWeak(&location, self);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __59___LTDisambiguableSentence_menuConfigurationsForLinkIndex___block_invoke;
  v45[3] = &unk_278B6CA98;
  objc_copyWeak(v47, &location);
  v28 = v27;
  v46 = v28;
  v47[1] = a3;
  [v15 enumerateKeysAndObjectsUsingBlock:v45];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __59___LTDisambiguableSentence_menuConfigurationsForLinkIndex___block_invoke_2;
  v43[3] = &unk_278B6CAC0;
  v29 = v28;
  v44 = v29;
  v30 = [v16 _ltCompactMap:v43];
  v31 = [v30 sortedArrayUsingSelector:sel_compare_];
  v32 = [v42 sortedArrayUsingSelector:sel_compare_];
  v33 = [(_LTDisambiguableSentence *)self _includedTypesFromDelegate];
  v34 = [MEMORY[0x277CBEB18] array];
  if ([v33 containsObject:&unk_284DC9918])
  {
    [v34 addObjectsFromArray:v31];
  }

  if ([v33 containsObject:&unk_284DC9930])
  {
    [v34 addObjectsFromArray:v32];
  }

  v6 = [v34 copy];

  objc_destroyWeak(v47);
  objc_destroyWeak(&location);

  v4 = v38;
LABEL_29:

LABEL_31:
  v35 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)sourceTextSnippetForLinkIndex:(unint64_t)a3
{
  v5 = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 links];
    v8 = [v7 count];

    if (v8 > a3)
    {
      v9 = [v6 links];
      v10 = [v9 objectAtIndexedSubscript:a3];

      v11 = [(_LTDisambiguableSentence *)self sourceText];
      v12 = [v10 sourceRange];
      v14 = [v11 substringWithRange:{v12, v13}];

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

- (id)meaningDescriptionForLinkIndex:(unint64_t)a3 inTargetPhrase:(unint64_t)a4
{
  v7 = [(_LTDisambiguableSentence *)self targetPhrases];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    v17 = 0;
  }

  else
  {
    v9 = [(_LTDisambiguableSentence *)self targetPhrases];
    v10 = [v9 objectAtIndexedSubscript:a4];

    v11 = [v10 links];
    v12 = [v11 count];

    if (v12 <= a3)
    {
      v18 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LTDisambiguableSentence meaningDescriptionForLinkIndex:inTargetPhrase:];
      }

      v17 = 0;
    }

    else
    {
      v13 = [v10 links];
      v14 = [v13 objectAtIndexedSubscript:a3];

      v15 = [v14 adjacencyList];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __74___LTDisambiguableSentence_meaningDescriptionForLinkIndex_inTargetPhrase___block_invoke;
      v21[3] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
      v21[4] = a4;
      v16 = [v15 lt_firstObjectPassingTest:v21];

      if (v16)
      {
        v17 = [v16 menuDescription];
      }

      else
      {
        v19 = _LTOSLogDisambiguation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          [_LTDisambiguableSentence meaningDescriptionForLinkIndex:inTargetPhrase:];
        }

        v17 = 0;
      }
    }
  }

  return v17;
}

- (void)_insertPrefix:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v4, self->_sourceText];
    sourceText = self->_sourceText;
    self->_sourceText = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(_LTDisambiguableSentence *)self targetPhrases];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) _insertPrefix:v4];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)addNodeIndexToHistory:(unint64_t)a3
{
  history = self->_history;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableArray *)history addObject:v4];
}

- (void)setHistoryProvider:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_historyProvider);

  if (WeakRetained != v4)
  {
    v6 = objc_loadWeakRetained(&self->_historyProvider);
    objc_storeWeak(&self->_historyProvider, v4);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(_LTDisambiguableSentence *)v6 history];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          [v4 addNodeIndexToHistory:{objc_msgSend(*(*(&v13 + 1) + 8 * v11++), "unsignedIntegerValue")}];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setSelectedPhraseIndex:(unint64_t)a3
{
  if (self->_selectedPhraseIndex != a3 && [(NSArray *)self->_targetPhrases count]> a3)
  {
    v9 = [(_LTDisambiguableSentence *)self _userSelectionFromIndex:self->_selectedPhraseIndex toIndex:a3];
    self->_selectedPhraseIndex = a3;
    WeakRetained = objc_loadWeakRetained(&self->_historyProvider);
    [WeakRetained addNodeIndexToHistory:a3];

    v6 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:a3];
      [v7 disambiguableSentence:self didSelectNode:v8 atIndex:a3 withSelection:v9];
    }
  }
}

- (BOOL)_restoreChanges:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 changeMapping];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __44___LTDisambiguableSentence__restoreChanges___block_invoke;
  aBlock[3] = &unk_278B6CB08;
  aBlock[4] = self;
  v6 = v5;
  v34 = v6;
  v7 = _Block_copy(aBlock);
  v8 = [(_LTDisambiguableSentence *)self targetPhrases];
  if ([v8 count])
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v10 = [(_LTDisambiguableSentence *)self targetPhrases];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __44___LTDisambiguableSentence__restoreChanges___block_invoke_2;
    v30[3] = &unk_278B6CB58;
    v32 = v7;
    v11 = v9;
    v31 = v11;
    [v10 enumerateObjectsUsingBlock:v30];

    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x2020000000;
    v12 = [v11 firstObject];
    [v12 doubleValue];
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

- (id)_userSelectionFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = [(_LTDisambiguableSentence *)self targetPhrases];
  v8 = [v7 count];

  v9 = 0;
  if (a3 != a4 && v8 > a3 && v8 > a4)
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
    v10 = [(_LTDisambiguableSentence *)self targetPhrases];
    v11 = [v10 objectAtIndexedSubscript:a3];

    v12 = [v11 links];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __60___LTDisambiguableSentence__userSelectionFromIndex_toIndex___block_invoke;
    v19[3] = &unk_278B6CBA8;
    v19[4] = &v24;
    v19[5] = &v20;
    v19[6] = a4;
    [v12 enumerateObjectsUsingBlock:v19];

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
        v31 = a3;
        v32 = 2048;
        v33 = a4;
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

- (id)_genderForLinkIndex:(unint64_t)a3 inPhraseIndex:(unint64_t)a4
{
  if ([(NSArray *)self->_targetPhrases count]<= a4)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:a4];
    v8 = [v7 links];
    if ([v8 count] <= a3)
    {
      v10 = 0;
    }

    else
    {
      v9 = [v8 objectAtIndexedSubscript:a3];
      v10 = [v9 gender];
    }
  }

  return v10;
}

- (unint64_t)_preferredGenderFromEdgesWithDuplicateMeaning:(id)a3 forLinkIndex:(unint64_t)a4 inPhrase:(unint64_t)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(_LTDisambiguableSentence *)self _genderForLinkIndex:a4 inPhraseIndex:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 unsignedIntegerValue];
  }

  else
  {
    v38 = a4;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_historyProvider);
    v13 = [WeakRetained history];
    v14 = [v13 reverseObjectEnumerator];

    obj = v14;
    v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
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

        v20 = [*(*(&v41 + 1) + 8 * v19) unsignedIntegerValue];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v40[0] = __96___LTDisambiguableSentence__preferredGenderFromEdgesWithDuplicateMeaning_forLinkIndex_inPhrase___block_invoke;
        v40[1] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
        v40[2] = v20;
        v21 = [v8 lt_firstObjectPassingTest:v39];
        v22 = [v21 targetGender];
        v23 = v22;
        if (v22)
        {
          break;
        }

        if (v20 < [(NSArray *)self->_targetPhrases count])
        {
          v24 = v18;
          v25 = v17;
          v26 = v8;
          v27 = [(NSArray *)self->_targetPhrases objectAtIndexedSubscript:v20];
          v28 = [v27 links];
          v29 = [v28 count];

          if (v29 > v38)
          {
            v30 = [v27 links];
            v31 = [v30 objectAtIndexedSubscript:v38];

            v32 = [v31 gender];
            if (v32)
            {
              v35 = v32;
              v11 = [v32 unsignedIntegerValue];

              v8 = v26;
              goto LABEL_18;
            }
          }

          v8 = v26;
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

      v11 = [v22 unsignedIntegerValue];
LABEL_18:

      goto LABEL_19;
    }

LABEL_16:

    v11 = 0;
LABEL_19:
    v10 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_preferredEdgeFromEdgesWithDuplicateMeaning:(id)a3 forLinkIndex:(unint64_t)a4 inPhrase:(unint64_t)a5
{
  v8 = a3;
  v9 = [(_LTDisambiguableSentence *)self _preferredGenderFromEdgesWithDuplicateMeaning:v8 forLinkIndex:a4 inPhrase:a5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __94___LTDisambiguableSentence__preferredEdgeFromEdgesWithDuplicateMeaning_forLinkIndex_inPhrase___block_invoke;
  v15[3] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
  v15[4] = v9;
  v10 = [v8 lt_firstObjectPassingTest:v15];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [v8 firstObject];
  }

  v13 = v12;

  return v13;
}

- (id)_generateAttributedStringForLocation:(unint64_t)a3 result:(id)a4 excludedTypes:(id)a5 globalAttributes:(id)a6 attributeProvider:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (a3)
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
  if (v14)
  {
    [v17 addAttributes:v14 range:{0, objc_msgSend(v17, "length")}];
  }

  v19 = [(_LTDisambiguableSentence *)self selectedTargetPhrase];
  if (v19)
  {
    [(_LTDisambiguableSentence *)self _includedTypesFromExcludedTypes:v13];
    v20 = v26 = v16;
    v21 = [v19 links];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __121___LTDisambiguableSentence__generateAttributedStringForLocation_result_excludedTypes_globalAttributes_attributeProvider___block_invoke;
    v27[3] = &unk_278B6CBD0;
    v28 = v20;
    v34 = a3;
    v33 = v15;
    v29 = v12;
    v30 = self;
    v31 = v19;
    v22 = v18;
    v32 = v22;
    v23 = v20;
    [v21 enumerateObjectsUsingBlock:v27];

    v24 = [v22 copy];
    v16 = v26;
  }

  else
  {
    v24 = [v18 copy];
  }

  return v24;
}

- (id)_includedTypesFromExcludedTypes:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] setWithArray:&unk_284DC9870];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  [v4 minusSet:v3];
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
  v3 = [(_LTDisambiguableSentence *)self targetPhrases];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke;
  v14[3] = &unk_278B6CC20;
  objc_copyWeak(&v15, &location);
  v14[4] = self;
  v14[5] = &v17;
  [v3 enumerateObjectsUsingBlock:v14];

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
    v5 = [(_LTDisambiguableSentence *)self targetPhrases];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
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
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v8++) _removeAllLinks];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
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
  v2 = [(_LTDisambiguableSentence *)self targetPhrases];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v8 = [v7 links];
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
                objc_enumerationMutation(v8);
              }

              [*(*(&v14 + 1) + 8 * v12++) _finishValidating];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v23 count:16];
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
  v2 = [(_LTDisambiguableSentence *)self targetPhrases];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) _removeRomanization];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_directedEdgeFromUnvalidatedEdge:(id)a3
{
  v4 = a3;
  v5 = [(_LTDisambiguableSentence *)self targetPhrases];
  v6 = [v4 targetPhraseIndex];
  if (v6 >= [v5 count])
  {
    v30 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [(_LTDisambiguableSentence *)v6 _directedEdgeFromUnvalidatedEdge:v30, v31, v32, v33, v34, v35, v36];
    }

    v37 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = [v4 targetLinkIndex];
    v9 = [v7 links];
    v10 = [v9 count];

    if (v8 >= v10)
    {
      v38 = _LTOSLogDisambiguation();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(_LTDisambiguableSentence *)v8 _directedEdgeFromUnvalidatedEdge:v38, v39, v40, v41, v42, v43, v44];
      }

      v37 = 0;
    }

    else
    {
      v11 = [v7 links];
      v12 = [v11 objectAtIndexedSubscript:v8];

      v13 = [v12 sourceRange];
      v15 = v14;
      v16 = [(_LTDisambiguableSentence *)self sourceText];
      if ([v16 lt_validSubrange:{v13, v15}])
      {
        v17 = [v12 targetRange];
        v19 = v18;
        v20 = [v7 text];
        if ([v20 lt_validSubrange:{v17, v19}])
        {
          v21 = [v20 substringWithRange:{v17, v19}];
          v22 = [v12 _unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex:v6];
          v23 = [v22 targetGender];
          v51 = v22;
          v24 = [v22 defaultGender];
          v25 = [v4 type];
          v50 = v23;
          if (v25 == 1)
          {
            [v4 targetGender];
            v26 = v28 = v24;
            v29 = +[_LTDirectedEdge genderEdgeWithTargetPhraseIndex:targetPreview:gender:defaultGender:](_LTDirectedEdge, "genderEdgeWithTargetPhraseIndex:targetPreview:gender:defaultGender:", v6, v21, [v26 unsignedIntegerValue], objc_msgSend(v28, "unsignedIntegerValue"));
          }

          else
          {
            v49 = v24;
            if (v25)
            {
              v48 = unexpectedDisambiguationTypeException([v4 type]);
              objc_exception_throw(v48);
            }

            v26 = [v4 meaningDescription];
            v27 = v23;
            v28 = v49;
            v29 = [_LTDirectedEdge meaningEdgeWithTargetPhraseIndex:v6 targetPreview:v21 meaningDescription:v26 targetGender:v27 defaultGender:v49];
          }

          v37 = v29;
        }

        else
        {
          v46 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            [(_LTDisambiguableSentence *)v46 _directedEdgeFromUnvalidatedEdge:v17, v19, v20];
          }

          v37 = 0;
        }
      }

      else
      {
        v45 = _LTOSLogDisambiguation();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [(_LTDisambiguableSentence *)v45 _directedEdgeFromUnvalidatedEdge:v13, v15, v16];
        }

        v37 = 0;
      }
    }
  }

  return v37;
}

- (BOOL)_hasOverlapInRangeArray:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  [a3 sortedArrayUsingComparator:&__block_literal_global_41];
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

        v8 = [*(*(&v12 + 1) + 8 * i) rangeValue];
        if (v8 < v5)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }

        v5 = v8 + v9;
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
  v3 = [WeakRetained history];

  v4 = [v3 lt_suffixWithMaxLength:10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  sourceText = self->_sourceText;
  v5 = a3;
  [v5 encodeObject:sourceText forKey:@"sourceText"];
  [v5 encodeObject:self->_targetPhrases forKey:@"targetPhrases"];
  [v5 encodeInteger:self->_selectedPhraseIndex forKey:@"selectedPhraseIndex"];
  [v5 encodeObject:self->_UUID forKey:@"UUID"];
  v6 = [(_LTDisambiguableSentence *)self _historyForEncoding];
  [v5 encodeObject:v6 forKey:@"history"];
}

- (_LTDisambiguableSentence)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = _LTDisambiguableSentence;
  v5 = [(_LTDisambiguableSentence *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceText"];
    sourceText = v5->_sourceText;
    v5->_sourceText = v6;

    v8 = MEMORY[0x277CBEB98];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"targetPhrases"];
    targetPhrases = v5->_targetPhrases;
    v5->_targetPhrases = v11;

    v5->_selectedPhraseIndex = [v4 decodeIntegerForKey:@"selectedPhraseIndex"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v13;

    [(_LTDisambiguableSentence *)v5 _commonInit];
    v15 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v17 = [v15 setWithArray:v16];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"history"];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(MEMORY[0x277CBEA60] "allocWithZone:{"initWithArray:copyItems:", self->_targetPhrases, 1}")];
  v6 = [objc_opt_class() allocWithZone:a3];
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