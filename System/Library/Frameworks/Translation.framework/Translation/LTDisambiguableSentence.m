@interface LTDisambiguableSentence
@end

@implementation LTDisambiguableSentence

BOOL __46___LTDisambiguableSentence_hasDisambiguations__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 links];
  v3 = [v2 count] != 0;

  return v3;
}

uint64_t __53___LTDisambiguableSentence_hasDisambiguationsOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 links];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___LTDisambiguableSentence_hasDisambiguationsOfType___block_invoke_2;
  v6[3] = &__block_descriptor_40_e44_B16__0___LTDisambiguationLinkConfiguration_8l;
  v6[4] = *(a1 + 32);
  v4 = [v3 lt_hasObjectPassingTest:v6];

  return v4;
}

uint64_t __53___LTDisambiguableSentence_hasDisambiguationsOfType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 edgeTypes];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v5 = [v3 containsObject:v4];

  return v5;
}

void __59___LTDisambiguableSentence_menuConfigurationsForLinkIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v5 count] == 1)
    {
      [v5 firstObject];
    }

    else
    {
      [WeakRetained _preferredEdgeFromEdgesWithDuplicateMeaning:v5 forLinkIndex:*(a1 + 48) inPhrase:{objc_msgSend(WeakRetained, "selectedPhraseIndex")}];
    }
    v7 = ;
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void *__59___LTDisambiguableSentence_menuConfigurationsForLinkIndex___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 menuDescription];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5 == v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

BOOL __74___LTDisambiguableSentence_meaningDescriptionForLinkIndex_inTargetPhrase___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 targetPhraseIndex] == *(a1 + 32) && objc_msgSend(v3, "type") == 0;

  return v4;
}

double __44___LTDisambiguableSentence__restoreChanges___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [*(a1 + 32) sourceTextSnippetForLinkIndex:a3];
  v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 genderNumber];

    v12 = [v7 gender];
    v13 = v12;
    if (v11)
    {
      if (v12 && ([v7 gender], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "genderNumber"), v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v13, v14 == v15))
      {
        LODWORD(v13) = 1;
        v16 = 1.0;
      }

      else
      {
        [v7 gender];

        LODWORD(v13) = 0;
        v16 = 0.0;
      }
    }

    else
    {
      v16 = 0.0;
      if (v12)
      {
        v17 = [v7 defaultGender];
        if (v17)
        {
          v18 = v17;
          v19 = [v7 gender];
          v20 = [v7 defaultGender];

          LODWORD(v13) = 0;
          if (v19 == v20)
          {
            v16 = 0.25;
          }

          else
          {
            v16 = 0.0;
          }
        }

        else
        {

          LODWORD(v13) = 0;
        }
      }
    }

    v21 = [*(a1 + 32) meaningDescriptionForLinkIndex:a3 inTargetPhrase:a4];
    v22 = [v10 meaningDescription];
    v23 = [v21 isEqualToString:v22];
    v24 = v16 + 1.0;
    if (v23)
    {
      v25 = v16 + 1.0;
    }

    else
    {
      v25 = v16;
    }

    v26 = v25 + 0.5;
    if (v13)
    {
      v24 = v26;
    }

    if (v23)
    {
      v16 = v24;
    }
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

void __44___LTDisambiguableSentence__restoreChanges___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = [v5 links];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___LTDisambiguableSentence__restoreChanges___block_invoke_3;
  v8[3] = &unk_278B6CB30;
  v10 = &v12;
  v9 = *(a1 + 40);
  v11 = a3;
  [v6 enumerateObjectsUsingBlock:v8];

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v13[3]];
  [*(a1 + 32) setObject:v7 atIndexedSubscript:a3];

  _Block_object_dispose(&v12, 8);
}

double __44___LTDisambiguableSentence__restoreChanges___block_invoke_3(void *a1)
{
  v2 = a1[6];
  v3 = (*(a1[4] + 16))();
  v4 = *(a1[5] + 8);
  result = v3 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

uint64_t __44___LTDisambiguableSentence__restoreChanges___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  v7 = *(*(a1 + 32) + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

void __60___LTDisambiguableSentence__userSelectionFromIndex_toIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 adjacencyList];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60___LTDisambiguableSentence__userSelectionFromIndex_toIndex___block_invoke_2;
  v9[3] = &__block_descriptor_40_e25_B16__0___LTDirectedEdge_8l;
  v9[4] = a1[6];
  v8 = [v7 lt_firstObjectPassingTest:v9];

  if (v8)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), v8);
    *(*(a1[5] + 8) + 24) = a3;
    *a4 = 1;
  }
}

BOOL __94___LTDisambiguableSentence__preferredEdgeFromEdgesWithDuplicateMeaning_forLinkIndex_inPhrase___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 targetGender];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue] == *(a1 + 32);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __121___LTDisambiguableSentence__generateAttributedStringForLocation_result_excludedTypes_globalAttributes_attributeProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = v3;
  v5 = [v3 edgeTypes];
  LODWORD(v4) = [v4 intersectsSet:v5];

  if (v4)
  {
    if (*(a1 + 80))
    {
      v6 = [v13 targetRange];
    }

    else
    {
      v6 = [v13 sourceRange];
    }

    v8 = v6;
    v9 = v7;
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = *(a1 + 72);
    if (v11)
    {
      v12 = (*(v11 + 16))(v11, *(a1 + 40), *(a1 + 48), *(a1 + 56), v13, *(a1 + 80));
      [v10 addEntriesFromDictionary:v12];
    }

    [*(a1 + 64) addAttributes:v10 range:{v8, v9}];
  }
}

void __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v38 = [MEMORY[0x277CBEB18] array];
  v37 = [MEMORY[0x277CBEB18] array];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v34 links];
  v41 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v41)
  {
    v40 = *v46;
    *&v4 = 134217984;
    v33 = v4;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [v6 unvalidatedAdjacencyList];
        v8 = [v6 adjacencyList];
        if (![v7 count] && objc_msgSend(v8, "count"))
        {
          v31 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke_cold_1(v31);
          }

LABEL_24:
          goto LABEL_25;
        }

        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke_35;
        v43[3] = &unk_278B6CBF8;
        objc_copyWeak(&v44, (a1 + 48));
        v9 = [v7 _ltCompactMap:v43];
        v10 = [v9 count];
        v11 = [v7 count];
        if (v10 == v11)
        {
          v12 = MEMORY[0x277CCAE60];
          v13 = [v6 sourceRange];
          v15 = [v12 valueWithRange:{v13, v14}];
          [v38 addObject:v15];

          v16 = MEMORY[0x277CCAE60];
          v17 = [v6 targetRange];
          v19 = [v16 valueWithRange:{v17, v18}];
          [v37 addObject:v19];

          v20 = [v6 _unvalidatedEdgeFromAdjacencyListMatchingTargetNodeIndex:a3];
          v21 = [v20 targetGender];
          v22 = [v20 defaultGender];
          [v6 _validateWithAdjacencyList:v9 gender:v21 defaultGender:v22];
        }

        else
        {
          v23 = _LTOSLogDisambiguation();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = v33;
            v50 = a3;
            _os_log_error_impl(&dword_23AAF5000, v23, OS_LOG_TYPE_ERROR, "Failed to validate sentence; node %zu has some invalid edges", buf, 0xCu);
          }

          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
        }

        objc_destroyWeak(&v44);
        if (v10 != v11)
        {
          goto LABEL_24;
        }
      }

      v41 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  if (([*(a1 + 32) _hasOverlapInRangeArray:v38] & 1) != 0 || objc_msgSend(*(a1 + 32), "_hasOverlapInRangeArray:", v37))
  {
    v24 = _LTOSLogDisambiguation();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke_cold_2(a3, v24, v25, v26, v27, v28, v29, v30);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_25:

  v32 = *MEMORY[0x277D85DE8];
}

id __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _directedEdgeFromUnvalidatedEdge:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __52___LTDisambiguableSentence__hasOverlapInRangeArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v9 = [v7 compare:v8];

  return v9;
}

void __53___LTDisambiguableSentence__validateAndPopulateEdges__block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(&dword_23AAF5000, a2, a3, "Failed to validate sentence; node %zu has some overlapping ranges", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end