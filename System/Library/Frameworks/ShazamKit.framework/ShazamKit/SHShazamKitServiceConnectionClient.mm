@interface SHShazamKitServiceConnectionClient
- (SHShazamKitClient)delegate;
- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot;
- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers;
- (void)_libraryDidCompleteSync:(id)sync;
- (void)_libraryWillBeginSync:(id)sync;
- (void)didCalculateSpectralData:(id)data;
- (void)matcher:(id)matcher didProduceResponse:(id)response;
@end

@implementation SHShazamKitServiceConnectionClient

- (void)matcher:(id)matcher didProduceResponse:(id)response
{
  matcherCopy = matcher;
  responseCopy = response;
  delegate = [(SHShazamKitServiceConnectionClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [delegate2 matcher:matcherCopy didProduceResponse:responseCopy];
  }
}

- (void)_libraryWillBeginSync:(id)sync
{
  syncCopy = sync;
  delegate = [(SHShazamKitServiceConnectionClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [delegate2 _libraryWillBeginSync:syncCopy];
  }
}

- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot
{
  _libraryCopy = _library;
  snapshotCopy = snapshot;
  delegate = [(SHShazamKitServiceConnectionClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [delegate2 _library:_libraryCopy didChangeWithSnapshot:snapshotCopy];
  }
}

- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers
{
  _libraryCopy = _library;
  errorCopy = error;
  identifiersCopy = identifiers;
  delegate = [(SHShazamKitServiceConnectionClient *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [delegate2 _library:_libraryCopy didProduceError:errorCopy failedItemIdentifiers:identifiersCopy];
  }
}

- (void)_libraryDidCompleteSync:(id)sync
{
  syncCopy = sync;
  delegate = [(SHShazamKitServiceConnectionClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [delegate2 _libraryDidCompleteSync:syncCopy];
  }
}

- (void)didCalculateSpectralData:(id)data
{
  dataCopy = data;
  delegate = [(SHShazamKitServiceConnectionClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [delegate2 didCalculateSpectralData:dataCopy];
  }
}

- (SHShazamKitClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end