@interface SHLSyncSessionConfiguration
- (SHLSyncSessionConfiguration)initWithType:(int64_t)a3 scope:(int64_t)a4 callingProcessIdentifier:(id)a5 sessionIdentifier:(id)a6;
@end

@implementation SHLSyncSessionConfiguration

- (SHLSyncSessionConfiguration)initWithType:(int64_t)a3 scope:(int64_t)a4 callingProcessIdentifier:(id)a5 sessionIdentifier:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = SHLSyncSessionConfiguration;
  v13 = [(SHLSyncSessionConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_sessionType = a3;
    v13->_sessionScope = a4;
    objc_storeStrong(&v13->_callingProcessIdentifier, a5);
    objc_storeStrong(&v14->_sessionIdentifier, a6);
  }

  return v14;
}

@end