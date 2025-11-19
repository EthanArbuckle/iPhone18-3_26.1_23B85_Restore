@interface MFMailRecipients
- (BOOL)sanitizeForComposeType:(int64_t)a3 sendingEmailAddress:(id)a4 hideMyEmailAddressProvider:(id)a5;
- (MFMailRecipients)initWithToRecipients:(id)a3 ccRecipients:(id)a4 bccRecipients:(id)a5;
@end

@implementation MFMailRecipients

- (MFMailRecipients)initWithToRecipients:(id)a3 ccRecipients:(id)a4 bccRecipients:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MFMailRecipients;
  v11 = [(MFMailRecipients *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    toRecipients = v11->_toRecipients;
    v11->_toRecipients = v12;

    v14 = [v9 copy];
    ccRecipients = v11->_ccRecipients;
    v11->_ccRecipients = v14;

    v16 = [v10 copy];
    bccRecipients = v11->_bccRecipients;
    v11->_bccRecipients = v16;
  }

  return v11;
}

- (BOOL)sanitizeForComposeType:(int64_t)a3 sendingEmailAddress:(id)a4 hideMyEmailAddressProvider:(id)a5
{
  v108 = *MEMORY[0x1E69E9840];
  v74 = a4;
  v75 = a5;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [(MFMailRecipients *)self toRecipients];
  v76 = self;
  v81 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  v11 = [(MFMailRecipients *)self ccRecipients];
  v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = [(MFMailRecipients *)v76 bccRecipients];
  v15 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v16 = [(MFMailRecipients *)v76 toRecipients];
  v17 = [v16 countByEnumeratingWithState:&v99 objects:v107 count:16];
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
          objc_enumerationMutation(v16);
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

      v17 = [v16 countByEnumeratingWithState:&v99 objects:v107 count:16];
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
  v21 = [(MFMailRecipients *)v76 ccRecipients];
  v22 = [v21 countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v22)
  {
    v23 = *v96;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v96 != v23)
        {
          objc_enumerationMutation(v21);
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

      v22 = [v21 countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v22);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v26 = [(MFMailRecipients *)v76 bccRecipients];
  v27 = [v26 countByEnumeratingWithState:&v91 objects:v105 count:16];
  if (v27)
  {
    v28 = *v92;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v92 != v28)
        {
          objc_enumerationMutation(v26);
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

      v27 = [v26 countByEnumeratingWithState:&v91 objects:v105 count:16];
    }

    while (v27);
  }

  if (a3 == 5)
  {
    v31 = v74;
    v32 = [v31 emailAddressValue];
    v33 = [v32 simpleAddress];
    v34 = v33;
    if (v33)
    {
      v77 = v33;
    }

    else
    {
      v77 = [v31 stringValue];
    }

    v35 = v75[2]();
    v36 = [v12 count];
    if (v36)
    {
      for (m = v36 - 1; m != -1; --m)
      {
        if (v35)
        {
          v38 = [v12 objectAtIndex:m];
          v39 = [v38 emailAddressValue];
          v40 = [v39 displayName];
          if (v40)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v38 = [v12 objectAtIndex:m];
          v39 = [v38 emailAddressValue];
          v40 = [v39 simpleAddress];
          if (v40)
          {
LABEL_43:
            v41 = v40;
            v40 = v41;
            goto LABEL_44;
          }
        }

        v41 = [v38 stringValue];
LABEL_44:
        v42 = v41;

        if (![v42 caseInsensitiveCompare:v77])
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
      v46 = [v45 emailAddressValue];
      v47 = [v46 simpleAddress];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = [v45 stringValue];
      }

      v50 = v49;

      v51 = [v12 count];
      if (v51)
      {
        for (n = v51 - 1; n != -1; --n)
        {
          if (v35)
          {
            v53 = [v12 objectAtIndex:n];
            v54 = [v53 emailAddressValue];
            v55 = [v54 displayName];
            if (v55)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v53 = [v12 objectAtIndex:n];
            v54 = [v53 emailAddressValue];
            v55 = [v54 simpleAddress];
            if (v55)
            {
LABEL_63:
              v56 = v55;
              v55 = v56;
              goto LABEL_64;
            }
          }

          v56 = [v53 stringValue];
LABEL_64:
          v57 = v56;

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
        v61 = [v60 emailAddressValue];
        v62 = [v61 displayName];
        if (v62)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v60 = [v15 objectAtIndex:v59];
        v61 = [v60 emailAddressValue];
        v62 = [v61 simpleAddress];
        if (v62)
        {
LABEL_75:
          v63 = v62;
          v62 = v63;
          goto LABEL_76;
        }
      }

      v63 = [v60 stringValue];
LABEL_76:
      v64 = v63;

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
  [(MFMailRecipients *)v76 setToRecipients:v70];

  v71 = [v12 copy];
  [(MFMailRecipients *)v76 setCcRecipients:v71];

  v72 = [v15 copy];
  [(MFMailRecipients *)v76 setBccRecipients:v72];

  return v82 & 1;
}

@end