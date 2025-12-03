@interface MKPlacePublisherRefiner
- (MKPlacePublisherRefiner)initWithPublisherIdentifier:(unint64_t)identifier providerIdentifier:(int)providerIdentifier;
- (void)fetchWithCallbackQueue:(id)queue completion:(id)completion;
@end

@implementation MKPlacePublisherRefiner

- (void)fetchWithCallbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  if (!completionCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "Assertion failed: completion != ((void *)0)";
LABEL_9:
    _os_log_fault_impl(&dword_1A2EA0000, v15, OS_LOG_TYPE_FAULT, v16, buf, 2u);
    goto LABEL_4;
  }

  if (!queueCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *buf = 0;
    v15 = MEMORY[0x1E69E9C10];
    v16 = "Assertion failed: callbackQueue != ((void *)0)";
    goto LABEL_9;
  }

  v8 = +[MKMapService sharedService];
  publisherIdentifier = self->_publisherIdentifier;
  v10 = +[MKMapService sharedService];
  defaultTraits = [v10 defaultTraits];
  v12 = [v8 ticketForPublisherViewPublisherIdentifier:publisherIdentifier keywordFilter:0 addressFilter:0 batchSize:1 withTraits:defaultTraits];
  ticket = self->_ticket;
  self->_ticket = v12;

  v14 = self->_ticket;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__MKPlacePublisherRefiner_fetchWithCallbackQueue_completion___block_invoke;
  v17[3] = &unk_1E76C6968;
  v18 = completionCopy;
  [(MKMapServicePublisherViewTicket *)v14 submitWithCallbackQueue:queueCopy handler:v17 networkActivity:0];

LABEL_4:
}

void __61__MKPlacePublisherRefiner_fetchWithCallbackQueue_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v21 = a4;
  v7 = a5;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([@"Failed to refine publisher for identifier" length])
    {
      [v8 setObject:@"Failed to refine publisher for identifier" forKey:*MEMORY[0x1E696A578]];
    }

    [v8 setObject:@"Failed to refine publisher for identifier" forKey:*MEMORY[0x1E696AA08]];
    v9 = MEMORY[0x1E696ABC0];
    v10 = MKErrorDomain;
    v11 = [v8 copy];
    v12 = v9;
    v13 = v10;
    v14 = 2;
LABEL_5:
    v15 = [v12 errorWithDomain:v13 code:v14 userInfo:v11];

    v16 = *(*(a1 + 32) + 16);
    goto LABEL_8;
  }

  v17 = [v21 publisher];

  if (!v17)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([@"No publisher result for identifier" length])
    {
      [v8 setObject:@"No publisher result for identifier" forKey:*MEMORY[0x1E696A578]];
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = MKErrorDomain;
    v11 = [v8 copy];
    v12 = v19;
    v13 = v20;
    v14 = 1;
    goto LABEL_5;
  }

  v18 = *(a1 + 32);
  v15 = [v21 publisher];
  v16 = *(v18 + 16);
LABEL_8:
  v16();
}

- (MKPlacePublisherRefiner)initWithPublisherIdentifier:(unint64_t)identifier providerIdentifier:(int)providerIdentifier
{
  selfCopy = self;
  if (identifier)
  {
    v5 = *&providerIdentifier;
    v13.receiver = self;
    v13.super_class = MKPlacePublisherRefiner;
    v7 = [(MKPlacePublisherRefiner *)&v13 init];
    if (v7)
    {
      v8 = [MKMapItemIdentifier alloc];
      v9 = [(MKMapItemIdentifier *)v8 initWithMUID:identifier resultProviderID:v5 coordinate:*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8)];
      publisherIdentifier = v7->_publisherIdentifier;
      v7->_publisherIdentifier = v9;
    }

    selfCopy = v7;
    v11 = selfCopy;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1A2EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: publisherIdentifier != 0", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

@end