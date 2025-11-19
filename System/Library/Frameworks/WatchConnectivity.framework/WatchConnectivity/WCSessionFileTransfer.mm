@interface WCSessionFileTransfer
- (BOOL)isEqual:(id)a3;
- (WCSessionFileTransfer)init;
- (WCSessionFileTransfer)initWithCoder:(id)a3;
- (WCSessionFileTransfer)initWithFile:(id)a3;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
- (void)initializeProgress;
@end

@implementation WCSessionFileTransfer

- (WCSessionFileTransfer)init
{
  v9.receiver = self;
  v9.super_class = WCSessionFileTransfer;
  v2 = [(WCSessionFileTransfer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    transferError = v2->_transferError;
    v2->_transferError = 0;

    v5 = objc_opt_new();
    v6 = [v5 UUIDString];
    transferIdentifier = v3->_transferIdentifier;
    v3->_transferIdentifier = v6;

    [(WCSessionFileTransfer *)v3 initializeProgress];
  }

  return v3;
}

- (WCSessionFileTransfer)initWithFile:(id)a3
{
  v5 = a3;
  v6 = [(WCSessionFileTransfer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_file, a3);
  }

  return v7;
}

- (void)cancel
{
  v3 = +[WCSession defaultSession];
  [v3 cancelFileTransfer:self];

  self->_transferring = 0;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WCSessionFileTransfer *)self file];
  v6 = [v4 file];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)initializeProgress
{
  v3 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  progress = self->_progress;
  self->_progress = v3;

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__WCSessionFileTransfer_initializeProgress__block_invoke;
  v5[3] = &unk_278B7C4F8;
  objc_copyWeak(&v6, &location);
  [(NSProgress *)self->_progress setCancellationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __43__WCSessionFileTransfer_initializeProgress__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = wc_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[WCSessionFileTransfer initializeProgress]_block_invoke";
    _os_log_impl(&dword_23B2FA000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s ", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cancel];

  v4 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WCSessionFileTransfer *)self file];
  v7 = [(WCSessionFileTransfer *)self isTransferring];
  v8 = "NO";
  if (v7)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, session file: %@, transferring: %s>", v5, self, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCSessionFileTransfer *)self transferIdentifier];
      v7 = [(WCSessionFileTransfer *)v5 transferIdentifier];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(WCSessionFileTransfer *)self transferIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  transferDate = self->_transferDate;
  v5 = a3;
  [v5 encodeObject:transferDate forKey:@"transferDate"];
  [v5 encodeObject:self->_transferIdentifier forKey:@"transferIdentifier"];
  [v5 encodeObject:self->_file forKey:@"file"];
  [v5 encodeBool:self->_transferring forKey:@"transferring"];
}

- (WCSessionFileTransfer)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = WCSessionFileTransfer;
  v5 = [(WCSessionFileTransfer *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferDate"];
    transferDate = v5->_transferDate;
    v5->_transferDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    v9 = [v8 copy];
    transferIdentifier = v5->_transferIdentifier;
    v5->_transferIdentifier = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v11;

    v5->_transferring = [v4 decodeBoolForKey:@"transferring"];
    [(WCSessionFileTransfer *)v5 initializeProgress];
  }

  return v5;
}

@end