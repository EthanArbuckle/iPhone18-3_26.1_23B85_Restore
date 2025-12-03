@interface MechanismBaseComposite
- (BOOL)canRecoverFromAvailabilityError:(id)error request:(id)request;
- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error;
- (MechanismBaseComposite)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller k:(unint64_t)k ofSubmechanisms:(id)submechanisms request:(id)request;
@end

@implementation MechanismBaseComposite

- (MechanismBaseComposite)initWithEventIdentifier:(int64_t)identifier remoteViewController:(int64_t)controller k:(unint64_t)k ofSubmechanisms:(id)submechanisms request:(id)request
{
  v31 = *MEMORY[0x277D85DE8];
  submechanismsCopy = submechanisms;
  v29.receiver = self;
  v29.super_class = MechanismBaseComposite;
  v14 = [(MechanismBase *)&v29 initWithEventIdentifier:identifier remoteViewController:controller cachedExternalizationDelegate:0 request:request];
  v15 = v14;
  if (v14)
  {
    v14->_k = k;
    objc_storeStrong(&v14->_submechanisms, submechanisms);
    v16 = [(NSArray *)v15->_submechanisms count];
    v15->_n = v16;
    k = v15->_k;
    v15->_AND = k == v16;
    v15->_OR = k < v16;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v15->_submechanisms;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v25 + 1) + 8 * i) setParent:{v15, v25}];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v20);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)isAvailableForPurpose:(int64_t)purpose error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(MechanismBaseComposite *)self isAND])
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    submechanisms = [(MechanismBaseComposite *)self submechanisms];
    v8 = [submechanisms countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(submechanisms);
        }

        if (![*(*(&v23 + 1) + 8 * v11) isAvailableForPurpose:purpose error:error])
        {
          goto LABEL_19;
        }

        if (v9 == ++v11)
        {
          v9 = [submechanisms countByEnumeratingWithState:&v23 objects:v28 count:16];
          v12 = 1;
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }
    }

LABEL_20:
    v12 = 1;
    goto LABEL_21;
  }

  v21 = 0uLL;
  v22 = 0uLL;
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v13 = [submechanisms countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
LABEL_13:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(submechanisms);
      }

      if ([*(*(&v19 + 1) + 8 * v16) isAvailableForPurpose:purpose error:error])
      {
        goto LABEL_20;
      }

      if (v14 == ++v16)
      {
        v14 = [submechanisms countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_13;
        }

        break;
      }
    }
  }

LABEL_19:
  v12 = 0;
LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)canRecoverFromAvailabilityError:(id)error request:(id)request
{
  v44 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  requestCopy = request;
  submechanisms = [(MechanismBaseComposite *)self submechanisms];
  v9 = [submechanisms count];

  if (v9)
  {
    isAND = [(MechanismBaseComposite *)self isAND];
    if (isAND)
    {
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      submechanisms2 = [(MechanismBaseComposite *)self submechanisms];
      v12 = [submechanisms2 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v12)
      {
        v21 = 1;
        goto LABEL_28;
      }

      v13 = v12;
      v14 = *v39;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(submechanisms2);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        purpose = [requestCopy purpose];
        v37 = 0;
        v18 = [v16 isAvailableForPurpose:purpose error:&v37];
        v19 = v37;
        v20 = v19;
        if ((v18 & 1) == 0 && (![v19 isEqual:errorCopy] || !objc_msgSend(v16, "canRecoverFromAvailabilityError:request:", errorCopy, requestCopy)))
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [submechanisms2 countByEnumeratingWithState:&v38 objects:v43 count:16];
          v21 = 1;
          if (v13)
          {
            goto LABEL_5;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {
      v35 = 0uLL;
      v36 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      submechanisms2 = [(MechanismBaseComposite *)self submechanisms];
      v22 = [submechanisms2 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (!v22)
      {
LABEL_25:
        v21 = 0;
LABEL_28:

        goto LABEL_29;
      }

      v23 = v22;
      v24 = *v34;
LABEL_17:
      v25 = 0;
      while (1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(submechanisms2);
        }

        v26 = *(*(&v33 + 1) + 8 * v25);
        purpose2 = [requestCopy purpose];
        v32 = 0;
        v28 = [v26 isAvailableForPurpose:purpose2 error:&v32];
        v29 = v32;
        v20 = v29;
        if (v28 & 1) != 0 || [v29 isEqual:errorCopy] && (objc_msgSend(v26, "canRecoverFromAvailabilityError:request:", errorCopy, requestCopy))
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [submechanisms2 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v23)
          {
            goto LABEL_17;
          }

          goto LABEL_25;
        }
      }
    }

    v21 = !isAND;

    goto LABEL_28;
  }

  v21 = 1;
LABEL_29:

  v30 = *MEMORY[0x277D85DE8];
  return v21;
}

@end