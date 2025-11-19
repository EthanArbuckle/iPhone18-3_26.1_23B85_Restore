@interface INPaymentsDomainLoadIntentResponseDescriptionIfNeeded
@end

@implementation INPaymentsDomainLoadIntentResponseDescriptionIfNeeded

void ___INPaymentsDomainLoadIntentResponseDescriptionIfNeeded_block_invoke()
{
  v79[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentResponseDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v67 = [[INIntentSlotDescription alloc] initWithName:@"fromAccount" tag:2 facadePropertyName:@"fromAccount" dataPropertyName:@"fromAccount" isExtended:0 isPrivate:0 valueType:61 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[0] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"billDetails" tag:4 facadePropertyName:@"billDetails" dataPropertyName:@"billDetails" isExtended:0 isPrivate:0 valueType:60 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[1] = v66;
  v65 = [[INIntentSlotDescription alloc] initWithName:@"transactionAmount" tag:5 facadePropertyName:@"transactionAmount" dataPropertyName:@"transactionAmount" isExtended:0 isPrivate:0 valueType:62 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[2] = v65;
  v64 = [[INIntentSlotDescription alloc] initWithName:@"transactionScheduledDate" tag:6 facadePropertyName:@"transactionScheduledDate" dataPropertyName:@"transactionScheduledDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[3] = v64;
  v63 = [[INIntentSlotDescription alloc] initWithName:@"transactionNote" tag:7 facadePropertyName:@"transactionNote" dataPropertyName:@"transactionNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v78[4] = v63;
  v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:5];
  v61 = _INIntentSchemaBuildIntentSlotDescriptionMap(v62);
  v60 = [(INIntentResponseDescription *)v0 initWithName:@"PayBillIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.payments.PayBillIntentResponse" isPrivate:0 slotsByName:v61];
  v79[0] = v60;
  v3 = [INIntentResponseDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v59 = [[INIntentSlotDescription alloc] initWithName:@"paymentRecord" tag:1 facadePropertyName:@"paymentRecord" dataPropertyName:@"paymentRecord" isExtended:0 isPrivate:0 valueType:56 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v77 = v59;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
  v57 = _INIntentSchemaBuildIntentSlotDescriptionMap(v58);
  v56 = [(INIntentResponseDescription *)v3 initWithName:@"RequestPaymentIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.payments.RequestPaymentIntentResponse" isPrivate:0 slotsByName:v57];
  v79[1] = v56;
  v6 = [INIntentResponseDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v55 = [[INIntentSlotDescription alloc] initWithName:@"accounts" tag:2 facadePropertyName:@"accounts" dataPropertyName:@"accounts" isExtended:0 isPrivate:0 valueType:61 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v76 = v55;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
  v53 = _INIntentSchemaBuildIntentSlotDescriptionMap(v54);
  v52 = [(INIntentResponseDescription *)v6 initWithName:@"SearchForAccountsIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.payments.SearchForAccountsIntentResponse" isPrivate:0 slotsByName:v53];
  v79[2] = v52;
  v9 = [INIntentResponseDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v51 = [[INIntentSlotDescription alloc] initWithName:@"bills" tag:2 facadePropertyName:@"bills" dataPropertyName:@"bills" isExtended:0 isPrivate:0 valueType:60 valueStyle:3 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v75 = v51;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  v49 = _INIntentSchemaBuildIntentSlotDescriptionMap(v50);
  v48 = [(INIntentResponseDescription *)v9 initWithName:@"SearchForBillsIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.payments.SearchForBillsIntentResponse" isPrivate:0 slotsByName:v49];
  v79[3] = v48;
  v12 = [INIntentResponseDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v47 = [[INIntentSlotDescription alloc] initWithName:@"paymentRecord" tag:1 facadePropertyName:@"paymentRecord" dataPropertyName:@"paymentRecord" isExtended:0 isPrivate:0 valueType:56 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v74 = v47;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  v45 = _INIntentSchemaBuildIntentSlotDescriptionMap(v46);
  v44 = [(INIntentResponseDescription *)v12 initWithName:@"SendPaymentIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.payments.SendPaymentIntentResponse" isPrivate:0 slotsByName:v45];
  v79[4] = v44;
  v43 = [INIntentResponseDescription alloc];
  v42 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [[INIntentSlotDescription alloc] initWithName:@"fromAccount" tag:2 facadePropertyName:@"fromAccount" dataPropertyName:@"fromAccount" isExtended:0 isPrivate:0 valueType:61 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[0] = v16;
  v17 = [[INIntentSlotDescription alloc] initWithName:@"toAccount" tag:4 facadePropertyName:@"toAccount" dataPropertyName:@"toAccount" isExtended:0 isPrivate:0 valueType:61 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[1] = v17;
  v18 = [[INIntentSlotDescription alloc] initWithName:@"transactionAmount" tag:5 facadePropertyName:@"transactionAmount" dataPropertyName:@"transactionAmount" isExtended:0 isPrivate:0 valueType:62 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[2] = v18;
  v19 = [[INIntentSlotDescription alloc] initWithName:@"transactionScheduledDate" tag:6 facadePropertyName:@"transactionScheduledDate" dataPropertyName:@"transactionScheduledDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[3] = v19;
  v20 = [[INIntentSlotDescription alloc] initWithName:@"transactionNote" tag:7 facadePropertyName:@"transactionNote" dataPropertyName:@"transactionNote" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[4] = v20;
  v21 = [[INIntentSlotDescription alloc] initWithName:@"transferFee" tag:8 facadePropertyName:@"transferFee" dataPropertyName:@"transferFee" isExtended:0 isPrivate:0 valueType:53 valueStyle:1 defaultValueSelectorStrings:0 provideOptionsSelectorStrings:0 resolutionResultClass:0 resolveSelectors:0];
  v73[5] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:6];
  v23 = _INIntentSchemaBuildIntentSlotDescriptionMap(v22);
  v24 = [(INIntentResponseDescription *)v43 initWithName:@"TransferMoneyIntentResponse" facadeClass:v42 dataClass:v15 type:@"sirikit.intent.payments.TransferMoneyIntentResponse" isPrivate:0 slotsByName:v23];
  v79[5] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:6];

  v26 = [v25 count];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v26];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v26];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v29 = v25;
  v30 = [v29 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v69;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v69 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v68 + 1) + 8 * i);
        v35 = [v34 name];
        [v27 setObject:v34 forKey:v35];

        v36 = [v34 type];
        [v28 setObject:v34 forKey:v36];
      }

      v31 = [v29 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v31);
  }

  v37 = [v27 copy];
  v38 = sPaymentsDomain_intentResponseDescsByName;
  sPaymentsDomain_intentResponseDescsByName = v37;

  v39 = [v28 copy];
  v40 = sPaymentsDomain_intentResponseDescsByType;
  sPaymentsDomain_intentResponseDescsByType = v39;

  v41 = *MEMORY[0x1E69E9840];
}

@end