@interface ACActivityContentUpdate
- (ACActivityContentUpdate)initWithIdentifier:(id)identifier descriptor:(id)descriptor state:(int64_t)state content:(id)content;
@end

@implementation ACActivityContentUpdate

- (ACActivityContentUpdate)initWithIdentifier:(id)identifier descriptor:(id)descriptor state:(int64_t)state content:(id)content
{
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  contentCopy = content;
  v21.receiver = self;
  v21.super_class = ACActivityContentUpdate;
  v13 = [(ACActivityContentUpdate *)&v21 init];
  if (v13)
  {
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [descriptorCopy copy];
    descriptor = v13->_descriptor;
    v13->_descriptor = v16;

    v13->_state = state;
    v18 = [contentCopy copy];
    content = v13->_content;
    v13->_content = v18;
  }

  return v13;
}

@end