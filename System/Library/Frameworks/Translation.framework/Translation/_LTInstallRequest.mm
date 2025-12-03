@interface _LTInstallRequest
- (_LTInstallRequest)initWithCoder:(id)coder;
- (_LTInstallRequest)initWithLocales:(id)locales useCellular:(BOOL)cellular;
- (_LTSpeechTranslationDelegate)delegate;
- (void)_startInstallationWithService:(id)service done:(id)done;
- (void)encodeWithCoder:(id)coder;
- (void)languageInstallProgressed:(id)progressed error:(id)error;
@end

@implementation _LTInstallRequest

- (_LTInstallRequest)initWithLocales:(id)locales useCellular:(BOOL)cellular
{
  localesCopy = locales;
  v13.receiver = self;
  v13.super_class = _LTInstallRequest;
  v8 = [(_LTInstallRequest *)&v13 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.siri.translation.speechrequest", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeStrong(&v8->_locales, locales);
    v8->_useCellular = cellular;
    v11 = v8;
  }

  return v8;
}

- (_LTInstallRequest)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _LTInstallRequest;
  v5 = [(_LTInstallRequest *)&v13 init];
  if (v5)
  {
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v7 = [MEMORY[0x277CBEB98] setWithArray:v6];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"locales"];
    locales = v5->_locales;
    v5->_locales = v8;

    v5->_useCellular = [coderCopy decodeBoolForKey:@"useCellular"];
    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  locales = self->_locales;
  coderCopy = coder;
  [coderCopy encodeObject:locales forKey:@"locales"];
  [coderCopy encodeBool:self->_useCellular forKey:@"useCellular"];
}

- (void)_startInstallationWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
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
  v13 = serviceCopy;
  v14 = doneCopy;
  v10 = serviceCopy;
  v11 = doneCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)languageInstallProgressed:(id)progressed error:(id)error
{
  progressedCopy = progressed;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained languageInstallProgressed:progressedCopy error:errorCopy];

  if (progressedCopy && (progressHandler = self->_progressHandler) != 0)
  {
    progressHandler[2](progressHandler, progressedCopy, errorCopy);
  }

  else
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, errorCopy);
    }
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end