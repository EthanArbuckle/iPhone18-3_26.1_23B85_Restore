@interface TUIVisibilityChangeRecord
- (TUIVisibilityChangeRecord)initWithLastTimestamp:(double)a3 timestamp:(double)a4 rootNode:(id)a5;
@end

@implementation TUIVisibilityChangeRecord

- (TUIVisibilityChangeRecord)initWithLastTimestamp:(double)a3 timestamp:(double)a4 rootNode:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TUIVisibilityChangeRecord;
  v10 = [(TUIVisibilityChangeRecord *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_lastTimestamp = a3;
    v10->_timestamp = a4;
    objc_storeStrong(&v10->_rootNode, a5);
  }

  return v11;
}

@end