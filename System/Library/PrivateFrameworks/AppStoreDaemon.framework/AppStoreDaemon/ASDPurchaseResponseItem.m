@interface ASDPurchaseResponseItem
- (ASDPurchaseResponseItem)initWithCoder:(id)a3;
- (ASDPurchaseResponseItem)initWithResults:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)transactionIdentifierForItemIdentifier:(int64_t)a3;
- (void)_setBundleID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDPurchaseResponseItem

- (ASDPurchaseResponseItem)initWithResults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASDPurchaseResponseItem;
  v6 = [(ASDPurchaseResponseItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_results, a3);
  }

  return v7;
}

- (id)transactionIdentifierForItemIdentifier:(int64_t)a3
{
  v3 = 0;
  if (a3 >= 1)
  {
    transationIDs = self->_transationIDs;
    if (transationIDs)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a3];
      v3 = [(NSDictionary *)transationIDs objectForKey:v5];
    }
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  *(v5 + 9) = self->_cancelsPurchaseBatch;
  v8 = [(NSError *)self->_error copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSNumber *)self->_itemID copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(ASDPurchase *)self->_purchase copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSArray *)self->_results copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSDictionary *)self->_responseMetrics copyWithZone:a3];
  v17 = v5[10];
  v5[10] = v16;

  *(v5 + 8) = self->_success;
  v18 = [(NSDictionary *)self->_transationIDs copyWithZone:a3];
  v19 = v5[11];
  v5[11] = v18;

  return v5;
}

- (ASDPurchaseResponseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDPurchaseResponseItem *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v5->_cancelsPurchaseBatch = [v4 decodeBoolForKey:@"cancelsPurchaseBatch"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
    itemID = v5->_itemID;
    v5->_itemID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchase"];
    purchase = v5->_purchase;
    v5->_purchase = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"results"];
    results = v5->_results;
    v5->_results = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v19 setWithObjects:{v20, v21, v22, v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"responseMetrics"];
    responseMetrics = v5->_responseMetrics;
    v5->_responseMetrics = v25;

    [v4 decodeDoubleForKey:@"requestStartTime"];
    v5->_requestStartTime = v27;
    [v4 decodeDoubleForKey:@"responseEndTime"];
    v5->_responseEndTime = v28;
    [v4 decodeDoubleForKey:@"responseStartTime"];
    v5->_responseStartTime = v29;
    v5->_success = [v4 decodeBoolForKey:@"success"];
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"transactionIdentifiers"];
    transationIDs = v5->_transationIDs;
    v5->_transationIDs = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v7 encodeBool:self->_cancelsPurchaseBatch forKey:@"cancelsPurchaseBatch"];
  error = self->_error;
  if (error)
  {
    v5 = ASDErrorWithSafeUserInfo(error);
    [v7 encodeObject:v5 forKey:@"error"];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    [v7 encodeObject:itemID forKey:@"itemID"];
  }

  [v7 encodeObject:self->_purchase forKey:@"purchase"];
  [v7 encodeObject:self->_results forKey:@"results"];
  [v7 encodeDouble:@"requestStartTime" forKey:self->_requestStartTime];
  [v7 encodeDouble:@"responseEndTime" forKey:self->_responseEndTime];
  [v7 encodeDouble:@"responseStartTime" forKey:self->_responseStartTime];
  [v7 encodeObject:self->_responseMetrics forKey:@"responseMetrics"];
  [v7 encodeBool:self->_success forKey:@"success"];
  [v7 encodeObject:self->_transationIDs forKey:@"transactionIdentifiers"];
}

- (void)_setBundleID:(id)a3
{
  v4 = [a3 copy];
  bundleID = self->_bundleID;
  self->_bundleID = v4;

  MEMORY[0x1EEE66BB8]();
}

@end