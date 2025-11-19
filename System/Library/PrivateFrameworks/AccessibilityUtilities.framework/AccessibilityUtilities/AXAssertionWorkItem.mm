@interface AXAssertionWorkItem
- (AXAssertionWorkItem)initWithType:(id)a3 identifier:(id)a4 isAcquisition:(BOOL)a5;
@end

@implementation AXAssertionWorkItem

- (AXAssertionWorkItem)initWithType:(id)a3 identifier:(id)a4 isAcquisition:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AXAssertionWorkItem;
  v10 = [(AXAssertionWorkItem *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    type = v10->_type;
    v10->_type = v11;

    v13 = [v9 copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    v10->_acquire = a5;
    v10->_retries = 0;
  }

  return v10;
}

@end