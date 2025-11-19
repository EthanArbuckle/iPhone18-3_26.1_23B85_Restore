@interface MFMailDebugIndexStatusData
- (MFMailDebugIndexStatusData)initWithPrimaryText:(id)a3 secondaryText:(id)a4 labelText:(id)a5;
@end

@implementation MFMailDebugIndexStatusData

- (MFMailDebugIndexStatusData)initWithPrimaryText:(id)a3 secondaryText:(id)a4 labelText:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFMailDebugIndexStatusData;
  v12 = [(MFMailDebugIndexStatusData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_primaryText, a3);
    objc_storeStrong(&v13->_secondaryText, a4);
    objc_storeStrong(&v13->_labelText, a5);
  }

  return v13;
}

@end