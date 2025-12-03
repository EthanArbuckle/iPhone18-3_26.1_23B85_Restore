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
    content = [a3 content];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([content underlyingInteraction], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      intentResponse = [v8 intentResponse];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intentResponse2 = [v9 intentResponse];
      }

      else
      {
        intentResponse2 = 0;
      }

      paymentRecord = [intentResponse2 paymentRecord];
      array = [MEMORY[0x277CBEB18] array];
      acs_uniquelyIdentifiedCard = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
      intent = [v9 intent];
      acs_needsTitleCardSection = [intent acs_needsTitleCardSection];

      if (acs_needsTitleCardSection)
      {
        acs_uniquelyIdentifiedCardSection = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
        [acs_uniquelyIdentifiedCardSection setIsCentered:1];
        [acs_uniquelyIdentifiedCardSection setSeparatorStyle:5];
        intentHandlingStatus = [v9 intentHandlingStatus];
        if (intentHandlingStatus <= 6)
        {
          v21 = off_278CCFB58[intentHandlingStatus];
          v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v23 = [v22 localizedStringForKey:v21 value:&stru_2853137F0 table:0];
          [acs_uniquelyIdentifiedCardSection setTitle:v23];
        }

        [array addObject:acs_uniquelyIdentifiedCardSection];
      }

      v66 = intentResponse2;
      acs_wildCardSection = [MEMORY[0x277D4C4C0] acs_wildCardSection];
      [array addObject:acs_wildCardSection];

      payer = [self payer];
      v26 = 0x277CBE000;
      v67 = array;
      if (payer)
      {
        v27 = payer;
        currencyAmount = [self currencyAmount];

        if (currencyAmount)
        {
          acs_uniquelyIdentifiedCardSection2 = [MEMORY[0x277D4C5A0] acs_uniquelyIdentifiedCardSection];
          payer2 = [self payer];
          image = [payer2 image];

          if (image)
          {
            v32 = objc_alloc(MEMORY[0x277CD4608]);
            payer3 = [self payer];
            image2 = [payer3 image];
            v35 = [v32 initWithIntentsImage:image2];

            [acs_uniquelyIdentifiedCardSection2 setTitleImage:v35];
          }

          [acs_uniquelyIdentifiedCardSection2 setIsCentered:1];
          payer4 = [self payer];
          displayName = [payer4 displayName];
          [acs_uniquelyIdentifiedCardSection2 setTitle:displayName];

          currencyAmount2 = [self currencyAmount];
          acs_formattedAmountString = [currencyAmount2 acs_formattedAmountString];

          [acs_uniquelyIdentifiedCardSection2 setSubtitle:acs_formattedAmountString];
          [acs_uniquelyIdentifiedCardSection2 setSeparatorStyle:5];
          v39 = NSStringFromSelector(sel_payer);
          v71[0] = v39;
          v40 = NSStringFromSelector(sel_displayName);
          v71[1] = v40;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
          [ACSCardServiceHelper addParameterToSection:acs_uniquelyIdentifiedCardSection2 selectorStrings:v41 class:objc_opt_class()];

          v26 = 0x277CBE000uLL;
          v42 = NSStringFromSelector(sel_currencyAmount);
          v70 = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
          [ACSCardServiceHelper addParameterToSection:acs_uniquelyIdentifiedCardSection2 selectorStrings:v43 class:objc_opt_class()];

          [v67 addObject:acs_uniquelyIdentifiedCardSection2];
        }
      }

      note = [self note];
      v45 = [note length];

      if (v45)
      {
        v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v47 = [v46 localizedStringForKey:@"NOTE" value:&stru_2853137F0 table:0];
        note2 = [self note];
        v49 = [ACSCardServiceHelper rowCardSectionFromLeadingText:v47 trailingText:note2];

        v26 = 0x277CBE000uLL;
        v50 = NSStringFromSelector(sel_note);
        v69 = v50;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
        [ACSCardServiceHelper addParameterToSection:v49 selectorStrings:v51 class:objc_opt_class()];

        [v67 addObject:v49];
      }

      feeAmount = [paymentRecord feeAmount];

      v53 = v67;
      if (feeAmount)
      {
        feeAmount2 = [paymentRecord feeAmount];
        acs_formattedAmountString2 = [feeAmount2 acs_formattedAmountString];

        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v56 = [v55 localizedStringForKey:@"FEE" value:&stru_2853137F0 table:0];
        v57 = [ACSCardServiceHelper rowCardSectionFromLeadingText:v56 trailingText:acs_formattedAmountString2];

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
      [acs_uniquelyIdentifiedCard setCardSections:v61];

      [acs_uniquelyIdentifiedCard acs_setInteraction:v9];
      v6[2](v6, acs_uniquelyIdentifiedCard, 0);

      v14 = v66;
    }

    else
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CF93E8];
      v72 = *MEMORY[0x277CCA068];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", content];
      v73[0] = v9;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
      paymentRecord = [v12 errorWithDomain:v13 code:400 userInfo:v14];
      (v6)[2](v6, 0, paymentRecord);
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

@end