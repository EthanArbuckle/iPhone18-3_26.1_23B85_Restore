@interface ILClassificationReportingController
- (ILClassificationReportingController)initWithHostViewController:(id)a3;
- (UIViewController)hostViewController;
- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)reportResponse:(id)a3 forExtension:(id)a4 withCompletion:(id)a5;
- (void)reportResponseViaNetwork:(id)a3 forExtension:(id)a4 withCompletion:(id)a5;
- (void)reportResponseViaSMS:(id)a3 forExtension:(id)a4 withCompletion:(id)a5;
@end

@implementation ILClassificationReportingController

- (ILClassificationReportingController)initWithHostViewController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ILClassificationReportingController;
  v5 = [(ILClassificationReportingController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostViewController, v4);
  }

  return v6;
}

- (void)reportResponse:(id)a3 forExtension:(id)a4 withCompletion:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = ILDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_238A6C000, v11, OS_LOG_TYPE_DEFAULT, "response: %@ extension:%@", buf, 0x16u);
  }

  v12 = [v9 networkReportDestination];
  v13 = [v9 SMSReportDestination];
  v14 = v13;
  if (v12)
  {
    [(ILClassificationReportingController *)self reportResponseViaNetwork:v8 forExtension:v9 withCompletion:v10];
  }

  else if (v13)
  {
    [(ILClassificationReportingController *)self reportResponseViaSMS:v8 forExtension:v9 withCompletion:v10];
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Extension: %@ did not specify SMS or network report destination", v9];
    v16 = ILDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ILClassificationReportingController reportResponse:v15 forExtension:v16 withCompletion:?];
    }

    v17 = MEMORY[0x277CCA9B8];
    v21 = @"Error";
    v22 = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = [v17 errorWithDomain:@"com.apple.IdentityLookupUI.ILClassificationReportingController" code:0 userInfo:v18];
    v10[2](v10, v19);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)reportResponseViaNetwork:(id)a3 forExtension:(id)a4 withCompletion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277CD2C30];
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v12 = ILDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v7 identifier];
    v19 = 138412290;
    v20 = v13;
    _os_log_impl(&dword_238A6C000, v12, OS_LOG_TYPE_DEFAULT, "creating report request with identifier: %@", &v19, 0xCu);
  }

  v14 = objc_alloc(MEMORY[0x277CD2C20]);
  v15 = [v7 identifier];
  v16 = [v10 userInfo];

  v17 = [v14 initWithExtensionIdentifier:v15 jsonDictionary:v16];
  [v11 performClassificationReportRequest:v17 completion:v9];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)reportResponseViaSMS:(id)a3 forExtension:(id)a4 withCompletion:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 SMSReportDestination];
  v12 = [v10 userString];

  if ([v11 length] && objc_msgSend(v12, "length"))
  {
    [(ILClassificationReportingController *)self setCompletion:v9];
    v13 = objc_alloc_init(CUTWeakLinkClass());
    v14 = ILDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_238A6C000, v14, OS_LOG_TYPE_DEFAULT, "reporting classification via SMS to %@ (%@)", buf, 0x16u);
    }

    v23 = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
    [v13 setRecipients:v15];

    [v13 setBody:v12];
    [v13 setMessageComposeDelegate:self];
    v16 = [(ILClassificationReportingController *)self hostViewController];
    [v16 presentViewController:v13 animated:1 completion:0];
    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Extension: %@ did not specify both SMS destination (%@) and userString (%@)", v8, v11, v12];
  v17 = ILDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [ILClassificationReportingController reportResponseViaSMS:v13 forExtension:v17 withCompletion:?];
  }

  if (v9)
  {
    v18 = MEMORY[0x277CCA9B8];
    v21 = @"Error";
    v22 = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = [v18 errorWithDomain:@"com.apple.IdentityLookupUI.ILClassificationReportingController" code:0 userInfo:v16];
    v9[2](v9, v19);

LABEL_10:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)messageComposeViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v5 = ILDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_238A6C000, v5, OS_LOG_TYPE_DEFAULT, "did finish sending message", v8, 2u);
  }

  v6 = [(ILClassificationReportingController *)self completion];

  if (v6)
  {
    v7 = [(ILClassificationReportingController *)self completion];
    v7[2](v7, 0);

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