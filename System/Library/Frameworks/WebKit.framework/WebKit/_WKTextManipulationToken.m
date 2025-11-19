@interface _WKTextManipulationToken
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextManipulationToken:(id)a3 includingContentEquality:(BOOL)a4;
- (id)_descriptionPreservingPrivacy:(BOOL)a3;
- (void)dealloc;
- (void)setUserInfo:(id)a3;
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

- (void)setUserInfo:(id)a3
{
  m_ptr = self->_userInfo.m_ptr;
  if (m_ptr != a3 && ([(NSDictionary *)m_ptr isEqual:?]& 1) == 0)
  {
    v6 = [a3 copy];
    v7 = self->_userInfo.m_ptr;
    self->_userInfo.m_ptr = v6;
    if (v7)
    {
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(_WKTextManipulationToken *)self isEqualToTextManipulationToken:a3 includingContentEquality:1];
}

- (BOOL)isEqualToTextManipulationToken:(id)a3 includingContentEquality:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v7 = [(_WKTextManipulationToken *)self identifier];
  v8 = [a3 identifier];
  if (v7 == v8)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = [(NSString *)v7 isEqual:v8]^ 1;
  }

  v11 = [(_WKTextManipulationToken *)self isExcluded];
  v12 = [a3 isExcluded];
  if (!v4 || (v13 = -[_WKTextManipulationToken content](self, "content"), v14 = [a3 content], v13 == v14))
  {
    v15 = 1;
  }

  else
  {
    v15 = [(NSString *)v13 isEqual:v14];
  }

  v16 = v11 ^ v12;
  v17 = [(_WKTextManipulationToken *)self userInfo];
  v18 = [a3 userInfo];
  if (v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = [(NSDictionary *)v17 isEqual:v18];
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

- (id)_descriptionPreservingPrivacy:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p; identifier = %@; isExcluded = %i", objc_opt_class(), self, -[_WKTextManipulationToken identifier](self, "identifier"), -[_WKTextManipulationToken isExcluded](self, "isExcluded")];
  v6 = [(_WKTextManipulationToken *)self content];
  if (v3)
  {
    [v5 appendFormat:@"; content length = %lu", -[NSString length](v6, "length"), v11];
  }

  else
  {
    [v5 appendFormat:@"; content = %@; user info = %@", v6, -[_WKTextManipulationToken userInfo](self, "userInfo")];
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