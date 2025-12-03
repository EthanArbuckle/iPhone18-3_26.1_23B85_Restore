@interface APBrokerHTTPUtilsTaskDelegate
- (APBrokerHTTPUtilsTaskDelegate)initWithLogContext:(void *)context sslCertificateHostName:(id)name;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation APBrokerHTTPUtilsTaskDelegate

- (APBrokerHTTPUtilsTaskDelegate)initWithLogContext:(void *)context sslCertificateHostName:(id)name
{
  v9.receiver = self;
  v9.super_class = APBrokerHTTPUtilsTaskDelegate;
  v6 = [(APBrokerHTTPUtilsTaskDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_logContext = context;
    if (name)
    {
      v6->_sslCertificateHostName = name;
    }

    else
    {
      [APBrokerHTTPUtilsTaskDelegate initWithLogContext:v6 sslCertificateHostName:?];
      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  self->_sslCertificateHostName = 0;
  v3.receiver = self;
  v3.super_class = APBrokerHTTPUtilsTaskDelegate;
  [(APBrokerHTTPUtilsTaskDelegate *)&v3 dealloc];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v9 = [objc_msgSend(challenge "protectionSpace")];
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    [APBrokerHTTPUtilsTaskDelegate URLSession:challenge task:? didReceiveChallenge:? completionHandler:?];
  }

  v10 = [objc_msgSend(challenge "protectionSpace")];
  if ([v10 isEqualToString:*MEMORY[0x277CCA720]])
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    SSL = SecPolicyCreateSSL(1u, self->_sslCertificateHostName);
    v13 = SSL;
    if (SSL)
    {
      v19[0] = SSL;
      SecTrustSetPolicies(v9, [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1]);
      if (SecTrustEvaluateWithError(v9, &error))
      {
        v12 = [MEMORY[0x277CCACF0] credentialForTrust:v9];
        v14 = 0;
        goto LABEL_17;
      }

      if (gLogCategory_APBrokerHTTPUtils >= 91)
      {
        (*(handler + 2))(handler, 2, 0);
LABEL_22:
        CFRelease(v13);
        goto LABEL_23;
      }

      if (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize())
      {
        [APBrokerHTTPUtilsTaskDelegate URLSession:&error task:? didReceiveChallenge:? completionHandler:?];
      }
    }

    else
    {
      [APBrokerHTTPUtilsTaskDelegate URLSession:task:didReceiveChallenge:completionHandler:];
    }

    v12 = 0;
    v14 = 2;
    goto LABEL_17;
  }

  v12 = 0;
  v13 = 0;
  v14 = 1;
LABEL_17:
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    logContext = self->_logContext;
    LogPrintF();
  }

  (*(handler + 2))(handler, v14, v12);
  if (v13)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    CFRelease(error);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (uint64_t)URLSession:(uint64_t)a1 task:(void *)a2 didReceiveChallenge:completionHandler:.cold.1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  [objc_msgSend(a2 "protectionSpace")];
  return LogPrintF();
}

- (uint64_t)URLSession:(uint64_t)a1 task:(uint64_t *)a2 didReceiveChallenge:completionHandler:.cold.2(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  return LogPrintF();
}

@end