@interface ENLinkedNoteStoreClient
+ (id)noteStoreClientForLinkedNotebookRef:(id)ref;
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
  linkedNotebookRef = [(ENLinkedNoteStoreClient *)self linkedNotebookRef];
  noteStoreUrl = [linkedNotebookRef noteStoreUrl];

  return noteStoreUrl;
}

- (id)authenticationToken
{
  delegate = [(ENLinkedNoteStoreClient *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ENLinkedNoteStoreClient.m" lineNumber:46 description:@"ENLinkedNoteStoreClient delegate not set"];
  }

  delegate2 = [(ENLinkedNoteStoreClient *)self delegate];
  linkedNotebookRef = [(ENLinkedNoteStoreClient *)self linkedNotebookRef];
  v7 = [delegate2 authenticationTokenForLinkedNotebookRef:linkedNotebookRef];

  return v7;
}

+ (id)noteStoreClientForLinkedNotebookRef:(id)ref
{
  refCopy = ref;
  v4 = objc_alloc_init(ENLinkedNoteStoreClient);
  [(ENLinkedNoteStoreClient *)v4 setLinkedNotebookRef:refCopy];

  return v4;
}

@end