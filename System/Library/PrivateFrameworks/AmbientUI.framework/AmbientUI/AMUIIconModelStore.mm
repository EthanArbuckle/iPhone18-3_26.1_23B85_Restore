@interface AMUIIconModelStore
- (AMUIIconModelStoreDelegate)iconModelStoreDelegate;
- (BOOL)saveCurrentIconState:(id)state error:(id *)error;
- (PRSPosterConfiguration)posterConfiguration;
- (id)loadCurrentIconState:(id *)state;
@end

@implementation AMUIIconModelStore

- (BOOL)saveCurrentIconState:(id)state error:(id *)error
{
  stateCopy = state;
  iconModelStoreDelegate = [(AMUIIconModelStore *)self iconModelStoreDelegate];
  v14 = 0;
  v8 = [iconModelStoreDelegate iconModelStore:self saveIconState:stateCopy toPosterConfigurationWithError:&v14];

  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = v9;
    *error = v10;
    v12 = AMUILogInfograph();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AMUIIconModelStore saveCurrentIconState:v10 error:v12];
    }
  }

  return v8;
}

- (id)loadCurrentIconState:(id *)state
{
  iconModelStoreDelegate = [(AMUIIconModelStore *)self iconModelStoreDelegate];
  v11 = 0;
  v6 = [iconModelStoreDelegate iconModelStore:self loadIconStateFromPosterConfigurationWithError:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = AMUILogInfograph();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AMUIIconModelStore *)v7 loadCurrentIconState:v8];
    }

    if (v7)
    {
      v9 = v7;
      *state = v7;
    }
  }

  return v6;
}

- (AMUIIconModelStoreDelegate)iconModelStoreDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_iconModelStoreDelegate);

  return WeakRetained;
}

- (PRSPosterConfiguration)posterConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_posterConfiguration);

  return WeakRetained;
}

- (void)saveCurrentIconState:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Failed to save icon state in poster configuration withError:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadCurrentIconState:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Received nil icon state from poster configuration with error:%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end