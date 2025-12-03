@interface MFActiveDraft
- (MFActiveDraft)initWithIdentifier:(id)identifier andOriginalMessageIdentifier:(id)messageIdentifier;
- (NSString)ef_publicDescription;
@end

@implementation MFActiveDraft

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identifier = [(MFActiveDraft *)self identifier];
  originalMessageIdentifier = [(MFActiveDraft *)self originalMessageIdentifier];
  stringHash = [originalMessageIdentifier stringHash];
  ef_publicDescription = [stringHash ef_publicDescription];
  v9 = [NSString stringWithFormat:@"<%@: %p>\n\tidentifier:%@\n\toriginalMessageIdentifier:%@\n", v4, self, identifier, ef_publicDescription];

  return v9;
}

- (MFActiveDraft)initWithIdentifier:(id)identifier andOriginalMessageIdentifier:(id)messageIdentifier
{
  identifierCopy = identifier;
  messageIdentifierCopy = messageIdentifier;
  v12.receiver = self;
  v12.super_class = MFActiveDraft;
  v8 = [(MFActiveDraft *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_originalMessageIdentifier, messageIdentifier);
  }

  return v8;
}

@end