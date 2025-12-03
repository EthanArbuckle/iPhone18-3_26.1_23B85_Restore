@interface SKDownload
- (BOOL)isEqual:(id)equal;
- (SKDownload)init;
- (SKPaymentTransaction)transaction;
- (void)_applyChangeset:(id)changeset;
- (void)_setContentIdentifier:(id)identifier;
- (void)_setContentLength:(id)length;
- (void)_setContentURL:(id)l;
- (void)_setDownloadID:(id)d;
- (void)_setError:(id)error;
- (void)_setTransaction:(id)transaction;
- (void)_setVersion:(id)version;
@end

@implementation SKDownload

- (SKDownload)init
{
  v6.receiver = self;
  v6.super_class = SKDownload;
  v2 = [(SKDownload *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SKDownloadInternal);
    internal = v2->_internal;
    v2->_internal = v3;

    *(v2->_internal + 7) = SKDownloadTimeRemainingUnknown;
  }

  return v2;
}

- (SKPaymentTransaction)transaction
{
  WeakRetained = objc_loadWeakRetained(self->_internal + 10);

  return WeakRetained;
}

- (void)_applyChangeset:(id)changeset
{
  changesetCopy = changeset;
  contentLength = [changesetCopy contentLength];
  if (contentLength)
  {
    [(SKDownload *)self _setContentLength:contentLength];
  }

  contentURL = [changesetCopy contentURL];

  if (contentURL)
  {
    [(SKDownload *)self _setContentURL:contentURL];
  }

  downloadState = [changesetCopy downloadState];

  if (downloadState)
  {
    -[SKDownload _setDownloadState:](self, "_setDownloadState:", [downloadState integerValue]);
  }

  error = [changesetCopy error];

  if (error)
  {
    [(SKDownload *)self _setError:error];
  }

  progress = [changesetCopy progress];

  if (progress)
  {
    [progress floatValue];
    [(SKDownload *)self _setProgress:?];
  }

  timeRemaining = [changesetCopy timeRemaining];

  if (timeRemaining)
  {
    [timeRemaining doubleValue];
    [(SKDownload *)self _setTimeRemaining:?];
  }
}

- (void)_setDownloadID:(id)d
{
  *(self->_internal + 1) = [d copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setContentIdentifier:(id)identifier
{
  *(self->_internal + 2) = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setContentLength:(id)length
{
  objc_storeStrong(self->_internal + 8, length);
  lengthCopy = length;
}

- (void)_setContentURL:(id)l
{
  *(self->_internal + 6) = [l copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setError:(id)error
{
  *(self->_internal + 5) = [error copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setTransaction:(id)transaction
{
  internal = self->_internal;
  transactionCopy = transaction;
  objc_storeWeak(internal + 10, transactionCopy);
  payment = [transactionCopy payment];

  productIdentifier = [payment productIdentifier];
  [(SKDownload *)self _setContentIdentifier:productIdentifier];
}

- (void)_setVersion:(id)version
{
  *(self->_internal + 9) = [version copy];

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _downloadID = [(SKDownload *)self _downloadID];
    _downloadID2 = [v5 _downloadID];
    if ([_downloadID isEqual:_downloadID2])
    {
      contentIdentifier = [(SKDownload *)self contentIdentifier];
      contentIdentifier2 = [v5 contentIdentifier];
      v10 = [contentIdentifier isEqual:contentIdentifier2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end