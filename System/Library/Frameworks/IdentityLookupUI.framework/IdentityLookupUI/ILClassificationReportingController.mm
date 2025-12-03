@interface ILClassificationReportingController
- (ILClassificationReportingController)initWithHostViewController:(id)controller;
- (UIViewController)hostViewController;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)reportResponse:(id)response forExtension:(id)extension withCompletion:(id)completion;
- (void)reportResponseViaNetwork:(id)network forExtension:(id)extension withCompletion:(id)completion;
- (void)reportResponseViaSMS:(id)s forExtension:(id)extension withCompletion:(id)completion;
@end

@implementation ILClassificationReportingController

- (ILClassificationReportingController)initWithHostViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = ILClassificationReportingController;
  v5 = [(ILClassificationReportingController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostViewController, controllerCopy);
  }

  return v6;
}

- (void)reportResponse:(id)response forExtension:(id)extension withCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  extensionCopy = extension;
  completionCopy = completion;
  v11 = ILDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = responseCopy;
    v25 = 2112;
    v26 = extensionCopy;
    _os_log_impl(&dword_238A6C000, v11, OS_LOG_TYPE_DEFAULT, "response: %@ extension:%@", buf, 0x16u);
  }

  networkReportDestination = [extensionCopy networkReportDestination];
  sMSReportDestination = [extensionCopy SMSReportDestination];
  v14 = sMSReportDestination;
  if (networkReportDestination)
  {
    [(ILClassificationReportingController *)self reportResponseViaNetwork:responseCopy forExtension:extensionCopy withCompletion:completionCopy];
  }

  else if (sMSReportDestination)
  {
    [(ILClassificationReportingController *)self reportResponseViaSMS:responseCopy forExtension:extensionCopy withCompletion:completionCopy];
  }

  else
  {
    extensionCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Extension: %@ did not specify SMS or network report destination", extensionCopy];
    v16 = ILDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ILClassificationReportingController reportResponse:extensionCopy forExtension:v16 withCompletion:?];
    }

    v17 = MEMORY[0x277CCA9B8];
    v21 = @"Error";
    v22 = extensionCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = [v17 errorWithDomain:@"com.apple.IdentityLookupUI.ILClassificationReportingController" code:0 userInfo:v18];
    completionCopy[2](completionCopy, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)reportResponseViaNetwork:(id)network forExtension:(id)extension withCompletion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  v8 = MEMORY[0x277CD2C30];
  completionCopy = completion;
  networkCopy = network;
  v11 = objc_alloc_init(v8);
  v12 = ILDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [extensionCopy identifier];
    v19 = 138412290;
    v20 = identifier;
    _os_log_impl(&dword_238A6C000, v12, OS_LOG_TYPE_DEFAULT, "creating report request with identifier: %@", &v19, 0xCu);
  }

  v14 = objc_alloc(MEMORY[0x277CD2C20]);
  identifier2 = [extensionCopy identifier];
  userInfo = [networkCopy userInfo];

  v17 = [v14 initWithExtensionIdentifier:identifier2 jsonDictionary:userInfo];
  [v11 performClassificationReportRequest:v17 completion:completionCopy];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)reportResponseViaSMS:(id)s forExtension:(id)extension withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  completionCopy = completion;
  sCopy = s;
  sMSReportDestination = [extensionCopy SMSReportDestination];
  userString = [sCopy userString];

  if ([sMSReportDestination length] && objc_msgSend(userString, "length"))
  {
    [(ILClassificationReportingController *)self setCompletion:completionCopy];
    v13 = objc_alloc_init(CUTWeakLinkClass());
    v14 = ILDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = sMSReportDestination;
      v26 = 2112;
      v27 = userString;
      _os_log_impl(&dword_238A6C000, v14, OS_LOG_TYPE_DEFAULT, "reporting classification via SMS to %@ (%@)", buf, 0x16u);
    }

    v23 = sMSReportDestination;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v13 setRecipients:v15];

    [v13 setBody:userString];
    [v13 setMessageComposeDelegate:self];
    hostViewController = [(ILClassificationReportingController *)self hostViewController];
    [hostViewController presentViewController:v13 animated:1 completion:0];
    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Extension: %@ did not specify both SMS destination (%@) and userString (%@)", extensionCopy, sMSReportDestination, userString];
  v17 = ILDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ILClassificationReportingController reportResponseViaSMS:v13 forExtension:v17 withCompletion:?];
  }

  if (completionCopy)
  {
    v18 = MEMORY[0x277CCA9B8];
    v21 = @"Error";
    v22 = v13;
    hostViewController = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = [v18 errorWithDomain:@"com.apple.IdentityLookupUI.ILClassificationReportingController" code:0 userInfo:hostViewController];
    completionCopy[2](completionCopy, v19);

LABEL_10:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v5 = ILDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_238A6C000, v5, OS_LOG_TYPE_DEFAULT, "did finish sending message", v8, 2u);
  }

  completion = [(ILClassificationReportingController *)self completion];

  if (completion)
  {
    completion2 = [(ILClassificationReportingController *)self completion];
    completion2[2](completion2, 0);

    [(ILClassificationReportingController *)self setCompletion:0];
  }
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

- (void)reportResponse:(uint64_t)a1 forExtension:(NSObject *)a2 withCompletion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "error reporting response: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)reportResponseViaSMS:(uint64_t)a1 forExtension:(NSObject *)a2 withCompletion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_238A6C000, a2, OS_LOG_TYPE_ERROR, "error reporting SMS response: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end