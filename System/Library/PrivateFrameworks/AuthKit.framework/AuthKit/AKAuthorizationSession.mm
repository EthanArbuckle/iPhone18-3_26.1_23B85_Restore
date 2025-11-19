@interface AKAuthorizationSession
- (id)description;
@end

@implementation AKAuthorizationSession

- (id)description
{
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v5 = [NSString stringWithFormat:@"Authorization Session - <%@: %p context %@, requested by %@, sessionID: %@>", v4, self, self->_context, self->_clientBundleID, self->_sessionID];
  _objc_release(v4);

  return v5;
}

@end