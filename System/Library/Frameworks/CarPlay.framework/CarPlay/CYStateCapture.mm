@interface CYStateCapture
- (CYStateCapture)initWithIdentifier:(id)a3 capture:(id)a4;
- (id)description;
- (os_state_data_s)stateCapture;
- (void)dealloc;
- (void)stateCapture;
@end

@implementation CYStateCapture

- (CYStateCapture)initWithIdentifier:(id)a3 capture:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = CYStateCapture;
  v8 = [(CYStateCapture *)&v23 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = MEMORY[0x2383C2A40](v7);
    capture = v8->_capture;
    v8->_capture = v11;

    v13 = CarPlayFrameworkStateCaptureLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v8;
      v26 = 2080;
      v27 = "[CYStateCapture initWithIdentifier:capture:]";
      _os_log_impl(&dword_236ED4000, v13, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.caraccessoryframework.StateCapture-%@-%p", v8->_identifier, v8];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    queue = v8->_queue;
    v8->_queue = v17;

    objc_initWeak(buf, v8);
    v19 = v8->_queue;
    objc_copyWeak(&v22, buf);
    v8->_handler = os_state_add_handler();
    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t __45__CYStateCapture_initWithIdentifier_capture___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = CarPlayFrameworkStateCaptureLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "%@ got called os_state_add_handler", &v8, 0xCu);
  }

  if (WeakRetained && *(a2 + 16) == 3)
  {
    v5 = [WeakRetained stateCapture];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkStateCaptureLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v7 = self;
    v8 = 2080;
    v9 = "[CYStateCapture dealloc]";
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if ([(CYStateCapture *)self handler])
  {
    [(CYStateCapture *)self handler];
    os_state_remove_handler();
  }

  v5.receiver = self;
  v5.super_class = CYStateCapture;
  [(CYStateCapture *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CYStateCapture *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier=%@>", v4, self, v5];

  return v6;
}

- (os_state_data_s)stateCapture
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(CYStateCapture *)self capture];
  v4 = v3[2]();

  v17 = 0;
  v5 = MEMORY[0x2383C2580](v4, 0, &v17);
  v6 = v5;
  if (v17)
  {
    v7 = CarPlayFrameworkStateCaptureLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CYStateCapture *)self stateCapture];
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if ([v5 length] >= 0x7D01)
  {
    v7 = CarPlayFrameworkStateCaptureLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CYStateCapture *)self stateCapture];
    }

    goto LABEL_12;
  }

  v8 = [v6 length];
  v9 = v8;
  v10 = malloc_type_calloc(1uLL, v8 + 200, 0x1000040BEF03554uLL);
  if (!v10)
  {
    v7 = CarPlayFrameworkStateCaptureLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CYStateCapture *)self stateCapture];
    }

    goto LABEL_12;
  }

  v11 = v10;
  v10->var0 = 3;
  __strlcpy_chk();
  v12 = objc_opt_class();
  class_getName(v12);
  __strlcpy_chk();
  v11->var1.var1 = v8;
  v13 = [(CYStateCapture *)self identifier];
  [v13 UTF8String];
  __strlcpy_chk();

  memcpy(v11->var4, [v6 bytes], v9);
  v7 = CarPlayFrameworkStateCaptureLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 length];
    *buf = 138412546;
    v19 = self;
    v20 = 2048;
    v21 = v14;
    _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "%@ captured state data.length=%lu", buf, 0x16u);
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)stateCapture
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 138412546;
  v6 = a1;
  v7 = 2048;
  v8 = [a2 length];
  _os_log_error_impl(&dword_236ED4000, a3, OS_LOG_TYPE_ERROR, "%@ over data limit, length=%lu", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end