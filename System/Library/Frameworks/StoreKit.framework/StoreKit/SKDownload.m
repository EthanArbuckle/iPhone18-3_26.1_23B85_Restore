@interface SKDownload
- (BOOL)isEqual:(id)a3;
- (SKDownload)init;
- (SKPaymentTransaction)transaction;
- (void)_applyChangeset:(id)a3;
- (void)_setContentIdentifier:(id)a3;
- (void)_setContentLength:(id)a3;
- (void)_setContentURL:(id)a3;
- (void)_setDownloadID:(id)a3;
- (void)_setError:(id)a3;
- (void)_setTransaction:(id)a3;
- (void)_setVersion:(id)a3;
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

- (void)_applyChangeset:(id)a3
{
  v10 = a3;
  v4 = [v10 contentLength];
  if (v4)
  {
    [(SKDownload *)self _setContentLength:v4];
  }

  v5 = [v10 contentURL];

  if (v5)
  {
    [(SKDownload *)self _setContentURL:v5];
  }

  v6 = [v10 downloadState];

  if (v6)
  {
    -[SKDownload _setDownloadState:](self, "_setDownloadState:", [v6 integerValue]);
  }

  v7 = [v10 error];

  if (v7)
  {
    [(SKDownload *)self _setError:v7];
  }

  v8 = [v10 progress];

  if (v8)
  {
    [v8 floatValue];
    [(SKDownload *)self _setProgress:?];
  }

  v9 = [v10 timeRemaining];

  if (v9)
  {
    [v9 doubleValue];
    [(SKDownload *)self _setTimeRemaining:?];
  }
}

- (void)_setDownloadID:(id)a3
{
  *(self->_internal + 1) = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setContentIdentifier:(id)a3
{
  *(self->_internal + 2) = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setContentLength:(id)a3
{
  objc_storeStrong(self->_internal + 8, a3);
  v4 = a3;
}

- (void)_setContentURL:(id)a3
{
  *(self->_internal + 6) = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setError:(id)a3
{
  *(self->_internal + 5) = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)_setTransaction:(id)a3
{
  internal = self->_internal;
  v5 = a3;
  objc_storeWeak(internal + 10, v5);
  v7 = [v5 payment];

  v6 = [v7 productIdentifier];
  [(SKDownload *)self _setContentIdentifier:v6];
}

- (void)_setVersion:(id)a3
{
  *(self->_internal + 9) = [a3 copy];

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SKDownload *)self _downloadID];
    v7 = [v5 _downloadID];
    if ([v6 isEqual:v7])
    {
      v8 = [(SKDownload *)self contentIdentifier];
      v9 = [v5 contentIdentifier];
      v10 = [v8 isEqual:v9];
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