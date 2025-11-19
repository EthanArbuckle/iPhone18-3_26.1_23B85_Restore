@interface LARatchetViewController
+ (id)makeViewControllerWithOptions:(id)a3;
+ (id)makeViewControllerWithOptions:(id)a3 configuration:(id)a4;
- (LARatchetViewController)initWithOptions:(id)a3 configuration:(id)a4;
- (LARatchetViewControllerDelegate)delegate;
- (id)presentationContext;
- (void)clean;
- (void)dealloc;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)invalidate;
- (void)setIsInViewHierarchy:(BOOL)a3;
@end

@implementation LARatchetViewController

- (LARatchetViewController)initWithOptions:(id)a3 configuration:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = LARatchetViewController;
  v8 = [(LARatchetViewController *)&v20 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_isInViewHierarchy = 0;
    v10 = [v6 objectForKeyedSubscript:&unk_284B876D8];
    objc_storeWeak(&v9->_presentationContext, v10);

    v11 = [v6 mutableCopy];
    [v11 removeObjectForKey:&unk_284B876D8];
    objc_storeStrong(&v9->_options, v11);
    v12 = [MEMORY[0x277CD47B0] optionsForRatchetArmOptions:v6];
    internalOptions = v9->_internalOptions;
    v9->_internalOptions = v12;

    v14 = v7;
    if (!v7)
    {
      v14 = objc_opt_new();
    }

    objc_storeStrong(&v9->_configuration, v14);
    if (!v7)
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
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_238BCD000, v17, OS_LOG_TYPE_DEFAULT, "%@ created with options: %@ configuration: %@", buf, 0x20u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(LARatchetViewController *)self viewModel];
  [v3 stopWithReason:@"Instance was deallocated" invalidate:0];

  [(LARatchetViewController *)self clean];
  v4 = LACLogDTO();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = self;
    _os_log_impl(&dword_238BCD000, v4, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = LARatchetViewController;
  [(LARatchetViewController *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setIsInViewHierarchy:(BOOL)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_isInViewHierarchy != a3)
  {
    v3 = a3;
    v5 = LACLogDTO();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(LARatchetViewController *)self setIsInViewHierarchy:v3, v5];
    }

    self->_isInViewHierarchy = v3;
    if (v3)
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
          v15 = self;
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = [MEMORY[0x277CD47B0] ratchetResultForResult:v12];
    v11 = [MEMORY[0x277CD47B0] ratchetErrorForError:v6];
    [v9 ratchetViewController:self didFinishWithResult:v10 error:v11];
  }
}

- (LARatchetViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (id)makeViewControllerWithOptions:(id)a3
{
  sub_238BF3428();
  swift_getObjCClassMetadata();
  v3 = sub_238BECE3C();

  return v3;
}

+ (id)makeViewControllerWithOptions:(id)a3 configuration:(id)a4
{
  v5 = sub_238BF3428();
  swift_getObjCClassMetadata();
  v6 = a4;
  v7 = sub_238BECF40(v5, v6);

  return v7;
}

- (void)invalidate
{
  v2 = self;
  sub_238BED908();
}

- (void)clean
{
  v2 = self;
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