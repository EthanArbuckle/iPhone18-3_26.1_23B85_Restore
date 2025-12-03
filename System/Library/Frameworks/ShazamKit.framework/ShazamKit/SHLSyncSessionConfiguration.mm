@interface SHLSyncSessionConfiguration
- (SHLSyncSessionConfiguration)initWithType:(int64_t)type scope:(int64_t)scope callingProcessIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier;
@end

@implementation SHLSyncSessionConfiguration

- (SHLSyncSessionConfiguration)initWithType:(int64_t)type scope:(int64_t)scope callingProcessIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  v16.receiver = self;
  v16.super_class = SHLSyncSessionConfiguration;
  v13 = [(SHLSyncSessionConfiguration *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_sessionType = type;
    v13->_sessionScope = scope;
    objc_storeStrong(&v13->_callingProcessIdentifier, identifier);
    objc_storeStrong(&v14->_sessionIdentifier, sessionIdentifier);
  }

  return v14;
}

@end