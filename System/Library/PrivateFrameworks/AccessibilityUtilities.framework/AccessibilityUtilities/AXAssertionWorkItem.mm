@interface AXAssertionWorkItem
- (AXAssertionWorkItem)initWithType:(id)type identifier:(id)identifier isAcquisition:(BOOL)acquisition;
@end

@implementation AXAssertionWorkItem

- (AXAssertionWorkItem)initWithType:(id)type identifier:(id)identifier isAcquisition:(BOOL)acquisition
{
  typeCopy = type;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = AXAssertionWorkItem;
  v10 = [(AXAssertionWorkItem *)&v16 init];
  if (v10)
  {
    v11 = [typeCopy copy];
    type = v10->_type;
    v10->_type = v11;

    v13 = [identifierCopy copy];
    identifier = v10->_identifier;
    v10->_identifier = v13;

    v10->_acquire = acquisition;
    v10->_retries = 0;
  }

  return v10;
}

@end