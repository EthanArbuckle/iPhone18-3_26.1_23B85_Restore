@interface INPlayMediaIntent(ACSCardRequesting)
- (void)requestCard:()ACSCardRequesting reply:;
@end

@implementation INPlayMediaIntent(ACSCardRequesting)

- (void)requestCard:()ACSCardRequesting reply:
{
  v47[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v7 = [a3 content];
    if (objc_opt_respondsToSelector())
    {
      v8 = [v7 underlyingInteraction];
    }

    else
    {
      v8 = 0;
    }

    v9 = [a1 mediaItems];
    v10 = [v9 firstObject];

    v11 = [a1 mediaContainer];
    v43 = v8;
    if (v8)
    {
      v12 = [v10 title];
      if ([v12 length])
      {

        goto LABEL_9;
      }

      v13 = [v11 title];
      v14 = [v13 length];

      if (v14)
      {
LABEL_9:
        v42 = v7;
        v15 = objc_opt_new();
        v16 = [v11 title];
        v17 = [v16 length];

        if (v17)
        {
          v18 = [v11 title];
          v19 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:@"container.title"];
          [v15 addObject:v19];

          v20 = [v10 title];
          v21 = [v20 length];

          if (!v21)
          {
            goto LABEL_16;
          }

          v21 = [v10 title];
        }

        else
        {
          v25 = [v10 title];
          v18 = [v25 length];

          if (!v18)
          {
            v21 = 0;
LABEL_16:
            v27 = [v11 title];
            if ([v27 length])
            {
              v28 = [v11 artwork];

              if (v28)
              {
                v29 = @"container.artwork";
                v30 = v11;
                goto LABEL_23;
              }
            }

            else
            {
            }

            v31 = [v10 title];
            if (![v31 length])
            {
              v32 = 0;
              goto LABEL_25;
            }

            v32 = [v10 artwork];

            if (!v32)
            {
LABEL_26:
              v33 = objc_alloc_init(MEMORY[0x277D4C328]);
              v34 = [MEMORY[0x277D4C598] textWithString:v18];
              [v33 setTitle:v34];

              v35 = [v33 title];
              [v35 setMaxLines:1];

              if ([v21 length])
              {
                v36 = [MEMORY[0x277D4C598] textWithString:v21];
                [v36 setMaxLines:1];
                v45 = v36;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
                [v33 setDescriptions:v37];
              }

              if (v32)
              {
                v38 = [objc_alloc(MEMORY[0x277CD4608]) initWithIntentsImage:v32];
                [v38 setCornerRoundingStyle:2];
                [v33 setThumbnail:v38];
              }

              [v33 acs_setParameters:v15];
              v39 = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
              v44 = v33;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
              [v39 setCardSections:v40];

              v24 = v43;
              [v39 acs_setInteraction:v43];
              v6[2](v6, v39, 0);

              v7 = v42;
              goto LABEL_31;
            }

            v29 = @"mediaItems[0].artwork";
            v30 = v10;
LABEL_23:
            v32 = [v30 artwork];
            v31 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:v29];
            [v15 addObject:v31];
LABEL_25:

            goto LABEL_26;
          }

          v18 = [v10 title];
          v21 = 0;
        }

        v26 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:@"mediaItems[0].title"];
        [v15 addObject:v26];

        goto LABEL_16;
      }
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CF93E8];
    v46 = *MEMORY[0x277CCA068];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", v7];
    v47[0] = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v15 = [v22 errorWithDomain:v23 code:400 userInfo:v21];
    (v6)[2](v6, 0, v15);
    v24 = v43;
LABEL_31:
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end