@interface MechanismKofN
- (BOOL)requiresHostingControllerUiWithEventProcessing:(id)a3;
- (BOOL)requiresRemoteViewControllerUiWithEventProcessing:(id)a3;
- (BOOL)requiresUiWithEventProcessing:(id)a3;
- (MechanismKofN)initWithK:(unint64_t)a3 ofSubmechanisms:(id)a4 serial:(BOOL)a5 request:(id)a6;
- (id)additionalControllerInternalInfoForPolicy:(int64_t)a3;
- (id)availabilityEventsForPurpose:(int64_t)a3;
- (id)bestEffortAvailableMechanismForRequest:(id)a3 error:(id *)a4;
- (id)cachedExternalizationDelegate;
- (id)descriptionFlags;
- (id)findMechanismWithEventIdentifier:(int64_t)a3;
- (id)mechanismPruningMechanismsWithEventIdentifier:(int64_t)a3;
- (id)mechanismTreeDescription;
- (void)_runSubmechanismAtIndex:(int64_t)a3 hints:(id)a4 eventsDelegate:(id)a5 succeeded:(int64_t)a6 failed:(int64_t)a7 results:(id)a8 reply:(id)a9;
- (void)finishRunWithResult:(id)a3 error:(id)a4;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
- (void)setParent:(id)a3;
@end

@implementation MechanismKofN

- (MechanismKofN)initWithK:(unint64_t)a3 ofSubmechanisms:(id)a4 serial:(BOOL)a5 request:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = LA_LOG_MechanismKofN();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v18 = "[MechanismKofN initWithK:ofSubmechanisms:serial:request:]";
    v19 = 1024;
    v20 = a3;
    v21 = 2114;
    v22 = v10;
    v23 = 2112;
    v24 = self;
    _os_log_debug_impl(&dword_238B95000, v12, OS_LOG_TYPE_DEBUG, "%s %d, %{public}@ on %@", buf, 0x26u);
  }

  v16.receiver = self;
  v16.super_class = MechanismKofN;
  v13 = [(MechanismBaseComposite *)&v16 initWithEventIdentifier:0 remoteViewController:0 k:a3 ofSubmechanisms:v10 request:v11];

  if (v13)
  {
    v13->_serial = a5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __94__MechanismKofN_mechanismWithK_ofSubmechanisms_serial_request_preserveStandaloneReorganizers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)mechanismPruningMechanismsWithEventIdentifier:(int64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [(MechanismKofN *)self findMechanismWithEventIdentifier:?];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [(MechanismBaseComposite *)self submechanisms];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 mechanismPruningMechanismsWithEventIdentifier:a3];
            if (v13)
            {
              [v6 addObject:v13];
            }
          }

          else if ([v12 eventIdentifier] != a3)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke;
      v21 = &unk_278A62F78;
      v22 = v6;
      v23 = self;
      v14 = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke(&v18);
      v15 = [(MechanismBase *)self parent:v18];
      [(MechanismKofN *)v14 setParent:v15];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = self;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

id __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    v2 = [*(a1 + 32) firstObject];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke_2;
    v11[3] = &unk_278A62F50;
    v10 = *(a1 + 32);
    v3 = v10.i64[0];
    v12 = vextq_s8(v10, v10, 8uLL);
    v4 = __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke_2(v11);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v5[281];
    v8 = [v5 request];
    v2 = [MechanismKofN mechanismWithK:v4 ofSubmechanisms:v6 serial:v7 request:v8];
  }

  return v2;
}

uint64_t __63__MechanismKofN_mechanismPruningMechanismsWithEventIdentifier___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) k];
  if (result != 1)
  {
    v3 = [*(a1 + 32) k];
    if (v3 == [*(a1 + 32) n])
    {
      v4 = *(a1 + 40);

      return [v4 count];
    }

    else
    {
      v5 = [*(a1 + 32) n];
      v6 = [*(a1 + 32) k] - v5;
      v7 = [*(a1 + 40) count];
      if (v6 + v7 <= 1)
      {
        return 1;
      }

      else
      {
        return v6 + v7;
      }
    }
  }

  return result;
}

- (id)descriptionFlags
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = MechanismKofN;
  v3 = [(MechanismBase *)&v12 descriptionFlags];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"k:%u", -[MechanismBaseComposite k](self, "k")];
  v13[0] = v4;
  v5 = [(MechanismBaseComposite *)self submechanisms];
  v6 = v5;
  if (!v5)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v7 = [v5 componentsJoinedByString:{@", "}];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v9 = [v3 arrayByAddingObjectsFromArray:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v13.receiver = self;
  v13.super_class = MechanismKofN;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(MechanismBase *)&v13 runWithHints:v10 eventsDelegate:v9 reply:v8];
  self->_finishing = 0;
  v11 = objc_opt_new();
  runningMechanisms = self->_runningMechanisms;
  self->_runningMechanisms = v11;

  [(MechanismKofN *)self _runSubmechanismAtIndex:0 hints:v10 eventsDelegate:v9 succeeded:0 failed:0 results:MEMORY[0x277CBEC10] reply:v8];
}

- (void)_runSubmechanismAtIndex:(int64_t)a3 hints:(id)a4 eventsDelegate:(id)a5 succeeded:(int64_t)a6 failed:(int64_t)a7 results:(id)a8 reply:(id)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = a6;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = a7;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__0;
  v36[4] = __Block_byref_object_dispose__0;
  v26 = v17;
  v37 = v26;
  do
  {
    v19 = [(MechanismBaseComposite *)self submechanisms];
    v20 = [v19 count];

    if (a3 >= v20)
    {
      break;
    }

    v21 = [(MechanismBaseComposite *)self submechanisms];
    v22 = [v21 objectAtIndex:a3];

    [(NSMutableArray *)self->_runningMechanisms addObject:v22];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __93__MechanismKofN__runSubmechanismAtIndex_hints_eventsDelegate_succeeded_failed_results_reply___block_invoke;
    v27[3] = &unk_278A62FA0;
    v27[4] = self;
    v23 = v22;
    v28 = v23;
    v32 = v36;
    v33 = v39;
    v34 = v38;
    v35 = a3;
    v24 = v15;
    v29 = v24;
    v25 = v16;
    v30 = v25;
    v31 = v18;
    [v23 runWithHints:v24 eventsDelegate:v25 reply:v27];
    LOBYTE(v24) = self->_serial;

    ++a3;
  }

  while ((v24 & 1) == 0);
  _Block_object_dispose(v36, 8);

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
}

void __93__MechanismKofN__runSubmechanismAtIndex_hints_eventsDelegate_succeeded_failed_results_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  [*(*(a1 + 32) + 272) removeObject:*(a1 + 40)];
  if (v22)
  {
    v6 = [*(*(*(a1 + 72) + 8) + 40) dictionaryByMergingWith:?];
    v7 = *(*(a1 + 72) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 24) + 1;
    *(v9 + 24) = v10;
    if (v10 < [*(a1 + 32) k])
    {
      goto LABEL_13;
    }

    v11 = *(a1 + 32);
    v12 = *(*(*(a1 + 72) + 8) + 40);
    v13 = 0;
    goto LABEL_12;
  }

  v14 = [*(a1 + 32) policyOptions];
  v15 = [v14 objectForKeyedSubscript:&unk_284B78A80];
  if ([v15 BOOLValue])
  {
    v16 = [MEMORY[0x277CD47F0] error:v5 hasCode:-1023];
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*(a1 + 88) + 8);
  v18 = *(v17 + 24) + 1;
  *(v17 + 24) = v18;
  v19 = [*(a1 + 32) n];
  if (v18 > v19 - [*(a1 + 32) k] || v16 != 0)
  {
    v11 = *(a1 + 32);
    v12 = 0;
    v13 = v5;
LABEL_12:
    [v11 finishRunWithResult:v12 error:v13];
  }

LABEL_13:
  v21 = *(a1 + 32);
  if (v21[281] == 1)
  {
    [v21 _runSubmechanismAtIndex:*(a1 + 96) + 1 hints:*(a1 + 48) eventsDelegate:*(a1 + 56) succeeded:*(*(*(a1 + 80) + 8) + 24) failed:*(*(*(a1 + 88) + 8) + 24) results:*(*(*(a1 + 72) + 8) + 40) reply:*(a1 + 64)];
  }
}

- (void)finishRunWithResult:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_finishing)
  {
    v16 = v6;
    self->_finishing = 1;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [(NSMutableArray *)self->_runningMechanisms copy];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * v12);
          if (v7)
          {
            [*(*(&v18 + 1) + 8 * v12) finishRunWithResult:0 error:v7 skipReply:1];
          }

          else
          {
            v14 = [MEMORY[0x277CD47F0] errorWithCode:-9 message:{@"Submechanism canceled, because KofN result has been already determined."}];
            [v13 finishRunWithResult:0 error:v14 skipReply:1];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v17.receiver = self;
    v17.super_class = MechanismKofN;
    v6 = v16;
    [(MechanismBase *)&v17 finishRunWithResult:v16 error:v7];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)bestEffortAvailableMechanismForRequest:(id)a3 error:(id *)a4
{
  v26 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [(MechanismBaseComposite *)self submechanisms];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v27 = 0;
        v14 = [v13 bestEffortAvailableMechanismForRequest:v5 error:{&v27, v26}];
        v15 = v27;
        v16 = v15;
        if (v14)
        {
          [v6 addObject:v14];
        }

        else if (!v10)
        {
          v10 = v15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v17 = [v6 count];
  if (v17 >= [(MechanismBaseComposite *)self k])
  {
    v20 = [(MechanismBaseComposite *)self submechanisms];
    v21 = [v6 isEqual:v20];

    v19 = v26;
    if (v21)
    {
      v22 = self;
    }

    else
    {
      v22 = [MechanismKofN mechanismWithK:[(MechanismBaseComposite *)self k] ofSubmechanisms:v6 serial:self->_serial request:v5];
    }

    v18 = v22;
    if (!v26)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v18 = 0;
  v19 = v26;
  if (v26)
  {
LABEL_21:
    if (v18)
    {
      v23 = 0;
    }

    else
    {
      v23 = v10;
    }

    *v19 = v23;
  }

LABEL_25:

  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)availabilityEventsForPurpose:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(MechanismBaseComposite *)self submechanisms];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) availabilityEventsForPurpose:a3];
        [v5 addEntriesFromDictionary:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)findMechanismWithEventIdentifier:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(MechanismBaseComposite *)self submechanisms];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) findMechanismWithEventIdentifier:a3];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)mechanismTreeDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(MechanismBaseComposite *)self submechanisms];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) mechanismTreeDescription];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([(MechanismBaseComposite *)self isAND])
  {
    v10 = @"&";
  }

  else
  {
    v10 = @"|";
  }

  v11 = [v3 componentsJoinedByString:v10];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)requiresUiWithEventProcessing:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MechanismBaseComposite *)self submechanisms];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresUiWithEventProcessing:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)requiresRemoteViewControllerUiWithEventProcessing:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MechanismBaseComposite *)self submechanisms];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresRemoteViewControllerUiWithEventProcessing:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)requiresHostingControllerUiWithEventProcessing:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MechanismBaseComposite *)self submechanisms];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) requiresHostingControllerUiWithEventProcessing:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)cachedExternalizationDelegate
{
  v2 = [(MechanismBaseComposite *)self submechanisms];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 cachedExternalizationDelegate];

  return v4;
}

- (id)additionalControllerInternalInfoForPolicy:(int64_t)a3
{
  v4 = self;
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [(MechanismBaseComposite *)self submechanisms];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v6)
  {
    v10 = MEMORY[0x277CBEC10];
    goto LABEL_11;
  }

  v7 = v6;
  v21 = v4;
  v8 = 0;
  v9 = *v24;
  v10 = MEMORY[0x277CBEC10];
  do
  {
    v11 = 0;
    v12 = v10;
    do
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v13 = [*(*(&v23 + 1) + 8 * v11) additionalControllerInternalInfoForPolicy:a3];
      v10 = [v12 dictionaryByMergingWith:v13];

      v14 = [v13 objectForKeyedSubscript:@"AuthType"];
      v8 |= [v14 intValue];

      ++v11;
      v12 = v10;
    }

    while (v7 != v11);
    v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v7);

  if (v8)
  {
    v27 = @"AuthType";
    v4 = v21;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{v8 | ((-[MechanismBaseComposite k](v21, "k") > 1) << 30)}];
    v28 = v5;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v16 = [v10 dictionaryByMergingWith:v15];

    v10 = v16;
LABEL_11:

    goto LABEL_13;
  }

  v4 = v21;
LABEL_13:
  if ([v10 count])
  {
    v17 = v10;
  }

  else
  {
    v22.receiver = v4;
    v22.super_class = MechanismKofN;
    v17 = [(MechanismBase *)&v22 additionalControllerInternalInfoForPolicy:a3];
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setParent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MechanismKofN;
  [(MechanismBase *)&v15 setParent:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(MechanismBaseComposite *)self submechanisms];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setParent:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end