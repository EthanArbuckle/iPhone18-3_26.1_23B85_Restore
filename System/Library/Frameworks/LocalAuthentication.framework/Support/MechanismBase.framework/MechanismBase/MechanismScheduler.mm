@interface MechanismScheduler
- (int64_t)scheduleMechanismUIWithState:(id)a3;
- (int64_t)scheduleMechanismUIWithState:(id)a3 nonUIMechanism:(id)a4;
@end

@implementation MechanismScheduler

- (int64_t)scheduleMechanismUIWithState:(id)a3
{
  v4 = a3;
  v5 = [v4 nonUiMechanism];
  v6 = [v5 findMechanismWithEventIdentifier:12];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v5 mechanismPruningMechanismsWithEventIdentifier:12];

      v5 = v7;
    }
  }

  v8 = [v5 findMechanismWithEventIdentifier:13];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v5 mechanismPruningMechanismsWithEventIdentifier:13];

      v5 = v9;
    }
  }

  v10 = [(MechanismScheduler *)self scheduleMechanismUIWithState:v4 nonUIMechanism:v5];
  if (v6)
  {
    v11 = [v4 nonUiMechanism];

    if (v11 != v6)
    {
      v12 = [v4 continueMechanisms];
      [v12 addObject:v6];
    }
  }

  return v10;
}

- (int64_t)scheduleMechanismUIWithState:(id)a3 nonUIMechanism:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 eventProcessing];
  v8 = [v6 remoteViewControllerForEventProcessing:v7];

  v9 = [v5 eventProcessing];
  v10 = [v6 backgroundMechanismForEventProcessing:v9];
  [v5 setBackgroundMechanism:v10];

  v11 = [v6 additionalControllerInternalInfoForPolicy:{objc_msgSend(v5, "policy")}];
  [v5 setAdditionalControllerInternalInfo:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v6;
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
        if ([v5 passphraseShouldBeFirstMechanism])
        {
          v18 = [v5 eventProcessing];
          v68 = [v13 remoteViewControllerForEventProcessing:v18];

          v19 = [v5 eventProcessing];
          [v13 backgroundMechanismForEventProcessing:v19];
          v20 = v14;
          v21 = v13;
          v22 = v15;
          v23 = v17;
          v25 = v24 = v16;
          [v5 setBackgroundMechanism:v25];

          v16 = v24;
          v17 = v23;
          v15 = v22;
          v13 = v21;
          v14 = v20;

          v26 = [v13 additionalControllerInternalInfoForPolicy:{objc_msgSend(v5, "policy")}];
          [v5 setAdditionalControllerInternalInfo:v26];

          v27 = [v12 submechanisms];
          v72[0] = MEMORY[0x277D85DD0];
          v72[1] = 3221225472;
          v72[2] = __66__MechanismScheduler_scheduleMechanismUIWithState_nonUIMechanism___block_invoke;
          v72[3] = &unk_278A628F8;
          v73 = v13;
          v74 = v5;
          [v27 enumerateObjectsUsingBlock:v72];

          v8 = v68;
LABEL_41:

          goto LABEL_42;
        }

        if (v14)
        {
          v41 = [v5 eventProcessing];
          v69 = [v14 remoteViewControllerForEventProcessing:v41];

          v42 = v5;
          v43 = v14;
        }

        else if (v16)
        {
          v54 = [v5 eventProcessing];
          v69 = [v16 remoteViewControllerForEventProcessing:v54];

          v42 = v5;
          v43 = v16;
        }

        else
        {
          v63 = [v5 eventProcessing];
          if (!v71)
          {
            v69 = [v15 remoteViewControllerForEventProcessing:v63];

            v65 = [v5 eventProcessing];
            v66 = [v15 backgroundMechanismForEventProcessing:v65];
            [v5 setBackgroundMechanism:v66];

            v16 = 0;
            v14 = 0;

            goto LABEL_38;
          }

          v69 = [v71 remoteViewControllerForEventProcessing:v63];

          v42 = v5;
          v43 = v71;
        }

        [v42 setBackgroundMechanism:v43];
        [v5 setFallbackMechanism:v15];
LABEL_38:
        v60 = [v5 continueMechanisms];
        v61 = v60;
        v62 = v13;
        goto LABEL_39;
      }

      v67 = v16;
      if (v14)
      {
        v32 = [v5 passcodeShouldBeFirstMechanism];
        v33 = [v5 eventProcessing];
        if (v32)
        {
          v34 = [v15 remoteViewControllerForEventProcessing:v33];

          v35 = [v5 eventProcessing];
          v36 = [v15 backgroundMechanismForEventProcessing:v35];
          [v5 setBackgroundMechanism:v36];

          v37 = [v5 continueMechanisms];
          v38 = v37;
          v39 = v14;
LABEL_12:
          [v37 addObject:v39];

          v8 = v34;
          v16 = v67;
          goto LABEL_41;
        }

        v69 = [v14 remoteViewControllerForEventProcessing:v33];

        v51 = v5;
        v52 = v14;
      }

      else
      {
        if (v16)
        {
          v44 = [v5 passcodeShouldBeFirstMechanism];
          v45 = [v5 eventProcessing];
          if (v44)
          {
            v46 = [v15 remoteViewControllerForEventProcessing:v45];

            v47 = [v5 eventProcessing];
            v48 = [v15 backgroundMechanismForEventProcessing:v47];
            [v5 setBackgroundMechanism:v48];

            v49 = [v5 continueMechanisms];
            v16 = v67;
            [v49 addObject:v67];

            v8 = v46;
            goto LABEL_41;
          }

          v16 = v67;
          v69 = [v67 remoteViewControllerForEventProcessing:v45];

          [v5 setBackgroundMechanism:v67];
          if (!v15)
          {
LABEL_40:
            v8 = v69;
            goto LABEL_41;
          }

          v60 = [v5 continueMechanisms];
          v61 = v60;
          v62 = v15;
LABEL_39:
          [v60 addObject:v62];

          goto LABEL_40;
        }

        if (!v71)
        {
          goto LABEL_41;
        }

        v55 = [v5 passcodeShouldBeFirstMechanism];
        v56 = [v5 eventProcessing];
        if (v55)
        {
          v34 = [v15 remoteViewControllerForEventProcessing:v56];

          v57 = [v5 eventProcessing];
          v58 = [v15 backgroundMechanismForEventProcessing:v57];
          [v5 setBackgroundMechanism:v58];

          v37 = [v5 continueMechanisms];
          v38 = v37;
          v39 = v71;
          goto LABEL_12;
        }

        v69 = [v71 remoteViewControllerForEventProcessing:v56];

        v51 = v5;
        v52 = v71;
      }

      [v51 setBackgroundMechanism:v52];
      if (v15)
      {
        v53 = [v5 continueMechanisms];
        [v53 addObject:v15];
      }

      v16 = v67;
      goto LABEL_40;
    }

    if (v14)
    {
      v28 = [v5 eventProcessing];
      v29 = [v14 remoteViewControllerForEventProcessing:v28];

      v8 = v29;
      v30 = v5;
      v31 = v14;
    }

    else
    {
      if (v17)
      {
        [v5 setBackgroundMechanism:v17];
        v40 = [v5 uiMechanism];
        [v17 setParent:v40];

        v8 = 0;
        goto LABEL_15;
      }

      v50 = [v5 eventProcessing];
      if (v71)
      {
        v70 = [v71 remoteViewControllerForEventProcessing:v50];

        v8 = v70;
        v30 = v5;
        v31 = v71;
      }

      else
      {
        v59 = [v16 remoteViewControllerForEventProcessing:v50];

        v8 = v59;
        v30 = v5;
        v31 = v16;
      }
    }

    [v30 setBackgroundMechanism:v31];
LABEL_15:
    [v5 setFallbackMechanism:v15];
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