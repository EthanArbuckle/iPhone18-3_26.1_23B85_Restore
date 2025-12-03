@interface MechanismScheduler
- (int64_t)scheduleMechanismUIWithState:(id)state;
- (int64_t)scheduleMechanismUIWithState:(id)state nonUIMechanism:(id)mechanism;
@end

@implementation MechanismScheduler

- (int64_t)scheduleMechanismUIWithState:(id)state
{
  stateCopy = state;
  nonUiMechanism = [stateCopy nonUiMechanism];
  v6 = [nonUiMechanism findMechanismWithEventIdentifier:12];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [nonUiMechanism mechanismPruningMechanismsWithEventIdentifier:12];

      nonUiMechanism = v7;
    }
  }

  v8 = [nonUiMechanism findMechanismWithEventIdentifier:13];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [nonUiMechanism mechanismPruningMechanismsWithEventIdentifier:13];

      nonUiMechanism = v9;
    }
  }

  v10 = [(MechanismScheduler *)self scheduleMechanismUIWithState:stateCopy nonUIMechanism:nonUiMechanism];
  if (v6)
  {
    nonUiMechanism2 = [stateCopy nonUiMechanism];

    if (nonUiMechanism2 != v6)
    {
      continueMechanisms = [stateCopy continueMechanisms];
      [continueMechanisms addObject:v6];
    }
  }

  return v10;
}

- (int64_t)scheduleMechanismUIWithState:(id)state nonUIMechanism:(id)mechanism
{
  stateCopy = state;
  mechanismCopy = mechanism;
  eventProcessing = [stateCopy eventProcessing];
  v8 = [mechanismCopy remoteViewControllerForEventProcessing:eventProcessing];

  eventProcessing2 = [stateCopy eventProcessing];
  v10 = [mechanismCopy backgroundMechanismForEventProcessing:eventProcessing2];
  [stateCopy setBackgroundMechanism:v10];

  v11 = [mechanismCopy additionalControllerInternalInfoForPolicy:{objc_msgSend(stateCopy, "policy")}];
  [stateCopy setAdditionalControllerInternalInfo:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = mechanismCopy;
    v13 = [v12 findMechanismWithEventIdentifier:3];
    v14 = [v12 findMechanismWithEventIdentifier:1];
    v15 = [v12 findMechanismWithEventIdentifier:2];
    v16 = [v12 findMechanismWithEventIdentifier:7];
    v17 = [v12 findMechanismWithEventIdentifier:5];
    v71 = [v12 findMechanismWithEventIdentifier:10];
    if ([v12 isAND])
    {
      if (v13)
      {
        if ([stateCopy passphraseShouldBeFirstMechanism])
        {
          eventProcessing3 = [stateCopy eventProcessing];
          v68 = [v13 remoteViewControllerForEventProcessing:eventProcessing3];

          eventProcessing4 = [stateCopy eventProcessing];
          [v13 backgroundMechanismForEventProcessing:eventProcessing4];
          v20 = v14;
          v21 = v13;
          v22 = v15;
          v23 = v17;
          v25 = v24 = v16;
          [stateCopy setBackgroundMechanism:v25];

          v16 = v24;
          v17 = v23;
          v15 = v22;
          v13 = v21;
          v14 = v20;

          v26 = [v13 additionalControllerInternalInfoForPolicy:{objc_msgSend(stateCopy, "policy")}];
          [stateCopy setAdditionalControllerInternalInfo:v26];

          submechanisms = [v12 submechanisms];
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __66__MechanismScheduler_scheduleMechanismUIWithState_nonUIMechanism___block_invoke;
          v72[3] = &unk_278A628F8;
          v73 = v13;
          v74 = stateCopy;
          [submechanisms enumerateObjectsUsingBlock:v72];

          v8 = v68;
LABEL_41:

          goto LABEL_42;
        }

        if (v14)
        {
          eventProcessing5 = [stateCopy eventProcessing];
          v69 = [v14 remoteViewControllerForEventProcessing:eventProcessing5];

          v42 = stateCopy;
          v43 = v14;
        }

        else if (v16)
        {
          eventProcessing6 = [stateCopy eventProcessing];
          v69 = [v16 remoteViewControllerForEventProcessing:eventProcessing6];

          v42 = stateCopy;
          v43 = v16;
        }

        else
        {
          eventProcessing7 = [stateCopy eventProcessing];
          if (!v71)
          {
            v69 = [v15 remoteViewControllerForEventProcessing:eventProcessing7];

            eventProcessing8 = [stateCopy eventProcessing];
            v66 = [v15 backgroundMechanismForEventProcessing:eventProcessing8];
            [stateCopy setBackgroundMechanism:v66];

            v16 = 0;
            v14 = 0;

            goto LABEL_38;
          }

          v69 = [v71 remoteViewControllerForEventProcessing:eventProcessing7];

          v42 = stateCopy;
          v43 = v71;
        }

        [v42 setBackgroundMechanism:v43];
        [stateCopy setFallbackMechanism:v15];
LABEL_38:
        continueMechanisms = [stateCopy continueMechanisms];
        v61 = continueMechanisms;
        v62 = v13;
        goto LABEL_39;
      }

      v67 = v16;
      if (v14)
      {
        passcodeShouldBeFirstMechanism = [stateCopy passcodeShouldBeFirstMechanism];
        eventProcessing9 = [stateCopy eventProcessing];
        if (passcodeShouldBeFirstMechanism)
        {
          v34 = [v15 remoteViewControllerForEventProcessing:eventProcessing9];

          eventProcessing10 = [stateCopy eventProcessing];
          v36 = [v15 backgroundMechanismForEventProcessing:eventProcessing10];
          [stateCopy setBackgroundMechanism:v36];

          continueMechanisms2 = [stateCopy continueMechanisms];
          v38 = continueMechanisms2;
          v39 = v14;
LABEL_12:
          [continueMechanisms2 addObject:v39];

          v8 = v34;
          v16 = v67;
          goto LABEL_41;
        }

        v69 = [v14 remoteViewControllerForEventProcessing:eventProcessing9];

        v51 = stateCopy;
        v52 = v14;
      }

      else
      {
        if (v16)
        {
          passcodeShouldBeFirstMechanism2 = [stateCopy passcodeShouldBeFirstMechanism];
          eventProcessing11 = [stateCopy eventProcessing];
          if (passcodeShouldBeFirstMechanism2)
          {
            v46 = [v15 remoteViewControllerForEventProcessing:eventProcessing11];

            eventProcessing12 = [stateCopy eventProcessing];
            v48 = [v15 backgroundMechanismForEventProcessing:eventProcessing12];
            [stateCopy setBackgroundMechanism:v48];

            continueMechanisms3 = [stateCopy continueMechanisms];
            v16 = v67;
            [continueMechanisms3 addObject:v67];

            v8 = v46;
            goto LABEL_41;
          }

          v16 = v67;
          v69 = [v67 remoteViewControllerForEventProcessing:eventProcessing11];

          [stateCopy setBackgroundMechanism:v67];
          if (!v15)
          {
LABEL_40:
            v8 = v69;
            goto LABEL_41;
          }

          continueMechanisms = [stateCopy continueMechanisms];
          v61 = continueMechanisms;
          v62 = v15;
LABEL_39:
          [continueMechanisms addObject:v62];

          goto LABEL_40;
        }

        if (!v71)
        {
          goto LABEL_41;
        }

        passcodeShouldBeFirstMechanism3 = [stateCopy passcodeShouldBeFirstMechanism];
        eventProcessing13 = [stateCopy eventProcessing];
        if (passcodeShouldBeFirstMechanism3)
        {
          v34 = [v15 remoteViewControllerForEventProcessing:eventProcessing13];

          eventProcessing14 = [stateCopy eventProcessing];
          v58 = [v15 backgroundMechanismForEventProcessing:eventProcessing14];
          [stateCopy setBackgroundMechanism:v58];

          continueMechanisms2 = [stateCopy continueMechanisms];
          v38 = continueMechanisms2;
          v39 = v71;
          goto LABEL_12;
        }

        v69 = [v71 remoteViewControllerForEventProcessing:eventProcessing13];

        v51 = stateCopy;
        v52 = v71;
      }

      [v51 setBackgroundMechanism:v52];
      if (v15)
      {
        continueMechanisms4 = [stateCopy continueMechanisms];
        [continueMechanisms4 addObject:v15];
      }

      v16 = v67;
      goto LABEL_40;
    }

    if (v14)
    {
      eventProcessing15 = [stateCopy eventProcessing];
      v29 = [v14 remoteViewControllerForEventProcessing:eventProcessing15];

      v8 = v29;
      v30 = stateCopy;
      v31 = v14;
    }

    else
    {
      if (v17)
      {
        [stateCopy setBackgroundMechanism:v17];
        uiMechanism = [stateCopy uiMechanism];
        [v17 setParent:uiMechanism];

        v8 = 0;
        goto LABEL_15;
      }

      eventProcessing16 = [stateCopy eventProcessing];
      if (v71)
      {
        v70 = [v71 remoteViewControllerForEventProcessing:eventProcessing16];

        v8 = v70;
        v30 = stateCopy;
        v31 = v71;
      }

      else
      {
        v59 = [v16 remoteViewControllerForEventProcessing:eventProcessing16];

        v8 = v59;
        v30 = stateCopy;
        v31 = v16;
      }
    }

    [v30 setBackgroundMechanism:v31];
LABEL_15:
    [stateCopy setFallbackMechanism:v15];
    goto LABEL_41;
  }

LABEL_42:

  return v8;
}

void __66__MechanismScheduler_scheduleMechanismUIWithState_nonUIMechanism___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (*(a1 + 32) != v6)
  {
    if (v6)
    {
      v8 = v6;
      v7 = [*(a1 + 40) continueMechanisms];
      [v7 addObject:v8];

      v6 = v8;
    }

    *a4 = 1;
  }
}

@end