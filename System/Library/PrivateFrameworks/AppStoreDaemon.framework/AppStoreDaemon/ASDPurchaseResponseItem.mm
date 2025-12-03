@interface ASDPurchaseResponseItem
- (ASDPurchaseResponseItem)initWithCoder:(id)coder;
- (ASDPurchaseResponseItem)initWithResults:(id)results;
- (id)copyWithZone:(_NSZone *)zone;
- (id)transactionIdentifierForItemIdentifier:(int64_t)identifier;
- (void)_setBundleID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDPurchaseResponseItem

- (ASDPurchaseResponseItem)initWithResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = ASDPurchaseResponseItem;
  v6 = [(ASDPurchaseResponseItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_results, results);
  }

  return v7;
}

- (id)transactionIdentifierForItemIdentifier:(int64_t)identifier
{
  v3 = 0;
  if (identifier >= 1)
  {
    transationIDs = self->_transationIDs;
    if (transationIDs)
    {
      identifier = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", identifier];
      v3 = [(NSDictionary *)transationIDs objectForKey:identifier];
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  *(v5 + 9) = self->_cancelsPurchaseBatch;
  v8 = [(NSError *)self->_error copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_itemID copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(ASDPurchase *)self->_purchase copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSArray *)self->_results copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSDictionary *)self->_responseMetrics copyWithZone:zone];
  v17 = v5[10];
  v5[10] = v16;

  *(v5 + 8) = self->_success;
  v18 = [(NSDictionary *)self->_transationIDs copyWithZone:zone];
  v19 = v5[11];
  v5[11] = v18;

  return v5;
}

- (ASDPurchaseResponseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDPurchaseResponseItem *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_cancelsPurchaseBatch = [coderCopy decodeBoolForKey:@"cancelsPurchaseBatch"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchase"];
    purchase = v5->_purchase;
    v5->_purchase = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"results"];
    results = v5->_results;
    v5->_results = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v19 setWithObjects:{v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"responseMetrics"];
    responseMetrics = v5->_responseMetrics;
    v5->_responseMetrics = v25;

    [coderCopy decodeDoubleForKey:@"requestStartTime"];
    v5->_requestStartTime = v27;
    [coderCopy decodeDoubleForKey:@"responseEndTime"];
    v5->_responseEndTime = v28;
    [coderCopy decodeDoubleForKey:@"responseStartTime"];
    v5->_responseStartTime = v29;
    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"transactionIdentifiers"];
    transationIDs = v5->_transationIDs;
    v5->_transationIDs = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeBool:self->_cancelsPurchaseBatch forKey:@"cancelsPurchaseBatch"];
  error = self->_error;
  if (error)
  {
    v5 = ASDErrorWithSafeUserInfo(error);
    [coderCopy encodeObject:v5 forKey:@"error"];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    [coderCopy encodeObject:itemID forKey:@"itemID"];
  }

  [coderCopy encodeObject:self->_purchase forKey:@"purchase"];
  [coderCopy encodeObject:self->_results forKey:@"results"];
  [coderCopy encodeDouble:@"requestStartTime" forKey:self->_requestStartTime];
  [coderCopy encodeDouble:@"responseEndTime" forKey:self->_responseEndTime];
  [coderCopy encodeDouble:@"responseStartTime" forKey:self->_responseStartTime];
  [coderCopy encodeObject:self->_responseMetrics forKey:@"responseMetrics"];
  [coderCopy encodeBool:self->_success forKey:@"success"];
  [coderCopy encodeObject:self->_transationIDs forKey:@"transactionIdentifiers"];
}

- (void)_setBundleID:(id)d
{
  v4 = [d copy];
  bundleID = self->_bundleID;
  self->_bundleID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end