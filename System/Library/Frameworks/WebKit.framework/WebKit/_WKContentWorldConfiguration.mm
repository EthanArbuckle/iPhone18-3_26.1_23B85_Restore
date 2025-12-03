@interface _WKContentWorldConfiguration
- (NSString)name;
- (_WKContentWorldConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
@end

@implementation _WKContentWorldConfiguration

- (NSString)name
{
  m_ptr = self->_name.m_impl.m_ptr;
  if (!m_ptr)
  {
    v4 = &stru_1F1147748;
    v5 = &stru_1F1147748;
    v9 = 0;
LABEL_7:
    v6 = v4;
    v7 = v9;
    v9 = 0;
    if (v7)
    {
    }

    return &v4->isa;
  }

  atomic_fetch_add_explicit(m_ptr, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v9, m_ptr, a2);
  if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(m_ptr, v3);
  }

  v4 = v9;
  v9 = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return &v4->isa;
}

- (void)setName:(id)name
{
  MEMORY[0x19EB02040](&v8, name);
  v5 = v8;
  v8 = 0;
  m_ptr = self->_name.m_impl.m_ptr;
  self->_name.m_impl.m_ptr = v5;
  if (m_ptr)
  {
    if (atomic_fetch_add_explicit(m_ptr, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(m_ptr, v4);
    }

    v7 = v8;
    v8 = 0;
    if (v7)
    {
      if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, v4);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setName:{-[_WKContentWorldConfiguration name](self, "name")}];
  [v4 setAllowAccessToClosedShadowRoots:{-[_WKContentWorldConfiguration allowAccessToClosedShadowRoots](self, "allowAccessToClosedShadowRoots")}];
  [v4 setAllowAutofill:{-[_WKContentWorldConfiguration allowAutofill](self, "allowAutofill")}];
  [v4 setAllowElementUserInfo:{-[_WKContentWorldConfiguration allowElementUserInfo](self, "allowElementUserInfo")}];
  [v4 setDisableLegacyBuiltinOverrides:{-[_WKContentWorldConfiguration disableLegacyBuiltinOverrides](self, "disableLegacyBuiltinOverrides")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[_WKContentWorldConfiguration name](self forKey:{"name"), @"name"}];
  [coder encodeBool:-[_WKContentWorldConfiguration allowAccessToClosedShadowRoots](self forKey:{"allowAccessToClosedShadowRoots"), @"allowAccessToClosedShadowRoots"}];
  [coder encodeBool:-[_WKContentWorldConfiguration allowAutofill](self forKey:{"allowAutofill"), @"allowAutofill"}];
  [coder encodeBool:-[_WKContentWorldConfiguration allowElementUserInfo](self forKey:{"allowElementUserInfo"), @"allowElementUserInfo"}];
  disableLegacyBuiltinOverrides = [(_WKContentWorldConfiguration *)self disableLegacyBuiltinOverrides];

  [coder encodeBool:disableLegacyBuiltinOverrides forKey:@"disableLegacyBuiltinOverrides"];
}

- (_WKContentWorldConfiguration)initWithCoder:(id)coder
{
  v4 = [(_WKContentWorldConfiguration *)self init];
  if (v4)
  {
    -[_WKContentWorldConfiguration setName:](v4, "setName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"]);
    -[_WKContentWorldConfiguration setAllowAccessToClosedShadowRoots:](v4, "setAllowAccessToClosedShadowRoots:", [coder decodeBoolForKey:@"allowAccessToClosedShadowRoots"]);
    -[_WKContentWorldConfiguration setAllowAutofill:](v4, "setAllowAutofill:", [coder decodeBoolForKey:@"allowAutofill"]);
    -[_WKContentWorldConfiguration setAllowElementUserInfo:](v4, "setAllowElementUserInfo:", [coder decodeBoolForKey:@"allowElementUserInfo"]);
    -[_WKContentWorldConfiguration setDisableLegacyBuiltinOverrides:](v4, "setDisableLegacyBuiltinOverrides:", [coder decodeBoolForKey:@"disableLegacyBuiltinOverrides"]);
  }

  return v4;
}

@end