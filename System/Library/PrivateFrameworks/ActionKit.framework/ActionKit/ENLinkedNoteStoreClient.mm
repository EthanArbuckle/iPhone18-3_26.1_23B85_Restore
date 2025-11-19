@interface ENLinkedNoteStoreClient
+ (id)noteStoreClientForLinkedNotebookRef:(id)a3;
- (ENLinkedNoteStoreClientDelegate)delegate;
- (id)authenticationToken;
- (id)noteStoreUrl;
@end

@implementation ENLinkedNoteStoreClient

- (ENLinkedNoteStoreClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)noteStoreUrl
{
  v2 = [(ENLinkedNoteStoreClient *)self linkedNotebookRef];
  v3 = [v2 noteStoreUrl];

  return v3;
}

- (id)authenticationToken
{
  v4 = [(ENLinkedNoteStoreClient *)self delegate];

  if (!v4)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"ENLinkedNoteStoreClient.m" lineNumber:46 description:@"ENLinkedNoteStoreClient delegate not set"];
  }

  v5 = [(ENLinkedNoteStoreClient *)self delegate];
  v6 = [(ENLinkedNoteStoreClient *)self linkedNotebookRef];
  v7 = [v5 authenticationTokenForLinkedNotebookRef:v6];

  return v7;
}

+ (id)noteStoreClientForLinkedNotebookRef:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ENLinkedNoteStoreClient);
  [(ENLinkedNoteStoreClient *)v4 setLinkedNotebookRef:v3];

  return v4;
}

@end