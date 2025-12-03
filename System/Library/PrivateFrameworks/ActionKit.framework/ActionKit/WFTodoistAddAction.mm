@interface WFTodoistAddAction
+ (int64_t)reminderServiceWithReminderType:(id)type;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFTodoistAddAction

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  v5 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistContent" ofClass:objc_opt_class()];
  v6 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistProject" ofClass:objc_opt_class()];
  v7 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistDueDate" ofClass:objc_opt_class()];
  v8 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistReminder" ofClass:objc_opt_class()];
  v9 = objc_opt_class();
  v10 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistReminderType" ofClass:objc_opt_class()];
  v26 = [v9 reminderServiceWithReminderType:v10];

  v11 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistPriority" ofClass:objc_opt_class()];
  v25 = 5 - [v11 integerValue];

  v12 = [(WFTodoistAddAction *)self parameterValueForKey:@"WFTodoistNotes" ofClass:objc_opt_class()];
  v24 = [(WFTodoistAddAction *)self parameterForKey:@"WFTodoistProject"];
  v13 = [v24 projectNamed:v6];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__15780;
  v49[4] = __Block_byref_object_dispose__15781;
  v50 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke;
  aBlock[3] = &unk_278C224A0;
  aBlock[4] = self;
  v14 = _Block_copy(aBlock);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_2;
  v42[3] = &unk_278C1B228;
  v15 = inputCopy;
  v45 = v49;
  v46 = v48;
  v43 = v15;
  v44 = v14;
  v16 = _Block_copy(v42);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_7;
  v30[3] = &unk_278C1B278;
  v38 = v49;
  v17 = v13;
  v31 = v17;
  v18 = v5;
  v32 = v18;
  v19 = v7;
  v33 = v19;
  v20 = v8;
  v34 = v20;
  v40 = v26;
  v41 = v25;
  v21 = v12;
  v35 = v21;
  selfCopy = self;
  v39 = v48;
  v37 = v16;
  v22 = _Block_copy(v30);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_9;
  v27[3] = &unk_278C1B2C8;
  v28 = v22;
  v29 = v49;
  v27[4] = self;
  v23 = _Block_copy(v27);
  v23[2]();

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_3;
  v4[3] = &unk_278C1B200;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 getFileRepresentations:v4 forType:0];
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_7(void *a1)
{
  v1 = *(*(a1[11] + 8) + 40);
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[13];
  v7 = a1[14];
  v9 = a1[8];
  v8 = a1[9];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_8;
  v11[3] = &unk_278C1B250;
  v10 = a1[10];
  v13 = a1[12];
  v11[4] = v8;
  v12 = v10;
  [v1 createItemInProject:v2 content:v3 dueDateString:v4 reminderDateString:v5 reminderService:v6 priority:v7 note:v9 completionHandler:v11];
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) resourceManager];
  v3 = [v2 resourceObjectsOfClass:objc_opt_class()];
  v4 = [v3 anyObject];

  v5 = [v4 accounts];
  v6 = [v5 firstObject];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_10;
  v12[3] = &unk_278C1B2A0;
  v13 = v8;
  v11 = *(a1 + 40);
  v9 = v11;
  v14 = v11;
  v10 = v8;
  [v10 refreshWithCompletionHandler:v12];
}

uint64_t __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_10(uint64_t a1)
{
  v2 = objc_alloc_init(WFTodoistSessionManager);
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) credential];
  [*(*(*(a1 + 48) + 8) + 40) setCredential:v5];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v10 = v5;
  if (a2)
  {
    v6 = [*(a1 + 32) output];
    v7 = MEMORY[0x277CBEBC0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"https://todoist.com/showTask?id=%ld", a2];
    v9 = [v7 URLWithString:v8];
    [v6 addObject:v9];

    v5 = v10;
  }

  if (v5)
  {
    [*(a1 + 32) finishRunningWithError:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_4;
  v5[3] = &unk_278C1B1D8;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_6;
  v3[3] = &unk_278C20490;
  v4 = *(a1 + 32);
  [a2 if_mapAsynchronously:v5 completionHandler:v3];
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 40);
  v8 = *(*(*(a1 + 32) + 8) + 40);
  v9 = *(*(v7 + 8) + 24);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_5;
  v11[3] = &unk_278C1B1B0;
  v12 = v6;
  v10 = v6;
  [v8 createFileOnItemWithId:v9 withFile:a2 completionHandler:v11];
}

void __49__WFTodoistAddAction_runAsynchronouslyWithInput___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithInteger:a2];
  (*(v4 + 16))(v4, v7, v6);
}

- (void)initializeParameters
{
  v7.receiver = self;
  v7.super_class = WFTodoistAddAction;
  [(WFTodoistAddAction *)&v7 initializeParameters];
  resourceManager = [(WFTodoistAddAction *)self resourceManager];
  v4 = [resourceManager resourceObjectsOfClass:objc_opt_class()];
  anyObject = [v4 anyObject];

  v6 = [(WFTodoistAddAction *)self parameterForKey:@"WFTodoistProject"];
  [v6 setAccessResource:anyObject];
}

+ (int64_t)reminderServiceWithReminderType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Text Message"])
  {
    v4 = 2;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"Push Notification"];
  }

  return v4;
}

@end