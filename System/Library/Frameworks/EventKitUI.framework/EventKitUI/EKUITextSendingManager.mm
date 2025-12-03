@interface EKUITextSendingManager
+ (BOOL)canSendMessageToRecipientsOnEvent:(id)event;
+ (BOOL)messagingAvailable;
+ (id)addressesForRecipientsOnEvent:(id)event;
+ (void)getPhone:(id *)phone andEmail:(id *)email forContact:(id)contact;
- (EKUITextSendingManager)initWithEvent:(id)event;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)setupControllerWithAddresses:(id)addresses;
@end

@implementation EKUITextSendingManager

+ (void)getPhone:(id *)phone andEmail:(id *)email forContact:(id)contact
{
  contactCopy = contact;
  v17 = contactCopy;
  if (phone)
  {
    phoneNumbers = [contactCopy phoneNumbers];
    v9 = [phoneNumbers count];

    contactCopy = v17;
    if (v9)
    {
      phoneNumbers2 = [v17 phoneNumbers];
      v11 = [phoneNumbers2 objectAtIndexedSubscript:0];

      value = [v11 value];
      *phone = [value stringValue];

      contactCopy = v17;
    }
  }

  if (email)
  {
    emailAddresses = [v17 emailAddresses];
    v14 = [emailAddresses count];

    contactCopy = v17;
    if (v14)
    {
      emailAddresses2 = [v17 emailAddresses];
      v16 = [emailAddresses2 objectAtIndexedSubscript:0];

      *email = [v16 value];

      contactCopy = v17;
    }
  }
}

+ (id)addressesForRecipientsOnEvent:(id)event
{
  v3 = MEMORY[0x1E695DF70];
  eventCopy = event;
  array = [v3 array];
  v6 = [EKUICommunicationUtilities attendeesIgnoringMe:eventCopy];

  v10 = array;
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
  defaultCapabilitiesManager = [EKWeakLinkClass() defaultCapabilitiesManager];
  isMadridConfigured = [defaultCapabilitiesManager isMadridConfigured];

  return isMadridConfigured;
}

+ (BOOL)canSendMessageToRecipientsOnEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy hasAttendees] && objc_msgSend(self, "messagingAvailable"))
  {
    v5 = [self addressesForRecipientsOnEvent:eventCopy];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (EKUITextSendingManager)initWithEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = EKUITextSendingManager;
  v5 = [(EKUITextSendingManager *)&v8 init];
  if (v5)
  {
    v6 = [objc_opt_class() addressesForRecipientsOnEvent:eventCopy];
    [(EKUITextSendingManager *)v5 setupControllerWithAddresses:v6];
  }

  return v5;
}

- (void)setupControllerWithAddresses:(id)addresses
{
  addressesCopy = addresses;
  v4 = objc_alloc_init(+[CalendarMessageUIProxy MFMessageComposeViewControllerClass]);
  composeViewController = self->_composeViewController;
  self->_composeViewController = v4;

  [(MFMessageComposeViewController *)self->_composeViewController setMessageComposeDelegate:self];
  [(MFMessageComposeViewController *)self->_composeViewController setRecipients:addressesCopy];
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  messageSendingComplete = [(EKUITextSendingManager *)self messageSendingComplete];

  if (messageSendingComplete)
  {
    messageSendingComplete2 = [(EKUITextSendingManager *)self messageSendingComplete];
    messageSendingComplete2[2](messageSendingComplete2, result == 1);
  }
}

@end