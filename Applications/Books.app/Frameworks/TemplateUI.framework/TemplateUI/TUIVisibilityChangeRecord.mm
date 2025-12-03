@interface TUIVisibilityChangeRecord
- (TUIVisibilityChangeRecord)initWithLastTimestamp:(double)timestamp timestamp:(double)a4 rootNode:(id)node;
@end

@implementation TUIVisibilityChangeRecord

- (TUIVisibilityChangeRecord)initWithLastTimestamp:(double)timestamp timestamp:(double)a4 rootNode:(id)node
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = TUIVisibilityChangeRecord;
  v10 = [(TUIVisibilityChangeRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_lastTimestamp = timestamp;
    v10->_timestamp = a4;
    objc_storeStrong(&v10->_rootNode, node);
  }

  return v11;
}

@end