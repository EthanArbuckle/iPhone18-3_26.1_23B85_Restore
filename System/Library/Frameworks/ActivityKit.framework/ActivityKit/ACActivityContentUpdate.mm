@interface ACActivityContentUpdate
- (ACActivityContentUpdate)initWithIdentifier:(id)a3 descriptor:(id)a4 state:(int64_t)a5 content:(id)a6;
@end

@implementation ACActivityContentUpdate

- (ACActivityContentUpdate)initWithIdentifier:(id)a3 descriptor:(id)a4 state:(int64_t)a5 content:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = ACActivityContentUpdate;
  v13 = [(ACActivityContentUpdate *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v11 copy];
    descriptor = v13->_descriptor;
    v13->_descriptor = v16;

    v13->_state = a5;
    v18 = [v12 copy];
    content = v13->_content;
    v13->_content = v18;
  }

  return v13;
}

@end