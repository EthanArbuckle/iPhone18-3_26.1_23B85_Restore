@interface INRequestPaymentIntent(ACSCardRequesting)
- (void)requestCard:()ACSCardRequesting reply:;
@end

@implementation INRequestPaymentIntent(ACSCardRequesting)

- (void)requestCard:()ACSCardRequesting reply:
{
  v73[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = [a3 content];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v7 underlyingInteraction], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = [v8 intentResponse];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 intentResponse];
      }

      else
      {
        v11 = 0;
      }

      v15 = [v11 paymentRecord];
      v16 = [MEMORY[0x277CBEB18] array];
      v65 = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
      v17 = [v9 intent];
      v18 = [v17 acs_needsTitleCardSection];

      if (v18)
      {
        v19 = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
        [v19 setIsCentered:1];
        [v19 setSeparatorStyle:5];
        v20 = [v9 intentHandlingStatus];
        if (v20 <= 6)
        {
          v21 = off_278CCFB58[v20];
          v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = [v22 localizedStringForKey:v21 value:&stru_2853137F0 table:0];
          [v19 setTitle:v23];
        }

        [v16 addObject:v19];
      }

      v66 = v11;
      v24 = [MEMORY[0x277D4C4C0] acs_wildCardSection];
      [v16 addObject:v24];

      v25 = [a1 payer];
      v26 = 0x277CBE000;
      v67 = v16;
      if (v25)
      {
        v27 = v25;
        v28 = [a1 currencyAmount];

        if (v28)
        {
          v29 = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
          v30 = [a1 payer];
          v31 = [v30 image];

          if (v31)
          {
            v32 = objc_alloc(MEMORY[0x277CD4608]);
            v33 = [a1 payer];
            v34 = [v33 image];
            v35 = [v32 initWithIntentsImage:v34];

            [v29 setTitleImage:v35];
          }

          [v29 setIsCentered:1];
          v36 = [a1 payer];
          v37 = [v36 displayName];
          [v29 setTitle:v37];

          v38 = [a1 currencyAmount];
          v63 = [v38 acs_formattedAmountString];

          [v29 setSubtitle:v63];
          [v29 setSeparatorStyle:5];
          v39 = NSStringFromSelector(sel_payer);
          v71[0] = v39;
          v40 = NSStringFromSelector(sel_displayName);
          v71[1] = v40;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
          [ACSCardServiceHelper addParameterToSection:v29 selectorStrings:v41 class:objc_opt_class()];

          v26 = 0x277CBE000uLL;
          v42 = NSStringFromSelector(sel_currencyAmount);
          v70 = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
          [ACSCardServiceHelper addParameterToSection:v29 selectorStrings:v43 class:objc_opt_class()];

          [v67 addObject:v29];
        }
      }

      v44 = [a1 note];
      v45 = [v44 length];

      if (v45)
      {
        v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v47 = [v46 localizedStringForKey:@"NOTE" value:&stru_2853137F0 table:0];
        v48 = [a1 note];
        v49 = [ACSCardServiceHelper rowCardSectionFromLeadingText:v47 trailingText:v48];

        v26 = 0x277CBE000uLL;
        v50 = NSStringFromSelector(sel_note);
        v69 = v50;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
        [ACSCardServiceHelper addParameterToSection:v49 selectorStrings:v51 class:objc_opt_class()];

        [v67 addObject:v49];
      }

      v52 = [v15 feeAmount];

      v53 = v67;
      if (v52)
      {
        v54 = [v15 feeAmount];
        v64 = [v54 acs_formattedAmountString];

        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v56 = [v55 localizedStringForKey:@"FEE" value:&stru_2853137F0 table:0];
        v57 = [ACSCardServiceHelper rowCardSectionFromLeadingText:v56 trailingText:v64];

        v58 = NSStringFromSelector(sel_paymentRecord);
        v68[0] = v58;
        v59 = NSStringFromSelector(sel_feeAmount);
        v68[1] = v59;
        v60 = [*(v26 + 2656) arrayWithObjects:v68 count:2];
        [ACSCardServiceHelper addParameterToSection:v57 selectorStrings:v60 class:objc_opt_class()];

        v26 = 0x277CBE000uLL;
        v53 = v67;
        [v67 addObject:v57];
      }

      v61 = [*(v26 + 2656) arrayWithArray:v53];
      [v65 setCardSections:v61];

      [v65 acs_setInteraction:v9];
      v6[2](v6, v65, 0);

      v14 = v66;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CF93E8];
      v72 = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", v7];
      v73[0] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      v15 = [v12 errorWithDomain:v13 code:400 userInfo:v14];
      (v6)[2](v6, 0, v15);
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

@end