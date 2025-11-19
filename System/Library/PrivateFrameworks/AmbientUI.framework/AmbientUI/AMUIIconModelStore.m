@interface AMUIIconModelStore
- (AMUIIconModelStoreDelegate)iconModelStoreDelegate;
- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4;
- (PRSPosterConfiguration)posterConfiguration;
- (id)loadCurrentIconState:(id *)a3;
@end

@implementation AMUIIconModelStore

- (BOOL)saveCurrentIconState:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(AMUIIconModelStore *)self iconModelStoreDelegate];
  v14 = 0;
  v8 = [v7 iconModelStore:self saveIconState:v6 toPosterConfigurationWithError:&v14];

  v9 = v14;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = v9;
    *a4 = v10;
    v12 = AMUILogInfograph();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [AMUIIconModelStore saveCurrentIconState:v10 error:v12];
    }
  }

  return v8;
}

- (id)loadCurrentIconState:(id *)a3
{
  v5 = [(AMUIIconModelStore *)self iconModelStoreDelegate];
  v11 = 0;
  v6 = [v5 iconModelStore:self loadIconStateFromPosterConfigurationWithError:&v11];
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
      *a3 = v7;
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