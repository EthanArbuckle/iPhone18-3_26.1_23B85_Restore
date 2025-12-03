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
    content = [a3 content];
    if (objc_opt_respondsToSelector())
    {
      underlyingInteraction = [content underlyingInteraction];
    }

    else
    {
      underlyingInteraction = 0;
    }

    mediaItems = [self mediaItems];
    firstObject = [mediaItems firstObject];

    mediaContainer = [self mediaContainer];
    v43 = underlyingInteraction;
    if (underlyingInteraction)
    {
      title = [firstObject title];
      if ([title length])
      {

        goto LABEL_9;
      }

      title2 = [mediaContainer title];
      v14 = [title2 length];

      if (v14)
      {
LABEL_9:
        v42 = content;
        v15 = objc_opt_new();
        title3 = [mediaContainer title];
        v17 = [title3 length];

        if (v17)
        {
          title4 = [mediaContainer title];
          v19 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:@"container.title"];
          [v15 addObject:v19];

          title5 = [firstObject title];
          title6 = [title5 length];

          if (!title6)
          {
            goto LABEL_16;
          }

          title6 = [firstObject title];
        }

        else
        {
          title7 = [firstObject title];
          title4 = [title7 length];

          if (!title4)
          {
            title6 = 0;
LABEL_16:
            title8 = [mediaContainer title];
            if ([title8 length])
            {
              artwork = [mediaContainer artwork];

              if (artwork)
              {
                v29 = @"container.artwork";
                v30 = mediaContainer;
                goto LABEL_23;
              }
            }

            else
            {
            }

            title9 = [firstObject title];
            if (![title9 length])
            {
              artwork2 = 0;
              goto LABEL_25;
            }

            artwork2 = [firstObject artwork];

            if (!artwork2)
            {
LABEL_26:
              v33 = objc_alloc_init(MEMORY[0x277D4C328]);
              v34 = [MEMORY[0x277D4C598] textWithString:title4];
              [v33 setTitle:v34];

              title10 = [v33 title];
              [title10 setMaxLines:1];

              if ([title6 length])
              {
                v36 = [MEMORY[0x277D4C598] textWithString:title6];
                [v36 setMaxLines:1];
                v45 = v36;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
                [v33 setDescriptions:v37];
              }

              if (artwork2)
              {
                v38 = [objc_alloc(MEMORY[0x277CD4608]) initWithIntentsImage:artwork2];
                [v38 setCornerRoundingStyle:2];
                [v33 setThumbnail:v38];
              }

              [v33 acs_setParameters:v15];
              acs_uniquelyIdentifiedCard = [MEMORY[0x277D4C230] acs_uniquelyIdentifiedCard];
              v44 = v33;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
              [acs_uniquelyIdentifiedCard setCardSections:v40];

              v24 = v43;
              [acs_uniquelyIdentifiedCard acs_setInteraction:v43];
              v6[2](v6, acs_uniquelyIdentifiedCard, 0);

              content = v42;
              goto LABEL_31;
            }

            v29 = @"mediaItems[0].artwork";
            v30 = firstObject;
LABEL_23:
            artwork2 = [v30 artwork];
            title9 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:v29];
            [v15 addObject:title9];
LABEL_25:

            goto LABEL_26;
          }

          title4 = [firstObject title];
          title6 = 0;
        }

        v26 = [MEMORY[0x277CD3E50] parameterForClass:objc_opt_class() keyPath:@"mediaItems[0].title"];
        [v15 addObject:v26];

        goto LABEL_16;
      }
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CF93E8];
    v46 = *MEMORY[0x277CCA068];
    title4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Content %@ is incompatible with this service", content];
    v47[0] = title4;
    title6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v15 = [v22 errorWithDomain:v23 code:400 userInfo:title6];
    (v6)[2](v6, 0, v15);
    v24 = v43;
LABEL_31:
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end