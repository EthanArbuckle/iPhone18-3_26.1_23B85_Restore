@interface WFGetExternalAddressOperation
- (void)dealloc;
- (void)handleStreamEvent:(unint64_t)a3;
- (void)setError:(id)a3;
- (void)setResult:(id)a3;
- (void)setStream:(__CFReadStream *)a3;
- (void)start;
- (void)update;
@end

@implementation WFGetExternalAddressOperation

- (void)update
{
  [(WFGetExternalAddressOperation *)self willChangeValueForKey:@"isExecuting"];
  [(WFGetExternalAddressOperation *)self didChangeValueForKey:@"isExecuting"];
  [(WFGetExternalAddressOperation *)self willChangeValueForKey:@"isFinished"];

  [(WFGetExternalAddressOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)setError:(id)a3
{
  objc_storeStrong(&self->_error, a3);

  [(WFGetExternalAddressOperation *)self update];
}

- (void)setResult:(id)a3
{
  objc_storeStrong(&self->_result, a3);

  [(WFGetExternalAddressOperation *)self update];
}

- (void)handleStreamEvent:(unint64_t)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3 == 16)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_data encoding:4];
    [(WFGetExternalAddressOperation *)self setResult:v6];

    v7 = [(WFGetExternalAddressOperation *)self result];

    if (!v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA5B8];
      v16 = *MEMORY[0x277CCA450];
      v10 = WFLocalizedString(@"The response data was not a valid string.");
      v17[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12 = [v8 errorWithDomain:v9 code:79 userInfo:v11];
      [(WFGetExternalAddressOperation *)self setError:v12];
    }

    goto LABEL_12;
  }

  if (a3 != 8)
  {
    if (a3 == 2)
    {
      v4 = CFReadStreamRead(self->_stream, v14, 1024);
      if (v4 >= 1)
      {
        [(NSMutableData *)self->_data appendBytes:v14 length:v4];
      }
    }

LABEL_12:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v15 = CFReadStreamCopyError(self->_stream);
  [(WFGetExternalAddressOperation *)self setError:?];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  stream = self->_stream;
  if (stream)
  {
    CFRelease(stream);
  }

  v4.receiver = self;
  v4.super_class = WFGetExternalAddressOperation;
  [(WFGetExternalAddressOperation *)&v4 dealloc];
}

- (void)setStream:(__CFReadStream *)a3
{
  stream = self->_stream;
  if (a3)
  {
    CFRetain(a3);
  }

  self->_stream = a3;
  if (stream)
  {

    CFRelease(stream);
  }
}

- (void)start
{
  v3 = MEMORY[0x277CCACE0];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.icloud.com/shortcuts/api/external_ip"];
  v5 = [v3 componentsWithURL:v4 resolvingAgainstBaseURL:0];

  v6 = [v5 host];
  v7 = +[WFNetworkInterface activeNetworkInterface];
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__WFGetExternalAddressOperation_start__block_invoke;
    block[3] = &unk_278C21F68;
    v11 = v6;
    v12 = self;
    v13 = v5;
    dispatch_async(v8, block);
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:50 userInfo:0];
    [(WFGetExternalAddressOperation *)self setError:v9];
  }
}

void __38__WFGetExternalAddressOperation_start__block_invoke(id *a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] UTF8String];
  if ([a1[5] useIPv6])
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  v4 = gethostbyname2(v2, v3);
  if (!v4)
  {
    v8 = MEMORY[0x277D85EE0];
    v9 = hstrerror(*MEMORY[0x277D85EE0]);
    if (v9)
    {
      v38 = *MEMORY[0x277CCA450];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
      v39[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    }

    else
    {
      v11 = 0;
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFNetDBErrorDomain" code:*v8 userInfo:v11];
    [a1[5] setError:v17];

    goto LABEL_26;
  }

  v5 = v4;
  v6 = *v4->h_addr_list;
  if (!v6)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D85EE0];
    v36 = *MEMORY[0x277CCA450];
    v11 = WFLocalizedString(@"The domain could not be found.");
    v37 = v11;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v37;
    v16 = &v36;
LABEL_25:
    v28 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v29 = [v12 errorWithDomain:@"WFNetDBErrorDomain" code:v13 userInfo:v28];
    [a1[5] setError:v29];

    goto LABEL_26;
  }

  h_addrtype = v4->h_addrtype;
  if (h_addrtype == 2)
  {
    clientContext.info = 0;
    clientContext.version = 528;
    HIDWORD(clientContext.version) = *v6;
  }

  else
  {
    if (h_addrtype != 30)
    {
LABEL_24:
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D85EE0];
      v34 = *MEMORY[0x277CCA450];
      v11 = WFLocalizedString(@"The domain could not be found. (Error 2)");
      v35 = v11;
      v14 = MEMORY[0x277CBEAC0];
      v15 = &v35;
      v16 = &v34;
      goto LABEL_25;
    }

    memset(&clientContext.info, 0, 20);
    clientContext.version = 28;
    *&clientContext.info = *v6;
    BYTE1(clientContext.version) = 30;
  }

  v11 = WFStringFromIPSocketAddress(&clientContext);
  if (!v11)
  {
    goto LABEL_24;
  }

  if (v5->h_addrtype == 30)
  {
    v18 = @"[%@]";
  }

  else
  {
    v18 = @"%@";
  }

  v19 = [MEMORY[0x277CCACA8] stringWithFormat:v18, v11];
  [a1[6] setPercentEncodedHost:v19];

  v20 = *MEMORY[0x277CBECE8];
  v21 = [a1[6] URL];
  Request = CFHTTPMessageCreateRequest(v20, @"GET", v21, *MEMORY[0x277CBAD00]);

  CFHTTPMessageSetHeaderFieldValue(Request, @"Host", a1[4]);
  v23 = CFReadStreamCreateForHTTPRequest(v20, Request);
  CFReadStreamSetProperty(v23, *MEMORY[0x277CBAE08], *MEMORY[0x277CBED28]);
  v24 = *MEMORY[0x277CBAE68];
  v25 = a1[4];
  v32 = *MEMORY[0x277CBAEC8];
  v33 = v25;
  CFReadStreamSetProperty(v23, v24, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1]);
  [a1[5] setStream:v23];
  v26 = objc_opt_new();
  [a1[5] setData:v26];

  if (v23)
  {
    CFRelease(v23);
  }

  if (Request)
  {
    CFRelease(Request);
  }

  memset(&clientContext, 0, sizeof(clientContext));
  clientContext.info = a1[5];
  CFReadStreamSetClient(v23, 0x1AuLL, WFStreamClientCallback, &clientContext);
  Main = CFRunLoopGetMain();
  CFReadStreamScheduleWithRunLoop(v23, Main, *MEMORY[0x277CBF058]);
  CFReadStreamOpen(v23);
LABEL_26:

  v30 = *MEMORY[0x277D85DE8];
}

@end