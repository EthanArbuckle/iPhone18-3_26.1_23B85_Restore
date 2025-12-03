@interface SKPaymentTransaction
- (BOOL)canMergeWithTransaction:(id)transaction;
- (BOOL)mergeWithServerTransaction:(id)transaction;
- (BOOL)mergeWithTransaction:(id)transaction;
- (NSString)matchingIdentifier;
- (SKPaymentTransaction)init;
- (SKPaymentTransaction)initWithPayment:(id)payment;
- (SKPaymentTransaction)initWithServerTransaction:(id)transaction;
- (void)_setAuthorizationResponse:(id)response;
- (void)_setDownloads:(id)downloads;
- (void)_setError:(id)error;
- (void)_setOriginalTransaction:(id)transaction;
- (void)_setTemporaryIdentifier:(id)identifier;
- (void)_setTransactionDate:(id)date;
- (void)_setTransactionIdentifier:(id)identifier;
- (void)_setTransactionReceipt:(id)receipt;
@end

@implementation SKPaymentTransaction

- (SKPaymentTransaction)init
{
  v6.receiver = self;
  v6.super_class = SKPaymentTransaction;
  v2 = [(SKPaymentTransaction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKPaymentTransactionInternal);
    internal = v2->_internal;
    v2->_internal = v3;
  }

  return v2;
}

- (SKPaymentTransaction)initWithPayment:(id)payment
{
  paymentCopy = payment;
  v5 = [(SKPaymentTransaction *)self init];
  v6 = v5;
  if (v5)
  {
    v7 = v5->_internal;
    v8 = [paymentCopy copy];
    v9 = v7[5];
    v7[5] = v8;
  }

  return v6;
}

- (BOOL)canMergeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(self->_internal + 5);
  v7 = *(transactionCopy[1] + 40);
  v8 = v7;
  if (isKindOfClass)
  {
    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 isEqual:v7];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(self->_internal + 8);

  if (v10)
  {
    v11 = *(transactionCopy[1] + 64);

    if (v9)
    {
      if (v10 == v11)
      {
        LOBYTE(v9) = 1;
      }

      else
      {
        LOBYTE(v9) = [v10 isEqualToString:v11];
      }
    }
  }

  else
  {
    v11 = v8;
  }

  return v9;
}

- (NSString)matchingIdentifier
{
  v3 = *(self->_internal + 8);
  if (!v3)
  {
    v3 = *(self->_internal + 6);
  }

  return v3;
}

- (BOOL)mergeWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = self->_internal;
  v6 = transactionCopy[1];
  v7 = v6[3];
  if (v5[3] != v7)
  {
    objc_storeStrong(v5 + 3, v7);
  }

  v8 = v5[10];
  v9 = v6[10];
  v10 = v8 != v9;
  if (v8 != v9)
  {
    v5[10] = v9;
  }

  v11 = v6[4];
  if (v5[4] != v11)
  {
    objc_storeStrong(v5 + 4, v11);
  }

  v12 = v6[7];
  if (v5[7] != v12)
  {
    objc_storeStrong(v5 + 7, v12);
  }

  v13 = v6[8];
  if (v5[8] != v13)
  {
    v14 = [v13 copy];
    v15 = v5[8];
    v5[8] = v14;
  }

  v16 = v6[6];
  if (v5[6] != v16)
  {
    v17 = [v16 copy];
    v18 = v5[6];
    v5[6] = v17;
  }

  v19 = v6[9];
  if (v5[9] != v19)
  {
    objc_storeStrong(v5 + 9, v19);
  }

  v20 = v5[2];
  if (v20 != v6[2] && ([v20 isEqualToArray:?] & 1) == 0)
  {
    [(SKPaymentTransaction *)self _setDownloads:v6[2]];
    v10 = 1;
  }

  return v10;
}

- (void)_setDownloads:(id)downloads
{
  internal = self->_internal;
  v4 = internal[2];
  if (v4 != downloads)
  {
    v10 = internal;
    downloadsCopy = downloads;
    [v4 makeObjectsPerformSelector:sel__setTransaction_ withObject:0];
    v8 = [downloadsCopy copy];

    v9 = internal[2];
    internal[2] = v8;

    [internal[2] makeObjectsPerformSelector:sel__setTransaction_ withObject:self];
  }
}

- (void)_setError:(id)error
{
  errorCopy = error;
  internal = self->_internal;
  v8 = *(internal + 3);
  v7 = (internal + 24);
  if (v8 != errorCopy)
  {
    v9 = errorCopy;
    objc_storeStrong(v7, error);
    errorCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, errorCopy);
}

- (void)_setOriginalTransaction:(id)transaction
{
  transactionCopy = transaction;
  internal = self->_internal;
  v8 = *(internal + 4);
  v7 = (internal + 32);
  if (v8 != transactionCopy)
  {
    v9 = transactionCopy;
    objc_storeStrong(v7, transaction);
    transactionCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, transactionCopy);
}

- (void)_setTemporaryIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[6] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[6];
    internal[6] = v5;
  }
}

- (void)_setTransactionDate:(id)date
{
  dateCopy = date;
  internal = self->_internal;
  v8 = *(internal + 7);
  v7 = (internal + 56);
  if (v8 != dateCopy)
  {
    v9 = dateCopy;
    objc_storeStrong(v7, date);
    dateCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, dateCopy);
}

- (void)_setTransactionIdentifier:(id)identifier
{
  internal = self->_internal;
  if (internal[8] != identifier)
  {
    v7 = internal;
    v5 = [identifier copy];
    v6 = internal[8];
    internal[8] = v5;
  }
}

- (void)_setTransactionReceipt:(id)receipt
{
  internal = self->_internal;
  if (internal[9] != receipt)
  {
    v7 = internal;
    v5 = [receipt copy];
    v6 = internal[9];
    internal[9] = v5;
  }
}

- (void)_setAuthorizationResponse:(id)response
{
  responseCopy = response;
  internal = self->_internal;
  v8 = *(internal + 11);
  v7 = (internal + 88);
  if (v8 != responseCopy)
  {
    v9 = responseCopy;
    objc_storeStrong(v7, response);
    responseCopy = v9;
  }

  MEMORY[0x1EEE66BB8](v7, responseCopy);
}

- (SKPaymentTransaction)initWithServerTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [(SKPaymentTransaction *)self init];
  v6 = v5;
  if (v5)
  {
    [(SKPaymentTransaction *)v5 mergeWithServerTransaction:transactionCopy];
  }

  return v6;
}

- (BOOL)mergeWithServerTransaction:(id)transaction
{
  v95 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  v5 = self->_internal;
  v6 = [transactionCopy objectForKeyedSubscript:0x1F29BDC00];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 1, v6);
  }

  v7 = [transactionCopy objectForKeyedSubscript:0x1F29BDC20];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 8, v7);
    v5[10] = 1;
  }

  v8 = [transactionCopy objectForKeyedSubscript:0x1F29BDC80];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 7, v8);
  }

  v9 = [transactionCopy objectForKeyedSubscript:0x1F29BDCA0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v5 + 9, v9);
  }

  v10 = [transactionCopy objectForKeyedSubscript:0x1F29BDCC0];

  if (objc_opt_respondsToSelector())
  {
    v5[10] = [v10 integerValue];
  }

  v83 = v5;
  v11 = [transactionCopy objectForKeyedSubscript:SKServerKeyAuthorizationResponse];

  objc_opt_class();
  v84 = transactionCopy;
  if (objc_opt_isKindOfClass())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received credential", buf, 0xCu);
    }

    v91 = 0;
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:&v91];
    v13 = v91;
    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SKPaymentTransaction mergeWithServerTransaction:];
      }

      v14 = [SKPaymentTransactionAuthorizationResponse alloc];
      v15 = 0;
      v16 = v13;
    }

    else
    {
      v14 = [SKPaymentTransactionAuthorizationResponse alloc];
      v15 = v12;
      v16 = 0;
    }

    v17 = [(SKPaymentTransactionAuthorizationResponse *)v14 initWithAuthorizationCredential:v15 error:v16];
    if (v17)
    {
      [(SKPaymentTransaction *)self _setAuthorizationResponse:v17];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_27;
    }

    v13 = _SKErrorFromNSError(v11);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SKPaymentTransaction mergeWithServerTransaction:];
    }

    v17 = [[SKPaymentTransactionAuthorizationResponse alloc] initWithAuthorizationCredential:0 error:v13];
    [(SKPaymentTransaction *)self _setAuthorizationResponse:v17];
  }

  transactionCopy = v84;
LABEL_27:
  v18 = [transactionCopy objectForKeyedSubscript:0x1F29BDBA0];

  objc_opt_class();
  v19 = v83;
  if (objc_opt_isKindOfClass())
  {
    v20 = v18;
    domain = [v20 domain];
    if ([domain isEqualToString:@"com.apple.commerce.client"])
    {
      code = [v20 code];

      v23 = code == 1000;
      transactionCopy = v84;
      if (v23)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    domain2 = [v20 domain];
    if (![domain2 isEqualToString:@"ASDErrorDomain"])
    {

      goto LABEL_39;
    }

    code2 = [v20 code];

    v23 = code2 == 1052;
    transactionCopy = v84;
    if (!v23)
    {
LABEL_39:
      if (v83[8] || v83[7] || v83[9])
      {
        goto LABEL_42;
      }

      v73 = _SKErrorFromNSError(v20);
      v74 = v83[3];
      v83[3] = v73;

      v26 = 2;
LABEL_37:
      v83[10] = v26;
LABEL_42:

      goto LABEL_43;
    }

LABEL_36:
    v26 = 4;
    goto LABEL_37;
  }

LABEL_43:
  v27 = [transactionCopy objectForKeyedSubscript:0x1F29BDC40];
  v28 = [transactionCopy objectForKeyedSubscript:0x1F29BDC60];
  v29 = v27;
  objc_opt_class();
  v82 = v28;
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v30 = objc_alloc_init(SKPaymentTransaction);
    internal = v30->_internal;
    v32 = v29;
    v33 = internal[7];
    internal[7] = v32;
    v34 = internal;

    v35 = [v28 copy];
    v36 = v34[8];
    v34[8] = v35;

    v34[10] = 1;
  }

  else
  {
    v30 = 0;
  }

  v37 = [transactionCopy objectForKeyedSubscript:SKPaymentOptionLegacyOfferName];
  v38 = [transactionCopy objectForKeyedSubscript:SKPaymentOptionLegacyQuantity];
  objc_opt_class();
  selfCopy2 = self;
  if (objc_opt_isKindOfClass())
  {
    v39 = v38;
    if (objc_opt_respondsToSelector())
    {
      v40 = v30;
      v41 = objc_alloc_init(SKMutablePayment);
      v80 = v37;
      [(SKMutablePayment *)v41 setProductIdentifier:v37];
      -[SKMutablePayment setQuantity:](v41, "setQuantity:", [v38 integerValue]);
      v42 = [transactionCopy objectForKeyedSubscript:SKPaymentOptionLegacyRequestData];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SKMutablePayment *)v41 setRequestData:v42];
      }

      applicationUsername = [v83[5] applicationUsername];
      v44 = [applicationUsername copy];
      [(SKMutablePayment *)v41 setApplicationUsername:v44];

      partnerIdentifier = [v83[5] partnerIdentifier];
      v46 = [partnerIdentifier copy];
      [(SKMutablePayment *)v41 setPartnerIdentifier:v46];

      partnerTransactionIdentifier = [v83[5] partnerTransactionIdentifier];
      v48 = [partnerTransactionIdentifier copy];
      [(SKMutablePayment *)v41 setPartnerTransactionIdentifier:v48];

      requestParameters = [v83[5] requestParameters];
      v50 = [requestParameters copy];
      [(SKMutablePayment *)v41 setRequestParameters:v50];

      paymentDiscount = [v83[5] paymentDiscount];
      [(SKMutablePayment *)v41 setPaymentDiscount:paymentDiscount];

      v52 = [(SKMutablePayment *)v41 copy];
      v53 = v83[5];
      v83[5] = v52;

      if (v40)
      {
        v54 = v40->_internal;
        v55 = [(SKMutablePayment *)v41 copy];
        v56 = v54[5];
        v54[5] = v55;
      }

      v30 = v40;
      v39 = v38;
      v37 = v80;
    }

    else
    {
      v42 = v18;
    }
  }

  else
  {
    v42 = v18;
    v39 = v38;
  }

  objc_storeStrong(v83 + 4, v30);
  v57 = [transactionCopy objectForKeyedSubscript:0x1F29BDD00];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v58 = v57;
    v86 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v58, "count")}];
    v59 = [transactionCopy objectForKeyedSubscript:SKServerKeyId];
    v60 = transactionCopy;
    v61 = v59;
    v62 = [v60 objectForKeyedSubscript:SKPaymentOptionLegacyOfferName];
    v63 = v62;
    if (v61 && v62)
    {
      v76 = v57;
      v77 = v30;
      v78 = v29;
      v79 = v39;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v75 = v58;
      obj = v58;
      v64 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v88;
        do
        {
          for (i = 0; i != v65; ++i)
          {
            if (*v88 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v68 = *(*(&v87 + 1) + 8 * i);
            v69 = objc_alloc_init(SKDownload);
            [(SKDownload *)v69 _setDownloadID:v61];
            [(SKDownload *)v69 _setContentIdentifier:v63];
            v70 = [v68 objectForKeyedSubscript:0x1F29BDFA0];
            [(SKDownload *)v69 _setContentLength:v70];

            v71 = [v68 objectForKeyedSubscript:0x1F29BDF80];
            [(SKDownload *)v69 _setVersion:v71];

            [v86 addObject:v69];
          }

          v65 = [obj countByEnumeratingWithState:&v87 objects:v92 count:16];
        }

        while (v65);
      }

      v19 = v83;
      v30 = v77;
      v39 = v79;
      v58 = v75;
      v57 = v76;
    }

    [(SKPaymentTransaction *)selfCopy2 _setDownloads:v86, v75, v76, v77, v78];

    transactionCopy = v84;
  }

  return 1;
}

- (void)mergeWithServerTransaction:.cold.1()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Auth credential failed: %{public}@", v0, 0x16u);
}

- (void)mergeWithServerTransaction:.cold.2()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1B23EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to unarchive auth response: %{public}@", v0, 0x16u);
}

@end