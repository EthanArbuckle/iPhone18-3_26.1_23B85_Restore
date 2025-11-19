@interface SHShazamKitServiceConnectionClient
- (SHShazamKitClient)delegate;
- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4;
- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5;
- (void)_libraryDidCompleteSync:(id)a3;
- (void)_libraryWillBeginSync:(id)a3;
- (void)didCalculateSpectralData:(id)a3;
- (void)matcher:(id)a3 didProduceResponse:(id)a4;
@end

@implementation SHShazamKitServiceConnectionClient

- (void)matcher:(id)a3 didProduceResponse:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SHShazamKitServiceConnectionClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [v9 matcher:v10 didProduceResponse:v6];
  }
}

- (void)_libraryWillBeginSync:(id)a3
{
  v7 = a3;
  v4 = [(SHShazamKitServiceConnectionClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [v6 _libraryWillBeginSync:v7];
  }
}

- (void)_library:(id)a3 didChangeWithSnapshot:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SHShazamKitServiceConnectionClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [v9 _library:v10 didChangeWithSnapshot:v6];
  }
}

- (void)_library:(id)a3 didProduceError:(id)a4 failedItemIdentifiers:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(SHShazamKitServiceConnectionClient *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [v12 _library:v13 didProduceError:v8 failedItemIdentifiers:v9];
  }
}

- (void)_libraryDidCompleteSync:(id)a3
{
  v7 = a3;
  v4 = [(SHShazamKitServiceConnectionClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [v6 _libraryDidCompleteSync:v7];
  }
}

- (void)didCalculateSpectralData:(id)a3
{
  v7 = a3;
  v4 = [(SHShazamKitServiceConnectionClient *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SHShazamKitServiceConnectionClient *)self delegate];
    [v6 didCalculateSpectralData:v7];
  }
}

- (SHShazamKitClient)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end