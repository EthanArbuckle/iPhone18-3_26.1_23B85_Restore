@interface BLSHBaseBacklightEnvironmentSessionProvider
- (BLSHBacklightEnvironmentPresentation)presentation;
- (BLSHBacklightInactiveEnvironmentSession)activeSession;
- (BLSHBaseBacklightEnvironmentSessionProvider)init;
- (id)createInactiveEnvironmentSession;
- (void)didEndInactiveEnvironmentSession:(id)a3;
- (void)inactiveEnvironmentSession:(id)a3 didUpdateToPresentation:(id)a4;
- (void)setPresentation:(id)a3 withCompletion:(id)a4;
- (void)setPresentationWithFBScenes:(id)a3 flipbookContext:(id)a4 completion:(id)a5;
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

- (void)setPresentation:(id)a3 withCompletion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [v7 presentationEntries];
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 environment];
        [v15 setAlwaysOnEnabledForEnvironment:{-[BLSHBaseBacklightEnvironmentSessionProvider presentationEntrySupportsAlwaysOn:](self, "presentationEntrySupportsAlwaysOn:", v14)}];
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  os_unfair_lock_lock(&self->_lock);
  v16 = self->_lock_presentation;
  objc_storeStrong(&self->_lock_presentation, a3);
  v17 = MEMORY[0x223D70730](v8);
  lock_setPresentationCompletion = self->_lock_setPresentationCompletion;
  self->_lock_setPresentationCompletion = v17;

  v19 = [v7 isEqual:v16];
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
    v21 = v8;
  }

  v22 = MEMORY[0x223D70730](v21);
  v23 = self->_lock_setPresentationCompletion;
  self->_lock_setPresentationCompletion = v22;

  os_unfair_lock_unlock(&self->_lock);
  if (v19)
  {
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    [(BLSHBacklightInactiveEnvironmentSession *)v20 setPresentation:v7];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)setPresentationWithFBScenes:(id)a3 flipbookContext:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [a3 bs_mapNoNulls:&__block_literal_global_31];
  v10 = [[BLSHBacklightEnvironmentPresentation alloc] initWithPresentationEntries:v11 flipbookContext:v9 expirationDate:0];

  [(BLSHBaseBacklightEnvironmentSessionProvider *)self setPresentation:v10 withCompletion:v8];
}

BLSHPresentationEntry *__102__BLSHBaseBacklightEnvironmentSessionProvider_setPresentationWithFBScenes_flipbookContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 backlightSceneHostEnvironment];
  v3 = [[BLSHPresentationEntry alloc] initWithEnvironment:v2 userObject:0];

  return v3;
}

- (void)inactiveEnvironmentSession:(id)a3 didUpdateToPresentation:(id)a4
{
  v10 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_activeSession = self->_lock_activeSession;

  if (__PAIR128__(self->_lock_presentation, lock_activeSession) == __PAIR128__(v10, v6))
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

- (void)didEndInactiveEnvironmentSession:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_activeSession = self->_lock_activeSession;
  if (lock_activeSession == v5)
  {
    self->_lock_activeSession = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(BLSHBacklightInactiveEnvironmentSession *)v5 removeObserver:self];
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