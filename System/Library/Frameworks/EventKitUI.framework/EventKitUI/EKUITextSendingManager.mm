@interface EKUITextSendingManager
+ (BOOL)canSendMessageToRecipientsOnEvent:(id)a3;
+ (BOOL)messagingAvailable;
+ (id)addressesForRecipientsOnEvent:(id)a3;
+ (void)getPhone:(id *)a3 andEmail:(id *)a4 forContact:(id)a5;
- (EKUITextSendingManager)initWithEvent:(id)a3;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)setupControllerWithAddresses:(id)a3;
@end

@implementation EKUITextSendingManager

+ (void)getPhone:(id *)a3 andEmail:(id *)a4 forContact:(id)a5
{
  v7 = a5;
  v17 = v7;
  if (a3)
  {
    v8 = [v7 phoneNumbers];
    v9 = [v8 count];

    v7 = v17;
    if (v9)
    {
      v10 = [v17 phoneNumbers];
      v11 = [v10 objectAtIndexedSubscript:0];

      v12 = [v11 value];
      *a3 = [v12 stringValue];

      v7 = v17;
    }
  }

  if (a4)
  {
    v13 = [v17 emailAddresses];
    v14 = [v13 count];

    v7 = v17;
    if (v14)
    {
      v15 = [v17 emailAddresses];
      v16 = [v15 objectAtIndexedSubscript:0];

      *a4 = [v16 value];

      v7 = v17;
    }
  }
}

+ (id)addressesForRecipientsOnEvent:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = [v3 array];
  v6 = [EKUICommunicationUtilities attendeesIgnoringMe:v4];

  v10 = v5;
  v7 = v6;
  CalendarFoundationPerformBlockOnSharedContactStore();
  v8 = v10;

  return v10;
}

void __56__EKUITextSendingManager_addressesForRecipientsOnEvent___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v20 = *MEMORY[0x1E695C330];
    v19 = *MEMORY[0x1E695C208];
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * v6);
        v8 = [v7 phoneNumber];
        v9 = [v7 emailAddress];
        if (v9)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          goto LABEL_14;
        }

        v29[0] = v20;
        v29[1] = v19;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
        v12 = [v7 contactPredicate];
        v13 = [v21 unifiedContactsMatchingPredicate:v12 keysToFetch:v11 error:0];

        if ([v13 count])
        {
          v14 = [v13 objectAtIndexedSubscript:0];
          v15 = *(a1 + 48);
          v23 = v9;
          v24 = v8;
          [v15 getPhone:&v24 andEmail:&v23 forContact:v14];
          v16 = v24;

          v17 = v23;
          v9 = v17;
          v8 = v16;
        }

        if (v8)
        {
LABEL_14:
          [*(a1 + 40) addObject:v8];

          v9 = v8;
LABEL_15:

          goto LABEL_16;
        }

        if (v9)
        {
          [*(a1 + 40) addObject:v9];
          goto LABEL_15;
        }

LABEL_16:
        ++v6;
      }

      while (v4 != v6);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      v4 = v18;
    }

    while (v18);
  }
}

+ (BOOL)messagingAvailable
{
  v2 = [EKWeakLinkClass() defaultCapabilitiesManager];
  v3 = [v2 isMadridConfigured];

  return v3;
}

+ (BOOL)canSendMessageToRecipientsOnEvent:(id)a3
{
  v4 = a3;
  if ([v4 hasAttendees] && objc_msgSend(a1, "messagingAvailable"))
  {
    v5 = [a1 addressesForRecipientsOnEvent:v4];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (EKUITextSendingManager)initWithEvent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EKUITextSendingManager;
  v5 = [(EKUITextSendingManager *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() addressesForRecipientsOnEvent:v4];
    [(EKUITextSendingManager *)v5 setupControllerWithAddresses:v6];
  }

  return v5;
}

- (void)setupControllerWithAddresses:(id)a3
{
  v6 = a3;
  v4 = objc_alloc_init(+[CalendarMessageUIProxy MFMessageComposeViewControllerClass]);
  composeViewController = self->_composeViewController;
  self->_composeViewController = v4;

  [(MFMessageComposeViewController *)self->_composeViewController setMessageComposeDelegate:self];
  [(MFMessageComposeViewController *)self->_composeViewController setRecipients:v6];
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v6 = [(EKUITextSendingManager *)self messageSendingComplete];

  if (v6)
  {
    v7 = [(EKUITextSendingManager *)self messageSendingComplete];
    v7[2](v7, a4 == 1);
  }
}

@end