@interface _WKTextManipulationToken
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTextManipulationToken:(id)token includingContentEquality:(BOOL)equality;
- (id)_descriptionPreservingPrivacy:(BOOL)privacy;
- (void)dealloc;
- (void)setUserInfo:(id)info;
@end

@implementation _WKTextManipulationToken

- (void)dealloc
{
  self->_identifier = 0;

  self->_content = 0;
  v3.receiver = self;
  v3.super_class = _WKTextManipulationToken;
  [(_WKTextManipulationToken *)&v3 dealloc];
}

- (void)setUserInfo:(id)info
{
  m_ptr = self->_userInfo.m_ptr;
  if (m_ptr != info && ([(NSDictionary *)m_ptr isEqual:?]& 1) == 0)
  {
    v6 = [info copy];
    v7 = self->_userInfo.m_ptr;
    self->_userInfo.m_ptr = v6;
    if (v7)
    {
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(_WKTextManipulationToken *)self isEqualToTextManipulationToken:equal includingContentEquality:1];
}

- (BOOL)isEqualToTextManipulationToken:(id)token includingContentEquality:(BOOL)equality
{
  if (!token)
  {
    return 0;
  }

  equalityCopy = equality;
  identifier = [(_WKTextManipulationToken *)self identifier];
  identifier2 = [token identifier];
  if (identifier == identifier2)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [(NSString *)identifier isEqual:identifier2]^ 1;
  }

  isExcluded = [(_WKTextManipulationToken *)self isExcluded];
  isExcluded2 = [token isExcluded];
  if (!equalityCopy || (v13 = -[_WKTextManipulationToken content](self, "content"), v14 = [token content], v13 == v14))
  {
    v15 = 1;
  }

  else
  {
    v15 = [(NSString *)v13 isEqual:v14];
  }

  v16 = isExcluded ^ isExcluded2;
  userInfo = [(_WKTextManipulationToken *)self userInfo];
  userInfo2 = [token userInfo];
  if (userInfo == userInfo2)
  {
    v19 = 1;
  }

  else
  {
    v19 = [(NSDictionary *)userInfo isEqual:userInfo2];
  }

  if ((v9 | v16))
  {
    return 0;
  }

  else
  {
    return v15 & v19;
  }
}

- (id)_descriptionPreservingPrivacy:(BOOL)privacy
{
  privacyCopy = privacy;
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p; identifier = %@; isExcluded = %i", objc_opt_class(), self, -[_WKTextManipulationToken identifier](self, "identifier"), -[_WKTextManipulationToken isExcluded](self, "isExcluded")];
  content = [(_WKTextManipulationToken *)self content];
  if (privacyCopy)
  {
    [v5 appendFormat:@"; content length = %lu", -[NSString length](content, "length"), v11];
  }

  else
  {
    [v5 appendFormat:@"; content = %@; user info = %@", content, -[_WKTextManipulationToken userInfo](self, "userInfo")];
  }

  [v5 appendString:@">"];
  v7 = [v5 copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  return v8;
}

@end