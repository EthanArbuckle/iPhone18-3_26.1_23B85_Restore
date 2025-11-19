@interface MFMessage
- (id)mf_conversationReference;
- (id)mf_documentReference;
@end

@implementation MFMessage

- (id)mf_conversationReference
{
  v2 = [(MFMessage *)self conversationID];

  return sub_10023EAB8(v2);
}

- (id)mf_documentReference
{
  v2 = [(MFMessage *)self documentID];
  v3 = [v2 UUIDString];

  if (v3)
  {
    v4 = sub_10023EB58(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end