@interface MFMessage
- (id)mf_conversationReference;
- (id)mf_documentReference;
@end

@implementation MFMessage

- (id)mf_conversationReference
{
  conversationID = [(MFMessage *)self conversationID];

  return MFConversationReferenceFromHash(conversationID);
}

- (id)mf_documentReference
{
  documentID = [(MFMessage *)self documentID];
  uUIDString = [documentID UUIDString];

  if (uUIDString)
  {
    v4 = MFDocumentReferenceFromDocumentID(uUIDString);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end