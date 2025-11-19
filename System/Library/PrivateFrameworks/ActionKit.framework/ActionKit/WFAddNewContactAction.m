@interface WFAddNewContactAction
+ (id)userInterfaceXPCInterface;
+ (void)contactFromParameters:(id)a3 completionHandler:(id)a4;
- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5;
- (void)runAsynchronouslyWithInput:(id)a3;
- (void)runWithoutUI;
@end

@implementation WFAddNewContactAction

+ (id)userInterfaceXPCInterface
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___WFAddNewContactAction;
  v2 = objc_msgSendSuper2(&v10, sel_userInterfaceXPCInterface);
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v3 setWithObjects:{v4, v5, v6, v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_showWithContactParameters_completionHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (void)contactFromParameters:(id)a3 completionHandler:(id)a4
{
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v41 = a4;
  v6 = [v5 objectForKey:@"WFContactFirstName"];
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

  v9 = [v5 objectForKey:@"WFContactLastName"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v44 = v10;

  v11 = [v5 objectForKey:@"WFContactCompany"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v43 = v12;

  v13 = [v5 objectForKey:@"WFContactNotes"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v42 = v14;

  v15 = [v5 objectForKey:@"WFContactPhoneNumbers"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v40 = v17;
  v18 = [v17 contentCollection];
  v19 = [v5 objectForKey:@"WFContactEmails"];
  if (v19)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  v22 = [v21 contentCollection];
  v23 = [v5 objectForKey:@"WFContactPhoto"];
  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v8 && ![v8 wf_isEmpty] || v44 && !objc_msgSend(v44, "wf_isEmpty") || v43 && !objc_msgSend(v43, "wf_isEmpty"))
  {
    v29 = 0;
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v27 = WFLocalizedString(@"No first name, last name, or company was provided. Please provide at least one for this contact.");
    v55[0] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v29 = [v26 errorWithDomain:*MEMORY[0x277D7CB30] code:5 userInfo:v28];
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x2050000000;
  v30 = getCNMutableContactClass_softClass;
  v53 = getCNMutableContactClass_softClass;
  if (!getCNMutableContactClass_softClass)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __getCNMutableContactClass_block_invoke;
    v49[3] = &unk_278C222B8;
    v49[4] = &v50;
    __getCNMutableContactClass_block_invoke(v49);
    v30 = v51[3];
  }

  v31 = v30;
  _Block_object_dispose(&v50, 8);
  v32 = objc_alloc_init(v30);
  [v32 setGivenName:v8];
  [v32 setFamilyName:v44];
  [v32 setOrganizationName:v43];
  [v32 setNote:v42];
  if (v18)
  {
    v33 = [v18 items];
    v34 = [v33 if_compactMap:&__block_literal_global_7201];
    [v32 setPhoneNumbers:v34];
  }

  if (v22)
  {
    v35 = [v22 items];
    v36 = [v35 if_compactMap:&__block_literal_global_211];
    [v32 setEmailAddresses:v36];
  }

  if (v25)
  {
    v37 = [v25 items];
    v38 = [v37 firstObject];

    if (v38)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __65__WFAddNewContactAction_contactFromParameters_completionHandler___block_invoke_3;
      v45[3] = &unk_278C19FA8;
      v48 = v41;
      v46 = v32;
      v47 = v29;
      [v38 getObjectRepresentation:v45 forClass:objc_opt_class()];
    }

    else
    {
      (*(v41 + 2))(v41, v32, v29);
    }
  }

  else
  {
    (*(v41 + 2))(v41, v32, v29);
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __65__WFAddNewContactAction_contactFromParameters_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v14 PNGRepresentation];
    [*(a1 + 32) setImageData:v9];
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 40);
    v13 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }
}

id __65__WFAddNewContactAction_contactFromParameters_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc(getCNLabeledValueClass());
    v4 = [v2 emailAddress];
    v5 = [v4 label];
    v6 = [v2 emailAddress];
    v7 = [v6 address];
    v8 = [v3 initWithLabel:v5 value:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __65__WFAddNewContactAction_contactFromParameters_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = objc_alloc(getCNLabeledValueClass());
    v4 = [v2 phoneNumber];
    v5 = [v4 label];
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v6 = getCNPhoneNumberClass_softClass;
    v17 = getCNPhoneNumberClass_softClass;
    if (!getCNPhoneNumberClass_softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __getCNPhoneNumberClass_block_invoke;
      v13[3] = &unk_278C222B8;
      v13[4] = &v14;
      __getCNPhoneNumberClass_block_invoke(v13);
      v6 = v15[3];
    }

    v7 = v6;
    _Block_object_dispose(&v14, 8);
    v8 = [v2 phoneNumber];
    v9 = [v8 string];
    v10 = [v6 phoneNumberWithStringValue:v9];
    v11 = [v3 initWithLabel:v5 value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)smartPromptWithContentDescription:(id)a3 contentDestination:(id)a4 workflowName:(id)a5
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a5;
  v8 = a3;
  v9 = WFLocalizedString(@"Allow “%1$@” to use %2$@ in a new contact?");
  v10 = [v6 localizedStringWithFormat:v9, v7, v8];

  return v10;
}

- (void)runWithoutUI
{
  v3 = objc_opt_class();
  v4 = [(WFAddNewContactAction *)self processedParameters];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__WFAddNewContactAction_runWithoutUI__block_invoke;
  v5[3] = &unk_278C19FD0;
  v5[4] = self;
  [v3 contactFromParameters:v4 completionHandler:v5];
}

void __37__WFAddNewContactAction_runWithoutUI__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (!v5 || a3)
  {
    [v6 finishRunningWithError:a3];
  }

  else
  {
    v7 = [v6 contactStore];
    v15 = 0;
    v8 = [v7 addContact:v5 error:&v15];
    v9 = v15;

    v10 = *(a1 + 32);
    if (v8)
    {
      v11 = [v10 contactStore];
      v12 = [v5 identifier];
      v13 = [v11 contactWithIdentifier:v12];

      if (v13)
      {
        v14 = [*(a1 + 32) output];
        [v14 addObject:v13];
      }

      [*(a1 + 32) finishRunningWithError:0];
    }

    else
    {
      [v10 finishRunningWithError:v9];
    }
  }
}

- (void)runAsynchronouslyWithInput:(id)a3
{
  v4 = [(WFAddNewContactAction *)self resourceManager];
  v5 = [v4 resourceObjectsOfClass:objc_opt_class()];
  v6 = [v5 anyObject];

  if ([v6 status] != 4)
  {
    v11 = [v6 availabilityError];
    goto LABEL_6;
  }

  v7 = [(WFAddNewContactAction *)self parameterValueForKey:@"ShowWhenRun" ofClass:objc_opt_class()];
  v8 = [v7 BOOLValue];

  v9 = [(WFAddNewContactAction *)self userInterface];
  v10 = [v9 isRunningWithSiriUI];

  if (v10 && v8)
  {
    v11 = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
LABEL_6:
    v12 = v11;
    [(WFAddNewContactAction *)self finishRunningWithError:v11];

    goto LABEL_7;
  }

  if (v8)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __52__WFAddNewContactAction_runAsynchronouslyWithInput___block_invoke;
    v13[3] = &unk_278C19F40;
    v13[4] = self;
    [(WFAddNewContactAction *)self requestInterfacePresentationWithCompletionHandler:v13];
  }

  else
  {
    [(WFAddNewContactAction *)self runWithoutUI];
  }

LABEL_7:
}

void __52__WFAddNewContactAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 processedParameters];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__WFAddNewContactAction_runAsynchronouslyWithInput___block_invoke_2;
    v8[3] = &unk_278C225B0;
    v8[4] = *(a1 + 32);
    [v5 showWithContactParameters:v7 completionHandler:v8];
  }

  else
  {
    [v6 finishRunningWithError:a3];
  }
}

void __52__WFAddNewContactAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (v5)
  {
    v7 = [v6 contactStore];
    v8 = [v7 contactWithIdentifier:v10];

    if (v8)
    {
      v9 = [*(a1 + 32) output];
      [v9 addObject:v8];
    }

    [*(a1 + 32) finishRunningWithError:0];
  }

  else
  {
    [v6 finishRunningWithError:a3];
  }
}

@end