@interface MFMailRecipients
- (BOOL)sanitizeForComposeType:(int64_t)type sendingEmailAddress:(id)address hideMyEmailAddressProvider:(id)provider;
- (MFMailRecipients)initWithToRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients;
@end

@implementation MFMailRecipients

- (MFMailRecipients)initWithToRecipients:(id)recipients ccRecipients:(id)ccRecipients bccRecipients:(id)bccRecipients
{
  recipientsCopy = recipients;
  ccRecipientsCopy = ccRecipients;
  bccRecipientsCopy = bccRecipients;
  v19.receiver = self;
  v19.super_class = MFMailRecipients;
  v11 = [(MFMailRecipients *)&v19 init];
  if (v11)
  {
    v12 = [recipientsCopy copy];
    toRecipients = v11->_toRecipients;
    v11->_toRecipients = v12;

    v14 = [ccRecipientsCopy copy];
    ccRecipients = v11->_ccRecipients;
    v11->_ccRecipients = v14;

    v16 = [bccRecipientsCopy copy];
    bccRecipients = v11->_bccRecipients;
    v11->_bccRecipients = v16;
  }

  return v11;
}

- (BOOL)sanitizeForComposeType:(int64_t)type sendingEmailAddress:(id)address hideMyEmailAddressProvider:(id)provider
{
  v108 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  providerCopy = provider;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  toRecipients = [(MFMailRecipients *)self toRecipients];
  selfCopy = self;
  v81 = [v8 initWithCapacity:{objc_msgSend(toRecipients, "count")}];

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  ccRecipients = [(MFMailRecipients *)self ccRecipients];
  v12 = [v10 initWithCapacity:{objc_msgSend(ccRecipients, "count")}];

  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  bccRecipients = [(MFMailRecipients *)selfCopy bccRecipients];
  v15 = [v13 initWithCapacity:{objc_msgSend(bccRecipients, "count")}];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  toRecipients2 = [(MFMailRecipients *)selfCopy toRecipients];
  v17 = [toRecipients2 countByEnumeratingWithState:&v99 objects:v107 count:16];
  if (v17)
  {
    v82 = 0;
    v18 = *v100;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v100 != v18)
        {
          objc_enumerationMutation(toRecipients2);
        }

        v20 = *(*(&v99 + 1) + 8 * i);
        if ([v81 containsObject:v20])
        {
          v82 = 1;
        }

        else
        {
          [v81 addObject:v20];
        }
      }

      v17 = [toRecipients2 countByEnumeratingWithState:&v99 objects:v107 count:16];
    }

    while (v17);
  }

  else
  {
    v82 = 0;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  ccRecipients2 = [(MFMailRecipients *)selfCopy ccRecipients];
  v22 = [ccRecipients2 countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v22)
  {
    v23 = *v96;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v96 != v23)
        {
          objc_enumerationMutation(ccRecipients2);
        }

        v25 = *(*(&v95 + 1) + 8 * j);
        if ([v12 containsObject:v25])
        {
          v82 = 1;
        }

        else
        {
          [v12 addObject:v25];
        }
      }

      v22 = [ccRecipients2 countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v22);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  bccRecipients2 = [(MFMailRecipients *)selfCopy bccRecipients];
  v27 = [bccRecipients2 countByEnumeratingWithState:&v91 objects:v105 count:16];
  if (v27)
  {
    v28 = *v92;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v92 != v28)
        {
          objc_enumerationMutation(bccRecipients2);
        }

        v30 = *(*(&v91 + 1) + 8 * k);
        if ([v15 containsObject:v30])
        {
          v82 = 1;
        }

        else
        {
          [v15 addObject:v30];
        }
      }

      v27 = [bccRecipients2 countByEnumeratingWithState:&v91 objects:v105 count:16];
    }

    while (v27);
  }

  if (type == 5)
  {
    v31 = addressCopy;
    emailAddressValue = [v31 emailAddressValue];
    simpleAddress = [emailAddressValue simpleAddress];
    v34 = simpleAddress;
    if (simpleAddress)
    {
      stringValue = simpleAddress;
    }

    else
    {
      stringValue = [v31 stringValue];
    }

    v35 = providerCopy[2]();
    v36 = [v12 count];
    if (v36)
    {
      for (m = v36 - 1; m != -1; --m)
      {
        if (v35)
        {
          v38 = [v12 objectAtIndex:m];
          emailAddressValue2 = [v38 emailAddressValue];
          displayName = [emailAddressValue2 displayName];
          if (displayName)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v38 = [v12 objectAtIndex:m];
          emailAddressValue2 = [v38 emailAddressValue];
          displayName = [emailAddressValue2 simpleAddress];
          if (displayName)
          {
LABEL_43:
            stringValue2 = displayName;
            displayName = stringValue2;
            goto LABEL_44;
          }
        }

        stringValue2 = [v38 stringValue];
LABEL_44:
        v42 = stringValue2;

        if (![v42 caseInsensitiveCompare:stringValue])
        {
          [v12 removeObjectAtIndex:m];
          v82 = 1;
        }
      }
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v81;
    v43 = [obj countByEnumeratingWithState:&v87 objects:v104 count:16];
    if (!v43)
    {
      goto LABEL_83;
    }

    v79 = *v88;
LABEL_51:
    v80 = v43;
    v44 = 0;
    while (1)
    {
      if (*v88 != v79)
      {
        objc_enumerationMutation(obj);
      }

      v45 = *(*(&v87 + 1) + 8 * v44);
      emailAddressValue3 = [v45 emailAddressValue];
      simpleAddress2 = [emailAddressValue3 simpleAddress];
      v48 = simpleAddress2;
      if (simpleAddress2)
      {
        stringValue3 = simpleAddress2;
      }

      else
      {
        stringValue3 = [v45 stringValue];
      }

      v50 = stringValue3;

      v51 = [v12 count];
      if (v51)
      {
        for (n = v51 - 1; n != -1; --n)
        {
          if (v35)
          {
            v53 = [v12 objectAtIndex:n];
            emailAddressValue4 = [v53 emailAddressValue];
            displayName2 = [emailAddressValue4 displayName];
            if (displayName2)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v53 = [v12 objectAtIndex:n];
            emailAddressValue4 = [v53 emailAddressValue];
            displayName2 = [emailAddressValue4 simpleAddress];
            if (displayName2)
            {
LABEL_63:
              stringValue4 = displayName2;
              displayName2 = stringValue4;
              goto LABEL_64;
            }
          }

          stringValue4 = [v53 stringValue];
LABEL_64:
          v57 = stringValue4;

          if (![v57 caseInsensitiveCompare:v50])
          {
            [v12 removeObjectAtIndex:n];
            v82 = 1;
          }
        }
      }

      v58 = [v15 count];
      if (v58)
      {
        break;
      }

LABEL_81:

      if (++v44 == v80)
      {
        v43 = [obj countByEnumeratingWithState:&v87 objects:v104 count:16];
        if (!v43)
        {
LABEL_83:

          goto LABEL_84;
        }

        goto LABEL_51;
      }
    }

    v59 = v58 - 1;
    while (1)
    {
      if (v35)
      {
        v60 = [v15 objectAtIndex:v59];
        emailAddressValue5 = [v60 emailAddressValue];
        displayName3 = [emailAddressValue5 displayName];
        if (displayName3)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v60 = [v15 objectAtIndex:v59];
        emailAddressValue5 = [v60 emailAddressValue];
        displayName3 = [emailAddressValue5 simpleAddress];
        if (displayName3)
        {
LABEL_75:
          stringValue5 = displayName3;
          displayName3 = stringValue5;
          goto LABEL_76;
        }
      }

      stringValue5 = [v60 stringValue];
LABEL_76:
      v64 = stringValue5;

      if (![v64 caseInsensitiveCompare:v50])
      {
        [v15 removeObjectAtIndex:v59];
        v82 = 1;
      }

      if (--v59 == -1)
      {
        goto LABEL_81;
      }
    }
  }

LABEL_84:
  if ([v15 count])
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v65 = v12;
    v66 = [v65 countByEnumeratingWithState:&v83 objects:v103 count:16];
    if (v66)
    {
      v67 = *v84;
      do
      {
        for (ii = 0; ii != v66; ++ii)
        {
          if (*v84 != v67)
          {
            objc_enumerationMutation(v65);
          }

          v69 = [v15 indexOfObject:*(*(&v83 + 1) + 8 * ii)];
          if (v69 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v15 removeObjectAtIndex:v69];
            v82 = 1;
          }
        }

        v66 = [v65 countByEnumeratingWithState:&v83 objects:v103 count:16];
      }

      while (v66);
    }
  }

  v70 = [v81 copy];
  [(MFMailRecipients *)selfCopy setToRecipients:v70];

  v71 = [v12 copy];
  [(MFMailRecipients *)selfCopy setCcRecipients:v71];

  v72 = [v15 copy];
  [(MFMailRecipients *)selfCopy setBccRecipients:v72];

  return v82 & 1;
}

@end