@interface TUILogicalScrollAnchor
- (TUILogicalScrollAnchor)initWithPosition:(unint64_t)position identifier:(id)identifier;
- (id)description;
@end

@implementation TUILogicalScrollAnchor

- (TUILogicalScrollAnchor)initWithPosition:(unint64_t)position identifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = TUILogicalScrollAnchor;
  v8 = [(TUILogicalScrollAnchor *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_position = position;
    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v9;
}

- (id)description
{
  v3 = [&off_273310 objectAtIndexedSubscript:self->_position];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"<%@ position=%@ identifier=%@>", v5, v3, self->_identifier];

  return v6;
}

@end