@interface _LTInstallRequest
- (_LTInstallRequest)initWithCoder:(id)a3;
- (_LTInstallRequest)initWithLocales:(id)a3 useCellular:(BOOL)a4;
- (_LTSpeechTranslationDelegate)delegate;
- (void)_startInstallationWithService:(id)a3 done:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)languageInstallProgressed:(id)a3 error:(id)a4;
@end

@implementation _LTInstallRequest

- (_LTInstallRequest)initWithLocales:(id)a3 useCellular:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _LTInstallRequest;
  v8 = [(_LTInstallRequest *)&v13 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.siri.translation.speechrequest", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_locales, a3);
    v8->_useCellular = a4;
    v11 = v8;
  }

  return v8;
}

- (_LTInstallRequest)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _LTInstallRequest;
  v5 = [(_LTInstallRequest *)&v13 init];
  if (v5)
  {
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"locales"];
    locales = v5->_locales;
    v5->_locales = v8;

    v5->_useCellular = [v4 decodeBoolForKey:@"useCellular"];
    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  locales = self->_locales;
  v5 = a3;
  [v5 encodeObject:locales forKey:@"locales"];
  [v5 encodeBool:self->_useCellular forKey:@"useCellular"];
}

- (void)_startInstallationWithService:(id)a3 done:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _LTOSLogAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_DEFAULT, "Start installation request with service", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___LTInstallRequest__startInstallationWithService_done___block_invoke;
  block[3] = &unk_278B6CCE0;
  objc_copyWeak(&v15, buf);
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)languageInstallProgressed:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained languageInstallProgressed:v10 error:v6];

  if (v10 && (progressHandler = self->_progressHandler) != 0)
  {
    progressHandler[2](progressHandler, v10, v6);
  }

  else
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, v6);
    }
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end