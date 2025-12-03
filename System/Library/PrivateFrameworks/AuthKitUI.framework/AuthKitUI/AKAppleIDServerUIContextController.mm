@interface AKAppleIDServerUIContextController
- (AKAppleIDServerUIContextController)initWithRequestConfiguration:(id)configuration completion:(id)completion;
- (BOOL)handleAuthKitActionAttribute:(id)attribute;
- (id)_headerValueFromType:(unint64_t)type;
- (void)_completeWithResponse:(id)response additionalData:(id)data error:(id)error;
- (void)completeWithError:(id)error;
- (void)completeWithError:(id)error additionalData:(id)data;
- (void)completeWithFinalResponse:(id)response;
- (void)processResponse:(id)response;
- (void)signRequest:(id)request withCompletionHandler:(id)handler;
- (void)tearDownContext;
@end

@implementation AKAppleIDServerUIContextController

- (void)tearDownContext
{
  serverUICompletion = self->_serverUICompletion;
  self->_serverUICompletion = 0;
  MEMORY[0x277D82BD8](serverUICompletion);
  objc_storeStrong(&self->_initiatingURL, 0);
}

- (AKAppleIDServerUIContextController)initWithRequestConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  v4 = selfCopy;
  selfCopy = 0;
  v17 = [(AKAppleIDServerUIContextController *)v4 init];
  selfCopy = v17;
  objc_storeStrong(&selfCopy, v17);
  if (v17)
  {
    resourceLoadDelegate = [location[0] resourceLoadDelegate];
    serverUIDelegate = selfCopy->_serverUIDelegate;
    selfCopy->_serverUIDelegate = resourceLoadDelegate;
    MEMORY[0x277D82BD8](serverUIDelegate);
    v7 = MEMORY[0x223DB6C90](v18);
    serverUICompletion = selfCopy->_serverUICompletion;
    selfCopy->_serverUICompletion = v7;
    MEMORY[0x277D82BD8](serverUICompletion);
    request = [location[0] request];
    v9 = [request URL];
    initiatingURL = selfCopy->_initiatingURL;
    selfCopy->_initiatingURL = v9;
    MEMORY[0x277D82BD8](initiatingURL);
    MEMORY[0x277D82BD8](request);
    objc_storeStrong(&selfCopy->_configuration, location[0]);
    v11 = objc_opt_new();
    serverDataHarvester = selfCopy->_serverDataHarvester;
    selfCopy->_serverDataHarvester = v11;
    MEMORY[0x277D82BD8](serverDataHarvester);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (BOOL)handleAuthKitActionAttribute:(id)attribute
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attribute);
  if (location[0])
  {
    v8 = _AKLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v12, location[0]);
      _os_log_impl(&dword_222379000, v8, OS_LOG_TYPE_DEFAULT, "Detected BuddyML button tap with %@ action", v12, 0xCu);
    }

    objc_storeStrong(&v8, 0);
  }

  if ([location[0] isEqualToString:*MEMORY[0x277CEFED8]])
  {
    v6 = selfCopy;
    v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7038];
    [(AKAppleIDServerUIContextController *)v6 completeWithError:?];
    MEMORY[0x277D82BD8](v7);
LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  if ([location[0] isEqualToString:*MEMORY[0x277CEFEC8]])
  {
    v4 = selfCopy;
    v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
    [(AKAppleIDServerUIContextController *)v4 completeWithError:?];
    MEMORY[0x277D82BD8](v5);
    goto LABEL_12;
  }

  if ([location[0] isEqualToString:*MEMORY[0x277CEFED0]])
  {
    [(AKAppleIDServerUIContextController *)selfCopy completeWithFinalResponse:selfCopy->_latestReadResponse];
    goto LABEL_12;
  }

  v11 = 0;
LABEL_13:
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (void)signRequest:(id)request withCompletionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  presentationType = [(AKServerRequestConfiguration *)selfCopy->_configuration presentationType];
  v9 = 0;
  v6 = 0;
  if (presentationType)
  {
    v10 = [location[0] URL];
    v9 = 1;
    v6 = [v10 isEqual:selfCopy->_initiatingURL];
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v6)
  {
    v8 = [(AKAppleIDServerUIContextController *)selfCopy _headerValueFromType:[(AKServerRequestConfiguration *)selfCopy->_configuration presentationType]];
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v14, v8);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Signing request with presentation action: %@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v8)
    {
      [location[0] setValue:v8 forHTTPHeaderField:@"X-Apple-ServerUI-Action"];
    }

    objc_storeStrong(&v8, 0);
  }

  [(AKAppleIDServerResourceLoadDelegate *)selfCopy->_serverUIDelegate signRequest:location[0] withCompletionHandler:v11];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_headerValueFromType:(unint64_t)type
{
  location[3] = self;
  location[2] = a2;
  location[1] = type;
  location[0] = 0;
  if (type == 1)
  {
LABEL_4:
    objc_storeStrong(location, @"push");
    goto LABEL_6;
  }

  if (type != 2)
  {
    if (type != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  objc_storeStrong(location, @"showModal");
LABEL_6:
  v4 = MEMORY[0x277D82BE0](location[0]);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)processResponse:(id)response
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v7, location[0]);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "Processing a server UI response: %@", v7, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  if ([MEMORY[0x277CF0180] signalFromServerResponse:location[0]] == 6)
  {
    objc_storeStrong(&selfCopy->_latestReadResponse, location[0]);
  }

  if (location[0])
  {
    serverDataHarvester = [(AKAppleIDServerUIContextController *)selfCopy serverDataHarvester];
    [(AKAppleIDServerUIDataHarvester *)serverDataHarvester harvestDataFromServerHTTPResponse:location[0]];
    MEMORY[0x277D82BD8](serverDataHarvester);
    [(AKAppleIDServerResourceLoadDelegate *)selfCopy->_serverUIDelegate processResponse:location[0]];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)completeWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  [(AKAppleIDServerUIContextController *)selfCopy _completeWithResponse:0 additionalData:0 error:location[0]];
  objc_storeStrong(location, 0);
}

- (void)completeWithError:(id)error additionalData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v5 = 0;
  objc_storeStrong(&v5, data);
  [(AKAppleIDServerUIContextController *)selfCopy _completeWithResponse:0 additionalData:v5 error:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)completeWithFinalResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v4 = selfCopy;
  v3 = location[0];
  serverDataHarvester = [(AKAppleIDServerUIContextController *)selfCopy serverDataHarvester];
  harvestedData = [(AKAppleIDServerUIDataHarvester *)serverDataHarvester harvestedData];
  [AKAppleIDServerUIContextController _completeWithResponse:v4 additionalData:"_completeWithResponse:additionalData:error:" error:v3];
  MEMORY[0x277D82BD8](harvestedData);
  MEMORY[0x277D82BD8](serverDataHarvester);
  objc_storeStrong(location, 0);
}

- (void)_completeWithResponse:(id)response additionalData:(id)data error:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v24 = 0;
  objc_storeStrong(&v24, data);
  v23 = 0;
  objc_storeStrong(&v23, error);
  if (selfCopy->_serverUICompletion)
  {
    if (location[0])
    {
      v19 = _AKLogSystem();
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v29, location[0]);
        _os_log_impl(&dword_222379000, v19, v18, "Completed server UI request with final response: %@", v29, 0xCu);
      }

      objc_storeStrong(&v19, 0);
      v17 = _AKLogSystem();
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        allHeaderFields = [location[0] allHeaderFields];
        __os_log_helper_16_2_1_8_64(v28, allHeaderFields);
        _os_log_impl(&dword_222379000, v17, v16, "Final response headers: %@", v28, 0xCu);
        MEMORY[0x277D82BD8](allHeaderFields);
      }

      objc_storeStrong(&v17, 0);
    }

    else if (v23)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v27, v23);
        _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Completed server UI request with error: %@", v27, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    serverUICompletion = selfCopy->_serverUICompletion;
    v6 = location[0];
    v7 = v24;
    ac_secureCodingError = [v23 ac_secureCodingError];
    serverUICompletion[2](serverUICompletion, v6, v7);
    MEMORY[0x277D82BD8](ac_secureCodingError);
    v5 = selfCopy->_serverUICompletion;
    selfCopy->_serverUICompletion = 0;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v22 = _AKLogSystem();
    v21 = 16;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_error_impl(&dword_222379000, log, type, "We're done with the server UI flow client-side, but there's no completion block to call!", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end