@interface MFActiveDraft
- (MFActiveDraft)initWithIdentifier:(id)a3 andOriginalMessageIdentifier:(id)a4;
- (NSString)ef_publicDescription;
@end

@implementation MFActiveDraft

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MFActiveDraft *)self identifier];
  v6 = [(MFActiveDraft *)self originalMessageIdentifier];
  v7 = [v6 stringHash];
  v8 = [v7 ef_publicDescription];
  v9 = [NSString stringWithFormat:@"<%@: %p>\n\tidentifier:%@\n\toriginalMessageIdentifier:%@\n", v4, self, v5, v8];

  return v9;
}

- (MFActiveDraft)initWithIdentifier:(id)a3 andOriginalMessageIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MFActiveDraft;
  v8 = [(MFActiveDraft *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_originalMessageIdentifier, a4);
  }

  return v8;
}

@end