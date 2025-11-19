@interface INNotebookDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INNotebookDomainLoadIntentResponseDescriptionIfNeeded

void ___INNotebookDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v92[8] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v78 = [[INIntentSlotDescription alloc] initWithName:@"modifiedTaskList" tag:1 facadePropertyName:@"modifiedTaskList" dataPropertyName:@"modifiedTaskList" isExtended:0 isPrivate:0 valueType:135 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v91[0] = v78;
  v77 = [[INIntentSlotDescription alloc] initWithName:@"addedTasks" tag:2 facadePropertyName:@"addedTasks" dataPropertyName:@"addedTasks" isExtended:0 isPrivate:0 valueType:134 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v91[1] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"warnings" tag:3 facadePropertyName:@"warnings" dataPropertyName:@"warnings" isExtended:0 isPrivate:1 valueType:142 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v91[2] = v76;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
  v74 = _INIntentSchemaBuildIntentSlotDescriptionMap(v75);
  v73 = [(INIntentResponseDescription *)v0 initWithName:@"AddTasksIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.notes.AddTasksIntentResponse" isPrivate:0 slotsByName:v74];
  v92[0] = v73;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v72 = [[INIntentSlotDescription alloc] initWithName:@"note" tag:1 facadePropertyName:@"note" dataPropertyName:@"note" isExtended:0 isPrivate:0 valueType:133 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v90 = v72;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
  v70 = _INIntentSchemaBuildIntentSlotDescriptionMap(v71);
  v69 = [(INIntentResponseDescription *)v3 initWithName:@"AppendToNoteIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.notes.AppendToNoteIntentResponse" isPrivate:0 slotsByName:v70];
  v92[1] = v69;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v68 = [[INIntentSlotDescription alloc] initWithName:@"createdNote" tag:1 facadePropertyName:@"createdNote" dataPropertyName:@"createdNote" isExtended:0 isPrivate:0 valueType:133 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v89 = v68;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  v66 = _INIntentSchemaBuildIntentSlotDescriptionMap(v67);
  v65 = [(INIntentResponseDescription *)v6 initWithName:@"CreateNoteIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.notes.CreateNoteIntentResponse" isPrivate:0 slotsByName:v66];
  v92[2] = v65;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v64 = [[INIntentSlotDescription alloc] initWithName:@"createdTaskList" tag:1 facadePropertyName:@"createdTaskList" dataPropertyName:@"createdTaskList" isExtended:0 isPrivate:0 valueType:135 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v88 = v64;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
  v62 = _INIntentSchemaBuildIntentSlotDescriptionMap(v63);
  v61 = [(INIntentResponseDescription *)v9 initWithName:@"CreateTaskListIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.notes.CreateTaskListIntentResponse" isPrivate:0 slotsByName:v62];
  v92[3] = v61;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v60 = [[INIntentSlotDescription alloc] initWithName:@"deletedTasks" tag:1 facadePropertyName:@"deletedTasks" dataPropertyName:@"deletedTasks" isExtended:0 isPrivate:0 valueType:134 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v87 = v60;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
  v58 = _INIntentSchemaBuildIntentSlotDescriptionMap(v59);
  v57 = [(INIntentResponseDescription *)v12 initWithName:@"DeleteTasksIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.notes.DeleteTasksIntentResponse" isPrivate:0 slotsByName:v58];
  v92[4] = v57;
  v15 = [INIntentResponseDescription alloc];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v56 = [[INIntentSlotDescription alloc] initWithName:@"notes" tag:1 facadePropertyName:@"notes" dataPropertyName:@"notes" isExtended:0 isPrivate:0 valueType:133 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v86[0] = v56;
  v55 = [[INIntentSlotDescription alloc] initWithName:@"taskLists" tag:2 facadePropertyName:@"taskLists" dataPropertyName:@"taskLists" isExtended:0 isPrivate:0 valueType:135 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v86[1] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"tasks" tag:3 facadePropertyName:@"tasks" dataPropertyName:@"tasks" isExtended:0 isPrivate:0 valueType:134 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v86[2] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"sortType" tag:4 facadePropertyName:@"sortType" dataPropertyName:@"sortType" isExtended:0 isPrivate:0 valueType:131 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v86[3] = v53;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
  v51 = _INIntentSchemaBuildIntentSlotDescriptionMap(v52);
  v50 = [(INIntentResponseDescription *)v15 initWithName:@"SearchForNotebookItemsIntentResponse" facadeClass:v16 dataClass:v17 type:@"sirikit.intent.notes.SearchForNotebookItemsIntentResponse" isPrivate:0 slotsByName:v51];
  v92[5] = v50;
  v18 = [INIntentResponseDescription alloc];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v49 = [[INIntentSlotDescription alloc] initWithName:@"modifiedTask" tag:1 facadePropertyName:@"modifiedTask" dataPropertyName:@"modifiedTask" isExtended:0 isPrivate:0 valueType:134 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v85[0] = v49;
  v48 = [[INIntentSlotDescription alloc] initWithName:@"warnings" tag:2 facadePropertyName:@"warnings" dataPropertyName:@"warnings" isExtended:0 isPrivate:1 valueType:142 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v85[1] = v48;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:2];
  v22 = _INIntentSchemaBuildIntentSlotDescriptionMap(v21);
  v23 = [(INIntentResponseDescription *)v18 initWithName:@"SetTaskAttributeIntentResponse" facadeClass:v19 dataClass:v20 type:@"sirikit.intent.notes.SetTaskAttributeIntentResponse" isPrivate:0 slotsByName:v22];
  v92[6] = v23;
  v24 = [INIntentResponseDescription alloc];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = [[INIntentSlotDescription alloc] initWithName:@"snoozedTasks" tag:1 facadePropertyName:@"snoozedTasks" dataPropertyName:@"snoozedTasks" isExtended:0 isPrivate:0 valueType:134 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v84 = v27;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
  v29 = _INIntentSchemaBuildIntentSlotDescriptionMap(v28);
  v30 = [(INIntentResponseDescription *)v24 initWithName:@"SnoozeTasksIntentResponse" facadeClass:v25 dataClass:v26 type:@"sirikit.intent.notes.SnoozeTasksIntentResponse" isPrivate:0 slotsByName:v29];
  v92[7] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:8];

  v32 = [v31 count];
  v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v32];
  v34 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v32];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v35 = v31;
  v36 = [v35 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v80;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v80 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v79 + 1) + 8 * i);
        v41 = [v40 name];
        [v33 setObject:v40 forKey:v41];

        v42 = [v40 type];
        [v34 setObject:v40 forKey:v42];
      }

      v37 = [v35 countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v37);
  }

  v43 = [v33 copy];
  v44 = sNotebookDomain_intentResponseDescsByName;
  sNotebookDomain_intentResponseDescsByName = v43;

  v45 = [v34 copy];
  v46 = sNotebookDomain_intentResponseDescsByType;
  sNotebookDomain_intentResponseDescsByType = v45;

  v47 = *MEMORY[0x1E69E9840];
}

@end