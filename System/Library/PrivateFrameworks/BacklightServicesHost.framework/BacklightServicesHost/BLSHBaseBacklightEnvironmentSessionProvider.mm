@interface BLSHBaseBacklightEnvironmentSessionProvider
- (BLSHBacklightEnvironmentPresentation)presentation;
- (BLSHBacklightInactiveEnvironmentSession)activeSession;
- (BLSHBaseBacklightEnvironmentSessionProvider)init;
- (id)createInactiveEnvironmentSession;
- (void)didEndInactiveEnvironmentSession:(id)session;
- (void)inactiveEnvironmentSession:(id)session didUpdateToPresentation:(id)presentation;
- (void)setPresentation:(id)presentation withCompletion:(id)completion;
- (void)setPresentationWithFBScenes:(id)scenes flipbookContext:(id)context completion:(id)completion;
@end

@implementation BLSHBaseBacklightEnvironmentSessionProvider

- (BLSHBaseBacklightEnvironmentSessionProvider)init
{
  v8.receiver = self;
  v8.super_class = BLSHBaseBacklightEnvironmentSessionProvider;
  v2 = [(BLSHBaseBacklightEnvironmentSessionProvider *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [BLSHBacklightEnvironmentPresentation alloc];
    v5 = [(BLSHBacklightEnvironmentPresentation *)v4 initWithPresentationEntries:MEMORY[0x277CBEBF8] flipbookContext:0 expirationDate:0];
    lock_presentation = v3->_lock_presentation;
    v3->_lock_presentation = v5;
  }

  return v3;
}

- (BLSHBacklightInactiveEnvironmentSession)activeSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_activeSession;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BLSHBacklightEnvironmentPresentation)presentation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_presentation;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPresentation:(id)presentation withCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  completionCopy = completion;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  presentationEntries = [presentationCopy presentationEntries];
  v10 = [presentationEntries countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(presentationEntries);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        environment = [v14 environment];
        [environment setAlwaysOnEnabledForEnvironment:{-[BLSHBaseBacklightEnvironmentSessionProvider presentationEntrySupportsAlwaysOn:](self, "presentationEntrySupportsAlwaysOn:", v14)}];
      }

      v11 = [presentationEntries countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  os_unfair_lock_lock(&self->_lock);
  v16 = self->_lock_presentation;
  objc_storeStrong(&self->_lock_presentation, presentation);
  v17 = MEMORY[0x223D70730](completionCopy);
  lock_setPresentationCompletion = self->_lock_setPresentationCompletion;
  self->_lock_setPresentationCompletion = v17;

  v19 = [presentationCopy isEqual:v16];
  v20 = self->_lock_activeSession;
  if (!v20)
  {
    v19 = 1;
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = completionCopy;
  }

  v22 = MEMORY[0x223D70730](v21);
  v23 = self->_lock_setPresentationCompletion;
  self->_lock_setPresentationCompletion = v22;

  os_unfair_lock_unlock(&self->_lock);
  if (v19)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    [(BLSHBacklightInactiveEnvironmentSession *)v20 setPresentation:presentationCopy];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setPresentationWithFBScenes:(id)scenes flipbookContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v11 = [scenes bs_mapNoNulls:&__block_literal_global_31];
  v10 = [[BLSHBacklightEnvironmentPresentation alloc] initWithPresentationEntries:v11 flipbookContext:contextCopy expirationDate:0];

  [(BLSHBaseBacklightEnvironmentSessionProvider *)self setPresentation:v10 withCompletion:completionCopy];
}

BLSHPresentationEntry *__102__BLSHBaseBacklightEnvironmentSessionProvider_setPresentationWithFBScenes_flipbookContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 backlightSceneHostEnvironment];
  v3 = [[BLSHPresentationEntry alloc] initWithEnvironment:v2 userObject:0];

  return v3;
}

- (void)inactiveEnvironmentSession:(id)session didUpdateToPresentation:(id)presentation
{
  presentationCopy = presentation;
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  lock_activeSession = self->_lock_activeSession;

  if (__PAIR128__(self->_lock_presentation, lock_activeSession) == __PAIR128__(presentationCopy, sessionCopy))
  {
    v8 = MEMORY[0x223D70730](self->_lock_setPresentationCompletion);
    lock_setPresentationCompletion = self->_lock_setPresentationCompletion;
    self->_lock_setPresentationCompletion = 0;

    os_unfair_lock_unlock(&self->_lock);
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)didEndInactiveEnvironmentSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock(&self->_lock);
  lock_activeSession = self->_lock_activeSession;
  if (lock_activeSession == sessionCopy)
  {
    self->_lock_activeSession = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightInactiveEnvironmentSession *)sessionCopy removeObserver:self];
}

- (id)createInactiveEnvironmentSession
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [BLSHBacklightInactiveEnvironmentSession sessionWithPresentation:self->_lock_presentation];
  objc_storeStrong(&self->_lock_activeSession, v3);
  os_unfair_lock_unlock(&self->_lock);
  [v3 addObserver:self];

  return v3;
}

@end