@interface WFAddMusicToUpNextAction
- (id)disabledOnPlatforms;
- (unint64_t)queueAdditionMode;
- (void)runAsynchronouslyWithInput:(id)a3;
@end

@implementation WFAddMusicToUpNextAction

- (unint64_t)queueAdditionMode
{
  v2 = [(WFAddMusicToUpNextAction *)self parameterValueForKey:@"WFWhenToPlay" ofClass:objc_opt_class()];
  if ([v2 isEqualToString:@"Next"])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"Later"];
  }

  return v3;
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke;
  v7[3] = &unk_278C211D0;
  v7[4] = self;
  [v4 generateCollectionByCoercingToItemClasses:v5 completionHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a4)
  {
    [v7 finishRunningWithError:a4];
  }

  else
  {
    v8 = [v7 queueAdditionMode];
    v9 = [v6 items];
    v10 = v9;
    if (!v8)
    {
      v11 = [v9 reverseObjectEnumerator];
      v12 = [v11 allObjects];

      v10 = v12;
    }

    v13 = objc_alloc_init(WFMediaPlaybackController);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_2;
    v17[3] = &unk_278C1DEC0;
    v14 = *(a1 + 32);
    v18 = v13;
    v19 = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_6;
    v16[3] = &unk_278C21F18;
    v16[4] = v14;
    v15 = v13;
    [v10 if_enumerateAsynchronouslyInSequence:v17 completionHandler:v16];
  }
}

void __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_3;
    v22[3] = &unk_278C1BE68;
    v24 = v7;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v23[0] = v8;
    v23[1] = v9;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v10 = getMPMediaItemClass_softClass_19898;
    v29 = getMPMediaItemClass_softClass_19898;
    if (!getMPMediaItemClass_softClass_19898)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __getMPMediaItemClass_block_invoke_19899;
      v25[3] = &unk_278C222B8;
      v25[4] = &v26;
      __getMPMediaItemClass_block_invoke_19899(v25);
      v10 = v27[3];
    }

    v11 = &v24;
    v12 = v23;
    v13 = v10;
    _Block_object_dispose(&v26, 8);
    v14 = v22;
    v15 = v6;
    v16 = v10;
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_4;
    v19[3] = &unk_278C1BE68;
    v11 = &v21;
    v21 = v7;
    v12 = v20;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20[0] = v17;
    v20[1] = v18;
    v16 = objc_opt_class();
    v14 = v19;
    v15 = v6;
  }

  [v15 getObjectRepresentations:v14 forClass:v16];
}

void __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) queueMediaItems:v3 inAdditionMode:objc_msgSend(*(a1 + 40) completion:{"queueAdditionMode"), *(a1 + 48)}];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count])
  {
    v3 = [v4 if_map:&__block_literal_global_19901];
    [*(a1 + 32) queueiTunesStoreItems:v3 inAdditionMode:objc_msgSend(*(a1 + 40) completion:{"queueAdditionMode"), *(a1 + 48)}];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id __55__WFAddMusicToUpNextAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 identifier];
  v4 = [v2 numberWithLongLong:{objc_msgSend(v3, "longLongValue")}];

  return v4;
}

- (id)disabledOnPlatforms
{
  v5.receiver = self;
  v5.super_class = WFAddMusicToUpNextAction;
  v2 = [(WFAddMusicToUpNextAction *)&v5 disabledOnPlatforms];
  v3 = [v2 arrayByAddingObject:*MEMORY[0x277D7CC80]];

  return v3;
}

@end