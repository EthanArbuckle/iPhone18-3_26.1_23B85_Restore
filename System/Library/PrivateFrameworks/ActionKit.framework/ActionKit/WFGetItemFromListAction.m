@interface WFGetItemFromListAction
- (void)runWithInput:(id)a3 error:(id *)a4;
@end

@implementation WFGetItemFromListAction

- (void)runWithInput:(id)a3 error:(id *)a4
{
  v68[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 getListRepresentation];
  v7 = [v6 numberOfItems];
  if (v7)
  {
    v8 = v7;
    v9 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemSpecifier" ofClass:objc_opt_class()];
    if ([v9 isEqualToString:@"First Item"])
    {
      v10 = [(WFGetItemFromListAction *)self output];
      v11 = [v6 items];
      v12 = [v11 firstObject];
LABEL_8:
      v13 = v12;
      [v10 addItem:v12];

      goto LABEL_9;
    }

    if ([v9 isEqualToString:@"Last Item"])
    {
      v10 = [(WFGetItemFromListAction *)self output];
      v11 = [v6 items];
      v12 = [v11 lastObject];
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"Random Item"])
    {
      v10 = [(WFGetItemFromListAction *)self output];
      v11 = [v6 items];
      v12 = [v11 objectAtIndex:arc4random_uniform(v8)];
      goto LABEL_8;
    }

    if ([v9 isEqualToString:@"Item At Index"])
    {
      v15 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemIndex" ofClass:objc_opt_class()];
      v16 = [v15 integerValue];
      v17 = v16;
      if (v15 && v16 > 0)
      {
        if (v16 <= v8)
        {
          v32 = [(WFGetItemFromListAction *)self output];
          v33 = [v6 items];
          v34 = [v33 objectAtIndex:v17 - 1];
          [v32 addItem:v34];
        }

        else
        {
          v18 = MEMORY[0x277CCA9B8];
          v19 = *MEMORY[0x277CCA5B8];
          v65 = *MEMORY[0x277CCA450];
          v20 = MEMORY[0x277CCACA8];
          v21 = WFLocalizedString(@"The index you specified was outside of the possible range (you asked for item %1$d, and the list has only %2$d).");
          v22 = [v20 localizedStringWithFormat:v21, v17, v8];
          v66 = v22;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          *a4 = [v18 errorWithDomain:v19 code:33 userInfo:v23];
        }
      }

      else
      {
        v26 = MEMORY[0x277CCA9B8];
        v27 = *MEMORY[0x277CCA5B8];
        v67 = *MEMORY[0x277CCA450];
        v28 = MEMORY[0x277CCACA8];
        v29 = WFLocalizedString(@"You asked for item %d, but the first item is at index 1.");
        v30 = [v28 localizedStringWithFormat:v29, v17];
        v68[0] = v30;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
        *a4 = [v26 errorWithDomain:v27 code:33 userInfo:v31];
      }

      goto LABEL_9;
    }

    if (![v9 isEqualToString:@"Items in Range"])
    {
LABEL_9:

      goto LABEL_10;
    }

    v24 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemRangeStart" ofClass:objc_opt_class()];
    v58 = v24;
    if (v24)
    {
      v25 = [v24 integerValue];
    }

    else
    {
      v25 = 1;
    }

    v35 = [(WFGetItemFromListAction *)self parameterValueForKey:@"WFItemRangeEnd" ofClass:objc_opt_class()];
    v36 = v35;
    if (v35)
    {
      v37 = [v35 integerValue];
    }

    else
    {
      v37 = [v6 numberOfItems];
    }

    v38 = v37;
    if (v25 <= 0)
    {
      v56 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA5B8];
      v63 = *MEMORY[0x277CCA450];
      v46 = MEMORY[0x277CCACA8];
      v41 = WFLocalizedString(@"The range you specified was outside of the possible range (you asked for items %1$d through %2$d, but the first item is at index 1).");
      v42 = [v46 stringWithFormat:v41, v25, v38];
      v64 = v42;
      v43 = MEMORY[0x277CBEAC0];
      v44 = &v64;
      v45 = &v63;
    }

    else
    {
      if (v37 >= v25)
      {
        if (v37 <= v8)
        {
          v51 = v25 - 1;
          do
          {
            v52 = [(WFGetItemFromListAction *)self output];
            v53 = [v6 items];
            v54 = [v53 objectAtIndex:v51];
            [v52 addItem:v54];

            ++v51;
          }

          while (v38 != v51);
          goto LABEL_32;
        }

        v57 = MEMORY[0x277CCA9B8];
        v55 = *MEMORY[0x277CCA5B8];
        v59 = *MEMORY[0x277CCA450];
        v50 = MEMORY[0x277CCACA8];
        v41 = WFLocalizedString(@"The range you specified was outside of the possible range (you asked for items %1$d through %2$d, and the list has only %3$d).");
        v42 = [v50 stringWithFormat:v41, v25, v38, v8];
        v60 = v42;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v49 = v55;
        v48 = v57;
LABEL_31:
        *a4 = [v48 errorWithDomain:v49 code:33 userInfo:v47];

LABEL_32:
        goto LABEL_9;
      }

      v56 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA5B8];
      v61 = *MEMORY[0x277CCA450];
      v40 = MEMORY[0x277CCACA8];
      v41 = WFLocalizedString(@"The range you specified was invalid (you asked for items %1$d through %2$d).");
      v42 = [v40 stringWithFormat:v41, v25, v38];
      v62 = v42;
      v43 = MEMORY[0x277CBEAC0];
      v44 = &v62;
      v45 = &v61;
    }

    v47 = [v43 dictionaryWithObjects:v44 forKeys:v45 count:1];
    v48 = v56;
    v49 = v39;
    goto LABEL_31;
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

@end