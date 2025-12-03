@interface WCSessionFileTransfer
- (BOOL)isEqual:(id)equal;
- (WCSessionFileTransfer)init;
- (WCSessionFileTransfer)initWithCoder:(id)coder;
- (WCSessionFileTransfer)initWithFile:(id)file;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
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
    uUIDString = [v5 UUIDString];
    transferIdentifier = v3->_transferIdentifier;
    v3->_transferIdentifier = uUIDString;

    [(WCSessionFileTransfer *)v3 initializeProgress];
  }

  return v3;
}

- (WCSessionFileTransfer)initWithFile:(id)file
{
  fileCopy = file;
  v6 = [(WCSessionFileTransfer *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_file, file);
  }

  return v7;
}

- (void)cancel
{
  v3 = +[WCSession defaultSession];
  [v3 cancelFileTransfer:self];

  self->_transferring = 0;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  file = [(WCSessionFileTransfer *)self file];
  file2 = [compareCopy file];

  v7 = [file compare:file2];
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
  file = [(WCSessionFileTransfer *)self file];
  isTransferring = [(WCSessionFileTransfer *)self isTransferring];
  v8 = "NO";
  if (isTransferring)
  {
    v8 = "YES";
  }

  v9 = [v3 stringWithFormat:@"<%@: %p, session file: %@, transferring: %s>", v5, self, file, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      transferIdentifier = [(WCSessionFileTransfer *)self transferIdentifier];
      transferIdentifier2 = [(WCSessionFileTransfer *)v5 transferIdentifier];

      v8 = [transferIdentifier isEqual:transferIdentifier2];
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
  transferIdentifier = [(WCSessionFileTransfer *)self transferIdentifier];
  v3 = [transferIdentifier hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  transferDate = self->_transferDate;
  coderCopy = coder;
  [coderCopy encodeObject:transferDate forKey:@"transferDate"];
  [coderCopy encodeObject:self->_transferIdentifier forKey:@"transferIdentifier"];
  [coderCopy encodeObject:self->_file forKey:@"file"];
  [coderCopy encodeBool:self->_transferring forKey:@"transferring"];
}

- (WCSessionFileTransfer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = WCSessionFileTransfer;
  v5 = [(WCSessionFileTransfer *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferDate"];
    transferDate = v5->_transferDate;
    v5->_transferDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    v9 = [v8 copy];
    transferIdentifier = v5->_transferIdentifier;
    v5->_transferIdentifier = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v11;

    v5->_transferring = [coderCopy decodeBoolForKey:@"transferring"];
    [(WCSessionFileTransfer *)v5 initializeProgress];
  }

  return v5;
}

@end