@interface WFWordPressPostAction
- (BOOL)setParameterState:(id)a3 forKey:(id)a4;
- (id)defaultSerializedRepresentationForEnumeration:(id)a3;
- (id)possibleStatesForEnumeration:(id)a3;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (id)suggestedTagsForTagField:(id)a3;
- (void)generateHTMLFromInput:(id)a3 completionHandler:(id)a4;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)updateAccountMetadata;
- (void)updateHiddenStates;
- (void)updatePossibleStates;
- (void)wasAddedToWorkflow:(id)a3;
- (void)wasRemovedFromWorkflow:(id)a3;
@end

@implementation WFWordPressPostAction

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  if (v6)
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to post %2$@ on WordPress?");
    [v7 localizedStringWithFormat:v9, v8, v6];
  }

  else
  {
    v9 = WFLocalizedString(@"Allow “%1$@” to post on WordPress?");
    [v7 localizedStringWithFormat:v9, v8, v12];
  }
  v10 = ;

  return v10;
}

- (id)possibleStatesForEnumeration:(id)a3
{
  v4 = a3;
  v5 = +[WFDiskCache workflowCache];
  v6 = [(WFWordPressPostAction *)self parameterForKey:@"WFAccount"];
  v7 = [(WFWordPressPostAction *)self parameterStateForKey:@"WFAccount"];
  v8 = [v7 value];
  v93 = v6;
  if (v8)
  {
    v9 = [v7 value];
    v10 = [v6 accountWithName:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 username];
  v12 = [v10 endpointURL];
  v13 = [v12 absoluteString];
  v21 = WFDiskCacheKey(v11, v14, v15, v16, v17, v18, v19, v20, v13);

  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = [v5 objectOfClasses:v24 forKeyComponents:{v21, @"WFWordPressBlogs", 0}];

  v26 = [v4 key];
  LODWORD(v13) = [v26 isEqualToString:@"Blog"];

  if (v13)
  {
    [v4 setHidden:{objc_msgSend(v25, "count") < 2}];
    v27 = [v25 if_compactMap:&__block_literal_global_319];
  }

  else
  {
    v28 = [(WFWordPressPostAction *)self parameterStateForKey:@"Blog"];
    v29 = [v28 value];
    v91 = v7;
    v92 = v5;
    v90 = v28;
    if (v29)
    {
      v30 = [v28 value];
      v31 = [v25 objectMatchingKey:@"blogName" value:v30];
    }

    else
    {
      v31 = 0;
    }

    v89 = v31;
    v32 = [v31 blogId];
    v33 = [v32 description];
    v41 = WFDiskCacheKey(v21, v34, v35, v36, v37, v38, v39, v40, v33);

    v42 = [v4 key];
    v43 = [v42 isEqualToString:@"Type"];

    v44 = MEMORY[0x277CBEB98];
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v44 setWithObjects:{v45, v46, objc_opt_class(), 0}];
    v88 = v41;
    v48 = [v92 objectOfClasses:v47 forKeyComponents:{v41, @"WFWordPressPostTypes", 0}];
    v49 = v48;
    if (v43)
    {

      [v4 setHidden:{objc_msgSend(v49, "count") < 2}];
      v50 = [v49 allKeys];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_2;
      v104[3] = &unk_278C1DDA8;
      v105 = &unk_28509CD28;
      v51 = [v50 sortedArrayUsingComparator:v104];

      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_3;
      v102[3] = &unk_278C20560;
      v103 = v49;
      v52 = v49;
      v27 = [v51 if_compactMap:v102];

      v53 = v105;
      v7 = v91;
      v5 = v92;
      v54 = v90;
      v55 = v88;
    }

    else
    {
      v52 = [v48 objectForKey:@"attachment"];

      v56 = [(WFWordPressPostAction *)self parameterStateForKey:@"Type"];
      v57 = [v52 labels];
      v58 = [v57 objectForKeyedSubscript:@"singular_name"];
      v87 = v56;
      v59 = [v56 value];
      v60 = [v58 isEqual:v59];

      v61 = [v4 key];
      LODWORD(v58) = [v61 isEqualToString:@"Format"];

      if (v58)
      {
        v62 = MEMORY[0x277CBEB98];
        v63 = objc_opt_class();
        v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
        v55 = v88;
        v65 = [v92 objectOfClasses:v64 forKeyComponents:{v88, @"WFWordPressPostFormats", 0}];

        [v4 setHidden:{(objc_msgSend(v65, "count") < 2) | (v60 & 1)}];
        v66 = [v65 allKeys];
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_4;
        v100[3] = &unk_278C1DDA8;
        v101 = &unk_28509CD40;
        v67 = [v66 sortedArrayUsingComparator:v100];

        v98[0] = MEMORY[0x277D85DD0];
        v98[1] = 3221225472;
        v98[2] = __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_5;
        v98[3] = &unk_278C20560;
        v99 = v65;
        v68 = v65;
        v27 = [v67 if_compactMap:v98];

        v5 = v92;
        v54 = v90;
        v7 = v91;
      }

      else
      {
        v86 = v60;
        v69 = [v4 key];
        v70 = [v69 isEqualToString:@"Status"];

        v54 = v90;
        v55 = v88;
        if (v70)
        {
          v71 = MEMORY[0x277CBEB98];
          v72 = objc_opt_class();
          v73 = [v71 setWithObjects:{v72, objc_opt_class(), 0}];
          v74 = [v92 objectOfClasses:v73 forKeyComponents:{v88, @"WFWordPressPostStatuses", 0}];

          [v4 setHidden:{(objc_msgSend(v74, "count") < 2) | (v86 & 1)}];
          v75 = [v74 allKeys];
          v96[0] = MEMORY[0x277D85DD0];
          v96[1] = 3221225472;
          v96[2] = __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_6;
          v96[3] = &unk_278C1DDA8;
          v97 = &unk_28509CD58;
          v76 = [v75 sortedArrayUsingComparator:v96];

          v94[0] = MEMORY[0x277D85DD0];
          v94[1] = 3221225472;
          v94[2] = __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_7;
          v94[3] = &unk_278C20560;
          v95 = v74;
          v77 = v74;
          v27 = [v76 if_compactMap:v94];

          v5 = v92;
        }

        else
        {
          v78 = [v4 key];
          v79 = [v78 isEqualToString:@"Template"];

          if (v79)
          {
            v80 = MEMORY[0x277CBEB98];
            v81 = objc_opt_class();
            v82 = [v80 setWithObjects:{v81, objc_opt_class(), 0}];
            v83 = [v92 objectOfClasses:v82 forKeyComponents:{v88, @"WFWordPressPageTemplates", 0}];

            [v4 setHidden:{(objc_msgSend(v83, "count") < 2) | (v86 & 1)}];
            v84 = [v83 allKeys];
            v27 = [v84 if_compactMap:&__block_literal_global_379];

            v5 = v92;
          }

          else
          {
            v27 = 0;
            v5 = v92;
          }
        }

        v7 = v91;
      }

      v53 = v87;
    }
  }

  return v27;
}

uint64_t __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

id __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7C928];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];

  v7 = [v6 labels];
  v8 = [v7 objectForKey:@"singular_name"];
  v9 = [v5 initWithValue:v8];

  return v9;
}

uint64_t __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

id __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7C928];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];

  v7 = [v5 initWithValue:v6];

  return v7;
}

uint64_t __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", a2)}];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

id __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D7C928];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) objectForKeyedSubscript:v4];

  v7 = [v5 initWithValue:v6];

  return v7;
}

id __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [[v2 alloc] initWithValue:v3];

  return v4;
}

id __54__WFWordPressPostAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C928];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 blogName];

  v6 = [v4 initWithValue:v5];

  return v6;
}

- (id)defaultSerializedRepresentationForEnumeration:(id)a3
{
  v3 = [(WFWordPressPostAction *)self possibleStatesForEnumeration:a3];
  v4 = [v3 firstObject];
  v5 = [v4 serializedRepresentation];

  return v5;
}

- (id)suggestedTagsForTagField:(id)a3
{
  v57[2] = *MEMORY[0x277D85DE8];
  v52 = a3;
  v4 = +[WFDiskCache workflowCache];
  v5 = [(WFWordPressPostAction *)self parameterForKey:@"WFAccount"];
  v6 = [(WFWordPressPostAction *)self parameterStateForKey:@"WFAccount"];
  v7 = [v6 value];
  v54 = v6;
  v55 = v5;
  if (v7)
  {
    v8 = [v6 value];
    v9 = [v5 accountWithName:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 username];
  v53 = v9;
  v11 = [v9 endpointURL];
  v12 = [v11 absoluteString];
  v20 = WFDiskCacheKey(v10, v13, v14, v15, v16, v17, v18, v19, v12);

  v21 = [(WFWordPressPostAction *)self parameterStateForKey:@"Blog"];
  v22 = MEMORY[0x277CBEB98];
  v23 = objc_opt_class();
  v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
  v25 = [v4 objectOfClasses:v24 forKeyComponents:{v20, @"WFWordPressBlogs", 0}];

  v26 = [v21 value];
  v50 = v25;
  v51 = v21;
  v27 = v4;
  if (v26)
  {
    v28 = [v21 value];
    v29 = [v25 objectMatchingKey:@"blogName" value:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = [v29 blogId];
  v31 = [v30 description];
  v39 = WFDiskCacheKey(v20, v32, v33, v34, v35, v36, v37, v38, v31);

  v56[0] = @"Tags";
  v56[1] = @"Categories";
  v57[0] = @"WFWordPressPostTags";
  v57[1] = @"WFWordPressPostCategories";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v41 = MEMORY[0x277CBEB98];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  v44 = [v52 key];

  v45 = [v40 objectForKeyedSubscript:v44];
  v46 = [v27 objectOfClasses:v43 forKeyComponents:{v39, v45, 0}];
  v47 = [v46 if_compactMap:&__block_literal_global_316];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

- (void)updateHiddenStates
{
  v3 = +[WFDiskCache workflowCache];
  v4 = [(WFWordPressPostAction *)self parameterForKey:@"WFAccount"];
  v5 = [(WFWordPressPostAction *)self parameterStateForKey:@"WFAccount"];
  v6 = [v5 value];
  v54 = v5;
  v55 = v4;
  if (v6)
  {
    v7 = [v5 value];
    v8 = [v4 accountWithName:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 username];
  v53 = v8;
  v10 = [v8 endpointURL];
  v11 = [v10 absoluteString];
  v19 = WFDiskCacheKey(v9, v12, v13, v14, v15, v16, v17, v18, v11);

  v20 = [(WFWordPressPostAction *)self parameterStateForKey:@"Blog"];
  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v3 objectOfClasses:v23 forKeyComponents:{v19, @"WFWordPressBlogs", 0}];

  v25 = [v20 value];
  v51 = v24;
  v52 = v20;
  if (v25)
  {
    v26 = [v20 value];
    v27 = [v24 objectMatchingKey:@"blogName" value:v26];
  }

  else
  {
    v27 = 0;
  }

  v28 = [v27 blogId];
  v29 = [v28 description];
  v37 = WFDiskCacheKey(v19, v30, v31, v32, v33, v34, v35, v36, v29);

  v38 = MEMORY[0x277CBEB98];
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = [v38 setWithObjects:{v39, v40, objc_opt_class(), 0}];
  v42 = [v3 objectOfClasses:v41 forKeyComponents:{v37, @"WFWordPressPostTypes", 0}];
  v43 = [v42 objectForKey:@"attachment"];

  v44 = [(WFWordPressPostAction *)self parameterStateForKey:@"Type"];
  v45 = [v43 labels];
  v46 = [v45 objectForKeyedSubscript:@"singular_name"];
  [v44 value];
  v47 = v50 = v3;
  v48 = [v46 isEqual:v47];

  v49 = [(WFWordPressPostAction *)self parameters];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __43__WFWordPressPostAction_updateHiddenStates__block_invoke;
  v56[3] = &__block_descriptor_33_e28_v32__0__WFParameter_8Q16_B24l;
  v57 = v48;
  [v49 enumerateObjectsUsingBlock:v56];
}

void __43__WFWordPressPostAction_updateHiddenStates__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 key];
  if ([v3 isEqualToString:@"WFAccount"])
  {
    goto LABEL_4;
  }

  v4 = [v7 key];
  if ([v4 isEqualToString:@"Blog"])
  {

LABEL_4:
    goto LABEL_5;
  }

  v5 = [v7 key];
  v6 = [v5 isEqualToString:@"Type"];

  if ((v6 & 1) == 0)
  {
    [v7 setHidden:*(a1 + 32)];
  }

LABEL_5:
}

- (void)updatePossibleStates
{
  v2 = [(WFWordPressPostAction *)self parameters];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_312];
}

void __45__WFWordPressPostAction_updatePossibleStates__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 reloadPossibleStates];
  }
}

- (BOOL)setParameterState:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = WFWordPressPostAction;
  v7 = [(WFWordPressPostAction *)&v9 setParameterState:a3 forKey:v6];
  if (v7)
  {
    if ([v6 isEqualToString:@"Type"])
    {
      [(WFWordPressPostAction *)self updateHiddenStates];
    }

    if (([v6 isEqualToString:@"WFAccount"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"Blog"))
    {
      [(WFWordPressPostAction *)self updatePossibleStates];
    }
  }

  return v7;
}

- (void)updateAccountMetadata
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = +[WFDiskCache workflowCache];
  v29 = self;
  v3 = [(WFWordPressPostAction *)self resourceManager];
  v4 = [v3 resourceObjectsOfClass:objc_opt_class()];
  v5 = [v4 anyObject];

  v6 = dispatch_group_create();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = v5;
  obj = [v5 accounts];
  v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v31 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = objc_alloc_init(WFWordPressSessionManager);
        v12 = [v10 username];
        [(WFWordPressSessionManager *)v11 setUsername:v12];

        v13 = [v10 password];
        [(WFWordPressSessionManager *)v11 setPassword:v13];

        v14 = [v10 endpointURL];
        [(WFWordPressSessionManager *)v11 setEndpointURL:v14];

        v15 = [v10 username];
        v16 = [v10 endpointURL];
        v17 = [v16 absoluteString];
        v25 = WFDiskCacheKey(v15, v18, v19, v20, v21, v22, v23, v24, v17);

        dispatch_group_enter(v6);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke;
        v34[3] = &unk_278C1F300;
        v35 = v32;
        v36 = v25;
        v37 = v10;
        v38 = v6;
        v26 = v25;
        [(WFWordPressSessionManager *)v11 getBlogsWithCompletionHandler:v34];
      }

      v8 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_8;
  block[3] = &unk_278C224A0;
  block[4] = v29;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

  v27 = *MEMORY[0x277D85DE8];
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v33 = a3;
  if (v5)
  {
    [*(a1 + 32) setObject:v5 forKeyComponents:{*(a1 + 40), @"WFWordPressBlogs", 0, v33}];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v35 = *v61;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v61 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v60 + 1) + 8 * i);
        v10 = objc_alloc_init(WFWordPressSessionManager);
        v11 = [*(a1 + 48) username];
        [(WFWordPressSessionManager *)v10 setUsername:v11];

        v12 = [*(a1 + 48) password];
        [(WFWordPressSessionManager *)v10 setPassword:v12];

        v13 = [v9 endpointURL];
        [(WFWordPressSessionManager *)v10 setEndpointURL:v13];

        v14 = [v9 blogId];
        [(WFWordPressSessionManager *)v10 setBlogId:v14];

        v15 = *(a1 + 40);
        v16 = [v9 blogId];
        v17 = [v16 description];
        v25 = WFDiskCacheKey(v15, v18, v19, v20, v21, v22, v23, v24, v17);

        dispatch_group_enter(*(a1 + 56));
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_2;
        v56[3] = &unk_278C1C170;
        v57 = *(a1 + 32);
        v26 = v25;
        v58 = v26;
        v59 = *(a1 + 56);
        [(WFWordPressSessionManager *)v10 getPostStatusesWithCompletionHandler:v56];
        dispatch_group_enter(*(a1 + 56));
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_3;
        v52[3] = &unk_278C1C170;
        v53 = *(a1 + 32);
        v27 = v26;
        v54 = v27;
        v55 = *(a1 + 56);
        [(WFWordPressSessionManager *)v10 getPageTemplatesWithCompletionHandler:v52];
        dispatch_group_enter(*(a1 + 56));
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_4;
        v48[3] = &unk_278C1C170;
        v49 = *(a1 + 32);
        v28 = v27;
        v50 = v28;
        v51 = *(a1 + 56);
        [(WFWordPressSessionManager *)v10 getPostTypesWithCompletionHandler:v48];
        dispatch_group_enter(*(a1 + 56));
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_5;
        v44[3] = &unk_278C1C170;
        v45 = *(a1 + 32);
        v29 = v28;
        v46 = v29;
        v47 = *(a1 + 56);
        [(WFWordPressSessionManager *)v10 getPostFormatsWithCompletionHandler:v44];
        dispatch_group_enter(*(a1 + 56));
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_6;
        v40[3] = &unk_278C221D0;
        v41 = *(a1 + 32);
        v30 = v29;
        v42 = v30;
        v43 = *(a1 + 56);
        [(WFWordPressSessionManager *)v10 getTermsForTaxonomy:@"category" completionHandler:v40];
        dispatch_group_enter(*(a1 + 56));
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_7;
        v36[3] = &unk_278C221D0;
        v37 = *(a1 + 32);
        v38 = v30;
        v39 = *(a1 + 56);
        v31 = v30;
        [(WFWordPressSessionManager *)v10 getTermsForTaxonomy:@"post_tag" completionHandler:v36];
      }

      v7 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v7);
  }

  dispatch_group_leave(*(a1 + 56));
  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) updateHiddenStates];
  v2 = *(a1 + 32);

  return [v2 updatePossibleStates];
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyComponents:{*(a1 + 40), @"WFWordPressPostStatuses", 0}];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyComponents:{*(a1 + 40), @"WFWordPressPageTemplates", 0}];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyComponents:{*(a1 + 40), @"WFWordPressPostTypes", 0}];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyComponents:{*(a1 + 40), @"WFWordPressPostFormats", 0}];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyComponents:{*(a1 + 40), @"WFWordPressPostCategories", 0}];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void __46__WFWordPressPostAction_updateAccountMetadata__block_invoke_7(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) setObject:a2 forKeyComponents:{*(a1 + 40), @"WFWordPressPostTags", 0}];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

- (void)wasRemovedFromWorkflow:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFWordPressPostAction;
  [(WFWordPressPostAction *)&v5 wasRemovedFromWorkflow:a3];
  v4 = [(WFWordPressPostAction *)self observer];
  [(WFAccount *)WFWordPressAccount removeAccountObserver:v4];
}

- (void)wasAddedToWorkflow:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFWordPressPostAction;
  [(WFWordPressPostAction *)&v12 wasAddedToWorkflow:v4];
  [(WFWordPressPostAction *)self updateAccountMetadata];
  objc_initWeak(&location, self);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __44__WFWordPressPostAction_wasAddedToWorkflow___block_invoke;
  v9 = &unk_278C1EEF0;
  objc_copyWeak(&v10, &location);
  v5 = [(WFAccount *)WFWordPressAccount addAccountObserver:&v6];
  [(WFWordPressPostAction *)self setObserver:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __44__WFWordPressPostAction_wasAddedToWorkflow___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateAccountMetadata];
}

- (void)initializeParameters
{
  v16[8] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = WFWordPressPostAction;
  [(WFWordPressPostAction *)&v14 initializeParameters];
  v16[0] = @"Blog";
  v16[1] = @"Type";
  v16[2] = @"Format";
  v16[3] = @"Status";
  v16[4] = @"Template";
  v16[5] = @"WFWordPressPostTags";
  v16[6] = @"Categories";
  v16[7] = @"Tags";
  [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(WFWordPressPostAction *)self parameterForKey:*(*(&v10 + 1) + 8 * v7), v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v8 setDataSource:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  [(WFWordPressPostAction *)self updateHiddenStates];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v109 = a3;
  v4 = +[WFDiskCache workflowCache];
  v5 = [(WFWordPressPostAction *)self parameterForKey:@"WFAccount"];
  v6 = [(WFWordPressPostAction *)self parameterValueForKey:@"WFAccount" ofClass:objc_opt_class()];
  v96 = v5;
  v107 = [v5 accountWithName:v6];

  v7 = [v107 username];
  v8 = [v107 endpointURL];
  v9 = [v8 absoluteString];
  v17 = WFDiskCacheKey(v7, v10, v11, v12, v13, v14, v15, v16, v9);

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v97 = v4;
  v21 = [v4 objectOfClasses:v20 forKeyComponents:{v17, @"WFWordPressBlogs", 0}];

  v22 = [(WFWordPressPostAction *)self parameterValueForKey:@"Blog" ofClass:objc_opt_class()];
  v94 = v21;
  v105 = [v21 objectMatchingKey:@"blogName" value:v22];

  v23 = [v105 blogId];
  v24 = [v23 description];
  v95 = v17;
  v32 = WFDiskCacheKey(v17, v25, v26, v27, v28, v29, v30, v31, v24);

  v33 = [(WFWordPressPostAction *)self parameterValueForKey:@"Type" ofClass:objc_opt_class()];
  v34 = +[WFDiskCache workflowCache];
  v35 = MEMORY[0x277CBEB98];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = [v35 setWithObjects:{v36, v37, objc_opt_class(), 0}];
  v39 = [v34 objectOfClasses:v38 forKeyComponents:{v32, @"WFWordPressPostTypes", 0}];

  v92 = v39;
  v40 = [v39 allValues];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke;
  v137[3] = &unk_278C1BFE0;
  v91 = v33;
  v138 = v91;
  v41 = [v40 if_compactMap:v137];
  v103 = [v41 firstObject];

  v42 = [(WFWordPressPostAction *)self parameterValueForKey:@"Format" ofClass:objc_opt_class()];
  v43 = +[WFDiskCache workflowCache];
  v44 = MEMORY[0x277CBEB98];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  v47 = [v43 objectOfClasses:v46 forKeyComponents:{v32, @"WFWordPressPostFormats", 0}];

  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_2;
  v135[3] = &unk_278C1C008;
  v89 = v42;
  v90 = v47;
  v136 = v89;
  v48 = [v47 keysOfEntriesPassingTest:v135];
  v101 = [v48 anyObject];

  v49 = [(WFWordPressPostAction *)self parameterValueForKey:@"Status" ofClass:objc_opt_class()];
  v50 = +[WFDiskCache workflowCache];
  v51 = MEMORY[0x277CBEB98];
  v52 = objc_opt_class();
  v53 = [v51 setWithObjects:{v52, objc_opt_class(), 0}];
  v54 = [v50 objectOfClasses:v53 forKeyComponents:{v32, @"WFWordPressPostStatuses", 0}];

  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_3;
  v133[3] = &unk_278C1C008;
  v87 = v49;
  v88 = v54;
  v134 = v87;
  v55 = [v54 keysOfEntriesPassingTest:v133];
  v99 = [v55 anyObject];

  v56 = [(WFWordPressPostAction *)self parameterValueForKey:@"Template" ofClass:objc_opt_class()];
  v57 = +[WFDiskCache workflowCache];
  v58 = MEMORY[0x277CBEB98];
  v59 = objc_opt_class();
  v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
  v93 = v32;
  v61 = [v57 objectOfClasses:v60 forKeyComponents:{v32, @"WFWordPressPageTemplates", 0}];

  v85 = v61;
  v86 = v56;
  v98 = [v61 objectForKey:v56];
  v62 = [(WFWordPressPostAction *)self parameterValueForKey:@"Title" ofClass:objc_opt_class()];
  v63 = [(WFWordPressPostAction *)self parameterValueForKey:@"Excerpt" ofClass:objc_opt_class()];
  v64 = [(WFWordPressPostAction *)self parameterValueForKey:@"Slug" ofClass:objc_opt_class()];
  v65 = [(WFWordPressPostAction *)self parameterValueForKey:@"AllowComments" ofClass:objc_opt_class()];
  LOBYTE(v56) = [v65 BOOLValue];

  v66 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
  v67 = [(WFWordPressPostAction *)self parameterValueForKey:@"Tags" ofClass:objc_opt_class()];
  v68 = [v67 componentsSeparatedByCharactersInSet:v66];

  v69 = [v68 if_compactMap:&__block_literal_global_20473];

  v70 = [(WFWordPressPostAction *)self parameterValueForKey:@"Categories" ofClass:objc_opt_class()];
  v84 = v66;
  v71 = [v70 componentsSeparatedByCharactersInSet:v66];

  v72 = [v71 if_compactMap:&__block_literal_global_277];

  v73 = [(WFWordPressPostAction *)self parameterValueForKey:@"CustomFields" ofClass:objc_opt_class()];
  v131[0] = 0;
  v131[1] = v131;
  v131[2] = 0x3032000000;
  v131[3] = __Block_byref_object_copy__20475;
  v131[4] = __Block_byref_object_dispose__20476;
  v132 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_278;
  aBlock[3] = &unk_278C1C120;
  v108 = v107;
  v115 = v108;
  v106 = v105;
  v116 = v106;
  v104 = v103;
  v117 = v104;
  v110 = v109;
  v118 = v110;
  v119 = self;
  v83 = v62;
  v120 = v83;
  v129 = v131;
  v102 = v101;
  v121 = v102;
  v100 = v99;
  v122 = v100;
  v130 = v56;
  v74 = v64;
  v123 = v74;
  v75 = v63;
  v124 = v75;
  v76 = v98;
  v125 = v76;
  v77 = v69;
  v126 = v77;
  v78 = v72;
  v127 = v78;
  v79 = v73;
  v128 = v79;
  v80 = _Block_copy(aBlock);
  v81 = [(WFWordPressPostAction *)self parameterValueForKey:@"Date" ofClass:objc_opt_class()];
  if ([v81 length])
  {
    v82 = [MEMORY[0x277CFC2F8] itemWithObject:v81];
    v111[0] = MEMORY[0x277D85DD0];
    v111[1] = 3221225472;
    v111[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_14;
    v111[3] = &unk_278C1C148;
    v113 = v131;
    v112 = v80;
    [v82 getObjectRepresentation:v111 forClass:objc_opt_class()];
  }

  else
  {
    v80[2](v80);
  }

  _Block_object_dispose(v131, 8);
}

void *__52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 labels];
  v5 = [v4 objectForKey:@"singular_name"];
  if ([v5 isEqualToString:*(a1 + 32)])
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

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_278(uint64_t a1)
{
  v38[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(WFWordPressSessionManager);
  v3 = [*(a1 + 32) username];
  [(WFWordPressSessionManager *)v2 setUsername:v3];

  v4 = [*(a1 + 32) password];
  [(WFWordPressSessionManager *)v2 setPassword:v4];

  v5 = [*(a1 + 40) endpointURL];
  if (v5)
  {
    [(WFWordPressSessionManager *)v2 setEndpointURL:v5];
  }

  else
  {
    v6 = [*(a1 + 32) endpointURL];
    [(WFWordPressSessionManager *)v2 setEndpointURL:v6];
  }

  v7 = [*(a1 + 40) blogId];
  [(WFWordPressSessionManager *)v2 setBlogId:v7];

  v8 = [*(a1 + 48) name];
  v9 = [v8 isEqualToString:@"attachment"];

  if (v9)
  {
    v10 = *(a1 + 56);
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_2_283;
    v35[3] = &unk_278C1EEA8;
    v12 = *(a1 + 64);
    v36 = v2;
    v37 = v12;
    v13 = v2;
    [v10 generateCollectionByCoercingToItemClasses:v11 completionHandler:v35];

    v14 = v36;
  }

  else
  {
    v16 = *(a1 + 56);
    v15 = *(a1 + 64);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_7;
    v21[3] = &unk_278C1C0F8;
    v21[4] = v15;
    v22 = v2;
    v23 = *(a1 + 72);
    v17 = *(a1 + 48);
    v18 = *(a1 + 144);
    v24 = v17;
    v33 = v18;
    v25 = *(a1 + 80);
    v26 = *(a1 + 88);
    v34 = *(a1 + 152);
    v27 = *(a1 + 96);
    v28 = *(a1 + 104);
    v29 = *(a1 + 112);
    v30 = *(a1 + 120);
    v31 = *(a1 + 128);
    v32 = *(a1 + 136);
    v19 = v2;
    [v15 generateHTMLFromInput:v16 completionHandler:v21];

    v14 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_14(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_2_283(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_3_284;
  v5[3] = &unk_278C1D2F0;
  v6 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_6;
  v4[3] = &unk_278C21E70;
  v4[4] = *(a1 + 40);
  [a2 transformFileRepresentationsForType:0 usingBlock:v5 completionHandler:v4];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) finishRunningWithError:a3];
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_8;
    aBlock[3] = &unk_278C1C0D0;
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v32 = v5;
    v6 = *(a1 + 56);
    v39 = *(a1 + 128);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    v40 = *(a1 + 136);
    v9 = *(a1 + 80);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v33 = v11;
    v34 = v10;
    v12 = *(a1 + 88);
    v13 = *(a1 + 96);
    v14 = *(a1 + 104);
    v15 = *(a1 + 112);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v35 = v17;
    v36 = v16;
    v18 = *(a1 + 120);
    v19 = *(a1 + 32);
    v37 = v18;
    v38 = v19;
    v20 = _Block_copy(aBlock);
    v21 = [*(a1 + 32) parameterValueForKey:@"ThumbnailImage" ofClass:objc_opt_class()];
    if (v21)
    {
      v22 = objc_opt_class();
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_11;
      v25[3] = &unk_278C1EBB0;
      v28 = v20;
      v23 = *(a1 + 40);
      v24 = *(a1 + 32);
      v26 = v23;
      v27 = v24;
      [v21 generateCollectionByCoercingToItemClass:v22 completionHandler:v25];
    }

    else
    {
      (*(v20 + 2))(v20, 0);
    }
  }
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(*(*(a1 + 136) + 8) + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 144);
  v13 = *(a1 + 96);
  v14 = *(a1 + 80);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v15 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_9;
  v16[3] = &unk_278C1C0A8;
  v16[4] = *(a1 + 128);
  v17 = v3;
  LOBYTE(v12) = v9;
  [v17 createPostWithTitle:v15 content:v4 type:v5 date:v6 format:v7 status:v8 allowingComments:v12 name:v14 excerpt:v13 template:v10 tags:a2 categories:v11 thumbnailId:v16 customFields:? completionHandler:?];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_11(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_12;
  v6[3] = &unk_278C211A8;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 getFileRepresentation:v6 forType:0];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_12(void *a1, uint64_t a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_13;
    v7[3] = &unk_278C1C058;
    v4 = a1[4];
    v5 = a1[6];
    v7[4] = a1[5];
    v8 = v5;
    [v4 uploadFile:a2 completionHandler:v7];
  }

  else
  {
    v6 = *(a1[6] + 16);

    v6();
  }
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);

    [v4 finishRunningWithError:?];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [a2 fileId];
    (*(v5 + 16))(v5, v6);
  }
}

uint64_t __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_9(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_10;
    v6[3] = &unk_278C1C080;
    v3 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    return [v3 getPost:a2 completionHandler:v6];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 finishRunningWithError:?];
  }
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 link];

  if (v6)
  {
    v7 = [*(a1 + 32) output];
    v8 = [v9 link];
    [v7 addObject:v8];
  }

  [*(a1 + 32) finishRunningWithError:v5];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_3_284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_4_285;
  v9[3] = &unk_278C1C058;
  v11 = v6;
  v10 = v7;
  v8 = v6;
  [v10 uploadFile:a2 completionHandler:v9];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_4_285(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [a2 fileId];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_5_286;
    v7[3] = &unk_278C1C030;
    v8 = *(a1 + 40);
    [v3 getPost:v4 completionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_5_286(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 link];
  (*(v4 + 16))(v4, v6, v5);
}

id __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

id __52__WFWordPressPostAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA900];
  v3 = a2;
  v4 = [v2 whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (void)generateHTMLFromInput:(id)a3 completionHandler:(id)a4
{
  v13[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke;
  v11[3] = &unk_278C20848;
  v11[4] = self;
  v12 = v6;
  v9 = v6;
  [v7 generateCollectionByCoercingToItemClasses:v8 completionHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 items];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_2;
  v13[3] = &unk_278C1DEC0;
  v6 = v4;
  v7 = *(a1 + 32);
  v14 = v6;
  v15 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_7;
  v10[3] = &unk_278C21FB0;
  v8 = *(a1 + 40);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  [v5 if_enumerateAsynchronouslyInSequence:v13 completionHandler:v10];
}

void __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_3;
    v18[3] = &unk_278C1BFB0;
    v19 = *(a1 + 32);
    v20 = v7;
    [v6 getObjectRepresentation:v18 forClass:objc_opt_class()];

    v8 = v19;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_4;
      v15[3] = &unk_278C216C8;
      v17 = v7;
      v16 = *(a1 + 32);
      v9 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1DA0]];
      [v6 getFileRepresentation:v15 forType:v9];

      v8 = v17;
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_5;
      v12[3] = &unk_278C211A8;
      v11 = *(a1 + 32);
      v10 = v11.i64[0];
      v13 = vextq_s8(v11, v11, 8uLL);
      v14 = v7;
      [v6 getFileRepresentation:v12 forType:0];

      v8 = v13.i64[1];
    }
  }
}

void __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  [v6 appendString:a2];
  [*(a1 + 32) appendString:@"\n"];
  (*(*(a1 + 40) + 16))();
}

void __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v24 = a3;
  v5 = [a2 mappedData];
  v6 = [v5 length];
  if (!v24)
  {
    if (v6)
    {
      Memory = htmlReadMemory([v5 bytes], objc_msgSend(v5, "length"), 0, 0, 2049);
      if (Memory)
      {
        v8 = Memory;
        RootElement = xmlDocGetRootElement(Memory);
        if (RootElement)
        {
          v10 = RootElement;
          v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:RootElement->name];
          v12 = [v11 isEqualToString:@"html"];

          if (v12)
          {
            children = v10->children;
            if (children)
            {
              while (1)
              {
                v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:children->name];
                v15 = [v14 isEqualToString:@"body"];

                if (v15)
                {
                  break;
                }

                children = xmlNextElementSibling(children);
                if (!children)
                {
                  goto LABEL_9;
                }
              }

              xmlDocSetRootElement(v8, children);
            }

            else
            {
LABEL_9:
              children = v10;
            }

            for (i = children->children; i; i = xmlNextElementSibling(i))
            {
              v19 = xmlBufferCreate();
              xmlNodeDump(v19, v8, i, 0, 0);
              v20 = xmlBufferContent(v19);
              v21 = xmlBufferLength(v19);
              v22 = *(a1 + 32);
              v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v20 length:v21 encoding:4];
              [v22 appendString:v23];

              xmlBufferFree(v19);
            }
          }

          else
          {
            v16 = *(a1 + 32);
            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
            [v16 appendString:v17];
          }

          [*(a1 + 32) appendString:@"\n"];
        }

        xmlFreeDoc(v8);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[WFDiskCache workflowCache];
  v5 = [a1[4] parameterForKey:@"WFAccount"];
  v6 = [a1[4] parameterValueForKey:@"WFAccount" ofClass:objc_opt_class()];
  v7 = [v5 accountWithName:v6];

  v8 = [v7 username];
  v9 = [v7 endpointURL];
  v10 = [v9 absoluteString];
  v18 = WFDiskCacheKey(v8, v11, v12, v13, v14, v15, v16, v17, v10);

  v19 = MEMORY[0x277CBEB98];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = [v4 objectOfClasses:v21 forKeyComponents:{v18, @"WFWordPressBlogs", 0}];

  v23 = [a1[4] parameterValueForKey:@"Blog" ofClass:objc_opt_class()];
  v24 = [v22 objectMatchingKey:@"blogName" value:v23];

  v25 = objc_alloc_init(WFWordPressSessionManager);
  v26 = [v7 username];
  [(WFWordPressSessionManager *)v25 setUsername:v26];

  v27 = [v7 password];
  [(WFWordPressSessionManager *)v25 setPassword:v27];

  v28 = [v24 endpointURL];
  [(WFWordPressSessionManager *)v25 setEndpointURL:v28];

  v29 = [v24 blogId];
  [(WFWordPressSessionManager *)v25 setBlogId:v29];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_6;
  v30[3] = &unk_278C1C058;
  v31 = a1[5];
  v32 = a1[6];
  [(WFWordPressSessionManager *)v25 uploadFile:v3 completionHandler:v30];
}

void __65__WFWordPressPostAction_generateHTMLFromInput_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v6 url];
    v8 = [v7 absoluteString];
    v9 = [v8 stringByEncodingHTMLEntities];
    v10 = [v6 filename];

    v11 = [v10 stringByEncodingHTMLEntities];
    [v5 appendFormat:@"<img src=%@ alt=%@>\n", v9, v11];
  }

  (*(*(a1 + 40) + 16))();
}

@end