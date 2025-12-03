@interface AMSHTTPArchiveMetrics
- (AMSHTTPArchiveMetrics)initWithCoder:(id)coder;
- (AMSHTTPArchiveMetrics)initWithTransactionMetrics:(id)metrics;
- (AMSHTTPArchiveMetrics)initWithURLSessionTaskMetrics:(id)metrics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSHTTPArchiveMetrics

- (AMSHTTPArchiveMetrics)initWithTransactionMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9.receiver = self;
  v9.super_class = AMSHTTPArchiveMetrics;
  v5 = [(AMSHTTPArchiveMetrics *)&v9 init];
  if (v5)
  {
    v6 = [metricsCopy copy];
    transactionMetrics = v5->_transactionMetrics;
    v5->_transactionMetrics = v6;
  }

  return v5;
}

- (AMSHTTPArchiveMetrics)initWithURLSessionTaskMetrics:(id)metrics
{
  v19 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  transactionMetrics = [metricsCopy transactionMetrics];
  v7 = [transactionMetrics countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v11 = [[AMSHTTPArchiveTransactionMetrics alloc] initWithURLSessionTaskTransactionMetrics:*(*(&v14 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [transactionMetrics countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(AMSHTTPArchiveMetrics *)self initWithTransactionMetrics:v5];
  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  transactionMetrics = [(AMSHTTPArchiveMetrics *)self transactionMetrics];
  [coderCopy encodeObject:transactionMetrics forKey:@"kCodingKeyTransactionMetrics"];
}

- (AMSHTTPArchiveMetrics)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"kCodingKeyTransactionMetrics"];

  v9 = [(AMSHTTPArchiveMetrics *)self initWithTransactionMetrics:v8];
  return v9;
}

@end