@interface LARatchetViewController
+ (id)makeViewControllerWithOptions:(id)options;
+ (id)makeViewControllerWithOptions:(id)options configuration:(id)configuration;
- (LARatchetViewController)initWithOptions:(id)options configuration:(id)configuration;
- (LARatchetViewControllerDelegate)delegate;
- (id)presentationContext;
- (void)clean;
- (void)dealloc;
- (void)finishWithResult:(id)result error:(id)error;
- (void)invalidate;
- (void)setIsInViewHierarchy:(BOOL)hierarchy;
@end

@implementation LARatchetViewController

- (LARatchetViewController)initWithOptions:(id)options configuration:(id)configuration
{
  v27 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = LARatchetViewController;
  v8 = [(LARatchetViewController *)&v20 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_isInViewHierarchy = 0;
    v10 = [optionsCopy objectForKeyedSubscript:&unk_284B876D8];
    objc_storeWeak(&v9->_presentationContext, v10);

    v11 = [optionsCopy mutableCopy];
    [v11 removeObjectForKey:&unk_284B876D8];
    objc_storeStrong(&v9->_options, v11);
    v12 = [MEMORY[0x277CD47B0] optionsForRatchetArmOptions:optionsCopy];
    internalOptions = v9->_internalOptions;
    v9->_internalOptions = v12;

    v14 = configurationCopy;
    if (!configurationCopy)
    {
      v14 = objc_opt_new();
    }

    objc_storeStrong(&v9->_configuration, v14);
    if (!configurationCopy)
    {
    }

    objc_storeWeak(&v9->_delegate, 0);
    v15 = [objc_alloc(MEMORY[0x277D757F0]) initWithTransitionStyle:1 navigationOrientation:0 options:0];
    pageViewController = v9->_pageViewController;
    v9->_pageViewController = v15;

    v17 = LACLogDTO();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v9;
      v23 = 2112;
      v24 = optionsCopy;
      v25 = 2112;
      v26 = configurationCopy;
      _os_log_impl(&dword_238BCD000, v17, OS_LOG_TYPE_DEFAULT, "%@ created with options: %@ configuration: %@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  viewModel = [(LARatchetViewController *)self viewModel];
  [viewModel stopWithReason:@"Instance was deallocated" invalidate:0];

  [(LARatchetViewController *)self clean];
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_238BCD000, v4, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = LARatchetViewController;
  [(LARatchetViewController *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setIsInViewHierarchy:(BOOL)hierarchy
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_isInViewHierarchy != hierarchy)
  {
    hierarchyCopy = hierarchy;
    v5 = LACLogDTO();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(LARatchetViewController *)self setIsInViewHierarchy:hierarchyCopy, v5];
    }

    self->_isInViewHierarchy = hierarchyCopy;
    if (hierarchyCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = LACLogDTO();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = objc_loadWeakRetained(&self->_delegate);
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          selfCopy = self;
          _os_log_impl(&dword_238BCD000, v8, OS_LOG_TYPE_DEFAULT, "%@ informed that %@ appeared", &v12, 0x16u);
        }

        v10 = objc_loadWeakRetained(&self->_delegate);
        [v10 ratchetViewControllerDidAppear:self];
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)presentationContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContext);

  return WeakRetained;
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [MEMORY[0x277CD47B0] ratchetResultForResult:resultCopy];
    v11 = [MEMORY[0x277CD47B0] ratchetErrorForError:errorCopy];
    [v9 ratchetViewController:self didFinishWithResult:v10 error:v11];
  }
}

- (LARatchetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)makeViewControllerWithOptions:(id)options
{
  sub_238BF3428();
  swift_getObjCClassMetadata();
  v3 = sub_238BECE3C();

  return v3;
}

+ (id)makeViewControllerWithOptions:(id)options configuration:(id)configuration
{
  v5 = sub_238BF3428();
  swift_getObjCClassMetadata();
  configurationCopy = configuration;
  v7 = sub_238BECF40(v5, configurationCopy);

  return v7;
}

- (void)invalidate
{
  selfCopy = self;
  sub_238BED908();
}

- (void)clean
{
  selfCopy = self;
  sub_238BEDC18();
}

- (void)setIsInViewHierarchy:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = a2;
  _os_log_debug_impl(&dword_238BCD000, log, OS_LOG_TYPE_DEBUG, "%@ is in view hierarchy %d", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end