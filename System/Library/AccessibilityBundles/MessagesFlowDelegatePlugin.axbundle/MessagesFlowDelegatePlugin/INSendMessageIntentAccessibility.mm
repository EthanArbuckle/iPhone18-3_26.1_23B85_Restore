@interface INSendMessageIntentAccessibility
- (BOOL)_axIsRecipientSelectedInClarity:(id)clarity;
- (void)setRecipients:(id)recipients;
@end

@implementation INSendMessageIntentAccessibility

- (void)setRecipients:(id)recipients
{
  v34 = *MEMORY[0x29EDCA608];
  recipientsCopy = recipients;
  v20 = [recipientsCopy mutableCopy];
  v5 = objc_opt_new();
  isClarityBoardEnabled = [v5 isClarityBoardEnabled];

  if (isClarityBoardEnabled)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = recipientsCopy;
    obj = recipientsCopy;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v22 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          siriMatches = [v10 siriMatches];
          if ([siriMatches count])
          {
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v12 = siriMatches;
            v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v25;
              while (2)
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v25 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  contactIdentifier = [*(*(&v24 + 1) + 8 * j) contactIdentifier];
                  if ([contactIdentifier length] && -[INSendMessageIntentAccessibility _axIsRecipientSelectedInClarity:](self, "_axIsRecipientSelectedInClarity:", contactIdentifier))
                  {

                    goto LABEL_19;
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

            [v20 removeObject:v10];
          }

LABEL_19:
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }

    recipientsCopy = v19;
  }

  v23.receiver = self;
  v23.super_class = INSendMessageIntentAccessibility;
  [(INSendMessageIntentAccessibility *)&v23 setRecipients:v20, v19];

  v18 = *MEMORY[0x29EDCA608];
}

- (BOOL)_axIsRecipientSelectedInClarity:(id)clarity
{
  v20 = *MEMORY[0x29EDCA608];
  clarityCopy = clarity;
  mEMORY[0x29EDB8BB8] = [MEMORY[0x29EDB8BB8] sharedInstance];
  entries = [mEMORY[0x29EDB8BB8] entries];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = entries;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        contactProperty = [*(*(&v15 + 1) + 8 * i) contactProperty];
        contact = [contactProperty contact];
        identifier = [contact identifier];

        LOBYTE(contactProperty) = [identifier isEqualToString:clarityCopy];
        if (contactProperty)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x29EDCA608];
  return v7;
}

@end